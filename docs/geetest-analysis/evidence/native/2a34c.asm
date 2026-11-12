0002a34c: SUB             SP, SP, #0xC0
0002a350: STP             X26, X25, [SP,#0xB0+var_40]
0002a354: STP             X24, X23, [SP,#0xB0+var_30]
0002a358: STP             X22, X21, [SP,#0xB0+var_20]
0002a35c: STP             X20, X19, [SP,#0xB0+var_10]
0002a360: STP             X29, X30, [SP,#0xB0+var_s0]
0002a364: ADD             X29, SP, #0xB0
0002a368: MRS             X21, TPIDR_EL0
0002a36c: LDR             X8, [X21,#0x28]
0002a370: MOV             X19, X0
0002a374: STUR            X8, [X29,#var_48]
0002a378: BL              sub_E89A4
0002a37c: ADD             X8, SP, #0xB0+s
0002a380: STR             X8, [SP,#0xB0+var_B0]
0002a384: LDR             X8, [SP,#0xB0+var_B0]
0002a388: LDR             X8, [SP,#0xB0+var_B0]
0002a38c: ADRP            X1, #byte_F3434@PAGE
0002a390: MOV             W2, W0
0002a394: ADD             X1, X1, #byte_F3434@PAGEOFF; format
0002a398: ADD             X0, SP, #0xB0+s; s
0002a39c: STP             XZR, XZR, [X8]
0002a3a0: BL              .sprintf
0002a3a4: ADD             X8, SP, #0xB0+var_98
0002a3a8: STR             X8, [SP,#0xB0+var_A8]
0002a3ac: LDR             X8, [SP,#0xB0+var_A8]
0002a3b0: LDR             X8, [SP,#0xB0+var_A8]
0002a3b4: ADRP            X1, #byte_F3438@PAGE
0002a3b8: MOVI            V0.2D, #0
0002a3bc: ADD             X1, X1, #byte_F3438@PAGEOFF
0002a3c0: ADD             X0, SP, #0xB0+var_98
0002a3c4: STP             Q0, Q0, [X8,#0x20]
0002a3c8: STP             Q0, Q0, [X8]
0002a3cc: BL              sub_6630
0002a3d0: ADD             X0, SP, #0xB0+var_98
0002a3d4: ADD             X1, SP, #0xB0+s
0002a3d8: BL              sub_6630
0002a3dc: ADRL            X1, byte_F3440
0002a3e4: ADD             X0, SP, #0xB0+var_98
0002a3e8: BL              sub_6630
0002a3ec: ADD             X0, SP, #0xB0+var_98
0002a3f0: MOV             W2, #0x100
0002a3f4: MOV             X1, XZR
0002a3f8: BL              sub_29F1C
0002a3fc: MOV             W22, #0xC1F6
0002a400: MOV             W23, #0x801A
0002a404: MOV             W24, #0x307C
0002a408: ADRP            X20, #aL@PAGE; ">L"
0002a40c: MOV             W25, #0x4B1E
0002a410: MOV             W26, #0x801B
0002a414: MOV             W8, #0xC1F6
0002a418: STR             W0, [SP,#0xB0+var_9C]
0002a41c: MOVK            W22, #0x26A6,LSL#16
0002a420: MOVK            W23, #0xA019,LSL#16
0002a424: MOVK            W24, #0x8401,LSL#16
0002a428: ADD             X20, X20, #aL@PAGEOFF; ">L"
0002a42c: MOVK            W25, #0x9E40,LSL#16
0002a430: MOVK            W26, #0xA019,LSL#16
0002a434: MOVK            W8, #0x26A6,LSL#16
0002a438: B               loc_2A464
0002a43c: MOV             X0, X19
0002a440: MOV             X1, X20
0002a444: BL              sub_14068
0002a448: MOV             W8, #0xA019801B
0002a450: MOV             W0, #1
0002a454: B               loc_2A464
0002a458: MOV             W8, #0x801B
0002a45c: MOV             W0, WZR
0002a460: MOVK            W8, #0xA019,LSL#16
0002a464: CMP             W8, W23
0002a468: B.GT            loc_2A480
0002a46c: CMP             W8, W24
0002a470: B.EQ            loc_2A43C
0002a474: CMP             W8, W25
0002a478: B.NE            loc_2A464
0002a47c: B               loc_2A458
0002a480: CMP             W8, W26
0002a484: B.EQ            loc_2A4A0
0002a488: CMP             W8, W22
0002a48c: B.NE            loc_2A464
0002a490: LDR             W8, [SP,#0xB0+var_9C]
0002a494: CMP             W8, #0
0002a498: CSEL            W8, W25, W24, EQ
0002a49c: B               loc_2A464
0002a4a0: LDR             X8, [SP,#0xB0+var_A8]
0002a4a4: LDR             X8, [SP,#0xB0+var_B0]
0002a4a8: LDR             X8, [X21,#0x28]
0002a4ac: LDUR            X9, [X29,#var_48]
0002a4b0: CMP             X8, X9
0002a4b4: B.NE            loc_2A4D4
0002a4b8: LDP             X29, X30, [SP,#0xB0+var_s0]
0002a4bc: LDP             X20, X19, [SP,#0xB0+var_10]
0002a4c0: LDP             X22, X21, [SP,#0xB0+var_20]
0002a4c4: LDP             X24, X23, [SP,#0xB0+var_30]
0002a4c8: LDP             X26, X25, [SP,#0xB0+var_40]
0002a4cc: ADD             SP, SP, #0xC0
0002a4d0: RET
0002a4d4: BL              .__stack_chk_fail