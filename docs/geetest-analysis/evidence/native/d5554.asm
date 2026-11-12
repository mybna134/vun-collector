000d5554: STP             X28, X27, [SP,#-0x10+var_50]!
000d5558: STP             X26, X25, [SP,#0x50+var_40]
000d555c: STP             X24, X23, [SP,#0x50+var_30]
000d5560: STP             X22, X21, [SP,#0x50+var_20]
000d5564: STP             X20, X19, [SP,#0x50+var_10]
000d5568: STP             X29, X30, [SP,#0x50+var_s0]
000d556c: ADD             X29, SP, #0x50
000d5570: SUB             SP, SP, #0xA0
000d5574: STUR            X0, [X29,#var_D8]
000d5578: MRS             X8, TPIDR_EL0
000d557c: STUR            X8, [X29,#var_E8]
000d5580: LDR             X8, [X8,#0x28]
000d5584: ADRP            X10, #xmmword_EA4EA@PAGE
000d5588: SUB             X9, X29, #-var_68
000d558c: ADD             X10, X10, #xmmword_EA4EA@PAGEOFF
000d5590: LDR             Q0, [X10]
000d5594: STUR            X8, [X29,#var_58]
000d5598: STUR            X9, [X29,#var_D0]
000d559c: LDUR            X8, [X29,#var_D0]
000d55a0: LDUR            X8, [X29,#var_D0]
000d55a4: SUB             X19, X29, #-var_78
000d55a8: ADRP            X0, #aA7AXzaN@PAGE; "a=7=:+#a\"',xza\"',#+*'/ *%`=!N"
000d55ac: MOV             W26, #0x3962
000d55b0: STR             Q0, [X8]
000d55b4: STUR            X19, [X29,#var_C8]
000d55b8: LDUR            X8, [X29,#var_C8]
000d55bc: LDUR            X8, [X29,#var_C8]
000d55c0: MOV             W27, #0x21B1
000d55c4: MOV             W23, #0xD82F
000d55c8: ADD             X0, X0, #aA7AXzaN@PAGEOFF; "a=7=:+#a\"',xza\"',#+*'/ *%`=!N"
000d55cc: MOV             W1, #2; mode
000d55d0: MOVK            W26, #0xD471,LSL#16
000d55d4: MOVK            W27, #0x7231,LSL#16
000d55d8: MOVK            W23, #0xB66,LSL#16
000d55dc: STP             XZR, XZR, [X8]
000d55e0: BL              j_.dlopen
000d55e4: ADD             X8, X19, #8
000d55e8: STUR            X8, [X29,#var_E0]
000d55ec: MOV             W20, #0x48B3
000d55f0: MOV             W22, #0xDD6F
000d55f4: MOV             W24, #0x3137
000d55f8: MOV             W25, #0xDD70
000d55fc: MOV             W28, #0xC18F
000d5600: MOV             W21, #0x21B0
000d5604: MOV             W19, #0x92CE
000d5608: MOV             W8, #0xB4FE
000d560c: MOVK            W20, #0x428C,LSL#16
000d5610: MOVK            W22, #0x5D1,LSL#16
000d5614: MOVK            W24, #0x91E2,LSL#16
000d5618: MOVK            W25, #0x5D1,LSL#16
000d561c: MOVK            W28, #0x789E,LSL#16
000d5620: MOVK            W21, #0x7231,LSL#16
000d5624: MOVK            W19, #0x6BBB,LSL#16
000d5628: MOVK            W8, #0x4957,LSL#16
000d562c: STUR            X0, [X29,#var_C0]
000d5630: B               loc_D5640
000d5634: BL              sub_13C74
000d5638: MOV             W8, #0x723121B1
000d5640: CMP             W8, W20
000d5644: B.LE            loc_D5684
000d5648: CMP             W8, W21
000d564c: B.GT            loc_D5710
000d5650: CMP             W8, W19
000d5654: B.LE            loc_D5778
000d5658: MOV             W9, #0x6BBB92CF
000d5660: CMP             W8, W9
000d5664: B.EQ            loc_D579C
000d5668: MOV             W9, #0x6E8E3C43
000d5670: CMP             W8, W9
000d5674: B.NE            loc_D5640
000d5678: MOV             W8, #0xB66D82F
000d5680: B               loc_D5640
000d5684: CMP             W8, W22
000d5688: B.GT            loc_D56D0
000d568c: CMP             W8, W24
000d5690: B.EQ            loc_D5838
000d5694: CMP             W8, W26
000d5698: B.EQ            loc_D57CC
000d569c: MOV             W9, #0xE8CA1516
000d56a4: CMP             W8, W9
000d56a8: B.NE            loc_D5640
000d56ac: LDUR            X2, [X29,#var_C8]
000d56b0: LDUR            X8, [X29,#var_B0]
000d56b4: LDUR            X0, [X29,#var_A8]
000d56b8: ADRL            X1, aUtgxrtdXDtxu1; "UTGXRTd_X@DTxU1"
000d56c0: BLR             X8
000d56c4: MOV             W8, #0x6E8E3C43
000d56cc: B               loc_D5640
000d56d0: CMP             W8, W25
000d56d4: B.EQ            loc_D589C
000d56d8: CMP             W8, W23
000d56dc: B.EQ            loc_D57E8
000d56e0: MOV             W9, #0x2E1EB5B4
000d56e8: CMP             W8, W9
000d56ec: B.NE            loc_D5640
000d56f0: LDUR            X8, [X29,#var_80]
000d56f4: LDUR            X9, [X29,#var_88]
000d56f8: ADRL            X1, aBfk560r; "BFK/5&\r60R"
000d5700: STRB            WZR, [X9,X8]
000d5704: LDUR            X2, [X29,#var_88]
000d5708: LDUR            X0, [X29,#var_D8]
000d570c: B               loc_D5634
000d5710: CMP             W8, W27
000d5714: B.EQ            loc_D58B4
000d5718: CMP             W8, W28
000d571c: B.EQ            loc_D57FC
000d5720: MOV             W9, #0x7EF621EC
000d5728: CMP             W8, W9
000d572c: B.NE            loc_D5640
000d5730: LDUR            X0, [X29,#var_C0]; handle
000d5734: ADRL            X1, xmmword_F80E0; name
000d573c: BL              j_.dlsym
000d5740: STUR            X0, [X29,#var_B8]
000d5744: LDUR            X0, [X29,#var_C0]; handle
000d5748: ADRL            X1, xmmword_F8100; name
000d5750: BL              j_.dlsym
000d5754: STUR            X0, [X29,#var_B0]
000d5758: LDUR            X8, [X29,#var_B8]
000d575c: LDUR            X9, [X29,#var_B0]
000d5760: CMP             X9, #0
000d5764: CCMP            X8, #0, #4, NE
000d5768: MOV             W8, #0x6BBB92CF
000d5770: CSEL            W8, W23, W8, EQ
000d5774: B               loc_D5640
000d5778: MOV             W9, #0x4957B4FE
000d5780: CMP             W8, W9
000d5784: B.EQ            loc_D5820
000d5788: MOV             W9, #0x428C48B4
000d5790: CMP             W8, W9
000d5794: B.NE            loc_D5640
000d5798: B               loc_D58CC
000d579c: LDUR            X8, [X29,#var_B8]
000d57a0: SUB             X0, X29, #-var_68
000d57a4: BLR             X8
000d57a8: STUR            X0, [X29,#var_A8]
000d57ac: LDUR            X8, [X29,#var_A8]
000d57b0: MOV             W9, #0xE8CA1516
000d57b8: CMP             X8, #0
000d57bc: MOV             W8, #0x6E8E3C43
000d57c4: CSEL            W8, W8, W9, EQ
000d57c8: B               loc_D5640
000d57cc: LDUR            X8, [X29,#var_E0]
000d57d0: STUR            X8, [X29,#var_A0]
000d57d4: LDUR            X8, [X29,#var_A0]
000d57d8: LDR             X8, [X8]
000d57dc: CMP             X8, #0
000d57e0: CSEL            W8, W28, W24, EQ
000d57e4: B               loc_D5640
000d57e8: LDUR            X0, [X29,#var_C0]; handle
000d57ec: BL              j_.dlclose
000d57f0: MOV             W8, #0xD4713962
000d57f8: B               loc_D5640
000d57fc: LDUR            X0, [X29,#var_D8]
000d5800: ADRP            X1, #aBfk560r@PAGE; "BFK/5&\r60R"
000d5804: ADRP            X2, #(aGeePclose+0xA)@PAGE; ""
000d5808: ADD             X1, X1, #aBfk560r@PAGEOFF; "BFK/5&\r60R"
000d580c: ADD             X2, X2, #(aGeePclose+0xA)@PAGEOFF; ""
000d5810: BL              sub_13C74
000d5814: MOV             W8, #0x428C48B4
000d581c: B               loc_D5640
000d5820: LDUR            X8, [X29,#var_C0]
000d5824: CMP             X8, #0
000d5828: MOV             W8, #0x7EF621EC
000d5830: CSEL            W8, W26, W8, EQ
000d5834: B               loc_D5640
000d5838: SUB             X9, X29, #-var_80
000d583c: STUR            X9, [X29,#var_98]
000d5840: LDUR            X9, [X29,#var_98]
000d5844: LDUR            X9, [X29,#var_A0]
000d5848: MOV             X8, SP
000d584c: LDR             X9, [X9]
000d5850: STUR            X8, [X29,#var_90]
000d5854: MOV             X8, SP
000d5858: LSL             X1, X9, #1
000d585c: ADD             X9, X1, #0xF
000d5860: AND             X9, X9, #0xFFFFFFFFFFFFFFF0
000d5864: SUB             X8, X8, X9
000d5868: MOV             SP, X8
000d586c: STUR            X8, [X29,#var_88]
000d5870: LDUR            X3, [X29,#var_78]
000d5874: LDUR            X8, [X29,#var_A0]
000d5878: SUB             X2, X29, #-var_80
000d587c: LDR             X4, [X8]
000d5880: LDUR            X0, [X29,#var_88]
000d5884: BL              sub_DED20
000d5888: MOV             W8, #0xB5B4
000d588c: CMP             W0, #0
000d5890: MOVK            W8, #0x2E1E,LSL#16
000d5894: CSEL            W8, W8, W25, EQ
000d5898: B               loc_D5640
000d589c: LDUR            X0, [X29,#var_D8]
000d58a0: ADRP            X1, #aBfk560r@PAGE; "BFK/5&\r60R"
000d58a4: ADRP            X2, #(aGeePclose+0xA)@PAGE; ""
000d58a8: ADD             X1, X1, #aBfk560r@PAGEOFF; "BFK/5&\r60R"
000d58ac: ADD             X2, X2, #(aGeePclose+0xA)@PAGEOFF; ""
000d58b0: B               loc_D5634
000d58b4: LDUR            X8, [X29,#var_90]
000d58b8: MOV             SP, X8
000d58bc: LDUR            X8, [X29,#var_98]
000d58c0: MOV             W8, #0x428C48B4
000d58c8: B               loc_D5640
000d58cc: LDUR            X8, [X29,#var_C8]
000d58d0: LDUR            X8, [X29,#var_D0]
000d58d4: LDUR            X8, [X29,#var_E8]
000d58d8: LDR             X8, [X8,#0x28]
000d58dc: LDUR            X9, [X29,#var_58]
000d58e0: CMP             X8, X9
000d58e4: B.NE            loc_D5908
000d58e8: SUB             SP, X29, #0x50 ; 'P'
000d58ec: LDP             X29, X30, [SP,#0x50+var_s0]
000d58f0: LDP             X20, X19, [SP,#0x50+var_10]
000d58f4: LDP             X22, X21, [SP,#0x50+var_20]
000d58f8: LDP             X24, X23, [SP,#0x50+var_30]
000d58fc: LDP             X26, X25, [SP,#0x50+var_40]
000d5900: LDP             X28, X27, [SP+0x50+var_50],#0x60
000d5904: RET
000d5908: BL              .__stack_chk_fail