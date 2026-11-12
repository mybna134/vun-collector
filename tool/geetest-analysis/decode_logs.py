"""Decode captured local GGD envelopes and compare unidbg experiments.

Usage: python3 tool/geetest-analysis/decode_logs.py LOG_DIR OUTPUT_DIR
Requires pycryptodome. Never sends tokens to a service.
"""
import base64
import json
import pathlib
import re
import sys
from Crypto.Cipher import AES

KEY = b'WS1nbWQfMJ1merhqY5RsFZIxrJ/54JE='


def decode(token):
    envelope = base64.b64decode(token, validate=True)
    assert envelope[:5] == b'GEE\0\5', 'Unexpected envelope'
    size = int.from_bytes(envelope[21:25], 'big')
    assert size > 0 and size % 16 == 0 and size == len(envelope) - 25
    raw = AES.new(KEY, AES.MODE_CBC, envelope[5:21]).decrypt(envelope[25:])
    padding = raw[-1]
    assert 1 <= padding <= 32 and raw[-padding:] == bytes([padding]) * padding
    return json.loads(raw[:-padding])


def leaves(value, path=''):
    if isinstance(value, dict):
        result = {}
        for key, child in value.items():
            result.update(leaves(child, path + '.' + key if path else key))
        return result
    return {path: value}


if __name__ == '__main__':
    source, target = map(pathlib.Path, sys.argv[1:3])
    target.mkdir(parents=True, exist_ok=True)
    samples = {}
    for logfile in sorted(source.glob('unidbg-*.log')):
        if logfile.stem == 'unidbg-baseline':
            continue
        tokens = re.findall(r'^  => (R0VFAA[A-Za-z0-9+/=]+)', logfile.read_text(), re.M)
        if len(tokens) != 1:
            raise RuntimeError(f'{logfile}: expected one Token, got {len(tokens)}')
        obj = decode(tokens[0])
        name = logfile.stem.removeprefix('unidbg-')
        samples[name] = obj
        (target / (name + '.json')).write_text(json.dumps(obj, ensure_ascii=False, indent=2))
    baseline = leaves(samples['base'])
    changes = {}
    for name, obj in samples.items():
        current = leaves(obj)
        changes[name] = {path: {'before': baseline.get(path), 'after': current.get(path)}
                         for path in sorted(baseline.keys() | current.keys())
                         if baseline.get(path) != current.get(path)}
    (target / 'differences.json').write_text(json.dumps(changes, ensure_ascii=False, indent=2))
    print(json.dumps(changes, ensure_ascii=False, indent=2))
