00048034: SUB             SP, SP, #0xB0
00048038: STR             D8, [SP,#0xA0+var_60]
0004803c: STP             X28, X27, [SP,#0xA0+var_50]
00048040: STP             X26, X25, [SP,#0xA0+var_40]
00048044: STP             X24, X23, [SP,#0xA0+var_30]
00048048: STP             X22, X21, [SP,#0xA0+var_20]
0004804c: STP             X20, X19, [SP,#0xA0+var_10]
00048050: STP             X29, X30, [SP,#0xA0+var_s0]
00048054: ADD             X29, SP, #0xA0
00048058: MOV             X19, X2
0004805c: MOV             X20, X0
00048060: BL              sub_4852C
00048064: MOV             W21, #0x3D0F
00048068: MOV             W23, #0xA9E9
0004806c: MOV             W28, #0xB93E
00048070: MOV             W24, #0xFDE8
00048074: MOV             W25, #0xAA07
00048078: MOV             W22, #0x11B2
0004807c: MOV             W26, #0x7EAE
00048080: MOV             W8, #0x1427
00048084: MOVK            W21, #0x40D3,LSL#16
00048088: MOVK            W23, #0xF2D9,LSL#16
0004808c: MOVK            W28, #0xC8A3,LSL#16
00048090: MOVK            W24, #0x286F,LSL#16
00048094: MOVK            W25, #0x6375,LSL#16
00048098: MOVK            W22, #0x5764,LSL#16
0004809c: MOVK            W26, #0x6DB3,LSL#16
000480a0: FMOV            D8, #-1.0
000480a4: MOVK            W8, #0x578A,LSL#16
000480a8: STR             X0, [SP,#0xA0+var_90]
000480ac: B               loc_480BC
000480b0: BL              sub_BAB9C
000480b4: MOV             W8, #0x4D1A4E20
000480bc: CMP             W8, W21
000480c0: B.GT            loc_48128
000480c4: CMP             W8, W23
000480c8: B.GT            loc_48174
000480cc: CMP             W8, W28
000480d0: B.GT            loc_481EC
000480d4: MOV             W9, #0xB30ED16A
000480dc: CMP             W8, W9
000480e0: B.EQ            loc_482E4
000480e4: MOV             W9, #0xBADB30DE
000480ec: CMP             W8, W9
000480f0: B.NE            loc_480BC
000480f4: LDR             X8, [SP,#0xA0+var_90]
000480f8: MOV             X0, X20
000480fc: LDR             X1, [X8,#8]
00048100: LDR             X2, [SP,#0xA0+var_58]
00048104: BL              sub_C4A8
00048108: MOV             W27, W0
0004810c: MOV             X0, X20
00048110: BL              sub_B6D0
00048114: ADRP            X1, #byte_F6B3C@PAGE
00048118: SCVTF           D0, W27
0004811c: MOV             X0, X19
00048120: ADD             X1, X1, #byte_F6B3C@PAGEOFF
00048124: B               loc_480B0
00048128: CMP             W8, W25
0004812c: B.GT            loc_481A8
00048130: CMP             W8, W22
00048134: B.GT            loc_48220
00048138: MOV             W9, #0x40D33D10
00048140: CMP             W8, W9
00048144: B.EQ            loc_48304
00048148: MOV             W9, #0x4D1A4E20
00048150: CMP             W8, W9
00048154: B.NE            loc_480BC
00048158: LDR             X1, [SP,#0xA0+var_90]
0004815c: MOV             X0, X20
00048160: BL              sub_10C30
00048164: MOV             W8, #0x1303
00048168: STR             WZR, [SP,#0xA0+var_94]
0004816c: MOVK            W8, #0x79C9,LSL#16
00048170: B               loc_480BC
00048174: CMP             W8, W24
00048178: B.GT            loc_48260
0004817c: MOV             W9, #0xF2D9A9EA
00048184: CMP             W8, W9
00048188: B.EQ            loc_48330
0004818c: MOV             W9, #0x2558E74B
00048194: CMP             W8, W9
00048198: B.NE            loc_480BC
0004819c: MOV             W8, #0x286FFDE9
000481a4: B               loc_480BC
000481a8: CMP             W8, W26
000481ac: B.GT            loc_482C0
000481b0: MOV             W9, #0x6375AA08
000481b8: CMP             W8, W9
000481bc: B.EQ            loc_483A8
000481c0: MOV             W9, #0x67357291
000481c8: CMP             W8, W9
000481cc: B.NE            loc_480BC
000481d0: MOV             X0, X20
000481d4: BL              sub_B6D0
000481d8: ADRP            X1, #byte_F6B3C@PAGE
000481dc: MOV             X0, X19
000481e0: ADD             X1, X1, #byte_F6B3C@PAGEOFF
000481e4: MOV             V0.16B, V8.16B
000481e8: B               loc_480B0
000481ec: MOV             W9, #0xC8A3B93F
000481f4: CMP             W8, W9
000481f8: B.EQ            loc_483F4
000481fc: MOV             W9, #0xE361240D
00048204: CMP             W8, W9
00048208: B.NE            loc_480BC
0004820c: MOV             W8, #0xFFFFFFFF
00048210: STR             W8, [SP,#0xA0+var_94]
00048214: MOV             W8, #0x79C91303
0004821c: B               loc_480BC
00048220: MOV             W9, #0x576411B3
00048228: CMP             W8, W9
0004822c: B.EQ            loc_48438
00048230: MOV             W9, #0x578A1427
00048238: CMP             W8, W9
0004823c: B.NE            loc_480BC
00048240: LDR             X8, [SP,#0xA0+var_90]
00048244: MOV             W9, #0x576411B3
0004824c: CMP             X8, #0
00048250: MOV             W8, #0xE361240D
00048258: CSEL            W8, W8, W9, EQ
0004825c: B               loc_480BC
00048260: MOV             W9, #0x286FFDE9
00048268: CMP             W8, W9
0004826c: B.EQ            loc_4848C
00048270: MOV             W9, #0x37C45250
00048278: CMP             W8, W9
0004827c: B.NE            loc_480BC
00048280: LDR             X8, [SP,#0xA0+var_90]
00048284: MOV             X0, X20
00048288: LDR             X1, [X8,#8]
0004828c: LDR             X2, [SP,#0xA0+var_78]
00048290: BL              sub_BF48
00048294: STR             X0, [SP,#0xA0+var_70]
00048298: LDR             X8, [SP,#0xA0+var_70]
0004829c: MOV             W9, #0x6DB37EAF
000482a4: STR             X8, [SP,#0xA0+var_68]
000482a8: LDR             X8, [SP,#0xA0+var_68]
000482ac: CMP             X8, #0
000482b0: MOV             W8, #0xF2D9A9EA
000482b8: CSEL            W8, W9, W8, EQ
000482bc: B               loc_480BC
000482c0: MOV             W9, #0x6DB37EAF
000482c8: CMP             W8, W9
000482cc: B.EQ            loc_484D8
000482d0: MOV             W9, #0x79C91303
000482d8: CMP             W8, W9
000482dc: B.NE            loc_480BC
000482e0: B               loc_48504
000482e4: MOV             X0, X20
000482e8: BL              sub_B6D0
000482ec: ADRP            X2, #byte_F6B0C@PAGE
000482f0: MOV             X0, X20
000482f4: MOV             X1, X19
000482f8: ADD             X2, X2, #byte_F6B0C@PAGEOFF
000482fc: MOV             X3, XZR
00048300: B               loc_48428
00048304: MOV             X0, X20
00048308: BL              sub_B6D0
0004830c: ADRP            X2, #aGgP4@PAGE; "GG]P4"
00048310: MOV             X0, X20
00048314: MOV             X1, X19
00048318: ADD             X2, X2, #aGgP4@PAGEOFF; "GG]P4"
0004831c: MOV             X3, XZR
00048320: BL              sub_13D7C
00048324: MOV             W8, #0x286FFDE9
0004832c: B               loc_480BC
00048330: LDR             X1, [SP,#0xA0+var_68]
00048334: MOV             X0, X20
00048338: BL              sub_12A7C
0004833c: MOV             X27, X0
00048340: ADRP            X2, #aLn@PAGE; "Ln"
00048344: ADRP            X3, #(aGeePclose+0xA)@PAGE; ""
00048348: MOV             X0, X20
0004834c: MOV             X1, X27
00048350: ADD             X2, X2, #aLn@PAGEOFF; "Ln"
00048354: ADD             X3, X3, #(aGeePclose+0xA)@PAGEOFF; ""
00048358: BL              sub_CF84
0004835c: ADRP            X2, #aGgP4@PAGE; "GG]P4"
00048360: MOV             X3, X0
00048364: MOV             X0, X20
00048368: MOV             X1, X19
0004836c: ADD             X2, X2, #aGgP4@PAGEOFF; "GG]P4"
00048370: BL              sub_13D7C
00048374: LDR             X1, [SP,#0xA0+var_70]
00048378: LDR             X8, [X20]
0004837c: MOV             X0, X20
00048380: LDR             X8, [X8,#0xB8]
00048384: BLR             X8
00048388: LDR             X8, [X20]
0004838c: MOV             X0, X20
00048390: MOV             X1, X27
00048394: LDR             X8, [X8,#0xB8]
00048398: BLR             X8
0004839c: MOV             W8, #0x2558E74B
000483a4: B               loc_480BC
000483a8: LDR             X8, [SP,#0xA0+var_88]
000483ac: LDR             X9, [X20]
000483b0: ADRP            X2, #qword_F6B18@PAGE
000483b4: ADRP            X3, #xmmword_F65F0@PAGE
000483b8: LDR             X1, [X8]
000483bc: LDR             X8, [X9,#0x108]
000483c0: MOV             X0, X20
000483c4: ADD             X2, X2, #qword_F6B18@PAGEOFF
000483c8: ADD             X3, X3, #xmmword_F65F0@PAGEOFF
000483cc: BLR             X8
000483d0: STR             X0, [SP,#0xA0+var_78]
000483d4: LDR             X8, [SP,#0xA0+var_78]
000483d8: MOV             W9, #0x40D33D10
000483e0: CMP             X8, #0
000483e4: MOV             W8, #0x37C45250
000483ec: CSEL            W8, W9, W8, EQ
000483f0: B               loc_480BC
000483f4: LDR             X8, [SP,#0xA0+var_90]
000483f8: MOV             X0, X20
000483fc: LDR             X1, [X8,#8]
00048400: LDR             X2, [SP,#0xA0+var_80]
00048404: BL              sub_BF48
00048408: MOV             X27, X0
0004840c: MOV             X0, X20
00048410: BL              sub_B6D0
00048414: ADRP            X2, #byte_F6B0C@PAGE
00048418: MOV             X0, X20
0004841c: MOV             X1, X19
00048420: ADD             X2, X2, #byte_F6B0C@PAGEOFF
00048424: MOV             X3, X27
00048428: BL              sub_13D7C
0004842c: MOV             W8, #0x6375AA08
00048434: B               loc_480BC
00048438: LDR             X8, [SP,#0xA0+var_90]
0004843c: ADRP            X2, #qword_F6B00@PAGE
00048440: ADRP            X3, #xmmword_F65F0@PAGE
00048444: MOV             X0, X20
00048448: STR             X8, [SP,#0xA0+var_88]
0004844c: LDR             X8, [SP,#0xA0+var_88]
00048450: LDR             X9, [X20]
00048454: ADD             X2, X2, #qword_F6B00@PAGEOFF
00048458: ADD             X3, X3, #xmmword_F65F0@PAGEOFF
0004845c: LDR             X1, [X8]
00048460: LDR             X8, [X9,#0x108]
00048464: BLR             X8
00048468: STR             X0, [SP,#0xA0+var_80]
0004846c: LDR             X8, [SP,#0xA0+var_80]
00048470: MOV             W9, #0xC8A3B93F
00048478: CMP             X8, #0
0004847c: MOV             W8, #0xB30ED16A
00048484: CSEL            W8, W8, W9, EQ
00048488: B               loc_480BC
0004848c: LDR             X8, [SP,#0xA0+var_88]
00048490: LDR             X9, [X20]
00048494: ADRP            X2, #qword_F6B30@PAGE
00048498: ADRP            X3, #byte_F6B38@PAGE
0004849c: LDR             X1, [X8]
000484a0: LDR             X8, [X9,#0x108]
000484a4: MOV             X0, X20
000484a8: ADD             X2, X2, #qword_F6B30@PAGEOFF
000484ac: ADD             X3, X3, #byte_F6B38@PAGEOFF
000484b0: BLR             X8
000484b4: STR             X0, [SP,#0xA0+var_58]
000484b8: LDR             X8, [SP,#0xA0+var_58]
000484bc: MOV             W9, #0x67357291
000484c4: CMP             X8, #0
000484c8: MOV             W8, #0xBADB30DE
000484d0: CSEL            W8, W9, W8, EQ
000484d4: B               loc_480BC
000484d8: MOV             X0, X20
000484dc: BL              sub_B6D0
000484e0: ADRP            X2, #aGgP4@PAGE; "GG]P4"
000484e4: MOV             X0, X20
000484e8: MOV             X1, X19
000484ec: ADD             X2, X2, #aGgP4@PAGEOFF; "GG]P4"
000484f0: MOV             X3, XZR
000484f4: BL              sub_13D7C
000484f8: MOV             W8, #0x2558E74B
00048500: B               loc_480BC
00048504: LDR             W0, [SP,#0xA0+var_94]
00048508: LDP             X29, X30, [SP,#0xA0+var_s0]
0004850c: LDP             X20, X19, [SP,#0xA0+var_10]
00048510: LDP             X22, X21, [SP,#0xA0+var_20]
00048514: LDP             X24, X23, [SP,#0xA0+var_30]
00048518: LDP             X26, X25, [SP,#0xA0+var_40]
0004851c: LDP             X28, X27, [SP,#0xA0+var_50]
00048520: LDR             D8, [SP,#0xA0+var_60]
00048524: ADD             SP, SP, #0xB0
00048528: RET