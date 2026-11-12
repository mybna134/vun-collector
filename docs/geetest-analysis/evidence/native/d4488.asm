000d4488: SUB             SP, SP, #0x170
000d448c: STP             X28, X27, [SP,#0x160+var_50]
000d4490: STP             X26, X25, [SP,#0x160+var_40]
000d4494: STP             X24, X23, [SP,#0x160+var_30]
000d4498: STP             X22, X21, [SP,#0x160+var_20]
000d449c: STP             X20, X19, [SP,#0x160+var_10]
000d44a0: STP             X29, X30, [SP,#0x160+var_s0]
000d44a4: ADD             X29, SP, #0x160
000d44a8: MRS             X8, TPIDR_EL0
000d44ac: STR             X8, [SP,#0x160+var_160]
000d44b0: LDR             X8, [X8,#0x28]
000d44b4: MOV             W27, #0x7AB7
000d44b8: MOV             X19, X0
000d44bc: MOVK            W27, #0x7EA0,LSL#16
000d44c0: STUR            X8, [X29,#var_60]
000d44c4: STR             X1, [SP,#0x160+var_158]
000d44c8: BL              sub_14D1C
000d44cc: STR             X0, [SP,#0x160+var_150]
000d44d0: LDR             X1, [SP,#0x160+var_150]
000d44d4: ADRL            X2, qword_F7CE0
000d44dc: MOV             X0, X19
000d44e0: BL              sub_150EC
000d44e4: ADD             X8, SP, #0x160+var_BC
000d44e8: STP             X0, X8, [SP,#0x160+var_148]
000d44ec: LDR             X9, [SP,#0x160+var_140]
000d44f0: LDR             X9, [SP,#0x160+var_140]
000d44f4: MOVI            V0.2D, #0
000d44f8: ADRL            X0, xmmword_F7CF0
000d4500: STUR            Q0, [X9,#0x4C]
000d4504: STP             Q0, Q0, [X9,#0x30]
000d4508: STP             Q0, Q0, [X9,#0x10]
000d450c: STR             Q0, [X9]
000d4510: STR             X8, [SP,#0x160+s1]
000d4514: LDR             X1, [SP,#0x160+s1]
000d4518: BL              .__system_property_get
000d451c: MOV             W23, #0xB99F
000d4520: MOV             W21, #0xECB0
000d4524: MOV             W24, #0x5A34
000d4528: MOV             W20, #0xB9A0
000d452c: MOV             W22, #0xECB1
000d4530: MOV             W28, #0x4590
000d4534: MOV             W8, #0x4591
000d4538: MOVK            W23, #0x3BE0,LSL#16
000d453c: MOVK            W21, #0xF5E4,LSL#16
000d4540: MOVK            W24, #0xCA92,LSL#16
000d4544: MOVK            W20, #0x3BE0,LSL#16
000d4548: MOVK            W22, #0xF5E4,LSL#16
000d454c: MOVK            W28, #0x636E,LSL#16
000d4550: MOVK            W8, #0x636E,LSL#16
000d4554: STR             W0, [SP,#0x160+var_12C]
000d4558: B               loc_D4594
000d455c: LDR             X1, [SP,#0x160+var_120]
000d4560: LDR             X8, [X19]
000d4564: MOV             X0, X19
000d4568: LDR             X8, [X8,#0x538]
000d456c: BLR             X8
000d4570: LDR             X1, [SP,#0x160+var_150]
000d4574: MOV             X26, X0
000d4578: ADRP            X2, #qword_F7CE0@PAGE
000d457c: MOV             X0, X19
000d4580: ADD             X2, X2, #qword_F7CE0@PAGEOFF
000d4584: MOV             X3, X26
000d4588: BL              sub_15E4C
000d458c: MOV             W8, #0xDFBD2958
000d4594: CMP             W8, W23
000d4598: B.GT            loc_D45D0
000d459c: CMP             W8, W21
000d45a0: B.GT            loc_D45F4
000d45a4: CMP             W8, W24
000d45a8: B.EQ            loc_D46BC
000d45ac: MOV             W9, #0xDFBD2958
000d45b4: CMP             W8, W9
000d45b8: B.NE            loc_D4594
000d45bc: LDR             X8, [SP,#0x160+var_128]
000d45c0: MOV             W8, #0x7AB7
000d45c4: MOV             X25, X26
000d45c8: MOVK            W8, #0x7EA0,LSL#16
000d45cc: B               loc_D4594
000d45d0: CMP             W8, W28
000d45d4: B.GT            loc_D4630
000d45d8: CMP             W8, W20
000d45dc: B.EQ            loc_D464C
000d45e0: MOV             W9, #0x3C1CFE9E
000d45e8: CMP             W8, W9
000d45ec: B.NE            loc_D4594
000d45f0: B               loc_D455C
000d45f4: CMP             W8, W22
000d45f8: B.EQ            loc_D46E0
000d45fc: MOV             W9, #0x237B835B
000d4604: CMP             W8, W9
000d4608: B.NE            loc_D4594
000d460c: LDR             X0, [SP,#0x160+s1]
000d4610: BL              sub_8054
000d4614: LDR             X1, [SP,#0x160+var_148]
000d4618: MOV             X0, X19
000d461c: BL              sub_167AC
000d4620: LDR             X25, [SP,#0x160+var_148]
000d4624: CMP             W0, #0
000d4628: CSEL            W8, W27, W22, EQ
000d462c: B               loc_D4594
000d4630: MOV             W9, #0x636E4591
000d4638: CMP             W8, W9
000d463c: B.EQ            loc_D46A0
000d4640: CMP             W8, W27
000d4644: B.NE            loc_D4594
000d4648: B               loc_D4700
000d464c: ADD             X9, SP, #0x160+var_118
000d4650: STP             X9, X9, [SP,#0x160+var_128]
000d4654: LDR             X8, [SP,#0x160+var_128]
000d4658: LDR             X8, [SP,#0x160+var_128]
000d465c: MOVI            V0.2D, #0
000d4660: ADRL            X0, xmmword_F7D40
000d4668: STUR            Q0, [X8,#0x4C]
000d466c: STP             Q0, Q0, [X8,#0x30]
000d4670: STP             Q0, Q0, [X8,#0x10]
000d4674: STR             Q0, [X8]
000d4678: LDR             X1, [SP,#0x160+var_120]
000d467c: BL              .__system_property_get
000d4680: LDR             X26, [SP,#0x160+var_148]
000d4684: MOV             W8, #0x2958
000d4688: MOV             W9, #0xFE9E
000d468c: CMP             W0, #0xF
000d4690: MOVK            W8, #0xDFBD,LSL#16
000d4694: MOVK            W9, #0x3C1C,LSL#16
000d4698: CSEL            W8, W9, W8, EQ
000d469c: B               loc_D4594
000d46a0: LDR             W8, [SP,#0x160+var_12C]
000d46a4: LDR             X25, [SP,#0x160+var_148]
000d46a8: CMP             W8, #0
000d46ac: MOV             W8, #0x237B835B
000d46b4: CSEL            W8, W8, W27, GT
000d46b8: B               loc_D4594
000d46bc: LDR             X1, [SP,#0x160+var_158]
000d46c0: ADRP            X2, #xmmword_F7D10@PAGE
000d46c4: MOV             X0, X19
000d46c8: ADD             X2, X2, #xmmword_F7D10@PAGEOFF
000d46cc: BL              sub_20930
000d46d0: LDR             X25, [SP,#0x160+var_148]
000d46d4: CMP             W0, #0
000d46d8: CSEL            W8, W27, W20, EQ
000d46dc: B               loc_D4594
000d46e0: LDR             X0, [SP,#0x160+s1]; s1
000d46e4: ADRL            X1, byte_F7D08; s2
000d46ec: BL              .strcmp
000d46f0: LDR             X25, [SP,#0x160+var_148]
000d46f4: CMP             W0, #0
000d46f8: CSEL            W8, W24, W27, EQ
000d46fc: B               loc_D4594
000d4700: LDR             X1, [SP,#0x160+var_150]
000d4704: LDR             X8, [X19]
000d4708: MOV             X0, X19
000d470c: LDR             X8, [X8,#0xB8]
000d4710: BLR             X8
000d4714: LDR             X8, [SP,#0x160+var_140]
000d4718: LDR             X8, [SP,#0x160+var_160]
000d471c: LDR             X8, [X8,#0x28]
000d4720: LDUR            X9, [X29,#var_60]
000d4724: CMP             X8, X9
000d4728: B.NE            loc_D4750
000d472c: MOV             X0, X25
000d4730: LDP             X29, X30, [SP,#0x160+var_s0]
000d4734: LDP             X20, X19, [SP,#0x160+var_10]
000d4738: LDP             X22, X21, [SP,#0x160+var_20]
000d473c: LDP             X24, X23, [SP,#0x160+var_30]
000d4740: LDP             X26, X25, [SP,#0x160+var_40]
000d4744: LDP             X28, X27, [SP,#0x160+var_50]
000d4748: ADD             SP, SP, #0x170
000d474c: RET
000d4750: BL              .__stack_chk_fail