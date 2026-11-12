0004b03c: SUB             SP, SP, #0xB0
0004b040: STP             X28, X27, [SP,#0xA0+var_50]
0004b044: STP             X26, X25, [SP,#0xA0+var_40]
0004b048: STP             X24, X23, [SP,#0xA0+var_30]
0004b04c: STP             X22, X21, [SP,#0xA0+var_20]
0004b050: STP             X20, X19, [SP,#0xA0+var_10]
0004b054: STP             X29, X30, [SP,#0xA0+var_s0]
0004b058: ADD             X29, SP, #0xA0
0004b05c: CMP             X0, #0
0004b060: MOV             W21, #0x7E61
0004b064: MOV             W23, #0xE24E
0004b068: MOV             W28, #0x2E90
0004b06c: CSET            W8, EQ
0004b070: CMP             X1, #0
0004b074: MOV             W9, #0xF058
0004b078: MOV             X20, X0
0004b07c: MOVK            W21, #0x2A,LSL#16 ; '*'
0004b080: MOVK            W23, #0xE6BA,LSL#16
0004b084: MOVK            W28, #0x5082,LSL#16
0004b088: STRB            W8, [SP,#0xA0+var_8A]
0004b08c: CSET            W8, EQ
0004b090: MOVK            W9, #0x719B,LSL#16
0004b094: STR             X1, [SP,#0xA0+var_98]
0004b098: STRB            W8, [SP,#0xA0+var_89]
0004b09c: B               loc_4B0B0
0004b0a0: MOV             W0, W22
0004b0a4: MOV             W1, W19
0004b0a8: MOV             W2, W24
0004b0ac: MOV             W3, W27
0004b0b0: MOV             W8, W9
0004b0b4: CMP             W9, W21
0004b0b8: MOV             W27, W3
0004b0bc: MOV             W24, W2
0004b0c0: MOV             W19, W1
0004b0c4: MOV             W22, W0
0004b0c8: B.GT            loc_4B14C
0004b0cc: CMP             W8, W23
0004b0d0: B.LE            loc_4B1F8
0004b0d4: MOV             W9, #0xF5DFBE04
0004b0dc: CMP             W8, W9
0004b0e0: B.GT            loc_4B2F8
0004b0e4: MOV             W9, #0xE6BAE24F
0004b0ec: CMP             W8, W9
0004b0f0: B.EQ            loc_4B4A0
0004b0f4: MOV             W9, #0xE7C4D543
0004b0fc: CMP             W8, W9
0004b100: B.EQ            loc_4B4E4
0004b104: MOV             W9, #0xF10951B1
0004b10c: CMP             W8, W9
0004b110: MOV             W0, W22
0004b114: MOV             W1, W19
0004b118: MOV             W2, W24
0004b11c: MOV             W3, W27
0004b120: MOV             W9, W8
0004b124: B.NE            loc_4B0B0
0004b128: MOV             X0, X20
0004b12c: BL              sub_B6D0
0004b130: MOV             W9, #0xA5D6
0004b134: MOV             W3, WZR
0004b138: MOV             W0, W22
0004b13c: MOV             W1, W19
0004b140: MOV             W2, W24
0004b144: MOVK            W9, #0x3E79,LSL#16
0004b148: B               loc_4B0B0
0004b14c: CMP             W8, W28
0004b150: B.GT            loc_4B258
0004b154: MOV             W9, #0x3E79A5D5
0004b15c: CMP             W8, W9
0004b160: B.LE            loc_4B35C
0004b164: MOV             W9, #0x3E79A5D6
0004b16c: CMP             W8, W9
0004b170: MOV             W9, #0x15B0
0004b174: MOV             W0, W22
0004b178: MOV             W1, W19
0004b17c: MOV             W2, W27
0004b180: MOV             W3, W27
0004b184: MOVK            W9, #0x766C,LSL#16
0004b188: B.EQ            loc_4B0B0
0004b18c: MOV             W9, #0x45E4A464
0004b194: CMP             W8, W9
0004b198: B.EQ            loc_4B528
0004b19c: MOV             W9, #0x4B14E282
0004b1a4: CMP             W8, W9
0004b1a8: MOV             W0, W22
0004b1ac: MOV             W1, W19
0004b1b0: MOV             W2, W24
0004b1b4: MOV             W3, W27
0004b1b8: MOV             W9, W8
0004b1bc: B.NE            loc_4B0B0
0004b1c0: LDR             X8, [X20]
0004b1c4: ADRP            X1, #xmmword_F6F70@PAGE
0004b1c8: MOV             X0, X20
0004b1cc: ADD             X1, X1, #xmmword_F6F70@PAGEOFF
0004b1d0: LDR             X8, [X8,#0x30]
0004b1d4: BLR             X8
0004b1d8: STR             X0, [SP,#0xA0+var_70]
0004b1dc: LDR             X8, [SP,#0xA0+var_70]
0004b1e0: MOV             W9, #0xF7CAC916
0004b1e8: CMP             X8, #0
0004b1ec: MOV             W8, #0xE6BAE24F
0004b1f4: B               loc_4B638
0004b1f8: MOV             W9, #0x9B78789F
0004b200: CMP             W8, W9
0004b204: B.LE            loc_4B3A4
0004b208: MOV             W9, #0x9B7878A0
0004b210: CMP             W8, W9
0004b214: B.EQ            loc_4B54C
0004b218: MOV             W9, #0xE1F01C8D
0004b220: CMP             W8, W9
0004b224: B.EQ            loc_4B574
0004b228: MOV             W9, #0xE5E544E6
0004b230: CMP             W8, W9
0004b234: MOV             W0, W22
0004b238: MOV             W1, W19
0004b23c: MOV             W2, W24
0004b240: MOV             W3, W27
0004b244: MOV             W9, W8
0004b248: B.NE            loc_4B0B0
0004b24c: MOV             W0, W22
0004b250: MOV             W26, W19
0004b254: B               loc_4B55C
0004b258: MOV             W9, #0x719BF057
0004b260: CMP             W8, W9
0004b264: B.LE            loc_4B434
0004b268: MOV             W9, #0x766C15B0
0004b270: CMP             W8, W9
0004b274: MOV             W9, #0x44E6
0004b278: MOV             W0, W22
0004b27c: MOV             W1, W24
0004b280: MOV             W2, W24
0004b284: MOV             W3, W27
0004b288: MOVK            W9, #0xE5E5,LSL#16
0004b28c: B.EQ            loc_4B0B0
0004b290: MOV             W9, #0x7634DFDC
0004b298: CMP             W8, W9
0004b29c: B.EQ            loc_4B5C4
0004b2a0: MOV             W9, #0x719BF058
0004b2a8: CMP             W8, W9
0004b2ac: MOV             W0, W22
0004b2b0: MOV             W1, W19
0004b2b4: MOV             W2, W24
0004b2b8: MOV             W3, W27
0004b2bc: MOV             W9, W8
0004b2c0: B.NE            loc_4B0B0
0004b2c4: LDRB            W8, [SP,#0xA0+var_8A]
0004b2c8: LDRB            W9, [SP,#0xA0+var_89]
0004b2cc: MVN             W10, W8
0004b2d0: EOR             W8, W8, W9
0004b2d4: ORN             W9, W10, W9
0004b2d8: ORN             W8, W8, W9
0004b2dc: TST             W8, #1
0004b2e0: MOV             W8, #0x7FBF
0004b2e4: MOV             W9, #0x4BA6
0004b2e8: MOVK            W8, #0x3C41,LSL#16
0004b2ec: MOVK            W9, #0x6E1E,LSL#16
0004b2f0: CSEL            W9, W8, W9, NE
0004b2f4: B               loc_4B0A0
0004b2f8: MOV             W9, #0xF5DFBE05
0004b300: CMP             W8, W9
0004b304: MOV             W9, #0x6C5F
0004b308: MOV             W0, W26
0004b30c: MOV             W1, W19
0004b310: MOV             W2, W24
0004b314: MOV             W3, W27
0004b318: MOVK            W9, #0xF98F,LSL#16
0004b31c: B.EQ            loc_4B0B0
0004b320: MOV             W9, #0xF7CAC916
0004b328: CMP             W8, W9
0004b32c: B.EQ            loc_4B5E8
0004b330: MOV             W9, #0xF98F6C5F
0004b338: CMP             W8, W9
0004b33c: MOV             W0, W22
0004b340: MOV             W1, W19
0004b344: MOV             W2, W24
0004b348: MOV             W3, W27
0004b34c: MOV             W9, W8
0004b350: B.NE            loc_4B0B0
0004b354: STR             W22, [SP,#0xA0+var_90]
0004b358: B               loc_4B644
0004b35c: MOV             W9, #0x482273C
0004b364: CMP             W8, W9
0004b368: B.EQ            loc_4B60C
0004b36c: MOV             W9, #0x3C417FBF
0004b374: CMP             W8, W9
0004b378: B.EQ            loc_4B640
0004b37c: MOV             W9, #0x2A7E62
0004b384: CMP             W8, W9
0004b388: MOV             W0, W22
0004b38c: MOV             W1, W19
0004b390: MOV             W2, W24
0004b394: MOV             W3, W27
0004b398: MOV             W9, W8
0004b39c: B.NE            loc_4B0B0
0004b3a0: B               loc_4B6B8
0004b3a4: MOV             W9, #0x835B9376
0004b3ac: CMP             W8, W9
0004b3b0: MOV             W9, #0xA5D6
0004b3b4: MOV             W0, W22
0004b3b8: MOV             W1, W19
0004b3bc: MOV             W2, W24
0004b3c0: MOV             W3, W25
0004b3c4: MOVK            W9, #0x3E79,LSL#16
0004b3c8: B.EQ            loc_4B0B0
0004b3cc: MOV             W9, #0x84C8F6C4
0004b3d4: CMP             W8, W9
0004b3d8: MOV             W0, W22
0004b3dc: MOV             W1, W19
0004b3e0: MOV             W2, W24
0004b3e4: MOV             W3, W27
0004b3e8: MOV             W9, W8
0004b3ec: B.NE            loc_4B0B0
0004b3f0: LDR             X1, [SP,#0xA0+var_88]
0004b3f4: LDR             X8, [X20]
0004b3f8: ADRP            X2, #xmmword_F6F20@PAGE
0004b3fc: ADRP            X3, #xmmword_F6F40@PAGE
0004b400: MOV             X0, X20
0004b404: LDR             X8, [X8,#0x108]
0004b408: ADD             X2, X2, #xmmword_F6F20@PAGEOFF
0004b40c: ADD             X3, X3, #xmmword_F6F40@PAGEOFF
0004b410: BLR             X8
0004b414: STR             X0, [SP,#0xA0+var_80]
0004b418: LDR             X8, [SP,#0xA0+var_80]
0004b41c: MOV             W9, #0x9B7878A0
0004b424: CMP             X8, #0
0004b428: MOV             W8, #0x482273C
0004b430: B               loc_4B638
0004b434: MOV             W9, #0x50822E91
0004b43c: CMP             W8, W9
0004b440: B.EQ            loc_4B660
0004b444: MOV             W9, #0x6E1E4BA6
0004b44c: CMP             W8, W9
0004b450: MOV             W0, W22
0004b454: MOV             W1, W19
0004b458: MOV             W2, W24
0004b45c: MOV             W3, W27
0004b460: MOV             W9, W8
0004b464: B.NE            loc_4B0B0
0004b468: LDR             X8, [X20]
0004b46c: ADRP            X1, #xmmword_F6F00@PAGE
0004b470: MOV             X0, X20
0004b474: ADD             X1, X1, #xmmword_F6F00@PAGEOFF
0004b478: LDR             X8, [X8,#0x30]
0004b47c: BLR             X8
0004b480: STR             X0, [SP,#0xA0+var_88]
0004b484: LDR             X8, [SP,#0xA0+var_88]
0004b488: MOV             W9, #0x45E4A464
0004b490: CMP             X8, #0
0004b494: MOV             W8, #0x84C8F6C4
0004b49c: B               loc_4B638
0004b4a0: LDR             X1, [SP,#0xA0+var_70]
0004b4a4: LDR             X8, [X20]
0004b4a8: ADRP            X2, #qword_F6F98@PAGE
0004b4ac: ADRP            X3, #xmmword_F6FB0@PAGE
0004b4b0: MOV             X0, X20
0004b4b4: LDR             X8, [X8,#0x108]
0004b4b8: ADD             X2, X2, #qword_F6F98@PAGEOFF
0004b4bc: ADD             X3, X3, #xmmword_F6FB0@PAGEOFF
0004b4c0: BLR             X8
0004b4c4: STR             X0, [SP,#0xA0+var_68]
0004b4c8: LDR             X8, [SP,#0xA0+var_68]
0004b4cc: MOV             W9, #0xF10951B1
0004b4d4: CMP             X8, #0
0004b4d8: MOV             W8, #0x50822E91
0004b4e0: B               loc_4B638
0004b4e4: LDR             X1, [SP,#0xA0+var_60]
0004b4e8: LDR             X8, [X20]
0004b4ec: MOV             X0, X20
0004b4f0: LDR             X8, [X8,#0xB8]
0004b4f4: BLR             X8
0004b4f8: LDR             X1, [SP,#0xA0+var_78]
0004b4fc: LDR             X8, [X20]
0004b500: MOV             X0, X20
0004b504: LDR             X8, [X8,#0xB8]
0004b508: BLR             X8
0004b50c: LDR             X1, [SP,#0xA0+var_58]
0004b510: LDR             X8, [X20]
0004b514: MOV             X0, X20
0004b518: LDR             X8, [X8,#0xB8]
0004b51c: BLR             X8
0004b520: MOV             W25, #1
0004b524: B               loc_4B5A8
0004b528: MOV             X0, X20
0004b52c: BL              sub_B6D0
0004b530: MOV             W9, #0x6C5F
0004b534: MOV             W0, WZR
0004b538: MOV             W1, W19
0004b53c: MOV             W2, W24
0004b540: MOV             W3, W27
0004b544: MOVK            W9, #0xF98F,LSL#16
0004b548: B               loc_4B0B0
0004b54c: MOV             X0, X20
0004b550: BL              sub_B6D0
0004b554: MOV             W26, WZR
0004b558: MOV             W0, W22
0004b55c: MOV             W9, #0xBE05
0004b560: MOV             W1, W19
0004b564: MOV             W2, W24
0004b568: MOV             W3, W27
0004b56c: MOVK            W9, #0xF5DF,LSL#16
0004b570: B               loc_4B0B0
0004b574: MOV             X0, X20
0004b578: BL              sub_B6D0
0004b57c: LDR             X1, [SP,#0xA0+var_60]
0004b580: LDR             X8, [X20]
0004b584: MOV             X0, X20
0004b588: LDR             X8, [X8,#0xB8]
0004b58c: BLR             X8
0004b590: LDR             X1, [SP,#0xA0+var_78]
0004b594: LDR             X8, [X20]
0004b598: MOV             X0, X20
0004b59c: LDR             X8, [X8,#0xB8]
0004b5a0: BLR             X8
0004b5a4: MOV             W25, WZR
0004b5a8: MOV             W9, #0x9376
0004b5ac: MOV             W0, W22
0004b5b0: MOV             W1, W19
0004b5b4: MOV             W2, W24
0004b5b8: MOV             W3, W27
0004b5bc: MOVK            W9, #0x835B,LSL#16
0004b5c0: B               loc_4B0B0
0004b5c4: MOV             X0, X20
0004b5c8: BL              sub_B6D0
0004b5cc: MOV             W9, #0x44E6
0004b5d0: MOV             W1, WZR
0004b5d4: MOV             W0, W22
0004b5d8: MOV             W2, W24
0004b5dc: MOV             W3, W27
0004b5e0: MOVK            W9, #0xE5E5,LSL#16
0004b5e4: B               loc_4B0B0
0004b5e8: MOV             X0, X20
0004b5ec: BL              sub_B6D0
0004b5f0: MOV             W9, #0x15B0
0004b5f4: MOV             W2, WZR
0004b5f8: MOV             W0, W22
0004b5fc: MOV             W1, W19
0004b600: MOV             W3, W27
0004b604: MOVK            W9, #0x766C,LSL#16
0004b608: B               loc_4B0B0
0004b60c: LDR             X2, [SP,#0xA0+var_80]
0004b610: LDR             X1, [SP,#0xA0+var_98]
0004b614: MOV             X0, X20
0004b618: BL              sub_BF48
0004b61c: STR             X0, [SP,#0xA0+var_78]
0004b620: LDR             X8, [SP,#0xA0+var_78]
0004b624: MOV             W9, #0x7634DFDC
0004b62c: CMP             X8, #0
0004b630: MOV             W8, #0x4B14E282
0004b638: CSEL            W9, W9, W8, EQ
0004b63c: B               loc_4B0A0
0004b640: STR             WZR, [SP,#0xA0+var_90]
0004b644: MOV             W9, #0x7E62
0004b648: MOV             W0, W22
0004b64c: MOV             W1, W19
0004b650: MOV             W2, W24
0004b654: MOV             W3, W27
0004b658: MOVK            W9, #0x2A,LSL#16 ; '*'
0004b65c: B               loc_4B0B0
0004b660: LDR             X8, [X20]
0004b664: ADRP            X1, #xmmword_F6FF0@PAGE
0004b668: MOV             X0, X20
0004b66c: ADD             X1, X1, #xmmword_F6FF0@PAGEOFF
0004b670: LDR             X8, [X8,#0x538]
0004b674: BLR             X8
0004b678: STR             X0, [SP,#0xA0+var_60]
0004b67c: LDR             X1, [SP,#0xA0+var_78]
0004b680: LDR             X2, [SP,#0xA0+var_68]
0004b684: LDR             X3, [SP,#0xA0+var_60]
0004b688: MOV             X0, X20
0004b68c: MOV             W4, WZR
0004b690: BL              sub_BF48
0004b694: STR             X0, [SP,#0xA0+var_58]
0004b698: LDR             X8, [SP,#0xA0+var_58]
0004b69c: MOV             W9, #0xE7C4D543
0004b6a4: CMP             X8, #0
0004b6a8: MOV             W8, #0xE1F01C8D
0004b6b0: CSEL            W9, W8, W9, EQ
0004b6b4: B               loc_4B0A0
0004b6b8: LDR             W0, [SP,#0xA0+var_90]
0004b6bc: LDP             X29, X30, [SP,#0xA0+var_s0]
0004b6c0: LDP             X20, X19, [SP,#0xA0+var_10]
0004b6c4: LDP             X22, X21, [SP,#0xA0+var_20]
0004b6c8: LDP             X24, X23, [SP,#0xA0+var_30]
0004b6cc: LDP             X26, X25, [SP,#0xA0+var_40]
0004b6d0: LDP             X28, X27, [SP,#0xA0+var_50]
0004b6d4: ADD             SP, SP, #0xB0
0004b6d8: RET