000298b4: STP             X28, X27, [SP,#-0x10+var_50]!
000298b8: STP             X26, X25, [SP,#0x50+var_40]
000298bc: STP             X24, X23, [SP,#0x50+var_30]
000298c0: STP             X22, X21, [SP,#0x50+var_20]
000298c4: STP             X20, X19, [SP,#0x50+var_10]
000298c8: STP             X29, X30, [SP,#0x50+var_s0]
000298cc: ADD             X29, SP, #0x50
000298d0: SUB             SP, SP, #0x2F0
000298d4: MRS             X8, TPIDR_EL0
000298d8: STP             X8, X0, [SP,#0x340+var_338]
000298dc: LDR             X8, [X8,#0x28]
000298e0: ADD             X9, SP, #0x340+var_308
000298e4: ADRP            X1, #off_F1068@PAGE
000298e8: MOV             W22, #0x6689
000298ec: STUR            X8, [X29,#var_60]
000298f0: STR             X9, [SP,#0x340+dest]
000298f4: LDR             X8, [SP,#0x340+dest]
000298f8: LDR             X0, [SP,#0x340+dest]; dest
000298fc: ADD             X1, X1, #off_F1068@PAGEOFF; src
00029900: MOV             W2, #0x2A8; n
00029904: MOVK            W22, #0xBBB4,LSL#16
00029908: BL              .memcpy
0002990c: MOV             W26, #0x6688
00029910: MOV             W28, #0x1EFA
00029914: MOV             W20, #0x5196
00029918: MOV             W24, #0x33DB
0002991c: MOV             W19, #0x1EFB
00029920: MOV             W23, #0xE85C
00029924: MOV             W21, #0xD32E
00029928: MOV             X27, XZR
0002992c: MOV             W25, WZR
00029930: MOVK            W26, #0xBBB4,LSL#16
00029934: MOVK            W28, #0x9C78,LSL#16
00029938: MOVK            W20, #0x8F1F,LSL#16
0002993c: MOVK            W24, #0xFE94,LSL#16
00029940: MOVK            W19, #0x9C78,LSL#16
00029944: MOVK            W23, #0x452,LSL#16
00029948: MOVK            W21, #0x2552,LSL#16
0002994c: B               loc_2995C
00029950: LDR             X9, [SP,#0x340+var_318]
00029954: LDR             W25, [SP,#0x340+var_30C]
00029958: ADD             X27, X9, #1
0002995c: MOV             W10, #0x9A7273D2
00029964: B               loc_29970
00029968: MOV             W10, #0x452E85D
00029970: MOV             W9, W10
00029974: CMP             W10, W26
00029978: B.GT            loc_299B8
0002997c: CMP             W9, W28
00029980: B.GT            loc_299D8
00029984: CMP             W9, W20
00029988: B.EQ            loc_29A54
0002998c: MOV             W10, #0x9A7273D2
00029994: CMP             W9, W10
00029998: MOV             W10, W9
0002999c: B.NE            loc_29970
000299a0: STR             X27, [SP,#0x340+var_318]
000299a4: STR             W25, [SP,#0x340+var_310]
000299a8: LDR             X9, [SP,#0x340+var_318]
000299ac: CMP             X9, #0x55 ; 'U'
000299b0: CSEL            W10, W20, W24, CC
000299b4: B               loc_29970
000299b8: CMP             W9, W23
000299bc: B.GT            loc_29A18
000299c0: CMP             W9, W22
000299c4: B.EQ            loc_29A40
000299c8: CMP             W9, W24
000299cc: MOV             W10, W9
000299d0: B.NE            loc_29970
000299d4: B               loc_29968
000299d8: CMP             W9, W19
000299dc: B.EQ            loc_29950
000299e0: MOV             W10, #0xB426016B
000299e8: CMP             W9, W10
000299ec: MOV             W10, W9
000299f0: B.NE            loc_29970
000299f4: LDR             X8, [SP,#0x340+var_320]
000299f8: LDR             X0, [SP,#0x340+var_330]
000299fc: LDR             X1, [X8]
00029a00: BL              sub_14068
00029a04: LDR             W8, [SP,#0x340+var_310]
00029a08: MOV             W10, #0xBBB46689
00029a10: ADD             W8, W8, #1
00029a14: B               loc_29970
00029a18: MOV             W10, #0xE85D
00029a1c: CMP             W9, W21
00029a20: MOVK            W10, #0x452,LSL#16
00029a24: B.EQ            loc_29970
00029a28: MOV             W10, #0x452E85D
00029a30: CMP             W9, W10
00029a34: MOV             W10, W9
00029a38: B.NE            loc_29970
00029a3c: B               loc_29A88
00029a40: STR             W8, [SP,#0x340+var_30C]
00029a44: LDR             W9, [SP,#0x340+var_30C]
00029a48: CMP             W9, #2
00029a4c: CSEL            W10, W21, W19, GT
00029a50: B               loc_29970
00029a54: LDR             X8, [SP,#0x340+var_318]
00029a58: ADD             X9, SP, #0x340+var_308
00029a5c: ADD             X8, X9, X8,LSL#3
00029a60: STR             X8, [SP,#0x340+var_320]
00029a64: LDR             X8, [SP,#0x340+var_320]
00029a68: LDR             X0, [X8]
00029a6c: BL              sub_AFA78
00029a70: LDR             W8, [SP,#0x340+var_310]
00029a74: MOV             W9, #0x16B
00029a78: CMP             W0, #0
00029a7c: MOVK            W9, #0xB426,LSL#16
00029a80: CSEL            W10, W22, W9, EQ
00029a84: B               loc_29970
00029a88: LDR             X8, [SP,#0x340+dest]
00029a8c: LDR             X8, [SP,#0x340+var_338]
00029a90: LDR             X8, [X8,#0x28]
00029a94: LDUR            X9, [X29,#var_60]
00029a98: CMP             X8, X9
00029a9c: B.NE            loc_29AC0
00029aa0: ADD             SP, SP, #0x2F0
00029aa4: LDP             X29, X30, [SP,#0x50+var_s0]
00029aa8: LDP             X20, X19, [SP,#0x50+var_10]
00029aac: LDP             X22, X21, [SP,#0x50+var_20]
00029ab0: LDP             X24, X23, [SP,#0x50+var_30]
00029ab4: LDP             X26, X25, [SP,#0x50+var_40]
00029ab8: LDP             X28, X27, [SP+0x50+var_50],#0x60
00029abc: RET
00029ac0: BL              .__stack_chk_fail