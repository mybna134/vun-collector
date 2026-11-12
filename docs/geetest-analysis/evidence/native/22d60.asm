00022d60: SUB             SP, SP, #0x80
00022d64: STP             X28, X27, [SP,#0x70+var_50]
00022d68: STP             X26, X25, [SP,#0x70+var_40]
00022d6c: STP             X24, X23, [SP,#0x70+var_30]
00022d70: STP             X22, X21, [SP,#0x70+var_20]
00022d74: STP             X20, X19, [SP,#0x70+var_10]
00022d78: STP             X29, X30, [SP,#0x70+var_s0]
00022d7c: ADD             X29, SP, #0x70
00022d80: LDR             X8, [X0]
00022d84: ADRL            X1, xmmword_F2F90
00022d8c: MOV             X19, X0
00022d90: LDR             X8, [X8,#0x30]
00022d94: BLR             X8
00022d98: MOV             W24, #0xA690
00022d9c: MOV             W25, #0x27E7
00022da0: MOV             W26, #0x5EEA
00022da4: MOV             W27, #0xA1FD
00022da8: MOV             W28, #0xF32F
00022dac: MOV             W20, #0xBB70
00022db0: MOV             W21, #0x27E8
00022db4: MOV             W22, #0xF4E4
00022db8: MOV             W23, #0xF4E5
00022dbc: MOV             W8, #0xA690
00022dc0: STR             X0, [SP,#0x70+var_60]
00022dc4: MOVK            W24, #0xD3D1,LSL#16
00022dc8: MOVK            W25, #0xD009,LSL#16
00022dcc: MOVK            W26, #0xADA0,LSL#16
00022dd0: MOVK            W27, #0xB5EE,LSL#16
00022dd4: MOVK            W28, #0xC20C,LSL#16
00022dd8: MOVK            W20, #0x76CB,LSL#16
00022ddc: MOVK            W21, #0xD009,LSL#16
00022de0: MOVK            W22, #0xD1,LSL#16
00022de4: MOVK            W23, #0xD1,LSL#16
00022de8: MOVK            W8, #0xD3D1,LSL#16
00022dec: B               loc_22E00
00022df0: LDR             W9, [SP,#0x70+var_68]
00022df4: MOV             W8, #0xB5EEA1FD
00022dfc: STR             W9, [SP,#0x70+var_64]
00022e00: CMP             W8, W25
00022e04: B.LE            loc_22E30
00022e08: CMP             W8, W22
00022e0c: B.GT            loc_22E80
00022e10: CMP             W8, W21
00022e14: B.EQ            loc_22EDC
00022e18: CMP             W8, W24
00022e1c: B.NE            loc_22E00
00022e20: LDR             X8, [SP,#0x70+var_60]
00022e24: CMP             X8, #0
00022e28: CSEL            W8, W26, W28, EQ
00022e2c: B               loc_22E00
00022e30: CMP             W8, W26
00022e34: B.EQ            loc_22EF4
00022e38: CMP             W8, W27
00022e3c: B.EQ            loc_22F0C
00022e40: CMP             W8, W28
00022e44: B.NE            loc_22E00
00022e48: LDR             X1, [SP,#0x70+var_60]
00022e4c: LDR             X8, [X19]
00022e50: ADRP            X2, #xmmword_F2FB0@PAGE
00022e54: ADRP            X3, #byte_F2FC4@PAGE
00022e58: MOV             X0, X19
00022e5c: LDR             X8, [X8,#0x388]
00022e60: ADD             X2, X2, #xmmword_F2FB0@PAGEOFF
00022e64: ADD             X3, X3, #byte_F2FC4@PAGEOFF
00022e68: BLR             X8
00022e6c: STR             X0, [SP,#0x70+var_58]
00022e70: LDR             X8, [SP,#0x70+var_58]
00022e74: CMP             X8, #0
00022e78: CSEL            W8, W21, W20, EQ
00022e7c: B               loc_22E00
00022e80: CMP             W8, W23
00022e84: B.EQ            loc_22DF0
00022e88: CMP             W8, W20
00022e8c: B.NE            loc_22E00
00022e90: LDR             X1, [SP,#0x70+var_60]
00022e94: LDR             X2, [SP,#0x70+var_58]
00022e98: MOV             X0, X19
00022e9c: BL              sub_17C70
00022ea0: STR             W0, [SP,#0x70+var_68]
00022ea4: MOV             X0, X19
00022ea8: BL              sub_B6D0
00022eac: LDR             X1, [SP,#0x70+var_60]
00022eb0: LDR             X8, [X19]
00022eb4: MOV             X0, X19
00022eb8: LDR             X8, [X8,#0xB8]
00022ebc: BLR             X8
00022ec0: LDR             W8, [SP,#0x70+var_68]
00022ec4: TST             W8, #0xFF
00022ec8: CSET            W8, NE
00022ecc: STR             W8, [SP,#0x70+var_68]
00022ed0: MOV             W8, #0xD1F4E5
00022ed8: B               loc_22E00
00022edc: MOV             X0, X19
00022ee0: BL              sub_B6D0
00022ee4: MOV             W8, #0xF4E5
00022ee8: STR             WZR, [SP,#0x70+var_68]
00022eec: MOVK            W8, #0xD1,LSL#16
00022ef0: B               loc_22E00
00022ef4: MOV             X0, X19
00022ef8: BL              sub_B6D0
00022efc: MOV             W8, #0xA1FD
00022f00: STR             WZR, [SP,#0x70+var_64]
00022f04: MOVK            W8, #0xB5EE,LSL#16
00022f08: B               loc_22E00
00022f0c: LDR             W0, [SP,#0x70+var_64]
00022f10: LDP             X29, X30, [SP,#0x70+var_s0]
00022f14: LDP             X20, X19, [SP,#0x70+var_10]
00022f18: LDP             X22, X21, [SP,#0x70+var_20]
00022f1c: LDP             X24, X23, [SP,#0x70+var_30]
00022f20: LDP             X26, X25, [SP,#0x70+var_40]
00022f24: LDP             X28, X27, [SP,#0x70+var_50]
00022f28: ADD             SP, SP, #0x80
00022f2c: RET