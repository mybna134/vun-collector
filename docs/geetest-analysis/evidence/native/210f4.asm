000210f4: STP             X28, X27, [SP,#-0x10+var_50]!
000210f8: STP             X26, X25, [SP,#0x50+var_40]
000210fc: STP             X24, X23, [SP,#0x50+var_30]
00021100: STP             X22, X21, [SP,#0x50+var_20]
00021104: STP             X20, X19, [SP,#0x50+var_10]
00021108: STP             X29, X30, [SP,#0x50+var_s0]
0002110c: ADD             X29, SP, #0x50
00021110: SUB             SP, SP, #0x270
00021114: STR             X0, [SP,#0x2C0+var_268]
00021118: MRS             X8, TPIDR_EL0
0002111c: STR             X8, [SP,#0x2C0+var_2B8]
00021120: LDR             X8, [X8,#0x28]
00021124: SUB             X9, X29, #-var_98
00021128: ADD             X10, SP, #0x2C0+var_1E0
0002112c: ADRP            X1, #off_F1750@PAGE
00021130: STR             X8, [X9,#0x30]
00021134: STR             X10, [X9,#0x20]
00021138: LDR             XZR, [X9,#0x20]
0002113c: LDR             X0, [X9,#0x20]; dest
00021140: MOV             W28, #0x85BA
00021144: ADD             X1, X1, #off_F1750@PAGEOFF; src
00021148: MOV             W2, #0x140; n
0002114c: MOVK            W28, #0x7F5C,LSL#16
00021150: BL              .memcpy
00021154: MOV             W11, #0xD970
00021158: MOV             W10, #0x3E88
0002115c: MOV             W25, #0xFDB
00021160: MOV             W26, #0xD96F
00021164: MOV             W27, #0x4684
00021168: MOV             W12, #0xD0BC
0002116c: MOV             W20, #0x6AD2
00021170: MOV             W21, #0x3E87
00021174: MOV             W22, #0xFDC
00021178: MOV             W19, #0xC781
0002117c: MOVK            W11, #0x20E1,LSL#16
00021180: MOVK            W10, #0x7EC9,LSL#16
00021184: MOV             W24, WZR
00021188: MOVK            W25, #0x6C5D,LSL#16
0002118c: MOVK            W26, #0x20E1,LSL#16
00021190: MOVK            W27, #0xA8F5,LSL#16
00021194: MOVK            W12, #0x69C,LSL#16
00021198: MOVK            W20, #0x5B17,LSL#16
0002119c: MOVK            W21, #0x7EC9,LSL#16
000211a0: MOVK            W22, #0x6C5D,LSL#16
000211a4: MOVK            W19, #0x7EAF,LSL#16
000211a8: B               loc_211B4
000211ac: LDR             W8, [SP,#0x2C0+n]
000211b0: ADD             W24, W8, #1
000211b4: MOV             W8, #0x7F5C85BA
000211bc: B               loc_211CC
000211c0: MOV             W8, #0xD970
000211c4: MOV             W23, #1
000211c8: MOVK            W8, #0x20E1,LSL#16
000211cc: CMP             W8, W25
000211d0: B.GT            loc_211FC
000211d4: CMP             W8, W26
000211d8: B.GT            loc_21218
000211dc: CMP             W8, W27
000211e0: B.EQ            loc_212A8
000211e4: CMP             W8, W12
000211e8: B.NE            loc_211CC
000211ec: MOV             W8, #0xD970
000211f0: MOV             W23, #2
000211f4: MOVK            W8, #0x20E1,LSL#16
000211f8: B               loc_211CC
000211fc: CMP             W8, W21
00021200: B.GT            loc_2122C
00021204: CMP             W8, W22
00021208: B.EQ            loc_21240
0002120c: CMP             W8, W19
00021210: B.NE            loc_211CC
00021214: B               loc_211C0
00021218: CMP             W8, W11
0002121c: B.EQ            loc_212B8
00021220: CMP             W8, W20
00021224: B.NE            loc_211CC
00021228: B               loc_211AC
0002122c: CMP             W8, W28
00021230: B.EQ            loc_21288
00021234: CMP             W8, W10
00021238: B.NE            loc_211CC
0002123c: B               loc_212C8
00021240: SUB             X8, X29, #-var_98
00021244: LDR             X8, [X8]
00021248: ADD             X9, SP, #0x2C0+var_1E0
0002124c: MOV             W28, W15
00021250: LDR             X0, [X9,X8,LSL#3]
00021254: BL              sub_8630
00021258: MOV             W12, #0xD0BC
0002125c: MOV             W11, #0xD970
00021260: MOV             W10, #0x3E88
00021264: MOV             W15, W28
00021268: MOV             W28, #0x85BA
0002126c: CMP             W0, #0
00021270: MOVK            W12, #0x69C,LSL#16
00021274: MOVK            W11, #0x20E1,LSL#16
00021278: MOVK            W10, #0x7EC9,LSL#16
0002127c: MOVK            W28, #0x7F5C,LSL#16
00021280: CSEL            W8, W20, W19, EQ
00021284: B               loc_211CC
00021288: STR             W24, [SP,#0x2C0+n]
0002128c: LDRSW           X8, [SP,#0x2C0+n]
00021290: SUB             X9, X29, #-var_98
00021294: STR             X8, [X9]
00021298: LDR             X8, [X9]
0002129c: CMP             X8, #0x28 ; '('
000212a0: CSEL            W8, W22, W12, CC
000212a4: B               loc_211CC
000212a8: MOV             W8, #0x3E88
000212ac: MOV             W15, WZR
000212b0: MOVK            W8, #0x7EC9,LSL#16
000212b4: B               loc_211CC
000212b8: CMP             W23, #2
000212bc: CSEL            W8, W27, W10, EQ
000212c0: MOV             W15, #1
000212c4: B               loc_211CC
000212c8: SUB             X8, X29, #-var_98
000212cc: LDR             XZR, [X8,#0x20]
000212d0: ADRL            X8, byte_F5F90
000212d8: FMOV            D0, X8
000212dc: ADRL            X8, byte_F5FC0
000212e4: FMOV            D2, X8
000212e8: ADRP            X8, #qword_F5F98@PAGE
000212ec: ADRP            X9, #qword_F5FA8@PAGE
000212f0: ADD             X8, X8, #qword_F5F98@PAGEOFF
000212f4: ADD             X9, X9, #qword_F5FA8@PAGEOFF
000212f8: INS             V0.D[1], X8
000212fc: ADRP            X8, #qword_F5FB8@PAGE
00021300: LDR             X25, [SP,#0x2C0+var_268]
00021304: FMOV            D1, X9
00021308: ADD             X8, X8, #qword_F5FB8@PAGEOFF
0002130c: INS             V1.D[1], X8
00021310: ADRL            X8, qword_F5FC8
00021318: MOV             W12, #0xFEE3
0002131c: INS             V2.D[1], X8
00021320: MOV             W8, #0xA6C5
00021324: MOV             W10, #0x7F1A
00021328: MOVK            W12, #0x81BA,LSL#16
0002132c: CMP             X25, #0
00021330: MOVK            W8, #0x812B,LSL#16
00021334: MOV             W0, #0xD3DC
00021338: MOVK            W10, #0xDAB5,LSL#16
0002133c: MOVK            W0, #0x5BB9,LSL#16
00021340: CSEL            W8, W12, W8, EQ
00021344: STR             W8, [SP,#0x2C0+var_22C]
00021348: CSEL            W8, W10, W0, EQ
0002134c: STR             W8, [SP,#0x2C0+var_230]
00021350: MOV             W23, #0x25E6
00021354: MOV             W11, #0x56E3
00021358: MOV             W16, #0xD7F6
0002135c: MOV             W9, #0xB85D
00021360: MOVK            W23, #0xDDE9,LSL#16
00021364: MOVK            W11, #0xA846,LSL#16
00021368: MOV             W13, #0x3F81
0002136c: MOV             W14, #0x20F4
00021370: STR             W15, [SP,#0x2C0+var_214]
00021374: MOV             W15, #0xD910
00021378: MOVK            W16, #0x7693,LSL#16
0002137c: MOV             W17, #0xFD69
00021380: MOVK            W9, #0x50BD,LSL#16
00021384: MOVK            W13, #0x1DB4,LSL#16
00021388: MOVK            W14, #0x840,LSL#16
0002138c: MOVK            W15, #0x8C7D,LSL#16
00021390: MOVK            W17, #0xEAAD,LSL#16
00021394: CSEL            W11, W11, W16, EQ
00021398: CSEL            W9, W23, W9, EQ
0002139c: MOV             W20, #0x7195
000213a0: MOV             W26, #0xFB9B
000213a4: MOV             W19, #0xFB9C
000213a8: MOV             W21, #0x1AAD
000213ac: MOV             W24, #0xCB29
000213b0: MOV             W1, #0x7CF7
000213b4: MOV             W28, #0x90A3
000213b8: MOV             W22, #0x90A4
000213bc: MOV             W27, #0x6AD3
000213c0: CSEL            W13, W13, W15, EQ
000213c4: STR             W11, [SP,#0x2C0+var_228]
000213c8: CSEL            W11, W14, W17, EQ
000213cc: STR             W9, [SP,#0x2C0+var_2AC]
000213d0: MOV             W10, #0x8391
000213d4: MOV             W9, #0x602C
000213d8: MOVK            W20, #0xFCD1,LSL#16
000213dc: STP             Q1, Q0, [SP,#0x2C0+var_290]
000213e0: STR             Q2, [SP,#0x2C0+var_2A0]
000213e4: MOVK            W26, #0x3455,LSL#16
000213e8: MOVK            W19, #0x3455,LSL#16
000213ec: MOVK            W21, #0xE9C4,LSL#16
000213f0: MOVK            W24, #0x7328,LSL#16
000213f4: MOVK            W1, #0x79,LSL#16 ; 'y'
000213f8: MOVK            W28, #0x5A22,LSL#16
000213fc: MOVK            W22, #0x5A22,LSL#16
00021400: MOVK            W27, #0x7C6C,LSL#16
00021404: STP             W11, W13, [SP,#0x2C0+var_2A8]
00021408: MOVK            W10, #0xF4D9,LSL#16
0002140c: MOVK            W9, #0x9FDF,LSL#16
00021410: B               loc_21444
00021414: MOV             W10, #0xF4D98391
0002141c: B               loc_21444
00021420: ADRP            X1, #byte_F2F08@PAGE
00021424: MOV             X0, X25
00021428: ADD             X1, X1, #byte_F2F08@PAGEOFF
0002142c: BL              sub_14068
00021430: MOV             W1, #0x7CF7
00021434: MOV             W9, #0x7F1A
00021438: MOVK            W1, #0x79,LSL#16 ; 'y'
0002143c: MOVK            W9, #0xDAB5,LSL#16
00021440: B               loc_21414
00021444: MOV             W8, W9
00021448: CMP             W9, W10
0002144c: B.GT            loc_214C8
00021450: MOV             W9, #0xA375AD6B
00021458: CMP             W8, W9
0002145c: B.LE            loc_215DC
00021460: MOV             W9, #0xBFC9FB37
00021468: CMP             W8, W9
0002146c: B.LE            loc_21738
00021470: MOV             W9, #0xDDE925E5
00021478: CMP             W8, W9
0002147c: B.LE            loc_21774
00021480: CMP             W8, W23
00021484: B.EQ            loc_21858
00021488: MOV             W9, #0xEAADFD69
00021490: CMP             W8, W9
00021494: MOV             W9, W8
00021498: B.NE            loc_21444
0002149c: ADRP            X1, #byte_F2F14@PAGE
000214a0: MOV             X0, X25
000214a4: ADD             X1, X1, #byte_F2F14@PAGEOFF
000214a8: BL              sub_14068
000214ac: MOV             W1, #0x7CF7
000214b0: MOV             W10, #0x8391
000214b4: MOV             W9, #0x20F4
000214b8: MOVK            W1, #0x79,LSL#16 ; 'y'
000214bc: MOVK            W10, #0xF4D9,LSL#16
000214c0: MOVK            W9, #0x840,LSL#16
000214c4: B               loc_21444
000214c8: MOV             W9, #0x23CDD92A
000214d0: CMP             W8, W9
000214d4: B.GT            loc_21590
000214d8: MOV             W9, #0x1DB43F80
000214e0: CMP             W8, W9
000214e4: B.GT            loc_21634
000214e8: MOV             W9, #0xF4D98392
000214f0: CMP             W8, W9
000214f4: LDR             W9, [SP,#0x2C0+var_228]
000214f8: B.EQ            loc_21444
000214fc: MOV             W9, #0x84020F4
00021504: CMP             W8, W9
00021508: B.EQ            loc_22098
0002150c: MOV             W9, #0xF059A86
00021514: CMP             W8, W9
00021518: MOV             W9, W8
0002151c: B.NE            loc_21444
00021520: SUB             X8, X29, #-var_98
00021524: SUB             X9, X29, #-s
00021528: STR             X9, [X8]
0002152c: LDR             XZR, [X8]
00021530: LDR             X8, [X8]
00021534: ADRP            X0, #a35G@PAGE; " \"3\")!(5$\"G"
00021538: MOV             W2, #0x10
0002153c: ADD             X0, X0, #a35G@PAGEOFF; " \"3\")!(5$\"G"
00021540: STP             XZR, XZR, [X8]
00021544: STR             X9, [SP,#0x2C0+var_1E0]
00021548: LDR             X1, [SP,#0x2C0+var_1E0]
0002154c: BL              sub_8E28
00021550: MOV             W1, #0x7CF7
00021554: MOV             W12, #0xCA52
00021558: MOV             W11, #0x7D34
0002155c: MOV             W10, #0x8391
00021560: MOV             W8, #0x1AAE
00021564: MOV             W9, #0x62C3
00021568: MOV             W13, #0x1AAE
0002156c: MOVK            W1, #0x79,LSL#16 ; 'y'
00021570: MOVK            W12, #0xBCD5,LSL#16
00021574: MOVK            W11, #0x8EC3,LSL#16
00021578: MOVK            W10, #0xF4D9,LSL#16
0002157c: STR             W0, [SP,#0x2C0+n]
00021580: MOVK            W8, #0xE9C4,LSL#16
00021584: MOVK            W9, #0x143B,LSL#16
00021588: MOVK            W13, #0xE9C4,LSL#16
0002158c: B               loc_217A8
00021590: MOV             W9, #0x5BB9D3DB
00021598: CMP             W8, W9
0002159c: B.GT            loc_21674
000215a0: MOV             W9, #0x23CDD92B
000215a8: CMP             W8, W9
000215ac: B.EQ            loc_2186C
000215b0: MOV             W9, #0x50BDB85D
000215b8: CMP             W8, W9
000215bc: B.EQ            loc_220AC
000215c0: MOV             W9, #0x53501467
000215c8: CMP             W8, W9
000215cc: MOV             W9, W8
000215d0: B.NE            loc_21444
000215d4: LDR             W9, [SP,#0x2C0+var_2A8]
000215d8: B               loc_21444
000215dc: MOV             W9, #0x8C7DD90F
000215e4: CMP             W8, W9
000215e8: B.GT            loc_216DC
000215ec: MOV             W9, #0x80319BB3
000215f4: CMP             W8, W9
000215f8: B.EQ            loc_21AA8
000215fc: MOV             W9, #0x812BA6C5
00021604: CMP             W8, W9
00021608: B.EQ            loc_22214
0002160c: MOV             W9, #0x81BAFEE3
00021614: CMP             W8, W9
00021618: MOV             W9, W8
0002161c: B.NE            loc_21444
00021620: MOV             W8, #2
00021624: MOV             W9, #0x9BB3
00021628: STR             W8, [SP,#0x2C0+var_258]
0002162c: MOVK            W9, #0x8031,LSL#16
00021630: B               loc_21444
00021634: MOV             W9, #0x1DB43F81
0002163c: CMP             W8, W9
00021640: B.EQ            loc_21A54
00021644: MOV             W9, #0x1E14E271
0002164c: CMP             W8, W9
00021650: LDR             W9, [SP,#0x2C0+var_22C]
00021654: B.EQ            loc_21444
00021658: MOV             W9, #0x2162F15A
00021660: CMP             W8, W9
00021664: MOV             W9, W8
00021668: B.NE            loc_21444
0002166c: LDR             W9, [SP,#0x2C0+var_2A4]
00021670: B               loc_21444
00021674: MOV             W9, #0x5BB9D3DC
0002167c: CMP             W8, W9
00021680: B.EQ            loc_21420
00021684: MOV             W9, #0x72869002
0002168c: CMP             W8, W9
00021690: B.EQ            loc_220D8
00021694: MOV             W9, #0x7693D7F6
0002169c: MOV             W10, #0x8391
000216a0: CMP             W8, W9
000216a4: MOV             W9, W8
000216a8: MOVK            W10, #0xF4D9,LSL#16
000216ac: B.NE            loc_21444
000216b0: ADRP            X1, #byte_F2F18@PAGE
000216b4: MOV             X0, X25
000216b8: ADD             X1, X1, #byte_F2F18@PAGEOFF
000216bc: BL              sub_14068
000216c0: MOV             W1, #0x7CF7
000216c4: MOV             W10, #0x8391
000216c8: MOV             W9, #0x56E3
000216cc: MOVK            W1, #0x79,LSL#16 ; 'y'
000216d0: MOVK            W10, #0xF4D9,LSL#16
000216d4: MOVK            W9, #0xA846,LSL#16
000216d8: B               loc_21444
000216dc: MOV             W9, #0x8C7DD910
000216e4: CMP             W8, W9
000216e8: B.EQ            loc_2203C
000216ec: MOV             W9, #0x9B09C225
000216f4: CMP             W8, W9
000216f8: LDR             W9, [SP,#0x2C0+var_230]
000216fc: B.EQ            loc_21444
00021700: MOV             W9, #0x9FDF602C
00021708: CMP             W8, W9
0002170c: MOV             W9, W8
00021710: B.NE            loc_21444
00021714: STR             WZR, [SP,#0x2C0+var_24C]
00021718: LDR             W8, [SP,#0x2C0+var_214]
0002171c: MOV             W9, #0x9B09C225
00021724: CMP             W8, #0
00021728: MOV             W8, #0x23CDD92B
00021730: CSEL            W9, W8, W9, EQ
00021734: B               loc_21444
00021738: MOV             W9, #0xA375AD6C
00021740: CMP             W8, W9
00021744: B.EQ            loc_22240
00021748: MOV             W9, #0xA84656E3
00021750: CMP             W8, W9
00021754: B.EQ            loc_22434
00021758: MOV             W9, #0xAD833B08
00021760: CMP             W8, W9
00021764: MOV             W9, W8
00021768: B.NE            loc_21444
0002176c: LDR             W9, [SP,#0x2C0+var_2AC]
00021770: B               loc_21444
00021774: MOV             W9, #0xDAB57F1A
0002177c: CMP             W8, W9
00021780: B.EQ            loc_21844
00021784: MOV             W9, #0xBFC9FB38
0002178c: CMP             W8, W9
00021790: MOV             W9, W8
00021794: B.NE            loc_21444
00021798: B               loc_22448
0002179c: MOV             W8, #0x8EC37D34
000217a4: MOV             W20, #1
000217a8: CMP             W8, W21
000217ac: B.LE            loc_217D8
000217b0: CMP             W8, W24
000217b4: B.EQ            loc_2179C
000217b8: CMP             W8, W9
000217bc: B.EQ            loc_21834
000217c0: CMP             W8, W13
000217c4: B.NE            loc_217A8
000217c8: LDR             W8, [SP,#0x2C0+n]
000217cc: CMP             W8, #0
000217d0: CSEL            W8, W9, W12, EQ
000217d4: B               loc_217A8
000217d8: CMP             W8, W11
000217dc: B.EQ            loc_22400
000217e0: CMP             W8, W12
000217e4: B.NE            loc_217A8
000217e8: LDR             X0, [SP,#0x2C0+var_1E0]
000217ec: ADRL            X1, qword_F6520
000217f4: BL              sub_75D4
000217f8: MOV             W9, #0x62C3
000217fc: MOV             W1, #0x7CF7
00021800: MOV             W13, #0x1AAE
00021804: MOV             W12, #0xCA52
00021808: MOV             W11, #0x7D34
0002180c: MOV             W10, #0x8391
00021810: MOVK            W9, #0x143B,LSL#16
00021814: CMP             X0, #0
00021818: MOVK            W1, #0x79,LSL#16 ; 'y'
0002181c: MOVK            W13, #0xE9C4,LSL#16
00021820: MOVK            W12, #0xBCD5,LSL#16
00021824: MOVK            W11, #0x8EC3,LSL#16
00021828: MOVK            W10, #0xF4D9,LSL#16
0002182c: CSEL            W8, W9, W24, EQ
00021830: B               loc_217A8
00021834: MOV             W8, #0x7D34
00021838: MOV             W20, WZR
0002183c: MOVK            W8, #0x8EC3,LSL#16
00021840: B               loc_217A8
00021844: MOV             W8, #1
00021848: MOV             W9, #0xD92B
0002184c: STR             W8, [SP,#0x2C0+var_24C]
00021850: MOVK            W9, #0x23CD,LSL#16
00021854: B               loc_21444
00021858: MOV             W8, #3
0002185c: MOV             W9, #0x9002
00021860: STR             W8, [SP,#0x2C0+var_224]
00021864: MOVK            W9, #0x7286,LSL#16
00021868: B               loc_21444
0002186c: SUB             X8, X29, #-var_98
00021870: ADD             X9, SP, #0x2C0+var_1E0
00021874: STR             X9, [X8,#0x20]
00021878: ADRL            X9, off_F1890; "r9<)<r9<)<r>20s32.5(;2(s<39/249s.(]"
00021880: LDR             XZR, [X8,#0x20]
00021884: LDR             X8, [X8,#0x20]
00021888: LDP             Q0, Q1, [X9]; "r9<)<r9<)<r>20s32.5(;2(s<39/249s.(]"
0002188c: LDP             Q2, Q3, [X9,#(off_F18D0 - 0xF1890)]; "l'\"7\"l'\"7\"l ,.m0.&'*\"/*-(m,-& /* ("...
00021890: MOV             X11, X9
00021894: MOV             W23, WZR
00021898: STP             Q0, Q1, [X8]
0002189c: LDP             Q0, Q1, [X9,#(off_F18B0 - 0xF1890)]
000218a0: STP             Q2, Q3, [X8,#0x40]
000218a4: LDP             Q2, Q3, [X9,#(off_F1910 - 0xF1890)]
000218a8: STP             Q0, Q1, [X8,#0x20]
000218ac: LDP             Q0, Q1, [X9,#(off_F18F0 - 0xF1890)]
000218b0: STP             Q2, Q3, [X8,#0x80]
000218b4: LDP             Q2, Q3, [X9,#(off_F1950 - 0xF1890)]
000218b8: LDR             X9, [X9,#(off_F1970 - 0xF1890)]; xmmword_F64C0
000218bc: STP             Q0, Q1, [X8,#0x60]
000218c0: LDP             Q0, Q1, [X11,#(off_F1930 - 0xF1890)]
000218c4: STP             Q2, Q3, [X8,#0xC0]
000218c8: STR             X9, [X8,#0xE0]
000218cc: STP             Q0, Q1, [X8,#0xA0]
000218d0: B               loc_218DC
000218d4: LDR             W8, [SP,#0x2C0+n]
000218d8: ADD             W23, W8, #1
000218dc: MOV             W8, #0xEA31D414
000218e4: B               loc_218F4
000218e8: MOV             W8, #0x66EA
000218ec: MOV             W20, WZR
000218f0: MOVK            W8, #0x6B00,LSL#16
000218f4: CMP             W8, W1
000218f8: B.GT            loc_2193C
000218fc: MOV             W9, #0xBB9D2422
00021904: CMP             W8, W9
00021908: B.GT            loc_21970
0002190c: MOV             W9, #0x8E0D715B
00021914: CMP             W8, W9
00021918: B.EQ            loc_21A44
0002191c: MOV             W9, #0xB8A9A133
00021924: CMP             W8, W9
00021928: B.NE            loc_218F4
0002192c: MOV             W8, #0x65C7
00021930: MOV             W25, #2
00021934: MOVK            W8, #0x47B3,LSL#16
00021938: B               loc_218F4
0002193c: MOV             W9, #0x47B365C6
00021944: CMP             W8, W9
00021948: B.GT            loc_219C0
0002194c: MOV             W9, #0x797CF8
00021954: CMP             W8, W9
00021958: B.EQ            loc_219E4
0002195c: MOV             W9, #0x1AF82693
00021964: CMP             W8, W9
00021968: B.NE            loc_218F4
0002196c: B               loc_218E8
00021970: MOV             W9, #0xBB9D2423
00021978: CMP             W8, W9
0002197c: B.EQ            loc_218D4
00021980: MOV             W9, #0xEA31D414
00021988: CMP             W8, W9
0002198c: B.NE            loc_218F4
00021990: STR             W23, [SP,#0x2C0+n]
00021994: LDRSW           X8, [SP,#0x2C0+n]
00021998: SUB             X9, X29, #-var_98
0002199c: STR             X8, [X9]
000219a0: LDR             X8, [X9]
000219a4: MOV             W9, #0x797CF8
000219ac: CMP             X8, #0x1D
000219b0: MOV             W8, #0xB8A9A133
000219b8: CSEL            W8, W9, W8, CC
000219bc: B               loc_218F4
000219c0: MOV             W9, #0x47B365C7
000219c8: CMP             W8, W9
000219cc: B.EQ            loc_21A24
000219d0: MOV             W9, #0x6B0066EA
000219d8: CMP             W8, W9
000219dc: B.NE            loc_218F4
000219e0: B               loc_21A68
000219e4: SUB             X8, X29, #-var_98
000219e8: LDR             X8, [X8]
000219ec: ADD             X9, SP, #0x2C0+var_1E0
000219f0: LDR             X0, [X9,X8,LSL#3]
000219f4: BL              sub_8630
000219f8: MOV             W8, #0x715B
000219fc: MOV             W9, #0x2423
00021a00: MOV             W1, #0x7CF7
00021a04: MOV             W10, #0x8391
00021a08: CMP             W0, #0
00021a0c: MOVK            W8, #0x8E0D,LSL#16
00021a10: MOVK            W9, #0xBB9D,LSL#16
00021a14: MOVK            W1, #0x79,LSL#16 ; 'y'
00021a18: MOVK            W10, #0xF4D9,LSL#16
00021a1c: CSEL            W8, W9, W8, EQ
00021a20: B               loc_218F4
00021a24: MOV             W8, #0x66EA
00021a28: MOV             W9, #0x2693
00021a2c: CMP             W25, #2
00021a30: MOVK            W8, #0x6B00,LSL#16
00021a34: MOVK            W9, #0x1AF8,LSL#16
00021a38: CSEL            W8, W9, W8, EQ
00021a3c: MOV             W20, #1
00021a40: B               loc_218F4
00021a44: MOV             W8, #0x65C7
00021a48: MOV             W25, #1
00021a4c: MOVK            W8, #0x47B3,LSL#16
00021a50: B               loc_218F4
00021a54: MOV             W8, #6
00021a58: MOV             W9, #0xFB38
00021a5c: STR             W8, [SP,#0x2C0+var_25C]
00021a60: MOVK            W9, #0xBFC9,LSL#16
00021a64: B               loc_21444
00021a68: SUB             X8, X29, #-var_98
00021a6c: LDR             XZR, [X8,#0x20]
00021a70: MOV             W8, #0x9BB3
00021a74: MOV             W9, #0xE271
00021a78: CMP             W20, #0
00021a7c: MOVK            W8, #0x8031,LSL#16
00021a80: MOVK            W9, #0x1E14,LSL#16
00021a84: CSEL            W9, W8, W9, EQ
00021a88: LDR             W8, [SP,#0x2C0+var_24C]
00021a8c: LDR             X25, [SP,#0x2C0+var_268]
00021a90: MOV             W20, #0x7195
00021a94: MOV             W23, #0x25E6
00021a98: STR             W8, [SP,#0x2C0+var_258]
00021a9c: MOVK            W20, #0xFCD1,LSL#16
00021aa0: MOVK            W23, #0xDDE9,LSL#16
00021aa4: B               loc_21444
00021aa8: ADD             X8, SP, #0x2C0+var_1E0
00021aac: STR             X8, [SP,#0x2C0+var_200]
00021ab0: LDR             X8, [SP,#0x2C0+var_200]
00021ab4: LDR             X8, [SP,#0x2C0+var_200]
00021ab8: MOVI            V0.2D, #0
00021abc: ADRP            X0, #aL31L0L670c@PAGE; "l31, l0&/%l.,6-70C"
00021ac0: ADRP            X1, #aL@PAGE; ">L"
00021ac4: STP             Q0, Q0, [X8,#0x10]
00021ac8: STR             Q0, [X8]
00021acc: LDR             Q0, [SP,#0x2C0+var_280]
00021ad0: ADD             X0, X0, #aL31L0L670c@PAGEOFF; "l31, l0&/%l.,6-70C"
00021ad4: ADD             X1, X1, #aL@PAGEOFF; ">L"
00021ad8: STR             Q0, [SP,#0x2C0+var_1E0]
00021adc: LDR             Q0, [SP,#0x2C0+var_2A0]
00021ae0: STR             Q0, [SP,#0x2C0+var_1C0]
00021ae4: LDR             Q0, [SP,#0x2C0+var_290]
00021ae8: STR             Q0, [SP,#0x2C0+var_1D0]
00021aec: BL              .fopen
00021af0: MOV             W1, #0x7CF7
00021af4: MOV             W9, #0x2F20
00021af8: MOVK            W1, #0x79,LSL#16 ; 'y'
00021afc: MOVK            W9, #0xF133,LSL#16
00021b00: STR             X0, [SP,#0x2C0+stream]
00021b04: B               loc_21B10
00021b08: CSEL            W9, W8, W9, EQ
00021b0c: MOV             W8, W23
00021b10: MOV             W10, W9
00021b14: MOV             W9, #0xFCD17194
00021b1c: CMP             W10, W9
00021b20: MOV             W23, W8
00021b24: B.LE            loc_21BB8
00021b28: MOV             W8, #0x3E429A08
00021b30: CMP             W10, W8
00021b34: B.LE            loc_21C50
00021b38: MOV             W8, #0x57B50931
00021b40: CMP             W10, W8
00021b44: B.GT            loc_21D88
00021b48: MOV             W8, #0x3E429A09
00021b50: CMP             W10, W8
00021b54: B.EQ            loc_21F48
00021b58: MOV             W8, #0x5255FB80
00021b60: CMP             W10, W8
00021b64: B.EQ            loc_21FCC
00021b68: MOV             W8, #0x536BB447
00021b70: CMP             W10, W8
00021b74: MOV             W8, W23
00021b78: MOV             W9, W10
00021b7c: B.NE            loc_21B10
00021b80: SUB             X9, X29, #-var_98
00021b84: LDR             X8, [X9]
00021b88: ADD             X10, SP, #0x2C0+var_1E0
00021b8c: LDR             X1, [X10,X8,LSL#3]
00021b90: LDR             X0, [X9,#0x20]
00021b94: BL              sub_75D4
00021b98: MOV             W1, #0x7CF7
00021b9c: MOV             W8, #0x1587
00021ba0: MOV             W9, #0x932
00021ba4: MOVK            W1, #0x79,LSL#16 ; 'y'
00021ba8: CMP             X0, #0
00021bac: MOVK            W8, #0xA05F,LSL#16
00021bb0: MOVK            W9, #0x57B5,LSL#16
00021bb4: B               loc_21B08
00021bb8: MOV             W8, #0xDD9903F7
00021bc0: CMP             W10, W8
00021bc4: B.LE            loc_21CB4
00021bc8: MOV             W8, #0xF064F11A
00021bd0: CMP             W10, W8
00021bd4: B.GT            loc_21D1C
00021bd8: MOV             W8, #0xDD9903F8
00021be0: CMP             W10, W8
00021be4: B.EQ            loc_21E70
00021be8: MOV             W8, #0xE405AC07
00021bf0: CMP             W10, W8
00021bf4: B.EQ            loc_21EB4
00021bf8: MOV             W8, #0xE47931EC
00021c00: CMP             W10, W8
00021c04: MOV             W8, W23
00021c08: MOV             W9, W10
00021c0c: B.NE            loc_21B10
00021c10: LDR             W8, [SP,#0x2C0+var_248]
00021c14: SUB             X9, X29, #-var_98
00021c18: STR             W8, [SP,#0x2C0+var_210]
00021c1c: LDR             W8, [SP,#0x2C0+var_248+4]
00021c20: STR             W8, [SP,#0x2C0+var_1E4]
00021c24: LDRSW           X8, [SP,#0x2C0+var_210]
00021c28: STR             X8, [X9]
00021c2c: LDR             X8, [X9]
00021c30: MOV             W9, #0x536BB447
00021c38: CMP             X8, #6
00021c3c: MOV             W8, #0x1A374C81
00021c44: CSEL            W9, W9, W8, CC
00021c48: MOV             W8, W23
00021c4c: B               loc_21B10
00021c50: MOV             W8, #0x1A374C80
00021c58: CMP             W10, W8
00021c5c: B.GT            loc_21DD0
00021c60: LDR             W8, [SP,#0x2C0+var_224]
00021c64: MOV             W9, #0x4697
00021c68: CMP             W10, W20
00021c6c: MOVK            W9, #0x1BCE,LSL#16
00021c70: B.EQ            loc_21B10
00021c74: MOV             W8, #0x375E90A
00021c7c: CMP             W10, W8
00021c80: B.EQ            loc_21EF8
00021c84: MOV             W8, #0x181BB53E
00021c8c: CMP             W10, W8
00021c90: MOV             W8, W23
00021c94: MOV             W9, W10
00021c98: B.NE            loc_21B10
00021c9c: LDR             W8, [SP,#0x2C0+var_234]
00021ca0: MOV             W9, #0x37A57305
00021ca8: STRB            W8, [SP,#0x2C0+var_20C]
00021cac: MOV             W8, W23
00021cb0: B               loc_21B10
00021cb4: MOV             W8, #0xA17DF05E
00021cbc: CMP             W10, W8
00021cc0: B.LE            loc_21E0C
00021cc4: MOV             W8, #0xA17DF05F
00021ccc: CMP             W10, W8
00021cd0: B.EQ            loc_22008
00021cd4: MOV             W8, #0xD3487BCC
00021cdc: CMP             W10, W8
00021ce0: B.EQ            loc_22028
00021ce4: MOV             W8, #0xD74461AA
00021cec: CMP             W10, W8
00021cf0: MOV             W8, W23
00021cf4: MOV             W9, W10
00021cf8: B.NE            loc_21B10
00021cfc: LDR             X0, [SP,#0x2C0+stream]; stream
00021d00: BL              .fclose
00021d04: MOV             W1, #0x7CF7
00021d08: MOV             W9, #0xE90A
00021d0c: MOVK            W1, #0x79,LSL#16 ; 'y'
00021d10: MOVK            W9, #0x375,LSL#16
00021d14: MOV             W8, W23
00021d18: B               loc_21B10
00021d1c: MOV             W8, #0xF064F11B
00021d24: CMP             W10, W8
00021d28: B.EQ            loc_21E80
00021d2c: MOV             W8, #0xF1332F20
00021d34: CMP             W10, W8
00021d38: B.EQ            loc_21EDC
00021d3c: MOV             W8, #0xF41427D4
00021d44: CMP             W10, W8
00021d48: MOV             W8, W23
00021d4c: MOV             W9, W10
00021d50: B.NE            loc_21B10
00021d54: LDR             W8, [SP,#0x2C0+var_240]
00021d58: MOV             W9, #0x5255FB80
00021d60: STR             W8, [SP,#0x2C0+var_208]
00021d64: LDR             W8, [SP,#0x2C0+var_208]
00021d68: STR             W8, [SP,#0x2C0+var_238]
00021d6c: LDR             W8, [SP,#0x2C0+var_23C]
00021d70: CMP             W8, #0
00021d74: MOV             W8, #0xE405AC07
00021d7c: CSEL            W9, W9, W8, EQ
00021d80: MOV             W8, W23
00021d84: B               loc_21B10
00021d88: MOV             W8, #0x57B50932
00021d90: CMP             W10, W8
00021d94: B.EQ            loc_21FA8
00021d98: MOV             W8, #0x59FB2D31
00021da0: CMP             W10, W8
00021da4: B.EQ            loc_21FF0
00021da8: MOV             W8, #0x6D580DBC
00021db0: CMP             W10, W8
00021db4: MOV             W8, W23
00021db8: MOV             W9, W10
00021dbc: B.NE            loc_21B10
00021dc0: MOV             W9, #0xD74461AA
00021dc8: MOV             W8, W23
00021dcc: B               loc_21B10
00021dd0: MOV             W8, #0x1A374C81
00021dd8: CMP             W10, W8
00021ddc: B.EQ            loc_21F30
00021de0: MOV             W8, #0x37A57305
00021de8: CMP             W10, W8
00021dec: B.EQ            loc_21E4C
00021df0: MOV             W8, #0x1BCE4697
00021df8: CMP             W10, W8
00021dfc: MOV             W8, W23
00021e00: MOV             W9, W10
00021e04: B.NE            loc_21B10
00021e08: B               loc_22068
00021e0c: MOV             W8, #0x8A24B05C
00021e14: CMP             W10, W8
00021e18: B.EQ            loc_21F20
00021e1c: MOV             W8, #0xA05F1587
00021e24: CMP             W10, W8
00021e28: MOV             W8, W23
00021e2c: MOV             W9, W10
00021e30: B.NE            loc_21B10
00021e34: LDR             W8, [SP,#0x2C0+var_1E4]
00021e38: MOV             W9, #0xF41427D4
00021e40: STP             W8, WZR, [SP,#0x2C0+var_240]
00021e44: MOV             W8, W23
00021e48: B               loc_21B10
00021e4c: SUB             X8, X29, #-var_98
00021e50: LDR             X0, [X8,#0x20]; ptr
00021e54: BL              .free
00021e58: MOV             W1, #0x7CF7
00021e5c: MOV             W9, #0xDBC
00021e60: MOVK            W1, #0x79,LSL#16 ; 'y'
00021e64: MOVK            W9, #0x6D58,LSL#16
00021e68: MOV             W8, W23
00021e6c: B               loc_21B10
00021e70: MOV             W9, #0x4697
00021e74: MOV             W8, WZR
00021e78: MOVK            W9, #0x1BCE,LSL#16
00021e7c: B               loc_21B10
00021e80: SUB             X8, X29, #-var_98
00021e84: LDR             X3, [SP,#0x2C0+stream]; stream
00021e88: LDR             X2, [SP,#0x2C0+n]; n
00021e8c: LDR             X0, [X8,#0x20]; ptr
00021e90: MOV             W1, #1; size
00021e94: BL              .fread
00021e98: MOV             W1, #0x7CF7
00021e9c: MOV             W9, #0x31EC
00021ea0: MOVK            W1, #0x79,LSL#16 ; 'y'
00021ea4: STR             XZR, [SP,#0x2C0+var_248]
00021ea8: MOV             W8, W23
00021eac: MOVK            W9, #0xE479,LSL#16
00021eb0: B               loc_21B10
00021eb4: LDR             W8, [SP,#0x2C0+var_238]
00021eb8: MOV             W9, #0x59FB2D31
00021ec0: STR             WZR, [SP,#0x2C0+var_234]
00021ec4: CMP             W8, #0
00021ec8: MOV             W8, #0x181BB53E
00021ed0: CSEL            W9, W9, W8, GT
00021ed4: MOV             W8, W23
00021ed8: B               loc_21B10
00021edc: LDR             X8, [SP,#0x2C0+stream]
00021ee0: MOV             W9, #0x3E429A09
00021ee8: CMP             X8, #0
00021eec: MOV             W8, #0xDD9903F8
00021ef4: B               loc_21B08
00021ef8: LDRB            W9, [SP,#0x2C0+var_20C]
00021efc: MOV             W8, W23
00021f00: EOR             W10, W9, #0xFE
00021f04: AND             W9, W10, W9
00021f08: TST             W9, #0xFF
00021f0c: CSET            W9, NE
00021f10: STR             W9, [SP,#0x2C0+var_224]
00021f14: MOV             W9, #0xFCD17195
00021f1c: B               loc_21B10
00021f20: MOV             W9, #0xA17DF05F
00021f28: MOV             W8, W23
00021f2c: B               loc_21B10
00021f30: LDR             W8, [SP,#0x2C0+var_1E4]
00021f34: MOV             W9, #0xE405AC07
00021f3c: STR             W8, [SP,#0x2C0+var_238]
00021f40: MOV             W8, W23
00021f44: B               loc_21B10
00021f48: LDR             X0, [SP,#0x2C0+stream]; stream
00021f4c: MOV             W2, #2; whence
00021f50: MOV             X1, XZR; off
00021f54: BL              .fseek
00021f58: LDR             X0, [SP,#0x2C0+stream]; stream
00021f5c: BL              .ftell
00021f60: CMP             X0, #0
00021f64: MOV             W8, #0x4E20
00021f68: CSEL            X8, X8, X0, EQ
00021f6c: STR             X8, [SP,#0x2C0+n]
00021f70: LDR             X0, [SP,#0x2C0+n]; nmemb
00021f74: MOV             W1, #1; size
00021f78: BL              .calloc
00021f7c: SUB             X8, X29, #-var_98
00021f80: STR             X0, [X8,#0x20]
00021f84: LDR             X8, [X8,#0x20]
00021f88: MOV             W1, #0x7CF7
00021f8c: MOV             W9, #0xF11B
00021f90: MOVK            W1, #0x79,LSL#16 ; 'y'
00021f94: CMP             X8, #0
00021f98: MOV             W8, #0x8A24B05C
00021fa0: MOVK            W9, #0xF064,LSL#16
00021fa4: B               loc_21B08
00021fa8: LDR             W9, [SP,#0x2C0+var_1E4]
00021fac: MOV             W8, #2
00021fb0: STR             W8, [SP,#0x2C0+var_23C]
00021fb4: MOV             W8, W23
00021fb8: ADD             W9, W9, #1
00021fbc: STR             W9, [SP,#0x2C0+var_240]
00021fc0: MOV             W9, #0xF41427D4
00021fc8: B               loc_21B10
00021fcc: LDR             W9, [SP,#0x2C0+var_210]
00021fd0: LDR             W8, [SP,#0x2C0+var_208]
00021fd4: ADD             W9, W9, #1
00021fd8: STR             W9, [SP,#0x2C0+var_248]
00021fdc: MOV             W9, #0x31EC
00021fe0: STR             W8, [SP,#0x2C0+var_248+4]
00021fe4: MOV             W8, W23
00021fe8: MOVK            W9, #0xE479,LSL#16
00021fec: B               loc_21B10
00021ff0: MOV             W8, #1
00021ff4: MOV             W9, #0xB53E
00021ff8: STR             W8, [SP,#0x2C0+var_234]
00021ffc: MOV             W8, W23
00022000: MOVK            W9, #0x181B,LSL#16
00022004: B               loc_21B10
00022008: LDR             X0, [SP,#0x2C0+stream]; stream
0002200c: BL              .fclose
00022010: MOV             W1, #0x7CF7
00022014: MOV             W9, #0x7BCC
00022018: MOVK            W1, #0x79,LSL#16 ; 'y'
0002201c: MOVK            W9, #0xD348,LSL#16
00022020: MOV             W8, W23
00022024: B               loc_21B10
00022028: MOV             W9, #0x7195
0002202c: STR             WZR, [SP,#0x2C0+var_224]
00022030: MOV             W8, W23
00022034: MOVK            W9, #0xFCD1,LSL#16
00022038: B               loc_21B10
0002203c: ADRP            X1, #byte_F2F1C@PAGE
00022040: MOV             X0, X25
00022044: ADD             X1, X1, #byte_F2F1C@PAGEOFF
00022048: BL              sub_14068
0002204c: MOV             W1, #0x7CF7
00022050: MOV             W10, #0x8391
00022054: MOV             W9, #0x3F81
00022058: MOVK            W1, #0x79,LSL#16 ; 'y'
0002205c: MOVK            W10, #0xF4D9,LSL#16
00022060: MOVK            W9, #0x1DB4,LSL#16
00022064: B               loc_21444
00022068: LDR             X8, [SP,#0x2C0+var_200]
0002206c: MOV             W8, #0x9002
00022070: MOV             W9, #0x3B08
00022074: TST             W23, #1
00022078: MOVK            W8, #0x7286,LSL#16
0002207c: MOVK            W9, #0xAD83,LSL#16
00022080: CSEL            W9, W9, W8, NE
00022084: LDR             W8, [SP,#0x2C0+var_258]
00022088: MOV             W23, #0xDDE925E6
00022090: STR             W8, [SP,#0x2C0+var_224]
00022094: B               loc_21414
00022098: MOV             W8, #4
0002209c: MOV             W9, #0xAD6C
000220a0: STR             W8, [SP,#0x2C0+var_250]
000220a4: MOVK            W9, #0xA375,LSL#16
000220a8: B               loc_21444
000220ac: ADRP            X1, #byte_F2F10@PAGE
000220b0: MOV             X0, X25
000220b4: ADD             X1, X1, #byte_F2F10@PAGEOFF
000220b8: BL              sub_14068
000220bc: MOV             W1, #0x7CF7
000220c0: MOV             W10, #0x8391
000220c4: MOV             W9, #0x25E6
000220c8: MOVK            W1, #0x79,LSL#16 ; 'y'
000220cc: MOVK            W10, #0xF4D9,LSL#16
000220d0: MOVK            W9, #0xDDE9,LSL#16
000220d4: B               loc_21444
000220d8: SUB             X8, X29, #-var_98
000220dc: ADD             X9, SP, #0x2C0+var_1E0
000220e0: STR             X9, [X8,#0x20]
000220e4: LDR             XZR, [X8,#0x20]
000220e8: STR             X9, [X8]
000220ec: LDR             X1, [X8]
000220f0: ADRL            X0, xmmword_F64E0
000220f8: BL              .__system_property_get
000220fc: MOV             W12, #0xA6F1
00022100: MOV             W1, #0x7CF7
00022104: MOV             W8, #0xE855
00022108: MOV             W9, #0x4C43
0002210c: MOV             W10, #0x8391
00022110: MOV             W11, #0xE855
00022114: MOVK            W12, #0xAA34,LSL#16
00022118: MOVK            W1, #0x79,LSL#16 ; 'y'
0002211c: STR             W0, [SP,#0x2C0+n]
00022120: MOVK            W8, #0x9660,LSL#16
00022124: MOVK            W9, #0x70E3,LSL#16
00022128: MOVK            W10, #0xF4D9,LSL#16
0002212c: MOVK            W11, #0x9660,LSL#16
00022130: B               loc_22188
00022134: SUB             X8, X29, #-var_98
00022138: LDR             X0, [X8]; s1
0002213c: ADRL            X1, byte_F2F20; s2
00022144: BL              .strcmp
00022148: MOV             W9, #0x4C43
0002214c: MOV             W12, #0xA6F1
00022150: MOV             W11, #0xE855
00022154: MOV             W1, #0x7CF7
00022158: MOV             W10, #0x8391
0002215c: MOVK            W9, #0x70E3,LSL#16
00022160: CMP             W0, #0
00022164: MOVK            W12, #0xAA34,LSL#16
00022168: MOVK            W11, #0x9660,LSL#16
0002216c: MOVK            W1, #0x79,LSL#16 ; 'y'
00022170: MOVK            W10, #0xF4D9,LSL#16
00022174: CSEL            W8, W27, W9, EQ
00022178: B               loc_22188
0002217c: MOV             W8, #0xA6F1
00022180: MOV             W20, WZR
00022184: MOVK            W8, #0xAA34,LSL#16
00022188: CMP             W8, W28
0002218c: B.LE            loc_221AC
00022190: CMP             W8, W22
00022194: B.EQ            loc_22134
00022198: CMP             W8, W9
0002219c: B.EQ            loc_221D0
000221a0: CMP             W8, W27
000221a4: B.NE            loc_22188
000221a8: B               loc_2217C
000221ac: CMP             W8, W11
000221b0: B.EQ            loc_221C0
000221b4: CMP             W8, W12
000221b8: B.NE            loc_22188
000221bc: B               loc_221E0
000221c0: LDR             W8, [SP,#0x2C0+n]
000221c4: CMP             W8, #0
000221c8: CSEL            W8, W9, W22, EQ
000221cc: B               loc_22188
000221d0: MOV             W8, #0xAA34A6F1
000221d8: MOV             W20, #0xFFFFFFFF
000221dc: B               loc_22188
000221e0: SUB             X8, X29, #-var_98
000221e4: LDR             XZR, [X8,#0x20]
000221e8: MOV             W8, #0xAD6C
000221ec: MOV             W9, #0x1467
000221f0: CMP             W20, #0
000221f4: MOVK            W8, #0xA375,LSL#16
000221f8: MOVK            W9, #0x5350,LSL#16
000221fc: CSEL            W9, W9, W8, EQ
00022200: LDR             W8, [SP,#0x2C0+var_224]
00022204: MOV             W20, #0xFCD17195
0002220c: STR             W8, [SP,#0x2C0+var_250]
00022210: B               loc_21444
00022214: ADRP            X1, #byte_F2F0C@PAGE
00022218: MOV             X0, X25
0002221c: ADD             X1, X1, #byte_F2F0C@PAGEOFF
00022220: BL              sub_14068
00022224: MOV             W1, #0x7CF7
00022228: MOV             W10, #0x8391
0002222c: MOV             W9, #0xFEE3
00022230: MOVK            W1, #0x79,LSL#16 ; 'y'
00022234: MOVK            W10, #0xF4D9,LSL#16
00022238: MOVK            W9, #0x81BA,LSL#16
0002223c: B               loc_21444
00022240: BL              sub_E89A4
00022244: SUB             X8, X29, #-s
00022248: STR             X8, [SP,#0x2C0+var_208]
0002224c: LDR             X8, [SP,#0x2C0+var_208]
00022250: LDR             X8, [SP,#0x2C0+var_208]
00022254: ADRP            X1, #byte_F3434@PAGE
00022258: MOV             W2, W0
0002225c: SUB             X0, X29, #-s; s
00022260: ADD             X1, X1, #byte_F3434@PAGEOFF; format
00022264: STP             XZR, XZR, [X8]
00022268: BL              .sprintf
0002226c: ADD             X8, SP, #0x2C0+var_1E0
00022270: STR             X8, [SP,#0x2C0+var_200]
00022274: LDR             X8, [SP,#0x2C0+var_200]
00022278: LDR             X8, [SP,#0x2C0+var_200]
0002227c: ADRP            X1, #qword_F36F8@PAGE
00022280: MOVI            V0.2D, #0
00022284: ADD             X0, SP, #0x2C0+var_1E0
00022288: ADD             X1, X1, #qword_F36F8@PAGEOFF
0002228c: STP             Q0, Q0, [X8,#0x20]
00022290: STP             Q0, Q0, [X8]
00022294: BL              sub_6630
00022298: ADD             X0, SP, #0x2C0+var_1E0
0002229c: SUB             X1, X29, #-s
000222a0: BL              sub_6630
000222a4: ADRP            X1, #aJ117j573e@PAGE; "j$117j57 3E"
000222a8: ADD             X0, SP, #0x2C0+var_1E0
000222ac: ADD             X1, X1, #aJ117j573e@PAGEOFF; "j$117j57 3E"
000222b0: BL              sub_6630
000222b4: SUB             X9, X29, #-var_98
000222b8: STP             X9, X9, [SP,#0x2C0+stream]
000222bc: LDR             X8, [SP,#0x2C0+stream]
000222c0: LDR             X8, [SP,#0x2C0+stream]
000222c4: MOVI            V0.2D, #0
000222c8: ADD             X0, SP, #0x2C0+var_1E0
000222cc: MOV             W2, #0x20 ; ' '
000222d0: STP             Q0, Q0, [X8]
000222d4: LDR             X1, [SP,#0x2C0+n]
000222d8: BL              sub_8E28
000222dc: MOV             W1, #0x7CF7
000222e0: MOV             W13, #0x6E14
000222e4: MOV             W12, #0x3D9D
000222e8: MOV             W11, #0x323B
000222ec: MOV             W10, #0x8391
000222f0: MOV             W8, #0x6E14
000222f4: MOV             W9, #0x1CA0
000222f8: MOVK            W1, #0x79,LSL#16 ; 'y'
000222fc: MOVK            W13, #0x66AC,LSL#16
00022300: MOVK            W12, #0x1BF4,LSL#16
00022304: MOVK            W11, #0x18FF,LSL#16
00022308: MOVK            W10, #0xF4D9,LSL#16
0002230c: STR             W0, [SP,#0x2C0+var_1E4]
00022310: MOVK            W8, #0x66AC,LSL#16
00022314: MOVK            W9, #0x617B,LSL#16
00022318: B               loc_22328
0002231c: MOV             W8, #0x1BF43D9D
00022324: MOV             W20, #1
00022328: CMP             W8, W26
0002232c: B.LE            loc_22358
00022330: CMP             W8, W19
00022334: B.EQ            loc_2231C
00022338: CMP             W8, W9
0002233c: B.EQ            loc_223B8
00022340: CMP             W8, W13
00022344: B.NE            loc_22328
00022348: LDR             W8, [SP,#0x2C0+var_1E4]
0002234c: CMP             W8, #0
00022350: CSEL            W8, W9, W11, EQ
00022354: B               loc_22328
00022358: CMP             W8, W11
0002235c: B.EQ            loc_2236C
00022360: CMP             W8, W12
00022364: B.NE            loc_22328
00022368: B               loc_223C8
0002236c: LDR             X0, [SP,#0x2C0+n]
00022370: ADRL            X1, byte_F6504
00022378: BL              sub_75D4
0002237c: MOV             W9, #0x1CA0
00022380: MOV             W1, #0x7CF7
00022384: MOV             W13, #0x6E14
00022388: MOV             W12, #0x3D9D
0002238c: MOV             W11, #0x323B
00022390: MOV             W10, #0x8391
00022394: MOVK            W9, #0x617B,LSL#16
00022398: CMP             X0, #0
0002239c: MOVK            W1, #0x79,LSL#16 ; 'y'
000223a0: MOVK            W13, #0x66AC,LSL#16
000223a4: MOVK            W12, #0x1BF4,LSL#16
000223a8: MOVK            W11, #0x18FF,LSL#16
000223ac: MOVK            W10, #0xF4D9,LSL#16
000223b0: CSEL            W8, W9, W19, EQ
000223b4: B               loc_22328
000223b8: MOV             W8, #0x3D9D
000223bc: MOV             W20, WZR
000223c0: MOVK            W8, #0x1BF4,LSL#16
000223c4: B               loc_22328
000223c8: LDR             X8, [SP,#0x2C0+stream]
000223cc: LDR             X8, [SP,#0x2C0+var_200]
000223d0: LDR             X8, [SP,#0x2C0+var_208]
000223d4: MOV             W8, #0x9A86
000223d8: MOV             W9, #0x8392
000223dc: CMP             W20, #0
000223e0: MOVK            W8, #0xF05,LSL#16
000223e4: MOVK            W9, #0xF4D9,LSL#16
000223e8: CSEL            W9, W8, W9, EQ
000223ec: LDR             W8, [SP,#0x2C0+var_250]
000223f0: MOV             W20, #0xFCD17195
000223f8: STR             W8, [SP,#0x2C0+var_254]
000223fc: B               loc_21444
00022400: SUB             X8, X29, #-var_98
00022404: LDR             XZR, [X8]
00022408: MOV             W8, #0xFB38
0002240c: MOV             W9, #0xF15A
00022410: CMP             W20, #0
00022414: MOVK            W8, #0xBFC9,LSL#16
00022418: MOVK            W9, #0x2162,LSL#16
0002241c: CSEL            W9, W8, W9, EQ
00022420: LDR             W8, [SP,#0x2C0+var_254]
00022424: MOV             W20, #0xFCD17195
0002242c: STR             W8, [SP,#0x2C0+var_25C]
00022430: B               loc_21444
00022434: MOV             W8, #5
00022438: MOV             W9, #0x9A86
0002243c: STR             W8, [SP,#0x2C0+var_254]
00022440: MOVK            W9, #0xF05,LSL#16
00022444: B               loc_21444
00022448: LDR             X8, [SP,#0x2C0+var_2B8]
0002244c: SUB             X9, X29, #-var_98
00022450: LDR             X8, [X8,#0x28]
00022454: LDR             X9, [X9,#0x30]
00022458: CMP             X8, X9
0002245c: B.NE            loc_22484
00022460: LDR             W0, [SP,#0x2C0+var_25C]
00022464: ADD             SP, SP, #0x270
00022468: LDP             X29, X30, [SP,#0x50+var_s0]
0002246c: LDP             X20, X19, [SP,#0x50+var_10]
00022470: LDP             X22, X21, [SP,#0x50+var_20]
00022474: LDP             X24, X23, [SP,#0x50+var_30]
00022478: LDP             X26, X25, [SP,#0x50+var_40]
0002247c: LDP             X28, X27, [SP+0x50+var_50],#0x60
00022480: RET
00022484: BL              .__stack_chk_fail