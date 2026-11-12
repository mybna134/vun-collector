"""Run with the Python environment containing Hex-Rays idapro (idalib).

Only use a disposable copy of the database. Emits address-bearing pseudocode
and assembly; decompiler output is evidence to inspect, not executable source.
"""
import json
import pathlib
import sys

import idapro

database, output = sys.argv[1:3]
out = pathlib.Path(output)
out.mkdir(parents=True, exist_ok=True)
assert idapro.open_database(database, False) == 0
import ida_bytes
import ida_funcs
import ida_hexrays
import ida_lines
import ida_nalt
import idautils
import idc

print('input', ida_nalt.get_input_file_path(), 'hexrays', ida_hexrays.init_hexrays_plugin(), flush=True)
index = []
targets = [int(a, 0) for a in sys.argv[3:]]
if not targets:
    targets = list(idautils.Functions())
for address in targets:
    func = ida_funcs.get_func(address)
    if not func:
        continue
    start = func.start_ea
    name = idc.get_func_name(start)
    entry = dict(address=hex(start), end=hex(func.end_ea), name=name)
    if func.end_ea - start > 0x6000:
        entry['error'] = 'Skip oversized function; inspect address-bearing assembly instead'
        assembly = [f'{ea:08x}: {ida_lines.tag_remove(idc.generate_disasm_line(ea, 0) or "")}'
                    for ea in idautils.FuncItems(start)]
        (out / f'{start:x}.asm').write_text('\n'.join(assembly), encoding='utf-8')
        index.append(entry)
        continue
    try:
        cfunc = ida_hexrays.decompile(start)
        (out / f'{start:x}.c').write_text(str(cfunc), encoding='utf-8')
        entry['decompiled'] = True
    except Exception as error:
        entry['error'] = str(error)
    assembly = []
    for ea in idautils.FuncItems(start):
        assembly.append(f'{ea:08x}: {ida_lines.tag_remove(idc.generate_disasm_line(ea, 0) or "")}')
    (out / f'{start:x}.asm').write_text('\n'.join(assembly), encoding='utf-8')
    index.append(entry)
    print(hex(start), name, entry.get('decompiled', entry.get('error')), flush=True)
(out / 'index.json').write_text(json.dumps(index, indent=2), encoding='utf-8')
idapro.close_database(False)
