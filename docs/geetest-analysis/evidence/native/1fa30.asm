0001fa30: SUB             SP, SP, #0x140
0001fa34: STP             X28, X27, [SP,#0x130+var_50]
0001fa38: STP             X26, X25, [SP,#0x130+var_40]
0001fa3c: STP             X24, X23, [SP,#0x130+var_30]
0001fa40: STP             X22, X21, [SP,#0x130+var_20]
0001fa44: STP             X20, X19, [SP,#0x130+var_10]
0001fa48: STP             X29, X30, [SP,#0x130+var_s0]
0001fa4c: ADD             X29, SP, #0x130
0001fa50: MRS             X8, TPIDR_EL0
0001fa54: STP             X8, X1, [SP,#0x130+var_130]
0001fa58: LDR             X8, [X8,#0x28]
0001fa5c: SUB             X9, X29, #-var_70
0001fa60: MOV             X20, X0
0001fa64: MOV             W25, #0x2539
0001fa68: STUR            X8, [X29,#var_60]
0001fa6c: STR             X9, [SP,#0x130+var_120]
0001fa70: LDR             X8, [SP,#0x130+var_120]
0001fa74: LDR             X8, [SP,#0x130+var_120]
0001fa78: SUB             X0, X29, #-var_70
0001fa7c: MOVK            W25, #0x5DDF,LSL#16
0001fa80: STP             XZR, XZR, [X8]
0001fa84: BL              sub_9848
0001fa88: ADD             X8, SP, #0x130+var_F0
0001fa8c: STP             X8, X8, [SP,#0x130+var_118]
0001fa90: LDR             X9, [SP,#0x130+var_118]
0001fa94: LDR             X9, [SP,#0x130+var_118]
0001fa98: MOVI            V0.2D, #0
0001fa9c: SUB             X0, X29, #-var_70
0001faa0: STP             Q0, Q0, [X9,#0x60]
0001faa4: STP             Q0, Q0, [X9,#0x40]
0001faa8: STP             Q0, Q0, [X9,#0x20]
0001faac: STP             Q0, Q0, [X9]
0001fab0: LDR             X1, [SP,#0x130+s2]
0001fab4: BL              sub_95F0
0001fab8: MOV             W22, #0x60AD
0001fabc: MOV             W19, #0xE281
0001fac0: MOV             W28, #0xE282
0001fac4: MOV             W23, #0x6BB5
0001fac8: MOV             W26, #0x6BB6
0001facc: MOV             W9, #0x41BB
0001fad0: MOVK            W22, #0x2303,LSL#16
0001fad4: MOVK            W19, #0xB07A,LSL#16
0001fad8: MOVK            W28, #0xB07A,LSL#16
0001fadc: MOVK            W23, #0x2FAF,LSL#16
0001fae0: MOVK            W26, #0x2FAF,LSL#16
0001fae4: MOVK            W9, #0x2B12,LSL#16
0001fae8: STR             W0, [SP,#0x130+var_104]
0001faec: B               loc_1FAFC
0001faf0: MOV             W9, #0x41EB
0001faf4: MOV             W0, W21
0001faf8: MOVK            W9, #0x6A1F,LSL#16
0001fafc: MOV             W8, W9
0001fb00: CMP             W9, W22
0001fb04: MOV             W21, W0
0001fb08: B.LE            loc_1FB58
0001fb0c: CMP             W8, W23
0001fb10: B.LE            loc_1FBD0
0001fb14: CMP             W8, W26
0001fb18: B.EQ            loc_1FCBC
0001fb1c: CMP             W8, W25
0001fb20: B.EQ            loc_1FC88
0001fb24: MOV             W9, #0x6A1F41EB
0001fb2c: CMP             W8, W9
0001fb30: MOV             W0, W21
0001fb34: MOV             W9, W8
0001fb38: B.NE            loc_1FAFC
0001fb3c: MOV             W8, #0xB207
0001fb40: CMP             W24, #0
0001fb44: MOVK            W8, #0x2371,LSL#16
0001fb48: CSEL            W9, W25, W8, EQ
0001fb4c: MOV             W27, #1
0001fb50: MOV             W0, W21
0001fb54: B               loc_1FAFC
0001fb58: CMP             W8, W19
0001fb5c: B.LE            loc_1FC18
0001fb60: CMP             W8, W28
0001fb64: B.EQ            loc_1FCE8
0001fb68: MOV             W9, #0xB16C5F43
0001fb70: CMP             W8, W9
0001fb74: B.EQ            loc_1FC9C
0001fb78: MOV             W9, #0xD26408EA
0001fb80: CMP             W8, W9
0001fb84: MOV             W0, W21
0001fb88: MOV             W9, W8
0001fb8c: B.NE            loc_1FAFC
0001fb90: LDR             X1, [SP,#0x130+var_100]
0001fb94: LDR             X8, [X20]
0001fb98: MOV             X0, X20
0001fb9c: MOV             X2, XZR
0001fba0: LDR             X8, [X8,#0x548]
0001fba4: BLR             X8
0001fba8: STR             X0, [SP,#0x130+s1]
0001fbac: LDR             X8, [SP,#0x130+s1]
0001fbb0: MOV             W9, #0x82D6B899
0001fbb8: MOV             W0, W21
0001fbbc: CMP             X8, #0
0001fbc0: MOV             W8, #0xAD179295
0001fbc8: CSEL            W9, W8, W9, EQ
0001fbcc: B               loc_1FAFC
0001fbd0: MOV             W9, #0x2371B207
0001fbd8: CMP             W8, W9
0001fbdc: MOV             W9, #0x60AE
0001fbe0: MOV             W0, W27
0001fbe4: MOVK            W9, #0x2303,LSL#16
0001fbe8: B.EQ            loc_1FAFC
0001fbec: MOV             W9, #0x2B1241BB
0001fbf4: CMP             W8, W9
0001fbf8: B.EQ            loc_1FC48
0001fbfc: MOV             W9, #0x230360AE
0001fc04: CMP             W8, W9
0001fc08: MOV             W0, W21
0001fc0c: MOV             W9, W8
0001fc10: B.NE            loc_1FAFC
0001fc14: B               loc_1FCF8
0001fc18: MOV             W9, #0x82D6B899
0001fc20: CMP             W8, W9
0001fc24: B.EQ            loc_1FC5C
0001fc28: MOV             W9, #0xAD179295
0001fc30: CMP             W8, W9
0001fc34: MOV             W0, W21
0001fc38: MOV             W9, W8
0001fc3c: B.NE            loc_1FAFC
0001fc40: MOV             W24, WZR
0001fc44: B               loc_1FAF0
0001fc48: LDR             W8, [SP,#0x130+var_104]
0001fc4c: MOV             W0, W21
0001fc50: CMP             W8, #0
0001fc54: CSEL            W9, W28, W26, EQ
0001fc58: B               loc_1FAFC
0001fc5c: LDR             X1, [SP,#0x130+s2]; s2
0001fc60: LDR             X0, [SP,#0x130+s1]; s1
0001fc64: BL              .strcmp
0001fc68: MOV             W8, #0x9295
0001fc6c: MOV             W9, #0x5F43
0001fc70: CMP             W0, #0
0001fc74: MOVK            W8, #0xAD17,LSL#16
0001fc78: MOVK            W9, #0xB16C,LSL#16
0001fc7c: CSEL            W9, W9, W8, EQ
0001fc80: MOV             W0, W21
0001fc84: B               loc_1FAFC
0001fc88: MOV             W9, #0xB207
0001fc8c: MOV             W27, WZR
0001fc90: MOV             W0, W21
0001fc94: MOVK            W9, #0x2371,LSL#16
0001fc98: B               loc_1FAFC
0001fc9c: LDR             X1, [SP,#0x130+var_100]
0001fca0: LDR             X2, [SP,#0x130+s1]
0001fca4: LDR             X8, [X20]
0001fca8: MOV             X0, X20
0001fcac: LDR             X8, [X8,#0x550]
0001fcb0: BLR             X8
0001fcb4: MOV             W24, #1
0001fcb8: B               loc_1FAF0
0001fcbc: LDR             X1, [SP,#0x130+var_128]
0001fcc0: MOV             X0, X20
0001fcc4: BL              sub_43720
0001fcc8: STR             X0, [SP,#0x130+var_100]
0001fccc: LDR             X8, [SP,#0x130+var_100]
0001fcd0: MOV             W0, W21
0001fcd4: CMP             X8, #0
0001fcd8: MOV             W8, #0xD26408EA
0001fce0: CSEL            W9, W25, W8, EQ
0001fce4: B               loc_1FAFC
0001fce8: MOV             W9, #0x60AE
0001fcec: MOV             W0, WZR
0001fcf0: MOVK            W9, #0x2303,LSL#16
0001fcf4: B               loc_1FAFC
0001fcf8: LDR             X8, [SP,#0x130+var_118]
0001fcfc: LDR             X8, [SP,#0x130+var_120]
0001fd00: LDR             X8, [SP,#0x130+var_130]
0001fd04: LDR             X8, [X8,#0x28]
0001fd08: LDUR            X9, [X29,#var_60]
0001fd0c: CMP             X8, X9
0001fd10: B.NE            loc_1FD38
0001fd14: MOV             W0, W21
0001fd18: LDP             X29, X30, [SP,#0x130+var_s0]
0001fd1c: LDP             X20, X19, [SP,#0x130+var_10]
0001fd20: LDP             X22, X21, [SP,#0x130+var_20]
0001fd24: LDP             X24, X23, [SP,#0x130+var_30]
0001fd28: LDP             X26, X25, [SP,#0x130+var_40]
0001fd2c: LDP             X28, X27, [SP,#0x130+var_50]
0001fd30: ADD             SP, SP, #0x140
0001fd34: RET
0001fd38: BL              .__stack_chk_fail