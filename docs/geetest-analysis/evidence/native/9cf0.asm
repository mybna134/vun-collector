00009cf0: SUB             SP, SP, #0x180
00009cf4: STP             X28, X27, [SP,#0x170+var_50]
00009cf8: STP             X26, X25, [SP,#0x170+var_40]
00009cfc: STP             X24, X23, [SP,#0x170+var_30]
00009d00: STP             X22, X21, [SP,#0x170+var_20]
00009d04: STP             X20, X19, [SP,#0x170+var_10]
00009d08: STP             X29, X30, [SP,#0x170+var_s0]
00009d0c: ADD             X29, SP, #0x170
00009d10: STP             X0, X2, [SP,#0x170+var_160]
00009d14: MRS             X9, TPIDR_EL0
00009d18: STR             X9, [SP,#0x170+var_168]
00009d1c: LDR             X9, [X9,#0x28]
00009d20: ADD             X10, SP, #0x170+var_130
00009d24: MOV             X8, X1
00009d28: MOV             W26, #0x5D9
00009d2c: STR             X9, [SP,#0x170+var_150]
00009d30: STR             X10, [SP,#0x170+var_148]
00009d34: LDR             X9, [SP,#0x170+var_148]
00009d38: LDR             X9, [SP,#0x170+var_148]
00009d3c: MOVI            V0.2D, #0
00009d40: ADD             X1, SP, #0x170+var_130; buf
00009d44: MOV             X0, X8; file
00009d48: MOVK            W26, #0x4BEB,LSL#16
00009d4c: STP             Q0, Q0, [X9,#0x60]
00009d50: STP             Q0, Q0, [X9,#0x40]
00009d54: STP             Q0, Q0, [X9,#0x20]
00009d58: STP             Q0, Q0, [X9]
00009d5c: BL              .stat
00009d60: MOV             X13, #0x38637B84
00009d68: MOV             W27, #0x8B79
00009d6c: MOV             W28, #0x150
00009d70: MOV             W12, #0xCA00
00009d74: MOVK            X13, #0xEC86,LSL#32
00009d78: ADRP            X1, #byte_F209C@PAGE
00009d7c: MOV             W22, #0x59A0
00009d80: MOV             W21, #0xBD38
00009d84: MOV             W19, #0xD7A1
00009d88: MOV             W20, #0x5A09
00009d8c: MOV             W24, #0x59A1
00009d90: MOV             W25, #0xF3AA
00009d94: MOV             W23, #0xD5FD
00009d98: MOV             W8, #0x8B79
00009d9c: MOVK            W27, #0x5E46,LSL#16
00009da0: MOVK            W28, #0x31DB,LSL#16
00009da4: MOVK            W12, #0x3B9A,LSL#16
00009da8: MOVK            X13, #0xF07D,LSL#48
00009dac: ADD             X1, X1, #byte_F209C@PAGEOFF
00009db0: MOVK            W22, #0x67DD,LSL#16
00009db4: MOVK            W21, #0xA38C,LSL#16
00009db8: MOVK            W19, #0x31F5,LSL#16
00009dbc: MOVK            W20, #0x607D,LSL#16
00009dc0: MOVK            W24, #0x67DD,LSL#16
00009dc4: MOVK            W25, #0x7716,LSL#16
00009dc8: MOVK            W23, #0x6904,LSL#16
00009dcc: MOVK            W8, #0x5E46,LSL#16
00009dd0: STR             W0, [SP,#0x170+var_140]
00009dd4: B               loc_9E24
00009dd8: LDR             X2, [SP,#0x170+var_170]
00009ddc: SUB             X9, X29, #-s
00009de0: ADRP            X1, #byte_F20AC@PAGE
00009de4: ADD             X0, X9, W8,SXTW; s
00009de8: ADD             X1, X1, #byte_F20AC@PAGEOFF; format
00009dec: BL              .sprintf
00009df0: LDP             X0, X1, [SP,#0x170+var_160]
00009df4: SUB             X2, X29, #-s
00009df8: BL              sub_13C74
00009dfc: MOV             X13, #0x38637B84
00009e04: MOV             W8, #0x5D9
00009e08: MOV             W12, #0xCA00
00009e0c: MOVK            X13, #0xEC86,LSL#32
00009e10: ADRP            X1, #byte_F209C@PAGE
00009e14: MOVK            W8, #0x4BEB,LSL#16
00009e18: MOVK            W12, #0x3B9A,LSL#16
00009e1c: MOVK            X13, #0xF07D,LSL#48
00009e20: ADD             X1, X1, #byte_F209C@PAGEOFF; format
00009e24: CMP             W8, W28
00009e28: B.EQ            loc_9E4C
00009e2c: CMP             W8, W26
00009e30: B.EQ            loc_9F38
00009e34: CMP             W8, W27
00009e38: B.NE            loc_9E24
00009e3c: LDR             W8, [SP,#0x170+var_140]
00009e40: CMP             W8, #0
00009e44: CSEL            W8, W28, W26, EQ
00009e48: B               loc_9E24
00009e4c: LDP             X9, X8, [SP,#0x170+var_D8]
00009e50: LDR             X11, [SP,#0x170+var_128]
00009e54: NEG             X10, X13
00009e58: MOVI            V0.2D, #0
00009e5c: MADD            X9, X9, X12, X10
00009e60: ADD             X8, X9, X8
00009e64: STR             X11, [SP,#0x170+var_170]
00009e68: SUB             X11, X29, #-s
00009e6c: ADD             X2, X8, X13
00009e70: SUB             X0, X29, #-s; s
00009e74: STP             Q0, Q0, [X11,#0x20]
00009e78: STP             Q0, Q0, [X11]
00009e7c: BL              .sprintf
00009e80: MOV             W11, #0x7716F3AA
00009e88: B               loc_9EA8
00009e8c: MOV             W11, #0x31F5D7A1
00009e94: B               loc_9EA8
00009e98: MOV             W11, #0xD5FD
00009e9c: MOV             W9, WZR
00009ea0: MOVK            W11, #0x6904,LSL#16
00009ea4: SUB             X10, X29, #-s
00009ea8: CMP             W11, W22
00009eac: B.GT            loc_9ED8
00009eb0: CMP             W11, W21
00009eb4: B.EQ            loc_9DD8
00009eb8: CMP             W11, W19
00009ebc: B.EQ            loc_9E98
00009ec0: CMP             W11, W20
00009ec4: B.NE            loc_9EA8
00009ec8: LDR             W8, [SP,#0x170+var_13C]
00009ecc: MOV             W11, #0xA38CBD38
00009ed4: B               loc_9EA8
00009ed8: CMP             W11, W24
00009edc: B.EQ            loc_9F0C
00009ee0: CMP             W11, W25
00009ee4: B.EQ            loc_9E8C
00009ee8: CMP             W11, W23
00009eec: B.NE            loc_9EA8
00009ef0: STR             W9, [SP,#0x170+var_13C]
00009ef4: STR             X10, [SP,#0x170+var_138]
00009ef8: LDR             X11, [SP,#0x170+var_138]
00009efc: LDRB            W11, [X11]
00009f00: CMP             W11, #0
00009f04: CSEL            W11, W20, W24, EQ
00009f08: B               loc_9EA8
00009f0c: LDR             W9, [SP,#0x170+var_13C]
00009f10: MOV             W11, #0xF989
00009f14: LDR             X10, [SP,#0x170+var_138]
00009f18: MOVK            W11, #0x9FF0,LSL#16
00009f1c: ADD             W9, W9, W11
00009f20: ADD             W9, W9, #1
00009f24: SUB             W9, W9, W11
00009f28: MOV             W11, #0xD5FD
00009f2c: ADD             X10, X10, #1
00009f30: MOVK            W11, #0x6904,LSL#16
00009f34: B               loc_9EA8
00009f38: LDR             X8, [SP,#0x170+var_148]
00009f3c: LDR             X8, [SP,#0x170+var_168]
00009f40: LDR             X8, [X8,#0x28]
00009f44: LDR             X9, [SP,#0x170+var_150]
00009f48: CMP             X8, X9
00009f4c: B.NE            loc_9F70
00009f50: LDP             X29, X30, [SP,#0x170+var_s0]
00009f54: LDP             X20, X19, [SP,#0x170+var_10]
00009f58: LDP             X22, X21, [SP,#0x170+var_20]
00009f5c: LDP             X24, X23, [SP,#0x170+var_30]
00009f60: LDP             X26, X25, [SP,#0x170+var_40]
00009f64: LDP             X28, X27, [SP,#0x170+var_50]
00009f68: ADD             SP, SP, #0x180
00009f6c: RET
00009f70: BL              .__stack_chk_fail