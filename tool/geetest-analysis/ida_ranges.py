"""Export instruction ranges independent of existing IDB function boundaries."""
import json
import pathlib
import re
import sys
import idapro

database, image_path, output = sys.argv[1:4]
assert idapro.open_database(database, False) == 0
import ida_funcs
import ida_lines
import idc
import idautils

image = pathlib.Path(image_path).read_bytes()
out = pathlib.Path(output)
out.mkdir(parents=True, exist_ok=True)
symbols = {}
for address, name in idautils.Names():
    if 0xef800 <= address < len(image):
        raw = image[address:address+512].split(b'\0')[0]
        if raw and all(32 <= ch < 127 for ch in raw):
            symbols[name] = {'rva': hex(address), 'value': raw.decode()}
(out / 'runtime-symbols.json').write_text(json.dumps(symbols, ensure_ascii=False, indent=2))
for specification in sys.argv[4:]:
    start, end = [int(x, 0) for x in specification.split(':')]
    result = []
    for ea in range(start, end, 4):
        instruction = ida_lines.tag_remove(idc.generate_disasm_line(ea, 0) or '')
        annotations = []
        for match in re.finditer(r'(?:byte|word|dword|qword|xmmword|unk|off)_([0-9A-Fa-f]+)', instruction):
            address = int(match[1], 16)
            if 0xef800 <= address < len(image):
                raw = image[address:address+256].split(b'\0')[0]
                if raw and all(32 <= ch < 127 for ch in raw):
                    annotations.append(hex(address) + '=' + repr(raw.decode()))
        result.append(f'{ea:08x}: {instruction}' + (' ; runtime: '+', '.join(annotations) if annotations else ''))
    (out / f'{start:x}-{end:x}.asm').write_text('\n'.join(result))
idapro.close_database(False)
