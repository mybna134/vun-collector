00043720: SUB             SP, SP, #0x90
00043724: STP             X28, X27, [SP,#0x80+var_50]
00043728: STP             X26, X25, [SP,#0x80+var_40]
0004372c: STP             X24, X23, [SP,#0x80+var_30]
00043730: STP             X22, X21, [SP,#0x80+var_20]
00043734: STP             X20, X19, [SP,#0x80+var_10]
00043738: STP             X29, X30, [SP,#0x80+var_s0]
0004373c: ADD             X29, SP, #0x80
00043740: LDR             X8, [X0]
00043744: MOV             X20, X0
00043748: STR             X1, [SP,#0x80+var_78]
0004374c: LDR             X8, [X8,#0xF8]
00043750: BLR             X8
00043754: MOV             W28, #0x6570
00043758: MOV             W21, #0x101D
0004375c: MOV             W22, #0xDBDF
00043760: MOV             W24, #0x101E
00043764: MOV             W19, #0x9AF3
00043768: MOV             W27, #0x9AF2
0004376c: MOV             W26, #0xF812
00043770: MOV             W9, #0xE3F1
00043774: STR             X0, [SP,#0x80+var_68]
00043778: MOVK            W28, #0x186A,LSL#16
0004377c: MOVK            W21, #0xED8F,LSL#16
00043780: MOVK            W22, #0x9FE9,LSL#16
00043784: MOVK            W24, #0xED8F,LSL#16
00043788: MOVK            W19, #0x56D0,LSL#16
0004378c: MOVK            W27, #0x56D0,LSL#16
00043790: MOVK            W26, #0x6B25,LSL#16
00043794: MOVK            W9, #0x1D28,LSL#16
00043798: B               loc_437A8
0004379c: MOV             W9, #0xDFF8
000437a0: MOV             X0, X23
000437a4: MOVK            W9, #0xFF0D,LSL#16
000437a8: MOV             W8, W9
000437ac: CMP             W9, W28
000437b0: MOV             X23, X0
000437b4: B.LE            loc_43800
000437b8: CMP             W8, W27
000437bc: B.LE            loc_4383C
000437c0: CMP             W8, W19
000437c4: B.EQ            loc_438AC
000437c8: CMP             W8, W26
000437cc: B.EQ            loc_438C8
000437d0: MOV             W9, #0x739EC3DF
000437d8: CMP             W8, W9
000437dc: MOV             X0, X23
000437e0: MOV             W9, W8
000437e4: B.NE            loc_437A8
000437e8: MOV             X0, X20
000437ec: BL              sub_B6D0
000437f0: MOV             W9, #0xD00E
000437f4: MOV             X0, XZR
000437f8: MOVK            W9, #0xEC03,LSL#16
000437fc: B               loc_437A8
00043800: CMP             W8, W21
00043804: B.LE            loc_43884
00043808: CMP             W8, W24
0004380c: B.EQ            loc_4390C
00043810: MOV             W9, #0xF4269F1A
00043818: CMP             W8, W9
0004381c: B.EQ            loc_4393C
00043820: MOV             W9, #0xFF0DDFF8
00043828: CMP             W8, W9
0004382c: MOV             X0, X23
00043830: MOV             W9, W8
00043834: B.NE            loc_437A8
00043838: B               loc_43968
0004383c: MOV             W9, #0x186A6571
00043844: CMP             W8, W9
00043848: MOV             W9, #0xD00E
0004384c: MOV             X0, X25
00043850: MOVK            W9, #0xEC03,LSL#16
00043854: B.EQ            loc_437A8
00043858: MOV             W9, #0x1D28E3F1
00043860: CMP             W8, W9
00043864: MOV             X0, X23
00043868: MOV             W9, W8
0004386c: B.NE            loc_437A8
00043870: LDR             X8, [SP,#0x80+var_68]
00043874: MOV             X0, X23
00043878: CMP             X8, #0
0004387c: CSEL            W9, W22, W26, EQ
00043880: B               loc_437A8
00043884: CMP             W8, W22
00043888: B.EQ            loc_43958
0004388c: MOV             W9, #0xEC03D00E
00043894: CMP             W8, W9
00043898: MOV             X0, X23
0004389c: MOV             W9, W8
000438a0: B.NE            loc_437A8
000438a4: STR             X23, [SP,#0x80+var_70]
000438a8: B               loc_4379C
000438ac: LDR             X1, [SP,#0x80+var_68]
000438b0: LDR             X8, [X20]
000438b4: MOV             X0, X20
000438b8: LDR             X8, [X8,#0xB8]
000438bc: BLR             X8
000438c0: LDR             X25, [SP,#0x80+var_58]
000438c4: B               loc_43948
000438c8: LDR             X1, [SP,#0x80+var_68]
000438cc: LDR             X8, [X20]
000438d0: ADRP            X2, #qword_F65E0@PAGE
000438d4: ADRP            X3, #xmmword_F65F0@PAGE
000438d8: MOV             X0, X20
000438dc: LDR             X8, [X8,#0x108]
000438e0: ADD             X2, X2, #qword_F65E0@PAGEOFF
000438e4: ADD             X3, X3, #xmmword_F65F0@PAGEOFF
000438e8: BLR             X8
000438ec: STR             X0, [SP,#0x80+var_60]
000438f0: LDR             X8, [SP,#0x80+var_60]
000438f4: MOV             X0, X23
000438f8: CMP             X8, #0
000438fc: MOV             W8, #0x739EC3DF
00043904: CSEL            W9, W8, W24, EQ
00043908: B               loc_437A8
0004390c: LDR             X2, [SP,#0x80+var_60]
00043910: LDR             X1, [SP,#0x80+var_78]
00043914: MOV             X0, X20
00043918: BL              sub_BF48
0004391c: STR             X0, [SP,#0x80+var_58]
00043920: LDR             X8, [SP,#0x80+var_58]
00043924: MOV             X0, X23
00043928: CMP             X8, #0
0004392c: MOV             W8, #0xF4269F1A
00043934: CSEL            W9, W8, W19, EQ
00043938: B               loc_437A8
0004393c: MOV             X0, X20
00043940: BL              sub_B6D0
00043944: MOV             X25, XZR
00043948: MOV             W9, #0x6571
0004394c: MOV             X0, X23
00043950: MOVK            W9, #0x186A,LSL#16
00043954: B               loc_437A8
00043958: MOV             X0, X20
0004395c: BL              sub_B6D0
00043960: STR             XZR, [SP,#0x80+var_70]
00043964: B               loc_4379C
00043968: LDR             X0, [SP,#0x80+var_70]
0004396c: LDP             X29, X30, [SP,#0x80+var_s0]
00043970: LDP             X20, X19, [SP,#0x80+var_10]
00043974: LDP             X22, X21, [SP,#0x80+var_20]
00043978: LDP             X24, X23, [SP,#0x80+var_30]
0004397c: LDP             X26, X25, [SP,#0x80+var_40]
00043980: LDP             X28, X27, [SP,#0x80+var_50]
00043984: ADD             SP, SP, #0x90
00043988: RET