000bab9c: SUB             SP, SP, #0x50
000baba0: STR             X23, [SP,#0x40+var_30]
000baba4: STP             X22, X21, [SP,#0x40+var_20]
000baba8: STP             X20, X19, [SP,#0x40+var_10]
000babac: STP             X29, X30, [SP,#0x40+var_s0]
000babb0: ADD             X29, SP, #0x40
000babb4: MOV             X19, X1
000babb8: MOV             X20, X0
000babbc: BL              sub_BAC8C
000babc0: STR             X0, [SP,#0x40+var_38]
000babc4: LDR             X2, [SP,#0x40+var_38]
000babc8: MOV             X0, X20
000babcc: MOV             X1, X19
000babd0: MOV             W3, WZR
000babd4: BL              sub_B9650
000babd8: MOV             W19, #0x4BC7
000babdc: MOV             W20, #0xD121
000babe0: MOV             W21, #0xD122
000babe4: MOV             W22, #0x9ECC
000babe8: MOV             W23, #0x30AA
000babec: MOV             W8, #0x4BC7
000babf0: MOVK            W19, #0xA1ED,LSL#16
000babf4: MOVK            W20, #0xFC57,LSL#16
000babf8: MOVK            W21, #0xFC57,LSL#16
000babfc: MOVK            W22, #0x6708,LSL#16
000bac00: MOVK            W23, #0xD3FA,LSL#16
000bac04: MOVK            W8, #0xA1ED,LSL#16
000bac08: STR             W0, [SP,#0x40+var_24]
000bac0c: B               loc_BAC24
000bac10: LDR             X0, [SP,#0x40+var_38]
000bac14: BL              sub_B2BD4
000bac18: MOV             W8, #0x30AA
000bac1c: MOV             X0, XZR
000bac20: MOVK            W8, #0xD3FA,LSL#16
000bac24: CMP             W8, W20
000bac28: B.GT            loc_BAC40
000bac2c: CMP             W8, W19
000bac30: B.EQ            loc_BAC54
000bac34: CMP             W8, W23
000bac38: B.NE            loc_BAC24
000bac3c: B               loc_BAC74
000bac40: CMP             W8, W21
000bac44: B.EQ            loc_BAC64
000bac48: CMP             W8, W22
000bac4c: B.NE            loc_BAC24
000bac50: B               loc_BAC10
000bac54: LDR             W8, [SP,#0x40+var_24]
000bac58: CMP             W8, #0
000bac5c: CSEL            W8, W22, W21, EQ
000bac60: B               loc_BAC24
000bac64: LDR             X0, [SP,#0x40+var_38]
000bac68: MOV             W8, #0xD3FA30AA
000bac70: B               loc_BAC24
000bac74: LDP             X29, X30, [SP,#0x40+var_s0]
000bac78: LDP             X20, X19, [SP,#0x40+var_10]
000bac7c: LDP             X22, X21, [SP,#0x40+var_20]
000bac80: LDR             X23, [SP,#0x40+var_30]
000bac84: ADD             SP, SP, #0x50 ; 'P'
000bac88: RET