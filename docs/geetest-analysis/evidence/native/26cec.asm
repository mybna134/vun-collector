00026cec: SUB             SP, SP, #0x120
00026cf0: STP             X28, X27, [SP,#0x110+var_50]
00026cf4: STP             X26, X25, [SP,#0x110+var_40]
00026cf8: STP             X24, X23, [SP,#0x110+var_30]
00026cfc: STP             X22, X21, [SP,#0x110+var_20]
00026d00: STP             X20, X19, [SP,#0x110+var_10]
00026d04: STP             X29, X30, [SP,#0x110+var_s0]
00026d08: ADD             X29, SP, #0x110
00026d0c: STR             X2, [SP,#0x110+var_108]
00026d10: ADRL            X2, a577168T; "5771''=6=8= -T"
00026d18: MOV             X20, X0
00026d1c: BL              sub_1723C
00026d20: MOV             W22, #0x86CF
00026d24: MOV             W25, #0x1F5A
00026d28: MOV             W24, #0x6DC3
00026d2c: MOV             W21, #0x1043
00026d30: MOV             W13, #0x8B3E
00026d34: MOVK            W22, #0xEF8E,LSL#16
00026d38: MOVK            W25, #0xBBAA,LSL#16
00026d3c: MOVK            W24, #0xD9CF,LSL#16
00026d40: MOVK            W21, #0x2D29,LSL#16
00026d44: MOVK            W13, #0xE097,LSL#16
00026d48: STR             X0, [SP,#0x110+var_F0]
00026d4c: B               loc_26D64
00026d50: MOV             W8, W28
00026d54: MOV             W9, W26
00026d58: MOV             W10, W19
00026d5c: MOV             W12, W23
00026d60: MOV             W14, W27
00026d64: MOV             W11, W13
00026d68: CMP             W13, W22
00026d6c: MOV             W27, W14
00026d70: MOV             W23, W12
00026d74: MOV             W19, W10
00026d78: MOV             W26, W9
00026d7c: MOV             W28, W8
00026d80: B.GT            loc_26E50
00026d84: CMP             W11, W25
00026d88: B.LE            loc_26EE4
00026d8c: CMP             W11, W24
00026d90: B.LE            loc_26FE0
00026d94: MOV             W8, #0xE425D5F5
00026d9c: CMP             W11, W8
00026da0: B.GT            loc_27244
00026da4: MOV             W8, #0xE0978B3D
00026dac: CMP             W11, W8
00026db0: B.GT            loc_27634
00026db4: MOV             W8, #0xD9CF6DC4
00026dbc: MOV             W13, #0xBF70
00026dc0: CMP             W11, W8
00026dc4: MOV             W8, W28
00026dc8: MOV             W9, W26
00026dcc: MOV             W10, W19
00026dd0: MOV             W12, W23
00026dd4: MOV             W14, W27
00026dd8: MOVK            W13, #0xEB1E,LSL#16
00026ddc: B.EQ            loc_26D64
00026de0: MOV             W8, #0xDC6D9EEF
00026de8: CMP             W11, W8
00026dec: MOV             W8, W28
00026df0: MOV             W9, W26
00026df4: MOV             W10, W19
00026df8: MOV             W12, W23
00026dfc: MOV             W14, W27
00026e00: MOV             W13, W11
00026e04: B.NE            loc_26D64
00026e08: LDR             X1, [SP,#0x110+var_88]
00026e0c: LDR             X8, [X20]
00026e10: ADRP            X2, #qword_F33F8@PAGE
00026e14: ADRP            X3, #xmmword_F3410@PAGE
00026e18: MOV             X0, X20
00026e1c: LDR             X8, [X8,#0x2F0]
00026e20: ADD             X2, X2, #qword_F33F8@PAGEOFF
00026e24: ADD             X3, X3, #xmmword_F3410@PAGEOFF
00026e28: BLR             X8
00026e2c: STUR            X0, [X29,#var_80]
00026e30: LDUR            X8, [X29,#var_80]
00026e34: MOV             W9, #0x5A89076D
00026e3c: CMP             X8, #0
00026e40: MOV             W8, #0x77A131A
00026e48: CSEL            W13, W9, W8, EQ
00026e4c: B               loc_26D50
00026e50: CMP             W11, W21
00026e54: B.GT            loc_26F50
00026e58: MOV             W8, #0xE262BD0
00026e60: CMP             W11, W8
00026e64: B.LE            loc_270B4
00026e68: MOV             W8, #0x1583ECF6
00026e70: CMP             W11, W8
00026e74: B.GT            loc_272A0
00026e78: MOV             W8, #0x13E8566B
00026e80: CMP             W11, W8
00026e84: B.GT            loc_2769C
00026e88: MOV             W8, #0xE262BD1
00026e90: CMP             W11, W8
00026e94: B.EQ            loc_27B7C
00026e98: MOV             W8, #0xF45DFF2
00026ea0: CMP             W11, W8
00026ea4: MOV             W8, W28
00026ea8: MOV             W9, W26
00026eac: MOV             W10, W19
00026eb0: MOV             W12, W23
00026eb4: MOV             W14, W27
00026eb8: MOV             W13, W11
00026ebc: B.NE            loc_26D64
00026ec0: MOV             X0, X20
00026ec4: BL              sub_B6D0
00026ec8: MOV             W8, #0xFFFFFFFF
00026ecc: STR             W8, [SP,#0x110+var_F8]
00026ed0: MOV             W8, W28
00026ed4: MOV             W9, W26
00026ed8: MOV             W10, W19
00026edc: MOV             W12, W23
00026ee0: B               loc_27120
00026ee4: MOV             W8, #0x988E17EE
00026eec: CMP             W11, W8
00026ef0: B.LE            loc_27130
00026ef4: MOV             W8, #0x9FB5999E
00026efc: CMP             W11, W8
00026f00: B.GT            loc_27340
00026f04: MOV             W8, #0x9BED7703
00026f0c: CMP             W11, W8
00026f10: B.GT            loc_2770C
00026f14: MOV             W8, #0x988E17EF
00026f1c: CMP             W11, W8
00026f20: B.EQ            loc_27BA4
00026f24: MOV             W8, #0x9B10BA19
00026f2c: CMP             W11, W8
00026f30: MOV             W8, W28
00026f34: MOV             W9, W26
00026f38: MOV             W10, W19
00026f3c: MOV             W12, W23
00026f40: MOV             W14, W27
00026f44: MOV             W13, W11
00026f48: B.NE            loc_26D64
00026f4c: B               loc_27C94
00026f50: MOV             W8, #0x520A170D
00026f58: CMP             W11, W8
00026f5c: B.LE            loc_2718C
00026f60: MOV             W8, #0x5F418C00
00026f68: CMP             W11, W8
00026f6c: B.GT            loc_273B0
00026f70: MOV             W8, #0x587C98D7
00026f78: CMP             W11, W8
00026f7c: B.GT            loc_27748
00026f80: MOV             W8, #0x520A170E
00026f88: CMP             W11, W8
00026f8c: B.EQ            loc_27BD8
00026f90: MOV             W8, #0x5448668C
00026f98: CMP             W11, W8
00026f9c: MOV             W8, W28
00026fa0: MOV             W9, W26
00026fa4: MOV             W10, W19
00026fa8: MOV             W12, W23
00026fac: MOV             W14, W27
00026fb0: MOV             W13, W11
00026fb4: B.NE            loc_26D64
00026fb8: MOV             X0, X20
00026fbc: BL              sub_B6D0
00026fc0: MOV             W13, #0x143F
00026fc4: MOV             W12, #0xFFFFFFFF
00026fc8: MOV             W8, W28
00026fcc: MOV             W9, W26
00026fd0: MOV             W10, W19
00026fd4: MOV             W14, W27
00026fd8: MOVK            W13, #0x4EFE,LSL#16
00026fdc: B               loc_26D64
00026fe0: MOV             W8, #0xCA50F58F
00026fe8: CMP             W11, W8
00026fec: B.GT            loc_2743C
00026ff0: MOV             W8, #0xC5418A53
00026ff8: CMP             W11, W8
00026ffc: B.GT            loc_277A8
00027000: MOV             W8, #0xBBAA1F5B
00027008: MOV             W13, #0xF590
0002700c: CMP             W11, W8
00027010: MOV             W8, W28
00027014: MOV             W9, W19
00027018: MOV             W10, W19
0002701c: MOV             W12, W23
00027020: MOV             W14, W27
00027024: MOVK            W13, #0xCA50,LSL#16
00027028: B.EQ            loc_26D64
0002702c: MOV             W8, #0xC1FB090D
00027034: CMP             W11, W8
00027038: MOV             W8, W28
0002703c: MOV             W9, W26
00027040: MOV             W10, W19
00027044: MOV             W12, W23
00027048: MOV             W14, W27
0002704c: MOV             W13, W11
00027050: B.NE            loc_26D64
00027054: LDR             X1, [SP,#0x110+var_E0]
00027058: LDR             X8, [X20]
0002705c: MOV             X0, X20
00027060: LDR             X8, [X8,#0xB8]
00027064: BLR             X8
00027068: LDR             X1, [SP,#0x110+var_D8]
0002706c: LDR             X8, [X20]
00027070: MOV             X0, X20
00027074: LDR             X8, [X8,#0xB8]
00027078: BLR             X8
0002707c: LDR             X1, [SP,#0x110+var_C8]
00027080: LDR             X8, [X20]
00027084: MOV             X0, X20
00027088: LDR             X8, [X8,#0xF8]
0002708c: BLR             X8
00027090: STR             X0, [SP,#0x110+var_C0]
00027094: LDR             X8, [SP,#0x110+var_C0]
00027098: MOV             W9, #0xF45DFF2
000270a0: CMP             X8, #0
000270a4: MOV             W8, #0x6D44CE68
000270ac: CSEL            W13, W9, W8, EQ
000270b0: B               loc_26D50
000270b4: MOV             W8, #0xFF8096BD
000270bc: CMP             W11, W8
000270c0: B.LE            loc_274A8
000270c4: MOV             W8, #0x77A1319
000270cc: CMP             W11, W8
000270d0: B.GT            loc_27888
000270d4: MOV             W8, #0xFF8096BE
000270dc: CMP             W11, W8
000270e0: B.EQ            loc_27C00
000270e4: MOV             W8, #0xA4D680
000270ec: CMP             W11, W8
000270f0: MOV             W8, W28
000270f4: MOV             W9, W26
000270f8: MOV             W10, W19
000270fc: MOV             W12, W23
00027100: MOV             W14, W27
00027104: MOV             W13, W11
00027108: B.NE            loc_26D64
0002710c: MOV             W8, W28
00027110: MOV             W9, W26
00027114: MOV             W10, W19
00027118: MOV             W12, W23
0002711c: STR             W27, [SP,#0x110+var_F8]
00027120: MOV             W13, #0x5969
00027124: MOV             W14, W27
00027128: MOVK            W13, #0x6F1E,LSL#16
0002712c: B               loc_26D64
00027130: MOV             W8, #0x8AE59688
00027138: CMP             W11, W8
0002713c: B.LE            loc_27540
00027140: MOV             W8, #0x94812F5C
00027148: CMP             W11, W8
0002714c: B.GT            loc_27908
00027150: MOV             W8, #0x8AE59689
00027158: CMP             W11, W8
0002715c: B.EQ            loc_27C28
00027160: MOV             W8, #0x8F627768
00027168: CMP             W11, W8
0002716c: MOV             W8, W28
00027170: MOV             W9, W26
00027174: MOV             W10, W19
00027178: MOV             W12, W23
0002717c: MOV             W14, W27
00027180: MOV             W13, W11
00027184: B.NE            loc_26D64
00027188: B               loc_27C08
0002718c: MOV             W8, #0x4A4F0B04
00027194: CMP             W11, W8
00027198: B.LE            loc_275CC
0002719c: MOV             W8, #0x4EFE143E
000271a4: CMP             W11, W8
000271a8: B.GT            loc_27968
000271ac: MOV             W8, #0x4A4F0B05
000271b4: MOV             W13, #0x7768
000271b8: CMP             W11, W8
000271bc: MOV             W8, W28
000271c0: MOV             W9, W26
000271c4: MOV             W10, W19
000271c8: MOV             W12, W23
000271cc: MOV             W14, W27
000271d0: MOVK            W13, #0x8F62,LSL#16
000271d4: B.EQ            loc_26D64
000271d8: MOV             W8, #0x4ED70BF1
000271e0: CMP             W11, W8
000271e4: MOV             W8, W28
000271e8: MOV             W9, W26
000271ec: MOV             W10, W19
000271f0: MOV             W12, W23
000271f4: MOV             W14, W27
000271f8: MOV             W13, W11
000271fc: B.NE            loc_26D64
00027200: LDR             X1, [SP,#0x110+var_A0]
00027204: LDR             X8, [X20]
00027208: ADRP            X2, #qword_F33B8@PAGE
0002720c: ADRP            X3, #xmmword_F33D0@PAGE
00027210: MOV             X0, X20
00027214: LDR             X8, [X8,#0x108]
00027218: ADD             X2, X2, #qword_F33B8@PAGEOFF
0002721c: ADD             X3, X3, #xmmword_F33D0@PAGEOFF
00027220: BLR             X8
00027224: STR             X0, [SP,#0x110+var_98]
00027228: LDR             X8, [SP,#0x110+var_98]
0002722c: MOV             W9, #0x5F418C01
00027234: CMP             X8, #0
00027238: MOV             W8, #0xA71C6AD7
00027240: B               loc_27F3C
00027244: MOV             W8, #0xE7EB8A45
0002724c: CMP             W11, W8
00027250: B.GT            loc_279E4
00027254: MOV             W8, #0xE425D5F6
0002725c: CMP             W11, W8
00027260: B.EQ            loc_27C50
00027264: MOV             W8, #0xE52274A7
0002726c: CMP             W11, W8
00027270: MOV             W8, W28
00027274: MOV             W9, W26
00027278: MOV             W10, W19
0002727c: MOV             W12, W23
00027280: MOV             W14, W27
00027284: MOV             W13, W11
00027288: B.NE            loc_26D64
0002728c: MOV             X0, X20
00027290: BL              sub_B6D0
00027294: MOV             W8, #0xFFFFFFFF
00027298: STR             W8, [SP,#0x110+var_100]
0002729c: B               loc_27A84
000272a0: MOV             W8, #0x231A2E1B
000272a8: CMP             W11, W8
000272ac: B.GT            loc_27A48
000272b0: MOV             W8, #0x1583ECF7
000272b8: MOV             W13, #0x5147
000272bc: CMP             W11, W8
000272c0: MOV             W8, W28
000272c4: MOV             W9, W26
000272c8: MOV             W10, W19
000272cc: MOV             W12, W23
000272d0: MOV             W14, W27
000272d4: MOVK            W13, #0xAEF8,LSL#16
000272d8: B.EQ            loc_26D64
000272dc: MOV             W8, #0x18E846DC
000272e4: CMP             W11, W8
000272e8: MOV             W8, W28
000272ec: MOV             W9, W26
000272f0: MOV             W10, W19
000272f4: MOV             W12, W23
000272f8: MOV             W14, W27
000272fc: MOV             W13, W11
00027300: B.NE            loc_26D64
00027304: LDR             X8, [SP,#0x110+var_F0]
00027308: MOV             W3, #0xFFFFFFFF
0002730c: MOV             X0, X20
00027310: LDR             X1, [X8,#8]
00027314: LDR             X2, [SP,#0x110+var_E8]
00027318: BL              sub_BF48
0002731c: STR             X0, [SP,#0x110+var_E0]
00027320: LDR             X8, [SP,#0x110+var_E0]
00027324: MOV             W9, #0xF195051B
0002732c: CMP             X8, #0
00027330: MOV             W8, #0x89BDE463
00027338: CSEL            W13, W9, W8, EQ
0002733c: B               loc_26D50
00027340: MOV             W8, #0xAA9275FA
00027348: CMP             W11, W8
0002734c: B.GT            loc_27AA4
00027350: MOV             W8, #0x9FB5999F
00027358: CMP             W11, W8
0002735c: B.EQ            loc_27C8C
00027360: MOV             W8, #0xA71C6AD7
00027368: CMP             W11, W8
0002736c: MOV             W8, W28
00027370: MOV             W9, W26
00027374: MOV             W10, W19
00027378: MOV             W12, W23
0002737c: MOV             W14, W27
00027380: MOV             W13, W11
00027384: B.NE            loc_26D64
00027388: MOV             X0, X20
0002738c: BL              sub_B6D0
00027390: MOV             W13, #0x5147
00027394: MOV             W8, W28
00027398: MOV             W9, W26
0002739c: MOV             W10, W19
000273a0: MOV             W12, W23
000273a4: MOV             W14, W27
000273a8: MOVK            W13, #0xAEF8,LSL#16
000273ac: B               loc_26D64
000273b0: MOV             W8, #0x6F1E5968
000273b8: CMP             W11, W8
000273bc: B.GT            loc_27AE0
000273c0: MOV             W8, #0x5F418C01
000273c8: CMP             W11, W8
000273cc: B.EQ            loc_27CB4
000273d0: MOV             W8, #0x6D44CE68
000273d8: CMP             W11, W8
000273dc: MOV             W8, W28
000273e0: MOV             W9, W26
000273e4: MOV             W10, W19
000273e8: MOV             W12, W23
000273ec: MOV             W14, W27
000273f0: MOV             W13, W11
000273f4: B.NE            loc_26D64
000273f8: LDR             X1, [SP,#0x110+var_C0]
000273fc: LDR             X8, [X20]
00027400: ADRP            X2, #qword_F33A8@PAGE
00027404: ADRP            X3, #byte_F2FC4@PAGE
00027408: MOV             X0, X20
0002740c: LDR             X8, [X8,#0x108]
00027410: ADD             X2, X2, #qword_F33A8@PAGEOFF
00027414: ADD             X3, X3, #byte_F2FC4@PAGEOFF
00027418: BLR             X8
0002741c: STR             X0, [SP,#0x110+var_B8]
00027420: LDR             X8, [SP,#0x110+var_B8]
00027424: MOV             W9, #0x74009ED6
0002742c: CMP             X8, #0
00027430: MOV             W8, #0x94812F5D
00027438: B               loc_27F3C
0002743c: MOV             W8, #0xCA61FF5C
00027444: CMP             W11, W8
00027448: B.EQ            loc_27F6C
0002744c: MOV             W8, #0xCA50F590
00027454: MOV             W13, #0xA12A
00027458: CMP             W11, W8
0002745c: MOV             W8, W26
00027460: MOV             W9, W26
00027464: MOV             W10, W19
00027468: MOV             W12, W23
0002746c: MOV             W14, W27
00027470: MOVK            W13, #0x2C10,LSL#16
00027474: B.EQ            loc_26D64
00027478: MOV             W8, #0xD7BD6325
00027480: CMP             W11, W8
00027484: MOV             W8, W28
00027488: MOV             W9, W26
0002748c: MOV             W10, W19
00027490: MOV             W12, W23
00027494: MOV             W14, W27
00027498: MOV             W13, W11
0002749c: B.NE            loc_26D64
000274a0: MOV             W8, #0xFFFFFFFF
000274a4: B               loc_27944
000274a8: MOV             W8, #0xEF8E86D0
000274b0: MOV             W13, #0xB05
000274b4: CMP             W11, W8
000274b8: MOV             W8, W28
000274bc: MOV             W9, W26
000274c0: MOV             W10, W19
000274c4: MOV             W12, W23
000274c8: MOV             W14, W27
000274cc: MOVK            W13, #0x4A4F,LSL#16
000274d0: B.EQ            loc_26D64
000274d4: MOV             W8, #0xF059EF9C
000274dc: CMP             W11, W8
000274e0: B.EQ            loc_27CE8
000274e4: MOV             W8, #0xF195051B
000274ec: CMP             W11, W8
000274f0: MOV             W8, W28
000274f4: MOV             W9, W26
000274f8: MOV             W10, W19
000274fc: MOV             W12, W23
00027500: MOV             W14, W27
00027504: MOV             W13, W11
00027508: B.NE            loc_26D64
0002750c: MOV             X0, X20
00027510: BL              sub_B6D0
00027514: LDR             X1, [SP,#0x110+var_F0]
00027518: MOV             X0, X20
0002751c: BL              sub_10C30
00027520: MOV             W13, #0xA12A
00027524: MOV             W8, #0xFFFFFFFF
00027528: MOV             W9, W26
0002752c: MOV             W10, W19
00027530: MOV             W12, W23
00027534: MOV             W14, W27
00027538: MOVK            W13, #0x2C10,LSL#16
0002753c: B               loc_26D64
00027540: MOV             W8, #0x83F26B55
00027548: CMP             W11, W8
0002754c: B.EQ            loc_27D2C
00027550: MOV             W8, #0x87774D85
00027558: CMP             W11, W8
0002755c: B.EQ            loc_27D64
00027560: MOV             W8, #0x89BDE463
00027568: CMP             W11, W8
0002756c: MOV             W8, W28
00027570: MOV             W9, W26
00027574: MOV             W10, W19
00027578: MOV             W12, W23
0002757c: MOV             W14, W27
00027580: MOV             W13, W11
00027584: B.NE            loc_26D64
00027588: LDR             X1, [SP,#0x110+var_F0]
0002758c: MOV             X0, X20
00027590: BL              sub_10C30
00027594: LDR             X1, [SP,#0x110+var_E0]
00027598: LDR             X8, [X20]
0002759c: MOV             X0, X20
000275a0: LDR             X8, [X8,#0xF8]
000275a4: BLR             X8
000275a8: STR             X0, [SP,#0x110+var_D8]
000275ac: LDR             X8, [SP,#0x110+var_D8]
000275b0: MOV             W9, #0xE7EB8A46
000275b8: CMP             X8, #0
000275bc: MOV             W8, #0x7D03A35
000275c4: CSEL            W13, W9, W8, EQ
000275c8: B               loc_26D50
000275cc: MOV             W8, #0x2D291044
000275d4: CMP             W11, W8
000275d8: B.EQ            loc_27D98
000275dc: LDR             W14, [SP,#0x110+var_F4]
000275e0: MOV             W8, #0x35B8CE5D
000275e8: MOV             W13, #0xD680
000275ec: CMP             W11, W8
000275f0: MOV             W8, W28
000275f4: MOV             W9, W26
000275f8: MOV             W10, W19
000275fc: MOV             W12, W23
00027600: MOVK            W13, #0xA4,LSL#16
00027604: B.EQ            loc_26D64
00027608: MOV             W8, #0x41BECC56
00027610: CMP             W11, W8
00027614: MOV             W8, W28
00027618: MOV             W9, W26
0002761c: MOV             W10, W19
00027620: MOV             W12, W23
00027624: MOV             W14, W27
00027628: MOV             W13, W11
0002762c: B.NE            loc_26D64
00027630: B               loc_27BE0
00027634: MOV             W8, #0xE0978B3E
0002763c: CMP             W11, W8
00027640: B.EQ            loc_27DC8
00027644: MOV             W8, #0xE13B1A3D
0002764c: CMP             W11, W8
00027650: MOV             W8, W28
00027654: MOV             W9, W26
00027658: MOV             W10, W19
0002765c: MOV             W12, W23
00027660: MOV             W14, W27
00027664: MOV             W13, W11
00027668: B.NE            loc_26D64
0002766c: LDR             X1, [SP,#0x110+var_C8]
00027670: LDR             X8, [X20]
00027674: MOV             X0, X20
00027678: LDR             X8, [X8,#0xB8]
0002767c: BLR             X8
00027680: LDR             X1, [SP,#0x110+var_C0]
00027684: LDR             X8, [X20]
00027688: MOV             X0, X20
0002768c: LDR             X8, [X8,#0xB8]
00027690: BLR             X8
00027694: STR             WZR, [SP,#0x110+var_F4]
00027698: B               loc_27DA8
0002769c: MOV             W8, #0x13E8566C
000276a4: CMP             W11, W8
000276a8: B.EQ            loc_27DE4
000276ac: MOV             W8, #0x14067F9A
000276b4: CMP             W11, W8
000276b8: MOV             W8, W28
000276bc: MOV             W9, W26
000276c0: MOV             W10, W19
000276c4: MOV             W12, W23
000276c8: MOV             W14, W27
000276cc: MOV             W13, W11
000276d0: B.NE            loc_26D64
000276d4: LDUR            X1, [X29,#var_78]
000276d8: LDR             X8, [X20]
000276dc: MOV             X0, X20
000276e0: LDR             X8, [X8,#0xF8]
000276e4: BLR             X8
000276e8: STUR            X0, [X29,#var_70]
000276ec: LDUR            X8, [X29,#var_70]
000276f0: MOV             W9, #0x520A170E
000276f8: CMP             X8, #0
000276fc: MOV             W8, #0xF059EF9C
00027704: CSEL            W13, W9, W8, EQ
00027708: B               loc_26D50
0002770c: MOV             W8, #0x9BED7704
00027714: CMP             W11, W8
00027718: B.EQ            loc_27E0C
0002771c: MOV             W8, #0x9D5201D2
00027724: CMP             W11, W8
00027728: MOV             W8, W28
0002772c: MOV             W9, W26
00027730: MOV             W10, W19
00027734: MOV             W12, W23
00027738: MOV             W14, W27
0002773c: MOV             W13, W11
00027740: B.NE            loc_26D64
00027744: B               loc_27E4C
00027748: MOV             W8, #0x587C98D8
00027750: CMP             W11, W8
00027754: B.EQ            loc_27E44
00027758: MOV             W8, #0x5A89076D
00027760: CMP             W11, W8
00027764: MOV             W8, W28
00027768: MOV             W9, W26
0002776c: MOV             W10, W19
00027770: MOV             W12, W23
00027774: MOV             W14, W27
00027778: MOV             W13, W11
0002777c: B.NE            loc_26D64
00027780: MOV             X0, X20
00027784: BL              sub_B6D0
00027788: MOV             W13, #0xB05
0002778c: MOV             W8, W28
00027790: MOV             W9, W26
00027794: MOV             W10, W19
00027798: MOV             W12, W23
0002779c: MOV             W14, W27
000277a0: MOVK            W13, #0x4A4F,LSL#16
000277a4: B               loc_26D64
000277a8: MOV             W8, #0xC5418A54
000277b0: MOV             W13, #0x6DC4
000277b4: CMP             W11, W8
000277b8: MOV             W8, W28
000277bc: MOV             W9, W26
000277c0: MOV             W10, W19
000277c4: MOV             W12, W23
000277c8: MOV             W14, W27
000277cc: MOVK            W13, #0xD9CF,LSL#16
000277d0: B.EQ            loc_26D64
000277d4: MOV             W8, #0xC9F3C5AC
000277dc: CMP             W11, W8
000277e0: MOV             W8, W28
000277e4: MOV             W9, W26
000277e8: MOV             W10, W19
000277ec: MOV             W12, W23
000277f0: MOV             W14, W27
000277f4: MOV             W13, W11
000277f8: B.NE            loc_26D64
000277fc: LDUR            X2, [X29,#var_60]
00027800: LDR             X1, [SP,#0x110+var_108]
00027804: MOV             X0, X20
00027808: BL              sub_14140
0002780c: LDR             X1, [SP,#0x110+var_A8]
00027810: LDR             X8, [X20]
00027814: MOV             X0, X20
00027818: LDR             X8, [X8,#0xB8]
0002781c: BLR             X8
00027820: LDR             X1, [SP,#0x110+var_A0]
00027824: LDR             X8, [X20]
00027828: MOV             X0, X20
0002782c: LDR             X8, [X8,#0xB8]
00027830: BLR             X8
00027834: LDR             X1, [SP,#0x110+var_90]
00027838: LDR             X8, [X20]
0002783c: MOV             X0, X20
00027840: LDR             X8, [X8,#0xB8]
00027844: BLR             X8
00027848: LDR             X1, [SP,#0x110+var_88]
0002784c: LDR             X8, [X20]
00027850: MOV             X0, X20
00027854: LDR             X8, [X8,#0xB8]
00027858: BLR             X8
0002785c: LDUR            X1, [X29,#var_78]
00027860: LDR             X8, [X20]
00027864: MOV             X0, X20
00027868: LDR             X8, [X8,#0xB8]
0002786c: BLR             X8
00027870: LDUR            X1, [X29,#var_70]
00027874: LDR             X8, [X20]
00027878: MOV             X0, X20
0002787c: LDR             X8, [X8,#0xB8]
00027880: BLR             X8
00027884: B               loc_279C4
00027888: MOV             W8, #0x77A131A
00027890: CMP             W11, W8
00027894: B.EQ            loc_27E6C
00027898: MOV             W8, #0x7D03A35
000278a0: CMP             W11, W8
000278a4: MOV             W8, W28
000278a8: MOV             W9, W26
000278ac: MOV             W10, W19
000278b0: MOV             W12, W23
000278b4: MOV             W14, W27
000278b8: MOV             W13, W11
000278bc: B.NE            loc_26D64
000278c0: LDR             X1, [SP,#0x110+var_D8]
000278c4: LDR             X8, [X20]
000278c8: ADRP            X2, #qword_F3378@PAGE
000278cc: ADRP            X3, #xmmword_F3390@PAGE
000278d0: MOV             X0, X20
000278d4: LDR             X8, [X8,#0x108]
000278d8: ADD             X2, X2, #qword_F3378@PAGEOFF
000278dc: ADD             X3, X3, #xmmword_F3390@PAGEOFF
000278e0: BLR             X8
000278e4: STR             X0, [SP,#0x110+var_D0]
000278e8: LDR             X8, [SP,#0x110+var_D0]
000278ec: MOV             W9, #0x13E8566C
000278f4: CMP             X8, #0
000278f8: MOV             W8, #0x988E17EF
00027900: CSEL            W13, W9, W8, EQ
00027904: B               loc_26D50
00027908: MOV             W8, #0x94812F5D
00027910: CMP             W11, W8
00027914: B.EQ            loc_27EA8
00027918: MOV             W8, #0x968D6784
00027920: CMP             W11, W8
00027924: MOV             W8, W28
00027928: MOV             W9, W26
0002792c: MOV             W10, W19
00027930: MOV             W12, W23
00027934: MOV             W14, W27
00027938: MOV             W13, W11
0002793c: B.NE            loc_26D64
00027940: LDR             W8, [SP,#0x110+var_100]
00027944: MOV             W13, #0xFF5C
00027948: STR             W8, [SP,#0x110+var_FC]
0002794c: MOV             W8, W28
00027950: MOV             W9, W26
00027954: MOV             W10, W19
00027958: MOV             W12, W23
0002795c: MOV             W14, W27
00027960: MOVK            W13, #0xCA61,LSL#16
00027964: B               loc_26D64
00027968: MOV             W8, #0x4EFE143F
00027970: MOV             W13, #0x1F5B
00027974: CMP             W11, W8
00027978: MOV             W8, W28
0002797c: MOV             W9, W26
00027980: MOV             W10, W23
00027984: MOV             W12, W23
00027988: MOV             W14, W27
0002798c: MOVK            W13, #0xBBAA,LSL#16
00027990: B.EQ            loc_26D64
00027994: MOV             W8, #0x5165E3E4
0002799c: CMP             W11, W8
000279a0: MOV             W8, W28
000279a4: MOV             W9, W26
000279a8: MOV             W10, W19
000279ac: MOV             W12, W23
000279b0: MOV             W14, W27
000279b4: MOV             W13, W11
000279b8: B.NE            loc_26D64
000279bc: MOV             X0, X20
000279c0: BL              sub_B6D0
000279c4: MOV             W13, #0xBA19
000279c8: MOV             W8, W28
000279cc: MOV             W9, W26
000279d0: MOV             W10, W19
000279d4: MOV             W12, W23
000279d8: MOV             W14, W27
000279dc: MOVK            W13, #0x9B10,LSL#16
000279e0: B               loc_26D64
000279e4: MOV             W8, #0xE7EB8A46
000279ec: CMP             W11, W8
000279f0: B.EQ            loc_27ED0
000279f4: MOV             W8, #0xEB1EBF70
000279fc: CMP             W11, W8
00027a00: MOV             W8, W28
00027a04: MOV             W9, W26
00027a08: MOV             W10, W19
00027a0c: MOV             W12, W23
00027a10: MOV             W14, W27
00027a14: MOV             W13, W11
00027a18: B.NE            loc_26D64
00027a1c: LDR             X1, [SP,#0x110+var_C8]
00027a20: LDR             X2, [SP,#0x110+var_B8]
00027a24: MOV             X0, X20
00027a28: BL              sub_11964
00027a2c: MOV             W8, #0x4D85
00027a30: MOV             W9, #0x1A3D
00027a34: TST             W0, #0xFF
00027a38: MOVK            W8, #0x8777,LSL#16
00027a3c: MOVK            W9, #0xE13B,LSL#16
00027a40: CSEL            W13, W9, W8, EQ
00027a44: B               loc_26D50
00027a48: MOV             W8, #0x231A2E1C
00027a50: CMP             W11, W8
00027a54: B.EQ            loc_27EF8
00027a58: MOV             W8, #0x2C10A12A
00027a60: CMP             W11, W8
00027a64: MOV             W8, W28
00027a68: MOV             W9, W26
00027a6c: MOV             W10, W19
00027a70: MOV             W12, W23
00027a74: MOV             W14, W27
00027a78: MOV             W13, W11
00027a7c: B.NE            loc_26D64
00027a80: STR             W28, [SP,#0x110+var_100]
00027a84: MOV             W13, #0x6784
00027a88: MOV             W8, W28
00027a8c: MOV             W9, W26
00027a90: MOV             W10, W19
00027a94: MOV             W12, W23
00027a98: MOV             W14, W27
00027a9c: MOVK            W13, #0x968D,LSL#16
00027aa0: B               loc_26D64
00027aa4: MOV             W8, #0xAA9275FB
00027aac: CMP             W11, W8
00027ab0: B.EQ            loc_27F44
00027ab4: MOV             W8, #0xAEF85147
00027abc: CMP             W11, W8
00027ac0: MOV             W8, W28
00027ac4: MOV             W9, W26
00027ac8: MOV             W10, W19
00027acc: MOV             W12, W23
00027ad0: MOV             W14, W27
00027ad4: MOV             W13, W11
00027ad8: B.NE            loc_26D64
00027adc: B               loc_27F4C
00027ae0: LDR             W12, [SP,#0x110+var_F8]
00027ae4: MOV             W8, #0x6F1E5969
00027aec: MOV             W13, #0x143F
00027af0: CMP             W11, W8
00027af4: MOV             W8, W28
00027af8: MOV             W9, W26
00027afc: MOV             W10, W19
00027b00: MOV             W14, W27
00027b04: MOVK            W13, #0x4EFE,LSL#16
00027b08: B.EQ            loc_26D64
00027b0c: MOV             W8, #0x74009ED6
00027b14: CMP             W11, W8
00027b18: MOV             W8, W28
00027b1c: MOV             W9, W26
00027b20: MOV             W10, W19
00027b24: MOV             W12, W23
00027b28: MOV             W14, W27
00027b2c: MOV             W13, W11
00027b30: B.NE            loc_26D64
00027b34: LDR             X1, [SP,#0x110+var_C0]
00027b38: LDR             X8, [X20]
00027b3c: ADRP            X2, #byte_F33B0@PAGE
00027b40: ADRP            X3, #aNo0II2F@PAGE; "no\n,'0'i*'(!i\t$,#%2}F"
00027b44: MOV             X0, X20
00027b48: LDR             X8, [X8,#0x108]
00027b4c: ADD             X2, X2, #byte_F33B0@PAGEOFF
00027b50: ADD             X3, X3, #aNo0II2F@PAGEOFF; "no\n,'0'i*'(!i\t$,#%2}F"
00027b54: BLR             X8
00027b58: STR             X0, [SP,#0x110+var_B0]
00027b5c: LDR             X8, [SP,#0x110+var_B0]
00027b60: MOV             W9, #0x2D291044
00027b68: CMP             X8, #0
00027b6c: MOV             W8, #0xEB1EBF70
00027b74: CSEL            W13, W9, W8, EQ
00027b78: B               loc_26D50
00027b7c: MOV             X0, X20
00027b80: BL              sub_B6D0
00027b84: MOV             W13, #0x7768
00027b88: MOV             W8, W28
00027b8c: MOV             W9, W26
00027b90: MOV             W10, W19
00027b94: MOV             W12, W23
00027b98: MOV             W14, W27
00027b9c: MOVK            W13, #0x8F62,LSL#16
00027ba0: B               loc_26D64
00027ba4: LDR             X1, [SP,#0x110+var_E0]
00027ba8: LDR             X2, [SP,#0x110+var_D0]
00027bac: MOV             X0, X20
00027bb0: BL              sub_BF48
00027bb4: STR             X0, [SP,#0x110+var_C8]
00027bb8: LDR             X8, [SP,#0x110+var_C8]
00027bbc: MOV             W9, #0x5448668C
00027bc4: CMP             X8, #0
00027bc8: MOV             W8, #0xC1FB090D
00027bd0: CSEL            W13, W9, W8, EQ
00027bd4: B               loc_26D50
00027bd8: MOV             X0, X20
00027bdc: BL              sub_B6D0
00027be0: MOV             W13, #0x1D2
00027be4: MOV             W8, W28
00027be8: MOV             W9, W26
00027bec: MOV             W10, W19
00027bf0: MOV             W12, W23
00027bf4: MOV             W14, W27
00027bf8: MOVK            W13, #0x9D52,LSL#16
00027bfc: B               loc_26D64
00027c00: MOV             X0, X20
00027c04: BL              sub_B6D0
00027c08: MOV             W13, #0xECF7
00027c0c: MOV             W8, W28
00027c10: MOV             W9, W26
00027c14: MOV             W10, W19
00027c18: MOV             W12, W23
00027c1c: MOV             W14, W27
00027c20: MOVK            W13, #0x1583,LSL#16
00027c24: B               loc_26D64
00027c28: MOV             X0, X20
00027c2c: BL              sub_B6D0
00027c30: MOV             W13, #0x6DC4
00027c34: MOV             W8, W28
00027c38: MOV             W9, W26
00027c3c: MOV             W10, W19
00027c40: MOV             W12, W23
00027c44: MOV             W14, W27
00027c48: MOVK            W13, #0xD9CF,LSL#16
00027c4c: B               loc_26D64
00027c50: LDUR            X1, [X29,#var_78]
00027c54: LDUR            X2, [X29,#var_68]
00027c58: LDR             X8, [X20]
00027c5c: MOV             X0, X20
00027c60: LDR             X8, [X8,#0x2F8]
00027c64: BLR             X8
00027c68: STUR            X0, [X29,#var_60]
00027c6c: LDUR            X8, [X29,#var_60]
00027c70: MOV             W9, #0x5165E3E4
00027c78: CMP             X8, #0
00027c7c: MOV             W8, #0xC9F3C5AC
00027c84: CSEL            W13, W9, W8, EQ
00027c88: B               loc_26D50
00027c8c: MOV             X0, X20
00027c90: BL              sub_B6D0
00027c94: MOV             W13, #0xCC56
00027c98: MOV             W8, W28
00027c9c: MOV             W9, W26
00027ca0: MOV             W10, W19
00027ca4: MOV             W12, W23
00027ca8: MOV             W14, W27
00027cac: MOVK            W13, #0x41BE,LSL#16
00027cb0: B               loc_26D64
00027cb4: LDR             X1, [SP,#0x110+var_A8]
00027cb8: LDR             X2, [SP,#0x110+var_98]
00027cbc: MOV             X0, X20
00027cc0: BL              sub_BF48
00027cc4: STR             X0, [SP,#0x110+var_90]
00027cc8: LDR             X8, [SP,#0x110+var_90]
00027ccc: MOV             W9, #0xFF8096BE
00027cd4: CMP             X8, #0
00027cd8: MOV             W8, #0x9BED7704
00027ce0: CSEL            W13, W9, W8, EQ
00027ce4: B               loc_26D50
00027ce8: LDUR            X1, [X29,#var_70]
00027cec: LDR             X8, [X20]
00027cf0: ADRP            X2, #qword_F3138@PAGE
00027cf4: ADRP            X3, #xmmword_F3150@PAGE
00027cf8: MOV             X0, X20
00027cfc: LDR             X8, [X8,#0x2F0]
00027d00: ADD             X2, X2, #qword_F3138@PAGEOFF
00027d04: ADD             X3, X3, #xmmword_F3150@PAGEOFF
00027d08: BLR             X8
00027d0c: STUR            X0, [X29,#var_68]
00027d10: LDUR            X8, [X29,#var_68]
00027d14: MOV             W9, #0xE425D5F6
00027d1c: CMP             X8, #0
00027d20: MOV             W8, #0x9FB5999F
00027d28: B               loc_27F3C
00027d2c: LDR             X1, [SP,#0x110+var_A8]
00027d30: LDR             X8, [X20]
00027d34: MOV             X0, X20
00027d38: LDR             X8, [X8,#0xF8]
00027d3c: BLR             X8
00027d40: STR             X0, [SP,#0x110+var_A0]
00027d44: LDR             X8, [SP,#0x110+var_A0]
00027d48: MOV             W9, #0xAA9275FB
00027d50: CMP             X8, #0
00027d54: MOV             W8, #0x4ED70BF1
00027d5c: CSEL            W13, W9, W8, EQ
00027d60: B               loc_26D50
00027d64: LDR             X1, [SP,#0x110+var_C8]
00027d68: LDR             X2, [SP,#0x110+var_B0]
00027d6c: MOV             X0, X20
00027d70: BL              sub_BF48
00027d74: STR             X0, [SP,#0x110+var_A8]
00027d78: LDR             X8, [SP,#0x110+var_A8]
00027d7c: MOV             W9, #0x8AE59689
00027d84: CMP             X8, #0
00027d88: MOV             W8, #0x83F26B55
00027d90: CSEL            W13, W9, W8, EQ
00027d94: B               loc_26D50
00027d98: MOV             X0, X20
00027d9c: BL              sub_B6D0
00027da0: MOV             W8, #0xFFFFFFFF
00027da4: STR             W8, [SP,#0x110+var_F4]
00027da8: MOV             W13, #0xCE5D
00027dac: MOV             W8, W28
00027db0: MOV             W9, W26
00027db4: MOV             W10, W19
00027db8: MOV             W12, W23
00027dbc: MOV             W14, W27
00027dc0: MOVK            W13, #0x35B8,LSL#16
00027dc4: B               loc_26D64
00027dc8: LDR             X8, [SP,#0x110+var_F0]
00027dcc: MOV             W9, #0x231A2E1C
00027dd4: CMP             X8, #0
00027dd8: MOV             W8, #0xD7BD6325
00027de0: B               loc_27F3C
00027de4: MOV             X0, X20
00027de8: BL              sub_B6D0
00027dec: MOV             W13, #0x1F5B
00027df0: MOV             W10, #0xFFFFFFFF
00027df4: MOV             W8, W28
00027df8: MOV             W9, W26
00027dfc: MOV             W12, W23
00027e00: MOV             W14, W27
00027e04: MOVK            W13, #0xBBAA,LSL#16
00027e08: B               loc_26D64
00027e0c: LDR             X1, [SP,#0x110+var_90]
00027e10: LDR             X8, [X20]
00027e14: MOV             X0, X20
00027e18: LDR             X8, [X8,#0xF8]
00027e1c: BLR             X8
00027e20: STR             X0, [SP,#0x110+var_88]
00027e24: LDR             X8, [SP,#0x110+var_88]
00027e28: MOV             W9, #0xE262BD1
00027e30: CMP             X8, #0
00027e34: MOV             W8, #0xDC6D9EEF
00027e3c: CSEL            W13, W9, W8, EQ
00027e40: B               loc_26D50
00027e44: MOV             X0, X20
00027e48: BL              sub_B6D0
00027e4c: MOV             W13, #0x86D0
00027e50: MOV             W8, W28
00027e54: MOV             W9, W26
00027e58: MOV             W10, W19
00027e5c: MOV             W12, W23
00027e60: MOV             W14, W27
00027e64: MOVK            W13, #0xEF8E,LSL#16
00027e68: B               loc_26D64
00027e6c: LDR             X1, [SP,#0x110+var_90]
00027e70: LDUR            X2, [X29,#var_80]
00027e74: LDR             X8, [X20]
00027e78: MOV             X0, X20
00027e7c: LDR             X8, [X8,#0x2F8]
00027e80: BLR             X8
00027e84: STUR            X0, [X29,#var_78]
00027e88: LDUR            X8, [X29,#var_78]
00027e8c: MOV             W9, #0x587C98D8
00027e94: CMP             X8, #0
00027e98: MOV             W8, #0x14067F9A
00027ea0: CSEL            W13, W9, W8, EQ
00027ea4: B               loc_26D50
00027ea8: MOV             X0, X20
00027eac: BL              sub_B6D0
00027eb0: MOV             W13, #0xD680
00027eb4: MOV             W14, #0xFFFFFFFF
00027eb8: MOV             W8, W28
00027ebc: MOV             W9, W26
00027ec0: MOV             W10, W19
00027ec4: MOV             W12, W23
00027ec8: MOVK            W13, #0xA4,LSL#16
00027ecc: B               loc_26D64
00027ed0: MOV             X0, X20
00027ed4: BL              sub_B6D0
00027ed8: MOV             W13, #0xF590
00027edc: MOV             W9, #0xFFFFFFFF
00027ee0: MOV             W8, W28
00027ee4: MOV             W10, W19
00027ee8: MOV             W12, W23
00027eec: MOV             W14, W27
00027ef0: MOVK            W13, #0xCA50,LSL#16
00027ef4: B               loc_26D64
00027ef8: LDR             X8, [SP,#0x110+var_F0]
00027efc: LDR             X9, [X20]
00027f00: ADRP            X2, #xmmword_F3330@PAGE
00027f04: ADRP            X3, #xmmword_F3360@PAGE
00027f08: LDR             X1, [X8]
00027f0c: LDR             X8, [X9,#0x108]
00027f10: MOV             X0, X20
00027f14: ADD             X2, X2, #xmmword_F3330@PAGEOFF
00027f18: ADD             X3, X3, #xmmword_F3360@PAGEOFF
00027f1c: BLR             X8
00027f20: STR             X0, [SP,#0x110+var_E8]
00027f24: LDR             X8, [SP,#0x110+var_E8]
00027f28: MOV             W9, #0x18E846DC
00027f30: CMP             X8, #0
00027f34: MOV             W8, #0xE52274A7
00027f3c: CSEL            W13, W8, W9, EQ
00027f40: B               loc_26D50
00027f44: MOV             X0, X20
00027f48: BL              sub_B6D0
00027f4c: MOV             W13, #0x8A54
00027f50: MOV             W8, W28
00027f54: MOV             W9, W26
00027f58: MOV             W10, W19
00027f5c: MOV             W12, W23
00027f60: MOV             W14, W27
00027f64: MOVK            W13, #0xC541,LSL#16
00027f68: B               loc_26D64
00027f6c: LDR             W0, [SP,#0x110+var_FC]
00027f70: LDP             X29, X30, [SP,#0x110+var_s0]
00027f74: LDP             X20, X19, [SP,#0x110+var_10]
00027f78: LDP             X22, X21, [SP,#0x110+var_20]
00027f7c: LDP             X24, X23, [SP,#0x110+var_30]
00027f80: LDP             X26, X25, [SP,#0x110+var_40]
00027f84: LDP             X28, X27, [SP,#0x110+var_50]
00027f88: ADD             SP, SP, #0x120
00027f8c: RET