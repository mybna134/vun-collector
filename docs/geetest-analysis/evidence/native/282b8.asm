000282b8: SUB             SP, SP, #0x90
000282bc: STP             X28, X27, [SP,#0x80+var_50]
000282c0: STP             X26, X25, [SP,#0x80+var_40]
000282c4: STP             X24, X23, [SP,#0x80+var_30]
000282c8: STP             X22, X21, [SP,#0x80+var_20]
000282cc: STP             X20, X19, [SP,#0x80+var_10]
000282d0: STP             X29, X30, [SP,#0x80+var_s0]
000282d4: ADD             X29, SP, #0x80
000282d8: STR             X1, [SP,#0x80+var_78]
000282dc: MOV             X20, X0
000282e0: BL              sub_5A38
000282e4: MOV             W22, #0x13CA
000282e8: MOV             W23, #0x1CCC
000282ec: MOV             W28, #0x2087
000282f0: MOV             W21, #0x7A1D
000282f4: MOV             W27, #0x7A1E
000282f8: MOV             W9, #0xCEE9
000282fc: MOVK            W22, #0xED30,LSL#16
00028300: MOVK            W23, #0x9E4F,LSL#16
00028304: MOVK            W28, #0x85DC,LSL#16
00028308: MOVK            W21, #0x4719,LSL#16
0002830c: MOVK            W27, #0x4719,LSL#16
00028310: MOVK            W9, #0xAE18,LSL#16
00028314: STR             W0, [SP,#0x80+var_6C]
00028318: B               loc_28328
0002831c: MOV             X0, X24
00028320: MOV             X1, X19
00028324: MOV             X2, X25
00028328: MOV             W8, W9
0002832c: CMP             W9, W22
00028330: MOV             X25, X2
00028334: MOV             X19, X1
00028338: MOV             X24, X0
0002833c: B.LE            loc_283A0
00028340: CMP             W8, W21
00028344: B.GT            loc_28410
00028348: MOV             W9, #0x3C724569
00028350: CMP             W8, W9
00028354: B.LE            loc_284F0
00028358: MOV             W9, #0x3C72456A
00028360: CMP             W8, W9
00028364: B.EQ            loc_28538
00028368: MOV             W9, #0x3DD59AAB
00028370: CMP             W8, W9
00028374: MOV             X0, X24
00028378: MOV             X1, X19
0002837c: MOV             X2, X25
00028380: MOV             W9, W8
00028384: B.NE            loc_28328
00028388: MOV             W9, #0x4E59
0002838c: MOV             X0, XZR
00028390: MOV             X1, X19
00028394: MOV             X2, X25
00028398: MOVK            W9, #0x109E,LSL#16
0002839c: B               loc_28328
000283a0: CMP             W8, W23
000283a4: B.GT            loc_28470
000283a8: CMP             W8, W28
000283ac: B.EQ            loc_28550
000283b0: MOV             W9, #0x85F1101F
000283b8: CMP             W8, W9
000283bc: MOV             W9, #0x13CB
000283c0: MOV             X0, X24
000283c4: MOV             X1, X25
000283c8: MOV             X2, X25
000283cc: MOVK            W9, #0xED30,LSL#16
000283d0: B.EQ            loc_28328
000283d4: MOV             W9, #0x8D0910C2
000283dc: CMP             W8, W9
000283e0: MOV             X0, X24
000283e4: MOV             X1, X19
000283e8: MOV             X2, X25
000283ec: MOV             W9, W8
000283f0: B.NE            loc_28328
000283f4: MOV             X0, X20
000283f8: BL              sub_B6D0
000283fc: LDR             X1, [SP,#0x80+var_68]
00028400: MOV             X0, X20
00028404: BL              sub_10C30
00028408: MOV             X26, XZR
0002840c: B               loc_28458
00028410: CMP             W8, W27
00028414: B.EQ            loc_28588
00028418: MOV             W9, #0x5EB33D60
00028420: CMP             W8, W9
00028424: B.EQ            loc_285C0
00028428: MOV             W9, #0x78223877
00028430: CMP             W8, W9
00028434: MOV             X0, X24
00028438: MOV             X1, X19
0002843c: MOV             X2, X25
00028440: MOV             W9, W8
00028444: B.NE            loc_28328
00028448: LDR             X1, [SP,#0x80+var_68]
0002844c: MOV             X0, X20
00028450: BL              sub_10C30
00028454: LDR             X26, [SP,#0x80+var_58]
00028458: MOV             W9, #0x1CCD
0002845c: MOV             X0, X24
00028460: MOV             X1, X19
00028464: MOV             X2, X25
00028468: MOVK            W9, #0x9E4F,LSL#16
0002846c: B               loc_28328
00028470: MOV             W9, #0x9E4F1CCD
00028478: CMP             W8, W9
0002847c: MOV             W9, #0x101F
00028480: MOV             X0, X24
00028484: MOV             X1, X19
00028488: MOV             X2, X26
0002848c: MOVK            W9, #0x85F1,LSL#16
00028490: B.EQ            loc_28328
00028494: MOV             W9, #0xAE18CEE9
0002849c: CMP             W8, W9
000284a0: B.EQ            loc_28604
000284a4: MOV             W9, #0xC2697531
000284ac: CMP             W8, W9
000284b0: MOV             X0, X24
000284b4: MOV             X1, X19
000284b8: MOV             X2, X25
000284bc: MOV             W9, W8
000284c0: B.NE            loc_28328
000284c4: MOV             X0, X20
000284c8: BL              sub_B6D0
000284cc: LDR             X1, [SP,#0x80+var_68]
000284d0: MOV             X0, X20
000284d4: BL              sub_10C30
000284d8: MOV             W9, #0x101F
000284dc: MOV             X2, XZR
000284e0: MOV             X0, X24
000284e4: MOV             X1, X19
000284e8: MOVK            W9, #0x85F1,LSL#16
000284ec: B               loc_28328
000284f0: MOV             W9, #0xED3013CB
000284f8: CMP             W8, W9
000284fc: MOV             W9, #0x4E59
00028500: MOV             X0, X19
00028504: MOV             X1, X19
00028508: MOV             X2, X25
0002850c: MOVK            W9, #0x109E,LSL#16
00028510: B.EQ            loc_28328
00028514: MOV             W9, #0x109E4E59
0002851c: CMP             W8, W9
00028520: MOV             X0, X24
00028524: MOV             X1, X19
00028528: MOV             X2, X25
0002852c: MOV             W9, W8
00028530: B.NE            loc_28328
00028534: B               loc_2861C
00028538: MOV             W9, #0x13CB
0002853c: MOV             X1, XZR
00028540: MOV             X0, X24
00028544: MOV             X2, X25
00028548: MOVK            W9, #0xED30,LSL#16
0002854c: B               loc_28328
00028550: LDR             X1, [SP,#0x80+var_78]
00028554: ADRP            X2, #byte_F3468@PAGE
00028558: MOV             X0, X20
0002855c: ADD             X2, X2, #byte_F3468@PAGEOFF
00028560: BL              sub_1723C
00028564: STR             X0, [SP,#0x80+var_68]
00028568: LDR             X8, [SP,#0x80+var_68]
0002856c: MOV             W9, #0x3C72456A
00028574: CMP             X8, #0
00028578: MOV             W8, #0x5EB33D60
00028580: CSEL            W9, W9, W8, EQ
00028584: B               loc_2831C
00028588: LDR             X8, [SP,#0x80+var_68]
0002858c: MOV             X0, X20
00028590: LDR             X1, [X8,#8]
00028594: LDR             X2, [SP,#0x80+var_60]
00028598: BL              sub_BF48
0002859c: STR             X0, [SP,#0x80+var_58]
000285a0: LDR             X8, [SP,#0x80+var_58]
000285a4: MOV             W9, #0x78223877
000285ac: CMP             X8, #0
000285b0: MOV             W8, #0x8D0910C2
000285b8: CSEL            W9, W8, W9, EQ
000285bc: B               loc_2831C
000285c0: LDR             X8, [SP,#0x80+var_68]
000285c4: LDR             X9, [X20]
000285c8: ADRP            X2, #xmmword_F3470@PAGE
000285cc: ADRP            X3, #xmmword_F2CD0@PAGE
000285d0: LDR             X1, [X8]
000285d4: LDR             X8, [X9,#0x108]
000285d8: MOV             X0, X20
000285dc: ADD             X2, X2, #xmmword_F3470@PAGEOFF
000285e0: ADD             X3, X3, #xmmword_F2CD0@PAGEOFF
000285e4: BLR             X8
000285e8: STR             X0, [SP,#0x80+var_60]
000285ec: LDR             X8, [SP,#0x80+var_60]
000285f0: CMP             X8, #0
000285f4: MOV             W8, #0xC2697531
000285fc: CSEL            W9, W8, W27, EQ
00028600: B               loc_2831C
00028604: LDR             W8, [SP,#0x80+var_6C]
00028608: CMP             W8, #0x12
0002860c: MOV             W8, #0x3DD59AAB
00028614: CSEL            W9, W28, W8, GT
00028618: B               loc_2831C
0002861c: MOV             X0, X24
00028620: LDP             X29, X30, [SP,#0x80+var_s0]
00028624: LDP             X20, X19, [SP,#0x80+var_10]
00028628: LDP             X22, X21, [SP,#0x80+var_20]
0002862c: LDP             X24, X23, [SP,#0x80+var_30]
00028630: LDP             X26, X25, [SP,#0x80+var_40]
00028634: LDP             X28, X27, [SP,#0x80+var_50]
00028638: ADD             SP, SP, #0x90
0002863c: RET