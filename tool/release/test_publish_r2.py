import contextlib
import importlib.util
import io
import json
import os
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest.mock import patch

spec = importlib.util.spec_from_file_location("publish_r2", Path(__file__).with_name("publish_r2.py"))
publisher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(publisher)


class PublishR2Test(unittest.TestCase):
    def publish(self, fail_upload=None):
        uploads = []
        with tempfile.TemporaryDirectory() as directory:
            apk = Path(directory) / "release.apk"
            apk.write_bytes(b"verified apk")
            env = {
                "R2_ACCOUNT_ID": "a" * 32, "R2_BUCKET_NAME": "updates",
                "AWS_ACCESS_KEY_ID": "test-access-key", "AWS_SECRET_ACCESS_KEY": "test-secret",
                "APK_PATH": str(apk), "VERSION_CODE": "10203", "VERSION_NAME": "1.2.3",
                "GITHUB_SHA": "b" * 40,
            }

            def run(command, **kwargs):
                if command[0] == "git":
                    return subprocess.CompletedProcess(command, 0, stdout="修复更新\n")
                self.assertEqual(command[:3], ["aws", "s3api", "put-object"])
                self.assertEqual(command[command.index("--endpoint-url") + 1],
                                 f"https://{'a' * 32}.r2.cloudflarestorage.com")
                self.assertEqual(command[command.index("--region") + 1], "auto")
                self.assertEqual(command[command.index("--bucket") + 1], "updates")
                self.assertNotIn("test-secret", " ".join(command))
                key = command[command.index("--key") + 1]
                data = Path(command[command.index("--body") + 1]).read_bytes()
                uploads.append((key, data, command))
                return subprocess.CompletedProcess(command, int(len(uploads) == fail_upload),
                                                   stdout="", stderr="test-secret")

            output = io.StringIO()
            with patch.dict(os.environ, env, clear=True), \
                    patch.object(publisher.subprocess, "run", side_effect=run), \
                    contextlib.redirect_stdout(output):
                if fail_upload:
                    with self.assertRaises(RuntimeError) as failure:
                        publisher.main()
                    self.assertNotIn("test-secret", str(failure.exception))
                else:
                    publisher.main()
            self.assertNotIn("test-secret", output.getvalue())
        return uploads

    def test_apk_is_uploaded_before_manifest_with_public_url_and_cache_headers(self):
        uploads = self.publish()
        self.assertEqual(len(uploads), 2)
        apk_key, apk_data, apk_command = uploads[0]
        self.assertTrue(apk_key.startswith("VunCollector/releases/10203-"))
        self.assertEqual(apk_data, b"verified apk")
        self.assertIn("public, max-age=31536000, immutable", apk_command)
        key, data, command = uploads[1]
        self.assertEqual(key, "VunCollector/update.json")
        manifest = json.loads(data)
        self.assertEqual(manifest, {
            "versionCode": 10203, "versionName": "1.2.3", "commitComment": "修复更新",
            "apkUrl": f"https://oss.myb666.ccwu.cc/{apk_key}",
        })
        self.assertIn("application/json; charset=utf-8", command)
        self.assertIn("no-cache, max-age=0, must-revalidate", command)

    def test_apk_failure_does_not_publish_manifest(self):
        self.assertEqual(len(self.publish(fail_upload=1)), 1)

    def test_manifest_failure_is_reported(self):
        self.assertEqual(len(self.publish(fail_upload=2)), 2)

    def test_missing_secrets_fail_without_upload(self):
        with patch.dict(os.environ, {}, clear=True), patch.object(publisher.subprocess, "run") as run:
            with self.assertRaisesRegex(ValueError, "missing R2_ACCOUNT_ID"):
                publisher.main()
            run.assert_not_called()

    def test_invalid_account_id_fails_before_upload(self):
        env = {key: "invalid" for key in (
            "R2_ACCOUNT_ID", "R2_BUCKET_NAME", "AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY")}
        with patch.dict(os.environ, env, clear=True), patch.object(publisher.subprocess, "run") as run:
            with self.assertRaisesRegex(ValueError, "32-character"):
                publisher.main()
            run.assert_not_called()


if __name__ == "__main__":
    unittest.main()
