000d490c: SUB             SP, SP, #0xB0
000d4910: STP             X28, X27, [SP,#0xA0+var_50]
000d4914: STP             X26, X25, [SP,#0xA0+var_40]
000d4918: STP             X24, X23, [SP,#0xA0+var_30]
000d491c: STP             X22, X21, [SP,#0xA0+var_20]
000d4920: STP             X20, X19, [SP,#0xA0+var_10]
000d4924: STP             X29, X30, [SP,#0xA0+var_s0]
000d4928: ADD             X29, SP, #0xA0
000d492c: MOV             X20, X0
000d4930: STR             X1, [SP,#0xA0+var_A0]
000d4934: BL              sub_DB2C
000d4938: MOV             W24, #0x1F72
000d493c: MOV             W21, #0x737A
000d4940: MOV             W19, #0x7587
000d4944: MOV             W26, #0x3B29
000d4948: MOV             W9, #0xFE2D
000d494c: MOVK            W24, #0x1304,LSL#16
000d4950: MOVK            W21, #0xCF2E,LSL#16
000d4954: MOVK            W19, #0x6807,LSL#16
000d4958: MOVK            W26, #0x755E,LSL#16
000d495c: MOVK            W9, #0xB195,LSL#16
000d4960: STR             X0, [SP,#0xA0+var_90]
000d4964: B               loc_D4974
000d4968: MOV             X0, X28
000d496c: MOV             X1, X27
000d4970: MOV             X2, X23
000d4974: MOV             W8, W9
000d4978: CMP             W9, W24
000d497c: MOV             X23, X2
000d4980: MOV             X27, X1
000d4984: MOV             X28, X0
000d4988: B.LE            loc_D4A08
000d498c: CMP             W8, W19
000d4990: B.GT            loc_D4A94
000d4994: MOV             W9, #0x2EDA0888
000d499c: CMP             W8, W9
000d49a0: B.LE            loc_D4B50
000d49a4: MOV             W9, #0x2EDA0889
000d49ac: CMP             W8, W9
000d49b0: MOV             W9, #0x422F
000d49b4: MOV             X0, X28
000d49b8: MOV             X1, X23
000d49bc: MOV             X2, X23
000d49c0: MOVK            W9, #0x7A3F,LSL#16
000d49c4: B.EQ            loc_D4974
000d49c8: MOV             W9, #0x3215F362
000d49d0: CMP             W8, W9
000d49d4: B.EQ            loc_D4CD8
000d49d8: MOV             W9, #0x602DB1A1
000d49e0: CMP             W8, W9
000d49e4: MOV             X0, X28
000d49e8: MOV             X1, X27
000d49ec: MOV             X2, X23
000d49f0: MOV             W9, W8
000d49f4: B.NE            loc_D4974
000d49f8: MOV             X0, X20
000d49fc: BL              sub_B6D0
000d4a00: STR             WZR, [SP,#0xA0+var_94]
000d4a04: B               loc_D4E24
000d4a08: CMP             W8, W21
000d4a0c: B.GT            loc_D4AFC
000d4a10: MOV             W9, #0xBDFC88E2
000d4a18: CMP             W8, W9
000d4a1c: B.LE            loc_D4BA4
000d4a20: MOV             W9, #0xBDFC88E3
000d4a28: CMP             W8, W9
000d4a2c: B.EQ            loc_D4D10
000d4a30: MOV             W9, #0xC5465349
000d4a38: CMP             W8, W9
000d4a3c: MOV             W9, #0x889
000d4a40: MOV             X0, X28
000d4a44: MOV             X1, X27
000d4a48: MOV             X2, X25
000d4a4c: MOVK            W9, #0x2EDA,LSL#16
000d4a50: B.EQ            loc_D4974
000d4a54: MOV             W9, #0xC9007E63
000d4a5c: CMP             W8, W9
000d4a60: MOV             X0, X28
000d4a64: MOV             X1, X27
000d4a68: MOV             X2, X23
000d4a6c: MOV             W9, W8
000d4a70: B.NE            loc_D4974
000d4a74: MOV             X0, X20
000d4a78: BL              sub_B6D0
000d4a7c: MOV             W9, #0x24A7
000d4a80: MOV             X0, XZR
000d4a84: MOV             X1, X27
000d4a88: MOV             X2, X23
000d4a8c: MOVK            W9, #0xEFE7,LSL#16
000d4a90: B               loc_D4974
000d4a94: CMP             W8, W26
000d4a98: B.LE            loc_D4BF0
000d4a9c: MOV             W9, #0x755E3B2A
000d4aa4: CMP             W8, W9
000d4aa8: MOV             W9, #0x24A7
000d4aac: MOV             X0, X22
000d4ab0: MOV             X1, X27
000d4ab4: MOV             X2, X23
000d4ab8: MOVK            W9, #0xEFE7,LSL#16
000d4abc: B.EQ            loc_D4974
000d4ac0: MOV             W9, #0x772D1645
000d4ac8: CMP             W8, W9
000d4acc: B.EQ            loc_D4D58
000d4ad0: MOV             W9, #0x7A3F422F
000d4ad8: CMP             W8, W9
000d4adc: MOV             X0, X28
000d4ae0: MOV             X1, X27
000d4ae4: MOV             X2, X23
000d4ae8: MOV             W9, W8
000d4aec: B.NE            loc_D4974
000d4af0: MOV             X0, X28
000d4af4: MOV             X22, X27
000d4af8: B               loc_D4B90
000d4afc: MOV             W9, #0xDF053161
000d4b04: CMP             W8, W9
000d4b08: B.LE            loc_D4C64
000d4b0c: MOV             W9, #0xDF053162
000d4b14: CMP             W8, W9
000d4b18: B.EQ            loc_D4D90
000d4b1c: MOV             W9, #0xEB309EB1
000d4b24: CMP             W8, W9
000d4b28: B.EQ            loc_D4DA0
000d4b2c: MOV             W9, #0xEFE724A7
000d4b34: CMP             W8, W9
000d4b38: MOV             X0, X28
000d4b3c: MOV             X1, X27
000d4b40: MOV             X2, X23
000d4b44: MOV             W9, W8
000d4b48: B.NE            loc_D4974
000d4b4c: B               loc_D4ED4
000d4b50: MOV             W9, #0x13041F73
000d4b58: CMP             W8, W9
000d4b5c: B.EQ            loc_D4DFC
000d4b60: MOV             W9, #0x1EC8F4C5
000d4b68: CMP             W8, W9
000d4b6c: MOV             X0, X28
000d4b70: MOV             X1, X27
000d4b74: MOV             X2, X23
000d4b78: MOV             W9, W8
000d4b7c: B.NE            loc_D4974
000d4b80: MOV             X0, X20
000d4b84: BL              sub_B6D0
000d4b88: MOV             X22, XZR
000d4b8c: MOV             X0, X28
000d4b90: MOV             W9, #0x3B2A
000d4b94: MOV             X1, X27
000d4b98: MOV             X2, X23
000d4b9c: MOVK            W9, #0x755E,LSL#16
000d4ba0: B               loc_D4974
000d4ba4: MOV             W9, #0xA2BB2F30
000d4bac: CMP             W8, W9
000d4bb0: B.EQ            loc_D4E3C
000d4bb4: MOV             W9, #0xB195FE2D
000d4bbc: CMP             W8, W9
000d4bc0: MOV             X0, X28
000d4bc4: MOV             X1, X27
000d4bc8: MOV             X2, X23
000d4bcc: MOV             W9, W8
000d4bd0: B.NE            loc_D4974
000d4bd4: LDR             X8, [SP,#0xA0+var_90]
000d4bd8: MOV             W9, #0xC9007E63
000d4be0: CMP             X8, #0
000d4be4: MOV             W8, #0x772D1645
000d4bec: B               loc_D4DF4
000d4bf0: MOV             W9, #0x68077588
000d4bf8: CMP             W8, W9
000d4bfc: B.EQ            loc_D4E94
000d4c00: MOV             W9, #0x6DB26BCF
000d4c08: CMP             W8, W9
000d4c0c: MOV             X0, X28
000d4c10: MOV             X1, X27
000d4c14: MOV             X2, X23
000d4c18: MOV             W9, W8
000d4c1c: B.NE            loc_D4974
000d4c20: LDR             X1, [SP,#0xA0+var_78]
000d4c24: LDR             X8, [X20]
000d4c28: ADRP            X2, #aLnXnybo@PAGE; "LN_~XNYbO+"
000d4c2c: ADRP            X3, #byte_F80AC@PAGE
000d4c30: MOV             X0, X20
000d4c34: LDR             X8, [X8,#0x108]
000d4c38: ADD             X2, X2, #aLnXnybo@PAGEOFF; "LN_~XNYbO+"
000d4c3c: ADD             X3, X3, #byte_F80AC@PAGEOFF
000d4c40: BLR             X8
000d4c44: STR             X0, [SP,#0xA0+var_70]
000d4c48: LDR             X8, [SP,#0xA0+var_70]
000d4c4c: MOV             W9, #0x602DB1A1
000d4c54: CMP             X8, #0
000d4c58: MOV             W8, #0xBDFC88E3
000d4c60: B               loc_D4DF4
000d4c64: MOV             W9, #0xCF2E737B
000d4c6c: CMP             W8, W9
000d4c70: B.EQ            loc_D4EB4
000d4c74: MOV             W9, #0xD5DC44C7
000d4c7c: CMP             W8, W9
000d4c80: MOV             X0, X28
000d4c84: MOV             X1, X27
000d4c88: MOV             X2, X23
000d4c8c: MOV             W9, W8
000d4c90: B.NE            loc_D4974
000d4c94: LDR             X1, [SP,#0xA0+var_88]
000d4c98: LDR             X8, [X20]
000d4c9c: ADRP            X2, #xmmword_F8030@PAGE
000d4ca0: ADRP            X3, #xmmword_F8050@PAGE
000d4ca4: MOV             X0, X20
000d4ca8: LDR             X8, [X8,#0x388]
000d4cac: ADD             X2, X2, #xmmword_F8030@PAGEOFF
000d4cb0: ADD             X3, X3, #xmmword_F8050@PAGEOFF
000d4cb4: BLR             X8
000d4cb8: STR             X0, [SP,#0xA0+var_80]
000d4cbc: LDR             X8, [SP,#0xA0+var_80]
000d4cc0: MOV             W9, #0x68077588
000d4cc8: CMP             X8, #0
000d4ccc: MOV             W8, #0x3215F362
000d4cd4: B               loc_D4DF4
000d4cd8: LDR             X8, [X20]
000d4cdc: LDR             X1, [SP,#0xA0+var_A0]
000d4ce0: MOV             X0, X20
000d4ce4: LDR             X8, [X8,#0xF8]
000d4ce8: BLR             X8
000d4cec: STR             X0, [SP,#0xA0+var_78]
000d4cf0: LDR             X8, [SP,#0xA0+var_78]
000d4cf4: MOV             W9, #0x6DB26BCF
000d4cfc: CMP             X8, #0
000d4d00: MOV             W8, #0xCF2E737B
000d4d08: CSEL            W9, W8, W9, EQ
000d4d0c: B               loc_D4968
000d4d10: LDR             X2, [SP,#0xA0+var_70]
000d4d14: LDR             X1, [SP,#0xA0+var_A0]
000d4d18: MOV             X0, X20
000d4d1c: BL              sub_C4A8
000d4d20: STR             W0, [SP,#0xA0+var_64]
000d4d24: LDR             X8, [X20]
000d4d28: MOV             X0, X20
000d4d2c: LDR             X8, [X8,#0x720]
000d4d30: BLR             X8
000d4d34: LDR             W8, [SP,#0xA0+var_64]
000d4d38: MOV             W9, #0x1F73
000d4d3c: TST             W0, #0xFF
000d4d40: MOVK            W9, #0x1304,LSL#16
000d4d44: STR             W8, [SP,#0xA0+var_94]
000d4d48: MOV             W8, #0xEB309EB1
000d4d50: CSEL            W9, W8, W9, EQ
000d4d54: B               loc_D4968
000d4d58: LDR             X8, [X20]
000d4d5c: ADRP            X1, #a5000113P171t@PAGE; "5:0&;=0{$&;\"=01&{\a1  =:3'p\a17!&1T"
000d4d60: MOV             X0, X20
000d4d64: ADD             X1, X1, #a5000113P171t@PAGEOFF; "5:0&;=0{$&;\"=01&{\a1  =:3'p\a17!&1T"
000d4d68: LDR             X8, [X8,#0x30]
000d4d6c: BLR             X8
000d4d70: STR             X0, [SP,#0xA0+var_88]
000d4d74: LDR             X8, [SP,#0xA0+var_88]
000d4d78: MOV             W9, #0x1EC8F4C5
000d4d80: CMP             X8, #0
000d4d84: MOV             W8, #0xD5DC44C7
000d4d8c: B               loc_D4DF4
000d4d90: MOV             X0, X20
000d4d94: BL              sub_B6D0
000d4d98: MOV             X25, XZR
000d4d9c: B               loc_D4E7C
000d4da0: LDR             X8, [X20]
000d4da4: ADRP            X1, #qword_F7C08@PAGE
000d4da8: MOV             X0, X20
000d4dac: ADD             X1, X1, #qword_F7C08@PAGEOFF
000d4db0: LDR             X8, [X8,#0x538]
000d4db4: BLR             X8
000d4db8: STR             X0, [SP,#0xA0+var_60]
000d4dbc: LDR             X3, [SP,#0xA0+var_90]
000d4dc0: LDR             X1, [SP,#0xA0+var_88]
000d4dc4: LDR             X2, [SP,#0xA0+var_80]
000d4dc8: LDR             X4, [SP,#0xA0+var_60]
000d4dcc: LDR             W5, [SP,#0xA0+var_94]
000d4dd0: MOV             X0, X20
000d4dd4: BL              sub_CEE8
000d4dd8: STR             X0, [SP,#0xA0+var_58]
000d4ddc: LDR             X8, [SP,#0xA0+var_58]
000d4de0: MOV             W9, #0xDF053162
000d4de8: CMP             X8, #0
000d4dec: MOV             W8, #0xA2BB2F30
000d4df4: CSEL            W9, W9, W8, EQ
000d4df8: B               loc_D4968
000d4dfc: LDR             X8, [X20]
000d4e00: MOV             X0, X20
000d4e04: LDR             X8, [X8,#0x80]
000d4e08: BLR             X8
000d4e0c: LDR             X8, [X20]
000d4e10: MOV             X0, X20
000d4e14: LDR             X8, [X8,#0x88]
000d4e18: BLR             X8
000d4e1c: LDR             W8, [SP,#0xA0+var_64]
000d4e20: STR             W8, [SP,#0xA0+var_94]
000d4e24: MOV             W9, #0x9EB1
000d4e28: MOV             X0, X28
000d4e2c: MOV             X1, X27
000d4e30: MOV             X2, X23
000d4e34: MOVK            W9, #0xEB30,LSL#16
000d4e38: B               loc_D4974
000d4e3c: LDR             X1, [SP,#0xA0+var_88]
000d4e40: LDR             X8, [X20]
000d4e44: MOV             X0, X20
000d4e48: LDR             X8, [X8,#0xB8]
000d4e4c: BLR             X8
000d4e50: LDR             X1, [SP,#0xA0+var_90]
000d4e54: LDR             X8, [X20]
000d4e58: MOV             X0, X20
000d4e5c: LDR             X8, [X8,#0xB8]
000d4e60: BLR             X8
000d4e64: LDR             X1, [SP,#0xA0+var_60]
000d4e68: LDR             X8, [X20]
000d4e6c: MOV             X0, X20
000d4e70: LDR             X8, [X8,#0xB8]
000d4e74: BLR             X8
000d4e78: LDR             X25, [SP,#0xA0+var_58]
000d4e7c: MOV             W9, #0x5349
000d4e80: MOV             X0, X28
000d4e84: MOV             X1, X27
000d4e88: MOV             X2, X23
000d4e8c: MOVK            W9, #0xC546,LSL#16
000d4e90: B               loc_D4974
000d4e94: MOV             X0, X20
000d4e98: BL              sub_B6D0
000d4e9c: MOV             W9, #0x422F
000d4ea0: MOV             X1, XZR
000d4ea4: MOV             X0, X28
000d4ea8: MOV             X2, X23
000d4eac: MOVK            W9, #0x7A3F,LSL#16
000d4eb0: B               loc_D4974
000d4eb4: MOV             X0, X20
000d4eb8: BL              sub_B6D0
000d4ebc: MOV             W9, #0x889
000d4ec0: MOV             X2, XZR
000d4ec4: MOV             X0, X28
000d4ec8: MOV             X1, X27
000d4ecc: MOVK            W9, #0x2EDA,LSL#16
000d4ed0: B               loc_D4974
000d4ed4: MOV             X0, X28
000d4ed8: LDP             X29, X30, [SP,#0xA0+var_s0]
000d4edc: LDP             X20, X19, [SP,#0xA0+var_10]
000d4ee0: LDP             X22, X21, [SP,#0xA0+var_20]
000d4ee4: LDP             X24, X23, [SP,#0xA0+var_30]
000d4ee8: LDP             X26, X25, [SP,#0xA0+var_40]
000d4eec: LDP             X28, X27, [SP,#0xA0+var_50]
000d4ef0: ADD             SP, SP, #0xB0
000d4ef4: RET