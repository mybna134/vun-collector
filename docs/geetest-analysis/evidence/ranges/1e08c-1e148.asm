0001e08c: STP             X20, X19, [SP,#-0x10+var_10]!
0001e090: STP             X29, X30, [SP,#0x10+var_s0]
0001e094: ADD             X29, SP, #0x10
0001e098: ADRP            X1, #qword_F2B70@PAGE ; runtime: 0xf2b70='/cust/app'
0001e09c: ADRP            X2, #byte_F2B7C@PAGE ; runtime: 0xf2b7c='c'
0001e0a0: ADD             X1, X1, #qword_F2B70@PAGEOFF; file ; runtime: 0xf2b70='/cust/app'
0001e0a4: ADD             X2, X2, #byte_F2B7C@PAGEOFF ; runtime: 0xf2b7c='c'
0001e0a8: MOV             X19, X0
0001e0ac: BL              sub_9CF0
0001e0b0: ADRP            X1, #aN35a@PAGE; "n3..5A"
0001e0b4: ADRP            X2, #aL@PAGE; ">L"
0001e0b8: ADD             X1, X1, #aN35a@PAGEOFF; "n3..5A"
0001e0bc: ADD             X2, X2, #aL@PAGEOFF; ">L"
0001e0c0: MOV             X0, X19; int
0001e0c4: BL              sub_9CF0
0001e0c8: ADRP            X1, #xmmword_F2B90@PAGE ; runtime: 0xf2b90='/proc/sys/kernel/random/boot_id'
0001e0cc: ADRP            X2, #byte_F2BB0@PAGE ; runtime: 0xf2bb0='b'
0001e0d0: ADD             X1, X1, #xmmword_F2B90@PAGEOFF; file ; runtime: 0xf2b90='/proc/sys/kernel/random/boot_id'
0001e0d4: ADD             X2, X2, #byte_F2BB0@PAGEOFF ; runtime: 0xf2bb0='b'
0001e0d8: MOV             X0, X19; int
0001e0dc: BL              sub_9CF0
0001e0e0: ADRP            X1, #xmmword_F2BC0@PAGE ; runtime: 0xf2bc0='/storage/emulated/'
0001e0e4: ADRP            X2, #byte_F2BD4@PAGE ; runtime: 0xf2bd4='s'
0001e0e8: ADD             X1, X1, #xmmword_F2BC0@PAGEOFF; file ; runtime: 0xf2bc0='/storage/emulated/'
0001e0ec: ADD             X2, X2, #byte_F2BD4@PAGEOFF ; runtime: 0xf2bd4='s'
0001e0f0: MOV             X0, X19; int
0001e0f4: BL              sub_9F74
0001e0f8: ADRP            X1, #qword_F2BD8@PAGE ; runtime: 0xf2bd8='/mnt/sdcard/'
0001e0fc: ADRP            X2, #byte_F2BE8@PAGE ; runtime: 0xf2be8='ma'
0001e100: ADD             X1, X1, #qword_F2BD8@PAGEOFF; file ; runtime: 0xf2bd8='/mnt/sdcard/'
0001e104: ADD             X2, X2, #byte_F2BE8@PAGEOFF ; runtime: 0xf2be8='ma'
0001e108: MOV             X0, X19; int
0001e10c: BL              sub_9F74
0001e110: ADRL            X20, xmmword_F2BF0 ; runtime: 0xf2bf0='/sdcard/Android/'
0001e114: ADRL            X20, xmmword_F2BF0 ; runtime: 0xf2bf0='/sdcard/Android/'
0001e118: ADRL            X2, byte_F2C04 ; runtime: 0xf2c04='sam'
0001e11c: ADRL            X2, byte_F2C04 ; runtime: 0xf2c04='sam'
0001e120: MOV             X0, X19; int
0001e124: MOV             X1, X20; file
0001e128: BL              sub_9CF0
0001e12c: LDP             X29, X30, [SP,#0x10+var_s0]
0001e130: ADRL            X2, byte_F2C08 ; runtime: 0xf2c08='saa'
0001e134: ADRL            X2, byte_F2C08 ; runtime: 0xf2c08='saa'
0001e138: MOV             X0, X19; int
0001e13c: MOV             X1, X20; file
0001e140: LDP             X20, X19, [SP+0x10+var_10],#0x20
0001e144: B               sub_9F74