000297a4: STR             X27, [SP,#-0x10+var_50]!
000297a8: STP             X26, X25, [SP,#0x50+var_40]
000297ac: STP             X24, X23, [SP,#0x50+var_30]
000297b0: STP             X22, X21, [SP,#0x50+var_20]
000297b4: STP             X20, X19, [SP,#0x50+var_10]
000297b8: STP             X29, X30, [SP,#0x50+var_s0]
000297bc: ADD             X29, SP, #0x50
000297c0: MOV             W22, #0x1EFF
000297c4: MOV             W23, #0xB14
000297c8: MOV             X19, X0
000297cc: MOVK            W22, #0x892C,LSL#16
000297d0: MOVK            W23, #0x26BA,LSL#16
000297d4: BL              sub_28F5C
000297d8: MOV             W24, #0xEAC2
000297dc: MOV             W25, #0xB13
000297e0: MOV             W26, #0x40D2
000297e4: MOV             W27, #0x72E3
000297e8: ADRP            X20, #aAk@PAGE; "ak\a"
000297ec: ADRP            X21, #byte_F3E24@PAGE
000297f0: MOV             W8, #0xEAC2
000297f4: MOVK            W24, #0x3298,LSL#16
000297f8: MOVK            W25, #0x26BA,LSL#16
000297fc: MOVK            W26, #0x7F17,LSL#16
00029800: MOVK            W27, #0x2429,LSL#16
00029804: ADD             X20, X20, #aAk@PAGEOFF; "ak\a"
00029808: ADD             X21, X21, #byte_F3E24@PAGEOFF
0002980c: MOVK            W8, #0x3298,LSL#16
00029810: STR             W0, [SP,#0x50+var_44]
00029814: B               loc_29824
00029818: LDR             W8, [SP,#0x50+var_44]
0002981c: CMP             W8, #0
00029820: CSEL            W8, W22, W27, EQ
00029824: CMP             W8, W25
00029828: B.LE            loc_29848
0002982c: CMP             W8, W23
00029830: B.EQ            loc_29898
00029834: CMP             W8, W26
00029838: B.EQ            loc_29880
0002983c: CMP             W8, W24
00029840: B.NE            loc_29824
00029844: B               loc_29818
00029848: CMP             W8, W22
0002984c: B.EQ            loc_29870
00029850: CMP             W8, W27
00029854: B.NE            loc_29824
00029858: MOV             X0, X19
0002985c: MOV             X1, X20
00029860: BL              sub_14068
00029864: MOV             W8, #0x892C1EFF
0002986c: B               loc_29824
00029870: BL              sub_29550
00029874: CMP             W0, #0
00029878: CSEL            W8, W23, W26, EQ
0002987c: B               loc_29824
00029880: MOV             X0, X19
00029884: MOV             X1, X21
00029888: BL              sub_14068
0002988c: MOV             W8, #0x26BA0B14
00029894: B               loc_29824
00029898: LDP             X29, X30, [SP,#0x50+var_s0]
0002989c: LDP             X20, X19, [SP,#0x50+var_10]
000298a0: LDP             X22, X21, [SP,#0x50+var_20]
000298a4: LDP             X24, X23, [SP,#0x50+var_30]
000298a8: LDP             X26, X25, [SP,#0x50+var_40]
000298ac: LDR             X27, [SP+0x50+var_50],#0x60
000298b0: RET