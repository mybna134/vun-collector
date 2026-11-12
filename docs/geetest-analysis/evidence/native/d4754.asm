000d4754: SUB             SP, SP, #0x80
000d4758: STP             X28, X27, [SP,#0x70+var_50]
000d475c: STP             X26, X25, [SP,#0x70+var_40]
000d4760: STP             X24, X23, [SP,#0x70+var_30]
000d4764: STP             X22, X21, [SP,#0x70+var_20]
000d4768: STP             X20, X19, [SP,#0x70+var_10]
000d476c: STP             X29, X30, [SP,#0x70+var_s0]
000d4770: ADD             X29, SP, #0x70
000d4774: MOV             W24, #0x7033
000d4778: MOV             X20, X1
000d477c: MOV             X19, X0
000d4780: MOVK            W24, #0x9BDC,LSL#16
000d4784: BL              sub_14D1C
000d4788: STR             X0, [SP,#0x70+var_70]
000d478c: LDR             X1, [SP,#0x70+var_70]
000d4790: ADRL            X2, byte_F7D60
000d4798: MOV             X0, X19
000d479c: BL              sub_150EC
000d47a0: STR             X0, [SP,#0x70+var_68]
000d47a4: LDR             X1, [SP,#0x70+var_68]
000d47a8: MOV             X0, X19
000d47ac: BL              sub_167AC
000d47b0: MOV             W25, #0x297D
000d47b4: MOV             W26, #0x59B9
000d47b8: MOV             W27, #0xF217
000d47bc: MOV             W28, #0xF875
000d47c0: MOV             W22, #0x57B9
000d47c4: MOV             W21, #0x59BA
000d47c8: MOV             W8, #0x297D
000d47cc: MOVK            W25, #0x7F,LSL#16
000d47d0: MOVK            W26, #0xC7DD,LSL#16
000d47d4: MOVK            W27, #0x82F0,LSL#16
000d47d8: MOVK            W28, #0x7959,LSL#16
000d47dc: MOVK            W22, #0xB267,LSL#16
000d47e0: MOVK            W21, #0xC7DD,LSL#16
000d47e4: MOVK            W8, #0x7F,LSL#16
000d47e8: STR             W0, [SP,#0x70+var_5C]
000d47ec: B               loc_D4818
000d47f0: MOV             X0, X19
000d47f4: MOV             X1, X20
000d47f8: BL              sub_169A0
000d47fc: STR             X0, [SP,#0x70+var_58]
000d4800: LDR             X1, [SP,#0x70+var_58]
000d4804: MOV             X0, X19
000d4808: BL              sub_167AC
000d480c: LDR             X23, [SP,#0x70+var_58]
000d4810: CMP             W0, #0
000d4814: CSEL            W8, W28, W24, EQ
000d4818: CMP             W8, W26
000d481c: B.GT            loc_D485C
000d4820: CMP             W8, W27
000d4824: B.EQ            loc_D47F0
000d4828: CMP             W8, W24
000d482c: B.EQ            loc_D48D4
000d4830: CMP             W8, W22
000d4834: B.NE            loc_D4818
000d4838: ADRP            X2, #xmmword_F7D10@PAGE
000d483c: MOV             X0, X19
000d4840: MOV             X1, X20
000d4844: ADD             X2, X2, #xmmword_F7D10@PAGEOFF
000d4848: BL              sub_20930
000d484c: LDR             X23, [SP,#0x70+var_68]
000d4850: CMP             W0, #0
000d4854: CSEL            W8, W24, W27, EQ
000d4858: B               loc_D4818
000d485c: CMP             W8, W21
000d4860: B.EQ            loc_D4888
000d4864: CMP             W8, W28
000d4868: B.EQ            loc_D48B0
000d486c: CMP             W8, W25
000d4870: B.NE            loc_D4818
000d4874: LDR             W8, [SP,#0x70+var_5C]
000d4878: LDR             X23, [SP,#0x70+var_68]
000d487c: CMP             W8, #0
000d4880: CSEL            W8, W24, W22, EQ
000d4884: B               loc_D4818
000d4888: LDR             X1, [SP,#0x70+var_70]
000d488c: LDR             X3, [SP,#0x70+var_58]
000d4890: ADRP            X2, #byte_F7D60@PAGE
000d4894: MOV             X0, X19
000d4898: ADD             X2, X2, #byte_F7D60@PAGEOFF
000d489c: BL              sub_15E4C
000d48a0: LDR             X23, [SP,#0x70+var_58]
000d48a4: MOV             W8, #0x9BDC7033
000d48ac: B               loc_D4818
000d48b0: LDR             X1, [SP,#0x70+var_58]
000d48b4: LDR             X8, [X19]
000d48b8: MOV             X0, X19
000d48bc: LDR             X8, [X8,#0x540]
000d48c0: BLR             X8
000d48c4: LDR             X23, [SP,#0x70+var_58]
000d48c8: CMP             W0, #0xF
000d48cc: CSEL            W8, W21, W24, EQ
000d48d0: B               loc_D4818
000d48d4: LDR             X1, [SP,#0x70+var_70]
000d48d8: LDR             X8, [X19]
000d48dc: MOV             X0, X19
000d48e0: LDR             X8, [X8,#0xB8]
000d48e4: BLR             X8
000d48e8: MOV             X0, X23
000d48ec: LDP             X29, X30, [SP,#0x70+var_s0]
000d48f0: LDP             X20, X19, [SP,#0x70+var_10]
000d48f4: LDP             X22, X21, [SP,#0x70+var_20]
000d48f8: LDP             X24, X23, [SP,#0x70+var_30]
000d48fc: LDP             X26, X25, [SP,#0x70+var_40]
000d4900: LDP             X28, X27, [SP,#0x70+var_50]
000d4904: ADD             SP, SP, #0x80
000d4908: RET