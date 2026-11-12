000204f4: STP             X28, X27, [SP,#-0x10+var_50]!
000204f8: STP             X26, X25, [SP,#0x50+var_40]
000204fc: STP             X24, X23, [SP,#0x50+var_30]
00020500: STP             X22, X21, [SP,#0x50+var_20]
00020504: STP             X20, X19, [SP,#0x50+var_10]
00020508: STP             X29, X30, [SP,#0x50+var_s0]
0002050c: ADD             X29, SP, #0x50
00020510: SUB             SP, SP, #0x270
00020514: MRS             X8, TPIDR_EL0
00020518: STR             X8, [SP,#0x2C0+var_2B8]
0002051c: LDR             X8, [X8,#0x28]
00020520: MOV             W23, #0x9F08
00020524: MOV             W24, #0x8FC4
00020528: MOV             X19, X0
0002052c: MOVK            W23, #0x9EF9,LSL#16
00020530: MOVK            W24, #0x94B7,LSL#16
00020534: STUR            X8, [X29,#var_60]
00020538: BL              sub_14D1C
0002053c: STR             X0, [SP,#0x2C0+var_2A8]
00020540: LDR             X1, [SP,#0x2C0+var_2A8]
00020544: ADRL            X2, byte_F2E54
0002054c: MOV             X0, X19
00020550: BL              sub_150EC
00020554: MOV             W21, #0x7EF4
00020558: MOV             W20, #0xF3A6
0002055c: MOV             W25, #0x1190
00020560: MOV             W27, #0xB1FA
00020564: MOV             W28, #0xF129
00020568: MOV             W26, #0x3258
0002056c: MOV             W8, #0xF12A
00020570: MOVK            W21, #0xDB13,LSL#16
00020574: MOVK            W20, #0xC4BF,LSL#16
00020578: MOVK            W25, #0xD224,LSL#16
0002057c: MOVK            W27, #0x3601,LSL#16
00020580: MOVK            W28, #0xE9C3,LSL#16
00020584: MOVK            W26, #0x5C6A,LSL#16
00020588: MOVK            W8, #0xE9C3,LSL#16
0002058c: STR             X0, [SP,#0x2C0+var_2A0]
00020590: B               loc_205B4
00020594: LDR             X8, [SP,#0x2C0+var_298]
00020598: LDR             W8, [SP,#0x2C0+var_2AC]
0002059c: MOV             W9, #1
000205a0: STR             W9, [SP,#0x2C0+var_2B0]
000205a4: CMP             W8, #0
000205a8: MOV             W8, #0x1DC495BE
000205b0: CSEL            W8, W23, W8, EQ
000205b4: CMP             W8, W21
000205b8: B.LE            loc_205FC
000205bc: CMP             W8, W27
000205c0: B.LE            loc_2063C
000205c4: CMP             W8, W26
000205c8: B.GT            loc_20758
000205cc: MOV             W9, #0x3601B1FB
000205d4: CMP             W8, W9
000205d8: B.EQ            loc_20844
000205dc: MOV             W9, #0x3B8CD889
000205e4: CMP             W8, W9
000205e8: B.NE            loc_205B4
000205ec: LDR             W22, [SP,#0x2C0+var_27C]
000205f0: MOV             W8, #0x94B78FC4
000205f8: B               loc_205B4
000205fc: CMP             W8, W20
00020600: B.LE            loc_206EC
00020604: CMP             W8, W25
00020608: B.GT            loc_20734
0002060c: MOV             W9, #0xC4BFF3A7
00020614: CMP             W8, W9
00020618: B.EQ            loc_207E8
0002061c: MOV             W9, #0xC75E1951
00020624: CMP             W8, W9
00020628: B.NE            loc_205B4
0002062c: MOV             W8, #0x8FC4
00020630: MOV             W22, #1
00020634: MOVK            W8, #0x94B7,LSL#16
00020638: B               loc_205B4
0002063c: CMP             W8, W28
00020640: B.GT            loc_207A4
00020644: MOV             W9, #0xDB137EF5
0002064c: CMP             W8, W9
00020650: B.EQ            loc_20824
00020654: MOV             W9, #0xDE6155DE
0002065c: CMP             W8, W9
00020660: B.NE            loc_205B4
00020664: ADD             X8, SP, #0x2C0+var_260
00020668: STR             X8, [SP,#0x2C0+var_298]
0002066c: LDR             X8, [SP,#0x2C0+var_298]
00020670: LDR             X8, [SP,#0x2C0+var_298]
00020674: ADRP            X0, #qword_F2E60@PAGE
00020678: ADRP            X1, #byte_F2E68@PAGE
0002067c: MOVI            V0.2D, #0
00020680: ADD             X0, X0, #qword_F2E60@PAGEOFF
00020684: ADD             X1, X1, #byte_F2E68@PAGEOFF
00020688: STP             Q0, Q0, [X8,#0x1E0]
0002068c: STP             Q0, Q0, [X8,#0x1C0]
00020690: STP             Q0, Q0, [X8,#0x1A0]
00020694: STP             Q0, Q0, [X8,#0x180]
00020698: STP             Q0, Q0, [X8,#0x160]
0002069c: STP             Q0, Q0, [X8,#0x140]
000206a0: STP             Q0, Q0, [X8,#0x120]
000206a4: STP             Q0, Q0, [X8,#0x100]
000206a8: STP             Q0, Q0, [X8,#0xE0]
000206ac: STP             Q0, Q0, [X8,#0xC0]
000206b0: STP             Q0, Q0, [X8,#0xA0]
000206b4: STP             Q0, Q0, [X8,#0x80]
000206b8: STP             Q0, Q0, [X8,#0x60]
000206bc: STP             Q0, Q0, [X8,#0x40]
000206c0: STP             Q0, Q0, [X8,#0x20]
000206c4: STP             Q0, Q0, [X8]
000206c8: BL              sub_E8FC4
000206cc: STR             X0, [SP,#0x2C0+stream]
000206d0: LDR             X8, [SP,#0x2C0+stream]
000206d4: MOV             W22, WZR
000206d8: CMP             X8, #0
000206dc: MOV             W8, #0xC4BFF3A7
000206e4: CSEL            W8, W8, W24, EQ
000206e8: B               loc_205B4
000206ec: CMP             W8, W24
000206f0: B.EQ            loc_208AC
000206f4: CMP             W8, W23
000206f8: B.EQ            loc_208E4
000206fc: MOV             W9, #0xBD4401C1
00020704: CMP             W8, W9
00020708: B.NE            loc_205B4
0002070c: LDR             X1, [SP,#0x2C0+var_2A0]
00020710: LDR             X8, [X19]
00020714: MOV             X0, X19
00020718: LDR             X8, [X8,#0x540]
0002071c: BLR             X8
00020720: MOV             W8, #0x55DE
00020724: CMP             W0, #0
00020728: MOVK            W8, #0xDE61,LSL#16
0002072c: CSEL            W8, W8, W23, EQ
00020730: B               loc_205B4
00020734: MOV             W9, #0xD2241191
0002073c: CMP             W8, W9
00020740: B.EQ            loc_207F8
00020744: MOV             W9, #0xDA4904EA
0002074c: CMP             W8, W9
00020750: B.NE            loc_205B4
00020754: B               loc_20594
00020758: MOV             W9, #0x5C6A3259
00020760: CMP             W8, W9
00020764: B.EQ            loc_20898
00020768: MOV             W9, #0x7C47F7D2
00020770: CMP             W8, W9
00020774: B.NE            loc_205B4
00020778: LDR             X0, [SP,#0x2C0+s]
0002077c: ADRL            X1, aJohmCrnct; "JOHM\tCRNCT&"
00020784: BL              sub_75D4
00020788: MOV             W8, #0xD889
0002078c: MOV             W9, #0xB1FB
00020790: CMP             X0, #0
00020794: MOVK            W8, #0x3B8C,LSL#16
00020798: MOVK            W9, #0x3601,LSL#16
0002079c: CSEL            W8, W8, W9, EQ
000207a0: B               loc_205B4
000207a4: MOV             W9, #0xE9C3F12A
000207ac: CMP             W8, W9
000207b0: B.EQ            loc_207C8
000207b4: MOV             W9, #0x1DC495BE
000207bc: CMP             W8, W9
000207c0: B.NE            loc_205B4
000207c4: B               loc_208F4
000207c8: LDR             X8, [SP,#0x2C0+var_2A0]
000207cc: MOV             W9, #0xBD4401C1
000207d4: CMP             X8, #0
000207d8: MOV             W8, #0xDE6155DE
000207e0: CSEL            W8, W8, W9, EQ
000207e4: B               loc_205B4
000207e8: MOV             W8, #0x4EA
000207ec: STR             WZR, [SP,#0x2C0+var_2AC]
000207f0: MOVK            W8, #0xDA49,LSL#16
000207f4: B               loc_205B4
000207f8: LDR             X0, [SP,#0x2C0+s]
000207fc: ADRL            X1, byte_F2E6C
00020804: BL              sub_75D4
00020808: MOV             W8, #0x1951
0002080c: MOV             W9, #0x7EF5
00020810: CMP             X0, #0
00020814: MOVK            W8, #0xC75E,LSL#16
00020818: MOVK            W9, #0xDB13,LSL#16
0002081c: CSEL            W8, W9, W8, EQ
00020820: B               loc_205B4
00020824: LDR             W8, [SP,#0x2C0+var_27C]
00020828: MOV             W9, #0x7C47F7D2
00020830: CMP             W8, #0
00020834: MOV             W8, #0x3B8CD889
0002083c: CSEL            W8, W8, W9, EQ
00020840: B               loc_205B4
00020844: STP             XZR, XZR, [SP,#0x2C0+var_278]
00020848: STRH            WZR, [SP,#0x2C0+var_268]
0002084c: LDR             X0, [SP,#0x2C0+s]; s
00020850: ADRP            X1, #xmmword_F2E90@PAGE
00020854: ADD             X2, SP, #0x2C0+var_278
00020858: ADD             X1, X1, #xmmword_F2E90@PAGEOFF; format
0002085c: BL              .sscanf
00020860: STRB            WZR, [SP,#0x2C0+var_268+1]
00020864: LDR             X1, [SP,#0x2C0+var_2A8]
00020868: ADRP            X2, #byte_F2E54@PAGE
0002086c: ADD             X3, SP, #0x2C0+var_278
00020870: MOV             X0, X19
00020874: ADD             X2, X2, #byte_F2E54@PAGEOFF
00020878: BL              sub_154B8
0002087c: LDR             X0, [SP,#0x2C0+stream]; stream
00020880: BL              sub_E99D4
00020884: MOV             W8, #1
00020888: STR             W8, [SP,#0x2C0+var_2AC]
0002088c: MOV             W8, #0xDA4904EA
00020894: B               loc_205B4
00020898: LDR             X0, [SP,#0x2C0+stream]; stream
0002089c: BL              sub_E99D4
000208a0: MOV             W8, #0xC4BFF3A7
000208a8: B               loc_205B4
000208ac: ADD             X8, SP, #0x2C0+var_260
000208b0: STR             W22, [SP,#0x2C0+var_27C]
000208b4: STR             X8, [SP,#0x2C0+s]
000208b8: LDR             X2, [SP,#0x2C0+stream]; stream
000208bc: LDR             X0, [SP,#0x2C0+s]; s
000208c0: MOV             W1, #0x200; n
000208c4: BL              .fgets
000208c8: MOV             W8, #0x1191
000208cc: MOV             W9, #0x3259
000208d0: CMP             X0, #0
000208d4: MOVK            W8, #0xD224,LSL#16
000208d8: MOVK            W9, #0x5C6A,LSL#16
000208dc: CSEL            W8, W9, W8, EQ
000208e0: B               loc_205B4
000208e4: MOV             W8, #0x95BE
000208e8: STR             WZR, [SP,#0x2C0+var_2B0]
000208ec: MOVK            W8, #0x1DC4,LSL#16
000208f0: B               loc_205B4
000208f4: LDR             X8, [SP,#0x2C0+var_2B8]
000208f8: LDR             X8, [X8,#0x28]
000208fc: LDUR            X9, [X29,#var_60]
00020900: CMP             X8, X9
00020904: B.NE            loc_2092C
00020908: LDR             W0, [SP,#0x2C0+var_2B0]
0002090c: ADD             SP, SP, #0x270
00020910: LDP             X29, X30, [SP,#0x50+var_s0]
00020914: LDP             X20, X19, [SP,#0x50+var_10]
00020918: LDP             X22, X21, [SP,#0x50+var_20]
0002091c: LDP             X24, X23, [SP,#0x50+var_30]
00020920: LDP             X26, X25, [SP,#0x50+var_40]
00020924: LDP             X28, X27, [SP+0x50+var_50],#0x60
00020928: RET
0002092c: BL              .__stack_chk_fail