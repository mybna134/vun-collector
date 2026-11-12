000afbcc: STP             X28, X27, [SP,#-0x10+var_50]!
000afbd0: STP             X26, X25, [SP,#0x50+var_40]
000afbd4: STP             X24, X23, [SP,#0x50+var_30]
000afbd8: STP             X22, X21, [SP,#0x50+var_20]
000afbdc: STP             X20, X19, [SP,#0x50+var_10]
000afbe0: STP             X29, X30, [SP,#0x50+var_s0]
000afbe4: ADD             X29, SP, #0x50
000afbe8: SUB             SP, SP, #0x210
000afbec: STP             X0, X1, [SP,#0x260+var_250]
000afbf0: MRS             X8, TPIDR_EL0
000afbf4: STR             X8, [SP,#0x260+var_258]
000afbf8: LDR             X8, [X8,#0x28]
000afbfc: ADD             X10, SP, #0x260+var_160
000afc00: ADD             X9, SP, #0x260+var_1E8
000afc04: ADRP            X0, #xmmword_F74F0@PAGE
000afc08: STUR            X8, [X29,#var_60]
000afc0c: STP             X10, X9, [SP,#0x260+var_230]
000afc10: LDR             X8, [SP,#0x260+var_230]
000afc14: LDR             X8, [SP,#0x260+var_228]
000afc18: ADRP            X1, #byte_F7230@PAGE
000afc1c: MOV             W28, #0x16DD
000afc20: ADD             X0, X0, #xmmword_F74F0@PAGEOFF; filename
000afc24: ADD             X1, X1, #byte_F7230@PAGEOFF; modes
000afc28: MOVK            W28, #0xE289,LSL#16
000afc2c: BL              .fopen
000afc30: MOV             W20, #0x3537
000afc34: MOV             W23, #0x168D
000afc38: MOV             W19, #0x71BF
000afc3c: MOV             W26, #0x168E
000afc40: MOV             W21, #0x1A3D
000afc44: MOV             W24, #0x3538
000afc48: MOV             W25, #0x1A3C
000afc4c: MOVK            W20, #0xE871,LSL#16
000afc50: MOVK            W23, #0xC6E9,LSL#16
000afc54: MOVK            W19, #0x8657,LSL#16
000afc58: MOVK            W26, #0xC6E9,LSL#16
000afc5c: MOVK            W21, #0x3CCB,LSL#16
000afc60: MOVK            W24, #0xE871,LSL#16
000afc64: MOVK            W25, #0x3CCB,LSL#16
000afc68: STR             X0, [SP,#0x260+stream]
000afc6c: MOV             W8, #0x58A90D9D
000afc74: B               loc_AFC98
000afc78: LDR             X8, [SP,#0x260+var_1E0]
000afc7c: MOV             W9, #0xD6024080
000afc84: MOV             X22, XZR
000afc88: CMP             X8, #0
000afc8c: MOV             W8, #0x6905BED9
000afc94: CSEL            W8, W8, W9, EQ
000afc98: CMP             W8, W20
000afc9c: B.LE            loc_AFCE8
000afca0: CMP             W8, W25
000afca4: B.GT            loc_AFD58
000afca8: MOV             W9, #0x146676A
000afcb0: CMP             W8, W9
000afcb4: B.GT            loc_AFDB0
000afcb8: CMP             W8, W24
000afcbc: B.EQ            loc_AFC78
000afcc0: MOV             W9, #0xF830CC19
000afcc8: CMP             W8, W9
000afccc: B.NE            loc_AFC98
000afcd0: LDR             X8, [SP,#0x260+var_1E8]
000afcd4: LDR             X9, [SP,#0x260+var_248]
000afcd8: STR             X8, [X9]
000afcdc: MOV             W8, #0x3A3E06E9
000afce4: B               loc_AFC98
000afce8: CMP             W8, W23
000afcec: B.GT            loc_AFD1C
000afcf0: CMP             W8, W19
000afcf4: B.EQ            loc_AFED8
000afcf8: MOV             W9, #0x96AD6B8F
000afd00: CMP             W8, W9
000afd04: B.EQ            loc_AFDD4
000afd08: MOV             W9, #0xB265144E
000afd10: CMP             W8, W9
000afd14: B.NE            loc_AFC98
000afd18: B               loc_AFC6C
000afd1c: CMP             W8, W26
000afd20: B.EQ            loc_AFF14
000afd24: MOV             W9, #0xD6024080
000afd2c: CMP             W8, W9
000afd30: B.EQ            loc_AFE04
000afd34: CMP             W8, W28
000afd38: B.NE            loc_AFC98
000afd3c: LDR             W8, [SP,#0x260+var_234]
000afd40: STR             X27, [SP,#0x260+var_208]
000afd44: STR             W8, [SP,#0x260+var_1FC]
000afd48: LDR             X8, [SP,#0x260+var_208]
000afd4c: CMP             X8, #0
000afd50: CSEL            W8, W24, W19, EQ
000afd54: B               loc_AFC98
000afd58: CMP             W8, W21
000afd5c: B.EQ            loc_AFF38
000afd60: MOV             W9, #0x6905BED9
000afd68: CMP             W8, W9
000afd6c: B.EQ            loc_AFE7C
000afd70: MOV             W9, #0x58A90D9D
000afd78: CMP             W8, W9
000afd7c: B.NE            loc_AFC98
000afd80: ADD             X8, SP, #0x260+var_160
000afd84: STR             X8, [SP,#0x260+s]
000afd88: LDR             X2, [SP,#0x260+stream]; stream
000afd8c: LDR             X0, [SP,#0x260+s]; s
000afd90: MOV             W1, #0x100; n
000afd94: BL              .fgets
000afd98: MOV             W8, #0x676B
000afd9c: CMP             X0, #0
000afda0: MOVK            W8, #0x146,LSL#16
000afda4: STR             XZR, [SP,#0x260+var_240]
000afda8: CSEL            W8, W8, W26, EQ
000afdac: B               loc_AFC98
000afdb0: MOV             W9, #0x3A3E06E9
000afdb8: CMP             W8, W9
000afdbc: B.EQ            loc_AFE90
000afdc0: MOV             W9, #0x146676B
000afdc8: CMP             W8, W9
000afdcc: B.NE            loc_AFC98
000afdd0: B               loc_AFF60
000afdd4: LDR             X0, [SP,#0x260+s]; s
000afdd8: ADRP            X1, #byte_F7508@PAGE
000afddc: ADD             X2, SP, #0x260+var_1E8
000afde0: ADD             X1, X1, #byte_F7508@PAGEOFF; format
000afde4: BL              .sscanf
000afde8: MOV             W8, #0x6E9
000afdec: MOV             W9, #0xCC19
000afdf0: CMP             W0, #1
000afdf4: MOVK            W8, #0x3A3E,LSL#16
000afdf8: MOVK            W9, #0xF830,LSL#16
000afdfc: CSEL            W8, W9, W8, EQ
000afe00: B               loc_AFC98
000afe04: LDR             X0, [SP,#0x260+s]; s
000afe08: ADRL            X22, byte_F7510
000afe10: MOV             X1, X22; delim
000afe14: BL              .strtok
000afe18: MOV             X28, X0
000afe1c: MOV             X0, XZR; s
000afe20: MOV             X1, X22; delim
000afe24: BL              .strtok
000afe28: ADRL            X24, byte_F7514
000afe30: MOV             X22, X0
000afe34: ADD             X2, SP, #0x260+var_1F0
000afe38: MOV             X0, X28; s
000afe3c: MOV             W28, #0x16DD
000afe40: MOV             X1, X24; format
000afe44: STP             XZR, XZR, [SP,#0x260+var_1F8]
000afe48: MOVK            W28, #0xE289,LSL#16
000afe4c: BL              .sscanf
000afe50: ADD             X2, SP, #0x260+var_1F8
000afe54: MOV             X0, X22; s
000afe58: MOV             X1, X24; format
000afe5c: MOV             W24, #0xE8713538
000afe64: BL              .sscanf
000afe68: LDP             X8, X9, [SP,#0x260+var_1F8]
000afe6c: SUB             X22, X8, X9
000afe70: MOV             W8, #0x6905BED9
000afe78: B               loc_AFC98
000afe7c: LDR             X8, [SP,#0x260+var_210]
000afe80: MOV             W8, #0x676B
000afe84: STR             X22, [SP,#0x260+var_240]
000afe88: MOVK            W8, #0x146,LSL#16
000afe8c: B               loc_AFC98
000afe90: ADD             X8, SP, #0x260+var_1E0
000afe94: STR             X8, [SP,#0x260+var_210]
000afe98: LDR             X8, [SP,#0x260+var_210]
000afe9c: LDR             X8, [SP,#0x260+var_210]
000afea0: MOVI            V0.2D, #0
000afea4: ADRL            X1, byte_F750C; delim
000afeac: STP             Q0, Q0, [X8,#0x60]
000afeb0: STP             Q0, Q0, [X8,#0x40]
000afeb4: STP             Q0, Q0, [X8,#0x20]
000afeb8: STP             Q0, Q0, [X8]
000afebc: LDR             X0, [SP,#0x260+s]; s
000afec0: BL              .strtok
000afec4: MOV             W8, #0x16DD
000afec8: MOV             X27, X0
000afecc: STR             WZR, [SP,#0x260+var_234]
000afed0: MOVK            W8, #0xE289,LSL#16
000afed4: B               loc_AFC98
000afed8: LDR             W8, [SP,#0x260+var_1FC]
000afedc: LDRSW           X9, [SP,#0x260+var_1FC]
000afee0: LDR             X10, [SP,#0x260+var_208]
000afee4: ADRP            X1, #byte_F750C@PAGE
000afee8: ADD             W8, W8, #1
000afeec: STR             W8, [SP,#0x260+var_234]
000afef0: ADD             X8, SP, #0x260+var_1E0
000afef4: MOV             X0, XZR; s
000afef8: ADD             X1, X1, #byte_F750C@PAGEOFF; delim
000afefc: STR             X10, [X8,X9,LSL#3]
000aff00: BL              .strtok
000aff04: MOV             W8, #0x16DD
000aff08: MOV             X27, X0
000aff0c: MOVK            W8, #0xE289,LSL#16
000aff10: B               loc_AFC98
000aff14: LDR             X0, [SP,#0x260+s]
000aff18: ADRL            X1, aZPx; "z%px\b"
000aff20: BL              sub_75D4
000aff24: MOV             W8, #0x144E
000aff28: CMP             X0, #0
000aff2c: MOVK            W8, #0xB265,LSL#16
000aff30: CSEL            W8, W8, W21, EQ
000aff34: B               loc_AFC98
000aff38: LDR             X0, [SP,#0x260+s]
000aff3c: LDR             X1, [SP,#0x260+var_250]
000aff40: BL              sub_75D4
000aff44: MOV             W8, #0x144E
000aff48: MOV             W9, #0x6B8F
000aff4c: CMP             X0, #0
000aff50: MOVK            W8, #0xB265,LSL#16
000aff54: MOVK            W9, #0x96AD,LSL#16
000aff58: CSEL            W8, W8, W9, EQ
000aff5c: B               loc_AFC98
000aff60: LDR             X0, [SP,#0x260+stream]; stream
000aff64: BL              .fclose
000aff68: LDR             X8, [SP,#0x260+var_228]
000aff6c: LDR             X8, [SP,#0x260+var_230]
000aff70: LDR             X8, [SP,#0x260+var_258]
000aff74: LDR             X8, [X8,#0x28]
000aff78: LDUR            X9, [X29,#var_60]
000aff7c: CMP             X8, X9
000aff80: B.NE            loc_AFFA8
000aff84: LDR             X0, [SP,#0x260+var_240]
000aff88: ADD             SP, SP, #0x210
000aff8c: LDP             X29, X30, [SP,#0x50+var_s0]
000aff90: LDP             X20, X19, [SP,#0x50+var_10]
000aff94: LDP             X22, X21, [SP,#0x50+var_20]
000aff98: LDP             X24, X23, [SP,#0x50+var_30]
000aff9c: LDP             X26, X25, [SP,#0x50+var_40]
000affa0: LDP             X28, X27, [SP+0x50+var_50],#0x60
000affa4: RET
000affa8: BL              .__stack_chk_fail