000290b8: SUB             SP, SP, #0x120
000290bc: STP             X28, X27, [SP,#0x110+var_50]
000290c0: STP             X26, X25, [SP,#0x110+var_40]
000290c4: STP             X24, X23, [SP,#0x110+var_30]
000290c8: STP             X22, X21, [SP,#0x110+var_20]
000290cc: STP             X20, X19, [SP,#0x110+var_10]
000290d0: STP             X29, X30, [SP,#0x110+var_s0]
000290d4: ADD             X29, SP, #0x110
000290d8: MRS             X8, TPIDR_EL0
000290dc: STP             X8, X0, [SP,#0x110+var_108]
000290e0: LDR             X8, [X8,#0x28]
000290e4: ADD             X9, SP, #0x110+var_A0
000290e8: MOVI            V0.2D, #0
000290ec: ADRP            X0, #xmmword_F3770@PAGE
000290f0: STUR            X8, [X29,#var_60]
000290f4: STP             X9, X9, [SP,#0x110+var_F8]
000290f8: LDR             X8, [SP,#0x110+var_F8]
000290fc: LDR             X8, [SP,#0x110+var_F8]
00029100: MOV             W23, #0x7154
00029104: ADD             X0, X0, #xmmword_F3770@PAGEOFF
00029108: MOV             W2, #0x40 ; '@'
0002910c: STP             Q0, Q0, [X8,#0x20]
00029110: STP             Q0, Q0, [X8]
00029114: LDR             X1, [SP,#0x110+var_F0]
00029118: MOVK            W23, #0x7455,LSL#16
0002911c: BL              sub_8E28
00029120: LDR             X0, [SP,#0x110+var_F0]
00029124: BL              sub_5914
00029128: MOV             W24, #0xB9C8
0002912c: MOV             W25, #0x220A
00029130: MOV             W26, #0xB9C7
00029134: MOV             W27, #0x220B
00029138: MOV             W28, #0x3AEB
0002913c: MOV             W20, #0xC68A
00029140: MOV             W19, #0xAC6F
00029144: MOV             W21, #0xAC6E
00029148: MOV             W8, #0xB9C8
0002914c: MOVK            W24, #0xFF7F,LSL#16
00029150: MOVK            W25, #0x7B9,LSL#16
00029154: MOVK            W26, #0xFF7F,LSL#16
00029158: MOVK            W27, #0x7B9,LSL#16
0002915c: MOVK            W28, #0x16D,LSL#16
00029160: MOVK            W20, #0x214A,LSL#16
00029164: MOVK            W19, #0x6394,LSL#16
00029168: MOVK            W21, #0x6394,LSL#16
0002916c: MOVK            W8, #0xFF7F,LSL#16
00029170: STR             W0, [SP,#0x110+var_E4]
00029174: B               loc_291A0
00029178: LDR             X8, [SP,#0x110+var_D8]
0002917c: ADD             X9, SP, #0x110+var_C0
00029180: ADD             X8, X9, X8,LSL#3
00029184: STR             X8, [SP,#0x110+var_D0]
00029188: LDR             X8, [SP,#0x110+var_D0]
0002918c: LDR             X1, [X8]
00029190: LDR             X0, [SP,#0x110+var_F0]
00029194: BL              sub_75D4
00029198: CMP             X0, #0
0002919c: CSEL            W8, W23, W19, EQ
000291a0: CMP             W8, W25
000291a4: B.LE            loc_291F0
000291a8: CMP             W8, W21
000291ac: B.GT            loc_2920C
000291b0: CMP             W8, W27
000291b4: B.EQ            loc_29288
000291b8: CMP             W8, W20
000291bc: B.NE            loc_291A0
000291c0: ADD             X8, SP, #0x110+var_C0
000291c4: STR             X8, [SP,#0x110+var_E0]
000291c8: ADRP            X9, #off_F0FE8@PAGE
000291cc: LDR             X8, [SP,#0x110+var_E0]
000291d0: ADD             X9, X9, #off_F0FE8@PAGEOFF
000291d4: LDR             X8, [SP,#0x110+var_E0]
000291d8: LDP             Q0, Q1, [X9]
000291dc: MOV             W22, WZR
000291e0: STP             Q0, Q1, [X8]
000291e4: MOV             W8, #0xC7EFDE03
000291ec: B               loc_291A0
000291f0: CMP             W8, W26
000291f4: B.LE            loc_29230
000291f8: CMP             W8, W24
000291fc: B.EQ            loc_29254
00029200: CMP             W8, W28
00029204: B.NE            loc_291A0
00029208: B               loc_29178
0002920c: CMP             W8, W19
00029210: B.EQ            loc_29298
00029214: CMP             W8, W23
00029218: B.NE            loc_291A0
0002921c: LDR             W8, [SP,#0x110+var_C4]
00029220: ADD             W22, W8, #1
00029224: MOV             W8, #0xC7EFDE03
0002922c: B               loc_291A0
00029230: MOV             W9, #0xC7EFDE03
00029238: CMP             W8, W9
0002923c: B.EQ            loc_2926C
00029240: MOV             W9, #0xA4862077
00029248: CMP             W8, W9
0002924c: B.NE            loc_291A0
00029250: B               loc_292B4
00029254: LDR             W8, [SP,#0x110+var_E4]
00029258: CMP             W8, #0
0002925c: MOV             W8, #0xA4862077
00029264: CSEL            W8, W20, W8, GT
00029268: B               loc_291A0
0002926c: STR             W22, [SP,#0x110+var_C4]
00029270: LDRSW           X8, [SP,#0x110+var_C4]
00029274: STR             X8, [SP,#0x110+var_D8]
00029278: LDR             X8, [SP,#0x110+var_D8]
0002927c: CMP             X8, #4
00029280: CSEL            W8, W28, W27, CC
00029284: B               loc_291A0
00029288: LDR             X8, [SP,#0x110+var_E0]
0002928c: MOV             W8, #0xA4862077
00029294: B               loc_291A0
00029298: LDR             X8, [SP,#0x110+var_D0]
0002929c: LDR             X0, [SP,#0x110+var_100]
000292a0: LDR             X1, [X8]
000292a4: BL              sub_14068
000292a8: MOV             W8, #0x74557154
000292b0: B               loc_291A0
000292b4: LDR             X8, [SP,#0x110+var_F8]
000292b8: LDR             X8, [SP,#0x110+var_108]
000292bc: LDR             X8, [X8,#0x28]
000292c0: LDUR            X9, [X29,#var_60]
000292c4: CMP             X8, X9
000292c8: B.NE            loc_292EC
000292cc: LDP             X29, X30, [SP,#0x110+var_s0]
000292d0: LDP             X20, X19, [SP,#0x110+var_10]
000292d4: LDP             X22, X21, [SP,#0x110+var_20]
000292d8: LDP             X24, X23, [SP,#0x110+var_30]
000292dc: LDP             X26, X25, [SP,#0x110+var_40]
000292e0: LDP             X28, X27, [SP,#0x110+var_50]
000292e4: ADD             SP, SP, #0x120
000292e8: RET
000292ec: BL              .__stack_chk_fail