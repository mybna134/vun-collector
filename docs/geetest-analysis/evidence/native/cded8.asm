000cded8: STP             X28, X27, [SP,#-0x10+var_50]!
000cdedc: STP             X26, X25, [SP,#0x50+var_40]
000cdee0: STP             X24, X23, [SP,#0x50+var_30]
000cdee4: STP             X22, X21, [SP,#0x50+var_20]
000cdee8: STP             X20, X19, [SP,#0x50+var_10]
000cdeec: STP             X29, X30, [SP,#0x50+var_s0]
000cdef0: ADD             X29, SP, #0x50
000cdef4: SUB             SP, SP, #0x4D0
000cdef8: MRS             X23, TPIDR_EL0
000cdefc: LDR             X8, [X23,#0x28]
000cdf00: MOV             W21, #0x8954
000cdf04: MOV             W26, #0x8532
000cdf08: MOV             X19, X3
000cdf0c: MOV             X20, X2
000cdf10: MOV             X22, X0
000cdf14: MOVK            W21, #0xD6A1,LSL#16
000cdf18: MOVK            W26, #0xC5BC,LSL#16
000cdf1c: STUR            X8, [X29,#var_60]
000cdf20: STR             X1, [SP,#0x520+var_518]
000cdf24: BL              sub_14D1C
000cdf28: STR             X0, [SP,#0x520+var_500]
000cdf2c: LDR             X1, [SP,#0x520+var_500]
000cdf30: ADRL            X2, byte_F7848
000cdf38: MOV             X0, X22
000cdf3c: BL              sub_150EC
000cdf40: STR             X0, [SP,#0x520+var_4F8]
000cdf44: LDR             X1, [SP,#0x520+var_4F8]
000cdf48: MOV             X0, X22
000cdf4c: BL              sub_167AC
000cdf50: MOV             W28, #0xCDF3
000cdf54: MOV             W25, #0x8531
000cdf58: MOV             W24, #0x2228
000cdf5c: MOV             W27, #0xF6E4
000cdf60: MOV             W8, #0x59EA
000cdf64: MOVK            W28, #0xE82,LSL#16
000cdf68: MOVK            W25, #0xC5BC,LSL#16
000cdf6c: MOVK            W24, #0x3B1C,LSL#16
000cdf70: MOVK            W27, #0x4FF1,LSL#16
000cdf74: MOVK            W8, #0x6B0D,LSL#16
000cdf78: STR             W0, [SP,#0x520+var_4EC]
000cdf7c: CMP             W8, W28
000cdf80: B.LE            loc_CDF9C
000cdf84: B               loc_CE018
000cdf88: STR             W8, [SP,#0x520+var_504]
000cdf8c: MOV             W8, #0x8F6FBA43
000cdf94: CMP             W8, W28
000cdf98: B.GT            loc_CE018
000cdf9c: CMP             W8, W25
000cdfa0: B.GT            loc_CE0A0
000cdfa4: MOV             W9, #0x92954F24
000cdfac: CMP             W8, W9
000cdfb0: B.LE            loc_CE200
000cdfb4: MOV             W9, #0xA230821C
000cdfbc: CMP             W8, W9
000cdfc0: B.GT            loc_CE44C
000cdfc4: MOV             W9, #0x92954F25
000cdfcc: CMP             W8, W9
000cdfd0: B.EQ            loc_CE7BC
000cdfd4: MOV             W9, #0x934A5798
000cdfdc: CMP             W8, W9
000cdfe0: B.EQ            loc_CE844
000cdfe4: MOV             W9, #0x95026E23
000cdfec: CMP             W8, W9
000cdff0: B.NE            loc_CDF94
000cdff4: BL              sub_5A38
000cdff8: MOV             W8, #0xD788
000cdffc: MOV             W9, #0x9AE7
000ce000: CMP             W0, #0x1C
000ce004: MOVK            W8, #0x17C2,LSL#16
000ce008: MOVK            W9, #0x91A3,LSL#16
000ce00c: CSEL            W8, W9, W8, GT
000ce010: CMP             W8, W28
000ce014: B.LE            loc_CDF9C
000ce018: CMP             W8, W24
000ce01c: B.GT            loc_CE194
000ce020: MOV             W9, #0x15644A1D
000ce028: CMP             W8, W9
000ce02c: B.LE            loc_CE320
000ce030: MOV             W9, #0x227C9ADF
000ce038: CMP             W8, W9
000ce03c: B.GT            loc_CE534
000ce040: MOV             W9, #0x15644A1E
000ce048: CMP             W8, W9
000ce04c: B.EQ            loc_CED4C
000ce050: MOV             W9, #0x15B21370
000ce058: CMP             W8, W9
000ce05c: B.EQ            loc_CEDBC
000ce060: MOV             W9, #0x17C2D788
000ce068: CMP             W8, W9
000ce06c: B.NE            loc_CDF94
000ce070: ADRP            X1, #xmmword_F7720@PAGE
000ce074: MOV             X0, X22
000ce078: ADD             X1, X1, #xmmword_F7720@PAGEOFF
000ce07c: MOV             X2, X20
000ce080: MOV             X3, X19
000ce084: BL              sub_CCF28
000ce088: MOV             W8, #0x2104
000ce08c: MOV             W9, #0xFB70
000ce090: CMP             W0, #0
000ce094: MOVK            W8, #0x1152,LSL#16
000ce098: MOVK            W9, #0x5BDD,LSL#16
000ce09c: B               loc_CEDAC
000ce0a0: MOV             W9, #0xE4814FF7
000ce0a8: CMP             W8, W9
000ce0ac: B.LE            loc_CE260
000ce0b0: MOV             W9, #0xEDB1EDE7
000ce0b8: CMP             W8, W9
000ce0bc: B.GT            loc_CE4D8
000ce0c0: MOV             W9, #0xE4814FF8
000ce0c8: CMP             W8, W9
000ce0cc: B.EQ            loc_CEAEC
000ce0d0: MOV             W9, #0xEB843EA9
000ce0d8: CMP             W8, W9
000ce0dc: B.EQ            loc_CEC00
000ce0e0: MOV             W9, #0xED795946
000ce0e8: CMP             W8, W9
000ce0ec: B.NE            loc_CDF94
000ce0f0: LDR             X1, [SP,#0x520+var_500]
000ce0f4: ADRP            X2, #byte_F7848@PAGE
000ce0f8: MOV             X0, X22
000ce0fc: ADD             X2, X2, #byte_F7848@PAGEOFF
000ce100: MOV             X3, X20
000ce104: BL              sub_154B8
000ce108: ADRP            X0, #qword_F7880@PAGE
000ce10c: ADRP            X1, #qword_F7888@PAGE
000ce110: ADD             X0, X0, #qword_F7880@PAGEOFF
000ce114: ADD             X1, X1, #qword_F7888@PAGEOFF
000ce118: MOV             X2, X20
000ce11c: BL              sub_CD5EC
000ce120: ADRP            X0, #byte_F7898@PAGE
000ce124: ADRP            X1, #qword_F78A0@PAGE
000ce128: ADD             X0, X0, #byte_F7898@PAGEOFF
000ce12c: ADD             X1, X1, #qword_F78A0@PAGEOFF
000ce130: MOV             X2, X20
000ce134: BL              sub_CD5EC
000ce138: ADRP            X0, #qword_F78D0@PAGE
000ce13c: ADRP            X1, #qword_F78D8@PAGE
000ce140: ADD             X0, X0, #qword_F78D0@PAGEOFF
000ce144: ADD             X1, X1, #qword_F78D8@PAGEOFF
000ce148: MOV             X2, X20
000ce14c: BL              sub_CD5EC
000ce150: ADRP            X0, #qword_F78B0@PAGE
000ce154: ADRP            X1, #qword_F78C0@PAGE
000ce158: ADD             X0, X0, #qword_F78B0@PAGEOFF
000ce15c: ADD             X1, X1, #qword_F78C0@PAGEOFF
000ce160: MOV             X2, X20
000ce164: BL              sub_CD5EC
000ce168: ADRP            X0, #qword_F78E8@PAGE
000ce16c: ADRP            X1, #qword_F78F8@PAGE
000ce170: ADD             X0, X0, #qword_F78E8@PAGEOFF
000ce174: ADD             X1, X1, #qword_F78F8@PAGEOFF
000ce178: MOV             X2, X20
000ce17c: BL              sub_CD5EC
000ce180: ADRP            X0, #aHgmFMMhHDy@PAGE; "Hgm{f`m&mh}h&}dy\t"
000ce184: ADRP            X1, #qword_F7928@PAGE
000ce188: ADD             X0, X0, #aHgmFMMhHDy@PAGEOFF; "Hgm{f`m&mh}h&}dy\t"
000ce18c: ADD             X1, X1, #qword_F7928@PAGEOFF
000ce190: B               loc_CEEA4
000ce194: MOV             W9, #0x56B690EB
000ce19c: CMP             W8, W9
000ce1a0: B.LE            loc_CE390
000ce1a4: MOV             W9, #0x6CC27169
000ce1ac: CMP             W8, W9
000ce1b0: B.GT            loc_CE590
000ce1b4: MOV             W9, #0x56B690EC
000ce1bc: CMP             W8, W9
000ce1c0: B.EQ            loc_CE758
000ce1c4: MOV             W9, #0x5BDDFB70
000ce1cc: CMP             W8, W9
000ce1d0: B.EQ            loc_CEE30
000ce1d4: MOV             W9, #0x6B0D59EA
000ce1dc: CMP             W8, W9
000ce1e0: B.NE            loc_CDF94
000ce1e4: LDR             W8, [SP,#0x520+var_4EC]
000ce1e8: MOV             W9, #0xF9E2985
000ce1f0: CMP             W8, #0
000ce1f4: MOV             W8, #0x8F9297BE
000ce1fc: B               loc_CED1C
000ce200: MOV             W9, #0x8F6FBA42
000ce208: CMP             W8, W9
000ce20c: B.LE            loc_CE6F4
000ce210: MOV             W9, #0x8F6FBA43
000ce218: CMP             W8, W9
000ce21c: B.EQ            loc_CEECC
000ce220: MOV             W9, #0x8F9297BE
000ce228: CMP             W8, W9
000ce22c: B.EQ            loc_CE818
000ce230: MOV             W9, #0x91A39AE7
000ce238: CMP             W8, W9
000ce23c: B.NE            loc_CDF94
000ce240: MOV             X0, X22
000ce244: BL              sub_178C4
000ce248: MOV             W8, #0xD788
000ce24c: MOV             W9, #0x90EC
000ce250: TST             W0, #0xFF
000ce254: MOVK            W8, #0x17C2,LSL#16
000ce258: MOVK            W9, #0x56B6,LSL#16
000ce25c: B               loc_CED1C
000ce260: MOV             W9, #0xC80897D5
000ce268: CMP             W8, W9
000ce26c: B.LE            loc_CE5C8
000ce270: MOV             W9, #0xC80897D6
000ce278: CMP             W8, W9
000ce27c: B.EQ            loc_CE8D4
000ce280: MOV             W9, #0xD11EEDE1
000ce288: CMP             W8, W9
000ce28c: B.EQ            loc_CE9F4
000ce290: CMP             W8, W21
000ce294: B.NE            loc_CDF94
000ce298: ADD             X9, SP, #0x520+var_4B0
000ce29c: STR             X9, [SP,#0x520+var_4C0]
000ce2a0: LDR             X8, [SP,#0x520+var_4C0]
000ce2a4: LDR             X8, [SP,#0x520+var_4C0]
000ce2a8: MOVI            V0.2D, #0
000ce2ac: MOV             X0, X22
000ce2b0: MOV             X3, X19
000ce2b4: STP             Q0, Q0, [X8,#0x1E0]
000ce2b8: STP             Q0, Q0, [X8,#0x1C0]
000ce2bc: STP             Q0, Q0, [X8,#0x1A0]
000ce2c0: STP             Q0, Q0, [X8,#0x180]
000ce2c4: STP             Q0, Q0, [X8,#0x160]
000ce2c8: STP             Q0, Q0, [X8,#0x140]
000ce2cc: STP             Q0, Q0, [X8,#0x120]
000ce2d0: STP             Q0, Q0, [X8,#0x100]
000ce2d4: STP             Q0, Q0, [X8,#0xE0]
000ce2d8: STP             Q0, Q0, [X8,#0xC0]
000ce2dc: STP             Q0, Q0, [X8,#0xA0]
000ce2e0: STP             Q0, Q0, [X8,#0x80]
000ce2e4: STP             Q0, Q0, [X8,#0x60]
000ce2e8: STP             Q0, Q0, [X8,#0x40]
000ce2ec: STP             Q0, Q0, [X8,#0x20]
000ce2f0: STP             Q0, Q0, [X8]
000ce2f4: STR             X9, [SP,#0x520+var_4B8]
000ce2f8: LDR             X1, [SP,#0x520+var_500]
000ce2fc: LDR             X4, [SP,#0x520+nptr]
000ce300: LDR             X2, [SP,#0x520+var_4B8]
000ce304: BL              sub_CD178
000ce308: MOV             W8, #0x2229
000ce30c: MOV             W9, #0x4A1E
000ce310: CMP             W0, #0
000ce314: MOVK            W8, #0x3B1C,LSL#16
000ce318: MOVK            W9, #0x1564,LSL#16
000ce31c: B               loc_CED1C
000ce320: MOV             W9, #0xFF8BFAF
000ce328: CMP             W8, W9
000ce32c: B.LE            loc_CE600
000ce330: MOV             W9, #0xFF8BFB0
000ce338: CMP             W8, W9
000ce33c: B.EQ            loc_CEC30
000ce340: MOV             W9, #0x11522104
000ce348: CMP             W8, W9
000ce34c: B.EQ            loc_CECF0
000ce350: MOV             W9, #0x13A83F53
000ce358: CMP             W8, W9
000ce35c: B.NE            loc_CDF94
000ce360: ADRP            X1, #xmmword_F7830@PAGE
000ce364: MOV             X0, X22
000ce368: ADD             X1, X1, #xmmword_F7830@PAGEOFF
000ce36c: MOV             X2, X20
000ce370: MOV             X3, X19
000ce374: BL              sub_CCF28
000ce378: MOV             W8, #0x5946
000ce37c: MOV             W9, #0x501B
000ce380: CMP             W0, #0
000ce384: MOVK            W8, #0xED79,LSL#16
000ce388: MOVK            W9, #0x3935,LSL#16
000ce38c: B               loc_CED1C
000ce390: MOV             W9, #0x448F2C49
000ce398: CMP             W8, W9
000ce39c: B.LE            loc_CE6A4
000ce3a0: MOV             W9, #0x448F2C4A
000ce3a8: CMP             W8, W9
000ce3ac: B.EQ            loc_CE770
000ce3b0: MOV             W9, #0x49131C17
000ce3b8: CMP             W8, W9
000ce3bc: B.EQ            loc_CED2C
000ce3c0: CMP             W8, W27
000ce3c4: B.NE            loc_CDF94
000ce3c8: ADD             X9, SP, #0x520+var_280
000ce3cc: STR             X9, [SP,#0x520+var_4E0]
000ce3d0: LDR             X8, [SP,#0x520+var_4E0]
000ce3d4: LDR             X8, [SP,#0x520+var_4E0]
000ce3d8: MOVI            V0.2D, #0
000ce3dc: ADRP            X0, #xmmword_F7980@PAGE
000ce3e0: MOV             W2, #0x200
000ce3e4: STP             Q0, Q0, [X8,#0x1E0]
000ce3e8: STP             Q0, Q0, [X8,#0x1C0]
000ce3ec: STP             Q0, Q0, [X8,#0x1A0]
000ce3f0: STP             Q0, Q0, [X8,#0x180]
000ce3f4: STP             Q0, Q0, [X8,#0x160]
000ce3f8: STP             Q0, Q0, [X8,#0x140]
000ce3fc: STP             Q0, Q0, [X8,#0x120]
000ce400: STP             Q0, Q0, [X8,#0x100]
000ce404: STP             Q0, Q0, [X8,#0xE0]
000ce408: STP             Q0, Q0, [X8,#0xC0]
000ce40c: STP             Q0, Q0, [X8,#0xA0]
000ce410: STP             Q0, Q0, [X8,#0x80]
000ce414: STP             Q0, Q0, [X8,#0x60]
000ce418: STP             Q0, Q0, [X8,#0x40]
000ce41c: STP             Q0, Q0, [X8,#0x20]
000ce420: STP             Q0, Q0, [X8]
000ce424: STR             X9, [SP,#0x520+var_4D8]
000ce428: LDR             X1, [SP,#0x520+var_4D8]
000ce42c: ADD             X0, X0, #xmmword_F7980@PAGEOFF
000ce430: BL              sub_8650
000ce434: MOV             W8, #0x1C17
000ce438: MOV             W9, #0x239A
000ce43c: CMP             W0, #0
000ce440: MOVK            W8, #0x4913,LSL#16
000ce444: MOVK            W9, #0x84B7,LSL#16
000ce448: B               loc_CEDAC
000ce44c: MOV             W9, #0xA230821D
000ce454: CMP             W8, W9
000ce458: B.EQ            loc_CE7E8
000ce45c: MOV             W9, #0xA53CF6EE
000ce464: CMP             W8, W9
000ce468: B.EQ            loc_CE9A8
000ce46c: MOV             W9, #0xAFC568D4
000ce474: CMP             W8, W9
000ce478: B.NE            loc_CDF94
000ce47c: LDR             X1, [SP,#0x520+var_500]
000ce480: ADRP            X2, #byte_F7848@PAGE
000ce484: MOV             X0, X22
000ce488: ADD             X2, X2, #byte_F7848@PAGEOFF
000ce48c: MOV             X3, X20
000ce490: BL              sub_154B8
000ce494: ADRP            X0, #qword_F7880@PAGE
000ce498: ADRP            X1, #qword_F7888@PAGE
000ce49c: ADD             X0, X0, #qword_F7880@PAGEOFF
000ce4a0: ADD             X1, X1, #qword_F7888@PAGEOFF
000ce4a4: MOV             X2, X20
000ce4a8: BL              sub_CD5EC
000ce4ac: ADRP            X0, #byte_F7898@PAGE
000ce4b0: ADRP            X1, #qword_F78A0@PAGE
000ce4b4: ADD             X0, X0, #byte_F7898@PAGEOFF
000ce4b8: ADD             X1, X1, #qword_F78A0@PAGEOFF
000ce4bc: MOV             X2, X20
000ce4c0: BL              sub_CD5EC
000ce4c4: ADRP            X0, #qword_F78D0@PAGE
000ce4c8: ADRP            X1, #qword_F78D8@PAGE
000ce4cc: ADD             X0, X0, #qword_F78D0@PAGEOFF
000ce4d0: ADD             X1, X1, #qword_F78D8@PAGEOFF
000ce4d4: B               loc_CE98C
000ce4d8: MOV             W9, #0xEDB1EDE8
000ce4e0: CMP             W8, W9
000ce4e4: B.EQ            loc_CEB1C
000ce4e8: MOV             W9, #0xFEF62D5E
000ce4f0: CMP             W8, W9
000ce4f4: B.EQ            loc_CEC98
000ce4f8: MOV             W9, #0xBA92490
000ce500: CMP             W8, W9
000ce504: B.NE            loc_CDF94
000ce508: LDR             X1, [SP,#0x520+var_500]
000ce50c: ADRP            X2, #byte_F7848@PAGE
000ce510: MOV             X0, X22
000ce514: ADD             X2, X2, #byte_F7848@PAGEOFF
000ce518: MOV             X3, X20
000ce51c: BL              sub_154B8
000ce520: ADRP            X0, #qword_F7880@PAGE
000ce524: ADRP            X1, #qword_F7888@PAGE
000ce528: ADD             X0, X0, #qword_F7880@PAGEOFF
000ce52c: ADD             X1, X1, #qword_F7888@PAGEOFF
000ce530: B               loc_CEEBC
000ce534: MOV             W9, #0x227C9AE0
000ce53c: CMP             W8, W9
000ce540: B.EQ            loc_CED64
000ce544: MOV             W9, #0x241C7934
000ce54c: CMP             W8, W9
000ce550: B.EQ            loc_CE770
000ce554: MOV             W9, #0x3935501B
000ce55c: CMP             W8, W9
000ce560: B.NE            loc_CDF94
000ce564: MOV             X0, X22
000ce568: MOV             X1, X20
000ce56c: MOV             X2, X19
000ce570: BL              sub_CDA3C
000ce574: MOV             W8, #0x97D6
000ce578: CMP             W0, #0
000ce57c: MOVK            W8, #0xC808,LSL#16
000ce580: CSEL            W8, W27, W8, EQ
000ce584: CMP             W8, W28
000ce588: B.LE            loc_CDF9C
000ce58c: B               loc_CE018
000ce590: MOV             W9, #0x6CC2716A
000ce598: CMP             W8, W9
000ce59c: B.EQ            loc_CED80
000ce5a0: MOV             W9, #0x7552F77E
000ce5a8: CMP             W8, W9
000ce5ac: B.EQ            loc_CEE4C
000ce5b0: MOV             W9, #0x7AEEB563
000ce5b8: CMP             W8, W9
000ce5bc: B.NE            loc_CDF94
000ce5c0: LDR             W8, [SP,#0x520+var_50C]
000ce5c4: B               loc_CDF88
000ce5c8: CMP             W8, W26
000ce5cc: B.EQ            loc_CE7A8
000ce5d0: MOV             W9, #0xC7B49ED6
000ce5d8: CMP             W8, W9
000ce5dc: B.NE            loc_CDF94
000ce5e0: LDR             X0, [SP,#0x520+nptr]
000ce5e4: BL              sub_55EC
000ce5e8: MOV             W8, #0x2D5E
000ce5ec: MOV             W9, #0x2C4A
000ce5f0: CMP             W0, #0
000ce5f4: MOVK            W8, #0xFEF6,LSL#16
000ce5f8: MOVK            W9, #0x448F,LSL#16
000ce5fc: B               loc_CED1C
000ce600: MOV             W9, #0xE82CDF4
000ce608: CMP             W8, W9
000ce60c: B.EQ            loc_CE758
000ce610: MOV             W9, #0xF9E2985
000ce618: CMP             W8, W9
000ce61c: B.NE            loc_CDF94
000ce620: LDR             X1, [SP,#0x520+var_4F8]
000ce624: LDR             X8, [X22]
000ce628: MOV             X0, X22
000ce62c: MOV             X2, XZR
000ce630: LDR             X8, [X8,#0x548]
000ce634: BLR             X8
000ce638: ADRL            X8, xmmword_EA378
000ce640: LDR             Q0, [X8]
000ce644: STR             X0, [SP,#0x520+var_4E8]
000ce648: LDR             X26, [SP,#0x520+var_4E8]
000ce64c: SUB             X0, X29, #-var_80
000ce650: SUB             X1, X29, #-s
000ce654: MOV             W2, #0x10
000ce658: STUR            Q0, [X29,#s]
000ce65c: STP             XZR, XZR, [X29,#var_80]
000ce660: BL              sub_7AE4
000ce664: ADRP            X5, #byte_F7688@PAGE
000ce668: SUB             X3, X29, #-var_80
000ce66c: SUB             X4, X29, #-var_80
000ce670: MOV             X0, X22
000ce674: MOV             X1, X26
000ce678: MOV             W26, #0x8532
000ce67c: MOV             X2, X19
000ce680: ADD             X5, X5, #byte_F7688@PAGEOFF
000ce684: MOVK            W26, #0xC5BC,LSL#16
000ce688: BL              sub_4AAC
000ce68c: MOV             W8, #0xF6EE
000ce690: MOV             W9, #0xBFB0
000ce694: CMP             W0, #0
000ce698: MOVK            W8, #0xA53C,LSL#16
000ce69c: MOVK            W9, #0xFF8,LSL#16
000ce6a0: B               loc_CEDAC
000ce6a4: MOV             W9, #0x3B1C2229
000ce6ac: CMP             W8, W9
000ce6b0: B.EQ            loc_CEA68
000ce6b4: MOV             W9, #0x44034883
000ce6bc: CMP             W8, W9
000ce6c0: B.NE            loc_CDF94
000ce6c4: ADRP            X1, #xmmword_F7800@PAGE
000ce6c8: MOV             X0, X22
000ce6cc: ADD             X1, X1, #xmmword_F7800@PAGEOFF
000ce6d0: MOV             X2, X20
000ce6d4: MOV             X3, X19
000ce6d8: BL              sub_CCF28
000ce6dc: MOV             W8, #0x68D4
000ce6e0: MOV             W9, #0x3F53
000ce6e4: CMP             W0, #0
000ce6e8: MOVK            W8, #0xAFC5,LSL#16
000ce6ec: MOVK            W9, #0x13A8,LSL#16
000ce6f0: B               loc_CED1C
000ce6f4: MOV             W9, #0x84B7239A
000ce6fc: CMP             W8, W9
000ce700: B.EQ            loc_CEB78
000ce704: MOV             W9, #0x8B5792FC
000ce70c: CMP             W8, W9
000ce710: B.NE            loc_CDF94
000ce714: ADD             X9, SP, #0x520+var_2B0
000ce718: STR             X9, [SP,#0x520+var_4D0]
000ce71c: LDR             X8, [SP,#0x520+var_4D0]
000ce720: LDR             X8, [SP,#0x520+var_4D0]
000ce724: ADRP            X0, #xmmword_F79A0@PAGE
000ce728: MOV             W2, #0x10
000ce72c: ADD             X0, X0, #xmmword_F79A0@PAGEOFF
000ce730: STP             XZR, XZR, [X8]
000ce734: STR             X9, [SP,#0x520+nptr]
000ce738: LDR             X1, [SP,#0x520+nptr]
000ce73c: BL              sub_8650
000ce740: MOV             W8, #0x9ED6
000ce744: MOV             W9, #0x7934
000ce748: CMP             W0, #0
000ce74c: MOVK            W8, #0xC7B4,LSL#16
000ce750: MOVK            W9, #0x241C,LSL#16
000ce754: B               loc_CED1C
000ce758: MOV             W8, #0xBA43
000ce75c: STR             WZR, [SP,#0x520+var_504]
000ce760: MOVK            W8, #0x8F6F,LSL#16
000ce764: CMP             W8, W28
000ce768: B.LE            loc_CDF9C
000ce76c: B               loc_CE018
000ce770: ADRP            X27, #byte_F79CC@PAGE
000ce774: ADRP            X0, #qword_F78D0@PAGE
000ce778: ADRP            X1, #qword_F79C0@PAGE
000ce77c: ADD             X27, X27, #byte_F79CC@PAGEOFF
000ce780: ADD             X0, X0, #qword_F78D0@PAGEOFF
000ce784: ADD             X1, X1, #qword_F79C0@PAGEOFF
000ce788: MOV             X2, X27
000ce78c: BL              sub_CD5EC
000ce790: LDR             X0, [SP,#0x520+nptr]
000ce794: MOV             X1, X27
000ce798: MOV             W27, #0x4FF1F6E4
000ce7a0: BL              sub_6630
000ce7a4: B               loc_CECDC
000ce7a8: LDR             X8, [SP,#0x520+var_4C0]
000ce7ac: LDR             X8, [SP,#0x520+var_4D0]
000ce7b0: LDR             X8, [SP,#0x520+var_4E0]
000ce7b4: LDR             W8, [SP,#0x520+var_508]
000ce7b8: B               loc_CDF88
000ce7bc: MOV             X0, X19
000ce7c0: BL              sub_5914
000ce7c4: MOV             W8, #0x5798
000ce7c8: MOV             W9, #0x92FC
000ce7cc: CMP             W0, #0x14
000ce7d0: MOVK            W8, #0x934A,LSL#16
000ce7d4: MOVK            W9, #0x8B57,LSL#16
000ce7d8: CSEL            W8, W8, W9, LT
000ce7dc: CMP             W8, W28
000ce7e0: B.LE            loc_CDF9C
000ce7e4: B               loc_CE018
000ce7e8: ADRP            X1, #xmmword_F77B0@PAGE
000ce7ec: MOV             X0, X22
000ce7f0: ADD             X1, X1, #xmmword_F77B0@PAGEOFF
000ce7f4: MOV             X2, X20
000ce7f8: MOV             X3, X19
000ce7fc: BL              sub_CCF28
000ce800: MOV             W8, #0xEDE1
000ce804: MOV             W9, #0x4FF8
000ce808: CMP             W0, #0
000ce80c: MOVK            W8, #0xD11E,LSL#16
000ce810: MOVK            W9, #0xE481,LSL#16
000ce814: B               loc_CED1C
000ce818: LDR             X1, [SP,#0x520+var_518]
000ce81c: ADRP            X2, #xmmword_F7850@PAGE
000ce820: MOV             X0, X22
000ce824: ADD             X2, X2, #xmmword_F7850@PAGEOFF
000ce828: BL              sub_20930
000ce82c: MOV             W8, #0x6E23
000ce830: MOV             W9, #0xCDF4
000ce834: CMP             W0, #0
000ce838: MOVK            W8, #0x9502,LSL#16
000ce83c: MOVK            W9, #0xE82,LSL#16
000ce840: B               loc_CED1C
000ce844: MOV             X0, X22
000ce848: BL              sub_C544
000ce84c: LDR             X8, [X22]
000ce850: MOV             X26, X0
000ce854: MOV             X0, X22
000ce858: MOV             X1, X26
000ce85c: LDR             X8, [X8,#0x548]
000ce860: MOV             X2, XZR
000ce864: BLR             X8
000ce868: MOV             X27, X0
000ce86c: MOV             X0, X19
000ce870: MOV             X1, X27
000ce874: MOV             X21, X23
000ce878: BL              sub_513C
000ce87c: LDR             X8, [X22]
000ce880: MOV             X0, X22
000ce884: MOV             X1, X26
000ce888: MOV             X2, X27
000ce88c: LDR             X8, [X8,#0x550]
000ce890: MOV             W27, #0xF6E4
000ce894: MOV             W21, #0x8954
000ce898: MOVK            W27, #0x4FF1,LSL#16
000ce89c: MOVK            W21, #0xD6A1,LSL#16
000ce8a0: BLR             X8
000ce8a4: LDR             X8, [X22]
000ce8a8: MOV             X0, X22
000ce8ac: MOV             X1, X26
000ce8b0: MOV             W26, #0x8532
000ce8b4: LDR             X8, [X8,#0xB8]
000ce8b8: MOVK            W26, #0xC5BC,LSL#16
000ce8bc: BLR             X8
000ce8c0: MOV             W8, #0x8B5792FC
000ce8c8: CMP             W8, W28
000ce8cc: B.LE            loc_CDF9C
000ce8d0: B               loc_CE018
000ce8d4: LDR             X1, [SP,#0x520+var_500]
000ce8d8: ADRP            X2, #byte_F7848@PAGE
000ce8dc: MOV             X0, X22
000ce8e0: ADD             X2, X2, #byte_F7848@PAGEOFF
000ce8e4: MOV             X3, X20
000ce8e8: BL              sub_154B8
000ce8ec: ADRP            X0, #qword_F7880@PAGE
000ce8f0: ADRP            X1, #qword_F7888@PAGE
000ce8f4: ADD             X0, X0, #qword_F7880@PAGEOFF
000ce8f8: ADD             X1, X1, #qword_F7888@PAGEOFF
000ce8fc: MOV             X2, X20
000ce900: BL              sub_CD5EC
000ce904: ADRP            X0, #byte_F7898@PAGE
000ce908: ADRP            X1, #qword_F78A0@PAGE
000ce90c: ADD             X0, X0, #byte_F7898@PAGEOFF
000ce910: ADD             X1, X1, #qword_F78A0@PAGEOFF
000ce914: MOV             X2, X20
000ce918: BL              sub_CD5EC
000ce91c: ADRP            X0, #qword_F78D0@PAGE
000ce920: ADRP            X1, #qword_F78D8@PAGE
000ce924: ADD             X0, X0, #qword_F78D0@PAGEOFF
000ce928: ADD             X1, X1, #qword_F78D8@PAGEOFF
000ce92c: MOV             X2, X20
000ce930: BL              sub_CD5EC
000ce934: ADRP            X0, #qword_F78B0@PAGE
000ce938: ADRP            X1, #qword_F78C0@PAGE
000ce93c: ADD             X0, X0, #qword_F78B0@PAGEOFF
000ce940: ADD             X1, X1, #qword_F78C0@PAGEOFF
000ce944: MOV             X2, X20
000ce948: BL              sub_CD5EC
000ce94c: ADRP            X0, #qword_F78E8@PAGE
000ce950: ADRP            X1, #qword_F78F8@PAGE
000ce954: ADD             X0, X0, #qword_F78E8@PAGEOFF
000ce958: ADD             X1, X1, #qword_F78F8@PAGEOFF
000ce95c: MOV             X2, X20
000ce960: BL              sub_CD5EC
000ce964: ADRP            X0, #aHgmFMMhHDy@PAGE; "Hgm{f`m&mh}h&}dy\t"
000ce968: ADRP            X1, #qword_F7928@PAGE
000ce96c: ADD             X0, X0, #aHgmFMMhHDy@PAGEOFF; "Hgm{f`m&mh}h&}dy\t"
000ce970: ADD             X1, X1, #qword_F7928@PAGEOFF
000ce974: MOV             X2, X20
000ce978: BL              sub_CD5EC
000ce97c: ADRP            X0, #xmmword_F7940@PAGE
000ce980: ADRP            X1, #qword_F7958@PAGE
000ce984: ADD             X0, X0, #xmmword_F7940@PAGEOFF
000ce988: ADD             X1, X1, #qword_F7958@PAGEOFF
000ce98c: MOV             X2, X20
000ce990: BL              sub_CD5EC
000ce994: ADRP            X0, #byte_F7968@PAGE
000ce998: ADRP            X1, #qword_F7970@PAGE
000ce99c: ADD             X0, X0, #byte_F7968@PAGEOFF
000ce9a0: ADD             X1, X1, #qword_F7970@PAGEOFF
000ce9a4: B               loc_CEEBC
000ce9a8: LDR             X1, [SP,#0x520+var_4F8]
000ce9ac: LDR             X2, [SP,#0x520+var_4E8]
000ce9b0: LDR             X8, [X22]
000ce9b4: MOV             X0, X22
000ce9b8: LDR             X8, [X8,#0x550]
000ce9bc: BLR             X8
000ce9c0: LDR             X1, [SP,#0x520+var_4F8]
000ce9c4: LDR             X8, [X22]
000ce9c8: MOV             X0, X22
000ce9cc: LDR             X8, [X8,#0xB8]
000ce9d0: BLR             X8
000ce9d4: LDR             X1, [SP,#0x520+var_500]
000ce9d8: LDR             X8, [X22]
000ce9dc: MOV             X0, X22
000ce9e0: LDR             X8, [X8,#0xB8]
000ce9e4: BLR             X8
000ce9e8: MOV             W8, #0xB563
000ce9ec: STR             WZR, [SP,#0x520+var_50C]
000ce9f0: B               loc_CEC88
000ce9f4: LDR             X1, [SP,#0x520+var_500]
000ce9f8: ADRP            X2, #byte_F7848@PAGE
000ce9fc: MOV             X0, X22
000cea00: ADD             X2, X2, #byte_F7848@PAGEOFF
000cea04: MOV             X3, X20
000cea08: BL              sub_154B8
000cea0c: ADRP            X0, #qword_F7880@PAGE
000cea10: ADRP            X1, #qword_F7888@PAGE
000cea14: ADD             X0, X0, #qword_F7880@PAGEOFF
000cea18: ADD             X1, X1, #qword_F7888@PAGEOFF
000cea1c: MOV             X2, X20
000cea20: BL              sub_CD5EC
000cea24: ADRP            X0, #byte_F7898@PAGE
000cea28: ADRP            X1, #qword_F78A0@PAGE
000cea2c: ADD             X0, X0, #byte_F7898@PAGEOFF
000cea30: ADD             X1, X1, #qword_F78A0@PAGEOFF
000cea34: MOV             X2, X20
000cea38: BL              sub_CD5EC
000cea3c: ADRP            X0, #qword_F78D0@PAGE
000cea40: ADRP            X1, #qword_F78D8@PAGE
000cea44: ADD             X0, X0, #qword_F78D0@PAGEOFF
000cea48: ADD             X1, X1, #qword_F78D8@PAGEOFF
000cea4c: MOV             X2, X20
000cea50: BL              sub_CD5EC
000cea54: ADRP            X0, #aHgmFMMhHDy@PAGE; "Hgm{f`m&mh}h&}dy\t"
000cea58: ADRP            X1, #qword_F7928@PAGE
000cea5c: ADD             X0, X0, #aHgmFMMhHDy@PAGEOFF; "Hgm{f`m&mh}h&}dy\t"
000cea60: ADD             X1, X1, #qword_F7928@PAGEOFF
000cea64: B               loc_CEEBC
000cea68: LDR             X1, [SP,#0x520+var_4B8]
000cea6c: MOV             X0, X20
000cea70: BL              sub_513C
000cea74: LDR             X1, [SP,#0x520+var_500]
000cea78: ADRP            X2, #byte_F7848@PAGE
000cea7c: MOV             X0, X22
000cea80: ADD             X2, X2, #byte_F7848@PAGEOFF
000cea84: MOV             X3, X20
000cea88: BL              sub_154B8
000cea8c: ADRP            X0, #qword_F7880@PAGE
000cea90: ADRP            X1, #qword_F7888@PAGE
000cea94: ADD             X0, X0, #qword_F7880@PAGEOFF
000cea98: ADD             X1, X1, #qword_F7888@PAGEOFF
000cea9c: MOV             X2, X20
000ceaa0: BL              sub_CD5EC
000ceaa4: ADRP            X0, #byte_F7898@PAGE
000ceaa8: ADRP            X1, #qword_F78A0@PAGE
000ceaac: ADD             X0, X0, #byte_F7898@PAGEOFF
000ceab0: ADD             X1, X1, #qword_F78A0@PAGEOFF
000ceab4: MOV             X2, X20
000ceab8: BL              sub_CD5EC
000ceabc: ADRP            X0, #qword_F78D0@PAGE
000ceac0: ADRP            X1, #qword_F78D8@PAGE
000ceac4: ADD             X0, X0, #qword_F78D0@PAGEOFF
000ceac8: ADD             X1, X1, #qword_F78D8@PAGEOFF
000ceacc: MOV             X2, X20
000cead0: BL              sub_CD5EC
000cead4: MOV             X0, X20
000cead8: BL              sub_CD88C
000ceadc: MOV             W8, #1
000ceae0: STR             W8, [SP,#0x520+var_508]
000ceae4: MOV             W8, #0x8532
000ceae8: B               loc_CED54
000ceaec: ADRP            X1, #xmmword_F77D0@PAGE
000ceaf0: MOV             X0, X22
000ceaf4: ADD             X1, X1, #xmmword_F77D0@PAGEOFF
000ceaf8: MOV             X2, X20
000ceafc: MOV             X3, X19
000ceb00: BL              sub_CCF28
000ceb04: MOV             W8, #0xF77E
000ceb08: MOV             W9, #0x4883
000ceb0c: CMP             W0, #0
000ceb10: MOVK            W8, #0x7552,LSL#16
000ceb14: MOVK            W9, #0x4403,LSL#16
000ceb18: B               loc_CED1C
000ceb1c: LDR             X1, [SP,#0x520+var_500]
000ceb20: ADRP            X2, #byte_F7848@PAGE
000ceb24: MOV             X0, X22
000ceb28: ADD             X2, X2, #byte_F7848@PAGEOFF
000ceb2c: MOV             X3, X20
000ceb30: BL              sub_154B8
000ceb34: ADRP            X0, #qword_F7880@PAGE
000ceb38: ADRP            X1, #qword_F7888@PAGE
000ceb3c: ADD             X0, X0, #qword_F7880@PAGEOFF
000ceb40: ADD             X1, X1, #qword_F7888@PAGEOFF
000ceb44: MOV             X2, X20
000ceb48: BL              sub_CD5EC
000ceb4c: ADRP            X0, #byte_F7898@PAGE
000ceb50: ADRP            X1, #qword_F78A0@PAGE
000ceb54: ADD             X0, X0, #byte_F7898@PAGEOFF
000ceb58: ADD             X1, X1, #qword_F78A0@PAGEOFF
000ceb5c: MOV             X2, X20
000ceb60: BL              sub_CD5EC
000ceb64: ADRP            X0, #qword_F78B0@PAGE
000ceb68: ADRP            X1, #qword_F78C0@PAGE
000ceb6c: ADD             X0, X0, #qword_F78B0@PAGEOFF
000ceb70: ADD             X1, X1, #qword_F78C0@PAGEOFF
000ceb74: B               loc_CEEBC
000ceb78: ADRL            X8, xmmword_EA388
000ceb80: LDR             Q0, [X8]
000ceb84: SUB             X0, X29, #-var_80
000ceb88: SUB             X1, X29, #-s
000ceb8c: MOV             W2, #0x10
000ceb90: STUR            Q0, [X29,#s]
000ceb94: STP             XZR, XZR, [X29,#var_80]
000ceb98: BL              sub_7AE4
000ceb9c: MOV             X8, #0x5E5E5E5E5E5E5E5E
000cebac: ADD             X0, SP, #0x520+var_2A0
000cebb0: ADD             X1, SP, #0x520+var_290
000cebb4: MOV             W2, #0x10
000cebb8: STR             X8, [SP,#0x520+var_288]
000cebbc: STR             X8, [SP,#0x520+var_290]
000cebc0: STR             XZR, [SP,#0x520+var_298]
000cebc4: STR             XZR, [SP,#0x520+var_2A0]
000cebc8: BL              sub_7AE4
000cebcc: LDR             X1, [SP,#0x520+var_4D8]
000cebd0: ADRP            X5, #byte_F7688@PAGE
000cebd4: SUB             X3, X29, #-var_80
000cebd8: ADD             X4, SP, #0x520+var_2A0
000cebdc: MOV             X0, X22
000cebe0: MOV             X2, X19
000cebe4: ADD             X5, X5, #byte_F7688@PAGEOFF
000cebe8: BL              sub_4AAC
000cebec: MOV             W8, #0x49131C17
000cebf4: CMP             W8, W28
000cebf8: B.LE            loc_CDF9C
000cebfc: B               loc_CE018
000cec00: ADRP            X1, #xmmword_F7780@PAGE
000cec04: MOV             X0, X22
000cec08: ADD             X1, X1, #xmmword_F7780@PAGEOFF
000cec0c: MOV             X2, X20
000cec10: MOV             X3, X19
000cec14: BL              sub_CCF28
000cec18: MOV             W8, #0x821D
000cec1c: MOV             W9, #0x1370
000cec20: CMP             W0, #0
000cec24: MOVK            W8, #0xA230,LSL#16
000cec28: MOVK            W9, #0x15B2,LSL#16
000cec2c: B               loc_CEDAC
000cec30: LDR             X1, [SP,#0x520+var_4E8]
000cec34: MOV             X0, X20
000cec38: BL              sub_513C
000cec3c: LDR             X1, [SP,#0x520+var_4F8]
000cec40: LDR             X2, [SP,#0x520+var_4E8]
000cec44: LDR             X8, [X22]
000cec48: MOV             X0, X22
000cec4c: LDR             X8, [X8,#0x550]
000cec50: BLR             X8
000cec54: LDR             X1, [SP,#0x520+var_4F8]
000cec58: LDR             X8, [X22]
000cec5c: MOV             X0, X22
000cec60: LDR             X8, [X8,#0xB8]
000cec64: BLR             X8
000cec68: LDR             X1, [SP,#0x520+var_500]
000cec6c: LDR             X8, [X22]
000cec70: MOV             X0, X22
000cec74: LDR             X8, [X8,#0xB8]
000cec78: BLR             X8
000cec7c: MOV             W8, #1
000cec80: STR             W8, [SP,#0x520+var_50C]
000cec84: MOV             W8, #0xB563
000cec88: MOVK            W8, #0x7AEE,LSL#16
000cec8c: CMP             W8, W28
000cec90: B.LE            loc_CDF9C
000cec94: B               loc_CE018
000cec98: LDR             X0, [SP,#0x520+nptr]; nptr
000cec9c: BL              .atoi
000ceca0: ADRP            X1, #byte_F79BC@PAGE
000ceca4: ADD             W2, W0, #1
000ceca8: SUB             X0, X29, #-s; s
000cecac: ADD             X1, X1, #byte_F79BC@PAGEOFF; format
000cecb0: STP             XZR, XZR, [X29,#s]
000cecb4: BL              .sprintf
000cecb8: ADRP            X0, #qword_F78D0@PAGE
000cecbc: ADRP            X1, #qword_F79C0@PAGE
000cecc0: SUB             X2, X29, #-s
000cecc4: ADD             X0, X0, #qword_F78D0@PAGEOFF
000cecc8: ADD             X1, X1, #qword_F79C0@PAGEOFF
000ceccc: BL              sub_CD5EC
000cecd0: LDR             X0, [SP,#0x520+nptr]
000cecd4: SUB             X1, X29, #-s
000cecd8: BL              sub_513C
000cecdc: MOV             W8, #0xD6A18954
000cece4: CMP             W8, W28
000cece8: B.LE            loc_CDF9C
000cecec: B               loc_CE018
000cecf0: ADRP            X1, #xmmword_F7740@PAGE
000cecf4: MOV             X0, X22
000cecf8: ADD             X1, X1, #xmmword_F7740@PAGEOFF
000cecfc: MOV             X2, X20
000ced00: MOV             X3, X19
000ced04: BL              sub_CCF28
000ced08: MOV             W8, #0x2490
000ced0c: MOV             W9, #0x716A
000ced10: CMP             W0, #0
000ced14: MOVK            W8, #0xBA9,LSL#16
000ced18: MOVK            W9, #0x6CC2,LSL#16
000ced1c: CSEL            W8, W9, W8, EQ
000ced20: CMP             W8, W28
000ced24: B.LE            loc_CDF9C
000ced28: B               loc_CE018
000ced2c: MOV             X0, X19
000ced30: BL              sub_5914
000ced34: MOV             W8, #0x5798
000ced38: MOV             W9, #0x9AE0
000ced3c: CMP             W0, #0
000ced40: MOVK            W8, #0x934A,LSL#16
000ced44: MOVK            W9, #0x227C,LSL#16
000ced48: B               loc_CEDAC
000ced4c: MOV             W8, #0x8532
000ced50: STR             WZR, [SP,#0x520+var_508]
000ced54: MOVK            W8, #0xC5BC,LSL#16
000ced58: CMP             W8, W28
000ced5c: B.LE            loc_CDF9C
000ced60: B               loc_CE018
000ced64: LDRB            W8, [X19]
000ced68: MOV             W9, #0x92954F25
000ced70: CMP             W8, #0
000ced74: MOV             W8, #0x934A5798
000ced7c: B               loc_CEDAC
000ced80: ADRP            X1, #xmmword_F7760@PAGE
000ced84: MOV             X0, X22
000ced88: ADD             X1, X1, #xmmword_F7760@PAGEOFF
000ced8c: MOV             X2, X20
000ced90: MOV             X3, X19
000ced94: BL              sub_CCF28
000ced98: MOV             W8, #0x3EA9
000ced9c: MOV             W9, #0xEDE8
000ceda0: CMP             W0, #0
000ceda4: MOVK            W8, #0xEB84,LSL#16
000ceda8: MOVK            W9, #0xEDB1,LSL#16
000cedac: CSEL            W8, W8, W9, EQ
000cedb0: CMP             W8, W28
000cedb4: B.LE            loc_CDF9C
000cedb8: B               loc_CE018
000cedbc: LDR             X1, [SP,#0x520+var_500]
000cedc0: ADRP            X2, #byte_F7848@PAGE
000cedc4: MOV             X0, X22
000cedc8: ADD             X2, X2, #byte_F7848@PAGEOFF
000cedcc: MOV             X3, X20
000cedd0: BL              sub_154B8
000cedd4: ADRP            X0, #qword_F7880@PAGE
000cedd8: ADRP            X1, #qword_F7888@PAGE
000ceddc: ADD             X0, X0, #qword_F7880@PAGEOFF
000cede0: ADD             X1, X1, #qword_F7888@PAGEOFF
000cede4: MOV             X2, X20
000cede8: BL              sub_CD5EC
000cedec: ADRP            X0, #byte_F7898@PAGE
000cedf0: ADRP            X1, #qword_F78A0@PAGE
000cedf4: ADD             X0, X0, #byte_F7898@PAGEOFF
000cedf8: ADD             X1, X1, #qword_F78A0@PAGEOFF
000cedfc: MOV             X2, X20
000cee00: BL              sub_CD5EC
000cee04: ADRP            X0, #qword_F78D0@PAGE
000cee08: ADRP            X1, #qword_F78D8@PAGE
000cee0c: ADD             X0, X0, #qword_F78D0@PAGEOFF
000cee10: ADD             X1, X1, #qword_F78D8@PAGEOFF
000cee14: MOV             X2, X20
000cee18: BL              sub_CD5EC
000cee1c: ADRP            X0, #qword_F78E8@PAGE
000cee20: ADRP            X1, #qword_F78F8@PAGE
000cee24: ADD             X0, X0, #qword_F78E8@PAGEOFF
000cee28: ADD             X1, X1, #qword_F78F8@PAGEOFF
000cee2c: B               loc_CEEBC
000cee30: LDR             X1, [SP,#0x520+var_500]
000cee34: ADRP            X2, #byte_F7848@PAGE
000cee38: MOV             X0, X22
000cee3c: ADD             X2, X2, #byte_F7848@PAGEOFF
000cee40: MOV             X3, X20
000cee44: BL              sub_154B8
000cee48: B               loc_CEEC4
000cee4c: LDR             X1, [SP,#0x520+var_500]
000cee50: ADRP            X2, #byte_F7848@PAGE
000cee54: MOV             X0, X22
000cee58: ADD             X2, X2, #byte_F7848@PAGEOFF
000cee5c: MOV             X3, X20
000cee60: BL              sub_154B8
000cee64: ADRP            X0, #qword_F7880@PAGE
000cee68: ADRP            X1, #qword_F7888@PAGE
000cee6c: ADD             X0, X0, #qword_F7880@PAGEOFF
000cee70: ADD             X1, X1, #qword_F7888@PAGEOFF
000cee74: MOV             X2, X20
000cee78: BL              sub_CD5EC
000cee7c: ADRP            X0, #byte_F7898@PAGE
000cee80: ADRP            X1, #qword_F78A0@PAGE
000cee84: ADD             X0, X0, #byte_F7898@PAGEOFF
000cee88: ADD             X1, X1, #qword_F78A0@PAGEOFF
000cee8c: MOV             X2, X20
000cee90: BL              sub_CD5EC
000cee94: ADRP            X0, #qword_F78D0@PAGE
000cee98: ADRP            X1, #qword_F78D8@PAGE
000cee9c: ADD             X0, X0, #qword_F78D0@PAGEOFF
000ceea0: ADD             X1, X1, #qword_F78D8@PAGEOFF
000ceea4: MOV             X2, X20
000ceea8: BL              sub_CD5EC
000ceeac: ADRP            X0, #xmmword_F7940@PAGE
000ceeb0: ADRP            X1, #qword_F7958@PAGE
000ceeb4: ADD             X0, X0, #xmmword_F7940@PAGEOFF
000ceeb8: ADD             X1, X1, #qword_F7958@PAGEOFF
000ceebc: MOV             X2, X20
000ceec0: BL              sub_CD5EC
000ceec4: MOV             W8, #1
000ceec8: B               loc_CDF88
000ceecc: LDR             X8, [X23,#0x28]
000ceed0: LDUR            X9, [X29,#var_60]
000ceed4: CMP             X8, X9
000ceed8: B.NE            loc_CEF00
000ceedc: LDR             W0, [SP,#0x520+var_504]
000ceee0: ADD             SP, SP, #0x4D0
000ceee4: LDP             X29, X30, [SP,#0x50+var_s0]
000ceee8: LDP             X20, X19, [SP,#0x50+var_10]
000ceeec: LDP             X22, X21, [SP,#0x50+var_20]
000ceef0: LDP             X24, X23, [SP,#0x50+var_30]
000ceef4: LDP             X26, X25, [SP,#0x50+var_40]
000ceef8: LDP             X28, X27, [SP+0x50+var_50],#0x60
000ceefc: RET
000cef00: BL              .__stack_chk_fail