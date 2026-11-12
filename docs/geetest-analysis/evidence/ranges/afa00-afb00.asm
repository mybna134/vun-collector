000afa00: MOV             W9, #0xF6EB184E
000afa04: MOV             W9, #0xF6EB184E
000afa08: B               loc_AF968
000afa0c: LDRB            W9, [SP,#0x180+var_152]
000afa10: LDRB            W10, [SP,#0x180+var_151]
000afa14: MVN             W9, W9
000afa18: ORN             W9, W9, W10
000afa1c: TST             W9, #1
000afa20: CSEL            W9, W23, W27, NE
000afa24: B               loc_AF968
000afa28: LDR             X1, [SP,#0x180+var_178]
000afa2c: SUB             X8, X29, #-var_A4
000afa30: ADD             X2, X8, #0x20 ; ' '
000afa34: MOV             X0, X20
000afa38: BL              sub_13C74
000afa3c: LDR             X8, [SP,#0x180+var_160]
000afa40: LDR             X8, [SP,#0x180+var_170]
000afa44: LDR             X8, [X22,#0x28]
000afa48: LDUR            X9, [X29,#var_60]
000afa4c: CMP             X8, X9
000afa50: B.NE            loc_AFA74
000afa54: LDP             X29, X30, [SP,#0x180+var_s0]
000afa58: LDP             X20, X19, [SP,#0x180+var_10]
000afa5c: LDP             X22, X21, [SP,#0x180+var_20]
000afa60: LDP             X24, X23, [SP,#0x180+var_30]
000afa64: LDP             X26, X25, [SP,#0x180+var_40]
000afa68: LDP             X28, X27, [SP,#0x180+var_50]
000afa6c: ADD             SP, SP, #0x190
000afa70: RET
000afa74: BL              .__stack_chk_fail
000afa78: STR             X28, [SP,#-0x10+var_20]!
000afa7c: STP             X20, X19, [SP,#0x20+var_10]
000afa80: STP             X29, X30, [SP,#0x20+var_s0]
000afa84: ADD             X29, SP, #0x20
000afa88: SUB             SP, SP, #0x220
000afa8c: MRS             X20, TPIDR_EL0
000afa90: LDR             X8, [X20,#0x28]
000afa94: ADRP            X1, #qword_F7210@PAGE ; runtime: 0xf7210='/data/data/'
000afa98: MOV             X19, X0
000afa9c: MOVI            V0.2D, #0
000afaa0: STUR            X8, [X29,#var_28]
000afaa4: ADD             X8, SP, #0x240+var_228
000afaa8: STR             X8, [SP,#0x240+var_238]
000afaac: LDR             X8, [SP,#0x240+var_238]
000afab0: LDR             X8, [SP,#0x240+var_238]
000afab4: ADD             X1, X1, #qword_F7210@PAGEOFF ; runtime: 0xf7210='/data/data/'
000afab8: ADD             X0, SP, #0x240+var_228
000afabc: STP             Q0, Q0, [X8,#0x1E0]
000afac0: STP             Q0, Q0, [X8,#0x1C0]
000afac4: STP             Q0, Q0, [X8,#0x1A0]
000afac8: STP             Q0, Q0, [X8,#0x180]
000afacc: STP             Q0, Q0, [X8,#0x160]
000afad0: STP             Q0, Q0, [X8,#0x140]
000afad4: STP             Q0, Q0, [X8,#0x120]
000afad8: STP             Q0, Q0, [X8,#0x100]
000afadc: STP             Q0, Q0, [X8,#0xE0]
000afae0: STP             Q0, Q0, [X8,#0xC0]
000afae4: STP             Q0, Q0, [X8,#0xA0]
000afae8: STP             Q0, Q0, [X8,#0x80]
000afaec: STP             Q0, Q0, [X8,#0x60]
000afaf0: STP             Q0, Q0, [X8,#0x40]
000afaf4: STP             Q0, Q0, [X8,#0x20]
000afaf8: STP             Q0, Q0, [X8]
000afafc: BL              sub_6630