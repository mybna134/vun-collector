import contextlib
import importlib.util
import io
import json
import os
import tempfile
import unittest
from pathlib import Path
from unittest.mock import MagicMock, patch


SCRIPT = Path(__file__).with_name("publish_kstore.py")
spec = importlib.util.spec_from_file_location("publish_kstore", SCRIPT)
publisher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(publisher)


class PublishKstoreTest(unittest.TestCase):
    def test_publish_replaces_assets_and_publishes_manifest_last(self):
        with tempfile.TemporaryDirectory() as temp:
            apk = Path(temp) / "release.apk"
            apk.write_bytes(b"verified apk")
            listing = {0: [{"name": "VunCollector", "type": "folder", "id": 42}],
                       42: [{"name": "app-release.apk", "id": 7}, {"name": "update.json", "id": 8}]}
            uploads = []

            def upload(_token, _folder, filename, content):
                uploads.append((filename, content))
                return {"id": len(uploads) + 20, "downloadUrl": "https://download.example/app-release.apk"}

            env = {"KSTORE_TOKEN": "123-test-secret", "APK_PATH": str(apk),
                   "VERSION_CODE": "10203", "VERSION_NAME": "1.2.3", "GITHUB_SHA": "abc"}
            output = io.StringIO()
            with patch.dict(os.environ, env, clear=False), \
                 patch.object(publisher, "list_directory", side_effect=lambda _token, folder: listing[folder]), \
                 patch.object(publisher, "form_post") as form_post, \
                 patch.object(publisher, "upload", side_effect=upload), \
                 patch.object(publisher.subprocess, "run", return_value=type("Result", (), {"stdout": "fix crash\n"})()), \
                 contextlib.redirect_stdout(output):
                publisher.main()

            self.assertEqual([name for name, _ in uploads], ["app-release.apk", "update.json"])
            manifest = json.loads(uploads[-1][1])
            self.assertEqual(manifest["versionCode"], 10203)
            self.assertEqual(manifest["commitComment"], "fix crash")
            self.assertEqual(manifest["apkUrl"], "https://download.example/app-release.apk")
            self.assertNotIn("test-secret", output.getvalue())
            self.assertEqual([call.args[0] for call in form_post.call_args_list], ["delete", "delete"])

    def test_upload_enables_direct_link(self):
        response = MagicMock()
        response.__enter__.return_value.read.return_value = json.dumps(
            {"code": 0, "data": {"id": 99, "downloadUrl": "https://download.example/a.apk"}},
        ).encode()
        with patch.object(publisher.urllib.request, "urlopen", return_value=response), \
             patch.object(publisher, "form_post") as form_post:
            result = publisher.upload("123-test-secret", 42, "app-release.apk", b"apk")
        self.assertEqual(result["id"], 99)
        form_post.assert_called_once_with("direct", "123-test-secret", {"fileId": "99", "isDirect": "1"})

    def test_missing_token_skips_publication(self):
        with patch.dict(os.environ, {"KSTORE_TOKEN": ""}, clear=False), \
             patch.object(publisher, "list_directory") as list_directory:
            publisher.main()
            list_directory.assert_not_called()


if __name__ == "__main__":
    unittest.main()
