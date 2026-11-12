000499ec: SUB             SP, SP, #0x120
000499f0: STP             X28, X27, [SP,#0x110+var_50]
000499f4: STP             X26, X25, [SP,#0x110+var_40]
000499f8: STP             X24, X23, [SP,#0x110+var_30]
000499fc: STP             X22, X21, [SP,#0x110+var_20]
00049a00: STP             X20, X19, [SP,#0x110+var_10]
00049a04: STP             X29, X30, [SP,#0x110+var_s0]
00049a08: ADD             X29, SP, #0x110
00049a0c: ADRL            X2, qword_F6AB0
00049a14: MOV             X19, X0
00049a18: BL              sub_1723C
00049a1c: MOV             W27, #0x995F
00049a20: MOV             W28, #0xF361
00049a24: MOV             W26, #0xBAE1
00049a28: MOV             W23, #0x82C3
00049a2c: MOV             W21, #0xA0
00049a30: MOV             W24, #0xE9A4
00049a34: MOV             W20, #0xB241
00049a38: STR             X0, [SP,#0x110+var_C0]
00049a3c: MOVK            W27, #0xC33,LSL#16
00049a40: MOVK            W28, #0xC39D,LSL#16
00049a44: MOVK            W26, #0xEAE4,LSL#16
00049a48: MOVK            W23, #0x47C6,LSL#16
00049a4c: MOVK            W21, #0x28B7,LSL#16
00049a50: MOVK            W24, #0x6116,LSL#16
00049a54: MOVK            W20, #0x1416,LSL#16
00049a58: B               loc_49A68
00049a5c: MOV             W20, #0x5E50
00049a60: MOV             X0, X25
00049a64: MOVK            W20, #0x4CFE,LSL#16
00049a68: MOV             W8, W20
00049a6c: CMP             W20, W27
00049a70: MOV             X25, X0
00049a74: B.GT            loc_49B00
00049a78: CMP             W8, W28
00049a7c: B.GT            loc_49B7C
00049a80: MOV             W9, #0xA2CC992A
00049a88: CMP             W8, W9
00049a8c: B.GT            loc_49CA0
00049a90: MOV             W9, #0x95FB4C37
00049a98: CMP             W8, W9
00049a9c: B.GT            loc_49E74
00049aa0: MOV             W9, #0x90DD2D3C
00049aa8: CMP             W8, W9
00049aac: B.LE            loc_4A1BC
00049ab0: MOV             W9, #0x90DD2D3D
00049ab8: CMP             W8, W9
00049abc: B.EQ            loc_4A624
00049ac0: MOV             W9, #0x925F7899
00049ac8: CMP             W8, W9
00049acc: B.EQ            loc_4A640
00049ad0: MOV             W9, #0x92E61AF0
00049ad8: CMP             W8, W9
00049adc: MOV             X0, X25
00049ae0: MOV             W20, W8
00049ae4: B.NE            loc_49A68
00049ae8: LDR             X8, [SP,#0x110+var_D8]
00049aec: MOV             W20, #0x6F95D9A8
00049af4: MOV             X0, X25
00049af8: STR             X8, [SP,#0x110+var_D0]
00049afc: B               loc_49A68
00049b00: CMP             W8, W23
00049b04: B.GT            loc_49C2C
00049b08: CMP             W8, W21
00049b0c: B.GT            loc_49D0C
00049b10: MOV             W9, #0x21297114
00049b18: CMP             W8, W9
00049b1c: B.GT            loc_49ED4
00049b20: MOV             W9, #0x1416B240
00049b28: CMP             W8, W9
00049b2c: B.LE            loc_4A200
00049b30: MOV             W9, #0x1416B241
00049b38: CMP             W8, W9
00049b3c: B.EQ            loc_4A654
00049b40: MOV             W9, #0x1D3D4BAD
00049b48: CMP             W8, W9
00049b4c: B.EQ            loc_4A670
00049b50: MOV             W9, #0x1E386453
00049b58: CMP             W8, W9
00049b5c: MOV             X0, X25
00049b60: MOV             W20, W8
00049b64: B.NE            loc_49A68
00049b68: LDR             X8, [X19]
00049b6c: ADRP            X1, #byte_F6E1C@PAGE
00049b70: MOV             X0, X19
00049b74: ADD             X1, X1, #byte_F6E1C@PAGEOFF
00049b78: B               loc_4AB5C
00049b7c: CMP             W8, W26
00049b80: B.GT            loc_49D80
00049b84: MOV             W9, #0xD401832D
00049b8c: CMP             W8, W9
00049b90: B.GT            loc_49F38
00049b94: MOV             W9, #0xC7E3BC95
00049b9c: CMP             W8, W9
00049ba0: B.LE            loc_4A280
00049ba4: MOV             W9, #0xC7E3BC96
00049bac: CMP             W8, W9
00049bb0: B.EQ            loc_4A684
00049bb4: MOV             W9, #0xCEC6377C
00049bbc: CMP             W8, W9
00049bc0: B.EQ            loc_4A6A0
00049bc4: MOV             W9, #0xCFB05AC0
00049bcc: CMP             W8, W9
00049bd0: MOV             X0, X25
00049bd4: MOV             W20, W8
00049bd8: B.NE            loc_49A68
00049bdc: LDR             X8, [SP,#0x110+var_C0]
00049be0: ADRP            X2, #qword_F6AC0@PAGE
00049be4: ADRP            X3, #xmmword_F6AD0@PAGE
00049be8: MOV             X0, X19
00049bec: STR             X8, [SP,#0x110+var_B8]
00049bf0: LDR             X8, [SP,#0x110+var_B8]
00049bf4: LDR             X9, [X19]
00049bf8: ADD             X2, X2, #qword_F6AC0@PAGEOFF
00049bfc: ADD             X3, X3, #xmmword_F6AD0@PAGEOFF
00049c00: LDR             X1, [X8]
00049c04: LDR             X8, [X9,#0x108]
00049c08: BLR             X8
00049c0c: STR             X0, [SP,#0x110+var_B0]
00049c10: LDR             X8, [SP,#0x110+var_B0]
00049c14: MOV             W9, #0xE2A47AA2
00049c1c: CMP             X8, #0
00049c20: MOV             W8, #0xCEC6377C
00049c28: B               loc_4AB9C
00049c2c: CMP             W8, W24
00049c30: B.GT            loc_49E00
00049c34: MOV             W9, #0x543F742A
00049c3c: CMP             W8, W9
00049c40: B.GT            loc_49F9C
00049c44: MOV             W9, #0x4B8A3E3A
00049c4c: CMP             W8, W9
00049c50: B.LE            loc_4A2C4
00049c54: MOV             W9, #0x4B8A3E3B
00049c5c: CMP             W8, W9
00049c60: B.EQ            loc_4A6BC
00049c64: MOV             W9, #0x4CFE5E50
00049c6c: CMP             W8, W9
00049c70: B.EQ            loc_4A6D8
00049c74: MOV             W9, #0x4EA32DE1
00049c7c: CMP             W8, W9
00049c80: MOV             X0, X25
00049c84: MOV             W20, W8
00049c88: B.NE            loc_49A68
00049c8c: LDR             X8, [X19]
00049c90: ADRP            X1, #byte_F6DEC@PAGE
00049c94: MOV             X0, X19
00049c98: ADD             X1, X1, #byte_F6DEC@PAGEOFF
00049c9c: B               loc_4AB5C
00049ca0: MOV             W9, #0xB2EE992F
00049ca8: CMP             W8, W9
00049cac: B.GT            loc_4A008
00049cb0: MOV             W9, #0xA84756A8
00049cb8: CMP             W8, W9
00049cbc: B.LE            loc_4A308
00049cc0: MOV             W9, #0xA84756A9
00049cc8: CMP             W8, W9
00049ccc: B.EQ            loc_4A6EC
00049cd0: MOV             W9, #0xAF0C982A
00049cd8: CMP             W8, W9
00049cdc: B.EQ            loc_4A704
00049ce0: MOV             W9, #0xB0E36678
00049ce8: CMP             W8, W9
00049cec: MOV             X0, X25
00049cf0: MOV             W20, W8
00049cf4: B.NE            loc_49A68
00049cf8: LDR             X8, [X19]
00049cfc: ADRP            X1, #aHIbrl@PAGE; "H[IBRL\r"
00049d00: MOV             X0, X19
00049d04: ADD             X1, X1, #aHIbrl@PAGEOFF; "H[IBRL\r"
00049d08: B               loc_4AB5C
00049d0c: MOV             W9, #0x3C10F460
00049d14: CMP             W8, W9
00049d18: B.GT            loc_4A064
00049d1c: MOV             W9, #0x388BF5C6
00049d24: CMP             W8, W9
00049d28: B.LE            loc_4A34C
00049d2c: MOV             W9, #0x388BF5C7
00049d34: CMP             W8, W9
00049d38: B.EQ            loc_4A720
00049d3c: MOV             W9, #0x38C41E39
00049d44: CMP             W8, W9
00049d48: B.EQ            loc_4A734
00049d4c: MOV             W9, #0x3A22A4F5
00049d54: CMP             W8, W9
00049d58: MOV             X0, X25
00049d5c: MOV             W20, W8
00049d60: B.NE            loc_49A68
00049d64: LDUR            W8, [X29,#var_5C]
00049d68: MOV             W9, #0x7AFC8614
00049d70: CMP             W8, #0xF
00049d74: MOV             W8, #0xA819FB51
00049d7c: B               loc_4A610
00049d80: MOV             W9, #0xFD62D103
00049d88: CMP             W8, W9
00049d8c: B.GT            loc_4A0C0
00049d90: MOV             W9, #0xF3479EA1
00049d98: CMP             W8, W9
00049d9c: B.LE            loc_4A3E0
00049da0: MOV             W9, #0xF3479EA2
00049da8: CMP             W8, W9
00049dac: B.EQ            loc_4A750
00049db0: LDR             X0, [SP,#0x110+var_C8]
00049db4: MOV             W9, #0xF45A3358
00049dbc: MOV             W20, #0x6690
00049dc0: CMP             W8, W9
00049dc4: MOVK            W20, #0xBF2D,LSL#16
00049dc8: B.EQ            loc_49A68
00049dcc: MOV             W9, #0xFB1EA353
00049dd4: CMP             W8, W9
00049dd8: MOV             X0, X25
00049ddc: MOV             W20, W8
00049de0: B.NE            loc_49A68
00049de4: LDUR            W8, [X29,#var_5C]
00049de8: MOV             W9, #0xDFF90DEB
00049df0: CMP             W8, #0xE
00049df4: MOV             W8, #0xC39DF362
00049dfc: B               loc_4A944
00049e00: MOV             W9, #0x6F95D9A7
00049e08: CMP             W8, W9
00049e0c: B.LE            loc_4A124
00049e10: MOV             W9, #0x74CD0510
00049e18: CMP             W8, W9
00049e1c: B.LE            loc_4A1A0
00049e20: MOV             W9, #0x74CD0511
00049e28: CMP             W8, W9
00049e2c: B.EQ            loc_4A76C
00049e30: MOV             W9, #0x755EAAC4
00049e38: CMP             W8, W9
00049e3c: B.EQ            loc_4A788
00049e40: MOV             W9, #0x7AFC8614
00049e48: CMP             W8, W9
00049e4c: MOV             X0, X25
00049e50: MOV             W20, W8
00049e54: B.NE            loc_49A68
00049e58: LDUR            W8, [X29,#var_5C]
00049e5c: MOV             W9, #0x74CD0511
00049e64: CMP             W8, #0x11
00049e68: MOV             W8, #0xE8401502
00049e70: B               loc_4A610
00049e74: MOV             W9, #0x9B72496B
00049e7c: CMP             W8, W9
00049e80: B.LE            loc_4A41C
00049e84: MOV             W9, #0x9B72496C
00049e8c: CMP             W8, W9
00049e90: B.EQ            loc_4A79C
00049e94: MOV             W9, #0x9BB2CFA3
00049e9c: CMP             W8, W9
00049ea0: B.EQ            loc_4A7D8
00049ea4: MOV             W9, #0x9BCFE621
00049eac: CMP             W8, W9
00049eb0: MOV             X0, X25
00049eb4: MOV             W20, W8
00049eb8: B.NE            loc_49A68
00049ebc: LDR             X8, [SP,#0x110+var_F0]
00049ec0: MOV             W20, #0xF45A3358
00049ec8: MOV             X0, X25
00049ecc: STR             X8, [SP,#0x110+var_C8]
00049ed0: B               loc_49A68
00049ed4: MOV             W9, #0x2641036D
00049edc: CMP             W8, W9
00049ee0: B.LE            loc_4A458
00049ee4: MOV             W9, #0x2641036E
00049eec: CMP             W8, W9
00049ef0: B.EQ            loc_4A7E8
00049ef4: MOV             W9, #0x2850DC1D
00049efc: CMP             W8, W9
00049f00: B.EQ            loc_4A800
00049f04: MOV             W9, #0x288264EC
00049f0c: CMP             W8, W9
00049f10: MOV             X0, X25
00049f14: MOV             W20, W8
00049f18: B.NE            loc_49A68
00049f1c: MOV             W20, #0x84F1
00049f20: MOV             X0, X19
00049f24: MOVK            W20, #0xBDC2,LSL#16
00049f28: BL              sub_B6D0
00049f2c: STR             XZR, [SP,#0x110+var_108]
00049f30: MOV             X0, X25
00049f34: B               loc_49A68
00049f38: MOV             W9, #0xE2A47AA1
00049f40: CMP             W8, W9
00049f44: B.LE            loc_4A494
00049f48: MOV             W9, #0xE2A47AA2
00049f50: CMP             W8, W9
00049f54: B.EQ            loc_4A814
00049f58: MOV             W9, #0xE574776E
00049f60: CMP             W8, W9
00049f64: B.EQ            loc_4A858
00049f68: MOV             W9, #0xE8401502
00049f70: CMP             W8, W9
00049f74: MOV             X0, X25
00049f78: MOV             W20, W8
00049f7c: B.NE            loc_49A68
00049f80: LDUR            W8, [X29,#var_5C]
00049f84: MOV             W9, #0xFD707EE3
00049f8c: CMP             W8, #0x10
00049f90: MOV             W8, #0xFD62D104
00049f98: B               loc_4A944
00049f9c: MOV             W9, #0x5AA62887
00049fa4: CMP             W8, W9
00049fa8: B.LE            loc_4A4D0
00049fac: MOV             W9, #0x5AA62888
00049fb4: CMP             W8, W9
00049fb8: B.EQ            loc_4A874
00049fbc: MOV             W9, #0x5E66614F
00049fc4: CMP             W8, W9
00049fc8: B.EQ            loc_4A890
00049fcc: MOV             W9, #0x6004DDF4
00049fd4: CMP             W8, W9
00049fd8: MOV             X0, X25
00049fdc: MOV             W20, W8
00049fe0: B.NE            loc_49A68
00049fe4: LDR             X8, [X19]
00049fe8: MOV             X0, X19
00049fec: LDR             X8, [X8,#0x80]
00049ff0: BLR             X8
00049ff4: LDR             X8, [X19]
00049ff8: MOV             X0, X19
00049ffc: LDR             X8, [X8,#0x88]
0004a000: BLR             X8
0004a004: B               loc_4A61C
0004a008: MOV             W9, #0xB7BD1846
0004a010: CMP             W8, W9
0004a014: B.LE            loc_4A514
0004a018: MOV             W9, #0xB7BD1847
0004a020: CMP             W8, W9
0004a024: B.EQ            loc_4A8C4
0004a028: MOV             W9, #0xBDC284F1
0004a030: CMP             W8, W9
0004a034: B.EQ            loc_4A8E0
0004a038: MOV             W9, #0xBF2D6690
0004a040: CMP             W8, W9
0004a044: MOV             X0, X25
0004a048: MOV             W20, W8
0004a04c: B.NE            loc_49A68
0004a050: MOV             W20, #0xA84756A9
0004a058: STR             X25, [SP,#0x110+var_F8]
0004a05c: MOV             X0, X25
0004a060: B               loc_49A68
0004a064: MOV             W9, #0x4111D75D
0004a06c: CMP             W8, W9
0004a070: B.LE            loc_4A558
0004a074: MOV             W9, #0x4111D75E
0004a07c: CMP             W8, W9
0004a080: B.EQ            loc_4A8F8
0004a084: MOV             W9, #0x411F9F40
0004a08c: CMP             W8, W9
0004a090: B.EQ            loc_4A92C
0004a094: MOV             W9, #0x428E50F3
0004a09c: CMP             W8, W9
0004a0a0: MOV             X0, X25
0004a0a4: MOV             W20, W8
0004a0a8: B.NE            loc_49A68
0004a0ac: LDR             X8, [X19]
0004a0b0: ADRP            X1, #byte_F6E0C@PAGE
0004a0b4: MOV             X0, X19
0004a0b8: ADD             X1, X1, #byte_F6E0C@PAGEOFF
0004a0bc: B               loc_4AB5C
0004a0c0: MOV             W9, #0x2A91D3C
0004a0c8: CMP             W8, W9
0004a0cc: B.LE            loc_4A594
0004a0d0: MOV             W9, #0x2A91D3D
0004a0d8: CMP             W8, W9
0004a0dc: B.EQ            loc_4A950
0004a0e0: MOV             W9, #0x7141686
0004a0e8: CMP             W8, W9
0004a0ec: B.EQ            loc_4A964
0004a0f0: MOV             W9, #0x911D02D
0004a0f8: CMP             W8, W9
0004a0fc: MOV             X0, X25
0004a100: MOV             W20, W8
0004a104: B.NE            loc_49A68
0004a108: LDUR            W8, [X29,#var_5C]
0004a10c: MOV             W9, #0x428E50F3
0004a114: CMP             W8, #6
0004a118: MOV             W8, #0xB0E36678
0004a120: B               loc_4A944
0004a124: MOV             W9, #0x6DEC5C79
0004a12c: CMP             W8, W9
0004a130: B.GT            loc_4A5D0
0004a134: MOV             W9, #0x6116E9A5
0004a13c: CMP             W8, W9
0004a140: B.EQ            loc_4A9AC
0004a144: MOV             W9, #0x66AF89C7
0004a14c: CMP             W8, W9
0004a150: MOV             X0, X25
0004a154: MOV             W20, W8
0004a158: B.NE            loc_49A68
0004a15c: LDUR            X1, [X29,#var_70]
0004a160: LDR             X8, [X19]
0004a164: ADRP            X2, #qword_F6DE0@PAGE
0004a168: ADRP            X3, #byte_F6B38@PAGE
0004a16c: MOV             X0, X19
0004a170: LDR             X8, [X8,#0x108]
0004a174: ADD             X2, X2, #qword_F6DE0@PAGEOFF
0004a178: ADD             X3, X3, #byte_F6B38@PAGEOFF
0004a17c: BLR             X8
0004a180: STUR            X0, [X29,#var_68]
0004a184: LDUR            X8, [X29,#var_68]
0004a188: MOV             W9, #0x288264EC
0004a190: CMP             X8, #0
0004a194: MOV             W8, #0xA2CC992B
0004a19c: B               loc_4AA94
0004a1a0: MOV             W9, #0x6F95D9A8
0004a1a8: CMP             W8, W9
0004a1ac: MOV             X0, X25
0004a1b0: MOV             W20, W8
0004a1b4: B.EQ            loc_4ABA8
0004a1b8: B               loc_49A68
0004a1bc: MOV             W9, #0x80201B8D
0004a1c4: CMP             W8, W9
0004a1c8: B.EQ            loc_4A9C0
0004a1cc: MOV             W9, #0x8D1C67DB
0004a1d4: CMP             W8, W9
0004a1d8: MOV             X0, X25
0004a1dc: MOV             W20, W8
0004a1e0: B.NE            loc_49A68
0004a1e4: LDUR            W8, [X29,#var_5C]
0004a1e8: MOV             W9, #0xC5A6B9FF
0004a1f0: CMP             W8, #3
0004a1f4: MOV             W8, #0x49327610
0004a1fc: B               loc_4A944
0004a200: MOV             W9, #0xC339960
0004a208: CMP             W8, W9
0004a20c: B.EQ            loc_4A9D4
0004a210: MOV             W9, #0x1288F125
0004a218: CMP             W8, W9
0004a21c: MOV             X0, X25
0004a220: MOV             W20, W8
0004a224: B.NE            loc_49A68
0004a228: LDR             X1, [SP,#0x110+var_A0]
0004a22c: LDR             X8, [X19]
0004a230: MOV             X0, X19
0004a234: LDR             X8, [X8,#0xB8]
0004a238: BLR             X8
0004a23c: LDR             X1, [SP,#0x110+var_98]
0004a240: LDR             X8, [X19]
0004a244: MOV             X0, X19
0004a248: LDR             X8, [X8,#0xB8]
0004a24c: BLR             X8
0004a250: LDR             X1, [SP,#0x110+var_C0]
0004a254: MOV             X0, X19
0004a258: BL              sub_10C30
0004a25c: LDR             X8, [X19]
0004a260: ADRP            X1, #byte_F6D98@PAGE
0004a264: MOV             X0, X19
0004a268: ADD             X1, X1, #byte_F6D98@PAGEOFF
0004a26c: LDR             X8, [X8,#0x538]
0004a270: BLR             X8
0004a274: MOV             W20, #0xBF2D6690
0004a27c: B               loc_49A68
0004a280: MOV             W9, #0xC39DF362
0004a288: CMP             W8, W9
0004a28c: B.EQ            loc_4A9E8
0004a290: MOV             W9, #0xC5A6B9FF
0004a298: CMP             W8, W9
0004a29c: MOV             X0, X25
0004a2a0: MOV             W20, W8
0004a2a4: B.NE            loc_49A68
0004a2a8: LDUR            W8, [X29,#var_5C]
0004a2ac: MOV             W9, #0x28B700A1
0004a2b4: CMP             W8, #2
0004a2b8: MOV             W8, #0x2850DC1D
0004a2c0: B               loc_4A944
0004a2c4: MOV             W9, #0x47C682C4
0004a2cc: CMP             W8, W9
0004a2d0: B.EQ            loc_4A9FC
0004a2d4: MOV             W9, #0x49327610
0004a2dc: CMP             W8, W9
0004a2e0: MOV             X0, X25
0004a2e4: MOV             W20, W8
0004a2e8: B.NE            loc_49A68
0004a2ec: LDUR            W8, [X29,#var_5C]
0004a2f0: MOV             W9, #0x3C42818A
0004a2f8: CMP             W8, #4
0004a2fc: MOV             W8, #0x9743D03D
0004a304: B               loc_4A610
0004a308: MOV             W9, #0xA2CC992B
0004a310: CMP             W8, W9
0004a314: B.EQ            loc_4AA40
0004a318: MOV             W9, #0xA819FB51
0004a320: CMP             W8, W9
0004a324: MOV             X0, X25
0004a328: MOV             W20, W8
0004a32c: B.NE            loc_49A68
0004a330: LDUR            W8, [X29,#var_5C]
0004a334: MOV             W9, #0xC7E3BC96
0004a33c: CMP             W8, #0xC
0004a340: MOV             W8, #0x56656491
0004a348: B               loc_4A944
0004a34c: MOV             W9, #0x28B700A1
0004a354: CMP             W8, W9
0004a358: B.EQ            loc_4AA7C
0004a35c: MOV             W9, #0x33BAB6DC
0004a364: CMP             W8, W9
0004a368: MOV             X0, X25
0004a36c: MOV             W20, W8
0004a370: B.NE            loc_49A68
0004a374: LDR             X1, [SP,#0x110+var_A0]
0004a378: LDR             X8, [X19]
0004a37c: MOV             X0, X19
0004a380: LDR             X8, [X8,#0xB8]
0004a384: BLR             X8
0004a388: LDR             X1, [SP,#0x110+var_98]
0004a38c: LDR             X8, [X19]
0004a390: MOV             X0, X19
0004a394: LDR             X8, [X8,#0xB8]
0004a398: BLR             X8
0004a39c: LDUR            X1, [X29,#var_78]
0004a3a0: LDR             X8, [X19]
0004a3a4: MOV             X0, X19
0004a3a8: LDR             X8, [X8,#0xB8]
0004a3ac: BLR             X8
0004a3b0: LDUR            X1, [X29,#var_70]
0004a3b4: LDR             X8, [X19]
0004a3b8: MOV             X0, X19
0004a3bc: LDR             X8, [X8,#0xB8]
0004a3c0: BLR             X8
0004a3c4: LDR             X1, [SP,#0x110+var_C0]
0004a3c8: MOV             X0, X19
0004a3cc: BL              sub_10C30
0004a3d0: MOV             W20, #0x4B8A3E3B
0004a3d8: MOV             X0, X25
0004a3dc: B               loc_49A68
0004a3e0: MOV             W9, #0xEAE4BAE2
0004a3e8: CMP             W8, W9
0004a3ec: B.EQ            loc_4A61C
0004a3f0: MOV             W9, #0xEBAB1D64
0004a3f8: CMP             W8, W9
0004a3fc: MOV             X0, X25
0004a400: MOV             W20, W8
0004a404: B.NE            loc_49A68
0004a408: LDR             X8, [X19]
0004a40c: ADRP            X1, #aCnod@PAGE; "CNOD\n"
0004a410: MOV             X0, X19
0004a414: ADD             X1, X1, #aCnod@PAGEOFF; "CNOD\n"
0004a418: B               loc_4AB5C
0004a41c: MOV             W9, #0x95FB4C38
0004a424: CMP             W8, W9
0004a428: B.EQ            loc_4AAA0
0004a42c: MOV             W9, #0x9743D03D
0004a434: CMP             W8, W9
0004a438: MOV             X0, X25
0004a43c: MOV             W20, W8
0004a440: B.NE            loc_49A68
0004a444: LDR             X8, [X19]
0004a448: ADRP            X1, #a89M@PAGE; "8 9>m"
0004a44c: MOV             X0, X19
0004a450: ADD             X1, X1, #a89M@PAGEOFF; "8 9>m"
0004a454: B               loc_4AB5C
0004a458: MOV             W9, #0x21297115
0004a460: CMP             W8, W9
0004a464: B.EQ            loc_4AABC
0004a468: MOV             W9, #0x23B15564
0004a470: CMP             W8, W9
0004a474: MOV             X0, X25
0004a478: MOV             W20, W8
0004a47c: B.NE            loc_49A68
0004a480: LDR             X8, [X19]
0004a484: ADRP            X1, #byte_F6E34@PAGE
0004a488: MOV             X0, X19
0004a48c: ADD             X1, X1, #byte_F6E34@PAGEOFF
0004a490: B               loc_4AB5C
0004a494: MOV             W9, #0xD401832E
0004a49c: CMP             W8, W9
0004a4a0: B.EQ            loc_4AAEC
0004a4a4: MOV             W9, #0xDFF90DEB
0004a4ac: CMP             W8, W9
0004a4b0: MOV             X0, X25
0004a4b4: MOV             W20, W8
0004a4b8: B.NE            loc_49A68
0004a4bc: LDR             X8, [X19]
0004a4c0: ADRP            X1, #byte_F6E4C@PAGE
0004a4c4: MOV             X0, X19
0004a4c8: ADD             X1, X1, #byte_F6E4C@PAGEOFF
0004a4cc: B               loc_4AB5C
0004a4d0: MOV             W9, #0x543F742B
0004a4d8: CMP             W8, W9
0004a4dc: B.EQ            loc_4AB08
0004a4e0: MOV             W9, #0x56656491
0004a4e8: CMP             W8, W9
0004a4ec: MOV             X0, X25
0004a4f0: MOV             W20, W8
0004a4f4: B.NE            loc_49A68
0004a4f8: LDUR            W8, [X29,#var_5C]
0004a4fc: MOV             W9, #0x388BF5C7
0004a504: CMP             W8, #0xD
0004a508: MOV             W8, #0xFB1EA353
0004a510: B               loc_4A944
0004a514: MOV             W9, #0xB2EE9930
0004a51c: CMP             W8, W9
0004a520: B.EQ            loc_4AB20
0004a524: MOV             W9, #0xB6C43AC5
0004a52c: CMP             W8, W9
0004a530: MOV             X0, X25
0004a534: MOV             W20, W8
0004a538: B.NE            loc_49A68
0004a53c: MOV             W20, #0xE621
0004a540: MOV             X0, X19
0004a544: MOVK            W20, #0x9BCF,LSL#16
0004a548: BL              sub_B6D0
0004a54c: STR             XZR, [SP,#0x110+var_F0]
0004a550: MOV             X0, X25
0004a554: B               loc_49A68
0004a558: MOV             W9, #0x3C10F461
0004a560: CMP             W8, W9
0004a564: B.EQ            loc_4AB38
0004a568: MOV             W9, #0x3C42818A
0004a570: CMP             W8, W9
0004a574: MOV             X0, X25
0004a578: MOV             W20, W8
0004a57c: B.NE            loc_49A68
0004a580: LDR             X8, [X19]
0004a584: ADRP            X1, #byte_F6E04@PAGE
0004a588: MOV             X0, X19
0004a58c: ADD             X1, X1, #byte_F6E04@PAGEOFF
0004a590: B               loc_4AB5C
0004a594: MOV             W9, #0xFD62D104
0004a59c: CMP             W8, W9
0004a5a0: B.EQ            loc_4AB4C
0004a5a4: MOV             W9, #0xFD707EE3
0004a5ac: CMP             W8, W9
0004a5b0: MOV             X0, X25
0004a5b4: MOV             W20, W8
0004a5b8: B.NE            loc_49A68
0004a5bc: LDR             X8, [X19]
0004a5c0: ADRP            X1, #byte_F6E58@PAGE
0004a5c4: MOV             X0, X19
0004a5c8: ADD             X1, X1, #byte_F6E58@PAGEOFF
0004a5cc: B               loc_4AB5C
0004a5d0: MOV             W9, #0x6DEC5C7A
0004a5d8: CMP             W8, W9
0004a5dc: B.EQ            loc_4AB6C
0004a5e0: MOV             W9, #0x6EC7EB64
0004a5e8: CMP             W8, W9
0004a5ec: MOV             X0, X25
0004a5f0: MOV             W20, W8
0004a5f4: B.NE            loc_49A68
0004a5f8: LDUR            W8, [X29,#var_5C]
0004a5fc: MOV             W9, #0xAF0C982A
0004a604: CMP             W8, #5
0004a608: MOV             W8, #0x8D1C67DB
0004a610: CSEL            W20, W8, W9, LT
0004a614: MOV             X0, X25
0004a618: B               loc_49A68
0004a61c: MOV             X22, XZR
0004a620: B               loc_49A5C
0004a624: MOV             W20, #0x36E
0004a628: MOV             X0, X19
0004a62c: MOVK            W20, #0x2641,LSL#16
0004a630: BL              sub_B6D0
0004a634: STR             XZR, [SP,#0x110+var_E8]
0004a638: MOV             X0, X25
0004a63c: B               loc_49A68
0004a640: LDR             X8, [X19]
0004a644: ADRP            X1, #a172B@PAGE; "*172#b"
0004a648: MOV             X0, X19
0004a64c: ADD             X1, X1, #a172B@PAGEOFF; "*172#b"
0004a650: B               loc_4AB5C
0004a654: LDR             X8, [SP,#0x110+var_C0]
0004a658: MOV             W9, #0x1D3D4BAD
0004a660: CMP             X8, #0
0004a664: MOV             W8, #0xCFB05AC0
0004a66c: B               loc_4AA94
0004a670: MOV             W20, #0xD9A8
0004a674: STR             XZR, [SP,#0x110+var_D0]
0004a678: MOVK            W20, #0x6F95,LSL#16
0004a67c: MOV             X0, X25
0004a680: B               loc_49A68
0004a684: LDUR            W8, [X29,#var_5C]
0004a688: MOV             W9, #0x23B15564
0004a690: CMP             W8, #0xB
0004a694: MOV             W8, #0xEBAB1D64
0004a69c: B               loc_4A944
0004a6a0: MOV             W20, #0x1AF0
0004a6a4: MOV             X0, X19
0004a6a8: MOVK            W20, #0x92E6,LSL#16
0004a6ac: BL              sub_B6D0
0004a6b0: STR             XZR, [SP,#0x110+var_D8]
0004a6b4: MOV             X0, X25
0004a6b8: B               loc_49A68
0004a6bc: LDUR            W8, [X29,#var_5C]
0004a6c0: MOV             W9, #0x6EC7EB64
0004a6c8: CMP             W8, #0xA
0004a6cc: MOV             W8, #0x3A22A4F5
0004a6d4: B               loc_4A944
0004a6d8: MOV             W20, #0xBDC284F1
0004a6e0: MOV             X0, X25
0004a6e4: STR             X22, [SP,#0x110+var_108]
0004a6e8: B               loc_49A68
0004a6ec: LDR             X8, [SP,#0x110+var_F8]
0004a6f0: MOV             W20, #0x2641036E
0004a6f8: MOV             X0, X25
0004a6fc: STR             X8, [SP,#0x110+var_E8]
0004a700: B               loc_49A68
0004a704: LDUR            W8, [X29,#var_5C]
0004a708: MOV             W9, #0x911D02D
0004a710: CMP             W8, #7
0004a714: MOV             W8, #0x411F9F40
0004a71c: B               loc_4A944
0004a720: LDR             X8, [X19]
0004a724: ADRP            X1, #byte_F6E44@PAGE
0004a728: MOV             X0, X19
0004a72c: ADD             X1, X1, #byte_F6E44@PAGEOFF
0004a730: B               loc_4AB5C
0004a734: LDURB           W8, [X29,#var_84]
0004a738: MOV             W9, #0x1288F125
0004a740: CMP             W8, #0
0004a744: MOV             W8, #0x7141686
0004a74c: B               loc_4AB9C
0004a750: LDUR            W8, [X29,#var_5C]
0004a754: MOV             W9, #0x755EAAC4
0004a75c: CMP             W8, #9
0004a760: MOV             W8, #0x925F7899
0004a768: B               loc_4A944
0004a76c: LDUR            W8, [X29,#var_5C]
0004a770: MOV             W9, #0x6116E9A5
0004a778: CMP             W8, #0x12
0004a77c: MOV             W8, #0xB7BD1847
0004a784: B               loc_4A944
0004a788: LDR             X8, [X19]
0004a78c: ADRP            X1, #aL_1@PAGE; "$?(<-l"
0004a790: MOV             X0, X19
0004a794: ADD             X1, X1, #aL_1@PAGEOFF; "$?(<-l"
0004a798: B               loc_4AB5C
0004a79c: LDR             X1, [SP,#0x110+var_A0]
0004a7a0: LDR             X2, [SP,#0x110+var_90]
0004a7a4: MOV             X0, X19
0004a7a8: BL              sub_11964
0004a7ac: STURB           W0, [X29,#var_84]
0004a7b0: LDR             X8, [X19]
0004a7b4: MOV             X0, X19
0004a7b8: LDR             X8, [X8,#0x720]
0004a7bc: BLR             X8
0004a7c0: MOV             W8, #0x7115
0004a7c4: MOV             W9, #0x1E39
0004a7c8: TST             W0, #0xFF
0004a7cc: MOVK            W8, #0x2129,LSL#16
0004a7d0: MOVK            W9, #0x38C4,LSL#16
0004a7d4: B               loc_4AA94
0004a7d8: MOV             W20, #0xEAE4BAE2
0004a7e0: MOV             X0, X25
0004a7e4: B               loc_49A68
0004a7e8: LDR             X8, [SP,#0x110+var_E8]
0004a7ec: MOV             W20, #0x543F742B
0004a7f4: MOV             X0, X25
0004a7f8: STR             X8, [SP,#0x110+var_E0]
0004a7fc: B               loc_49A68
0004a800: LDR             X8, [X19]
0004a804: ADRP            X1, #byte_F6DF4@PAGE
0004a808: MOV             X0, X19
0004a80c: ADD             X1, X1, #byte_F6DF4@PAGEOFF
0004a810: B               loc_4AB5C
0004a814: LDR             X8, [SP,#0x110+var_C0]
0004a818: MOV             W3, #1
0004a81c: MOV             X0, X19
0004a820: ADD             X8, X8, #8
0004a824: STR             X8, [SP,#0x110+var_A8]
0004a828: LDR             X8, [SP,#0x110+var_A8]
0004a82c: LDR             X1, [X8]
0004a830: LDR             X2, [SP,#0x110+var_B0]
0004a834: BL              sub_BF48
0004a838: STR             X0, [SP,#0x110+var_A0]
0004a83c: LDR             X8, [SP,#0x110+var_A0]
0004a840: MOV             W9, #0x5AA62888
0004a848: CMP             X8, #0
0004a84c: MOV             W8, #0x4111D75E
0004a854: B               loc_4AA94
0004a858: MOV             W20, #0x3358
0004a85c: MOV             X0, X19
0004a860: MOVK            W20, #0xF45A,LSL#16
0004a864: BL              sub_B6D0
0004a868: STR             XZR, [SP,#0x110+var_C8]
0004a86c: MOV             X0, X25
0004a870: B               loc_49A68
0004a874: MOV             W20, #0x742B
0004a878: MOV             X0, X19
0004a87c: MOVK            W20, #0x543F,LSL#16
0004a880: BL              sub_B6D0
0004a884: STR             XZR, [SP,#0x110+var_E0]
0004a888: MOV             X0, X25
0004a88c: B               loc_49A68
0004a890: LDUR            X1, [X29,#var_78]
0004a894: LDR             X8, [X19]
0004a898: MOV             X0, X19
0004a89c: LDR             X8, [X8,#0xF8]
0004a8a0: BLR             X8
0004a8a4: STUR            X0, [X29,#var_70]
0004a8a8: LDUR            X8, [X29,#var_70]
0004a8ac: MOV             W9, #0x66AF89C7
0004a8b4: CMP             X8, #0
0004a8b8: MOV             W8, #0xD401832E
0004a8c0: B               loc_4AB9C
0004a8c4: LDUR            W8, [X29,#var_5C]
0004a8c8: MOV             W9, #0x2A91D3D
0004a8d0: CMP             W8, #0x14
0004a8d4: MOV             W8, #0x80201B8D
0004a8dc: B               loc_4A944
0004a8e0: LDR             X8, [SP,#0x110+var_108]
0004a8e4: MOV             W20, #0xB2EE9930
0004a8ec: MOV             X0, X25
0004a8f0: STR             X8, [SP,#0x110+var_100]
0004a8f4: B               loc_49A68
0004a8f8: LDR             X1, [SP,#0x110+var_A0]
0004a8fc: LDR             X8, [X19]
0004a900: MOV             X0, X19
0004a904: LDR             X8, [X8,#0xF8]
0004a908: BLR             X8
0004a90c: STR             X0, [SP,#0x110+var_98]
0004a910: LDR             X8, [SP,#0x110+var_98]
0004a914: MOV             W9, #0x47C682C4
0004a91c: CMP             X8, #0
0004a920: MOV             W8, #0x90DD2D3D
0004a928: B               loc_4AB9C
0004a92c: LDUR            W8, [X29,#var_5C]
0004a930: MOV             W9, #0x1E386453
0004a938: CMP             W8, #8
0004a93c: MOV             W8, #0xF3479EA2
0004a944: CSEL            W20, W9, W8, LT
0004a948: MOV             X0, X25
0004a94c: B               loc_49A68
0004a950: LDUR            W8, [X29,#var_5C]
0004a954: MOV             W9, #0x3C10F461
0004a95c: CMP             W8, #0x12
0004a960: B               loc_4AA8C
0004a964: LDR             X8, [SP,#0x110+var_B8]
0004a968: LDR             X9, [X19]
0004a96c: ADRP            X2, #xmmword_F6DA0@PAGE
0004a970: ADRP            X3, #xmmword_F6DC0@PAGE
0004a974: LDR             X1, [X8]
0004a978: LDR             X8, [X9,#0x108]
0004a97c: MOV             X0, X19
0004a980: ADD             X2, X2, #xmmword_F6DA0@PAGEOFF
0004a984: ADD             X3, X3, #xmmword_F6DC0@PAGEOFF
0004a988: BLR             X8
0004a98c: STUR            X0, [X29,#var_80]
0004a990: LDUR            X8, [X29,#var_80]
0004a994: MOV             W9, #0x6DEC5C7A
0004a99c: CMP             X8, #0
0004a9a0: MOV             W8, #0xE574776E
0004a9a8: B               loc_4AB9C
0004a9ac: LDR             X8, [X19]
0004a9b0: ADRP            X1, #byte_F6E64@PAGE
0004a9b4: MOV             X0, X19
0004a9b8: ADD             X1, X1, #byte_F6E64@PAGEOFF
0004a9bc: B               loc_4AB5C
0004a9c0: LDUR            W8, [X29,#var_5C]
0004a9c4: MOV             W9, #0xC339960
0004a9cc: CMP             W8, #0x14
0004a9d0: B               loc_4AA8C
0004a9d4: LDR             X8, [X19]
0004a9d8: ADRP            X1, #byte_F6E74@PAGE
0004a9dc: MOV             X0, X19
0004a9e0: ADD             X1, X1, #byte_F6E74@PAGEOFF
0004a9e4: B               loc_4AB5C
0004a9e8: LDR             X8, [X19]
0004a9ec: ADRP            X1, #byte_F6E50@PAGE
0004a9f0: MOV             X0, X19
0004a9f4: ADD             X1, X1, #byte_F6E50@PAGEOFF
0004a9f8: B               loc_4AB5C
0004a9fc: LDR             X1, [SP,#0x110+var_98]
0004aa00: LDR             X8, [X19]
0004aa04: ADRP            X2, #xmmword_F6D80@PAGE
0004aa08: ADRP            X3, #byte_F6AFC@PAGE
0004aa0c: MOV             X0, X19
0004aa10: LDR             X8, [X8,#0x108]
0004aa14: ADD             X2, X2, #xmmword_F6D80@PAGEOFF
0004aa18: ADD             X3, X3, #byte_F6AFC@PAGEOFF
0004aa1c: BLR             X8
0004aa20: STR             X0, [SP,#0x110+var_90]
0004aa24: LDR             X8, [SP,#0x110+var_90]
0004aa28: MOV             W9, #0x9B72496C
0004aa30: CMP             X8, #0
0004aa34: MOV             W8, #0x95FB4C38
0004aa3c: B               loc_4AB9C
0004aa40: LDUR            X1, [X29,#var_78]
0004aa44: LDUR            X2, [X29,#var_68]
0004aa48: MOV             X0, X19
0004aa4c: BL              sub_C4A8
0004aa50: STUR            W0, [X29,#var_5C]
0004aa54: LDR             X8, [X19]
0004aa58: MOV             X0, X19
0004aa5c: LDR             X8, [X8,#0x720]
0004aa60: BLR             X8
0004aa64: MOV             W8, #0xDDF4
0004aa68: MOV             W9, #0xB6DC
0004aa6c: TST             W0, #0xFF
0004aa70: MOVK            W8, #0x6004,LSL#16
0004aa74: MOVK            W9, #0x33BA,LSL#16
0004aa78: B               loc_4AA94
0004aa7c: LDUR            W8, [X29,#var_5C]
0004aa80: MOV             W9, #0x4EA32DE1
0004aa88: CMP             W8, #1
0004aa8c: MOV             W8, #0x9BB2CFA3
0004aa94: CSEL            W20, W9, W8, EQ
0004aa98: MOV             X0, X25
0004aa9c: B               loc_49A68
0004aaa0: MOV             W20, #0x56A9
0004aaa4: MOV             X0, X19
0004aaa8: MOVK            W20, #0xA847,LSL#16
0004aaac: BL              sub_B6D0
0004aab0: STR             XZR, [SP,#0x110+var_F8]
0004aab4: MOV             X0, X25
0004aab8: B               loc_49A68
0004aabc: LDR             X8, [X19]
0004aac0: MOV             X0, X19
0004aac4: LDR             X8, [X8,#0x80]
0004aac8: BLR             X8
0004aacc: LDR             X8, [X19]
0004aad0: MOV             X0, X19
0004aad4: LDR             X8, [X8,#0x88]
0004aad8: BLR             X8
0004aadc: MOV             W20, #0x6690
0004aae0: MOV             X0, XZR
0004aae4: MOVK            W20, #0xBF2D,LSL#16
0004aae8: B               loc_49A68
0004aaec: MOV             W20, #0x9930
0004aaf0: MOV             X0, X19
0004aaf4: MOVK            W20, #0xB2EE,LSL#16
0004aaf8: BL              sub_B6D0
0004aafc: STR             XZR, [SP,#0x110+var_100]
0004ab00: MOV             X0, X25
0004ab04: B               loc_49A68
0004ab08: LDR             X8, [SP,#0x110+var_E0]
0004ab0c: MOV             W20, #0x92E61AF0
0004ab14: MOV             X0, X25
0004ab18: STR             X8, [SP,#0x110+var_D8]
0004ab1c: B               loc_49A68
0004ab20: LDR             X8, [SP,#0x110+var_100]
0004ab24: MOV             W20, #0x9BCFE621
0004ab2c: MOV             X0, X25
0004ab30: STR             X8, [SP,#0x110+var_F0]
0004ab34: B               loc_49A68
0004ab38: LDR             X8, [X19]
0004ab3c: ADRP            X1, #aJ@PAGE; "#=&+$j"
0004ab40: MOV             X0, X19
0004ab44: ADD             X1, X1, #aJ@PAGEOFF; "#=&+$j"
0004ab48: B               loc_4AB5C
0004ab4c: LDR             X8, [X19]
0004ab50: ADRP            X1, #byte_F6E60@PAGE
0004ab54: MOV             X0, X19
0004ab58: ADD             X1, X1, #byte_F6E60@PAGEOFF
0004ab5c: LDR             X8, [X8,#0x538]
0004ab60: BLR             X8
0004ab64: MOV             X22, X0
0004ab68: B               loc_49A5C
0004ab6c: LDR             X8, [SP,#0x110+var_A8]
0004ab70: MOV             X0, X19
0004ab74: LDR             X1, [X8]
0004ab78: LDUR            X2, [X29,#var_80]
0004ab7c: BL              sub_BF48
0004ab80: STUR            X0, [X29,#var_78]
0004ab84: LDUR            X8, [X29,#var_78]
0004ab88: MOV             W9, #0x5E66614F
0004ab90: CMP             X8, #0
0004ab94: MOV             W8, #0xB6C43AC5
0004ab9c: CSEL            W20, W8, W9, EQ
0004aba0: MOV             X0, X25
0004aba4: B               loc_49A68
0004aba8: LDR             X0, [SP,#0x110+var_D0]
0004abac: LDP             X29, X30, [SP,#0x110+var_s0]
0004abb0: LDP             X20, X19, [SP,#0x110+var_10]
0004abb4: LDP             X22, X21, [SP,#0x110+var_20]
0004abb8: LDP             X24, X23, [SP,#0x110+var_30]
0004abbc: LDP             X26, X25, [SP,#0x110+var_40]
0004abc0: LDP             X28, X27, [SP,#0x110+var_50]
0004abc4: ADD             SP, SP, #0x120
0004abc8: RET