00024744: SUB             SP, SP, #0x110
00024748: STP             X28, X27, [SP,#0x100+var_50]
0002474c: STP             X26, X25, [SP,#0x100+var_40]
00024750: STP             X24, X23, [SP,#0x100+var_30]
00024754: STP             X22, X21, [SP,#0x100+var_20]
00024758: STP             X20, X19, [SP,#0x100+var_10]
0002475c: STP             X29, X30, [SP,#0x100+var_s0]
00024760: ADD             X29, SP, #0x100
00024764: STR             X3, [SP,#0x100+var_F0]
00024768: MRS             X8, TPIDR_EL0
0002476c: STR             X8, [SP,#0x100+var_100]
00024770: LDR             X8, [X8,#0x28]
00024774: MOV             X21, X0
00024778: STUR            X8, [X29,#var_60]
0002477c: STR             X1, [SP,#0x100+var_F8]
00024780: BL              sub_18944
00024784: MOV             W23, #0x79D4
00024788: MOV             W25, #0xEC06
0002478c: MOV             W26, #0x8528
00024790: MOV             W28, #0x8A84
00024794: MOV             W27, #0x2887
00024798: MOV             W22, #0xEF72
0002479c: MOV             W11, #0x8A85
000247a0: MOVK            W23, #0xFA53,LSL#16
000247a4: MOVK            W25, #0xC46A,LSL#16
000247a8: MOVK            W26, #0xA45D,LSL#16
000247ac: MOVK            W28, #0xDD6C,LSL#16
000247b0: MOVK            W27, #0x4FB7,LSL#16
000247b4: MOVK            W22, #0x629A,LSL#16
000247b8: MOVK            W11, #0xDD6C,LSL#16
000247bc: STR             X0, [SP,#0x100+var_E0]
000247c0: B               loc_247CC
000247c4: MOV             W8, W20
000247c8: MOV             W10, W19
000247cc: MOV             W9, W11
000247d0: CMP             W11, W23
000247d4: MOV             W19, W10
000247d8: MOV             W20, W8
000247dc: B.GT            loc_2486C
000247e0: CMP             W9, W25
000247e4: B.GT            loc_24974
000247e8: CMP             W9, W26
000247ec: B.GT            loc_24A30
000247f0: MOV             W8, #0x82AE833F
000247f8: CMP             W9, W8
000247fc: B.EQ            loc_24B90
00024800: MOV             W8, #0x8F91D877
00024808: CMP             W9, W8
0002480c: MOV             W8, W20
00024810: MOV             W10, W19
00024814: MOV             W11, W9
00024818: B.NE            loc_247CC
0002481c: LDR             X8, [SP,#0x100+var_E0]
00024820: ADRP            X2, #qword_F3168@PAGE
00024824: ADRP            X3, #xmmword_F3150@PAGE
00024828: MOV             X0, X21
0002482c: STR             X8, [SP,#0x100+var_D8]
00024830: LDR             X8, [SP,#0x100+var_D8]
00024834: LDR             X9, [X21]
00024838: ADD             X2, X2, #qword_F3168@PAGEOFF
0002483c: ADD             X3, X3, #xmmword_F3150@PAGEOFF
00024840: LDR             X1, [X8]
00024844: LDR             X8, [X9,#0x2F0]
00024848: BLR             X8
0002484c: STR             X0, [SP,#0x100+var_D0]
00024850: LDR             X8, [SP,#0x100+var_D0]
00024854: MOV             W9, #0xA45D8529
0002485c: CMP             X8, #0
00024860: MOV             W8, #0x6FD1108F
00024868: B               loc_24C28
0002486c: CMP             W9, W27
00024870: B.LE            loc_249B0
00024874: CMP             W9, W22
00024878: B.GT            loc_24AD8
0002487c: MOV             W8, #0x4FB72888
00024884: MOV             W11, #0xEF73
00024888: CMP             W9, W8
0002488c: MOV             W8, W20
00024890: MOV             W10, W24
00024894: MOVK            W11, #0x629A,LSL#16
00024898: B.EQ            loc_247CC
0002489c: MOV             W8, #0x568B9A03
000248a4: CMP             W9, W8
000248a8: MOV             W8, W20
000248ac: MOV             W10, W19
000248b0: MOV             W11, W9
000248b4: B.NE            loc_247CC
000248b8: LDR             X8, [SP,#0x100+var_B0]
000248bc: MOV             X9, #0x20C49BA5E353F7CF
000248cc: SMULH           X8, X8, X9
000248d0: ASR             X9, X8, #7
000248d4: MOVI            V0.2D, #0
000248d8: ADD             X8, X9, X8,LSR#63
000248dc: ADD             X0, SP, #0x100+timer; timer
000248e0: STP             Q0, Q0, [SP,#0x100+var_80]
000248e4: STR             X8, [SP,#0x100+timer]
000248e8: STP             Q0, Q0, [SP,#0x100+s]
000248ec: BL              .gmtime
000248f0: ADRP            X2, #xmmword_F3180@PAGE
000248f4: MOV             X3, X0; tp
000248f8: ADD             X0, SP, #0x100+s; s
000248fc: MOV             W1, #0x40 ; '@'; maxsize
00024900: ADD             X2, X2, #xmmword_F3180@PAGEOFF; format
00024904: BL              .strftime
00024908: LDR             X24, [SP,#0x100+var_F0]
0002490c: ADRP            X1, #byte_F3194@PAGE
00024910: ADD             X2, SP, #0x100+s
00024914: ADD             X1, X1, #byte_F3194@PAGEOFF
00024918: MOV             X0, X24
0002491c: BL              sub_13C74
00024920: LDR             X3, [SP,#0x100+var_C0]
00024924: ADRP            X2, #byte_F319C@PAGE
00024928: MOV             X0, X21
0002492c: MOV             X1, X24
00024930: ADD             X2, X2, #byte_F319C@PAGEOFF
00024934: BL              sub_13D7C
00024938: LDR             X2, [SP,#0x100+var_E0]
0002493c: LDR             X1, [SP,#0x100+var_F8]
00024940: MOV             X0, X21
00024944: BL              sub_24CD4
00024948: ADRP            X2, #byte_F31A4@PAGE
0002494c: MOV             X3, X0
00024950: MOV             X0, X21
00024954: MOV             X1, X24
00024958: ADD             X2, X2, #byte_F31A4@PAGEOFF
0002495c: BL              sub_13D7C
00024960: LDR             X1, [SP,#0x100+var_E0]
00024964: MOV             X0, X21
00024968: BL              sub_10C30
0002496c: MOV             W24, WZR
00024970: B               loc_24A1C
00024974: CMP             W9, W28
00024978: B.GT            loc_24A64
0002497c: MOV             W8, #0xC46AEC07
00024984: CMP             W9, W8
00024988: B.EQ            loc_24BB8
0002498c: MOV             W8, #0xC74C62CE
00024994: CMP             W9, W8
00024998: MOV             W8, W20
0002499c: MOV             W10, W19
000249a0: MOV             W11, W9
000249a4: B.NE            loc_247CC
000249a8: LDR             W8, [SP,#0x100+var_E4]
000249ac: B               loc_24C34
000249b0: MOV             W8, #0x2E1D1D97
000249b8: CMP             W9, W8
000249bc: B.GT            loc_24B60
000249c0: MOV             W8, #0xFA5379D5
000249c8: CMP             W9, W8
000249cc: B.EQ            loc_24C4C
000249d0: MOV             W8, #0xFBE4F6A3
000249d8: CMP             W9, W8
000249dc: MOV             W8, W20
000249e0: MOV             W10, W19
000249e4: MOV             W11, W9
000249e8: B.NE            loc_247CC
000249ec: LDR             X8, [X21]
000249f0: MOV             X0, X21
000249f4: LDR             X8, [X8,#0x80]
000249f8: BLR             X8
000249fc: LDR             X8, [X21]
00024a00: MOV             X0, X21
00024a04: LDR             X8, [X8,#0x88]
00024a08: BLR             X8
00024a0c: LDR             X1, [SP,#0x100+var_E0]
00024a10: MOV             X0, X21
00024a14: BL              sub_10C30
00024a18: MOV             W24, #0xFFFFFFFF
00024a1c: MOV             W11, #0x2888
00024a20: MOV             W8, W20
00024a24: MOV             W10, W19
00024a28: MOVK            W11, #0x4FB7,LSL#16
00024a2c: B               loc_247CC
00024a30: MOV             W8, #0xA45D8529
00024a38: CMP             W9, W8
00024a3c: B.EQ            loc_24BE0
00024a40: MOV             W8, #0xC3ABC8FA
00024a48: CMP             W9, W8
00024a4c: MOV             W8, W20
00024a50: MOV             W10, W19
00024a54: MOV             W11, W9
00024a58: B.NE            loc_247CC
00024a5c: STR             W20, [SP,#0x100+var_E4]
00024a60: B               loc_24BFC
00024a64: MOV             W8, #0xDD6C8A85
00024a6c: CMP             W9, W8
00024a70: B.EQ            loc_24C10
00024a74: MOV             W8, #0xDF5A09E7
00024a7c: CMP             W9, W8
00024a80: MOV             W8, W20
00024a84: MOV             W10, W19
00024a88: MOV             W11, W9
00024a8c: B.NE            loc_247CC
00024a90: LDR             X8, [SP,#0x100+var_C8]
00024a94: MOV             X0, X21
00024a98: LDR             X1, [X8]
00024a9c: LDR             X2, [SP,#0x100+var_B8]
00024aa0: LDR             X8, [X21]
00024aa4: LDR             X8, [X8,#0x328]
00024aa8: BLR             X8
00024aac: STR             X0, [SP,#0x100+var_B0]
00024ab0: LDR             X8, [X21]
00024ab4: MOV             X0, X21
00024ab8: LDR             X8, [X8,#0x720]
00024abc: BLR             X8
00024ac0: MOV             W8, #0xF6A3
00024ac4: MOV             W9, #0x9A03
00024ac8: TST             W0, #0xFF
00024acc: MOVK            W8, #0xFBE4,LSL#16
00024ad0: MOVK            W9, #0x568B,LSL#16
00024ad4: B               loc_24C28
00024ad8: MOV             W8, #0x629AEF73
00024ae0: MOV             W11, #0xC8FA
00024ae4: CMP             W9, W8
00024ae8: MOV             W8, W19
00024aec: MOV             W10, W19
00024af0: MOVK            W11, #0xC3AB,LSL#16
00024af4: B.EQ            loc_247CC
00024af8: MOV             W8, #0x6FD1108F
00024b00: CMP             W9, W8
00024b04: MOV             W8, W20
00024b08: MOV             W10, W19
00024b0c: MOV             W11, W9
00024b10: B.NE            loc_247CC
00024b14: LDR             X8, [SP,#0x100+var_E0]
00024b18: MOV             X0, X21
00024b1c: ADD             X8, X8, #8
00024b20: STR             X8, [SP,#0x100+var_C8]
00024b24: LDR             X8, [SP,#0x100+var_C8]
00024b28: LDR             X1, [X8]
00024b2c: LDR             X2, [SP,#0x100+var_D0]
00024b30: LDR             X8, [X21]
00024b34: LDR             X8, [X8,#0x2F8]
00024b38: BLR             X8
00024b3c: STR             X0, [SP,#0x100+var_C0]
00024b40: LDR             X8, [SP,#0x100+var_C0]
00024b44: MOV             W9, #0xFA5379D5
00024b4c: CMP             X8, #0
00024b50: MOV             W8, #0x82AE833F
00024b58: CSEL            W11, W8, W9, EQ
00024b5c: B               loc_247C4
00024b60: MOV             W8, #0x2FEEF6E5
00024b68: CMP             W9, W8
00024b6c: B.EQ            loc_24C30
00024b70: MOV             W8, #0x2E1D1D98
00024b78: CMP             W9, W8
00024b7c: MOV             W8, W20
00024b80: MOV             W10, W19
00024b84: MOV             W11, W9
00024b88: B.NE            loc_247CC
00024b8c: B               loc_24C98
00024b90: MOV             X0, X21
00024b94: BL              sub_B6D0
00024b98: LDR             X1, [SP,#0x100+var_E0]
00024b9c: MOV             X0, X21
00024ba0: BL              sub_10C30
00024ba4: MOV             W11, #0xC8FA
00024ba8: MOV             W8, #0xFFFFFFFF
00024bac: MOV             W10, W19
00024bb0: MOVK            W11, #0xC3AB,LSL#16
00024bb4: B               loc_247CC
00024bb8: MOV             X0, X21
00024bbc: BL              sub_B6D0
00024bc0: LDR             X1, [SP,#0x100+var_E0]
00024bc4: MOV             X0, X21
00024bc8: BL              sub_10C30
00024bcc: MOV             W11, #0xEF73
00024bd0: MOV             W10, #0xFFFFFFFF
00024bd4: MOV             W8, W20
00024bd8: MOVK            W11, #0x629A,LSL#16
00024bdc: B               loc_247CC
00024be0: MOV             X0, X21
00024be4: BL              sub_B6D0
00024be8: LDR             X1, [SP,#0x100+var_E0]
00024bec: MOV             X0, X21
00024bf0: BL              sub_10C30
00024bf4: MOV             W8, #0xFFFFFFFF
00024bf8: STR             W8, [SP,#0x100+var_E4]
00024bfc: MOV             W11, #0x62CE
00024c00: MOV             W8, W20
00024c04: MOV             W10, W19
00024c08: MOVK            W11, #0xC74C,LSL#16
00024c0c: B               loc_247CC
00024c10: LDR             X8, [SP,#0x100+var_E0]
00024c14: MOV             W9, #0x2FEEF6E5
00024c1c: CMP             X8, #0
00024c20: MOV             W8, #0x8F91D877
00024c28: CSEL            W11, W9, W8, EQ
00024c2c: B               loc_247C4
00024c30: MOV             W8, #0xFFFFFFFF
00024c34: MOV             W11, #0x1D98
00024c38: STR             W8, [SP,#0x100+var_E8]
00024c3c: MOV             W8, W20
00024c40: MOV             W10, W19
00024c44: MOVK            W11, #0x2E1D,LSL#16
00024c48: B               loc_247CC
00024c4c: LDR             X8, [SP,#0x100+var_D8]
00024c50: LDR             X9, [X21]
00024c54: ADRP            X2, #xmmword_F2E20@PAGE
00024c58: ADRP            X3, #byte_F2E34@PAGE
00024c5c: LDR             X1, [X8]
00024c60: LDR             X8, [X9,#0x2F0]
00024c64: MOV             X0, X21
00024c68: ADD             X2, X2, #xmmword_F2E20@PAGEOFF
00024c6c: ADD             X3, X3, #byte_F2E34@PAGEOFF
00024c70: BLR             X8
00024c74: STR             X0, [SP,#0x100+var_B8]
00024c78: LDR             X8, [SP,#0x100+var_B8]
00024c7c: MOV             W9, #0xDF5A09E7
00024c84: CMP             X8, #0
00024c88: MOV             W8, #0xC46AEC07
00024c90: CSEL            W11, W8, W9, EQ
00024c94: B               loc_247C4
00024c98: LDR             X8, [SP,#0x100+var_100]
00024c9c: LDR             X8, [X8,#0x28]
00024ca0: LDUR            X9, [X29,#var_60]
00024ca4: CMP             X8, X9
00024ca8: B.NE            loc_24CD0
00024cac: LDR             W0, [SP,#0x100+var_E8]
00024cb0: LDP             X29, X30, [SP,#0x100+var_s0]
00024cb4: LDP             X20, X19, [SP,#0x100+var_10]
00024cb8: LDP             X22, X21, [SP,#0x100+var_20]
00024cbc: LDP             X24, X23, [SP,#0x100+var_30]
00024cc0: LDP             X26, X25, [SP,#0x100+var_40]
00024cc4: LDP             X28, X27, [SP,#0x100+var_50]
00024cc8: ADD             SP, SP, #0x110
00024ccc: RET
00024cd0: BL              .__stack_chk_fail