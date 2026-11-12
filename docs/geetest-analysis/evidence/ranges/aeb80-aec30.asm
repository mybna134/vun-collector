000aeb80: MOV             W1, #0xA; c
000aeb84: BL              .strchr
000aeb88: CMP             X0, #0
000aeb8c: CSET            W8, NE
000aeb90: STRB            W8, [SP,#0x11D0+var_10B5]
000aeb94: LDRB            W8, [SP,#0x11D0+var_10B5]
000aeb98: LDR             W8, [SP,#0x11D0+var_1098]
000aeb9c: MOV             W9, #0x99E09AF
000aeba0: MOV             W9, #0x99E09AF
000aeba4: CMP             W8, #0
000aeba8: MOV             W8, #0xF6AACB4D
000aebac: MOV             W8, #0xF6AACB4D
000aebb0: CSEL            W8, W8, W9, EQ
000aebb4: B               loc_AE334
000aebb8: LDR             X8, [SP,#0x11D0+var_10E0]
000aebbc: LDR             X8, [SP,#0x11D0+var_10E8]
000aebc0: LDR             W9, [SP,#0x11D0+var_1108]
000aebc4: MVN             W8, W24
000aebc8: ORR             W8, W8, #0xFFFFFFFD
000aebcc: CMN             W8, #1
000aebd0: STR             W9, [SP,#0x11D0+var_1188]
000aebd4: MOV             W8, #0x91D6
000aebd8: MOV             W9, #0x7867
000aebdc: MOVK            W8, #0xCB66,LSL#16
000aebe0: MOVK            W9, #0xBA7F,LSL#16
000aebe4: B               loc_A6EC0
000aebe8: LDR             X0, [SP,#0x11D0+var_1178]
000aebec: LDR             X2, [SP,#0x11D0+var_1150]
000aebf0: ADRL            X1, a47S; "4;7#S"
000aebf4: ADRL            X1, a47S; "4;7#S"
000aebf8: BL              sub_13984
000aebfc: LDR             X8, [SP,#0x11D0+var_11C8]
000aec00: ADD             X9, SP, #0x11D0+var_10A8
000aec04: LDR             X8, [X8,#0x28]
000aec08: LDR             X9, [X9,#0x1048]
000aec0c: CMP             X8, X9
000aec10: B.NE            loc_AEC38
000aec14: ADD             SP, SP, #1,LSL#12
000aec18: ADD             SP, SP, #0x180
000aec1c: LDP             X29, X30, [SP,#0x50+var_s0]
000aec20: LDP             X20, X19, [SP,#0x50+var_10]
000aec24: LDP             X22, X21, [SP,#0x50+var_20]
000aec28: LDP             X24, X23, [SP,#0x50+var_30]
000aec2c: LDP             X26, X25, [SP,#0x50+var_40]