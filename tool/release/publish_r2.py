#!/usr/bin/env python3
"""Publish APK first, then its public update manifest using the R2 S3 API."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile

PUBLIC_BASE_URL = "https://oss.myb666.ccwu.cc"
PREFIX = "VunCollector"


def upload(endpoint: str, bucket: str, key: str, path: Path,
           content_type: str, cache_control: str) -> None:
    result = subprocess.run(
        ["aws", "s3api", "put-object", "--endpoint-url", endpoint, "--region", "auto",
         "--bucket", bucket, "--key", key, "--body", str(path),
         "--content-type", content_type, "--cache-control", cache_control],
        capture_output=True, text=True,
    )
    if result.returncode:
        # Do not echo SDK output, which may include endpoint or credential details.
        raise RuntimeError(f"R2 upload failed for {key} (AWS CLI exit {result.returncode})")
    print(f"Uploaded {key}", flush=True)


def main() -> None:
    required = ("R2_ACCOUNT_ID", "R2_BUCKET_NAME", "AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY")
    missing = [name for name in required if not os.environ.get(name, "").strip()]
    if missing:
        raise ValueError(f"Configure R2 release Secrets: missing {', '.join(missing)}")
    account_id = os.environ["R2_ACCOUNT_ID"].strip()
    if not re.fullmatch(r"[a-fA-F0-9]{32}", account_id):
        raise ValueError("R2_ACCOUNT_ID must be the 32-character Cloudflare account ID")
    bucket = os.environ["R2_BUCKET_NAME"].strip()
    endpoint = f"https://{account_id}.r2.cloudflarestorage.com"
    apk = Path(os.environ["APK_PATH"])
    if not apk.is_file() or apk.stat().st_size == 0:
        raise ValueError("APK_PATH must point to a nonempty verified release APK")
    version_code = int(os.environ["VERSION_CODE"])
    if not 1 <= version_code <= 2100000000:
        raise ValueError("VERSION_CODE is outside the Android versionCode range")
    comment = subprocess.run(
        ["git", "log", "-1", "--format=%s", os.environ.get("GITHUB_SHA", "HEAD")],
        check=True, capture_output=True, text=True,
    ).stdout.strip()[:1000]
    with apk.open("rb") as source:
        digest = hashlib.file_digest(source, "sha256").hexdigest()
    apk_key = f"{PREFIX}/releases/{version_code}-{digest}.apk"
    manifest = {
        "versionCode": version_code,
        "commitComment": comment,
        "versionName": os.environ["VERSION_NAME"],
        "apkUrl": f"{PUBLIC_BASE_URL}/{apk_key}",
    }
    upload(endpoint, bucket, apk_key, apk, "application/vnd.android.package-archive",
           "public, max-age=31536000, immutable")
    # Keep old versioned APKs available to clients that already fetched a manifest.
    with tempfile.TemporaryDirectory(prefix="r2-manifest-") as directory:
        path = Path(directory) / "update.json"
        path.write_text(json.dumps(manifest, ensure_ascii=False), encoding="utf-8")
        upload(endpoint, bucket, f"{PREFIX}/update.json", path, "application/json; charset=utf-8",
               "no-cache, max-age=0, must-revalidate")
    print(f"Published update information at {PUBLIC_BASE_URL}/{PREFIX}/update.json")


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        print(f"::error::{error}", file=sys.stderr)
        raise SystemExit(1)
