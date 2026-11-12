000d1888: SUB             SP, SP, #0xD0
000d188c: STP             X28, X27, [SP,#0xD0+var_60]
000d1890: STP             X26, X25, [SP,#0xD0+var_50]
000d1894: STP             X24, X23, [SP,#0xD0+var_40]
000d1898: STP             X22, X21, [SP,#0xD0+var_30]
000d189c: STP             X20, X19, [SP,#0xD0+var_20]
000d18a0: STP             X29, X30, [SP,#0xD0+var_10]
000d18a4: ADRL            X26, byte_F7A40
000d18ac: LDRB            W9, [X26]
000d18b0: LDRB            W10, [X26,#(byte_F7A41 - 0xF7A40)]
000d18b4: LDRB            W11, [X26,#(byte_F7A42 - 0xF7A40)]
000d18b8: MOV             W25, #0xB
000d18bc: LDRB            W12, [X26,#(byte_F7A43 - 0xF7A40)]
000d18c0: MOV             W14, #0xF4
000d18c4: BIC             W13, W25, W9
000d18c8: AND             W9, W9, W14
000d18cc: ORR             W13, W13, W9
000d18d0: BIC             W9, W25, W10
000d18d4: AND             W10, W10, W14
000d18d8: ORR             W10, W9, W10
000d18dc: BIC             W9, W25, W11
000d18e0: AND             W11, W11, W14
000d18e4: ORR             W11, W9, W11
000d18e8: BIC             W9, W25, W12
000d18ec: AND             W12, W12, W14
000d18f0: ORR             W9, W9, W12
000d18f4: ADRL            X12, byte_F7B0C
000d18fc: STRB            W10, [X26,#(byte_F7A41 - 0xF7A40)]
000d1900: LDRB            W10, [X12]
000d1904: STRB            W11, [X26,#(byte_F7A42 - 0xF7A40)]
000d1908: LDRB            W11, [X12,#(byte_F7B0D - 0xF7B0C)]
000d190c: STRB            W9, [X26,#(byte_F7A43 - 0xF7A40)]
000d1910: LDRB            W9, [X12,#(byte_F7B0E - 0xF7B0C)]
000d1914: MOV             W19, #0x45 ; 'E'
000d1918: MOV             W14, #0xBA
000d191c: ADRP            X4, #byte_F79D8@PAGE
000d1920: STRB            W13, [X26]
000d1924: BIC             W13, W19, W10
000d1928: AND             W10, W10, W14
000d192c: ADD             X4, X4, #byte_F79D8@PAGEOFF
000d1930: ORR             W10, W13, W10
000d1934: BIC             W13, W19, W11
000d1938: AND             W11, W11, W14
000d193c: ORR             W11, W13, W11
000d1940: BIC             W13, W19, W9
000d1944: AND             W9, W9, W14
000d1948: STRB            W10, [X12]
000d194c: LDRB            W10, [X4]
000d1950: ORR             W9, W13, W9
000d1954: STRB            W11, [X12,#(byte_F7B0D - 0xF7B0C)]
000d1958: LDRB            W11, [X4,#(byte_F79D9 - 0xF79D8)]
000d195c: STRB            W9, [X12,#(byte_F7B0E - 0xF7B0C)]
000d1960: LDRB            W9, [X4,#(byte_F79DA - 0xF79D8)]
000d1964: MOV             W5, #0x37 ; '7'
000d1968: MOV             W7, #0xC8
000d196c: BIC             W12, W5, W10
000d1970: AND             W10, W10, W7
000d1974: MOV             W13, #0x5C ; '\'
000d1978: MOV             W14, #0xA3
000d197c: ORR             W10, W12, W10
000d1980: BIC             W12, W13, W11
000d1984: AND             W11, W11, W14
000d1988: MOV             W16, #0x6B ; 'k'
000d198c: ADRP            X6, #byte_F79DC@PAGE
000d1990: ORR             W11, W12, W11
000d1994: BIC             W12, W13, W9
000d1998: AND             W9, W9, W14
000d199c: ADD             X6, X6, #byte_F79DC@PAGEOFF
000d19a0: ORR             W9, W12, W9
000d19a4: EOR             W10, W10, W16
000d19a8: STRB            W9, [X4,#(byte_F79DA - 0xF79D8)]
000d19ac: LDRB            W9, [X6,#(byte_F79DD - 0xF79DC)]
000d19b0: STRB            W10, [X4]
000d19b4: LDRB            W10, [X6]
000d19b8: STRB            W11, [X4,#(byte_F79D9 - 0xF79D8)]
000d19bc: LDRB            W11, [X6,#(byte_F79DE - 0xF79DC)]
000d19c0: MOV             W15, #0x2A ; '*'
000d19c4: MOV             W8, #0xD5
000d19c8: MOV             W21, #0x89
000d19cc: MOV             W22, #0x76 ; 'v'
000d19d0: MOV             W17, #0x84
000d19d4: MOV             W3, #0x7B ; '{'
000d19d8: BIC             W13, W21, W9
000d19dc: AND             W9, W9, W22
000d19e0: BIC             W15, W15, W10
000d19e4: AND             W10, W10, W8
000d19e8: MOV             W20, #0x97
000d19ec: ORR             W10, W15, W10
000d19f0: LDRB            W15, [X6,#(byte_F79DF - 0xF79DC)]
000d19f4: ORR             W9, W13, W9
000d19f8: BIC             W13, W17, W11
000d19fc: AND             W11, W11, W3
000d1a00: MOV             W1, #0x9A
000d1a04: ADRP            X23, #byte_F79F4@PAGE
000d1a08: ORR             W13, W13, W11
000d1a0c: EOR             W9, W9, W20
000d1a10: ADD             X23, X23, #byte_F79F4@PAGEOFF
000d1a14: STRB            W9, [X6,#(byte_F79DD - 0xF79DC)]
000d1a18: EOR             W9, W13, W1
000d1a1c: MOV             W0, #0x34 ; '4'
000d1a20: STRB            W9, [X6,#(byte_F79DE - 0xF79DC)]
000d1a24: LDRB            W9, [X23]
000d1a28: MVN             W11, W15
000d1a2c: EOR             W10, W10, W0
000d1a30: AND             W15, W15, #0xFFFFFFE1
000d1a34: AND             W11, W11, #0x1E
000d1a38: STRB            W10, [X6]
000d1a3c: LDRB            W10, [X23,#(byte_F79F5 - 0xF79F4)]
000d1a40: MOV             W24, #0x19
000d1a44: ORR             W15, W11, W15
000d1a48: MOV             W0, #0xE6
000d1a4c: STRB            W15, [X6,#(byte_F79DF - 0xF79DC)]
000d1a50: BIC             W15, W24, W9
000d1a54: AND             W9, W9, W0
000d1a58: MOV             W19, #0xC4
000d1a5c: MOV             W12, #0x3B ; ';'
000d1a60: ORR             W9, W15, W9
000d1a64: LDRB            W15, [X23,#(byte_F79F6 - 0xF79F4)]
000d1a68: AND             W12, W10, W12
000d1a6c: BIC             W10, W19, W10
000d1a70: ORR             W10, W10, W12
000d1a74: LDRB            W12, [X23,#(byte_F79F7 - 0xF79F4)]
000d1a78: EOR             W8, W9, W8
000d1a7c: MVN             W9, W15
000d1a80: AND             W15, W15, #0x33333333
000d1a84: AND             W9, W9, #0xCCCCCCCC
000d1a88: ADRP            X14, #byte_F7A14@PAGE
000d1a8c: ORR             W9, W9, W15
000d1a90: MVN             W15, W12
000d1a94: ADD             X14, X14, #byte_F7A14@PAGEOFF
000d1a98: AND             W12, W12, #0x33333333
000d1a9c: AND             W15, W15, #0xCCCCCCCC
000d1aa0: ORR             W12, W15, W12
000d1aa4: STRB            W9, [X23,#(byte_F79F6 - 0xF79F4)]
000d1aa8: LDRB            W9, [X14]
000d1aac: STRB            W12, [X23,#(byte_F79F7 - 0xF79F4)]
000d1ab0: LDRB            W12, [X14,#(byte_F7A17 - 0xF7A14)]
000d1ab4: MOV             W16, #0x9C
000d1ab8: MOV             W17, #0x63 ; 'c'
000d1abc: MOV             W15, #0x4E ; 'N'
000d1ac0: STRB            W8, [X23]
000d1ac4: MOV             W8, #0xB1
000d1ac8: BIC             W16, W16, W9
000d1acc: AND             W9, W9, W17
000d1ad0: LDRB            W17, [X14,#(byte_F7A15 - 0xF7A14)]
000d1ad4: BIC             W15, W15, W12
000d1ad8: AND             W8, W12, W8
000d1adc: LDRB            W12, [X14,#(byte_F7A16 - 0xF7A14)]
000d1ae0: MOV             W2, #0x72 ; 'r'
000d1ae4: MOV             W7, #0x8D
000d1ae8: MOV             W11, #0x74 ; 't'
000d1aec: MOV             W13, #0x8B
000d1af0: EOR             W10, W10, #8
000d1af4: ORR             W9, W16, W9
000d1af8: BIC             W16, W2, W17
000d1afc: AND             W17, W17, W7
000d1b00: MOV             W3, #0xE8
000d1b04: STRB            W10, [X23,#(byte_F79F5 - 0xF79F4)]
000d1b08: ADRP            X10, #byte_F7A78@PAGE
000d1b0c: ORR             W16, W16, W17
000d1b10: BIC             W17, W11, W12
000d1b14: AND             W12, W12, W13
000d1b18: ADD             X10, X10, #byte_F7A78@PAGEOFF
000d1b1c: ORR             W12, W17, W12
000d1b20: EOR             W9, W9, W3
000d1b24: MOV             W0, #0x3A ; ':'
000d1b28: ORR             W8, W15, W8
000d1b2c: STRB            W12, [X14,#(byte_F7A16 - 0xF7A14)]
000d1b30: STRB            W9, [X14]
000d1b34: LDRB            W9, [X10]
000d1b38: EOR             W12, W16, #6
000d1b3c: STRB            W12, [X14,#(byte_F7A15 - 0xF7A14)]
000d1b40: LDRB            W12, [X10,#(byte_F7A79 - 0xF7A78)]
000d1b44: EOR             W8, W8, W0
000d1b48: STRB            W8, [X14,#(byte_F7A17 - 0xF7A14)]
000d1b4c: LDRB            W8, [X10,#(byte_F7A7A - 0xF7A78)]
000d1b50: MOV             W1, #0x9E
000d1b54: MOV             W2, #0x61 ; 'a'
000d1b58: BIC             W14, W1, W9
000d1b5c: AND             W9, W9, W2
000d1b60: MOV             W15, #0x4F ; 'O'
000d1b64: ORR             W9, W14, W9
000d1b68: BIC             W14, W1, W12
000d1b6c: AND             W12, W12, W2
000d1b70: ORR             W12, W14, W12
000d1b74: BIC             W14, W15, W8
000d1b78: LDRB            W15, [X10,#(byte_F7A7B - 0xF7A78)]
000d1b7c: MOV             W29, #0xB0
000d1b80: AND             W8, W8, W29
000d1b84: ORR             W14, W14, W8
000d1b88: MOV             W8, #0x53 ; 'S'
000d1b8c: MOV             W0, #0xAC
000d1b90: LDRB            W16, [X10,#(byte_F7A7C - 0xF7A78)]
000d1b94: BIC             W17, W8, W15
000d1b98: AND             W15, W15, W0
000d1b9c: ORR             W15, W17, W15
000d1ba0: LDRB            W17, [X10,#(byte_F7A7D - 0xF7A78)]
000d1ba4: STRB            W9, [X10]
000d1ba8: MOV             W9, #0xD1
000d1bac: STRB            W12, [X10,#(byte_F7A79 - 0xF7A78)]
000d1bb0: EOR             W9, W14, W9
000d1bb4: ADRP            X12, #byte_F7A8C@PAGE
000d1bb8: BIC             W0, W1, W16
000d1bbc: AND             W16, W16, W2
000d1bc0: STRB            W9, [X10,#(byte_F7A7A - 0xF7A78)]
000d1bc4: MOV             W9, #0xCD
000d1bc8: ADD             X12, X12, #byte_F7A8C@PAGEOFF
000d1bcc: ORR             W16, W0, W16
000d1bd0: BIC             W0, W1, W17
000d1bd4: AND             W17, W17, W2
000d1bd8: EOR             W9, W15, W9
000d1bdc: LDRB            W14, [X12]
000d1be0: ORR             W17, W0, W17
000d1be4: STRB            W9, [X10,#(byte_F7A7B - 0xF7A78)]
000d1be8: LDRB            W9, [X12,#(byte_F7A8D - 0xF7A8C)]
000d1bec: STRB            W16, [X10,#(byte_F7A7C - 0xF7A78)]
000d1bf0: STRB            W17, [X10,#(byte_F7A7D - 0xF7A78)]
000d1bf4: LDRB            W10, [X12,#(byte_F7A8E - 0xF7A8C)]
000d1bf8: MVN             W15, W14
000d1bfc: BFXIL           W15, W14, #0, #2
000d1c00: MVN             W14, W9
000d1c04: BFXIL           W14, W9, #0, #2
000d1c08: MVN             W9, W10
000d1c0c: AND             W10, W10, #0xE0
000d1c10: BFXIL           W10, W9, #0, #5
000d1c14: LDRB            W9, [X12,#(byte_F7A8F - 0xF7A8C)]
000d1c18: LDRB            W16, [X12,#(byte_F7A90 - 0xF7A8C)]
000d1c1c: MOV             W17, #0xEC
000d1c20: MOV             W0, #0x13
000d1c24: BIC             W17, W17, W9
000d1c28: AND             W9, W9, W0
000d1c2c: MVN             W0, W16
000d1c30: BFXIL           W0, W16, #0, #2
000d1c34: LDRB            W16, [X12,#(byte_F7A92 - 0xF7A8C)]
000d1c38: ORR             W17, W17, W9
000d1c3c: LDRB            W9, [X12,#(byte_F7A91 - 0xF7A8C)]
000d1c40: STRB            W15, [X12]
000d1c44: ADRP            X15, #byte_F7AA4@PAGE
000d1c48: MOV             W26, #0xD0
000d1c4c: MOV             W2, #0x2F ; '/'
000d1c50: EOR             W10, W10, #0xFFFFFFE3
000d1c54: ADD             X15, X15, #byte_F7AA4@PAGEOFF
000d1c58: BIC             W3, W2, W16
000d1c5c: AND             W16, W16, W26
000d1c60: STRB            W14, [X12,#(byte_F7A8D - 0xF7A8C)]
000d1c64: STRB            W10, [X12,#(byte_F7A8E - 0xF7A8C)]
000d1c68: EOR             W10, W17, #0x10
000d1c6c: LDRB            W14, [X15,#(byte_F7AAA - 0xF7AA4)]
000d1c70: MVN             W1, W9
000d1c74: ORR             W16, W3, W16
000d1c78: STRB            W10, [X12,#(byte_F7A8F - 0xF7A8C)]
000d1c7c: MOV             W10, #0xD3
000d1c80: BFXIL           W1, W9, #0, #2
000d1c84: EOR             W16, W16, W10
000d1c88: STRB            W0, [X12,#(byte_F7A90 - 0xF7A8C)]
000d1c8c: STRB            W1, [X12,#(byte_F7A91 - 0xF7A8C)]
000d1c90: STRB            W16, [X12,#(byte_F7A92 - 0xF7A8C)]
000d1c94: MOV             W12, #0xB9
000d1c98: BIC             W16, W12, W14
000d1c9c: MOV             W12, #0x46 ; 'F'
000d1ca0: AND             W17, W14, W12
000d1ca4: LDRB            W12, [X15,#(byte_F7AA5 - 0xF7AA4)]
000d1ca8: LDRB            W4, [X15]
000d1cac: LDRB            W14, [X15,#(byte_F7AA6 - 0xF7AA4)]
000d1cb0: MOV             W9, #0x9B
000d1cb4: MOV             W1, #0x64 ; 'd'
000d1cb8: BIC             W0, W9, W12
000d1cbc: AND             W12, W12, W1
000d1cc0: LDRB            W3, [X15,#(byte_F7AA8 - 0xF7AA4)]
000d1cc4: ORR             W0, W0, W12
000d1cc8: MOV             W12, #0x52 ; 'R'
000d1ccc: MOV             W9, #0xAD
000d1cd0: ORR             W16, W16, W17
000d1cd4: MVN             W17, W4
000d1cd8: AND             W12, W14, W12
000d1cdc: BIC             W14, W9, W14
000d1ce0: AND             W4, W4, #0x3E ; '>'
000d1ce4: AND             W17, W17, #0xFFFFFFC1
000d1ce8: ORR             W1, W14, W12
000d1cec: MOV             W5, #0x4C ; 'L'
000d1cf0: MOV             W14, #0xB3
000d1cf4: ORR             W17, W17, W4
000d1cf8: MOV             W4, #0x5A ; 'Z'
000d1cfc: BIC             W19, W5, W3
000d1d00: AND             W3, W3, W14
000d1d04: EOR             W0, W0, W4
000d1d08: LDRB            W4, [X15,#(byte_F7AA7 - 0xF7AA4)]
000d1d0c: ORR             W3, W19, W3
000d1d10: MOV             W19, #0x6C ; 'l'
000d1d14: EOR             W1, W1, W19
000d1d18: LDRB            W19, [X15,#(byte_F7AA9 - 0xF7AA4)]
000d1d1c: STRB            W17, [X15]
000d1d20: EOR             W17, W3, W7
000d1d24: STRB            W17, [X15,#(byte_F7AA8 - 0xF7AA4)]
000d1d28: ADRP            X17, #aM@PAGE; "%(,M"
000d1d2c: MVN             W20, W4
000d1d30: ADD             X17, X17, #aM@PAGEOFF; "%(,M"
000d1d34: AND             W4, W4, #0x3E ; '>'
000d1d38: AND             W20, W20, #0xFFFFFFC1
000d1d3c: STRB            W0, [X15,#(byte_F7AA5 - 0xF7AA4)]
000d1d40: LDRB            W0, [X17]; "%(,M"
000d1d44: ORR             W4, W20, W4
000d1d48: MVN             W20, W19
000d1d4c: AND             W19, W19, #0x3E ; '>'
000d1d50: AND             W20, W20, #0xFFFFFFC1
000d1d54: ORR             W19, W20, W19
000d1d58: EOR             W16, W16, #0x78 ; 'x'
000d1d5c: STRB            W1, [X15,#(byte_F7AA6 - 0xF7AA4)]
000d1d60: STRB            W4, [X15,#(byte_F7AA7 - 0xF7AA4)]
000d1d64: STRB            W19, [X15,#(byte_F7AA9 - 0xF7AA4)]
000d1d68: STRB            W16, [X15,#(byte_F7AAA - 0xF7AA4)]
000d1d6c: MVN             W15, W0
000d1d70: AND             W16, W0, #0x80
000d1d74: LDRB            W0, [X17,#(aM+1 - 0xF7AAC)]; "(,M"
000d1d78: MOV             W28, #0x4D ; 'M'
000d1d7c: MOV             W9, #0xB2
000d1d80: LDRB            W1, [X17,#(aM+2 - 0xF7AAC)]; ",M"
000d1d84: BIC             W3, W28, W0
000d1d88: AND             W0, W0, W9
000d1d8c: ORR             W0, W3, W0
000d1d90: LDRB            W3, [X17,#(aM+3 - 0xF7AAC)]; "M"
000d1d94: MOV             W21, #0x4F ; 'O'
000d1d98: BIC             W4, W28, W1
000d1d9c: AND             W1, W1, W9
000d1da0: BFXIL           W16, W15, #0, #7
000d1da4: ORR             W1, W4, W1
000d1da8: BIC             W4, W21, W3
000d1dac: AND             W3, W3, W29
000d1db0: MOV             W9, #0x32 ; '2'
000d1db4: ORR             W3, W4, W3
000d1db8: EOR             W16, W16, W9
000d1dbc: STRB            W16, [X17]; "%(,M"
000d1dc0: EOR             W16, W3, #2
000d1dc4: STRB            W16, [X17,#(aM+3 - 0xF7AAC)]; "M"
000d1dc8: ADRL            X16, byte_F7ACC
000d1dd0: STRB            W0, [X17,#(aM+1 - 0xF7AAC)]; "(,M"
000d1dd4: STRB            W1, [X17,#(aM+2 - 0xF7AAC)]; ",M"
000d1dd8: LDRB            W17, [X16,#(byte_F7ACD - 0xF7ACC)]
000d1ddc: MOV             W0, #0xB8
000d1de0: MOV             W1, #0x47 ; 'G'
000d1de4: LDRB            W3, [X16,#(byte_F7ACE - 0xF7ACC)]
000d1de8: BIC             W4, W0, W17
000d1dec: AND             W17, W17, W1
000d1df0: LDRB            W20, [X16,#(byte_F7ACF - 0xF7ACC)]
000d1df4: LDRB            W21, [X16]
000d1df8: ORR             W17, W4, W17
000d1dfc: STRB            W17, [X16,#(byte_F7ACD - 0xF7ACC)]
000d1e00: ADRL            X17, byte_F7AF4
000d1e08: LDRB            W4, [X17,#(byte_F7AF5 - 0xF7AF4)]
000d1e0c: BIC             W23, W0, W3
000d1e10: AND             W3, W3, W1
000d1e14: BIC             W0, W0, W20
000d1e18: AND             W1, W20, W1
000d1e1c: BIC             W20, W14, W21
000d1e20: AND             W21, W21, W5
000d1e24: ORR             W20, W20, W21
000d1e28: ORR             W3, W23, W3
000d1e2c: ORR             W0, W0, W1
000d1e30: EOR             W1, W20, W25
000d1e34: STRB            W3, [X16,#(byte_F7ACE - 0xF7ACC)]
000d1e38: STRB            W0, [X16,#(byte_F7ACF - 0xF7ACC)]
000d1e3c: STRB            W1, [X16]
000d1e40: BIC             W11, W11, W4
000d1e44: LDRB            W16, [X17]
000d1e48: AND             W13, W4, W13
000d1e4c: ORR             W11, W11, W13
000d1e50: STRB            W11, [X17,#(byte_F7AF5 - 0xF7AF4)]
000d1e54: ADRP            X11, #byte_F7B08@PAGE
000d1e58: MOV             W9, #0x16
000d1e5c: MOV             W15, #0xE9
000d1e60: ADD             X11, X11, #byte_F7B08@PAGEOFF
000d1e64: BIC             W0, W9, W16
000d1e68: AND             W16, W16, W15
000d1e6c: LDRB            W13, [X11]
000d1e70: ORR             W16, W0, W16
000d1e74: MOV             W9, #0x62 ; 'b'
000d1e78: EOR             W16, W16, W9
000d1e7c: STRB            W16, [X17]
000d1e80: MOV             W16, #0xAE
000d1e84: MOV             W17, #0x51 ; 'Q'
000d1e88: BIC             W16, W16, W13
000d1e8c: AND             W13, W13, W17
000d1e90: LDRB            W17, [X11,#(byte_F7B09 - 0xF7B08)]
000d1e94: MOV             W23, #0x50 ; 'P'
000d1e98: MOV             W0, #0xAF
000d1e9c: ORR             W13, W16, W13
000d1ea0: BIC             W16, W23, W17
000d1ea4: AND             W17, W17, W0
000d1ea8: ORR             W16, W16, W17
000d1eac: STRB            W13, [X11]
000d1eb0: EOR             W13, W16, #0xFE
000d1eb4: ADRL            X16, byte_F7B24
000d1ebc: LDRB            W17, [X16,#(byte_F7B25 - 0xF7B24)]
000d1ec0: STRB            W13, [X11,#(byte_F7B09 - 0xF7B08)]
000d1ec4: MOV             W9, #0x23 ; '#'
000d1ec8: MOV             W11, #0xDC
000d1ecc: BIC             W11, W11, W17
000d1ed0: AND             W13, W17, W9
000d1ed4: LDRB            W17, [X16,#(byte_F7B27 - 0xF7B24)]
000d1ed8: LDRB            W3, [X16]
000d1edc: MOV             W25, #0xD7
000d1ee0: MOV             W7, #0x28 ; '('
000d1ee4: BIC             W4, W7, W17
000d1ee8: AND             W17, W17, W25
000d1eec: ORR             W17, W4, W17
000d1ef0: MVN             W4, W3
000d1ef4: LDRB            W20, [X16,#(byte_F7B26 - 0xF7B24)]
000d1ef8: AND             W3, W3, #0x7E ; '~'
000d1efc: AND             W4, W4, #0xFFFFFF81
000d1f00: ORR             W11, W11, W13
000d1f04: ORR             W3, W4, W3
000d1f08: MOV             W4, #0x5D ; ']'
000d1f0c: EOR             W11, W11, W4
000d1f10: MVN             W4, W20
000d1f14: STRB            W11, [X16,#(byte_F7B25 - 0xF7B24)]
000d1f18: ADRP            X11, #byte_F7B38@PAGE
000d1f1c: AND             W20, W20, #0x7E ; '~'
000d1f20: AND             W4, W4, #0xFFFFFF81
000d1f24: ADD             X11, X11, #byte_F7B38@PAGEOFF
000d1f28: ORR             W4, W4, W20
000d1f2c: MOV             W20, #0xA9
000d1f30: STRB            W3, [X16]
000d1f34: LDRB            W3, [X11]
000d1f38: EOR             W17, W17, W20
000d1f3c: STRB            W4, [X16,#(byte_F7B26 - 0xF7B24)]
000d1f40: STRB            W17, [X16,#(byte_F7B27 - 0xF7B24)]
000d1f44: LDRB            W16, [X11,#(byte_F7B39 - 0xF7B38)]
000d1f48: ADRP            X4, #byte_F7B3C@PAGE
000d1f4c: MVN             W17, W3
000d1f50: ADD             X4, X4, #byte_F7B3C@PAGEOFF
000d1f54: AND             W3, W3, #0xFFFFFFFD
000d1f58: AND             W17, W17, #2
000d1f5c: LDRB            W20, [X4]
000d1f60: ORR             W17, W17, W3
000d1f64: MVN             W3, W16
000d1f68: AND             W16, W16, #0xFFFFFFFD
000d1f6c: AND             W3, W3, #2
000d1f70: ORR             W16, W3, W16
000d1f74: STRB            W17, [X11]
000d1f78: STRB            W16, [X11,#(byte_F7B39 - 0xF7B38)]
000d1f7c: MVN             W11, W20
000d1f80: BFXIL           W20, W11, #0, #5
000d1f84: LDRB            W11, [X4,#(byte_F7B3D - 0xF7B3C)]
000d1f88: LDRB            W16, [X4,#(byte_F7B3E - 0xF7B3C)]
000d1f8c: MOV             W30, #0x4A ; 'J'
000d1f90: MOV             W19, #0xB5
000d1f94: BIC             W21, W19, W11
000d1f98: AND             W11, W11, W30
000d1f9c: ORR             W11, W21, W11
000d1fa0: MVN             W21, W16
000d1fa4: BFXIL           W16, W21, #0, #5
000d1fa8: STRB            W16, [X4,#(byte_F7B3E - 0xF7B3C)]
000d1fac: ADRL            X16, byte_F7B44
000d1fb4: STRB            W20, [X4]
000d1fb8: LDRB            W20, [X16]
000d1fbc: LDRB            W24, [X16,#(byte_F7B45 - 0xF7B44)]
000d1fc0: EOR             W11, W11, #0xAAAAAAAA
000d1fc4: LDRB            W21, [X16,#(byte_F7B46 - 0xF7B44)]
000d1fc8: STRB            W11, [X4,#(byte_F7B3D - 0xF7B3C)]
000d1fcc: MOV             W11, #0x48 ; 'H'
000d1fd0: MOV             W4, #0xB7
000d1fd4: MOV             W22, #0xAC
000d1fd8: BIC             W11, W11, W20
000d1fdc: AND             W4, W20, W4
000d1fe0: MOV             W20, #0x2C ; ','
000d1fe4: ORR             W11, W11, W4
000d1fe8: BIC             W8, W8, W24
000d1fec: AND             W4, W24, W22
000d1ff0: BIC             W20, W20, W21
000d1ff4: AND             W10, W21, W10
000d1ff8: ORR             W8, W8, W4
000d1ffc: LDRB            W4, [X16,#(byte_F7B47 - 0xF7B44)]
000d2000: MOV             W12, #0x32 ; '2'
000d2004: ORR             W10, W20, W10
000d2008: EOR             W8, W8, W28
000d200c: MOV             W20, #0x56 ; 'V'
000d2010: STRB            W8, [X16,#(byte_F7B45 - 0xF7B44)]
000d2014: EOR             W8, W10, W12
000d2018: ADRP            X10, #aQvHzs@PAGE; "QV_%hzs\t@\\/"
000d201c: EOR             W11, W11, W20
000d2020: ADD             X10, X10, #aQvHzs@PAGEOFF; "QV_%hzs\t@\\/"
000d2024: MVN             W20, W4
000d2028: STRB            W11, [X16]
000d202c: LDRB            W11, [X10,#(aQvHzs+2 - 0xF7B4C)]; "_%hzs\t@\\/"
000d2030: AND             W4, W4, #0xFFFFFFE1
000d2034: AND             W20, W20, #0x1E
000d2038: ORR             W4, W20, W4
000d203c: STRB            W8, [X16,#(byte_F7B46 - 0xF7B44)]
000d2040: STRB            W4, [X16,#(byte_F7B47 - 0xF7B44)]
000d2044: MOV             W8, #0xA8
000d2048: MOV             W16, #0x57 ; 'W'
000d204c: BIC             W8, W8, W11
000d2050: AND             W11, W11, W16
000d2054: LDRB            W16, [X10]; "QV_%hzs\t@\\/"
000d2058: MOV             W24, #0x25 ; '%'
000d205c: MOV             W4, #0xDA
000d2060: MOV             W6, #0x8D
000d2064: BIC             W21, W24, W16
000d2068: AND             W16, W16, W4
000d206c: ORR             W8, W8, W11
000d2070: ORR             W16, W21, W16
000d2074: LDRB            W21, [X10,#(aQvHzs+3 - 0xF7B4C)]; "%hzs\t@\\/"
000d2078: EOR             W8, W8, W6
000d207c: LDRB            W20, [X10,#(aQvHzs+1 - 0xF7B4C)]; "V_%hzs\t@\\/"
000d2080: STRB            W8, [X10,#(aQvHzs+2 - 0xF7B4C)]; "_%hzs\t@\\/"
000d2084: ADRL            X8, (aQvHzs+4); "hzs\t@\\/"
000d208c: MOV             W11, #0x31 ; '1'
000d2090: MOV             W9, #0xCE
000d2094: STRB            W16, [X10]; "QV_%hzs\t@\\/"
000d2098: LDRB            W16, [X8]; "hzs\t@\\/"
000d209c: BIC             W11, W11, W21
000d20a0: AND             W21, W21, W9
000d20a4: AND             W4, W20, W4
000d20a8: BIC             W20, W24, W20
000d20ac: ORR             W11, W11, W21
000d20b0: MOV             W9, #0x14
000d20b4: MOV             W27, #0x13
000d20b8: ORR             W20, W20, W4
000d20bc: EOR             W11, W11, W9
000d20c0: MOV             W9, #0xEC
000d20c4: STRB            W20, [X10,#(aQvHzs+1 - 0xF7B4C)]; "V_%hzs\t@\\/"
000d20c8: STRB            W11, [X10,#(aQvHzs+3 - 0xF7B4C)]; "%hzs\t@\\/"
000d20cc: BIC             W10, W27, W16
000d20d0: AND             W11, W16, W9
000d20d4: ORR             W12, W10, W11
000d20d8: LDRB            W11, [X8,#(aQvHzs+5 - 0xF7B50)]; "zs\t@\\/"
000d20dc: MOV             W27, #9
000d20e0: MOV             W16, #0xF6
000d20e4: LDRB            W20, [X8,#(aQvHzs+6 - 0xF7B50)]; "s\t@\\/"
000d20e8: BIC             W9, W27, W11
000d20ec: AND             W11, W11, W16
000d20f0: ORR             W10, W9, W11
000d20f4: LDRB            W11, [X8,#(aQvHzs+7 - 0xF7B50)]; "\t@\\/"
000d20f8: BIC             W9, W27, W20
000d20fc: AND             W20, W20, W16
000d2100: ORR             W9, W9, W20
000d2104: AND             W16, W11, W16
000d2108: BIC             W11, W27, W11
000d210c: STRB            W9, [X8,#(aQvHzs+6 - 0xF7B50)]; "s\t@\\/"
000d2110: ADRP            X9, #(aQvHzs+8)@PAGE; "@\\/"
000d2114: ORR             W11, W11, W16
000d2118: ADD             X9, X9, #(aQvHzs+8)@PAGEOFF; "@\\/"
000d211c: STRB            W10, [X8,#(aQvHzs+5 - 0xF7B50)]; "zs\t@\\/"
000d2120: STRB            W11, [X8,#(aQvHzs+7 - 0xF7B50)]; "\t@\\/"
000d2124: LDRB            W10, [X9]; "@\\/"
000d2128: MOV             W11, #0x1A
000d212c: EOR             W11, W12, W11
000d2130: STRB            W11, [X8]; "hzs\t@\\/"
000d2134: LDRB            W11, [X9,#(aQvHzs+9 - 0xF7B54)]; "\\/"
000d2138: LDRB            W12, [X9,#(aQvHzs+0xA - 0xF7B54)]; "/"
000d213c: BIC             W8, W2, W10
000d2140: AND             W10, W10, W26
000d2144: ORR             W10, W8, W10
000d2148: MOV             W1, #0xC9
000d214c: MOV             W16, #0x36 ; '6'
000d2150: BIC             W8, W1, W11
000d2154: AND             W11, W11, W16
000d2158: STRB            W10, [X9]; "@\\/"
000d215c: ADRP            X10, #byte_F7B64@PAGE
000d2160: ORR             W8, W8, W11
000d2164: BIC             W11, W2, W12
000d2168: AND             W12, W12, W26
000d216c: ADD             X10, X10, #byte_F7B64@PAGEOFF
000d2170: ORR             W11, W11, W12
000d2174: LDRB            W12, [X10]
000d2178: STRB            W11, [X9,#(aQvHzs+0xA - 0xF7B54)]; "/"
000d217c: MOV             W11, #0xE6
000d2180: EOR             W8, W8, W11
000d2184: MOV             W17, #0x4F ; 'O'
000d2188: STRB            W8, [X9,#(aQvHzs+9 - 0xF7B54)]; "\\/"
000d218c: BIC             W8, W29, W12
000d2190: AND             W9, W12, W17
000d2194: LDRB            W12, [X10,#(byte_F7B65 - 0xF7B64)]
000d2198: ORR             W11, W8, W9
000d219c: MOV             W22, #0xCB
000d21a0: LDRB            W9, [X10,#(byte_F7B66 - 0xF7B64)]
000d21a4: MOV             W13, #0x34 ; '4'
000d21a8: BIC             W2, W13, W12
000d21ac: AND             W12, W12, W22
000d21b0: ORR             W12, W2, W12
000d21b4: LDRB            W2, [X10,#(byte_F7B67 - 0xF7B64)]
000d21b8: BIC             W8, W13, W9
000d21bc: AND             W9, W9, W22
000d21c0: ORR             W8, W8, W9
000d21c4: BIC             W9, W13, W2
000d21c8: AND             W2, W2, W22
000d21cc: STRB            W8, [X10,#(byte_F7B66 - 0xF7B64)]
000d21d0: ADRP            X8, #byte_F7B68@PAGE
000d21d4: ORR             W9, W9, W2
000d21d8: ADD             X8, X8, #byte_F7B68@PAGEOFF
000d21dc: MOV             W4, #0x84
000d21e0: STRB            W9, [X10,#(byte_F7B67 - 0xF7B64)]
000d21e4: LDRB            W9, [X8,#(byte_F7B6B - 0xF7B68)]
000d21e8: EOR             W11, W11, W4
000d21ec: STRB            W12, [X10,#(byte_F7B65 - 0xF7B64)]
000d21f0: STRB            W11, [X10]
000d21f4: LDRB            W10, [X8]
000d21f8: BIC             W11, W14, W9
000d21fc: AND             W9, W9, W5
000d2200: ORR             W9, W11, W9
000d2204: MVN             W11, W10
000d2208: LDRB            W12, [X8,#(byte_F7B69 - 0xF7B68)]
000d220c: AND             W10, W10, #0x88888888
000d2210: AND             W11, W11, #0x77777777
000d2214: ORR             W10, W11, W10
000d2218: LDRB            W11, [X8,#(byte_F7B6A - 0xF7B68)]
000d221c: MVN             W14, W12
000d2220: LDRB            W2, [X8,#(byte_F7B6C - 0xF7B68)]
000d2224: AND             W12, W12, #0x88888888
000d2228: AND             W14, W14, #0x77777777
000d222c: ORR             W12, W14, W12
000d2230: MVN             W14, W11
000d2234: AND             W11, W11, #0x88888888
000d2238: AND             W14, W14, #0x77777777
000d223c: MOV             W13, #0xC4
000d2240: ORR             W11, W14, W11
000d2244: EOR             W9, W9, W13
000d2248: MVN             W14, W2
000d224c: AND             W2, W2, #0x88888888
000d2250: AND             W14, W14, #0x77777777
000d2254: STRB            W9, [X8,#(byte_F7B6B - 0xF7B68)]
000d2258: ADRP            X9, #byte_F7B78@PAGE
000d225c: ORR             W14, W14, W2
000d2260: ADD             X9, X9, #byte_F7B78@PAGEOFF
000d2264: STRB            W10, [X8]
000d2268: STRB            W12, [X8,#(byte_F7B69 - 0xF7B68)]
000d226c: STRB            W11, [X8,#(byte_F7B6A - 0xF7B68)]
000d2270: STRB            W14, [X8,#(byte_F7B6C - 0xF7B68)]
000d2274: LDRB            W8, [X9,#(byte_F7B79 - 0xF7B78)]
000d2278: LDRB            W2, [X9,#(byte_F7B7B - 0xF7B78)]
000d227c: MOV             W13, #0x6F ; 'o'
000d2280: MOV             W11, #0x90
000d2284: LDRB            W12, [X9,#(byte_F7B7A - 0xF7B78)]
000d2288: BIC             W15, W13, W8
000d228c: AND             W14, W8, W11
000d2290: LDRB            W8, [X9,#(byte_F7B7C - 0xF7B78)]
000d2294: LDRB            W3, [X9]
000d2298: BIC             W10, W13, W2
000d229c: AND             W2, W2, W11
000d22a0: ORR             W10, W10, W2
000d22a4: BIC             W5, W13, W12
000d22a8: AND             W12, W12, W11
000d22ac: BIC             W13, W13, W8
000d22b0: AND             W8, W8, W11
000d22b4: BIC             W11, W29, W3
000d22b8: AND             W3, W3, W17
000d22bc: STRB            W10, [X9,#(byte_F7B7B - 0xF7B78)]
000d22c0: ADRP            X10, #byte_F7B80@PAGE
000d22c4: ORR             W11, W11, W3
000d22c8: ORR             W12, W5, W12
000d22cc: ORR             W8, W13, W8
000d22d0: ADD             X10, X10, #byte_F7B80@PAGEOFF
000d22d4: ORR             W14, W15, W14
000d22d8: STRB            W12, [X9,#(byte_F7B7A - 0xF7B78)]
000d22dc: LDRB            W12, [X10,#(byte_F7B81 - 0xF7B80)]
000d22e0: STRB            W8, [X9,#(byte_F7B7C - 0xF7B78)]
000d22e4: EOR             W8, W11, #0xFFFFFFDF
000d22e8: STRB            W14, [X9,#(byte_F7B79 - 0xF7B78)]
000d22ec: STRB            W8, [X9]
000d22f0: LDRB            W9, [X10]
000d22f4: LDRB            W14, [X10,#(byte_F7B82 - 0xF7B80)]
000d22f8: BIC             W8, W0, W12
000d22fc: MOV             W6, #0x75 ; 'u'
000d2300: MOV             W0, #0x8A
000d2304: BIC             W13, W0, W9
000d2308: AND             W9, W9, W6
000d230c: AND             W11, W12, W23
000d2310: ORR             W13, W13, W9
000d2314: MOV             W9, #0x4B ; 'K'
000d2318: MOV             W17, #0xB4
000d231c: ORR             W11, W8, W11
000d2320: BIC             W2, W17, W14
000d2324: AND             W14, W14, W9
000d2328: LDRB            W15, [X10,#(byte_F7B83 - 0xF7B80)]
000d232c: ORR             W14, W2, W14
000d2330: EOR             W11, W11, W24
000d2334: STRB            W11, [X10,#(byte_F7B81 - 0xF7B80)]
000d2338: EOR             W11, W14, #0x3E ; '>'
000d233c: STRB            W11, [X10,#(byte_F7B82 - 0xF7B80)]
000d2340: ADRL            X11, byte_F7BAC
000d2348: BIC             W16, W16, W15
000d234c: AND             W15, W15, W1
000d2350: STRB            W13, [X10]
000d2354: LDRB            W13, [X11,#(byte_F7BAE - 0xF7BAC)]
000d2358: ORR             W15, W16, W15
000d235c: MOV             W16, #0xBC
000d2360: EOR             W14, W15, W16
000d2364: STRB            W14, [X10,#(byte_F7B83 - 0xF7B80)]
000d2368: MOV             W8, #0x37 ; '7'
000d236c: LDRB            W14, [X11,#(byte_F7BAD - 0xF7BAC)]
000d2370: BIC             W10, W8, W13
000d2374: MOV             W8, #0xC8
000d2378: AND             W15, W13, W8
000d237c: LDRB            W13, [X11,#(byte_F7BAF - 0xF7BAC)]
000d2380: MOV             W2, #0x17
000d2384: MOV             W8, #0xE8
000d2388: BIC             W3, W2, W14
000d238c: AND             W14, W14, W8
000d2390: LDRB            W23, [X11]
000d2394: ORR             W14, W3, W14
000d2398: BIC             W2, W2, W13
000d239c: AND             W24, W13, W8
000d23a0: STRB            W14, [X11,#(byte_F7BAD - 0xF7BAC)]
000d23a4: ADRP            X14, #byte_F79D0@PAGE
000d23a8: MOV             W20, #0x71 ; 'q'
000d23ac: MOV             W21, #0x8E
000d23b0: ORR             W10, W10, W15
000d23b4: ORR             W15, W2, W24
000d23b8: ADD             X14, X14, #byte_F79D0@PAGEOFF
000d23bc: BIC             W8, W20, W23
000d23c0: AND             W23, W23, W21
000d23c4: STRB            W15, [X11,#(byte_F7BAF - 0xF7BAC)]
000d23c8: LDRB            W15, [X14,#(byte_F79D1 - 0xF79D0)]
000d23cc: ORR             W8, W8, W23
000d23d0: EOR             W8, W8, #0x66666666
000d23d4: STRB            W8, [X11]
000d23d8: EOR             W8, W10, #0x20 ; ' '
000d23dc: STRB            W8, [X11,#(byte_F7BAE - 0xF7BAC)]
000d23e0: AND             W8, W15, W19
000d23e4: BIC             W10, W30, W15
000d23e8: ORR             W8, W10, W8
000d23ec: LDRB            W10, [X14,#(byte_F79D2 - 0xF79D0)]
000d23f0: MOV             W12, #0xDB
000d23f4: MOV             W11, #0x24 ; '$'
000d23f8: LDRB            W15, [X14]
000d23fc: BIC             W2, W12, W10
000d2400: AND             W10, W10, W11
000d2404: EOR             W8, W8, #0xBBBBBBBB
000d2408: ORR             W10, W2, W10
000d240c: LDRB            W2, [X14,#(byte_F79D3 - 0xF79D0)]
000d2410: STRB            W8, [X14,#(byte_F79D1 - 0xF79D0)]
000d2414: MOV             W8, #0x2A ; '*'
000d2418: EOR             W8, W10, W8
000d241c: MVN             W19, W15
000d2420: STRB            W8, [X14,#(byte_F79D2 - 0xF79D0)]
000d2424: ADRP            X8, #byte_F79D4@PAGE
000d2428: AND             W15, W15, #0xE
000d242c: AND             W19, W19, #0xFFFFFFF1
000d2430: ADD             X8, X8, #byte_F79D4@PAGEOFF
000d2434: ORR             W15, W19, W15
000d2438: MVN             W19, W2
000d243c: LDRB            W10, [X8]
000d2440: AND             W2, W2, #0x3C ; '<'
000d2444: AND             W19, W19, #0xFFFFFFC3
000d2448: ORR             W2, W19, W2
000d244c: MOV             W11, #0x32 ; '2'
000d2450: STRB            W15, [X14]
000d2454: EOR             W15, W2, W11
000d2458: MOV             W11, #0x8D
000d245c: MOV             W12, #0x72 ; 'r'
000d2460: STRB            W15, [X14,#(byte_F79D3 - 0xF79D0)]
000d2464: LDRB            W14, [X8,#(byte_F79D5 - 0xF79D4)]
000d2468: BIC             W15, W11, W10
000d246c: AND             W10, W10, W12
000d2470: ORR             W10, W15, W10
000d2474: LDRB            W15, [X8,#(byte_F79D6 - 0xF79D4)]
000d2478: LDRB            W2, [X8,#(byte_F79D7 - 0xF79D4)]
000d247c: BIC             W19, W11, W14
000d2480: AND             W14, W14, W12
000d2484: ORR             W14, W19, W14
000d2488: STRB            W10, [X8]
000d248c: MVN             W10, W15
000d2490: MOV             W23, #0x2D ; '-'
000d2494: MOV             W24, #0xD2
000d2498: STRB            W14, [X8,#(byte_F79D5 - 0xF79D4)]
000d249c: AND             W14, W15, #0xFFFFFFDF
000d24a0: AND             W10, W10, #0x20 ; ' '
000d24a4: BIC             W23, W23, W2
000d24a8: AND             W2, W2, W24
000d24ac: ORR             W10, W10, W14
000d24b0: MOV             W11, #0xAD
000d24b4: ADRP            X15, #byte_F7A3C@PAGE
000d24b8: ORR             W2, W23, W2
000d24bc: EOR             W10, W10, W11
000d24c0: MOV             W11, #0xA0
000d24c4: ADD             X15, X15, #byte_F7A3C@PAGEOFF
000d24c8: EOR             W14, W2, W11
000d24cc: LDRB            W2, [X15,#(byte_F7A3E - 0xF7A3C)]
000d24d0: STRB            W10, [X8,#(byte_F79D6 - 0xF79D4)]
000d24d4: LDRB            W10, [X15]
000d24d8: STRB            W14, [X8,#(byte_F79D7 - 0xF79D4)]
000d24dc: MOV             W8, #0x27 ; '''
000d24e0: MOV             W14, #0xD8
000d24e4: BIC             W8, W8, W2
000d24e8: AND             W2, W2, W14
000d24ec: ORR             W8, W8, W2
000d24f0: MVN             W2, W10
000d24f4: LDRB            W19, [X15,#(byte_F7A3D - 0xF7A3C)]
000d24f8: AND             W10, W10, #0x11111111
000d24fc: AND             W2, W2, #0xEEEEEEEE
000d2500: ORR             W10, W2, W10
000d2504: LDRB            W2, [X15,#(byte_F7A3F - 0xF7A3C)]
000d2508: MVN             W23, W19
000d250c: AND             W19, W19, #0x11111111
000d2510: AND             W23, W23, #0xEEEEEEEE
000d2514: ORR             W19, W23, W19
000d2518: MVN             W23, W2
000d251c: AND             W2, W2, #0xFFFFFFC1
000d2520: AND             W23, W23, #0x3E ; '>'
000d2524: STRB            W10, [X15]
000d2528: ADRP            X10, #byte_F7A44@PAGE
000d252c: ORR             W2, W23, W2
000d2530: EOR             W8, W8, W1
000d2534: ADD             X10, X10, #byte_F7A44@PAGEOFF
000d2538: STRB            W8, [X15,#(byte_F7A3E - 0xF7A3C)]
000d253c: EOR             W8, W2, W26
000d2540: LDRB            W2, [X10]
000d2544: STRB            W8, [X15,#(byte_F7A3F - 0xF7A3C)]
000d2548: LDRB            W8, [X10,#(byte_F7A45 - 0xF7A44)]
000d254c: STRB            W19, [X15,#(byte_F7A3D - 0xF7A3C)]
000d2550: MOV             W15, #0x9D
000d2554: MOV             W11, #0x62 ; 'b'
000d2558: BIC             W15, W15, W2
000d255c: AND             W2, W2, W11
000d2560: MOV             W11, #0xA3
000d2564: ORR             W15, W15, W2
000d2568: LDRB            W2, [X10,#(byte_F7A46 - 0xF7A44)]
000d256c: BIC             W19, W11, W8
000d2570: MOV             W11, #0x5C ; '\'
000d2574: AND             W8, W8, W11
000d2578: ORR             W8, W19, W8
000d257c: EOR             W8, W8, W9
000d2580: MVN             W9, W2
000d2584: AND             W2, W2, #0xFFFFFFC3
000d2588: AND             W9, W9, #0x3C ; '<'
000d258c: ORR             W9, W9, W2
000d2590: STRB            W8, [X10,#(byte_F7A45 - 0xF7A44)]
000d2594: MOV             W8, #0xD4
000d2598: LDRB            W23, [X10,#(byte_F7A47 - 0xF7A44)]
000d259c: EOR             W8, W9, W8
000d25a0: STRB            W8, [X10,#(byte_F7A46 - 0xF7A44)]
000d25a4: ADRL            X8, byte_F7A80
000d25ac: MOV             W3, #0x9B
000d25b0: MOV             W5, #0x64 ; 'd'
000d25b4: LDRB            W9, [X8]
000d25b8: BIC             W19, W3, W23
000d25bc: AND             W23, W23, W5
000d25c0: ORR             W19, W19, W23
000d25c4: MOV             W2, #0x73 ; 's'
000d25c8: EOR             W15, W15, W6
000d25cc: EOR             W2, W19, W2
000d25d0: STRB            W15, [X10]
000d25d4: MOV             W11, #0x82
000d25d8: MOV             W15, #0x7D ; '}'
000d25dc: STRB            W2, [X10,#(byte_F7A47 - 0xF7A44)]
000d25e0: LDRB            W2, [X8,#(byte_F7A81 - 0xF7A80)]
000d25e4: BIC             W19, W11, W9
000d25e8: AND             W13, W9, W15
000d25ec: LDRB            W23, [X8,#(byte_F7A83 - 0xF7A80)]
000d25f0: LDRB            W9, [X8,#(byte_F7A84 - 0xF7A80)]
000d25f4: BIC             W26, W11, W2
000d25f8: LDRB            W10, [X8,#(byte_F7A85 - 0xF7A80)]
000d25fc: BIC             W12, W11, W23
000d2600: BIC             W11, W11, W9
000d2604: AND             W9, W9, W15
000d2608: ORR             W9, W11, W9
000d260c: LDRB            W11, [X8,#(byte_F7A82 - 0xF7A80)]
000d2610: MOV             W24, #0xB2
000d2614: AND             W2, W2, W15
000d2618: AND             W23, W23, W15
000d261c: BIC             W15, W28, W10
000d2620: AND             W10, W10, W24
000d2624: ORR             W13, W19, W13
000d2628: ORR             W10, W15, W10
000d262c: STRB            W13, [X8]
000d2630: MVN             W13, W11
000d2634: AND             W13, W13, #0xFC
000d2638: STRB            W9, [X8,#(byte_F7A84 - 0xF7A80)]
000d263c: EOR             W9, W10, #0xFFFFFFCF
000d2640: ADRP            X10, #byte_F7A88@PAGE
000d2644: BFXIL           W13, W11, #0, #2
000d2648: ADD             X10, X10, #byte_F7A88@PAGEOFF
000d264c: ORR             W2, W26, W2
000d2650: ORR             W12, W12, W23
000d2654: STRB            W9, [X8,#(byte_F7A85 - 0xF7A80)]
000d2658: EOR             W9, W13, #0x7E ; '~'
000d265c: LDRB            W11, [X10,#(byte_F7A89 - 0xF7A88)]
000d2660: STRB            W2, [X8,#(byte_F7A81 - 0xF7A80)]
000d2664: STRB            W12, [X8,#(byte_F7A83 - 0xF7A80)]
000d2668: STRB            W9, [X8,#(byte_F7A82 - 0xF7A80)]
000d266c: LDRB            W8, [X10]
000d2670: MOV             W12, #0x94
000d2674: MOV             W24, #0x6B ; 'k'
000d2678: BIC             W9, W24, W11
000d267c: AND             W11, W11, W12
000d2680: ORR             W9, W9, W11
000d2684: LDRB            W11, [X10,#(byte_F7A8A - 0xF7A88)]
000d2688: MVN             W12, W8
000d268c: AND             W8, W8, #0x11111111
000d2690: AND             W12, W12, #0xEEEEEEEE
000d2694: ORR             W8, W12, W8
000d2698: EOR             W8, W8, W17
000d269c: MVN             W12, W11
000d26a0: MOV             W23, #0x31 ; '1'
000d26a4: STRB            W8, [X10]
000d26a8: ADRP            X8, #byte_F7A94@PAGE
000d26ac: AND             W11, W11, #0x3C ; '<'
000d26b0: AND             W12, W12, #0xFFFFFFC3
000d26b4: EOR             W9, W9, W23
000d26b8: ADD             X8, X8, #byte_F7A94@PAGEOFF
000d26bc: ORR             W11, W12, W11
000d26c0: STRB            W9, [X10,#(byte_F7A89 - 0xF7A88)]
000d26c4: LDRB            W9, [X8]
000d26c8: EOR             W11, W11, #0x99999999
000d26cc: STRB            W11, [X10,#(byte_F7A8A - 0xF7A88)]
000d26d0: LDRB            W10, [X8,#(byte_F7A95 - 0xF7A94)]
000d26d4: MOV             W11, #0x7B ; '{'
000d26d8: BIC             W11, W11, W9
000d26dc: AND             W9, W9, W4
000d26e0: ORR             W9, W11, W9
000d26e4: MOV             W11, #0xE9
000d26e8: MOV             W12, #0x16
000d26ec: AND             W11, W10, W11
000d26f0: BIC             W10, W12, W10
000d26f4: ORR             W10, W10, W11
000d26f8: LDRB            W11, [X8,#(byte_F7A96 - 0xF7A94)]
000d26fc: MOV             W12, #0xA4
000d2700: EOR             W9, W9, W1
000d2704: EOR             W10, W10, W12
000d2708: MVN             W12, W11
000d270c: AND             W11, W11, #0xFFFFFFC7
000d2710: AND             W12, W12, #0x38 ; '8'
000d2714: STRB            W9, [X8]
000d2718: ADRP            X9, #byte_F7AA0@PAGE
000d271c: ORR             W11, W12, W11
000d2720: ADD             X9, X9, #byte_F7AA0@PAGEOFF
000d2724: STRB            W10, [X8,#(byte_F7A95 - 0xF7A94)]
000d2728: LDRB            W10, [X9,#(byte_F7AA2 - 0xF7AA0)]
000d272c: EOR             W11, W11, W0
000d2730: STRB            W11, [X8,#(byte_F7A96 - 0xF7A94)]
000d2734: LDRB            W8, [X9]
000d2738: BIC             W11, W5, W10
000d273c: AND             W10, W10, W3
000d2740: LDRB            W12, [X9,#(byte_F7AA1 - 0xF7AA0)]
000d2744: ORR             W10, W11, W10
000d2748: MVN             W11, W8
000d274c: AND             W8, W8, #0x11111111
000d2750: AND             W11, W11, #0xEEEEEEEE
000d2754: ORR             W8, W11, W8
000d2758: LDRB            W11, [X9,#(byte_F7AA3 - 0xF7AA0)]
000d275c: MVN             W13, W12
000d2760: AND             W12, W12, #0x11111111
000d2764: AND             W13, W13, #0xEEEEEEEE
000d2768: ORR             W12, W13, W12
000d276c: MVN             W13, W11
000d2770: STRB            W12, [X9,#(byte_F7AA1 - 0xF7AA0)]
000d2774: ADRP            X12, #byte_F7AB8@PAGE
000d2778: AND             W11, W11, #0xFFFFFFE1
000d277c: AND             W13, W13, #0x1E
000d2780: ADD             X12, X12, #byte_F7AB8@PAGEOFF
000d2784: ORR             W11, W13, W11
000d2788: STRB            W8, [X9]
000d278c: EOR             W8, W10, W0
000d2790: LDRB            W10, [X12,#(byte_F7ABB - 0xF7AB8)]
000d2794: STRB            W8, [X9,#(byte_F7AA2 - 0xF7AA0)]
000d2798: EOR             W8, W11, #0xF0
000d279c: LDRB            W11, [X12]
000d27a0: LDRB            W17, [X12,#(byte_F7AB9 - 0xF7AB8)]
000d27a4: STRB            W8, [X9,#(byte_F7AA3 - 0xF7AA0)]
000d27a8: MOV             W8, #0x9A
000d27ac: MOV             W9, #0x65 ; 'e'
000d27b0: BIC             W8, W8, W10
000d27b4: AND             W13, W10, W9
000d27b8: MOV             W9, #0x42 ; 'B'
000d27bc: MOV             W10, #0xBD
000d27c0: BIC             W15, W9, W11
000d27c4: AND             W11, W11, W10
000d27c8: ORR             W8, W8, W13
000d27cc: LDRB            W13, [X12,#(byte_F7ABA - 0xF7AB8)]
000d27d0: ORR             W11, W15, W11
000d27d4: MVN             W15, W17
000d27d8: AND             W15, W15, #0xFC
000d27dc: BFXIL           W15, W17, #0, #2
000d27e0: STRB            W8, [X12,#(byte_F7ABB - 0xF7AB8)]
000d27e4: EOR             W8, W11, W14
000d27e8: MVN             W17, W13
000d27ec: STRB            W8, [X12]
000d27f0: EOR             W8, W15, #0x66666666
000d27f4: AND             W13, W13, #0xFFFFFFC3
000d27f8: AND             W17, W17, #0x3C ; '<'
000d27fc: STRB            W8, [X12,#(byte_F7AB9 - 0xF7AB8)]
000d2800: ADRP            X8, #byte_F7ADC@PAGE
000d2804: ORR             W13, W17, W13
000d2808: MOV             W11, #0xA6
000d280c: ADD             X8, X8, #byte_F7ADC@PAGEOFF
000d2810: LDRB            W15, [X8]
000d2814: EOR             W13, W13, W11
000d2818: STRB            W13, [X12,#(byte_F7ABA - 0xF7AB8)]
000d281c: LDRB            W12, [X8,#(byte_F7ADD - 0xF7ADC)]
000d2820: BIC             W13, W25, W15
000d2824: AND             W15, W15, W7
000d2828: MOV             W3, #0x7B ; '{'
000d282c: MOV             W2, #0x84
000d2830: ORR             W13, W13, W15
000d2834: LDRB            W15, [X8,#(byte_F7ADE - 0xF7ADC)]
000d2838: BIC             W17, W3, W12
000d283c: AND             W12, W12, W2
000d2840: ORR             W12, W17, W12
000d2844: LDRB            W17, [X8,#(byte_F7ADF - 0xF7ADC)]
000d2848: MOV             W28, #0x34 ; '4'
000d284c: BIC             W1, W28, W15
000d2850: AND             W15, W15, W22
000d2854: ORR             W15, W1, W15
000d2858: BIC             W1, W3, W17
000d285c: AND             W17, W17, W2
000d2860: ORR             W17, W1, W17
000d2864: LDRB            W1, [X8,#(byte_F7AE0 - 0xF7ADC)]
000d2868: STRB            W12, [X8,#(byte_F7ADD - 0xF7ADC)]
000d286c: MOV             W12, #0x4F ; 'O'
000d2870: EOR             W12, W15, W12
000d2874: MVN             W15, W1
000d2878: STRB            W17, [X8,#(byte_F7ADF - 0xF7ADC)]
000d287c: AND             W17, W1, #0x99999999
000d2880: AND             W15, W15, #0x66666666
000d2884: ORR             W15, W15, W17
000d2888: MOV             W17, #0xAC
000d288c: EOR             W13, W13, W17
000d2890: STRB            W13, [X8]
000d2894: ADRP            X13, #byte_F7B40@PAGE
000d2898: STRB            W12, [X8,#(byte_F7ADE - 0xF7ADC)]
000d289c: MOV             W12, #0x1D
000d28a0: ADD             X13, X13, #byte_F7B40@PAGEOFF
000d28a4: EOR             W12, W15, W12
000d28a8: LDRB            W15, [X13,#(byte_F7B43 - 0xF7B40)]
000d28ac: STRB            W12, [X8,#(byte_F7AE0 - 0xF7ADC)]
000d28b0: LDRB            W12, [X13]
000d28b4: MOV             W8, #0x2E ; '.'
000d28b8: MOV             W4, #0xD1
000d28bc: BIC             W17, W8, W15
000d28c0: AND             W15, W15, W4
000d28c4: ORR             W15, W17, W15
000d28c8: MVN             W17, W12
000d28cc: LDRB            W1, [X13,#(byte_F7B41 - 0xF7B40)]
000d28d0: AND             W12, W12, #0xFFFFFFF3
000d28d4: AND             W17, W17, #0xC
000d28d8: ORR             W12, W17, W12
000d28dc: LDRB            W17, [X13,#(byte_F7B42 - 0xF7B40)]
000d28e0: MVN             W2, W1
000d28e4: AND             W1, W1, #0xFFFFFFCF
000d28e8: AND             W2, W2, #0x30 ; '0'
000d28ec: ORR             W1, W2, W1
000d28f0: MVN             W2, W17
000d28f4: AND             W17, W17, #0x1E
000d28f8: AND             W2, W2, #0xFFFFFFE1
000d28fc: ORR             W17, W2, W17
000d2900: STRB            W12, [X13]
000d2904: MOV             W12, #0xED
000d2908: EOR             W12, W17, W12
000d290c: ADRP            X17, #byte_F7B48@PAGE
000d2910: EOR             W15, W15, #0x22222222
000d2914: ADD             X17, X17, #byte_F7B48@PAGEOFF
000d2918: STRB            W15, [X13,#(byte_F7B43 - 0xF7B40)]
000d291c: EOR             W15, W1, #0x3C ; '<'
000d2920: LDRB            W1, [X17]
000d2924: MOV             W19, #0x64 ; 'd'
000d2928: MOV             W5, #0x9B
000d292c: STRB            W15, [X13,#(byte_F7B41 - 0xF7B40)]
000d2930: STRB            W12, [X13,#(byte_F7B42 - 0xF7B40)]
000d2934: BIC             W13, W5, W1
000d2938: AND             W15, W1, W19
000d293c: LDRB            W1, [X17,#(byte_F7B49 - 0xF7B48)]
000d2940: LDRB            W19, [X17,#(byte_F7B4B - 0xF7B48)]
000d2944: MOV             W26, #0x2E ; '.'
000d2948: LDRB            W12, [X17,#(byte_F7B4A - 0xF7B48)]
000d294c: ORR             W13, W13, W15
000d2950: BIC             W15, W4, W1
000d2954: AND             W1, W1, W26
000d2958: ORR             W15, W15, W1
000d295c: EOR             W13, W13, W30
000d2960: MOV             W8, #0x61 ; 'a'
000d2964: STRB            W15, [X17,#(byte_F7B49 - 0xF7B48)]
000d2968: MVN             W15, W19
000d296c: STRB            W13, [X17]
000d2970: ADRP            X13, #byte_F7B60@PAGE
000d2974: BIC             W2, W8, W12
000d2978: MOV             W8, #0x9E
000d297c: AND             W1, W19, #0x22222222
000d2980: AND             W15, W15, #0xDDDDDDDD
000d2984: ADD             X13, X13, #byte_F7B60@PAGEOFF
000d2988: AND             W12, W12, W8
000d298c: ORR             W15, W15, W1
000d2990: LDRB            W1, [X13,#(byte_F7B61 - 0xF7B60)]
000d2994: ORR             W12, W2, W12
000d2998: EOR             W12, W12, W29
000d299c: STRB            W12, [X17,#(byte_F7B4A - 0xF7B48)]
000d29a0: EOR             W12, W15, #0xC
000d29a4: STRB            W12, [X17,#(byte_F7B4B - 0xF7B48)]
000d29a8: MVN             W12, W1
000d29ac: AND             W15, W1, #0xFC
000d29b0: BFXIL           W15, W12, #0, #2
000d29b4: LDRB            W12, [X13,#(byte_F7B63 - 0xF7B60)]
000d29b8: LDRB            W17, [X13]
000d29bc: MOV             W2, #0x98
000d29c0: MOV             W4, #0x67 ; 'g'
000d29c4: LDRB            W26, [X13,#(byte_F7B62 - 0xF7B60)]
000d29c8: BIC             W1, W4, W12
000d29cc: AND             W12, W12, W2
000d29d0: ORR             W12, W1, W12
000d29d4: MVN             W1, W17
000d29d8: EOR             W12, W12, W14
000d29dc: ADRP            X14, #a88K@PAGE; ")88\"/K"
000d29e0: AND             W17, W17, #0x40 ; '@'
000d29e4: AND             W1, W1, #0xFFFFFFBF
000d29e8: EOR             W15, W15, W16
000d29ec: MVN             W16, W26
000d29f0: ADD             X14, X14, #a88K@PAGEOFF; ")88\"/K"
000d29f4: ORR             W17, W1, W17
000d29f8: AND             W1, W26, #4
000d29fc: AND             W16, W16, #0xFFFFFFFB
000d2a00: STRB            W12, [X13,#(byte_F7B63 - 0xF7B60)]
000d2a04: LDRB            W12, [X14]; ")88\"/K"
000d2a08: ORR             W16, W16, W1
000d2a0c: STRB            W15, [X13,#(byte_F7B61 - 0xF7B60)]
000d2a10: EOR             W15, W16, #0x44444444
000d2a14: STRB            W17, [X13]
000d2a18: STRB            W15, [X13,#(byte_F7B62 - 0xF7B60)]
000d2a1c: MOV             W13, #0x6A ; 'j'
000d2a20: MOV             W15, #0x95
000d2a24: BIC             W13, W13, W12
000d2a28: LDRB            W16, [X14,#(a88K+1 - 0xF7B70)]; "88\"/K"
000d2a2c: AND             W12, W12, W15
000d2a30: LDRB            W17, [X14,#(a88K+2 - 0xF7B70)]; "8\"/K"
000d2a34: LDRB            W1, [X14,#(a88K+4 - 0xF7B70)]; "/K"
000d2a38: ORR             W12, W13, W12
000d2a3c: LDRB            W13, [X14,#(a88K+5 - 0xF7B70)]; "K"
000d2a40: MOV             W15, #0x59 ; 'Y'
000d2a44: BIC             W15, W15, W16
000d2a48: AND             W11, W16, W11
000d2a4c: BIC             W16, W0, W17
000d2a50: AND             W17, W17, W6
000d2a54: BIC             W9, W9, W1
000d2a58: AND             W10, W1, W10
000d2a5c: ORR             W11, W15, W11
000d2a60: ORR             W15, W16, W17
000d2a64: ORR             W9, W9, W10
000d2a68: MVN             W10, W13
000d2a6c: AND             W13, W13, #0xFE
000d2a70: LDRB            W16, [X14,#(a88K+3 - 0xF7B70)]; "\"/K"
000d2a74: ADRP            X8, #xmmword_F79E0@PAGE
000d2a78: BFXIL           W13, W10, #0, #1
000d2a7c: MOV             W10, #0x21 ; '!'
000d2a80: EOR             W9, W9, W27
000d2a84: ADD             X8, X8, #xmmword_F79E0@PAGEOFF
000d2a88: EOR             W10, W12, W10
000d2a8c: MOV             W12, #0x12
000d2a90: STRB            W9, [X14,#(a88K+4 - 0xF7B70)]; "/K"
000d2a94: LDRB            W9, [X8,#(byte_F79F0 - 0xF79E0)]
000d2a98: ADRP            X8, #xmmword_F7A20@PAGE
000d2a9c: EOR             W11, W11, W12
000d2aa0: ADD             X8, X8, #xmmword_F7A20@PAGEOFF
000d2aa4: MVN             W12, W16
000d2aa8: STRB            W11, [X14,#(a88K+1 - 0xF7B70)]; "88\"/K"
000d2aac: LDRB            W11, [X8,#(byte_F7A38 - 0xF7A20)]
000d2ab0: AND             W16, W16, #4
000d2ab4: AND             W12, W12, #0xFFFFFFFB
000d2ab8: ORR             W12, W12, W16
000d2abc: STRB            W10, [X14]; ")88\"/K"
000d2ac0: EOR             W10, W15, #0xFFFFFFC1
000d2ac4: BIC             W16, W20, W9
000d2ac8: AND             W17, W9, W21
000d2acc: ADRP            X9, #qword_F7A48@PAGE
000d2ad0: STRB            W10, [X14,#(a88K+2 - 0xF7B70)]; "8\"/K"
000d2ad4: EOR             W10, W12, W29
000d2ad8: MOV             W8, #0xEC
000d2adc: ADD             X9, X9, #qword_F7A48@PAGEOFF
000d2ae0: ADRP            X6, #xmmword_F7A60@PAGE
000d2ae4: STRB            W10, [X14,#(a88K+3 - 0xF7B70)]; "\"/K"
000d2ae8: BIC             W0, W8, W11
000d2aec: LDRB            W10, [X9,#(byte_F7A53 - 0xF7A48)]
000d2af0: MOV             W8, #0x13
000d2af4: ADD             X6, X6, #xmmword_F7A60@PAGEOFF
000d2af8: AND             W26, W11, W8
000d2afc: LDRB            W11, [X6,#(byte_F7A71 - 0xF7A60)]
000d2b00: EOR             W13, W13, W30
000d2b04: BIC             W1, W22, W10
000d2b08: AND             W30, W10, W28
000d2b0c: LDRB            W10, [X9,#(byte_F7A50 - 0xF7A48)]
000d2b10: MOV             W8, #0x23 ; '#'
000d2b14: BIC             W8, W8, W11
000d2b18: STR             W8, [SP,#0xD0+var_64]
000d2b1c: MOV             W8, #0xDC
000d2b20: AND             W8, W11, W8
000d2b24: LDRB            W11, [X9,#(byte_F7A51 - 0xF7A48)]
000d2b28: STR             W8, [SP,#0xD0+var_68]
000d2b2c: BIC             W8, W25, W10
000d2b30: STR             W8, [SP,#0xD0+var_6C]
000d2b34: AND             W8, W10, W7
000d2b38: LDRB            W10, [X9,#(byte_F7A52 - 0xF7A48)]
000d2b3c: STR             W8, [SP,#0xD0+var_70]
000d2b40: BIC             W8, W25, W11
000d2b44: STR             W8, [SP,#0xD0+var_74]
000d2b48: AND             W8, W11, W7
000d2b4c: LDRB            W11, [X6,#(byte_F7A70 - 0xF7A60)]
000d2b50: STR             W8, [SP,#0xD0+var_78]
000d2b54: BIC             W8, W25, W10
000d2b58: STR             W8, [SP,#0xD0+var_7C]
000d2b5c: AND             W8, W10, W7
000d2b60: LDRB            W10, [X6,#(byte_F7A73 - 0xF7A60)]
000d2b64: STRB            W13, [X14,#(a88K+5 - 0xF7B70)]; "K"
000d2b68: STR             W8, [SP,#0xD0+var_80]
000d2b6c: BIC             W8, W25, W11
000d2b70: LDRB            W13, [X6,#(byte_F7A74 - 0xF7A60)]
000d2b74: STR             W8, [SP,#0xD0+var_84]
000d2b78: AND             W8, W11, W7
000d2b7c: STR             W8, [SP,#0xD0+var_88]
000d2b80: LDRB            W14, [X6,#(byte_F7A76 - 0xF7A60)]
000d2b84: BIC             W8, W25, W10
000d2b88: STR             W8, [SP,#0xD0+var_8C]
000d2b8c: AND             W8, W10, W7
000d2b90: ADRP            X9, #qword_F7AD0@PAGE
000d2b94: STR             W8, [SP,#0xD0+var_90]
000d2b98: BIC             W8, W25, W13
000d2b9c: ADD             X9, X9, #qword_F7AD0@PAGEOFF
000d2ba0: STR             W8, [SP,#0xD0+var_94]
000d2ba4: AND             W8, W13, W7
000d2ba8: LDRB            W13, [X9,#(byte_F7AD8 - 0xF7AD0)]
000d2bac: STR             W8, [SP,#0xD0+var_98]
000d2bb0: BIC             W8, W23, W14
000d2bb4: STR             W8, [SP,#0xD0+var_9C]
000d2bb8: MOV             W8, #0xCE
000d2bbc: AND             W8, W14, W8
000d2bc0: MOV             W25, #0xC5
000d2bc4: STR             W8, [SP,#0xD0+var_A0]
000d2bc8: LDRB            W14, [X9,#(byte_F7AD9 - 0xF7AD0)]
000d2bcc: BIC             W8, W25, W13
000d2bd0: STR             W8, [SP,#0xD0+var_A4]
000d2bd4: MOV             W8, #0x3A ; ':'
000d2bd8: AND             W8, W13, W8
000d2bdc: STR             W8, [SP,#0xD0+var_A8]
000d2be0: MOV             W8, #0x1A
000d2be4: LDRB            W13, [X9,#(byte_F7ADA - 0xF7AD0)]
000d2be8: BIC             W8, W8, W14
000d2bec: MOV             W25, #0xE5
000d2bf0: STR             W8, [SP,#0xD0+var_B0]
000d2bf4: AND             W8, W14, W25
000d2bf8: STR             W8, [SP,#0xD0+var_B4]
000d2bfc: LDRB            W25, [X9,#(byte_F7ADB - 0xF7AD0)]
000d2c00: MOV             W8, #0xBA
000d2c04: BIC             W8, W8, W13
000d2c08: STR             W8, [SP,#0xD0+var_B8]
000d2c0c: MOV             W8, #0x45 ; 'E'
000d2c10: AND             W8, W13, W8
000d2c14: MOV             W13, #0xFA
000d2c18: STR             W8, [SP,#0xD0+var_BC]
000d2c1c: BIC             W8, W13, W25
000d2c20: STR             W8, [SP,#0xD0+var_C0]
000d2c24: ADRL            X8, qword_F7AF8
000d2c2c: LDRB            W13, [X8,#(byte_F7B00 - 0xF7AF8)]
000d2c30: MOV             W23, #5
000d2c34: LDRB            W8, [X8,#(byte_F7B04 - 0xF7AF8)]
000d2c38: AND             W9, W25, W23
000d2c3c: MOV             W25, #0x15
000d2c40: STR             W9, [SP,#0xD0+var_C4]
000d2c44: BIC             W9, W25, W13
000d2c48: MOV             W25, #0xEA
000d2c4c: STR             W9, [SP,#0xD0+var_C8]
000d2c50: AND             W9, W13, W25
000d2c54: MOV             W13, #0x6D ; 'm'
000d2c58: STR             W9, [SP,#0xD0+var_D0]
000d2c5c: BIC             W9, W13, W8
000d2c60: STR             W9, [SP,#0xD0+var_CC]
000d2c64: ADRL            X9, xmmword_F7B10
000d2c6c: LDRB            W13, [X9,#(byte_F7B21 - 0xF7B10)]
000d2c70: MOV             W25, #0x92
000d2c74: AND             W29, W8, W25
000d2c78: MOV             W8, #0xD
000d2c7c: BIC             W8, W8, W13
000d2c80: ADRP            X20, #qword_F7B28@PAGE
000d2c84: STR             W8, [SP,#0xD0+var_AC]
000d2c88: LDRB            W8, [X9,#(byte_F7B20 - 0xF7B10)]
000d2c8c: ADD             X20, X20, #qword_F7B28@PAGEOFF
000d2c90: LDRB            W10, [X20,#(byte_F7B30 - 0xF7B28)]
000d2c94: MOV             W11, #0x24 ; '$'
000d2c98: MOV             W9, #0xDB
000d2c9c: BIC             W25, W11, W8
000d2ca0: AND             W21, W8, W9
000d2ca4: LDRB            W8, [X20,#(byte_F7B31 - 0xF7B28)]
000d2ca8: BIC             W22, W9, W10
000d2cac: LDRB            W9, [X20,#(byte_F7B34 - 0xF7B28)]
000d2cb0: MOV             W3, #0x84
000d2cb4: AND             W19, W10, W11
000d2cb8: BIC             W5, W2, W8
000d2cbc: AND             W4, W8, W4
000d2cc0: MOV             W8, #0x7B ; '{'
000d2cc4: ADRP            X10, #xmmword_F7B90@PAGE
000d2cc8: BIC             W7, W8, W9
000d2ccc: AND             W3, W9, W3
000d2cd0: LDRB            W8, [X20,#(byte_F7B33 - 0xF7B28)]
000d2cd4: ADD             X10, X10, #xmmword_F7B90@PAGEOFF
000d2cd8: LDRB            W9, [X20,#(byte_F7B35 - 0xF7B28)]
000d2cdc: LDRB            W10, [X10,#(byte_F7BA8 - 0xF7B90)]
000d2ce0: MOV             W15, #0xF2
000d2ce4: AND             W27, W13, W15
000d2ce8: MOV             W12, #0xCD
000d2cec: MOV             W13, #0x32 ; '2'
000d2cf0: BIC             W11, W12, W8
000d2cf4: AND             W8, W8, W13
000d2cf8: BIC             W14, W12, W9
000d2cfc: AND             W13, W9, W13
000d2d00: MOV             W9, #0x94
000d2d04: BIC             W12, W9, W10
000d2d08: ORR             W9, W16, W17
000d2d0c: LDP             W17, W16, [SP,#0xD0+var_70]
000d2d10: ORR             W15, W0, W26
000d2d14: ORR             W4, W5, W4
000d2d18: ORR             W5, W11, W8
000d2d1c: ORR             W16, W16, W17
000d2d20: LDP             W0, W17, [SP,#0xD0+var_78]
000d2d24: ADRL            X11, xmmword_F7A00
000d2d2c: LDRB            W8, [X11,#(byte_F7A10 - 0xF7A00)]
000d2d30: ORR             W17, W17, W0
000d2d34: LDP             W2, W0, [SP,#0xD0+var_80]
000d2d38: AND             W10, W10, W24
000d2d3c: ORR             W12, W12, W10
000d2d40: MOV             W10, #0x14
000d2d44: ORR             W2, W0, W2
000d2d48: ORR             W0, W1, W30
000d2d4c: STR             W0, [SP,#0xD0+var_70]
000d2d50: LDP             W1, W0, [SP,#0xD0+var_88]
000d2d54: EOR             W9, W9, W10
000d2d58: MVN             W10, W8
000d2d5c: AND             W8, W8, #0x77777777
000d2d60: ORR             W0, W0, W1
000d2d64: LDP             W23, W1, [SP,#0xD0+var_68]
000d2d68: AND             W10, W10, #0x88888888
000d2d6c: ORR             W3, W7, W3
000d2d70: ORR             W8, W10, W8
000d2d74: ADRP            X7, #qword_F7A48@PAGE
000d2d78: LDRB            W10, [X6,#(byte_F7A72 - 0xF7A60)]
000d2d7c: ADD             X7, X7, #qword_F7A48@PAGEOFF
000d2d80: ORR             W1, W1, W23
000d2d84: LDP             W24, W23, [SP,#0xD0+var_90]
000d2d88: ORR             W19, W22, W19
000d2d8c: ADRP            X22, #xmmword_F7A20@PAGE
000d2d90: STRB            W16, [X7,#(byte_F7A50 - 0xF7A48)]
000d2d94: LDRB            W16, [X6,#(byte_F7A75 - 0xF7A60)]
000d2d98: ADD             X22, X22, #xmmword_F7A20@PAGEOFF
000d2d9c: ORR             W13, W14, W13
000d2da0: STRB            W15, [X22,#(byte_F7A38 - 0xF7A20)]
000d2da4: MOV             W14, #0xF4
000d2da8: MVN             W15, W10
000d2dac: EOR             W14, W1, W14
000d2db0: AND             W10, W10, #2
000d2db4: AND             W15, W15, #0xFFFFFFFD
000d2db8: ORR             W23, W23, W24
000d2dbc: LDP             W26, W24, [SP,#0xD0+var_98]
000d2dc0: ORR             W10, W15, W10
000d2dc4: MVN             W15, W16
000d2dc8: STRB            W14, [X6,#(byte_F7A71 - 0xF7A60)]
000d2dcc: MOV             W14, #0x2A ; '*'
000d2dd0: AND             W15, W15, #0xFE
000d2dd4: EOR             W10, W10, W14
000d2dd8: BFXIL           W15, W16, #0, #1
000d2ddc: STRB            W10, [X6,#(byte_F7A72 - 0xF7A60)]
000d2de0: MOV             W10, #0x29 ; ')'
000d2de4: EOR             W14, W15, W10
000d2de8: ORR             W24, W24, W26
000d2dec: LDP             W30, W26, [SP,#0xD0+var_A0]
000d2df0: STRB            W14, [X6,#(byte_F7A75 - 0xF7A60)]
000d2df4: ADRL            X14, qword_F7AC0
000d2dfc: LDRB            W15, [X14,#(byte_F7AC8 - 0xF7AC0)]
000d2e00: ORR             W26, W26, W30
000d2e04: MOV             W16, #0xE6
000d2e08: LDR             Q0, [X6]
000d2e0c: EOR             W16, W26, W16
000d2e10: STRB            W17, [X7,#(byte_F7A51 - 0xF7A48)]
000d2e14: STRB            W16, [X6,#(byte_F7A76 - 0xF7A60)]
000d2e18: MVN             W16, W15
000d2e1c: LDRB            W17, [X14,#(byte_F7AC9 - 0xF7AC0)]
000d2e20: AND             W15, W15, #0xFFFFFF8F
000d2e24: AND             W16, W16, #0x70 ; 'p'
000d2e28: MOVI            V1.16B, #0xD7
000d2e2c: MVN             V2.16B, V0.16B
000d2e30: ORR             W15, W16, W15
000d2e34: LDRB            W16, [X14,#(byte_F7ACA - 0xF7AC0)]
000d2e38: BSL             V1.16B, V2.16B, V0.16B
000d2e3c: LDR             D0, [X14]
000d2e40: STRB            W0, [X6,#(byte_F7A70 - 0xF7A60)]
000d2e44: MVN             W0, W17
000d2e48: AND             W17, W17, #0xFFFFFF8F
000d2e4c: AND             W0, W0, #0x70 ; 'p'
000d2e50: ORR             W17, W0, W17
000d2e54: MVN             W0, W16
000d2e58: STR             Q1, [X6]
000d2e5c: AND             W16, W16, #0xFFFFFF8F
000d2e60: AND             W0, W0, #0x70 ; 'p'
000d2e64: MOVI            V1.8B, #0x70 ; 'p'
000d2e68: MVN             V2.8B, V0.8B
000d2e6c: ORR             W16, W0, W16
000d2e70: BSL             V1.8B, V2.8B, V0.8B
000d2e74: STRB            W15, [X14,#(byte_F7AC8 - 0xF7AC0)]
000d2e78: STRB            W17, [X14,#(byte_F7AC9 - 0xF7AC0)]
000d2e7c: STRB            W16, [X14,#(byte_F7ACA - 0xF7AC0)]
000d2e80: STR             D1, [X14]
000d2e84: ADRL            X14, qword_F7AE8
000d2e8c: LDR             D0, [X14]
000d2e90: MOVI            V1.8B, #0xF9
000d2e94: STRB            W5, [X20,#(byte_F7B33 - 0xF7B28)]
000d2e98: ADRP            X5, #qword_F7B58@PAGE
000d2e9c: MVN             V2.8B, V0.8B
000d2ea0: BSL             V1.8B, V2.8B, V0.8B
000d2ea4: LDR             D0, [X5,#qword_F7B58@PAGEOFF]
000d2ea8: STRB            W13, [X20,#(byte_F7B35 - 0xF7B28)]
000d2eac: ADRP            X13, #xmmword_F79E0@PAGE
000d2eb0: STR             D1, [X14]
000d2eb4: MOVI            V1.8B, #0x4E ; 'N'
000d2eb8: MVN             V2.8B, V0.8B
000d2ebc: ADD             X13, X13, #xmmword_F79E0@PAGEOFF
000d2ec0: BSL             V1.8B, V2.8B, V0.8B
000d2ec4: LDR             Q0, [X13]
000d2ec8: STR             D1, [X5,#qword_F7B58@PAGEOFF]
000d2ecc: MOVI            V1.16B, #0xBE
000d2ed0: MOVI            V2.16B, #0xDB
000d2ed4: MVN             V3.16B, V0.16B
000d2ed8: BSL             V1.16B, V3.16B, V0.16B
000d2edc: EOR             V0.16B, V1.16B, V2.16B
000d2ee0: STR             Q0, [X13]
000d2ee4: LDR             Q0, [X11]
000d2ee8: MOVI            V1.16B, #0xA4
000d2eec: MOVI            V2.16B, #2
000d2ef0: STRB            W9, [X13,#(byte_F79F0 - 0xF79E0)]
000d2ef4: MVN             V3.16B, V0.16B
000d2ef8: BSL             V1.16B, V3.16B, V0.16B
000d2efc: EOR             V0.16B, V1.16B, V2.16B
000d2f00: MOV             W9, #0x2E ; '.'
000d2f04: STR             Q0, [X11]
000d2f08: LDR             Q0, [X22]
000d2f0c: EOR             W8, W8, W9
000d2f10: LDR             D3, [X22,#(qword_F7A30 - 0xF7A20)]
000d2f14: STRB            W8, [X11,#(byte_F7A10 - 0xF7A00)]
000d2f18: LDR             W8, [SP,#0xD0+var_70]
000d2f1c: MOVI            V1.16B, #0xEC
000d2f20: MVN             V4.16B, V0.16B
000d2f24: LDP             W28, W30, [SP,#0xD0+var_A8]
000d2f28: MOVI            V2.8B, #0xE8
000d2f2c: BSL             V1.16B, V4.16B, V0.16B
000d2f30: MVN             V4.8B, V3.8B
000d2f34: MOVI            V0.8B, #4
000d2f38: BSL             V2.8B, V4.8B, V3.8B
000d2f3c: EOR             W8, W8, #0x1C
000d2f40: STR             Q1, [X22]
000d2f44: EOR             V1.8B, V2.8B, V0.8B
000d2f48: LDR             D2, [X7]
000d2f4c: STRB            W8, [X7,#(byte_F7A53 - 0xF7A48)]
000d2f50: ADRP            X8, #qword_F7A98@PAGE
000d2f54: LDR             D3, [X8,#qword_F7A98@PAGEOFF]
000d2f58: ORR             W30, W30, W28
000d2f5c: STR             W30, [SP,#0xD0+var_6C]
000d2f60: LDP             W30, W28, [SP,#0xD0+var_B4]
000d2f64: STR             D1, [X22,#(qword_F7A30 - 0xF7A20)]
000d2f68: MOVI            V1.8B, #0xAA
000d2f6c: MVN             V4.8B, V2.8B
000d2f70: BSL             V1.8B, V4.8B, V2.8B
000d2f74: MOVI            V2.8B, #0x52 ; 'R'
000d2f78: MVN             V4.8B, V3.8B
000d2f7c: BSL             V2.8B, V4.8B, V3.8B
000d2f80: MOVI            V3.8B, #0x7D ; '}'
000d2f84: ORR             W30, W28, W30
000d2f88: EOR             V1.8B, V1.8B, V3.8B
000d2f8c: ADRP            X9, #(aM+4)@PAGE; ""
000d2f90: STR             W30, [SP,#0xD0+var_74]
000d2f94: LDP             W30, W28, [SP,#0xD0+var_BC]
000d2f98: STR             D1, [X7]
000d2f9c: LDR             D1, [X9,#(aM+4)@PAGEOFF]; ""
000d2fa0: MOVI            V3.8B, #0xDA
000d2fa4: EOR             V2.8B, V2.8B, V3.8B
000d2fa8: ORR             W30, W28, W30
000d2fac: STR             D2, [X8,#qword_F7A98@PAGEOFF]
000d2fb0: MOVI            V2.8B, #0x63 ; 'c'
000d2fb4: MVN             V3.8B, V1.8B
000d2fb8: STR             W30, [SP,#0xD0+var_78]
000d2fbc: STRB            W24, [X6,#(byte_F7A74 - 0xF7A60)]
000d2fc0: ADRP            X24, #qword_F7AD0@PAGE
000d2fc4: BSL             V2.8B, V3.8B, V1.8B
000d2fc8: MOVI            V1.8B, #0x15
000d2fcc: ADD             X24, X24, #qword_F7AD0@PAGEOFF
000d2fd0: LDP             W17, W16, [SP,#0xD0+var_78]
000d2fd4: EOR             V1.8B, V2.8B, V1.8B
000d2fd8: STR             D1, [X9,#(aM+4)@PAGEOFF]; ""
000d2fdc: LDR             D1, [X24]
000d2fe0: LDRB            W15, [X14,#(byte_F7AF0 - 0xF7AE8)]
000d2fe4: STRB            W16, [X24,#(byte_F7AD9 - 0xF7AD0)]
000d2fe8: MOV             W16, #0xA0
000d2fec: EOR             W16, W17, W16
000d2ff0: LDRB            W17, [X14,#(byte_F7AF1 - 0xF7AE8)]
000d2ff4: MOVI            V2.8B, #0xA
000d2ff8: MVN             V3.8B, V1.8B
000d2ffc: STRB            W23, [X6,#(byte_F7A73 - 0xF7A60)]
000d3000: ADRP            X23, #qword_F7AF8@PAGE
000d3004: BSL             V2.8B, V3.8B, V1.8B
000d3008: MOVI            V1.8B, #0x10
000d300c: MVN             W0, W15
000d3010: ADD             X23, X23, #qword_F7AF8@PAGEOFF
000d3014: EOR             V1.8B, V2.8B, V1.8B
000d3018: AND             W15, W15, #0xAAAAAAAA
000d301c: AND             W0, W0, #0x55555555
000d3020: STR             D1, [X24]
000d3024: LDR             D1, [X23]
000d3028: ORR             W15, W0, W15
000d302c: MVN             W0, W17
000d3030: LDRB            W1, [X14,#(byte_F7AF2 - 0xF7AE8)]
000d3034: AND             W17, W17, #6
000d3038: AND             W0, W0, #0xFFFFFFF9
000d303c: ORR             W21, W25, W21
000d3040: ORR             W17, W0, W17
000d3044: LDRB            W0, [X14,#(byte_F7AF3 - 0xF7AE8)]
000d3048: EOR             W10, W21, W10
000d304c: ADRP            X21, #xmmword_F7B10@PAGE
000d3050: MVN             V2.8B, V1.8B
000d3054: STRB            W2, [X7,#(byte_F7A52 - 0xF7A48)]
000d3058: MVN             W2, W1
000d305c: ADD             X21, X21, #xmmword_F7B10@PAGEOFF
000d3060: BSL             V0.8B, V2.8B, V1.8B
000d3064: AND             W1, W1, #6
000d3068: AND             W2, W2, #0xFFFFFFF9
000d306c: STR             D0, [X23]
000d3070: LDR             Q0, [X21]
000d3074: LDP             W30, W28, [SP,#0xD0+var_C4]
000d3078: ORR             W1, W2, W1
000d307c: MVN             W2, W0
000d3080: AND             W0, W0, #6
000d3084: AND             W2, W2, #0xFFFFFFF9
000d3088: LDR             W8, [SP,#0xD0+var_6C]
000d308c: ORR             W0, W2, W0
000d3090: MOV             W2, #0xAC
000d3094: EOR             W15, W15, W2
000d3098: MOVI            V1.16B, #0x15
000d309c: MVN             V3.16B, V0.16B
000d30a0: ORR             W30, W28, W30
000d30a4: STRB            W15, [X14,#(byte_F7AF0 - 0xF7AE8)]
000d30a8: LDRB            W15, [X23,#(byte_F7B01 - 0xF7AF8)]
000d30ac: MOVI            V2.16B, #0x18
000d30b0: BSL             V1.16B, V3.16B, V0.16B
000d30b4: STR             W30, [SP,#0xD0+var_68]
000d30b8: LDR             W28, [SP,#0xD0+var_C8]
000d30bc: LDR             W30, [SP,#0xD0+var_D0]
000d30c0: EOR             W8, W8, #0xFFFFFFDF
000d30c4: EOR             V0.16B, V1.16B, V2.16B
000d30c8: STRB            W8, [X24,#(byte_F7AD8 - 0xF7AD0)]
000d30cc: LDR             W8, [SP,#0xD0+var_68]
000d30d0: STR             Q0, [X21]
000d30d4: LDR             D0, [X20]
000d30d8: STRB            W17, [X14,#(byte_F7AF1 - 0xF7AE8)]
000d30dc: STRB            W1, [X14,#(byte_F7AF2 - 0xF7AE8)]
000d30e0: STRB            W0, [X14,#(byte_F7AF3 - 0xF7AE8)]
000d30e4: MVN             W14, W15
000d30e8: LDRB            W17, [X23,#(byte_F7B02 - 0xF7AF8)]
000d30ec: ORR             W30, W28, W30
000d30f0: AND             W15, W15, #0xFFFFFFFB
000d30f4: AND             W14, W14, #4
000d30f8: STR             W30, [SP,#0xD0+var_64]
000d30fc: ORR             W14, W14, W15
000d3100: LDRB            W15, [X23,#(byte_F7B03 - 0xF7AF8)]
000d3104: LDRB            W1, [X20,#(byte_F7B32 - 0xF7B28)]
000d3108: EOR             W8, W8, #0xE0
000d310c: MOVI            V1.8B, #0x5D ; ']'
000d3110: MVN             V3.8B, V0.8B
000d3114: STRB            W8, [X24,#(byte_F7ADB - 0xF7AD0)]
000d3118: LDR             W8, [SP,#0xD0+var_64]
000d311c: MOVI            V2.8B, #0x90
000d3120: BSL             V1.8B, V3.8B, V0.8B
000d3124: ADRP            X9, #xmmword_F7B90@PAGE
000d3128: LDR             W28, [SP,#0xD0+var_CC]
000d312c: MVN             W0, W17
000d3130: EOR             V0.8B, V1.8B, V2.8B
000d3134: ADD             X9, X9, #xmmword_F7B90@PAGEOFF
000d3138: LDR             W25, [SP,#0xD0+var_AC]
000d313c: AND             W17, W17, #0xFFFFFFFB
000d3140: AND             W0, W0, #4
000d3144: STR             D0, [X20]
000d3148: LDR             Q0, [X9]
000d314c: ORR             W17, W0, W17
000d3150: MVN             W0, W15
000d3154: MVN             W6, W1
000d3158: LDR             D2, [X9,#(qword_F7BA0 - 0xF7B90)]
000d315c: AND             W15, W15, #0xFFFFFFFB
000d3160: AND             W0, W0, #4
000d3164: AND             W1, W1, #0xDDDDDDDD
000d3168: AND             W6, W6, #0x22222222
000d316c: EOR             W8, W8, #0x11111111
000d3170: ORR             W29, W28, W29
000d3174: ORR             W15, W0, W15
000d3178: MOV             W0, #0x69 ; 'i'
000d317c: MOV             W2, #0x16
000d3180: ORR             W1, W6, W1
000d3184: MOV             W6, #0xB6
000d3188: STRB            W8, [X23,#(byte_F7B00 - 0xF7AF8)]
000d318c: EOR             W8, W4, #0x55555555
000d3190: ORR             W25, W25, W27
000d3194: EOR             W0, W29, W0
000d3198: EOR             W2, W19, W2
000d319c: EOR             W3, W3, W6
000d31a0: STRB            W8, [X20,#(byte_F7B31 - 0xF7B28)]
000d31a4: EOR             W8, W1, #0xFFFFFFEF
000d31a8: MOVI            V1.16B, #0xD
000d31ac: MVN             V3.16B, V0.16B
000d31b0: STRB            W25, [X21,#(byte_F7B21 - 0xF7B10)]
000d31b4: STRB            W16, [X24,#(byte_F7ADA - 0xF7AD0)]
000d31b8: STRB            W14, [X23,#(byte_F7B01 - 0xF7AF8)]
000d31bc: STRB            W17, [X23,#(byte_F7B02 - 0xF7AF8)]
000d31c0: STRB            W15, [X23,#(byte_F7B03 - 0xF7AF8)]
000d31c4: STRB            W0, [X23,#(byte_F7B04 - 0xF7AF8)]
000d31c8: STRB            W10, [X21,#(byte_F7B20 - 0xF7B10)]
000d31cc: STRB            W2, [X20,#(byte_F7B30 - 0xF7B28)]
000d31d0: STRB            W3, [X20,#(byte_F7B34 - 0xF7B28)]
000d31d4: STRB            W8, [X20,#(byte_F7B32 - 0xF7B28)]
000d31d8: BSL             V1.16B, V3.16B, V0.16B
000d31dc: MOVI            V0.8B, #0x8A
000d31e0: MVN             V3.8B, V2.8B
000d31e4: LDP             X29, X30, [SP,#0xD0+var_10]
000d31e8: LDP             X20, X19, [SP,#0xD0+var_20]
000d31ec: LDP             X22, X21, [SP,#0xD0+var_30]
000d31f0: LDP             X24, X23, [SP,#0xD0+var_40]
000d31f4: LDP             X26, X25, [SP,#0xD0+var_50]
000d31f8: LDP             X28, X27, [SP,#0xD0+var_60]
000d31fc: BSL             V0.8B, V3.8B, V2.8B
000d3200: MOVI            V2.16B, #0x87
000d3204: EOR             W8, W12, #0x1E
000d3208: EOR             V1.16B, V1.16B, V2.16B
000d320c: STRB            W8, [X9,#(byte_F7BA8 - 0xF7B90)]
000d3210: STR             Q1, [X9]
000d3214: STR             D0, [X9,#(qword_F7BA0 - 0xF7B90)]
000d3218: ADD             SP, SP, #0xD0
000d321c: RET