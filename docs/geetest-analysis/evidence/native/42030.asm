00042030: STR             X25, [SP,#-0x10+var_40]!
00042034: STP             X24, X23, [SP,#0x40+var_30]
00042038: STP             X22, X21, [SP,#0x40+var_20]
0004203c: STP             X20, X19, [SP,#0x40+var_10]
00042040: STP             X29, X30, [SP,#0x40+var_s0]
00042044: ADD             X29, SP, #0x40
00042048: MOV             W23, #0xECE1
0004204c: MOV             X19, X2
00042050: MOV             X20, X1
00042054: MOV             X21, X0
00042058: MOVK            W23, #0x4352,LSL#16
0004205c: BL              sub_BBB14
00042060: MOV             X22, X0
00042064: BL              sub_210F4
00042068: ADRP            X1, #byte_F652C@PAGE
0004206c: SCVTF           D0, W0
00042070: ADD             X1, X1, #byte_F652C@PAGEOFF
00042074: MOV             X0, X19
00042078: BL              sub_BAB9C
0004207c: ADRL            X1, byte_F6530
00042084: MOV             X0, X19
00042088: MOV             X2, X22
0004208c: BL              sub_13984
00042090: MOV             X0, X21
00042094: MOV             X1, X20
00042098: MOV             X2, X19
0004209c: BL              sub_22488
000420a0: MOV             X0, X21
000420a4: MOV             X1, X20
000420a8: BL              sub_22F38
000420ac: ADRP            X1, #byte_F6534@PAGE
000420b0: SCVTF           D0, W0
000420b4: ADD             X1, X1, #byte_F6534@PAGEOFF
000420b8: MOV             X0, X19
000420bc: BL              sub_BAB9C
000420c0: MOV             X0, X21
000420c4: MOV             X1, X20
000420c8: BL              sub_23090
000420cc: ADRP            X1, #byte_F6538@PAGE
000420d0: SCVTF           D0, W0
000420d4: ADD             X1, X1, #byte_F6538@PAGEOFF
000420d8: MOV             X0, X19
000420dc: BL              sub_BAB9C
000420e0: MOV             X0, X21
000420e4: MOV             X1, X20
000420e8: BL              sub_23140
000420ec: ADRP            X1, #byte_F653C@PAGE
000420f0: SCVTF           D0, W0
000420f4: ADD             X1, X1, #byte_F653C@PAGEOFF
000420f8: MOV             X0, X19
000420fc: BL              sub_BAB9C
00042100: ADRL            X1, qword_F6548
00042108: MOV             X0, X21
0004210c: BL              sub_43EB0
00042110: ADRP            X2, #byte_F6540@PAGE
00042114: MOV             X3, X0
00042118: ADD             X2, X2, #byte_F6540@PAGEOFF
0004211c: MOV             X0, X21
00042120: MOV             X1, X19
00042124: BL              sub_13D7C
00042128: BL              sub_9878
0004212c: ADRP            X1, #byte_F6558@PAGE
00042130: SCVTF           D0, W0
00042134: ADD             X1, X1, #byte_F6558@PAGEOFF
00042138: MOV             X0, X19
0004213c: BL              sub_BAB9C
00042140: MOV             X0, X21
00042144: BL              sub_22D60
00042148: ADRP            X1, #byte_F655C@PAGE
0004214c: SCVTF           D0, W0
00042150: ADD             X1, X1, #byte_F655C@PAGEOFF
00042154: MOV             X0, X19
00042158: BL              sub_BAB9C
0004215c: BL              sub_48FA4
00042160: AND             W8, W0, #1
00042164: ADRP            X1, #byte_F6560@PAGE
00042168: UCVTF           D0, W8
0004216c: ADD             X1, X1, #byte_F6560@PAGEOFF
00042170: MOV             X0, X19
00042174: BL              sub_BAB9C
00042178: MOV             X0, X21
0004217c: MOV             X1, X19
00042180: BL              sub_543FC
00042184: BL              sub_BBB14
00042188: MOV             X22, X0
0004218c: BL              sub_298B4
00042190: ADRL            X1, byte_F6568
00042198: MOV             X0, X19
0004219c: MOV             X2, X22
000421a0: BL              sub_13984
000421a4: BL              sub_BBB14
000421a8: MOV             X22, X0
000421ac: BL              sub_297A4
000421b0: ADRL            X1, byte_F656C
000421b8: MOV             X0, X19
000421bc: MOV             X2, X22
000421c0: BL              sub_13984
000421c4: BL              sub_BBB14
000421c8: MOV             X22, X0
000421cc: BL              sub_290B8
000421d0: ADRL            X1, byte_F6570
000421d8: MOV             X0, X19
000421dc: MOV             X2, X22
000421e0: BL              sub_13984
000421e4: BL              sub_BBB14
000421e8: MOV             X22, X0
000421ec: BL              sub_292F0
000421f0: ADRL            X1, byte_F6574
000421f8: MOV             X0, X19
000421fc: MOV             X2, X22
00042200: BL              sub_13984
00042204: BL              sub_BBB14
00042208: MOV             X22, X0
0004220c: BL              sub_28E9C
00042210: ADRL            X1, byte_F6578
00042218: MOV             X0, X19
0004221c: MOV             X2, X22
00042220: BL              sub_13984
00042224: BL              sub_BBB14
00042228: MOV             X22, X0
0004222c: BL              sub_2A34C
00042230: ADRL            X1, byte_F657C
00042238: MOV             X0, X19
0004223c: MOV             X2, X22
00042240: BL              sub_13984
00042244: BL              sub_BBB14
00042248: MOV             X22, X0
0004224c: BL              sub_2A4D8
00042250: ADRL            X1, byte_F6580
00042258: MOV             X0, X19
0004225c: MOV             X2, X22
00042260: BL              sub_13984
00042264: BL              sub_BBB14
00042268: MOV             X22, X0
0004226c: BL              sub_29AC4
00042270: ADRL            X1, byte_F6584
00042278: MOV             X0, X19
0004227c: MOV             X2, X22
00042280: BL              sub_13984
00042284: BL              sub_22F30
00042288: ADRP            X1, #byte_F6588@PAGE
0004228c: SCVTF           D0, W0
00042290: ADD             X1, X1, #byte_F6588@PAGEOFF
00042294: MOV             X0, X19
00042298: BL              sub_BAB9C
0004229c: MOV             X0, X21
000422a0: MOV             X1, X19
000422a4: BL              sub_477FC
000422a8: MOV             X0, X21
000422ac: MOV             X1, X20
000422b0: BL              sub_47A40
000422b4: ADRP            X1, #byte_F658C@PAGE
000422b8: SCVTF           D0, W0
000422bc: ADD             X1, X1, #byte_F658C@PAGEOFF
000422c0: MOV             X0, X19
000422c4: BL              sub_BAB9C
000422c8: BL              sub_BBB14
000422cc: MOV             X22, X0
000422d0: MOV             X0, X21
000422d4: MOV             X1, X20
000422d8: MOV             X2, X22
000422dc: BL              sub_26CEC
000422e0: ADRL            X1, byte_F6590
000422e8: MOV             X0, X19
000422ec: MOV             X2, X22
000422f0: BL              sub_13984
000422f4: MOV             X0, X21
000422f8: MOV             X1, X20
000422fc: BL              sub_2344C
00042300: MOV             X22, X0
00042304: MOV             X0, X21
00042308: MOV             X1, X20
0004230c: MOV             X2, X22
00042310: MOV             X3, X19
00042314: BL              sub_24744
00042318: ADRL            X2, byte_F6594
00042320: MOV             X0, X21
00042324: MOV             X1, X19
00042328: MOV             X3, X22
0004232c: BL              sub_13D7C
00042330: MOV             X0, X21
00042334: MOV             X1, X20
00042338: BL              sub_1EA88
0004233c: ADRP            X2, #byte_F6598@PAGE
00042340: MOV             X3, X0
00042344: ADD             X2, X2, #byte_F6598@PAGEOFF
00042348: MOV             X0, X21
0004234c: MOV             X1, X19
00042350: BL              sub_13D7C
00042354: BL              sub_BBB14
00042358: MOV             X22, X0
0004235c: BL              sub_2AB38
00042360: ADRL            X1, byte_F659C
00042368: MOV             X0, X19
0004236c: MOV             X2, X22
00042370: BL              sub_13984
00042374: MOV             X0, X21
00042378: MOV             X1, X20
0004237c: MOV             X2, X19
00042380: BL              sub_1F464
00042384: MOV             X0, X21
00042388: MOV             X1, X20
0004238c: MOV             X2, X19
00042390: BL              sub_1E2C8
00042394: MOV             X0, X21
00042398: MOV             X1, X20
0004239c: BL              sub_282B8
000423a0: ADRP            X2, #byte_F65A0@PAGE
000423a4: MOV             X3, X0
000423a8: ADD             X2, X2, #byte_F65A0@PAGEOFF
000423ac: MOV             X0, X21
000423b0: MOV             X1, X19
000423b4: BL              sub_13D7C
000423b8: BL              sub_BB824
000423bc: MOV             W24, #0x8FBA
000423c0: MOV             W25, #0xAD92
000423c4: ADRP            X22, #a0@PAGE; ">.0\\"
000423c8: MOV             W8, #0x8FBA
000423cc: MOVK            W24, #0x1D37,LSL#16
000423d0: MOVK            W25, #0xC424,LSL#16
000423d4: ADD             X22, X22, #a0@PAGEOFF; ">.0\\"
000423d8: MOVK            W8, #0x1D37,LSL#16
000423dc: STR             X0, [SP,#0x40+var_38]
000423e0: B               loc_423F0
000423e4: LDR             X8, [SP,#0x40+var_38]
000423e8: CMP             X8, #0
000423ec: CSEL            W8, W23, W25, EQ
000423f0: CMP             W8, W25
000423f4: B.EQ            loc_4240C
000423f8: CMP             W8, W23
000423fc: B.EQ            loc_42438
00042400: CMP             W8, W24
00042404: B.NE            loc_423F0
00042408: B               loc_423E4
0004240c: LDR             X2, [SP,#0x40+var_38]
00042410: MOV             X0, X21
00042414: MOV             X1, X20
00042418: BL              sub_1DAD8
0004241c: LDR             X2, [SP,#0x40+var_38]
00042420: MOV             X0, X19
00042424: MOV             X1, X22
00042428: BL              sub_13984
0004242c: MOV             W8, #0x4352ECE1
00042434: B               loc_423F0
00042438: ADRL            X2, xmmword_F65B0
00042440: MOV             X0, X21
00042444: MOV             X1, X20
00042448: BL              sub_EE00
0004244c: ADRP            X1, #byte_F65C4@PAGE
00042450: SCVTF           D0, W0
00042454: ADD             X1, X1, #byte_F65C4@PAGEOFF
00042458: MOV             X0, X19
0004245c: BL              sub_BAB9C
00042460: BL              sub_BB824
00042464: MOV             X20, X0
00042468: BL              sub_28BEC
0004246c: ADRL            X1, byte_F65C8
00042474: MOV             X0, X19
00042478: MOV             X2, X20
0004247c: BL              sub_B9648
00042480: MOV             X0, X19
00042484: LDP             X29, X30, [SP,#0x40+var_s0]
00042488: LDP             X20, X19, [SP,#0x40+var_10]
0004248c: LDP             X22, X21, [SP,#0x40+var_20]
00042490: LDP             X24, X23, [SP,#0x40+var_30]
00042494: LDR             X25, [SP+0x40+var_40],#0x50
00042498: B               sub_2A8D4