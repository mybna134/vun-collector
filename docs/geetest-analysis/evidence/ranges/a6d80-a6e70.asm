000a6d80: MOVK            W8, #0x2CC3,LSL#16
000a6d84: MOVK            W9, #0x56AC,LSL#16
000a6d88: B               loc_547B8
000a6d8c: LDR             W8, [SP,#0x11D0+var_10B4]
000a6d90: MOV             W9, #0xD49C
000a6d94: TST             W23, #1
000a6d98: MOVK            W9, #0x6B82,LSL#16
000a6d9c: STR             W8, [SP,#0x11D0+var_11B8]
000a6da0: MOV             W8, #0x2CC39E49
000a6da4: MOV             W8, #0x2CC39E49
000a6da8: B               loc_54750
000a6dac: LDR             X0, [SP,#0x11D0+var_1158]
000a6db0: ADRL            X1, qword_F7570 ; runtime: 0xf7570='syscall'
000a6db4: ADRL            X1, qword_F7570 ; runtime: 0xf7570='syscall'
000a6db8: BL              sub_14068
000a6dbc: LDR             W8, [SP,#0x11D0+var_1100]
000a6dc0: MOV             W10, #0xC1E0D43A
000a6dc4: MOV             W10, #0xC1E0D43A
000a6dc8: MOV             W12, #0x595F
000a6dcc: SUB             W9, W8, W10
000a6dd0: CMP             W8, #2
000a6dd4: ADD             W8, W9, #1
000a6dd8: ADD             W8, W8, W10
000a6ddc: MOV             W11, #0xDE30
000a6de0: STR             W8, [SP,#0x11D0+var_11AC]
000a6de4: MOV             W10, #0xA585
000a6de8: MOV             W8, #0x5298
000a6dec: MOV             W9, #0x6180
000a6df0: MOVK            W12, #0x5EE0,LSL#16
000a6df4: MOVK            W11, #0xC9F3,LSL#16
000a6df8: MOVK            W10, #0x18A4,LSL#16
000a6dfc: MOVK            W8, #0xE7A6,LSL#16
000a6e00: MOVK            W9, #0xD3D4,LSL#16
000a6e04: B               loc_547B8
000a6e08: LDR             X19, [SP,#0x11D0+var_1178]
000a6e0c: LDR             X2, [SP,#0x11D0+var_1158]
000a6e10: ADRP            X1, #byte_F71FC@PAGE ; runtime: 0xf71fc='nhdp'
000a6e14: MOV             W23, #0xE1D4
000a6e18: ADD             X1, X1, #byte_F71FC@PAGEOFF ; runtime: 0xf71fc='nhdp'
000a6e1c: MOV             X0, X19
000a6e20: MOVK            W23, #0xCC4C,LSL#16
000a6e24: BL              sub_13984
000a6e28: LDR             X2, [SP,#0x11D0+var_11D0]
000a6e2c: ADRL            X1, byte_F7204 ; runtime: 0xf7204='fi'
000a6e30: ADRL            X1, byte_F7204 ; runtime: 0xf7204='fi'
000a6e34: MOV             X0, X19
000a6e38: BL              sub_13984
000a6e3c: BL              sub_BBB14
000a6e40: ADD             X8, SP, #0x11D0+var_1068
000a6e44: MOV             W9, #0x42E7
000a6e48: CMP             X0, #0
000a6e4c: MOVK            W9, #0x6D2,LSL#16
000a6e50: ADD             X8, X8, #4
000a6e54: MOV             W24, #0x8382
000a6e58: MOV             W25, #0x4525
000a6e5c: MOV             W27, #0xCF54
000a6e60: MOV             W20, #0xA32F
000a6e64: MOV             W19, #0xFBFC
000a6e68: MOV             W22, #0x651A
000a6e6c: MOV             W28, #0xE4B7