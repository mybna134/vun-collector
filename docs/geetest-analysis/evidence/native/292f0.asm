000292f0: STP             X28, X27, [SP,#-0x10+var_50]!
000292f4: STP             X26, X25, [SP,#0x50+var_40]
000292f8: STP             X24, X23, [SP,#0x50+var_30]
000292fc: STP             X22, X21, [SP,#0x50+var_20]
00029300: STP             X20, X19, [SP,#0x50+var_10]
00029304: STP             X29, X30, [SP,#0x50+var_s0]
00029308: ADD             X29, SP, #0x50
0002930c: SUB             SP, SP, #0x1C0
00029310: MRS             X8, TPIDR_EL0
00029314: STP             X8, X0, [SP,#0x210+var_208]
00029318: LDR             X8, [X8,#0x28]
0002931c: ADD             X9, SP, #0x210+var_160
00029320: MOVI            V0.2D, #0
00029324: ADRP            X0, #unk_F38B0@PAGE
00029328: STUR            X8, [X29,#var_60]
0002932c: STP             X9, X9, [SP,#0x210+var_1F8]
00029330: LDR             X8, [SP,#0x210+var_1F8]
00029334: LDR             X8, [SP,#0x210+var_1F8]
00029338: MOV             W23, #0x283E
0002933c: ADD             X0, X0, #unk_F38B0@PAGEOFF
00029340: MOV             W2, #0x100
00029344: STP             Q0, Q0, [X8,#0xE0]
00029348: STP             Q0, Q0, [X8,#0xC0]
0002934c: STP             Q0, Q0, [X8,#0xA0]
00029350: STP             Q0, Q0, [X8,#0x80]
00029354: STP             Q0, Q0, [X8,#0x60]
00029358: STP             Q0, Q0, [X8,#0x40]
0002935c: STP             Q0, Q0, [X8,#0x20]
00029360: STP             Q0, Q0, [X8]
00029364: LDR             X1, [SP,#0x210+var_1F0]
00029368: MOVK            W23, #0x1BA1,LSL#16
0002936c: BL              sub_8E28
00029370: LDR             X0, [SP,#0x210+var_1F0]
00029374: BL              sub_5914
00029378: MOV             W25, #0x56BA
0002937c: MOV             W26, #0x283D
00029380: MOV             W27, #0xB459
00029384: MOV             W20, #0xC030
00029388: MOV             W19, #0xC674
0002938c: MOV             W28, #0xFA11
00029390: MOV             W21, #0x584C
00029394: ADRP            X24, #off_F1008@PAGE
00029398: MOV             W8, #0xFA12
0002939c: MOVK            W25, #0x4BA1,LSL#16
000293a0: MOVK            W26, #0x1BA1,LSL#16
000293a4: MOVK            W27, #0xF7A1,LSL#16
000293a8: MOVK            W20, #0x33F5,LSL#16
000293ac: MOVK            W19, #0x63A,LSL#16
000293b0: MOVK            W28, #0x644C,LSL#16
000293b4: MOVK            W21, #0x547D,LSL#16
000293b8: ADD             X24, X24, #off_F1008@PAGEOFF
000293bc: MOVK            W8, #0x644C,LSL#16
000293c0: STR             W0, [SP,#0x210+var_1E4]
000293c4: B               loc_293FC
000293c8: ADD             X8, SP, #0x210+var_1C0
000293cc: STR             X8, [SP,#0x210+var_1E0]
000293d0: LDR             X8, [SP,#0x210+var_1E0]
000293d4: LDR             X8, [SP,#0x210+var_1E0]
000293d8: LDP             Q0, Q1, [X24]
000293dc: LDP             Q2, Q3, [X24,#(off_F1048 - 0xF1008)]
000293e0: MOV             W22, WZR
000293e4: STP             Q0, Q1, [X8]
000293e8: LDP             Q0, Q1, [X24,#(off_F1028 - 0xF1008)]
000293ec: STP             Q2, Q3, [X8,#0x40]
000293f0: STP             Q0, Q1, [X8,#0x20]
000293f4: MOV             W8, #0x4BA156BB
000293fc: CMP             W8, W25
00029400: B.GT            loc_2942C
00029404: CMP             W8, W26
00029408: B.GT            loc_29450
0002940c: CMP             W8, W27
00029410: B.EQ            loc_294D4
00029414: CMP             W8, W19
00029418: B.NE            loc_293FC
0002941c: LDR             X8, [SP,#0x210+var_1E0]
00029420: MOV             W8, #0x718E95EB
00029428: B               loc_293FC
0002942c: CMP             W8, W28
00029430: B.GT            loc_2947C
00029434: MOV             W9, #0x4BA156BB
0002943c: CMP             W8, W9
00029440: B.EQ            loc_294A0
00029444: CMP             W8, W21
00029448: B.NE            loc_293FC
0002944c: B               loc_293C8
00029450: CMP             W8, W23
00029454: B.EQ            loc_29500
00029458: CMP             W8, W20
0002945c: B.NE            loc_293FC
00029460: LDR             X8, [SP,#0x210+var_1D0]
00029464: LDR             X0, [SP,#0x210+var_200]
00029468: LDR             X1, [X8]
0002946c: BL              sub_14068
00029470: MOV             W8, #0x1BA1283E
00029478: B               loc_293FC
0002947c: MOV             W9, #0x644CFA12
00029484: CMP             W8, W9
00029488: B.EQ            loc_294BC
0002948c: MOV             W9, #0x718E95EB
00029494: CMP             W8, W9
00029498: B.NE            loc_293FC
0002949c: B               loc_29514
000294a0: STR             W22, [SP,#0x210+var_1C4]
000294a4: LDRSW           X8, [SP,#0x210+var_1C4]
000294a8: STR             X8, [SP,#0x210+var_1D8]
000294ac: LDR             X8, [SP,#0x210+var_1D8]
000294b0: CMP             X8, #0xC
000294b4: CSEL            W8, W27, W19, CC
000294b8: B               loc_293FC
000294bc: LDR             W8, [SP,#0x210+var_1E4]
000294c0: CMP             W8, #0
000294c4: MOV             W8, #0x718E95EB
000294cc: CSEL            W8, W21, W8, GT
000294d0: B               loc_293FC
000294d4: LDR             X8, [SP,#0x210+var_1D8]
000294d8: ADD             X9, SP, #0x210+var_1C0
000294dc: ADD             X8, X9, X8,LSL#3
000294e0: STR             X8, [SP,#0x210+var_1D0]
000294e4: LDR             X8, [SP,#0x210+var_1D0]
000294e8: LDR             X1, [X8]
000294ec: LDR             X0, [SP,#0x210+var_1F0]
000294f0: BL              sub_75D4
000294f4: CMP             X0, #0
000294f8: CSEL            W8, W23, W20, EQ
000294fc: B               loc_293FC
00029500: LDR             W8, [SP,#0x210+var_1C4]
00029504: ADD             W22, W8, #1
00029508: MOV             W8, #0x4BA156BB
00029510: B               loc_293FC
00029514: LDR             X8, [SP,#0x210+var_1F8]
00029518: LDR             X8, [SP,#0x210+var_208]
0002951c: LDR             X8, [X8,#0x28]
00029520: LDUR            X9, [X29,#var_60]
00029524: CMP             X8, X9
00029528: B.NE            loc_2954C
0002952c: ADD             SP, SP, #0x1C0
00029530: LDP             X29, X30, [SP,#0x50+var_s0]
00029534: LDP             X20, X19, [SP,#0x50+var_10]
00029538: LDP             X22, X21, [SP,#0x50+var_20]
0002953c: LDP             X24, X23, [SP,#0x50+var_30]
00029540: LDP             X26, X25, [SP,#0x50+var_40]
00029544: LDP             X28, X27, [SP+0x50+var_50],#0x60
00029548: RET
0002954c: BL              .__stack_chk_fail