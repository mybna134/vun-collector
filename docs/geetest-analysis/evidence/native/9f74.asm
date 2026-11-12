00009f74: SUB             SP, SP, #0x180
00009f78: STP             X28, X27, [SP,#0x170+var_50]
00009f7c: STP             X26, X25, [SP,#0x170+var_40]
00009f80: STP             X24, X23, [SP,#0x170+var_30]
00009f84: STP             X22, X21, [SP,#0x170+var_20]
00009f88: STP             X20, X19, [SP,#0x170+var_10]
00009f8c: STP             X29, X30, [SP,#0x170+var_s0]
00009f90: ADD             X29, SP, #0x170
00009f94: STP             X0, X2, [SP,#0x170+var_160]
00009f98: MRS             X9, TPIDR_EL0
00009f9c: STR             X9, [SP,#0x170+var_168]
00009fa0: LDR             X9, [X9,#0x28]
00009fa4: ADD             X10, SP, #0x170+var_130
00009fa8: MOV             X8, X1
00009fac: MOV             W26, #0x41C3
00009fb0: STR             X9, [SP,#0x170+var_150]
00009fb4: STR             X10, [SP,#0x170+var_148]
00009fb8: LDR             X9, [SP,#0x170+var_148]
00009fbc: LDR             X9, [SP,#0x170+var_148]
00009fc0: MOVI            V0.2D, #0
00009fc4: ADD             X1, SP, #0x170+var_130; buf
00009fc8: MOV             X0, X8; file
00009fcc: MOVK            W26, #0xE05A,LSL#16
00009fd0: STP             Q0, Q0, [X9,#0x60]
00009fd4: STP             Q0, Q0, [X9,#0x40]
00009fd8: STP             Q0, Q0, [X9,#0x20]
00009fdc: STP             Q0, Q0, [X9]
00009fe0: BL              .stat
00009fe4: MOV             W27, #0x355
00009fe8: MOV             W28, #0xC0DE
00009fec: MOV             W11, #0xCA00
00009ff0: ADRP            X1, #byte_F209C@PAGE
00009ff4: MOV             W21, #0x59A0
00009ff8: MOV             W22, #0xBD38
00009ffc: MOV             W19, #0xD7A1
0000a000: MOV             W20, #0x5A09
0000a004: MOV             W24, #0x59A1
0000a008: MOV             W23, #0xF3AA
0000a00c: MOV             W25, #0xD5FD
0000a010: MOV             W8, #0x355
0000a014: MOVK            W27, #0xDA2C,LSL#16
0000a018: MOVK            W28, #0xD6E6,LSL#16
0000a01c: MOVK            W11, #0x3B9A,LSL#16
0000a020: ADD             X1, X1, #byte_F209C@PAGEOFF
0000a024: MOVK            W21, #0x67DD,LSL#16
0000a028: MOVK            W22, #0xA38C,LSL#16
0000a02c: MOVK            W19, #0x31F5,LSL#16
0000a030: MOVK            W20, #0x607D,LSL#16
0000a034: MOVK            W24, #0x67DD,LSL#16
0000a038: MOVK            W23, #0x7716,LSL#16
0000a03c: MOVK            W25, #0x6904,LSL#16
0000a040: MOVK            W8, #0xDA2C,LSL#16
0000a044: STR             W0, [SP,#0x170+var_140]
0000a048: B               loc_A088
0000a04c: LDR             X2, [SP,#0x170+var_170]
0000a050: SUB             X9, X29, #-s
0000a054: ADRP            X1, #byte_F20B4@PAGE
0000a058: ADD             X0, X9, W8,SXTW; s
0000a05c: ADD             X1, X1, #byte_F20B4@PAGEOFF; format
0000a060: BL              .sprintf
0000a064: LDP             X0, X1, [SP,#0x170+var_160]
0000a068: SUB             X2, X29, #-s
0000a06c: BL              sub_13C74
0000a070: MOV             W8, #0x41C3
0000a074: MOV             W11, #0xCA00
0000a078: ADRP            X1, #byte_F209C@PAGE
0000a07c: MOVK            W8, #0xE05A,LSL#16
0000a080: MOVK            W11, #0x3B9A,LSL#16
0000a084: ADD             X1, X1, #byte_F209C@PAGEOFF; format
0000a088: CMP             W8, W28
0000a08c: B.EQ            loc_A0B0
0000a090: CMP             W8, W26
0000a094: B.EQ            loc_A190
0000a098: CMP             W8, W27
0000a09c: B.NE            loc_A088
0000a0a0: LDR             W8, [SP,#0x170+var_140]
0000a0a4: CMP             W8, #0
0000a0a8: CSEL            W8, W28, W26, EQ
0000a0ac: B               loc_A088
0000a0b0: LDP             X9, X8, [SP,#0x170+var_E8]
0000a0b4: LDR             X10, [SP,#0x170+var_128]
0000a0b8: MOVI            V0.2D, #0
0000a0bc: SUB             X0, X29, #-s; s
0000a0c0: MADD            X2, X9, X11, X8
0000a0c4: STR             X10, [SP,#0x170+var_170]
0000a0c8: SUB             X10, X29, #-s
0000a0cc: STP             Q0, Q0, [X10,#0x20]
0000a0d0: STP             Q0, Q0, [X10]
0000a0d4: BL              .sprintf
0000a0d8: MOV             W11, #0x7716F3AA
0000a0e0: B               loc_A100
0000a0e4: MOV             W11, #0x31F5D7A1
0000a0ec: B               loc_A100
0000a0f0: MOV             W11, #0xD5FD
0000a0f4: MOV             W9, WZR
0000a0f8: MOVK            W11, #0x6904,LSL#16
0000a0fc: SUB             X10, X29, #-s
0000a100: CMP             W11, W21
0000a104: B.GT            loc_A130
0000a108: CMP             W11, W22
0000a10c: B.EQ            loc_A04C
0000a110: CMP             W11, W19
0000a114: B.EQ            loc_A0F0
0000a118: CMP             W11, W20
0000a11c: B.NE            loc_A100
0000a120: LDR             W8, [SP,#0x170+var_13C]
0000a124: MOV             W11, #0xA38CBD38
0000a12c: B               loc_A100
0000a130: CMP             W11, W24
0000a134: B.EQ            loc_A164
0000a138: CMP             W11, W23
0000a13c: B.EQ            loc_A0E4
0000a140: CMP             W11, W25
0000a144: B.NE            loc_A100
0000a148: STR             W9, [SP,#0x170+var_13C]
0000a14c: STR             X10, [SP,#0x170+var_138]
0000a150: LDR             X11, [SP,#0x170+var_138]
0000a154: LDRB            W11, [X11]
0000a158: CMP             W11, #0
0000a15c: CSEL            W11, W20, W24, EQ
0000a160: B               loc_A100
0000a164: LDR             W9, [SP,#0x170+var_13C]
0000a168: MOV             W11, #0xE71F
0000a16c: LDR             X10, [SP,#0x170+var_138]
0000a170: MOVK            W11, #0x281E,LSL#16
0000a174: SUB             W9, W9, W11
0000a178: ADD             W9, W9, #1
0000a17c: ADD             W9, W9, W11
0000a180: MOV             W11, #0xD5FD
0000a184: ADD             X10, X10, #1
0000a188: MOVK            W11, #0x6904,LSL#16
0000a18c: B               loc_A100
0000a190: LDR             X8, [SP,#0x170+var_148]
0000a194: LDR             X8, [SP,#0x170+var_168]
0000a198: LDR             X8, [X8,#0x28]
0000a19c: LDR             X9, [SP,#0x170+var_150]
0000a1a0: CMP             X8, X9
0000a1a4: B.NE            loc_A1C8
0000a1a8: LDP             X29, X30, [SP,#0x170+var_s0]
0000a1ac: LDP             X20, X19, [SP,#0x170+var_10]
0000a1b0: LDP             X22, X21, [SP,#0x170+var_20]
0000a1b4: LDP             X24, X23, [SP,#0x170+var_30]
0000a1b8: LDP             X26, X25, [SP,#0x170+var_40]
0000a1bc: LDP             X28, X27, [SP,#0x170+var_50]
0000a1c0: ADD             SP, SP, #0x180
0000a1c4: RET
0000a1c8: BL              .__stack_chk_fail