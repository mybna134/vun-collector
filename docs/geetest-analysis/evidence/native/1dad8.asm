0001dad8: STP             X28, X27, [SP,#-0x10+var_50]!
0001dadc: STP             X26, X25, [SP,#0x50+var_40]
0001dae0: STP             X24, X23, [SP,#0x50+var_30]
0001dae4: STP             X22, X21, [SP,#0x50+var_20]
0001dae8: STP             X20, X19, [SP,#0x50+var_10]
0001daec: STP             X29, X30, [SP,#0x50+var_s0]
0001daf0: ADD             X29, SP, #0x50
0001daf4: SUB             SP, SP, #0x2A0
0001daf8: MRS             X22, TPIDR_EL0
0001dafc: LDR             X8, [X22,#0x28]
0001db00: SUB             X9, X29, #-var_BC
0001db04: MOV             X20, X0
0001db08: ADRP            X0, #xmmword_F29F0@PAGE
0001db0c: STUR            X8, [X29,#var_60]
0001db10: STR             X9, [SP,#0x2F0+var_2F0]
0001db14: LDR             X8, [SP,#0x2F0+var_2F0]
0001db18: LDR             X8, [SP,#0x2F0+var_2F0]
0001db1c: MOV             W23, #0xC8BF
0001db20: MOVI            V0.2D, #0
0001db24: ADD             X0, X0, #xmmword_F29F0@PAGEOFF
0001db28: SUB             X1, X29, #-var_BC
0001db2c: MOV             X19, X2
0001db30: MOVK            W23, #0xA110,LSL#16
0001db34: STUR            Q0, [X8,#0x4C]
0001db38: STP             Q0, Q0, [X8,#0x30]
0001db3c: STP             Q0, Q0, [X8,#0x10]
0001db40: STR             Q0, [X8]
0001db44: BL              .__system_property_get
0001db48: ADRL            X1, byte_F2A08
0001db50: SUB             X2, X29, #-var_BC
0001db54: MOV             X0, X19
0001db58: BL              sub_13C74
0001db5c: ADRL            X21, xmmword_F2A10
0001db64: ADRL            X2, aJzifl; "jzifl("
0001db6c: MOV             X0, X20
0001db70: MOV             X1, X21
0001db74: BL              sub_10CE4
0001db78: ADRP            X2, #byte_F2A0C@PAGE
0001db7c: MOV             X3, X0
0001db80: ADD             X2, X2, #byte_F2A0C@PAGEOFF
0001db84: MOV             X0, X20
0001db88: MOV             X1, X19
0001db8c: BL              sub_13D7C
0001db90: ADRL            X2, byte_F2A30
0001db98: MOV             X0, X20
0001db9c: MOV             X1, X21
0001dba0: BL              sub_10CE4
0001dba4: ADRP            X2, #byte_F2A2C@PAGE
0001dba8: MOV             X3, X0
0001dbac: ADD             X2, X2, #byte_F2A2C@PAGEOFF
0001dbb0: MOV             X0, X20
0001dbb4: MOV             X1, X19
0001dbb8: BL              sub_13D7C
0001dbbc: ADRP            X1, #a0M1m@PAGE; "#,&0-+&m-1m"
0001dbc0: ADRP            X2, #qword_F2A60@PAGE
0001dbc4: ADD             X1, X1, #a0M1m@PAGEOFF; "#,&0-+&m-1m"
0001dbc8: ADD             X2, X2, #qword_F2A60@PAGEOFF
0001dbcc: MOV             X0, X20
0001dbd0: BL              sub_10CE4
0001dbd4: ADRP            X2, #byte_F2A38@PAGE
0001dbd8: MOV             X3, X0
0001dbdc: ADD             X2, X2, #byte_F2A38@PAGEOFF
0001dbe0: MOV             X0, X20
0001dbe4: MOV             X1, X19
0001dbe8: BL              sub_13D7C
0001dbec: SUB             X8, X29, #-var_FC
0001dbf0: STR             X8, [SP,#0x2F0+var_2E8]
0001dbf4: LDR             X8, [SP,#0x2F0+var_2E8]
0001dbf8: LDR             X8, [SP,#0x2F0+var_2E8]
0001dbfc: ADRP            X0, #xmmword_F2A70@PAGE
0001dc00: MOVI            V0.2D, #0
0001dc04: ADD             X0, X0, #xmmword_F2A70@PAGEOFF
0001dc08: SUB             X1, X29, #-var_FC
0001dc0c: STP             Q0, Q0, [X8,#0x20]
0001dc10: STP             Q0, Q0, [X8]
0001dc14: BL              .__system_property_get
0001dc18: ADRL            X1, byte_F2A88
0001dc20: SUB             X2, X29, #-var_FC
0001dc24: MOV             X0, X19
0001dc28: BL              sub_13C74
0001dc2c: ADD             X8, SP, #0x2F0+var_158
0001dc30: STR             X8, [SP,#0x2F0+var_2E0]
0001dc34: LDR             X8, [SP,#0x2F0+var_2E0]
0001dc38: LDR             X8, [SP,#0x2F0+var_2E0]
0001dc3c: ADRP            X0, #xmmword_F2A90@PAGE
0001dc40: MOVI            V0.2D, #0
0001dc44: ADD             X0, X0, #xmmword_F2A90@PAGEOFF
0001dc48: ADD             X1, SP, #0x2F0+var_158
0001dc4c: STUR            Q0, [X8,#0x4C]
0001dc50: STP             Q0, Q0, [X8,#0x30]
0001dc54: STP             Q0, Q0, [X8,#0x10]
0001dc58: STR             Q0, [X8]
0001dc5c: BL              .__system_property_get
0001dc60: ADRL            X1, byte_F2AA0
0001dc68: ADD             X2, SP, #0x2F0+var_158
0001dc6c: MOV             X0, X19
0001dc70: BL              sub_13C74
0001dc74: ADD             X8, SP, #0x2F0+var_1B4
0001dc78: STR             X8, [SP,#0x2F0+var_2D8]
0001dc7c: LDR             X8, [SP,#0x2F0+var_2D8]
0001dc80: LDR             X8, [SP,#0x2F0+var_2D8]
0001dc84: ADRP            X0, #xmmword_F2AB0@PAGE
0001dc88: MOVI            V0.2D, #0
0001dc8c: ADD             X0, X0, #xmmword_F2AB0@PAGEOFF
0001dc90: ADD             X1, SP, #0x2F0+var_1B4
0001dc94: STUR            Q0, [X8,#0x4C]
0001dc98: STP             Q0, Q0, [X8,#0x30]
0001dc9c: STP             Q0, Q0, [X8,#0x10]
0001dca0: STR             Q0, [X8]
0001dca4: BL              .__system_property_get
0001dca8: ADRL            X1, byte_F2AC8
0001dcb0: ADD             X2, SP, #0x2F0+var_1B4
0001dcb4: MOV             X0, X19
0001dcb8: BL              sub_13C74
0001dcbc: ADRP            X1, #byte_F2ACC@PAGE
0001dcc0: ADRP            X2, #qword_F2AD0@PAGE
0001dcc4: ADD             X1, X1, #byte_F2ACC@PAGEOFF
0001dcc8: ADD             X2, X2, #qword_F2AD0@PAGEOFF
0001dccc: MOV             X0, X19
0001dcd0: BL              sub_13C74
0001dcd4: ADD             X8, SP, #0x2F0+var_210
0001dcd8: STR             X8, [SP,#0x2F0+var_2D0]
0001dcdc: LDR             X8, [SP,#0x2F0+var_2D0]
0001dce0: LDR             X8, [SP,#0x2F0+var_2D0]
0001dce4: ADRP            X0, #aN@PAGE; "<!`,!/<*`>\"/:(!<#N"
0001dce8: MOVI            V0.2D, #0
0001dcec: ADD             X0, X0, #aN@PAGEOFF; "<!`,!/<*`>\"/:(!<#N"
0001dcf0: ADD             X1, SP, #0x2F0+var_210
0001dcf4: STUR            Q0, [X8,#0x4C]
0001dcf8: STP             Q0, Q0, [X8,#0x30]
0001dcfc: STP             Q0, Q0, [X8,#0x10]
0001dd00: STR             Q0, [X8]
0001dd04: BL              .__system_property_get
0001dd08: ADRL            X1, byte_F2AF4
0001dd10: ADD             X2, SP, #0x2F0+var_210
0001dd14: MOV             X0, X19
0001dd18: BL              sub_13C74
0001dd1c: ADD             X8, SP, #0x2F0+var_26C
0001dd20: STR             X8, [SP,#0x2F0+var_2C8]
0001dd24: LDR             X8, [SP,#0x2F0+var_2C8]
0001dd28: LDR             X8, [SP,#0x2F0+var_2C8]
0001dd2c: ADRP            X0, #xmmword_F2B00@PAGE
0001dd30: MOVI            V0.2D, #0
0001dd34: ADD             X0, X0, #xmmword_F2B00@PAGEOFF
0001dd38: ADD             X1, SP, #0x2F0+var_26C
0001dd3c: STUR            Q0, [X8,#0x4C]
0001dd40: STP             Q0, Q0, [X8,#0x30]
0001dd44: STP             Q0, Q0, [X8,#0x10]
0001dd48: STR             Q0, [X8]
0001dd4c: BL              .__system_property_get
0001dd50: ADRL            X1, byte_F2B18
0001dd58: ADD             X2, SP, #0x2F0+var_26C
0001dd5c: MOV             X0, X19
0001dd60: BL              sub_13C74
0001dd64: ADD             X8, SP, #0x2F0+var_2AC
0001dd68: STP             X8, X8, [SP,#0x2F0+var_2C0]
0001dd6c: LDR             X9, [SP,#0x2F0+var_2C0]
0001dd70: LDR             X9, [SP,#0x2F0+var_2C0]
0001dd74: MOVI            V0.2D, #0
0001dd78: ADRL            X0, xmmword_F2B20
0001dd80: STP             Q0, Q0, [X9,#0x20]
0001dd84: STP             Q0, Q0, [X9]
0001dd88: LDR             X1, [SP,#0x2F0+var_2B8]
0001dd8c: MOV             W2, #0x40 ; '@'
0001dd90: BL              sub_8650
0001dd94: MOV             W24, #0x1D24
0001dd98: MOV             W25, #0x2156
0001dd9c: MOV             W26, #0x933C
0001dda0: ADRP            X20, #byte_F2B40@PAGE
0001dda4: ADRP            X21, #(aGeePclose+0xA)@PAGE; ""
0001dda8: MOV             W27, #0x2157
0001ddac: MOV             W8, #0x1D24
0001ddb0: MOVK            W24, #0x7462,LSL#16
0001ddb4: MOVK            W25, #0x6344,LSL#16
0001ddb8: MOVK            W26, #0x1996,LSL#16
0001ddbc: ADD             X20, X20, #byte_F2B40@PAGEOFF
0001ddc0: ADD             X21, X21, #(aGeePclose+0xA)@PAGEOFF; ""
0001ddc4: MOVK            W27, #0x6344,LSL#16
0001ddc8: MOVK            W8, #0x7462,LSL#16
0001ddcc: STR             W0, [SP,#0x2F0+var_2B0]
0001ddd0: B               loc_1DDE0
0001ddd4: BL              sub_13C74
0001ddd8: MOV             W8, #0xA110C8BF
0001dde0: CMP             W8, W25
0001dde4: B.GT            loc_1DE08
0001dde8: CMP             W8, W23
0001ddec: B.EQ            loc_1DE38
0001ddf0: CMP             W8, W26
0001ddf4: B.NE            loc_1DDE0
0001ddf8: MOV             X0, X19
0001ddfc: MOV             X1, X20
0001de00: MOV             X2, X21
0001de04: B               loc_1DDD4
0001de08: CMP             W8, W27
0001de0c: B.EQ            loc_1DE28
0001de10: CMP             W8, W24
0001de14: B.NE            loc_1DDE0
0001de18: LDR             W8, [SP,#0x2F0+var_2B0]
0001de1c: CMP             W8, #0
0001de20: CSEL            W8, W26, W27, EQ
0001de24: B               loc_1DDE0
0001de28: LDR             X2, [SP,#0x2F0+var_2B8]
0001de2c: MOV             X0, X19
0001de30: MOV             X1, X20
0001de34: B               loc_1DDD4
0001de38: LDR             X8, [SP,#0x2F0+var_2C0]
0001de3c: LDR             X8, [SP,#0x2F0+var_2C8]
0001de40: LDR             X8, [SP,#0x2F0+var_2D0]
0001de44: LDR             X8, [SP,#0x2F0+var_2D8]
0001de48: LDR             X8, [SP,#0x2F0+var_2E0]
0001de4c: LDR             X8, [SP,#0x2F0+var_2E8]
0001de50: LDR             X8, [SP,#0x2F0+var_2F0]
0001de54: LDR             X8, [X22,#0x28]
0001de58: LDUR            X9, [X29,#var_60]
0001de5c: CMP             X8, X9
0001de60: B.NE            loc_1DE84
0001de64: ADD             SP, SP, #0x2A0
0001de68: LDP             X29, X30, [SP,#0x50+var_s0]
0001de6c: LDP             X20, X19, [SP,#0x50+var_10]
0001de70: LDP             X22, X21, [SP,#0x50+var_20]
0001de74: LDP             X24, X23, [SP,#0x50+var_30]
0001de78: LDP             X26, X25, [SP,#0x50+var_40]
0001de7c: LDP             X28, X27, [SP+0x50+var_50],#0x60
0001de80: RET
0001de84: BL              .__stack_chk_fail