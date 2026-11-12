00041f00: BIC             W15, W15, W13
00041f04: BIC             W16, W16, W14
00041f08: AND             W13, W13, W22
00041f0c: AND             W14, W14, W0
00041f10: LDRB            W0, [X11,#(byte_F6508 - 0xF6504)] ; runtime: 0xf6508='te'
00041f14: ORR             W13, W15, W13
00041f18: LDRB            W15, [X11,#(byte_F650A - 0xF6504)]
00041f1c: ORR             W14, W16, W14
00041f20: MVN             W16, W9
00041f24: AND             W16, W16, #0xF8
00041f28: AND             W17, W12, #0xFFFFFFE3
00041f2c: MVN             W12, W12
00041f30: BFXIL           W16, W9, #0, #3
00041f34: AND             W9, W10, #0xFFFFFFE3
00041f38: MVN             W10, W10
00041f3c: AND             W12, W12, #0x1C
00041f40: AND             W10, W10, #0x1C
00041f44: ORR             W12, W12, W17
00041f48: AND             W17, W0, #0xFFFFFFE3
00041f4c: MVN             W0, W0
00041f50: ORR             W9, W10, W9
00041f54: AND             W10, W15, #6
00041f58: MVN             W15, W15
00041f5c: AND             W0, W0, #0x1C
00041f60: AND             W15, W15, #0xFFFFFFF9
00041f64: STRB            W9, [X11,#(byte_F6507 - 0xF6504)] ; runtime: 0xf6507='ote'
00041f68: EOR             W9, W14, #0xFFFFFFC7
00041f6c: ORR             W17, W0, W17
00041f70: LDRB            W0, [X8,#(byte_F6528 - 0xF6520)] ; runtime: 0xf6528='ve'
00041f74: ORR             W10, W15, W10
00041f78: STRB            W9, [X11,#(byte_F6509 - 0xF6504)] ; runtime: 0xf6509='e'
00041f7c: MOV             W9, #0xE5
00041f80: EOR             W9, W10, W9
00041f84: STRB            W12, [X11]
00041f88: MOV             W12, #0xE4
00041f8c: LDRB            W10, [X8,#(byte_F6529 - 0xF6520)] ; runtime: 0xf6529='e'
00041f90: STRB            W9, [X11,#(byte_F650A - 0xF6504)]
00041f94: LDRB            W9, [X8,#(byte_F652A - 0xF6520)]
00041f98: EOR             W12, W16, W12
00041f9c: EOR             W13, W13, #0x80
00041fa0: STRB            W13, [X11,#(byte_F6506 - 0xF6504)] ; runtime: 0xf6506='gote'
00041fa4: STRB            W17, [X11,#(byte_F6508 - 0xF6504)] ; runtime: 0xf6508='te'
00041fa8: STRB            W12, [X11,#(byte_F6505 - 0xF6504)] ; runtime: 0xf6505='ygote'
00041fac: MVN             W11, W0
00041fb0: AND             W12, W0, #0xFFFFFF8F
00041fb4: AND             W11, W11, #0x70 ; 'p'
00041fb8: AND             W13, W10, #0xFFFFFF8F
00041fbc: ORR             W11, W11, W12
00041fc0: AND             W12, W9, #0xFFFFFF8F
00041fc4: MVN             W10, W10
00041fc8: MVN             W9, W9
00041fcc: AND             W10, W10, #0x70 ; 'p'
00041fd0: AND             W9, W9, #0x70 ; 'p'
00041fd4: EOR             V0.16B, V4.16B, V26.16B
00041fd8: ORR             W10, W10, W13
00041fdc: ORR             W9, W9, W12
00041fe0: STRB            W27, [X24,#(byte_F6415 - 0xF63F0)] ; runtime: 0xf6415='taller'
00041fe4: STRB            W26, [X24,#(byte_F6416 - 0xF63F0)] ; runtime: 0xf6416='aller'
00041fe8: STRB            W28, [X24,#(byte_F641B - 0xF63F0)]
00041fec: STR             D5, [X8]
00041ff0: STP             Q7, Q0, [X30]
00041ff4: STRB            W11, [X8,#(byte_F6528 - 0xF6520)] ; runtime: 0xf6528='ve'
00041ff8: STRB            W10, [X8,#(byte_F6529 - 0xF6520)] ; runtime: 0xf6529='e'
00041ffc: STRB            W9, [X8,#(byte_F652A - 0xF6520)]
00042000: ADD             SP, SP, #0x870
00042004: LDP             X29, X30, [SP,#0xA0+var_10]
00042008: LDP             X20, X19, [SP,#0xA0+var_20]
0004200c: LDP             X22, X21, [SP,#0xA0+var_30]
00042010: LDP             X24, X23, [SP,#0xA0+var_40]
00042014: LDP             X26, X25, [SP,#0xA0+var_50]
00042018: LDP             X28, X27, [SP,#0xA0+var_60]
0004201c: LDP             D9, D8, [SP,#0xA0+var_70]
00042020: LDP             D11, D10, [SP,#0xA0+var_80]
00042024: LDP             D13, D12, [SP,#0xA0+var_90]
00042028: LDP             D15, D14, [SP+0xA0+var_A0],#0xA0
0004202c: RET
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
00042068: ADRP            X1, #byte_F652C@PAGE ; runtime: 0xf652c='ir'
0004206c: SCVTF           D0, W0
00042070: ADD             X1, X1, #byte_F652C@PAGEOFF ; runtime: 0xf652c='ir'
00042074: MOV             X0, X19
00042078: BL              sub_BAB9C
0004207c: ADRL            X1, byte_F6530 ; runtime: 0xf6530='edp'
00042080: ADRL            X1, byte_F6530 ; runtime: 0xf6530='edp'
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
000420ac: ADRP            X1, #byte_F6534@PAGE ; runtime: 0xf6534='iam'
000420b0: SCVTF           D0, W0
000420b4: ADD             X1, X1, #byte_F6534@PAGEOFF ; runtime: 0xf6534='iam'
000420b8: MOV             X0, X19
000420bc: BL              sub_BAB9C
000420c0: MOV             X0, X21
000420c4: MOV             X1, X20
000420c8: BL              sub_23090
000420cc: ADRP            X1, #byte_F6538@PAGE ; runtime: 0xf6538='iod'
000420d0: SCVTF           D0, W0
000420d4: ADD             X1, X1, #byte_F6538@PAGEOFF ; runtime: 0xf6538='iod'
000420d8: MOV             X0, X19
000420dc: BL              sub_BAB9C
000420e0: MOV             X0, X21
000420e4: MOV             X1, X20
000420e8: BL              sub_23140
000420ec: ADRP            X1, #byte_F653C@PAGE ; runtime: 0xf653c='idv'
000420f0: SCVTF           D0, W0
000420f4: ADD             X1, X1, #byte_F653C@PAGEOFF ; runtime: 0xf653c='idv'
000420f8: MOV             X0, X19
000420fc: BL              sub_BAB9C
00042100: ADRL            X1, qword_F6548 ; runtime: 0xf6548='init.svc.adbd'
00042104: ADRL            X1, qword_F6548 ; runtime: 0xf6548='init.svc.adbd'
00042108: MOV             X0, X21
0004210c: BL              sub_43EB0
00042110: ADRP            X2, #byte_F6540@PAGE ; runtime: 0xf6540='ads'
00042114: MOV             X3, X0
00042118: ADD             X2, X2, #byte_F6540@PAGEOFF ; runtime: 0xf6540='ads'
0004211c: MOV             X0, X21
00042120: MOV             X1, X19
00042124: BL              sub_13D7C
00042128: BL              sub_9878
0004212c: ADRP            X1, #byte_F6558@PAGE ; runtime: 0xf6558='dtp'
00042130: SCVTF           D0, W0
00042134: ADD             X1, X1, #byte_F6558@PAGEOFF ; runtime: 0xf6558='dtp'
00042138: MOV             X0, X19
0004213c: BL              sub_BAB9C
00042140: MOV             X0, X21
00042144: BL              sub_22D60
00042148: ADRP            X1, #byte_F655C@PAGE ; runtime: 0xf655c='idc'
0004214c: SCVTF           D0, W0
00042150: ADD             X1, X1, #byte_F655C@PAGEOFF ; runtime: 0xf655c='idc'
00042154: MOV             X0, X19
00042158: BL              sub_BAB9C
0004215c: BL              sub_48FA4
00042160: AND             W8, W0, #1
00042164: ADRP            X1, #byte_F6560@PAGE ; runtime: 0xf6560='idc2'
00042168: UCVTF           D0, W8
0004216c: ADD             X1, X1, #byte_F6560@PAGEOFF ; runtime: 0xf6560='idc2'
00042170: MOV             X0, X19
00042174: BL              sub_BAB9C
00042178: MOV             X0, X21
0004217c: MOV             X1, X19
00042180: BL              sub_543FC
00042184: BL              sub_BBB14
00042188: MOV             X22, X0
0004218c: BL              sub_298B4
00042190: ADRL            X1, byte_F6568 ; runtime: 0xf6568='rtp'
00042194: ADRL            X1, byte_F6568 ; runtime: 0xf6568='rtp'
00042198: MOV             X0, X19
0004219c: MOV             X2, X22
000421a0: BL              sub_13984
000421a4: BL              sub_BBB14
000421a8: MOV             X22, X0
000421ac: BL              sub_297A4
000421b0: ADRL            X1, byte_F656C ; runtime: 0xf656c='rrt'
000421b4: ADRL            X1, byte_F656C ; runtime: 0xf656c='rrt'
000421b8: MOV             X0, X19
000421bc: MOV             X2, X22
000421c0: BL              sub_13984
000421c4: BL              sub_BBB14
000421c8: MOV             X22, X0
000421cc: BL              sub_290B8
000421d0: ADRL            X1, byte_F6570 ; runtime: 0xf6570='rrs'
000421d4: ADRL            X1, byte_F6570 ; runtime: 0xf6570='rrs'
000421d8: MOV             X0, X19
000421dc: MOV             X2, X22
000421e0: BL              sub_13984
000421e4: BL              sub_BBB14
000421e8: MOV             X22, X0
000421ec: BL              sub_292F0
000421f0: ADRL            X1, byte_F6574 ; runtime: 0xf6574='rmp'
000421f4: ADRL            X1, byte_F6574 ; runtime: 0xf6574='rmp'
000421f8: MOV             X0, X19
000421fc: MOV             X2, X22
00042200: BL              sub_13984
00042204: BL              sub_BBB14
00042208: MOV             X22, X0
0004220c: BL              sub_28E9C
00042210: ADRL            X1, byte_F6578 ; runtime: 0xf6578='pm'
00042214: ADRL            X1, byte_F6578 ; runtime: 0xf6578='pm'
00042218: MOV             X0, X19
0004221c: MOV             X2, X22
00042220: BL              sub_13984
00042224: BL              sub_BBB14
00042228: MOV             X22, X0
0004222c: BL              sub_2A34C
00042230: ADRL            X1, byte_F657C ; runtime: 0xf657c='sp'
00042234: ADRL            X1, byte_F657C ; runtime: 0xf657c='sp'
00042238: MOV             X0, X19
0004223c: MOV             X2, X22
00042240: BL              sub_13984
00042244: BL              sub_BBB14
00042248: MOV             X22, X0
0004224c: BL              sub_2A4D8
00042250: ADRL            X1, byte_F6580 ; runtime: 0xf6580='ro'
00042254: ADRL            X1, byte_F6580 ; runtime: 0xf6580='ro'
00042258: MOV             X0, X19
0004225c: MOV             X2, X22
00042260: BL              sub_13984
00042264: BL              sub_BBB14
00042268: MOV             X22, X0
0004226c: BL              sub_29AC4
00042270: ADRL            X1, byte_F6584 ; runtime: 0xf6584='sfp'
00042274: ADRL            X1, byte_F6584 ; runtime: 0xf6584='sfp'
00042278: MOV             X0, X19
0004227c: MOV             X2, X22
00042280: BL              sub_13984
00042284: BL              sub_22F30
00042288: ADRP            X1, #byte_F6588@PAGE ; runtime: 0xf6588='iss'
0004228c: SCVTF           D0, W0
00042290: ADD             X1, X1, #byte_F6588@PAGEOFF ; runtime: 0xf6588='iss'
00042294: MOV             X0, X19
00042298: BL              sub_BAB9C
0004229c: MOV             X0, X21
000422a0: MOV             X1, X19
000422a4: BL              sub_477FC
000422a8: MOV             X0, X21
000422ac: MOV             X1, X20
000422b0: BL              sub_47A40
000422b4: ADRP            X1, #byte_F658C@PAGE ; runtime: 0xf658c='onv'
000422b8: SCVTF           D0, W0
000422bc: ADD             X1, X1, #byte_F658C@PAGEOFF ; runtime: 0xf658c='onv'
000422c0: MOV             X0, X19
000422c4: BL              sub_BAB9C
000422c8: BL              sub_BBB14
000422cc: MOV             X22, X0
000422d0: MOV             X0, X21
000422d4: MOV             X1, X20
000422d8: MOV             X2, X22
000422dc: BL              sub_26CEC
000422e0: ADRL            X1, byte_F6590 ; runtime: 0xf6590='gas'
000422e4: ADRL            X1, byte_F6590 ; runtime: 0xf6590='gas'
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
00042318: ADRL            X2, byte_F6594 ; runtime: 0xf6594='lau'
0004231c: ADRL            X2, byte_F6594 ; runtime: 0xf6594='lau'
00042320: MOV             X0, X21
00042324: MOV             X1, X19
00042328: MOV             X3, X22
0004232c: BL              sub_13D7C
00042330: MOV             X0, X21
00042334: MOV             X1, X20
00042338: BL              sub_1EA88
0004233c: ADRP            X2, #byte_F6598@PAGE ; runtime: 0xf6598='pat'
00042340: MOV             X3, X0
00042344: ADD             X2, X2, #byte_F6598@PAGEOFF ; runtime: 0xf6598='pat'
00042348: MOV             X0, X21
0004234c: MOV             X1, X19
00042350: BL              sub_13D7C
00042354: BL              sub_BBB14
00042358: MOV             X22, X0
0004235c: BL              sub_2AB38
00042360: ADRL            X1, byte_F659C ; runtime: 0xf659c='sen'
00042364: ADRL            X1, byte_F659C ; runtime: 0xf659c='sen'
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
000423a0: ADRP            X2, #byte_F65A0@PAGE ; runtime: 0xf65a0='mua'
000423a4: MOV             X3, X0
000423a8: ADD             X2, X2, #byte_F65A0@PAGEOFF ; runtime: 0xf65a0='mua'
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
00042430: MOV             W8, #0x4352ECE1
00042434: B               loc_423F0
00042438: ADRL            X2, xmmword_F65B0 ; runtime: 0xf65b0='screen_brightness'
0004243c: ADRL            X2, xmmword_F65B0 ; runtime: 0xf65b0='screen_brightness'
00042440: MOV             X0, X21
00042444: MOV             X1, X20
00042448: BL              sub_EE00
0004244c: ADRP            X1, #byte_F65C4@PAGE ; runtime: 0xf65c4='sb'
00042450: SCVTF           D0, W0
00042454: ADD             X1, X1, #byte_F65C4@PAGEOFF ; runtime: 0xf65c4='sb'
00042458: MOV             X0, X19
0004245c: BL              sub_BAB9C
00042460: BL              sub_BB824
00042464: MOV             X20, X0
00042468: BL              sub_28BEC
0004246c: ADRL            X1, byte_F65C8 ; runtime: 0xf65c8='build'
00042470: ADRL            X1, byte_F65C8 ; runtime: 0xf65c8='build'
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
0004249c: SUB             SP, SP, #0x70
000424a0: STP             X28, X27, [SP,#0x60+var_50]
000424a4: STP             X26, X25, [SP,#0x60+var_40]
000424a8: STP             X24, X23, [SP,#0x60+var_30]
000424ac: STP             X22, X21, [SP,#0x60+var_20]
000424b0: STP             X20, X19, [SP,#0x60+var_10]
000424b4: STP             X29, X30, [SP,#0x60+var_s0]
000424b8: ADD             X29, SP, #0x60
000424bc: MOV             W26, #0xE1CD
000424c0: MOV             W27, #0x75DF
000424c4: MOV             X19, X2
000424c8: MOV             X20, X1
000424cc: MOV             X21, X0
000424d0: MOVK            W26, #0xF024,LSL#16
000424d4: MOVK            W27, #0x41DD,LSL#16
000424d8: BL              sub_D138
000424dc: MOV             X0, X19
000424e0: BL              sub_1E148
000424e4: MOV             X0, X21
000424e8: MOV             X1, X20
000424ec: MOV             X2, X19
000424f0: BL              sub_1FD3C
000424f4: BL              sub_BB824
000424f8: MOV             W28, #0x9D93
000424fc: MOV             W22, #0xCEF4
00042500: MOV             W24, #0xA19E
00042504: ADRP            X23, #(aGeePclose+0xA)@PAGE; ""
00042508: MOV             W25, #0xCEF5
0004250c: MOV             W8, #0x9D93
00042510: MOVK            W28, #0x3B39,LSL#16
00042514: MOVK            W22, #0x53F,LSL#16
00042518: MOVK            W24, #0xBA36,LSL#16
0004251c: ADD             X23, X23, #(aGeePclose+0xA)@PAGEOFF; ""
00042520: MOVK            W25, #0x53F,LSL#16
00042524: MOVK            W8, #0x3B39,LSL#16
00042528: STR             X0, [SP,#0x60+var_58]
0004252c: B               loc_4253C
00042530: LDR             X8, [SP,#0x60+var_58]
00042534: CMP             X8, #0
00042538: CSEL            W8, W26, W25, EQ
0004253c: CMP             W8, W22
00042540: B.LE            loc_42560
00042544: CMP             W8, W25
00042548: B.EQ            loc_4258C
0004254c: CMP             W8, W27
00042550: B.EQ            loc_425E8
00042554: CMP             W8, W28
00042558: B.NE            loc_4253C
0004255c: B               loc_42530
00042560: CMP             W8, W24
00042564: B.EQ            loc_425B4
00042568: CMP             W8, W26
0004256c: B.NE            loc_4253C
00042570: MOV             X0, X21
00042574: MOV             X1, X20
00042578: MOV             X2, X19
0004257c: BL              sub_1FF84
00042580: CMP             W0, #0
00042584: CSEL            W8, W24, W27, EQ
00042588: B               loc_4253C
0004258c: LDR             X0, [SP,#0x60+var_58]
00042590: BL              sub_1E08C
00042594: LDR             X2, [SP,#0x60+var_58]
00042598: ADRP            X1, #byte_F65D0@PAGE ; runtime: 0xf65d0='sat'
0004259c: MOV             X0, X19
000425a0: ADD             X1, X1, #byte_F65D0@PAGEOFF ; runtime: 0xf65d0='sat'
000425a4: BL              sub_13984
000425a8: MOV             W8, #0xF024E1CD
000425ac: MOV             W8, #0xF024E1CD
000425b0: B               loc_4253C
000425b4: ADRP            X1, #byte_F65D4@PAGE ; runtime: 0xf65d4='fit'
000425b8: MOV             X0, X19
000425bc: ADD             X1, X1, #byte_F65D4@PAGEOFF ; runtime: 0xf65d4='fit'
000425c0: MOV             X2, X23
000425c4: BL              sub_13C74
000425c8: ADRP            X1, #byte_F65D8@PAGE ; runtime: 0xf65d8='lut'
000425cc: MOV             X0, X19
000425d0: ADD             X1, X1, #byte_F65D8@PAGEOFF ; runtime: 0xf65d8='lut'
000425d4: MOV             X2, X23
000425d8: BL              sub_13C74
000425dc: MOV             W8, #0x41DD75DF
000425e0: MOV             W8, #0x41DD75DF
000425e4: B               loc_4253C
000425e8: LDP             X29, X30, [SP,#0x60+var_s0]
000425ec: LDP             X20, X19, [SP,#0x60+var_10]
000425f0: LDP             X22, X21, [SP,#0x60+var_20]
000425f4: LDP             X24, X23, [SP,#0x60+var_30]
000425f8: LDP             X26, X25, [SP,#0x60+var_40]
000425fc: LDP             X28, X27, [SP,#0x60+var_50]
00042600: ADD             SP, SP, #0x70 ; 'p'
00042604: RET
00042608: SUB             SP, SP, #0xE0
0004260c: STP             X28, X27, [SP,#0xE0+var_60]
00042610: STP             X26, X25, [SP,#0xE0+var_50]
00042614: STP             X24, X23, [SP,#0xE0+var_40]
00042618: STP             X22, X21, [SP,#0xE0+var_30]
0004261c: STP             X20, X19, [SP,#0xE0+var_20]
00042620: STP             X29, X30, [SP,#0xE0+var_10]
00042624: ADRL            X21, byte_F6538 ; runtime: 0xf6538='iod'
00042628: ADRL            X21, byte_F6538 ; runtime: 0xf6538='iod'
0004262c: LDRB            W10, [X21]
00042630: LDRB            W11, [X21,#(byte_F6539 - 0xF6538)] ; runtime: 0xf6539='od'
00042634: LDRB            W12, [X21,#(byte_F653A - 0xF6538)] ; runtime: 0xf653a='d'
00042638: LDRB            W14, [X21,#(byte_F653B - 0xF6538)]
0004263c: MOV             W17, #0xA6
00042640: MOV             W24, #0x59 ; 'Y'
00042644: BIC             W23, W17, W10
00042648: AND             W10, W10, W24
0004264c: ORR             W10, W23, W10
00042650: BIC             W23, W17, W11
00042654: AND             W11, W11, W24
00042658: ADRP            X22, #byte_F6594@PAGE ; runtime: 0xf6594='lau'
0004265c: ORR             W11, W23, W11
00042660: BIC             W23, W17, W12
00042664: AND             W12, W12, W24
00042668: ADD             X22, X22, #byte_F6594@PAGEOFF ; runtime: 0xf6594='lau'
0004266c: ORR             W12, W23, W12
00042670: BIC             W23, W17, W14
00042674: AND             W14, W14, W24
00042678: LDRB            W16, [X22]
0004267c: ORR             W14, W23, W14
00042680: LDRB            W23, [X22,#(byte_F6595 - 0xF6594)] ; runtime: 0xf6595='au'
00042684: STRB            W10, [X21]
00042688: LDRB            W10, [X22,#(byte_F6596 - 0xF6594)] ; runtime: 0xf6596='u'
0004268c: STRB            W11, [X21,#(byte_F6539 - 0xF6538)] ; runtime: 0xf6539='od'
00042690: LDRB            W11, [X22,#(byte_F6597 - 0xF6594)]
00042694: MOV             W8, #0xD2
00042698: MOV             W9, #0x2D ; '-'
0004269c: STRB            W12, [X21,#(byte_F653A - 0xF6538)] ; runtime: 0xf653a='d'
000426a0: BIC             W27, W8, W16
000426a4: AND             W29, W16, W9
000426a8: STRB            W14, [X21,#(byte_F653B - 0xF6538)]
000426ac: BIC             W26, W8, W23
000426b0: AND             W28, W23, W9
000426b4: BIC             W21, W8, W10
000426b8: BIC             W23, W8, W11
000426bc: ADRP            X8, #a0@PAGE; ">.0\\"
000426c0: AND             W24, W10, W9
000426c4: AND             W25, W11, W9
000426c8: ADD             X8, X8, #a0@PAGEOFF; ">.0\\"
000426cc: ORR             W9, W27, W29
000426d0: ORR             W11, W26, W28
000426d4: ORR             W14, W21, W24
000426d8: LDRB            W16, [X8]; ">.0\\"
000426dc: ORR             W21, W23, W25
000426e0: LDRB            W23, [X8,#(a0+1 - 0xF65A4)]; ".0\\"
000426e4: STRB            W9, [X22]
000426e8: LDRB            W9, [X8,#(a0+2 - 0xF65A4)]; "0\\"
000426ec: STRB            W11, [X22,#(byte_F6595 - 0xF6594)] ; runtime: 0xf6595='au'
000426f0: LDRB            W11, [X8,#(a0+3 - 0xF65A4)]; "\\"
000426f4: MOV             W10, #0x5C ; '\'
000426f8: MOV             W12, #0xA3
000426fc: STRB            W14, [X22,#(byte_F6596 - 0xF6594)] ; runtime: 0xf6596='u'
00042700: BIC             W14, W10, W16
00042704: STRB            W21, [X22,#(byte_F6597 - 0xF6594)]
00042708: BIC             W21, W10, W23
0004270c: AND             W22, W23, W12
00042710: BIC             W23, W10, W9
00042714: BIC             W10, W10, W11
00042718: AND             W11, W11, W12
0004271c: AND             W16, W16, W12
00042720: ORR             W10, W10, W11
00042724: ADRP            X11, #byte_F65C4@PAGE ; runtime: 0xf65c4='sb'
00042728: AND             W9, W9, W12
0004272c: ORR             W12, W14, W16
00042730: ADD             X11, X11, #byte_F65C4@PAGEOFF ; runtime: 0xf65c4='sb'
00042734: ORR             W9, W23, W9
00042738: STRB            W12, [X8]; ">.0\\"
0004273c: LDRB            W12, [X11]
00042740: ORR             W14, W21, W22
00042744: STRB            W9, [X8,#(a0+2 - 0xF65A4)]; "0\\"
00042748: LDRB            W9, [X11,#(byte_F65C5 - 0xF65C4)] ; runtime: 0xf65c5='b'
0004274c: STRB            W14, [X8,#(a0+1 - 0xF65A4)]; ".0\\"
00042750: STRB            W10, [X8,#(a0+3 - 0xF65A4)]; "\\"
00042754: LDRB            W8, [X11,#(byte_F65C6 - 0xF65C4)]
00042758: MOV             W14, #0x29 ; ')'
0004275c: MOV             W16, #0xD6
00042760: BIC             W10, W14, W12
00042764: AND             W12, W12, W16
00042768: ADRP            X1, #byte_F652C@PAGE ; runtime: 0xf652c='ir'
0004276c: ORR             W10, W10, W12
00042770: BIC             W12, W14, W9
00042774: AND             W9, W9, W16
00042778: ADD             X1, X1, #byte_F652C@PAGEOFF ; runtime: 0xf652c='ir'
0004277c: ORR             W9, W12, W9
00042780: BIC             W12, W14, W8
00042784: AND             W8, W8, W16
00042788: ORR             W8, W12, W8
0004278c: STRB            W9, [X11,#(byte_F65C5 - 0xF65C4)] ; runtime: 0xf65c5='b'
00042790: LDRB            W9, [X1]
00042794: STRB            W8, [X11,#(byte_F65C6 - 0xF65C4)]
00042798: LDRB            W8, [X1,#(byte_F652D - 0xF652C)] ; runtime: 0xf652d='r'
0004279c: MOV             W3, #0x74 ; 't'
000427a0: STRB            W10, [X11]
000427a4: LDRB            W10, [X1,#(byte_F652E - 0xF652C)]
000427a8: MOV             W17, #0x8B
000427ac: BIC             W11, W3, W9
000427b0: AND             W9, W9, W17
000427b4: ORR             W9, W11, W9
000427b8: MVN             W11, W8
000427bc: AND             W8, W8, #0x99999999
000427c0: AND             W11, W11, #0x66666666
000427c4: ADRP            X2, #byte_F6530@PAGE ; runtime: 0xf6530='edp'
000427c8: ORR             W8, W11, W8
000427cc: MVN             W11, W10
000427d0: ADD             X2, X2, #byte_F6530@PAGEOFF ; runtime: 0xf6530='edp'
000427d4: AND             W10, W10, #0x99999999
000427d8: AND             W11, W11, #0x66666666
000427dc: ORR             W10, W11, W10
000427e0: LDRB            W11, [X2]
000427e4: MOV             W12, #0x12
000427e8: EOR             W9, W9, W12
000427ec: STRB            W9, [X1]
000427f0: LDRB            W9, [X2,#(byte_F6531 - 0xF6530)] ; runtime: 0xf6531='dp'
000427f4: STRB            W8, [X1,#(byte_F652D - 0xF652C)] ; runtime: 0xf652d='r'
000427f8: LDRB            W8, [X2,#(byte_F6532 - 0xF6530)] ; runtime: 0xf6532='p'
000427fc: MVN             W12, W11
00042800: AND             W11, W11, #0xFFFFFFCF
00042804: AND             W12, W12, #0x30 ; '0'
00042808: STRB            W10, [X1,#(byte_F652E - 0xF652C)]
0004280c: LDRB            W10, [X2,#(byte_F6533 - 0xF6530)]
00042810: ORR             W11, W12, W11
00042814: MVN             W12, W9
00042818: AND             W9, W9, #0xFFFFFFCF
0004281c: AND             W12, W12, #0x30 ; '0'
00042820: ORR             W9, W12, W9
00042824: MVN             W12, W8
00042828: ADRP            X4, #byte_F6534@PAGE ; runtime: 0xf6534='iam'
0004282c: AND             W8, W8, #0xFFFFFFCF
00042830: AND             W12, W12, #0x30 ; '0'
00042834: ADD             X4, X4, #byte_F6534@PAGEOFF ; runtime: 0xf6534='iam'
00042838: ORR             W8, W12, W8
0004283c: MVN             W12, W10
00042840: AND             W10, W10, #0xFFFFFFCF
00042844: AND             W12, W12, #0x30 ; '0'
00042848: STRB            W8, [X2,#(byte_F6532 - 0xF6530)] ; runtime: 0xf6532='p'
0004284c: LDRB            W8, [X4,#(byte_F6535 - 0xF6534)] ; runtime: 0xf6535='am'
00042850: ORR             W10, W12, W10
00042854: LDRB            W12, [X4,#(byte_F6537 - 0xF6534)]
00042858: STRB            W10, [X2,#(byte_F6533 - 0xF6530)]
0004285c: LDRB            W10, [X4]
00042860: MOV             W30, #0x25 ; '%'
00042864: MOV             W15, #0xDA
00042868: BIC             W14, W30, W8
0004286c: AND             W8, W8, W15
00042870: LDRB            W16, [X4,#(byte_F6536 - 0xF6534)] ; runtime: 0xf6536='m'
00042874: ORR             W8, W14, W8
00042878: MVN             W14, W12
0004287c: AND             W12, W12, #0xF0
00042880: BFXIL           W12, W14, #0, #4
00042884: MVN             W14, W10
00042888: ADRP            X19, #byte_F653C@PAGE ; runtime: 0xf653c='idv'
0004288c: AND             W10, W10, #0xFFFFFFF1
00042890: AND             W14, W14, #0xE
00042894: MOV             W0, #0x2B ; '+'
00042898: ADD             X19, X19, #byte_F653C@PAGEOFF ; runtime: 0xf653c='idv'
0004289c: ORR             W10, W14, W10
000428a0: MVN             W14, W16
000428a4: STRB            W10, [X4]
000428a8: LDRB            W10, [X19]
000428ac: EOR             W8, W8, W0
000428b0: AND             W16, W16, #0xFFFFFFF1
000428b4: AND             W14, W14, #0xE
000428b8: STRB            W8, [X4,#(byte_F6535 - 0xF6534)] ; runtime: 0xf6535='am'
000428bc: LDRB            W8, [X19,#(byte_F653D - 0xF653C)] ; runtime: 0xf653d='dv'
000428c0: ORR             W14, W14, W16
000428c4: MOV             W20, #0x7A ; 'z'
000428c8: MOV             W5, #0x85
000428cc: STRB            W14, [X4,#(byte_F6536 - 0xF6534)] ; runtime: 0xf6536='m'
000428d0: LDRB            W14, [X19,#(byte_F653E - 0xF653C)] ; runtime: 0xf653e='v'
000428d4: EOR             W12, W12, #1
000428d8: STRB            W12, [X4,#(byte_F6537 - 0xF6534)]
000428dc: LDRB            W12, [X19,#(byte_F653F - 0xF653C)]
000428e0: BIC             W1, W20, W10
000428e4: AND             W10, W10, W5
000428e8: MOV             W4, #0x5A ; 'Z'
000428ec: MOV             W21, #0xA5
000428f0: ADRP            X24, #byte_F6560@PAGE ; runtime: 0xf6560='idc2'
000428f4: ORR             W10, W1, W10
000428f8: BIC             W1, W4, W8
000428fc: AND             W8, W8, W21
00042900: ADD             X24, X24, #byte_F6560@PAGEOFF ; runtime: 0xf6560='idc2'
00042904: ORR             W8, W1, W8
00042908: BIC             W1, W20, W14
0004290c: AND             W14, W14, W5
00042910: STRB            W10, [X19]
00042914: LDRB            W10, [X24]
00042918: EOR             W8, W8, #0x20 ; ' '
0004291c: ORR             W14, W1, W14
00042920: BIC             W1, W20, W12
00042924: AND             W12, W12, W5
00042928: STRB            W8, [X19,#(byte_F653D - 0xF653C)] ; runtime: 0xf653d='dv'
0004292c: LDRB            W8, [X24,#(byte_F6561 - 0xF6560)] ; runtime: 0xf6561='dc2'
00042930: ORR             W12, W1, W12
00042934: STRB            W12, [X19,#(byte_F653F - 0xF653C)]
00042938: LDRB            W12, [X24,#(byte_F6563 - 0xF6560)] ; runtime: 0xf6563='2'
0004293c: MOV             W29, #0x34 ; '4'
00042940: MOV             W13, #0xCB
00042944: STRB            W14, [X19,#(byte_F653E - 0xF653C)] ; runtime: 0xf653e='v'
00042948: LDRB            W14, [X24,#(byte_F6562 - 0xF6560)] ; runtime: 0xf6562='c2'
0004294c: MVN             W3, W10
00042950: AND             W10, W10, #0xF0
00042954: BFXIL           W10, W3, #0, #4
00042958: BIC             W3, W29, W8
0004295c: AND             W8, W8, W13
00042960: MOV             W26, #0xC2
00042964: MOV             W27, #0x3D ; '='
00042968: ORR             W8, W3, W8
0004296c: LDRB            W3, [X24,#(byte_F6564 - 0xF6560)]
00042970: STRB            W11, [X2]
00042974: STRB            W9, [X2,#(byte_F6531 - 0xF6530)] ; runtime: 0xf6531='dp'
00042978: BIC             W2, W26, W12
0004297c: AND             W12, W12, W27
00042980: ORR             W12, W2, W12
00042984: MVN             W2, W14
00042988: ADRP            X28, #byte_F6568@PAGE ; runtime: 0xf6568='rtp'
0004298c: AND             W14, W14, #0x33333333
00042990: AND             W2, W2, #0xCCCCCCCC
00042994: ADD             X28, X28, #byte_F6568@PAGEOFF ; runtime: 0xf6568='rtp'
00042998: ORR             W14, W2, W14
0004299c: MVN             W2, W3
000429a0: EOR             W12, W12, #0xE
000429a4: AND             W3, W3, #0x33333333
000429a8: AND             W2, W2, #0xCCCCCCCC
000429ac: STRB            W14, [X24,#(byte_F6562 - 0xF6560)] ; runtime: 0xf6562='c2'
000429b0: LDRB            W14, [X28]
000429b4: STRB            W12, [X24,#(byte_F6563 - 0xF6560)] ; runtime: 0xf6563='2'
000429b8: LDRB            W12, [X28,#(byte_F656A - 0xF6568)] ; runtime: 0xf656a='p'
000429bc: ORR             W2, W2, W3
000429c0: LDRB            W3, [X28,#(byte_F656B - 0xF6568)]
000429c4: MOV             W23, #0x56 ; 'V'
000429c8: MOV             W25, #0xA9
000429cc: MOV             W11, #0xDC
000429d0: MOV             W9, #0x23 ; '#'
000429d4: MOV             W16, #0xC4
000429d8: MOV             W15, #0x3B ; ';'
000429dc: EOR             W10, W10, #0xFFFFFFC3
000429e0: BIC             W11, W11, W12
000429e4: AND             W9, W12, W9
000429e8: BIC             W12, W23, W14
000429ec: AND             W14, W14, W25
000429f0: STRB            W10, [X24]
000429f4: ADRP            X10, #byte_F6570@PAGE ; runtime: 0xf6570='rrs'
000429f8: STRB            W2, [X24,#(byte_F6564 - 0xF6560)]
000429fc: LDRB            W2, [X28,#(byte_F6569 - 0xF6568)] ; runtime: 0xf6569='tp'
00042a00: ORR             W12, W12, W14
00042a04: ORR             W9, W11, W9
00042a08: BIC             W16, W16, W3
00042a0c: AND             W3, W3, W15
00042a10: MOV             W1, #0x9D
00042a14: ADD             X10, X10, #byte_F6570@PAGEOFF ; runtime: 0xf6570='rrs'
00042a18: ORR             W16, W16, W3
00042a1c: EOR             W9, W9, W5
00042a20: EOR             W12, W12, #0xF
00042a24: LDRB            W5, [X10]
00042a28: STRB            W12, [X28]
00042a2c: LDRB            W12, [X10,#(byte_F6571 - 0xF6570)] ; runtime: 0xf6571='rs'
00042a30: STRB            W9, [X28,#(byte_F656A - 0xF6568)] ; runtime: 0xf656a='p'
00042a34: LDRB            W9, [X10,#(byte_F6573 - 0xF6570)]
00042a38: EOR             W16, W16, W1
00042a3c: MOV             W7, #0xA6
00042a40: MOV             W6, #0x59 ; 'Y'
00042a44: STRB            W16, [X28,#(byte_F656B - 0xF6568)]
00042a48: LDRB            W16, [X10,#(byte_F6572 - 0xF6570)] ; runtime: 0xf6572='s'
00042a4c: BIC             W14, W6, W2
00042a50: AND             W2, W2, W7
00042a54: ORR             W14, W14, W2
00042a58: MOV             W2, #0x94
00042a5c: MOV             W11, #0x6B ; 'k'
00042a60: MOV             W30, #9
00042a64: MOV             W27, #0xF6
00042a68: BIC             W6, W2, W12
00042a6c: AND             W12, W12, W11
00042a70: BIC             W2, W2, W9
00042a74: AND             W9, W9, W11
00042a78: MVN             W11, W5
00042a7c: AND             W19, W5, #0xC0
00042a80: EOR             W8, W8, #0xF8
00042a84: BFXIL           W19, W11, #0, #6
00042a88: ORR             W11, W6, W12
00042a8c: BIC             W12, W30, W16
00042a90: AND             W16, W16, W27
00042a94: STRB            W8, [X24,#(byte_F6561 - 0xF6560)] ; runtime: 0xf6561='dc2'
00042a98: MOV             W8, #0xAB
00042a9c: ADRP            X3, #byte_F6574@PAGE ; runtime: 0xf6574='rmp'
00042aa0: ORR             W12, W12, W16
00042aa4: ADD             X3, X3, #byte_F6574@PAGEOFF ; runtime: 0xf6574='rmp'
00042aa8: ORR             W9, W2, W9
00042aac: EOR             W6, W19, W8
00042ab0: EOR             W12, W12, W1
00042ab4: STRB            W11, [X10,#(byte_F6571 - 0xF6570)] ; runtime: 0xf6571='rs'
00042ab8: STRB            W9, [X10,#(byte_F6573 - 0xF6570)]
00042abc: STRB            W6, [X10]
00042ac0: LDRB            W1, [X3,#(byte_F6575 - 0xF6574)] ; runtime: 0xf6575='mp'
00042ac4: STRB            W12, [X10,#(byte_F6572 - 0xF6570)] ; runtime: 0xf6572='s'
00042ac8: LDRB            W10, [X3]
00042acc: MOV             W24, #0x64 ; 'd'
00042ad0: MOV             W15, #0x9B
00042ad4: MOV             W16, #0xF2
00042ad8: MOV             W2, #0xD
00042adc: LDRB            W12, [X3,#(byte_F6576 - 0xF6574)] ; runtime: 0xf6576='p'
00042ae0: BIC             W16, W16, W1
00042ae4: AND             W1, W1, W2
00042ae8: BIC             W2, W24, W10
00042aec: AND             W10, W10, W15
00042af0: ORR             W10, W2, W10
00042af4: LDRB            W2, [X3,#(byte_F6577 - 0xF6574)]
00042af8: ORR             W16, W16, W1
00042afc: BIC             W1, W24, W12
00042b00: AND             W12, W12, W15
00042b04: MOV             W20, #0x96
00042b08: ADRP            X11, #byte_F6578@PAGE ; runtime: 0xf6578='pm'
00042b0c: ORR             W12, W1, W12
00042b10: BIC             W1, W24, W2
00042b14: AND             W2, W2, W15
00042b18: ADD             X11, X11, #byte_F6578@PAGEOFF ; runtime: 0xf6578='pm'
00042b1c: ORR             W1, W1, W2
00042b20: EOR             W16, W16, W20
00042b24: STRB            W1, [X3,#(byte_F6577 - 0xF6574)]
00042b28: LDRB            W1, [X11,#(byte_F6579 - 0xF6578)] ; runtime: 0xf6579='m'
00042b2c: STRB            W16, [X3,#(byte_F6575 - 0xF6574)] ; runtime: 0xf6575='mp'
00042b30: LDRB            W16, [X11]
00042b34: STRB            W10, [X3]
00042b38: STRB            W12, [X3,#(byte_F6576 - 0xF6574)] ; runtime: 0xf6576='p'
00042b3c: LDRB            W3, [X11,#(byte_F657A - 0xF6578)]
00042b40: MOV             W9, #0xEB
00042b44: MOV             W2, #0x14
00042b48: BIC             W9, W9, W1
00042b4c: AND             W1, W1, W2
00042b50: MVN             W2, W16
00042b54: AND             W16, W16, #0xC0
00042b58: MOV             W19, #0xB
00042b5c: ADRP            X10, #byte_F657C@PAGE ; runtime: 0xf657c='sp'
00042b60: BFXIL           W16, W2, #0, #6
00042b64: ORR             W9, W9, W1
00042b68: BIC             W1, W29, W3
00042b6c: AND             W3, W3, W13
00042b70: ADD             X10, X10, #byte_F657C@PAGEOFF ; runtime: 0xf657c='sp'
00042b74: ORR             W1, W1, W3
00042b78: EOR             W16, W16, W19
00042b7c: EOR             W9, W9, #0xFFFFFFDF
00042b80: STRB            W1, [X11,#(byte_F657A - 0xF6578)]
00042b84: STRB            W16, [X11]
00042b88: STRB            W9, [X11,#(byte_F6579 - 0xF6578)] ; runtime: 0xf6579='m'
00042b8c: LDRB            W11, [X10,#(byte_F657E - 0xF657C)]
00042b90: LDRB            W16, [X10]
00042b94: LDRB            W6, [X10,#(byte_F657D - 0xF657C)] ; runtime: 0xf657d='p'
00042b98: MOV             W12, #0xE8
00042b9c: MOV             W2, #0x17
00042ba0: BIC             W3, W25, W11
00042ba4: AND             W11, W11, W23
00042ba8: BIC             W12, W12, W16
00042bac: AND             W16, W16, W2
00042bb0: ORR             W11, W3, W11
00042bb4: MVN             W3, W6
00042bb8: MOV             W8, #0x13
00042bbc: MOV             W1, #0x52 ; 'R'
00042bc0: ADRP            X9, #byte_F6580@PAGE ; runtime: 0xf6580='ro'
00042bc4: ORR             W12, W12, W16
00042bc8: AND             W6, W6, #4
00042bcc: AND             W3, W3, #0xFFFFFFFB
00042bd0: ADD             X9, X9, #byte_F6580@PAGEOFF ; runtime: 0xf6580='ro'
00042bd4: ORR             W3, W3, W6
00042bd8: EOR             W11, W11, W1
00042bdc: EOR             W12, W12, W8
00042be0: STRB            W12, [X10]
00042be4: STRB            W3, [X10,#(byte_F657D - 0xF657C)] ; runtime: 0xf657d='p'
00042be8: LDRB            W3, [X9]
00042bec: STRB            W11, [X10,#(byte_F657E - 0xF657C)]
00042bf0: LDRB            W10, [X9,#(byte_F6581 - 0xF6580)] ; runtime: 0xf6581='o'
00042bf4: LDRB            W11, [X9,#(byte_F6582 - 0xF6580)]
00042bf8: MOV             W2, #0x89
00042bfc: MOV             W16, #0x76 ; 'v'
00042c00: MOV             W1, #0x4C ; 'L'
00042c04: MOV             W12, #0xB3
00042c08: BIC             W2, W2, W3
00042c0c: AND             W16, W3, W16
00042c10: BIC             W3, W1, W10
00042c14: AND             W10, W10, W12
00042c18: BIC             W1, W1, W11
00042c1c: AND             W11, W11, W12
00042c20: ADRL            X12, byte_F6588 ; runtime: 0xf6588='iss'
00042c24: ADRL            X12, byte_F6588 ; runtime: 0xf6588='iss'
00042c28: ORR             W11, W1, W11
00042c2c: STRB            W11, [X9,#(byte_F6582 - 0xF6580)]
00042c30: LDRB            W11, [X12,#(byte_F658A - 0xF6588)] ; runtime: 0xf658a='s'
00042c34: ORR             W10, W3, W10
00042c38: MOV             W1, #0xA0
00042c3c: MOV             W3, #0x5F ; '_'
00042c40: BIC             W1, W1, W11
00042c44: AND             W11, W11, W3
00042c48: LDRB            W3, [X12,#(byte_F6589 - 0xF6588)] ; runtime: 0xf6589='ss'
00042c4c: MOV             W6, #0xC5
00042c50: ORR             W16, W2, W16
00042c54: MOV             W8, #0xD4
00042c58: EOR             W16, W16, W6
00042c5c: STRB            W16, [X9]
00042c60: LDRB            W16, [X12,#(byte_F658B - 0xF6588)]
00042c64: AND             W0, W3, W0
00042c68: BIC             W3, W8, W3
00042c6c: ORR             W0, W3, W0
00042c70: LDRB            W3, [X12]
00042c74: STRB            W10, [X9,#(byte_F6581 - 0xF6580)] ; runtime: 0xf6581='o'
00042c78: MOV             W10, #0xAC
00042c7c: MOV             W9, #0x53 ; 'S'
00042c80: BIC             W10, W10, W16
00042c84: AND             W9, W16, W9
00042c88: ADRP            X16, #byte_F658C@PAGE ; runtime: 0xf658c='onv'
00042c8c: ORR             W11, W1, W11
00042c90: ORR             W9, W10, W9
00042c94: MVN             W10, W3
00042c98: MOV             W2, #0xB4
00042c9c: ADD             X16, X16, #byte_F658C@PAGEOFF ; runtime: 0xf658c='onv'
00042ca0: AND             W3, W3, #0xFFFFFF9F
00042ca4: AND             W10, W10, #0x60 ; '`'
00042ca8: EOR             W11, W11, #0xC0
00042cac: ORR             W10, W10, W3
00042cb0: EOR             W0, W0, W2
00042cb4: STRB            W11, [X12,#(byte_F658A - 0xF6588)] ; runtime: 0xf658a='s'
00042cb8: LDRB            W11, [X16]
00042cbc: EOR             W9, W9, #0xCCCCCCCC
00042cc0: STRB            W10, [X12]
00042cc4: STRB            W0, [X12,#(byte_F6589 - 0xF6588)] ; runtime: 0xf6589='ss'
00042cc8: STRB            W9, [X12,#(byte_F658B - 0xF6588)]
00042ccc: LDRB            W12, [X16,#(byte_F658F - 0xF658C)]
00042cd0: MOV             W1, #0xE2
00042cd4: MOV             W10, #0x2E ; '.'
00042cd8: MOV             W9, #0xD1
00042cdc: BIC             W0, W1, W11
00042ce0: LDRB            W1, [X16,#(byte_F658D - 0xF658C)] ; runtime: 0xf658d='nv'
00042ce4: BIC             W10, W10, W12
00042ce8: AND             W9, W12, W9
00042cec: LDRB            W12, [X16,#(byte_F658E - 0xF658C)] ; runtime: 0xf658e='v'
00042cf0: MOV             W3, #0x1D
00042cf4: AND             W11, W11, W3
00042cf8: MOV             W6, #0x4F ; 'O'
00042cfc: MOV             W8, #0xB0
00042d00: ORR             W11, W0, W11
00042d04: BIC             W0, W21, W1
00042d08: AND             W1, W1, W4
00042d0c: ORR             W1, W0, W1
00042d10: BIC             W0, W6, W12
00042d14: AND             W12, W12, W8
00042d18: ORR             W9, W10, W9
00042d1c: MOV             W10, #0x47 ; 'G'
00042d20: ORR             W12, W0, W12
00042d24: EOR             W10, W11, W10
00042d28: MOV             W11, #0xEA
00042d2c: STRB            W1, [X16,#(byte_F658D - 0xF658C)] ; runtime: 0xf658d='nv'
00042d30: ADRL            X1, byte_F6590 ; runtime: 0xf6590='gas'
00042d34: ADRL            X1, byte_F6590 ; runtime: 0xf6590='gas'
00042d38: EOR             W12, W12, W11
00042d3c: EOR             W9, W9, W17
00042d40: STRB            W12, [X16,#(byte_F658E - 0xF658C)] ; runtime: 0xf658e='v'
00042d44: LDRB            W12, [X1,#(byte_F6592 - 0xF6590)] ; runtime: 0xf6592='s'
00042d48: STRB            W9, [X16,#(byte_F658F - 0xF658C)]
00042d4c: LDRB            W9, [X1]
00042d50: MOV             W13, #0x15
00042d54: STRB            W10, [X16]
00042d58: LDRB            W16, [X1,#(byte_F6591 - 0xF6590)] ; runtime: 0xf6591='as'
00042d5c: BIC             W13, W13, W12
00042d60: AND             W11, W12, W11
00042d64: LDRB            W12, [X1,#(byte_F6593 - 0xF6590)]
00042d68: ORR             W11, W13, W11
00042d6c: MVN             W13, W9
00042d70: AND             W9, W9, #0xDDDDDDDD
00042d74: AND             W13, W13, #0x22222222
00042d78: ORR             W9, W13, W9
00042d7c: MVN             W13, W16
00042d80: MOV             W10, #0x37 ; '7'
00042d84: AND             W16, W16, #0xDDDDDDDD
00042d88: AND             W13, W13, #0x22222222
00042d8c: ORR             W13, W13, W16
00042d90: ADRP            X16, #byte_F65D0@PAGE ; runtime: 0xf65d0='sat'
00042d94: EOR             W10, W11, W10
00042d98: MVN             W11, W12
00042d9c: ADD             X16, X16, #byte_F65D0@PAGEOFF ; runtime: 0xf65d0='sat'
00042da0: AND             W12, W12, #0xDDDDDDDD
00042da4: AND             W11, W11, #0x22222222
00042da8: ORR             W11, W11, W12
00042dac: STRB            W10, [X1,#(byte_F6592 - 0xF6590)] ; runtime: 0xf6592='s'
00042db0: LDRB            W10, [X16,#(byte_F65D1 - 0xF65D0)] ; runtime: 0xf65d1='at'
00042db4: STRB            W9, [X1]
00042db8: STRB            W13, [X1,#(byte_F6591 - 0xF6590)] ; runtime: 0xf6591='as'
00042dbc: STRB            W11, [X1,#(byte_F6593 - 0xF6590)]
00042dc0: LDRB            W1, [X16,#(byte_F65D3 - 0xF65D0)]
00042dc4: MOV             W12, #0x82
00042dc8: MOV             W9, #0x7D ; '}'
00042dcc: MOV             W13, #0x2C ; ','
00042dd0: MOV             W11, #0xD3
00042dd4: BIC             W12, W12, W10
00042dd8: AND             W9, W10, W9
00042ddc: LDRB            W10, [X16,#(byte_F65D2 - 0xF65D0)] ; runtime: 0xf65d2='t'
00042de0: BIC             W13, W13, W1
00042de4: AND             W11, W1, W11
00042de8: LDRB            W1, [X16]
00042dec: ORR             W9, W12, W9
00042df0: MVN             W12, W10
00042df4: AND             W10, W10, #0xF8
00042df8: BFXIL           W10, W12, #0, #3
00042dfc: MVN             W12, W1
00042e00: ORR             W11, W13, W11
00042e04: AND             W13, W1, #0xFFFFFFDF
00042e08: AND             W12, W12, #0x20 ; ' '
00042e0c: ORR             W12, W12, W13
00042e10: MOV             W13, #0x27 ; '''
00042e14: ADRP            X8, #byte_F6540@PAGE ; runtime: 0xf6540='ads'
00042e18: ADRP            X17, #byte_F655C@PAGE ; runtime: 0xf655c='idc'
00042e1c: EOR             W10, W10, W13
00042e20: MOV             W13, #0xA2
00042e24: ADD             X8, X8, #byte_F6540@PAGEOFF ; runtime: 0xf6540='ads'
00042e28: ADD             X17, X17, #byte_F655C@PAGEOFF ; runtime: 0xf655c='idc'
00042e2c: EOR             W9, W9, W13
00042e30: STRB            W10, [X16,#(byte_F65D2 - 0xF65D0)] ; runtime: 0xf65d2='t'
00042e34: LDRB            W10, [X8,#(byte_F6543 - 0xF6540)]
00042e38: STRB            W12, [X16]
00042e3c: LDRB            W12, [X8]
00042e40: STRB            W9, [X16,#(byte_F65D1 - 0xF65D0)] ; runtime: 0xf65d1='at'
00042e44: LDRB            W9, [X8,#(byte_F6542 - 0xF6540)] ; runtime: 0xf6542='s'
00042e48: LDRB            W13, [X17]
00042e4c: MOV             W0, #0x41 ; 'A'
00042e50: MOV             W8, #0xBE
00042e54: BIC             W5, W8, W10
00042e58: AND             W4, W10, W0
00042e5c: MOV             W10, #0x73 ; 's'
00042e60: STRB            W14, [X28,#(byte_F6569 - 0xF6568)] ; runtime: 0xf6569='tp'
00042e64: BIC             W29, W8, W12
00042e68: BIC             W28, W8, W9
00042e6c: BIC             W8, W10, W13
00042e70: LDRB            W10, [X17,#(byte_F655E - 0xF655C)] ; runtime: 0xf655e='c'
00042e74: AND             W23, W12, W0
00042e78: AND             W26, W9, W0
00042e7c: MOV             W0, #0x8C
00042e80: STR             W8, [SP,#0xE0+var_64]
00042e84: AND             W8, W13, W0
00042e88: MOV             W13, #0xD5
00042e8c: STR             W8, [SP,#0xE0+var_68]
00042e90: BIC             W8, W13, W10
00042e94: LDRB            W13, [X17,#(byte_F655F - 0xF655C)]
00042e98: MOV             W0, #0x2A ; '*'
00042e9c: STR             W8, [SP,#0xE0+var_6C]
00042ea0: AND             W8, W10, W0
00042ea4: MOV             W10, #0xB7
00042ea8: STR             W8, [SP,#0xE0+var_70]
00042eac: BIC             W8, W10, W13
00042eb0: STR             W8, [SP,#0xE0+var_78]
00042eb4: ADRL            X8, byte_F656C ; runtime: 0xf656c='rrt'
00042eb8: ADRL            X8, byte_F656C ; runtime: 0xf656c='rrt'
00042ebc: LDRB            W10, [X8]
00042ec0: MOV             W0, #0x48 ; 'H'
00042ec4: AND             W9, W13, W0
00042ec8: LDRB            W13, [X8,#(byte_F656D - 0xF656C)] ; runtime: 0xf656d='rt'
00042ecc: STR             W9, [SP,#0xE0+var_80]
00042ed0: BIC             W30, W30, W10
00042ed4: AND             W9, W10, W27
00042ed8: MOV             W10, #0xF5
00042edc: STR             W9, [SP,#0xE0+var_8C]
00042ee0: BIC             W9, W10, W13
00042ee4: LDRB            W10, [X8,#(byte_F656F - 0xF656C)]
00042ee8: ADRL            X2, byte_F6584 ; runtime: 0xf6584='sfp'
00042eec: ADRL            X2, byte_F6584 ; runtime: 0xf6584='sfp'
00042ef0: MOV             W0, #0xA
00042ef4: LDRB            W1, [X2,#(byte_F6585 - 0xF6584)] ; runtime: 0xf6585='fp'
00042ef8: AND             W8, W13, W0
00042efc: MOV             W13, #0x65 ; 'e'
00042f00: STR             W8, [SP,#0xE0+var_98]
00042f04: BIC             W8, W13, W10
00042f08: MOV             W0, #0x9A
00042f0c: LDRB            W13, [X2,#(byte_F6586 - 0xF6584)] ; runtime: 0xf6586='p'
00042f10: STR             W9, [SP,#0xE0+var_90]
00042f14: AND             W9, W10, W0
00042f18: MOV             W0, #0x69 ; 'i'
00042f1c: STR             W8, [SP,#0xE0+var_A0]
00042f20: BIC             W8, W0, W1
00042f24: STP             W8, W9, [SP,#0xE0+var_B0]
00042f28: AND             W8, W1, W20
00042f2c: STR             W8, [SP,#0xE0+var_BC]
00042f30: BIC             W8, W0, W13
00042f34: ADRP            X25, #qword_F6548@PAGE ; runtime: 0xf6548='init.svc.adbd'
00042f38: STR             W8, [SP,#0xE0+var_C0]
00042f3c: AND             W8, W13, W20
00042f40: ADD             X25, X25, #qword_F6548@PAGEOFF ; runtime: 0xf6548='init.svc.adbd'
00042f44: STR             W8, [SP,#0xE0+var_CC]
00042f48: LDRB            W0, [X25,#(byte_F6554 - 0xF6548)] ; runtime: 0xf6554='d'
00042f4c: ADRL            X8, byte_F6598 ; runtime: 0xf6598='pat'
00042f50: ADRL            X8, byte_F6598 ; runtime: 0xf6598='pat'
00042f54: LDRB            W27, [X8]
00042f58: ADRP            X8, #byte_F65A0@PAGE ; runtime: 0xf65a0='mua'
00042f5c: MOV             W13, #0xC6
00042f60: MOV             W20, #0x39 ; '9'
00042f64: ADD             X8, X8, #byte_F65A0@PAGEOFF ; runtime: 0xf65a0='mua'
00042f68: BIC             W3, W13, W0
00042f6c: AND             W12, W0, W20
00042f70: LDRB            W0, [X8,#(byte_F65A1 - 0xF65A0)] ; runtime: 0xf65a1='ua'
00042f74: BIC             W9, W13, W27
00042f78: STR             W9, [SP,#0xE0+var_D0]
00042f7c: AND             W9, W27, W20
00042f80: MOV             W13, #0x9E
00042f84: STR             W9, [SP,#0xE0+var_D4]
00042f88: BIC             W9, W13, W0
00042f8c: LDRB            W13, [X8,#(byte_F65A2 - 0xF65A0)] ; runtime: 0xf65a2='a'
00042f90: MOV             W20, #0x61 ; 'a'
00042f94: STR             W9, [SP,#0xE0+var_7C]
00042f98: AND             W8, W0, W20
00042f9c: MOV             W0, #0x36 ; '6'
00042fa0: ADRP            X9, #xmmword_F65B0@PAGE ; runtime: 0xf65b0='screen_brightness'
00042fa4: STR             W8, [SP,#0xE0+var_84]
00042fa8: BIC             W8, W0, W13
00042fac: ADD             X9, X9, #xmmword_F65B0@PAGEOFF ; runtime: 0xf65b0='screen_brightness'
00042fb0: STR             W8, [SP,#0xE0+var_88]
00042fb4: LDRB            W8, [X9,#(byte_F65C0 - 0xF65B0)] ; runtime: 0xf65c0='s'
00042fb8: MOV             W0, #0xC9
00042fbc: AND             W10, W13, W0
00042fc0: MOV             W13, #0xF4
00042fc4: LDRB            W9, [X9,#(byte_F65C1 - 0xF65B0)]
00042fc8: STR             W10, [SP,#0xE0+var_94]
00042fcc: BIC             W10, W13, W8
00042fd0: AND             W8, W8, W19
00042fd4: ADRL            X19, byte_F65C8 ; runtime: 0xf65c8='build'
00042fd8: ADRL            X19, byte_F65C8 ; runtime: 0xf65c8='build'
00042fdc: STR             W8, [SP,#0xE0+var_A4]
00042fe0: LDRB            W8, [X19,#(byte_F65C9 - 0xF65C8)] ; runtime: 0xf65c9='uild'
00042fe4: STR             W10, [SP,#0xE0+var_9C]
00042fe8: BIC             W10, W15, W9
00042fec: LDRB            W15, [X19,#(byte_F65CB - 0xF65C8)] ; runtime: 0xf65cb='ld'
00042ff0: MOV             W7, #0xA5
00042ff4: MOV             W21, #0x5A ; 'Z'
00042ff8: EOR             W11, W11, #0xC
00042ffc: AND             W9, W9, W24
00043000: MOV             W14, #0xA2
00043004: STRB            W11, [X16,#(byte_F65D3 - 0xF65D0)]
00043008: STR             W9, [SP,#0xE0+var_B4]
0004300c: BIC             W9, W7, W8
00043010: AND             W8, W8, W21
00043014: ADRP            X11, #byte_F65D8@PAGE ; runtime: 0xf65d8='lut'
00043018: STR             W8, [SP,#0xE0+var_C4]
0004301c: BIC             W8, W14, W15
00043020: ADD             X11, X11, #byte_F65D8@PAGEOFF ; runtime: 0xf65d8='lut'
00043024: STR             W10, [SP,#0xE0+var_A8]
00043028: STR             W8, [SP,#0xE0+var_C8]
0004302c: MOV             W8, #0x5D ; ']'
00043030: LDRB            W10, [X11]
00043034: AND             W27, W15, W8
00043038: ADRL            X8, byte_F65D4 ; runtime: 0xf65d4='fit'
0004303c: ADRL            X8, byte_F65D4 ; runtime: 0xf65d4='fit'
00043040: STR             W9, [SP,#0xE0+var_B8]
00043044: LDRB            W9, [X8,#(byte_F65D5 - 0xF65D4)] ; runtime: 0xf65d5='it'
00043048: MOV             W8, #0xB0
0004304c: BIC             W8, W8, W10
00043050: STR             W8, [SP,#0xE0+var_DC]
00043054: LDRB            W8, [X11,#(byte_F65DA - 0xF65D8)] ; runtime: 0xf65da='t'
00043058: ORR             W29, W29, W23
0004305c: LDRB            W23, [X25,#(byte_F6550 - 0xF6548)] ; runtime: 0xf6550='.adbd'
00043060: AND             W20, W10, W6
00043064: MOV             W10, #0x34 ; '4'
00043068: MOV             W11, #0xCB
0004306c: ORR             W26, W28, W26
00043070: ORR             W28, W5, W4
00043074: LDRB            W4, [X25,#(byte_F6551 - 0xF6548)] ; runtime: 0xf6551='adbd'
00043078: MOV             W22, #0xD6
0004307c: BIC             W7, W11, W8
00043080: AND             W1, W8, W10
00043084: MOV             W8, #0x29 ; ')'
00043088: BIC             W5, W22, W23
0004308c: AND             W23, W23, W8
00043090: ORR             W0, W5, W23
00043094: LDRB            W5, [X25,#(byte_F6552 - 0xF6548)] ; runtime: 0xf6552='dbd'
00043098: BIC             W23, W22, W4
0004309c: AND             W4, W4, W8
000430a0: ORR             W16, W23, W4
000430a4: LDRB            W23, [X25,#(byte_F6553 - 0xF6548)] ; runtime: 0xf6553='bd'
000430a8: BIC             W4, W22, W5
000430ac: AND             W5, W5, W8
000430b0: ORR             W15, W4, W5
000430b4: MOV             W4, #0x21 ; '!'
000430b8: ADRP            X24, #byte_F6558@PAGE ; runtime: 0xf6558='dtp'
000430bc: AND             W5, W23, W4
000430c0: LDRB            W4, [X25,#(byte_F6555 - 0xF6548)]
000430c4: ADD             X24, X24, #byte_F6558@PAGEOFF ; runtime: 0xf6558='dtp'
000430c8: ORR             W14, W3, W12
000430cc: LDRB            W12, [X24,#(byte_F655A - 0xF6558)] ; runtime: 0xf655a='p'
000430d0: BIC             W3, W22, W4
000430d4: AND             W4, W4, W8
000430d8: MOV             W8, #0x59 ; 'Y'
000430dc: ORR             W3, W3, W4
000430e0: BIC             W4, W8, W12
000430e4: MOV             W8, #0xA6
000430e8: AND             W12, W12, W8
000430ec: BIC             W6, W10, W9
000430f0: AND             W17, W9, W11
000430f4: MOV             W9, #0xDE
000430f8: ORR             W8, W4, W12
000430fc: BIC             W23, W9, W23
00043100: STR             W8, [SP,#0xE0+var_74]
00043104: LDP             W9, W8, [SP,#0xE0+var_68]
00043108: ORR             W13, W23, W5
0004310c: LDRB            W12, [X2,#(byte_F6587 - 0xF6584)]
00043110: MOV             W11, #0xCE
00043114: ORR             W8, W8, W9
00043118: STR             W8, [SP,#0xE0+var_64]
0004311c: LDP             W9, W8, [SP,#0xE0+var_70]
00043120: ADRL            X2, byte_F659C ; runtime: 0xf659c='sen'
00043124: ADRL            X2, byte_F659C ; runtime: 0xf659c='sen'
00043128: EOR             W13, W13, #8
0004312c: ORR             W4, W8, W9
00043130: LDR             W8, [SP,#0xE0+var_78]
00043134: LDR             W9, [SP,#0xE0+var_80]
00043138: STRB            W13, [X25,#(byte_F6553 - 0xF6548)] ; runtime: 0xf6553='bd'
0004313c: EOR             W13, W14, #0x10
00043140: STRB            W13, [X25,#(byte_F6554 - 0xF6548)] ; runtime: 0xf6554='d'
00043144: ORR             W23, W8, W9
00043148: LDR             W8, [SP,#0xE0+var_8C]
0004314c: LDR             W9, [SP,#0xE0+var_98]
00043150: LDRB            W13, [X24]
00043154: LDRB            W14, [X24,#(byte_F6559 - 0xF6558)] ; runtime: 0xf6559='tp'
00043158: ORR             W21, W30, W8
0004315c: LDR             W8, [SP,#0xE0+var_90]
00043160: MOV             W30, #0x84
00043164: AND             W30, W12, W30
00043168: STRB            W15, [X25,#(byte_F6552 - 0xF6548)] ; runtime: 0xf6552='dbd'
0004316c: ORR             W22, W8, W9
00043170: LDR             W8, [SP,#0xE0+var_A0]
00043174: LDR             W9, [SP,#0xE0+var_AC]
00043178: MVN             W15, W13
0004317c: AND             W13, W13, #0x78 ; 'x'
00043180: AND             W15, W15, #0xFFFFFF87
00043184: ORR             W8, W8, W9
00043188: STR             W8, [SP,#0xE0+var_D8]
0004318c: LDR             W8, [SP,#0xE0+var_B0]
00043190: LDR             W9, [SP,#0xE0+var_BC]
00043194: ORR             W1, W7, W1
00043198: STRB            W16, [X25,#(byte_F6551 - 0xF6548)] ; runtime: 0xf6551='adbd'
0004319c: LDRB            W16, [X24,#(byte_F655B - 0xF6558)]
000431a0: ORR             W8, W8, W9
000431a4: STR             W8, [SP,#0xE0+var_AC]
000431a8: LDR             W8, [SP,#0xE0+var_C0]
000431ac: LDR             W9, [SP,#0xE0+var_CC]
000431b0: STRB            W3, [X25,#(byte_F6555 - 0xF6548)]
000431b4: STRB            W0, [X25,#(byte_F6550 - 0xF6548)] ; runtime: 0xf6550='.adbd'
000431b8: MOV             W0, #0x6C ; 'l'
000431bc: ORR             W8, W8, W9
000431c0: STR             W8, [SP,#0xE0+var_B0]
000431c4: MOV             W8, #0x7B ; '{'
000431c8: BIC             W12, W8, W12
000431cc: ORR             W8, W12, W30
000431d0: STR             W8, [SP,#0xE0+var_8C]
000431d4: LDP             W9, W8, [SP,#0xE0+var_D4]
000431d8: MOV             W12, #0x31 ; '1'
000431dc: LDR             W30, [SP,#0xE0+var_A4]
000431e0: LDR             D0, [X25]
000431e4: ORR             W8, W8, W9
000431e8: STR             W8, [SP,#0xE0+var_BC]
000431ec: ADRL            X8, byte_F6598 ; runtime: 0xf6598='pat'
000431f0: ADRL            X8, byte_F6598 ; runtime: 0xf6598='pat'
000431f4: LDRB            W8, [X8,#(byte_F6599 - 0xF6598)] ; runtime: 0xf6599='at'
000431f8: LDRB            W9, [X2]
000431fc: MOVI            V1.8B, #0xD6
00043200: MVN             V2.8B, V0.8B
00043204: BIC             W10, W11, W8
00043208: AND             W8, W8, W12
0004320c: ORR             W8, W10, W8
00043210: STR             W8, [SP,#0xE0+var_68]
00043214: LDRB            W8, [X2,#(byte_F659D - 0xF659C)] ; runtime: 0xf659d='en'
00043218: BIC             W10, W11, W9
0004321c: AND             W9, W9, W12
00043220: ORR             W5, W10, W9
00043224: BIC             W10, W11, W8
00043228: AND             W8, W8, W12
0004322c: LDRB            W9, [X2,#(byte_F659F - 0xF659C)]
00043230: ORR             W10, W10, W8
00043234: ADRL            X8, byte_F65A0 ; runtime: 0xf65a0='mua'
00043238: ADRL            X8, byte_F65A0 ; runtime: 0xf65a0='mua'
0004323c: LDRB            W8, [X8]
00043240: BIC             W11, W11, W9
00043244: AND             W9, W9, W12
00043248: ORR             W11, W11, W9
0004324c: MOV             W9, #0x13
00043250: MOV             W12, #0xEC
00043254: AND             W9, W8, W9
00043258: BIC             W8, W12, W8
0004325c: ORR             W8, W8, W9
00043260: STR             W8, [SP,#0xE0+var_70]
00043264: LDR             W8, [SP,#0xE0+var_7C]
00043268: LDR             W9, [SP,#0xE0+var_84]
0004326c: LDR             W12, [SP,#0xE0+var_94]
00043270: STRB            W10, [X2,#(byte_F659D - 0xF659C)] ; runtime: 0xf659d='en'
00043274: BSL             V1.8B, V2.8B, V0.8B
00043278: ORR             W9, W8, W9
0004327c: LDR             W8, [SP,#0xE0+var_88]
00043280: STR             D1, [X25]
00043284: STRB            W11, [X2,#(byte_F659F - 0xF659C)]
00043288: MOV             W7, #0xD7
0004328c: ORR             W8, W8, W12
00043290: LDR             W12, [SP,#0xE0+var_9C]
00043294: STRB            W5, [X2]
00043298: MOVI            V1.16B, #0x66 ; 'f'
0004329c: ORR             W12, W12, W30
000432a0: STR             W12, [SP,#0xE0+var_C0]
000432a4: LDR             W12, [SP,#0xE0+var_A8]
000432a8: LDR             W30, [SP,#0xE0+var_B4]
000432ac: ORR             W12, W12, W30
000432b0: STR             W12, [SP,#0xE0+var_6C]
000432b4: LDR             W12, [SP,#0xE0+var_B8]
000432b8: LDR             W30, [SP,#0xE0+var_C4]
000432bc: ORR             W30, W12, W30
000432c0: LDR             W12, [SP,#0xE0+var_C8]
000432c4: ORR             W27, W12, W27
000432c8: ORR             W12, W6, W17
000432cc: ADRL            X6, byte_F6540 ; runtime: 0xf6540='ads'
000432d0: ADRL            X6, byte_F6540 ; runtime: 0xf6540='ads'
000432d4: STR             W12, [SP,#0xE0+var_84]
000432d8: MOV             X12, X6
000432dc: LDRB            W17, [X6,#(byte_F6541 - 0xF6540)] ; runtime: 0xf6541='ds'
000432e0: LDR             W6, [SP,#0xE0+var_DC]
000432e4: STRB            W29, [X12]
000432e8: STRB            W26, [X12,#(byte_F6542 - 0xF6540)] ; runtime: 0xf6542='s'
000432ec: STRB            W28, [X12,#(byte_F6543 - 0xF6540)]
000432f0: ORR             W6, W6, W20
000432f4: ORR             W12, W15, W13
000432f8: MVN             W15, W14
000432fc: ADRP            X13, #byte_F655C@PAGE ; runtime: 0xf655c='idc'
00043300: STP             W6, W1, [SP,#0xE0+var_80]
00043304: MVN             W1, W17
00043308: AND             W14, W14, #0x78 ; 'x'
0004330c: AND             W15, W15, #0xFFFFFF87
00043310: ADD             X13, X13, #byte_F655C@PAGEOFF ; runtime: 0xf655c='idc'
00043314: AND             W17, W17, #0x33333333
00043318: AND             W1, W1, #0xCCCCCCCC
0004331c: STR             W12, [SP,#0xE0+var_88]
00043320: ORR             W12, W15, W14
00043324: LDRB            W15, [X13,#(byte_F655D - 0xF655C)] ; runtime: 0xf655d='dc'
00043328: ORR             W17, W1, W17
0004332c: STR             W17, [SP,#0xE0+var_78]
00043330: MVN             W17, W16
00043334: AND             W17, W17, #0xFE
00043338: BFXIL           W17, W16, #0, #1
0004333c: MVN             W16, W15
00043340: AND             W15, W15, #0xE
00043344: AND             W16, W16, #0xFFFFFFF1
00043348: STR             W12, [SP,#0xE0+var_90]
0004334c: MOV             X12, X13
00043350: ORR             W13, W16, W15
00043354: MOV             W16, #0x62 ; 'b'
00043358: STRB            W4, [X12,#(byte_F655E - 0xF655C)] ; runtime: 0xf655e='c'
0004335c: EOR             W12, W23, W16
00043360: STP             W12, W13, [SP,#0xE0+var_98]
00043364: ADRL            X13, byte_F656C ; runtime: 0xf656c='rrt'
00043368: ADRL            X13, byte_F656C ; runtime: 0xf656c='rrt'
0004336c: LDRB            W3, [X13,#(byte_F656E - 0xF656C)] ; runtime: 0xf656e='t'
00043370: MOV             X12, X13
00043374: EOR             W13, W21, W0
00043378: MOV             W4, #0x90
0004337c: MVN             W20, W3
00043380: AND             W3, W3, #0xFFFFFF81
00043384: AND             W20, W20, #0x7E ; '~'
00043388: ORR             W14, W20, W3
0004338c: STR             W14, [SP,#0xE0+var_A4]
00043390: LDR             W14, [SP,#0xE0+var_D8]
00043394: STR             W13, [SP,#0xE0+var_9C]
00043398: EOR             W13, W22, W4
0004339c: STR             W13, [SP,#0xE0+var_A0]
000433a0: STRB            W14, [X12,#(byte_F656F - 0xF656C)]
000433a4: LDR             W12, [SP,#0xE0+var_AC]
000433a8: ADRL            X13, byte_F6584 ; runtime: 0xf6584='sfp'
000433ac: ADRL            X13, byte_F6584 ; runtime: 0xf6584='sfp'
000433b0: LDRB            W21, [X13]
000433b4: STRB            W12, [X13,#(byte_F6585 - 0xF6584)] ; runtime: 0xf6585='fp'
000433b8: LDR             W12, [SP,#0xE0+var_B0]
000433bc: LDRB            W28, [X2,#(byte_F659E - 0xF659C)] ; runtime: 0xf659e='n'
000433c0: MVN             W20, W21
000433c4: ADRP            X14, #byte_F6598@PAGE ; runtime: 0xf6598='pat'
000433c8: STRB            W12, [X13,#(byte_F6586 - 0xF6584)] ; runtime: 0xf6586='p'
000433cc: LDR             W12, [SP,#0xE0+var_8C]
000433d0: AND             W21, W21, #0x30 ; '0'
000433d4: AND             W20, W20, #0xFFFFFFCF
000433d8: ADD             X14, X14, #byte_F6598@PAGEOFF ; runtime: 0xf6598='pat'
000433dc: ORR             W20, W20, W21
000433e0: LDRB            W21, [X14,#(byte_F659A - 0xF6598)] ; runtime: 0xf659a='t'
000433e4: MOV             W13, #0x12
000433e8: MVN             W10, W28
000433ec: EOR             W22, W12, W13
000433f0: LDR             W12, [SP,#0xE0+var_BC]
000433f4: AND             W23, W28, #0xDDDDDDDD
000433f8: AND             W10, W10, #0x22222222
000433fc: LDRB            W25, [X14,#(byte_F659B - 0xF6598)]
00043400: ORR             W4, W10, W23
00043404: ADRL            X10, byte_F65A0 ; runtime: 0xf65a0='mua'
00043408: ADRL            X10, byte_F65A0 ; runtime: 0xf65a0='mua'
0004340c: MOV             W13, #0x3B ; ';'
00043410: MVN             W26, W21
00043414: LDRB            W11, [X10,#(byte_F65A3 - 0xF65A0)]
00043418: EOR             W12, W12, W13
0004341c: AND             W21, W21, #2
00043420: AND             W26, W26, #0xFFFFFFFD
00043424: STR             W12, [SP,#0xE0+var_A8]
00043428: ORR             W12, W26, W21
0004342c: MVN             W26, W25
00043430: AND             W25, W25, #0x33333333
00043434: AND             W26, W26, #0xCCCCCCCC
00043438: STRB            W9, [X10,#(byte_F65A1 - 0xF65A0)] ; runtime: 0xf65a1='ua'
0004343c: MOV             W9, #0xA8
00043440: LDRB            W23, [X19]
00043444: ORR             W21, W26, W25
00043448: EOR             W25, W8, W9
0004344c: MVN             W9, W11
00043450: AND             W11, W11, #0xCCCCCCCC
00043454: AND             W9, W9, #0x33333333
00043458: ORR             W0, W9, W11
0004345c: LDR             W9, [SP,#0xE0+var_C0]
00043460: MVN             W26, W23
00043464: AND             W23, W23, #0xFFFFFF83
00043468: AND             W26, W26, #0x7C ; '|'
0004346c: LDRB            W28, [X19,#(byte_F65CA - 0xF65C8)] ; runtime: 0xf65ca='ild'
00043470: MOV             W8, #0xD4
00043474: ORR             W23, W26, W23
00043478: MOV             W26, #0xD9
0004347c: MOV             X6, X24
00043480: EOR             W24, W9, W8
00043484: EOR             W26, W30, W26
00043488: LDRB            W30, [X19,#(byte_F65CC - 0xF65C8)] ; runtime: 0xf65cc='d'
0004348c: LDR             W9, [SP,#0xE0+var_74]
00043490: MVN             W29, W28
00043494: AND             W28, W28, #0xEEEEEEEE
00043498: AND             W29, W29, #0x11111111
0004349c: MOV             W8, #0xDE
000434a0: ORR             W28, W29, W28
000434a4: EOR             W29, W9, W8
000434a8: EOR             W27, W27, W8
000434ac: MVN             W9, W30
000434b0: LDRB            W8, [X19,#(byte_F65CD - 0xF65C8)]
000434b4: ADRP            X10, #byte_F65D4@PAGE ; runtime: 0xf65d4='fit'
000434b8: AND             W30, W30, #0xFFFFFF83
000434bc: AND             W9, W9, #0x7C ; '|'
000434c0: ADD             X10, X10, #byte_F65D4@PAGEOFF ; runtime: 0xf65d4='fit'
000434c4: ORR             W3, W9, W30
000434c8: LDRB            W30, [X10]
000434cc: MVN             W9, W8
000434d0: AND             W8, W8, #0xFFFFFF83
000434d4: AND             W9, W9, #0x7C ; '|'
000434d8: ORR             W1, W9, W8
000434dc: MVN             W9, W30
000434e0: LDR             W8, [SP,#0xE0+var_84]
000434e4: AND             W30, W30, #0x1C
000434e8: AND             W9, W9, #0xFFFFFFE3
000434ec: ORR             W15, W9, W30
000434f0: LDRB            W30, [X10,#(byte_F65D6 - 0xF65D4)] ; runtime: 0xf65d6='t'
000434f4: EOR             W7, W8, W7
000434f8: LDRB            W8, [X10,#(byte_F65D7 - 0xF65D4)]
000434fc: ADRP            X16, #byte_F65D8@PAGE ; runtime: 0xf65d8='lut'
00043500: MVN             W9, W30
00043504: AND             W30, W30, #0x1C
00043508: AND             W9, W9, #0xFFFFFFE3
0004350c: ORR             W14, W9, W30
00043510: MVN             W30, W8
00043514: AND             W9, W8, #0x1C
00043518: ADD             X16, X16, #byte_F65D8@PAGEOFF ; runtime: 0xf65d8='lut'
0004351c: AND             W30, W30, #0xFFFFFFE3
00043520: LDRB            W8, [X16,#(byte_F65D9 - 0xF65D8)] ; runtime: 0xf65d9='ut'
00043524: ORR             W13, W30, W9
00043528: LDP             W9, W10, [SP,#0xE0+var_80]
0004352c: LDR             W5, [SP,#0xE0+var_88]
00043530: MVN             W30, W8
00043534: AND             W30, W30, #0x99999999
00043538: STRB            W9, [X16]
0004353c: AND             W9, W8, #0x66666666
00043540: LDRB            W8, [X16,#(byte_F65DB - 0xF65D8)]
00043544: ORR             W11, W30, W9
00043548: MOV             W9, #0x7B ; '{'
0004354c: STRB            W5, [X6]
00043550: LDR             W5, [SP,#0xE0+var_90]
00043554: EOR             W30, W10, W9
00043558: MVN             W9, W8
0004355c: AND             W8, W8, #0x77777777
00043560: AND             W9, W9, #0x88888888
00043564: STR             W12, [SP,#0xE0+var_8C]
00043568: ORR             W10, W9, W8
0004356c: LDR             W8, [SP,#0xE0+var_70]
00043570: LDR             W12, [SP,#0xE0+var_78]
00043574: STRB            W5, [X6,#(byte_F6559 - 0xF6558)] ; runtime: 0xf6559='tp'
00043578: STRB            W29, [X6,#(byte_F655A - 0xF6558)] ; runtime: 0xf655a='p'
0004357c: LDR             W6, [SP,#0xE0+var_64]
00043580: MOV             W9, #0x72 ; 'r'
00043584: EOR             W8, W8, W9
00043588: EOR             W12, W12, W9
0004358c: MOV             W29, #0x79 ; 'y'
00043590: MOV             W9, #0xA6
00043594: LDR             W5, [SP,#0xE0+var_94]
00043598: EOR             W17, W17, W29
0004359c: EOR             W29, W6, W9
000435a0: ADRL            X6, byte_F655C ; runtime: 0xf655c='idc'
000435a4: ADRL            X6, byte_F655C ; runtime: 0xf655c='idc'
000435a8: STRB            W29, [X6]
000435ac: MOV             W29, #0x24 ; '$'
000435b0: EOR             W29, W5, W29
000435b4: LDR             W5, [SP,#0xE0+var_98]
000435b8: EOR             W20, W20, W9
000435bc: ADRL            X9, byte_F6598 ; runtime: 0xf6598='pat'
000435c0: ADRL            X9, byte_F6598 ; runtime: 0xf6598='pat'
000435c4: STRB            W5, [X6,#(byte_F655F - 0xF655C)]
000435c8: LDR             W5, [SP,#0xE0+var_9C]
000435cc: ADRL            X6, byte_F656C ; runtime: 0xf656c='rrt'
000435d0: ADRL            X6, byte_F656C ; runtime: 0xf656c='rrt'
000435d4: STRB            W1, [X19,#(byte_F65CD - 0xF65C8)]
000435d8: STRB            W5, [X6]
000435dc: LDR             W5, [SP,#0xE0+var_A0]
000435e0: ADRL            X1, byte_F65D4 ; runtime: 0xf65d4='fit'
000435e4: ADRL            X1, byte_F65D4 ; runtime: 0xf65d4='fit'
000435e8: STRB            W13, [X1,#(byte_F65D7 - 0xF65D4)]
000435ec: STRB            W5, [X6,#(byte_F656D - 0xF656C)] ; runtime: 0xf656d='rt'
000435f0: LDR             W5, [SP,#0xE0+var_A4]
000435f4: MOV             W6, #0x1B
000435f8: MOV             W13, #0x29 ; ')'
000435fc: EOR             W11, W11, W13
00043600: EOR             W6, W5, W6
00043604: ADRL            X5, byte_F6584 ; runtime: 0xf6584='sfp'
00043608: ADRL            X5, byte_F6584 ; runtime: 0xf6584='sfp'
0004360c: STRB            W22, [X5,#(byte_F6587 - 0xF6584)]
00043610: LDR             W22, [SP,#0xE0+var_A8]
00043614: ADRL            X13, byte_F6540 ; runtime: 0xf6540='ads'
00043618: ADRL            X13, byte_F6540 ; runtime: 0xf6540='ads'
0004361c: STRB            W12, [X13,#(byte_F6541 - 0xF6540)] ; runtime: 0xf6541='ds'
00043620: STRB            W22, [X9]
00043624: LDR             W22, [SP,#0xE0+var_68]
00043628: ADRL            X12, byte_F6558 ; runtime: 0xf6558='dtp'
0004362c: ADRL            X12, byte_F6558 ; runtime: 0xf6558='dtp'
00043630: STRB            W17, [X12,#(byte_F655B - 0xF6558)]
00043634: EOR             W22, W22, #0x33333333
00043638: STRB            W22, [X9,#(byte_F6599 - 0xF6598)] ; runtime: 0xf6599='at'
0004363c: LDR             W22, [SP,#0xE0+var_8C]
00043640: ADRL            X12, byte_F655C ; runtime: 0xf655c='idc'
00043644: ADRL            X12, byte_F655C ; runtime: 0xf655c='idc'
00043648: STRB            W23, [X19]
0004364c: STRB            W22, [X9,#(byte_F659A - 0xF6598)] ; runtime: 0xf659a='t'
00043650: MOV             W22, #0x31 ; '1'
00043654: EOR             W21, W21, W22
00043658: MOV             W22, #0xEC
0004365c: EOR             W4, W4, W22
00043660: ADRL            X22, byte_F65A0 ; runtime: 0xf65a0='mua'
00043664: ADRL            X22, byte_F65A0 ; runtime: 0xf65a0='mua'
00043668: STRB            W8, [X22]
0004366c: STRB            W25, [X22,#(byte_F65A2 - 0xF65A0)] ; runtime: 0xf65a2='a'
00043670: MOV             X25, X22
00043674: ADRP            X22, #xmmword_F65B0@PAGE ; runtime: 0xf65b0='screen_brightness'
00043678: MOV             W8, #0xAD
0004367c: ADD             X22, X22, #xmmword_F65B0@PAGEOFF ; runtime: 0xf65b0='screen_brightness'
00043680: EOR             W8, W0, W8
00043684: LDR             Q0, [X22]
00043688: LDR             W0, [SP,#0xE0+var_6C]
0004368c: STRB            W24, [X22,#(byte_F65C0 - 0xF65B0)] ; runtime: 0xf65c0='s'
00043690: STRB            W26, [X19,#(byte_F65C9 - 0xF65C8)] ; runtime: 0xf65c9='uild'
00043694: MVN             V2.16B, V0.16B
00043698: EOR             W0, W0, #0xBBBBBBBB
0004369c: STRB            W0, [X22,#(byte_F65C1 - 0xF65B0)]
000436a0: BSL             V1.16B, V2.16B, V0.16B
000436a4: MOVI            V0.16B, #0x46 ; 'F'
000436a8: MOV             W0, #0x6D ; 'm'
000436ac: EOR             V0.16B, V1.16B, V0.16B
000436b0: EOR             W0, W28, W0
000436b4: STR             Q0, [X22]
000436b8: STRB            W27, [X19,#(byte_F65CB - 0xF65C8)] ; runtime: 0xf65cb='ld'
000436bc: STRB            W3, [X19,#(byte_F65CC - 0xF65C8)] ; runtime: 0xf65cc='d'
000436c0: STRB            W30, [X16,#(byte_F65DA - 0xF65D8)] ; runtime: 0xf65da='t'
000436c4: STRB            W29, [X12,#(byte_F655D - 0xF655C)] ; runtime: 0xf655d='dc'
000436c8: STRB            W20, [X5]
000436cc: STRB            W21, [X9,#(byte_F659B - 0xF6598)]
000436d0: STRB            W8, [X25,#(byte_F65A3 - 0xF65A0)]
000436d4: STRB            W0, [X19,#(byte_F65CA - 0xF65C8)] ; runtime: 0xf65ca='ild'
000436d8: LDP             X29, X30, [SP,#0xE0+var_10]
000436dc: LDP             X20, X19, [SP,#0xE0+var_20]
000436e0: LDP             X22, X21, [SP,#0xE0+var_30]
000436e4: LDP             X24, X23, [SP,#0xE0+var_40]
000436e8: LDP             X26, X25, [SP,#0xE0+var_50]
000436ec: LDP             X28, X27, [SP,#0xE0+var_60]
000436f0: ADRP            X12, #byte_F656C@PAGE ; runtime: 0xf656c='rrt'
000436f4: EOR             W10, W10, #0x38 ; '8'
000436f8: ADD             X12, X12, #byte_F656C@PAGEOFF ; runtime: 0xf656c='rrt'
000436fc: STRB            W15, [X1]
00043700: STRB            W7, [X1,#(byte_F65D5 - 0xF65D4)] ; runtime: 0xf65d5='it'
00043704: STRB            W14, [X1,#(byte_F65D6 - 0xF65D4)] ; runtime: 0xf65d6='t'
00043708: STRB            W6, [X12,#(byte_F656E - 0xF656C)] ; runtime: 0xf656e='t'
0004370c: STRB            W4, [X2,#(byte_F659E - 0xF659C)] ; runtime: 0xf659e='n'
00043710: STRB            W11, [X16,#(byte_F65D9 - 0xF65D8)] ; runtime: 0xf65d9='ut'
00043714: STRB            W10, [X16,#(byte_F65DB - 0xF65D8)]
00043718: ADD             SP, SP, #0xE0
0004371c: RET
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
000437d4: MOV             W9, #0x739EC3DF
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