000d16a0: MOV             X1, X19
000d16a4: ADD             X2, X2, #byte_F7B48@PAGEOFF ; runtime: 0xf7b48='rad'
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
000d16e8: ADRP            X2, #qword_F7B58@PAGE ; runtime: 0xf7b58='android'
000d16ec: MOV             X0, X19
000d16f0: ADD             X1, X1, #(aQvHzs+8)@PAGEOFF; "@\\/"
000d16f4: ADD             X2, X2, #qword_F7B58@PAGEOFF ; runtime: 0xf7b58='android'
000d16f8: BL              sub_13C74
000d16fc: MOV             X0, X20
000d1700: MOV             X1, X21
000d1704: MOV             X2, X19
000d1708: BL              sub_DD31C
000d170c: MOV             X0, X20
000d1710: MOV             X1, X21
000d1714: BL              sub_1FA30
000d1718: ADRP            X1, #byte_F7B60@PAGE ; runtime: 0xf7b60='ism'
000d171c: SCVTF           D0, W0
000d1720: MOV             X0, X19
000d1724: ADD             X1, X1, #byte_F7B60@PAGEOFF ; runtime: 0xf7b60='ism'
000d1728: BL              sub_BAB9C
000d172c: MOV             X0, X20
000d1730: MOV             X1, X19
000d1734: BL              sub_49278
000d1738: MOV             X0, X20
000d173c: MOV             X1, X21
000d1740: BL              sub_4ABCC
000d1744: ADRP            X1, #byte_F7B64@PAGE ; runtime: 0xf7b64='sim'
000d1748: SCVTF           D0, W0
000d174c: MOV             X0, X19
000d1750: ADD             X1, X1, #byte_F7B64@PAGEOFF ; runtime: 0xf7b64='sim'
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
000d1784: MOV             W9, #0xE2811316
000d1788: CMP             X8, #0
000d178c: MOV             W8, #0xD4029FA2
000d1790: MOV             W8, #0xD4029FA2
000d1794: CSEL            W8, W9, W8, EQ
000d1798: B               loc_D1040
000d179c: MOV             X0, X20
000d17a0: MOV             X1, X21
000d17a4: BL              sub_4B03C
000d17a8: ADRP            X1, #byte_F7B80@PAGE ; runtime: 0xf7b80='gpa'
000d17ac: SCVTF           D0, W0