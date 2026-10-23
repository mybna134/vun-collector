#!/usr/bin/env python3
"""Verify sports_monitor's embedded SHA-256 without reserializing JSON."""
import hashlib
import json
from pathlib import Path
import re
import sys


def verify(path):
    raw = Path(path).read_bytes()
    # Require exactly the final member format emitted by RecordingExporter.
    match = re.search(rb',\n  "sha256": "([0-9a-f]{64})"\n\}\Z', raw)
    if match is None:
        raise ValueError('缺少完整的末尾 sha256 字段')
    base = raw[:match.start()] + b'\n}'
    def unique_object(pairs):
        result = {}
        for key, value in pairs:
            if key in result:
                raise ValueError(f'重复的 JSON 字段: {key}')
            result[key] = value
        return result
    def invalid_constant(value):
        raise ValueError(f'非法 JSON 数值: {value}')
    root = json.loads(raw.decode('utf-8'), object_pairs_hook=unique_object,
                      parse_constant=invalid_constant)
    if not isinstance(root, dict) or root.get('sha256') != match[1].decode('ascii'):
        raise ValueError('摘要字段无效')
    expected = hashlib.sha256(base).hexdigest()
    if expected != root['sha256']:
        raise ValueError('SHA-256 不匹配，文件内容已改变')
    return expected


if __name__ == '__main__':
    if len(sys.argv) != 2:
        sys.exit('用法: python3 tools/verify_recording_json.py <导出文件.json>')
    try:
        print(f'校验通过: {verify(sys.argv[1])}')
    except (OSError, UnicodeError, ValueError) as error:
        sys.exit(f'校验失败: {error}')
