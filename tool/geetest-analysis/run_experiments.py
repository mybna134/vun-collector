"""Run native SDK experiments using already installed unidbg Maven artifacts.

No device interaction. Android API responses are modeled in GeeCoreUnidbg.java.
Usage: python3 tool/geetest-analysis/run_experiments.py /tmp/gee-experiments
"""
import concurrent.futures
import json
import os
import pathlib
import re
import shutil
import subprocess
import sys

from decode_logs import decode

ROOT = pathlib.Path(__file__).resolve().parents[2]
OUT = pathlib.Path(sys.argv[1]).resolve()
OUT.mkdir(parents=True, exist_ok=True)
CLASSES = OUT / 'classes'
CLASSES.mkdir(exist_ok=True)
JAVA_HOME = pathlib.Path(os.environ.get('GEETEST_JAVA_HOME', '/usr/lib/jvm/java-17-openjdk'))
repository = pathlib.Path.home() / '.m2/repository'
jars = list(p for p in repository.rglob('*.jar')
              if not p.name.endswith(('-sources.jar', '-javadoc.jar'))
              and ('/org/slf4j/' not in str(p) or '/1.5.6/' in str(p)))
assert any('unidbg-android' in p.name for p in jars), 'Install unidbg dependencies first'
classpath = ':'.join(map(str, [CLASSES, *jars]))
compile_result = subprocess.run([str(JAVA_HOME / 'bin/javac'), '-cp', classpath, '-d', str(CLASSES),
                                 str(ROOT / 'tool/geetest-analysis/GeeCoreUnidbg.java')], capture_output=True, text=True)
if compile_result.returncode:
    raise SystemExit(compile_result.stderr)
cases = {
    'base': [], 'adb': ['-Dgee.adb=1'], 'debuggable': ['-Dgee.flags=2'],
    'brightness': ['-Dgee.brightness=73'], 'mua': ['-Dgee.mua=VUN_OTHER_MMS'],
    'attestation': ['-Dgee.attestation=0|1|1|VUN_CERT'],
    'full': ['-Dgee.devInfo=true', '-Dgee.alInfo=true'],
    'phone': ['-Dgee.phonePermission=true'],
}


def experiment(item):
    name, properties = item
    with (OUT / f'unidbg-{name}.log').open('w') as log:
        result = subprocess.run([str(JAVA_HOME / 'bin/java'), *properties,
                                 '-Dgee.library=' + str(ROOT / 'app/src/main/jniLibs/arm64-v8a/libgtcore.so'),
                                 '-Dgee.dump=' + str(OUT / f'runtime-{name}.bin'),
                                 '-cp', classpath, 'com.geetest.GeeCoreUnidbg'],
                                cwd=OUT, stdout=log, stderr=subprocess.STDOUT, timeout=90)
    assert result.returncode == 0, name
    content = (OUT / f'unidbg-{name}.log').read_text()
    tokens = re.findall(r'^  => (R0VFAA[A-Za-z0-9+/=]+)', content, re.M)
    assert len(tokens) == 1, f'{name}: missing native token; inspect log'
    obj = decode(tokens[0])
    (OUT / f'{name}.json').write_text(json.dumps(obj, ensure_ascii=False, indent=2))
    return name, obj


with concurrent.futures.ThreadPoolExecutor(max_workers=3) as pool:
    samples = dict(pool.map(experiment, cases.items()))
assert samples['base']['data']['test']['iod'] == 0
assert samples['adb']['data']['test']['iod'] == 1
assert samples['base']['data']['test']['idv'] == 0
assert samples['debuggable']['data']['test']['idv'] == 1
assert samples['brightness']['data']['test']['sb'] == 73
assert samples['mua']['data']['test']['mua'] == 'VUN_OTHER_MMS'
assert samples['attestation']['data']['test']['ka'] == {
    'bl': '0', 'vb': '1', 'rct': '1', 'csn': 'VUN_CERT', 'st': '0'}
assert samples['full']['data']['dev']['btv'] == 4413
assert samples['full']['data']['dev']['hea'] == 2
assert samples['full']['data']['dev']['s'] == 2.75
baseline_log = (OUT / 'unidbg-base.log').read_text()
digest = re.search(r'\[SH_INPUT\].*sha256=([a-f0-9]{64})', baseline_log)[1]
assert samples['base']['data']['test']['sh'] == digest[32:]
summary = {name: {'input': cases[name], 'test': obj['data']['test'], 'gid': obj['data']['gid']}
           for name, obj in samples.items()}
summary['checks'] = {'all_passed': True, 'native_library_sha256': __import__('hashlib').sha256(
    (ROOT / 'app/src/main/jniLibs/arm64-v8a/libgtcore.so').read_bytes()).hexdigest(),
    'sh_input_sha256': digest, 'sh_output': samples['base']['data']['test']['sh']}
(OUT / 'experiments.json').write_text(json.dumps(summary, ensure_ascii=False, indent=2))
print(f'{len(samples)} native experiments passed; evidence: {OUT}')
