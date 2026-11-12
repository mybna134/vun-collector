000af828: SUB             SP, SP, #0x190
000af82c: STP             X28, X27, [SP,#0x180+var_50]
000af830: STP             X26, X25, [SP,#0x180+var_40]
000af834: STP             X24, X23, [SP,#0x180+var_30]
000af838: STP             X22, X21, [SP,#0x180+var_20]
000af83c: STP             X20, X19, [SP,#0x180+var_10]
000af840: STP             X29, X30, [SP,#0x180+var_s0]
000af844: ADD             X29, SP, #0x180
000af848: STR             X1, [SP,#0x180+var_178]
000af84c: MRS             X22, TPIDR_EL0
000af850: LDR             X8, [X22,#0x28]
000af854: ADD             X9, SP, #0x180+src
000af858: MOV             X20, X0
000af85c: ADRP            X0, #qword_F7520@PAGE
000af860: STUR            X8, [X29,#var_60]
000af864: STR             X9, [SP,#0x180+var_170]
000af868: LDR             X8, [SP,#0x180+var_170]
000af86c: MOV             W23, #0x184E
000af870: ADD             X0, X0, #qword_F7520@PAGEOFF
000af874: ADD             X1, SP, #0x180+src
000af878: MOVK            W23, #0xF6EB,LSL#16
000af87c: STR             XZR, [SP,#0x180+src]
000af880: BL              sub_AFBCC
000af884: SUB             X8, X29, #-var_A4
000af888: STP             X0, X8, [SP,#0x180+var_168]
000af88c: LDR             X8, [SP,#0x180+var_160]
000af890: LDR             X8, [SP,#0x180+var_160]
000af894: MOVI            V0.2D, #0
000af898: MOV             W25, #0xAE2
000af89c: MOV             W26, #0x184D
000af8a0: STRB            WZR, [X8,#0x40]
000af8a4: STP             Q0, Q0, [X8,#0x20]
000af8a8: STP             Q0, Q0, [X8]
000af8ac: LDR             X8, [SP,#0x180+src]
000af8b0: MOV             W27, #0x7EBF
000af8b4: MOV             W28, #0xA9B9
000af8b8: MOV             W21, #0xC9F0
000af8bc: CMP             X8, #0
000af8c0: CSET            W8, NE
000af8c4: STRB            W8, [SP,#0x180+var_152]
000af8c8: LDR             X9, [SP,#0x180+var_168]
000af8cc: MOV             W19, #0x86AC
000af8d0: MOV             W24, #0xE40E
000af8d4: MOVK            W25, #0xBEE4,LSL#16
000af8d8: CMP             X9, #0
000af8dc: CSET            W9, GT
000af8e0: STRB            W9, [SP,#0x180+var_151]
000af8e4: MOV             W9, #0xAE2
000af8e8: MOVK            W26, #0xF6EB,LSL#16
000af8ec: MOVK            W27, #0x3D34,LSL#16
000af8f0: MOVK            W28, #0xD417,LSL#16
000af8f4: MOVK            W21, #0xE480,LSL#16
000af8f8: MOVK            W19, #0xC52,LSL#16
000af8fc: MOVK            W24, #0x6579,LSL#16
000af900: MOVK            W9, #0xBEE4,LSL#16
000af904: B               loc_AF968
000af908: ADD             X8, SP, #0x180+var_C4
000af90c: STR             X8, [SP,#0x180+var_150]
000af910: LDR             X8, [SP,#0x180+var_150]
000af914: LDR             X8, [SP,#0x180+var_150]
000af918: MOVI            V0.2D, #0
000af91c: ADD             X0, SP, #0x180+var_130
000af920: STP             Q0, Q0, [X8]
000af924: ADD             X8, SP, #0x180+var_130
000af928: STR             X8, [SP,#0x180+var_148]
000af92c: LDR             X8, [SP,#0x180+var_148]
000af930: BL              sub_E4574
000af934: ADD             X0, SP, #0x180+var_130
000af938: MOV             W1, WZR
000af93c: BL              sub_E46A4
000af940: LDR             X1, [SP,#0x180+src]; src
000af944: LDR             X2, [SP,#0x180+var_168]
000af948: ADD             X0, SP, #0x180+var_130; int
000af94c: BL              sub_E7894
000af950: ADD             X0, SP, #0x180+var_130
000af954: ADD             X1, SP, #0x180+var_C4
000af958: BL              sub_E7CB0
000af95c: MOV             W9, #0xE40E
000af960: MOV             W8, WZR
000af964: MOVK            W9, #0x6579,LSL#16
000af968: CMP             W9, W26
000af96c: B.GT            loc_AF9C8
000af970: CMP             W9, W25
000af974: B.EQ            loc_AFA0C
000af978: CMP             W9, W28
000af97c: B.EQ            loc_AF9F4
000af980: CMP             W9, W21
000af984: B.NE            loc_AF968
000af988: LDRSW           X8, [SP,#0x180+var_13C]
000af98c: LDRSW           X9, [SP,#0x180+var_13C]
000af990: ADD             X10, SP, #0x180+var_C4
000af994: ADRL            X1, byte_F7530; format
000af99c: LDRB            W2, [X10,X9]
000af9a0: SUB             X9, X29, #-var_A4
000af9a4: ADD             X0, X9, X8,LSL#1; s
000af9a8: BL              .sprintf
000af9ac: LDR             W8, [SP,#0x180+var_13C]
000af9b0: MOV             W9, #0x6579E40E
000af9b8: ADD             W8, W8, W19
000af9bc: ADD             W8, W8, #1
000af9c0: SUB             W8, W8, W19
000af9c4: B               loc_AF968
000af9c8: CMP             W9, W23
000af9cc: B.EQ            loc_AFA28
000af9d0: CMP             W9, W27
000af9d4: B.EQ            loc_AF908
000af9d8: CMP             W9, W24
000af9dc: B.NE            loc_AF968
000af9e0: STR             W8, [SP,#0x180+var_13C]
000af9e4: LDR             W9, [SP,#0x180+var_13C]
000af9e8: CMP             W9, #0x20 ; ' '
000af9ec: CSEL            W9, W21, W28, LT
000af9f0: B               loc_AF968
000af9f4: STURB           WZR, [X29,#var_64]
000af9f8: LDR             X9, [SP,#0x180+var_148]
000af9fc: LDR             X9, [SP,#0x180+var_150]
000afa00: MOV             W9, #0xF6EB184E
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