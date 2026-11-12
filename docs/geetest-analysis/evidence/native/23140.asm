00023140: SUB             SP, SP, #0x80
00023144: STP             X28, X27, [SP,#0x70+var_50]
00023148: STP             X26, X25, [SP,#0x70+var_40]
0002314c: STP             X24, X23, [SP,#0x70+var_30]
00023150: STP             X22, X21, [SP,#0x70+var_20]
00023154: STP             X20, X19, [SP,#0x70+var_10]
00023158: STP             X29, X30, [SP,#0x70+var_s0]
0002315c: ADD             X29, SP, #0x70
00023160: MOV             X19, X0
00023164: BL              sub_F59C
00023168: MOV             W27, #0x730F
0002316c: MOV             W28, #0x2A1F
00023170: MOV             W20, #0xFEB2
00023174: MOV             W21, #0x7310
00023178: MOV             W23, #0x81C0
0002317c: MOV             W25, #0xDD3D
00023180: MOV             W9, #0xE3A2
00023184: MOVK            W27, #0x1ADB,LSL#16
00023188: MOVK            W28, #0xE858,LSL#16
0002318c: MOVK            W20, #0xC1E5,LSL#16
00023190: MOVK            W21, #0x1ADB,LSL#16
00023194: MOVK            W23, #0x2A72,LSL#16
00023198: MOVK            W25, #0x20ED,LSL#16
0002319c: MOVK            W9, #0xCD71,LSL#16
000231a0: STR             X0, [SP,#0x70+var_68]
000231a4: B               loc_231B0
000231a8: MOV             W0, W22
000231ac: MOV             W1, W26
000231b0: MOV             W8, W9
000231b4: CMP             W9, W27
000231b8: MOV             W26, W1
000231bc: MOV             W22, W0
000231c0: B.LE            loc_2320C
000231c4: CMP             W8, W23
000231c8: B.GT            loc_23268
000231cc: CMP             W8, W21
000231d0: B.EQ            loc_23314
000231d4: CMP             W8, W25
000231d8: B.EQ            loc_23358
000231dc: MOV             W9, #0x2524A1A9
000231e4: CMP             W8, W9
000231e8: MOV             W0, W22
000231ec: MOV             W1, W26
000231f0: MOV             W9, W8
000231f4: B.NE            loc_231B0
000231f8: MOV             W9, #0x2E4D
000231fc: MOV             W0, WZR
00023200: MOV             W1, W26
00023204: MOVK            W9, #0xE7A4,LSL#16
00023208: B               loc_231B0
0002320c: CMP             W8, W28
00023210: B.LE            loc_232DC
00023214: MOV             W9, #0xE8582A20
0002321c: CMP             W8, W9
00023220: MOV             W9, #0x2E4D
00023224: MOV             W0, W26
00023228: MOV             W1, W26
0002322c: MOVK            W9, #0xE7A4,LSL#16
00023230: B.EQ            loc_231B0
00023234: MOV             W9, #0xF3ED687E
0002323c: CMP             W8, W9
00023240: B.EQ            loc_2339C
00023244: MOV             W9, #0xF7F06408
0002324c: CMP             W8, W9
00023250: MOV             W0, W22
00023254: MOV             W1, W26
00023258: MOV             W9, W8
0002325c: B.NE            loc_231B0
00023260: MOV             W24, #1
00023264: B               loc_23388
00023268: MOV             W9, #0x2A7281C1
00023270: CMP             W8, W9
00023274: MOV             W9, #0x2A20
00023278: MOV             W0, W22
0002327c: MOV             W1, W24
00023280: MOVK            W9, #0xE858,LSL#16
00023284: B.EQ            loc_231B0
00023288: MOV             W9, #0x34DDB143
00023290: CMP             W8, W9
00023294: B.EQ            loc_23384
00023298: MOV             W9, #0x51B2ECB6
000232a0: CMP             W8, W9
000232a4: MOV             W0, W22
000232a8: MOV             W1, W26
000232ac: MOV             W9, W8
000232b0: B.NE            loc_231B0
000232b4: MOV             X0, X19
000232b8: BL              sub_B6D0
000232bc: LDR             X1, [SP,#0x70+var_68]
000232c0: MOV             X0, X19
000232c4: BL              sub_10C30
000232c8: MOV             W9, #0x2A20
000232cc: MOV             W1, WZR
000232d0: MOV             W0, W22
000232d4: MOVK            W9, #0xE858,LSL#16
000232d8: B               loc_231B0
000232dc: CMP             W8, W20
000232e0: B.EQ            loc_233CC
000232e4: MOV             W9, #0xCD71E3A2
000232ec: CMP             W8, W9
000232f0: B.EQ            loc_23410
000232f4: MOV             W9, #0xE7A42E4D
000232fc: CMP             W8, W9
00023300: MOV             W0, W22
00023304: MOV             W1, W26
00023308: MOV             W9, W8
0002330c: B.NE            loc_231B0
00023310: B               loc_23428
00023314: LDR             X8, [SP,#0x70+var_68]
00023318: MOV             X0, X19
0002331c: LDR             X1, [X8,#8]
00023320: LDR             X2, [SP,#0x70+var_60]
00023324: LDR             X8, [X19]
00023328: LDR             X8, [X8,#0x320]
0002332c: BLR             X8
00023330: STR             W0, [SP,#0x70+var_54]
00023334: LDR             X8, [X19]
00023338: MOV             X0, X19
0002333c: LDR             X8, [X8,#0x720]
00023340: BLR             X8
00023344: MOV             W8, #0x687E
00023348: TST             W0, #0xFF
0002334c: MOVK            W8, #0xF3ED,LSL#16
00023350: CSEL            W9, W8, W25, EQ
00023354: B               loc_231A8
00023358: LDR             X8, [X19]
0002335c: MOV             X0, X19
00023360: LDR             X8, [X8,#0x80]
00023364: BLR             X8
00023368: LDR             X8, [X19]
0002336c: MOV             X0, X19
00023370: LDR             X8, [X8,#0x88]
00023374: BLR             X8
00023378: LDR             X1, [SP,#0x70+var_68]
0002337c: MOV             X0, X19
00023380: BL              sub_10C30
00023384: MOV             W24, WZR
00023388: MOV             W9, #0x81C1
0002338c: MOV             W0, W22
00023390: MOV             W1, W26
00023394: MOVK            W9, #0x2A72,LSL#16
00023398: B               loc_231B0
0002339c: LDR             X1, [SP,#0x70+var_68]
000233a0: MOV             X0, X19
000233a4: BL              sub_10C30
000233a8: LDR             W8, [SP,#0x70+var_54]
000233ac: EOR             W9, W8, #0xFFFFFFFD
000233b0: TST             W9, W8
000233b4: MOV             W8, #0x6408
000233b8: MOV             W9, #0xB143
000233bc: MOVK            W8, #0xF7F0,LSL#16
000233c0: MOVK            W9, #0x34DD,LSL#16
000233c4: CSEL            W9, W9, W8, EQ
000233c8: B               loc_231A8
000233cc: LDR             X8, [SP,#0x70+var_68]
000233d0: LDR             X9, [X19]
000233d4: ADRP            X2, #byte_F2FE4@PAGE
000233d8: ADRP            X3, #byte_F2FEC@PAGE
000233dc: LDR             X1, [X8]
000233e0: LDR             X8, [X9,#0x2F0]
000233e4: MOV             X0, X19
000233e8: ADD             X2, X2, #byte_F2FE4@PAGEOFF
000233ec: ADD             X3, X3, #byte_F2FEC@PAGEOFF
000233f0: BLR             X8
000233f4: STR             X0, [SP,#0x70+var_60]
000233f8: LDR             X8, [SP,#0x70+var_60]
000233fc: CMP             X8, #0
00023400: MOV             W8, #0x51B2ECB6
00023408: CSEL            W9, W8, W21, EQ
0002340c: B               loc_231A8
00023410: LDR             X8, [SP,#0x70+var_68]
00023414: CMP             X8, #0
00023418: MOV             W8, #0x2524A1A9
00023420: CSEL            W9, W8, W20, EQ
00023424: B               loc_231A8
00023428: MOV             W0, W22
0002342c: LDP             X29, X30, [SP,#0x70+var_s0]
00023430: LDP             X20, X19, [SP,#0x70+var_10]
00023434: LDP             X22, X21, [SP,#0x70+var_20]
00023438: LDP             X24, X23, [SP,#0x70+var_30]
0002343c: LDP             X26, X25, [SP,#0x70+var_40]
00023440: LDP             X28, X27, [SP,#0x70+var_50]
00023444: ADD             SP, SP, #0x80
00023448: RET