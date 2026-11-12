00053c10: STR             X21, [SP,#-0x10+var_20]!
00053c14: STP             X20, X19, [SP,#0x20+var_10]
00053c18: STP             X29, X30, [SP,#0x20+var_s0]
00053c1c: ADD             X29, SP, #0x20
00053c20: MOV             X1, X2
00053c24: MOV             X2, X3
00053c28: MOV             X19, X0
00053c2c: BL              sub_51A4C
00053c30: MOV             X20, X0
00053c34: MOV             X0, X19
00053c38: BL              sub_D138
00053c3c: MOV             X0, X20
00053c40: BL              sub_50AC4
00053c44: LDR             X8, [X19]
00053c48: MOV             X21, X0
00053c4c: MOV             X0, X19
00053c50: MOV             X1, X21
00053c54: LDR             X8, [X8,#0x538]
00053c58: BLR             X8
00053c5c: MOV             X19, X0
00053c60: MOV             X0, X20; ptr
00053c64: BL              .free
00053c68: MOV             X0, X21; ptr
00053c6c: BL              .free
00053c70: MOV             X0, X19
00053c74: LDP             X29, X30, [SP,#0x20+var_s0]
00053c78: LDP             X20, X19, [SP,#0x20+var_10]
00053c7c: LDR             X21, [SP+0x20+var_20],#0x30
00053c80: RET