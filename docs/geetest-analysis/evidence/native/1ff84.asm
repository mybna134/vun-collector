0001ff84: SUB             SP, SP, #0x160
0001ff88: STP             X28, X27, [SP,#0x150+var_50]
0001ff8c: STP             X26, X25, [SP,#0x150+var_40]
0001ff90: STP             X24, X23, [SP,#0x150+var_30]
0001ff94: STP             X22, X21, [SP,#0x150+var_20]
0001ff98: STP             X20, X19, [SP,#0x150+var_10]
0001ff9c: STP             X29, X30, [SP,#0x150+var_s0]
0001ffa0: ADD             X29, SP, #0x150
0001ffa4: MRS             X8, TPIDR_EL0
0001ffa8: STP             X8, X2, [SP,#0x150+var_150]
0001ffac: LDR             X8, [X8,#0x28]
0001ffb0: MOV             W25, #0xE4BE
0001ffb4: MOV             X20, X0
0001ffb8: MOVK            W25, #0xE631,LSL#16
0001ffbc: STR             X8, [SP,#0x150+var_130]
0001ffc0: BL              sub_10214
0001ffc4: MOV             W24, #0xC23D
0001ffc8: MOV             W23, #0x9CDA
0001ffcc: MOV             W26, #0x3AB1
0001ffd0: MOV             W19, #0x6BBD
0001ffd4: MOV             W22, #0x7154
0001ffd8: MOV             W28, #0x2A4B
0001ffdc: MOV             W9, #0x7155
0001ffe0: STR             X0, [SP,#0x150+var_128]
0001ffe4: MOVK            W24, #0x100E,LSL#16
0001ffe8: MOVK            W23, #0xAC24,LSL#16
0001ffec: MOVK            W26, #0x9C2C,LSL#16
0001fff0: MOVK            W19, #0xDAC7,LSL#16
0001fff4: MOVK            W22, #0x4ED2,LSL#16
0001fff8: MOVK            W28, #0x4068,LSL#16
0001fffc: MOVK            W9, #0x4ED2,LSL#16
00020000: B               loc_2000C
00020004: CSEL            W9, W9, W8, EQ
00020008: MOV             W0, W21
0002000c: MOV             W8, W9
00020010: CMP             W9, W24
00020014: MOV             W21, W0
00020018: B.GT            loc_20068
0002001c: CMP             W8, W23
00020020: B.GT            loc_200C8
00020024: CMP             W8, W26
00020028: B.GT            loc_20158
0002002c: MOV             W9, #0x848DE8F8
00020034: CMP             W8, W9
00020038: B.EQ            loc_20320
0002003c: MOV             W9, #0x98A23772
00020044: CMP             W8, W9
00020048: MOV             W0, W21
0002004c: MOV             W9, W8
00020050: B.NE            loc_2000C
00020054: LDR             W27, [SP,#0x150+var_138]
00020058: MOV             W9, #0x6BBE
0002005c: MOV             W0, W21
00020060: MOVK            W9, #0xDAC7,LSL#16
00020064: B               loc_2000C
00020068: CMP             W8, W22
0002006c: B.GT            loc_20104
00020070: CMP             W8, W28
00020074: B.GT            loc_20208
00020078: MOV             W9, #0x100EC23E
00020080: CMP             W8, W9
00020084: B.EQ            loc_20400
00020088: MOV             W9, #0x2EE21AA8
00020090: CMP             W8, W9
00020094: MOV             W0, W21
00020098: MOV             W9, W8
0002009c: B.NE            loc_2000C
000200a0: MOV             X0, X20
000200a4: BL              sub_B6D0
000200a8: LDR             X1, [SP,#0x150+var_128]
000200ac: MOV             X0, X20
000200b0: BL              sub_10C30
000200b4: MOV             W9, #0x6BBE
000200b8: MOV             W27, WZR
000200bc: MOV             W0, W21
000200c0: MOVK            W9, #0xDAC7,LSL#16
000200c4: B               loc_2000C
000200c8: CMP             W8, W19
000200cc: B.GT            loc_201C8
000200d0: MOV             W9, #0xAC249CDB
000200d8: CMP             W8, W9
000200dc: B.EQ            loc_20374
000200e0: MOV             W9, #0xD7306916
000200e8: CMP             W8, W9
000200ec: MOV             W0, W21
000200f0: MOV             W9, W8
000200f4: B.NE            loc_2000C
000200f8: LDR             W8, [SP,#0x150+var_134]
000200fc: STR             W8, [SP,#0x150+var_13C]
00020100: B               loc_2048C
00020104: MOV             W9, #0x74660334
0002010c: CMP             W8, W9
00020110: B.GT            loc_202F4
00020114: MOV             W9, #0x4ED27155
0002011c: CMP             W8, W9
00020120: B.EQ            loc_2049C
00020124: MOV             W9, #0x6A4ACCB6
0002012c: CMP             W8, W9
00020130: MOV             W0, W21
00020134: MOV             W9, W8
00020138: B.NE            loc_2000C
0002013c: MOV             X0, X20
00020140: BL              sub_B6D0
00020144: LDR             X1, [SP,#0x150+var_128]
00020148: MOV             X0, X20
0002014c: BL              sub_10C30
00020150: STR             WZR, [SP,#0x150+var_134]
00020154: B               loc_201F8
00020158: MOV             W9, #0x9C2C3AB2
00020160: CMP             W8, W9
00020164: B.EQ            loc_203C4
00020168: MOV             W9, #0x9EA3F97D
00020170: CMP             W8, W9
00020174: MOV             W0, W21
00020178: MOV             W9, W8
0002017c: B.NE            loc_2000C
00020180: LDR             X8, [SP,#0x150+var_110]
00020184: MOV             X0, X20
00020188: LDR             X1, [X8]
0002018c: LDR             X2, [SP,#0x150+var_100]
00020190: LDR             X8, [X20]
00020194: LDR             X8, [X8,#0x328]
00020198: BLR             X8
0002019c: STR             X0, [SP,#0x150+var_F8]
000201a0: LDR             X8, [X20]
000201a4: MOV             X0, X20
000201a8: LDR             X8, [X8,#0x720]
000201ac: BLR             X8
000201b0: MOV             W8, #0xC23E
000201b4: MOV             W9, #0x859C
000201b8: TST             W0, #0xFF
000201bc: MOVK            W8, #0x100E,LSL#16
000201c0: MOVK            W9, #0x48D0,LSL#16
000201c4: B               loc_20004
000201c8: MOV             W9, #0xDAC76BBE
000201d0: CMP             W8, W9
000201d4: MOV             W9, #0xE4BE
000201d8: MOV             W0, W27
000201dc: MOVK            W9, #0xE631,LSL#16
000201e0: B.EQ            loc_2000C
000201e4: CMP             W8, W25
000201e8: MOV             W0, W21
000201ec: MOV             W9, W8
000201f0: B.NE            loc_2000C
000201f4: STR             W21, [SP,#0x150+var_134]
000201f8: MOV             W9, #0x6916
000201fc: MOV             W0, W21
00020200: MOVK            W9, #0xD730,LSL#16
00020204: B               loc_2000C
00020208: MOV             W9, #0x40682A4C
00020210: CMP             W8, W9
00020214: B.EQ            loc_20440
00020218: MOV             W9, #0x48D0859C
00020220: CMP             W8, W9
00020224: MOV             W0, W21
00020228: MOV             W9, W8
0002022c: B.NE            loc_2000C
00020230: LDR             X8, [SP,#0x150+var_108]
00020234: MOV             X25, #0x20C49BA5E353F7CF
00020244: ADD             X9, SP, #0x150+s
00020248: MOVI            V0.2D, #0
0002024c: SMULH           X8, X8, X25
00020250: ADRP            X26, #byte_F2E48@PAGE
00020254: STP             Q0, Q0, [X9,#0x20]
00020258: STR             Q0, [X9,#0x10]
0002025c: ASR             X9, X8, #7
00020260: ADD             X26, X26, #byte_F2E48@PAGEOFF
00020264: ADD             X2, X9, X8,LSR#63
00020268: ADD             X0, SP, #0x150+s; s
0002026c: MOV             X1, X26; format
00020270: STR             Q0, [SP,#0x150+s]
00020274: BL              .sprintf
00020278: LDR             X8, [SP,#0x150+var_F8]
0002027c: MOVI            V0.2D, #0
00020280: ADD             X0, SP, #0x150+var_F0; s
00020284: MOV             X1, X26; format
00020288: SMULH           X8, X8, X25
0002028c: ASR             X9, X8, #7
00020290: ADD             X2, X9, X8,LSR#63
00020294: MOV             W26, #0x3AB1
00020298: STP             Q0, Q0, [SP,#0x150+var_D0]
0002029c: STP             Q0, Q0, [SP,#0x150+var_F0]
000202a0: MOVK            W26, #0x9C2C,LSL#16
000202a4: BL              .sprintf
000202a8: LDR             X25, [SP,#0x150+var_148]
000202ac: ADRP            X1, #byte_F2E4C@PAGE
000202b0: ADD             X2, SP, #0x150+s
000202b4: ADD             X1, X1, #byte_F2E4C@PAGEOFF
000202b8: MOV             X0, X25
000202bc: BL              sub_13C74
000202c0: ADRP            X1, #byte_F2E50@PAGE
000202c4: ADD             X2, SP, #0x150+var_F0
000202c8: MOV             X0, X25
000202cc: MOV             W25, #0xE4BE
000202d0: ADD             X1, X1, #byte_F2E50@PAGEOFF
000202d4: MOVK            W25, #0xE631,LSL#16
000202d8: BL              sub_13C74
000202dc: LDR             X1, [SP,#0x150+var_128]
000202e0: MOV             X0, X20
000202e4: BL              sub_10C30
000202e8: MOV             W8, #1
000202ec: STR             W8, [SP,#0x150+var_138]
000202f0: B               loc_20430
000202f4: MOV             W9, #0x7F68D487
000202fc: CMP             W8, W9
00020300: B.EQ            loc_20488
00020304: MOV             W9, #0x74660335
0002030c: CMP             W8, W9
00020310: MOV             W0, W21
00020314: MOV             W9, W8
00020318: B.NE            loc_2000C
0002031c: B               loc_204B8
00020320: LDR             X8, [SP,#0x150+var_128]
00020324: MOV             X0, X20
00020328: ADD             X8, X8, #8
0002032c: STR             X8, [SP,#0x150+var_110]
00020330: LDR             X8, [SP,#0x150+var_110]
00020334: LDR             X1, [X8]
00020338: LDR             X2, [SP,#0x150+var_118]
0002033c: LDR             X8, [X20]
00020340: LDR             X8, [X8,#0x328]
00020344: BLR             X8
00020348: STR             X0, [SP,#0x150+var_108]
0002034c: LDR             X8, [X20]
00020350: MOV             X0, X20
00020354: LDR             X8, [X8,#0x720]
00020358: BLR             X8
0002035c: MOV             W8, #0x3AB2
00020360: MOV             W9, #0x2A4C
00020364: TST             W0, #0xFF
00020368: MOVK            W8, #0x9C2C,LSL#16
0002036c: MOVK            W9, #0x4068,LSL#16
00020370: B               loc_20004
00020374: LDR             X8, [SP,#0x150+var_128]
00020378: ADRP            X2, #xmmword_F2E20@PAGE
0002037c: ADRP            X3, #byte_F2E34@PAGE
00020380: MOV             X0, X20
00020384: STR             X8, [SP,#0x150+var_120]
00020388: LDR             X8, [SP,#0x150+var_120]
0002038c: LDR             X9, [X20]
00020390: ADD             X2, X2, #xmmword_F2E20@PAGEOFF
00020394: ADD             X3, X3, #byte_F2E34@PAGEOFF
00020398: LDR             X1, [X8]
0002039c: LDR             X8, [X9,#0x2F0]
000203a0: BLR             X8
000203a4: STR             X0, [SP,#0x150+var_118]
000203a8: LDR             X8, [SP,#0x150+var_118]
000203ac: MOV             W9, #0x6A4ACCB6
000203b4: CMP             X8, #0
000203b8: MOV             W8, #0x848DE8F8
000203c0: B               loc_20004
000203c4: LDR             X8, [X20]
000203c8: MOV             X0, X20
000203cc: LDR             X8, [X8,#0x80]
000203d0: BLR             X8
000203d4: LDR             X8, [X20]
000203d8: MOV             X0, X20
000203dc: LDR             X8, [X8,#0x88]
000203e0: BLR             X8
000203e4: LDR             X1, [SP,#0x150+var_128]
000203e8: MOV             X0, X20
000203ec: BL              sub_10C30
000203f0: MOV             W9, #0xE4BE
000203f4: MOV             W0, WZR
000203f8: MOVK            W9, #0xE631,LSL#16
000203fc: B               loc_2000C
00020400: LDR             X8, [X20]
00020404: MOV             X0, X20
00020408: LDR             X8, [X8,#0x80]
0002040c: BLR             X8
00020410: LDR             X8, [X20]
00020414: MOV             X0, X20
00020418: LDR             X8, [X8,#0x88]
0002041c: BLR             X8
00020420: LDR             X1, [SP,#0x150+var_128]
00020424: MOV             X0, X20
00020428: BL              sub_10C30
0002042c: STR             WZR, [SP,#0x150+var_138]
00020430: MOV             W9, #0x3772
00020434: MOV             W0, W21
00020438: MOVK            W9, #0x98A2,LSL#16
0002043c: B               loc_2000C
00020440: LDR             X8, [SP,#0x150+var_120]
00020444: LDR             X9, [X20]
00020448: ADRP            X2, #qword_F2E38@PAGE
0002044c: ADRP            X3, #byte_F2E34@PAGE
00020450: LDR             X1, [X8]
00020454: LDR             X8, [X9,#0x2F0]
00020458: MOV             X0, X20
0002045c: ADD             X2, X2, #qword_F2E38@PAGEOFF
00020460: ADD             X3, X3, #byte_F2E34@PAGEOFF
00020464: BLR             X8
00020468: STR             X0, [SP,#0x150+var_100]
0002046c: LDR             X8, [SP,#0x150+var_100]
00020470: MOV             W9, #0x2EE21AA8
00020478: CMP             X8, #0
0002047c: MOV             W8, #0x9EA3F97D
00020484: B               loc_20004
00020488: STR             WZR, [SP,#0x150+var_13C]
0002048c: MOV             W9, #0x335
00020490: MOV             W0, W21
00020494: MOVK            W9, #0x7466,LSL#16
00020498: B               loc_2000C
0002049c: LDR             X8, [SP,#0x150+var_128]
000204a0: MOV             W9, #0x7F68D487
000204a8: CMP             X8, #0
000204ac: MOV             W8, #0xAC249CDB
000204b4: B               loc_20004
000204b8: LDR             X8, [SP,#0x150+var_150]
000204bc: LDR             X8, [X8,#0x28]
000204c0: LDR             X9, [SP,#0x150+var_130]
000204c4: CMP             X8, X9
000204c8: B.NE            loc_204F0
000204cc: LDR             W0, [SP,#0x150+var_13C]
000204d0: LDP             X29, X30, [SP,#0x150+var_s0]
000204d4: LDP             X20, X19, [SP,#0x150+var_10]
000204d8: LDP             X22, X21, [SP,#0x150+var_20]
000204dc: LDP             X24, X23, [SP,#0x150+var_30]
000204e0: LDP             X26, X25, [SP,#0x150+var_40]
000204e4: LDP             X28, X27, [SP,#0x150+var_50]
000204e8: ADD             SP, SP, #0x160
000204ec: RET
000204f0: BL              .__stack_chk_fail