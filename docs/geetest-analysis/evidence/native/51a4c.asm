00051a4c: SUB             SP, SP, #0x1E0
00051a50: STR             D8, [SP,#0x1D0+var_60]
00051a54: STP             X28, X27, [SP,#0x1D0+var_50]
00051a58: STP             X26, X25, [SP,#0x1D0+var_40]
00051a5c: STP             X24, X23, [SP,#0x1D0+var_30]
00051a60: STP             X22, X21, [SP,#0x1D0+var_20]
00051a64: STP             X20, X19, [SP,#0x1D0+var_10]
00051a68: STP             X29, X30, [SP,#0x1D0+var_s0]
00051a6c: ADD             X29, SP, #0x1D0
00051a70: MRS             X8, TPIDR_EL0
00051a74: STP             X8, X1, [SP,#0x1D0+var_1C0]
00051a78: LDR             X8, [X8,#0x28]
00051a7c: SUB             X19, X29, #-var_90
00051a80: MOV             X21, X0
00051a84: MOV             W23, #0x3DC6
00051a88: STUR            X8, [X29,#var_70]
00051a8c: STR             X19, [SP,#0x1D0+var_160]
00051a90: LDR             X8, [SP,#0x1D0+var_160]
00051a94: MOV             W24, #0x1A14
00051a98: MOV             W20, #0xCD59
00051a9c: SUB             X1, X29, #-var_90; tp
00051aa0: MOV             W0, #1; clock_id
00051aa4: MOV             X26, X2
00051aa8: MOVK            W23, #0xE5DD,LSL#16
00051aac: MOVK            W24, #0xB77C,LSL#16
00051ab0: MOVK            W20, #0xC18,LSL#16
00051ab4: BL              .clock_gettime
00051ab8: MOV             W14, #0x903A
00051abc: CMP             X26, #0
00051ac0: MOVK            W14, #0xD8A1,LSL#16
00051ac4: ADD             X8, X19, #0x10
00051ac8: FMOV            D8, #1.0
00051acc: CSEL            W14, W20, W14, EQ
00051ad0: STR             X8, [SP,#0x1D0+tp]
00051ad4: STR             W14, [SP,#0x1D0+var_1CC]
00051ad8: MOV             W15, #0xD4C7179A
00051ae0: B               loc_51AFC
00051ae4: MOV             W8, W22
00051ae8: MOV             W9, W20
00051aec: MOV             X10, X27
00051af0: MOV             X11, X19
00051af4: MOV             X12, X25
00051af8: MOV             X13, X28
00051afc: MOV             W14, W15
00051b00: MOV             W15, #0xC18CD58
00051b08: CMP             W14, W15
00051b0c: MOV             X28, X13
00051b10: MOV             X25, X12
00051b14: MOV             X19, X11
00051b18: MOV             X27, X10
00051b1c: MOV             W20, W9
00051b20: MOV             W22, W8
00051b24: B.LE            loc_51BF4
00051b28: MOV             W8, #0x39BEAC48
00051b30: CMP             W14, W8
00051b34: B.LE            loc_51CA4
00051b38: MOV             W8, #0x5D2DF076
00051b40: CMP             W14, W8
00051b44: B.GT            loc_51E00
00051b48: MOV             W8, #0x4D074657
00051b50: CMP             W14, W8
00051b54: B.LE            loc_5202C
00051b58: MOV             W8, #0x4D074658
00051b60: CMP             W14, W8
00051b64: B.EQ            loc_523E0
00051b68: MOV             W8, #0x53F7D036
00051b70: CMP             W14, W8
00051b74: B.EQ            loc_525AC
00051b78: MOV             W8, #0x5A82321A
00051b80: CMP             W14, W8
00051b84: MOV             W8, W22
00051b88: MOV             W9, W20
00051b8c: MOV             X10, X27
00051b90: MOV             X11, X19
00051b94: MOV             X12, X25
00051b98: MOV             X13, X28
00051b9c: MOV             W15, W14
00051ba0: B.NE            loc_51AFC
00051ba4: LDR             W8, [SP,#0x1D0+var_1B0]
00051ba8: ADRP            X2, #qword_F7030@PAGE
00051bac: ADRP            X3, #byte_F703C@PAGE
00051bb0: MOV             X0, X21
00051bb4: STURB           W8, [X29,#var_D8]
00051bb8: LDR             X1, [SP,#0x1D0+var_158]
00051bbc: LDR             X8, [X21]
00051bc0: ADD             X2, X2, #qword_F7030@PAGEOFF
00051bc4: ADD             X3, X3, #byte_F703C@PAGEOFF
00051bc8: LDR             X8, [X8,#0x108]
00051bcc: BLR             X8
00051bd0: STR             X0, [SP,#0x1D0+var_138]
00051bd4: LDR             X8, [SP,#0x1D0+var_138]
00051bd8: MOV             W9, #0x7D5177CF
00051be0: CMP             X8, #0
00051be4: MOV             W8, #0x2665A120
00051bec: CSEL            W15, W8, W9, EQ
00051bf0: B               loc_51AE4
00051bf4: MOV             W8, #0xC7174F7D
00051bfc: CMP             W14, W8
00051c00: B.LE            loc_51D5C
00051c04: MOV             W8, #0xDEAD9D6E
00051c0c: CMP             W14, W8
00051c10: B.GT            loc_51EA0
00051c14: MOV             W8, #0xCDFC6BC7
00051c1c: CMP             W14, W8
00051c20: B.LE            loc_52308
00051c24: MOV             W8, #0xCDFC6BC8
00051c2c: CMP             W14, W8
00051c30: B.EQ            loc_52824
00051c34: MOV             W8, #0xD4C7179A
00051c3c: CMP             W14, W8
00051c40: B.EQ            loc_528E4
00051c44: MOV             W8, #0xD8A1903A
00051c4c: CMP             W14, W8
00051c50: MOV             W8, W22
00051c54: MOV             W9, W20
00051c58: MOV             X10, X27
00051c5c: MOV             X11, X19
00051c60: MOV             X12, X25
00051c64: MOV             X13, X28
00051c68: MOV             W15, W14
00051c6c: B.NE            loc_51AFC
00051c70: LDR             X8, [X21]
00051c74: MOV             X0, X21
00051c78: MOV             X1, X26
00051c7c: LDR             X8, [X8,#0xF8]
00051c80: BLR             X8
00051c84: STR             X0, [SP,#0x1D0+var_158]
00051c88: LDR             X8, [SP,#0x1D0+var_158]
00051c8c: MOV             W9, #0x1A9F20C9
00051c94: CMP             X8, #0
00051c98: MOV             W8, #0xDEAD9D6F
00051ca0: B               loc_528AC
00051ca4: MOV             W8, #0x1AD555DC
00051cac: CMP             W14, W8
00051cb0: B.LE            loc_51F3C
00051cb4: MOV             W8, #0x200B0210
00051cbc: CMP             W14, W8
00051cc0: B.LE            loc_52200
00051cc4: MOV             W8, #0x200B0211
00051ccc: CMP             W14, W8
00051cd0: B.EQ            loc_526E8
00051cd4: MOV             W8, #0x2665A120
00051cdc: CMP             W14, W8
00051ce0: B.EQ            loc_5271C
00051ce4: MOV             W8, #0x390059B5
00051cec: CMP             W14, W8
00051cf0: MOV             W8, W22
00051cf4: MOV             W9, W20
00051cf8: MOV             X10, X27
00051cfc: MOV             X11, X19
00051d00: MOV             X12, X25
00051d04: MOV             X13, X28
00051d08: MOV             W15, W14
00051d0c: B.NE            loc_51AFC
00051d10: LDR             W8, [SP,#0x1D0+var_1AC]
00051d14: ADRP            X2, #qword_F7040@PAGE
00051d18: ADRP            X3, #xmmword_F7050@PAGE
00051d1c: MOV             X0, X21
00051d20: STUR            W8, [X29,#var_D4]
00051d24: LDR             X1, [SP,#0x1D0+var_158]
00051d28: LDR             X8, [X21]
00051d2c: ADD             X2, X2, #qword_F7040@PAGEOFF
00051d30: ADD             X3, X3, #xmmword_F7050@PAGEOFF
00051d34: LDR             X8, [X8,#0x108]
00051d38: BLR             X8
00051d3c: STR             X0, [SP,#0x1D0+var_128]
00051d40: LDR             X8, [SP,#0x1D0+var_128]
00051d44: MOV             W9, #0x1AD555DD
00051d4c: CMP             X8, #0
00051d50: MOV             W8, #0xCDFC6BC8
00051d58: B               loc_528AC
00051d5c: MOV             W8, #0xAA57A861
00051d64: CMP             W14, W8
00051d68: B.LE            loc_51F98
00051d6c: MOV             W8, #0xB77C1A13
00051d74: CMP             W14, W8
00051d78: B.LE            loc_52268
00051d7c: CMP             W14, W24
00051d80: B.EQ            loc_527A8
00051d84: MOV             W8, #0xB8B4ED4C
00051d8c: CMP             W14, W8
00051d90: B.EQ            loc_527F4
00051d94: MOV             W8, #0xB969A222
00051d9c: CMP             W14, W8
00051da0: MOV             W8, W22
00051da4: MOV             W9, W20
00051da8: MOV             X10, X27
00051dac: MOV             X11, X19
00051db0: MOV             X12, X25
00051db4: MOV             X13, X28
00051db8: MOV             W15, W14
00051dbc: B.NE            loc_51AFC
00051dc0: LDR             X2, [SP,#0x1D0+var_118]
00051dc4: MOV             X0, X21
00051dc8: MOV             X1, X26
00051dcc: BL              sub_BF48
00051dd0: STR             X0, [SP,#0x1D0+var_110]
00051dd4: LDR             X8, [X21]
00051dd8: MOV             X0, X21
00051ddc: LDR             X8, [X8,#0x720]
00051de0: BLR             X8
00051de4: LDR             X8, [SP,#0x1D0+var_110]
00051de8: TST             W0, #0xFF
00051dec: STR             X8, [SP,#0x1D0+var_1A0]
00051df0: MOV             W8, #0x7DF0FB4E
00051df8: CSEL            W15, W24, W8, EQ
00051dfc: B               loc_51AE4
00051e00: MOV             W8, #0x7C217BA1
00051e08: CMP             W14, W8
00051e0c: B.LE            loc_5212C
00051e10: MOV             W8, #0x7C217BA2
00051e18: CMP             W14, W8
00051e1c: LDP             W9, W8, [SP,#0x1D0+var_180]
00051e20: LDP             X10, X11, [SP,#0x1D0+var_178]
00051e24: LDR             X12, [SP,#0x1D0+var_168]
00051e28: LDR             X13, [SP,#0x1D0+var_188]
00051e2c: MOV             W15, #0xC18CD59
00051e34: B.EQ            loc_51AFC
00051e38: MOV             W8, #0x7D5177CF
00051e40: CMP             W14, W8
00051e44: B.EQ            loc_525F8
00051e48: MOV             W8, #0x7DF0FB4E
00051e50: CMP             W14, W8
00051e54: MOV             W8, W22
00051e58: MOV             W9, W20
00051e5c: MOV             X10, X27
00051e60: MOV             X11, X19
00051e64: MOV             X12, X25
00051e68: MOV             X13, X28
00051e6c: MOV             W15, W14
00051e70: B.NE            loc_51AFC
00051e74: LDR             X8, [X21]
00051e78: MOV             X0, X21
00051e7c: LDR             X8, [X8,#0x80]
00051e80: BLR             X8
00051e84: LDR             X8, [X21]
00051e88: MOV             X0, X21
00051e8c: LDR             X8, [X8,#0x88]
00051e90: BLR             X8
00051e94: LDR             X8, [SP,#0x1D0+var_110]
00051e98: STR             X8, [SP,#0x1D0+var_1A0]
00051e9c: B               loc_52784
00051ea0: MOV             W8, #0xE5DD3DC5
00051ea8: CMP             W14, W8
00051eac: B.LE            loc_52370
00051eb0: CMP             W14, W23
00051eb4: B.EQ            loc_5286C
00051eb8: MOV             W8, #0x26742F7
00051ec0: CMP             W14, W8
00051ec4: B.EQ            loc_52904
00051ec8: MOV             W8, #0x2E47A07
00051ed0: CMP             W14, W8
00051ed4: MOV             W8, W22
00051ed8: MOV             W9, W20
00051edc: MOV             X10, X27
00051ee0: MOV             X11, X19
00051ee4: MOV             X12, X25
00051ee8: MOV             X13, X28
00051eec: MOV             W15, W14
00051ef0: B.NE            loc_51AFC
00051ef4: LDR             X2, [SP,#0x1D0+var_148]
00051ef8: MOV             X0, X21
00051efc: MOV             X1, X26
00051f00: BL              sub_11964
00051f04: STRB            W0, [SP,#0x1D0+var_13C]
00051f08: LDR             X8, [X21]
00051f0c: MOV             X0, X21
00051f10: LDR             X8, [X8,#0x720]
00051f14: BLR             X8
00051f18: LDRB            W8, [SP,#0x1D0+var_13C]
00051f1c: MOV             W9, #0xD036
00051f20: TST             W0, #0xFF
00051f24: MOVK            W9, #0x53F7,LSL#16
00051f28: STR             W8, [SP,#0x1D0+var_1B0]
00051f2c: MOV             W8, #0x5A82321A
00051f34: CSEL            W15, W8, W9, EQ
00051f38: B               loc_51AE4
00051f3c: MOV             W8, #0x17B76F22
00051f44: CMP             W14, W8
00051f48: B.GT            loc_520B0
00051f4c: MOV             W8, #0xC18CD59
00051f54: CMP             W14, W8
00051f58: B.EQ            loc_52640
00051f5c: MOV             W8, #0xE00FC78
00051f64: CMP             W14, W8
00051f68: MOV             W8, W22
00051f6c: MOV             W9, W20
00051f70: MOV             X10, X27
00051f74: MOV             X11, X19
00051f78: MOV             X12, X25
00051f7c: MOV             X13, X28
00051f80: MOV             W15, W14
00051f84: B.NE            loc_51AFC
00051f88: MOV             X0, X21
00051f8c: BL              sub_B6D0
00051f90: STR             WZR, [SP,#0x1D0+var_1B0]
00051f94: B               loc_525D4
00051f98: MOV             W8, #0xA2FA116A
00051fa0: CMP             W14, W8
00051fa4: B.GT            loc_521B8
00051fa8: MOV             W8, #0x9B53A8FB
00051fb0: CMP             W14, W8
00051fb4: B.EQ            loc_5272C
00051fb8: MOV             W8, #0xA23FE9B2
00051fc0: CMP             W14, W8
00051fc4: MOV             W8, W22
00051fc8: MOV             W9, W20
00051fcc: MOV             X10, X27
00051fd0: MOV             X11, X19
00051fd4: MOV             X12, X25
00051fd8: MOV             X13, X28
00051fdc: MOV             W15, W14
00051fe0: B.NE            loc_51AFC
00051fe4: LDR             X2, [SP,#0x1D0+var_108]
00051fe8: MOV             X0, X21
00051fec: MOV             X1, X26
00051ff0: BL              sub_BF48
00051ff4: STR             X0, [SP,#0x1D0+var_100]
00051ff8: LDR             X8, [X21]
00051ffc: MOV             X0, X21
00052000: LDR             X8, [X8,#0x720]
00052004: BLR             X8
00052008: LDR             X8, [SP,#0x1D0+var_100]
0005200c: MOV             W9, #0xF077
00052010: TST             W0, #0xFF
00052014: MOVK            W9, #0x5D2D,LSL#16
00052018: STR             X8, [SP,#0x1D0+var_198]
0005201c: MOV             W8, #0x9B53A8FB
00052024: CSEL            W15, W8, W9, EQ
00052028: B               loc_51AE4
0005202c: MOV             W8, #0x39BEAC49
00052034: CMP             W14, W8
00052038: B.EQ            loc_52A1C
0005203c: MOV             W8, #0x4D072049
00052044: CMP             W14, W8
00052048: MOV             W8, W22
0005204c: MOV             W9, W20
00052050: MOV             X10, X27
00052054: MOV             X11, X19
00052058: MOV             X12, X25
0005205c: MOV             X13, X28
00052060: MOV             W15, W14
00052064: B.NE            loc_51AFC
00052068: LDR             X2, [SP,#0x1D0+var_F8]
0005206c: MOV             X0, X21
00052070: MOV             X1, X26
00052074: BL              sub_BF48
00052078: STR             X0, [SP,#0x1D0+var_F0]
0005207c: LDR             X8, [X21]
00052080: MOV             X0, X21
00052084: LDR             X8, [X8,#0x720]
00052088: BLR             X8
0005208c: LDR             X8, [SP,#0x1D0+var_F0]
00052090: MOV             W9, #0x205C
00052094: TST             W0, #0xFF
00052098: MOVK            W9, #0xC88B,LSL#16
0005209c: STR             X8, [SP,#0x1D0+var_190]
000520a0: MOV             W8, #0xAA57A862
000520a8: CSEL            W15, W8, W9, EQ
000520ac: B               loc_51AE4
000520b0: MOV             W8, #0x17B76F23
000520b8: CMP             W14, W8
000520bc: B.EQ            loc_52678
000520c0: MOV             W8, #0x1A9F20C9
000520c8: CMP             W14, W8
000520cc: MOV             W8, W22
000520d0: MOV             W9, W20
000520d4: MOV             X10, X27
000520d8: MOV             X11, X19
000520dc: MOV             X12, X25
000520e0: MOV             X13, X28
000520e4: MOV             W15, W14
000520e8: B.NE            loc_51AFC
000520ec: MOV             X0, X21
000520f0: BL              sub_B6D0
000520f4: MOV             W8, #1
000520f8: MOV             W15, #0x7BA2
000520fc: STP             XZR, XZR, [SP,#0x1D0+var_178]
00052100: STR             XZR, [SP,#0x1D0+var_168]
00052104: STR             XZR, [SP,#0x1D0+var_188]
00052108: STP             W8, WZR, [SP,#0x1D0+var_180]
0005210c: MOV             W8, W22
00052110: MOV             W9, W20
00052114: MOV             X10, X27
00052118: MOV             X11, X19
0005211c: MOV             X12, X25
00052120: MOV             X13, X28
00052124: MOVK            W15, #0x7C21,LSL#16
00052128: B               loc_51AFC
0005212c: MOV             W8, #0x5D2DF077
00052134: CMP             W14, W8
00052138: B.EQ            loc_526BC
0005213c: MOV             W8, #0x5E733E60
00052144: CMP             W14, W8
00052148: MOV             W8, W22
0005214c: MOV             W9, W20
00052150: MOV             X10, X27
00052154: MOV             X11, X19
00052158: MOV             X12, X25
0005215c: MOV             X13, X28
00052160: MOV             W15, W14
00052164: B.NE            loc_51AFC
00052168: LDR             X8, [SP,#0x1D0+var_1A8]
0005216c: ADRP            X2, #qword_F7068@PAGE
00052170: ADRP            X3, #xmmword_F7080@PAGE
00052174: MOV             X0, X21
00052178: STUR            X8, [X29,#var_D0]
0005217c: LDR             X1, [SP,#0x1D0+var_158]
00052180: LDR             X8, [X21]
00052184: ADD             X2, X2, #qword_F7068@PAGEOFF
00052188: ADD             X3, X3, #xmmword_F7080@PAGEOFF
0005218c: LDR             X8, [X8,#0x108]
00052190: BLR             X8
00052194: STR             X0, [SP,#0x1D0+var_118]
00052198: LDR             X8, [SP,#0x1D0+var_118]
0005219c: MOV             W9, #0xB969A222
000521a4: CMP             X8, #0
000521a8: MOV             W8, #0xA2FA116B
000521b0: CSEL            W15, W8, W9, EQ
000521b4: B               loc_51AE4
000521b8: MOV             W8, #0xA2FA116B
000521c0: CMP             W14, W8
000521c4: B.EQ            loc_52778
000521c8: MOV             W8, #0xA8E23014
000521d0: CMP             W14, W8
000521d4: MOV             W8, W22
000521d8: MOV             W9, W20
000521dc: MOV             X10, X27
000521e0: MOV             X11, X19
000521e4: MOV             X12, X25
000521e8: MOV             X13, X28
000521ec: MOV             W15, W14
000521f0: B.NE            loc_51AFC
000521f4: MOV             X0, X21
000521f8: BL              sub_B6D0
000521fc: B               loc_52698
00052200: MOV             W8, #0x1AD555DD
00052208: CMP             W14, W8
0005220c: B.EQ            loc_528B4
00052210: MOV             W8, #0x1B8C6627
00052218: CMP             W14, W8
0005221c: MOV             W8, W22
00052220: MOV             W9, W20
00052224: MOV             X10, X27
00052228: MOV             X11, X19
0005222c: MOV             X12, X25
00052230: MOV             X13, X28
00052234: MOV             W15, W14
00052238: B.NE            loc_51AFC
0005223c: LDR             X8, [X21]
00052240: MOV             X0, X21
00052244: LDR             X8, [X8,#0x80]
00052248: BLR             X8
0005224c: LDR             X8, [X21]
00052250: MOV             X0, X21
00052254: LDR             X8, [X8,#0x88]
00052258: BLR             X8
0005225c: LDR             X8, [SP,#0x1D0+var_120]
00052260: STR             X8, [SP,#0x1D0+var_1A8]
00052264: B               loc_528C0
00052268: MOV             W8, #0xAA57A862
00052270: CMP             W14, W8
00052274: B.EQ            loc_52950
00052278: MOV             W8, #0xAADEE8DC
00052280: CMP             W14, W8
00052284: MOV             W8, W22
00052288: MOV             W9, W20
0005228c: MOV             X10, X27
00052290: MOV             X11, X19
00052294: MOV             X12, X25
00052298: MOV             X13, X28
0005229c: MOV             W15, W14
000522a0: B.NE            loc_51AFC
000522a4: BL              sub_BB824
000522a8: LDUR            W3, [X29,#var_B4]
000522ac: LDR             X1, [SP,#0x1D0+var_1B8]
000522b0: MOV             X24, X26
000522b4: MOV             X26, X0
000522b8: MOV             X0, X21
000522bc: MOV             X2, X26
000522c0: BL              sub_D0E0C
000522c4: LDUR            X0, [X29,#var_E0]
000522c8: ADRL            X1, byte_F70B4
000522d0: MOV             X2, X26
000522d4: MOV             X26, X24
000522d8: MOV             W24, #0xB77C1A14
000522e0: BL              sub_13984
000522e4: MOV             W15, #0x4658
000522e8: MOV             W8, W22
000522ec: MOV             W9, W20
000522f0: MOV             X10, X27
000522f4: MOV             X11, X19
000522f8: MOV             X12, X25
000522fc: MOV             X13, X28
00052300: MOVK            W15, #0x4D07,LSL#16
00052304: B               loc_51AFC
00052308: MOV             W8, #0xC7174F7E
00052310: CMP             W14, W8
00052314: B.EQ            loc_529A4
00052318: MOV             W8, #0xC88B205C
00052320: CMP             W14, W8
00052324: MOV             W8, W22
00052328: MOV             W9, W20
0005232c: MOV             X10, X27
00052330: MOV             X11, X19
00052334: MOV             X12, X25
00052338: MOV             X13, X28
0005233c: MOV             W15, W14
00052340: B.NE            loc_51AFC
00052344: LDR             X8, [X21]
00052348: MOV             X0, X21
0005234c: LDR             X8, [X8,#0x80]
00052350: BLR             X8
00052354: LDR             X8, [X21]
00052358: MOV             X0, X21
0005235c: LDR             X8, [X8,#0x88]
00052360: BLR             X8
00052364: LDR             X8, [SP,#0x1D0+var_F0]
00052368: STR             X8, [SP,#0x1D0+var_190]
0005236c: B               loc_529B0
00052370: MOV             W8, #0xDEAD9D6F
00052378: CMP             W14, W8
0005237c: B.EQ            loc_529D4
00052380: MOV             W8, #0xE4A979F9
00052388: CMP             W14, W8
0005238c: MOV             W8, W22
00052390: MOV             W9, W20
00052394: MOV             X10, X27
00052398: MOV             X11, X19
0005239c: MOV             X12, X25
000523a0: MOV             X13, X28
000523a4: MOV             W15, W14
000523a8: B.NE            loc_51AFC
000523ac: LDR             X2, [SP,#0x1D0+var_E8]
000523b0: LDUR            X1, [X29,#var_A0]
000523b4: MOV             X0, X21
000523b8: BL              sub_11A00
000523bc: MOV             W15, #0xAC49
000523c0: MOV             W8, W22
000523c4: MOV             W9, W20
000523c8: MOV             X10, X27
000523cc: MOV             X11, X19
000523d0: MOV             X12, X25
000523d4: MOV             X13, X28
000523d8: MOVK            W15, #0x39BE,LSL#16
000523dc: B               loc_51AFC
000523e0: BL              sub_BB824
000523e4: LDR             X23, [SP,#0x1D0+var_1B8]
000523e8: MOV             X24, X26
000523ec: MOV             X26, X0
000523f0: MOV             X0, X21
000523f4: MOV             X1, X23
000523f8: MOV             X2, X26
000523fc: BL              sub_42030
00052400: MOV             X0, X21
00052404: MOV             X1, X23
00052408: MOV             X2, X26
0005240c: BL              sub_4249C
00052410: LDUR            X0, [X29,#var_E0]
00052414: ADRL            X1, byte_F70B8
0005241c: MOV             X2, X26
00052420: MOV             X26, X24
00052424: MOV             W24, #0xB77C1A14
0005242c: BL              sub_13984
00052430: LDUR            X2, [X29,#var_E0]
00052434: LDUR            W3, [X29,#var_B4]
00052438: LDUR            X4, [X29,#var_A8]
0005243c: MOV             X0, X21
00052440: MOV             X1, X23
00052444: MOV             W23, #0xE5DD3DC6
0005244c: BL              sub_D3224
00052450: LDR             X0, [SP,#0x1D0+var_E8]
00052454: LDUR            X2, [X29,#var_E0]
00052458: ADRL            X1, byte_F70C0
00052460: BL              sub_13984
00052464: LDR             X1, [SP,#0x1D0+var_E8]
00052468: LDUR            X3, [X29,#var_B0]
0005246c: ADRP            X2, #byte_F70C8@PAGE
00052470: MOV             X0, X21
00052474: ADD             X2, X2, #byte_F70C8@PAGEOFF
00052478: BL              sub_13DB0
0005247c: LDR             X0, [SP,#0x1D0+var_E8]
00052480: ADRP            X1, #byte_F70D0@PAGE
00052484: ADRP            X2, #aKwowhy@PAGE; "KWOWHy"
00052488: ADD             X1, X1, #byte_F70D0@PAGEOFF
0005248c: ADD             X2, X2, #aKwowhy@PAGEOFF; "KWOWHy"
00052490: BL              sub_13C74
00052494: LDR             X1, [SP,#0x1D0+var_E8]
00052498: LDUR            X2, [X29,#var_98]
0005249c: MOV             X0, X21
000524a0: BL              sub_A578
000524a4: LDR             X0, [SP,#0x1D0+var_E8]
000524a8: ADRP            X1, #byte_F70E0@PAGE
000524ac: ADRP            X2, #byte_F70E4@PAGE
000524b0: ADD             X1, X1, #byte_F70E0@PAGEOFF
000524b4: ADD             X2, X2, #byte_F70E4@PAGEOFF
000524b8: BL              sub_13C74
000524bc: LDR             X0, [SP,#0x1D0+var_E8]
000524c0: ADRP            X1, #byte_F70E8@PAGE
000524c4: ADRP            X2, #byte_F70EC@PAGE
000524c8: ADD             X1, X1, #byte_F70E8@PAGEOFF
000524cc: ADD             X2, X2, #byte_F70EC@PAGEOFF
000524d0: BL              sub_13C74
000524d4: LDR             X0, [SP,#0x1D0+var_E8]
000524d8: ADRP            X1, #byte_F70F0@PAGE
000524dc: ADRP            X2, #byte_F70F4@PAGE
000524e0: ADD             X1, X1, #byte_F70F0@PAGEOFF
000524e4: ADD             X2, X2, #byte_F70F4@PAGEOFF
000524e8: BL              sub_13C74
000524ec: LDR             X0, [SP,#0x1D0+var_E8]
000524f0: ADRL            X1, byte_F70F8
000524f8: MOV             V0.16B, V8.16B
000524fc: BL              sub_BAB9C
00052500: MOV             X0, X21
00052504: BL              sub_D138
00052508: LDR             X8, [SP,#0x1D0+var_E8]
0005250c: ADRP            X1, #byte_F7100@PAGE
00052510: SCVTF           D0, X0
00052514: ADD             X1, X1, #byte_F7100@PAGEOFF
00052518: MOV             X0, X8
0005251c: BL              sub_BAB9C
00052520: LDR             X1, [SP,#0x1D0+tp]; tp
00052524: MOV             W0, #1; clock_id
00052528: BL              .clock_gettime
0005252c: LDP             X8, X10, [X29,#var_80]
00052530: LDP             X9, X11, [X29,#var_90]
00052534: MOV             X12, #0xF20751A4AD4F4C7E
00052544: SUB             X8, X8, X9
00052548: ADD             X9, X10, X12
0005254c: MOV             X10, #0xD7B634DB
00052554: SUB             X9, X9, X11
00052558: MOVK            X10, #0xDE82,LSL#32
0005255c: SUB             X9, X9, X12
00052560: MOVK            X10, #0x431B,LSL#48
00052564: SMULH           X9, X9, X10
00052568: ASR             X10, X9, #0x12
0005256c: LDR             X0, [SP,#0x1D0+var_E8]
00052570: ADD             X9, X10, X9,LSR#63
00052574: MOV             W10, #0x3E8
00052578: MADD            X8, X8, X10, X9
0005257c: ADRP            X1, #byte_F7104@PAGE
00052580: SCVTF           D0, X8
00052584: ADD             X1, X1, #byte_F7104@PAGEOFF
00052588: BL              sub_BAB9C
0005258c: LDUR            X8, [X29,#var_A0]
00052590: MOV             W9, #0xE4A979F9
00052598: CMP             X8, #0
0005259c: MOV             W8, #0x39BEAC49
000525a4: CSEL            W15, W8, W9, EQ
000525a8: B               loc_51AE4
000525ac: LDR             X8, [X21]
000525b0: MOV             X0, X21
000525b4: LDR             X8, [X8,#0x80]
000525b8: BLR             X8
000525bc: LDR             X8, [X21]
000525c0: MOV             X0, X21
000525c4: LDR             X8, [X8,#0x88]
000525c8: BLR             X8
000525cc: LDRB            W8, [SP,#0x1D0+var_13C]
000525d0: STR             W8, [SP,#0x1D0+var_1B0]
000525d4: MOV             W15, #0x321A
000525d8: MOV             W8, W22
000525dc: MOV             W9, W20
000525e0: MOV             X10, X27
000525e4: MOV             X11, X19
000525e8: MOV             X12, X25
000525ec: MOV             X13, X28
000525f0: MOVK            W15, #0x5A82,LSL#16
000525f4: B               loc_51AFC
000525f8: LDR             X2, [SP,#0x1D0+var_138]
000525fc: MOV             X0, X21
00052600: MOV             X1, X26
00052604: BL              sub_C4A8
00052608: STR             W0, [SP,#0x1D0+var_12C]
0005260c: LDR             X8, [X21]
00052610: MOV             X0, X21
00052614: LDR             X8, [X8,#0x720]
00052618: BLR             X8
0005261c: LDR             W8, [SP,#0x1D0+var_12C]
00052620: MOV             W9, #0x42F7
00052624: TST             W0, #0xFF
00052628: MOVK            W9, #0x267,LSL#16
0005262c: STR             W8, [SP,#0x1D0+var_1AC]
00052630: MOV             W8, #0x390059B5
00052638: CSEL            W15, W8, W9, EQ
0005263c: B               loc_51AE4
00052640: STUR            W20, [X29,#var_B4]
00052644: STP             X27, X19, [X29,#var_B0]
00052648: STP             X25, X28, [X29,#var_A0]
0005264c: BL              sub_BB824
00052650: STR             X0, [SP,#0x1D0+var_E8]
00052654: BL              sub_BB824
00052658: MOV             W8, #0x4658
0005265c: MOV             W9, #0xE8DC
00052660: TST             W22, #0xFF
00052664: MOVK            W8, #0x4D07,LSL#16
00052668: MOVK            W9, #0xAADE,LSL#16
0005266c: STUR            X0, [X29,#var_E0]
00052670: CSEL            W15, W8, W9, EQ
00052674: B               loc_51AE4
00052678: LDR             X8, [X21]
0005267c: MOV             X0, X21
00052680: LDR             X8, [X8,#0x80]
00052684: BLR             X8
00052688: LDR             X8, [X21]
0005268c: MOV             X0, X21
00052690: LDR             X8, [X8,#0x88]
00052694: BLR             X8
00052698: MOV             W15, #0x3DC6
0005269c: MOV             W8, W22
000526a0: MOV             W9, W20
000526a4: MOV             X10, X27
000526a8: MOV             X11, X19
000526ac: MOV             X12, X25
000526b0: MOV             X13, X28
000526b4: MOVK            W15, #0xE5DD,LSL#16
000526b8: B               loc_51AFC
000526bc: LDR             X8, [X21]
000526c0: MOV             X0, X21
000526c4: LDR             X8, [X8,#0x80]
000526c8: BLR             X8
000526cc: LDR             X8, [X21]
000526d0: MOV             X0, X21
000526d4: LDR             X8, [X8,#0x88]
000526d8: BLR             X8
000526dc: LDR             X8, [SP,#0x1D0+var_100]
000526e0: STR             X8, [SP,#0x1D0+var_198]
000526e4: B               loc_52800
000526e8: LDR             X2, [SP,#0x1D0+var_150]
000526ec: MOV             X0, X21
000526f0: MOV             X1, X26
000526f4: BL              sub_11964
000526f8: LDR             X8, [X21]
000526fc: MOV             X0, X21
00052700: LDR             X8, [X8,#0x720]
00052704: BLR             X8
00052708: MOV             W8, #0x6F23
0005270c: TST             W0, #0xFF
00052710: MOVK            W8, #0x17B7,LSL#16
00052714: CSEL            W15, W23, W8, EQ
00052718: B               loc_51AE4
0005271c: MOV             X0, X21
00052720: BL              sub_B6D0
00052724: MOV             W8, #1
00052728: B               loc_52928
0005272c: LDR             X8, [SP,#0x1D0+var_198]
00052730: ADRP            X2, #qword_F70A8@PAGE
00052734: ADRP            X3, #xmmword_F7050@PAGE
00052738: MOV             X0, X21
0005273c: STUR            X8, [X29,#var_C0]
00052740: LDR             X1, [SP,#0x1D0+var_158]
00052744: LDR             X8, [X21]
00052748: ADD             X2, X2, #qword_F70A8@PAGEOFF
0005274c: ADD             X3, X3, #xmmword_F7050@PAGEOFF
00052750: LDR             X8, [X8,#0x108]
00052754: BLR             X8
00052758: STR             X0, [SP,#0x1D0+var_F8]
0005275c: LDR             X8, [SP,#0x1D0+var_F8]
00052760: MOV             W9, #0xC7174F7E
00052768: CMP             X8, #0
0005276c: MOV             W8, #0x4D072049
00052774: B               loc_528AC
00052778: MOV             X0, X21
0005277c: BL              sub_B6D0
00052780: STR             XZR, [SP,#0x1D0+var_1A0]
00052784: MOV             W15, #0x1A14
00052788: MOV             W8, W22
0005278c: MOV             W9, W20
00052790: MOV             X10, X27
00052794: MOV             X11, X19
00052798: MOV             X12, X25
0005279c: MOV             X13, X28
000527a0: MOVK            W15, #0xB77C,LSL#16
000527a4: B               loc_51AFC
000527a8: LDR             X8, [SP,#0x1D0+var_1A0]
000527ac: ADRP            X2, #qword_F7098@PAGE
000527b0: ADRP            X3, #xmmword_F7080@PAGE
000527b4: MOV             X0, X21
000527b8: STUR            X8, [X29,#var_C8]
000527bc: LDR             X1, [SP,#0x1D0+var_158]
000527c0: LDR             X8, [X21]
000527c4: ADD             X2, X2, #qword_F7098@PAGEOFF
000527c8: ADD             X3, X3, #xmmword_F7080@PAGEOFF
000527cc: LDR             X8, [X8,#0x108]
000527d0: BLR             X8
000527d4: STR             X0, [SP,#0x1D0+var_108]
000527d8: LDR             X8, [SP,#0x1D0+var_108]
000527dc: MOV             W9, #0xB8B4ED4C
000527e4: CMP             X8, #0
000527e8: MOV             W8, #0xA23FE9B2
000527f0: B               loc_528AC
000527f4: MOV             X0, X21
000527f8: BL              sub_B6D0
000527fc: STR             XZR, [SP,#0x1D0+var_198]
00052800: MOV             W15, #0xA8FB
00052804: MOV             W8, W22
00052808: MOV             W9, W20
0005280c: MOV             X10, X27
00052810: MOV             X11, X19
00052814: MOV             X12, X25
00052818: MOV             X13, X28
0005281c: MOVK            W15, #0x9B53,LSL#16
00052820: B               loc_51AFC
00052824: LDR             X2, [SP,#0x1D0+var_128]
00052828: MOV             X0, X21
0005282c: MOV             X1, X26
00052830: BL              sub_BF48
00052834: STR             X0, [SP,#0x1D0+var_120]
00052838: LDR             X8, [X21]
0005283c: MOV             X0, X21
00052840: LDR             X8, [X8,#0x720]
00052844: BLR             X8
00052848: LDR             X8, [SP,#0x1D0+var_120]
0005284c: MOV             W9, #0x6627
00052850: TST             W0, #0xFF
00052854: MOVK            W9, #0x1B8C,LSL#16
00052858: STR             X8, [SP,#0x1D0+var_1A8]
0005285c: MOV             W8, #0x5E733E60
00052864: CSEL            W15, W8, W9, EQ
00052868: B               loc_51AE4
0005286c: LDR             X1, [SP,#0x1D0+var_158]
00052870: LDR             X8, [X21]
00052874: ADRP            X2, #qword_F7020@PAGE
00052878: ADRP            X3, #byte_F701C@PAGE
0005287c: MOV             X0, X21
00052880: LDR             X8, [X8,#0x108]
00052884: ADD             X2, X2, #qword_F7020@PAGEOFF
00052888: ADD             X3, X3, #byte_F701C@PAGEOFF
0005288c: BLR             X8
00052890: STR             X0, [SP,#0x1D0+var_148]
00052894: LDR             X8, [SP,#0x1D0+var_148]
00052898: MOV             W9, #0xE00FC78
000528a0: CMP             X8, #0
000528a4: MOV             W8, #0x2E47A07
000528ac: CSEL            W15, W9, W8, EQ
000528b0: B               loc_51AE4
000528b4: MOV             X0, X21
000528b8: BL              sub_B6D0
000528bc: STR             XZR, [SP,#0x1D0+var_1A8]
000528c0: MOV             W15, #0x3E60
000528c4: MOV             W8, W22
000528c8: MOV             W9, W20
000528cc: MOV             X10, X27
000528d0: MOV             X11, X19
000528d4: MOV             X12, X25
000528d8: MOV             X13, X28
000528dc: MOVK            W15, #0x5E73,LSL#16
000528e0: B               loc_51AFC
000528e4: LDR             W15, [SP,#0x1D0+var_1CC]
000528e8: MOV             W8, WZR
000528ec: MOV             X10, XZR
000528f0: MOV             X11, XZR
000528f4: MOV             X12, XZR
000528f8: MOV             X13, XZR
000528fc: MOV             W9, #1
00052900: B               loc_51AFC
00052904: LDR             X8, [X21]
00052908: MOV             X0, X21
0005290c: LDR             X8, [X8,#0x80]
00052910: BLR             X8
00052914: LDR             X8, [X21]
00052918: MOV             X0, X21
0005291c: LDR             X8, [X8,#0x88]
00052920: BLR             X8
00052924: LDR             W8, [SP,#0x1D0+var_12C]
00052928: MOV             W15, #0x59B5
0005292c: STR             W8, [SP,#0x1D0+var_1AC]
00052930: MOV             W8, W22
00052934: MOV             W9, W20
00052938: MOV             X10, X27
0005293c: MOV             X11, X19
00052940: MOV             X12, X25
00052944: MOV             X13, X28
00052948: MOVK            W15, #0x3900,LSL#16
0005294c: B               loc_51AFC
00052950: LDUR            X8, [X29,#var_C0]
00052954: MOV             W15, #0x7BA2
00052958: MOV             W9, W20
0005295c: MOV             X10, X27
00052960: STR             X8, [SP,#0x1D0+var_168]
00052964: LDUR            X8, [X29,#var_C8]
00052968: MOV             X11, X19
0005296c: MOV             X12, X25
00052970: MOV             X13, X28
00052974: STR             X8, [SP,#0x1D0+var_170]
00052978: LDUR            X8, [X29,#var_D0]
0005297c: MOVK            W15, #0x7C21,LSL#16
00052980: STR             X8, [SP,#0x1D0+var_178]
00052984: LDUR            W8, [X29,#var_D4]
00052988: STR             W8, [SP,#0x1D0+var_180]
0005298c: LDURB           W8, [X29,#var_D8]
00052990: LDR             X14, [SP,#0x1D0+var_190]
00052994: STR             W8, [SP,#0x1D0+var_17C]
00052998: MOV             W8, W22
0005299c: STR             X14, [SP,#0x1D0+var_188]
000529a0: B               loc_51AFC
000529a4: MOV             X0, X21
000529a8: BL              sub_B6D0
000529ac: STR             XZR, [SP,#0x1D0+var_190]
000529b0: MOV             W15, #0xA862
000529b4: MOV             W8, W22
000529b8: MOV             W9, W20
000529bc: MOV             X10, X27
000529c0: MOV             X11, X19
000529c4: MOV             X12, X25
000529c8: MOV             X13, X28
000529cc: MOVK            W15, #0xAA57,LSL#16
000529d0: B               loc_51AFC
000529d4: LDR             X1, [SP,#0x1D0+var_158]
000529d8: LDR             X8, [X21]
000529dc: ADRP            X2, #qword_F7010@PAGE
000529e0: ADRP            X3, #byte_F701C@PAGE
000529e4: MOV             X0, X21
000529e8: LDR             X8, [X8,#0x108]
000529ec: ADD             X2, X2, #qword_F7010@PAGEOFF
000529f0: ADD             X3, X3, #byte_F701C@PAGEOFF
000529f4: BLR             X8
000529f8: STR             X0, [SP,#0x1D0+var_150]
000529fc: LDR             X8, [SP,#0x1D0+var_150]
00052a00: MOV             W9, #0x200B0211
00052a08: CMP             X8, #0
00052a0c: MOV             W8, #0xA8E23014
00052a14: CSEL            W15, W8, W9, EQ
00052a18: B               loc_51AE4
00052a1c: LDR             X0, [SP,#0x1D0+var_E8]
00052a20: BL              sub_B67F8
00052a24: LDR             X8, [SP,#0x1D0+var_E8]
00052a28: MOV             X19, X0
00052a2c: MOV             X0, X8
00052a30: BL              sub_C0BCC
00052a34: LDR             X8, [SP,#0x1D0+var_160]
00052a38: LDR             X8, [SP,#0x1D0+var_1C0]
00052a3c: LDR             X8, [X8,#0x28]
00052a40: LDUR            X9, [X29,#var_70]
00052a44: CMP             X8, X9
00052a48: B.NE            loc_52A74
00052a4c: MOV             X0, X19
00052a50: LDP             X29, X30, [SP,#0x1D0+var_s0]
00052a54: LDP             X20, X19, [SP,#0x1D0+var_10]
00052a58: LDP             X22, X21, [SP,#0x1D0+var_20]
00052a5c: LDP             X24, X23, [SP,#0x1D0+var_30]
00052a60: LDP             X26, X25, [SP,#0x1D0+var_40]
00052a64: LDP             X28, X27, [SP,#0x1D0+var_50]
00052a68: LDR             D8, [SP,#0x1D0+var_60]
00052a6c: ADD             SP, SP, #0x1E0
00052a70: RET
00052a74: BL              .__stack_chk_fail