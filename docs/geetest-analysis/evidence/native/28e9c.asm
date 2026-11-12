00028e9c: SUB             SP, SP, #0xD0
00028ea0: STP             X20, X19, [SP,#0xC0+var_10]
00028ea4: STP             X29, X30, [SP,#0xC0+var_s0]
00028ea8: ADD             X29, SP, #0xC0
00028eac: MRS             X20, TPIDR_EL0
00028eb0: LDR             X8, [X20,#0x28]
00028eb4: MOV             X19, X0
00028eb8: STUR            X8, [X29,#var_18]
00028ebc: STP             XZR, XZR, [X29,#s]
00028ec0: BL              sub_E89A4
00028ec4: ADRP            X1, #byte_F3434@PAGE
00028ec8: MOV             W2, W0
00028ecc: ADD             X1, X1, #byte_F3434@PAGEOFF; format
00028ed0: SUB             X0, X29, #-s; s
00028ed4: BL              .sprintf
00028ed8: ADRP            X1, #qword_F36F8@PAGE
00028edc: MOVI            V0.2D, #0
00028ee0: ADD             X1, X1, #qword_F36F8@PAGEOFF
00028ee4: ADD             X0, SP, #0xC0+var_B0
00028ee8: STR             XZR, [SP,#0xC0+var_B8]
00028eec: STP             Q0, Q0, [SP,#0xC0+var_50]
00028ef0: STP             Q0, Q0, [SP,#0xC0+var_70]
00028ef4: STP             Q0, Q0, [SP,#0xC0+var_90]
00028ef8: STP             Q0, Q0, [SP,#0xC0+var_B0]
00028efc: BL              sub_6630
00028f00: ADD             X0, SP, #0xC0+var_B0
00028f04: SUB             X1, X29, #-s
00028f08: BL              sub_6630
00028f0c: ADRL            X1, qword_F3708
00028f14: ADD             X0, SP, #0xC0+var_B0
00028f18: BL              sub_6630
00028f1c: ADD             X0, SP, #0xC0+var_B0
00028f20: ADD             X1, SP, #0xC0+var_B8
00028f24: MOV             W2, #8
00028f28: BL              sub_8E28
00028f2c: ADD             X1, SP, #0xC0+var_B8
00028f30: MOV             X0, X19
00028f34: BL              sub_14068
00028f38: LDR             X8, [X20,#0x28]
00028f3c: LDUR            X9, [X29,#var_18]
00028f40: CMP             X8, X9
00028f44: B.NE            loc_28F58
00028f48: LDP             X29, X30, [SP,#0xC0+var_s0]
00028f4c: LDP             X20, X19, [SP,#0xC0+var_10]
00028f50: ADD             SP, SP, #0xD0
00028f54: RET
00028f58: BL              .__stack_chk_fail