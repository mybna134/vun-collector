00048fa4: SUB             SP, SP, #0x90
00048fa8: STP             X28, X27, [SP,#0x80+var_50]
00048fac: STP             X26, X25, [SP,#0x80+var_40]
00048fb0: STP             X24, X23, [SP,#0x80+var_30]
00048fb4: STP             X22, X21, [SP,#0x80+var_20]
00048fb8: STP             X20, X19, [SP,#0x80+var_10]
00048fbc: STP             X29, X30, [SP,#0x80+var_s0]
00048fc0: ADD             X29, SP, #0x80
00048fc4: ADRP            X0, #xmmword_F6C00@PAGE
00048fc8: MOV             W28, #0x96DF
00048fcc: ADD             X0, X0, #xmmword_F6C00@PAGEOFF; file
00048fd0: MOV             W1, #2; mode
00048fd4: MOVK            W28, #0x9173,LSL#16
00048fd8: BL              j_.dlopen
00048fdc: MOV             W21, #0xEA61
00048fe0: MOV             W22, #0x174B
00048fe4: MOV             W20, #0x7956
00048fe8: MOV             W19, #0x8FD8
00048fec: MOV             W26, #0x8FD9
00048ff0: MOV             W10, #0x65E3
00048ff4: MOVK            W21, #0x11CF,LSL#16
00048ff8: MOVK            W22, #0xEAAD,LSL#16
00048ffc: MOVK            W20, #0x6C77,LSL#16
00049000: MOVK            W19, #0x402F,LSL#16
00049004: MOVK            W26, #0x402F,LSL#16
00049008: MOVK            W10, #0xA9E,LSL#16
0004900c: STR             X0, [SP,#0x80+var_78]
00049010: B               loc_49034
00049014: LDR             X8, [SP,#0x80+var_60]
00049018: MOV             X0, XZR
0004901c: MOV             X1, XZR
00049020: BLR             X8
00049024: MOV             W10, #0x95FF
00049028: MOV             W25, W0
0004902c: MOV             W8, W27
00049030: MOVK            W10, #0xEEFE,LSL#16
00049034: MOV             W9, W10
00049038: CMP             W10, W21
0004903c: MOV             W27, W8
00049040: B.GT            loc_490A4
00049044: CMP             W9, W22
00049048: B.GT            loc_490F8
0004904c: MOV             W10, #0x174C
00049050: CMP             W9, W28
00049054: MOV             W8, W24
00049058: MOVK            W10, #0xEAAD,LSL#16
0004905c: B.EQ            loc_49034
00049060: MOV             W8, #0x9624273D
00049068: CMP             W9, W8
0004906c: B.EQ            loc_4919C
00049070: MOV             W8, #0xCB62D0EE
00049078: CMP             W9, W8
0004907c: MOV             W8, W27
00049080: MOV             W10, W9
00049084: B.NE            loc_49034
00049088: LDR             X8, [SP,#0x80+var_70]
0004908c: BLR             X8
00049090: MOV             W10, #0x96DF
00049094: MOV             W24, W0
00049098: MOV             W8, W27
0004909c: MOVK            W10, #0x9173,LSL#16
000490a0: B               loc_49034
000490a4: CMP             W9, W19
000490a8: B.LE            loc_49140
000490ac: CMP             W9, W26
000490b0: B.EQ            loc_491D0
000490b4: CMP             W9, W20
000490b8: B.EQ            loc_49014
000490bc: MOV             W8, #0x7C3E797B
000490c4: CMP             W9, W8
000490c8: MOV             W8, W27
000490cc: MOV             W10, W9
000490d0: B.NE            loc_49034
000490d4: ADRP            X0, #aQQ13p017P073Q2@PAGE; "q?.;&q=13p?0:,17:p,+0*73;q27<hjq27<4:)."...
000490d8: MOV             W1, #2; mode
000490dc: ADD             X0, X0, #aQQ13p017P073Q2@PAGEOFF; "q?.;&q=13p?0:,17:p,+0*73;q27<hjq27<4:)."...
000490e0: BL              j_.dlopen
000490e4: MOV             W10, #0xEA62
000490e8: MOV             X23, X0
000490ec: MOV             W8, W27
000490f0: MOVK            W10, #0x11CF,LSL#16
000490f4: B               loc_49034
000490f8: MOV             W8, #0xEEFE95FF
00049100: MOV             W10, #0x174C
00049104: CMP             W9, W8
00049108: MOV             W8, W25
0004910c: MOVK            W10, #0xEAAD,LSL#16
00049110: B.EQ            loc_49034
00049114: MOV             W8, #0xA9E65E3
0004911c: CMP             W9, W8
00049120: B.EQ            loc_49208
00049124: MOV             W8, #0xEAAD174C
0004912c: CMP             W9, W8
00049130: MOV             W8, W27
00049134: MOV             W10, W9
00049138: B.NE            loc_49034
0004913c: B               loc_49250
00049140: MOV             W8, #0x11CFEA62
00049148: CMP             W9, W8
0004914c: B.EQ            loc_49230
00049150: MOV             W8, #0x26A689E0
00049158: CMP             W9, W8
0004915c: MOV             W8, W27
00049160: MOV             W10, W9
00049164: B.NE            loc_49034
00049168: LDR             X0, [SP,#0x80+handle]; handle
0004916c: ADRL            X1, xmmword_F6C60; name
00049174: BL              j_.dlsym
00049178: STR             X0, [SP,#0x80+var_70]
0004917c: LDR             X8, [SP,#0x80+var_70]
00049180: MOV             W24, WZR
00049184: CMP             X8, #0
00049188: MOV             W8, #0xCB62D0EE
00049190: CSEL            W10, W28, W8, EQ
00049194: MOV             W8, W27
00049198: B               loc_49034
0004919c: LDR             X0, [SP,#0x80+var_68]; handle
000491a0: ADRL            X1, xmmword_F6CA0; name
000491a8: BL              j_.dlsym
000491ac: STR             X0, [SP,#0x80+var_60]
000491b0: LDR             X8, [SP,#0x80+var_60]
000491b4: MOV             W25, WZR
000491b8: CMP             X8, #0
000491bc: MOV             W8, #0xEEFE95FF
000491c4: CSEL            W10, W8, W20, EQ
000491c8: MOV             W8, W27
000491cc: B               loc_49034
000491d0: ADRP            X0, #xmmword_F6C80@PAGE
000491d4: MOV             W1, #2; mode
000491d8: ADD             X0, X0, #xmmword_F6C80@PAGEOFF; file
000491dc: BL              j_.dlopen
000491e0: STR             X0, [SP,#0x80+var_68]
000491e4: LDR             X9, [SP,#0x80+var_68]
000491e8: MOV             W10, #0x9624273D
000491f0: MOV             W8, WZR
000491f4: CMP             X9, #0
000491f8: MOV             W9, #0xEAAD174C
00049200: CSEL            W10, W9, W10, EQ
00049204: B               loc_49034
00049208: LDR             X8, [SP,#0x80+var_78]
0004920c: LDR             X23, [SP,#0x80+var_78]
00049210: MOV             W9, #0x7C3E797B
00049218: CMP             X8, #0
0004921c: MOV             W8, #0x11CFEA62
00049224: CSEL            W10, W9, W8, EQ
00049228: MOV             W8, W27
0004922c: B               loc_49034
00049230: STR             X23, [SP,#0x80+handle]
00049234: LDR             X8, [SP,#0x80+handle]
00049238: CMP             X8, #0
0004923c: MOV             W8, #0x26A689E0
00049244: CSEL            W10, W26, W8, EQ
00049248: MOV             W8, W27
0004924c: B               loc_49034
00049250: TST             W27, #0xFF
00049254: LDP             X29, X30, [SP,#0x80+var_s0]
00049258: LDP             X20, X19, [SP,#0x80+var_10]
0004925c: LDP             X22, X21, [SP,#0x80+var_20]
00049260: LDP             X24, X23, [SP,#0x80+var_30]
00049264: LDP             X26, X25, [SP,#0x80+var_40]
00049268: LDP             X28, X27, [SP,#0x80+var_50]
0004926c: CSET            W0, NE
00049270: ADD             SP, SP, #0x90
00049274: RET