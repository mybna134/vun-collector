0004abcc: SUB             SP, SP, #0x80
0004abd0: STP             X28, X27, [SP,#0x70+var_50]
0004abd4: STP             X26, X25, [SP,#0x70+var_40]
0004abd8: STP             X24, X23, [SP,#0x70+var_30]
0004abdc: STP             X22, X21, [SP,#0x70+var_20]
0004abe0: STP             X20, X19, [SP,#0x70+var_10]
0004abe4: STP             X29, X30, [SP,#0x70+var_s0]
0004abe8: ADD             X29, SP, #0x70
0004abec: ADRP            X2, #byte_F6A30@PAGE
0004abf0: MOV             W23, #0x3C1F
0004abf4: ADD             X2, X2, #byte_F6A30@PAGEOFF
0004abf8: MOV             X19, X0
0004abfc: MOVK            W23, #0xFFC3,LSL#16
0004ac00: BL              sub_1723C
0004ac04: STR             X0, [SP,#0x70+var_68]
0004ac08: LDR             X8, [X19]
0004ac0c: ADRL            X1, xmmword_F6E80
0004ac14: MOV             X0, X19
0004ac18: LDR             X8, [X8,#0x30]
0004ac1c: BLR             X8
0004ac20: MOV             W28, #0x4F4B
0004ac24: MOV             W20, #0x3C1E
0004ac28: MOV             W26, #0x21F4
0004ac2c: MOV             W25, #0x2414
0004ac30: MOV             W24, #0x2413
0004ac34: MOV             W10, #0x39BC
0004ac38: MOVK            W28, #0x3B69,LSL#16
0004ac3c: MOVK            W20, #0xFFC3,LSL#16
0004ac40: MOVK            W26, #0x13FE,LSL#16
0004ac44: MOVK            W25, #0x5F23,LSL#16
0004ac48: MOVK            W24, #0x5F23,LSL#16
0004ac4c: MOVK            W10, #0x1406,LSL#16
0004ac50: STR             X0, [SP,#0x70+var_60]
0004ac54: B               loc_4AC64
0004ac58: MOV             W10, #0xBB60
0004ac5c: MOV             W8, W22
0004ac60: MOVK            W10, #0x4732,LSL#16
0004ac64: MOV             W9, W10
0004ac68: CMP             W10, W28
0004ac6c: MOV             W22, W8
0004ac70: B.LE            loc_4ACC0
0004ac74: CMP             W9, W24
0004ac78: B.LE            loc_4ACF4
0004ac7c: CMP             W9, W25
0004ac80: B.EQ            loc_4AD60
0004ac84: MOV             W8, #0x6992BE58
0004ac8c: MOV             W10, #0x3C1F
0004ac90: CMP             W9, W8
0004ac94: MOV             W8, W21
0004ac98: MOVK            W10, #0xFFC3,LSL#16
0004ac9c: B.EQ            loc_4AC64
0004aca0: MOV             W8, #0x6F755AA7
0004aca8: CMP             W9, W8
0004acac: MOV             W8, W22
0004acb0: MOV             W10, W9
0004acb4: B.NE            loc_4AC64
0004acb8: MOV             W27, WZR
0004acbc: B               loc_4AC58
0004acc0: CMP             W9, W20
0004acc4: B.LE            loc_4AD30
0004acc8: CMP             W9, W26
0004accc: B.EQ            loc_4ADA4
0004acd0: MOV             W8, #0x140639BC
0004acd8: CMP             W9, W8
0004acdc: B.EQ            loc_4ADF8
0004ace0: CMP             W9, W23
0004ace4: MOV             W8, W22
0004ace8: MOV             W10, W9
0004acec: B.NE            loc_4AC64
0004acf0: B               loc_4AE4C
0004acf4: MOV             W8, #0x3B694F4C
0004acfc: CMP             W9, W8
0004ad00: B.EQ            loc_4AE14
0004ad04: MOV             W8, #0x4732BB60
0004ad0c: CMP             W9, W8
0004ad10: MOV             W8, W22
0004ad14: MOV             W10, W9
0004ad18: B.NE            loc_4AC64
0004ad1c: MOV             W10, #0xBE58
0004ad20: MOV             W8, W22
0004ad24: MOV             W21, W27
0004ad28: MOVK            W10, #0x6992,LSL#16
0004ad2c: B               loc_4AC64
0004ad30: MOV             W8, #0xDA2F6D5F
0004ad38: CMP             W9, W8
0004ad3c: B.EQ            loc_4AE3C
0004ad40: MOV             W8, #0xDBE41B7B
0004ad48: CMP             W9, W8
0004ad4c: MOV             W8, W22
0004ad50: MOV             W10, W9
0004ad54: B.NE            loc_4AC64
0004ad58: MOV             W27, #1
0004ad5c: B               loc_4AC58
0004ad60: LDR             X1, [SP,#0x70+var_60]
0004ad64: LDR             X8, [X19]
0004ad68: ADRP            X2, #aPrcdZdcvcr7@PAGE; "PRCd^ZdCVCR7"
0004ad6c: ADRP            X3, #byte_F6B38@PAGE
0004ad70: MOV             X0, X19
0004ad74: LDR             X8, [X8,#0x108]
0004ad78: ADD             X2, X2, #aPrcdZdcvcr7@PAGEOFF; "PRCd^ZdCVCR7"
0004ad7c: ADD             X3, X3, #byte_F6B38@PAGEOFF
0004ad80: BLR             X8
0004ad84: STR             X0, [SP,#0x70+var_58]
0004ad88: LDR             X8, [SP,#0x70+var_58]
0004ad8c: CMP             X8, #0
0004ad90: MOV             W8, #0x3B694F4C
0004ad98: CSEL            W10, W8, W26, EQ
0004ad9c: MOV             W8, W22
0004ada0: B               loc_4AC64
0004ada4: LDR             X8, [SP,#0x70+var_68]
0004ada8: MOV             X0, X19
0004adac: LDR             X1, [X8,#8]
0004adb0: LDR             X2, [SP,#0x70+var_58]
0004adb4: BL              sub_C4A8
0004adb8: MOV             W23, W0
0004adbc: MOV             X0, X19
0004adc0: BL              sub_B6D0
0004adc4: LDR             X1, [SP,#0x70+var_68]
0004adc8: MOV             X0, X19
0004adcc: BL              sub_10C30
0004add0: MOV             W8, #0x1B7B
0004add4: MOV             W9, #0x5AA7
0004add8: CMP             W23, #1
0004addc: MOV             W23, #0x3C1F
0004ade0: MOVK            W8, #0xDBE4,LSL#16
0004ade4: MOVK            W9, #0x6F75,LSL#16
0004ade8: MOVK            W23, #0xFFC3,LSL#16
0004adec: CSEL            W10, W9, W8, EQ
0004adf0: MOV             W8, W22
0004adf4: B               loc_4AC64
0004adf8: LDR             X8, [SP,#0x70+var_68]
0004adfc: CMP             X8, #0
0004ae00: MOV             W8, #0xDA2F6D5F
0004ae08: CSEL            W10, W8, W25, EQ
0004ae0c: MOV             W8, W22
0004ae10: B               loc_4AC64
0004ae14: MOV             X0, X19
0004ae18: BL              sub_B6D0
0004ae1c: LDR             X1, [SP,#0x70+var_68]
0004ae20: MOV             X0, X19
0004ae24: BL              sub_10C30
0004ae28: MOV             W10, #0xBE58
0004ae2c: MOV             W21, #1
0004ae30: MOV             W8, W22
0004ae34: MOVK            W10, #0x6992,LSL#16
0004ae38: B               loc_4AC64
0004ae3c: MOV             W10, #0x3C1F
0004ae40: MOV             W8, #1
0004ae44: MOVK            W10, #0xFFC3,LSL#16
0004ae48: B               loc_4AC64
0004ae4c: MOV             W0, W22
0004ae50: LDP             X29, X30, [SP,#0x70+var_s0]
0004ae54: LDP             X20, X19, [SP,#0x70+var_10]
0004ae58: LDP             X22, X21, [SP,#0x70+var_20]
0004ae5c: LDP             X24, X23, [SP,#0x70+var_30]
0004ae60: LDP             X26, X25, [SP,#0x70+var_40]
0004ae64: LDP             X28, X27, [SP,#0x70+var_50]
0004ae68: ADD             SP, SP, #0x80
0004ae6c: RET