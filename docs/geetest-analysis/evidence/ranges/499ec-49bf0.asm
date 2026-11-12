000499ec: SUB             SP, SP, #0x120
000499f0: STP             X28, X27, [SP,#0x110+var_50]
000499f4: STP             X26, X25, [SP,#0x110+var_40]
000499f8: STP             X24, X23, [SP,#0x110+var_30]
000499fc: STP             X22, X21, [SP,#0x110+var_20]
00049a00: STP             X20, X19, [SP,#0x110+var_10]
00049a04: STP             X29, X30, [SP,#0x110+var_s0]
00049a08: ADD             X29, SP, #0x110
00049a0c: ADRL            X2, qword_F6AB0 ; runtime: 0xf6ab0='connectivity'
00049a10: ADRL            X2, qword_F6AB0 ; runtime: 0xf6ab0='connectivity'
00049a14: MOV             X19, X0
00049a18: BL              sub_1723C
00049a1c: MOV             W27, #0x995F
00049a20: MOV             W28, #0xF361
00049a24: MOV             W26, #0xBAE1
00049a28: MOV             W23, #0x82C3
00049a2c: MOV             W21, #0xA0
00049a30: MOV             W24, #0xE9A4
00049a34: MOV             W20, #0xB241
00049a38: STR             X0, [SP,#0x110+var_C0]
00049a3c: MOVK            W27, #0xC33,LSL#16
00049a40: MOVK            W28, #0xC39D,LSL#16
00049a44: MOVK            W26, #0xEAE4,LSL#16
00049a48: MOVK            W23, #0x47C6,LSL#16
00049a4c: MOVK            W21, #0x28B7,LSL#16
00049a50: MOVK            W24, #0x6116,LSL#16
00049a54: MOVK            W20, #0x1416,LSL#16
00049a58: B               loc_49A68
00049a5c: MOV             W20, #0x5E50
00049a60: MOV             X0, X25
00049a64: MOVK            W20, #0x4CFE,LSL#16
00049a68: MOV             W8, W20
00049a6c: CMP             W20, W27
00049a70: MOV             X25, X0
00049a74: B.GT            loc_49B00
00049a78: CMP             W8, W28
00049a7c: B.GT            loc_49B7C
00049a80: MOV             W9, #0xA2CC992A
00049a84: MOV             W9, #0xA2CC992A
00049a88: CMP             W8, W9
00049a8c: B.GT            loc_49CA0
00049a90: MOV             W9, #0x95FB4C37
00049a94: MOV             W9, #0x95FB4C37
00049a98: CMP             W8, W9
00049a9c: B.GT            loc_49E74
00049aa0: MOV             W9, #0x90DD2D3C
00049aa4: MOV             W9, #0x90DD2D3C
00049aa8: CMP             W8, W9
00049aac: B.LE            loc_4A1BC
00049ab0: MOV             W9, #0x90DD2D3D
00049ab4: MOV             W9, #0x90DD2D3D
00049ab8: CMP             W8, W9
00049abc: B.EQ            loc_4A624
00049ac0: MOV             W9, #0x925F7899
00049ac4: MOV             W9, #0x925F7899
00049ac8: CMP             W8, W9
00049acc: B.EQ            loc_4A640
00049ad0: MOV             W9, #0x92E61AF0
00049ad4: MOV             W9, #0x92E61AF0
00049ad8: CMP             W8, W9
00049adc: MOV             X0, X25
00049ae0: MOV             W20, W8
00049ae4: B.NE            loc_49A68
00049ae8: LDR             X8, [SP,#0x110+var_D8]
00049aec: MOV             W20, #0x6F95D9A8
00049af0: MOV             W20, #0x6F95D9A8
00049af4: MOV             X0, X25
00049af8: STR             X8, [SP,#0x110+var_D0]
00049afc: B               loc_49A68
00049b00: CMP             W8, W23
00049b04: B.GT            loc_49C2C
00049b08: CMP             W8, W21
00049b0c: B.GT            loc_49D0C
00049b10: MOV             W9, #0x21297114
00049b14: MOV             W9, #0x21297114
00049b18: CMP             W8, W9
00049b1c: B.GT            loc_49ED4
00049b20: MOV             W9, #0x1416B240
00049b24: MOV             W9, #0x1416B240
00049b28: CMP             W8, W9
00049b2c: B.LE            loc_4A200
00049b30: MOV             W9, #0x1416B241
00049b34: MOV             W9, #0x1416B241
00049b38: CMP             W8, W9
00049b3c: B.EQ            loc_4A654
00049b40: MOV             W9, #0x1D3D4BAD
00049b44: MOV             W9, #0x1D3D4BAD
00049b48: CMP             W8, W9
00049b4c: B.EQ            loc_4A670
00049b50: MOV             W9, #0x1E386453
00049b54: MOV             W9, #0x1E386453
00049b58: CMP             W8, W9
00049b5c: MOV             X0, X25
00049b60: MOV             W20, W8
00049b64: B.NE            loc_49A68
00049b68: LDR             X8, [X19]
00049b6c: ADRP            X1, #byte_F6E1C@PAGE ; runtime: 0xf6e1c='1xRTT'
00049b70: MOV             X0, X19
00049b74: ADD             X1, X1, #byte_F6E1C@PAGEOFF ; runtime: 0xf6e1c='1xRTT'
00049b78: B               loc_4AB5C
00049b7c: CMP             W8, W26
00049b80: B.GT            loc_49D80
00049b84: MOV             W9, #0xD401832D
00049b88: MOV             W9, #0xD401832D
00049b8c: CMP             W8, W9
00049b90: B.GT            loc_49F38
00049b94: MOV             W9, #0xC7E3BC95
00049b98: MOV             W9, #0xC7E3BC95
00049b9c: CMP             W8, W9
00049ba0: B.LE            loc_4A280
00049ba4: MOV             W9, #0xC7E3BC96
00049ba8: MOV             W9, #0xC7E3BC96
00049bac: CMP             W8, W9
00049bb0: B.EQ            loc_4A684
00049bb4: MOV             W9, #0xCEC6377C
00049bb8: MOV             W9, #0xCEC6377C
00049bbc: CMP             W8, W9
00049bc0: B.EQ            loc_4A6A0
00049bc4: MOV             W9, #0xCFB05AC0
00049bc8: MOV             W9, #0xCFB05AC0
00049bcc: CMP             W8, W9
00049bd0: MOV             X0, X25
00049bd4: MOV             W20, W8
00049bd8: B.NE            loc_49A68
00049bdc: LDR             X8, [SP,#0x110+var_C0]
00049be0: ADRP            X2, #qword_F6AC0@PAGE ; runtime: 0xf6ac0='getNetworkInfo'
00049be4: ADRP            X3, #xmmword_F6AD0@PAGE ; runtime: 0xf6ad0='(I)Landroid/net/NetworkInfo;'
00049be8: MOV             X0, X19
00049bec: STR             X8, [SP,#0x110+var_B8]