000d0e0c: SUB             SP, SP, #0x90
000d0e10: STR             D8, [SP,#0x80+var_60]
000d0e14: STP             X28, X27, [SP,#0x80+var_50]
000d0e18: STP             X26, X25, [SP,#0x80+var_40]
000d0e1c: STP             X24, X23, [SP,#0x80+var_30]
000d0e20: STP             X22, X21, [SP,#0x80+var_20]
000d0e24: STP             X20, X19, [SP,#0x80+var_10]
000d0e28: STP             X29, X30, [SP,#0x80+var_s0]
000d0e2c: ADD             X29, SP, #0x80
000d0e30: MOV             W27, #0xD24C
000d0e34: MOV             X19, X2
000d0e38: MOV             X21, X1
000d0e3c: MOV             X20, X0
000d0e40: MOVK            W27, #0xF75D,LSL#16
000d0e44: BL              sub_D138
000d0e48: MOV             X0, X20
000d0e4c: MOV             X1, X21
000d0e50: BL              sub_44068
000d0e54: ADRP            X2, #byte_F79D0@PAGE
000d0e58: MOV             X3, X0
000d0e5c: ADD             X2, X2, #byte_F79D0@PAGEOFF
000d0e60: MOV             X0, X20
000d0e64: MOV             X1, X19
000d0e68: BL              sub_13D7C
000d0e6c: MOV             X0, X20
000d0e70: MOV             X1, X21
000d0e74: BL              sub_43720
000d0e78: ADRP            X2, #byte_F79D4@PAGE
000d0e7c: MOV             X3, X0
000d0e80: ADD             X2, X2, #byte_F79D4@PAGEOFF
000d0e84: MOV             X0, X20
000d0e88: MOV             X1, X19
000d0e8c: BL              sub_13D7C
000d0e90: MOV             X0, X20
000d0e94: MOV             X1, X21
000d0e98: BL              sub_4398C
000d0e9c: ADRP            X2, #byte_F79D8@PAGE
000d0ea0: MOV             X3, X0
000d0ea4: ADD             X2, X2, #byte_F79D8@PAGEOFF
000d0ea8: MOV             X0, X20
000d0eac: MOV             X1, X19
000d0eb0: BL              sub_13D7C
000d0eb4: MOV             X0, X20
000d0eb8: MOV             X1, X21
000d0ebc: BL              sub_43C18
000d0ec0: ADRP            X2, #byte_F79DC@PAGE
000d0ec4: MOV             X3, X0
000d0ec8: ADD             X2, X2, #byte_F79DC@PAGEOFF
000d0ecc: MOV             X0, X20
000d0ed0: MOV             X1, X19
000d0ed4: BL              sub_13D7C
000d0ed8: ADRL            X1, xmmword_F79E0
000d0ee0: MOV             X0, X20
000d0ee4: BL              sub_43EB0
000d0ee8: ADRP            X2, #byte_F79F4@PAGE
000d0eec: MOV             X3, X0
000d0ef0: ADD             X2, X2, #byte_F79F4@PAGEOFF
000d0ef4: MOV             X0, X20
000d0ef8: MOV             X1, X19
000d0efc: BL              sub_13D7C
000d0f00: ADRL            X1, xmmword_F7A00
000d0f08: MOV             X0, X20
000d0f0c: BL              sub_43EB0
000d0f10: ADRP            X2, #byte_F7A14@PAGE
000d0f14: MOV             X3, X0
000d0f18: ADD             X2, X2, #byte_F7A14@PAGEOFF
000d0f1c: MOV             X0, X20
000d0f20: MOV             X1, X19
000d0f24: BL              sub_13D7C
000d0f28: ADRL            X1, xmmword_F7A20
000d0f30: MOV             X0, X20
000d0f34: BL              sub_43EB0
000d0f38: ADRP            X2, #byte_F7A3C@PAGE
000d0f3c: MOV             X3, X0
000d0f40: ADD             X2, X2, #byte_F7A3C@PAGEOFF
000d0f44: MOV             X0, X20
000d0f48: MOV             X1, X19
000d0f4c: BL              sub_13D7C
000d0f50: MOV             X0, X20
000d0f54: MOV             X1, X21
000d0f58: BL              sub_44820
000d0f5c: ADRP            X2, #byte_F7A40@PAGE
000d0f60: MOV             X3, X0
000d0f64: ADD             X2, X2, #byte_F7A40@PAGEOFF
000d0f68: MOV             X0, X20
000d0f6c: MOV             X1, X19
000d0f70: BL              sub_13D7C
000d0f74: MOV             X0, X20
000d0f78: MOV             X1, X21
000d0f7c: BL              sub_44580
000d0f80: MOV             W1, W0
000d0f84: MOV             X0, X20
000d0f88: BL              sub_12998
000d0f8c: ADRP            X2, #byte_F7A44@PAGE
000d0f90: MOV             X3, X0
000d0f94: ADD             X2, X2, #byte_F7A44@PAGEOFF
000d0f98: MOV             X0, X20
000d0f9c: MOV             X1, X19
000d0fa0: BL              sub_13D7C
000d0fa4: MOV             X0, X20
000d0fa8: MOV             X1, X21
000d0fac: BL              sub_44AC4
000d0fb0: MOV             W26, #0x30DD
000d0fb4: MOV             W23, #0x2C6E
000d0fb8: MOV             W24, #0x7315
000d0fbc: MOV             W28, #0xDCBA
000d0fc0: MOV             W22, #0xDCB9
000d0fc4: MOV             W8, #0x30DE
000d0fc8: MOVK            W26, #0xAB9,LSL#16
000d0fcc: MOVK            W23, #0xF652,LSL#16
000d0fd0: MOVK            W24, #0xBED6,LSL#16
000d0fd4: FMOV            D8, #-1.0
000d0fd8: MOVK            W28, #0x395F,LSL#16
000d0fdc: MOVK            W22, #0x395F,LSL#16
000d0fe0: MOVK            W8, #0xAB9,LSL#16
000d0fe4: STR             X0, [SP,#0x80+var_78]
000d0fe8: B               loc_D1040
000d0fec: ADRP            X24, #(aGeePclose+0xA)@PAGE; ""
000d0ff0: ADRP            X1, #byte_F7B68@PAGE
000d0ff4: ADD             X24, X24, #(aGeePclose+0xA)@PAGEOFF; ""
000d0ff8: MOV             X0, X19
000d0ffc: ADD             X1, X1, #byte_F7B68@PAGEOFF
000d1000: MOV             X2, X24
000d1004: BL              sub_13C74
000d1008: ADRP            X1, #a88K@PAGE; ")88\"/K"
000d100c: MOV             X0, X19
000d1010: ADD             X1, X1, #a88K@PAGEOFF; ")88\"/K"
000d1014: MOV             X2, X24
000d1018: MOV             W24, #0xBED67315
000d1020: BL              sub_13C74
000d1024: ADRP            X1, #byte_F7B78@PAGE
000d1028: MOV             X0, X19
000d102c: ADD             X1, X1, #byte_F7B78@PAGEOFF
000d1030: MOV             V0.16B, V8.16B
000d1034: BL              sub_BAB9C
000d1038: MOV             W8, #0x13DFAA7D
000d1040: CMP             W8, W26
000d1044: B.LE            loc_D1158
000d1048: CMP             W8, W22
000d104c: B.GT            loc_D11F8
000d1050: MOV             W9, #0x2C2F4B1D
000d1058: CMP             W8, W9
000d105c: B.LE            loc_D1424
000d1060: MOV             W9, #0x2C2F4B1E
000d1068: CMP             W8, W9
000d106c: B.EQ            loc_D1448
000d1070: MOV             W9, #0x331B69C0
000d1078: CMP             W8, W9
000d107c: B.NE            loc_D1040
000d1080: LDR             X8, [X20]
000d1084: ADRP            X1, #byte_F7A78@PAGE
000d1088: MOV             X0, X20
000d108c: ADD             X1, X1, #byte_F7A78@PAGEOFF
000d1090: LDR             X8, [X8,#0x538]
000d1094: BLR             X8
000d1098: LDR             X8, [SP,#0x80+var_78]
000d109c: MOV             X27, X0
000d10a0: MOV             X0, X20
000d10a4: MOV             X3, X27
000d10a8: ADD             X8, X8, #8
000d10ac: STR             X8, [SP,#0x80+var_68]
000d10b0: LDR             X8, [SP,#0x80+var_68]
000d10b4: LDR             X1, [X8]
000d10b8: LDR             X2, [SP,#0x80+var_70]
000d10bc: BL              sub_45430
000d10c0: STR             W0, [SP,#0x80+var_58]
000d10c4: LDR             X8, [X20]
000d10c8: MOV             X0, X20
000d10cc: MOV             X1, X27
000d10d0: LDR             X8, [X8,#0xB8]
000d10d4: BLR             X8
000d10d8: LDR             X8, [X20]
000d10dc: ADRP            X1, #byte_F7A80@PAGE
000d10e0: MOV             X0, X20
000d10e4: ADD             X1, X1, #byte_F7A80@PAGEOFF
000d10e8: LDR             X8, [X8,#0x538]
000d10ec: BLR             X8
000d10f0: LDR             X8, [SP,#0x80+var_68]
000d10f4: MOV             X27, X0
000d10f8: MOV             X0, X20
000d10fc: MOV             X3, X27
000d1100: LDR             X1, [X8]
000d1104: LDR             X2, [SP,#0x80+var_70]
000d1108: BL              sub_45430
000d110c: STR             W0, [SP,#0x80+var_54]
000d1110: LDR             X8, [X20]
000d1114: MOV             X0, X20
000d1118: MOV             X1, X27
000d111c: MOV             W27, #0xD24C
000d1120: LDR             X8, [X8,#0xB8]
000d1124: MOVK            W27, #0xF75D,LSL#16
000d1128: BLR             X8
000d112c: LDR             W8, [SP,#0x80+var_58]
000d1130: LDR             W9, [SP,#0x80+var_54]
000d1134: MOV             W25, #0xFFFFFFFF
000d1138: CMN             W9, #1
000d113c: CCMP            W8, W25, #4, NE
000d1140: MOV             W8, #0x4E4B
000d1144: MOV             W9, #0x4B1E
000d1148: MOVK            W8, #0x65D3,LSL#16
000d114c: MOVK            W9, #0x2C2F,LSL#16
000d1150: CSEL            W8, W8, W9, EQ
000d1154: B               loc_D1040
000d1158: CMP             W8, W23
000d115c: B.GT            loc_D13B8
000d1160: CMP             W8, W24
000d1164: B.EQ            loc_D0FEC
000d1168: MOV             W9, #0xD4029FA2
000d1170: CMP             W8, W9
000d1174: B.EQ            loc_D1468
000d1178: MOV             W9, #0xE2811316
000d1180: CMP             W8, W9
000d1184: B.NE            loc_D1040
000d1188: ADRP            X1, #byte_F7A94@PAGE
000d118c: MOV             X0, X19
000d1190: ADD             X1, X1, #byte_F7A94@PAGEOFF
000d1194: MOV             V0.16B, V8.16B
000d1198: BL              sub_BAB9C
000d119c: ADRP            X1, #byte_F7A88@PAGE
000d11a0: MOV             X0, X19
000d11a4: ADD             X1, X1, #byte_F7A88@PAGEOFF
000d11a8: MOV             V0.16B, V8.16B
000d11ac: BL              sub_BAB9C
000d11b0: ADRP            X1, #byte_F7AA0@PAGE
000d11b4: MOV             X0, X19
000d11b8: ADD             X1, X1, #byte_F7AA0@PAGEOFF
000d11bc: MOV             V0.16B, V8.16B
000d11c0: BL              sub_BAB9C
000d11c4: ADRP            X1, #aM@PAGE; "%(,M"
000d11c8: MOV             X0, X19
000d11cc: ADD             X1, X1, #aM@PAGEOFF; "%(,M"
000d11d0: MOV             V0.16B, V8.16B
000d11d4: BL              sub_BAB9C
000d11d8: ADRP            X1, #byte_F7AB8@PAGE
000d11dc: MOV             X0, X19
000d11e0: ADD             X1, X1, #byte_F7AB8@PAGEOFF
000d11e4: MOV             V0.16B, V8.16B
000d11e8: BL              sub_BAB9C
000d11ec: MOV             W8, #0xF6522C6F
000d11f4: B               loc_D1040
000d11f8: CMP             W8, W28
000d11fc: B.EQ            loc_D14AC
000d1200: MOV             W9, #0x55AB7286
000d1208: CMP             W8, W9
000d120c: B.EQ            loc_D1524
000d1210: MOV             W9, #0x65D34E4B
000d1218: CMP             W8, W9
000d121c: B.NE            loc_D1040
000d1220: ADRP            X1, #byte_F7A88@PAGE
000d1224: SCVTF           D0, W25
000d1228: MOV             X0, X19
000d122c: ADD             X1, X1, #byte_F7A88@PAGEOFF
000d1230: BL              sub_BAB9C
000d1234: LDR             X8, [X20]
000d1238: ADRP            X1, #byte_F7A8C@PAGE
000d123c: MOV             X0, X20
000d1240: ADD             X1, X1, #byte_F7A8C@PAGEOFF
000d1244: LDR             X8, [X8,#0x538]
000d1248: BLR             X8
000d124c: LDR             X8, [SP,#0x80+var_68]
000d1250: MOV             X27, X0
000d1254: MOV             X0, X20
000d1258: MOV             X3, X27
000d125c: LDR             X1, [X8]
000d1260: LDR             X2, [SP,#0x80+var_70]
000d1264: BL              sub_45430
000d1268: ADRP            X1, #byte_F7A94@PAGE
000d126c: SCVTF           D0, W0
000d1270: MOV             X0, X19
000d1274: ADD             X1, X1, #byte_F7A94@PAGEOFF
000d1278: BL              sub_BAB9C
000d127c: LDR             X8, [X20]
000d1280: MOV             X0, X20
000d1284: MOV             X1, X27
000d1288: LDR             X8, [X8,#0xB8]
000d128c: BLR             X8
000d1290: LDR             X8, [X20]
000d1294: ADRP            X1, #qword_F7A98@PAGE
000d1298: MOV             X0, X20
000d129c: ADD             X1, X1, #qword_F7A98@PAGEOFF
000d12a0: LDR             X8, [X8,#0x538]
000d12a4: BLR             X8
000d12a8: LDR             X8, [SP,#0x80+var_68]
000d12ac: MOV             X27, X0
000d12b0: MOV             X0, X20
000d12b4: MOV             X3, X27
000d12b8: LDR             X1, [X8]
000d12bc: LDR             X2, [SP,#0x80+var_70]
000d12c0: BL              sub_45430
000d12c4: ADRP            X1, #byte_F7AA0@PAGE
000d12c8: SCVTF           D0, W0
000d12cc: MOV             X0, X19
000d12d0: ADD             X1, X1, #byte_F7AA0@PAGEOFF
000d12d4: BL              sub_BAB9C
000d12d8: LDR             X8, [X20]
000d12dc: MOV             X0, X20
000d12e0: MOV             X1, X27
000d12e4: LDR             X8, [X8,#0xB8]
000d12e8: BLR             X8
000d12ec: LDR             X8, [X20]
000d12f0: ADRP            X1, #byte_F7AA4@PAGE
000d12f4: MOV             X0, X20
000d12f8: ADD             X1, X1, #byte_F7AA4@PAGEOFF
000d12fc: LDR             X8, [X8,#0x538]
000d1300: BLR             X8
000d1304: LDR             X8, [SP,#0x80+var_68]
000d1308: MOV             X27, X0
000d130c: MOV             X0, X20
000d1310: MOV             X3, X27
000d1314: LDR             X1, [X8]
000d1318: LDR             X2, [SP,#0x80+var_70]
000d131c: BL              sub_45430
000d1320: ADRP            X1, #aM@PAGE; "%(,M"
000d1324: SCVTF           D0, W0
000d1328: MOV             X0, X19
000d132c: ADD             X1, X1, #aM@PAGEOFF; "%(,M"
000d1330: BL              sub_BAB9C
000d1334: LDR             X8, [X20]
000d1338: MOV             X0, X20
000d133c: MOV             X1, X27
000d1340: LDR             X8, [X8,#0xB8]
000d1344: BLR             X8
000d1348: LDR             X8, [X20]
000d134c: ADRP            X1, #(aM+4)@PAGE; ""
000d1350: MOV             X0, X20
000d1354: ADD             X1, X1, #(aM+4)@PAGEOFF; ""
000d1358: LDR             X8, [X8,#0x538]
000d135c: BLR             X8
000d1360: LDR             X8, [SP,#0x80+var_68]
000d1364: MOV             X27, X0
000d1368: MOV             X0, X20
000d136c: MOV             X3, X27
000d1370: LDR             X1, [X8]
000d1374: LDR             X2, [SP,#0x80+var_70]
000d1378: BL              sub_45430
000d137c: ADRP            X1, #byte_F7AB8@PAGE
000d1380: SCVTF           D0, W0
000d1384: MOV             X0, X19
000d1388: ADD             X1, X1, #byte_F7AB8@PAGEOFF
000d138c: BL              sub_BAB9C
000d1390: LDR             X8, [X20]
000d1394: MOV             X0, X20
000d1398: MOV             X1, X27
000d139c: MOV             W27, #0xD24C
000d13a0: LDR             X8, [X8,#0xB8]
000d13a4: MOVK            W27, #0xF75D,LSL#16
000d13a8: BLR             X8
000d13ac: MOV             W8, #0x55AB7286
000d13b4: B               loc_D1040
000d13b8: MOV             W9, #0xF6522C6F
000d13c0: CMP             W8, W9
000d13c4: B.EQ            loc_D153C
000d13c8: CMP             W8, W27
000d13cc: B.EQ            loc_D166C
000d13d0: MOV             W9, #0x20F7FBA
000d13d8: CMP             W8, W9
000d13dc: B.NE            loc_D1040
000d13e0: ADRP            X24, #(aGeePclose+0xA)@PAGE; ""
000d13e4: ADRP            X1, #byte_F7B3C@PAGE
000d13e8: ADD             X24, X24, #(aGeePclose+0xA)@PAGEOFF; ""
000d13ec: MOV             X0, X19
000d13f0: ADD             X1, X1, #byte_F7B3C@PAGEOFF
000d13f4: MOV             X2, X24
000d13f8: BL              sub_13C74
000d13fc: ADRP            X1, #byte_F7B40@PAGE
000d1400: MOV             X0, X19
000d1404: ADD             X1, X1, #byte_F7B40@PAGEOFF
000d1408: MOV             X2, X24
000d140c: MOV             W24, #0xBED67315
000d1414: BL              sub_13C74
000d1418: MOV             W8, #0xF75DD24C
000d1420: B               loc_D1040
000d1424: MOV             W9, #0xAB930DE
000d142c: CMP             W8, W9
000d1430: B.EQ            loc_D177C
000d1434: MOV             W9, #0x13DFAA7D
000d143c: CMP             W8, W9
000d1440: B.NE            loc_D1040
000d1444: B               loc_D179C
000d1448: LDR             W8, [SP,#0x80+var_58]
000d144c: LDR             W9, [SP,#0x80+var_54]
000d1450: MOV             W10, #0x64 ; 'd'
000d1454: MUL             W8, W8, W10
000d1458: SDIV            W25, W8, W9
000d145c: MOV             W8, #0x65D34E4B
000d1464: B               loc_D1040
000d1468: LDR             X8, [SP,#0x80+var_78]
000d146c: LDR             X9, [X20]
000d1470: ADRP            X2, #qword_F7A48@PAGE
000d1474: ADRP            X3, #xmmword_F7A60@PAGE
000d1478: LDR             X1, [X8]
000d147c: LDR             X8, [X9,#0x108]
000d1480: MOV             X0, X20
000d1484: ADD             X2, X2, #qword_F7A48@PAGEOFF
000d1488: ADD             X3, X3, #xmmword_F7A60@PAGEOFF
000d148c: BLR             X8
000d1490: STR             X0, [SP,#0x80+var_70]
000d1494: LDR             X8, [SP,#0x80+var_70]
000d1498: CMP             X8, #0
000d149c: MOV             W8, #0x331B69C0
000d14a4: CSEL            W8, W28, W8, EQ
000d14a8: B               loc_D1040
000d14ac: MOV             X0, X20
000d14b0: BL              sub_B6D0
000d14b4: ADRP            X1, #byte_F7A94@PAGE
000d14b8: MOV             X0, X19
000d14bc: ADD             X1, X1, #byte_F7A94@PAGEOFF
000d14c0: MOV             V0.16B, V8.16B
000d14c4: BL              sub_BAB9C
000d14c8: ADRP            X1, #byte_F7A88@PAGE
000d14cc: MOV             X0, X19
000d14d0: ADD             X1, X1, #byte_F7A88@PAGEOFF
000d14d4: MOV             V0.16B, V8.16B
000d14d8: BL              sub_BAB9C
000d14dc: ADRP            X1, #byte_F7AA0@PAGE
000d14e0: MOV             X0, X19
000d14e4: ADD             X1, X1, #byte_F7AA0@PAGEOFF
000d14e8: MOV             V0.16B, V8.16B
000d14ec: BL              sub_BAB9C
000d14f0: ADRP            X1, #aM@PAGE; "%(,M"
000d14f4: MOV             X0, X19
000d14f8: ADD             X1, X1, #aM@PAGEOFF; "%(,M"
000d14fc: MOV             V0.16B, V8.16B
000d1500: BL              sub_BAB9C
000d1504: ADRP            X1, #byte_F7AB8@PAGE
000d1508: MOV             X0, X19
000d150c: ADD             X1, X1, #byte_F7AB8@PAGEOFF
000d1510: MOV             V0.16B, V8.16B
000d1514: BL              sub_BAB9C
000d1518: MOV             W8, #0x55AB7286
000d1520: B               loc_D1040
000d1524: LDR             X1, [SP,#0x80+var_78]
000d1528: MOV             X0, X20
000d152c: BL              sub_10C30
000d1530: MOV             W8, #0xF6522C6F
000d1538: B               loc_D1040
000d153c: ADRP            X1, #qword_F7AC0@PAGE
000d1540: MOV             X0, X20
000d1544: ADD             X1, X1, #qword_F7AC0@PAGEOFF
000d1548: BL              sub_45438
000d154c: ADRP            X2, #byte_F7ACC@PAGE
000d1550: MOV             X3, X0
000d1554: MOV             X0, X20
000d1558: MOV             X1, X19
000d155c: ADD             X2, X2, #byte_F7ACC@PAGEOFF
000d1560: BL              sub_13D7C
000d1564: ADRP            X1, #qword_F7AD0@PAGE
000d1568: MOV             X0, X20
000d156c: ADD             X1, X1, #qword_F7AD0@PAGEOFF
000d1570: BL              sub_45438
000d1574: ADRP            X2, #byte_F7ADC@PAGE
000d1578: MOV             X3, X0
000d157c: MOV             X0, X20
000d1580: MOV             X1, X19
000d1584: ADD             X2, X2, #byte_F7ADC@PAGEOFF
000d1588: BL              sub_13D7C
000d158c: ADRP            X1, #qword_F7AE8@PAGE
000d1590: MOV             X0, X20
000d1594: ADD             X1, X1, #qword_F7AE8@PAGEOFF
000d1598: MOV             X2, X21
000d159c: BL              sub_458EC
000d15a0: ADRP            X1, #byte_F7AF4@PAGE
000d15a4: SCVTF           D0, W0
000d15a8: MOV             X0, X19
000d15ac: ADD             X1, X1, #byte_F7AF4@PAGEOFF
000d15b0: BL              sub_BAB9C
000d15b4: ADRP            X1, #qword_F7AF8@PAGE
000d15b8: MOV             X0, X20
000d15bc: ADD             X1, X1, #qword_F7AF8@PAGEOFF
000d15c0: MOV             X2, X21
000d15c4: BL              sub_458EC
000d15c8: ADRP            X1, #byte_F7B08@PAGE
000d15cc: SCVTF           D0, W0
000d15d0: MOV             X0, X19
000d15d4: ADD             X1, X1, #byte_F7B08@PAGEOFF
000d15d8: BL              sub_BAB9C
000d15dc: MOV             X0, X20
000d15e0: BL              sub_46778
000d15e4: ADRP            X1, #byte_F7B0C@PAGE
000d15e8: SCVTF           D0, X0
000d15ec: MOV             X0, X19
000d15f0: ADD             X1, X1, #byte_F7B0C@PAGEOFF
000d15f4: BL              sub_BAB9C
000d15f8: ADRP            X2, #xmmword_F7B10@PAGE
000d15fc: MOV             X0, X20
000d1600: MOV             X1, X21
000d1604: ADD             X2, X2, #xmmword_F7B10@PAGEOFF
000d1608: BL              sub_EE00
000d160c: ADRP            X1, #byte_F7B24@PAGE
000d1610: SCVTF           D0, W0
000d1614: MOV             X0, X19
000d1618: ADD             X1, X1, #byte_F7B24@PAGEOFF
000d161c: BL              sub_BAB9C
000d1620: ADRP            X2, #qword_F7B28@PAGE
000d1624: MOV             X0, X20
000d1628: MOV             X1, X21
000d162c: ADD             X2, X2, #qword_F7B28@PAGEOFF
000d1630: BL              sub_4693C
000d1634: ADRP            X1, #byte_F7B38@PAGE
000d1638: FCVT            D0, S0
000d163c: MOV             X0, X19
000d1640: ADD             X1, X1, #byte_F7B38@PAGEOFF
000d1644: BL              sub_BAB9C
000d1648: MOV             X0, X20
000d164c: MOV             X1, X21
000d1650: MOV             X2, X19
000d1654: BL              sub_4733C
000d1658: MOV             W8, #0x7FBA
000d165c: CMN             W0, #1
000d1660: MOVK            W8, #0x20F,LSL#16
000d1664: CSEL            W8, W8, W27, EQ
000d1668: B               loc_D1040
000d166c: MOV             X0, X20
000d1670: MOV             X1, X21
000d1674: BL              sub_48A34
000d1678: ADRP            X1, #byte_F7B44@PAGE
000d167c: MOV             X0, X19
000d1680: ADD             X1, X1, #byte_F7B44@PAGEOFF
000d1684: BL              sub_BAB9C
000d1688: MOV             X0, X20
000d168c: MOV             X1, X21
000d1690: BL              sub_499EC
000d1694: ADRP            X2, #byte_F7B48@PAGE
000d1698: MOV             X3, X0
000d169c: MOV             X0, X20
000d16a0: MOV             X1, X19
000d16a4: ADD             X2, X2, #byte_F7B48@PAGEOFF
000d16a8: BL              sub_13D7C
000d16ac: MOV             X0, X19
000d16b0: BL              sub_1F6AC
000d16b4: BL              sub_4AE70
000d16b8: ADRP            X1, #aQvHzs@PAGE; "QV_%hzs\t@\\/"
000d16bc: UCVTF           D0, X0
000d16c0: MOV             X0, X19
000d16c4: ADD             X1, X1, #aQvHzs@PAGEOFF; "QV_%hzs\t@\\/"
000d16c8: BL              sub_BAB9C
000d16cc: BL              sub_4AF54
000d16d0: ADRP            X1, #(aQvHzs+4)@PAGE; "hzs\t@\\/"
000d16d4: UCVTF           D0, X0
000d16d8: MOV             X0, X19
000d16dc: ADD             X1, X1, #(aQvHzs+4)@PAGEOFF; "hzs\t@\\/"
000d16e0: BL              sub_BAB9C
000d16e4: ADRP            X1, #(aQvHzs+8)@PAGE; "@\\/"
000d16e8: ADRP            X2, #qword_F7B58@PAGE
000d16ec: MOV             X0, X19
000d16f0: ADD             X1, X1, #(aQvHzs+8)@PAGEOFF; "@\\/"
000d16f4: ADD             X2, X2, #qword_F7B58@PAGEOFF
000d16f8: BL              sub_13C74
000d16fc: MOV             X0, X20
000d1700: MOV             X1, X21
000d1704: MOV             X2, X19
000d1708: BL              sub_DD31C
000d170c: MOV             X0, X20
000d1710: MOV             X1, X21
000d1714: BL              sub_1FA30
000d1718: ADRP            X1, #byte_F7B60@PAGE
000d171c: SCVTF           D0, W0
000d1720: MOV             X0, X19
000d1724: ADD             X1, X1, #byte_F7B60@PAGEOFF
000d1728: BL              sub_BAB9C
000d172c: MOV             X0, X20
000d1730: MOV             X1, X19
000d1734: BL              sub_49278
000d1738: MOV             X0, X20
000d173c: MOV             X1, X21
000d1740: BL              sub_4ABCC
000d1744: ADRP            X1, #byte_F7B64@PAGE
000d1748: SCVTF           D0, W0
000d174c: MOV             X0, X19
000d1750: ADD             X1, X1, #byte_F7B64@PAGEOFF
000d1754: BL              sub_BAB9C
000d1758: MOV             X0, X20
000d175c: MOV             X1, X21
000d1760: MOV             X2, X19
000d1764: BL              sub_48034
000d1768: MOV             W8, #0xAA7D
000d176c: CMN             W0, #1
000d1770: MOVK            W8, #0x13DF,LSL#16
000d1774: CSEL            W8, W24, W8, EQ
000d1778: B               loc_D1040
000d177c: LDR             X8, [SP,#0x80+var_78]
000d1780: MOV             W9, #0xE2811316
000d1788: CMP             X8, #0
000d178c: MOV             W8, #0xD4029FA2
000d1794: CSEL            W8, W9, W8, EQ
000d1798: B               loc_D1040
000d179c: MOV             X0, X20
000d17a0: MOV             X1, X21
000d17a4: BL              sub_4B03C
000d17a8: ADRP            X1, #byte_F7B80@PAGE
000d17ac: SCVTF           D0, W0
000d17b0: ADD             X1, X1, #byte_F7B80@PAGEOFF
000d17b4: MOV             X0, X19
000d17b8: BL              sub_BAB9C
000d17bc: ADRL            X1, xmmword_F7B90
000d17c4: MOV             X0, X20
000d17c8: BL              sub_43EB0
000d17cc: MOV             X3, X0
000d17d0: MOV             X0, X20
000d17d4: MOV             X1, X19
000d17d8: LDP             X29, X30, [SP,#0x80+var_s0]
000d17dc: LDP             X20, X19, [SP,#0x80+var_10]
000d17e0: LDP             X22, X21, [SP,#0x80+var_20]
000d17e4: LDP             X24, X23, [SP,#0x80+var_30]
000d17e8: LDP             X26, X25, [SP,#0x80+var_40]
000d17ec: LDP             X28, X27, [SP,#0x80+var_50]
000d17f0: LDR             D8, [SP,#0x80+var_60]
000d17f4: ADRL            X2, byte_F7BAC
000d17fc: ADD             SP, SP, #0x90
000d1800: B               sub_13D7C