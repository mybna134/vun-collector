00029f1c: STP             X28, X27, [SP,#-0x10+var_50]!
00029f20: STP             X26, X25, [SP,#0x50+var_40]
00029f24: STP             X24, X23, [SP,#0x50+var_30]
00029f28: STP             X22, X21, [SP,#0x50+var_20]
00029f2c: STP             X20, X19, [SP,#0x50+var_10]
00029f30: STP             X29, X30, [SP,#0x50+var_s0]
00029f34: ADD             X29, SP, #0x50
00029f38: SUB             SP, SP, #0x2A0
00029f3c: STR             X2, [SP,#0x2F0+var_2D0]
00029f40: MRS             X8, TPIDR_EL0
00029f44: STR             X8, [SP,#0x2F0+var_2F0]
00029f48: LDR             X8, [X8,#0x28]
00029f4c: MOV             X19, X1
00029f50: ADD             X9, SP, #0x2F0+var_2C0
00029f54: MOV             W28, #0x5384
00029f58: MOV             W1, WZR; oflag
00029f5c: STR             X8, [X9]
00029f60: MOVK            W28, #0x19A2,LSL#16
00029f64: STR             X0, [SP,#0x2F0+var_2E0]
00029f68: BL              .open
00029f6c: MOV             W8, #0xE04D
00029f70: CMP             X19, #0
00029f74: MOVK            W8, #0xB67E,LSL#16
00029f78: CSEL            W8, W28, W8, EQ
00029f7c: STR             X19, [SP,#0x2F0+var_2D8]
00029f80: MOV             W19, #0x5383
00029f84: MOV             W23, #0xD98D
00029f88: MOV             W27, #0x66EA
00029f8c: MOV             W22, #0xD98E
00029f90: MOV             W26, #0x3E81
00029f94: MOV             W20, #0x81C7
00029f98: MOV             W25, #0xDC6C
00029f9c: MOV             W21, #0xF97E
00029fa0: STR             W8, [SP,#0x2F0+var_2E4]
00029fa4: MOV             W8, #0x2E29
00029fa8: MOVK            W19, #0x19A2,LSL#16
00029fac: MOVK            W23, #0xD43B,LSL#16
00029fb0: MOVK            W27, #0xC3B4,LSL#16
00029fb4: MOVK            W22, #0xD43B,LSL#16
00029fb8: MOVK            W26, #0xF2C8,LSL#16
00029fbc: MOVK            W20, #0x4F6B,LSL#16
00029fc0: MOVK            W25, #0x1A69,LSL#16
00029fc4: MOVK            W21, #0x6EDC,LSL#16
00029fc8: MOVK            W8, #0x4E78,LSL#16
00029fcc: STR             W0, [SP,#0x2F0+fd]
00029fd0: B               loc_29FE8
00029fd4: LDR             X1, [SP,#0x2F0+src]; src
00029fd8: LDP             X0, X2, [SP,#0x2F0+var_2D8]; n
00029fdc: BL              .strncpy
00029fe0: MOV             W8, #0x19A25384
00029fe8: CMP             W8, W19
00029fec: B.LE            loc_2A044
00029ff0: CMP             W8, W20
00029ff4: B.LE            loc_2A0A0
00029ff8: CMP             W8, W21
00029ffc: B.GT            loc_2A0E0
0002a000: MOV             W9, #0x4F6B81C8
0002a008: CMP             W8, W9
0002a00c: B.EQ            loc_2A27C
0002a010: MOV             W9, #0x63D96A45
0002a018: CMP             W8, W9
0002a01c: B.NE            loc_29FE8
0002a020: LDR             X8, [SP,#0x2F0+var_298]
0002a024: LDR             X8, [SP,#0x2F0+var_2A0]
0002a028: LDR             X8, [SP,#0x2F0+var_2A8]
0002a02c: LDR             X8, [SP,#0x2F0+var_2B0]
0002a030: LDR             W8, [SP,#0x2F0+var_2C4]
0002a034: STR             W8, [SP,#0x2F0+var_2C8]
0002a038: MOV             W8, #0xC3B466EB
0002a040: B               loc_29FE8
0002a044: CMP             W8, W23
0002a048: B.GT            loc_2A078
0002a04c: CMP             W8, W27
0002a050: B.GT            loc_2A218
0002a054: MOV             W9, #0xA05DFAE6
0002a05c: CMP             W8, W9
0002a060: B.EQ            loc_2A24C
0002a064: MOV             W9, #0xB67EE04D
0002a06c: CMP             W8, W9
0002a070: B.NE            loc_29FE8
0002a074: B               loc_29FD4
0002a078: CMP             W8, W22
0002a07c: B.EQ            loc_2A2AC
0002a080: CMP             W8, W26
0002a084: B.EQ            loc_2A2D8
0002a088: MOV             W9, #0xF74B27A
0002a090: CMP             W8, W9
0002a094: B.NE            loc_29FE8
0002a098: LDR             W8, [SP,#0x2F0+var_2E4]
0002a09c: B               loc_29FE8
0002a0a0: CMP             W8, W28
0002a0a4: B.EQ            loc_2A2E8
0002a0a8: CMP             W8, W25
0002a0ac: B.EQ            loc_2A2F8
0002a0b0: MOV             W9, #0x4E782E29
0002a0b8: CMP             W8, W9
0002a0bc: B.NE            loc_29FE8
0002a0c0: LDR             W8, [SP,#0x2F0+fd]
0002a0c4: MOV             W9, #0x78F27A34
0002a0cc: CMP             W8, #0
0002a0d0: MOV             W8, #0xCAF17738
0002a0d8: CSEL            W8, W8, W9, LT
0002a0dc: B               loc_29FE8
0002a0e0: MOV             W9, #0x6EDCF97F
0002a0e8: CMP             W8, W9
0002a0ec: B.EQ            loc_2A298
0002a0f0: MOV             W9, #0x78F27A34
0002a0f8: CMP             W8, W9
0002a0fc: B.NE            loc_29FE8
0002a100: SUB             X8, X29, #-s
0002a104: STR             X8, [SP,#0x2F0+var_2B0]
0002a108: LDR             X8, [SP,#0x2F0+var_2B0]
0002a10c: LDR             X8, [SP,#0x2F0+var_2B0]
0002a110: STP             XZR, XZR, [X8]
0002a114: BL              sub_E89A4
0002a118: ADRL            X28, byte_F3434
0002a120: MOV             W2, W0
0002a124: SUB             X0, X29, #-s; s
0002a128: MOV             X1, X28; format
0002a12c: BL              .sprintf
0002a130: SUB             X8, X29, #-var_80
0002a134: STR             X8, [SP,#0x2F0+var_2A8]
0002a138: LDR             X8, [SP,#0x2F0+var_2A8]
0002a13c: LDR             X8, [SP,#0x2F0+var_2A8]
0002a140: SUB             X0, X29, #-var_80; s
0002a144: MOV             X1, X28; format
0002a148: MOV             W28, #0x5384
0002a14c: STP             XZR, XZR, [X8]
0002a150: LDR             W2, [SP,#0x2F0+fd]
0002a154: MOVK            W28, #0x19A2,LSL#16
0002a158: BL              .sprintf
0002a15c: ADD             X8, SP, #0x2F0+var_180
0002a160: STR             X8, [SP,#0x2F0+var_2A0]
0002a164: LDR             X8, [SP,#0x2F0+var_2A0]
0002a168: LDR             X8, [SP,#0x2F0+var_2A0]
0002a16c: ADRP            X1, #byte_F3438@PAGE
0002a170: MOVI            V0.2D, #0
0002a174: ADD             X0, SP, #0x2F0+var_180
0002a178: ADD             X1, X1, #byte_F3438@PAGEOFF
0002a17c: STP             Q0, Q0, [X8,#0xE0]
0002a180: STP             Q0, Q0, [X8,#0xC0]
0002a184: STP             Q0, Q0, [X8,#0xA0]
0002a188: STP             Q0, Q0, [X8,#0x80]
0002a18c: STP             Q0, Q0, [X8,#0x60]
0002a190: STP             Q0, Q0, [X8,#0x40]
0002a194: STP             Q0, Q0, [X8,#0x20]
0002a198: STP             Q0, Q0, [X8]
0002a19c: BL              sub_6630
0002a1a0: ADD             X0, SP, #0x2F0+var_180
0002a1a4: SUB             X1, X29, #-s
0002a1a8: BL              sub_6630
0002a1ac: ADRP            X1, #byte_F59B0@PAGE
0002a1b0: ADD             X0, SP, #0x2F0+var_180
0002a1b4: ADD             X1, X1, #byte_F59B0@PAGEOFF
0002a1b8: BL              sub_6630
0002a1bc: ADD             X0, SP, #0x2F0+var_180
0002a1c0: SUB             X1, X29, #-var_80
0002a1c4: BL              sub_6630
0002a1c8: ADD             X9, SP, #0x2F0+var_280
0002a1cc: STP             X9, X9, [SP,#0x2F0+var_298]
0002a1d0: LDR             X8, [SP,#0x2F0+var_298]
0002a1d4: LDR             X8, [SP,#0x2F0+var_298]
0002a1d8: MOVI            V0.2D, #0
0002a1dc: ADD             X0, SP, #0x2F0+var_180
0002a1e0: MOV             W2, #0x100
0002a1e4: STP             Q0, Q0, [X8,#0xE0]
0002a1e8: STP             Q0, Q0, [X8,#0xC0]
0002a1ec: STP             Q0, Q0, [X8,#0xA0]
0002a1f0: STP             Q0, Q0, [X8,#0x80]
0002a1f4: STP             Q0, Q0, [X8,#0x60]
0002a1f8: STP             Q0, Q0, [X8,#0x40]
0002a1fc: STP             Q0, Q0, [X8,#0x20]
0002a200: STP             Q0, Q0, [X8]
0002a204: LDR             X1, [SP,#0x2F0+src]
0002a208: BL              sub_E8AA4
0002a20c: CMP             W0, #0
0002a210: CSEL            W8, W26, W22, LT
0002a214: B               loc_29FE8
0002a218: MOV             W9, #0xCAF17738
0002a220: CMP             W8, W9
0002a224: B.EQ            loc_2A23C
0002a228: MOV             W9, #0xC3B466EB
0002a230: CMP             W8, W9
0002a234: B.NE            loc_29FE8
0002a238: B               loc_2A30C
0002a23c: MOV             W8, #0x66EB
0002a240: STR             WZR, [SP,#0x2F0+var_2C8]
0002a244: MOVK            W8, #0xC3B4,LSL#16
0002a248: B               loc_29FE8
0002a24c: LDR             X0, [SP,#0x2F0+src]
0002a250: LDR             X1, [SP,#0x2F0+var_2E0]
0002a254: MOV             W2, #0x100
0002a258: BL              sub_73B4
0002a25c: MOV             W8, #0x81C8
0002a260: MOV             W9, #0xB27A
0002a264: CMP             W0, #0
0002a268: MOVK            W8, #0x4F6B,LSL#16
0002a26c: MOVK            W9, #0xF74,LSL#16
0002a270: MOV             W24, WZR
0002a274: CSEL            W8, W8, W9, EQ
0002a278: B               loc_29FE8
0002a27c: STR             W24, [SP,#0x2F0+var_284]
0002a280: LDR             W8, [SP,#0x2F0+fd]
0002a284: CMP             W8, #0
0002a288: MOV             W8, #0x6EDCF97F
0002a290: CSEL            W8, W25, W8, GT
0002a294: B               loc_29FE8
0002a298: LDR             W8, [SP,#0x2F0+var_284]
0002a29c: STR             W8, [SP,#0x2F0+var_2C4]
0002a2a0: MOV             W8, #0x63D96A45
0002a2a8: B               loc_29FE8
0002a2ac: LDR             X0, [SP,#0x2F0+src]; string
0002a2b0: MOV             W1, #0x100; maxlen
0002a2b4: BL              .strnlen
0002a2b8: MOV             W8, #0x81C8
0002a2bc: MOV             W9, #0xFAE6
0002a2c0: CMP             X0, #0
0002a2c4: MOVK            W8, #0x4F6B,LSL#16
0002a2c8: MOVK            W9, #0xA05D,LSL#16
0002a2cc: MOV             W24, WZR
0002a2d0: CSEL            W8, W8, W9, EQ
0002a2d4: B               loc_29FE8
0002a2d8: MOV             W8, #0x6A45
0002a2dc: STR             WZR, [SP,#0x2F0+var_2C4]
0002a2e0: MOVK            W8, #0x63D9,LSL#16
0002a2e4: B               loc_29FE8
0002a2e8: MOV             W8, #0x81C8
0002a2ec: MOV             W24, #1
0002a2f0: MOVK            W8, #0x4F6B,LSL#16
0002a2f4: B               loc_29FE8
0002a2f8: LDR             W0, [SP,#0x2F0+fd]; fd
0002a2fc: BL              .close
0002a300: MOV             W8, #0x6EDCF97F
0002a308: B               loc_29FE8
0002a30c: LDR             X8, [SP,#0x2F0+var_2F0]
0002a310: ADD             X9, SP, #0x2F0+var_2C0
0002a314: LDR             X8, [X8,#0x28]
0002a318: LDR             X9, [X9]
0002a31c: CMP             X8, X9
0002a320: B.NE            loc_2A348
0002a324: LDR             W0, [SP,#0x2F0+var_2C8]
0002a328: ADD             SP, SP, #0x2A0
0002a32c: LDP             X29, X30, [SP,#0x50+var_s0]
0002a330: LDP             X20, X19, [SP,#0x50+var_10]
0002a334: LDP             X22, X21, [SP,#0x50+var_20]
0002a338: LDP             X24, X23, [SP,#0x50+var_30]
0002a33c: LDP             X26, X25, [SP,#0x50+var_40]
0002a340: LDP             X28, X27, [SP+0x50+var_50],#0x60
0002a344: RET
0002a348: BL              .__stack_chk_fail