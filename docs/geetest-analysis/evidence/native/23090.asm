00023090: SUB             SP, SP, #0x20
00023094: STP             X29, X30, [SP,#0x10+var_s0]
00023098: ADD             X29, SP, #0x10
0002309c: ADRL            X2, qword_F2FD8
000230a4: BL              sub_F180
000230a8: MOV             W8, #0xA22F
000230ac: MOV             W9, #0xDA5B
000230b0: MOV             W10, #0x49CB
000230b4: MOV             W11, #0xB874
000230b8: MOV             W12, #0xDA5C
000230bc: MOV             W13, #0xA22F
000230c0: STUR            W0, [X29,#var_4]
000230c4: MOVK            W8, #0xF584,LSL#16
000230c8: MOVK            W9, #0xBBA2,LSL#16
000230cc: MOVK            W10, #0x9C1F,LSL#16
000230d0: MOVK            W11, #0xA090,LSL#16
000230d4: MOVK            W12, #0xBBA2,LSL#16
000230d8: MOVK            W13, #0xF584,LSL#16
000230dc: B               loc_230EC
000230e0: MOV             W13, #0xBBA2DA5C
000230e8: MOV             W0, #1
000230ec: CMP             W13, W9
000230f0: B.GT            loc_23114
000230f4: CMP             W13, W10
000230f8: B.EQ            loc_230E0
000230fc: CMP             W13, W11
00023100: B.NE            loc_230EC
00023104: MOV             W13, #0xDA5C
00023108: MOV             W0, WZR
0002310c: MOVK            W13, #0xBBA2,LSL#16
00023110: B               loc_230EC
00023114: CMP             W13, W12
00023118: B.EQ            loc_23134
0002311c: CMP             W13, W8
00023120: B.NE            loc_230EC
00023124: LDUR            W13, [X29,#var_4]
00023128: CMP             W13, #0
0002312c: CSEL            W13, W10, W11, GT
00023130: B               loc_230EC
00023134: LDP             X29, X30, [SP,#0x10+var_s0]
00023138: ADD             SP, SP, #0x20 ; ' '
0002313c: RET