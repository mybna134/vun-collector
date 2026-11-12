000543fc: STP             X28, X27, [SP,#-0x10+var_50]!
00054400: STP             X26, X25, [SP,#0x50+var_40]
00054404: STP             X24, X23, [SP,#0x50+var_30]
00054408: STP             X22, X21, [SP,#0x50+var_20]
0005440c: STP             X20, X19, [SP,#0x50+var_10]
00054410: STP             X29, X30, [SP,#0x50+var_s0]
00054414: ADD             X29, SP, #0x50
00054418: SUB             SP, SP, #1,LSL#12
0005441c: SUB             SP, SP, #0x180
00054420: STR             X1, [SP,#0x11D0+var_1178]
00054424: MRS             X8, TPIDR_EL0
00054428: STR             X8, [SP,#0x11D0+var_11C8]
0005442c: LDR             X8, [X8,#0x28]
00054430: ADD             X9, SP, #0x11D0+var_10A8
00054434: MOV             W23, #0x5055FE97
00054438: MOV             W23, #0x5055FE97
0005443c: STR             X8, [X9,#0x1048]
00054440: BL              sub_AEC3C
00054444: MOV             W10, #0xD6D6
00054448: MOV             W25, #0x2333
0005444c: MOV             W26, #0xE4B8
00054450: MOV             W27, #0xA887
00054454: MOV             W11, #0x5C05
00054458: MOV             W24, #0xE4B9
0005445c: MOV             W12, #0x8BF5
00054460: MOV             W21, #0x27BC
00054464: MOV             W28, #0xFE96
00054468: MOV             W19, #0x2334
0005446c: MOV             W13, #0x7770
00054470: MOV             W8, #0xA9B2
00054474: MOVK            W10, #0xB431,LSL#16
00054478: MOVK            W25, #0x2FB4,LSL#16
0005447c: MOVK            W26, #0xBABA,LSL#16
00054480: MOVK            W27, #0x801D,LSL#16
00054484: MOVK            W11, #0x2441,LSL#16
00054488: MOVK            W24, #0xBABA,LSL#16
0005448c: MOVK            W12, #0xBB6E,LSL#16
00054490: MOVK            W21, #0x54EC,LSL#16
00054494: MOVK            W28, #0x5055,LSL#16
00054498: MOVK            W19, #0x2FB4,LSL#16
0005449c: MOVK            W13, #0x55CC,LSL#16
000544a0: MOVK            W8, #0x38C7,LSL#16
000544a4: STR             W0, [SP,#0x11D0+var_113C]
000544a8: B               loc_544CC
000544ac: STR             W8, [SP,#0x11D0+var_1158]
000544b0: MOV             W8, #0x89B74FFB
000544b4: MOV             W8, #0x89B74FFB
000544b8: B               loc_544CC
000544bc: LDR             W8, [SP,#0x11D0+var_1124]
000544c0: STR             W8, [SP,#0x11D0+var_1150]
000544c4: MOV             W8, #1
000544c8: B               loc_544AC
000544cc: CMP             W8, W25
000544d0: B.GT            loc_54504
000544d4: CMP             W8, W26
000544d8: B.LE            loc_54534
000544dc: CMP             W8, W24
000544e0: B.EQ            loc_545F8
000544e4: CMP             W8, W12
000544e8: B.EQ            loc_545CC
000544ec: CMP             W8, W11
000544f0: B.NE            loc_544CC
000544f4: MOV             W8, #0xFE97
000544f8: MOV             W22, #1
000544fc: MOVK            W8, #0x5055,LSL#16
00054500: B               loc_544CC
00054504: CMP             W8, W28
00054508: B.LE            loc_54558
0005450c: CMP             W8, W23
00054510: B.EQ            loc_54620
00054514: CMP             W8, W21
00054518: B.EQ            loc_545DC
0005451c: CMP             W8, W13
00054520: B.NE            loc_544CC
00054524: LDR             W8, [SP,#0x11D0+var_1124]
00054528: STR             W8, [SP,#0x11D0+var_1150]
0005452c: LDR             W8, [SP,#0x11D0+var_1128]
00054530: B               loc_544AC
00054534: CMP             W8, W27
00054538: B.EQ            loc_544BC
0005453c: CMP             W8, W10
00054540: B.EQ            loc_54584
00054544: MOV             W9, #0x89B74FFB
00054548: MOV             W9, #0x89B74FFB
0005454c: CMP             W8, W9
00054550: B.NE            loc_544CC
00054554: B               loc_54668
00054558: CMP             W8, W19
0005455c: B.EQ            loc_545BC
00054560: MOV             W9, #0x38C7A9B2
00054564: MOV             W9, #0x38C7A9B2
00054568: CMP             W8, W9
0005456c: B.NE            loc_544CC
00054570: LDR             W8, [SP,#0x11D0+var_113C]
00054574: MOV             W20, WZR
00054578: CMP             W8, #1
0005457c: CSEL            W8, W19, W10, EQ
00054580: B               loc_544CC
00054584: STR             W20, [SP,#0x11D0+var_1128]
00054588: BL              sub_AEF48
0005458c: MOV             W11, #0x5C05
00054590: MOV             W13, #0x7770
00054594: MOV             W12, #0x8BF5
00054598: MOVK            W11, #0x2441,LSL#16
0005459c: MOV             W10, #0xD6D6
000545a0: CMP             W0, #1
000545a4: MOVK            W13, #0x55CC,LSL#16
000545a8: MOVK            W12, #0xBB6E,LSL#16
000545ac: MOVK            W10, #0xB431,LSL#16
000545b0: MOV             W22, WZR
000545b4: CSEL            W8, W11, W23, EQ
000545b8: B               loc_544CC
000545bc: MOV             W8, #0xD6D6
000545c0: MOV             W20, #1
000545c4: MOVK            W8, #0xB431,LSL#16
000545c8: B               loc_544CC
000545cc: LDR             W8, [SP,#0x11D0+var_112C]
000545d0: CMP             W8, #2
000545d4: CSEL            W8, W21, W24, EQ
000545d8: B               loc_544CC
000545dc: LDR             W8, [SP,#0x11D0+var_1128]
000545e0: STR             W8, [SP,#0x11D0+var_1158]
000545e4: MOV             W8, #1
000545e8: STR             W8, [SP,#0x11D0+var_1150]
000545ec: MOV             W8, #0x89B74FFB
000545f0: MOV             W8, #0x89B74FFB
000545f4: B               loc_544CC
000545f8: LDR             W8, [SP,#0x11D0+var_112C]
000545fc: LDR             W9, [SP,#0x11D0+var_1124]
00054600: CMP             W8, #3
00054604: STR             W9, [SP,#0x11D0+var_1150]
00054608: LDR             W9, [SP,#0x11D0+var_1128]
0005460c: MOV             W8, #0x89B74FFB
00054610: MOV             W8, #0x89B74FFB
00054614: CSEL            W8, W27, W8, EQ
00054618: STR             W9, [SP,#0x11D0+var_1158]
0005461c: B               loc_544CC
00054620: STR             W22, [SP,#0x11D0+var_1124]
00054624: BL              sub_BBB14
00054628: STR             X0, [SP,#0x11D0+var_1138]
0005462c: LDR             X0, [SP,#0x11D0+var_1138]
00054630: BL              sub_AF0B4
00054634: STR             W0, [SP,#0x11D0+var_112C]
00054638: LDR             W8, [SP,#0x11D0+var_112C]
0005463c: MOV             W13, #0x7770
00054640: MOV             W12, #0x8BF5
00054644: MOVK            W13, #0x55CC,LSL#16
00054648: MOVK            W12, #0xBB6E,LSL#16
0005464c: MOV             W11, #0x5C05
00054650: MOV             W10, #0xD6D6
00054654: CMP             W8, #1
00054658: MOVK            W11, #0x2441,LSL#16
0005465c: MOVK            W10, #0xB431,LSL#16
00054660: CSEL            W8, W13, W12, EQ
00054664: B               loc_544CC
00054668: LDR             W8, [SP,#0x11D0+var_1158]
0005466c: LDR             X19, [SP,#0x11D0+var_1178]
00054670: ADRP            X1, #byte_F71E8@PAGE ; runtime: 0xf71e8='xpd'
00054674: MOV             W23, #0xBDE4
00054678: SCVTF           D0, W8
0005467c: ADD             X1, X1, #byte_F71E8@PAGEOFF ; runtime: 0xf71e8='xpd'
00054680: MOV             X0, X19
00054684: MOVK            W23, #0xAF8F,LSL#16
00054688: BL              sub_BAB9C
0005468c: LDR             W8, [SP,#0x11D0+var_1150]
00054690: ADRL            X1, byte_F71EC ; runtime: 0xf71ec='sub'
00054694: ADRL            X1, byte_F71EC ; runtime: 0xf71ec='sub'
00054698: MOV             X0, X19
0005469c: SCVTF           D0, W8
000546a0: BL              sub_BAB9C
000546a4: LDR             S0, [SP,#0x11D0+var_112C]
000546a8: ADRL            X1, byte_F71F0 ; runtime: 0xf71f0='slp'
000546ac: ADRL            X1, byte_F71F0 ; runtime: 0xf71f0='slp'
000546b0: MOV             X0, X19
000546b4: SSHLL           V0.2D, V0.2S, #0
000546b8: SCVTF           D0, D0
000546bc: BL              sub_BAB9C
000546c0: LDR             X2, [SP,#0x11D0+var_1138]
000546c4: ADRL            X1, byte_F71F4 ; runtime: 0xf71f4='smp'
000546c8: ADRL            X1, byte_F71F4 ; runtime: 0xf71f4='smp'
000546cc: MOV             X0, X19
000546d0: BL              sub_13984
000546d4: ADRL            X1, byte_F71F8 ; runtime: 0xf71f8='sh'
000546d8: ADRL            X1, byte_F71F8 ; runtime: 0xf71f8='sh'
000546dc: MOV             X0, X19
000546e0: BL              sub_AF828
000546e4: BL              sub_BBB14
000546e8: MOV             X19, X0
000546ec: BL              sub_BB824
000546f0: MOV             W8, #0x1821
000546f4: CMP             X19, #0
000546f8: MOVK            W8, #0x1855,LSL#16
000546fc: CSEL            W8, W23, W8, EQ
00054700: STR             W8, [SP,#0x11D0+var_116C]
00054704: STR             X19, [SP,#0x11D0+var_1158]
00054708: MOV             W10, #0xA585
0005470c: MOV             W11, #0xDE30
00054710: MOV             W12, #0x595F
00054714: MOV             W27, #0xDCE8
00054718: MOV             W21, #0x9FD0
0005471c: MOV             W19, #0x23C
00054720: MOV             W23, #0x1B67
00054724: MOV             W9, #0xA8A4
00054728: STR             X0, [SP,#0x11D0+var_11D0]
0005472c: MOVK            W10, #0x18A4,LSL#16
00054730: MOVK            W11, #0xC9F3,LSL#16
00054734: MOVK            W12, #0x5EE0,LSL#16
00054738: MOVK            W27, #0x70A,LSL#16
0005473c: MOVK            W21, #0xCF41,LSL#16
00054740: MOVK            W19, #0x4A75,LSL#16
00054744: MOVK            W23, #0x9DE,LSL#16
00054748: MOVK            W9, #0xC1A8,LSL#16
0005474c: B               loc_547BC
00054750: MOV             W23, #0x1B67
00054754: CSEL            W9, W9, W8, NE
00054758: MOVK            W23, #0x9DE,LSL#16
0005475c: B               loc_547BC
00054760: LDR             X0, [SP,#0x11D0+var_1158]
00054764: ADRL            X1, byte_F7558 ; runtime: 0xf7558='fgets'
00054768: ADRL            X1, byte_F7558 ; runtime: 0xf7558='fgets'
0005476c: BL              sub_14068
00054770: LDR             W8, [SP,#0x11D0+var_110C]
00054774: MOV             W13, #0x79B7FBDE
00054778: MOV             W13, #0x79B7FBDE
0005477c: MOV             W12, #0x595F
00054780: SUB             W9, W8, W13
00054784: CMP             W8, #2
00054788: ADD             W8, W9, #1
0005478c: ADD             W8, W8, W13