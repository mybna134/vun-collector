0002a8d4: STP             D9, D8, [SP,#-0x10+var_60]!
0002a8d8: STP             X28, X27, [SP,#0x60+var_50]
0002a8dc: STP             X26, X25, [SP,#0x60+var_40]
0002a8e0: STP             X24, X23, [SP,#0x60+var_30]
0002a8e4: STP             X22, X21, [SP,#0x60+var_20]
0002a8e8: STP             X20, X19, [SP,#0x60+var_10]
0002a8ec: STP             X29, X30, [SP,#0x60+var_s0]
0002a8f0: ADD             X29, SP, #0x60
0002a8f4: SUB             SP, SP, #0x1D0
0002a8f8: MRS             X8, TPIDR_EL0
0002a8fc: STR             X8, [SP,#0x230+var_228]
0002a900: LDR             X8, [X8,#0x28]
0002a904: ADD             X20, SP, #0x230+name
0002a908: MOV             X19, X0
0002a90c: MOV             W23, #0xCC3D
0002a910: STUR            X8, [X29,#var_70]
0002a914: STR             X20, [SP,#0x230+var_220]
0002a918: LDR             X8, [SP,#0x230+var_220]
0002a91c: MOV             W24, #0x39DD
0002a920: ADD             X0, SP, #0x230+name; name
0002a924: MOVK            W23, #0xBDB8,LSL#16
0002a928: MOVK            W24, #0x5C94,LSL#16
0002a92c: BL              .uname
0002a930: ADD             X8, SP, #0x230+var_1FC
0002a934: ADD             X9, SP, #0x230+var_200
0002a938: STP             X8, X9, [SP,#0x230+var_218]
0002a93c: LDR             X8, [SP,#0x230+var_218]
0002a940: LDR             X8, [SP,#0x230+var_210]
0002a944: ADRP            X1, #byte_F5A74@PAGE
0002a948: ADD             X0, X20, #0x82; s
0002a94c: ADD             X1, X1, #byte_F5A74@PAGEOFF; format
0002a950: ADD             X2, SP, #0x230+var_1FC
0002a954: ADD             X3, SP, #0x230+var_200
0002a958: BL              .sscanf
0002a95c: MOV             W26, #0xFC82
0002a960: MOV             W27, #0x2543
0002a964: MOV             W28, #0xF549
0002a968: MOV             W21, #0xAD8B
0002a96c: MOV             W22, #0x39DC
0002a970: MOV             W25, #0xFC83
0002a974: MOV             W20, #0xFB9A
0002a978: MOV             W9, #0x1214
0002a97c: MOVK            W26, #0xED4D,LSL#16
0002a980: MOVK            W27, #0xD8D0,LSL#16
0002a984: MOVK            W28, #0x8F69,LSL#16
0002a988: FMOV            D8, #-1.0
0002a98c: MOVK            W21, #0xE633,LSL#16
0002a990: FMOV            D9, #-2.0
0002a994: MOVK            W22, #0x5C94,LSL#16
0002a998: MOVK            W25, #0xED4D,LSL#16
0002a99c: MOVK            W20, #0x62EE,LSL#16
0002a9a0: MOVK            W9, #0x3D07,LSL#16
0002a9a4: STR             W0, [SP,#0x230+var_208]
0002a9a8: B               loc_2A9B8
0002a9ac: BL              sub_BAB9C
0002a9b0: MOV             W9, #0x5C9439DD
0002a9b8: MOV             W8, W9
0002a9bc: CMP             W9, W26
0002a9c0: B.LE            loc_2A9F8
0002a9c4: CMP             W8, W22
0002a9c8: B.GT            loc_2AA34
0002a9cc: CMP             W8, W25
0002a9d0: B.EQ            loc_2AAD8
0002a9d4: MOV             W9, #0x3D071214
0002a9dc: CMP             W8, W9
0002a9e0: MOV             W9, W8
0002a9e4: B.NE            loc_2A9B8
0002a9e8: LDR             W8, [SP,#0x230+var_208]
0002a9ec: CMP             W8, #2
0002a9f0: CSEL            W9, W25, W21, EQ
0002a9f4: B               loc_2A9B8
0002a9f8: CMP             W8, W27
0002a9fc: B.GT            loc_2AA78
0002aa00: CMP             W8, W28
0002aa04: B.EQ            loc_2AA98
0002aa08: CMP             W8, W23
0002aa0c: MOV             W9, W8
0002aa10: B.NE            loc_2A9B8
0002aa14: ADRP            X1, #byte_F5A7C@PAGE
0002aa18: MOV             X0, X19
0002aa1c: ADD             X1, X1, #byte_F5A7C@PAGEOFF
0002aa20: MOV             V0.16B, V8.16B
0002aa24: BL              sub_BAB9C
0002aa28: MOV             W9, #0xD8D02544
0002aa30: B               loc_2A9B8
0002aa34: MOV             W9, #0x2544
0002aa38: CMP             W8, W24
0002aa3c: MOVK            W9, #0xD8D0,LSL#16
0002aa40: B.EQ            loc_2A9B8
0002aa44: CMP             W8, W20
0002aa48: MOV             W9, W8
0002aa4c: B.NE            loc_2A9B8
0002aa50: LDR             W8, [SP,#0x230+var_204]
0002aa54: LDR             W9, [SP,#0x230+var_200]
0002aa58: CMP             W8, #3
0002aa5c: CSET            W8, EQ
0002aa60: CMP             W9, #5
0002aa64: CSET            W9, LT
0002aa68: EOR             W9, W8, W9
0002aa6c: BICS            WZR, W8, W9
0002aa70: CSEL            W9, W23, W28, NE
0002aa74: B               loc_2A9B8
0002aa78: CMP             W8, W21
0002aa7c: B.EQ            loc_2AAC4
0002aa80: MOV             W9, #0xD8D02544
0002aa88: CMP             W8, W9
0002aa8c: MOV             W9, W8
0002aa90: B.NE            loc_2A9B8
0002aa94: B               loc_2AAF0
0002aa98: MOV             W0, #0x27 ; '''; option
0002aa9c: MOV             W1, WZR
0002aaa0: MOV             W2, WZR
0002aaa4: MOV             W3, WZR
0002aaa8: MOV             W4, WZR
0002aaac: BL              .prctl
0002aab0: ADRP            X1, #byte_F5A7C@PAGE
0002aab4: SCVTF           D0, W0
0002aab8: MOV             X0, X19
0002aabc: ADD             X1, X1, #byte_F5A7C@PAGEOFF
0002aac0: B               loc_2A9AC
0002aac4: ADRP            X1, #byte_F5A7C@PAGE
0002aac8: MOV             X0, X19
0002aacc: ADD             X1, X1, #byte_F5A7C@PAGEOFF
0002aad0: MOV             V0.16B, V9.16B
0002aad4: B               loc_2A9AC
0002aad8: LDR             W8, [SP,#0x230+var_1FC]
0002aadc: STR             W8, [SP,#0x230+var_204]
0002aae0: LDR             W8, [SP,#0x230+var_204]
0002aae4: CMP             W8, #3
0002aae8: CSEL            W9, W23, W20, LT
0002aaec: B               loc_2A9B8
0002aaf0: LDR             X8, [SP,#0x230+var_210]
0002aaf4: LDR             X8, [SP,#0x230+var_218]
0002aaf8: LDR             X8, [SP,#0x230+var_220]
0002aafc: LDR             X8, [SP,#0x230+var_228]
0002ab00: LDR             X8, [X8,#0x28]
0002ab04: LDUR            X9, [X29,#var_70]
0002ab08: CMP             X8, X9
0002ab0c: B.NE            loc_2AB34
0002ab10: ADD             SP, SP, #0x1D0
0002ab14: LDP             X29, X30, [SP,#0x60+var_s0]
0002ab18: LDP             X20, X19, [SP,#0x60+var_10]
0002ab1c: LDP             X22, X21, [SP,#0x60+var_20]
0002ab20: LDP             X24, X23, [SP,#0x60+var_30]
0002ab24: LDP             X26, X25, [SP,#0x60+var_40]
0002ab28: LDP             X28, X27, [SP,#0x60+var_50]
0002ab2c: LDP             D9, D8, [SP+0x60+var_60],#0x70
0002ab30: RET
0002ab34: BL              .__stack_chk_fail