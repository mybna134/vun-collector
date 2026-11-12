00022f38: SUB             SP, SP, #0x80
00022f3c: STP             X28, X27, [SP,#0x70+var_50]
00022f40: STP             X26, X25, [SP,#0x70+var_40]
00022f44: STP             X24, X23, [SP,#0x70+var_30]
00022f48: STP             X22, X21, [SP,#0x70+var_20]
00022f4c: STP             X20, X19, [SP,#0x70+var_10]
00022f50: STP             X29, X30, [SP,#0x70+var_s0]
00022f54: ADD             X29, SP, #0x70
00022f58: STP             X0, X1, [SP,#0x70+var_68]
00022f5c: BL              sub_5A38
00022f60: MOV             W23, #0x7296
00022f64: MOV             W24, #0x6476
00022f68: MOV             W25, #0x5B3A
00022f6c: MOV             W26, #0x2AA0
00022f70: MOV             W27, #0x1DD6
00022f74: MOV             W28, #0x7EE5
00022f78: MOV             W21, #0x859E
00022f7c: MOV             W19, #0x7295
00022f80: MOV             W20, #0x6477
00022f84: MOV             W8, #0x7296
00022f88: STR             W0, [SP,#0x70+var_54]
00022f8c: MOVK            W23, #0xFFCC,LSL#16
00022f90: MOVK            W24, #0xEABB,LSL#16
00022f94: MOVK            W25, #0x94AD,LSL#16
00022f98: MOVK            W26, #0xFCCF,LSL#16
00022f9c: MOVK            W27, #0x44FE,LSL#16
00022fa0: MOVK            W28, #0xB553,LSL#16
00022fa4: MOVK            W21, #0xB9F1,LSL#16
00022fa8: MOVK            W19, #0xFFCC,LSL#16
00022fac: MOVK            W20, #0xEABB,LSL#16
00022fb0: MOVK            W8, #0xFFCC,LSL#16
00022fb4: B               loc_22FD4
00022fb8: MOV             W8, #0xB9F1859E
00022fc0: MOV             W22, #1
00022fc4: B               loc_22FD4
00022fc8: MOV             W8, #0x6477
00022fcc: STR             WZR, [SP,#0x70+var_58]
00022fd0: MOVK            W8, #0xEABB,LSL#16
00022fd4: CMP             W8, W24
00022fd8: B.LE            loc_22FF8
00022fdc: CMP             W8, W19
00022fe0: B.GT            loc_23020
00022fe4: CMP             W8, W20
00022fe8: B.EQ            loc_2306C
00022fec: CMP             W8, W26
00022ff0: B.NE            loc_22FD4
00022ff4: B               loc_22FB8
00022ff8: CMP             W8, W25
00022ffc: B.EQ            loc_23040
00023000: CMP             W8, W28
00023004: B.EQ            loc_22FC8
00023008: CMP             W8, W21
0002300c: B.NE            loc_22FD4
00023010: MOV             W8, #0xEABB6477
00023018: STR             W22, [SP,#0x70+var_58]
0002301c: B               loc_22FD4
00023020: CMP             W8, W27
00023024: B.EQ            loc_2305C
00023028: CMP             W8, W23
0002302c: B.NE            loc_22FD4
00023030: LDR             W8, [SP,#0x70+var_54]
00023034: CMP             W8, #0x16
00023038: CSEL            W8, W28, W25, GT
0002303c: B               loc_22FD4
00023040: LDP             X0, X1, [SP,#0x70+var_68]
00023044: ADRL            X2, qword_F2FC8
0002304c: BL              sub_E364
00023050: CMP             W0, #0
00023054: CSEL            W8, W27, W26, EQ
00023058: B               loc_22FD4
0002305c: MOV             W8, #0x859E
00023060: MOV             W22, WZR
00023064: MOVK            W8, #0xB9F1,LSL#16
00023068: B               loc_22FD4
0002306c: LDR             W0, [SP,#0x70+var_58]
00023070: LDP             X29, X30, [SP,#0x70+var_s0]
00023074: LDP             X20, X19, [SP,#0x70+var_10]
00023078: LDP             X22, X21, [SP,#0x70+var_20]
0002307c: LDP             X24, X23, [SP,#0x70+var_30]
00023080: LDP             X26, X25, [SP,#0x70+var_40]
00023084: LDP             X28, X27, [SP,#0x70+var_50]
00023088: ADD             SP, SP, #0x80
0002308c: RET