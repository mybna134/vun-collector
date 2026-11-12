00043a00: STR             X0, [SP,#0x70+var_68]
00043a04: B               loc_43A14
00043a08: MOV             W9, #0x4633
00043a0c: MOV             X0, X23
00043a10: MOVK            W9, #0xE5C0,LSL#16
00043a14: MOV             W8, W9
00043a18: CMP             W9, W28
00043a1c: MOV             X23, X0
00043a20: B.GT            loc_43A68
00043a24: CMP             W8, W21
00043a28: B.LE            loc_43AA4
00043a2c: CMP             W8, W27
00043a30: B.EQ            loc_43B50
00043a34: CMP             W8, W26
00043a38: B.EQ            loc_43B6C
00043a3c: MOV             W9, #0xE5C04633
00043a40: MOV             W9, #0xE5C04633
00043a44: CMP             W8, W9
00043a48: MOV             X0, X23
00043a4c: MOV             W9, W8
00043a50: B.NE            loc_43A14
00043a54: MOV             W9, #0xBF70
00043a58: MOV             X0, X23
00043a5c: MOV             X19, X22
00043a60: MOVK            W9, #0x4A66,LSL#16
00043a64: B               loc_43A14
00043a68: CMP             W8, W25
00043a6c: B.GT            loc_43AF8
00043a70: CMP             W8, W24
00043a74: B.EQ            loc_43B88
00043a78: MOV             W9, #0x41567D5B
00043a7c: MOV             W9, #0x41567D5B
00043a80: CMP             W8, W9
00043a84: B.EQ            loc_43B98
00043a88: MOV             W9, #0x25DDEA05
00043a8c: MOV             W9, #0x25DDEA05
00043a90: CMP             W8, W9
00043a94: MOV             X0, X23
00043a98: MOV             W9, W8
00043a9c: B.NE            loc_43A14
00043aa0: B               loc_43BF4
00043aa4: MOV             W9, #0x862078EC
00043aa8: MOV             W9, #0x862078EC
00043aac: CMP             W8, W9
00043ab0: B.EQ            loc_43BDC
00043ab4: MOV             W9, #0xC85BEABA
00043ab8: MOV             W9, #0xC85BEABA
00043abc: CMP             W8, W9
00043ac0: MOV             X0, X23
00043ac4: MOV             W9, W8
00043ac8: B.NE            loc_43A14
00043acc: LDR             X1, [SP,#0x70+var_68]
00043ad0: LDR             X2, [SP,#0x70+var_60]
00043ad4: LDR             X3, [SP,#0x70+var_70]
00043ad8: MOV             X0, X20
00043adc: BL              sub_CEE8
00043ae0: STR             X0, [SP,#0x70+var_58]
00043ae4: LDR             X8, [SP,#0x70+var_58]
00043ae8: MOV             X0, X23
00043aec: CMP             X8, #0
00043af0: CSEL            W9, W24, W26, EQ
00043af4: B               loc_43A14
00043af8: MOV             W9, #0x4A66BF70
00043afc: MOV             W9, #0x4A66BF70
00043b00: CMP             W8, W9
00043b04: MOV             W9, #0xEA05
00043b08: MOV             X0, X19
00043b0c: MOVK            W9, #0x25DD,LSL#16
00043b10: B.EQ            loc_43A14
00043b14: MOV             W9, #0x6BA1275C
00043b18: MOV             W9, #0x6BA1275C
00043b1c: CMP             W8, W9
00043b20: MOV             X0, X23
00043b24: MOV             W9, W8
00043b28: B.NE            loc_43A14
00043b2c: LDR             X8, [SP,#0x70+var_68]
00043b30: MOV             W9, #0x41567D5B
00043b34: MOV             W9, #0x41567D5B
00043b38: MOV             X0, X23
00043b3c: CMP             X8, #0
00043b40: MOV             W8, #0x862078EC
00043b44: MOV             W8, #0x862078EC
00043b48: CSEL            W9, W8, W9, EQ
00043b4c: B               loc_43A14
00043b50: MOV             X0, X20
00043b54: BL              sub_B6D0
00043b58: MOV             W9, #0xBF70
00043b5c: MOV             X19, XZR
00043b60: MOV             X0, X23
00043b64: MOVK            W9, #0x4A66,LSL#16
00043b68: B               loc_43A14
00043b6c: LDR             X1, [SP,#0x70+var_68]
00043b70: LDR             X8, [X20]
00043b74: MOV             X0, X20
00043b78: LDR             X8, [X8,#0xB8]
00043b7c: BLR             X8
00043b80: LDR             X22, [SP,#0x70+var_58]
00043b84: B               loc_43A08
00043b88: MOV             X0, X20
00043b8c: BL              sub_B6D0
00043b90: MOV             X22, XZR
00043b94: B               loc_43A08
00043b98: LDR             X1, [SP,#0x70+var_68]
00043b9c: LDR             X8, [X20]
00043ba0: ADRP            X2, #qword_F6628@PAGE ; runtime: 0xf6628='getSignature'
00043ba4: ADRP            X3, #xmmword_F6640@PAGE ; runtime: 0xf6640='(Landroid/content/Context;)Ljava/lang/String;'
00043ba8: MOV             X0, X20
00043bac: LDR             X8, [X8,#0x388]
00043bb0: ADD             X2, X2, #qword_F6628@PAGEOFF ; runtime: 0xf6628='getSignature'
00043bb4: ADD             X3, X3, #xmmword_F6640@PAGEOFF ; runtime: 0xf6640='(Landroid/content/Context;)Ljava/lang/String;'
00043bb8: BLR             X8
00043bbc: STR             X0, [SP,#0x70+var_60]
00043bc0: LDR             X8, [SP,#0x70+var_60]
00043bc4: MOV             X0, X23
00043bc8: CMP             X8, #0
00043bcc: MOV             W8, #0xC85BEABA
00043bd0: MOV             W8, #0xC85BEABA
00043bd4: CSEL            W9, W27, W8, EQ
00043bd8: B               loc_43A14
00043bdc: MOV             X0, X20
00043be0: BL              sub_B6D0
00043be4: MOV             W9, #0xEA05
00043be8: MOV             X0, XZR
00043bec: MOVK            W9, #0x25DD,LSL#16
00043bf0: B               loc_43A14
00043bf4: MOV             X0, X23
00043bf8: LDP             X29, X30, [SP,#0x70+var_s0]
00043bfc: LDP             X20, X19, [SP,#0x70+var_10]
00043c00: LDP             X22, X21, [SP,#0x70+var_20]
00043c04: LDP             X24, X23, [SP,#0x70+var_30]
00043c08: LDP             X26, X25, [SP,#0x70+var_40]
00043c0c: LDP             X28, X27, [SP,#0x70+var_50]
00043c10: ADD             SP, SP, #0x80
00043c14: RET
00043c18: SUB             SP, SP, #0x80
00043c1c: STP             X28, X27, [SP,#0x70+var_50]
00043c20: STP             X26, X25, [SP,#0x70+var_40]
00043c24: STP             X24, X23, [SP,#0x70+var_30]
00043c28: STP             X22, X21, [SP,#0x70+var_20]
00043c2c: STP             X20, X19, [SP,#0x70+var_10]
00043c30: STP             X29, X30, [SP,#0x70+var_s0]
00043c34: ADD             X29, SP, #0x70
00043c38: LDR             X8, [X0]
00043c3c: MOV             X20, X0
00043c40: STR             X1, [SP,#0x70+var_70]
00043c44: LDR             X8, [X8,#0xF8]
00043c48: BLR             X8
00043c4c: MOV             W28, #0x987C
00043c50: MOV             W21, #0x179B
00043c54: MOV             W22, #0xCA8C
00043c58: MOV             W19, #0x179C
00043c5c: MOV             W25, #0xFC72
00043c60: MOV             W27, #0x882E
00043c64: MOV             W9, #0x549E
00043c68: MOVK            W28, #0xC501,LSL#16
00043c6c: MOVK            W21, #0x963B,LSL#16
00043c70: MOVK            W22, #0x82C0,LSL#16
00043c74: MOVK            W19, #0x963B,LSL#16
00043c78: MOVK            W25, #0xF668,LSL#16
00043c7c: MOVK            W27, #0xCE8B,LSL#16
00043c80: MOVK            W9, #0x48DA,LSL#16
00043c84: STR             X0, [SP,#0x70+var_68]
00043c88: B               loc_43C94
00043c8c: MOV             X0, X23
00043c90: MOV             X1, X24
00043c94: MOV             W8, W9
00043c98: CMP             W9, W28
00043c9c: MOV             X24, X1
00043ca0: MOV             X23, X0
00043ca4: B.LE            loc_43D0C
00043ca8: CMP             W8, W27
00043cac: B.LE            loc_43D4C
00043cb0: MOV             W9, #0xCE8B882F
00043cb4: MOV             W9, #0xCE8B882F
00043cb8: CMP             W8, W9
00043cbc: MOV             W9, #0x6DB8
00043cc0: MOV             X0, X24
00043cc4: MOV             X1, X24
00043cc8: MOVK            W9, #0xB781,LSL#16
00043ccc: B.EQ            loc_43C94
00043cd0: CMP             W8, W25
00043cd4: B.EQ            loc_43E08
00043cd8: MOV             W9, #0x48DA549E
00043cdc: MOV             W9, #0x48DA549E
00043ce0: CMP             W8, W9
00043ce4: MOV             X0, X23
00043ce8: MOV             X1, X24
00043cec: MOV             W9, W8
00043cf0: B.NE            loc_43C94
00043cf4: LDR             X8, [SP,#0x70+var_68]
00043cf8: CMP             X8, #0
00043cfc: MOV             W8, #0x95BF2663
00043d00: MOV             W8, #0x95BF2663
00043d04: CSEL            W9, W22, W8, EQ
00043d08: B               loc_43C8C
00043d0c: CMP             W8, W21
00043d10: B.LE            loc_43DA4
00043d14: CMP             W8, W19
00043d18: B.EQ            loc_43E24
00043d1c: MOV             W9, #0xB6298B98
00043d20: MOV             W9, #0xB6298B98
00043d24: CMP             W8, W9
00043d28: B.EQ            loc_43E50
00043d2c: MOV             W9, #0xB7816DB8
00043d30: MOV             W9, #0xB7816DB8
00043d34: CMP             W8, W9
00043d38: MOV             X0, X23
00043d3c: MOV             X1, X24
00043d40: MOV             W9, W8
00043d44: B.NE            loc_43C94
00043d48: B               loc_43E8C
00043d4c: MOV             W9, #0xC501987D
00043d50: MOV             W9, #0xC501987D
00043d54: CMP             W8, W9
00043d58: MOV             W9, #0x882F
00043d5c: MOV             X0, X23
00043d60: MOV             X1, X26
00043d64: MOVK            W9, #0xCE8B,LSL#16
00043d68: B.EQ            loc_43C94
00043d6c: MOV             W9, #0xCBE642D2
00043d70: MOV             W9, #0xCBE642D2
00043d74: CMP             W8, W9
00043d78: MOV             X0, X23
00043d7c: MOV             X1, X24
00043d80: MOV             W9, W8
00043d84: B.NE            loc_43C94
00043d88: MOV             X0, X20
00043d8c: BL              sub_B6D0
00043d90: MOV             W9, #0x882F
00043d94: MOV             X1, XZR
00043d98: MOV             X0, X23
00043d9c: MOVK            W9, #0xCE8B,LSL#16
00043da0: B               loc_43C94
00043da4: CMP             W8, W22
00043da8: B.EQ            loc_43E70
00043dac: MOV             W9, #0x95BF2663
00043db0: MOV             W9, #0x95BF2663
00043db4: CMP             W8, W9
00043db8: MOV             X0, X23
00043dbc: MOV             X1, X24
00043dc0: MOV             W9, W8
00043dc4: B.NE            loc_43C94
00043dc8: LDR             X1, [SP,#0x70+var_68]
00043dcc: LDR             X8, [X20]
00043dd0: ADRP            X2, #xmmword_F6670@PAGE ; runtime: 0xf6670='getPackageResourcePath'
00043dd4: ADRP            X3, #xmmword_F65F0@PAGE ; runtime: 0xf65f0='()Ljava/lang/String;'
00043dd8: MOV             X0, X20
00043ddc: LDR             X8, [X8,#0x108]
00043de0: ADD             X2, X2, #xmmword_F6670@PAGEOFF ; runtime: 0xf6670='getPackageResourcePath'
00043de4: ADD             X3, X3, #xmmword_F65F0@PAGEOFF ; runtime: 0xf65f0='()Ljava/lang/String;'
00043de8: BLR             X8
00043dec: STR             X0, [SP,#0x70+var_60]
00043df0: LDR             X8, [SP,#0x70+var_60]
00043df4: CMP             X8, #0
00043df8: MOV             W8, #0xCBE642D2
00043dfc: MOV             W8, #0xCBE642D2
00043e00: CSEL            W9, W8, W19, EQ
00043e04: B               loc_43C8C
00043e08: LDR             X1, [SP,#0x70+var_68]
00043e0c: LDR             X8, [X20]
00043e10: MOV             X0, X20
00043e14: LDR             X8, [X8,#0xB8]
00043e18: BLR             X8
00043e1c: LDR             X26, [SP,#0x70+var_58]
00043e20: B               loc_43E5C
00043e24: LDR             X2, [SP,#0x70+var_60]
00043e28: LDR             X1, [SP,#0x70+var_70]
00043e2c: MOV             X0, X20
00043e30: BL              sub_BF48
00043e34: STR             X0, [SP,#0x70+var_58]
00043e38: LDR             X8, [SP,#0x70+var_58]
00043e3c: CMP             X8, #0
00043e40: MOV             W8, #0xB6298B98
00043e44: MOV             W8, #0xB6298B98
00043e48: CSEL            W9, W8, W25, EQ
00043e4c: B               loc_43C8C
00043e50: MOV             X0, X20
00043e54: BL              sub_B6D0
00043e58: MOV             X26, XZR
00043e5c: MOV             W9, #0x987D
00043e60: MOV             X0, X23
00043e64: MOV             X1, X24
00043e68: MOVK            W9, #0xC501,LSL#16
00043e6c: B               loc_43C94
00043e70: MOV             X0, X20
00043e74: BL              sub_B6D0
00043e78: MOV             W9, #0x6DB8
00043e7c: MOV             X0, XZR
00043e80: MOV             X1, X24
00043e84: MOVK            W9, #0xB781,LSL#16
00043e88: B               loc_43C94
00043e8c: MOV             X0, X23
00043e90: LDP             X29, X30, [SP,#0x70+var_s0]
00043e94: LDP             X20, X19, [SP,#0x70+var_10]
00043e98: LDP             X22, X21, [SP,#0x70+var_20]
00043e9c: LDP             X24, X23, [SP,#0x70+var_30]
00043ea0: LDP             X26, X25, [SP,#0x70+var_40]
00043ea4: LDP             X28, X27, [SP,#0x70+var_50]
00043ea8: ADD             SP, SP, #0x80
00043eac: RET
00043eb0: SUB             SP, SP, #0x100
00043eb4: STP             X28, X27, [SP,#0xF0+var_50]
00043eb8: STP             X26, X25, [SP,#0xF0+var_40]
00043ebc: STP             X24, X23, [SP,#0xF0+var_30]
00043ec0: STP             X22, X21, [SP,#0xF0+var_20]
00043ec4: STP             X20, X19, [SP,#0xF0+var_10]
00043ec8: STP             X29, X30, [SP,#0xF0+var_s0]
00043ecc: ADD             X29, SP, #0xF0
00043ed0: STR             X0, [SP,#0xF0+var_E8]
00043ed4: MRS             X8, TPIDR_EL0
00043ed8: STP             X8, X1, [SP,#0xF0+var_E0]
00043edc: LDR             X8, [X8,#0x28]
00043ee0: MOV             W24, #0x81B1
00043ee4: MOV             W25, #0xDFAC
00043ee8: CMP             X1, #0
00043eec: MOVK            W24, #0x44AD,LSL#16
00043ef0: MOVK            W25, #0x68DC,LSL#16
00043ef4: CSEL            W9, W25, W24, EQ
00043ef8: MOV             W26, #0x6D39
00043efc: MOV             W27, #0xE4D
00043f00: MOV             W28, #0xBF22
00043f04: MOV             W23, #0x5DFF
00043f08: MOV             W19, #0x81B0
00043f0c: MOV             W20, #0xE4E
00043f10: MOV             W21, #0x91C1
00043f14: STR             W9, [SP,#0xF0+var_EC]
00043f18: STUR            X8, [X29,#var_58]
00043f1c: MOV             W8, #0x6D39
00043f20: MOVK            W26, #0xD39,LSL#16
00043f24: MOVK            W27, #0x25A1,LSL#16
00043f28: MOVK            W28, #0x8440,LSL#16
00043f2c: MOVK            W23, #0xA539,LSL#16
00043f30: MOVK            W19, #0x44AD,LSL#16
00043f34: MOVK            W20, #0x25A1,LSL#16
00043f38: MOVK            W21, #0x367E,LSL#16
00043f3c: MOVK            W8, #0xD39,LSL#16
00043f40: B               loc_43F68
00043f44: LDR             W8, [SP,#0xF0+var_EC]
00043f48: B               loc_43F68
00043f4c: MOV             W8, #0x91C1
00043f50: STR             XZR, [SP,#0xF0+var_D0]
00043f54: MOVK            W8, #0x367E,LSL#16
00043f58: B               loc_43F68
00043f5c: MOV             W8, #0x5DFF
00043f60: MOV             X22, XZR
00043f64: MOVK            W8, #0xA539,LSL#16
00043f68: CMP             W8, W27
00043f6c: B.LE            loc_43F8C
00043f70: CMP             W8, W19
00043f74: B.GT            loc_43FA8
00043f78: CMP             W8, W20
00043f7c: B.EQ            loc_43FF4
00043f80: CMP             W8, W21
00043f84: B.NE            loc_43F68
00043f88: B               loc_4402C
00043f8c: CMP             W8, W28
00043f90: B.EQ            loc_43F5C
00043f94: CMP             W8, W23
00043f98: B.EQ            loc_44018
00043f9c: CMP             W8, W26
00043fa0: B.NE            loc_43F68
00043fa4: B               loc_43F44
00043fa8: CMP             W8, W25
00043fac: B.EQ            loc_43F4C
00043fb0: CMP             W8, W24
00043fb4: B.NE            loc_43F68
00043fb8: ADD             X9, SP, #0xF0+var_B4
00043fbc: STP             X9, X9, [SP,#0xF0+var_C8]
00043fc0: LDR             X8, [SP,#0xF0+var_C8]
00043fc4: LDR             X8, [SP,#0xF0+var_C8]
00043fc8: MOVI            V0.2D, #0
00043fcc: STUR            Q0, [X8,#0x4C]
00043fd0: STP             Q0, Q0, [X8,#0x30]
00043fd4: STP             Q0, Q0, [X8,#0x10]
00043fd8: STR             Q0, [X8]
00043fdc: LDR             X1, [SP,#0xF0+var_C0]
00043fe0: LDR             X0, [SP,#0xF0+var_D8]
00043fe4: BL              .__system_property_get
00043fe8: CMP             W0, #1
00043fec: CSEL            W8, W28, W20, LT
00043ff0: B               loc_43F68
00043ff4: LDR             X1, [SP,#0xF0+var_C0]
00043ff8: LDR             X0, [SP,#0xF0+var_E8]
00043ffc: LDR             X8, [X0]
00044000: LDR             X8, [X8,#0x538]
00044004: BLR             X8
00044008: MOV             W8, #0x5DFF
0004400c: MOV             X22, X0
00044010: MOVK            W8, #0xA539,LSL#16
00044014: B               loc_43F68
00044018: LDR             X8, [SP,#0xF0+var_C8]
0004401c: MOV             W8, #0x367E91C1
00044020: MOV             W8, #0x367E91C1
00044024: STR             X22, [SP,#0xF0+var_D0]
00044028: B               loc_43F68
0004402c: LDR             X8, [SP,#0xF0+var_E0]
00044030: LDR             X8, [X8,#0x28]
00044034: LDUR            X9, [X29,#var_58]
00044038: CMP             X8, X9
0004403c: B.NE            loc_44064
00044040: LDR             X0, [SP,#0xF0+var_D0]
00044044: LDP             X29, X30, [SP,#0xF0+var_s0]
00044048: LDP             X20, X19, [SP,#0xF0+var_10]
0004404c: LDP             X22, X21, [SP,#0xF0+var_20]
00044050: LDP             X24, X23, [SP,#0xF0+var_30]
00044054: LDP             X26, X25, [SP,#0xF0+var_40]
00044058: LDP             X28, X27, [SP,#0xF0+var_50]
0004405c: ADD             SP, SP, #0x100
00044060: RET
00044064: BL              .__stack_chk_fail
00044068: SUB             SP, SP, #0xA0
0004406c: STP             X28, X27, [SP,#0x90+var_50]
00044070: STP             X26, X25, [SP,#0x90+var_40]
00044074: STP             X24, X23, [SP,#0x90+var_30]
00044078: STP             X22, X21, [SP,#0x90+var_20]
0004407c: STP             X20, X19, [SP,#0x90+var_10]
00044080: STP             X29, X30, [SP,#0x90+var_s0]
00044084: ADD             X29, SP, #0x90
00044088: MOV             X20, X0
0004408c: STR             X1, [SP,#0x90+var_88]
00044090: BL              sub_FBF8
00044094: MOV             W22, #0xB8E6
00044098: MOV             W25, #0xF048
0004409c: MOV             W24, #0x89E
000440a0: MOV             W26, #0x9437
000440a4: MOV             W9, #0x62BF
000440a8: MOVK            W22, #0x339,LSL#16
000440ac: MOVK            W25, #0xD0AF,LSL#16
000440b0: MOVK            W24, #0x485B,LSL#16
000440b4: MOVK            W26, #0x6488,LSL#16
000440b8: MOVK            W9, #0x43B2,LSL#16
000440bc: STR             X0, [SP,#0x90+var_80]
000440c0: B               loc_440D4
000440c4: MOV             X0, X23
000440c8: MOV             X1, X28
000440cc: MOV             X2, X21
000440d0: MOV             X3, X27
000440d4: MOV             W8, W9
000440d8: CMP             W9, W22
000440dc: MOV             X27, X3
000440e0: MOV             X21, X2
000440e4: MOV             X28, X1
000440e8: MOV             X23, X0
000440ec: B.LE            loc_4416C
000440f0: CMP             W8, W24
000440f4: B.GT            loc_44200
000440f8: MOV             W9, #0x170730B0
000440fc: MOV             W9, #0x170730B0
00044100: CMP             W8, W9
00044104: B.GT            loc_442DC
00044108: MOV             W9, #0x339B8E7
0004410c: MOV             W9, #0x339B8E7
00044110: CMP             W8, W9
00044114: B.EQ            loc_44498
00044118: MOV             W9, #0x150D8DB1
0004411c: MOV             W9, #0x150D8DB1
00044120: CMP             W8, W9
00044124: MOV             X0, X23
00044128: MOV             X1, X28
0004412c: MOV             X2, X21
00044130: MOV             X3, X27
00044134: MOV             W9, W8
00044138: B.NE            loc_440D4
0004413c: LDR             X1, [SP,#0x90+var_88]
00044140: MOV             X0, X20
00044144: BL              sub_F59C
00044148: STR             X0, [SP,#0x90+var_78]
0004414c: LDR             X8, [SP,#0x90+var_78]
00044150: MOV             W9, #0x4A1E2562
00044154: MOV             W9, #0x4A1E2562
00044158: CMP             X8, #0
0004415c: MOV             W8, #0xB5C336D6
00044160: MOV             W8, #0xB5C336D6
00044164: CSEL            W9, W9, W8, EQ
00044168: B               loc_440C4
0004416c: CMP             W8, W25
00044170: B.GT            loc_4427C
00044174: MOV             W9, #0xB5C336D5
00044178: MOV             W9, #0xB5C336D5
0004417c: CMP             W8, W9
00044180: B.GT            loc_44344
00044184: MOV             W9, #0x8A0C60CC
00044188: MOV             W9, #0x8A0C60CC
0004418c: CMP             W8, W9
00044190: B.EQ            loc_444B8
00044194: MOV             W9, #0x9A48B58C
00044198: MOV             W9, #0x9A48B58C
0004419c: CMP             W8, W9
000441a0: MOV             X0, X23
000441a4: MOV             X1, X28
000441a8: MOV             X2, X21
000441ac: MOV             X3, X27
000441b0: MOV             W9, W8
000441b4: B.NE            loc_440D4
000441b8: LDR             X8, [SP,#0x90+var_80]
000441bc: MOV             X0, X20
000441c0: LDR             X1, [X8,#8]
000441c4: LDR             X8, [SP,#0x90+var_78]
000441c8: LDR             X3, [X8,#8]
000441cc: LDR             X2, [SP,#0x90+var_70]
000441d0: BL              sub_BF48
000441d4: STR             X0, [SP,#0x90+var_68]
000441d8: LDR             X8, [SP,#0x90+var_68]
000441dc: MOV             W9, #0x798F2624
000441e0: MOV             W9, #0x798F2624
000441e4: STR             X8, [SP,#0x90+var_60]
000441e8: LDR             X8, [SP,#0x90+var_60]
000441ec: CMP             X8, #0
000441f0: MOV             W8, #0xC6A6AFCD
000441f4: MOV             W8, #0xC6A6AFCD
000441f8: CSEL            W9, W9, W8, EQ
000441fc: B               loc_440C4
00044200: CMP             W8, W26
00044204: B.GT            loc_443C0
00044208: MOV             W9, #0x485B089F
0004420c: MOV             W9, #0x485B089F
00044210: CMP             W8, W9
00044214: MOV             W9, #0xF049
00044218: MOV             X0, X28
0004421c: MOV             X1, X28
00044220: MOV             X2, X21
00044224: MOV             X3, X27
00044228: MOVK            W9, #0xD0AF,LSL#16
0004422c: B.EQ            loc_440D4
00044230: MOV             W9, #0x4A1E2562
00044234: MOV             W9, #0x4A1E2562
00044238: CMP             W8, W9
0004423c: MOV             X0, X23
00044240: MOV             X1, X28
00044244: MOV             X2, X21
00044248: MOV             X3, X27
0004424c: MOV             W9, W8
00044250: B.NE            loc_440D4
00044254: LDR             X1, [SP,#0x90+var_80]
00044258: MOV             X0, X20
0004425c: BL              sub_10C30
00044260: MOV             W9, #0x89F
00044264: MOV             X1, XZR
00044268: MOV             X0, X23
0004426c: MOV             X2, X21
00044270: MOV             X3, X27
00044274: MOVK            W9, #0x485B,LSL#16
00044278: B               loc_440D4
0004427c: MOV             W9, #0xF251BBD0
00044280: MOV             W9, #0xF251BBD0
00044284: CMP             W8, W9
00044288: B.LE            loc_44448
0004428c: MOV             W9, #0xF251BBD1
00044290: MOV             W9, #0xF251BBD1
00044294: CMP             W8, W9
00044298: B.EQ            loc_444F4
0004429c: MOV             W9, #0xF2D6CC9F
000442a0: MOV             W9, #0xF2D6CC9F
000442a4: CMP             W8, W9
000442a8: MOV             X0, X23
000442ac: MOV             X1, X28
000442b0: MOV             X2, X21
000442b4: MOV             X3, X27
000442b8: MOV             W9, W8
000442bc: B.NE            loc_440D4
000442c0: LDR             X1, [SP,#0x90+var_68]
000442c4: LDR             X8, [X20]
000442c8: MOV             X0, X20
000442cc: LDR             X8, [X8,#0xB8]
000442d0: BLR             X8
000442d4: LDR             X19, [SP,#0x90+var_58]
000442d8: B               loc_4449C
000442dc: MOV             W9, #0x170730B1
000442e0: MOV             W9, #0x170730B1
000442e4: CMP             W8, W9
000442e8: MOV             W9, #0x89D3
000442ec: MOV             X0, X23
000442f0: MOV             X1, X28
000442f4: MOV             X2, X21
000442f8: MOV             X3, X19
000442fc: MOVK            W9, #0xECDD,LSL#16
00044300: B.EQ            loc_440D4
00044304: MOV             W9, #0x43B262BF
00044308: MOV             W9, #0x43B262BF
0004430c: CMP             W8, W9
00044310: MOV             X0, X23
00044314: MOV             X1, X28
00044318: MOV             X2, X21
0004431c: MOV             X3, X27
00044320: MOV             W9, W8
00044324: B.NE            loc_440D4
00044328: LDR             X8, [SP,#0x90+var_80]
0004432c: MOV             W9, #0x150D8DB1
00044330: MOV             W9, #0x150D8DB1
00044334: CMP             X8, #0
00044338: MOV             W8, #0xF251BBD1
0004433c: MOV             W8, #0xF251BBD1
00044340: B               loc_44554
00044344: MOV             W9, #0xB5C336D6
00044348: MOV             W9, #0xB5C336D6
0004434c: CMP             W8, W9
00044350: B.EQ            loc_44510
00044354: MOV             W9, #0xC6A6AFCD
00044358: MOV             W9, #0xC6A6AFCD
0004435c: CMP             W8, W9
00044360: MOV             X0, X23
00044364: MOV             X1, X28
00044368: MOV             X2, X21
0004436c: MOV             X3, X27
00044370: MOV             W9, W8
00044374: B.NE            loc_440D4
00044378: LDR             X1, [SP,#0x90+var_80]
0004437c: MOV             X0, X20
00044380: BL              sub_10C30
00044384: LDR             X1, [SP,#0x90+var_78]
00044388: MOV             X0, X20
0004438c: BL              sub_10C30
00044390: LDR             X1, [SP,#0x90+var_60]
00044394: MOV             X0, X20
00044398: BL              sub_12A7C
0004439c: STR             X0, [SP,#0x90+var_58]
000443a0: LDR             X8, [SP,#0x90+var_58]
000443a4: MOV             W9, #0x339B8E7
000443a8: MOV             W9, #0x339B8E7
000443ac: CMP             X8, #0
000443b0: MOV             W8, #0xF2D6CC9F
000443b4: MOV             W8, #0xF2D6CC9F
000443b8: CSEL            W9, W9, W8, EQ
000443bc: B               loc_440C4
000443c0: MOV             W9, #0x64889438
000443c4: MOV             W9, #0x64889438
000443c8: CMP             W8, W9
000443cc: MOV             W9, #0x89F
000443d0: MOV             X0, X23
000443d4: MOV             X1, X21
000443d8: MOV             X2, X21
000443dc: MOV             X3, X27
000443e0: MOVK            W9, #0x485B,LSL#16
000443e4: B.EQ            loc_440D4
000443e8: MOV             W9, #0x798F2624
000443ec: MOV             W9, #0x798F2624
000443f0: CMP             W8, W9
000443f4: MOV             X0, X23
000443f8: MOV             X1, X28
000443fc: MOV             X2, X21
00044400: MOV             X3, X27
00044404: MOV             W9, W8
00044408: B.NE            loc_440D4
0004440c: MOV             X0, X20
00044410: BL              sub_B6D0
00044414: LDR             X1, [SP,#0x90+var_80]
00044418: MOV             X0, X20
0004441c: BL              sub_10C30
00044420: LDR             X1, [SP,#0x90+var_78]
00044424: MOV             X0, X20
00044428: BL              sub_10C30
0004442c: MOV             W9, #0x89D3
00044430: MOV             X3, XZR
00044434: MOV             X0, X23
00044438: MOV             X1, X28
0004443c: MOV             X2, X21
00044440: MOVK            W9, #0xECDD,LSL#16
00044444: B               loc_440D4
00044448: MOV             W9, #0xECDD89D3
0004444c: MOV             W9, #0xECDD89D3
00044450: CMP             W8, W9
00044454: MOV             W9, #0x9438
00044458: MOV             X0, X23
0004445c: MOV             X1, X28
00044460: MOV             X2, X27
00044464: MOV             X3, X27
00044468: MOVK            W9, #0x6488,LSL#16
0004446c: B.EQ            loc_440D4
00044470: MOV             W9, #0xD0AFF049
00044474: MOV             W9, #0xD0AFF049
00044478: CMP             W8, W9
0004447c: MOV             X0, X23
00044480: MOV             X1, X28
00044484: MOV             X2, X21
00044488: MOV             X3, X27
0004448c: MOV             W9, W8
00044490: B.NE            loc_440D4
00044494: B               loc_4455C
00044498: MOV             X19, XZR
0004449c: MOV             W9, #0x30B1
000444a0: MOV             X0, X23
000444a4: MOV             X1, X28
000444a8: MOV             X2, X21
000444ac: MOV             X3, X27
000444b0: MOVK            W9, #0x1707,LSL#16
000444b4: B               loc_440D4
000444b8: MOV             X0, X20
000444bc: BL              sub_B6D0
000444c0: LDR             X1, [SP,#0x90+var_80]
000444c4: MOV             X0, X20
000444c8: BL              sub_10C30
000444cc: LDR             X1, [SP,#0x90+var_78]
000444d0: MOV             X0, X20
000444d4: BL              sub_10C30
000444d8: MOV             W9, #0x9438
000444dc: MOV             X2, XZR
000444e0: MOV             X0, X23
000444e4: MOV             X1, X28
000444e8: MOV             X3, X27
000444ec: MOVK            W9, #0x6488,LSL#16
000444f0: B               loc_440D4
000444f4: MOV             W9, #0xF049
000444f8: MOV             X0, XZR
000444fc: MOV             X1, X28
00044500: MOV             X2, X21
00044504: MOV             X3, X27
00044508: MOVK            W9, #0xD0AF,LSL#16
0004450c: B               loc_440D4
00044510: LDR             X8, [SP,#0x90+var_80]
00044514: LDR             X9, [X20]
00044518: ADRP            X2, #xmmword_F6690@PAGE ; runtime: 0xf6690='getApplicationLabel'
0004451c: ADRP            X3, #xmmword_F66B0@PAGE ; runtime: 0xf66b0='(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;'
00044520: LDR             X1, [X8]
00044524: LDR             X8, [X9,#0x108]
00044528: MOV             X0, X20
0004452c: ADD             X2, X2, #xmmword_F6690@PAGEOFF ; runtime: 0xf6690='getApplicationLabel'
00044530: ADD             X3, X3, #xmmword_F66B0@PAGEOFF ; runtime: 0xf66b0='(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;'
00044534: BLR             X8
00044538: STR             X0, [SP,#0x90+var_70]
0004453c: LDR             X8, [SP,#0x90+var_70]
00044540: MOV             W9, #0x9A48B58C
00044544: MOV             W9, #0x9A48B58C
00044548: CMP             X8, #0
0004454c: MOV             W8, #0x8A0C60CC
00044550: MOV             W8, #0x8A0C60CC
00044554: CSEL            W9, W8, W9, EQ
00044558: B               loc_440C4
0004455c: MOV             X0, X23
00044560: LDP             X29, X30, [SP,#0x90+var_s0]
00044564: LDP             X20, X19, [SP,#0x90+var_10]
00044568: LDP             X22, X21, [SP,#0x90+var_20]
0004456c: LDP             X24, X23, [SP,#0x90+var_30]
00044570: LDP             X26, X25, [SP,#0x90+var_40]
00044574: LDP             X28, X27, [SP,#0x90+var_50]
00044578: ADD             SP, SP, #0xA0
0004457c: RET
00044580: SUB             SP, SP, #0x80
00044584: STP             X28, X27, [SP,#0x70+var_50]
00044588: STP             X26, X25, [SP,#0x70+var_40]
0004458c: STP             X24, X23, [SP,#0x70+var_30]
00044590: STP             X22, X21, [SP,#0x70+var_20]
00044594: STP             X20, X19, [SP,#0x70+var_10]
00044598: STP             X29, X30, [SP,#0x70+var_s0]
0004459c: ADD             X29, SP, #0x70
000445a0: MOV             X19, X0
000445a4: BL              sub_10214
000445a8: MOV             W27, #0x39E5
000445ac: MOV             W28, #0xD6A5
000445b0: MOV             W20, #0x1AB1
000445b4: MOV             W23, #0xD6A6
000445b8: MOV             W24, #0xD97
000445bc: MOV             W25, #0x6B73
000445c0: MOV             W21, #0x39E6
000445c4: MOV             W10, #0x6B74
000445c8: MOVK            W27, #0x5E11,LSL#16
000445cc: MOVK            W28, #0xC4D3,LSL#16
000445d0: MOVK            W20, #0xB9D4,LSL#16
000445d4: MOVK            W23, #0xC4D3,LSL#16
000445d8: MOVK            W24, #0x72E2,LSL#16
000445dc: MOVK            W25, #0x7235,LSL#16
000445e0: MOVK            W21, #0x5E11,LSL#16
000445e4: MOVK            W10, #0x7235,LSL#16
000445e8: STR             X0, [SP,#0x70+var_68]
000445ec: B               loc_445FC
000445f0: MOV             W10, #0x5BAC
000445f4: MOV             W8, W26
000445f8: MOVK            W10, #0x1E8D,LSL#16
000445fc: MOV             W9, W10
00044600: CMP             W10, W27
00044604: MOV             W26, W8
00044608: B.GT            loc_44658
0004460c: CMP             W9, W28
00044610: B.LE            loc_44694
00044614: CMP             W9, W23
00044618: B.EQ            loc_4475C
0004461c: MOV             W8, #0x1E8D5BAC
00044620: MOV             W8, #0x1E8D5BAC
00044624: MOV             W10, #0x2F3E
00044628: CMP             W9, W8
0004462c: MOV             W8, W22
00044630: MOVK            W10, #0x20D1,LSL#16
00044634: B.EQ            loc_445FC
00044638: MOV             W8, #0x20D12F3E
0004463c: MOV             W8, #0x20D12F3E
00044640: CMP             W9, W8
00044644: MOV             W8, W26
00044648: MOV             W10, W9
0004464c: B.NE            loc_445FC
00044650: STR             W26, [SP,#0x70+var_6C]
00044654: B               loc_447EC
00044658: CMP             W9, W25
0004465c: B.LE            loc_446F4
00044660: MOV             W8, #0x72356B74
00044664: MOV             W8, #0x72356B74
00044668: CMP             W9, W8
0004466c: B.EQ            loc_44790
00044670: CMP             W9, W24
00044674: B.EQ            loc_447AC
00044678: MOV             W8, #0x75503A0B
0004467c: MOV             W8, #0x75503A0B
00044680: CMP             W9, W8
00044684: MOV             W8, W26
00044688: MOV             W10, W9
0004468c: B.NE            loc_445FC
00044690: B               loc_447FC
00044694: CMP             W9, W20
00044698: B.EQ            loc_447C0
0004469c: MOV             W8, #0xBEFD109A
000446a0: MOV             W8, #0xBEFD109A
000446a4: CMP             W9, W8
000446a8: MOV             W8, W26
000446ac: MOV             W10, W9
000446b0: B.NE            loc_445FC
000446b4: LDR             X8, [SP,#0x70+var_68]
000446b8: MOV             X0, X19
000446bc: LDR             X1, [X8,#8]
000446c0: LDR             X2, [SP,#0x70+var_60]
000446c4: LDR             X8, [X19]
000446c8: LDR             X8, [X8,#0x320]
000446cc: BLR             X8
000446d0: STR             W0, [SP,#0x70+var_54]
000446d4: LDR             X8, [X19]
000446d8: MOV             X0, X19
000446dc: LDR             X8, [X8,#0x720]
000446e0: BLR             X8
000446e4: TST             W0, #0xFF
000446e8: CSEL            W10, W24, W23, EQ
000446ec: MOV             W8, W26
000446f0: B               loc_445FC
000446f4: CMP             W9, W21
000446f8: B.EQ            loc_447E4
000446fc: MOV             W8, #0x6CA42DD5
00044700: MOV             W8, #0x6CA42DD5
00044704: CMP             W9, W8
00044708: MOV             W8, W26
0004470c: MOV             W10, W9
00044710: B.NE            loc_445FC
00044714: LDR             X8, [SP,#0x70+var_68]
00044718: LDR             X9, [X19]
0004471c: ADRP            X2, #qword_F66F0@PAGE ; runtime: 0xf66f0='versionCode'
00044720: ADRP            X3, #byte_F66FC@PAGE ; runtime: 0xf66fc='I'
00044724: LDR             X1, [X8]
00044728: LDR             X8, [X9,#0x2F0]
0004472c: MOV             X0, X19
00044730: ADD             X2, X2, #qword_F66F0@PAGEOFF ; runtime: 0xf66f0='versionCode'
00044734: ADD             X3, X3, #byte_F66FC@PAGEOFF ; runtime: 0xf66fc='I'
00044738: BLR             X8
0004473c: STR             X0, [SP,#0x70+var_60]
00044740: LDR             X8, [SP,#0x70+var_60]
00044744: CMP             X8, #0
00044748: MOV             W8, #0xBEFD109A
0004474c: MOV             W8, #0xBEFD109A
00044750: CSEL            W10, W20, W8, EQ
00044754: MOV             W8, W26
00044758: B               loc_445FC
0004475c: LDR             X8, [X19]
00044760: MOV             X0, X19
00044764: LDR             X8, [X8,#0x80]
00044768: BLR             X8
0004476c: LDR             X8, [X19]
00044770: MOV             X0, X19
00044774: LDR             X8, [X8,#0x88]
00044778: BLR             X8
0004477c: LDR             X1, [SP,#0x70+var_68]
00044780: MOV             X0, X19
00044784: BL              sub_10C30
00044788: MOV             W22, #0xFFFFFFFF
0004478c: B               loc_445F0
00044790: LDR             X8, [SP,#0x70+var_68]
00044794: CMP             X8, #0
00044798: MOV             W8, #0x6CA42DD5
0004479c: MOV             W8, #0x6CA42DD5
000447a0: CSEL            W10, W21, W8, EQ
000447a4: MOV             W8, W26
000447a8: B               loc_445FC
000447ac: LDR             X1, [SP,#0x70+var_68]
000447b0: MOV             X0, X19
000447b4: BL              sub_10C30
000447b8: LDR             W22, [SP,#0x70+var_54]
000447bc: B               loc_445F0
000447c0: MOV             X0, X19
000447c4: BL              sub_B6D0
000447c8: LDR             X1, [SP,#0x70+var_68]
000447cc: MOV             X0, X19
000447d0: BL              sub_10C30
000447d4: MOV             W10, #0x2F3E
000447d8: MOV             W8, #0xFFFFFFFF
000447dc: MOVK            W10, #0x20D1,LSL#16
000447e0: B               loc_445FC
000447e4: MOV             W8, #0xFFFFFFFF
000447e8: STR             W8, [SP,#0x70+var_6C]
000447ec: MOV             W10, #0x3A0B
000447f0: MOV             W8, W26
000447f4: MOVK            W10, #0x7550,LSL#16
000447f8: B               loc_445FC
000447fc: LDR             W0, [SP,#0x70+var_6C]
00044800: LDP             X29, X30, [SP,#0x70+var_s0]
00044804: LDP             X20, X19, [SP,#0x70+var_10]
00044808: LDP             X22, X21, [SP,#0x70+var_20]
0004480c: LDP             X24, X23, [SP,#0x70+var_30]
00044810: LDP             X26, X25, [SP,#0x70+var_40]
00044814: LDP             X28, X27, [SP,#0x70+var_50]
00044818: ADD             SP, SP, #0x80
0004481c: RET
00044820: SUB             SP, SP, #0x80
00044824: STP             X28, X27, [SP,#0x70+var_50]
00044828: STP             X26, X25, [SP,#0x70+var_40]
0004482c: STP             X24, X23, [SP,#0x70+var_30]
00044830: STP             X22, X21, [SP,#0x70+var_20]
00044834: STP             X20, X19, [SP,#0x70+var_10]
00044838: STP             X29, X30, [SP,#0x70+var_s0]
0004483c: ADD             X29, SP, #0x70
00044840: MOV             X19, X0
00044844: BL              sub_10214
00044848: MOV             W27, #0x2CEC
0004484c: MOV             W28, #0xD78D
00044850: MOV             W20, #0xC582
00044854: MOV             W25, #0x3AF0
00044858: MOV             W21, #0xA1F3
0004485c: MOV             W26, #0x2CED
00044860: MOV             W9, #0x2ABE
00044864: MOVK            W27, #0x20CB,LSL#16
00044868: MOVK            W28, #0xA862,LSL#16
0004486c: MOVK            W20, #0x8BF7,LSL#16
00044870: MOVK            W25, #0x438A,LSL#16
00044874: MOVK            W21, #0x31E6,LSL#16
00044878: MOVK            W26, #0x20CB,LSL#16
0004487c: MOVK            W9, #0xAF00,LSL#16
00044880: STR             X0, [SP,#0x70+var_68]
00044884: B               loc_44894
00044888: MOV             W9, #0xA3DD
0004488c: MOV             X0, X22
00044890: MOVK            W9, #0x21CB,LSL#16
00044894: MOV             W8, W9
00044898: CMP             W9, W27
0004489c: MOV             X22, X0
000448a0: B.LE            loc_4491C
000448a4: CMP             W8, W21
000448a8: B.LE            loc_44960
000448ac: MOV             W9, #0x31E6A1F4
000448b0: MOV             W9, #0x31E6A1F4
000448b4: CMP             W8, W9
000448b8: MOV             W9, #0xD78E
000448bc: MOV             X0, X23
000448c0: MOVK            W9, #0xA862,LSL#16
000448c4: B.EQ            loc_44894
000448c8: CMP             W8, W25
000448cc: B.EQ            loc_449C4
000448d0: MOV             W9, #0x72AA95D6
000448d4: MOV             W9, #0x72AA95D6
000448d8: CMP             W8, W9
000448dc: MOV             X0, X22
000448e0: MOV             W9, W8
000448e4: B.NE            loc_44894
000448e8: LDR             X8, [X19]
000448ec: MOV             X0, X19
000448f0: LDR             X8, [X8,#0x80]
000448f4: BLR             X8
000448f8: LDR             X8, [X19]
000448fc: MOV             X0, X19
00044900: LDR             X8, [X8,#0x88]
00044904: BLR             X8
00044908: LDR             X1, [SP,#0x70+var_68]
0004490c: MOV             X0, X19
00044910: BL              sub_10C30
00044914: MOV             X24, XZR
00044918: B               loc_44888
0004491c: CMP             W8, W28
00044920: B.LE            loc_44994
00044924: MOV             W9, #0xAF002ABE
00044928: MOV             W9, #0xAF002ABE
0004492c: CMP             W8, W9
00044930: B.EQ            loc_44A0C
00044934: MOV             W9, #0xC93373B3
00044938: MOV             W9, #0xC93373B3
0004493c: CMP             W8, W9
00044940: B.EQ            loc_44A30
00044944: MOV             W9, #0xA862D78E
00044948: MOV             W9, #0xA862D78E
0004494c: CMP             W8, W9
00044950: MOV             X0, X22
00044954: MOV             W9, W8
00044958: B.NE            loc_44894
0004495c: B               loc_44AA0
00044960: CMP             W8, W26
00044964: B.EQ            loc_44A70
00044968: MOV             W9, #0x21CBA3DD
0004496c: MOV             W9, #0x21CBA3DD
00044970: CMP             W8, W9
00044974: MOV             X0, X22
00044978: MOV             W9, W8
0004497c: B.NE            loc_44894
00044980: MOV             W9, #0xA1F4
00044984: MOV             X0, X22
00044988: MOV             X23, X24
0004498c: MOVK            W9, #0x31E6,LSL#16
00044990: B               loc_44894
00044994: CMP             W8, W20
00044998: B.EQ            loc_44A78
0004499c: MOV             W9, #0x8D5772CF
000449a0: MOV             W9, #0x8D5772CF
000449a4: CMP             W8, W9
000449a8: MOV             X0, X22
000449ac: MOV             W9, W8
000449b0: B.NE            loc_44894
000449b4: MOV             W9, #0xD78E
000449b8: MOV             X0, XZR
000449bc: MOVK            W9, #0xA862,LSL#16
000449c0: B               loc_44894
000449c4: LDR             X8, [SP,#0x70+var_68]
000449c8: MOV             X0, X19
000449cc: LDR             X1, [X8,#8]
000449d0: LDR             X2, [SP,#0x70+var_60]
000449d4: LDR             X8, [X19]
000449d8: LDR             X8, [X8,#0x2F8]
000449dc: BLR             X8
000449e0: STR             X0, [SP,#0x70+var_58]
000449e4: LDR             X8, [X19]
000449e8: MOV             X0, X19
000449ec: LDR             X8, [X8,#0x720]
000449f0: BLR             X8
000449f4: MOV             W8, #0x95D6
000449f8: TST             W0, #0xFF
000449fc: MOVK            W8, #0x72AA,LSL#16
00044a00: CSEL            W9, W26, W8, EQ
00044a04: MOV             X0, X22
00044a08: B               loc_44894
00044a0c: LDR             X8, [SP,#0x70+var_68]
00044a10: MOV             W9, #0xC93373B3
00044a14: MOV             W9, #0xC93373B3
00044a18: MOV             X0, X22
00044a1c: CMP             X8, #0
00044a20: MOV             W8, #0x8D5772CF
00044a24: MOV             W8, #0x8D5772CF
00044a28: CSEL            W9, W8, W9, EQ
00044a2c: B               loc_44894
00044a30: LDR             X8, [SP,#0x70+var_68]
00044a34: LDR             X9, [X19]
00044a38: ADRP            X2, #qword_F6700@PAGE ; runtime: 0xf6700='versionName'
00044a3c: ADRP            X3, #xmmword_F6710@PAGE ; runtime: 0xf6710='Ljava/lang/String;'
00044a40: LDR             X1, [X8]
00044a44: LDR             X8, [X9,#0x2F0]
00044a48: MOV             X0, X19
00044a4c: ADD             X2, X2, #qword_F6700@PAGEOFF ; runtime: 0xf6700='versionName'
00044a50: ADD             X3, X3, #xmmword_F6710@PAGEOFF ; runtime: 0xf6710='Ljava/lang/String;'
00044a54: BLR             X8
00044a58: STR             X0, [SP,#0x70+var_60]
00044a5c: LDR             X8, [SP,#0x70+var_60]
00044a60: MOV             X0, X22
00044a64: CMP             X8, #0
00044a68: CSEL            W9, W20, W25, EQ
00044a6c: B               loc_44894
00044a70: LDR             X24, [SP,#0x70+var_58]
00044a74: B               loc_44888
00044a78: MOV             X0, X19
00044a7c: BL              sub_B6D0
00044a80: LDR             X1, [SP,#0x70+var_68]
00044a84: MOV             X0, X19
00044a88: BL              sub_10C30
00044a8c: MOV             W9, #0xA1F4
00044a90: MOV             X23, XZR
00044a94: MOV             X0, X22
00044a98: MOVK            W9, #0x31E6,LSL#16
00044a9c: B               loc_44894
00044aa0: MOV             X0, X22
00044aa4: LDP             X29, X30, [SP,#0x70+var_s0]
00044aa8: LDP             X20, X19, [SP,#0x70+var_10]
00044aac: LDP             X22, X21, [SP,#0x70+var_20]
00044ab0: LDP             X24, X23, [SP,#0x70+var_30]
00044ab4: LDP             X26, X25, [SP,#0x70+var_40]
00044ab8: LDP             X28, X27, [SP,#0x70+var_50]
00044abc: ADD             SP, SP, #0x80
00044ac0: RET
00044ac4: SUB             SP, SP, #0xD0
00044ac8: STP             X28, X27, [SP,#0xC0+var_50]
00044acc: STP             X26, X25, [SP,#0xC0+var_40]
00044ad0: STP             X24, X23, [SP,#0xC0+var_30]
00044ad4: STP             X22, X21, [SP,#0xC0+var_20]
00044ad8: STP             X20, X19, [SP,#0xC0+var_10]
00044adc: STP             X29, X30, [SP,#0xC0+var_s0]
00044ae0: ADD             X29, SP, #0xC0
00044ae4: LDR             X8, [X0]
00044ae8: MOV             X20, X0
00044aec: STR             X1, [SP,#0xC0+var_B8]
00044af0: LDR             X8, [X8,#0xF8]
00044af4: BLR             X8
00044af8: MOV             W23, #0x5E4A
00044afc: MOV             W28, #0x8FED
00044b00: MOV             W25, #0xE87C
00044b04: MOV             W9, #0xD338
00044b08: MOVK            W23, #0xEB0D,LSL#16
00044b0c: MOVK            W28, #0xD024,LSL#16
00044b10: MOVK            W25, #0x385E,LSL#16
00044b14: MOVK            W9, #0x1610,LSL#16
00044b18: STR             X0, [SP,#0xC0+var_98]
00044b1c: B               loc_44B38
00044b20: MOV             X0, X27
00044b24: MOV             X1, X22
00044b28: MOV             X2, X26
00044b2c: MOV             X3, X24
00044b30: MOV             X4, X19
00044b34: MOV             X5, X21
00044b38: MOV             W8, W9
00044b3c: CMP             W9, W23
00044b40: MOV             X21, X5
00044b44: MOV             X19, X4
00044b48: MOV             X24, X3
00044b4c: MOV             X26, X2
00044b50: MOV             X22, X1
00044b54: MOV             X27, X0
00044b58: B.GT            loc_44C44
00044b5c: CMP             W8, W28
00044b60: B.GT            loc_44CD4
00044b64: MOV             W9, #0xA49D3023
00044b68: MOV             W9, #0xA49D3023
00044b6c: CMP             W8, W9
00044b70: B.LE            loc_44E2C
00044b74: MOV             W9, #0xC780E3AE
00044b78: MOV             W9, #0xC780E3AE
00044b7c: CMP             W8, W9
00044b80: B.GT            loc_45074
00044b84: MOV             W9, #0xA49D3024
00044b88: MOV             W9, #0xA49D3024
00044b8c: CMP             W8, W9
00044b90: B.EQ            loc_45240
00044b94: MOV             W9, #0xB9E50F38
00044b98: MOV             W9, #0xB9E50F38
00044b9c: CMP             W8, W9
00044ba0: MOV             X0, X27
00044ba4: MOV             X1, X22
00044ba8: MOV             X2, X26
00044bac: MOV             X3, X24
00044bb0: MOV             X4, X19
00044bb4: MOV             X5, X21
00044bb8: MOV             W9, W8
00044bbc: B.NE            loc_44B38
00044bc0: LDR             X1, [SP,#0xC0+var_98]
00044bc4: LDR             X8, [X20]
00044bc8: MOV             X0, X20
00044bcc: LDR             X8, [X8,#0xB8]
00044bd0: BLR             X8
00044bd4: LDR             X1, [SP,#0xC0+var_88]
00044bd8: LDR             X8, [X20]
00044bdc: MOV             X0, X20
00044be0: LDR             X8, [X8,#0xB8]
00044be4: BLR             X8
00044be8: LDR             X1, [SP,#0xC0+var_78]
00044bec: LDR             X8, [X20]
00044bf0: MOV             X0, X20
00044bf4: LDR             X8, [X8,#0xB8]
00044bf8: BLR             X8
00044bfc: LDR             X1, [SP,#0xC0+var_70]
00044c00: LDR             X8, [X20]
00044c04: MOV             X0, X20
00044c08: LDR             X8, [X8,#0xB8]
00044c0c: BLR             X8
00044c10: LDR             X1, [SP,#0xC0+var_68]
00044c14: LDR             X8, [X20]
00044c18: MOV             X0, X20
00044c1c: LDR             X8, [X8,#0xF8]
00044c20: BLR             X8
00044c24: STR             X0, [SP,#0xC0+var_60]
00044c28: LDR             X8, [SP,#0xC0+var_60]
00044c2c: MOV             W9, #0xEB0D5E4B
00044c30: MOV             W9, #0xEB0D5E4B
00044c34: CMP             X8, #0
00044c38: MOV             W8, #0xA49D3024
00044c3c: MOV             W8, #0xA49D3024
00044c40: B               loc_45384
00044c44: CMP             W8, W25
00044c48: B.GT            loc_44D8C
00044c4c: MOV             W9, #0x1610D337
00044c50: MOV             W9, #0x1610D337
00044c54: CMP             W8, W9
00044c58: B.LE            loc_44EB4
00044c5c: MOV             W9, #0x35E4B358
00044c60: MOV             W9, #0x35E4B358
00044c64: CMP             W8, W9
00044c68: B.GT            loc_4510C
00044c6c: MOV             W9, #0x1610D338
00044c70: MOV             W9, #0x1610D338
00044c74: CMP             W8, W9
00044c78: B.EQ            loc_45270
00044c7c: MOV             W9, #0x1A546818
00044c80: MOV             W9, #0x1A546818
00044c84: CMP             W8, W9
00044c88: MOV             X0, X27
00044c8c: MOV             X1, X22
00044c90: MOV             X2, X26
00044c94: MOV             X3, X24
00044c98: MOV             X4, X19
00044c9c: MOV             X5, X21
00044ca0: MOV             W9, W8
00044ca4: B.NE            loc_44B38
00044ca8: MOV             X0, X20
00044cac: BL              sub_B6D0
00044cb0: MOV             W9, #0x227A
00044cb4: MOV             X4, XZR
00044cb8: MOV             X0, X27
00044cbc: MOV             X1, X22
00044cc0: MOV             X2, X26
00044cc4: MOV             X3, X24
00044cc8: MOV             X5, X21
00044ccc: MOVK            W9, #0xD600,LSL#16
00044cd0: B               loc_44B38
00044cd4: MOV             W9, #0xD6002279
00044cd8: MOV             W9, #0xD6002279
00044cdc: CMP             W8, W9
00044ce0: B.LE            loc_44F2C
00044ce4: MOV             W9, #0xDC639A02
00044ce8: MOV             W9, #0xDC639A02
00044cec: CMP             W8, W9
00044cf0: B.GT            loc_45198
00044cf4: MOV             W9, #0xD600227A
00044cf8: MOV             W9, #0xD600227A
00044cfc: CMP             W8, W9
00044d00: MOV             W9, #0xE3AF
00044d04: MOV             X0, X27
00044d08: MOV             X1, X22
00044d0c: MOV             X2, X26
00044d10: MOV             X3, X19
00044d14: MOV             X4, X19
00044d18: MOV             X5, X21
00044d1c: MOVK            W9, #0xC780,LSL#16
00044d20: B.EQ            loc_44B38
00044d24: MOV             W9, #0xD967EA57
00044d28: MOV             W9, #0xD967EA57
00044d2c: CMP             W8, W9
00044d30: MOV             X0, X27
00044d34: MOV             X1, X22
00044d38: MOV             X2, X26
00044d3c: MOV             X3, X24
00044d40: MOV             X4, X19
00044d44: MOV             X5, X21
00044d48: MOV             W9, W8
00044d4c: B.NE            loc_44B38
00044d50: LDR             X8, [X20]
00044d54: ADRP            X1, #xmmword_F67B0@PAGE ; runtime: 0xf67b0='android/content/IntentFilter'
00044d58: MOV             X0, X20
00044d5c: ADD             X1, X1, #xmmword_F67B0@PAGEOFF ; runtime: 0xf67b0='android/content/IntentFilter'
00044d60: LDR             X8, [X8,#0x30]
00044d64: BLR             X8
00044d68: STR             X0, [SP,#0xC0+var_88]
00044d6c: LDR             X8, [SP,#0xC0+var_88]
00044d70: MOV             W9, #0xF310FCBD
00044d74: MOV             W9, #0xF310FCBD
00044d78: CMP             X8, #0
00044d7c: MOV             W8, #0x58659466
00044d80: MOV             W8, #0x58659466
00044d84: CSEL            W9, W9, W8, EQ
00044d88: B               loc_44B20
00044d8c: MOV             W9, #0x4BAAD20B
00044d90: MOV             W9, #0x4BAAD20B
00044d94: CMP             W8, W9
00044d98: B.LE            loc_44FBC
00044d9c: MOV             W9, #0x58659465
00044da0: MOV             W9, #0x58659465
00044da4: CMP             W8, W9
00044da8: B.LE            loc_45200
00044dac: MOV             W9, #0x58659466
00044db0: MOV             W9, #0x58659466
00044db4: CMP             W8, W9
00044db8: B.EQ            loc_4528C
00044dbc: MOV             W9, #0x5FD2CB49
00044dc0: MOV             W9, #0x5FD2CB49
00044dc4: CMP             W8, W9
00044dc8: MOV             X0, X27
00044dcc: MOV             X1, X22
00044dd0: MOV             X2, X26
00044dd4: MOV             X3, X24
00044dd8: MOV             X4, X19
00044ddc: MOV             X5, X21
00044de0: MOV             W9, W8
00044de4: B.NE            loc_44B38
00044de8: LDR             X1, [SP,#0xC0+var_98]
00044dec: LDR             X8, [X20]
00044df0: ADRP            X2, #xmmword_F6730@PAGE ; runtime: 0xf6730='registerReceiver'
00044df4: ADRP            X3, #xmmword_F6750@PAGE ; runtime: 0xf6750='(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;'
00044df8: MOV             X0, X20
00044dfc: LDR             X8, [X8,#0x108]
00044e00: ADD             X2, X2, #xmmword_F6730@PAGEOFF ; runtime: 0xf6730='registerReceiver'
00044e04: ADD             X3, X3, #xmmword_F6750@PAGEOFF ; runtime: 0xf6750='(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;'
00044e08: BLR             X8
00044e0c: STR             X0, [SP,#0xC0+var_90]
00044e10: LDR             X8, [SP,#0xC0+var_90]
00044e14: MOV             W9, #0xD967EA57
00044e18: MOV             W9, #0xD967EA57
00044e1c: CMP             X8, #0
00044e20: MOV             W8, #0x80295D8A
00044e24: MOV             W8, #0x80295D8A
00044e28: B               loc_45384
00044e2c: MOV             W9, #0x80295D8A
00044e30: MOV             W9, #0x80295D8A
00044e34: CMP             W8, W9
00044e38: B.EQ            loc_452D4
00044e3c: MOV             W9, #0x9054BAD9
00044e40: MOV             W9, #0x9054BAD9
00044e44: CMP             W8, W9
00044e48: B.EQ            loc_45300
00044e4c: MOV             W9, #0x9A5E1E76
00044e50: MOV             W9, #0x9A5E1E76
00044e54: CMP             W8, W9
00044e58: MOV             X0, X27
00044e5c: MOV             X1, X22
00044e60: MOV             X2, X26
00044e64: MOV             X3, X24
00044e68: MOV             X4, X19
00044e6c: MOV             X5, X21
00044e70: MOV             W9, W8
00044e74: B.NE            loc_44B38
00044e78: LDR             X2, [SP,#0xC0+var_90]
00044e7c: LDR             X4, [SP,#0xC0+var_70]
00044e80: LDR             X1, [SP,#0xC0+var_B8]
00044e84: MOV             X0, X20
00044e88: MOV             X3, XZR
00044e8c: BL              sub_BF48
00044e90: STR             X0, [SP,#0xC0+var_68]
00044e94: LDR             X8, [SP,#0xC0+var_68]
00044e98: MOV             W9, #0x376BAB43
00044e9c: MOV             W9, #0x376BAB43
00044ea0: CMP             X8, #0
00044ea4: MOV             W8, #0xB9E50F38
00044ea8: MOV             W8, #0xB9E50F38
00044eac: CSEL            W9, W9, W8, EQ
00044eb0: B               loc_44B20
00044eb4: MOV             W9, #0xEB0D5E4B
00044eb8: MOV             W9, #0xEB0D5E4B
00044ebc: CMP             W8, W9
00044ec0: B.EQ            loc_4532C
00044ec4: MOV             W9, #0xF30A4527
00044ec8: MOV             W9, #0xF30A4527
00044ecc: CMP             W8, W9
00044ed0: B.EQ            loc_45354
00044ed4: MOV             W9, #0xF310FCBD
00044ed8: MOV             W9, #0xF310FCBD
00044edc: CMP             W8, W9
00044ee0: MOV             X0, X27
00044ee4: MOV             X1, X22
00044ee8: MOV             X2, X26
00044eec: MOV             X3, X24
00044ef0: MOV             X4, X19
00044ef4: MOV             X5, X21
00044ef8: MOV             W9, W8
00044efc: B.NE            loc_44B38
00044f00: MOV             X0, X20
00044f04: BL              sub_B6D0
00044f08: MOV             W9, #0xE87D
00044f0c: MOV             X2, XZR
00044f10: MOV             X0, X27
00044f14: MOV             X1, X22
00044f18: MOV             X3, X24
00044f1c: MOV             X4, X19
00044f20: MOV             X5, X21
00044f24: MOVK            W9, #0x385E,LSL#16
00044f28: B               loc_44B38
00044f2c: MOV             W9, #0xD0248FEE
00044f30: MOV             W9, #0xD0248FEE
00044f34: CMP             W8, W9
00044f38: MOV             W9, #0x227A
00044f3c: MOV             X0, X27
00044f40: MOV             X1, X22
00044f44: MOV             X2, X26
00044f48: MOV             X3, X24
00044f4c: MOV             X4, X21
00044f50: MOV             X5, X21
00044f54: MOVK            W9, #0xD600,LSL#16
00044f58: B.EQ            loc_44B38
00044f5c: MOV             W9, #0xD36EEE29
00044f60: MOV             W9, #0xD36EEE29
00044f64: CMP             W8, W9
00044f68: B.EQ            loc_4538C
00044f6c: MOV             W9, #0xD5DD78EB
00044f70: MOV             W9, #0xD5DD78EB
00044f74: CMP             W8, W9
00044f78: MOV             X0, X27
00044f7c: MOV             X1, X22
00044f80: MOV             X2, X26
00044f84: MOV             X3, X24
00044f88: MOV             X4, X19
00044f8c: MOV             X5, X21
00044f90: MOV             W9, W8
00044f94: B.NE            loc_44B38
00044f98: LDUR            X8, [X29,#var_58]
00044f9c: LDR             X9, [SP,#0xC0+var_68]
00044fa0: STR             X9, [X8,#8]
00044fa4: LDUR            X8, [X29,#var_58]
00044fa8: LDR             X9, [SP,#0xC0+var_60]
00044fac: STR             X9, [X8]
00044fb0: LDUR            X8, [X29,#var_58]
00044fb4: STR             X8, [SP,#0xC0+var_A8]
00044fb8: B               loc_45390
00044fbc: MOV             W9, #0x385EE87D
00044fc0: MOV             W9, #0x385EE87D
00044fc4: CMP             W8, W9
00044fc8: MOV             W9, #0xB359
00044fcc: MOV             X0, X27
00044fd0: MOV             X1, X26
00044fd4: MOV             X2, X26
00044fd8: MOV             X3, X24
00044fdc: MOV             X4, X19
00044fe0: MOV             X5, X21
00044fe4: MOVK            W9, #0x35E4,LSL#16
00044fe8: B.EQ            loc_44B38
00044fec: MOV             W9, #0xCC2B
00044ff0: LDR             X5, [SP,#0xC0+var_A0]
00044ff4: MOVK            W9, #0x447B,LSL#16
00044ff8: CMP             W8, W9
00044ffc: MOV             W9, #0x8FEE
00045000: MOV             X0, X27
00045004: MOV             X1, X22
00045008: MOV             X2, X26
0004500c: MOV             X3, X24
00045010: MOV             X4, X19
00045014: MOVK            W9, #0xD024,LSL#16
00045018: B.EQ            loc_44B38
0004501c: MOV             W9, #0x45EE79B0
00045020: MOV             W9, #0x45EE79B0
00045024: CMP             W8, W9
00045028: MOV             X0, X27
0004502c: MOV             X1, X22
00045030: MOV             X2, X26
00045034: MOV             X3, X24
00045038: MOV             X4, X19
0004503c: MOV             X5, X21
00045040: MOV             W9, W8
00045044: B.NE            loc_44B38
00045048: LDR             X8, [SP,#0xC0+var_A8]
0004504c: MOV             W9, #0x84D6
00045050: MOV             X0, X27
00045054: MOV             X1, X22
00045058: MOV             X2, X26
0004505c: MOV             X3, X24
00045060: MOV             X4, X19
00045064: MOV             X5, X21
00045068: STR             X8, [SP,#0xC0+var_B0]
0004506c: MOVK            W9, #0xDDDD,LSL#16
00045070: B               loc_44B38
00045074: MOV             W9, #0xC780E3AF
00045078: MOV             W9, #0xC780E3AF
0004507c: CMP             W8, W9
00045080: MOV             W9, #0xE87D
00045084: MOV             X0, X27
00045088: MOV             X1, X22
0004508c: MOV             X2, X24
00045090: MOV             X3, X24
00045094: MOV             X4, X19
00045098: MOV             X5, X21
0004509c: MOVK            W9, #0x385E,LSL#16
000450a0: B.EQ            loc_44B38
000450a4: MOV             W9, #0xCD697622
000450a8: MOV             W9, #0xCD697622
000450ac: CMP             W8, W9
000450b0: MOV             X0, X27
000450b4: MOV             X1, X22
000450b8: MOV             X2, X26
000450bc: MOV             X3, X24
000450c0: MOV             X4, X19
000450c4: MOV             X5, X21
000450c8: MOV             W9, W8
000450cc: B.NE            loc_44B38
000450d0: LDR             X8, [X20]
000450d4: ADRP            X1, #xmmword_F6800@PAGE ; runtime: 0xf6800='android.intent.action.BATTERY_CHANGED'
000450d8: MOV             X0, X20
000450dc: ADD             X1, X1, #xmmword_F6800@PAGEOFF ; runtime: 0xf6800='android.intent.action.BATTERY_CHANGED'
000450e0: LDR             X8, [X8,#0x538]
000450e4: BLR             X8
000450e8: STR             X0, [SP,#0xC0+var_78]
000450ec: LDR             X8, [SP,#0xC0+var_78]
000450f0: MOV             W9, #0x1A546818
000450f4: MOV             W9, #0x1A546818
000450f8: CMP             X8, #0
000450fc: MOV             W8, #0xF30A4527
00045100: MOV             W8, #0xF30A4527
00045104: CSEL            W9, W9, W8, EQ
00045108: B               loc_44B20
0004510c: MOV             W9, #0x35E4B359
00045110: MOV             W9, #0x35E4B359
00045114: CMP             W8, W9
00045118: MOV             W9, #0x7ACF
0004511c: MOV             X0, X22
00045120: MOV             X1, X22
00045124: MOV             X2, X26
00045128: MOV             X3, X24
0004512c: MOV             X4, X19
00045130: MOV             X5, X21
00045134: MOVK            W9, #0x4F66,LSL#16
00045138: B.EQ            loc_44B38
0004513c: MOV             W9, #0x376BAB43
00045140: MOV             W9, #0x376BAB43
00045144: CMP             W8, W9
00045148: MOV             X0, X27
0004514c: MOV             X1, X22
00045150: MOV             X2, X26
00045154: MOV             X3, X24
00045158: MOV             X4, X19
0004515c: MOV             X5, X21
00045160: MOV             W9, W8
00045164: B.NE            loc_44B38
00045168: MOV             X0, X20
0004516c: BL              sub_B6D0
00045170: MOV             W9, #0xCC2B
00045174: STR             XZR, [SP,#0xC0+var_A0]
00045178: MOV             X0, X27
0004517c: MOV             X1, X22
00045180: MOV             X2, X26
00045184: MOV             X3, X24
00045188: MOV             X4, X19
0004518c: MOV             X5, X21
00045190: MOVK            W9, #0x447B,LSL#16
00045194: B               loc_44B38
00045198: MOV             W9, #0xDC639A03
0004519c: MOV             W9, #0xDC639A03
000451a0: CMP             W8, W9
000451a4: B.EQ            loc_453B4
000451a8: MOV             W9, #0xDDDD84D6
000451ac: MOV             W9, #0xDDDD84D6
000451b0: CMP             W8, W9
000451b4: MOV             X0, X27
000451b8: MOV             X1, X22
000451bc: MOV             X2, X26
000451c0: MOV             X3, X24
000451c4: MOV             X4, X19
000451c8: MOV             X5, X21
000451cc: MOV             W9, W8
000451d0: B.NE            loc_44B38
000451d4: LDR             X8, [SP,#0xC0+var_B0]
000451d8: MOV             W9, #0xCC2B
000451dc: MOV             X0, X27
000451e0: MOV             X1, X22
000451e4: MOV             X2, X26
000451e8: MOV             X3, X24
000451ec: MOV             X4, X19
000451f0: MOV             X5, X21
000451f4: STR             X8, [SP,#0xC0+var_A0]
000451f8: MOVK            W9, #0x447B,LSL#16
000451fc: B               loc_44B38
00045200: MOV             W9, #0x4BAAD20C
00045204: MOV             W9, #0x4BAAD20C
00045208: CMP             W8, W9
0004520c: B.EQ            loc_453E0
00045210: MOV             W9, #0x4F667ACF
00045214: MOV             W9, #0x4F667ACF
00045218: CMP             W8, W9
0004521c: MOV             X0, X27
00045220: MOV             X1, X22
00045224: MOV             X2, X26
00045228: MOV             X3, X24
0004522c: MOV             X4, X19
00045230: MOV             X5, X21
00045234: MOV             W9, W8
00045238: B.NE            loc_44B38
0004523c: B               loc_4540C
00045240: MOV             X0, X20
00045244: BL              sub_B6D0
00045248: MOV             W9, #0x84D6
0004524c: STR             XZR, [SP,#0xC0+var_B0]
00045250: MOV             X0, X27
00045254: MOV             X1, X22
00045258: MOV             X2, X26
0004525c: MOV             X3, X24
00045260: MOV             X4, X19
00045264: MOV             X5, X21
00045268: MOVK            W9, #0xDDDD,LSL#16
0004526c: B               loc_44B38
00045270: LDR             X8, [SP,#0xC0+var_98]
00045274: MOV             W9, #0x5FD2CB49
00045278: MOV             W9, #0x5FD2CB49
0004527c: CMP             X8, #0
00045280: MOV             W8, #0xDC639A03
00045284: MOV             W8, #0xDC639A03
00045288: B               loc_45384
0004528c: LDR             X1, [SP,#0xC0+var_88]
00045290: LDR             X8, [X20]
00045294: ADRP            X2, #byte_F67D0@PAGE ; runtime: 0xf67d0='<init>'
00045298: ADRP            X3, #xmmword_F67E0@PAGE ; runtime: 0xf67e0='(Ljava/lang/String;)V'
0004529c: MOV             X0, X20
000452a0: LDR             X8, [X8,#0x108]
000452a4: ADD             X2, X2, #byte_F67D0@PAGEOFF ; runtime: 0xf67d0='<init>'
000452a8: ADD             X3, X3, #xmmword_F67E0@PAGEOFF ; runtime: 0xf67e0='(Ljava/lang/String;)V'
000452ac: BLR             X8
000452b0: STR             X0, [SP,#0xC0+var_80]
000452b4: LDR             X8, [SP,#0xC0+var_80]
000452b8: MOV             W9, #0x4BAAD20C
000452bc: MOV             W9, #0x4BAAD20C
000452c0: CMP             X8, #0
000452c4: MOV             W8, #0xCD697622
000452c8: MOV             W8, #0xCD697622
000452cc: CSEL            W9, W9, W8, EQ
000452d0: B               loc_44B20
000452d4: MOV             X0, X20
000452d8: BL              sub_B6D0
000452dc: MOV             W9, #0xB359
000452e0: MOV             X1, XZR
000452e4: MOV             X0, X27
000452e8: MOV             X2, X26
000452ec: MOV             X3, X24
000452f0: MOV             X4, X19
000452f4: MOV             X5, X21
000452f8: MOVK            W9, #0x35E4,LSL#16
000452fc: B               loc_44B38
00045300: MOV             X0, X20
00045304: BL              sub_B6D0
00045308: MOV             W9, #0x8FEE
0004530c: MOV             X5, XZR
00045310: MOV             X0, X27
00045314: MOV             X1, X22
00045318: MOV             X2, X26
0004531c: MOV             X3, X24
00045320: MOV             X4, X19
00045324: MOVK            W9, #0xD024,LSL#16
00045328: B               loc_44B38
0004532c: MOV             W0, #0x10; size
00045330: BL              .malloc
00045334: STUR            X0, [X29,#var_58]
00045338: LDUR            X8, [X29,#var_58]
0004533c: MOV             W9, #0xD5DD78EB
00045340: MOV             W9, #0xD5DD78EB
00045344: CMP             X8, #0
00045348: MOV             W8, #0xD36EEE29
0004534c: MOV             W8, #0xD36EEE29
00045350: B               loc_45384
00045354: LDR             X1, [SP,#0xC0+var_88]
00045358: LDR             X2, [SP,#0xC0+var_80]
0004535c: LDR             X3, [SP,#0xC0+var_78]
00045360: MOV             X0, X20
00045364: BL              sub_B7BC
00045368: STR             X0, [SP,#0xC0+var_70]
0004536c: LDR             X8, [SP,#0xC0+var_70]
00045370: MOV             W9, #0x9A5E1E76
00045374: MOV             W9, #0x9A5E1E76
00045378: CMP             X8, #0
0004537c: MOV             W8, #0x9054BAD9
00045380: MOV             W8, #0x9054BAD9
00045384: CSEL            W9, W8, W9, EQ
00045388: B               loc_44B20
0004538c: STR             XZR, [SP,#0xC0+var_A8]
00045390: MOV             W9, #0x79B0
00045394: MOV             X0, X27
00045398: MOV             X1, X22
0004539c: MOV             X2, X26
000453a0: MOV             X3, X24
000453a4: MOV             X4, X19
000453a8: MOV             X5, X21
000453ac: MOVK            W9, #0x45EE,LSL#16
000453b0: B               loc_44B38
000453b4: MOV             X0, X20
000453b8: BL              sub_B6D0
000453bc: MOV             W9, #0x7ACF
000453c0: MOV             X0, XZR
000453c4: MOV             X1, X22
000453c8: MOV             X2, X26
000453cc: MOV             X3, X24
000453d0: MOV             X4, X19
000453d4: MOV             X5, X21
000453d8: MOVK            W9, #0x4F66,LSL#16
000453dc: B               loc_44B38
000453e0: MOV             X0, X20
000453e4: BL              sub_B6D0
000453e8: MOV             W9, #0xE3AF
000453ec: MOV             X3, XZR
000453f0: MOV             X0, X27
000453f4: MOV             X1, X22
000453f8: MOV             X2, X26
000453fc: MOV             X4, X19
00045400: MOV             X5, X21
00045404: MOVK            W9, #0xC780,LSL#16
00045408: B               loc_44B38
0004540c: MOV             X0, X27
00045410: LDP             X29, X30, [SP,#0xC0+var_s0]
00045414: LDP             X20, X19, [SP,#0xC0+var_10]
00045418: LDP             X22, X21, [SP,#0xC0+var_20]
0004541c: LDP             X24, X23, [SP,#0xC0+var_30]
00045420: LDP             X26, X25, [SP,#0xC0+var_40]
00045424: LDP             X28, X27, [SP,#0xC0+var_50]
00045428: ADD             SP, SP, #0xD0
0004542c: RET
00045430: MOV             W4, #0xFFFFFFFF
00045434: B               sub_C4A8
00045438: SUB             SP, SP, #0xA0
0004543c: STP             X28, X27, [SP,#0x90+var_50]
00045440: STP             X26, X25, [SP,#0x90+var_40]
00045444: STP             X24, X23, [SP,#0x90+var_30]
00045448: STP             X22, X21, [SP,#0x90+var_20]
0004544c: STP             X20, X19, [SP,#0x90+var_10]
00045450: STP             X29, X30, [SP,#0x90+var_s0]
00045454: ADD             X29, SP, #0x90
00045458: MOV             W8, #0x9D4C
0004545c: MOV             W9, #0xEC45
00045460: CMP             X1, #0
00045464: MOVK            W8, #0x53F0,LSL#16
00045468: MOVK            W9, #0x5F04,LSL#16
0004546c: MOV             W22, #0x192C
00045470: MOV             W28, #0x64A5
00045474: MOV             W25, #0x9D4B
00045478: MOV             W27, #0x793B
0004547c: MOV             W23, #0xEC44
00045480: CSEL            W8, W9, W8, EQ
00045484: MOV             W9, #0xEF17
00045488: MOV             X20, X0
0004548c: MOVK            W22, #0x1A29,LSL#16
00045490: MOVK            W28, #0xD505,LSL#16
00045494: MOVK            W25, #0x53F0,LSL#16
00045498: MOVK            W27, #0x46DC,LSL#16
0004549c: MOVK            W23, #0x5F04,LSL#16
000454a0: MOVK            W9, #0x52BC,LSL#16
000454a4: STR             X1, [SP,#0x90+var_80]
000454a8: STR             W8, [SP,#0x90+var_84]
000454ac: B               loc_454C0
000454b0: CSEL            W9, W9, W8, EQ
000454b4: MOV             X0, X19
000454b8: MOV             X1, X21
000454bc: MOV             X2, X24
000454c0: MOV             W8, W9
000454c4: CMP             W9, W22
000454c8: MOV             X24, X2
000454cc: MOV             X21, X1
000454d0: MOV             X19, X0
000454d4: B.LE            loc_4555C
000454d8: CMP             W8, W25
000454dc: B.GT            loc_455D4
000454e0: CMP             W8, W27
000454e4: B.GT            loc_45688
000454e8: MOV             W9, #0x1A29192D
000454ec: MOV             W9, #0x1A29192D
000454f0: CMP             W8, W9
000454f4: B.EQ            loc_457C8
000454f8: MOV             W9, #0x439BFA10
000454fc: MOV             W9, #0x439BFA10
00045500: CMP             W8, W9
00045504: MOV             X0, X19
00045508: MOV             X1, X21
0004550c: MOV             X2, X24
00045510: MOV             W9, W8
00045514: B.NE            loc_454C0
00045518: LDR             X1, [SP,#0x90+var_70]
0004551c: LDR             X8, [X20]
00045520: ADRP            X2, #qword_F6848@PAGE ; runtime: 0xf6848='getDefault'
00045524: ADRP            X3, #xmmword_F6860@PAGE ; runtime: 0xf6860='()Ljava/util/Locale;'
00045528: MOV             X0, X20
0004552c: LDR             X8, [X8,#0x388]
00045530: ADD             X2, X2, #qword_F6848@PAGEOFF ; runtime: 0xf6848='getDefault'
00045534: ADD             X3, X3, #xmmword_F6860@PAGEOFF ; runtime: 0xf6860='()Ljava/util/Locale;'
00045538: BLR             X8
0004553c: STR             X0, [SP,#0x90+var_68]
00045540: LDR             X8, [SP,#0x90+var_68]
00045544: MOV             W9, #0xD2D4F1F4
00045548: MOV             W9, #0xD2D4F1F4
0004554c: CMP             X8, #0
00045550: MOV             W8, #0xAB8710D5
00045554: MOV             W8, #0xAB8710D5
00045558: B               loc_454B0
0004555c: CMP             W8, W28
00045560: B.GT            loc_45614
00045564: MOV             W9, #0xABF8BCE4
00045568: MOV             W9, #0xABF8BCE4
0004556c: CMP             W8, W9
00045570: B.GT            loc_456E0
00045574: MOV             W9, #0x9065C039
00045578: MOV             W9, #0x9065C039
0004557c: CMP             W8, W9
00045580: B.EQ            loc_457D8
00045584: MOV             W9, #0xAB8710D5
00045588: MOV             W9, #0xAB8710D5
0004558c: CMP             W8, W9
00045590: MOV             X0, X19
00045594: MOV             X1, X21
00045598: MOV             X2, X24
0004559c: MOV             W9, W8
000455a0: B.NE            loc_454C0
000455a4: LDR             X1, [SP,#0x90+var_70]
000455a8: LDR             X2, [SP,#0x90+var_68]
000455ac: MOV             X0, X20
000455b0: BL              sub_CEE8
000455b4: STR             X0, [SP,#0x90+var_60]
000455b8: LDR             X8, [SP,#0x90+var_60]
000455bc: MOV             W9, #0x18FDBD0A
000455c0: MOV             W9, #0x18FDBD0A
000455c4: CMP             X8, #0
000455c8: MOV             W8, #0xABF8BCE5
000455cc: MOV             W8, #0xABF8BCE5
000455d0: B               loc_454B0
000455d4: CMP             W8, W23
000455d8: B.GT            loc_45730
000455dc: MOV             W9, #0x53F09D4C
000455e0: MOV             W9, #0x53F09D4C
000455e4: CMP             W8, W9
000455e8: B.EQ            loc_4582C
000455ec: MOV             W9, #0x55E89DAE
000455f0: MOV             W9, #0x55E89DAE
000455f4: CMP             W8, W9
000455f8: MOV             X0, X19
000455fc: MOV             X1, X21
00045600: MOV             X2, X24
00045604: MOV             W9, W8
00045608: B.NE            loc_454C0
0004560c: STR             X19, [SP,#0x90+var_78]
00045610: B               loc_458B0
00045614: MOV             W9, #0xE7C5329C
00045618: MOV             W9, #0xE7C5329C
0004561c: CMP             W8, W9
00045620: B.LE            loc_45780
00045624: MOV             W9, #0xE7C5329D
00045628: MOV             W9, #0xE7C5329D
0004562c: CMP             W8, W9
00045630: MOV             W9, #0x9DAE
00045634: MOV             X0, X21
00045638: MOV             X1, X21
0004563c: MOV             X2, X24
00045640: MOVK            W9, #0x55E8,LSL#16
00045644: B.EQ            loc_454C0
00045648: MOV             W9, #0x18FDBD0A
0004564c: MOV             W9, #0x18FDBD0A
00045650: CMP             W8, W9
00045654: MOV             X0, X19
00045658: MOV             X1, X21
0004565c: MOV             X2, X24
00045660: MOV             W9, W8
00045664: B.NE            loc_454C0
00045668: MOV             X0, X20
0004566c: BL              sub_B6D0
00045670: MOV             W9, #0x793C
00045674: MOV             X2, XZR
00045678: MOV             X0, X19
0004567c: MOV             X1, X21
00045680: MOVK            W9, #0x46DC,LSL#16
00045684: B               loc_454C0
00045688: MOV             W9, #0x46DC793C
0004568c: MOV             W9, #0x46DC793C
00045690: CMP             W8, W9
00045694: MOV             W9, #0x329D
00045698: MOV             X0, X19
0004569c: MOV             X1, X24
000456a0: MOV             X2, X24
000456a4: MOVK            W9, #0xE7C5,LSL#16
000456a8: B.EQ            loc_454C0
000456ac: MOV             W9, #0x52BCEF17
000456b0: MOV             W9, #0x52BCEF17
000456b4: CMP             W8, W9
000456b8: MOV             X0, X19
000456bc: MOV             X1, X21
000456c0: MOV             X2, X24
000456c4: MOV             W9, W8
000456c8: B.NE            loc_454C0
000456cc: LDR             W9, [SP,#0x90+var_84]
000456d0: MOV             X0, X19
000456d4: MOV             X1, X21
000456d8: MOV             X2, X24
000456dc: B               loc_454C0
000456e0: MOV             W9, #0xABF8BCE5
000456e4: MOV             W9, #0xABF8BCE5
000456e8: CMP             W8, W9
000456ec: B.EQ            loc_45864
000456f0: MOV             W9, #0xD2D4F1F4
000456f4: MOV             W9, #0xD2D4F1F4
000456f8: CMP             W8, W9
000456fc: MOV             X0, X19
00045700: MOV             X1, X21
00045704: MOV             X2, X24
00045708: MOV             W9, W8
0004570c: B.NE            loc_454C0
00045710: MOV             X0, X20
00045714: BL              sub_B6D0
00045718: MOV             W9, #0x329D
0004571c: MOV             X1, XZR
00045720: MOV             X0, X19
00045724: MOV             X2, X24
00045728: MOVK            W9, #0xE7C5,LSL#16
0004572c: B               loc_454C0
00045730: MOV             W9, #0x5F04EC45
00045734: MOV             W9, #0x5F04EC45
00045738: CMP             W8, W9
0004573c: B.EQ            loc_458A4
00045740: MOV             W9, #0x63265363
00045744: MOV             W9, #0x63265363
00045748: CMP             W8, W9
0004574c: MOV             X0, X19
00045750: MOV             X1, X21
00045754: MOV             X2, X24
00045758: MOV             W9, W8
0004575c: B.NE            loc_454C0
00045760: MOV             X0, X20
00045764: BL              sub_B6D0
00045768: MOV             W9, #0x9DAE
0004576c: MOV             X0, XZR
00045770: MOV             X1, X21
00045774: MOV             X2, X24
00045778: MOVK            W9, #0x55E8,LSL#16
0004577c: B               loc_454C0
00045780: MOV             W9, #0xE05E2A5F
00045784: MOV             W9, #0xE05E2A5F
00045788: CMP             W8, W9
0004578c: MOV             W9, #0x793C
00045790: MOV             X0, X19
00045794: MOV             X1, X21
00045798: MOV             X2, X26
0004579c: MOVK            W9, #0x46DC,LSL#16
000457a0: B.EQ            loc_454C0
000457a4: MOV             W9, #0xD50564A6
000457a8: MOV             W9, #0xD50564A6
000457ac: CMP             W8, W9
000457b0: MOV             X0, X19
000457b4: MOV             X1, X21
000457b8: MOV             X2, X24
000457bc: MOV             W9, W8
000457c0: B.NE            loc_454C0
000457c4: B               loc_458C8
000457c8: MOV             X0, X20
000457cc: BL              sub_B6D0
000457d0: MOV             X26, XZR
000457d4: B               loc_45814
000457d8: LDR             X1, [SP,#0x90+var_60]
000457dc: LDR             X2, [SP,#0x90+var_58]
000457e0: MOV             X0, X20
000457e4: BL              sub_BF48
000457e8: LDR             X1, [SP,#0x90+var_70]
000457ec: LDR             X8, [X20]
000457f0: MOV             X26, X0
000457f4: MOV             X0, X20
000457f8: LDR             X8, [X8,#0xB8]
000457fc: BLR             X8
00045800: LDR             X1, [SP,#0x90+var_60]
00045804: LDR             X8, [X20]
00045808: MOV             X0, X20
0004580c: LDR             X8, [X8,#0xB8]
00045810: BLR             X8
00045814: MOV             W9, #0x2A5F
00045818: MOV             X0, X19
0004581c: MOV             X1, X21
00045820: MOV             X2, X24
00045824: MOVK            W9, #0xE05E,LSL#16
00045828: B               loc_454C0
0004582c: LDR             X8, [X20]
00045830: ADRP            X1, #xmmword_F6830@PAGE ; runtime: 0xf6830='java/util/Locale'
00045834: MOV             X0, X20
00045838: ADD             X1, X1, #xmmword_F6830@PAGEOFF ; runtime: 0xf6830='java/util/Locale'
0004583c: LDR             X8, [X8,#0x30]
00045840: BLR             X8
00045844: STR             X0, [SP,#0x90+var_70]
00045848: LDR             X8, [SP,#0x90+var_70]
0004584c: MOV             W9, #0x63265363
00045850: MOV             W9, #0x63265363
00045854: CMP             X8, #0
00045858: MOV             W8, #0x439BFA10
0004585c: MOV             W8, #0x439BFA10
00045860: B               loc_454B0
00045864: LDR             X1, [SP,#0x90+var_70]
00045868: LDR             X8, [X20]
0004586c: LDR             X2, [SP,#0x90+var_80]
00045870: ADRP            X3, #xmmword_F65F0@PAGE ; runtime: 0xf65f0='()Ljava/lang/String;'
00045874: MOV             X0, X20
00045878: LDR             X8, [X8,#0x108]
0004587c: ADD             X3, X3, #xmmword_F65F0@PAGEOFF ; runtime: 0xf65f0='()Ljava/lang/String;'
00045880: BLR             X8
00045884: STR             X0, [SP,#0x90+var_58]
00045888: LDR             X8, [SP,#0x90+var_58]
0004588c: MOV             W9, #0x1A29192D
00045890: MOV             W9, #0x1A29192D
00045894: CMP             X8, #0
00045898: MOV             W8, #0x9065C039
0004589c: MOV             W8, #0x9065C039
000458a0: B               loc_454B0
000458a4: MOV             X0, X20
000458a8: BL              sub_B6D0
000458ac: STR             XZR, [SP,#0x90+var_78]
000458b0: MOV             W9, #0x64A6
000458b4: MOV             X0, X19
000458b8: MOV             X1, X21
000458bc: MOV             X2, X24
000458c0: MOVK            W9, #0xD505,LSL#16
000458c4: B               loc_454C0
000458c8: LDR             X0, [SP,#0x90+var_78]
000458cc: LDP             X29, X30, [SP,#0x90+var_s0]
000458d0: LDP             X20, X19, [SP,#0x90+var_10]
000458d4: LDP             X22, X21, [SP,#0x90+var_20]
000458d8: LDP             X24, X23, [SP,#0x90+var_30]
000458dc: LDP             X26, X25, [SP,#0x90+var_40]
000458e0: LDP             X28, X27, [SP,#0x90+var_50]
000458e4: ADD             SP, SP, #0xA0
000458e8: RET
000458ec: SUB             SP, SP, #0x80
000458f0: STP             X28, X27, [SP,#0x70+var_50]
000458f4: STP             X26, X25, [SP,#0x70+var_40]
000458f8: STP             X24, X23, [SP,#0x70+var_30]
000458fc: STP             X22, X21, [SP,#0x70+var_20]
00045900: STP             X20, X19, [SP,#0x70+var_10]
00045904: STP             X29, X30, [SP,#0x70+var_s0]
00045908: ADD             X29, SP, #0x70
0004590c: STR             X1, [SP,#0x70+var_70]
00045910: MOV             X1, X2
00045914: MOV             X20, X0
00045918: BL              sub_45AA4
0004591c: MOV             W24, #0x870F
00045920: MOV             W25, #0x34A6
00045924: MOV             W26, #0xE826
00045928: MOV             W27, #0x5884
0004592c: MOV             W28, #0xEE85
00045930: MOV             W21, #0x44F4
00045934: MOV             W19, #0xCDC4
00045938: MOV             W22, #0x34A7
0004593c: MOV             W23, #0xCDC5
00045940: MOV             W8, #0x870F
00045944: STR             X0, [SP,#0x70+var_60]
00045948: MOVK            W24, #0xDFA9,LSL#16
0004594c: MOVK            W25, #0xF383,LSL#16
00045950: MOVK            W26, #0xD1F6,LSL#16
00045954: MOVK            W27, #0xF24A,LSL#16
00045958: MOVK            W28, #0x4F3C,LSL#16
0004595c: MOVK            W21, #0x40F7,LSL#16
00045960: MOVK            W19, #0x4AA2,LSL#16
00045964: MOVK            W22, #0xF383,LSL#16
00045968: MOVK            W23, #0x4AA2,LSL#16
0004596c: MOVK            W8, #0xDFA9,LSL#16
00045970: B               loc_4598C
00045974: STR             W9, [SP,#0x70+var_64]
00045978: B               loc_4598C
0004597c: MOV             W8, #0x4AA2CDC5
00045980: MOV             W8, #0x4AA2CDC5
00045984: MOV             W9, #0xFFFFFFFF
00045988: B               loc_45974
0004598c: CMP             W8, W25
00045990: B.LE            loc_459E4
00045994: CMP             W8, W19
00045998: B.LE            loc_45A34
0004599c: CMP             W8, W23
000459a0: B.EQ            loc_45A80
000459a4: CMP             W8, W28
000459a8: B.NE            loc_4598C
000459ac: LDR             X8, [SP,#0x70+var_60]
000459b0: MOV             X0, X20
000459b4: LDR             X1, [X8,#8]
000459b8: LDR             X2, [SP,#0x70+var_58]
000459bc: LDR             X8, [X20]
000459c0: LDR             X8, [X8,#0x320]
000459c4: BLR             X8
000459c8: LDR             X1, [SP,#0x70+var_60]
000459cc: STR             W0, [SP,#0x70+var_68]
000459d0: MOV             X0, X20
000459d4: BL              sub_10C30
000459d8: MOV             W8, #0xF38334A7
000459dc: MOV             W8, #0xF38334A7
000459e0: B               loc_4598C
000459e4: CMP             W8, W26
000459e8: B.EQ            loc_4597C
000459ec: CMP             W8, W24
000459f0: B.EQ            loc_45A60
000459f4: CMP             W8, W27
000459f8: B.NE            loc_4598C
000459fc: LDR             X8, [SP,#0x70+var_60]
00045a00: LDR             X9, [X20]
00045a04: LDR             X2, [SP,#0x70+var_70]
00045a08: ADRP            X3, #byte_F66FC@PAGE ; runtime: 0xf66fc='I'
00045a0c: LDR             X1, [X8]
00045a10: LDR             X8, [X9,#0x2F0]
00045a14: MOV             X0, X20
00045a18: ADD             X3, X3, #byte_F66FC@PAGEOFF ; runtime: 0xf66fc='I'
00045a1c: BLR             X8
00045a20: STR             X0, [SP,#0x70+var_58]
00045a24: LDR             X8, [SP,#0x70+var_58]
00045a28: CMP             X8, #0
00045a2c: CSEL            W8, W21, W28, EQ
00045a30: B               loc_4598C
00045a34: CMP             W8, W22
00045a38: B.EQ            loc_45A70
00045a3c: CMP             W8, W21
00045a40: B.NE            loc_4598C
00045a44: MOV             X0, X20
00045a48: BL              sub_B6D0
00045a4c: MOV             W8, #0x34A7
00045a50: MOV             W9, #0xFFFFFFFF
00045a54: MOVK            W8, #0xF383,LSL#16
00045a58: STR             W9, [SP,#0x70+var_68]
00045a5c: B               loc_4598C
00045a60: LDR             X8, [SP,#0x70+var_60]
00045a64: CMP             X8, #0
00045a68: CSEL            W8, W26, W27, EQ
00045a6c: B               loc_4598C
00045a70: LDR             W9, [SP,#0x70+var_68]
00045a74: MOV             W8, #0x4AA2CDC5
00045a78: MOV             W8, #0x4AA2CDC5
00045a7c: B               loc_45974
00045a80: LDR             W0, [SP,#0x70+var_64]
00045a84: LDP             X29, X30, [SP,#0x70+var_s0]
00045a88: LDP             X20, X19, [SP,#0x70+var_10]
00045a8c: LDP             X22, X21, [SP,#0x70+var_20]
00045a90: LDP             X24, X23, [SP,#0x70+var_30]
00045a94: LDP             X26, X25, [SP,#0x70+var_40]
00045a98: LDP             X28, X27, [SP,#0x70+var_50]
00045a9c: ADD             SP, SP, #0x80
00045aa0: RET
00045aa4: SUB             SP, SP, #0x100
00045aa8: STP             X28, X27, [SP,#0xF0+var_50]
00045aac: STP             X26, X25, [SP,#0xF0+var_40]
00045ab0: STP             X24, X23, [SP,#0xF0+var_30]
00045ab4: STP             X22, X21, [SP,#0xF0+var_20]
00045ab8: STP             X20, X19, [SP,#0xF0+var_10]
00045abc: STP             X29, X30, [SP,#0xF0+var_s0]
00045ac0: ADD             X29, SP, #0xF0
00045ac4: LDR             X8, [X0]
00045ac8: MOV             X20, X0
00045acc: STR             X1, [SP,#0xF0+var_E8]
00045ad0: LDR             X8, [X8,#0xF8]
00045ad4: BLR             X8
00045ad8: MOV             W21, #0xDA3E
00045adc: MOV             W22, #0x2DF6
00045ae0: MOV             W9, #0x313F
00045ae4: STR             X0, [SP,#0xF0+var_B8]
00045ae8: MOVK            W21, #0x2AE7,LSL#16
00045aec: MOVK            W22, #0xE036,LSL#16
00045af0: MOVK            W9, #0x5185,LSL#16
00045af4: B               loc_45B14
00045af8: MOV             X0, X23
00045afc: MOV             X1, X28
00045b00: MOV             X2, X19
00045b04: MOV             X3, X25
00045b08: MOV             X4, X27
00045b0c: MOV             X5, X24
00045b10: MOV             X6, X26
00045b14: MOV             W8, W9
00045b18: CMP             W9, W21
00045b1c: MOV             X26, X6
00045b20: MOV             X24, X5
00045b24: MOV             X27, X4
00045b28: MOV             X25, X3
00045b2c: MOV             X19, X2
00045b30: MOV             X28, X1
00045b34: MOV             X23, X0
00045b38: B.GT            loc_45BC0
00045b3c: CMP             W8, W22
00045b40: B.LE            loc_45CA8
00045b44: MOV             W9, #0x358BC1F
00045b48: MOV             W9, #0x358BC1F
00045b4c: CMP             W8, W9
00045b50: B.GT            loc_45E58
00045b54: MOV             W9, #0xF67D6E3D
00045b58: MOV             W9, #0xF67D6E3D
00045b5c: CMP             W8, W9
00045b60: B.LE            loc_4603C
00045b64: MOV             W9, #0xF67D6E3E
00045b68: MOV             W9, #0xF67D6E3E
00045b6c: CMP             W8, W9
00045b70: B.EQ            loc_46414
00045b74: MOV             W9, #0xF9D31D0C
00045b78: MOV             W9, #0xF9D31D0C
00045b7c: CMP             W8, W9
00045b80: B.EQ            loc_46448
00045b84: MOV             W9, #0x68279B
00045b88: MOV             W9, #0x68279B
00045b8c: CMP             W8, W9
00045b90: MOV             X0, X23
00045b94: MOV             X1, X28
00045b98: MOV             X2, X19
00045b9c: MOV             X3, X25
00045ba0: MOV             X4, X27
00045ba4: MOV             X5, X24
00045ba8: MOV             X6, X26
00045bac: MOV             W9, W8
00045bb0: B.NE            loc_45B14
00045bb4: MOV             X0, X23
00045bb8: STR             X28, [SP,#0xF0+var_E0]
00045bbc: B               loc_45E34
00045bc0: MOV             W9, #0x54383920
00045bc4: MOV             W9, #0x54383920
00045bc8: CMP             W8, W9
00045bcc: B.LE            loc_45D90
00045bd0: MOV             W9, #0x75290E37
00045bd4: MOV             W9, #0x75290E37
00045bd8: CMP             W8, W9
00045bdc: B.LE            loc_45EDC
00045be0: MOV             W9, #0x7ACB3B3B
00045be4: MOV             W9, #0x7ACB3B3B
00045be8: CMP             W8, W9
00045bec: B.LE            loc_460D0
00045bf0: MOV             W9, #0x7ACB3B3C
00045bf4: MOV             W9, #0x7ACB3B3C
00045bf8: CMP             W8, W9
00045bfc: B.EQ            loc_4648C
00045c00: MOV             W9, #0x7938
00045c04: LDR             X4, [SP,#0xF0+var_D0]
00045c08: MOVK            W9, #0x7ACF,LSL#16
00045c0c: CMP             W8, W9
00045c10: MOV             W9, #0x1C40
00045c14: MOV             X0, X23
00045c18: MOV             X1, X28
00045c1c: MOV             X2, X19
00045c20: MOV             X3, X25
00045c24: MOV             X5, X24
00045c28: MOV             X6, X26
00045c2c: MOVK            W9, #0x49D8,LSL#16
00045c30: B.EQ            loc_45B14
00045c34: MOV             W9, #0x7ECA15C3
00045c38: MOV             W9, #0x7ECA15C3
00045c3c: CMP             W8, W9
00045c40: MOV             X0, X23
00045c44: MOV             X1, X28
00045c48: MOV             X2, X19
00045c4c: MOV             X3, X25
00045c50: MOV             X4, X27
00045c54: MOV             X5, X24
00045c58: MOV             X6, X26
00045c5c: MOV             W9, W8
00045c60: B.NE            loc_45B14
00045c64: LDR             X1, [SP,#0xF0+var_98]
00045c68: LDR             X8, [X20]
00045c6c: ADRP            X2, #xmmword_F6990@PAGE ; runtime: 0xf6990='getDefaultDisplay'
00045c70: ADRP            X3, #xmmword_F69B0@PAGE ; runtime: 0xf69b0='()Landroid/view/Display;'
00045c74: MOV             X0, X20
00045c78: LDR             X8, [X8,#0x108]
00045c7c: ADD             X2, X2, #xmmword_F6990@PAGEOFF ; runtime: 0xf6990='getDefaultDisplay'
00045c80: ADD             X3, X3, #xmmword_F69B0@PAGEOFF ; runtime: 0xf69b0='()Landroid/view/Display;'
00045c84: BLR             X8
00045c88: STR             X0, [SP,#0xF0+var_90]
00045c8c: LDR             X8, [SP,#0xF0+var_90]
00045c90: MOV             W9, #0x774F242D
00045c94: MOV             W9, #0x774F242D
00045c98: CMP             X8, #0
00045c9c: MOV             W8, #0x19582F54
00045ca0: MOV             W8, #0x19582F54
00045ca4: B               loc_4674C
00045ca8: MOV             W9, #0xB6EA31C3
00045cac: MOV             W9, #0xB6EA31C3
00045cb0: CMP             W8, W9
00045cb4: B.LE            loc_45F34
00045cb8: MOV             W9, #0xCF77F813
00045cbc: MOV             W9, #0xCF77F813
00045cc0: CMP             W8, W9
00045cc4: B.LE            loc_46164
00045cc8: MOV             W9, #0xCF77F814
00045ccc: MOV             W9, #0xCF77F814
00045cd0: CMP             W8, W9
00045cd4: MOV             W9, #0xED2B
00045cd8: MOV             X0, X23
00045cdc: MOV             X1, X28
00045ce0: MOV             X2, X19
00045ce4: MOV             X3, X25
00045ce8: MOV             X4, X27
00045cec: MOV             X5, X26
00045cf0: MOV             X6, X26
00045cf4: MOVK            W9, #0xBC1F,LSL#16
00045cf8: B.EQ            loc_45B14
00045cfc: MOV             W9, #0xD1F51782