000d3278: STP             X28, X27, [SP,#-0x10+var_50]!
000d327c: STP             X26, X25, [SP,#0x50+var_40]
000d3280: STP             X24, X23, [SP,#0x50+var_30]
000d3284: STP             X22, X21, [SP,#0x50+var_20]
000d3288: STP             X20, X19, [SP,#0x50+var_10]
000d328c: STP             X29, X30, [SP,#0x50+var_s0]
000d3290: ADD             X29, SP, #0x50
000d3294: SUB             SP, SP, #0x560
000d3298: MRS             X8, TPIDR_EL0
000d329c: STR             X8, [SP,#0x5B0+var_5A8]
000d32a0: LDR             X8, [X8,#0x28]
000d32a4: MOV             X19, X2
000d32a8: MOV             X21, X1
000d32ac: MOV             X20, X0
000d32b0: STR             X8, [SP,#0x5B0+var_540]
000d32b4: BL              sub_D138
000d32b8: MOV             X0, X20
000d32bc: MOV             X1, X21
000d32c0: BL              sub_14D1C
000d32c4: STR             X0, [SP,#0x5B0+var_538]
000d32c8: LDR             X1, [SP,#0x5B0+var_538]
000d32cc: ADRL            X2, byte_F7BB4
000d32d4: MOV             X0, X20
000d32d8: BL              sub_150EC
000d32dc: STR             X0, [SP,#0x5B0+var_530]
000d32e0: LDR             X1, [SP,#0x5B0+var_538]
000d32e4: ADRL            X2, byte_F7BBC
000d32ec: MOV             X0, X20
000d32f0: BL              sub_150EC
000d32f4: STR             X0, [SP,#0x5B0+var_528]
000d32f8: LDR             X1, [SP,#0x5B0+var_528]
000d32fc: MOV             X0, X20
000d3300: BL              sub_167AC
000d3304: MOV             W25, #0x9760
000d3308: MOV             W27, #0x190C
000d330c: MOV             W23, #0x1231
000d3310: MOV             W26, #0xEB32
000d3314: MOV             W22, #0xCD76
000d3318: MOV             W24, #0x621D
000d331c: MOV             W10, #0x11C
000d3320: MOVK            W25, #0xDE7,LSL#16
000d3324: MOVK            W27, #0xD6F2,LSL#16
000d3328: MOVK            W23, #0xEC77,LSL#16
000d332c: MOVK            W26, #0x3BE9,LSL#16
000d3330: MOVK            W22, #0x220B,LSL#16
000d3334: MOVK            W24, #0x4F8D,LSL#16
000d3338: MOVK            W10, #0x588B,LSL#16
000d333c: STR             W0, [SP,#0x5B0+var_51C]
000d3340: B               loc_D334C
000d3344: CSEL            W10, W8, W9, EQ
000d3348: MOV             X8, X28
000d334c: MOV             W9, W10
000d3350: CMP             W10, W25
000d3354: MOV             X28, X8
000d3358: B.GT            loc_D33E0
000d335c: CMP             W9, W27
000d3360: B.LE            loc_D3648
000d3364: CMP             W9, W23
000d3368: B.LE            loc_D3790
000d336c: MOV             W8, #0x86B8D96
000d3374: CMP             W9, W8
000d3378: B.GT            loc_D38F8
000d337c: MOV             W8, #0xEC771232
000d3384: CMP             W9, W8
000d3388: B.EQ            loc_D3BEC
000d338c: MOV             W8, #0xFD04D376
000d3394: CMP             W9, W8
000d3398: B.EQ            loc_D3EE0
000d339c: MOV             W8, #0x4307493
000d33a4: CMP             W9, W8
000d33a8: MOV             X8, X28
000d33ac: MOV             W10, W9
000d33b0: B.NE            loc_D334C
000d33b4: LDR             X1, [SP,#0x5B0+var_4C0]
000d33b8: MOV             X0, X20
000d33bc: BL              sub_167AC
000d33c0: LDR             X8, [SP,#0x5B0+var_4C0]
000d33c4: MOV             W9, #0x9DEA
000d33c8: CMP             W0, #0
000d33cc: MOVK            W9, #0xA5D1,LSL#16
000d33d0: STR             X8, [SP,#0x5B0+var_550]
000d33d4: MOV             W8, #0x4F8D621E
000d33dc: B               loc_D3344
000d33e0: CMP             W9, W26
000d33e4: B.GT            loc_D34D0
000d33e8: CMP             W9, W22
000d33ec: B.LE            loc_D3868
000d33f0: MOV             W8, #0x33E15D85
000d33f8: CMP             W9, W8
000d33fc: B.LE            loc_D3954
000d3400: MOV             W8, #0x33E15D86
000d3408: CMP             W9, W8
000d340c: B.EQ            loc_D3CBC
000d3410: MOV             W8, #0x352A73F0
000d3418: CMP             W9, W8
000d341c: B.EQ            loc_D401C
000d3420: MOV             W8, #0x38046208
000d3428: CMP             W9, W8
000d342c: MOV             X8, X28
000d3430: MOV             W10, W9
000d3434: B.NE            loc_D334C
000d3438: LDR             X1, [SP,#0x5B0+var_518]
000d343c: LDR             X8, [X20]
000d3440: MOV             X0, X20
000d3444: MOV             X2, XZR
000d3448: LDR             X8, [X8,#0x548]
000d344c: BLR             X8
000d3450: ADD             X24, SP, #0x5B0+var_130
000d3454: STP             X0, X24, [SP,#0x5B0+var_510]
000d3458: LDR             X8, [SP,#0x5B0+var_508]
000d345c: LDR             X8, [SP,#0x5B0+var_508]
000d3460: MOVI            V0.2D, #0
000d3464: ADD             X9, SP, #0x5B0+var_18C
000d3468: ADRP            X0, #xmmword_F7BD0@PAGE
000d346c: STP             Q0, Q0, [X8,#0x60]
000d3470: STP             Q0, Q0, [X8,#0x40]
000d3474: STP             Q0, Q0, [X8,#0x20]
000d3478: STP             Q0, Q0, [X8]
000d347c: STP             X9, X9, [SP,#0x5B0+var_500]
000d3480: LDR             X8, [SP,#0x5B0+var_500]
000d3484: LDR             X8, [SP,#0x5B0+var_500]
000d3488: ADD             X0, X0, #xmmword_F7BD0@PAGEOFF
000d348c: STUR            Q0, [X8,#0x4C]
000d3490: STP             Q0, Q0, [X8,#0x30]
000d3494: STP             Q0, Q0, [X8,#0x10]
000d3498: STR             Q0, [X8]
000d349c: LDR             X1, [SP,#0x5B0+var_4F8]
000d34a0: BL              .__system_property_get
000d34a4: MOV             W8, #0x4A5C
000d34a8: MOV             W9, #0xACF3
000d34ac: STR             X24, [SP,#0x5B0+s]
000d34b0: MOV             W24, #0x621D
000d34b4: CMP             W0, #1
000d34b8: MOVK            W8, #0xC97D,LSL#16
000d34bc: MOVK            W9, #0xCBC,LSL#16
000d34c0: MOVK            W24, #0x4F8D,LSL#16
000d34c4: CSEL            W10, W9, W8, LT
000d34c8: MOV             X8, X28
000d34cc: B               loc_D334C
000d34d0: CMP             W9, W24
000d34d4: B.GT            loc_D3720
000d34d8: MOV             W8, #0x4063B4C5
000d34e0: CMP             W9, W8
000d34e4: B.LE            loc_D39C8
000d34e8: MOV             W8, #0x4063B4C6
000d34f0: CMP             W9, W8
000d34f4: B.EQ            loc_D3C1C
000d34f8: MOV             W8, #0x407B6914
000d3500: CMP             W9, W8
000d3504: B.EQ            loc_D3CE0
000d3508: MOV             W8, #0x40A67785
000d3510: CMP             W9, W8
000d3514: MOV             X8, X28
000d3518: MOV             W10, W9
000d351c: B.NE            loc_D334C
000d3520: LDR             X3, [SP,#0x5B0+var_570]
000d3524: ADRP            X2, #byte_F7C38@PAGE
000d3528: MOV             X0, X20
000d352c: MOV             X1, X19
000d3530: ADD             X2, X2, #byte_F7C38@PAGEOFF
000d3534: BL              sub_13D7C
000d3538: LDR             X3, [SP,#0x5B0+var_590]
000d353c: ADRP            X2, #byte_F7C3C@PAGE
000d3540: MOV             X0, X20
000d3544: MOV             X1, X19
000d3548: ADD             X2, X2, #byte_F7C3C@PAGEOFF
000d354c: BL              sub_13D7C
000d3550: LDR             X1, [SP,#0x5B0+var_538]
000d3554: ADRP            X2, #qword_F7C48@PAGE
000d3558: MOV             X0, X20
000d355c: ADD             X2, X2, #qword_F7C48@PAGEOFF
000d3560: BL              sub_150EC
000d3564: LDR             X3, [SP,#0x5B0+var_460]
000d3568: ADRP            X2, #byte_F7C54@PAGE
000d356c: MOV             X24, X0
000d3570: MOV             X0, X20
000d3574: MOV             X1, X19
000d3578: ADD             X2, X2, #byte_F7C54@PAGEOFF
000d357c: BL              sub_13D7C
000d3580: ADRP            X2, #byte_F7C58@PAGE
000d3584: MOV             X0, X20
000d3588: MOV             X1, X19
000d358c: ADD             X2, X2, #byte_F7C58@PAGEOFF
000d3590: MOV             X3, X24
000d3594: MOV             W24, #0x4F8D621D
000d359c: BL              sub_13D7C
000d35a0: ADRP            X1, #byte_F7C60@PAGE
000d35a4: ADRP            X2, #byte_F7C64@PAGE
000d35a8: MOV             X0, X19
000d35ac: ADD             X1, X1, #byte_F7C60@PAGEOFF
000d35b0: ADD             X2, X2, #byte_F7C64@PAGEOFF
000d35b4: BL              sub_13C74
000d35b8: LDR             X3, [SP,#0x5B0+var_488]
000d35bc: ADRP            X2, #byte_F7C6C@PAGE
000d35c0: MOV             X0, X20
000d35c4: MOV             X1, X19
000d35c8: ADD             X2, X2, #byte_F7C6C@PAGEOFF
000d35cc: BL              sub_13D7C
000d35d0: ADRP            X1, #byte_F7C70@PAGE
000d35d4: ADRP            X2, #aGeeid@PAGE; "geeid"
000d35d8: MOV             X0, X19
000d35dc: ADD             X1, X1, #byte_F7C70@PAGEOFF
000d35e0: ADD             X2, X2, #aGeeid@PAGEOFF; "geeid"
000d35e4: BL              sub_13C74
000d35e8: MOV             X0, X20
000d35ec: MOV             X1, X21
000d35f0: BL              sub_D52B0
000d35f4: ADRP            X2, #aTzr@PAGE; "TZR_;"
000d35f8: MOV             X3, X0
000d35fc: MOV             X0, X20
000d3600: MOV             X1, X19
000d3604: ADD             X2, X2, #aTzr@PAGEOFF; "TZR_;"
000d3608: BL              sub_13D7C
000d360c: LDR             X1, [SP,#0x5B0+var_538]
000d3610: ADRP            X2, #qword_F7C88@PAGE
000d3614: MOV             X0, X20
000d3618: ADD             X2, X2, #qword_F7C88@PAGEOFF
000d361c: BL              sub_150EC
000d3620: STR             X0, [SP,#0x5B0+var_490]
000d3624: LDR             X1, [SP,#0x5B0+var_490]
000d3628: MOV             X0, X20
000d362c: BL              sub_167AC
000d3630: MOV             W8, #0xD376
000d3634: MOV             W9, #0xB4C6
000d3638: CMP             W0, #0
000d363c: MOVK            W8, #0xFD04,LSL#16
000d3640: MOVK            W9, #0x4063,LSL#16
000d3644: B               loc_D3344
000d3648: MOV             W8, #0xA5D19DE9
000d3650: CMP             W9, W8
000d3654: B.GT            loc_D37F4
000d3658: MOV             W8, #0x9A1E4132
000d3660: CMP             W9, W8
000d3664: B.LE            loc_D3B00
000d3668: MOV             W8, #0x9A1E4133
000d3670: CMP             W9, W8
000d3674: B.EQ            loc_D3E00
000d3678: MOV             W8, #0x9A854D9A
000d3680: CMP             W9, W8
000d3684: B.EQ            loc_D40B0
000d3688: MOV             W8, #0xA0AF21AD
000d3690: CMP             W9, W8
000d3694: MOV             X8, X28
000d3698: MOV             W10, W9
000d369c: B.NE            loc_D334C
000d36a0: LDR             X1, [SP,#0x5B0+s]
000d36a4: LDR             X8, [X20]
000d36a8: MOV             X0, X20
000d36ac: LDR             X8, [X8,#0x538]
000d36b0: BLR             X8
000d36b4: MOV             X24, X0
000d36b8: ADRP            X3, #byte_F7BEC@PAGE
000d36bc: MOV             X0, X20
000d36c0: MOV             X1, X21
000d36c4: MOV             X2, X24
000d36c8: ADD             X3, X3, #byte_F7BEC@PAGEOFF
000d36cc: BL              sub_D4250
000d36d0: LDR             X8, [X20]
000d36d4: STR             X0, [SP,#0x5B0+var_558]
000d36d8: MOV             X0, X20
000d36dc: MOV             X1, X24
000d36e0: LDR             X8, [X8,#0xB8]
000d36e4: MOV             W24, #0x4F8D621D
000d36ec: BLR             X8
000d36f0: LDR             X1, [SP,#0x5B0+var_518]
000d36f4: LDR             X2, [SP,#0x5B0+var_510]
000d36f8: LDR             X8, [X20]
000d36fc: MOV             X0, X20
000d3700: LDR             X8, [X8,#0x550]
000d3704: BLR             X8
000d3708: LDR             X8, [SP,#0x5B0+var_500]
000d370c: LDR             X8, [SP,#0x5B0+var_508]
000d3710: MOV             W10, #0x658F
000d3714: MOV             X8, X28
000d3718: MOVK            W10, #0xB54,LSL#16
000d371c: B               loc_D334C
000d3720: MOV             W8, #0x61EE0939
000d3728: CMP             W9, W8
000d372c: B.LE            loc_D3A54
000d3730: MOV             W8, #0x61EE093A
000d3738: CMP             W9, W8
000d373c: B.EQ            loc_D3C38
000d3740: MOV             W8, #0x6FCDEE0C
000d3748: CMP             W9, W8
000d374c: B.EQ            loc_D3D10
000d3750: MOV             W8, #0x7343AED6
000d3758: CMP             W9, W8
000d375c: MOV             X8, X28
000d3760: MOV             W10, W9
000d3764: B.NE            loc_D334C
000d3768: LDR             X3, [SP,#0x5B0+var_4D0]
000d376c: ADRP            X2, #byte_F7C04@PAGE
000d3770: MOV             X0, X20
000d3774: MOV             X1, X19
000d3778: ADD             X2, X2, #byte_F7C04@PAGEOFF
000d377c: BL              sub_13D7C
000d3780: LDR             X8, [SP,#0x5B0+var_578]
000d3784: MOV             W10, #0xD6F2190D
000d378c: B               loc_D334C
000d3790: MOV             W8, #0xE2C89D09
000d3798: CMP             W9, W8
000d379c: B.LE            loc_D3AA0
000d37a0: MOV             W8, #0xE2C89D0A
000d37a8: CMP             W9, W8
000d37ac: B.EQ            loc_D3D7C
000d37b0: MOV             W8, #0xE45C9826
000d37b8: CMP             W9, W8
000d37bc: B.EQ            loc_D404C
000d37c0: MOV             W8, #0xE90E5511
000d37c8: CMP             W9, W8
000d37cc: MOV             X8, X28
000d37d0: MOV             W10, W9
000d37d4: B.NE            loc_D334C
000d37d8: ADRP            X1, #byte_F7C14@PAGE
000d37dc: ADRP            X2, #(aGeePclose+0xA)@PAGE; ""
000d37e0: MOV             X0, X19
000d37e4: ADD             X1, X1, #byte_F7C14@PAGEOFF
000d37e8: ADD             X2, X2, #(aGeePclose+0xA)@PAGEOFF; ""
000d37ec: BL              sub_13C74
000d37f0: B               loc_D3E44
000d37f4: MOV             W8, #0xBA76F878
000d37fc: CMP             W9, W8
000d3800: B.LE            loc_D3B54
000d3804: MOV             W8, #0xBA76F879
000d380c: CMP             W9, W8
000d3810: B.EQ            loc_D3E2C
000d3814: MOV             W8, #0xC7391F67
000d381c: CMP             W9, W8
000d3820: B.EQ            loc_D3BEC
000d3824: MOV             W8, #0xC97D4A5C
000d382c: CMP             W9, W8
000d3830: MOV             X8, X28
000d3834: MOV             W10, W9
000d3838: B.NE            loc_D334C
000d383c: LDR             X1, [SP,#0x5B0+var_510]
000d3840: LDR             X0, [SP,#0x5B0+s]
000d3844: BL              sub_6630
000d3848: LDR             X0, [SP,#0x5B0+s]
000d384c: ADRL            X1, byte_F7BE8
000d3854: BL              sub_6630
000d3858: LDR             X1, [SP,#0x5B0+var_4F8]
000d385c: LDR             X0, [SP,#0x5B0+s]
000d3860: BL              sub_6630
000d3864: B               loc_D3944
000d3868: MOV             W8, #0x15724C66
000d3870: CMP             W9, W8
000d3874: B.LE            loc_D3BA8
000d3878: MOV             W8, #0x15724C67
000d3880: CMP             W9, W8
000d3884: B.EQ            loc_D3EB4
000d3888: MOV             W8, #0x190DB524
000d3890: CMP             W9, W8
000d3894: LDR             X8, [SP,#0x5B0+var_548]
000d3898: MOV             W10, #0xD6F2190D
000d38a0: B.EQ            loc_D334C
000d38a4: MOV             W8, #0x21C91FAA
000d38ac: CMP             W9, W8
000d38b0: MOV             X8, X28
000d38b4: MOV             W10, W9
000d38b8: B.NE            loc_D334C
000d38bc: LDR             X8, [SP,#0x5B0+var_560]
000d38c0: MOV             X0, X20
000d38c4: MOV             X1, X21
000d38c8: STR             X8, [SP,#0x5B0+var_478]
000d38cc: BL              sub_D4488
000d38d0: STR             X0, [SP,#0x5B0+var_4D0]
000d38d4: LDR             X1, [SP,#0x5B0+var_4D0]
000d38d8: MOV             X0, X20
000d38dc: BL              sub_167AC
000d38e0: MOV             W8, #0x4133
000d38e4: MOV             W9, #0x1BC6
000d38e8: CMP             W0, #0
000d38ec: MOVK            W8, #0x9A1E,LSL#16
000d38f0: MOVK            W9, #0x870E,LSL#16
000d38f4: B               loc_D4150
000d38f8: MOV             W8, #0x86B8D97
000d3900: CMP             W9, W8
000d3904: B.EQ            loc_D3C64
000d3908: MOV             W8, #0xB54658F
000d3910: CMP             W9, W8
000d3914: B.EQ            loc_D3F08
000d3918: MOV             W8, #0xCBCACF3
000d3920: CMP             W9, W8
000d3924: MOV             X8, X28
000d3928: MOV             W10, W9
000d392c: B.NE            loc_D334C
000d3930: LDR             X2, [SP,#0x5B0+var_510]
000d3934: LDR             X0, [SP,#0x5B0+s]; s
000d3938: ADRL            X1, byte_F7BE4; format
000d3940: BL              .sprintf
000d3944: MOV             W10, #0x21AD
000d3948: MOV             X8, X28
000d394c: MOVK            W10, #0xA0AF,LSL#16
000d3950: B               loc_D334C
000d3954: MOV             W8, #0x220BCD77
000d395c: CMP             W9, W8
000d3960: B.EQ            loc_D41CC
000d3964: MOV             W8, #0x28F5E6F6
000d396c: CMP             W9, W8
000d3970: MOV             X8, X28
000d3974: MOV             W10, W9
000d3978: B.NE            loc_D334C
000d397c: LDR             X1, [SP,#0x5B0+var_538]
000d3980: ADRP            X2, #byte_F7C18@PAGE
000d3984: MOV             X0, X20
000d3988: ADD             X2, X2, #byte_F7C18@PAGEOFF
000d398c: BL              sub_150EC
000d3990: STR             X0, [SP,#0x5B0+var_4C0]
000d3994: LDR             X1, [SP,#0x5B0+var_470]
000d3998: MOV             X0, X20
000d399c: BL              sub_167AC
000d39a0: LDR             X8, [SP,#0x5B0+var_4C0]
000d39a4: MOV             W9, #0x7493
000d39a8: CMP             W0, #0
000d39ac: MOVK            W9, #0x430,LSL#16
000d39b0: STR             X8, [SP,#0x5B0+var_588]
000d39b4: LDR             X8, [SP,#0x5B0+var_470]
000d39b8: STR             X8, [SP,#0x5B0+var_580]
000d39bc: MOV             W8, #0xE2C89D0A
000d39c4: B               loc_D3344
000d39c8: MOV             W8, #0x3BE9EB33
000d39d0: CMP             W9, W8
000d39d4: B.EQ            loc_D3E54
000d39d8: MOV             W8, #0x3DE80AC9
000d39e0: CMP             W9, W8
000d39e4: MOV             X8, X28
000d39e8: MOV             W10, W9
000d39ec: B.NE            loc_D334C
000d39f0: ADD             X9, SP, #0x5B0+var_450
000d39f4: STP             X9, X9, [SP,#0x5B0+var_4A8]
000d39f8: LDR             X8, [SP,#0x5B0+var_4A8]
000d39fc: LDR             X8, [SP,#0x5B0+var_4A8]
000d3a00: MOVI            V0.2D, #0
000d3a04: MOV             X0, X20
000d3a08: STRB            WZR, [X8,#0x40]
000d3a0c: STP             Q0, Q0, [X8,#0x20]
000d3a10: STP             Q0, Q0, [X8]
000d3a14: LDR             X3, [SP,#0x5B0+var_4A0]
000d3a18: LDR             X2, [SP,#0x5B0+var_488]
000d3a1c: LDR             X1, [SP,#0x5B0+var_460]
000d3a20: BL              sub_D4EF8
000d3a24: STR             X0, [SP,#0x5B0+var_498]
000d3a28: LDR             X1, [SP,#0x5B0+var_498]
000d3a2c: MOV             X0, X20
000d3a30: BL              sub_167AC
000d3a34: LDR             X8, [SP,#0x5B0+var_4B0]
000d3a38: MOV             W9, #0x9761
000d3a3c: CMP             W0, #0
000d3a40: MOVK            W9, #0xDE7,LSL#16
000d3a44: STR             X8, [SP,#0x5B0+var_5A0]
000d3a48: MOV             W8, #0x33E15D86
000d3a50: B               loc_D4150
000d3a54: MOV             W8, #0x4F8D621E
000d3a5c: CMP             W9, W8
000d3a60: B.EQ            loc_D3E7C
000d3a64: MOV             W8, #0x588B011C
000d3a6c: CMP             W9, W8
000d3a70: MOV             X8, X28
000d3a74: MOV             W10, W9
000d3a78: B.NE            loc_D334C
000d3a7c: LDR             W8, [SP,#0x5B0+var_51C]
000d3a80: LDR             X9, [SP,#0x5B0+var_528]
000d3a84: CMP             W8, #0
000d3a88: STR             X9, [SP,#0x5B0+var_598]
000d3a8c: MOV             W8, #0x8D97
000d3a90: MOV             W9, #0xEE0C
000d3a94: MOVK            W8, #0x86B,LSL#16
000d3a98: MOVK            W9, #0x6FCD,LSL#16
000d3a9c: B               loc_D3344
000d3aa0: MOV             W8, #0xD6F2190D
000d3aa8: CMP             W9, W8
000d3aac: B.EQ            loc_D4078
000d3ab0: MOV             W8, #0xE0E9EA63
000d3ab8: CMP             W9, W8
000d3abc: MOV             X8, X28
000d3ac0: MOV             W10, W9
000d3ac4: B.NE            loc_D334C
000d3ac8: LDR             X2, [SP,#0x5B0+var_4C8]
000d3acc: ADRP            X3, #byte_F7C00@PAGE
000d3ad0: MOV             X0, X20
000d3ad4: MOV             X1, X21
000d3ad8: ADD             X3, X3, #byte_F7C00@PAGEOFF
000d3adc: BL              sub_D4250
000d3ae0: LDR             X3, [SP,#0x5B0+var_4C8]
000d3ae4: ADRP            X2, #byte_F7C04@PAGE
000d3ae8: STR             X0, [SP,#0x5B0+var_548]
000d3aec: MOV             X0, X20
000d3af0: MOV             X1, X19
000d3af4: ADD             X2, X2, #byte_F7C04@PAGEOFF
000d3af8: BL              sub_13D7C
000d3afc: B               loc_D3C0C
000d3b00: MOV             W8, #0x8155005A
000d3b08: CMP             W9, W8
000d3b0c: B.EQ            loc_D40F0
000d3b10: MOV             W8, #0x870E1BC6
000d3b18: CMP             W9, W8
000d3b1c: MOV             X8, X28
000d3b20: MOV             W10, W9
000d3b24: B.NE            loc_D334C
000d3b28: LDR             X1, [SP,#0x5B0+var_4D0]
000d3b2c: LDR             X8, [X20]
000d3b30: MOV             X0, X20
000d3b34: LDR             X8, [X8,#0x540]
000d3b38: BLR             X8
000d3b3c: MOV             W8, #0x4133
000d3b40: MOV             W9, #0xF055
000d3b44: CMP             W0, #0xF
000d3b48: MOVK            W8, #0x9A1E,LSL#16
000d3b4c: MOVK            W9, #0xB7D3,LSL#16
000d3b50: B               loc_D4150
000d3b54: MOV             W8, #0xA5D19DEA
000d3b5c: CMP             W9, W8
000d3b60: B.EQ            loc_D411C
000d3b64: MOV             W8, #0xB7D3F055
000d3b6c: CMP             W9, W8
000d3b70: MOV             X8, X28
000d3b74: MOV             W10, W9
000d3b78: B.NE            loc_D334C
000d3b7c: LDR             X1, [SP,#0x5B0+var_478]
000d3b80: MOV             X0, X20
000d3b84: BL              sub_167AC
000d3b88: LDR             X8, [SP,#0x5B0+var_478]
000d3b8c: MOV             W9, #0x9826
000d3b90: CMP             W0, #0
000d3b94: MOVK            W9, #0xE45C,LSL#16
000d3b98: STR             X8, [SP,#0x5B0+var_578]
000d3b9c: MOV             W8, #0x7343AED6
000d3ba4: B               loc_D3344
000d3ba8: MOV             W8, #0xDE79761
000d3bb0: CMP             W9, W8
000d3bb4: B.EQ            loc_D415C
000d3bb8: MOV             W8, #0xE203202
000d3bc0: CMP             W9, W8
000d3bc4: MOV             X8, X28
000d3bc8: MOV             W10, W9
000d3bcc: B.NE            loc_D334C
000d3bd0: LDR             X1, [SP,#0x5B0+var_478]
000d3bd4: MOV             X0, X20
000d3bd8: BL              sub_167AC
000d3bdc: MOV             W8, #0x5A ; 'Z'
000d3be0: CMP             W0, #0
000d3be4: MOVK            W8, #0x8155,LSL#16
000d3be8: B               loc_D4110
000d3bec: ADRP            X1, #byte_F7C04@PAGE
000d3bf0: ADRP            X2, #(aGeePclose+0xA)@PAGE; ""
000d3bf4: MOV             X0, X19
000d3bf8: ADD             X1, X1, #byte_F7C04@PAGEOFF
000d3bfc: ADD             X2, X2, #(aGeePclose+0xA)@PAGEOFF; ""
000d3c00: BL              sub_13C74
000d3c04: LDR             X8, [SP,#0x5B0+var_478]
000d3c08: STR             X8, [SP,#0x5B0+var_548]
000d3c0c: MOV             W10, #0xB524
000d3c10: MOV             X8, X28
000d3c14: MOVK            W10, #0x190D,LSL#16
000d3c18: B               loc_D334C
000d3c1c: ADRP            X1, #a0Y@PAGE; ",0=Y"
000d3c20: ADRP            X2, #(aGeePclose+0xA)@PAGE; ""
000d3c24: MOV             X0, X19
000d3c28: ADD             X1, X1, #a0Y@PAGEOFF; ",0=Y"
000d3c2c: ADD             X2, X2, #(aGeePclose+0xA)@PAGEOFF; ""
000d3c30: BL              sub_13C74
000d3c34: B               loc_D3EF8
000d3c38: LDR             X1, [SP,#0x5B0+var_518]
000d3c3c: MOV             X0, X20
000d3c40: BL              sub_167AC
000d3c44: LDR             X8, [SP,#0x5B0+var_530]
000d3c48: MOV             W9, #0x6208
000d3c4c: CMP             W0, #0
000d3c50: MOVK            W9, #0x3804,LSL#16
000d3c54: STR             X8, [SP,#0x5B0+var_558]
000d3c58: MOV             W8, #0xB54658F
000d3c60: B               loc_D4150
000d3c64: LDR             X8, [SP,#0x5B0+var_598]
000d3c68: MOV             X0, X20
000d3c6c: MOV             X1, X21
000d3c70: STR             X8, [SP,#0x5B0+var_488]
000d3c74: BL              sub_204F4
000d3c78: LDR             X1, [SP,#0x5B0+var_538]
000d3c7c: ADRP            X2, #byte_F7BC8@PAGE
000d3c80: MOV             X0, X20
000d3c84: ADD             X2, X2, #byte_F7BC8@PAGEOFF
000d3c88: BL              sub_150EC
000d3c8c: STR             X0, [SP,#0x5B0+var_518]
000d3c90: LDR             X1, [SP,#0x5B0+var_530]
000d3c94: MOV             X0, X20
000d3c98: BL              sub_167AC
000d3c9c: LDR             X8, [SP,#0x5B0+var_530]
000d3ca0: MOV             W9, #0x93A
000d3ca4: CMP             W0, #0
000d3ca8: MOVK            W9, #0x61EE,LSL#16
000d3cac: STR             X8, [SP,#0x5B0+var_558]
000d3cb0: MOV             W8, #0xB54658F
000d3cb8: B               loc_D3344
000d3cbc: LDR             X8, [SP,#0x5B0+var_4A8]
000d3cc0: LDR             X8, [SP,#0x5B0+var_498]
000d3cc4: MOV             W10, #0x40A67785
000d3ccc: STR             X8, [SP,#0x5B0+var_570]
000d3cd0: LDR             X8, [SP,#0x5B0+var_5A0]
000d3cd4: STR             X8, [SP,#0x5B0+var_590]
000d3cd8: MOV             X8, X28
000d3cdc: B               loc_D334C
000d3ce0: LDR             X1, [SP,#0x5B0+var_538]
000d3ce4: LDR             X3, [SP,#0x5B0+var_4B8]
000d3ce8: ADRP            X2, #byte_F7C18@PAGE
000d3cec: MOV             X0, X20
000d3cf0: ADD             X2, X2, #byte_F7C18@PAGEOFF
000d3cf4: BL              sub_15E4C
000d3cf8: LDR             X8, [SP,#0x5B0+var_4B8]
000d3cfc: MOV             W10, #0x4F8D621E
000d3d04: STR             X8, [SP,#0x5B0+var_550]
000d3d08: MOV             X8, X28
000d3d0c: B               loc_D334C
000d3d10: SUB             X8, X29, #-var_B0
000d3d14: MOVI            V0.2D, #0
000d3d18: ADD             X0, SP, #0x5B0+timer; timer
000d3d1c: STP             Q0, Q0, [X8,#0x20]
000d3d20: STP             Q0, Q0, [X8]
000d3d24: BL              .time
000d3d28: LDR             X2, [SP,#0x5B0+timer]
000d3d2c: ADRP            X1, #byte_F7BC4@PAGE
000d3d30: SUB             X0, X29, #-var_B0; s
000d3d34: ADD             X1, X1, #byte_F7BC4@PAGEOFF; format
000d3d38: BL              .sprintf
000d3d3c: LDR             X8, [X20]
000d3d40: SUB             X1, X29, #-var_B0
000d3d44: MOV             X0, X20
000d3d48: LDR             X8, [X8,#0x538]
000d3d4c: BLR             X8
000d3d50: LDR             X1, [SP,#0x5B0+var_538]
000d3d54: ADRP            X2, #byte_F7BBC@PAGE
000d3d58: STR             X0, [SP,#0x5B0+var_598]
000d3d5c: SUB             X3, X29, #-var_B0
000d3d60: MOV             X0, X20
000d3d64: ADD             X2, X2, #byte_F7BBC@PAGEOFF
000d3d68: BL              sub_154B8
000d3d6c: MOV             W10, #0x8D97
000d3d70: MOV             X8, X28
000d3d74: MOVK            W10, #0x86B,LSL#16
000d3d78: B               loc_D334C
000d3d7c: LDP             X3, X8, [SP,#0x5B0+var_588]
000d3d80: ADRP            X2, #byte_F7C24@PAGE
000d3d84: MOV             X0, X20
000d3d88: MOV             X1, X19
000d3d8c: ADD             X2, X2, #byte_F7C24@PAGEOFF
000d3d90: STR             X8, [SP,#0x5B0+var_460]
000d3d94: BL              sub_13D7C
000d3d98: LDR             X1, [SP,#0x5B0+var_538]
000d3d9c: ADRP            X2, #qword_F7C28@PAGE
000d3da0: MOV             X0, X20
000d3da4: ADD             X2, X2, #qword_F7C28@PAGEOFF
000d3da8: BL              sub_150EC
000d3dac: LDR             X1, [SP,#0x5B0+var_538]
000d3db0: ADRP            X2, #qword_F7C30@PAGE
000d3db4: MOV             X22, X0
000d3db8: MOV             X0, X20
000d3dbc: ADD             X2, X2, #qword_F7C30@PAGEOFF
000d3dc0: BL              sub_150EC
000d3dc4: STR             X0, [SP,#0x5B0+var_4B0]
000d3dc8: MOV             X0, X20
000d3dcc: STR             X22, [SP,#0x5B0+var_570]
000d3dd0: MOV             X1, X22
000d3dd4: MOV             W22, #0x220BCD76
000d3ddc: BL              sub_167AC
000d3de0: LDR             X8, [SP,#0x5B0+var_4B0]
000d3de4: MOV             W9, #0xAC9
000d3de8: CMP             W0, #0
000d3dec: MOVK            W9, #0x3DE8,LSL#16
000d3df0: STR             X8, [SP,#0x5B0+var_590]
000d3df4: MOV             W8, #0x40A67785
000d3dfc: B               loc_D3344
000d3e00: MOV             X0, X20
000d3e04: MOV             X1, X21
000d3e08: BL              sub_D4754
000d3e0c: STR             X0, [SP,#0x5B0+var_4C8]
000d3e10: LDR             X8, [SP,#0x5B0+var_4C8]
000d3e14: MOV             W9, #0xC7391F67
000d3e1c: CMP             X8, #0
000d3e20: MOV             W8, #0xE203202
000d3e28: B               loc_D4150
000d3e2c: LDR             X3, [SP,#0x5B0+var_468]
000d3e30: ADRP            X2, #byte_F7C14@PAGE
000d3e34: MOV             X0, X20
000d3e38: MOV             X1, X19
000d3e3c: ADD             X2, X2, #byte_F7C14@PAGEOFF
000d3e40: BL              sub_13D7C
000d3e44: MOV             W10, #0xE6F6
000d3e48: MOV             X8, X28
000d3e4c: MOVK            W10, #0x28F5,LSL#16
000d3e50: B               loc_D334C
000d3e54: ADRP            X2, #qword_F7C08@PAGE
000d3e58: MOV             X0, X20
000d3e5c: MOV             X1, X21
000d3e60: ADD             X2, X2, #qword_F7C08@PAGEOFF
000d3e64: BL              sub_D7BC
000d3e68: MOV             W10, #0x4C67
000d3e6c: STR             X0, [SP,#0x5B0+var_568]
000d3e70: MOV             X8, X28
000d3e74: MOVK            W10, #0x1572,LSL#16
000d3e78: B               loc_D334C
000d3e7c: LDR             X23, [SP,#0x5B0+var_550]
000d3e80: ADRP            X3, #byte_F7C20@PAGE
000d3e84: MOV             X0, X20
000d3e88: MOV             X1, X21
000d3e8c: MOV             X2, X23
000d3e90: ADD             X3, X3, #byte_F7C20@PAGEOFF
000d3e94: BL              sub_D4250
000d3e98: STP             X23, X0, [SP,#0x5B0+var_588]
000d3e9c: MOV             W23, #0x1231
000d3ea0: MOV             W10, #0x9D0A
000d3ea4: MOVK            W23, #0xEC77,LSL#16
000d3ea8: MOV             X8, X28
000d3eac: MOVK            W10, #0xE2C8,LSL#16
000d3eb0: B               loc_D334C
000d3eb4: LDR             X8, [SP,#0x5B0+var_568]
000d3eb8: MOV             X0, X20
000d3ebc: STR             X8, [SP,#0x5B0+var_468]
000d3ec0: LDR             X1, [SP,#0x5B0+var_468]
000d3ec4: BL              sub_167AC
000d3ec8: MOV             W8, #0xF879
000d3ecc: MOV             W9, #0x5511
000d3ed0: CMP             W0, #0
000d3ed4: MOVK            W8, #0xBA76,LSL#16
000d3ed8: MOVK            W9, #0xE90E,LSL#16
000d3edc: B               loc_D3344
000d3ee0: LDR             X3, [SP,#0x5B0+var_490]
000d3ee4: ADRP            X2, #a0Y@PAGE; ",0=Y"
000d3ee8: MOV             X0, X20
000d3eec: MOV             X1, X19
000d3ef0: ADD             X2, X2, #a0Y@PAGEOFF; ",0=Y"
000d3ef4: BL              sub_13D7C
000d3ef8: MOV             W10, #0xCD77
000d3efc: MOV             X8, X28
000d3f00: MOVK            W10, #0x220B,LSL#16
000d3f04: B               loc_D334C
000d3f08: LDR             X8, [SP,#0x5B0+var_558]
000d3f0c: ADRP            X2, #byte_F7BF0@PAGE
000d3f10: MOV             X0, X20
000d3f14: MOV             X1, X19
000d3f18: STR             X8, [SP,#0x5B0+var_480]
000d3f1c: LDR             X3, [SP,#0x5B0+var_518]
000d3f20: ADD             X2, X2, #byte_F7BF0@PAGEOFF
000d3f24: BL              sub_13D7C
000d3f28: ADRP            X1, #xmmword_F7BD0@PAGE
000d3f2c: MOV             X0, X20
000d3f30: ADD             X1, X1, #xmmword_F7BD0@PAGEOFF
000d3f34: BL              sub_43EB0
000d3f38: ADRP            X2, #byte_F7BF4@PAGE
000d3f3c: MOV             X3, X0
000d3f40: MOV             X0, X20
000d3f44: MOV             X1, X19
000d3f48: ADD             X2, X2, #byte_F7BF4@PAGEOFF
000d3f4c: BL              sub_13D7C
000d3f50: ADD             X9, SP, #0x5B0+var_20C
000d3f54: STR             X9, [SP,#0x5B0+var_4E8]
000d3f58: LDR             X8, [SP,#0x5B0+var_4E8]
000d3f5c: LDR             X8, [SP,#0x5B0+var_4E8]
000d3f60: MOVI            V0.2D, #0
000d3f64: ADD             X2, SP, #0x5B0+var_40C
000d3f68: MOV             X0, X20
000d3f6c: STP             Q0, Q0, [X8,#0x60]
000d3f70: STP             Q0, Q0, [X8,#0x40]
000d3f74: STP             Q0, Q0, [X8,#0x20]
000d3f78: STP             Q0, Q0, [X8]
000d3f7c: ADD             X8, SP, #0x5B0+var_40C
000d3f80: STR             X8, [SP,#0x5B0+var_4E0]
000d3f84: LDR             X8, [SP,#0x5B0+var_4E0]
000d3f88: LDR             X8, [SP,#0x5B0+var_4E0]
000d3f8c: MOV             X1, X21
000d3f90: STP             Q0, Q0, [X8,#0x1E0]
000d3f94: STP             Q0, Q0, [X8,#0x1C0]
000d3f98: STP             Q0, Q0, [X8,#0x1A0]
000d3f9c: STP             Q0, Q0, [X8,#0x180]
000d3fa0: STP             Q0, Q0, [X8,#0x160]
000d3fa4: STP             Q0, Q0, [X8,#0x140]
000d3fa8: STP             Q0, Q0, [X8,#0x120]
000d3fac: STP             Q0, Q0, [X8,#0x100]
000d3fb0: STP             Q0, Q0, [X8,#0xE0]
000d3fb4: STP             Q0, Q0, [X8,#0xC0]
000d3fb8: STP             Q0, Q0, [X8,#0xA0]
000d3fbc: STP             Q0, Q0, [X8,#0x80]
000d3fc0: STP             Q0, Q0, [X8,#0x60]
000d3fc4: STP             Q0, Q0, [X8,#0x40]
000d3fc8: STP             Q0, Q0, [X8,#0x20]
000d3fcc: STP             Q0, Q0, [X8]
000d3fd0: STR             X9, [SP,#0x5B0+var_4D8]
000d3fd4: LDR             X3, [SP,#0x5B0+var_4D8]
000d3fd8: BL              sub_CDED8
000d3fdc: LDR             X2, [SP,#0x5B0+var_4D8]
000d3fe0: ADRP            X1, #byte_F7BF8@PAGE
000d3fe4: MOV             X0, X19
000d3fe8: ADD             X1, X1, #byte_F7BF8@PAGEOFF
000d3fec: BL              sub_13C74
000d3ff0: LDR             X1, [SP,#0x5B0+var_480]
000d3ff4: MOV             X0, X20
000d3ff8: BL              sub_167AC
000d3ffc: LDR             X8, [SP,#0x5B0+var_480]
000d4000: MOV             W9, #0x73F0
000d4004: CMP             W0, #0
000d4008: MOVK            W9, #0x352A,LSL#16
000d400c: STR             X8, [SP,#0x5B0+var_560]
000d4010: MOV             W8, #0x21C91FAA
000d4018: B               loc_D3344
000d401c: LDR             X0, [SP,#0x5B0+var_4D8]
000d4020: BL              sub_5914
000d4024: LDR             X8, [SP,#0x5B0+var_480]
000d4028: MOV             W9, #0x4D9A
000d402c: CMP             W0, #0x1E
000d4030: MOVK            W9, #0x9A85,LSL#16
000d4034: STR             X8, [SP,#0x5B0+var_560]
000d4038: MOV             W8, #0x21C91FAA
000d4040: CSEL            W10, W9, W8, GT
000d4044: MOV             X8, X28
000d4048: B               loc_D334C
000d404c: LDR             X2, [SP,#0x5B0+var_4D0]
000d4050: ADRP            X3, #byte_F7C00@PAGE
000d4054: MOV             X0, X20
000d4058: MOV             X1, X21
000d405c: ADD             X3, X3, #byte_F7C00@PAGEOFF
000d4060: BL              sub_D4250
000d4064: MOV             W10, #0xAED6
000d4068: STR             X0, [SP,#0x5B0+var_578]
000d406c: MOV             X8, X28
000d4070: MOVK            W10, #0x7343,LSL#16
000d4074: B               loc_D334C
000d4078: MOV             X0, X20
000d407c: MOV             X1, X21
000d4080: STR             X28, [SP,#0x5B0+var_470]
000d4084: BL              sub_D490C
000d4088: MOV             X1, X0
000d408c: MOV             X0, X20
000d4090: STR             X1, [SP,#0x5B0+var_568]
000d4094: BL              sub_167AC
000d4098: MOV             W8, #0x4C67
000d409c: MOV             W9, #0xEB33
000d40a0: CMP             W0, #0
000d40a4: MOVK            W8, #0x1572,LSL#16
000d40a8: MOVK            W9, #0x3BE9,LSL#16
000d40ac: B               loc_D3344
000d40b0: LDR             X1, [SP,#0x5B0+var_4D8]
000d40b4: LDR             X8, [X20]
000d40b8: MOV             X0, X20
000d40bc: LDR             X8, [X8,#0x538]
000d40c0: BLR             X8
000d40c4: ADRP            X3, #byte_F7BFC@PAGE
000d40c8: MOV             X2, X0
000d40cc: MOV             X0, X20
000d40d0: MOV             X1, X21
000d40d4: ADD             X3, X3, #byte_F7BFC@PAGEOFF
000d40d8: BL              sub_D4250
000d40dc: MOV             W10, #0x1FAA
000d40e0: STR             X0, [SP,#0x5B0+var_560]
000d40e4: MOV             X8, X28
000d40e8: MOVK            W10, #0x21C9,LSL#16
000d40ec: B               loc_D334C
000d40f0: LDR             X1, [SP,#0x5B0+var_4C8]
000d40f4: LDR             X8, [X20]
000d40f8: MOV             X0, X20
000d40fc: LDR             X8, [X8,#0x540]
000d4100: BLR             X8
000d4104: MOV             W8, #0xEA63
000d4108: CMP             W0, #0xF
000d410c: MOVK            W8, #0xE0E9,LSL#16
000d4110: MOV             W9, #0xEC771232
000d4118: B               loc_D3344
000d411c: MOV             X0, X20
000d4120: BL              sub_C544
000d4124: STR             X0, [SP,#0x5B0+var_4B8]
000d4128: LDR             X1, [SP,#0x5B0+var_4B8]
000d412c: MOV             X0, X20
000d4130: BL              sub_167AC
000d4134: LDR             X8, [SP,#0x5B0+var_4B8]
000d4138: MOV             W9, #0x6914
000d413c: CMP             W0, #0
000d4140: MOVK            W9, #0x407B,LSL#16
000d4144: STR             X8, [SP,#0x5B0+var_550]
000d4148: MOV             W8, #0x4F8D621E
000d4150: CSEL            W10, W9, W8, EQ
000d4154: MOV             X8, X28
000d4158: B               loc_D334C
000d415c: LDR             X8, [SP,#0x5B0+var_4A0]
000d4160: LDR             X9, [X20]
000d4164: MOV             X0, X20
000d4168: ADD             X1, X8, #0x30 ; '0'
000d416c: LDR             X9, [X9,#0x538]
000d4170: BLR             X9
000d4174: LDR             X1, [SP,#0x5B0+var_538]
000d4178: LDR             X3, [SP,#0x5B0+var_498]
000d417c: ADRP            X2, #qword_F7C28@PAGE
000d4180: MOV             X27, X21
000d4184: MOV             X21, X0
000d4188: MOV             X0, X20
000d418c: ADD             X2, X2, #qword_F7C28@PAGEOFF
000d4190: BL              sub_15E4C
000d4194: LDR             X1, [SP,#0x5B0+var_538]
000d4198: ADRP            X2, #qword_F7C30@PAGE
000d419c: MOV             X0, X20
000d41a0: ADD             X2, X2, #qword_F7C30@PAGEOFF
000d41a4: STR             X21, [SP,#0x5B0+var_5A0]
000d41a8: MOV             X3, X21
000d41ac: MOV             X21, X27
000d41b0: MOV             W27, #0xD6F2190C
000d41b8: BL              sub_15E4C
000d41bc: MOV             W10, #0x5D86
000d41c0: MOV             X8, X28
000d41c4: MOVK            W10, #0x33E1,LSL#16
000d41c8: B               loc_D334C
000d41cc: LDR             X1, [SP,#0x5B0+var_538]
000d41d0: LDR             X8, [X20]
000d41d4: MOV             X0, X20
000d41d8: LDR             X8, [X8,#0xB8]
000d41dc: BLR             X8
000d41e0: MOV             X0, X19
000d41e4: BL              sub_D5554
000d41e8: ADRL            X1, xmmword_F7CA0
000d41f0: MOV             X0, X20
000d41f4: BL              sub_43EB0
000d41f8: ADRP            X2, #aTofAjvD@PAGE; "TOF\"ajv<D"
000d41fc: MOV             X3, X0
000d4200: ADD             X2, X2, #aTofAjvD@PAGEOFF; "TOF\"ajv<D"
000d4204: MOV             X0, X20
000d4208: MOV             X1, X19
000d420c: BL              sub_13D7C
000d4210: LDR             X8, [SP,#0x5B0+var_4E0]
000d4214: LDR             X8, [SP,#0x5B0+var_4E8]
000d4218: LDR             X8, [SP,#0x5B0+var_5A8]
000d421c: LDR             X8, [X8,#0x28]
000d4220: LDR             X9, [SP,#0x5B0+var_540]
000d4224: CMP             X8, X9
000d4228: B.NE            loc_D424C
000d422c: ADD             SP, SP, #0x560
000d4230: LDP             X29, X30, [SP,#0x50+var_s0]
000d4234: LDP             X20, X19, [SP,#0x50+var_10]
000d4238: LDP             X22, X21, [SP,#0x50+var_20]
000d423c: LDP             X24, X23, [SP,#0x50+var_30]
000d4240: LDP             X26, X25, [SP,#0x50+var_40]
000d4244: LDP             X28, X27, [SP+0x50+var_50],#0x60
000d4248: RET
000d424c: BL              .__stack_chk_fail