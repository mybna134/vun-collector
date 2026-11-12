00047a40: SUB             SP, SP, #0x90
00047a44: STP             X28, X27, [SP,#0x80+var_50]
00047a48: STP             X26, X25, [SP,#0x80+var_40]
00047a4c: STP             X24, X23, [SP,#0x80+var_30]
00047a50: STP             X22, X21, [SP,#0x80+var_20]
00047a54: STP             X20, X19, [SP,#0x80+var_10]
00047a58: STP             X29, X30, [SP,#0x80+var_s0]
00047a5c: ADD             X29, SP, #0x80
00047a60: ADRL            X2, qword_F6AB0
00047a68: MOV             X19, X0
00047a6c: BL              sub_1723C
00047a70: MOV             W23, #0x8CA7
00047a74: MOV             W20, #0x9A2A
00047a78: MOV             W27, #0x3EDB
00047a7c: MOV             W9, #0x8CA8
00047a80: MOVK            W23, #0x2E77,LSL#16
00047a84: MOVK            W20, #0x33F,LSL#16
00047a88: MOVK            W27, #0x5A99,LSL#16
00047a8c: MOVK            W9, #0x2E77,LSL#16
00047a90: STR             X0, [SP,#0x80+var_80]
00047a94: B               loc_47AA8
00047a98: MOV             W0, W24
00047a9c: MOV             W1, W22
00047aa0: MOV             W2, W28
00047aa4: MOV             W3, W25
00047aa8: MOV             W8, W9
00047aac: CMP             W9, W23
00047ab0: MOV             W25, W3
00047ab4: MOV             W28, W2
00047ab8: MOV             W22, W1
00047abc: MOV             W24, W0
00047ac0: B.LE            loc_47B44
00047ac4: CMP             W8, W27
00047ac8: B.LE            loc_47BE0
00047acc: MOV             W9, #0x6D607A7E
00047ad4: CMP             W8, W9
00047ad8: B.LE            loc_47CD4
00047adc: MOV             W9, #0x6D607A7F
00047ae4: CMP             W8, W9
00047ae8: B.EQ            loc_47EA8
00047aec: MOV             W9, #0x6ECD58D3
00047af4: CMP             W8, W9
00047af8: MOV             W9, #0x60CA
00047afc: MOV             W0, W21
00047b00: MOV             W1, W22
00047b04: MOV             W2, W28
00047b08: MOV             W3, W25
00047b0c: MOVK            W9, #0x4A60,LSL#16
00047b10: B.EQ            loc_47AA8
00047b14: MOV             W9, #0x724B3AB8
00047b1c: CMP             W8, W9
00047b20: MOV             W0, W24
00047b24: MOV             W1, W22
00047b28: MOV             W2, W28
00047b2c: MOV             W3, W25
00047b30: MOV             W9, W8
00047b34: B.NE            loc_47AA8
00047b38: MOV             W0, W24
00047b3c: MOV             W21, W22
00047b40: B               loc_47E38
00047b44: CMP             W8, W20
00047b48: B.LE            loc_47C38
00047b4c: MOV             W9, #0x227C05B9
00047b54: CMP             W8, W9
00047b58: B.LE            loc_47D60
00047b5c: MOV             W9, #0x227C05BA
00047b64: CMP             W8, W9
00047b68: B.EQ            loc_47EF4
00047b6c: MOV             W9, #0x25739D8F
00047b74: CMP             W8, W9
00047b78: B.EQ            loc_47F24
00047b7c: MOV             W9, #0x2B3AD17B
00047b84: CMP             W8, W9
00047b88: MOV             W0, W24
00047b8c: MOV             W1, W22
00047b90: MOV             W2, W28
00047b94: MOV             W3, W25
00047b98: MOV             W9, W8
00047b9c: B.NE            loc_47AA8
00047ba0: LDR             X1, [SP,#0x80+var_70]
00047ba4: LDR             X2, [SP,#0x80+var_60]
00047ba8: MOV             X0, X19
00047bac: BL              sub_11964
00047bb0: STRB            W0, [SP,#0x80+var_54]
00047bb4: LDR             X8, [X19]
00047bb8: MOV             X0, X19
00047bbc: LDR             X8, [X8,#0x720]
00047bc0: BLR             X8
00047bc4: MOV             W8, #0xE9C8
00047bc8: MOV             W9, #0x5EB4
00047bcc: TST             W0, #0xFF
00047bd0: MOVK            W8, #0xD36A,LSL#16
00047bd4: MOVK            W9, #0x341D,LSL#16
00047bd8: CSEL            W9, W9, W8, EQ
00047bdc: B               loc_47A98
00047be0: MOV             W9, #0x341D5EB3
00047be8: CMP             W8, W9
00047bec: B.LE            loc_47DF4
00047bf0: MOV             W9, #0x341D5EB4
00047bf8: CMP             W8, W9
00047bfc: B.EQ            loc_47F40
00047c00: MOV             W9, #0x35666F98
00047c08: CMP             W8, W9
00047c0c: B.EQ            loc_47F90
00047c10: MOV             W9, #0x4A6060CA
00047c18: CMP             W8, W9
00047c1c: MOV             W0, W24
00047c20: MOV             W1, W22
00047c24: MOV             W2, W28
00047c28: MOV             W3, W25
00047c2c: MOV             W9, W8
00047c30: B.NE            loc_47AA8
00047c34: B               loc_48010
00047c38: MOV             W9, #0xD5588D03
00047c40: CMP             W8, W9
00047c44: B.GT            loc_47E50
00047c48: MOV             W9, #0x9E4B4982
00047c50: CMP             W8, W9
00047c54: MOV             W9, #0x3EDC
00047c58: MOV             W0, W24
00047c5c: MOV             W1, W22
00047c60: MOV             W2, W28
00047c64: MOV             W3, W26
00047c68: MOVK            W9, #0x5A99,LSL#16
00047c6c: B.EQ            loc_47AA8
00047c70: MOV             W9, #0xD36AE9C8
00047c78: CMP             W8, W9
00047c7c: MOV             W0, W24
00047c80: MOV             W1, W22
00047c84: MOV             W2, W28
00047c88: MOV             W3, W25
00047c8c: MOV             W9, W8
00047c90: B.NE            loc_47AA8
00047c94: LDR             X8, [X19]
00047c98: MOV             X0, X19
00047c9c: LDR             X8, [X8,#0x80]
00047ca0: BLR             X8
00047ca4: LDR             X8, [X19]
00047ca8: MOV             X0, X19
00047cac: LDR             X8, [X8,#0x88]
00047cb0: BLR             X8
00047cb4: MOV             W9, #0x4982
00047cb8: MOV             W26, WZR
00047cbc: MOV             W0, W24
00047cc0: MOV             W1, W22
00047cc4: MOV             W2, W28
00047cc8: MOV             W3, W25
00047ccc: MOVK            W9, #0x9E4B,LSL#16
00047cd0: B               loc_47AA8
00047cd4: MOV             W9, #0x5A993EDC
00047cdc: CMP             W8, W9
00047ce0: MOV             W9, #0x9A2B
00047ce4: MOV             W0, W24
00047ce8: MOV             W1, W22
00047cec: MOV             W2, W25
00047cf0: MOV             W3, W25
00047cf4: MOVK            W9, #0x33F,LSL#16
00047cf8: B.EQ            loc_47AA8
00047cfc: MOV             W9, #0x615FBE39
00047d04: CMP             W8, W9
00047d08: MOV             W0, W24
00047d0c: MOV             W1, W22
00047d10: MOV             W2, W28
00047d14: MOV             W3, W25
00047d18: MOV             W9, W8
00047d1c: B.NE            loc_47AA8
00047d20: LDR             X1, [SP,#0x80+var_80]
00047d24: MOV             X0, X19
00047d28: BL              sub_10C30
00047d2c: LDR             X1, [SP,#0x80+var_70]
00047d30: LDR             X8, [X19]
00047d34: MOV             X0, X19
00047d38: LDR             X8, [X8,#0xF8]
00047d3c: BLR             X8
00047d40: STR             X0, [SP,#0x80+var_68]
00047d44: LDR             X8, [SP,#0x80+var_68]
00047d48: MOV             W9, #0xD8B40A0
00047d50: CMP             X8, #0
00047d54: MOV             W8, #0xF9A7AA65
00047d5c: B               loc_47FCC
00047d60: MOV             W9, #0x33F9A2B
00047d68: CMP             W8, W9
00047d6c: MOV             W9, #0x3AB8
00047d70: MOV             W0, W24
00047d74: MOV             W1, W28
00047d78: MOV             W2, W28
00047d7c: MOV             W3, W25
00047d80: MOVK            W9, #0x724B,LSL#16
00047d84: B.EQ            loc_47AA8
00047d88: MOV             W9, #0xD8B40A0
00047d90: CMP             W8, W9
00047d94: MOV             W0, W24
00047d98: MOV             W1, W22
00047d9c: MOV             W2, W28
00047da0: MOV             W3, W25
00047da4: MOV             W9, W8
00047da8: B.NE            loc_47AA8
00047dac: LDR             X1, [SP,#0x80+var_68]
00047db0: LDR             X8, [X19]
00047db4: ADRP            X2, #qword_F6AF0@PAGE
00047db8: ADRP            X3, #byte_F6AFC@PAGE
00047dbc: MOV             X0, X19
00047dc0: LDR             X8, [X8,#0x108]
00047dc4: ADD             X2, X2, #qword_F6AF0@PAGEOFF
00047dc8: ADD             X3, X3, #byte_F6AFC@PAGEOFF
00047dcc: BLR             X8
00047dd0: STR             X0, [SP,#0x80+var_60]
00047dd4: LDR             X8, [SP,#0x80+var_60]
00047dd8: MOV             W9, #0x35666F98
00047de0: CMP             X8, #0
00047de4: MOV             W8, #0x2B3AD17B
00047dec: CSEL            W9, W9, W8, EQ
00047df0: B               loc_47A98
00047df4: MOV             W9, #0x2E778CA8
00047dfc: CMP             W8, W9
00047e00: B.EQ            loc_47FB4
00047e04: MOV             W9, #0x2FFAC2BF
00047e0c: CMP             W8, W9
00047e10: MOV             W0, W24
00047e14: MOV             W1, W22
00047e18: MOV             W2, W28
00047e1c: MOV             W3, W25
00047e20: MOV             W9, W8
00047e24: B.NE            loc_47AA8
00047e28: MOV             X0, X19
00047e2c: BL              sub_B6D0
00047e30: MOV             W21, WZR
00047e34: MOV             W0, W24
00047e38: MOV             W9, #0x58D3
00047e3c: MOV             W1, W22
00047e40: MOV             W2, W28
00047e44: MOV             W3, W25
00047e48: MOVK            W9, #0x6ECD,LSL#16
00047e4c: B               loc_47AA8
00047e50: MOV             W9, #0xD5588D04
00047e58: CMP             W8, W9
00047e5c: B.EQ            loc_47FD4
00047e60: MOV             W9, #0xF9A7AA65
00047e68: CMP             W8, W9
00047e6c: MOV             W0, W24
00047e70: MOV             W1, W22
00047e74: MOV             W2, W28
00047e78: MOV             W3, W25
00047e7c: MOV             W9, W8
00047e80: B.NE            loc_47AA8
00047e84: MOV             X0, X19
00047e88: BL              sub_B6D0
00047e8c: MOV             W9, #0x9A2B
00047e90: MOV             W2, WZR
00047e94: MOV             W0, W24
00047e98: MOV             W1, W22
00047e9c: MOV             W3, W25
00047ea0: MOVK            W9, #0x33F,LSL#16
00047ea4: B               loc_47AA8
00047ea8: LDR             X8, [SP,#0x80+var_80]
00047eac: LDR             X9, [X19]
00047eb0: ADRP            X2, #qword_F6AC0@PAGE
00047eb4: ADRP            X3, #xmmword_F6AD0@PAGE
00047eb8: LDR             X1, [X8]
00047ebc: LDR             X8, [X9,#0x108]
00047ec0: MOV             X0, X19
00047ec4: ADD             X2, X2, #qword_F6AC0@PAGEOFF
00047ec8: ADD             X3, X3, #xmmword_F6AD0@PAGEOFF
00047ecc: BLR             X8
00047ed0: STR             X0, [SP,#0x80+var_78]
00047ed4: LDR             X8, [SP,#0x80+var_78]
00047ed8: MOV             W9, #0x2FFAC2BF
00047ee0: CMP             X8, #0
00047ee4: MOV             W8, #0xD5588D04
00047eec: CSEL            W9, W9, W8, EQ
00047ef0: B               loc_47A98
00047ef4: MOV             X0, X19
00047ef8: BL              sub_B6D0
00047efc: LDR             X1, [SP,#0x80+var_80]
00047f00: MOV             X0, X19
00047f04: BL              sub_10C30
00047f08: MOV             W9, #0x3AB8
00047f0c: MOV             W1, WZR
00047f10: MOV             W0, W24
00047f14: MOV             W2, W28
00047f18: MOV             W3, W25
00047f1c: MOVK            W9, #0x724B,LSL#16
00047f20: B               loc_47AA8
00047f24: MOV             W9, #0x60CA
00047f28: MOV             W0, WZR
00047f2c: MOV             W1, W22
00047f30: MOV             W2, W28
00047f34: MOV             W3, W25
00047f38: MOVK            W9, #0x4A60,LSL#16
00047f3c: B               loc_47AA8
00047f40: LDR             X1, [SP,#0x80+var_70]
00047f44: LDR             X8, [X19]
00047f48: MOV             X0, X19
00047f4c: LDR             X8, [X8,#0xB8]
00047f50: BLR             X8
00047f54: LDR             X1, [SP,#0x80+var_68]
00047f58: LDR             X8, [X19]
00047f5c: MOV             X0, X19
00047f60: LDR             X8, [X8,#0xB8]
00047f64: BLR             X8
00047f68: LDRB            W8, [SP,#0x80+var_54]
00047f6c: MOV             W9, #0x4982
00047f70: MOV             W0, W24
00047f74: MOV             W1, W22
00047f78: CMP             W8, #0
00047f7c: MOV             W2, W28
00047f80: MOV             W3, W25
00047f84: CSET            W26, NE
00047f88: MOVK            W9, #0x9E4B,LSL#16
00047f8c: B               loc_47AA8
00047f90: MOV             X0, X19
00047f94: BL              sub_B6D0
00047f98: MOV             W9, #0x3EDC
00047f9c: MOV             W3, WZR
00047fa0: MOV             W0, W24
00047fa4: MOV             W1, W22
00047fa8: MOV             W2, W28
00047fac: MOVK            W9, #0x5A99,LSL#16
00047fb0: B               loc_47AA8
00047fb4: LDR             X8, [SP,#0x80+var_80]
00047fb8: MOV             W9, #0x6D607A7F
00047fc0: CMP             X8, #0
00047fc4: MOV             W8, #0x25739D8F
00047fcc: CSEL            W9, W8, W9, EQ
00047fd0: B               loc_47A98
00047fd4: LDR             X8, [SP,#0x80+var_80]
00047fd8: MOV             W3, #0x11
00047fdc: MOV             X0, X19
00047fe0: LDR             X1, [X8,#8]
00047fe4: LDR             X2, [SP,#0x80+var_78]
00047fe8: BL              sub_BF48
00047fec: STR             X0, [SP,#0x80+var_70]
00047ff0: LDR             X8, [SP,#0x80+var_70]
00047ff4: MOV             W9, #0x227C05BA
00047ffc: CMP             X8, #0
00048000: MOV             W8, #0x615FBE39
00048008: CSEL            W9, W9, W8, EQ
0004800c: B               loc_47A98
00048010: MOV             W0, W24
00048014: LDP             X29, X30, [SP,#0x80+var_s0]
00048018: LDP             X20, X19, [SP,#0x80+var_10]
0004801c: LDP             X22, X21, [SP,#0x80+var_20]
00048020: LDP             X24, X23, [SP,#0x80+var_30]
00048024: LDP             X26, X25, [SP,#0x80+var_40]
00048028: LDP             X28, X27, [SP,#0x80+var_50]
0004802c: ADD             SP, SP, #0x90
00048030: RET