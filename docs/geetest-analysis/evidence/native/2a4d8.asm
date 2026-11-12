0002a4d8: SUB             SP, SP, #0x90
0002a4dc: STP             X28, X27, [SP,#0x80+var_50]
0002a4e0: STP             X26, X25, [SP,#0x80+var_40]
0002a4e4: STP             X24, X23, [SP,#0x80+var_30]
0002a4e8: STP             X22, X21, [SP,#0x80+var_20]
0002a4ec: STP             X20, X19, [SP,#0x80+var_10]
0002a4f0: STP             X29, X30, [SP,#0x80+var_s0]
0002a4f4: ADD             X29, SP, #0x80
0002a4f8: MRS             X8, TPIDR_EL0
0002a4fc: STR             X8, [SP,#0x80+var_80]
0002a500: LDR             X8, [X8,#0x28]
0002a504: ADD             X9, SP, #0x80+var_60
0002a508: MOV             X19, X0
0002a50c: ADRP            X0, #xmmword_F59C0@PAGE
0002a510: STR             X8, [SP,#0x80+var_58]
0002a514: STR             X9, [SP,#0x80+var_78]
0002a518: LDR             X8, [SP,#0x80+var_78]
0002a51c: LDR             X8, [SP,#0x80+var_78]
0002a520: MOV             W24, #0xF436
0002a524: ADD             X0, X0, #xmmword_F59C0@PAGEOFF
0002a528: MOV             W2, #8
0002a52c: STR             XZR, [X8]
0002a530: STR             X9, [SP,#0x80+var_70]
0002a534: LDR             X1, [SP,#0x80+var_70]
0002a538: MOVK            W24, #0xBEFB,LSL#16
0002a53c: BL              sub_8E28
0002a540: MOV             W27, #0x531E
0002a544: MOV             W28, #0xE4D
0002a548: MOV             W23, #0xF435
0002a54c: MOV             W20, #0x4C7
0002a550: MOV             W21, #0x1662
0002a554: MOV             W26, #0x65CF
0002a558: MOV             W25, #0x684
0002a55c: MOV             W8, #0x65D0
0002a560: MOVK            W27, #0xFCCC,LSL#16
0002a564: MOVK            W28, #0xC36C,LSL#16
0002a568: MOVK            W23, #0xBEFB,LSL#16
0002a56c: MOVK            W20, #0xD2A6,LSL#16
0002a570: MOVK            W21, #0x58B8,LSL#16
0002a574: MOVK            W26, #0x2665,LSL#16
0002a578: MOVK            W25, #0x6283,LSL#16
0002a57c: MOVK            W8, #0x2665,LSL#16
0002a580: STR             W0, [SP,#0x80+var_64]
0002a584: B               loc_2A598
0002a588: BL              sub_14068
0002a58c: MOV             W8, #0x685
0002a590: MOV             W22, #1
0002a594: MOVK            W8, #0x6283,LSL#16
0002a598: CMP             W8, W27
0002a59c: B.GT            loc_2A5F4
0002a5a0: CMP             W8, W28
0002a5a4: B.GT            loc_2A648
0002a5a8: CMP             W8, W23
0002a5ac: B.GT            loc_2A6EC
0002a5b0: MOV             W9, #0xA00D2F60
0002a5b8: CMP             W8, W9
0002a5bc: B.EQ            loc_2A7BC
0002a5c0: MOV             W9, #0xA27003B1
0002a5c8: CMP             W8, W9
0002a5cc: B.NE            loc_2A598
0002a5d0: LDR             X1, [SP,#0x80+var_70]
0002a5d4: ADRL            X0, byte_F2F20
0002a5dc: BL              sub_6BA4
0002a5e0: MOV             W8, #0x1663
0002a5e4: CMP             W0, #0
0002a5e8: MOVK            W8, #0x58B8,LSL#16
0002a5ec: CSEL            W8, W24, W8, EQ
0002a5f0: B               loc_2A598
0002a5f4: CMP             W8, W21
0002a5f8: B.GT            loc_2A694
0002a5fc: CMP             W8, W26
0002a600: B.GT            loc_2A754
0002a604: MOV             W9, #0xFCCC531F
0002a60c: CMP             W8, W9
0002a610: B.EQ            loc_2A824
0002a614: MOV             W9, #0x1D42E813
0002a61c: CMP             W8, W9
0002a620: B.NE            loc_2A598
0002a624: LDR             X1, [SP,#0x80+var_70]
0002a628: ADRL            X0, (aGeePclose+0xA); ""
0002a630: BL              sub_6BA4
0002a634: MOV             W8, #0xDB2B
0002a638: CMP             W0, #0
0002a63c: MOVK            W8, #0xCB76,LSL#16
0002a640: CSEL            W8, W24, W8, EQ
0002a644: B               loc_2A598
0002a648: CMP             W8, W20
0002a64c: B.GT            loc_2A714
0002a650: MOV             W9, #0xC36C0E4E
0002a658: CMP             W8, W9
0002a65c: B.EQ            loc_2A7E0
0002a660: MOV             W9, #0xCB76DB2B
0002a668: CMP             W8, W9
0002a66c: B.NE            loc_2A598
0002a670: LDR             X1, [SP,#0x80+var_70]
0002a674: ADRL            X0, byte_F2F20
0002a67c: BL              sub_6BA4
0002a680: MOV             W8, #0x4C17
0002a684: CMP             W0, #0
0002a688: MOVK            W8, #0x71B0,LSL#16
0002a68c: CSEL            W8, W24, W8, EQ
0002a690: B               loc_2A598
0002a694: CMP             W8, W25
0002a698: B.GT            loc_2A798
0002a69c: MOV             W9, #0x58B81663
0002a6a4: CMP             W8, W9
0002a6a8: B.EQ            loc_2A884
0002a6ac: MOV             W9, #0x60CEE7A4
0002a6b4: CMP             W8, W9
0002a6b8: B.NE            loc_2A598
0002a6bc: LDR             X1, [SP,#0x80+var_70]
0002a6c0: ADRP            X0, #xmmword_F59F0@PAGE
0002a6c4: MOV             W2, #8
0002a6c8: ADD             X0, X0, #xmmword_F59F0@PAGEOFF
0002a6cc: BL              sub_8E28
0002a6d0: MOV             W8, #0x2F60
0002a6d4: MOV             W9, #0x531F
0002a6d8: CMP             W0, #0
0002a6dc: MOVK            W8, #0xA00D,LSL#16
0002a6e0: MOVK            W9, #0xFCCC,LSL#16
0002a6e4: CSEL            W8, W9, W8, EQ
0002a6e8: B               loc_2A598
0002a6ec: CMP             W8, W24
0002a6f0: B.EQ            loc_2A7F0
0002a6f4: MOV             W9, #0xC292ACB8
0002a6fc: CMP             W8, W9
0002a700: B.NE            loc_2A598
0002a704: ADRP            X1, #byte_F5A5C@PAGE
0002a708: MOV             X0, X19
0002a70c: ADD             X1, X1, #byte_F5A5C@PAGEOFF
0002a710: B               loc_2A588
0002a714: MOV             W9, #0xD2A604C8
0002a71c: CMP             W8, W9
0002a720: B.EQ            loc_2A800
0002a724: MOV             W9, #0xF272EF98
0002a72c: CMP             W8, W9
0002a730: B.NE            loc_2A598
0002a734: ADRL            X0, xmmword_F5A60
0002a73c: BL              sub_8630
0002a740: MOV             W8, #0xE4E
0002a744: CMP             W0, #0
0002a748: MOVK            W8, #0xC36C,LSL#16
0002a74c: CSEL            W8, W24, W8, EQ
0002a750: B               loc_2A598
0002a754: MOV             W9, #0x266565D0
0002a75c: CMP             W8, W9
0002a760: B.EQ            loc_2A854
0002a764: MOV             W9, #0x33F47338
0002a76c: CMP             W8, W9
0002a770: B.NE            loc_2A598
0002a774: LDR             X1, [SP,#0x80+var_70]
0002a778: ADRL            X0, byte_F2F20
0002a780: BL              sub_6BA4
0002a784: MOV             W8, #0xACB8
0002a788: CMP             W0, #0
0002a78c: MOVK            W8, #0xC292,LSL#16
0002a790: CSEL            W8, W24, W8, EQ
0002a794: B               loc_2A598
0002a798: MOV             W9, #0x71B04C17
0002a7a0: CMP             W8, W9
0002a7a4: B.EQ            loc_2A874
0002a7a8: MOV             W9, #0x62830685
0002a7b0: CMP             W8, W9
0002a7b4: B.NE            loc_2A598
0002a7b8: B               loc_2A894
0002a7bc: LDR             X1, [SP,#0x80+var_70]
0002a7c0: ADRL            X0, (aGeePclose+0xA); ""
0002a7c8: BL              sub_6BA4
0002a7cc: MOV             W8, #0x3B1
0002a7d0: CMP             W0, #0
0002a7d4: MOVK            W8, #0xA270,LSL#16
0002a7d8: CSEL            W8, W24, W8, EQ
0002a7dc: B               loc_2A598
0002a7e0: ADRP            X1, #byte_F5A70@PAGE
0002a7e4: MOV             X0, X19
0002a7e8: ADD             X1, X1, #byte_F5A70@PAGEOFF
0002a7ec: B               loc_2A588
0002a7f0: MOV             W8, #0x685
0002a7f4: MOV             W22, WZR
0002a7f8: MOVK            W8, #0x6283,LSL#16
0002a7fc: B               loc_2A598
0002a800: LDR             X1, [SP,#0x80+var_70]
0002a804: ADRL            X0, (aGeePclose+0xA); ""
0002a80c: BL              sub_6BA4
0002a810: MOV             W8, #0x7338
0002a814: CMP             W0, #0
0002a818: MOVK            W8, #0x33F4,LSL#16
0002a81c: CSEL            W8, W24, W8, EQ
0002a820: B               loc_2A598
0002a824: LDR             X1, [SP,#0x80+var_70]
0002a828: ADRP            X0, #xmmword_F5A30@PAGE
0002a82c: MOV             W2, #8
0002a830: ADD             X0, X0, #xmmword_F5A30@PAGEOFF
0002a834: BL              sub_8E28
0002a838: MOV             W8, #0x4C8
0002a83c: MOV             W9, #0xEF98
0002a840: CMP             W0, #0
0002a844: MOVK            W8, #0xD2A6,LSL#16
0002a848: MOVK            W9, #0xF272,LSL#16
0002a84c: CSEL            W8, W9, W8, EQ
0002a850: B               loc_2A598
0002a854: LDR             W8, [SP,#0x80+var_64]
0002a858: MOV             W9, #0x60CEE7A4
0002a860: CMP             W8, #0
0002a864: MOV             W8, #0x1D42E813
0002a86c: CSEL            W8, W9, W8, EQ
0002a870: B               loc_2A598
0002a874: ADRP            X1, #byte_F59E4@PAGE
0002a878: MOV             X0, X19
0002a87c: ADD             X1, X1, #byte_F59E4@PAGEOFF
0002a880: B               loc_2A588
0002a884: ADRP            X1, #byte_F5A20@PAGE
0002a888: MOV             X0, X19
0002a88c: ADD             X1, X1, #byte_F5A20@PAGEOFF
0002a890: B               loc_2A588
0002a894: LDR             X8, [SP,#0x80+var_78]
0002a898: LDR             X8, [SP,#0x80+var_80]
0002a89c: LDR             X8, [X8,#0x28]
0002a8a0: LDR             X9, [SP,#0x80+var_58]
0002a8a4: CMP             X8, X9
0002a8a8: B.NE            loc_2A8D0
0002a8ac: MOV             W0, W22
0002a8b0: LDP             X29, X30, [SP,#0x80+var_s0]
0002a8b4: LDP             X20, X19, [SP,#0x80+var_10]
0002a8b8: LDP             X22, X21, [SP,#0x80+var_20]
0002a8bc: LDP             X24, X23, [SP,#0x80+var_30]
0002a8c0: LDP             X26, X25, [SP,#0x80+var_40]
0002a8c4: LDP             X28, X27, [SP,#0x80+var_50]
0002a8c8: ADD             SP, SP, #0x90
0002a8cc: RET
0002a8d0: BL              .__stack_chk_fail