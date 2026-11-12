000d4250: SUB             SP, SP, #0x170
000d4254: STP             X28, X27, [SP,#0x160+var_50]
000d4258: STP             X26, X25, [SP,#0x160+var_40]
000d425c: STP             X24, X23, [SP,#0x160+var_30]
000d4260: STP             X22, X21, [SP,#0x160+var_20]
000d4264: STP             X20, X19, [SP,#0x160+var_10]
000d4268: STP             X29, X30, [SP,#0x160+var_s0]
000d426c: ADD             X29, SP, #0x160
000d4270: STR             X3, [SP,#0x160+var_160]
000d4274: MRS             X24, TPIDR_EL0
000d4278: LDR             X8, [X24,#0x28]
000d427c: MOV             X20, X2
000d4280: MOV             X22, X1
000d4284: MOV             X1, X2
000d4288: STUR            X8, [X29,#var_60]
000d428c: LDR             X8, [X0]
000d4290: MOV             X2, XZR
000d4294: MOV             X19, X0
000d4298: LDR             X8, [X8,#0x548]
000d429c: BLR             X8
000d42a0: SUB             X8, X29, #-var_80
000d42a4: STP             X0, X8, [SP,#0x160+src]
000d42a8: LDR             X8, [SP,#0x160+var_150]
000d42ac: LDR             X8, [SP,#0x160+var_150]
000d42b0: MOVI            V0.2D, #0
000d42b4: ADD             X9, SP, #0x160+var_F0
000d42b8: ADD             X0, SP, #0x160+var_F0
000d42bc: STP             Q0, Q0, [X8]
000d42c0: STR             X9, [SP,#0x160+var_148]
000d42c4: LDR             X8, [SP,#0x160+var_148]
000d42c8: BL              sub_E4574
000d42cc: ADD             X0, SP, #0x160+var_F0
000d42d0: MOV             W1, WZR
000d42d4: BL              sub_E46A4
000d42d8: LDR             X8, [X19]
000d42dc: MOV             X0, X19
000d42e0: MOV             X1, X20
000d42e4: LDR             X8, [X8,#0x540]
000d42e8: BLR             X8
000d42ec: LDR             X1, [SP,#0x160+src]; src
000d42f0: SXTW            X2, W0
000d42f4: ADD             X0, SP, #0x160+var_F0; int
000d42f8: BL              sub_E7894
000d42fc: ADD             X0, SP, #0x160+var_F0
000d4300: SUB             X1, X29, #-var_80
000d4304: BL              sub_E7CB0
000d4308: ADD             X26, SP, #0x160+var_134
000d430c: STR             X26, [SP,#0x160+var_140]
000d4310: LDR             X9, [SP,#0x160+var_140]
000d4314: LDR             X9, [SP,#0x160+var_140]
000d4318: MOV             W27, #0x1B2A
000d431c: ADRP            X23, #(aTofAjvD+4)@PAGE; "ajv<D"
000d4320: MOV             W28, #0x3756
000d4324: MOV             W25, #0x474C
000d4328: MOV             W21, #0x6863
000d432c: MOV             W8, WZR
000d4330: MOVK            W27, #0xD04B,LSL#16
000d4334: ADD             X23, X23, #(aTofAjvD+4)@PAGEOFF; "ajv<D"
000d4338: MOVK            W28, #0x62BA,LSL#16
000d433c: MOVK            W25, #0x22C5,LSL#16
000d4340: MOVI            V0.2D, #0
000d4344: MOVK            W21, #0x5B06,LSL#16
000d4348: STRB            WZR, [X9,#0x40]
000d434c: STP             Q0, Q0, [X9,#0x20]
000d4350: STP             Q0, Q0, [X9]
000d4354: B               loc_D4384
000d4358: LDRSW           X8, [SP,#0x160+var_138]
000d435c: LDRSW           X9, [SP,#0x160+var_138]
000d4360: SUB             X10, X29, #-var_80
000d4364: MOV             X1, X23; format
000d4368: ADD             X0, X26, X8,LSL#1; s
000d436c: LDRB            W2, [X10,X9]
000d4370: BL              .sprintf
000d4374: LDR             W8, [SP,#0x160+var_138]
000d4378: SUB             W8, W8, W28
000d437c: ADD             W8, W8, #1
000d4380: ADD             W8, W8, W28
000d4384: MOV             W9, #0x5B066863
000d438c: B               loc_D43A0
000d4390: STR             W8, [SP,#0x160+var_138]
000d4394: LDR             W9, [SP,#0x160+var_138]
000d4398: CMP             W9, #0x20 ; ' '
000d439c: CSEL            W9, W27, W25, LT
000d43a0: CMP             W9, W27
000d43a4: B.EQ            loc_D4358
000d43a8: CMP             W9, W25
000d43ac: B.EQ            loc_D43BC
000d43b0: CMP             W9, W21
000d43b4: B.NE            loc_D43A0
000d43b8: B               loc_D4390
000d43bc: MOV             X0, X19
000d43c0: MOV             X1, X22
000d43c4: STRB            WZR, [SP,#0x160+var_F4]
000d43c8: BL              sub_14D1C
000d43cc: MOV             X22, X0
000d43d0: ADRL            X2, byte_F7BB4
000d43d8: ADD             X3, SP, #0x160+var_134
000d43dc: MOV             X0, X19
000d43e0: MOV             X1, X22
000d43e4: BL              sub_154B8
000d43e8: LDR             X3, [SP,#0x160+var_160]
000d43ec: ADRL            X2, qword_F7C48
000d43f4: MOV             X0, X19
000d43f8: MOV             X1, X22
000d43fc: BL              sub_154B8
000d4400: LDR             X8, [X19]
000d4404: MOV             X0, X19
000d4408: MOV             X1, X22
000d440c: LDR             X8, [X8,#0xB8]
000d4410: BLR             X8
000d4414: LDR             X2, [SP,#0x160+src]
000d4418: LDR             X8, [X19]
000d441c: MOV             X0, X19
000d4420: MOV             X1, X20
000d4424: LDR             X8, [X8,#0x550]
000d4428: BLR             X8
000d442c: ADD             X0, SP, #0x160+var_F0
000d4430: BL              sub_E458C
000d4434: LDR             X8, [X19]
000d4438: ADD             X1, SP, #0x160+var_134
000d443c: MOV             X0, X19
000d4440: LDR             X8, [X8,#0x538]
000d4444: BLR             X8
000d4448: LDR             X8, [SP,#0x160+var_140]
000d444c: LDR             X8, [SP,#0x160+var_148]
000d4450: LDR             X8, [SP,#0x160+var_150]
000d4454: LDR             X8, [X24,#0x28]
000d4458: LDUR            X9, [X29,#var_60]
000d445c: CMP             X8, X9
000d4460: B.NE            loc_D4484
000d4464: LDP             X29, X30, [SP,#0x160+var_s0]
000d4468: LDP             X20, X19, [SP,#0x160+var_10]
000d446c: LDP             X22, X21, [SP,#0x160+var_20]
000d4470: LDP             X24, X23, [SP,#0x160+var_30]
000d4474: LDP             X26, X25, [SP,#0x160+var_40]
000d4478: LDP             X28, X27, [SP,#0x160+var_50]
000d447c: ADD             SP, SP, #0x170
000d4480: RET
000d4484: BL              .__stack_chk_fail