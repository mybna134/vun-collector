000169a0: SUB             SP, SP, #0xD0
000169a4: STP             X28, X27, [SP,#0xC0+var_50]
000169a8: STP             X26, X25, [SP,#0xC0+var_40]
000169ac: STP             X24, X23, [SP,#0xC0+var_30]
000169b0: STP             X22, X21, [SP,#0xC0+var_20]
000169b4: STP             X20, X19, [SP,#0xC0+var_10]
000169b8: STP             X29, X30, [SP,#0xC0+var_s0]
000169bc: ADD             X29, SP, #0xC0
000169c0: ADRP            X2, #byte_F287C@PAGE
000169c4: MOV             W25, #0x12C0
000169c8: MOV             W24, #0xFFE6
000169cc: MOV             W28, #0x9CE4
000169d0: MOV             W20, #0xBA73
000169d4: MOV             W22, #0xAD37
000169d8: MOV             W21, #0xC3EB
000169dc: MOV             W23, #0x3C14
000169e0: MOV             W27, #0x202
000169e4: ADD             X2, X2, #byte_F287C@PAGEOFF
000169e8: MOV             X19, X0
000169ec: MOVK            W25, #0xEA81,LSL#16
000169f0: MOVK            W24, #0xDD58,LSL#16
000169f4: MOVK            W28, #0xA3D2,LSL#16
000169f8: MOVK            W20, #0xA18A,LSL#16
000169fc: MOVK            W22, #0x9B42,LSL#16
00016a00: MOVK            W21, #0x5743,LSL#16
00016a04: MOVK            W23, #0x54CB,LSL#16
00016a08: MOVK            W27, #0x374A,LSL#16
00016a0c: BL              sub_1723C
00016a10: MOV             W10, #0x74B9
00016a14: MOV             W26, #0x12BF
00016a18: STR             X0, [SP,#0xC0+var_80]
00016a1c: MOVK            W10, #0x245B,LSL#16
00016a20: MOVK            W26, #0xEA81,LSL#16
00016a24: MOV             W8, #0x9DA8F877
00016a2c: B               loc_16A40
00016a30: LDR             X8, [SP,#0xC0+var_88]
00016a34: STR             X8, [SP,#0xC0+var_B8]
00016a38: MOV             W8, #0x99911BBA
00016a40: CMP             W8, W10
00016a44: B.LE            loc_16AC0
00016a48: MOV             W9, #0x444A6390
00016a50: CMP             W8, W9
00016a54: B.LE            loc_16B14
00016a58: MOV             W9, #0x605573E0
00016a60: CMP             W8, W9
00016a64: B.LE            loc_16BC4
00016a68: MOV             W9, #0x605573E1
00016a70: CMP             W8, W9
00016a74: B.EQ            loc_16DB0
00016a78: MOV             W9, #0x6D63E0BF
00016a80: CMP             W8, W9
00016a84: B.EQ            loc_16E44
00016a88: MOV             W9, #0x75653EE3
00016a90: CMP             W8, W9
00016a94: B.NE            loc_16A40
00016a98: LDR             X8, [X19]
00016a9c: MOV             X0, X19
00016aa0: LDR             X8, [X8,#0x720]
00016aa4: BLR             X8
00016aa8: MOV             W10, #0x74B9
00016aac: MOV             W8, #0x9CE4
00016ab0: MOVK            W10, #0x245B,LSL#16
00016ab4: STURB           W0, [X29,#var_54]
00016ab8: MOVK            W8, #0xA3D2,LSL#16
00016abc: B               loc_16CE0
00016ac0: MOV             W9, #0xDD58FFE5
00016ac8: CMP             W8, W9
00016acc: B.GT            loc_16B84
00016ad0: MOV             W9, #0xA67FF72B
00016ad8: CMP             W8, W9
00016adc: B.GT            loc_16C24
00016ae0: MOV             W9, #0x922C77C4
00016ae8: CMP             W8, W9
00016aec: B.EQ            loc_16E5C
00016af0: MOV             W9, #0x9DA8F877
00016af8: CMP             W8, W9
00016afc: B.EQ            loc_16EB0
00016b00: MOV             W9, #0x99911BBA
00016b08: CMP             W8, W9
00016b0c: B.NE            loc_16A40
00016b10: B               loc_17218
00016b14: MOV             W9, #0x33888E8D
00016b1c: CMP             W8, W9
00016b20: B.GT            loc_16C48
00016b24: MOV             W9, #0x245B74BA
00016b2c: CMP             W8, W9
00016b30: B.EQ            loc_16ED0
00016b34: MOV             W9, #0x3226BEAA
00016b3c: CMP             W8, W9
00016b40: B.NE            loc_16A40
00016b44: LDR             X8, [SP,#0xC0+var_80]
00016b48: MOV             X0, X19
00016b4c: LDR             X1, [X8,#8]
00016b50: LDR             X2, [SP,#0xC0+var_68]
00016b54: BL              sub_BF48
00016b58: STR             X0, [SP,#0xC0+var_60]
00016b5c: LDR             X8, [SP,#0xC0+var_60]
00016b60: MOV             W9, #0x3EE3
00016b64: MOV             W10, #0x74B9
00016b68: MOVK            W9, #0x7565,LSL#16
00016b6c: CMP             X8, #0
00016b70: MOV             W8, #0x6D63E0BF
00016b78: MOVK            W10, #0x245B,LSL#16
00016b7c: CSEL            W8, W9, W8, EQ
00016b80: B               loc_16A40
00016b84: MOV             W9, #0xA61938F
00016b8c: CMP             W8, W9
00016b90: B.GT            loc_16C90
00016b94: CMP             W8, W24
00016b98: B.EQ            loc_16EE0
00016b9c: MOV             W9, #0xE763060B
00016ba4: CMP             W8, W9
00016ba8: B.NE            loc_16A40
00016bac: STR             WZR, [SP,#0xC0+var_9C]
00016bb0: LDR             X8, [SP,#0xC0+var_70]
00016bb4: STR             X8, [SP,#0xC0+var_A8]
00016bb8: MOV             W8, #0x33888E8E
00016bc0: B               loc_16A40
00016bc4: MOV             W9, #0x444A6391
00016bcc: CMP             W8, W9
00016bd0: B.EQ            loc_16EFC
00016bd4: MOV             W9, #0x4DD1BCE2
00016bdc: CMP             W8, W9
00016be0: B.NE            loc_16A40
00016be4: LDR             X8, [SP,#0xC0+var_80]
00016be8: MOV             X0, X19
00016bec: LDR             X1, [X8,#8]
00016bf0: LDR             X2, [SP,#0xC0+var_78]
00016bf4: BL              sub_BF48
00016bf8: STR             X0, [SP,#0xC0+var_70]
00016bfc: LDR             X8, [SP,#0xC0+var_70]
00016c00: MOV             W9, #0xD724
00016c04: MOV             W10, #0x74B9
00016c08: MOVK            W9, #0x1C94,LSL#16
00016c0c: CMP             X8, #0
00016c10: MOV             W8, #0xE763060B
00016c18: MOVK            W10, #0x245B,LSL#16
00016c1c: CSEL            W8, W9, W8, EQ
00016c20: B               loc_16A40
00016c24: MOV             W9, #0xA67FF72C
00016c2c: CMP             W8, W9
00016c30: B.EQ            loc_16F50
00016c34: MOV             W9, #0xCB8D88D6
00016c3c: CMP             W8, W9
00016c40: B.NE            loc_16A40
00016c44: B               loc_16A30
00016c48: MOV             W9, #0x33888E8E
00016c50: CMP             W8, W9
00016c54: B.EQ            loc_16FE4
00016c58: MOV             W9, #0x3D001D55
00016c60: CMP             W8, W9
00016c64: B.NE            loc_16A40
00016c68: BL              sub_5A38
00016c6c: MOV             W8, #0x77C4
00016c70: MOV             W9, #0x6391
00016c74: MOV             W10, #0x74B9
00016c78: CMP             W0, #0x19
00016c7c: MOVK            W8, #0x922C,LSL#16
00016c80: MOVK            W9, #0x444A,LSL#16
00016c84: MOVK            W10, #0x245B,LSL#16
00016c88: CSEL            W8, W9, W8, GT
00016c8c: B               loc_16A40
00016c90: MOV             W9, #0xA619390
00016c98: CMP             W8, W9
00016c9c: B.EQ            loc_17008
00016ca0: MOV             W9, #0x1C94D724
00016ca8: CMP             W8, W9
00016cac: B.NE            loc_16A40
00016cb0: LDR             X8, [X19]
00016cb4: MOV             X0, X19
00016cb8: LDR             X8, [X8,#0x720]
00016cbc: BLR             X8
00016cc0: MOV             W10, #0x74B9
00016cc4: MOV             W8, #0x9CE4
00016cc8: MOVK            W10, #0x245B,LSL#16
00016ccc: STURB           W0, [X29,#var_54]
00016cd0: MOVK            W8, #0xA3D2,LSL#16
00016cd4: B               loc_16D4C
00016cd8: MOV             W8, #0xEA8112C0
00016ce0: CMP             W8, W26
00016ce4: B.GT            loc_16D08
00016ce8: CMP             W8, W20
00016cec: B.EQ            loc_16CD8
00016cf0: CMP             W8, W28
00016cf4: B.NE            loc_16CE0
00016cf8: LDURB           W8, [X29,#var_54]
00016cfc: CMP             W8, #0
00016d00: CSEL            W8, W20, W27, EQ
00016d04: B               loc_16CE0
00016d08: CMP             W8, W25
00016d0c: B.EQ            loc_1702C
00016d10: CMP             W8, W27
00016d14: B.NE            loc_16CE0
00016d18: LDR             X8, [X19]
00016d1c: MOV             X0, X19
00016d20: LDR             X8, [X8,#0x80]
00016d24: BLR             X8
00016d28: LDR             X8, [X19]
00016d2c: MOV             X0, X19
00016d30: LDR             X8, [X8,#0x88]
00016d34: BLR             X8
00016d38: MOV             W10, #0x245B74B9
00016d40: B               loc_16CD8
00016d44: MOV             W8, #0xEA8112C0
00016d4c: CMP             W8, W26
00016d50: B.GT            loc_16D74
00016d54: CMP             W8, W20
00016d58: B.EQ            loc_16D44
00016d5c: CMP             W8, W28
00016d60: B.NE            loc_16D4C
00016d64: LDURB           W8, [X29,#var_54]
00016d68: CMP             W8, #0
00016d6c: CSEL            W8, W20, W27, EQ
00016d70: B               loc_16D4C
00016d74: CMP             W8, W25
00016d78: B.EQ            loc_17048
00016d7c: CMP             W8, W27
00016d80: B.NE            loc_16D4C
00016d84: LDR             X8, [X19]
00016d88: MOV             X0, X19
00016d8c: LDR             X8, [X8,#0x80]
00016d90: BLR             X8
00016d94: LDR             X8, [X19]
00016d98: MOV             X0, X19
00016d9c: LDR             X8, [X8,#0x88]
00016da0: BLR             X8
00016da4: MOV             W10, #0x245B74B9
00016dac: B               loc_16D44
00016db0: LDR             X8, [X19]
00016db4: MOV             X0, X19
00016db8: LDR             X8, [X8,#0x720]
00016dbc: BLR             X8
00016dc0: MOV             W10, #0x74B9
00016dc4: MOV             W8, #0x9CE4
00016dc8: MOVK            W10, #0x245B,LSL#16
00016dcc: STURB           W0, [X29,#var_54]
00016dd0: MOVK            W8, #0xA3D2,LSL#16
00016dd4: B               loc_16DE0
00016dd8: MOV             W8, #0xEA8112C0
00016de0: CMP             W8, W26
00016de4: B.GT            loc_16E08
00016de8: CMP             W8, W20
00016dec: B.EQ            loc_16DD8
00016df0: CMP             W8, W28
00016df4: B.NE            loc_16DE0
00016df8: LDURB           W8, [X29,#var_54]
00016dfc: CMP             W8, #0
00016e00: CSEL            W8, W20, W27, EQ
00016e04: B               loc_16DE0
00016e08: CMP             W8, W25
00016e0c: B.EQ            loc_17064
00016e10: CMP             W8, W27
00016e14: B.NE            loc_16DE0
00016e18: LDR             X8, [X19]
00016e1c: MOV             X0, X19
00016e20: LDR             X8, [X8,#0x80]
00016e24: BLR             X8
00016e28: LDR             X8, [X19]
00016e2c: MOV             X0, X19
00016e30: LDR             X8, [X8,#0x88]
00016e34: BLR             X8
00016e38: MOV             W10, #0x245B74B9
00016e40: B               loc_16DD8
00016e44: STR             WZR, [SP,#0xC0+var_8C]
00016e48: LDR             X8, [SP,#0xC0+var_60]
00016e4c: STR             X8, [SP,#0xC0+var_98]
00016e50: MOV             W8, #0xA619390
00016e58: B               loc_16A40
00016e5c: LDR             X8, [SP,#0xC0+var_80]
00016e60: LDR             X9, [X19]
00016e64: ADRP            X2, #qword_F2890@PAGE
00016e68: ADRP            X3, #xmmword_F21A0@PAGE
00016e6c: LDR             X1, [X8]
00016e70: LDR             X8, [X9,#0x108]
00016e74: MOV             X0, X19
00016e78: ADD             X2, X2, #qword_F2890@PAGEOFF
00016e7c: ADD             X3, X3, #xmmword_F21A0@PAGEOFF
00016e80: BLR             X8
00016e84: STR             X0, [SP,#0xC0+var_68]
00016e88: LDR             X8, [SP,#0xC0+var_68]
00016e8c: MOV             W9, #0xF72C
00016e90: MOV             W10, #0x74B9
00016e94: MOVK            W9, #0xA67F,LSL#16
00016e98: CMP             X8, #0
00016e9c: MOV             W8, #0x3226BEAA
00016ea4: MOVK            W10, #0x245B,LSL#16
00016ea8: CSEL            W8, W9, W8, EQ
00016eac: B               loc_16A40
00016eb0: LDR             X8, [SP,#0xC0+var_80]
00016eb4: MOV             W9, #0x245B74BA
00016ebc: CMP             X8, #0
00016ec0: MOV             W8, #0x3D001D55
00016ec8: CSEL            W8, W9, W8, EQ
00016ecc: B               loc_16A40
00016ed0: MOV             W8, #0x1BBA
00016ed4: STR             XZR, [SP,#0xC0+var_B8]
00016ed8: MOVK            W8, #0x9991,LSL#16
00016edc: B               loc_16A40
00016ee0: LDR             X24, [SP,#0xC0+var_80]
00016ee4: CMP             X24, #0
00016ee8: CSEL            W8, W23, W21, EQ
00016eec: STR             W8, [SP,#0xC0+var_88]
00016ef0: MOV             W8, #0x9B42AD37
00016ef8: B               loc_17080
00016efc: LDR             X8, [SP,#0xC0+var_80]
00016f00: LDR             X9, [X19]
00016f04: ADRP            X2, #qword_F2888@PAGE
00016f08: ADRP            X3, #xmmword_F21A0@PAGE
00016f0c: LDR             X1, [X8]
00016f10: LDR             X8, [X9,#0x108]
00016f14: MOV             X0, X19
00016f18: ADD             X2, X2, #qword_F2888@PAGEOFF
00016f1c: ADD             X3, X3, #xmmword_F21A0@PAGEOFF
00016f20: BLR             X8
00016f24: STR             X0, [SP,#0xC0+var_78]
00016f28: LDR             X8, [SP,#0xC0+var_78]
00016f2c: MOV             W9, #0x73E1
00016f30: MOV             W10, #0x74B9
00016f34: MOVK            W9, #0x6055,LSL#16
00016f38: CMP             X8, #0
00016f3c: MOV             W8, #0x4DD1BCE2
00016f44: MOVK            W10, #0x245B,LSL#16
00016f48: CSEL            W8, W9, W8, EQ
00016f4c: B               loc_16A40
00016f50: LDR             X8, [X19]
00016f54: MOV             X0, X19
00016f58: LDR             X8, [X8,#0x720]
00016f5c: BLR             X8
00016f60: MOV             W10, #0x74B9
00016f64: MOV             W8, #0x9CE4
00016f68: MOVK            W10, #0x245B,LSL#16
00016f6c: STURB           W0, [X29,#var_54]
00016f70: MOVK            W8, #0xA3D2,LSL#16
00016f74: B               loc_16F80
00016f78: MOV             W8, #0xEA8112C0
00016f80: CMP             W8, W26
00016f84: B.GT            loc_16FA8
00016f88: CMP             W8, W20
00016f8c: B.EQ            loc_16F78
00016f90: CMP             W8, W28
00016f94: B.NE            loc_16F80
00016f98: LDURB           W8, [X29,#var_54]
00016f9c: CMP             W8, #0
00016fa0: CSEL            W8, W20, W27, EQ
00016fa4: B               loc_16F80
00016fa8: CMP             W8, W25
00016fac: B.EQ            loc_170DC
00016fb0: CMP             W8, W27
00016fb4: B.NE            loc_16F80
00016fb8: LDR             X8, [X19]
00016fbc: MOV             X0, X19
00016fc0: LDR             X8, [X8,#0x80]
00016fc4: BLR             X8
00016fc8: LDR             X8, [X19]
00016fcc: MOV             X0, X19
00016fd0: LDR             X8, [X8,#0x88]
00016fd4: BLR             X8
00016fd8: MOV             W10, #0x245B74B9
00016fe0: B               loc_16F78
00016fe4: LDR             W8, [SP,#0xC0+var_9C]
00016fe8: LDR             X9, [SP,#0xC0+var_A8]
00016fec: STR             XZR, [SP,#0xC0+var_88]
00016ff0: CMP             W8, #0
00016ff4: MOV             W8, #0xCB8D88D6
00016ffc: CSEL            W8, W24, W8, EQ
00017000: STR             X9, [SP,#0xC0+var_B0]
00017004: B               loc_16A40
00017008: LDR             W8, [SP,#0xC0+var_8C]
0001700c: LDR             X9, [SP,#0xC0+var_98]
00017010: STR             XZR, [SP,#0xC0+var_88]
00017014: CMP             W8, #0
00017018: MOV             W8, #0xCB8D88D6
00017020: CSEL            W8, W24, W8, EQ
00017024: STR             X9, [SP,#0xC0+var_B0]
00017028: B               loc_16A40
0001702c: LDR             X24, [SP,#0xC0+var_80]
00017030: CMP             X24, #0
00017034: CSEL            W8, W23, W21, EQ
00017038: STR             W8, [SP,#0xC0+var_8C]
0001703c: MOV             W8, #0x9B42AD37
00017044: B               loc_170F8
00017048: LDR             X24, [SP,#0xC0+var_80]
0001704c: CMP             X24, #0
00017050: CSEL            W8, W23, W21, EQ
00017054: STR             W8, [SP,#0xC0+var_9C]
00017058: MOV             W8, #0x9B42AD37
00017060: B               loc_17158
00017064: MOV             W8, #1
00017068: STR             W8, [SP,#0xC0+var_9C]
0001706c: MOV             W8, #0x8E8E
00017070: STR             XZR, [SP,#0xC0+var_A8]
00017074: MOVK            W8, #0x3388,LSL#16
00017078: B               loc_16A40
0001707c: LDR             W8, [SP,#0xC0+var_88]
00017080: CMP             W8, W22
00017084: B.EQ            loc_1707C
00017088: CMP             W8, W23
0001708c: B.EQ            loc_171B4
00017090: CMP             W8, W21
00017094: B.NE            loc_17080
00017098: LDR             X8, [X19]
0001709c: LDR             X1, [X24,#8]
000170a0: MOV             X0, X19
000170a4: LDR             X8, [X8,#0xB8]
000170a8: BLR             X8
000170ac: LDR             X8, [X19]
000170b0: LDR             X1, [X24]
000170b4: MOV             X0, X19
000170b8: LDR             X8, [X8,#0xB8]
000170bc: BLR             X8
000170c0: MOV             X0, X24; ptr
000170c4: BL              .free
000170c8: MOV             W10, #0x74B9
000170cc: MOV             W8, #0x3C14
000170d0: MOVK            W10, #0x245B,LSL#16
000170d4: MOVK            W8, #0x54CB,LSL#16
000170d8: B               loc_17080
000170dc: MOV             W8, #1
000170e0: STR             W8, [SP,#0xC0+var_8C]
000170e4: MOV             W8, #0x9390
000170e8: STR             XZR, [SP,#0xC0+var_98]
000170ec: MOVK            W8, #0xA61,LSL#16
000170f0: B               loc_16A40
000170f4: LDR             W8, [SP,#0xC0+var_8C]
000170f8: CMP             W8, W22
000170fc: B.EQ            loc_170F4
00017100: CMP             W8, W23
00017104: B.EQ            loc_171D0
00017108: CMP             W8, W21
0001710c: B.NE            loc_170F8
00017110: LDR             X8, [X19]
00017114: LDR             X1, [X24,#8]
00017118: MOV             X0, X19
0001711c: LDR             X8, [X8,#0xB8]
00017120: BLR             X8
00017124: LDR             X8, [X19]
00017128: LDR             X1, [X24]
0001712c: MOV             X0, X19
00017130: LDR             X8, [X8,#0xB8]
00017134: BLR             X8
00017138: MOV             X0, X24; ptr
0001713c: BL              .free
00017140: MOV             W10, #0x74B9
00017144: MOV             W8, #0x3C14
00017148: MOVK            W10, #0x245B,LSL#16
0001714c: MOVK            W8, #0x54CB,LSL#16
00017150: B               loc_170F8
00017154: LDR             W8, [SP,#0xC0+var_9C]
00017158: CMP             W8, W22
0001715c: B.EQ            loc_17154
00017160: CMP             W8, W23
00017164: B.EQ            loc_171F4
00017168: CMP             W8, W21
0001716c: B.NE            loc_17158
00017170: LDR             X8, [X19]
00017174: LDR             X1, [X24,#8]
00017178: MOV             X0, X19
0001717c: LDR             X8, [X8,#0xB8]
00017180: BLR             X8
00017184: LDR             X8, [X19]
00017188: LDR             X1, [X24]
0001718c: MOV             X0, X19
00017190: LDR             X8, [X8,#0xB8]
00017194: BLR             X8
00017198: MOV             X0, X24; ptr
0001719c: BL              .free
000171a0: MOV             W10, #0x74B9
000171a4: MOV             W8, #0x3C14
000171a8: MOVK            W10, #0x245B,LSL#16
000171ac: MOVK            W8, #0x54CB,LSL#16
000171b0: B               loc_17158
000171b4: LDR             X8, [SP,#0xC0+var_B0]
000171b8: MOV             W24, #0xDD58FFE6
000171c0: STR             X8, [SP,#0xC0+var_88]
000171c4: MOV             W8, #0xCB8D88D6
000171cc: B               loc_16A40
000171d0: LDR             X8, [SP,#0xC0+var_60]
000171d4: MOV             W24, #0xDD58FFE6
000171dc: STR             X8, [SP,#0xC0+var_98]
000171e0: MOV             W8, #1
000171e4: STR             W8, [SP,#0xC0+var_8C]
000171e8: MOV             W8, #0xA619390
000171f0: B               loc_16A40
000171f4: LDR             X8, [SP,#0xC0+var_70]
000171f8: MOV             W24, #0xDD58FFE6
00017200: STR             X8, [SP,#0xC0+var_A8]
00017204: MOV             W8, #1
00017208: STR             W8, [SP,#0xC0+var_9C]
0001720c: MOV             W8, #0x33888E8E
00017214: B               loc_16A40
00017218: LDR             X0, [SP,#0xC0+var_B8]
0001721c: LDP             X29, X30, [SP,#0xC0+var_s0]
00017220: LDP             X20, X19, [SP,#0xC0+var_10]
00017224: LDP             X22, X21, [SP,#0xC0+var_20]
00017228: LDP             X24, X23, [SP,#0xC0+var_30]
0001722c: LDP             X26, X25, [SP,#0xC0+var_40]
00017230: LDP             X28, X27, [SP,#0xC0+var_50]
00017234: ADD             SP, SP, #0xD0
00017238: RET