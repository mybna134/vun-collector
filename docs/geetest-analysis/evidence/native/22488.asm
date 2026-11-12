00022488: SUB             SP, SP, #0x130
0002248c: STP             X28, X27, [SP,#0x120+var_50]
00022490: STP             X26, X25, [SP,#0x120+var_40]
00022494: STP             X24, X23, [SP,#0x120+var_30]
00022498: STP             X22, X21, [SP,#0x120+var_20]
0002249c: STP             X20, X19, [SP,#0x120+var_10]
000224a0: STP             X29, X30, [SP,#0x120+var_s0]
000224a4: ADD             X29, SP, #0x120
000224a8: STR             X1, [SP,#0x120+var_108]
000224ac: MRS             X8, TPIDR_EL0
000224b0: STR             X8, [SP,#0x120+var_118]
000224b4: LDR             X8, [X8,#0x28]
000224b8: MOV             W22, #0x5EE3
000224bc: MOV             W23, #0x433D
000224c0: MOV             W26, #0x3C2F
000224c4: MOV             W27, #0x7ACE
000224c8: MOV             W28, #0x7927
000224cc: MOV             X20, X2
000224d0: MOV             X21, X0
000224d4: MOVK            W22, #0xA509,LSL#16
000224d8: MOVK            W23, #0x8509,LSL#16
000224dc: MOVK            W26, #0x6677,LSL#16
000224e0: MOVK            W27, #0x374D,LSL#16
000224e4: STUR            X8, [X29,#var_60]
000224e8: MOVK            W28, #0x17E2,LSL#16
000224ec: BL              sub_BB824
000224f0: STR             X0, [SP,#0x120+var_F8]
000224f4: LDR             X8, [X21]
000224f8: ADRL            X1, xmmword_F2F30
00022500: MOV             X0, X21
00022504: LDR             X8, [X8,#0x30]
00022508: BLR             X8
0002250c: MOV             W10, #0xE80C
00022510: MOV             W24, #0x6DFA
00022514: MOV             W19, #0xE658
00022518: MOV             W9, #0xBCEA
0002251c: MOVK            W10, #0xEFE,LSL#16
00022520: MOVK            W24, #0x5C84,LSL#16
00022524: MOVK            W19, #0x6C1A,LSL#16
00022528: MOVK            W9, #0x4895,LSL#16
0002252c: STR             X0, [SP,#0x120+var_F0]
00022530: STR             X20, [SP,#0x120+var_100]
00022534: STR             X21, [SP,#0x120+var_110]
00022538: B               loc_2255C
0002253c: STR             W25, [SP,#0x120+var_C4]
00022540: LDR             W8, [SP,#0x120+var_C4]
00022544: MOV             W9, #0xEFEE80D
0002254c: CMP             W8, #4
00022550: MOV             W8, #0xAE2618ED
00022558: CSEL            W9, W9, W8, LT
0002255c: MOV             W8, W9
00022560: CMP             W9, W10
00022564: B.GT            loc_225A8
00022568: MOV             W9, #0xC6514D4B
00022570: CMP             W8, W9
00022574: B.GT            loc_2260C
00022578: MOV             W9, #0xAE2618EC
00022580: CMP             W8, W9
00022584: B.GT            loc_226E0
00022588: MOV             W9, #0x7ACE
0002258c: CMP             W8, W23
00022590: MOVK            W9, #0x374D,LSL#16
00022594: B.EQ            loc_2255C
00022598: CMP             W8, W22
0002259c: MOV             W9, W8
000225a0: B.NE            loc_2255C
000225a4: B               loc_2253C
000225a8: MOV             W9, #0x374D7ACD
000225b0: CMP             W8, W9
000225b4: B.LE            loc_22688
000225b8: MOV             W9, #0x66773C2E
000225c0: CMP             W8, W9
000225c4: B.GT            loc_227C0
000225c8: MOV             W9, #0x3C2F
000225cc: CMP             W8, W27
000225d0: MOVK            W9, #0x6677,LSL#16
000225d4: B.EQ            loc_2255C
000225d8: MOV             W9, #0x4895BCEA
000225e0: CMP             W8, W9
000225e4: MOV             W9, W8
000225e8: B.NE            loc_2255C
000225ec: LDR             X8, [SP,#0x120+var_F0]
000225f0: MOV             W9, #0x6B67AB0
000225f8: CMP             X8, #0
000225fc: MOV             W8, #0xC6514D4C
00022604: CSEL            W9, W8, W9, EQ
00022608: B               loc_2255C
0002260c: MOV             W9, #0xFF7D69F8
00022614: CMP             W8, W9
00022618: B.GT            loc_2274C
0002261c: MOV             W9, #0xC6514D4C
00022624: CMP             W8, W9
00022628: B.EQ            loc_22AF8
0002262c: MOV             W9, #0xEC5E3824
00022634: CMP             W8, W9
00022638: MOV             W9, W8
0002263c: B.NE            loc_2255C
00022640: MOV             X0, X21
00022644: BL              sub_B6D0
00022648: LDR             X0, [SP,#0x120+var_F8]
0002264c: ADRP            X1, #byte_F2F48@PAGE
00022650: ADRP            X2, #byte_F2F24@PAGE
00022654: ADD             X1, X1, #byte_F2F48@PAGEOFF
00022658: ADD             X2, X2, #byte_F2F24@PAGEOFF
0002265c: BL              sub_13C74
00022660: LDR             X2, [SP,#0x120+var_F8]
00022664: ADRP            X1, #byte_F2F4C@PAGE
00022668: MOV             X0, X20
0002266c: ADD             X1, X1, #byte_F2F4C@PAGEOFF
00022670: BL              sub_13984
00022674: MOV             W10, #0xE80C
00022678: MOV             W9, #0x3C2F
0002267c: MOVK            W10, #0xEFE,LSL#16
00022680: MOVK            W9, #0x6677,LSL#16
00022684: B               loc_2255C
00022688: MOV             W9, #0x1F6539ED
00022690: CMP             W8, W9
00022694: B.LE            loc_22AD8
00022698: MOV             W9, #0x1F6539EE
000226a0: CMP             W8, W9
000226a4: B.EQ            loc_22CD8
000226a8: MOV             W9, #0x2501B849
000226b0: CMP             W8, W9
000226b4: MOV             W9, W8
000226b8: B.NE            loc_2255C
000226bc: SUB             X8, X29, #-var_80
000226c0: STR             X8, [SP,#0x120+var_D0]
000226c4: LDR             X8, [SP,#0x120+var_D0]
000226c8: LDR             X22, [SP,#0x120+var_D8]
000226cc: MOV             W8, #0x5F56
000226d0: MOV             W21, WZR
000226d4: MOVK            W8, #0x79F8,LSL#16
000226d8: MOV             X23, X22
000226dc: B               loc_228C8
000226e0: MOV             W9, #0xAE2618ED
000226e8: CMP             W8, W9
000226ec: B.EQ            loc_22B40
000226f0: MOV             W9, #0xBE7700BA
000226f8: CMP             W8, W9
000226fc: MOV             W9, W8
00022700: B.NE            loc_2255C
00022704: MOV             X0, X21
00022708: BL              sub_B6D0
0002270c: LDR             X0, [SP,#0x120+var_F8]
00022710: ADRP            X1, #byte_F2F48@PAGE
00022714: ADRP            X2, #byte_F2F24@PAGE
00022718: ADD             X1, X1, #byte_F2F48@PAGEOFF
0002271c: ADD             X2, X2, #byte_F2F24@PAGEOFF
00022720: BL              sub_13C74
00022724: LDR             X2, [SP,#0x120+var_F8]
00022728: ADRP            X1, #byte_F2F4C@PAGE
0002272c: MOV             X0, X20
00022730: ADD             X1, X1, #byte_F2F4C@PAGEOFF
00022734: BL              sub_13984
00022738: MOV             W10, #0xE80C
0002273c: MOV             W9, #0x7ACE
00022740: MOVK            W10, #0xEFE,LSL#16
00022744: MOVK            W9, #0x374D,LSL#16
00022748: B               loc_2255C
0002274c: MOV             W9, #0xFF7D69F9
00022754: CMP             W8, W9
00022758: B.EQ            loc_22B84
0002275c: MOV             W9, #0x6B67AB0
00022764: CMP             W8, W9
00022768: MOV             W9, W8
0002276c: B.NE            loc_2255C
00022770: LDR             X1, [SP,#0x120+var_F0]
00022774: LDR             X8, [X21]
00022778: ADRP            X2, #byte_F2B7C@PAGE
0002277c: ADRP            X3, #xmmword_F2F50@PAGE
00022780: MOV             X0, X21
00022784: LDR             X8, [X8,#0x388]
00022788: ADD             X2, X2, #byte_F2B7C@PAGEOFF
0002278c: ADD             X3, X3, #xmmword_F2F50@PAGEOFF
00022790: BLR             X8
00022794: STR             X0, [SP,#0x120+var_E8]
00022798: LDR             X8, [SP,#0x120+var_E8]
0002279c: MOV             W9, #0x8D31
000227a0: MOV             W10, #0xE80C
000227a4: MOVK            W9, #0x6FB1,LSL#16
000227a8: CMP             X8, #0
000227ac: MOV             W8, #0xEC5E3824
000227b4: MOVK            W10, #0xEFE,LSL#16
000227b8: CSEL            W9, W8, W9, EQ
000227bc: B               loc_2255C
000227c0: MOV             W9, #0x7927
000227c4: CMP             W8, W26
000227c8: MOVK            W9, #0x17E2,LSL#16
000227cc: B.EQ            loc_2255C
000227d0: MOV             W9, #0x6FB18D31
000227d8: CMP             W8, W9
000227dc: MOV             W9, W8
000227e0: B.NE            loc_2255C
000227e4: LDR             X1, [SP,#0x120+var_F0]
000227e8: LDR             X2, [SP,#0x120+var_E8]
000227ec: LDR             X3, [SP,#0x120+var_108]
000227f0: MOV             X0, X21
000227f4: BL              sub_CEE8
000227f8: STR             X0, [SP,#0x120+var_E0]
000227fc: LDR             X8, [SP,#0x120+var_E0]
00022800: MOV             W9, #0x39EE
00022804: MOV             W10, #0xE80C
00022808: MOVK            W9, #0x1F65,LSL#16
0002280c: CMP             X8, #0
00022810: MOV             W8, #0xBE7700BA
00022818: MOVK            W10, #0xEFE,LSL#16
0002281c: CSEL            W9, W8, W9, EQ
00022820: B               loc_2255C
00022824: LDR             X8, [SP,#0x120+var_C0]
00022828: MOV             X10, #0x65C2
0002282c: LDR             X9, [SP,#0x120+var_90]
00022830: MOVK            X10, #0x3D11,LSL#16
00022834: MOVK            X10, #0x8983,LSL#32
00022838: MOVK            X10, #0xE6F4,LSL#48
0002283c: SUB             W8, W8, W10
00022840: SUB             W8, W8, W9
00022844: ADD             W8, W8, W10
00022848: STR             W8, [SP,#0x120+var_B4]
0002284c: LDR             W8, [SP,#0x120+var_B4]
00022850: ADD             W8, W8, #1
00022854: SXTW            X0, W8; size
00022858: BL              .malloc
0002285c: LDURSW          X8, [X29,#var_84]
00022860: SUB             X9, X29, #-var_80
00022864: ADD             X8, X9, X8,LSL#3
00022868: STP             X0, X8, [SP,#0x120+var_B0]
0002286c: LDR             X8, [SP,#0x120+var_B0]
00022870: LDR             X9, [SP,#0x120+var_A8]
00022874: STR             X8, [X9]
00022878: LDR             X8, [SP,#0x120+var_B0]
0002287c: LDUR            W25, [X29,#var_84]
00022880: MOV             W9, #0x662994C5
00022888: CMP             X8, #0
0002288c: MOV             W8, #0x5C846DFB
00022894: CSEL            W8, W8, W9, EQ
00022898: B               loc_228C8
0002289c: LDR             X0, [SP,#0x120+var_98]
000228a0: MOV             W1, #0x7C ; '|'
000228a4: BL              sub_7504
000228a8: STR             X0, [SP,#0x120+var_C0]
000228ac: LDR             X8, [SP,#0x120+var_C0]
000228b0: MOV             W9, #0x78FD5AB9
000228b8: CMP             X8, #0
000228bc: MOV             W8, #0x8251DD67
000228c4: CSEL            W8, W9, W8, EQ
000228c8: CMP             W8, W24
000228cc: B.LE            loc_2294C
000228d0: CMP             W8, W19
000228d4: B.LE            loc_229C8
000228d8: MOV             W9, #0x6C1AE659
000228e0: CMP             W8, W9
000228e4: B.EQ            loc_2289C
000228e8: MOV             W9, #0x78FD5AB9
000228f0: CMP             W8, W9
000228f4: B.EQ            loc_22A74
000228f8: MOV             W9, #0x79F85F56
00022900: CMP             W8, W9
00022904: B.NE            loc_228C8
00022908: STP             X22, X23, [SP,#0x120+var_98]
0002290c: STUR            W21, [X29,#var_84]
00022910: LDR             X8, [SP,#0x120+var_98]
00022914: LDRB            W8, [X8]
00022918: LDUR            W9, [X29,#var_84]
0002291c: CMP             W8, #0
00022920: CSET            W8, NE
00022924: CMP             W9, #4
00022928: CSET            W9, LT
0002292c: EOR             W9, W8, W9
00022930: BICS            WZR, W8, W9
00022934: MOV             W8, #0xEC03
00022938: MOV             W9, #0xE659
0002293c: MOVK            W8, #0xFE20,LSL#16
00022940: MOVK            W9, #0x6C1A,LSL#16
00022944: CSEL            W8, W9, W8, NE
00022948: B               loc_228C8
0002294c: MOV             W9, #0xBC8D3E83
00022954: CMP             W8, W9
00022958: B.LE            loc_22990
0002295c: MOV             W9, #0xBC8D3E84
00022964: CMP             W8, W9
00022968: B.EQ            loc_22ABC
0002296c: MOV             W9, #0x1FB796E2
00022974: CMP             W8, W9
00022978: B.EQ            loc_22A2C
0002297c: MOV             W9, #0xFE20EC03
00022984: CMP             W8, W9
00022988: B.NE            loc_228C8
0002298c: B               loc_22BD8
00022990: MOV             W9, #0x8251DD67
00022998: CMP             W8, W9
0002299c: B.EQ            loc_22824
000229a0: MOV             W9, #0xB5862D63
000229a8: CMP             W8, W9
000229ac: B.NE            loc_228C8
000229b0: LDR             X0, [SP,#0x120+var_A0]
000229b4: LDR             X1, [SP,#0x120+var_98]
000229b8: BL              sub_513C
000229bc: MOV             W8, #0xBC8D3E84
000229c4: B               loc_228C8
000229c8: MOV             W9, #0x5C846DFB
000229d0: CMP             W8, W9
000229d4: B.EQ            loc_22A54
000229d8: MOV             W9, #0x662994C5
000229e0: CMP             W8, W9
000229e4: B.NE            loc_228C8
000229e8: LDRSW           X25, [SP,#0x120+var_B4]
000229ec: LDR             X0, [SP,#0x120+var_B0]
000229f0: LDR             X1, [SP,#0x120+var_90]
000229f4: MOV             X2, X25
000229f8: BL              sub_7070
000229fc: LDR             X8, [SP,#0x120+var_A8]
00022a00: MOV             W9, #0x29944DAA
00022a08: LDR             X8, [X8]
00022a0c: STRB            WZR, [X8,X25]
00022a10: LDUR            W8, [X29,#var_84]
00022a14: ADD             W8, W8, W9
00022a18: ADD             W8, W8, #1
00022a1c: SUB             W25, W8, W9
00022a20: MOV             W8, #0x5C846DFB
00022a28: B               loc_228C8
00022a2c: MOV             W8, #0xEC03
00022a30: MOV             W9, #0x5F56
00022a34: CMP             W20, #0
00022a38: MOVK            W8, #0xFE20,LSL#16
00022a3c: MOVK            W9, #0x79F8,LSL#16
00022a40: CSEL            W8, W9, W8, EQ
00022a44: MOV             X22, X28
00022a48: MOV             X23, X27
00022a4c: MOV             W21, W26
00022a50: B               loc_228C8
00022a54: LDR             X8, [SP,#0x120+var_C0]
00022a58: MOV             W20, WZR
00022a5c: MOV             W26, W25
00022a60: ADD             X28, X8, #1
00022a64: MOV             W8, #0x96E2
00022a68: MOV             X27, X28
00022a6c: MOVK            W8, #0x1FB7,LSL#16
00022a70: B               loc_228C8
00022a74: LDR             X0, [SP,#0x120+var_98]
00022a78: BL              sub_5914
00022a7c: ADD             W8, W0, #1
00022a80: SXTW            X0, W8; size
00022a84: BL              .malloc
00022a88: STR             X0, [SP,#0x120+var_A0]
00022a8c: LDURSW          X8, [X29,#var_84]
00022a90: LDR             X9, [SP,#0x120+var_A0]
00022a94: SUB             X10, X29, #-var_80
00022a98: STR             X9, [X10,X8,LSL#3]
00022a9c: LDR             X8, [SP,#0x120+var_A0]
00022aa0: MOV             W9, #0xB5862D63
00022aa8: CMP             X8, #0
00022aac: MOV             W8, #0xBC8D3E84
00022ab4: CSEL            W8, W8, W9, EQ
00022ab8: B               loc_228C8
00022abc: LDUR            W26, [X29,#var_84]
00022ac0: LDR             X27, [SP,#0x120+var_90]
00022ac4: LDR             X28, [SP,#0x120+var_98]
00022ac8: MOV             W8, #0x96E2
00022acc: MOV             W20, #3
00022ad0: MOVK            W8, #0x1FB7,LSL#16
00022ad4: B               loc_228C8
00022ad8: MOV             W9, #0xEFEE80D
00022ae0: CMP             W8, W9
00022ae4: B.EQ            loc_22C9C
00022ae8: CMP             W8, W28
00022aec: MOV             W9, W8
00022af0: B.NE            loc_2255C
00022af4: B               loc_22D28
00022af8: MOV             X0, X21
00022afc: BL              sub_B6D0
00022b00: LDR             X0, [SP,#0x120+var_F8]
00022b04: ADRP            X1, #byte_F2F48@PAGE
00022b08: ADRP            X2, #byte_F2F24@PAGE
00022b0c: ADD             X1, X1, #byte_F2F48@PAGEOFF
00022b10: ADD             X2, X2, #byte_F2F24@PAGEOFF
00022b14: BL              sub_13C74
00022b18: LDR             X2, [SP,#0x120+var_F8]
00022b1c: ADRP            X1, #byte_F2F4C@PAGE
00022b20: MOV             X0, X20
00022b24: ADD             X1, X1, #byte_F2F4C@PAGEOFF
00022b28: BL              sub_13984
00022b2c: MOV             W10, #0xE80C
00022b30: MOV             W9, #0x7927
00022b34: MOVK            W10, #0xEFE,LSL#16
00022b38: MOVK            W9, #0x17E2,LSL#16
00022b3c: B               loc_2255C
00022b40: LDR             X1, [SP,#0x120+var_E0]
00022b44: LDR             X2, [SP,#0x120+var_D8]
00022b48: LDR             X8, [X21]
00022b4c: MOV             X0, X21
00022b50: LDR             X8, [X8,#0x550]
00022b54: BLR             X8
00022b58: LDR             X1, [SP,#0x120+var_F0]
00022b5c: LDR             X8, [X21]
00022b60: MOV             X0, X21
00022b64: LDR             X8, [X8,#0xB8]
00022b68: BLR             X8
00022b6c: LDR             X8, [SP,#0x120+var_D0]
00022b70: MOV             W10, #0xE80C
00022b74: MOV             W9, #0x433D
00022b78: MOVK            W10, #0xEFE,LSL#16
00022b7c: MOVK            W9, #0x8509,LSL#16
00022b80: B               loc_2255C
00022b84: LDR             X0, [SP,#0x120+var_F8]
00022b88: LDR             X2, [SP,#0x120+var_D8]
00022b8c: ADRL            X1, byte_F2F48
00022b94: BL              sub_13C74
00022b98: LDR             X2, [SP,#0x120+var_F8]
00022b9c: ADRP            X1, #byte_F2F4C@PAGE
00022ba0: MOV             X0, X20
00022ba4: ADD             X1, X1, #byte_F2F4C@PAGEOFF
00022ba8: BL              sub_13984
00022bac: LDR             X1, [SP,#0x120+var_E0]
00022bb0: LDR             X2, [SP,#0x120+var_D8]
00022bb4: LDR             X8, [X21]
00022bb8: MOV             X0, X21
00022bbc: LDR             X8, [X8,#0x550]
00022bc0: BLR             X8
00022bc4: MOV             W10, #0xE80C
00022bc8: MOV             W9, #0x433D
00022bcc: MOVK            W10, #0xEFE,LSL#16
00022bd0: MOVK            W9, #0x8509,LSL#16
00022bd4: B               loc_2255C
00022bd8: LDUR            X2, [X29,#var_80]
00022bdc: LDR             X0, [SP,#0x120+var_F8]
00022be0: ADRL            X1, byte_F2F14
00022be8: BL              sub_13C74
00022bec: LDUR            X2, [X29,#var_78]
00022bf0: LDR             X0, [SP,#0x120+var_F8]
00022bf4: ADRL            X1, byte_F2F84
00022bfc: BL              sub_13C74
00022c00: LDUR            X2, [X29,#var_70]
00022c04: LDR             X0, [SP,#0x120+var_F8]
00022c08: ADRL            X1, byte_F2F88
00022c10: BL              sub_13C74
00022c14: LDUR            X2, [X29,#var_68]
00022c18: LDR             X0, [SP,#0x120+var_F8]
00022c1c: ADRL            X1, byte_F2F8C
00022c24: BL              sub_13C74
00022c28: LDR             X0, [SP,#0x120+var_F8]
00022c2c: ADRP            X1, #byte_F2F48@PAGE
00022c30: ADRP            X2, #byte_F2F20@PAGE
00022c34: ADD             X1, X1, #byte_F2F48@PAGEOFF
00022c38: ADD             X2, X2, #byte_F2F20@PAGEOFF
00022c3c: BL              sub_13C74
00022c40: LDR             X2, [SP,#0x120+var_F8]
00022c44: LDR             X20, [SP,#0x120+var_100]
00022c48: ADRL            X1, byte_F2F4C
00022c50: MOV             X0, X20
00022c54: BL              sub_13984
00022c58: LDR             X21, [SP,#0x120+var_110]
00022c5c: MOV             W9, #0x5EE3
00022c60: MOV             W22, #0x5EE3
00022c64: MOV             W23, #0x433D
00022c68: MOV             W26, #0x3C2F
00022c6c: MOV             W27, #0x7ACE
00022c70: MOV             W28, #0x7927
00022c74: MOV             W10, #0xE80C
00022c78: MOV             W25, WZR
00022c7c: MOVK            W9, #0xA509,LSL#16
00022c80: MOVK            W22, #0xA509,LSL#16
00022c84: MOVK            W23, #0x8509,LSL#16
00022c88: MOVK            W26, #0x6677,LSL#16
00022c8c: MOVK            W27, #0x374D,LSL#16
00022c90: MOVK            W28, #0x17E2,LSL#16
00022c94: MOVK            W10, #0xEFE,LSL#16
00022c98: B               loc_2255C
00022c9c: LDRSW           X8, [SP,#0x120+var_C4]
00022ca0: SUB             X9, X29, #-var_80
00022ca4: LDR             X0, [X9,X8,LSL#3]; ptr
00022ca8: BL              .free
00022cac: LDR             W8, [SP,#0x120+var_C4]
00022cb0: MOV             W9, #0xF22DA997
00022cb8: MOV             W10, #0xE80C
00022cbc: ADD             W8, W8, W9
00022cc0: ADD             W8, W8, #1
00022cc4: SUB             W25, W8, W9
00022cc8: MOV             W9, #0x5EE3
00022ccc: MOVK            W10, #0xEFE,LSL#16
00022cd0: MOVK            W9, #0xA509,LSL#16
00022cd4: B               loc_2255C
00022cd8: LDR             X1, [SP,#0x120+var_E0]
00022cdc: LDR             X8, [X21]
00022ce0: MOV             X0, X21
00022ce4: MOV             X2, XZR
00022ce8: LDR             X8, [X8,#0x548]
00022cec: BLR             X8
00022cf0: STR             X0, [SP,#0x120+var_D8]
00022cf4: LDR             X0, [SP,#0x120+var_D8]
00022cf8: ADRL            X1, byte_F2F80
00022d00: BL              sub_75D4
00022d04: MOV             W8, #0x69F9
00022d08: MOV             W9, #0xB849
00022d0c: MOV             W10, #0xE80C
00022d10: CMP             X0, #0
00022d14: MOVK            W8, #0xFF7D,LSL#16
00022d18: MOVK            W9, #0x2501,LSL#16
00022d1c: MOVK            W10, #0xEFE,LSL#16
00022d20: CSEL            W9, W8, W9, EQ
00022d24: B               loc_2255C
00022d28: LDR             X8, [SP,#0x120+var_118]
00022d2c: LDR             X8, [X8,#0x28]
00022d30: LDUR            X9, [X29,#var_60]
00022d34: CMP             X8, X9
00022d38: B.NE            loc_22D5C
00022d3c: LDP             X29, X30, [SP,#0x120+var_s0]
00022d40: LDP             X20, X19, [SP,#0x120+var_10]
00022d44: LDP             X22, X21, [SP,#0x120+var_20]
00022d48: LDP             X24, X23, [SP,#0x120+var_30]
00022d4c: LDP             X26, X25, [SP,#0x120+var_40]
00022d50: LDP             X28, X27, [SP,#0x120+var_50]
00022d54: ADD             SP, SP, #0x130
00022d58: RET
00022d5c: BL              .__stack_chk_fail