#!/usr/bin/env python3
"""Publish release assets to KStore using its documented REST API."""

import json
import os
import subprocess
import sys
import urllib.error
import urllib.parse
import urllib.request
import uuid
from pathlib import Path

API = "https://api.kstore.space/api/v1/file"
UPLOAD = "https://upload.kstore.space/upload"


def request_json(url: str, data: bytes | None = None) -> dict:
    req = urllib.request.Request(url, data=data)
    try:
        with urllib.request.urlopen(req, timeout=60) as response:
            result = json.loads(response.read())
    except (urllib.error.URLError, TimeoutError, ValueError) as exc:
        raise RuntimeError(f"KStore API request failed ({type(exc).__name__})") from None
    if result.get("status") != 200:
        raise RuntimeError(f"KStore API returned status {result.get('status')}")
    return result


def form_post(path: str, token: str, fields: dict[str, str]) -> dict:
    data = urllib.parse.urlencode({"access_token": token, **fields}).encode()
    return request_json(f"{API}/{path}", data)


def list_directory(token: str, directory_id: int) -> list[dict]:
    query = urllib.parse.urlencode({"access_token": token})
    result = request_json(f"{API}/list/{directory_id}?{query}")
    return result.get("data", {}).get("list", [])


def ensure_directory(token: str) -> int:
    info = next((entry for entry in list_directory(token, 0) if entry.get("name") == "VunCollector"), None)
    if info and info.get("type") == "folder":
        return int(info["id"])
    return int(form_post("create", token, {"fileId": "0", "name": "VunCollector"})["data"]["id"])


def delete_if_exists(token: str, directory_id: int, filename: str) -> None:
    info = next((entry for entry in list_directory(token, directory_id) if entry.get("name") == filename), None)
    if info:
        form_post("delete", token, {"fileId": str(info["id"])})


def upload(token: str, directory_id: int, filename: str, content: bytes) -> dict:
    boundary = uuid.uuid4().hex
    body = (
        f"--{boundary}\r\nContent-Disposition: form-data; name=\"file\"; filename=\"{filename}\"\r\n"
        "Content-Type: application/octet-stream\r\n\r\n"
    ).encode() + content + f"\r\n--{boundary}--\r\n".encode()
    url = f"{UPLOAD}/{directory_id}?{urllib.parse.urlencode({'access_token': token})}"
    req = urllib.request.Request(url, data=body, headers={"Content-Type": f"multipart/form-data; boundary={boundary}"})
    try:
        with urllib.request.urlopen(req, timeout=180) as response:
            result = json.loads(response.read())
    except (urllib.error.URLError, TimeoutError, ValueError) as exc:
        raise RuntimeError(f"KStore upload failed for {filename} ({type(exc).__name__})") from None
    if result.get("code") != 0 or not result.get("data", {}).get("id"):
        raise RuntimeError(f"KStore upload failed for {filename} (API code {result.get('code')})")
    file_id = result["data"]["id"]
    form_post("direct", token, {"fileId": str(file_id), "isDirect": "1"})
    return result["data"]


def main() -> None:
    token = os.environ.get("KSTORE_TOKEN", "").strip()
    if not token:
        print("KSTORE_TOKEN is not configured; skipping KStore publication")
        return
    directory_id = ensure_directory(token)
    apk_path = Path(os.environ["APK_PATH"])
    version_code = int(os.environ["VERSION_CODE"])
    comment = subprocess.run(
        ["git", "log", "-1", "--format=%s", os.environ.get("GITHUB_SHA", "HEAD")],
        check=True, capture_output=True, text=True,
    ).stdout.strip()[:1000]
    # Publish APK first, then metadata so clients never see a manifest for a missing APK.
    apk_info = None
    for filename, content in (("app-release.apk", apk_path.read_bytes()),):
        delete_if_exists(token, directory_id, filename)
        apk_info = upload(token, directory_id, filename, content)
    manifest = json.dumps({
        "versionCode": version_code,
        "commitComment": comment,
        "versionName": os.environ.get("VERSION_NAME", ""),
        "apkUrl": apk_info["downloadUrl"],
    }, ensure_ascii=False).encode()
    delete_if_exists(token, directory_id, "update.json")
    upload(token, directory_id, "update.json", manifest)
    print("Published KStore update manifest and APK with direct links enabled")


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        print(f"::error::{error}", file=sys.stderr)
        raise SystemExit(1)
