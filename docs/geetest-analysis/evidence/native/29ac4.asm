00029ac4: STP             X28, X27, [SP,#-0x10+var_50]!
00029ac8: STP             X26, X25, [SP,#0x50+var_40]
00029acc: STP             X24, X23, [SP,#0x50+var_30]
00029ad0: STP             X22, X21, [SP,#0x50+var_20]
00029ad4: STP             X20, X19, [SP,#0x50+var_10]
00029ad8: STP             X29, X30, [SP,#0x50+var_s0]
00029adc: ADD             X29, SP, #0x50
00029ae0: SUB             SP, SP, #0x3B0
00029ae4: MRS             X8, TPIDR_EL0
00029ae8: STP             X8, X0, [SP,#0x400+var_3F8]
00029aec: LDR             X8, [X8,#0x28]
00029af0: ADD             X9, SP, #0x400+var_3C0
00029af4: ADRL            X1, off_F1310; src
00029afc: STUR            X8, [X29,#var_60]
00029b00: STR             X9, [SP,#0x400+dest]
00029b04: LDR             X8, [SP,#0x400+dest]
00029b08: LDR             X0, [SP,#0x400+dest]; dest
00029b0c: MOV             W2, #0x360; n
00029b10: BL              .memcpy
00029b14: MOV             W25, #0x704B
00029b18: MOV             W26, #0x26F5
00029b1c: MOV             W28, #0x978E
00029b20: MOV             W21, #0x7A04
00029b24: MOV             W24, #0x26F6
00029b28: MOV             W19, #0x1702
00029b2c: MOV             W22, #0x35C3
00029b30: MOV             W23, #0xCC23
00029b34: MOV             W20, WZR
00029b38: MOV             W27, WZR
00029b3c: MOVK            W25, #0xD545,LSL#16
00029b40: MOVK            W26, #0xA1A1,LSL#16
00029b44: MOVK            W28, #0x81D4,LSL#16
00029b48: MOVK            W21, #0x6C5E,LSL#16
00029b4c: MOVK            W24, #0xA1A1,LSL#16
00029b50: MOVK            W19, #0xD2F3,LSL#16
00029b54: MOVK            W22, #0xE3D5,LSL#16
00029b58: MOVK            W23, #0x3BCD,LSL#16
00029b5c: B               loc_29B6C
00029b60: LDR             W9, [SP,#0x400+var_3CC]
00029b64: LDR             W27, [SP,#0x400+var_3C4]
00029b68: ADD             W20, W9, #1
00029b6c: MOV             W10, #0xD545704C
00029b74: B               loc_29B98
00029b78: LDR             X8, [SP,#0x400+var_3D8]
00029b7c: LDR             X0, [SP,#0x400+var_3F0]
00029b80: LDR             X1, [X8]
00029b84: BL              sub_14068
00029b88: LDR             W8, [SP,#0x400+var_3C8]
00029b8c: MOV             W10, #0x94ED9E0C
00029b94: ADD             W8, W8, #1
00029b98: MOV             W9, W10
00029b9c: CMP             W10, W25
00029ba0: B.GT            loc_29BE4
00029ba4: CMP             W9, W26
00029ba8: B.GT            loc_29C0C
00029bac: MOV             W10, #0xCC24
00029bb0: CMP             W9, W28
00029bb4: MOVK            W10, #0x3BCD,LSL#16
00029bb8: B.EQ            loc_29B98
00029bbc: MOV             W10, #0x94ED9E0C
00029bc4: CMP             W9, W10
00029bc8: MOV             W10, W9
00029bcc: B.NE            loc_29B98
00029bd0: STR             W8, [SP,#0x400+var_3C4]
00029bd4: LDR             W9, [SP,#0x400+var_3C4]
00029bd8: CMP             W9, #2
00029bdc: CSEL            W10, W28, W21, GT
00029be0: B               loc_29B98
00029be4: CMP             W9, W23
00029be8: B.GT            loc_29C5C
00029bec: MOV             W10, #0xD545704C
00029bf4: CMP             W9, W10
00029bf8: B.EQ            loc_29C7C
00029bfc: CMP             W9, W22
00029c00: MOV             W10, W9
00029c04: B.NE            loc_29B98
00029c08: B               loc_29B78
00029c0c: MOV             W10, #0xCC24
00029c10: CMP             W9, W24
00029c14: MOVK            W10, #0x3BCD,LSL#16
00029c18: B.EQ            loc_29B98
00029c1c: CMP             W9, W19
00029c20: MOV             W10, W9
00029c24: B.NE            loc_29B98
00029c28: LDR             X8, [SP,#0x400+var_3E0]
00029c2c: ADD             X9, SP, #0x400+var_3C0
00029c30: ADD             X8, X9, X8,LSL#3
00029c34: STR             X8, [SP,#0x400+var_3D8]
00029c38: LDR             X8, [SP,#0x400+var_3D8]
00029c3c: LDR             X0, [X8]
00029c40: BL              sub_8630
00029c44: LDR             W8, [SP,#0x400+var_3C8]
00029c48: MOV             W9, #0x9E0C
00029c4c: CMP             W0, #0
00029c50: MOVK            W9, #0x94ED,LSL#16
00029c54: CSEL            W10, W9, W22, EQ
00029c58: B               loc_29B98
00029c5c: CMP             W9, W21
00029c60: B.EQ            loc_29B60
00029c64: MOV             W10, #0x3BCDCC24
00029c6c: CMP             W9, W10
00029c70: MOV             W10, W9
00029c74: B.NE            loc_29B98
00029c78: B               loc_29C98
00029c7c: STP             W20, W27, [SP,#0x400+var_3CC]
00029c80: LDRSW           X9, [SP,#0x400+var_3CC]
00029c84: STR             X9, [SP,#0x400+var_3E0]
00029c88: LDR             X9, [SP,#0x400+var_3E0]
00029c8c: CMP             X9, #0x6C ; 'l'
00029c90: CSEL            W10, W19, W24, CC
00029c94: B               loc_29B98
00029c98: LDR             X8, [SP,#0x400+dest]
00029c9c: LDR             X8, [SP,#0x400+var_3F8]
00029ca0: LDR             X8, [X8,#0x28]
00029ca4: LDUR            X9, [X29,#var_60]
00029ca8: CMP             X8, X9
00029cac: B.NE            loc_29CD0
00029cb0: ADD             SP, SP, #0x3B0
00029cb4: LDP             X29, X30, [SP,#0x50+var_s0]
00029cb8: LDP             X20, X19, [SP,#0x50+var_10]
00029cbc: LDP             X22, X21, [SP,#0x50+var_20]
00029cc0: LDP             X24, X23, [SP,#0x50+var_30]
00029cc4: LDP             X26, X25, [SP,#0x50+var_40]
00029cc8: LDP             X28, X27, [SP+0x50+var_50],#0x60
00029ccc: RET
00029cd0: BL              .__stack_chk_fail