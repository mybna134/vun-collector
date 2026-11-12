000095f0: SUB             SP, SP, #0x170
000095f4: STP             X28, X27, [SP,#0x160+var_50]
000095f8: STP             X26, X25, [SP,#0x160+var_40]
000095fc: STP             X24, X23, [SP,#0x160+var_30]
00009600: STP             X22, X21, [SP,#0x160+var_20]
00009604: STP             X20, X19, [SP,#0x160+var_10]
00009608: STP             X29, X30, [SP,#0x160+var_s0]
0000960c: ADD             X29, SP, #0x160
00009610: MRS             X8, TPIDR_EL0
00009614: STR             X0, [SP,#0x160+var_150]
00009618: STR             X8, [SP,#0x160+var_148]
0000961c: LDR             X8, [X8,#0x28]
00009620: MOV             W12, #0xE8B1
00009624: MOV             W26, #0xC487
00009628: CMP             X0, #0
0000962c: MOVK            W12, #0x5252,LSL#16
00009630: MOVK            W26, #0x70CE,LSL#16
00009634: MOV             W27, #0x31EC
00009638: MOV             W28, #0x31EB
0000963c: MOV             W21, #0xA14D
00009640: MOV             W22, #0x4FC9
00009644: MOV             W19, #0xA42F
00009648: MOV             W24, #0x93EE
0000964c: MOV             W20, #0x23B0
00009650: MOV             W23, #0xE8B0
00009654: MOV             W25, #0x41ED
00009658: CSEL            W13, W26, W12, EQ
0000965c: STUR            X8, [X29,#var_60]
00009660: MOV             W8, #0x31EC
00009664: MOVK            W27, #0x9FA3,LSL#16
00009668: MOVK            W28, #0x9FA3,LSL#16
0000966c: MOVK            W21, #0x8BF0,LSL#16
00009670: MOVK            W22, #0x955D,LSL#16
00009674: MOVK            W19, #0x979F,LSL#16
00009678: MOVK            W24, #0x293F,LSL#16
0000967c: MOVK            W20, #0x4936,LSL#16
00009680: MOVK            W23, #0x5252,LSL#16
00009684: MOVK            W25, #0x1BB0,LSL#16
00009688: MOVK            W8, #0x9FA3,LSL#16
0000968c: STR             X1, [SP,#0x160+var_140]
00009690: STR             W13, [SP,#0x160+var_154]
00009694: B               loc_96CC
00009698: MOV             W8, #0x8BF0A14D
000096a0: MOV             W9, #1
000096a4: B               loc_96CC
000096a8: MOV             W8, #0x41ED
000096ac: MOV             W0, WZR
000096b0: MOVK            W8, #0x1BB0,LSL#16
000096b4: B               loc_96CC
000096b8: MOV             W8, #0xA14D
000096bc: MOV             W9, WZR
000096c0: MOVK            W8, #0x8BF0,LSL#16
000096c4: B               loc_96CC
000096c8: MOV             W8, W13
000096cc: CMP             W8, W28
000096d0: B.LE            loc_96F0
000096d4: CMP             W8, W23
000096d8: B.GT            loc_9724
000096dc: CMP             W8, W27
000096e0: B.EQ            loc_96C8
000096e4: CMP             W8, W25
000096e8: B.NE            loc_96CC
000096ec: B               loc_9810
000096f0: CMP             W8, W21
000096f4: B.EQ            loc_97F8
000096f8: CMP             W8, W22
000096fc: B.EQ            loc_96B8
00009700: CMP             W8, W19
00009704: B.NE            loc_96CC
00009708: LDR             X8, [SP,#0x160+var_128]
0000970c: MOV             W9, #0x23B0
00009710: MOV             W11, #0x23B0
00009714: MOVK            W9, #0x4936,LSL#16
00009718: MOV             X10, X1
0000971c: MOVK            W11, #0x4936,LSL#16
00009720: B               loc_97E4
00009724: CMP             W8, W26
00009728: B.EQ            loc_96A8
0000972c: CMP             W8, W12
00009730: B.NE            loc_96CC
00009734: SUB             X8, X29, #-var_A0
00009738: STR             X8, [SP,#0x160+var_138]
0000973c: LDR             X8, [SP,#0x160+var_138]
00009740: LDR             X8, [SP,#0x160+var_138]
00009744: MOVI            V0.2D, #0
00009748: ADRL            X1, byte_F2050
00009750: STP             Q0, Q0, [X8,#0x20]
00009754: STP             Q0, Q0, [X8]
00009758: STP             W9, W0, [SP,#0x160+var_15C]
0000975c: SUB             X0, X29, #-var_A0
00009760: BL              sub_6630
00009764: LDR             X1, [SP,#0x160+var_150]
00009768: SUB             X0, X29, #-var_A0
0000976c: BL              sub_6630
00009770: ADRP            X1, #qword_F2058@PAGE
00009774: SUB             X0, X29, #-var_A0
00009778: ADD             X1, X1, #qword_F2058@PAGEOFF
0000977c: BL              sub_6630
00009780: ADD             X9, SP, #0x160+var_120
00009784: STP             X9, X9, [SP,#0x160+var_130]
00009788: LDR             X8, [SP,#0x160+var_130]
0000978c: LDR             X8, [SP,#0x160+var_130]
00009790: MOVI            V0.2D, #0
00009794: SUB             X0, X29, #-var_A0
00009798: MOV             W2, #0x80
0000979c: STP             Q0, Q0, [X8,#0x60]
000097a0: STP             Q0, Q0, [X8,#0x40]
000097a4: STP             Q0, Q0, [X8,#0x20]
000097a8: STP             Q0, Q0, [X8]
000097ac: LDR             X1, [SP,#0x160+var_128]
000097b0: BL              sub_8650
000097b4: LDR             W13, [SP,#0x160+var_154]
000097b8: LDR             X1, [SP,#0x160+var_140]
000097bc: CMP             W0, #0
000097c0: LDP             W9, W0, [SP,#0x160+var_15C]
000097c4: MOV             W12, #0x5252E8B1
000097cc: CSEL            W8, W22, W19, EQ
000097d0: B               loc_96CC
000097d4: LDRB            W11, [X8],#1
000097d8: CMP             W11, #0
000097dc: STRB            W11, [X10],#1
000097e0: CSEL            W11, W24, W9, EQ
000097e4: CMP             W11, W24
000097e8: B.EQ            loc_9698
000097ec: CMP             W11, W20
000097f0: B.NE            loc_97E4
000097f4: B               loc_97D4
000097f8: LDR             X8, [SP,#0x160+var_130]
000097fc: LDR             X8, [SP,#0x160+var_138]
00009800: MOV             W8, #0x1BB041ED
00009808: MOV             W0, W9
0000980c: B               loc_96CC
00009810: LDR             X8, [SP,#0x160+var_148]
00009814: LDR             X8, [X8,#0x28]
00009818: LDUR            X9, [X29,#var_60]
0000981c: CMP             X8, X9
00009820: B.NE            loc_9844
00009824: LDP             X29, X30, [SP,#0x160+var_s0]
00009828: LDP             X20, X19, [SP,#0x160+var_10]
0000982c: LDP             X22, X21, [SP,#0x160+var_20]
00009830: LDP             X24, X23, [SP,#0x160+var_30]
00009834: LDP             X26, X25, [SP,#0x160+var_40]
00009838: LDP             X28, X27, [SP,#0x160+var_50]
0000983c: ADD             SP, SP, #0x170
00009840: RET
00009844: BL              .__stack_chk_fail