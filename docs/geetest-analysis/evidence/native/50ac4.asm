00050ac4: STP             X28, X27, [SP,#-0x10+var_50]!
00050ac8: STP             X26, X25, [SP,#0x50+var_40]
00050acc: STP             X24, X23, [SP,#0x50+var_30]
00050ad0: STP             X22, X21, [SP,#0x50+var_20]
00050ad4: STP             X20, X19, [SP,#0x50+var_10]
00050ad8: STP             X29, X30, [SP,#0x50+var_s0]
00050adc: ADD             X29, SP, #0x50
00050ae0: SUB             SP, SP, #0x340
00050ae4: MOV             X19, SP
00050ae8: MRS             X8, TPIDR_EL0
00050aec: STR             X8, [X19,#0x390+var_390]
00050af0: LDR             X8, [X8,#0x28]
00050af4: ADD             X9, X19, #0x220
00050af8: MOV             W24, #0x6D4C
00050afc: MOV             W23, #0xBBC3
00050b00: MOV             X20, X0
00050b04: ADD             X26, X19, #0xB8
00050b08: MOVK            W24, #0xE529,LSL#16
00050b0c: MOVK            W23, #0xC0E6,LSL#16
00050b10: STR             X8, [X9,#0x108]
00050b14: BL              nullsub_2
00050b18: MOV             X0, X20
00050b1c: BL              sub_5914
00050b20: SUB             X8, X29, #-var_70
00050b24: STR             W0, [X19,#0x390+var_35C]
00050b28: STR             X8, [X19,#0x390+var_358]
00050b2c: LDR             X8, [X19,#0x390+var_358]
00050b30: LDR             X8, [X19,#0x390+var_358]
00050b34: SUB             X0, X29, #-var_70
00050b38: MOV             W1, #8
00050b3c: STR             XZR, [X8]
00050b40: BL              sub_7904
00050b44: SUB             X8, X29, #-var_90
00050b48: STR             X8, [X19,#0x390+var_350]
00050b4c: LDR             X8, [X19,#0x390+var_350]
00050b50: LDR             X8, [X19,#0x390+var_350]
00050b54: MOVI            V0.2D, #0
00050b58: SUB             X9, X29, #-var_100
00050b5c: SUB             X0, X29, #-var_100
00050b60: STP             Q0, Q0, [X8]
00050b64: STR             X9, [X19,#0x390+var_348]
00050b68: LDR             X8, [X19,#0x390+var_348]
00050b6c: BL              sub_E4574
00050b70: SUB             X0, X29, #-var_100
00050b74: MOV             W1, WZR
00050b78: BL              sub_E46A4
00050b7c: LDRSW           X8, [X19,#0x390+var_35C]
00050b80: SUB             X0, X29, #-var_100; int
00050b84: MOV             X1, X20; src
00050b88: STR             X8, [X19,#0x390+var_340]
00050b8c: LDR             X2, [X19,#0x390+var_340]
00050b90: STR             X20, [X19,#0x390+var_380]
00050b94: BL              sub_E7894
00050b98: SUB             X0, X29, #-var_100
00050b9c: SUB             X1, X29, #-var_90
00050ba0: BL              sub_E7CB0
00050ba4: ADD             X8, X19, #0x27C
00050ba8: STR             X8, [X19,#0x390+var_338]
00050bac: LDR             X9, [X19,#0x390+var_338]
00050bb0: LDR             X9, [X19,#0x390+var_338]
00050bb4: ADD             X10, X19, #0x268
00050bb8: SUB             X1, X29, #-var_70
00050bbc: MOV             W2, #8
00050bc0: STP             XZR, XZR, [X9]
00050bc4: STRB            WZR, [X9,#0x10]
00050bc8: STR             X10, [X19,#0x390+var_330]
00050bcc: LDR             X9, [X19,#0x390+var_330]
00050bd0: LDR             X9, [X19,#0x390+var_330]
00050bd4: STP             XZR, XZR, [X9]
00050bd8: STRB            WZR, [X9,#0x10]
00050bdc: STR             X8, [X19,#0x390+var_328]
00050be0: LDR             X0, [X19,#0x390+var_328]
00050be4: BL              sub_554C
00050be8: MOV             W21, #0xDD5F
00050bec: MOV             W27, #0xBBC2
00050bf0: MOV             W28, #0x6D4B
00050bf4: MOV             W25, #0x27A4
00050bf8: MOV             W20, #0x1E53
00050bfc: MOV             W22, #0x189E
00050c00: MOVK            W21, #0x3E4,LSL#16
00050c04: MOVK            W27, #0xC0E6,LSL#16
00050c08: MOVK            W28, #0xE529,LSL#16
00050c0c: MOVK            W25, #0x490D,LSL#16
00050c10: MOVK            W20, #0x2956,LSL#16
00050c14: MOVK            W22, #0x6455,LSL#16
00050c18: STR             WZR, [X19,#0x390+var_384]
00050c1c: B               loc_50C28
00050c20: LDR             W8, [X19,#0xB4]
00050c24: STR             W8, [X19,#0xC]
00050c28: MOV             W8, #0x6CB97A05
00050c30: B               loc_50C40
00050c34: MOV             W8, #0x5062
00050c38: STR             XZR, [X19,#0x18]
00050c3c: MOVK            W8, #0x70B8,LSL#16
00050c40: CMP             W8, W21
00050c44: B.LE            loc_50CFC
00050c48: CMP             W8, W25
00050c4c: B.GT            loc_50D68
00050c50: CMP             W8, W20
00050c54: B.LE            loc_50F84
00050c58: MOV             W9, #0x3886CA72
00050c60: CMP             W8, W9
00050c64: B.GT            loc_5108C
00050c68: MOV             W9, #0x29561E54
00050c70: CMP             W8, W9
00050c74: B.EQ            loc_512A8
00050c78: MOV             W9, #0x2F5D7EE1
00050c80: CMP             W8, W9
00050c84: B.NE            loc_50C40
00050c88: ADRP            X8, #x_ptr@PAGE
00050c8c: LDR             X8, [X8,#x_ptr@PAGEOFF]; x
00050c90: ADRP            X9, #y_ptr@PAGE
00050c94: MOV             W11, #0xF06C5D34
00050c9c: LDR             W8, [X8]
00050ca0: LDR             X9, [X9,#y_ptr@PAGEOFF]; y
00050ca4: ADD             W10, W8, W11
00050ca8: SUB             W10, W10, #1
00050cac: SUB             W10, W10, W11
00050cb0: LDR             W9, [X9]
00050cb4: MUL             W8, W10, W8
00050cb8: MVN             W8, W8
00050cbc: ORR             W8, W8, #0xFFFFFFFE
00050cc0: CMN             W8, #1
00050cc4: CSET            W8, NE
00050cc8: CMP             W9, #9
00050ccc: CSET            W9, GT
00050cd0: EOR             W10, W9, W8
00050cd4: ORR             W8, W9, W8
00050cd8: EOR             W8, W8, #1
00050cdc: ORR             W8, W10, W8
00050ce0: CMP             W8, #0
00050ce4: MOV             W8, #0xED8A
00050ce8: MOV             W9, #0xCA73
00050cec: MOVK            W8, #0x88B0,LSL#16
00050cf0: MOVK            W9, #0x3886,LSL#16
00050cf4: CSEL            W8, W9, W8, NE
00050cf8: B               loc_50C40
00050cfc: CMP             W8, W27
00050d00: B.LE            loc_50DC8
00050d04: CMP             W8, W28
00050d08: B.LE            loc_51008
00050d0c: MOV             W9, #0xF0588A75
00050d14: CMP             W8, W9
00050d18: B.GT            loc_511E4
00050d1c: CMP             W8, W24
00050d20: B.EQ            loc_51528
00050d24: MOV             W9, #0xEFB0DE8A
00050d2c: CMP             W8, W9
00050d30: B.NE            loc_50C40
00050d34: LDR             X4, [X26,#8]
00050d38: LDR             X3, [X26,#0x10]
00050d3c: LDR             X1, [X26,#0x20]
00050d40: LDR             X0, [X26,#0x28]
00050d44: ADD             X2, X19, #0xF8
00050d48: BL              sub_DED20
00050d4c: MOV             W8, #0xA260
00050d50: MOV             W9, #0xE6B7
00050d54: CMP             W0, #0
00050d58: MOVK            W8, #0xD810,LSL#16
00050d5c: MOVK            W9, #0xFC61,LSL#16
00050d60: CSEL            W8, W8, W9, EQ
00050d64: B               loc_50C40
00050d68: CMP             W8, W22
00050d6c: B.LE            loc_50FD4
00050d70: MOV             W9, #0x6D7B339F
00050d78: CMP             W8, W9
00050d7c: B.GT            loc_511AC
00050d80: MOV             W9, #0x6455189F
00050d88: CMP             W8, W9
00050d8c: B.EQ            loc_512C8
00050d90: MOV             W9, #0x6CB97A05
00050d98: CMP             W8, W9
00050d9c: B.NE            loc_50C40
00050da0: LDR             W8, [X19,#0xC]
00050da4: MOV             W9, #0x2F5D7EE1
00050dac: STR             W8, [X19,#0xEC]
00050db0: LDR             W8, [X19,#0xEC]
00050db4: CMP             W8, #4
00050db8: MOV             W8, #0xB2D8DE37
00050dc0: CSEL            W8, W9, W8, LT
00050dc4: B               loc_50C40
00050dc8: MOV             W9, #0xA5ACECF5
00050dd0: CMP             W8, W9
00050dd4: B.LE            loc_50E78
00050dd8: MOV             W9, #0xB5FFBE58
00050de0: CMP             W8, W9
00050de4: B.GT            loc_51208
00050de8: MOV             W9, #0xA5ACECF6
00050df0: CMP             W8, W9
00050df4: B.EQ            loc_51608
00050df8: MOV             W9, #0xB2D8DE37
00050e00: CMP             W8, W9
00050e04: B.NE            loc_50C40
00050e08: ADRP            X8, #x_ptr@PAGE
00050e0c: LDR             X8, [X8,#x_ptr@PAGEOFF]; x
00050e10: ADRP            X9, #y_ptr@PAGE
00050e14: MOV             W11, #0xD077F03B
00050e1c: LDR             W8, [X8]
00050e20: LDR             X9, [X9,#y_ptr@PAGEOFF]; y
00050e24: SUB             W10, W8, W11
00050e28: SUB             W10, W10, #1
00050e2c: LDR             W9, [X9]
00050e30: ADD             W10, W10, W11
00050e34: MUL             W8, W10, W8
00050e38: EOR             W10, W8, #0xFFFFFFFE
00050e3c: TST             W10, W8
00050e40: CSET            W8, NE
00050e44: CMP             W9, #9
00050e48: CSET            W9, GT
00050e4c: EOR             W10, W9, W8
00050e50: ORR             W8, W9, W8
00050e54: EOR             W8, W8, #1
00050e58: ORR             W8, W10, W8
00050e5c: CMP             W8, #0
00050e60: MOV             W8, #0x33A0
00050e64: MOV             W9, #0x9EF0
00050e68: MOVK            W8, #0x6D7B,LSL#16
00050e6c: MOVK            W9, #0x4834,LSL#16
00050e70: CSEL            W8, W8, W9, NE
00050e74: B               loc_50C40
00050e78: MOV             W9, #0x88B0ED8A
00050e80: CMP             W8, W9
00050e84: B.EQ            loc_516AC
00050e88: MOV             W9, #0x93B5BC14
00050e90: CMP             W8, W9
00050e94: B.EQ            loc_51648
00050e98: MOV             W9, #0x9B095A33
00050ea0: CMP             W8, W9
00050ea4: B.NE            loc_50C40
00050ea8: LDR             W8, [X19,#0x8C]
00050eac: LDR             W8, [X19,#0x8C]
00050eb0: LDR             W8, [X19,#0x8C]
00050eb4: LDR             W8, [X19,#0x8C]
00050eb8: LDR             W8, [X19,#0x8C]
00050ebc: LDR             W8, [X19,#0x8C]
00050ec0: LDR             W8, [X19,#0x8C]
00050ec4: LDR             W8, [X19,#0x8C]
00050ec8: LDR             W8, [X19,#0x8C]
00050ecc: LDR             W8, [X19,#0x8C]
00050ed0: MOV             X9, SP
00050ed4: ADD             W8, W8, #0x19
00050ed8: SXTW            X8, W8
00050edc: ADD             X8, X8, #0xF
00050ee0: AND             X8, X8, #0xFFFFFFFFFFFFFFF0
00050ee4: SUB             X23, X9, X8
00050ee8: MOV             SP, X23
00050eec: ADRP            X1, #byte_F700C@PAGE
00050ef0: MOV             W2, #3
00050ef4: MOV             X0, X23
00050ef8: ADD             X1, X1, #byte_F700C@PAGEOFF
00050efc: BL              sub_554C
00050f00: MOV             W8, #0x500
00050f04: STURH           W8, [X23,#3]
00050f08: LDR             X1, [X19,#0x70]
00050f0c: ADD             X0, X23, #5
00050f10: MOV             W2, #0x10
00050f14: BL              sub_554C
00050f18: LDR             W8, [X19,#0x8C]
00050f1c: LDR             W8, [X19,#0x8C]
00050f20: ADD             X0, X23, #0x19
00050f24: LSR             W8, W8, #0x18
00050f28: STRB            W8, [X23,#0x15]
00050f2c: LDR             W8, [X19,#0x8C]
00050f30: LDR             W8, [X19,#0x8C]
00050f34: LSR             W8, W8, #0x10
00050f38: STRB            W8, [X23,#0x16]
00050f3c: LDR             W8, [X19,#0x8C]
00050f40: LDR             W8, [X19,#0x8C]
00050f44: LDR             W8, [X19,#0x8C]
00050f48: LSR             W8, W8, #8
00050f4c: STRB            W8, [X23,#0x17]
00050f50: LDR             W8, [X19,#0x8C]
00050f54: LDR             W8, [X19,#0x8C]
00050f58: LDR             W8, [X19,#0x8C]
00050f5c: LDR             W8, [X19,#0x8C]
00050f60: STRB            W8, [X23,#0x18]
00050f64: LDR             X1, [X19,#0xA0]
00050f68: LDR             X2, [X26]
00050f6c: MOV             W23, #0xC0E6BBC3
00050f74: BL              sub_554C
00050f78: MOV             W8, #0xC0E6BBC3
00050f80: B               loc_50C40
00050f84: MOV             W9, #0x3E4DD60
00050f8c: CMP             W8, W9
00050f90: B.EQ            loc_512D0
00050f94: MOV             W9, #0x162CA244
00050f9c: CMP             W8, W9
00050fa0: B.EQ            loc_50C34
00050fa4: MOV             W9, #0x22FEFA0C
00050fac: CMP             W8, W9
00050fb0: B.NE            loc_50C40
00050fb4: LDRB            W8, [X19,#0xEB]
00050fb8: MOV             W9, #0x162CA244
00050fc0: CMP             W8, #0
00050fc4: MOV             W8, #0xEFB0DE8A
00050fcc: CSEL            W8, W8, W9, NE
00050fd0: B               loc_50C40
00050fd4: MOV             W9, #0x490D27A5
00050fdc: CMP             W8, W9
00050fe0: B.EQ            loc_51710
00050fe4: MOV             W9, #0x4D12D504
00050fec: CMP             W8, W9
00050ff0: B.EQ            loc_5165C
00050ff4: MOV             W9, #0x573FA1BB
00050ffc: CMP             W8, W9
00051000: B.NE            loc_50C40
00051004: B               loc_50C20
00051008: CMP             W8, W23
0005100c: B.EQ            loc_517A8
00051010: MOV             W9, #0xD810A260
00051018: CMP             W8, W9
0005101c: B.EQ            loc_5168C
00051020: MOV             W9, #0xD8AE682D
00051028: CMP             W8, W9
0005102c: B.NE            loc_50C40
00051030: ADRP            X8, #x_ptr@PAGE
00051034: LDR             X8, [X8,#x_ptr@PAGEOFF]; x
00051038: ADRP            X9, #y_ptr@PAGE
0005103c: LDR             W8, [X8]
00051040: LDR             X9, [X9,#y_ptr@PAGEOFF]; y
00051044: SUB             W10, W8, #1
00051048: LDR             W9, [X9]
0005104c: MUL             W8, W10, W8
00051050: MVN             W8, W8
00051054: ORR             W8, W8, #0xFFFFFFFE
00051058: CMN             W8, #1
0005105c: CSET            W8, NE
00051060: CMP             W9, #9
00051064: CSET            W9, GT
00051068: EOR             W10, W9, W8
0005106c: ORR             W8, W9, W8
00051070: EOR             W8, W8, #1
00051074: ORR             W8, W10, W8
00051078: CMP             W8, #0
0005107c: MOV             W8, #0x93B5BC14
00051084: CSEL            W8, W24, W8, NE
00051088: B               loc_50C40
0005108c: MOV             W9, #0x3886CA73
00051094: CMP             W8, W9
00051098: B.EQ            loc_512E0
0005109c: MOV             W9, #0x48349EF0
000510a4: CMP             W8, W9
000510a8: B.NE            loc_50C40
000510ac: STRB            WZR, [X19,#0x28C]
000510b0: LDR             X1, [X19,#0x68]
000510b4: ADD             X0, X19, #0x268
000510b8: MOV             W2, #0x11
000510bc: BL              sub_554C
000510c0: SUB             X0, X29, #-var_100
000510c4: BL              sub_E458C
000510c8: ADRL            X8, xmmword_EA340
000510d0: LDP             Q1, Q0, [X8]
000510d4: ADD             X8, X19, #0x220
000510d8: MOVI            V2.2D, #0
000510dc: ADD             X0, X19, #0x240
000510e0: ADD             X1, X19, #0x220
000510e4: MOV             W2, #0x20 ; ' '
000510e8: STRB            WZR, [X19,#0x260]
000510ec: STP             Q2, Q2, [X8,#0x20]
000510f0: STP             Q1, Q0, [X8]
000510f4: BL              sub_7AE4
000510f8: LDR             W8, [X19,#0x34]
000510fc: LDR             W8, [X19,#0x34]
00051100: LDR             W8, [X19,#0x34]
00051104: LDR             W8, [X19,#0x34]
00051108: LDR             W8, [X19,#0x34]
0005110c: LDR             W9, [X19,#0x34]
00051110: MOV             W11, #0xB711
00051114: LDR             W9, [X19,#0x34]
00051118: ADD             W10, W8, #0xF
0005111c: CMP             W8, #0
00051120: CSEL            W10, W10, W8, LT
00051124: AND             W10, W10, #0xFFFFFFF0
00051128: MOVK            W11, #0xF7C5,LSL#16
0005112c: ADD             W10, W10, #0x10
00051130: ADD             W8, W8, W11
00051134: SUB             W8, W10, W8
00051138: ADD             W23, W8, W11
0005113c: ADD             W8, W9, W23
00051140: ADD             X8, X8, #0xF
00051144: AND             X8, X8, #0x1FFFFFFF0
00051148: MOV             X9, SP
0005114c: SUB             X24, X9, X8
00051150: MOV             SP, X24
00051154: LDR             X2, [X19,#0x50]
00051158: LDR             X1, [X19,#0x10]
0005115c: MOV             X0, X24
00051160: BL              sub_554C
00051164: LDR             X8, [X19,#0x50]
00051168: SXTW            X2, W23; n
0005116c: MOV             W1, W23; c
00051170: MOV             W23, #0xBBC3
00051174: ADD             X0, X24, X8; s
00051178: MOV             W24, #0xE5296D4C
00051180: MOVK            W23, #0xC0E6,LSL#16
00051184: BL              .memset
00051188: ADD             X0, X19, #0x100
0005118c: BL              sub_DFE70
00051190: ADD             X0, X19, #0x100
00051194: ADD             X1, X19, #0x240
00051198: MOV             W2, #0x100
0005119c: BL              sub_DFF28
000511a0: MOV             W8, #0x6D7B33A0
000511a8: B               loc_50C40
000511ac: MOV             W9, #0x6D7B33A0
000511b4: CMP             W8, W9
000511b8: B.EQ            loc_51388
000511bc: MOV             W9, #0x70B85062
000511c4: CMP             W8, W9
000511c8: B.NE            loc_50C40
000511cc: LDR             XZR, [X26,#0x18]
000511d0: LDR             X8, [X19,#0x18]
000511d4: STR             X8, [X19,#0x20]
000511d8: MOV             W8, #0xB5FFBE59
000511e0: B               loc_50C40
000511e4: MOV             W9, #0xF0588A76
000511ec: CMP             W8, W9
000511f0: B.EQ            loc_515A0
000511f4: MOV             W9, #0xFC61E6B7
000511fc: CMP             W8, W9
00051200: B.NE            loc_50C40
00051204: B               loc_50C34
00051208: MOV             W9, #0xB5FFBE59
00051210: CMP             W8, W9
00051214: B.EQ            loc_5122C
00051218: MOV             W9, #0xB6C6E6CD
00051220: CMP             W8, W9
00051224: B.NE            loc_50C40
00051228: B               loc_518F8
0005122c: LDR             X8, [X19,#0x20]
00051230: ADRP            X9, #y_ptr@PAGE
00051234: STR             X8, [X26,#0x38]
00051238: LDR             X8, [X19,#0xA8]
0005123c: ADRP            X8, #x_ptr@PAGE
00051240: LDR             X8, [X8,#x_ptr@PAGEOFF]; x
00051244: LDR             W8, [X8]
00051248: LDR             X9, [X9,#y_ptr@PAGEOFF]; y
0005124c: SUB             W10, W8, #1
00051250: LDR             W9, [X9]
00051254: MUL             W8, W10, W8
00051258: MVN             W8, W8
0005125c: ORR             W8, W8, #0xFFFFFFFE
00051260: CMN             W8, #1
00051264: CSET            W8, NE
00051268: CSET            W10, EQ
0005126c: CMP             W9, #9
00051270: CSET            W11, GT
00051274: CMP             W9, #0xA
00051278: CSET            W9, LT
0005127c: ORR             W8, W11, W8
00051280: EOR             W9, W9, W10
00051284: EOR             W8, W8, #1
00051288: ORR             W8, W9, W8
0005128c: CMP             W8, #0
00051290: MOV             W8, #0xD504
00051294: MOV             W9, #0x27A5
00051298: MOVK            W8, #0x4D12,LSL#16
0005129c: MOVK            W9, #0x490D,LSL#16
000512a0: CSEL            W8, W9, W8, NE
000512a4: B               loc_50C40
000512a8: LDRB            W8, [X19,#0xB3]
000512ac: MOV             W9, #0x6455189F
000512b4: CMP             W8, #0
000512b8: MOV             W8, #0xA5ACECF6
000512c0: CSEL            W8, W9, W8, NE
000512c4: B               loc_50C40
000512c8: ADD             X0, X19, #0x100; s
000512cc: BL              sub_DFE9C
000512d0: MOV             W8, #0xBE59
000512d4: STR             XZR, [X19,#0x20]
000512d8: MOVK            W8, #0xB5FF,LSL#16
000512dc: B               loc_50C40
000512e0: LDR             X8, [X19,#0x68]
000512e4: LDRSW           X9, [X19,#0xEC]
000512e8: LDRSW           X10, [X19,#0xEC]
000512ec: SUB             X11, X29, #-var_90
000512f0: ADRP            X1, #byte_F7004@PAGE
000512f4: ADD             X8, X8, X9,LSL#1
000512f8: LDRB            W2, [X11,X10]
000512fc: ADD             X0, X8, #8; s
00051300: ADD             X1, X1, #byte_F7004@PAGEOFF; format
00051304: BL              .sprintf
00051308: ADRP            X9, #x_ptr@PAGE
0005130c: LDR             W8, [X19,#0xEC]
00051310: LDR             X9, [X9,#x_ptr@PAGEOFF]; x
00051314: MOV             W11, #0xB62CF406
0005131c: ADD             W8, W8, W11
00051320: LDR             W9, [X9]
00051324: ADD             W8, W8, #1
00051328: SUB             W8, W8, W11
0005132c: NEG             W10, W9
00051330: MVN             W10, W10
00051334: MUL             W9, W10, W9
00051338: ADRP            X10, #y_ptr@PAGE
0005133c: LDR             X10, [X10,#y_ptr@PAGEOFF]; y
00051340: STR             W8, [X19,#0xB4]
00051344: EOR             W8, W9, #0xFFFFFFFE
00051348: TST             W8, W9
0005134c: LDR             W10, [X10]
00051350: CSET            W8, NE
00051354: CMP             W10, #9
00051358: CSET            W9, GT
0005135c: EOR             W10, W9, W8
00051360: ORR             W8, W9, W8
00051364: EOR             W8, W8, #1
00051368: ORR             W8, W10, W8
0005136c: CMP             W8, #0
00051370: MOV             W8, #0xED8A
00051374: MOV             W9, #0xA1BB
00051378: MOVK            W8, #0x88B0,LSL#16
0005137c: MOVK            W9, #0x573F,LSL#16
00051380: CSEL            W8, W9, W8, NE
00051384: B               loc_50C40
00051388: ADD             X8, X19, #0x268
0005138c: STRB            WZR, [X19,#0x28C]
00051390: STR             X8, [X19,#0x70]
00051394: LDR             X1, [X19,#0x68]
00051398: LDR             X0, [X19,#0x70]
0005139c: MOV             W2, #0x11
000513a0: BL              sub_554C
000513a4: SUB             X0, X29, #-var_100
000513a8: BL              sub_E458C
000513ac: ADD             X8, X19, #0x240
000513b0: STR             X8, [X19,#0x78]
000513b4: LDR             X8, [X19,#0x78]
000513b8: LDR             X8, [X19,#0x78]
000513bc: MOVI            V0.2D, #0
000513c0: ADRL            X9, xmmword_EA340
000513c8: STRB            WZR, [X8,#0x20]
000513cc: STP             Q0, Q0, [X8]
000513d0: ADD             X8, X19, #0x220
000513d4: STR             X8, [X19,#0x80]
000513d8: LDR             X8, [X19,#0x80]
000513dc: LDR             X8, [X19,#0x80]
000513e0: LDP             Q0, Q1, [X9]
000513e4: ADD             X0, X19, #0x240
000513e8: ADD             X1, X19, #0x220
000513ec: MOV             W2, #0x20 ; ' '
000513f0: STP             Q0, Q1, [X8]
000513f4: BL              sub_7AE4
000513f8: LDR             W8, [X19,#0x34]
000513fc: LDR             W9, [X19,#0x34]
00051400: ADD             W10, W8, #0xF
00051404: CMP             W8, #0
00051408: CSEL            W10, W10, W8, LT
0005140c: AND             W10, W10, #0xFFFFFFF0
00051410: SUB             W8, W10, W8
00051414: ADD             W23, W8, #0x10
00051418: ADD             W8, W23, W9
0005141c: STR             W8, [X19,#0x8C]
00051420: LDR             W8, [X19,#0x8C]
00051424: MOV             X9, SP
00051428: STR             X9, [X19,#0x90]
0005142c: MOV             X9, SP
00051430: ADD             X8, X8, #0xF
00051434: AND             X24, X8, #0x1FFFFFFF0
00051438: SUB             X8, X9, X24
0005143c: MOV             SP, X8
00051440: STR             X8, [X19,#0x98]
00051444: LDR             X2, [X19,#0x50]
00051448: LDR             X0, [X19,#0x98]
0005144c: LDR             X1, [X19,#0x10]
00051450: BL              sub_554C
00051454: LDR             X8, [X19,#0x50]
00051458: LDR             X9, [X19,#0x98]
0005145c: SXTW            X2, W23; n
00051460: MOV             W1, W23; c
00051464: MOV             W23, #0xBBC3
00051468: ADD             X0, X9, X8; s
0005146c: MOVK            W23, #0xC0E6,LSL#16
00051470: BL              .memset
00051474: MOV             X8, SP
00051478: SUB             X8, X8, X24
0005147c: MOV             W24, #0xE5296D4C
00051484: MOV             SP, X8
00051488: STR             X8, [X19,#0xA0]
0005148c: ADD             X8, X19, #0x100
00051490: STR             X8, [X19,#0xA8]
00051494: LDR             X8, [X19,#0xA8]
00051498: ADD             X0, X19, #0x100
0005149c: BL              sub_DFE70
000514a0: ADD             X0, X19, #0x100
000514a4: ADD             X1, X19, #0x240
000514a8: MOV             W2, #0x100
000514ac: BL              sub_DFF28
000514b0: ADRP            X8, #x_ptr@PAGE
000514b4: LDR             X8, [X8,#x_ptr@PAGEOFF]; x
000514b8: ADRP            X9, #y_ptr@PAGE
000514bc: CMP             W0, #0
000514c0: CSET            W10, NE
000514c4: LDR             W8, [X8]
000514c8: LDR             X9, [X9,#y_ptr@PAGEOFF]; y
000514cc: STRB            W10, [X19,#0xB3]
000514d0: SUB             W10, W8, #1
000514d4: LDR             W9, [X9]
000514d8: MUL             W8, W10, W8
000514dc: EOR             W10, W8, #0xFFFFFFFE
000514e0: TST             W10, W8
000514e4: CSET            W8, NE
000514e8: CSET            W10, EQ
000514ec: CMP             W9, #9
000514f0: CSET            W11, GT
000514f4: CMP             W9, #0xA
000514f8: CSET            W9, LT
000514fc: ORR             W8, W11, W8
00051500: EOR             W9, W9, W10
00051504: EOR             W8, W8, #1
00051508: ORR             W8, W9, W8
0005150c: CMP             W8, #0
00051510: MOV             W8, #0x9EF0
00051514: MOV             W9, #0x1E54
00051518: MOVK            W8, #0x4834,LSL#16
0005151c: MOVK            W9, #0x2956,LSL#16
00051520: CSEL            W8, W9, W8, NE
00051524: B               loc_50C40
00051528: ADD             X0, X19, #0x100; s
0005152c: BL              sub_DFE9C
00051530: ADRP            X8, #x_ptr@PAGE
00051534: LDR             X8, [X8,#x_ptr@PAGEOFF]; x
00051538: ADRP            X9, #y_ptr@PAGE
0005153c: MOV             W11, #0xD0E3FA04
00051544: LDR             W8, [X8]
00051548: LDR             X9, [X9,#y_ptr@PAGEOFF]; y
0005154c: SUB             W10, W8, W11
00051550: SUB             W10, W10, #1
00051554: LDR             W9, [X9]
00051558: ADD             W10, W10, W11
0005155c: MUL             W8, W10, W8
00051560: EOR             W10, W8, #0xFFFFFFFE
00051564: TST             W10, W8
00051568: CSET            W8, NE
0005156c: CMP             W9, #9
00051570: CSET            W9, GT
00051574: EOR             W10, W9, W8
00051578: ORR             W8, W9, W8
0005157c: EOR             W8, W8, #1
00051580: ORR             W8, W10, W8
00051584: CMP             W8, #0
00051588: MOV             W8, #0xBC14
0005158c: MOV             W9, #0xDD60
00051590: MOVK            W8, #0x93B5,LSL#16
00051594: MOVK            W9, #0x3E4,LSL#16
00051598: CSEL            W8, W9, W8, NE
0005159c: B               loc_50C40
000515a0: ADRP            X8, #x_ptr@PAGE
000515a4: LDR             X8, [X8,#x_ptr@PAGEOFF]; x
000515a8: ADRP            X9, #y_ptr@PAGE
000515ac: LDR             W8, [X8]
000515b0: LDR             X9, [X9,#y_ptr@PAGEOFF]; y
000515b4: NEG             W10, W8
000515b8: LDR             W9, [X9]
000515bc: MVN             W10, W10
000515c0: MUL             W8, W10, W8
000515c4: EOR             W10, W8, #0xFFFFFFFE
000515c8: TST             W10, W8
000515cc: CSET            W8, NE
000515d0: CSET            W10, EQ
000515d4: CMP             W9, #9
000515d8: CSET            W11, GT
000515dc: CMP             W9, #0xA
000515e0: CSET            W9, LT
000515e4: ORR             W8, W11, W8
000515e8: EOR             W9, W9, W10
000515ec: EOR             W8, W8, #1
000515f0: ORR             W8, W9, W8
000515f4: CMP             W8, #0
000515f8: MOV             W8, #0x9B095A33
00051600: CSEL            W8, W23, W8, NE
00051604: B               loc_50C40
00051608: LDRSW           X8, [X19,#0x8C]
0005160c: ADD             X0, X19, #0x100
00051610: MOV             W1, #1
00051614: STR             X8, [X26]
00051618: LDR             X3, [X19,#0x68]
0005161c: LDR             X4, [X19,#0x98]
00051620: LDR             X5, [X19,#0xA0]
00051624: LDR             X2, [X26]
00051628: BL              sub_E3418
0005162c: MOV             W8, #0x682D
00051630: MOV             W9, #0x8A76
00051634: CMP             W0, #0
00051638: MOVK            W8, #0xD8AE,LSL#16
0005163c: MOVK            W9, #0xF058,LSL#16
00051640: CSEL            W8, W9, W8, EQ
00051644: B               loc_50C40
00051648: ADD             X0, X19, #0x100; s
0005164c: BL              sub_DFE9C
00051650: MOV             W8, #0xE5296D4C
00051658: B               loc_50C40
0005165c: LDR             X8, [X19,#0x90]
00051660: MOV             SP, X8
00051664: LDR             X8, [X19,#0x80]
00051668: LDR             X8, [X19,#0x78]
0005166c: LDR             X8, [X19,#0x60]
00051670: LDR             X8, [X19,#0x58]
00051674: LDR             X8, [X19,#0x48]
00051678: LDR             X8, [X19,#0x40]
0005167c: LDR             X8, [X19,#0x38]
00051680: MOV             W8, #0x490D27A5
00051688: B               loc_50C40
0005168c: LDR             X8, [X26,#0x40]
00051690: LDR             X9, [X26,#0x28]
00051694: STRB            WZR, [X9,X8]
00051698: LDR             X8, [X26,#0x28]
0005169c: STR             X8, [X19,#0x18]
000516a0: MOV             W8, #0x70B85062
000516a8: B               loc_50C40
000516ac: LDR             X8, [X19,#0x68]
000516b0: LDR             W9, [X19,#0xEC]
000516b4: LDR             W9, [X19,#0xEC]
000516b8: LDR             W9, [X19,#0xEC]
000516bc: LDR             W9, [X19,#0xEC]
000516c0: LDR             W9, [X19,#0xEC]
000516c4: LDR             W9, [X19,#0xEC]
000516c8: LDRSW           X9, [X19,#0xEC]
000516cc: LDRSW           X10, [X19,#0xEC]
000516d0: SUB             X11, X29, #-var_90
000516d4: ADRP            X1, #byte_F7004@PAGE
000516d8: ADD             X8, X8, X9,LSL#1
000516dc: LDRB            W2, [X11,X10]
000516e0: ADD             X0, X8, #8; s
000516e4: ADD             X1, X1, #byte_F7004@PAGEOFF; format
000516e8: BL              .sprintf
000516ec: LDR             W8, [X19,#0xEC]
000516f0: LDR             W8, [X19,#0xEC]
000516f4: LDR             W8, [X19,#0xEC]
000516f8: LDR             W8, [X19,#0xEC]
000516fc: LDR             W8, [X19,#0xEC]
00051700: LDR             W8, [X19,#0xEC]
00051704: MOV             W8, #0x3886CA73
0005170c: B               loc_50C40
00051710: LDR             X8, [X19,#0x90]
00051714: MOV             SP, X8
00051718: LDR             X8, [X19,#0x80]
0005171c: LDR             X8, [X19,#0x78]
00051720: LDR             X8, [X19,#0x60]
00051724: LDR             X8, [X19,#0x58]
00051728: LDR             X8, [X19,#0x48]
0005172c: LDR             X8, [X19,#0x40]
00051730: LDR             X8, [X19,#0x38]
00051734: ADRP            X8, #x_ptr@PAGE
00051738: LDR             X8, [X8,#x_ptr@PAGEOFF]; x
0005173c: ADRP            X9, #y_ptr@PAGE
00051740: LDR             W8, [X8]
00051744: LDR             X9, [X9,#y_ptr@PAGEOFF]; y
00051748: NEG             W10, W8
0005174c: MVN             W10, W10
00051750: LDR             W9, [X9]
00051754: MUL             W8, W10, W8
00051758: MVN             W8, W8
0005175c: ORR             W8, W8, #0xFFFFFFFE
00051760: CMN             W8, #1
00051764: CSET            W8, NE
00051768: CSET            W10, EQ
0005176c: CMP             W9, #9
00051770: CSET            W11, GT
00051774: CMP             W9, #0xA
00051778: CSET            W9, LT
0005177c: ORR             W8, W11, W8
00051780: EOR             W9, W9, W10
00051784: EOR             W8, W8, #1
00051788: ORR             W8, W9, W8
0005178c: CMP             W8, #0
00051790: MOV             W8, #0xD504
00051794: MOV             W9, #0xE6CD
00051798: MOVK            W8, #0x4D12,LSL#16
0005179c: MOVK            W9, #0xB6C6,LSL#16
000517a0: CSEL            W8, W9, W8, NE
000517a4: B               loc_50C40
000517a8: LDR             W8, [X19,#0x8C]
000517ac: MOV             X9, SP
000517b0: ADD             W8, W8, #0x19
000517b4: SXTW            X8, W8
000517b8: STR             X8, [X26,#8]
000517bc: LDR             X8, [X26,#8]
000517c0: ADD             X8, X8, #0xF
000517c4: AND             X8, X8, #0xFFFFFFFFFFFFFFF0
000517c8: SUB             X8, X9, X8
000517cc: MOV             SP, X8
000517d0: STR             X8, [X26,#0x10]
000517d4: LDR             X0, [X26,#0x10]
000517d8: ADRP            X1, #byte_F700C@PAGE
000517dc: MOV             W2, #3
000517e0: ADD             X1, X1, #byte_F700C@PAGEOFF
000517e4: BL              sub_554C
000517e8: LDR             X8, [X26,#0x10]
000517ec: MOV             W9, #5
000517f0: MOV             W2, #0x10
000517f4: STRB            WZR, [X8,#3]
000517f8: LDR             X8, [X26,#0x10]
000517fc: STRB            W9, [X8,#4]
00051800: LDR             X8, [X26,#0x10]
00051804: LDR             X1, [X19,#0x70]
00051808: ADD             X0, X8, #5
0005180c: BL              sub_554C
00051810: LDR             W8, [X19,#0x8C]
00051814: LDR             X9, [X26,#0x10]
00051818: LSR             W8, W8, #0x18
0005181c: STRB            W8, [X9,#0x15]
00051820: LDR             W8, [X19,#0x8C]
00051824: LDR             X9, [X26,#0x10]
00051828: LSR             W8, W8, #0x10
0005182c: STRB            W8, [X9,#0x16]
00051830: LDR             W8, [X19,#0x8C]
00051834: LDR             X9, [X26,#0x10]
00051838: LSR             W8, W8, #8
0005183c: STRB            W8, [X9,#0x17]
00051840: LDR             W8, [X19,#0x8C]
00051844: LDR             X9, [X26,#0x10]
00051848: STRB            W8, [X9,#0x18]
0005184c: LDR             X8, [X26,#0x10]
00051850: LDR             X1, [X19,#0xA0]
00051854: LDR             X2, [X26]
00051858: ADD             X0, X8, #0x19
0005185c: BL              sub_554C
00051860: ADD             X8, X19, #0xF8
00051864: STR             X8, [X26,#0x18]
00051868: LDR             XZR, [X26,#0x18]
0005186c: LDR             X8, [X26,#8]
00051870: LSL             X8, X8, #1
00051874: STR             X8, [X26,#0x20]
00051878: LDR             X0, [X26,#0x20]; size
0005187c: BL              .malloc
00051880: STR             X0, [X26,#0x28]
00051884: ADRP            X9, #x_ptr@PAGE
00051888: LDR             X8, [X26,#0x28]
0005188c: LDR             X9, [X9,#x_ptr@PAGEOFF]; x
00051890: ADRP            X10, #y_ptr@PAGE
00051894: CMP             X8, #0
00051898: LDR             W9, [X9]
0005189c: LDR             X10, [X10,#y_ptr@PAGEOFF]; y
000518a0: CSET            W8, NE
000518a4: STRB            W8, [X19,#0xEB]
000518a8: NEG             W8, W9
000518ac: MVN             W8, W8
000518b0: LDR             W10, [X10]
000518b4: MUL             W8, W8, W9
000518b8: MVN             W8, W8
000518bc: ORR             W8, W8, #0xFFFFFFFE
000518c0: CMN             W8, #1
000518c4: CSET            W8, EQ
000518c8: CMP             W10, #0xA
000518cc: CSET            W9, LT
000518d0: AND             W10, W9, W8
000518d4: EOR             W8, W9, W8
000518d8: ORR             W8, W10, W8
000518dc: CMP             W8, #0
000518e0: MOV             W8, #0x5A33
000518e4: MOV             W9, #0xFA0C
000518e8: MOVK            W8, #0x9B09,LSL#16
000518ec: MOVK            W9, #0x22FE,LSL#16
000518f0: CSEL            W8, W9, W8, NE
000518f4: B               loc_50C40
000518f8: LDR             X0, [X26,#0x38]
000518fc: LDR             X8, [X19]
00051900: ADD             X9, X19, #0x220
00051904: LDR             X8, [X8,#0x28]
00051908: LDR             X9, [X9,#0x108]
0005190c: CMP             X8, X9
00051910: B.NE            loc_51934
00051914: SUB             SP, X29, #0x50 ; 'P'
00051918: LDP             X29, X30, [SP,#0x50+var_s0]
0005191c: LDP             X20, X19, [SP,#0x50+var_10]
00051920: LDP             X22, X21, [SP,#0x50+var_20]
00051924: LDP             X24, X23, [SP,#0x50+var_30]
00051928: LDP             X26, X25, [SP,#0x50+var_40]
0005192c: LDP             X28, X27, [SP+0x50+var_50],#0x60
00051930: RET
00051934: BL              .__stack_chk_fail