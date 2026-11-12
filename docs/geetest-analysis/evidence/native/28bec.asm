00028bec: STR             X28, [SP,#-0x10+var_20]!
00028bf0: STP             X20, X19, [SP,#0x20+var_10]
00028bf4: STP             X29, X30, [SP,#0x20+var_s0]
00028bf8: ADD             X29, SP, #0x20
00028bfc: SUB             SP, SP, #0x5D0
00028c00: MRS             X20, TPIDR_EL0
00028c04: LDR             X8, [X20,#0x28]
00028c08: MOV             X19, X0
00028c0c: ADRL            X0, qword_F34D8
00028c14: SUB             X1, X29, #-var_68
00028c18: STUR            X8, [X29,#var_28]
00028c1c: BL              .__system_property_get
00028c20: ADRL            X1, byte_F34E8
00028c28: SUB             X2, X29, #-var_68
00028c2c: MOV             X0, X19
00028c30: BL              sub_13C74
00028c34: ADRL            X0, xmmword_F34F0
00028c3c: ADD             X1, SP, #0x5F0+var_168
00028c40: BL              .__system_property_get
00028c44: ADRL            X1, aL_0; "+:.L"
00028c4c: ADD             X2, SP, #0x5F0+var_168
00028c50: MOV             X0, X19
00028c54: BL              sub_13C74
00028c58: ADRL            X0, xmmword_F3510
00028c60: ADD             X1, SP, #0x5F0+var_1A8
00028c64: BL              .__system_property_get
00028c68: ADRL            X1, byte_F3528
00028c70: ADD             X2, SP, #0x5F0+var_1A8
00028c74: MOV             X0, X19
00028c78: BL              sub_13C74
00028c7c: ADRL            X0, qword_F3530
00028c84: ADD             X1, SP, #0x5F0+var_1E8
00028c88: BL              .__system_property_get
00028c8c: ADRL            X1, byte_F3540
00028c94: ADD             X2, SP, #0x5F0+var_1E8
00028c98: MOV             X0, X19
00028c9c: BL              sub_13C74
00028ca0: ADRL            X0, xmmword_F3550
00028ca8: ADD             X1, SP, #0x5F0+var_228
00028cac: BL              .__system_property_get
00028cb0: ADRL            X1, byte_F3564
00028cb8: ADD             X2, SP, #0x5F0+var_228
00028cbc: MOV             X0, X19
00028cc0: BL              sub_13C74
00028cc4: ADRL            X0, qword_F3570
00028ccc: ADD             X1, SP, #0x5F0+var_268
00028cd0: BL              .__system_property_get
00028cd4: ADRL            X1, byte_F3580
00028cdc: ADD             X2, SP, #0x5F0+var_268
00028ce0: MOV             X0, X19
00028ce4: BL              sub_13C74
00028ce8: ADRL            X0, xmmword_F3590
00028cf0: ADD             X1, SP, #0x5F0+var_2A8
00028cf4: BL              .__system_property_get
00028cf8: ADRL            X1, byte_F35A4
00028d00: ADD             X2, SP, #0x5F0+var_2A8
00028d04: MOV             X0, X19
00028d08: BL              sub_13C74
00028d0c: ADRL            X0, qword_F35B0
00028d14: ADD             X1, SP, #0x5F0+var_3A8
00028d18: BL              .__system_property_get
00028d1c: ADRL            X1, byte_F35C0
00028d24: ADD             X2, SP, #0x5F0+var_3A8
00028d28: MOV             X0, X19
00028d2c: BL              sub_13C74
00028d30: ADRL            X0, qword_F35C8
00028d38: ADD             X1, SP, #0x5F0+var_3E8
00028d3c: BL              .__system_property_get
00028d40: ADRL            X1, byte_F35D4
00028d48: ADD             X2, SP, #0x5F0+var_3E8
00028d4c: MOV             X0, X19
00028d50: BL              sub_13C74
00028d54: ADRL            X0, xmmword_F35E0
00028d5c: ADD             X1, SP, #0x5F0+var_428
00028d60: BL              .__system_property_get
00028d64: ADRL            X1, a31A; "31#A"
00028d6c: ADD             X2, SP, #0x5F0+var_428
00028d70: MOV             X0, X19
00028d74: BL              sub_13C74
00028d78: ADRL            X0, xmmword_F3600
00028d80: ADD             X1, SP, #0x5F0+var_468
00028d84: BL              .__system_property_get
00028d88: ADRL            X1, aNg; "NG])"
00028d90: ADD             X2, SP, #0x5F0+var_468
00028d94: MOV             X0, X19
00028d98: BL              sub_13C74
00028d9c: ADRL            X0, xmmword_F3620
00028da4: ADD             X1, SP, #0x5F0+var_4A8
00028da8: BL              .__system_property_get
00028dac: ADRL            X1, byte_F363C
00028db4: ADD             X2, SP, #0x5F0+var_4A8
00028db8: MOV             X0, X19
00028dbc: BL              sub_13C74
00028dc0: ADRL            X0, xmmword_F3650
00028dc8: ADD             X1, SP, #0x5F0+var_4E8
00028dcc: BL              .__system_property_get
00028dd0: ADRL            X1, byte_F3668
00028dd8: ADD             X2, SP, #0x5F0+var_4E8
00028ddc: MOV             X0, X19
00028de0: BL              sub_13C74
00028de4: ADRL            X0, a1p6Uo; ",1p6?,:)?,;^uo\a"
00028dec: ADD             X1, SP, #0x5F0+var_528
00028df0: BL              .__system_property_get
00028df4: ADRL            X1, (a1p6Uo+0xC); "uo\a"
00028dfc: ADD             X2, SP, #0x5F0+var_528
00028e00: MOV             X0, X19
00028e04: BL              sub_13C74
00028e08: ADRL            X0, a7637977737r0; " =|?76;3&79|$7 !;=<| 7>73!7R/0+/]"
00028e10: ADD             X1, SP, #0x5F0+var_568
00028e14: BL              .__system_property_get
00028e18: ADRL            X1, (a7637977737r0+0x1C); "/0+/]"
00028e20: ADD             X2, SP, #0x5F0+var_568
00028e24: MOV             X0, X19
00028e28: BL              sub_13C74
00028e2c: ADRL            X0, xmmword_F36B0
00028e34: ADD             X1, SP, #0x5F0+var_5A8
00028e38: BL              .__system_property_get
00028e3c: ADRL            X1, byte_F36C8
00028e44: ADD             X2, SP, #0x5F0+var_5A8
00028e48: MOV             X0, X19
00028e4c: BL              sub_13C74
00028e50: ADRL            X0, xmmword_F36D0
00028e58: ADD             X1, SP, #0x5F0+var_5E8
00028e5c: BL              .__system_property_get
00028e60: ADRL            X1, a0S; "!0;%;S"
00028e68: ADD             X2, SP, #0x5F0+var_5E8
00028e6c: MOV             X0, X19
00028e70: BL              sub_13C74
00028e74: LDR             X8, [X20,#0x28]
00028e78: LDUR            X9, [X29,#var_28]
00028e7c: CMP             X8, X9
00028e80: B.NE            loc_28E98
00028e84: ADD             SP, SP, #0x5D0
00028e88: LDP             X29, X30, [SP,#0x20+var_s0]
00028e8c: LDP             X20, X19, [SP,#0x20+var_10]
00028e90: LDR             X28, [SP+0x20+var_20],#0x30
00028e94: RET
00028e98: BL              .__stack_chk_fail