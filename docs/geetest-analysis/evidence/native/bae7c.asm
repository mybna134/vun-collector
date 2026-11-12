000bae7c: SUB             SP, SP, #0x50
000bae80: STR             X23, [SP,#0x40+var_30]
000bae84: STP             X22, X21, [SP,#0x40+var_20]
000bae88: STP             X20, X19, [SP,#0x40+var_10]
000bae8c: STP             X29, X30, [SP,#0x40+var_s0]
000bae90: ADD             X29, SP, #0x40
000bae94: MOV             X20, X0
000bae98: MOV             X0, X2
000bae9c: MOV             X19, X1
000baea0: BL              sub_BAF6C
000baea4: STR             X0, [SP,#0x40+var_38]
000baea8: LDR             X2, [SP,#0x40+var_38]
000baeac: MOV             X0, X20
000baeb0: MOV             X1, X19
000baeb4: MOV             W3, WZR
000baeb8: BL              sub_B9650
000baebc: MOV             W19, #0x5ABC
000baec0: MOV             W20, #0x5ABB
000baec4: MOV             W21, #0xAFD2
000baec8: MOV             W22, #0x9902
000baecc: MOV             W23, #0xA63D
000baed0: MOV             W8, #0x5ABC
000baed4: MOVK            W19, #0x38AB,LSL#16
000baed8: MOVK            W20, #0x38AB,LSL#16
000baedc: MOVK            W21, #0x84FA,LSL#16
000baee0: MOVK            W22, #0x2075,LSL#16
000baee4: MOVK            W23, #0x5627,LSL#16
000baee8: MOVK            W8, #0x38AB,LSL#16
000baeec: STR             W0, [SP,#0x40+var_24]
000baef0: B               loc_BAF08
000baef4: LDR             X0, [SP,#0x40+var_38]
000baef8: BL              sub_B2BD4
000baefc: MOV             W8, #0x9902
000baf00: MOV             X0, XZR
000baf04: MOVK            W8, #0x2075,LSL#16
000baf08: CMP             W8, W20
000baf0c: B.GT            loc_BAF24
000baf10: CMP             W8, W21
000baf14: B.EQ            loc_BAF44
000baf18: CMP             W8, W22
000baf1c: B.NE            loc_BAF08
000baf20: B               loc_BAF54
000baf24: CMP             W8, W23
000baf28: B.EQ            loc_BAEF4
000baf2c: CMP             W8, W19
000baf30: B.NE            loc_BAF08
000baf34: LDR             W8, [SP,#0x40+var_24]
000baf38: CMP             W8, #0
000baf3c: CSEL            W8, W23, W21, EQ
000baf40: B               loc_BAF08
000baf44: LDR             X0, [SP,#0x40+var_38]
000baf48: MOV             W8, #0x20759902
000baf50: B               loc_BAF08
000baf54: LDP             X29, X30, [SP,#0x40+var_s0]
000baf58: LDP             X20, X19, [SP,#0x40+var_10]
000baf5c: LDP             X22, X21, [SP,#0x40+var_20]
000baf60: LDR             X23, [SP,#0x40+var_30]
000baf64: ADD             SP, SP, #0x50 ; 'P'
000baf68: RET