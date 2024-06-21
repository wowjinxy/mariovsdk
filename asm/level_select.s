	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_080150F0
sub_080150F0: @ 0x080150F0
	push {r4,lr}
	sub sp, sp, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _080150FE
	b _0801522A
_080150FE:
	lsl r0, r0, #2
	ldr r1, _08015108  @ =0x0801510C
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08015108:
	.4byte _0801510C
_0801510C:
	.4byte _08015124
	.4byte _0801516C
	.4byte _080151AC
	.4byte _080151D8
	.4byte _08015210
	.4byte _08015220
_08015124:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, _0801515C  @ =gLevelSelectBackgrounds
	ldr r4, _08015160  @ =gLevelSelectWorld
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #12]
	mov r1, #1
	neg r1, r1
	mov r0, sp
	bl load_graphics_config_08032F24
	ldr r1, _08015164  @ =gUnknown_080794EC
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #3
	bl load_predefined_palette
	ldr r0, _08015168  @ =gLevelSelectData
	b _080151F8
_0801515C:
	.4byte gLevelSelectBackgrounds
_08015160:
	.4byte gLevelSelectWorld
_08015164:
	.4byte gUnknown_080794EC
_08015168:
	.4byte gLevelSelectData
_0801516C:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, _080151A0  @ =gLevelSelectPlusBackgrounds
	ldr r4, _080151A4  @ =gLevelSelectWorld
	mov r0, #0
	ldrsb r0, [r4, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #12]
	mov r1, #1
	neg r1, r1
	mov r0, sp
	bl load_graphics_config_08032F24
	ldr r1, _080151A8  @ =gUnknown_08079504
	mov r0, #0
	ldrsb r0, [r4, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	b _080151F0
_080151A0:
	.4byte gLevelSelectPlusBackgrounds
_080151A4:
	.4byte gLevelSelectWorld
_080151A8:
	.4byte gUnknown_08079504
_080151AC:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _080151D0  @ =gLevelSelectDKBossBG
	str r0, [sp, #12]
	mov r1, #1
	neg r1, r1
	mov r0, sp
	bl load_graphics_config_08032F24
	mov r0, #17
	mov r1, #3
	bl load_predefined_palette
	ldr r0, _080151D4  @ =gLevelSelectData
	b _080151F8
	.byte 0x00
	.byte 0x00
_080151D0:
	.4byte gLevelSelectDKBossBG
_080151D4:
	.4byte gLevelSelectData
_080151D8:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _08015204  @ =gLevelSelectDKPlusBossBG
	str r0, [sp, #12]
	mov r1, #1
	neg r1, r1
	mov r0, sp
	bl load_graphics_config_08032F24
	mov r0, #24
_080151F0:
	mov r1, #3
	bl load_predefined_palette
	ldr r0, _08015208  @ =gLevelSelectPlusData
_080151F8:
	bl sub_08006968
	ldr r1, _0801520C  @ =0x03000070
	str r0, [r1]
	b _0801522A
	.byte 0x00
	.byte 0x00
_08015204:
	.4byte gLevelSelectDKPlusBossBG
_08015208:
	.4byte gLevelSelectPlusData
_0801520C:
	.4byte 0x03000070
_08015210:
	ldr r1, _0801521C  @ =gLevelSelect_03000083
	mov r0, #7
	strb r0, [r1]
	bl sub_08029D80
	b _0801522A
_0801521C:
	.4byte gLevelSelect_03000083
_08015220:
	ldr r1, _08015234  @ =gLevelSelect_03000083
	mov r0, #9
	strb r0, [r1]
	bl sub_08029D80
_0801522A:
	add sp, sp, #16
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08015234:
	.4byte gLevelSelect_03000083
	THUMB_FUNC_END sub_080150F0

	THUMB_FUNC_START sub_08015238
sub_08015238: @ 0x08015238
	push {lr}
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015250
	ldr r0, _0801524C  @ =0x03000094
	ldr r1, [r0]
	mov r0, #15
	strh r0, [r1]
	mov r0, #1
	b _08015276
_0801524C:
	.4byte 0x03000094
_08015250:
	ldr r0, _08015260  @ =0x03000094
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08015264
	mov r0, #1
	b _08015276
	.byte 0x00
	.byte 0x00
_08015260:
	.4byte 0x03000094
_08015264:
	sub r0, r0, #1
	strh r0, [r1]
	ldr r2, _0801527C  @ =REG_BLDALPHA
	mov r1, #15
	sub r1, r1, r0
	lsl r1, r1, #8
	orr r0, r0, r1
	strh r0, [r2]
	mov r0, #0
_08015276:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0801527C:
	.4byte REG_BLDALPHA
	THUMB_FUNC_END sub_08015238

	THUMB_FUNC_START level_select_init_callback
level_select_init_callback: @ 0x08015280
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #24
	mov r0, #0
	bl arena_restore_head
	ldr r4, _080153C0  @ =0x0300007C
	mov r0, #32
	bl arena_allocate
	str r0, [r4]
	ldr r4, _080153C4  @ =0x03000094
	mov r0, #56
	bl arena_allocate
	add r1, r0, #0
	str r1, [r4]
	add r0, sp, #16
	mov r6, #0
	strh r6, [r0]
	ldr r2, _080153C8  @ =0x0100001C
	bl CpuSet
	bl sub_08071FE4
	cmp r0, #11
	beq _080152C4
	mov r0, #11
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_080152C4:
	ldr r0, [r4]
	mov r1, #0
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #4]
	ldr r0, _080153CC  @ =gUnknown_030009D8
	strh r2, [r0]
	ldr r0, _080153D0  @ =gUnknown_03001740
	strb r6, [r0]
	ldr r1, _080153D4  @ =gLivesCount
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bgt _080152E4
	mov r0, #1
	strb r0, [r1]
_080152E4:
	ldr r5, _080153D8  @ =0x03000085
	ldr r4, _080153DC  @ =0x03000086
	ldr r3, _080153E0  @ =0x03000088
	ldr r2, _080153E4  @ =0x03000089
	ldr r1, _080153E8  @ =0x0300008A
	ldr r0, _080153EC  @ =0x0300008B
	strb r6, [r0]
	strb r6, [r1]
	strb r6, [r2]
	strb r6, [r3]
	strb r6, [r4]
	strb r6, [r5]
	ldr r0, _080153F0  @ =0x03000087
	mov r1, #1
	mov r9, r1
	strb r1, [r0]
	ldr r1, _080153F4  @ =0x0300008D
	ldr r0, _080153F8  @ =gUnknown_085E1F2C
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldr r2, _080153FC  @ =0x0300008E
	ldr r0, _08015400  @ =gUnknown_085E0AC4
	ldrb r1, [r0, #1]
	strb r1, [r2]
	ldr r1, _08015404  @ =0x0300008F
	add r0, r0, #37
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08015408  @ =0x03000090
	ldr r0, _0801540C  @ =gUnknown_085E2870
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldr r1, _08015410  @ =0x03000091
	ldr r0, _08015414  @ =gUnknown_085C240C
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldr r1, _08015418  @ =0x03000092
	ldr r0, _0801541C  @ =gUnknown_085C7A78
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldr r1, _08015420  @ =0x0300008C
	ldr r0, _08015424  @ =gUnknown_085E3590
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldr r5, _08015428  @ =gLevelSelectWorld
	ldr r0, _0801542C  @ =gCurrentWorld
	ldrb r3, [r0]
	strb r3, [r5]
	ldr r4, _08015430  @ =gLevelSelectLevel
	ldr r0, _08015434  @ =gNextLevelID
	ldrb r1, [r0]
	strb r1, [r4]
	ldr r2, _08015438  @ =gLevelType
	mov r12, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	cmp r2, #0
	bne _08015362
	mov r0, #2
	neg r0, r0
	and r0, r0, r1
	strb r0, [r4]
_08015362:
	ldr r1, _0801543C  @ =gLevelSelectLevelCursor
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r7, _08015440  @ =gLevelSelectWorldCursor
	strb r3, [r7]
	ldr r0, _08015444  @ =gCameraHorizontalOffset
	mov r1, r8
	strh r1, [r0]
	ldr r0, _08015448  @ =gCameraVerticalOffset
	strh r1, [r0]
	ldr r0, _0801544C  @ =gUnknown_03001930
	strh r1, [r0]
	ldr r0, _08015450  @ =gObjVRAMCopyOffset_0300192C
	strh r1, [r0]
	ldr r0, _08015454  @ =gUnknown_03001BDC
	strb r6, [r0]
	ldr r0, _08015458  @ =gLevelSelect_03000083
	strb r6, [r0]
	cmp r2, #1
	bne _0801546C
	ldr r1, _0801545C  @ =gLevelSelectMode
	mov r0, #2
	strb r0, [r1]
	add r0, r3, #1
	strb r0, [r7]
	strb r0, [r5]
	ldr r4, _08015460  @ =gLevelSelectPlusData
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _08015464  @ =gLevelSelectPlusBackgrounds
	mov r0, #0
	ldrsb r0, [r5, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #2
	bl load_graphics_config_08032F24
	ldr r1, _08015468  @ =gUnknown_08079504
	mov r0, #0
	ldrsb r0, [r5, r0]
	sub r0, r0, #1
	b _08015560
_080153C0:
	.4byte 0x0300007C
_080153C4:
	.4byte 0x03000094
_080153C8:
	.4byte 0x0100001C
_080153CC:
	.4byte gUnknown_030009D8
_080153D0:
	.4byte gUnknown_03001740
_080153D4:
	.4byte gLivesCount
_080153D8:
	.4byte 0x03000085
_080153DC:
	.4byte 0x03000086
_080153E0:
	.4byte 0x03000088
_080153E4:
	.4byte 0x03000089
_080153E8:
	.4byte 0x0300008A
_080153EC:
	.4byte 0x0300008B
_080153F0:
	.4byte 0x03000087
_080153F4:
	.4byte 0x0300008D
_080153F8:
	.4byte gUnknown_085E1F2C
_080153FC:
	.4byte 0x0300008E
_08015400:
	.4byte gUnknown_085E0AC4
_08015404:
	.4byte 0x0300008F
_08015408:
	.4byte 0x03000090
_0801540C:
	.4byte gUnknown_085E2870
_08015410:
	.4byte 0x03000091
_08015414:
	.4byte gUnknown_085C240C
_08015418:
	.4byte 0x03000092
_0801541C:
	.4byte gUnknown_085C7A78
_08015420:
	.4byte 0x0300008C
_08015424:
	.4byte gUnknown_085E3590
_08015428:
	.4byte gLevelSelectWorld
_0801542C:
	.4byte gCurrentWorld
_08015430:
	.4byte gLevelSelectLevel
_08015434:
	.4byte gNextLevelID
_08015438:
	.4byte gLevelType
_0801543C:
	.4byte gLevelSelectLevelCursor
_08015440:
	.4byte gLevelSelectWorldCursor
_08015444:
	.4byte gCameraHorizontalOffset
_08015448:
	.4byte gCameraVerticalOffset
_0801544C:
	.4byte gUnknown_03001930
_08015450:
	.4byte gObjVRAMCopyOffset_0300192C
_08015454:
	.4byte gUnknown_03001BDC
_08015458:
	.4byte gLevelSelect_03000083
_0801545C:
	.4byte gLevelSelectMode
_08015460:
	.4byte gLevelSelectPlusData
_08015464:
	.4byte gLevelSelectPlusBackgrounds
_08015468:
	.4byte gUnknown_08079504
_0801546C:
	cmp r2, #4
	bne _080154A4
	mov r2, r12
	strb r6, [r2]
	ldr r0, _08015498  @ =gLevelSelectMode
	mov r1, r9
	strb r1, [r0]
	mov r0, #6
	strb r0, [r5]
	strb r0, [r7]
	ldr r4, _0801549C  @ =gLevelSelectData
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _080154A0  @ =gLevelSelectDKBossBG
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #3
	bl load_graphics_config_08032F24
	mov r0, #17
	b _08015566
_08015498:
	.4byte gLevelSelectMode
_0801549C:
	.4byte gLevelSelectData
_080154A0:
	.4byte gLevelSelectDKBossBG
_080154A4:
	cmp r2, #5
	bne _080154E0
	mov r0, r9
	mov r2, r12
	strb r0, [r2]
	ldr r1, _080154D4  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	mov r0, #7
	strb r0, [r5]
	strb r0, [r7]
	ldr r4, _080154D8  @ =gLevelSelectPlusData
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _080154DC  @ =gLevelSelectDKPlusBossBG
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #3
	bl load_graphics_config_08032F24
	mov r0, #24
	b _08015566
	.byte 0x00
	.byte 0x00
_080154D4:
	.4byte gLevelSelectMode
_080154D8:
	.4byte gLevelSelectPlusData
_080154DC:
	.4byte gLevelSelectDKPlusBossBG
_080154E0:
	cmp r2, #2
	bne _080154F4
	strb r6, [r4]
	ldr r0, _080154F0  @ =gLevelSelectMode
	strb r6, [r0]
	mov r1, r12
	strb r6, [r1]
	b _0801553C
_080154F0:
	.4byte gLevelSelectMode
_080154F4:
	cmp r2, #3
	bne _08015538
	strb r6, [r4]
	ldr r1, _08015528  @ =gLevelSelectMode
	mov r0, #2
	strb r0, [r1]
	mov r0, r9
	mov r2, r12
	strb r0, [r2]
	ldr r4, _0801552C  @ =gLevelSelectPlusData
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _08015530  @ =gLevelSelectPlusBackgrounds
	mov r0, #0
	ldrsb r0, [r5, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #3
	bl load_graphics_config_08032F24
	ldr r1, _08015534  @ =gUnknown_08079504
	b _0801555C
_08015528:
	.4byte gLevelSelectMode
_0801552C:
	.4byte gLevelSelectPlusData
_08015530:
	.4byte gLevelSelectPlusBackgrounds
_08015534:
	.4byte gUnknown_08079504
_08015538:
	ldr r0, _080155FC  @ =gLevelSelectMode
	strb r6, [r0]
_0801553C:
	ldr r4, _08015600  @ =gLevelSelectData
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _08015604  @ =gLevelSelectBackgrounds
	mov r0, #0
	ldrsb r0, [r5, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #3
	bl load_graphics_config_08032F24
	ldr r1, _08015608  @ =gUnknown_080794EC
_0801555C:
	mov r0, #0
	ldrsb r0, [r5, r0]
_08015560:
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
_08015566:
	mov r1, #3
	bl load_predefined_palette
	add r0, r4, #0
	bl sub_08006968
	ldr r1, _0801560C  @ =0x03000070
	str r0, [r1]
	ldr r5, _08015610  @ =0x03000078
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	strh r0, [r5]
	ldr r4, _08015614  @ =0x03000074
	add r0, r1, #0
	bl arena_allocate
	add r1, r0, #0
	str r1, [r4]
	mov r0, sp
	add r0, r0, #18
	mov r6, #0
	strh r6, [r0]
	ldrh r2, [r5]
	lsr r2, r2, #1
	mov r3, #128
	lsl r3, r3, #17
	orr r2, r2, r3
	bl CpuSet
	ldr r0, _08015618  @ =gUnknown_03000BD0
	strb r6, [r0]
	add r4, sp, #20
	mov r0, #160
	strh r0, [r4]
	ldr r1, _0801561C  @ =REG_DMA3SAD
	str r4, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _08015620  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_08072144
	cmp r0, #0
	beq _080155CE
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_080155CE:
	ldr r0, _08015600  @ =gLevelSelectData
	bl sub_08029C9C
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #234
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	strh r6, [r4]
	ldr r1, _08015624  @ =gBGLayerOffsets 
	ldr r2, _08015628  @ =0x01000008
	add r0, r4, #0
	bl CpuSet
	add sp, sp, #24
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080155FC:
	.4byte gLevelSelectMode
_08015600:
	.4byte gLevelSelectData
_08015604:
	.4byte gLevelSelectBackgrounds
_08015608:
	.4byte gUnknown_080794EC
_0801560C:
	.4byte 0x03000070
_08015610:
	.4byte 0x03000078
_08015614:
	.4byte 0x03000074
_08015618:
	.4byte gUnknown_03000BD0
_0801561C:
	.4byte REG_DMA3SAD
_08015620:
	.4byte 0x81000100
_08015624:
	.4byte gBGLayerOffsets 
_08015628:
	.4byte 0x01000008
	THUMB_FUNC_END level_select_init_callback

	THUMB_FUNC_START sub_0801562C
sub_0801562C: @ 0x0801562C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #16
	ldr r6, _08015664  @ =gSomeKeys_030012E8
	ldrh r1, [r6]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08015684
	ldr r1, _08015668  @ =gLevelSelectLevel
	ldrb r2, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	bgt _08015670
	ldr r1, _0801566C  @ =gLevelSelectMode
	mov r0, #1
	strb r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _08015A18
_08015664:
	.4byte gSomeKeys_030012E8
_08015668:
	.4byte gLevelSelectLevel
_0801566C:
	.4byte gLevelSelectMode
_08015670:
	add r0, r2, #0
	sub r0, r0, #8
	strb r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _08015A18
_08015684:
	mov r7, #128
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08015720
	ldr r5, _080156C4  @ =gLevelSelectLevel
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bgt _08015718
	cmp r0, #6
	bne _080156D8
	ldr r0, _080156C8  @ =gLevelType
	ldrb r0, [r0]
	ldr r1, _080156CC  @ =gLevelSelectWorld
	ldrb r1, [r1]
	mov r2, #7
	add r3, sp, #12
	bl get_level_stats_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080156D0
	ldrb r0, [r5]
	add r0, r0, #8
	strb r0, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015A18
	.byte 0x00
	.byte 0x00
_080156C4:
	.4byte gLevelSelectLevel
_080156C8:
	.4byte gLevelType
_080156CC:
	.4byte gLevelSelectWorld
_080156D0:
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	b _08015A16
_080156D8:
	ldr r0, _08015708  @ =gLevelType
	ldrb r0, [r0]
	ldr r1, _0801570C  @ =gLevelSelectWorld
	ldrb r1, [r1]
	mov r2, #0
	ldrsb r2, [r5, r2]
	add r2, r2, #8
	asr r2, r2, #1
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl is_level_unlocked
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015710
	ldrb r0, [r5]
	add r0, r0, #8
	strb r0, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015A18
	.byte 0x00
	.byte 0x00
_08015708:
	.4byte gLevelType
_0801570C:
	.4byte gLevelSelectWorld
_08015710:
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	b _08015A16
_08015718:
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	b _08015A16
_08015720:
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08015730
	bl sub_08016260
	b _08015A48
_08015730:
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08015744
	bl sub_080161AC
	b _08015A48
_08015744:
	mov r0, #16
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	bne _08015752
	b _0801586C
_08015752:
	ldr r5, _08015788  @ =gLevelSelectLevel
	mov r6, #0
	ldrsb r6, [r5, r6]
	cmp r6, #10
	bgt _0801579C
	ldr r0, _0801578C  @ =gLevelType
	ldrb r0, [r0]
	ldr r1, _08015790  @ =gLevelSelectWorld
	ldrb r1, [r1]
	add r2, r6, #0
	add r2, r2, #2
	asr r2, r2, #1
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl is_level_unlocked
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015794
	ldrb r0, [r5]
	add r0, r0, #2
	strb r0, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015A18
_08015788:
	.4byte gLevelSelectLevel
_0801578C:
	.4byte gLevelType
_08015790:
	.4byte gLevelSelectWorld
_08015794:
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	b _08015A16
_0801579C:
	mov r3, #0
	ldrsb r3, [r5, r3]
	ldr r0, _08015818  @ =gUnknown_08B2CA5C
	ldr r1, _0801581C  @ =gLevelSelectWorld
	mov r8, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldr r2, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r3, r0
	bcs _08015860
	cmp r6, #11
	bgt _0801582C
	ldr r6, _08015820  @ =gLevelType
	ldrb r0, [r6]
	mov r2, r8
	ldrb r1, [r2]
	mov r2, #7
	bl is_level_unlocked
	lsl r0, r0, #24
	cmp r0, #0
	beq _080157EE
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080157EE:
	ldrb r0, [r6]
	mov r2, r8
	ldrb r1, [r2]
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #0
	bl is_level_unlocked
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015824
	ldrb r0, [r5]
	add r0, r0, #2
	strb r0, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015A18
	.byte 0x00
	.byte 0x00
_08015818:
	.4byte gUnknown_08B2CA5C
_0801581C:
	.4byte gLevelSelectWorld
_08015820:
	.4byte gLevelType
_08015824:
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	b _08015A16
_0801582C:
	ldr r0, _08015854  @ =gLevelType
	ldrb r0, [r0]
	mov r2, r8
	ldrb r1, [r2]
	mov r2, #7
	add r3, sp, #12
	bl get_level_stats_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015858
	ldrb r0, [r5]
	add r0, r0, #2
	strb r0, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015A18
	.byte 0x00
	.byte 0x00
_08015854:
	.4byte gLevelType
_08015858:
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	b _08015A16
_08015860:
	strb r4, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015A18
_0801586C:
	mov r0, #32
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _080158F4
	ldr r4, _080158B0  @ =gLevelSelectLevel
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _080158C4
	ldr r0, _080158B4  @ =gLevelType
	ldrb r0, [r0]
	ldr r1, _080158B8  @ =gLevelSelectWorld
	ldrb r1, [r1]
	mov r2, #0
	ldrsb r2, [r4, r2]
	sub r2, r2, #1
	asr r2, r2, #1
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl is_level_unlocked
	lsl r0, r0, #24
	cmp r0, #0
	beq _080158BC
	ldrb r0, [r4]
	sub r0, r0, #2
	strb r0, [r4]
	str r5, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	b _08015A18
_080158B0:
	.4byte gLevelSelectLevel
_080158B4:
	.4byte gLevelType
_080158B8:
	.4byte gLevelSelectWorld
_080158BC:
	str r5, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	b _08015A16
_080158C4:
	ldr r0, _080158EC  @ =gLevelType
	ldrb r0, [r0]
	ldr r1, _080158F0  @ =gLevelSelectWorld
	ldrb r1, [r1]
	mov r2, #7
	bl is_level_unlocked
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _080158DC
	b _08015A10
_080158DC:
	mov r0, #14
	strb r0, [r4]
	str r5, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	b _08015A18
	.byte 0x00
	.byte 0x00
_080158EC:
	.4byte gLevelType
_080158F0:
	.4byte gLevelSelectWorld
_080158F4:
	bl sub_08034004
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _08015902
	b _08015A24
_08015902:
	ldr r5, _08015934  @ =gLevelSelectWorld
	ldrb r1, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0801594C
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, _08015938  @ =gLevelSelectLevel
	ldrb r1, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #13
	bgt _08015940
	ldr r0, _0801593C  @ =gLevelType
	strb r4, [r0]
	b _08015982
	.byte 0x00
	.byte 0x00
_08015934:
	.4byte gLevelSelectWorld
_08015938:
	.4byte gLevelSelectLevel
_0801593C:
	.4byte gLevelType
_08015940:
	ldr r0, _08015948  @ =gLevelType
	strb r4, [r0]
	b _080159D2
	.byte 0x00
	.byte 0x00
_08015948:
	.4byte gLevelType
_0801594C:
	ldr r6, _080159B4  @ =gLevelType
	ldrb r0, [r6]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl is_world_or_expert_level_completed_080103C8
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _08015A10
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, _080159B8  @ =gLevelSelectLevel
	ldrb r1, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #13
	bgt _080159CC
	strb r4, [r6]
_08015982:
	ldr r0, _080159BC  @ =gNextLevelID
	strb r1, [r0]
	ldr r1, _080159C0  @ =gCurrentWorld
	ldrb r0, [r5]
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r5, r0]
	mov r1, #0
	ldrsb r1, [r2, r1]
	add r1, r1, #1
	asr r1, r1, #1
	bl tutorial_level_setup
	ldr r0, _080159C4  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #5
	mov r1, #1
	bl change_main_state
	ldr r0, _080159C8  @ =gUnknown_030012F8
	strh r4, [r0]
	b _08015A48
_080159B4:
	.4byte gLevelType
_080159B8:
	.4byte gLevelSelectLevel
_080159BC:
	.4byte gNextLevelID
_080159C0:
	.4byte gCurrentWorld
_080159C4:
	.4byte gNextLevelInLevelTable
_080159C8:
	.4byte gUnknown_030012F8
_080159CC:
	ldr r0, _08015A00  @ =gMiniMariosRescued_03001BA0
	strb r4, [r0]
	strb r4, [r6]
_080159D2:
	sub r1, r1, #1
	strb r1, [r2]
	ldr r0, _08015A04  @ =gNextLevelID
	strb r1, [r0]
	ldr r1, _08015A08  @ =gCurrentWorld
	ldrb r0, [r5]
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r5, r0]
	mov r1, #0
	ldrsb r1, [r2, r1]
	bl sub_0800F6EC
	ldr r0, _08015A0C  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl change_main_state
	b _08015A48
_08015A00:
	.4byte gMiniMariosRescued_03001BA0
_08015A04:
	.4byte gNextLevelID
_08015A08:
	.4byte gCurrentWorld
_08015A0C:
	.4byte gNextLevelInLevelTable
_08015A10:
	str r0, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
_08015A16:
	mov r0, #27
_08015A18:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08015A48
_08015A24:
	ldrh r1, [r6]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08015A48
	str r2, [sp]
	str r7, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #3
	mov r1, #1
	bl change_main_state
_08015A48:
	add sp, sp, #16
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801562C

	THUMB_FUNC_START sub_08015A54
sub_08015A54: @ 0x08015A54
	push {r4-r7,lr}
	sub sp, sp, #12
	ldr r5, _08015A74  @ =gSomeKeys_030012E8
	ldrh r1, [r5]
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08015AF8
	ldr r4, _08015A78  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #5
	ble _08015A7C
	mov r0, #0
	b _08015C28
_08015A74:
	.4byte gSomeKeys_030012E8
_08015A78:
	.4byte gLevelSelectWorldCursor
_08015A7C:
	ldr r0, _08015ABC  @ =gLevelType
	ldrb r0, [r0]
	ldrb r1, [r4]
	mov r2, #0
	bl is_level_unlocked
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _08015A92
	b _08015C28
_08015A92:
	ldr r0, _08015AC0  @ =gLevelSelectLevelCursor
	ldr r7, _08015AC4  @ =gLevelSelectLevel
	mov r2, #0
	strb r2, [r7]
	strb r2, [r0]
	ldr r5, _08015AC8  @ =gLevelSelectWorld
	mov r1, #0
	ldrsb r1, [r5, r1]
	ldrb r3, [r4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r1, r0
	bne _08015AD0
	ldr r0, _08015ACC  @ =gLevelSelectMode
	strb r2, [r0]
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #178
	b _08015C30
_08015ABC:
	.4byte gLevelType
_08015AC0:
	.4byte gLevelSelectLevelCursor
_08015AC4:
	.4byte gLevelSelectLevel
_08015AC8:
	.4byte gLevelSelectWorld
_08015ACC:
	.4byte gLevelSelectMode
_08015AD0:
	strb r3, [r5]
	strb r2, [r7]
	mov r1, #1
	ldr r0, _08015AF4  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	b _08015C30
	.byte 0x00
	.byte 0x00
_08015AF4:
	.4byte gLevelSelect_03000083
_08015AF8:
	bl sub_0801B224
	add r4, r0, #0
	cmp r4, #0
	beq _08015B04
	b _08015C5E
_08015B04:
	ldrh r1, [r5]
	mov r2, #9
	and r2, r2, r1
	cmp r2, #0
	bne world_dk_button
	b _08015C3C
world_dk_button:
	ldr r5, _08015B58  @ =gLevelSelectWorldCursor
	mov r2, #0
	ldrsb r2, [r5, r2]
	cmp r2, #6
	bne unused_plus_button
	ldr r1, _08015B5C  @ =gLevelType
	mov r0, #4
	strb r0, [r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #0
	mov r1, #0
	bl sub_0800F6EC
	ldr r0, _08015B60  @ =gCurrentWorld
	strb r4, [r0]
	ldr r0, _08015B64  @ =gNextLevelID
	strb r4, [r0]
	ldr r0, _08015B68  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl change_main_state
	b _08015C5E
	.byte 0x00
	.byte 0x00
_08015B58:
	.4byte gLevelSelectWorldCursor
_08015B5C:
	.4byte gLevelType
_08015B60:
	.4byte gCurrentWorld
_08015B64:
	.4byte gNextLevelID
_08015B68:
	.4byte gNextLevelInLevelTable
unused_plus_button:
	cmp r2, #7
	bne _08015BB8
	ldr r1, _08015BA4  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	ldr r0, _08015BA8  @ =gLevelSelectWorld
	strb r4, [r5]
	strb r4, [r0]
	ldr r1, _08015BAC  @ =gLevelSelectLevel
	ldr r0, _08015BB0  @ =gLevelSelectLevelCursor
	strb r4, [r0]
	strb r4, [r1]
	ldr r0, _08015BB4  @ =gLevelSelect_03000083
	strb r2, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #4
	bl sub_080150F0
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #183
	b _08015C30
_08015BA4:
	.4byte gLevelSelectMode
_08015BA8:
	.4byte gLevelSelectWorld
_08015BAC:
	.4byte gLevelSelectLevel
_08015BB0:
	.4byte gLevelSelectLevelCursor
_08015BB4:
	.4byte gLevelSelect_03000083
_08015BB8:
	ldr r0, _08015BEC  @ =gLevelType
	ldrb r0, [r0]
	ldrb r1, [r5]
	ldr r2, _08015BF0  @ =gLevelSelectLevelCursor
	ldrb r2, [r2]
	bl is_level_unlocked
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _08015C28
	ldr r3, _08015BF4  @ =gLevelSelectWorld
	mov r1, #0
	ldrsb r1, [r3, r1]
	ldrb r2, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bne _08015BFC
	ldr r0, _08015BF8  @ =gLevelSelectMode
	strb r4, [r0]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #24
	b _08015C30
_08015BEC:
	.4byte gLevelType
_08015BF0:
	.4byte gLevelSelectLevelCursor
_08015BF4:
	.4byte gLevelSelectWorld
_08015BF8:
	.4byte gLevelSelectMode
_08015BFC:
	strb r2, [r3]
	ldr r0, _08015C20  @ =gLevelSelectLevel
	strb r4, [r0]
	mov r1, #1
	ldr r0, _08015C24  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	b _08015C30
	.byte 0x00
	.byte 0x00
_08015C20:
	.4byte gLevelSelectLevel
_08015C24:
	.4byte gLevelSelect_03000083
_08015C28:
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #27
_08015C30:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08015C5E
_08015C3C:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08015C5E
	str r2, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #3
	mov r1, #1
	bl change_main_state
_08015C5E:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08015A54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08015C68
sub_08015C68: @ 0x08015C68
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	ldr r7, _08015CA0  @ =gSomeKeys_030012E8
	ldrh r1, [r7]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08015CC6
	ldr r2, _08015CA4  @ =gLevelSelectLevel
	ldrb r0, [r2]
	mov r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bgt _08015CAC
	ldr r1, _08015CA8  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _08015F3C
_08015CA0:
	.4byte gSomeKeys_030012E8
_08015CA4:
	.4byte gLevelSelectLevel
_08015CA8:
	.4byte gLevelSelectMode
_08015CAC:
	cmp r1, #6
	bne _08015CB4
	sub r0, r0, #4
	b _08015CB6
_08015CB4:
	sub r0, r0, #3
_08015CB6:
	strb r0, [r2]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _08015F3C
_08015CC6:
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _08015D2C
	ldr r5, _08015D10  @ =gLevelSelectLevel
	ldrb r2, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bgt _08015D24
	ldr r0, _08015D14  @ =gLevelType
	ldrb r0, [r0]
	ldr r1, _08015D18  @ =gLevelSelectWorld
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r2, r2, #3
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl is_level_unlocked
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015D1C
	ldrb r0, [r5]
	add r0, r0, #3
	strb r0, [r5]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015F3C
	.byte 0x00
	.byte 0x00
_08015D10:
	.4byte gLevelSelectLevel
_08015D14:
	.4byte gLevelType
_08015D18:
	.4byte gLevelSelectWorld
_08015D1C:
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	b _08015F3A
_08015D24:
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	b _08015F3A
_08015D2C:
	mov r0, #16
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08015DAC
	ldr r4, _08015D88  @ =gLevelSelectLevel
	mov r3, #0
	ldrsb r3, [r4, r3]
	ldr r0, _08015D8C  @ =gUnknown_08B2CDF4
	ldr r7, _08015D90  @ =gLevelSelectWorld
	mov r1, #0
	ldrsb r1, [r7, r1]
	ldr r2, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	sub r0, r0, #12
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r3, r0
	bcs _08015DA0
	ldr r0, _08015D94  @ =gLevelType
	ldrb r0, [r0]
	ldrb r1, [r7]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldrb r2, [r4]
	add r2, r2, #1
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl is_level_unlocked
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015D98
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	str r5, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	b _08015F3C
_08015D88:
	.4byte gLevelSelectLevel
_08015D8C:
	.4byte gUnknown_08B2CDF4
_08015D90:
	.4byte gLevelSelectWorld
_08015D94:
	.4byte gLevelType
_08015D98:
	str r5, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	b _08015F3A
_08015DA0:
	strb r5, [r4]
	str r5, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	b _08015F3C
_08015DAC:
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08015E38
	ldr r5, _08015DF0  @ =gLevelSelectLevel
	ldrb r2, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _08015E04
	ldr r0, _08015DF4  @ =gLevelType
	ldrb r0, [r0]
	ldr r1, _08015DF8  @ =gLevelSelectWorld
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	sub r2, r2, #1
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl is_level_unlocked
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015DFC
	ldrb r0, [r5]
	sub r0, r0, #1
	strb r0, [r5]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015F3C
	.byte 0x00
	.byte 0x00
_08015DF0:
	.4byte gLevelSelectLevel
_08015DF4:
	.4byte gLevelType
_08015DF8:
	.4byte gLevelSelectWorld
_08015DFC:
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	b _08015F3A
_08015E04:
	ldr r0, _08015E30  @ =gLevelType
	ldrb r0, [r0]
	ldr r1, _08015E34  @ =gLevelSelectWorld
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #6
	bl is_level_unlocked
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _08015E22
	b _08015F34
_08015E22:
	mov r0, #6
	strb r0, [r5]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015F3C
_08015E30:
	.4byte gLevelType
_08015E34:
	.4byte gLevelSelectWorld
_08015E38:
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08015E48
	bl sub_08016654
	b _08015F6C
_08015E48:
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08015E5C
	bl sub_080163F4
	b _08015F6C
_08015E5C:
	bl sub_08034004
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _08015F48
	ldr r7, _08015EA8  @ =gLevelSelectWorld
	ldrb r1, [r7]
	mov r2, #0
	ldrsb r2, [r7, r2]
	cmp r2, #1
	bne _08015EBC
	ldr r0, _08015EAC  @ =gLevelType
	strb r2, [r0]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08015EB0  @ =gNextLevelID
	ldr r2, _08015EB4  @ =gLevelSelectLevel
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _08015EB8  @ =gCurrentWorld
	ldrb r0, [r7]
	sub r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r7, r0]
	sub r0, r0, #1
	mov r1, #0
	ldrsb r1, [r2, r1]
	b _08015F08
	.byte 0x00
	.byte 0x00
_08015EA8:
	.4byte gLevelSelectWorld
_08015EAC:
	.4byte gLevelType
_08015EB0:
	.4byte gNextLevelID
_08015EB4:
	.4byte gLevelSelectLevel
_08015EB8:
	.4byte gCurrentWorld
_08015EBC:
	ldr r0, _08015F20  @ =gLevelType
	mov r8, r0
	ldrb r0, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _08015F24  @ =gLevelSelectLevel
	ldrb r2, [r5]
	bl is_level_unlocked
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _08015F34
	mov r0, #1
	mov r1, r8
	strb r0, [r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08015F28  @ =gNextLevelID
	ldrb r0, [r5]
	strb r0, [r1]
	ldr r1, _08015F2C  @ =gCurrentWorld
	ldrb r0, [r7]
	sub r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r7, r0]
	sub r0, r0, #1
	mov r1, #0
	ldrsb r1, [r5, r1]
_08015F08:
	bl sub_0800F6EC
	ldr r0, _08015F30  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl change_main_state
	b _08015F6C
_08015F20:
	.4byte gLevelType
_08015F24:
	.4byte gLevelSelectLevel
_08015F28:
	.4byte gNextLevelID
_08015F2C:
	.4byte gCurrentWorld
_08015F30:
	.4byte gNextLevelInLevelTable
_08015F34:
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
_08015F3A:
	mov r0, #27
_08015F3C:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08015F6C
_08015F48:
	ldrh r1, [r7]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08015F6C
	str r2, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #3
	mov r1, #1
	bl change_main_state
_08015F6C:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08015C68

	THUMB_FUNC_START sub_08015F78
sub_08015F78: @ 0x08015F78
	push {r4-r7,lr}
	sub sp, sp, #12
	ldr r5, _08015F9C  @ =gSomeKeys_030012E8
	ldrh r1, [r5]
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0801602C
	ldr r4, _08015FA0  @ =gLevelSelectWorldCursor
	ldrb r1, [r4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #6
	ble _08015FA4
	mov r0, #0
	b _0801616C
	.byte 0x00
	.byte 0x00
_08015F9C:
	.4byte gSomeKeys_030012E8
_08015FA0:
	.4byte gLevelSelectWorldCursor
_08015FA4:
	cmp r0, #0
	bne _08015FAA
	b _0801616C
_08015FAA:
	ldr r0, _08015FF0  @ =gLevelType
	ldrb r0, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #0
	bl is_level_unlocked
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _08015FC4
	b _0801616C
_08015FC4:
	ldr r0, _08015FF4  @ =gLevelSelectLevelCursor
	ldr r7, _08015FF8  @ =gLevelSelectLevel
	mov r2, #0
	strb r2, [r7]
	strb r2, [r0]
	ldr r5, _08015FFC  @ =gLevelSelectWorld
	mov r1, #0
	ldrsb r1, [r5, r1]
	ldrb r3, [r4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r1, r0
	bne _08016004
	ldr r0, _08016000  @ =gLevelSelectMode
	mov r1, #2
	strb r1, [r0]
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #178
	b _08016174
_08015FF0:
	.4byte gLevelType
_08015FF4:
	.4byte gLevelSelectLevelCursor
_08015FF8:
	.4byte gLevelSelectLevel
_08015FFC:
	.4byte gLevelSelectWorld
_08016000:
	.4byte gLevelSelectMode
_08016004:
	strb r3, [r5]
	strb r2, [r7]
	mov r1, #4
	ldr r0, _08016028  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	b _08016174
	.byte 0x00
	.byte 0x00
_08016028:
	.4byte gLevelSelect_03000083
_0801602C:
	bl sub_0801B258
	add r4, r0, #0
	cmp r4, #0
	beq _08016038
	b _080161A2
_08016038:
	ldrh r1, [r5]
	mov r2, #9
	and r2, r2, r1
	cmp r2, #0
	bne _08016044
	b _08016180
_08016044:
	ldr r5, _08016090  @ =gLevelSelectWorldCursor
	ldrb r1, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #6
	ble _080160A4
	ldr r1, _08016094  @ =gLevelType
	mov r0, #5
	strb r0, [r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #0
	mov r1, #1
	bl sub_0800F6EC
	ldr r1, _08016098  @ =gNextLevelID
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0801609C  @ =gCurrentWorld
	strb r4, [r0]
	ldr r0, _080160A0  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl change_main_state
	b _080161A2
	.byte 0x00
	.byte 0x00
_08016090:
	.4byte gLevelSelectWorldCursor
_08016094:
	.4byte gLevelType
_08016098:
	.4byte gNextLevelID
_0801609C:
	.4byte gCurrentWorld
_080160A0:
	.4byte gNextLevelInLevelTable
_080160A4:
	cmp r0, #0
	bne _080160F4
	ldr r1, _080160E0  @ =gLevelSelectMode
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080160E4  @ =gLevelSelectWorld
	mov r0, #7
	strb r0, [r5]
	strb r0, [r1]
	ldr r1, _080160E8  @ =gLevelSelectLevel
	ldr r0, _080160EC  @ =gLevelSelectLevelCursor
	strb r4, [r0]
	strb r4, [r1]
	ldr r1, _080160F0  @ =gLevelSelect_03000083
	mov r0, #9
	strb r0, [r1]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #5
	bl sub_080150F0
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #183
	b _08016174
_080160E0:
	.4byte gLevelSelectMode
_080160E4:
	.4byte gLevelSelectWorld
_080160E8:
	.4byte gLevelSelectLevel
_080160EC:
	.4byte gLevelSelectLevelCursor
_080160F0:
	.4byte gLevelSelect_03000083
_080160F4:
	ldr r0, _08016130  @ =gLevelType
	ldrb r0, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _08016134  @ =gLevelSelectLevelCursor
	ldrb r2, [r2]
	bl is_level_unlocked
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _0801616C
	ldr r3, _08016138  @ =gLevelSelectWorld
	mov r1, #0
	ldrsb r1, [r3, r1]
	ldrb r2, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bne _08016140
	ldr r1, _0801613C  @ =gLevelSelectMode
	mov r0, #2
	strb r0, [r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #24
	b _08016174
	.byte 0x00
	.byte 0x00
_08016130:
	.4byte gLevelType
_08016134:
	.4byte gLevelSelectLevelCursor
_08016138:
	.4byte gLevelSelectWorld
_0801613C:
	.4byte gLevelSelectMode
_08016140:
	sub r0, r2, #1
	strb r0, [r3]
	ldr r0, _08016164  @ =gLevelSelectLevel
	strb r4, [r0]
	mov r1, #4
	ldr r0, _08016168  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	b _08016174
_08016164:
	.4byte gLevelSelectLevel
_08016168:
	.4byte gLevelSelect_03000083
_0801616C:
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #27
_08016174:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _080161A2
_08016180:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _080161A2
	str r2, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #3
	mov r1, #1
	bl change_main_state
_080161A2:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08015F78

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080161AC
sub_080161AC: @ 0x080161AC
	push {r4-r6,lr}
	sub sp, sp, #12
	ldr r5, _08016220  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _08016240
	cmp r0, #6
	bgt _080161F4
	ldr r0, _08016224  @ =0x03000094
	ldr r3, [r0]
	mov r0, #15
	mov r4, #15
	strh r4, [r3]
	ldr r2, _08016228  @ =REG_BLDCNT
	ldr r6, _0801622C  @ =0x00003D42
	add r1, r6, #0
	strh r1, [r2]
	add r2, r2, #2
	ldrh r1, [r3]
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r0, r0, r1
	strh r0, [r2]
	mov r1, #3
	mov r0, #5
	strh r0, [r3, #6]
	ldr r0, _08016230  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	strh r4, [r3]
_080161F4:
	ldrb r0, [r5]
	sub r0, r0, #1
	strb r0, [r5]
	ldr r1, _08016234  @ =gLevelSelectWorld
	strb r0, [r1]
	ldr r2, _08016238  @ =gLevelSelectLevel
	ldr r1, _0801623C  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #177
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08016256
_08016220:
	.4byte gLevelSelectWorldCursor
_08016224:
	.4byte 0x03000094
_08016228:
	.4byte REG_BLDCNT
_0801622C:
	.4byte 0x00003D42
_08016230:
	.4byte gLevelSelect_03000083
_08016234:
	.4byte gLevelSelectWorld
_08016238:
	.4byte gLevelSelectLevel
_0801623C:
	.4byte gLevelSelectLevelCursor
_08016240:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08016256:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080161AC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08016260
sub_08016260: @ 0x08016260
	push {r4,lr}
	sub sp, sp, #12
	ldr r4, _080162C4  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bgt _080162F0
	ldr r0, _080162C8  @ =gLevelType
	ldrb r0, [r0]
	ldrb r1, [r4]
	bl is_world_or_expert_level_completed_080103C8
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _080162E4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r1, _080162CC  @ =gLevelSelectWorld
	strb r0, [r1]
	ldr r2, _080162D0  @ =gLevelSelectLevel
	ldr r1, _080162D4  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #3
	ldr r0, _080162D8  @ =0x03000094
	ldr r2, [r0]
	mov r3, #0
	mov r0, #5
	strh r0, [r2, #6]
	ldr r0, _080162DC  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r4, #250
	lsl r4, r4, #5
	add r0, r4, #0
	strh r0, [r1]
	mov r1, #15
	strh r1, [r2]
	ldr r0, _080162E0  @ =REG_BLDALPHA
	strh r1, [r0]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #177
	b _080163B8
_080162C4:
	.4byte gLevelSelectWorldCursor
_080162C8:
	.4byte gLevelType
_080162CC:
	.4byte gLevelSelectWorld
_080162D0:
	.4byte gLevelSelectLevel
_080162D4:
	.4byte gLevelSelectLevelCursor
_080162D8:
	.4byte 0x03000094
_080162DC:
	.4byte gLevelSelect_03000083
_080162E0:
	.4byte REG_BLDALPHA
_080162E4:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _080163B8
_080162F0:
	cmp r0, #5
	bne _08016370
	ldr r0, _08016348  @ =gLevelType
	ldrb r0, [r0]
	mov r1, #5
	bl is_world_or_expert_level_completed_080103C8
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _08016364
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r1, _0801634C  @ =gLevelSelectWorld
	strb r0, [r1]
	ldr r2, _08016350  @ =gLevelSelectLevel
	ldr r1, _08016354  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #13
	ldr r0, _08016358  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldr r0, _0801635C  @ =0x03000094
	ldr r0, [r0]
	mov r2, #0
	mov r1, #15
	strh r1, [r0]
	ldr r0, _08016360  @ =REG_BLDALPHA
	strh r1, [r0]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #177
	b _080163B8
	.byte 0x00
	.byte 0x00
_08016348:
	.4byte gLevelType
_0801634C:
	.4byte gLevelSelectWorld
_08016350:
	.4byte gLevelSelectLevel
_08016354:
	.4byte gLevelSelectLevelCursor
_08016358:
	.4byte gLevelSelect_03000083
_0801635C:
	.4byte 0x03000094
_08016360:
	.4byte REG_BLDALPHA
_08016364:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _080163B8
_08016370:
	bl sub_08014BD0
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _080163D8
	ldr r1, _080163C4  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	ldr r1, _080163C8  @ =gLevelSelectWorld
	mov r0, #1
	strb r0, [r4]
	strb r0, [r1]
	ldr r2, _080163CC  @ =gLevelSelectLevel
	ldr r1, _080163D0  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #7
	ldr r0, _080163D4  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r4, #250
	lsl r4, r4, #5
	add r0, r4, #0
	strh r0, [r1]
	mov r0, #4
	bl sub_080150F0
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #183
_080163B8:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _080163EC
_080163C4:
	.4byte gLevelSelectMode
_080163C8:
	.4byte gLevelSelectWorld
_080163CC:
	.4byte gLevelSelectLevel
_080163D0:
	.4byte gLevelSelectLevelCursor
_080163D4:
	.4byte gLevelSelect_03000083
_080163D8:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080163EC:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016260

	THUMB_FUNC_START sub_080163F4
sub_080163F4: @ 0x080163F4
	push {r4-r7,lr}
	sub sp, sp, #12
	ldr r6, _08016444  @ =gLevelSelectWorldCursor
	mov r1, #0
	ldrsb r1, [r6, r1]
	cmp r1, #0
	bgt _08016404
	b _080165F2
_08016404:
	cmp r1, #1
	bne _0801645C
	ldr r0, _08016448  @ =gLevelSelectMode
	strb r1, [r0]
	ldr r1, _0801644C  @ =gLevelSelectWorld
	mov r0, #6
	strb r0, [r6]
	strb r0, [r1]
	ldr r2, _08016450  @ =gLevelSelectLevel
	ldr r1, _08016454  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #9
	ldr r0, _08016458  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #5
	bl sub_080150F0
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #183
	b _080165E6
_08016444:
	.4byte gLevelSelectWorldCursor
_08016448:
	.4byte gLevelSelectMode
_0801644C:
	.4byte gLevelSelectWorld
_08016450:
	.4byte gLevelSelectLevel
_08016454:
	.4byte gLevelSelectLevelCursor
_08016458:
	.4byte gLevelSelect_03000083
_0801645C:
	cmp r1, #1
	ble _080164E8
	ldr r0, _080164CC  @ =0x03000094
	ldr r3, [r0]
	mov r5, #0
	mov r7, #0
	mov r12, r7
	mov r0, #15
	mov r4, #15
	strh r4, [r3]
	ldr r2, _080164D0  @ =REG_BLDCNT
	ldr r7, _080164D4  @ =0x00003D42
	add r1, r7, #0
	strh r1, [r2]
	add r2, r2, #2
	ldrh r1, [r3]
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r0, r0, r1
	strh r0, [r2]
	mov r1, #6
	mov r0, #5
	strh r0, [r3, #6]
	ldr r0, _080164D8  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	strh r4, [r3]
	ldrb r1, [r6]
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #8
	bne _080164AA
	sub r0, r1, #1
	strb r0, [r6]
_080164AA:
	ldrb r0, [r6]
	sub r0, r0, #1
	strb r0, [r6]
	ldr r1, _080164DC  @ =gLevelSelectWorld
	strb r0, [r1]
	ldr r1, _080164E0  @ =gLevelSelectLevel
	ldr r0, _080164E4  @ =gLevelSelectLevelCursor
	strb r5, [r0]
	strb r5, [r1]
	mov r7, r12
	str r7, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #177
	b _080165E6
	.byte 0x00
	.byte 0x00
_080164CC:
	.4byte 0x03000094
_080164D0:
	.4byte REG_BLDCNT
_080164D4:
	.4byte 0x00003D42
_080164D8:
	.4byte gLevelSelect_03000083
_080164DC:
	.4byte gLevelSelectWorld
_080164E0:
	.4byte gLevelSelectLevel
_080164E4:
	.4byte gLevelSelectLevelCursor
_080164E8:
	mov r0, #5
	mov r1, #0
	mov r2, #0
	bl is_level_unlocked
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	beq _08016554
	ldr r1, _0801653C  @ =gLevelSelectWorld
	mov r0, #7
	strb r0, [r6]
	strb r0, [r1]
	ldr r2, _08016540  @ =gLevelSelectLevel
	ldr r1, _08016544  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #16
	ldr r0, _08016548  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldr r0, _0801654C  @ =0x03000094
	ldr r0, [r0]
	mov r2, #0
	mov r1, #15
	strh r1, [r0]
	ldr r0, _08016550  @ =REG_BLDALPHA
	strh r1, [r0]
	mov r0, #8
	strb r0, [r6]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #177
	b _080165E6
_0801653C:
	.4byte gLevelSelectWorld
_08016540:
	.4byte gLevelSelectLevel
_08016544:
	.4byte gLevelSelectLevelCursor
_08016548:
	.4byte gLevelSelect_03000083
_0801654C:
	.4byte 0x03000094
_08016550:
	.4byte REG_BLDALPHA
_08016554:
	mov r0, #1
	mov r1, #5
	mov r2, #0
	bl is_level_unlocked
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _080165DC
	ldr r1, _080165C0  @ =gLevelSelectWorld
	mov r0, #6
	strb r0, [r6]
	strb r0, [r1]
	ldr r1, _080165C4  @ =gLevelSelectLevel
	ldr r0, _080165C8  @ =gLevelSelectLevelCursor
	strb r5, [r0]
	strb r5, [r1]
	ldr r0, _080165CC  @ =0x03000094
	ldr r3, [r0]
	mov r0, #15
	mov r4, #15
	strh r4, [r3]
	ldr r2, _080165D0  @ =REG_BLDCNT
	ldr r7, _080165D4  @ =0x00003D42
	add r1, r7, #0
	strh r1, [r2]
	add r2, r2, #2
	ldrh r1, [r3]
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r0, r0, r1
	strh r0, [r2]
	mov r1, #6
	mov r0, #5
	strh r0, [r3, #6]
	ldr r0, _080165D8  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r7, #250
	lsl r7, r7, #5
	add r0, r7, #0
	strh r0, [r1]
	strh r4, [r3]
	strh r4, [r2]
	mov r0, #7
	strb r0, [r6]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #177
	b _080165E6
	.byte 0x00
	.byte 0x00
_080165C0:
	.4byte gLevelSelectWorld
_080165C4:
	.4byte gLevelSelectLevel
_080165C8:
	.4byte gLevelSelectLevelCursor
_080165CC:
	.4byte 0x03000094
_080165D0:
	.4byte REG_BLDCNT
_080165D4:
	.4byte 0x00003D42
_080165D8:
	.4byte gLevelSelect_03000083
_080165DC:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
_080165E6:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08016638
_080165F2:
	ldr r1, _08016640  @ =gLevelSelectMode
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08016644  @ =gLevelSelectWorld
	mov r0, #7
	strb r0, [r6]
	strb r0, [r1]
	ldr r2, _08016648  @ =gLevelSelectLevel
	ldr r1, _0801664C  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #9
	ldr r0, _08016650  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #5
	bl sub_080150F0
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #183
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08016638:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_08016640:
	.4byte gLevelSelectMode
_08016644:
	.4byte gLevelSelectWorld
_08016648:
	.4byte gLevelSelectLevel
_0801664C:
	.4byte gLevelSelectLevelCursor
_08016650:
	.4byte gLevelSelect_03000083
	THUMB_FUNC_END sub_080163F4

	THUMB_FUNC_START sub_08016654
sub_08016654: @ 0x08016654
	push {r4-r6,lr}
	sub sp, sp, #12
	ldr r4, _0801668C  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _08016690  @ =gUnknown_08B2CDF4
	ldr r1, [r1]
	cmp r0, r1
	bls _08016668
	b _0801683C
_08016668:
	ldrb r1, [r4]
	add r2, r0, #0
	cmp r2, #0
	bne _080166A0
	add r1, r1, #1
	strb r1, [r4]
	ldr r0, _08016694  @ =gLevelSelectWorld
	strb r1, [r0]
	ldr r1, _08016698  @ =gLevelSelectLevel
	ldr r0, _0801669C  @ =gLevelSelectLevelCursor
	strb r2, [r0]
	strb r2, [r1]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #177
	b _08016830
_0801668C:
	.4byte gLevelSelectWorldCursor
_08016690:
	.4byte gUnknown_08B2CDF4
_08016694:
	.4byte gLevelSelectWorld
_08016698:
	.4byte gLevelSelectLevel
_0801669C:
	.4byte gLevelSelectLevelCursor
_080166A0:
	cmp r2, #5
	bgt _08016738
	ldr r0, _08016718  @ =gLevelType
	ldrb r0, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl is_world_or_expert_level_completed_080103C8
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _080166BC
	b _08016826
_080166BC:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r1, _0801671C  @ =gLevelSelectWorld
	strb r0, [r1]
	ldr r2, _08016720  @ =gLevelSelectLevel
	ldr r1, _08016724  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	ldr r0, _08016728  @ =0x03000094
	ldr r3, [r0]
	mov r5, #0
	mov r0, #15
	mov r4, #15
	strh r4, [r3]
	ldr r2, _0801672C  @ =REG_BLDCNT
	ldr r6, _08016730  @ =0x00003D42
	add r1, r6, #0
	strh r1, [r2]
	add r2, r2, #2
	ldrh r1, [r3]
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r0, r0, r1
	strh r0, [r2]
	mov r1, #6
	mov r0, #5
	strh r0, [r3, #6]
	ldr r0, _08016734  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r6, #250
	lsl r6, r6, #5
	add r0, r6, #0
	strh r0, [r1]
	strh r4, [r3]
	strh r4, [r2]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #177
	b _08016830
	.byte 0x00
	.byte 0x00
_08016718:
	.4byte gLevelType
_0801671C:
	.4byte gLevelSelectWorld
_08016720:
	.4byte gLevelSelectLevel
_08016724:
	.4byte gLevelSelectLevelCursor
_08016728:
	.4byte 0x03000094
_0801672C:
	.4byte REG_BLDCNT
_08016730:
	.4byte 0x00003D42
_08016734:
	.4byte gLevelSelect_03000083
_08016738:
	mov r0, #5
	mov r1, #0
	mov r2, #0
	bl is_level_unlocked
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _08016826
	ldrb r1, [r4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #6
	bne _080167AC
	add r1, r1, #1
	strb r1, [r4]
	ldr r0, _08016794  @ =gLevelSelectWorld
	strb r1, [r0]
	ldr r2, _08016798  @ =gLevelSelectLevel
	ldr r1, _0801679C  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #16
	ldr r0, _080167A0  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldr r0, _080167A4  @ =0x03000094
	ldr r0, [r0]
	mov r2, #0
	mov r1, #15
	strh r1, [r0]
	ldr r0, _080167A8  @ =REG_BLDALPHA
	strh r1, [r0]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #177
	b _08016830
	.byte 0x00
	.byte 0x00
_08016794:
	.4byte gLevelSelectWorld
_08016798:
	.4byte gLevelSelectLevel
_0801679C:
	.4byte gLevelSelectLevelCursor
_080167A0:
	.4byte gLevelSelect_03000083
_080167A4:
	.4byte 0x03000094
_080167A8:
	.4byte REG_BLDALPHA
_080167AC:
	cmp r0, #7
	bne _08016824
	ldr r0, _08016808  @ =gLevelSelectWorld
	mov r1, #0
	strb r1, [r4]
	strb r1, [r0]
	ldr r2, _0801680C  @ =gLevelSelectLevel
	ldr r0, _08016810  @ =gLevelSelectLevelCursor
	strb r1, [r0]
	strb r1, [r2]
	ldr r0, _08016814  @ =0x03000094
	ldr r3, [r0]
	mov r5, #0
	mov r0, #15
	mov r4, #15
	strh r4, [r3]
	ldr r2, _08016818  @ =REG_BLDCNT
	ldr r6, _0801681C  @ =0x00003D42
	add r1, r6, #0
	strh r1, [r2]
	add r2, r2, #2
	ldrh r1, [r3]
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r0, r0, r1
	strh r0, [r2]
	mov r1, #6
	mov r0, #5
	strh r0, [r3, #6]
	ldr r0, _08016820  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r6, #250
	lsl r6, r6, #5
	add r0, r6, #0
	strh r0, [r1]
	strh r4, [r3]
	strh r4, [r2]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #177
	b _08016830
	.byte 0x00
	.byte 0x00
_08016808:
	.4byte gLevelSelectWorld
_0801680C:
	.4byte gLevelSelectLevel
_08016810:
	.4byte gLevelSelectLevelCursor
_08016814:
	.4byte 0x03000094
_08016818:
	.4byte REG_BLDCNT
_0801681C:
	.4byte 0x00003D42
_08016820:
	.4byte gLevelSelect_03000083
_08016824:
	mov r1, #0
_08016826:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
_08016830:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08016852
_0801683C:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08016852:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016654

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801685C
sub_0801685C: @ 0x0801685C
	push {r4,lr}
	sub sp, sp, #12
	ldr r0, _08016898  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r4, #128
	add r0, r4, #0
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _080168A4
	ldr r1, _0801689C  @ =gLevelSelectMode
	mov r0, #4
	strb r0, [r1]
	mov r1, #11
	ldr r0, _080168A0  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	b _0801691C
	.byte 0x00
	.byte 0x00
_08016898:
	.4byte gSomeKeys_030012E8
_0801689C:
	.4byte gLevelSelectMode
_080168A0:
	.4byte gLevelSelect_03000083
_080168A4:
	mov r0, #16
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #0
	beq _080168C4
	str r1, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _080168EC
_080168C4:
	mov r0, #32
	and r0, r0, r2
	cmp r0, #0
	beq _080168EC
	ldr r1, _08016928  @ =gLevelSelectWorldCursor
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, _0801692C  @ =gLevelSelectMode
	mov r0, #1
	strb r0, [r1]
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080168EC:
	ldr r0, _08016930  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _08016938
	ldr r1, _0801692C  @ =gLevelSelectMode
	mov r0, #4
	strb r0, [r1]
	mov r1, #11
	ldr r0, _08016934  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #24
_0801691C:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0801695C
_08016928:
	.4byte gLevelSelectWorldCursor
_0801692C:
	.4byte gLevelSelectMode
_08016930:
	.4byte gSomeKeys_030012E8
_08016934:
	.4byte gLevelSelect_03000083
_08016938:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _0801695C
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #3
	mov r1, #1
	bl change_main_state
_0801695C:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801685C

	THUMB_FUNC_START sub_08016964
sub_08016964: @ 0x08016964
	push {r4,lr}
	sub sp, sp, #12
	ldr r0, _08016998  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _080169A0
	ldr r1, _0801699C  @ =gLevelSelectMode
	mov r0, #1
	strb r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08016A1C
	.byte 0x00
	.byte 0x00
_08016998:
	.4byte gSomeKeys_030012E8
_0801699C:
	.4byte gLevelSelectMode
_080169A0:
	mov r2, #9
	and r2, r2, r1
	cmp r2, #0
	beq _080169F8
	ldr r1, _080169E8  @ =gLevelType
	mov r0, #4
	strb r0, [r1]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #0
	mov r1, #0
	bl sub_0800F6EC
	ldr r0, _080169EC  @ =gCurrentWorld
	strb r4, [r0]
	ldr r0, _080169F0  @ =gNextLevelID
	strb r4, [r0]
	ldr r0, _080169F4  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl change_main_state
	b _08016A1C
	.byte 0x00
	.byte 0x00
_080169E8:
	.4byte gLevelType
_080169EC:
	.4byte gCurrentWorld
_080169F0:
	.4byte gNextLevelID
_080169F4:
	.4byte gNextLevelInLevelTable
_080169F8:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08016A1C
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #3
	mov r1, #1
	bl change_main_state
_08016A1C:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016964

	THUMB_FUNC_START sub_08016A24
sub_08016A24: @ 0x08016A24
	push {r4,lr}
	sub sp, sp, #12
	ldr r0, _08016A60  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r4, #128
	add r0, r4, #0
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _08016A6C
	ldr r1, _08016A64  @ =gLevelSelectMode
	mov r0, #5
	strb r0, [r1]
	mov r1, #14
	ldr r0, _08016A68  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	b _08016AE4
	.byte 0x00
	.byte 0x00
_08016A60:
	.4byte gSomeKeys_030012E8
_08016A64:
	.4byte gLevelSelectMode
_08016A68:
	.4byte gLevelSelect_03000083
_08016A6C:
	mov r0, #16
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #0
	beq _08016A8C
	str r1, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08016AB4
_08016A8C:
	mov r0, #32
	and r0, r0, r2
	cmp r0, #0
	beq _08016AB4
	ldr r1, _08016AF0  @ =gLevelSelectWorldCursor
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, _08016AF4  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08016AB4:
	ldr r0, _08016AF8  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _08016B00
	ldr r1, _08016AF4  @ =gLevelSelectMode
	mov r0, #5
	strb r0, [r1]
	mov r1, #14
	ldr r0, _08016AFC  @ =gLevelSelect_03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #24
_08016AE4:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08016B24
_08016AF0:
	.4byte gLevelSelectWorldCursor
_08016AF4:
	.4byte gLevelSelectMode
_08016AF8:
	.4byte gSomeKeys_030012E8
_08016AFC:
	.4byte gLevelSelect_03000083
_08016B00:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _08016B24
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #3
	mov r1, #1
	bl change_main_state
_08016B24:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016A24

	THUMB_FUNC_START sub_08016B2C
sub_08016B2C: @ 0x08016B2C
	push {r4,lr}
	sub sp, sp, #12
	ldr r0, _08016B60  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08016B68
	ldr r1, _08016B64  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08016BE4
	.byte 0x00
	.byte 0x00
_08016B60:
	.4byte gSomeKeys_030012E8
_08016B64:
	.4byte gLevelSelectMode
_08016B68:
	mov r2, #9
	and r2, r2, r1
	cmp r2, #0
	beq _08016BC0
	ldr r1, _08016BB0  @ =gLevelType
	mov r0, #5
	strb r0, [r1]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #0
	mov r1, #1
	bl sub_0800F6EC
	ldr r1, _08016BB4  @ =gNextLevelID
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08016BB8  @ =gCurrentWorld
	strb r4, [r0]
	ldr r0, _08016BBC  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl change_main_state
	b _08016BE4
_08016BB0:
	.4byte gLevelType
_08016BB4:
	.4byte gNextLevelID
_08016BB8:
	.4byte gCurrentWorld
_08016BBC:
	.4byte gNextLevelInLevelTable
_08016BC0:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08016BE4
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #3
	mov r1, #1
	bl change_main_state
_08016BE4:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016B2C

	THUMB_FUNC_START level_select_main
level_select_main: @ 0x08016BEC
	push {r4,r5,lr}
	sub sp, sp, #40
	bl sub_08029C20
	bl process_input
	ldr r3, _08016C28  @ =gLevelSelect_03000083
	mov r2, #0
	ldrsb r2, [r3, r2]
	cmp r2, #0
	bne _08016C04
	b _08016FB0
_08016C04:
	ldr r2, _08016C2C  @ =gBGLayerOffsets 
	ldr r0, _08016C30  @ =0x03000094
	ldr r1, [r0]
	mov r0, #0
	strh r0, [r1, #4]
	strh r0, [r2, #12]
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #15
	bls _08016C1E
	b _0801706A
_08016C1E:
	lsl r0, r0, #2
	ldr r1, _08016C34  @ =0x08016C38
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08016C28:
	.4byte gLevelSelect_03000083
_08016C2C:
	.4byte gBGLayerOffsets 
_08016C30:
	.4byte 0x03000094
_08016C34:
	.4byte _08016C38
_08016C38:
	.4byte _08016C78
	.4byte _08016C94
	.4byte _08016D8A
	.4byte _08016D08
	.4byte _08016D24
	.4byte _08016CF6
	.4byte _08016E44
	.4byte _08016ED0
	.4byte _08016EFC
	.4byte _08016F7C
	.4byte _08016D9C
	.4byte _08016DB8
	.4byte _08016DDC
	.4byte _08016DF0
	.4byte _08016E0C
	.4byte _08016E30
_08016C78:
	mov r0, #1
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016C86
	b _0801706A
_08016C86:
	ldr r1, _08016C90  @ =gLevelSelect_03000083
	mov r0, #3
	strb r0, [r1]
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016C90:
	.4byte gLevelSelect_03000083
_08016C94:
	mov r0, #0
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	beq _08016CBC
	ldr r1, _08016CB4  @ =gLevelSelectMode
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	beq _08016CAC
	mov r0, #0
_08016CAC:
	strb r0, [r1]
	ldr r1, _08016CB8  @ =gLevelSelect_03000083
	mov r0, #0
	b _08016F90
_08016CB4:
	.4byte gLevelSelectMode
_08016CB8:
	.4byte gLevelSelect_03000083
_08016CBC:
	ldr r0, _08016CDC  @ =0x03000094
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	cmp r0, #0
	bne _08016D56
	ldr r0, _08016CE0  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #136
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08016CE4
	bl sub_08016260
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016CDC:
	.4byte 0x03000094
_08016CE0:
	.4byte gSomeKeys_030012E8
_08016CE4:
	mov r0, #136
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08016CF0
	b _0801706A
_08016CF0:
	bl sub_080161AC
	b _0801706A
_08016CF6:
	mov r0, #1
	bl sub_080150F0
	ldr r1, _08016D04  @ =gLevelSelect_03000083
	mov r0, #5
	strb r0, [r1]
	b _0801706A
_08016D04:
	.4byte gLevelSelect_03000083
_08016D08:
	mov r0, #1
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016D16
	b _0801706A
_08016D16:
	ldr r1, _08016D20  @ =gLevelSelect_03000083
	mov r0, #6
	strb r0, [r1]
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016D20:
	.4byte gLevelSelect_03000083
_08016D24:
	mov r0, #0
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	beq _08016D4C
	ldr r1, _08016D44  @ =gLevelSelectMode
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _08016D3C
	mov r0, #2
_08016D3C:
	strb r0, [r1]
	ldr r1, _08016D48  @ =gLevelSelect_03000083
	mov r0, #0
	b _08016F90
_08016D44:
	.4byte gLevelSelectMode
_08016D48:
	.4byte gLevelSelect_03000083
_08016D4C:
	ldr r0, _08016D5C  @ =0x03000094
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _08016D60
_08016D56:
	sub r0, r0, #1
	strh r0, [r1, #6]
	b _0801706A
_08016D5C:
	.4byte 0x03000094
_08016D60:
	ldr r0, _08016D74  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #136
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08016D78
	bl sub_08016654
	b _0801706A
_08016D74:
	.4byte gSomeKeys_030012E8
_08016D78:
	mov r0, #136
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08016D84
	b _0801706A
_08016D84:
	bl sub_080163F4
	b _0801706A
_08016D8A:
	mov r0, #0
	bl sub_080150F0
	ldr r1, _08016D98  @ =gLevelSelect_03000083
	mov r0, #2
	strb r0, [r1]
	b _0801706A
_08016D98:
	.4byte gLevelSelect_03000083
_08016D9C:
	mov r0, #1
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016DAA
	b _0801706A
_08016DAA:
	ldr r1, _08016DB4  @ =gLevelSelect_03000083
	mov r0, #13
	strb r0, [r1]
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016DB4:
	.4byte gLevelSelect_03000083
_08016DB8:
	mov r0, #0
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016DC6
	b _0801706A
_08016DC6:
	ldr r1, _08016DD4  @ =gLevelSelectMode
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08016DD8  @ =gLevelSelect_03000083
	mov r0, #0
	b _08016F90
	.byte 0x00
	.byte 0x00
_08016DD4:
	.4byte gLevelSelectMode
_08016DD8:
	.4byte gLevelSelect_03000083
_08016DDC:
	ldr r1, _08016DEC  @ =gLevelSelect_03000083
	mov r0, #12
	strb r0, [r1]
	mov r0, #2
	bl sub_080150F0
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016DEC:
	.4byte gLevelSelect_03000083
_08016DF0:
	mov r0, #1
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016DFE
	b _0801706A
_08016DFE:
	ldr r1, _08016E08  @ =gLevelSelect_03000083
	mov r0, #16
	strb r0, [r1]
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016E08:
	.4byte gLevelSelect_03000083
_08016E0C:
	mov r0, #0
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016E1A
	b _0801706A
_08016E1A:
	ldr r1, _08016E28  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	ldr r1, _08016E2C  @ =gLevelSelect_03000083
	mov r0, #0
	b _08016F90
	.byte 0x00
	.byte 0x00
_08016E28:
	.4byte gLevelSelectMode
_08016E2C:
	.4byte gLevelSelect_03000083
_08016E30:
	ldr r1, _08016E40  @ =gLevelSelect_03000083
	mov r0, #15
	strb r0, [r1]
	mov r0, #3
	bl sub_080150F0
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016E40:
	.4byte gLevelSelect_03000083
_08016E44:
	bl sub_08029F7C
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016E50
	b _0801706A
_08016E50:
	ldr r5, _08016EB0  @ =gLevelSelectPlusData
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r1, _08016EB4  @ =gLevelSelectPlusBackgrounds
	ldr r4, _08016EB8  @ =gLevelSelectWorld
	mov r0, #0
	ldrsb r0, [r4, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #3
	bl load_graphics_config_08032F24
	ldr r1, _08016EBC  @ =gUnknown_08079504
	mov r0, #0
	ldrsb r0, [r4, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #3
	bl load_predefined_palette
	add r0, sp, #16
	mov r1, #0
	strh r1, [r0]
	ldr r1, _08016EC0  @ =0x03000074
	ldr r1, [r1]
	ldr r2, _08016EC4  @ =0x03000078
	ldrh r2, [r2]
	lsr r2, r2, #1
	mov r3, #128
	lsl r3, r3, #17
	orr r2, r2, r3
	bl CpuSet
	add r0, r5, #0
	bl sub_08006968
	ldr r1, _08016EC8  @ =0x03000070
	str r0, [r1]
	ldr r1, _08016ECC  @ =gLevelSelect_03000083
	mov r0, #8
	b _08016F4C
_08016EB0:
	.4byte gLevelSelectPlusData
_08016EB4:
	.4byte gLevelSelectPlusBackgrounds
_08016EB8:
	.4byte gLevelSelectWorld
_08016EBC:
	.4byte gUnknown_08079504
_08016EC0:
	.4byte 0x03000074
_08016EC4:
	.4byte 0x03000078
_08016EC8:
	.4byte 0x03000070
_08016ECC:
	.4byte gLevelSelect_03000083
_08016ED0:
	ldr r0, _08016EEC  @ =gUnknown_03000C28
	ldrb r2, [r0]
	cmp r2, #0
	beq _08016EDA
	b _0801706A
_08016EDA:
	ldr r1, _08016EF0  @ =gLevelType
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08016EF4  @ =gLevelSelect_03000083
	strb r2, [r0]
	ldr r1, _08016EF8  @ =gLevelSelectMode
	mov r0, #3
	b _08016F90
	.byte 0x00
	.byte 0x00
_08016EEC:
	.4byte gUnknown_03000C28
_08016EF0:
	.4byte gLevelType
_08016EF4:
	.4byte gLevelSelect_03000083
_08016EF8:
	.4byte gLevelSelectMode
_08016EFC:
	bl sub_08029F7C
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016F08
	b _0801706A
_08016F08:
	add r0, sp, #20
	ldr r4, _08016F5C  @ =gLevelSelectData
	str r4, [sp, #20]
	str r4, [r0, #4]
	str r4, [r0, #8]
	ldr r1, _08016F60  @ =gLevelSelectDKBossBG
	str r1, [r0, #12]
	mov r1, #3
	bl load_graphics_config_08032F24
	add r0, sp, #36
	mov r1, #0
	strh r1, [r0]
	ldr r1, _08016F64  @ =0x03000074
	ldr r1, [r1]
	ldr r2, _08016F68  @ =0x03000078
	ldrh r2, [r2]
	lsr r2, r2, #1
	mov r3, #128
	lsl r3, r3, #17
	orr r2, r2, r3
	bl CpuSet
	mov r0, #17
	mov r1, #3
	bl load_predefined_palette
	add r0, r4, #0
	bl sub_08006968
	ldr r1, _08016F6C  @ =0x03000070
	str r0, [r1]
	ldr r1, _08016F70  @ =gLevelSelect_03000083
	mov r0, #10
_08016F4C:
	strb r0, [r1]
	ldr r0, _08016F74  @ =0x00003D42
	ldr r1, _08016F78  @ =0x0000A0A0
	mov r2, #0
	bl set_blend_regs_08029CDC
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016F5C:
	.4byte gLevelSelectData
_08016F60:
	.4byte gLevelSelectDKBossBG
_08016F64:
	.4byte 0x03000074
_08016F68:
	.4byte 0x03000078
_08016F6C:
	.4byte 0x03000070
_08016F70:
	.4byte gLevelSelect_03000083
_08016F74:
	.4byte 0x00003D42
_08016F78:
	.4byte 0x0000A0A0
_08016F7C:
	ldr r0, _08016FA0  @ =gUnknown_03000C28
	ldrb r1, [r0]
	cmp r1, #0
	bne _0801706A
	ldr r0, _08016FA4  @ =gLevelType
	strb r1, [r0]
	ldr r0, _08016FA8  @ =gLevelSelect_03000083
	strb r1, [r0]
	ldr r1, _08016FAC  @ =gLevelSelectMode
	mov r0, #1
_08016F90:
	strb r0, [r1]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #234
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	b _0801706A
_08016FA0:
	.4byte gUnknown_03000C28
_08016FA4:
	.4byte gLevelType
_08016FA8:
	.4byte gLevelSelect_03000083
_08016FAC:
	.4byte gLevelSelectMode
_08016FB0:
	ldr r0, _08016FCC  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08016FD4
	ldr r0, _08016FD0  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	ble _08016FE0
	b _08017000
	.byte 0x00
	.byte 0x00
_08016FCC:
	.4byte gLevelType
_08016FD0:
	.4byte gLevelSelectWorldCursor
_08016FD4:
	ldr r0, _08016FF4  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bgt _08017000
_08016FE0:
	ldr r0, _08016FF8  @ =0x03000094
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	add r0, r0, #80
	strh r0, [r1, #4]
	ldr r1, _08016FFC  @ =gBGLayerOffsets 
	lsl r0, r0, #16
	lsr r0, r0, #24
	strh r0, [r1, #12]
	b _0801700A
_08016FF4:
	.4byte gLevelSelectWorldCursor
_08016FF8:
	.4byte 0x03000094
_08016FFC:
	.4byte gBGLayerOffsets 
_08017000:
	ldr r0, _08017020  @ =gBGLayerOffsets 
	ldr r1, _08017024  @ =0x03000094
	ldr r1, [r1]
	strh r2, [r1, #4]
	strh r2, [r0, #12]
_0801700A:
	ldr r0, _08017028  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bhi _0801706A
	lsl r0, r0, #2
	ldr r1, _0801702C  @ =0x08017030
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08017020:
	.4byte gBGLayerOffsets 
_08017024:
	.4byte 0x03000094
_08017028:
	.4byte gLevelSelectMode
_0801702C:
	.4byte _08017030
_08017030:
	.4byte _08017048
	.4byte _0801704E
	.4byte _08017054
	.4byte _0801705A
	.4byte _08017060
	.4byte _08017066
_08017048:
	bl sub_0801562C
	b _0801706A
_0801704E:
	bl sub_08015A54
	b _0801706A
_08017054:
	bl sub_08015C68
	b _0801706A
_0801705A:
	bl sub_08015F78
	b _0801706A
_08017060:
	bl sub_08016964
	b _0801706A
_08017066:
	bl sub_08016B2C
_0801706A:
	ldr r0, _080170CC  @ =0x03000085
	ldr r1, _080170D0  @ =0x0300008D
	ldr r3, _080170D4  @ =gUnknown_085E1F2C
	mov r2, #6
	bl sub_0801B288
	ldr r0, _080170D8  @ =0x03000088
	ldr r1, _080170DC  @ =0x03000090
	ldr r3, _080170E0  @ =gUnknown_085E2870
	mov r2, #18
	bl sub_0801B288
	ldr r0, _080170E4  @ =0x03000086
	ldr r1, _080170E8  @ =0x0300008E
	ldr r4, _080170EC  @ =gUnknown_085E0AC4
	mov r2, #2
	add r3, r4, #0
	bl sub_0801B288
	ldr r0, _080170F0  @ =0x03000087
	ldr r1, _080170F4  @ =0x0300008F
	mov r2, #2
	add r3, r4, #0
	bl sub_0801B288
	ldr r0, _080170F8  @ =0x03000089
	ldr r1, _080170FC  @ =0x03000091
	ldr r3, _08017100  @ =gUnknown_085C240C
	mov r2, #2
	bl sub_0801B288
	ldr r0, _08017104  @ =0x0300008A
	ldr r1, _08017108  @ =0x03000092
	ldr r3, _0801710C  @ =gUnknown_085C7A78
	mov r2, #18
	bl sub_0801B288
	ldr r0, _08017110  @ =0x0300008B
	ldr r1, _08017114  @ =0x0300008C
	ldr r3, _08017118  @ =gUnknown_085E3590
	mov r2, #18
	bl sub_0801B288
	bl sub_0801711C
	add sp, sp, #40
	pop {r4,r5}
	pop {r0}
	bx r0
_080170CC:
	.4byte 0x03000085
_080170D0:
	.4byte 0x0300008D
_080170D4:
	.4byte gUnknown_085E1F2C
_080170D8:
	.4byte 0x03000088
_080170DC:
	.4byte 0x03000090
_080170E0:
	.4byte gUnknown_085E2870
_080170E4:
	.4byte 0x03000086
_080170E8:
	.4byte 0x0300008E
_080170EC:
	.4byte gUnknown_085E0AC4
_080170F0:
	.4byte 0x03000087
_080170F4:
	.4byte 0x0300008F
_080170F8:
	.4byte 0x03000089
_080170FC:
	.4byte 0x03000091
_08017100:
	.4byte gUnknown_085C240C
_08017104:
	.4byte 0x0300008A
_08017108:
	.4byte 0x03000092
_0801710C:
	.4byte gUnknown_085C7A78
_08017110:
	.4byte 0x0300008B
_08017114:
	.4byte 0x0300008C
_08017118:
	.4byte gUnknown_085E3590
	THUMB_FUNC_END level_select_main

	THUMB_FUNC_START sub_0801711C
sub_0801711C: @ 0x0801711C
	push {r4-r6,lr}
	sub sp, sp, #4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r4, _0801716C  @ =0x0300007C
	ldr r1, [r4]
	ldr r2, _08017170  @ =0x01000010
	mov r0, sp
	bl CpuSet
	ldr r0, _08017174  @ =gLevelSelectMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0801717C
	mov r3, #0
	add r6, r4, #0
_0801713E:
	ldr r0, _08017178  @ =gLevelSelectWorld
	ldrb r1, [r0]
	lsl r2, r3, #24
	lsr r2, r2, #24
	lsl r4, r3, #16
	asr r4, r4, #16
	lsl r5, r4, #2
	ldr r3, [r6]
	add r3, r3, r5
	add r3, r3, #1
	mov r0, #0
	bl get_level_stats_0800FB28
	ldr r1, [r6]
	add r5, r5, r1
	strb r0, [r5]
	add r4, r4, #1
	lsl r4, r4, #16
	lsr r3, r4, #16
	asr r4, r4, #16
	cmp r4, #7
	ble _0801713E
	b _080171BC
_0801716C:
	.4byte 0x0300007C
_08017170:
	.4byte 0x01000010
_08017174:
	.4byte gLevelSelectMode
_08017178:
	.4byte gLevelSelectWorld
_0801717C:
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _080171BC
	mov r3, #0
	add r6, r4, #0
_0801718A:
	ldr r0, _080171C4  @ =gLevelSelectWorld
	ldrb r1, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r2, r3, #24
	lsr r2, r2, #24
	lsl r4, r3, #16
	asr r4, r4, #16
	lsl r5, r4, #2
	ldr r3, [r6]
	add r3, r3, r5
	add r3, r3, #1
	mov r0, #1
	bl get_level_stats_0800FB28
	ldr r1, [r6]
	add r5, r5, r1
	strb r0, [r5]
	add r4, r4, #1
	lsl r4, r4, #16
	lsr r3, r4, #16
	asr r4, r4, #16
	cmp r4, #6
	ble _0801718A
_080171BC:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080171C4:
	.4byte gLevelSelectWorld
	THUMB_FUNC_END sub_0801711C

	THUMB_FUNC_START sub_080171C8
sub_080171C8: @ 0x080171C8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r1, r1, #24
	lsr r5, r1, #24
	ldr r1, _0801723C  @ =gUnknown_080763F4
	mov r0, sp
	mov r2, #8
	bl memcpy
	ldr r0, _08017240  @ =gLevelSelect_03000083
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080171F4
	b _080174DA
_080171F4:
	ldr r0, _08017244  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	beq _080171FE
	b _080174DA
_080171FE:
	ldr r0, _08017248  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0801720C
	b _0801735C
_0801720C:
	ldr r2, _0801724C  @ =gUnknown_085C7A78
	ldr r0, _08017250  @ =0x0300008A
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r2, #8
	add r0, r0, r2
	ldr r1, [r0]
	mov r0, #240
	lsl r0, r0, #4
	and r0, r0, r1
	lsr r3, r0, #8
	mov r0, #240
	lsl r0, r0, #8
	and r1, r1, r0
	lsr r2, r1, #12
	cmp r3, #15
	bne _08017254
	cmp r2, #0
	bne _08017254
	mov r3, #16
	b _0801725E
_0801723C:
	.4byte gUnknown_080763F4
_08017240:
	.4byte gLevelSelect_03000083
_08017244:
	.4byte gUnknown_03000C28
_08017248:
	.4byte gLevelSelectMode
_0801724C:
	.4byte gUnknown_085C7A78
_08017250:
	.4byte 0x0300008A
_08017254:
	cmp r3, #0
	bne _0801725E
	cmp r2, #15
	bne _0801725E
	mov r2, #16
_0801725E:
	ldr r1, _08017334  @ =REG_BLDCNT
	mov r4, #253
	lsl r4, r4, #6
	add r0, r4, #0
	strh r0, [r1]
	add r1, r1, #2
	lsl r0, r3, #8
	orr r2, r2, r0
	strh r2, [r1]
	add r1, r1, #130
	ldr r0, _08017338  @ =gUnknown_085C7D00
	str r0, [r1]
	ldr r6, _0801733C  @ =0x03000094
	mov r10, r6
	ldr r3, [r6]
	ldrh r0, [r3, #2]
	lsl r0, r0, #3
	ldr r2, _08017340  @ =gOamBuffer
	mov r8, r2
	add r0, r0, r8
	str r0, [r1, #4]
	ldr r0, _08017344  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r6, [r3, #20]
	add r1, r1, r6
	ldr r6, _08017348  @ =0x000003FF
	add r0, r6, #0
	and r1, r1, r0
	ldr r0, _0801734C  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r3, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r2, [r1, #1]
	mov r6, #13
	neg r6, r6
	add r0, r6, #0
	and r0, r0, r2
	mov r2, #4
	mov r12, r2
	mov r3, r12
	orr r0, r0, r3
	strb r0, [r1, #1]
	mov r4, r10
	ldr r0, [r4]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	lsl r0, r5, #24
	asr r0, r0, #24
	add r0, sp, r0
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r5, [r4]
	mov r9, r5
	ldrh r3, [r5, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldr r5, _08017350  @ =gUnknown_08078904
	lsl r4, r7, #24
	asr r4, r4, #21
	add r0, r4, r5
	ldr r1, [r0]
	sub r1, r1, #8
	ldr r2, _08017354  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08017358  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	mov r3, r9
	ldrh r1, [r3, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	add r5, r5, #4
	add r4, r4, r5
	ldr r0, [r4]
	sub r0, r0, #8
	strb r0, [r1]
	mov r4, r10
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	lsl r0, r0, #3
	add r0, r0, r8
	ldrb r1, [r0, #5]
	and r6, r6, r1
	mov r5, r12
	orr r6, r6, r5
	strb r6, [r0, #5]
	ldr r1, [r4]
	b _080174D4
_08017334:
	.4byte REG_BLDCNT
_08017338:
	.4byte gUnknown_085C7D00
_0801733C:
	.4byte 0x03000094
_08017340:
	.4byte gOamBuffer
_08017344:
	.4byte 0x84000002
_08017348:
	.4byte 0x000003FF
_0801734C:
	.4byte 0xFFFFFC00
_08017350:
	.4byte gUnknown_08078904
_08017354:
	.4byte 0x000001FF
_08017358:
	.4byte 0xFFFFFE00
_0801735C:
	cmp r0, #1
	beq _08017362
	b _080174DA
_08017362:
	lsl r3, r5, #24
	asr r1, r3, #24
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r1, _080173A4  @ =gUnknown_080789F4
	add r0, r0, r1
	mov r8, r0
	ldr r0, _080173A8  @ =0x03000088
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r6, r8
	ldr r2, [r6, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r0, #8]
	mov r0, #240
	lsl r0, r0, #4
	and r0, r0, r1
	lsr r4, r0, #8
	mov r0, #240
	lsl r0, r0, #8
	and r1, r1, r0
	lsr r2, r1, #12
	add r5, r3, #0
	cmp r4, #15
	bne _080173AC
	cmp r2, #0
	bne _080173AC
	mov r4, #16
	b _080173B6
_080173A4:
	.4byte gUnknown_080789F4
_080173A8:
	.4byte 0x03000088
_080173AC:
	cmp r4, #0
	bne _080173B6
	cmp r2, #15
	bne _080173B6
	mov r2, #16
_080173B6:
	ldr r1, _08017414  @ =REG_BLDCNT
	mov r3, #253
	lsl r3, r3, #6
	add r0, r3, #0
	strh r0, [r1]
	add r1, r1, #2
	lsl r0, r4, #8
	orr r2, r2, r0
	strh r2, [r1]
	add r1, r1, #130
	mov r4, r8
	ldr r0, [r4, #16]
	str r0, [r1]
	ldr r4, _08017418  @ =0x03000094
	ldr r2, [r4]
	ldrh r0, [r2, #2]
	lsl r0, r0, #3
	ldr r3, _0801741C  @ =gOamBuffer
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _08017420  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r2, #2]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #1]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	asr r5, r5, #24
	add r7, r4, #0
	add r6, r3, #0
	cmp r5, #5
	bgt _08017424
	ldr r3, [r7]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r0, [r3, #8]
	b _0801746C
_08017414:
	.4byte REG_BLDCNT
_08017418:
	.4byte 0x03000094
_0801741C:
	.4byte gOamBuffer
_08017420:
	.4byte 0x84000002
_08017424:
	cmp r5, #7
	bne _0801745C
	ldr r3, [r7]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r5, [r3, #12]
	add r1, r1, r5
	ldr r5, _08017454  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _08017458  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r0, sp
	add r0, r0, #7
	b _08017488
_08017454:
	.4byte 0x000003FF
_08017458:
	.4byte 0xFFFFFC00
_0801745C:
	ldr r3, [r7]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r0, [r3, #10]
_0801746C:
	add r1, r1, r0
	ldr r0, _080174EC  @ =0x000003FF
	mov r9, r0
	mov r0, r9
	and r1, r1, r0
	ldr r0, _080174F0  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, sp
	add r0, r1, r5
_08017488:
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r4, [r7]
	ldrh r1, [r4, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	mov r3, r8
	mov r5, #0
	ldrsh r2, [r3, r5]
	ldr r3, _080174F4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080174F8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, r8
	ldrh r1, [r4, #2]
	strb r1, [r0]
	ldr r0, [r7]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r7]
_080174D4:
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
_080174DA:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080174EC:
	.4byte 0x000003FF
_080174F0:
	.4byte 0xFFFFFC00
_080174F4:
	.4byte 0x000001FF
_080174F8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080171C8

	THUMB_FUNC_START sub_080174FC
sub_080174FC: @ 0x080174FC
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #12
	lsl r1, r1, #24
	lsr r0, r1, #24
	asr r1, r1, #24
	cmp r1, #6
	ble _08017512
	mov r0, #6
_08017512:
	lsl r1, r0, #24
	asr r1, r1, #24
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	lsl r0, r1, #1
	add r0, r0, r1
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r1, #3
	ble _08017534
	lsl r0, r5, #16
	ldr r1, _080175F4  @ =0xFFFF0000
	add r0, r0, r1
	lsr r5, r0, #16
_08017534:
	ldr r0, _080175F8  @ =0x03000074
	mov r9, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r1, #5
	mov r8, r1
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #0
	mov r2, #32
	mov r3, #2
	bl sub_0800667C
	lsl r0, r5, #16
	asr r0, r0, #16
	ldr r6, _080175FC  @ =0x03000070
	ldr r1, [r6]
	lsl r4, r4, #16
	asr r4, r4, #16
	lsl r2, r4, #2
	mov r5, #132
	lsl r5, r5, #1
	add r1, r1, r5
	add r1, r1, r2
	ldr r2, [r1]
	mov r1, r9
	ldr r3, [r1]
	mov r1, r8
	str r1, [sp]
	mov r1, #0
	bl sub_08006548
	ldr r1, [r6]
	add r0, r4, #1
	lsl r0, r0, #2
	add r1, r1, r5
	add r1, r1, r0
	ldr r2, [r1]
	mov r0, r9
	ldr r3, [r0]
	mov r1, r8
	str r1, [sp]
	mov r0, #0
	mov r1, #2
	bl sub_08006548
	ldr r1, [r6]
	add r0, r4, #2
	lsl r0, r0, #2
	add r1, r1, r5
	add r1, r1, r0
	ldr r2, [r1]
	mov r0, r9
	ldr r3, [r0]
	mov r1, r8
	str r1, [sp]
	mov r0, #0
	mov r1, #5
	bl sub_08006548
	ldr r1, [r6]
	add r0, r4, #3
	lsl r0, r0, #2
	add r1, r1, r5
	add r1, r1, r0
	ldr r2, [r1]
	mov r0, r9
	ldr r3, [r0]
	mov r1, r8
	str r1, [sp]
	mov r0, #29
	mov r1, #5
	bl sub_08006548
	ldr r0, [r6]
	add r4, r4, #4
	lsl r4, r4, #2
	add r0, r0, r5
	add r0, r0, r4
	ldr r2, [r0]
	mov r0, r9
	ldr r3, [r0]
	mov r1, r8
	str r1, [sp]
	mov r0, #0
	mov r1, #17
	bl sub_08006548
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
_080175F4:
	.4byte 0xFFFF0000
_080175F8:
	.4byte 0x03000074
_080175FC:
	.4byte 0x03000070
	THUMB_FUNC_END sub_080174FC

	THUMB_FUNC_START sub_08017600
sub_08017600: @ 0x08017600
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r1, r1, #24
	lsr r4, r1, #24
	ldr r1, _08017680  @ =gUnknown_080763F4
	mov r0, sp
	mov r2, #8
	bl memcpy
	ldr r0, _08017684  @ =gLevelSelect_03000083
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0801762C
	b _08017922
_0801762C:
	ldr r0, _08017688  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017636
	b _08017922
_08017636:
	ldr r0, _0801768C  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	beq _08017644
	b _0801779C
_08017644:
	lsl r0, r4, #24
	add r5, r0, #0
	cmp r5, #0
	bge _0801764E
	b _08017922
_0801764E:
	ldr r2, _08017690  @ =gUnknown_085C7A78
	ldr r0, _08017694  @ =0x0300008A
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r2, #8
	add r0, r0, r2
	ldr r1, [r0]
	mov r0, #240
	lsl r0, r0, #4
	and r0, r0, r1
	lsr r3, r0, #8
	mov r0, #240
	lsl r0, r0, #8
	and r1, r1, r0
	lsr r2, r1, #12
	cmp r3, #15
	bne _08017698
	cmp r2, #0
	bne _08017698
	mov r3, #16
	b _080176A2
	.byte 0x00
	.byte 0x00
_08017680:
	.4byte gUnknown_080763F4
_08017684:
	.4byte gLevelSelect_03000083
_08017688:
	.4byte gUnknown_03000C28
_0801768C:
	.4byte gLevelSelectMode
_08017690:
	.4byte gUnknown_085C7A78
_08017694:
	.4byte 0x0300008A
_08017698:
	cmp r3, #0
	bne _080176A2
	cmp r2, #15
	bne _080176A2
	mov r2, #16
_080176A2:
	ldr r1, _08017774  @ =REG_BLDCNT
	mov r4, #253
	lsl r4, r4, #6
	add r0, r4, #0
	strh r0, [r1]
	add r1, r1, #2
	lsl r0, r3, #8
	orr r2, r2, r0
	strh r2, [r1]
	add r1, r1, #130
	ldr r0, _08017778  @ =gUnknown_085C7D00
	str r0, [r1]
	ldr r6, _0801777C  @ =0x03000094
	mov r10, r6
	ldr r3, [r6]
	ldrh r0, [r3, #2]
	lsl r0, r0, #3
	ldr r2, _08017780  @ =gOamBuffer
	mov r8, r2
	add r0, r0, r8
	str r0, [r1, #4]
	ldr r0, _08017784  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r6, [r3, #20]
	add r1, r1, r6
	ldr r6, _08017788  @ =0x000003FF
	add r0, r6, #0
	and r1, r1, r0
	ldr r0, _0801778C  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #1]
	mov r6, #13
	neg r6, r6
	add r0, r6, #0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	mov r1, r10
	ldr r0, [r1]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	asr r0, r5, #24
	add r0, sp, r0
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r2, r10
	ldr r2, [r2]
	mov r9, r2
	ldrh r3, [r2, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldr r5, _08017790  @ =gUnknown_08078944
	lsl r4, r7, #24
	asr r4, r4, #21
	add r0, r4, r5
	ldr r1, [r0]
	sub r1, r1, #8
	ldr r2, _08017794  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08017798  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	mov r3, r9
	ldrh r1, [r3, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	add r5, r5, #4
	add r4, r4, r5
	ldr r0, [r4]
	sub r0, r0, #8
	strb r0, [r1]
	mov r4, r10
	ldr r0, [r4]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r1, #5]
	and r6, r6, r0
	mov r0, #8
	orr r6, r6, r0
	strb r6, [r1, #5]
	ldr r1, [r4]
	b _0801791C
_08017774:
	.4byte REG_BLDCNT
_08017778:
	.4byte gUnknown_085C7D00
_0801777C:
	.4byte 0x03000094
_08017780:
	.4byte gOamBuffer
_08017784:
	.4byte 0x84000002
_08017788:
	.4byte 0x000003FF
_0801778C:
	.4byte 0xFFFFFC00
_08017790:
	.4byte gUnknown_08078944
_08017794:
	.4byte 0x000001FF
_08017798:
	.4byte 0xFFFFFE00
_0801779C:
	cmp r0, #3
	beq _080177A2
	b _08017922
_080177A2:
	lsl r0, r4, #24
	cmp r0, #0
	bge _080177AA
	mov r4, #7
_080177AA:
	lsl r3, r4, #24
	asr r1, r3, #24
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r1, _080177EC  @ =gUnknown_08078AB4
	add r0, r0, r1
	mov r8, r0
	ldr r0, _080177F0  @ =0x03000088
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r5, r8
	ldr r2, [r5, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r0, #8]
	mov r0, #240
	lsl r0, r0, #4
	and r0, r0, r1
	lsr r4, r0, #8
	mov r0, #240
	lsl r0, r0, #8
	and r1, r1, r0
	lsr r2, r1, #12
	add r5, r3, #0
	cmp r4, #15
	bne _080177F4
	cmp r2, #0
	bne _080177F4
	mov r4, #16
	b _080177FE
_080177EC:
	.4byte gUnknown_08078AB4
_080177F0:
	.4byte 0x03000088
_080177F4:
	cmp r4, #0
	bne _080177FE
	cmp r2, #15
	bne _080177FE
	mov r2, #16
_080177FE:
	ldr r1, _0801785C  @ =REG_BLDCNT
	mov r6, #253
	lsl r6, r6, #6
	add r0, r6, #0
	strh r0, [r1]
	add r1, r1, #2
	lsl r0, r4, #8
	orr r2, r2, r0
	strh r2, [r1]
	add r1, r1, #130
	mov r2, r8
	ldr r0, [r2, #16]
	str r0, [r1]
	ldr r4, _08017860  @ =0x03000094
	ldr r2, [r4]
	ldrh r0, [r2, #2]
	lsl r0, r0, #3
	ldr r3, _08017864  @ =gOamBuffer
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _08017868  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r2, #2]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #1]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	asr r5, r5, #24
	add r7, r4, #0
	add r6, r3, #0
	cmp r5, #5
	bgt _0801786C
	ldr r3, [r7]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r0, [r3, #8]
	b _080178B4
_0801785C:
	.4byte REG_BLDCNT
_08017860:
	.4byte 0x03000094
_08017864:
	.4byte gOamBuffer
_08017868:
	.4byte 0x84000002
_0801786C:
	cmp r5, #7
	bne _080178A4
	ldr r3, [r7]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r5, [r3, #12]
	add r1, r1, r5
	ldr r5, _0801789C  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _080178A0  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r0, sp
	add r0, r0, #7
	b _080178D0
_0801789C:
	.4byte 0x000003FF
_080178A0:
	.4byte 0xFFFFFC00
_080178A4:
	ldr r3, [r7]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r0, [r3, #10]
_080178B4:
	add r1, r1, r0
	ldr r0, _08017934  @ =0x000003FF
	mov r9, r0
	mov r0, r9
	and r1, r1, r0
	ldr r0, _08017938  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, sp
	add r0, r1, r5
_080178D0:
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r4, [r7]
	ldrh r1, [r4, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	mov r3, r8
	mov r5, #0
	ldrsh r2, [r3, r5]
	ldr r3, _0801793C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08017940  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, r8
	ldrh r1, [r4, #2]
	strb r1, [r0]
	ldr r0, [r7]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r7]
_0801791C:
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
_08017922:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08017934:
	.4byte 0x000003FF
_08017938:
	.4byte 0xFFFFFC00
_0801793C:
	.4byte 0x000001FF
_08017940:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08017600

	THUMB_FUNC_START sub_08017944
sub_08017944: @ 0x08017944
	push {r4-r7,lr}
	mov r1, #0
	ldr r0, _080179D4  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08017956
	mov r1, #1
_08017956:
	ldr r3, _080179D8  @ =REG_DMA3SAD
	ldr r2, _080179DC  @ =gUnknown_08078CF4
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r2, r2, #16
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r3]
	ldr r6, _080179E0  @ =0x03000094
	ldr r4, [r6]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _080179E4  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _080179E8  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r4, #14]
	add r1, r1, r0
	ldr r7, _080179EC  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _080179F0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r4, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrh r2, [r1, #2]
	ldr r0, _080179F4  @ =0xFFFFFE00
	and r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, #252
	strb r1, [r0]
	ldr r0, [r6]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r6]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080179D4:
	.4byte gLevelSelectWorldCursor
_080179D8:
	.4byte REG_DMA3SAD
_080179DC:
	.4byte gUnknown_08078CF4
_080179E0:
	.4byte 0x03000094
_080179E4:
	.4byte gOamBuffer
_080179E8:
	.4byte 0x84000002
_080179EC:
	.4byte 0x000003FF
_080179F0:
	.4byte 0xFFFFFC00
_080179F4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08017944

	THUMB_FUNC_START sub_080179F8
sub_080179F8: @ 0x080179F8
	push {r4-r7,lr}
	mov r4, #0
	ldr r0, _08017A98  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bne _08017A0A
	mov r4, #1
_08017A0A:
	bl sub_08014BD0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08017A90
	ldr r3, _08017A9C  @ =REG_DMA3SAD
	ldr r2, _08017AA0  @ =gUnknown_08078CC4
	add r1, r4, #0
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r2, r2, #16
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r3]
	ldr r6, _08017AA4  @ =0x03000094
	ldr r4, [r6]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _08017AA8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _08017AAC  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r4, #14]
	add r1, r1, r0
	ldr r7, _08017AB0  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _08017AB4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r1, [r2, #2]
	ldr r0, _08017AB8  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #184
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, #252
	strb r1, [r0]
	ldr r0, [r6]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r6]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
_08017A90:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08017A98:
	.4byte gLevelSelectWorldCursor
_08017A9C:
	.4byte REG_DMA3SAD
_08017AA0:
	.4byte gUnknown_08078CC4
_08017AA4:
	.4byte 0x03000094
_08017AA8:
	.4byte gOamBuffer
_08017AAC:
	.4byte 0x84000002
_08017AB0:
	.4byte 0x000003FF
_08017AB4:
	.4byte 0xFFFFFC00
_08017AB8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080179F8

	THUMB_FUNC_START sub_08017ABC
sub_08017ABC: @ 0x08017ABC
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, sp, #12
	lsl r1, r1, #24
	mov r0, #255
	lsl r0, r0, #24
	add r1, r1, r0
	lsr r0, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	bge _08017ADC
	mov r0, #0
	b _08017AE2
_08017ADC:
	cmp r1, #6
	ble _08017AE2
	mov r0, #6
_08017AE2:
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r5, r0, #2
	add r5, r5, r0
	lsl r5, r5, #16
	lsr r5, r5, #16
	lsl r4, r0, #1
	add r4, r4, r0
	add r4, r4, #7
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r1, _08017BC8  @ =0x03000074
	mov r10, r1
	ldr r0, [r1]
	str r0, [sp]
	mov r0, #5
	mov r9, r0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #0
	mov r2, #32
	mov r3, #2
	bl sub_0800667C
	lsl r4, r4, #16
	asr r4, r4, #16
	ldr r1, _08017BCC  @ =0x03000070
	mov r8, r1
	ldr r0, [r1]
	lsl r5, r5, #16
	asr r5, r5, #16
	lsl r1, r5, #2
	mov r6, #132
	lsl r6, r6, #1
	add r0, r0, r6
	add r0, r0, r1
	ldr r2, [r0]
	mov r0, r10
	ldr r3, [r0]
	mov r1, r9
	str r1, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_08006548
	mov r0, r8
	ldr r1, [r0]
	add r0, r5, #1
	lsl r0, r0, #2
	add r1, r1, r6
	add r1, r1, r0
	ldr r2, [r1]
	mov r1, r10
	ldr r3, [r1]
	mov r0, r9
	str r0, [sp]
	mov r0, #0
	mov r1, #2
	bl sub_08006548
	mov r0, r8
	ldr r1, [r0]
	add r0, r5, #2
	lsl r0, r0, #2
	add r1, r1, r6
	add r1, r1, r0
	ldr r2, [r1]
	mov r1, r10
	ldr r3, [r1]
	mov r0, r9
	str r0, [sp]
	mov r0, #0
	mov r1, #5
	bl sub_08006548
	mov r0, r8
	ldr r1, [r0]
	add r0, r5, #3
	lsl r0, r0, #2
	add r1, r1, r6
	add r1, r1, r0
	ldr r2, [r1]
	mov r1, r10
	ldr r3, [r1]
	mov r0, r9
	str r0, [sp]
	mov r0, #29
	mov r1, #5
	bl sub_08006548
	mov r1, r8
	ldr r0, [r1]
	add r5, r5, #4
	lsl r5, r5, #2
	add r0, r0, r6
	add r0, r0, r5
	ldr r2, [r0]
	mov r0, r10
	ldr r3, [r0]
	mov r1, r9
	str r1, [sp]
	mov r0, #0
	mov r1, #17
	bl sub_08006548
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08017BC8:
	.4byte 0x03000074
_08017BCC:
	.4byte 0x03000070
	THUMB_FUNC_END sub_08017ABC

	THUMB_FUNC_START sub_08017BD0
sub_08017BD0: @ 0x08017BD0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r4, [sp, #40]
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r10, r2
	lsl r3, r3, #16
	lsr r7, r3, #16
	lsl r4, r4, #24
	mov r1, r10
	sub r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [sp, #4]
	cmp r4, #0
	bne _08017C04
	b _08017D18
_08017C04:
	mov r6, #0
	cmp r6, r10
	blt _08017C0C
	b _08017E04
_08017C0C:
	ldr r5, _08017CE0  @ =REG_DMA3SAD
	ldr r0, _08017CE4  @ =gOamBuffer
	mov r8, r0
	ldr r1, _08017CE8  @ =gUnknown_03001930
	mov r9, r1
_08017C16:
	add r0, r7, #0
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #10
	ldr r1, _08017CEC  @ =gUnknown_085DEA9C
	add r0, r0, r1
	str r0, [r5]
	ldr r2, _08017CF0  @ =gObjVRAMCopyOffset_0300192C
	ldrh r0, [r2]
	ldr r3, _08017CF4  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _08017CF8  @ =0x84000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08017CFC  @ =gUnknown_085DEA94
	str r0, [r5]
	ldr r0, _08017D00  @ =0x03000094
	ldr r4, [r0]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r5, #4]
	ldr r0, _08017D04  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r12, r3
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r1, r9
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r3, _08017D08  @ =0x000003FF
	and r0, r0, r3
	ldr r1, _08017D0C  @ =0xFFFFFC00
	and r2, r2, r1
	orr r2, r2, r0
	mov r3, r12
	strh r2, [r3, #4]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	lsl r2, r6, #3
	ldr r0, [sp, #4]
	sub r2, r0, r2
	ldr r1, _08017D10  @ =0x000001FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _08017D14  @ =0xFFFFFE00
	mov r12, r1
	mov r1, r12
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r8
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
	ldr r3, _08017D00  @ =0x03000094
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r0, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r1, r3, #0
	and r0, r0, r1
	strb r0, [r2, #5]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	ldr r2, _08017CF0  @ =gObjVRAMCopyOffset_0300192C
	ldrh r0, [r2]
	add r0, r0, #64
	strh r0, [r2]
	ldr r3, _08017D00  @ =0x03000094
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	add r0, r7, #0
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r6, r6, #1
	cmp r6, r10
	blt _08017C16
	b _08017E04
_08017CE0:
	.4byte REG_DMA3SAD
_08017CE4:
	.4byte gOamBuffer
_08017CE8:
	.4byte gUnknown_03001930
_08017CEC:
	.4byte gUnknown_085DEA9C
_08017CF0:
	.4byte gObjVRAMCopyOffset_0300192C
_08017CF4:
	.4byte OBJ_VRAM0
_08017CF8:
	.4byte 0x84000010
_08017CFC:
	.4byte gUnknown_085DEA94
_08017D00:
	.4byte 0x03000094
_08017D04:
	.4byte 0x84000002
_08017D08:
	.4byte 0x000003FF
_08017D0C:
	.4byte 0xFFFFFC00
_08017D10:
	.4byte 0x000001FF
_08017D14:
	.4byte 0xFFFFFE00
_08017D18:
	mov r6, #0
	cmp r6, r10
	bge _08017E04
	ldr r5, _08017E14  @ =REG_DMA3SAD
	ldr r0, _08017E18  @ =0x03000094
	mov r9, r0
	ldr r1, _08017E1C  @ =gOamBuffer
	mov r8, r1
_08017D28:
	add r0, r7, #0
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #10
	ldr r1, _08017E20  @ =gUnknown_082EC750
	add r0, r0, r1
	str r0, [r5]
	ldr r2, _08017E24  @ =gObjVRAMCopyOffset_0300192C
	ldrh r0, [r2]
	ldr r3, _08017E28  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _08017E2C  @ =0x84000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08017E30  @ =gUnknown_082EC748
	str r0, [r5]
	mov r0, r9
	ldr r4, [r0]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r5, #4]
	ldr r0, _08017E34  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r12, r3
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r1, _08017E38  @ =gUnknown_03001930
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r3, _08017E3C  @ =0x000003FF
	and r0, r0, r3
	ldr r1, _08017E40  @ =0xFFFFFC00
	and r2, r2, r1
	orr r2, r2, r0
	mov r3, r12
	strh r2, [r3, #4]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	lsl r2, r6, #3
	ldr r0, [sp, #4]
	sub r2, r0, r2
	ldr r1, _08017E44  @ =0x000001FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _08017E48  @ =0xFFFFFE00
	mov r12, r1
	mov r1, r12
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r8
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
	mov r3, r9
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #144
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r0, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r1, r3, #0
	and r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, _08017E38  @ =gUnknown_03001930
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	ldr r2, _08017E24  @ =gObjVRAMCopyOffset_0300192C
	ldrh r0, [r2]
	add r0, r0, #64
	strh r0, [r2]
	mov r3, r9
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	add r0, r7, #0
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r6, r6, #1
	cmp r6, r10
	blt _08017D28
_08017E04:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08017E14:
	.4byte REG_DMA3SAD
_08017E18:
	.4byte 0x03000094
_08017E1C:
	.4byte gOamBuffer
_08017E20:
	.4byte gUnknown_082EC750
_08017E24:
	.4byte gObjVRAMCopyOffset_0300192C
_08017E28:
	.4byte OBJ_VRAM0
_08017E2C:
	.4byte 0x84000010
_08017E30:
	.4byte gUnknown_082EC748
_08017E34:
	.4byte 0x84000002
_08017E38:
	.4byte gUnknown_03001930
_08017E3C:
	.4byte 0x000003FF
_08017E40:
	.4byte 0xFFFFFC00
_08017E44:
	.4byte 0x000001FF
_08017E48:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08017BD0

	THUMB_FUNC_START sub_08017E4C
sub_08017E4C: @ 0x08017E4C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r10, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r9, r3
	mov r1, r10
	sub r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	cmp r0, r10
	bge _08017F6E
	ldr r5, _08017F80  @ =REG_DMA3SAD
	ldr r1, _08017F84  @ =0x03000094
	mov r8, r1
	ldr r6, _08017F88  @ =gOamBuffer
_08017E88:
	mov r0, r9
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #10
	ldr r1, _08017F8C  @ =gUnknown_082EC750
	add r0, r0, r1
	str r0, [r5]
	ldr r2, _08017F90  @ =gObjVRAMCopyOffset_0300192C
	ldrh r0, [r2]
	ldr r3, _08017F94  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _08017F98  @ =0x84000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08017F9C  @ =gUnknown_082EC748
	str r0, [r5]
	mov r7, r8
	ldr r4, [r7]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _08017FA0  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r1, _08017FA4  @ =gUnknown_03001930
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r7, _08017FA8  @ =0x000003FF
	mov r12, r7
	mov r1, r12
	and r0, r0, r1
	ldr r7, _08017FAC  @ =0xFFFFFC00
	mov r12, r7
	mov r1, r12
	and r2, r2, r1
	orr r2, r2, r0
	strh r2, [r3, #4]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r7, [sp, #8]
	lsl r2, r7, #3
	ldr r0, [sp, #4]
	sub r2, r0, r2
	ldr r1, _08017FB0  @ =0x000001FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r7, _08017FB4  @ =0xFFFFFE00
	mov r12, r7
	mov r1, r12
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
	mov r3, r8
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #144
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r0, [r2, #5]
	mov r7, #13
	neg r7, r7
	add r1, r7, #0
	and r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, _08017FA4  @ =gUnknown_03001930
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	ldr r2, _08017F90  @ =gObjVRAMCopyOffset_0300192C
	ldrh r0, [r2]
	add r0, r0, #64
	strh r0, [r2]
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	mov r0, r9
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	ldr r3, [sp, #8]
	add r3, r3, #1
	str r3, [sp, #8]
	cmp r3, r10
	blt _08017E88
_08017F6E:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08017F80:
	.4byte REG_DMA3SAD
_08017F84:
	.4byte 0x03000094
_08017F88:
	.4byte gOamBuffer
_08017F8C:
	.4byte gUnknown_082EC750
_08017F90:
	.4byte gObjVRAMCopyOffset_0300192C
_08017F94:
	.4byte OBJ_VRAM0
_08017F98:
	.4byte 0x84000010
_08017F9C:
	.4byte gUnknown_082EC748
_08017FA0:
	.4byte 0x84000002
_08017FA4:
	.4byte gUnknown_03001930
_08017FA8:
	.4byte 0x000003FF
_08017FAC:
	.4byte 0xFFFFFC00
_08017FB0:
	.4byte 0x000001FF
_08017FB4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08017E4C

	THUMB_FUNC_START sub_08017FB8
sub_08017FB8: @ 0x08017FB8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r2, _08018084  @ =REG_DMA3SAD
	ldr r0, _08018088  @ =gUnknown_085D0900
	str r0, [r2]
	ldr r0, _0801808C  @ =gObjVRAMCopyOffset_0300192C
	mov r9, r0
	ldrh r0, [r0]
	ldr r1, _08018090  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08018094  @ =0x84000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08018098  @ =gUnknown_085D08F8
	str r0, [r2]
	ldr r1, _0801809C  @ =0x03000094
	mov r8, r1
	ldr r5, [r1]
	ldrh r0, [r5, #2]
	lsl r0, r0, #3
	ldr r4, _080180A0  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _080180A4  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r6, _080180A8  @ =gUnknown_03001930
	lsr r1, r1, #22
	ldrh r7, [r6]
	add r1, r1, r7
	ldr r7, _080180AC  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _080180B0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r1, [r2, #2]
	ldr r0, _080180B4  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5, #2]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, #136
	strb r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r6]
	add r0, r0, #8
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #1
	add r0, r2, #0
	mov r7, r9
	ldrh r7, [r7]
	add r0, r0, r7
	mov r1, r9
	strh r0, [r1]
	mov r2, r8
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	ldr r0, _080180B8  @ =gLivesCount
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #34
	mov r1, #140
	mov r2, #2
	bl sub_08017E4C
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018084:
	.4byte REG_DMA3SAD
_08018088:
	.4byte gUnknown_085D0900
_0801808C:
	.4byte gObjVRAMCopyOffset_0300192C
_08018090:
	.4byte OBJ_VRAM0
_08018094:
	.4byte 0x84000040
_08018098:
	.4byte gUnknown_085D08F8
_0801809C:
	.4byte 0x03000094
_080180A0:
	.4byte gOamBuffer
_080180A4:
	.4byte 0x84000002
_080180A8:
	.4byte gUnknown_03001930
_080180AC:
	.4byte 0x000003FF
_080180B0:
	.4byte 0xFFFFFC00
_080180B4:
	.4byte 0xFFFFFE00
_080180B8:
	.4byte gLivesCount
	THUMB_FUNC_END sub_08017FB8

	THUMB_FUNC_START sub_080180BC
sub_080180BC: @ 0x080180BC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r2, _08018188  @ =REG_DMA3SAD
	ldr r0, _0801818C  @ =gUnknown_085E2338
	str r0, [r2]
	ldr r0, _08018190  @ =gObjVRAMCopyOffset_0300192C
	mov r9, r0
	ldrh r0, [r0]
	ldr r1, _08018194  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08018198  @ =0x84000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801819C  @ =gUnknown_085E2330
	str r0, [r2]
	ldr r1, _080181A0  @ =0x03000094
	mov r8, r1
	ldr r5, [r1]
	ldrh r0, [r5, #2]
	lsl r0, r0, #3
	ldr r4, _080181A4  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _080181A8  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r6, _080181AC  @ =gUnknown_03001930
	lsr r1, r1, #22
	ldrh r7, [r6]
	add r1, r1, r7
	ldr r7, _080181B0  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _080181B4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r1, [r2, #2]
	ldr r0, _080181B8  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #58
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5, #2]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, #136
	strb r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r6]
	add r0, r0, #8
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #1
	add r0, r2, #0
	mov r7, r9
	ldrh r7, [r7]
	add r0, r0, r7
	mov r1, r9
	strh r0, [r1]
	mov r2, r8
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	bl sub_08014AB8
	add r3, r0, #0
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r0, #83
	mov r1, #140
	mov r2, #2
	bl sub_08017E4C
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018188:
	.4byte REG_DMA3SAD
_0801818C:
	.4byte gUnknown_085E2338
_08018190:
	.4byte gObjVRAMCopyOffset_0300192C
_08018194:
	.4byte OBJ_VRAM0
_08018198:
	.4byte 0x84000040
_0801819C:
	.4byte gUnknown_085E2330
_080181A0:
	.4byte 0x03000094
_080181A4:
	.4byte gOamBuffer
_080181A8:
	.4byte 0x84000002
_080181AC:
	.4byte gUnknown_03001930
_080181B0:
	.4byte 0x000003FF
_080181B4:
	.4byte 0xFFFFFC00
_080181B8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080180BC

	THUMB_FUNC_START sub_080181BC
sub_080181BC: @ 0x080181BC
	push {lr}
	sub sp, sp, #4
	ldr r0, _08018210  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08018224
	ldr r0, _08018214  @ =gLevelSelectWorld
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #5
	bhi _08018264
	ldr r0, _08018218  @ =gLevelSelectLevel
	ldrb r1, [r0]
	add r0, r2, #0
	mov r2, #1
	bl get_level_highscore_0801095C
	add r3, r0, #0
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _0801821C  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _08018220  @ =0x0300007C
	ldr r1, [r1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r0, [r0, #1]
	lsr r0, r0, #7
	str r0, [sp]
	mov r0, #172
	mov r1, #140
	mov r2, #6
	bl sub_08017BD0
	b _08018264
	.byte 0x00
	.byte 0x00
_08018210:
	.4byte gLevelSelectMode
_08018214:
	.4byte gLevelSelectWorld
_08018218:
	.4byte gLevelSelectLevel
_0801821C:
	.4byte gLevelSelectLevelCursor
_08018220:
	.4byte 0x0300007C
_08018224:
	cmp r0, #0
	bne _08018264
	ldr r1, _0801826C  @ =gLevelSelectWorld
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	bgt _08018264
	ldrb r0, [r1]
	ldr r1, _08018270  @ =gLevelSelectLevel
	ldrb r1, [r1]
	mov r2, #0
	bl get_level_highscore_0801095C
	add r3, r0, #0
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _08018274  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _08018278  @ =0x0300007C
	ldr r1, [r1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r0, [r0, #1]
	lsr r0, r0, #7
	str r0, [sp]
	mov r0, #172
	mov r1, #140
	mov r2, #6
	bl sub_08017BD0
_08018264:
	add sp, sp, #4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801826C:
	.4byte gLevelSelectWorld
_08018270:
	.4byte gLevelSelectLevel
_08018274:
	.4byte gLevelSelectLevelCursor
_08018278:
	.4byte 0x0300007C
	THUMB_FUNC_END sub_080181BC
	
		THUMB_FUNC_START sub_0801827C
sub_0801827C: @ 0x0801827C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	ldr r4, _0801831C  @ =REG_DMA3SAD
	ldr r3, [r0, #16]
	str r3, [r4]
	ldr r3, _08018320  @ =0x03000094
	mov r9, r3
	ldr r6, [r3]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	ldr r5, _08018324  @ =gOamBuffer
	mov r8, r5
	add r3, r3, r8
	str r3, [r4, #4]
	ldr r3, _08018328  @ =0x84000002
	str r3, [r4, #8]
	ldr r3, [r4, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	lsl r1, r1, #22
	lsr r1, r1, #22
	ldrh r5, [r4, #4]
	ldr r3, _0801832C  @ =0xFFFFFC00
	and r3, r3, r5
	orr r3, r3, r1
	strh r3, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r1, #0
	ldrsh r4, [r0, r1]
	ldr r5, _08018330  @ =0x000001FF
	add r1, r5, #0
	and r4, r4, r1
	ldrh r5, [r3, #2]
	ldr r1, _08018334  @ =0xFFFFFE00
	and r1, r1, r5
	orr r1, r1, r4
	strh r1, [r3, #2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrh r0, [r0, #2]
	strb r0, [r1]
	mov r1, r9
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	lsl r2, r2, #4
	ldrb r3, [r1, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r2
	strb r0, [r1, #5]
	mov r3, r9
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
_0801831C:
	.4byte REG_DMA3SAD
_08018320:
	.4byte 0x03000094
_08018324:
	.4byte gOamBuffer
_08018328:
	.4byte 0x84000002
_0801832C:
	.4byte 0xFFFFFC00
_08018330:
	.4byte 0x000001FF
_08018334:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0801827C

	THUMB_FUNC_START sub_08018338
sub_08018338: @ 0x08018338
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	ldr r4, [sp, #28]
	mov r8, r4
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r6, r8
	lsl r6, r6, #16
	mov r8, r6
	ldr r5, _080183FC  @ =REG_DMA3SAD
	ldr r4, [r0, #16]
	str r4, [r5]
	ldr r4, _08018400  @ =0x03000094
	mov r12, r4
	ldr r6, [r4]
	mov r9, r6
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	ldr r6, _08018404  @ =gOamBuffer
	mov r10, r6
	add r4, r4, r10
	str r4, [r5, #4]
	ldr r4, _08018408  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	mov r4, r9
	ldrh r5, [r4, #2]
	lsl r5, r5, #3
	add r5, r5, r10
	lsl r2, r2, #22
	lsr r2, r2, #22
	ldrh r6, [r5, #4]
	ldr r4, _0801840C  @ =0xFFFFFC00
	and r4, r4, r6
	orr r4, r4, r2
	strh r4, [r5, #4]
	mov r6, r9
	ldrh r5, [r6, #2]
	lsl r5, r5, #3
	add r5, r5, r10
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r2, [r0, #12]
	lsl r4, r1, #3
	add r4, r4, r1
	lsl r4, r4, #2
	add r2, r4, r2
	mov r1, #2
	ldrsb r1, [r2, r1]
	add r3, r3, r1
	ldr r2, _08018410  @ =0x000001FF
	add r1, r2, #0
	and r3, r3, r1
	ldrh r2, [r5, #2]
	ldr r1, _08018414  @ =0xFFFFFE00
	and r1, r1, r2
	orr r1, r1, r3
	strh r1, [r5, #2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	add r1, r1, r10
	ldr r0, [r0, #12]
	add r4, r4, r0
	mov r6, r8
	lsr r6, r6, #16
	mov r8, r6
	ldrb r4, [r4, #3]
	add r8, r8, r4
	mov r0, r8
	strb r0, [r1]
	mov r1, r12
	ldr r0, [r1]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r10
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r2, r12
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080183FC:
	.4byte REG_DMA3SAD
_08018400:
	.4byte 0x03000094
_08018404:
	.4byte gOamBuffer
_08018408:
	.4byte 0x84000002
_0801840C:
	.4byte 0xFFFFFC00
_08018410:
	.4byte 0x000001FF
_08018414:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018338

	THUMB_FUNC_START sub_08018418
sub_08018418: @ 0x08018418
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	ldr r4, _080184FC  @ =REG_DMA3SAD
	ldr r2, [r0, #20]
	str r2, [r4]
	ldr r2, _08018500  @ =gObjVRAMCopyOffset_0300192C
	mov r12, r2
	ldrh r2, [r2]
	ldr r3, _08018504  @ =OBJ_VRAM0
	add r2, r2, r3
	str r2, [r4, #4]
	ldrh r2, [r0, #8]
	lsr r2, r2, #2
	mov r3, #132
	lsl r3, r3, #24
	orr r2, r2, r3
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	ldr r2, [r0, #16]
	str r2, [r4]
	ldr r3, _08018508  @ =0x03000094
	mov r10, r3
	ldr r6, [r3]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	ldr r5, _0801850C  @ =gOamBuffer
	mov r8, r5
	add r2, r2, r8
	str r2, [r4, #4]
	ldr r2, _08018510  @ =0x84000002
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	ldr r2, _08018514  @ =gUnknown_03001930
	mov r9, r2
	ldrh r2, [r2]
	ldr r3, _08018518  @ =0x000003FF
	and r3, r3, r2
	ldrh r5, [r4, #4]
	ldr r2, _0801851C  @ =0xFFFFFC00
	and r2, r2, r5
	orr r2, r2, r3
	strh r2, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r5, #0
	ldrsh r4, [r0, r5]
	ldr r5, _08018520  @ =0x000001FF
	add r2, r5, #0
	and r4, r4, r2
	ldrh r5, [r3, #2]
	ldr r2, _08018524  @ =0xFFFFFE00
	and r2, r2, r5
	orr r2, r2, r4
	strh r2, [r3, #2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r3, [r0, #2]
	strb r3, [r2]
	mov r3, r10
	ldr r2, [r3]
	ldrh r3, [r2, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	lsl r1, r1, #4
	ldrb r4, [r3, #5]
	mov r2, #15
	and r2, r2, r4
	orr r2, r2, r1
	strb r2, [r3, #5]
	mov r5, r10
	ldr r1, [r5]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r2, r9
	ldrh r2, [r2]
	add r1, r1, r2
	mov r3, r9
	strh r1, [r3]
	ldrh r0, [r0, #8]
	mov r5, r12
	ldrh r5, [r5]
	add r0, r0, r5
	mov r1, r12
	strh r0, [r1]
	mov r2, r10
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080184FC:
	.4byte REG_DMA3SAD
_08018500:
	.4byte gObjVRAMCopyOffset_0300192C
_08018504:
	.4byte OBJ_VRAM0
_08018508:
	.4byte 0x03000094
_0801850C:
	.4byte gOamBuffer
_08018510:
	.4byte 0x84000002
_08018514:
	.4byte gUnknown_03001930
_08018518:
	.4byte 0x000003FF
_0801851C:
	.4byte 0xFFFFFC00
_08018520:
	.4byte 0x000001FF
_08018524:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018418

	THUMB_FUNC_START sub_08018528
sub_08018528: @ 0x08018528
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	ldr r3, _080185CC  @ =REG_DMA3SAD
	ldr r2, [r0, #16]
	str r2, [r3]
	ldr r2, _080185D0  @ =0x03000094
	mov r9, r2
	ldr r6, [r2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	ldr r4, _080185D4  @ =gOamBuffer
	mov r8, r4
	add r2, r2, r8
	str r2, [r3, #4]
	ldr r2, _080185D8  @ =0x84000002
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	ldrh r2, [r6, #18]
	ldr r3, _080185DC  @ =0x000003FF
	and r3, r3, r2
	ldrh r5, [r4, #4]
	ldr r2, _080185E0  @ =0xFFFFFC00
	and r2, r2, r5
	orr r2, r2, r3
	strh r2, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r5, #0
	ldrsh r4, [r0, r5]
	ldr r5, _080185E4  @ =0x000001FF
	add r2, r5, #0
	and r4, r4, r2
	ldrh r5, [r3, #2]
	ldr r2, _080185E8  @ =0xFFFFFE00
	and r2, r2, r5
	orr r2, r2, r4
	strh r2, [r3, #2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r0, [r0, #2]
	strb r0, [r2]
	mov r2, r9
	ldr r0, [r2]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r4, r9
	ldr r0, [r4]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080185CC:
	.4byte REG_DMA3SAD
_080185D0:
	.4byte 0x03000094
_080185D4:
	.4byte gOamBuffer
_080185D8:
	.4byte 0x84000002
_080185DC:
	.4byte 0x000003FF
_080185E0:
	.4byte 0xFFFFFC00
_080185E4:
	.4byte 0x000001FF
_080185E8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018528

	THUMB_FUNC_START sub_080185EC
sub_080185EC: @ 0x080185EC
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	ldr r3, _08018690  @ =REG_DMA3SAD
	ldr r2, [r0, #16]
	str r2, [r3]
	ldr r2, _08018694  @ =0x03000094
	mov r9, r2
	ldr r6, [r2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	ldr r4, _08018698  @ =gOamBuffer
	mov r8, r4
	add r2, r2, r8
	str r2, [r3, #4]
	ldr r2, _0801869C  @ =0x84000002
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	ldrh r2, [r6, #16]
	ldr r3, _080186A0  @ =0x000003FF
	and r3, r3, r2
	ldrh r5, [r4, #4]
	ldr r2, _080186A4  @ =0xFFFFFC00
	and r2, r2, r5
	orr r2, r2, r3
	strh r2, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r5, #0
	ldrsh r4, [r0, r5]
	ldr r5, _080186A8  @ =0x000001FF
	add r2, r5, #0
	and r4, r4, r2
	ldrh r5, [r3, #2]
	ldr r2, _080186AC  @ =0xFFFFFE00
	and r2, r2, r5
	orr r2, r2, r4
	strh r2, [r3, #2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r0, [r0, #2]
	strb r0, [r2]
	mov r2, r9
	ldr r0, [r2]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r4, r9
	ldr r0, [r4]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018690:
	.4byte REG_DMA3SAD
_08018694:
	.4byte 0x03000094
_08018698:
	.4byte gOamBuffer
_0801869C:
	.4byte 0x84000002
_080186A0:
	.4byte 0x000003FF
_080186A4:
	.4byte 0xFFFFFC00
_080186A8:
	.4byte 0x000001FF
_080186AC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080185EC

	THUMB_FUNC_START sub_080186B0
sub_080186B0: @ 0x080186B0
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r3, _08018794  @ =REG_DMA3SAD
	ldr r4, [r0, #12]
	lsl r2, r1, #3
	add r2, r2, r1
	lsl r2, r2, #2
	add r2, r2, r4
	ldrb r2, [r2]
	ldrh r1, [r0, #4]
	mul r2, r1, r2
	lsl r2, r2, #2
	ldr r1, [r0, #20]
	add r1, r1, r2
	str r1, [r3]
	ldr r1, _08018798  @ =gObjVRAMCopyOffset_0300192C
	mov r10, r1
	ldrh r1, [r1]
	ldr r2, _0801879C  @ =OBJ_VRAM0
	add r1, r1, r2
	str r1, [r3, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r2, #132
	lsl r2, r2, #24
	orr r1, r1, r2
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r1, [r0, #16]
	str r1, [r3]
	ldr r2, _080187A0  @ =0x03000094
	mov r9, r2
	ldr r6, [r2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	ldr r5, _080187A4  @ =gOamBuffer
	add r1, r1, r5
	str r1, [r3, #4]
	ldr r1, _080187A8  @ =0x84000002
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r5
	ldr r4, _080187AC  @ =gUnknown_03001930
	mov r8, r4
	ldrh r1, [r4]
	ldr r2, _080187B0  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _080187B4  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, #0
	ldrsh r3, [r0, r1]
	ldr r4, _080187B8  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r2, #2]
	ldr r1, _080187BC  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r2, #2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrh r2, [r0, #2]
	strb r2, [r1]
	mov r2, r9
	ldr r1, [r2]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r5
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r3, r8
	ldrh r3, [r3]
	add r1, r1, r3
	mov r4, r8
	strh r1, [r4]
	ldrh r0, [r0, #8]
	mov r1, r10
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r10
	strh r0, [r2]
	mov r3, r9
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018794:
	.4byte REG_DMA3SAD
_08018798:
	.4byte gObjVRAMCopyOffset_0300192C
_0801879C:
	.4byte OBJ_VRAM0
_080187A0:
	.4byte 0x03000094
_080187A4:
	.4byte gOamBuffer
_080187A8:
	.4byte 0x84000002
_080187AC:
	.4byte gUnknown_03001930
_080187B0:
	.4byte 0x000003FF
_080187B4:
	.4byte 0xFFFFFC00
_080187B8:
	.4byte 0x000001FF
_080187BC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080186B0

	THUMB_FUNC_START sub_080187C0
sub_080187C0: @ 0x080187C0
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r2, r2, #24
	ldr r4, _080188BC  @ =REG_DMA3SAD
	ldr r5, [r0, #12]
	lsl r3, r1, #3
	add r3, r3, r1
	lsl r3, r3, #2
	add r3, r3, r5
	ldrb r3, [r3]
	ldrh r1, [r0, #4]
	mul r3, r1, r3
	lsl r3, r3, #2
	ldr r1, [r0, #20]
	add r1, r1, r3
	str r1, [r4]
	ldr r1, _080188C0  @ =gObjVRAMCopyOffset_0300192C
	mov r12, r1
	ldrh r1, [r1]
	ldr r3, _080188C4  @ =OBJ_VRAM0
	add r1, r1, r3
	str r1, [r4, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r3, #132
	lsl r3, r3, #24
	orr r1, r1, r3
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldr r1, [r0, #16]
	str r1, [r4]
	ldr r3, _080188C8  @ =0x03000094
	mov r10, r3
	ldr r6, [r3]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	ldr r5, _080188CC  @ =gOamBuffer
	mov r8, r5
	add r1, r1, r8
	str r1, [r4, #4]
	ldr r1, _080188D0  @ =0x84000002
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	ldr r1, _080188D4  @ =gUnknown_03001930
	mov r9, r1
	ldrh r1, [r1]
	ldr r3, _080188D8  @ =0x000003FF
	and r3, r3, r1
	ldrh r5, [r4, #4]
	ldr r1, _080188DC  @ =0xFFFFFC00
	and r1, r1, r5
	orr r1, r1, r3
	strh r1, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r5, #0
	ldrsh r4, [r0, r5]
	ldr r5, _080188E0  @ =0x000001FF
	add r1, r5, #0
	and r4, r4, r1
	ldrh r5, [r3, #2]
	ldr r1, _080188E4  @ =0xFFFFFE00
	and r1, r1, r5
	orr r1, r1, r4
	strh r1, [r3, #2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrh r3, [r0, #2]
	strb r3, [r1]
	mov r3, r10
	ldr r1, [r3]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	lsr r2, r2, #20
	ldrb r4, [r3, #5]
	mov r1, #15
	and r1, r1, r4
	orr r1, r1, r2
	strb r1, [r3, #5]
	mov r5, r10
	ldr r1, [r5]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r2, r9
	ldrh r2, [r2]
	add r1, r1, r2
	mov r3, r9
	strh r1, [r3]
	ldrh r0, [r0, #8]
	mov r5, r12
	ldrh r5, [r5]
	add r0, r0, r5
	mov r1, r12
	strh r0, [r1]
	mov r2, r10
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
_080188BC:
	.4byte REG_DMA3SAD
_080188C0:
	.4byte gObjVRAMCopyOffset_0300192C
_080188C4:
	.4byte OBJ_VRAM0
_080188C8:
	.4byte 0x03000094
_080188CC:
	.4byte gOamBuffer
_080188D0:
	.4byte 0x84000002
_080188D4:
	.4byte gUnknown_03001930
_080188D8:
	.4byte 0x000003FF
_080188DC:
	.4byte 0xFFFFFC00
_080188E0:
	.4byte 0x000001FF
_080188E4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080187C0

	THUMB_FUNC_START sub_080188E8
sub_080188E8: @ 0x080188E8
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	lsl r1, r1, #24
	ldr r3, _08018978  @ =REG_DMA3SAD
	ldr r2, [r0, #16]
	str r2, [r3]
	ldr r2, _0801897C  @ =0x03000094
	mov r8, r2
	ldr r5, [r2]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	ldr r6, _08018980  @ =gOamBuffer
	add r2, r2, r6
	str r2, [r3, #4]
	ldr r2, _08018984  @ =0x84000002
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	ldrh r3, [r5, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	lsr r1, r1, #23
	add r2, r5, #0
	add r2, r2, #42
	add r2, r2, r1
	ldrh r1, [r2]
	ldr r2, _08018988  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _0801898C  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r4, #0
	ldrsh r3, [r0, r4]
	ldr r4, _08018990  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r2, #2]
	ldr r1, _08018994  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r2, #2]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r0, [r0, #2]
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	mov r2, r8
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018978:
	.4byte REG_DMA3SAD
_0801897C:
	.4byte 0x03000094
_08018980:
	.4byte gOamBuffer
_08018984:
	.4byte 0x84000002
_08018988:
	.4byte 0x000003FF
_0801898C:
	.4byte 0xFFFFFC00
_08018990:
	.4byte 0x000001FF
_08018994:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080188E8

	THUMB_FUNC_START sub_08018998
sub_08018998: @ 0x08018998
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r2, _08018A1C  @ =REG_DMA3SAD
	ldr r1, [r0, #16]
	str r1, [r2]
	ldr r1, _08018A20  @ =0x03000094
	mov r8, r1
	ldr r5, [r1]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	ldr r6, _08018A24  @ =gOamBuffer
	add r1, r1, r6
	str r1, [r2, #4]
	ldr r1, _08018A28  @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldrh r3, [r5, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r1, [r5, #22]
	ldr r2, _08018A2C  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _08018A30  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r4, #0
	ldrsh r3, [r0, r4]
	ldr r4, _08018A34  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r2, #2]
	ldr r1, _08018A38  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r2, #2]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r0, [r0, #2]
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	mov r4, r8
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
_08018A1C:
	.4byte REG_DMA3SAD
_08018A20:
	.4byte 0x03000094
_08018A24:
	.4byte gOamBuffer
_08018A28:
	.4byte 0x84000002
_08018A2C:
	.4byte 0x000003FF
_08018A30:
	.4byte 0xFFFFFC00
_08018A34:
	.4byte 0x000001FF
_08018A38:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018998

	THUMB_FUNC_START sub_08018A3C
sub_08018A3C: @ 0x08018A3C
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r2, _08018AC0  @ =REG_DMA3SAD
	ldr r1, [r0, #16]
	str r1, [r2]
	ldr r1, _08018AC4  @ =0x03000094
	mov r8, r1
	ldr r5, [r1]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	ldr r6, _08018AC8  @ =gOamBuffer
	add r1, r1, r6
	str r1, [r2, #4]
	ldr r1, _08018ACC  @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldrh r3, [r5, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r1, [r5, #24]
	ldr r2, _08018AD0  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _08018AD4  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r4, #0
	ldrsh r3, [r0, r4]
	ldr r4, _08018AD8  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r2, #2]
	ldr r1, _08018ADC  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r2, #2]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r0, [r0, #2]
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	mov r4, r8
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
_08018AC0:
	.4byte REG_DMA3SAD
_08018AC4:
	.4byte 0x03000094
_08018AC8:
	.4byte gOamBuffer
_08018ACC:
	.4byte 0x84000002
_08018AD0:
	.4byte 0x000003FF
_08018AD4:
	.4byte 0xFFFFFC00
_08018AD8:
	.4byte 0x000001FF
_08018ADC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018A3C

	THUMB_FUNC_START sub_08018AE0
sub_08018AE0: @ 0x08018AE0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _08018BC0  @ =REG_DMA3SAD
	ldr r6, [r0, #12]
	lsl r4, r1, #3
	add r4, r4, r1
	lsl r4, r4, #2
	add r4, r4, r6
	ldrb r4, [r4]
	ldrh r1, [r0, #4]
	mul r4, r1, r4
	lsl r4, r4, #2
	ldr r1, [r0, #20]
	add r1, r1, r4
	str r1, [r5]
	ldr r7, _08018BC4  @ =gObjVRAMCopyOffset_0300192C
	ldrh r1, [r7]
	ldr r4, _08018BC8  @ =OBJ_VRAM0
	add r1, r1, r4
	str r1, [r5, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r4, #132
	lsl r4, r4, #24
	orr r1, r1, r4
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldr r1, [r0, #16]
	str r1, [r5]
	ldr r1, _08018BCC  @ =0x03000094
	mov r12, r1
	ldr r4, [r1]
	mov r9, r4
	ldrh r1, [r4, #2]
	lsl r1, r1, #3
	ldr r4, _08018BD0  @ =gOamBuffer
	mov r8, r4
	add r1, r1, r8
	str r1, [r5, #4]
	ldr r1, _08018BD4  @ =0x84000002
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	mov r1, r9
	ldrh r5, [r1, #2]
	lsl r5, r5, #3
	add r5, r5, r8
	ldr r4, _08018BD8  @ =gUnknown_03001930
	mov r10, r4
	ldrh r1, [r4]
	ldr r4, _08018BDC  @ =0x000003FF
	and r4, r4, r1
	ldrh r6, [r5, #4]
	ldr r1, _08018BE0  @ =0xFFFFFC00
	and r1, r1, r6
	orr r1, r1, r4
	strh r1, [r5, #4]
	mov r1, r9
	ldrh r4, [r1, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	lsl r2, r2, #23
	lsr r2, r2, #23
	ldrh r5, [r4, #2]
	ldr r1, _08018BE4  @ =0xFFFFFE00
	and r1, r1, r5
	orr r1, r1, r2
	strh r1, [r4, #2]
	mov r2, r9
	ldrh r1, [r2, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	strb r3, [r1]
	mov r3, r12
	ldr r1, [r3]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r4, r10
	ldrh r4, [r4]
	add r1, r1, r4
	mov r2, r10
	strh r1, [r2]
	ldrh r0, [r0, #8]
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r4, r12
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018BC0:
	.4byte REG_DMA3SAD
_08018BC4:
	.4byte gObjVRAMCopyOffset_0300192C
_08018BC8:
	.4byte OBJ_VRAM0
_08018BCC:
	.4byte 0x03000094
_08018BD0:
	.4byte gOamBuffer
_08018BD4:
	.4byte 0x84000002
_08018BD8:
	.4byte gUnknown_03001930
_08018BDC:
	.4byte 0x000003FF
_08018BE0:
	.4byte 0xFFFFFC00
_08018BE4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018AE0

	THUMB_FUNC_START sub_08018BE8
sub_08018BE8: @ 0x08018BE8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r7, [sp, #32]
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _08018CE4  @ =REG_DMA3SAD
	ldr r6, [r0, #12]
	lsl r4, r1, #3
	add r4, r4, r1
	lsl r4, r4, #2
	add r4, r4, r6
	ldrb r4, [r4]
	ldrh r1, [r0, #4]
	mul r4, r1, r4
	lsl r4, r4, #2
	ldr r1, [r0, #20]
	add r1, r1, r4
	str r1, [r5]
	ldr r4, _08018CE8  @ =gObjVRAMCopyOffset_0300192C
	ldrh r1, [r4]
	ldr r4, _08018CEC  @ =OBJ_VRAM0
	add r1, r1, r4
	str r1, [r5, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r4, #132
	lsl r4, r4, #24
	orr r1, r1, r4
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldr r1, [r0, #16]
	str r1, [r5]
	ldr r1, _08018CF0  @ =0x03000094
	mov r12, r1
	ldr r4, [r1]
	mov r8, r4
	ldrh r1, [r4, #2]
	lsl r1, r1, #3
	ldr r4, _08018CF4  @ =gOamBuffer
	mov r9, r4
	add r1, r1, r9
	str r1, [r5, #4]
	ldr r1, _08018CF8  @ =0x84000002
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	mov r1, r8
	ldrh r5, [r1, #2]
	lsl r5, r5, #3
	add r5, r5, r9
	ldr r4, _08018CFC  @ =gUnknown_03001930
	mov r10, r4
	ldrh r1, [r4]
	ldr r4, _08018D00  @ =0x000003FF
	and r4, r4, r1
	ldrh r6, [r5, #4]
	ldr r1, _08018D04  @ =0xFFFFFC00
	and r1, r1, r6
	orr r1, r1, r4
	strh r1, [r5, #4]
	mov r1, r8
	ldrh r4, [r1, #2]
	lsl r4, r4, #3
	add r4, r4, r9
	lsl r3, r3, #23
	lsr r3, r3, #23
	ldrh r5, [r4, #2]
	ldr r1, _08018D08  @ =0xFFFFFE00
	and r1, r1, r5
	orr r1, r1, r3
	strh r1, [r4, #2]
	mov r3, r8
	ldrh r1, [r3, #2]
	lsl r1, r1, #3
	add r1, r1, r9
	strb r7, [r1]
	mov r4, r12
	ldr r1, [r4]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r9
	lsl r2, r2, #4
	ldrb r4, [r3, #5]
	mov r1, #15
	and r1, r1, r4
	orr r1, r1, r2
	strb r1, [r3, #5]
	mov r2, r12
	ldr r1, [r2]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r9
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r3, r10
	ldrh r3, [r3]
	add r1, r1, r3
	mov r4, r10
	strh r1, [r4]
	ldrh r0, [r0, #8]
	ldr r1, _08018CE8  @ =gObjVRAMCopyOffset_0300192C
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r2, _08018CE8  @ =gObjVRAMCopyOffset_0300192C
	strh r0, [r2]
	mov r3, r12
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018CE4:
	.4byte REG_DMA3SAD
_08018CE8:
	.4byte gObjVRAMCopyOffset_0300192C
_08018CEC:
	.4byte OBJ_VRAM0
_08018CF0:
	.4byte 0x03000094
_08018CF4:
	.4byte gOamBuffer
_08018CF8:
	.4byte 0x84000002
_08018CFC:
	.4byte gUnknown_03001930
_08018D00:
	.4byte 0x000003FF
_08018D04:
	.4byte 0xFFFFFC00
_08018D08:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018BE8

	THUMB_FUNC_START sub_08018D0C
sub_08018D0C: @ 0x08018D0C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r3, r3, #16
	ldr r5, _08018E0C  @ =REG_DMA3SAD
	ldr r4, [r0, #12]
	lsl r6, r1, #3
	mov r8, r6
	add r8, r8, r1
	mov r1, r8
	lsl r1, r1, #2
	mov r8, r1
	add r4, r4, r8
	ldrb r4, [r4]
	ldrh r1, [r0, #4]
	mul r4, r1, r4
	lsl r4, r4, #2
	ldr r1, [r0, #20]
	add r1, r1, r4
	str r1, [r5]
	ldr r4, _08018E10  @ =gObjVRAMCopyOffset_0300192C
	ldrh r1, [r4]
	ldr r4, _08018E14  @ =OBJ_VRAM0
	add r1, r1, r4
	str r1, [r5, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r4, #132
	lsl r4, r4, #24
	orr r1, r1, r4
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldr r1, [r0, #16]
	str r1, [r5]
	ldr r7, _08018E18  @ =0x03000094
	ldr r6, [r7]
	mov r9, r6
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	ldr r4, _08018E1C  @ =gOamBuffer
	mov r10, r4
	add r1, r1, r10
	str r1, [r5, #4]
	ldr r1, _08018E20  @ =0x84000002
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldrh r5, [r6, #2]
	lsl r5, r5, #3
	add r5, r5, r10
	ldr r6, _08018E24  @ =gUnknown_03001930
	mov r12, r6
	ldrh r1, [r6]
	ldr r4, _08018E28  @ =0x000003FF
	and r4, r4, r1
	ldrh r6, [r5, #4]
	ldr r1, _08018E2C  @ =0xFFFFFC00
	and r1, r1, r6
	orr r1, r1, r4
	strh r1, [r5, #4]
	mov r1, r9
	ldrh r5, [r1, #2]
	lsl r5, r5, #3
	add r5, r5, r10
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, [r0, #12]
	add r1, r1, r8
	ldrb r1, [r1, #2]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r2, r2, r1
	ldr r4, _08018E30  @ =0x000001FF
	add r1, r4, #0
	and r2, r2, r1
	ldrh r4, [r5, #2]
	ldr r1, _08018E34  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r5, #2]
	mov r6, r9
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r10
	ldr r1, [r0, #12]
	add r8, r8, r1
	lsr r3, r3, #16
	mov r1, r8
	ldrb r1, [r1, #3]
	add r3, r3, r1
	strb r3, [r2]
	ldr r1, [r7]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r10
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r2, r12
	ldrh r2, [r2]
	add r1, r1, r2
	mov r3, r12
	strh r1, [r3]
	ldrh r0, [r0, #8]
	ldr r4, _08018E10  @ =gObjVRAMCopyOffset_0300192C
	ldrh r4, [r4]
	add r0, r0, r4
	ldr r6, _08018E10  @ =gObjVRAMCopyOffset_0300192C
	strh r0, [r6]
	ldr r1, [r7]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08018E0C:
	.4byte REG_DMA3SAD
_08018E10:
	.4byte gObjVRAMCopyOffset_0300192C
_08018E14:
	.4byte OBJ_VRAM0
_08018E18:
	.4byte 0x03000094
_08018E1C:
	.4byte gOamBuffer
_08018E20:
	.4byte 0x84000002
_08018E24:
	.4byte gUnknown_03001930
_08018E28:
	.4byte 0x000003FF
_08018E2C:
	.4byte 0xFFFFFC00
_08018E30:
	.4byte 0x000001FF
_08018E34:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018D0C

	THUMB_FUNC_START sub_08018E38
sub_08018E38: @ 0x08018E38
	push {r4-r7,lr}
	add r3, r0, #0
	lsl r1, r1, #16
	lsr r7, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r12, r2
	ldr r0, _08018EC0  @ =gLevelSelect_03000083
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08018EBA
	ldr r1, _08018EC4  @ =REG_DMA3SAD
	ldr r0, [r3, #16]
	str r0, [r1]
	ldr r6, _08018EC8  @ =0x03000094
	ldr r4, [r6]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _08018ECC  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _08018ED0  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r0, [r4, #26]
	ldr r1, _08018ED4  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08018ED8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	lsl r1, r7, #23
	lsr r1, r1, #23
	ldrh r3, [r2, #2]
	ldr r0, _08018EDC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r12
	strb r1, [r0]
	ldr r0, [r6]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r6]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
_08018EBA:
	pop {r4-r7}
	pop {r0}
	bx r0
_08018EC0:
	.4byte gLevelSelect_03000083
_08018EC4:
	.4byte REG_DMA3SAD
_08018EC8:
	.4byte 0x03000094
_08018ECC:
	.4byte gOamBuffer
_08018ED0:
	.4byte 0x84000002
_08018ED4:
	.4byte 0x000003FF
_08018ED8:
	.4byte 0xFFFFFC00
_08018EDC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018E38

	THUMB_FUNC_START sub_08018EE0
sub_08018EE0: @ 0x08018EE0
	push {r4-r7,lr}
	add r3, r0, #0
	lsl r1, r1, #16
	lsr r7, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r12, r2
	ldr r0, _08018F68  @ =gLevelSelect_03000083
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08018F62
	ldr r1, _08018F6C  @ =REG_DMA3SAD
	ldr r0, [r3, #16]
	str r0, [r1]
	ldr r6, _08018F70  @ =0x03000094
	ldr r4, [r6]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _08018F74  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _08018F78  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r0, [r4, #28]
	ldr r1, _08018F7C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08018F80  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	lsl r1, r7, #23
	lsr r1, r1, #23
	ldrh r3, [r2, #2]
	ldr r0, _08018F84  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r12
	strb r1, [r0]
	ldr r0, [r6]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r6]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
_08018F62:
	pop {r4-r7}
	pop {r0}
	bx r0
_08018F68:
	.4byte gLevelSelect_03000083
_08018F6C:
	.4byte REG_DMA3SAD
_08018F70:
	.4byte 0x03000094
_08018F74:
	.4byte gOamBuffer
_08018F78:
	.4byte 0x84000002
_08018F7C:
	.4byte 0x000003FF
_08018F80:
	.4byte 0xFFFFFC00
_08018F84:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018EE0

	THUMB_FUNC_START sub_08018F88
sub_08018F88: @ 0x08018F88
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r9, r7
	lsl r1, r1, #24
	lsl r2, r2, #24
	lsr r6, r2, #24
	mov r8, r6
	cmp r1, #0
	bne _08018FA6
	b _080190E8
_08018FA6:
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _08019044
	ldr r0, _08019028  @ =gUnknown_080793B4
	ldr r1, _0801902C  @ =0x03000086
	mov r9, r1
	ldrb r1, [r1]
	ldr r2, _08019030  @ =0x03000094
	mov r8, r2
	ldr r2, [r2]
	ldrh r2, [r2, #30]
	ldr r4, _08019034  @ =gUnknown_0807897C
	lsl r5, r7, #24
	asr r5, r5, #21
	add r6, r5, r4
	ldr r3, [r6]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r4, r4, #4
	add r5, r5, r4
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	ldr r0, _08019038  @ =gUnknown_08079414
	ldr r1, _0801903C  @ =0x03000087
	ldrb r1, [r1]
	mov r3, r8
	ldr r2, [r3]
	ldrh r2, [r2, #32]
	ldr r3, [r6]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	ldr r0, _08019040  @ =gUnknown_08079474
	mov r2, r9
	ldrb r1, [r2]
	mov r3, r8
	ldr r2, [r3]
	ldrh r2, [r2, #34]
	ldr r3, [r6]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	b _08019210
	.byte 0x00
	.byte 0x00
_08019028:
	.4byte gUnknown_080793B4
_0801902C:
	.4byte 0x03000086
_08019030:
	.4byte 0x03000094
_08019034:
	.4byte gUnknown_0807897C
_08019038:
	.4byte gUnknown_08079414
_0801903C:
	.4byte 0x03000087
_08019040:
	.4byte gUnknown_08079474
_08019044:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _08019078
	ldr r0, _080190D4  @ =gUnknown_08079384
	ldr r1, _080190D8  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #36]
	ldr r5, _080190DC  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019078:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _080190AC
	ldr r0, _080190E0  @ =gUnknown_080793E4
	ldr r1, _080190D8  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #38]
	ldr r5, _080190DC  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_080190AC:
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	bne _080190B6
	b _08019210
_080190B6:
	ldr r0, _080190E4  @ =gUnknown_08079444
	ldr r1, _080190D8  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #40]
	ldr r5, _080190DC  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	b _08019148
_080190D4:
	.4byte gUnknown_08079384
_080190D8:
	.4byte 0x03000094
_080190DC:
	.4byte gUnknown_0807897C
_080190E0:
	.4byte gUnknown_080793E4
_080190E4:
	.4byte gUnknown_08079444
_080190E8:
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _08019170
	ldr r0, _0801915C  @ =gUnknown_080793CC
	ldr r6, _08019160  @ =0x03000094
	ldr r1, [r6]
	ldrh r2, [r1, #36]
	ldr r1, _08019164  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r5, r4, r1
	ldr r3, [r5]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r1, r1, #4
	add r4, r4, r1
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	ldr r0, _08019168  @ =gUnknown_0807942C
	ldr r1, [r6]
	ldrh r2, [r1, #38]
	ldr r3, [r5]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	ldr r0, _0801916C  @ =gUnknown_0807948C
	ldr r1, [r6]
	ldrh r2, [r1, #40]
	ldr r3, [r5]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
_08019148:
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	b _08019210
	.byte 0x00
	.byte 0x00
_0801915C:
	.4byte gUnknown_080793CC
_08019160:
	.4byte 0x03000094
_08019164:
	.4byte gUnknown_0807897C
_08019168:
	.4byte gUnknown_0807942C
_0801916C:
	.4byte gUnknown_0807948C
_08019170:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _080191A4
	ldr r0, _08019220  @ =gUnknown_0807939C
	ldr r1, _08019224  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #36]
	ldr r5, _08019228  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_080191A4:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _080191D8
	ldr r0, _0801922C  @ =gUnknown_080793FC
	ldr r1, _08019224  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #38]
	ldr r5, _08019228  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_080191D8:
	mov r0, #4
	mov r1, r8
	and r1, r1, r0
	cmp r1, #0
	beq _08019210
	ldr r0, _08019230  @ =gUnknown_0807945C
	ldr r1, _08019224  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #40]
	ldr r5, _08019228  @ =gUnknown_0807897C
	mov r3, r9
	lsl r4, r3, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019210:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08019220:
	.4byte gUnknown_0807939C
_08019224:
	.4byte 0x03000094
_08019228:
	.4byte gUnknown_0807897C
_0801922C:
	.4byte gUnknown_080793FC
_08019230:
	.4byte gUnknown_0807945C
	THUMB_FUNC_END sub_08018F88

	THUMB_FUNC_START sub_08019234
sub_08019234: @ 0x08019234
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r9, r7
	lsl r1, r1, #24
	lsl r2, r2, #24
	lsr r6, r2, #24
	mov r8, r6
	cmp r1, #0
	bne _08019252
	b _08019394
_08019252:
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _080192F0
	ldr r0, _080192D4  @ =gUnknown_080793B4
	ldr r1, _080192D8  @ =0x03000086
	mov r9, r1
	ldrb r1, [r1]
	ldr r2, _080192DC  @ =0x03000094
	mov r8, r2
	ldr r2, [r2]
	ldrh r2, [r2, #30]
	ldr r4, _080192E0  @ =gUnknown_080789BC
	lsl r5, r7, #24
	asr r5, r5, #21
	add r6, r5, r4
	ldr r3, [r6]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r4, r4, #4
	add r5, r5, r4
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	ldr r0, _080192E4  @ =gUnknown_08079414
	ldr r1, _080192E8  @ =0x03000087
	ldrb r1, [r1]
	mov r3, r8
	ldr r2, [r3]
	ldrh r2, [r2, #32]
	ldr r3, [r6]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	ldr r0, _080192EC  @ =gUnknown_08079474
	mov r2, r9
	ldrb r1, [r2]
	mov r3, r8
	ldr r2, [r3]
	ldrh r2, [r2, #34]
	ldr r3, [r6]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	b _080194BE
	.byte 0x00
	.byte 0x00
_080192D4:
	.4byte gUnknown_080793B4
_080192D8:
	.4byte 0x03000086
_080192DC:
	.4byte 0x03000094
_080192E0:
	.4byte gUnknown_080789BC
_080192E4:
	.4byte gUnknown_08079414
_080192E8:
	.4byte 0x03000087
_080192EC:
	.4byte gUnknown_08079474
_080192F0:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _08019324
	ldr r0, _08019380  @ =gUnknown_08079384
	ldr r1, _08019384  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #36]
	ldr r5, _08019388  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019324:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _08019358
	ldr r0, _0801938C  @ =gUnknown_080793E4
	ldr r1, _08019384  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #38]
	ldr r5, _08019388  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019358:
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	bne _08019362
	b _080194BE
_08019362:
	ldr r0, _08019390  @ =gUnknown_08079444
	ldr r1, _08019384  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #40]
	ldr r5, _08019388  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	b _080193F4
_08019380:
	.4byte gUnknown_08079384
_08019384:
	.4byte 0x03000094
_08019388:
	.4byte gUnknown_080789BC
_0801938C:
	.4byte gUnknown_080793E4
_08019390:
	.4byte gUnknown_08079444
_08019394:
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _0801941C
	ldr r0, _08019408  @ =gUnknown_080793CC
	ldr r6, _0801940C  @ =0x03000094
	ldr r1, [r6]
	ldrh r2, [r1, #36]
	ldr r1, _08019410  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r5, r4, r1
	ldr r3, [r5]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r1, r1, #4
	add r4, r4, r1
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	ldr r0, _08019414  @ =gUnknown_0807942C
	ldr r1, [r6]
	ldrh r2, [r1, #38]
	ldr r3, [r5]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	ldr r0, _08019418  @ =gUnknown_0807948C
	ldr r1, [r6]
	ldrh r2, [r1, #40]
	ldr r3, [r5]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
_080193F4:
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	b _080194BE
	.byte 0x00
	.byte 0x00
_08019408:
	.4byte gUnknown_080793CC
_0801940C:
	.4byte 0x03000094
_08019410:
	.4byte gUnknown_080789BC
_08019414:
	.4byte gUnknown_0807942C
_08019418:
	.4byte gUnknown_0807948C
_0801941C:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _08019450
	ldr r0, _080194CC  @ =gUnknown_0807939C
	ldr r1, _080194D0  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #36]
	ldr r5, _080194D4  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019450:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _08019484
	ldr r0, _080194D8  @ =gUnknown_080793FC
	ldr r1, _080194D0  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #38]
	ldr r5, _080194D4  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019484:
	mov r0, #4
	mov r1, r8
	and r1, r1, r0
	cmp r1, #0
	beq _080194BE
	ldr r0, _080194DC  @ =gUnknown_0807945C
	ldr r1, _080194D0  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #40]
	ldr r1, _080194D4  @ =gUnknown_080789BC
	mov r3, r9
	lsl r4, r3, #24
	asr r4, r4, #21
	add r1, r4, r1
	ldr r3, [r1]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r1, _080194E0  @ =gUnknown_0807897C
	add r1, r1, #4
	add r4, r4, r1
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_080194BE:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080194CC:
	.4byte gUnknown_0807939C
_080194D0:
	.4byte 0x03000094
_080194D4:
	.4byte gUnknown_080789BC
_080194D8:
	.4byte gUnknown_080793FC
_080194DC:
	.4byte gUnknown_0807945C
_080194E0:
	.4byte gUnknown_0807897C
	THUMB_FUNC_END sub_08019234

	THUMB_FUNC_START sub_080194E4
sub_080194E4: @ 0x080194E4
	push {r4,r5,lr}
	ldr r1, [sp, #12]
	lsl r0, r0, #24
	lsl r3, r3, #24
	lsr r4, r3, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r5, #0
	lsr r3, r0, #24
	lsl r2, r2, #24
	cmp r0, r2
	bne _0801950A
	ldr r0, _08019538  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801950A
	mov r5, #1
_0801950A:
	lsl r0, r3, #24
	asr r3, r0, #24
	cmp r3, #6
	bne _08019564
	cmp r1, #0
	bne _08019518
	b _08019620
_08019518:
	cmp r5, #0
	beq _08019544
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	beq _08019526
	b _08019620
_08019526:
	ldr r0, _0801953C  @ =gUnknown_08079354
	ldr r2, _08019540  @ =gUnknown_0807897C
	ldr r1, [r2, #48]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	ldr r2, [r2, #52]
	b _080195E2
	.byte 0x00
	.byte 0x00
_08019538:
	.4byte gLevelSelectMode
_0801953C:
	.4byte gUnknown_08079354
_08019540:
	.4byte gUnknown_0807897C
_08019544:
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _0801955C  @ =gUnknown_0807936C
	ldr r2, _08019560  @ =gUnknown_0807897C
	ldr r1, [r2, #48]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	ldr r2, [r2, #52]
	b _080195A6
_0801955C:
	.4byte gUnknown_0807936C
_08019560:
	.4byte gUnknown_0807897C
_08019564:
	cmp r3, #7
	bne _080195BC
	cmp r1, #0
	beq _08019620
	cmp r5, #0
	beq _08019590
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _08019588  @ =gUnknown_08079354
	ldr r2, _0801958C  @ =gUnknown_0807897C
	ldr r1, [r2, #56]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	ldr r2, [r2, #60]
	b _080195E2
_08019588:
	.4byte gUnknown_08079354
_0801958C:
	.4byte gUnknown_0807897C
_08019590:
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _080195B4  @ =gUnknown_0807936C
	ldr r2, _080195B8  @ =gUnknown_0807897C
	ldr r1, [r2, #56]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	ldr r2, [r2, #60]
_080195A6:
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018EE0
	b _08019620
	.byte 0x00
	.byte 0x00
_080195B4:
	.4byte gUnknown_0807936C
_080195B8:
	.4byte gUnknown_0807897C
_080195BC:
	cmp r1, #0
	beq _08019620
	cmp r5, #0
	beq _080195F8
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _080195F0  @ =gUnknown_08079354
	ldr r2, _080195F4  @ =gUnknown_0807897C
	lsl r3, r3, #3
	add r1, r3, r2
	ldr r1, [r1]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, #4
	add r3, r3, r2
	ldr r2, [r3]
_080195E2:
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018E38
	b _08019620
	.byte 0x00
	.byte 0x00
_080195F0:
	.4byte gUnknown_08079354
_080195F4:
	.4byte gUnknown_0807897C
_080195F8:
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _08019628  @ =gUnknown_0807936C
	ldr r2, _0801962C  @ =gUnknown_0807897C
	lsl r3, r3, #3
	add r1, r3, r2
	ldr r1, [r1]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, #4
	add r3, r3, r2
	ldr r2, [r3]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018EE0
_08019620:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08019628:
	.4byte gUnknown_0807936C
_0801962C:
	.4byte gUnknown_0807897C
	THUMB_FUNC_END sub_080194E4

	THUMB_FUNC_START sub_08019630
sub_08019630: @ 0x08019630
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r1, r1, #24
	asr r0, r1, #24
	cmp r0, #5
	bgt _080196BA
	lsl r6, r4, #24
	mov r5, #0
	add r7, r1, #0
	mov r8, r6
	cmp r6, #0
	ble _08019676
_08019650:
	lsl r0, r5, #24
	asr r0, r0, #24
	asr r4, r6, #24
	ldr r1, _08019690  @ =0x0300007C
	ldr r2, [r1]
	lsl r1, r5, #2
	add r1, r1, r2
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	asr r1, r7, #24
	add r2, r4, #0
	bl sub_080194E4
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, r4
	blt _08019650
_08019676:
	lsl r0, r5, #24
	asr r0, r0, #24
	asr r1, r7, #24
	mov r3, r8
	asr r2, r3, #24
	ldr r3, _08019690  @ =0x0300007C
	ldr r3, [r3]
	lsl r4, r5, #2
	add r4, r4, r3
	ldrb r3, [r4, #1]
	ldrb r4, [r4]
	str r4, [sp]
	b _080196AC
_08019690:
	.4byte 0x0300007C
_08019694:
	lsl r0, r5, #24
	asr r0, r0, #24
	ldr r1, _080196C8  @ =0x0300007C
	ldr r2, [r1]
	lsl r1, r5, #2
	add r1, r1, r2
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	asr r1, r7, #24
	mov r4, r8
	asr r2, r4, #24
_080196AC:
	bl sub_080194E4
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #7
	bls _08019694
_080196BA:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080196C8:
	.4byte 0x0300007C
	THUMB_FUNC_END sub_08019630

	THUMB_FUNC_START sub_080196CC
sub_080196CC: @ 0x080196CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, [sp, #32]
	lsl r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r8, r3
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r3, #0
	lsr r5, r0, #24
	lsl r2, r2, #24
	cmp r0, r2
	bne _08019700
	ldr r0, _08019768  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08019700
	mov r3, #1
_08019700:
	mov r9, r3
	lsl r0, r5, #24
	asr r7, r0, #24
	mov r10, r0
	cmp r7, #6
	beq _0801970E
	b _080198CC
_0801970E:
	cmp r4, #0
	bne _08019714
	b _0801988C
_08019714:
	cmp r3, #0
	beq _080197D4
	mov r0, #192
	mov r1, r8
	and r0, r0, r1
	cmp r0, #192
	bne _0801977C
	ldr r0, _0801976C  @ =gUnknown_0807930C
	ldr r4, _08019770  @ =gUnknown_0807897C
	ldr r2, [r4, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #52
	ldrsh r3, [r4, r1]
	mov r1, #3
	bl sub_08018D0C
	ldr r0, _08019774  @ =gUnknown_080792C4
	mov r1, #7
	mov r2, r8
	and r1, r1, r2
	add r1, r1, #21
	ldr r2, [r4, #48]
	add r2, r2, #26
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r3, [r4, #52]
	add r3, r3, #26
	lsl r3, r3, #16
	asr r3, r3, #16
	bl sub_08018D0C
	ldr r0, _08019778  @ =gUnknown_080794D4
	mov r3, #48
	ldrsh r2, [r4, r3]
	ldr r3, [r4, #52]
	add r3, r3, #20
	lsl r3, r3, #16
	asr r3, r3, #16
	b _08019942
	.byte 0x00
	.byte 0x00
_08019768:
	.4byte gLevelSelectMode
_0801976C:
	.4byte gUnknown_0807930C
_08019770:
	.4byte gUnknown_0807897C
_08019774:
	.4byte gUnknown_080792C4
_08019778:
	.4byte gUnknown_080794D4
_0801977C:
	ldr r0, _080197C4  @ =gUnknown_0807930C
	ldr r4, _080197C8  @ =gUnknown_0807897C
	ldr r2, [r4, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #52
	ldrsh r3, [r4, r1]
	mov r1, #0
	bl sub_08018D0C
	mov r1, #7
	mov r2, r8
	and r1, r1, r2
	cmp r1, #0
	bne _0801979E
	b _08019ADE
_0801979E:
	ldr r0, _080197CC  @ =gUnknown_080792C4
	ldr r2, [r4, #48]
	add r2, r2, #26
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r3, [r4, #52]
	add r3, r3, #26
	lsl r3, r3, #16
	asr r3, r3, #16
	bl sub_08018D0C
	ldr r0, _080197D0  @ =gUnknown_080794D4
	mov r3, #48
	ldrsh r2, [r4, r3]
	ldr r3, [r4, #52]
	add r3, r3, #20
	lsl r3, r3, #16
	asr r3, r3, #16
	b _08019942
_080197C4:
	.4byte gUnknown_0807930C
_080197C8:
	.4byte gUnknown_0807897C
_080197CC:
	.4byte gUnknown_080792C4
_080197D0:
	.4byte gUnknown_080794D4
_080197D4:
	mov r0, #192
	mov r4, r8
	and r0, r0, r4
	cmp r0, #192
	bne _08019834
	ldr r0, _08019824  @ =gUnknown_0807930C
	ldr r4, _08019828  @ =gUnknown_0807897C
	ldr r2, [r4, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #52
	ldrsh r3, [r4, r1]
	mov r1, #4
	bl sub_08018D0C
	ldr r0, _0801982C  @ =gUnknown_080792C4
	mov r1, #7
	mov r2, r8
	and r1, r1, r2
	add r1, r1, #28
	ldr r2, [r4, #48]
	add r2, r2, #26
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r3, [r4, #52]
	add r3, r3, #26
	lsl r3, r3, #16
	asr r3, r3, #16
	bl sub_08018D0C
	ldr r0, _08019830  @ =gUnknown_080794D4
	mov r3, #48
	ldrsh r2, [r4, r3]
	ldr r3, [r4, #52]
	add r3, r3, #20
	lsl r3, r3, #16
	asr r3, r3, #16
	b _080198BC
	.byte 0x00
	.byte 0x00
_08019824:
	.4byte gUnknown_0807930C
_08019828:
	.4byte gUnknown_0807897C
_0801982C:
	.4byte gUnknown_080792C4
_08019830:
	.4byte gUnknown_080794D4
_08019834:
	ldr r0, _0801987C  @ =gUnknown_0807930C
	ldr r4, _08019880  @ =gUnknown_0807897C
	ldr r2, [r4, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #52
	ldrsh r3, [r4, r1]
	mov r1, #0
	bl sub_08018D0C
	mov r1, #7
	mov r2, r8
	and r1, r1, r2
	cmp r1, #0
	bne _08019856
	b _08019ADE
_08019856:
	ldr r0, _08019884  @ =gUnknown_080792C4
	ldr r2, [r4, #48]
	add r2, r2, #26
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r3, [r4, #52]
	add r3, r3, #26
	lsl r3, r3, #16
	asr r3, r3, #16
	bl sub_08018D0C
	ldr r0, _08019888  @ =gUnknown_080794D4
	mov r3, #48
	ldrsh r2, [r4, r3]
	ldr r3, [r4, #52]
	add r3, r3, #20
	lsl r3, r3, #16
	asr r3, r3, #16
	b _080198BC
_0801987C:
	.4byte gUnknown_0807930C
_08019880:
	.4byte gUnknown_0807897C
_08019884:
	.4byte gUnknown_080792C4
_08019888:
	.4byte gUnknown_080794D4
_0801988C:
	mov r4, r9
	cmp r4, #0
	beq _080198AC
	ldr r0, _080198A4  @ =gUnknown_0807930C
	ldr r1, _080198A8  @ =gUnknown_0807897C
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #52
	ldrsh r3, [r1, r4]
	b _08019942
_080198A4:
	.4byte gUnknown_0807930C
_080198A8:
	.4byte gUnknown_0807897C
_080198AC:
	ldr r0, _080198C4  @ =gUnknown_0807930C
	ldr r1, _080198C8  @ =gUnknown_0807897C
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #52
	ldrsh r3, [r1, r4]
_080198BC:
	mov r1, #1
	bl sub_08018D0C
	b _08019ADE
_080198C4:
	.4byte gUnknown_0807930C
_080198C8:
	.4byte gUnknown_0807897C
_080198CC:
	cmp r7, #7
	bne _08019954
	cmp r4, #0
	beq _08019930
	mov r0, r9
	cmp r0, #0
	beq _08019904
	mov r0, #192
	mov r1, r8
	and r0, r0, r1
	cmp r0, #192
	bne _08019932
	ldr r0, _080198FC  @ =gUnknown_08079324
	ldr r1, _08019900  @ =gUnknown_0807897C
	ldr r2, [r1, #56]
	add r2, r2, #2
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #60
	ldrsh r3, [r1, r4]
	mov r1, #3
	bl sub_08018D0C
	b _08019ADE
_080198FC:
	.4byte gUnknown_08079324
_08019900:
	.4byte gUnknown_0807897C
_08019904:
	mov r0, #192
	mov r1, r8
	and r0, r0, r1
	cmp r0, #192
	bne _08019932
	ldr r0, _08019928  @ =gUnknown_08079324
	ldr r1, _0801992C  @ =gUnknown_0807897C
	ldr r2, [r1, #56]
	add r2, r2, #2
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #60
	ldrsh r3, [r1, r4]
	mov r1, #4
	bl sub_08018D0C
	b _08019ADE
	.byte 0x00
	.byte 0x00
_08019928:
	.4byte gUnknown_08079324
_0801992C:
	.4byte gUnknown_0807897C
_08019930:
	mov r0, r9
_08019932:
	ldr r0, _0801994C  @ =gUnknown_08079324
	ldr r1, _08019950  @ =gUnknown_0807897C
	ldr r2, [r1, #56]
	add r2, r2, #2
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #60
	ldrsh r3, [r1, r4]
_08019942:
	mov r1, #0
	bl sub_08018D0C
	b _08019ADE
	.byte 0x00
	.byte 0x00
_0801994C:
	.4byte gUnknown_08079324
_08019950:
	.4byte gUnknown_0807897C
_08019954:
	cmp r4, #0
	beq _08019A20
	mov r0, r9
	cmp r0, #0
	beq _080199C0
	mov r0, #192
	mov r2, r8
	and r0, r0, r2
	cmp r0, #192
	bne _080199B0
	ldr r6, _080199A8  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r3, #176
	lsl r3, r3, #21
	add r1, r1, r3
	lsr r1, r1, #24
	ldr r0, _080199AC  @ =gUnknown_0807897C
	lsl r4, r7, #3
	add r5, r4, r0
	mov r3, #0
	ldrsh r2, [r5, r3]
	add r0, r0, #4
	add r4, r4, r0
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	ldr r2, [r5]
	add r2, r2, #6
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #0
	ldrsh r3, [r4, r1]
	add r0, r6, #0
	mov r1, #21
	bl sub_08018D0C
	add r1, r7, #0
	add r1, r1, #22
	b _08019A60
	.byte 0x00
	.byte 0x00
_080199A8:
	.4byte gUnknown_080792C4
_080199AC:
	.4byte gUnknown_0807897C
_080199B0:
	ldr r6, _080199BC  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r2, #128
	lsl r2, r2, #17
	add r1, r1, r2
	b _08019A30
_080199BC:
	.4byte gUnknown_080792C4
_080199C0:
	mov r0, #192
	mov r2, r8
	and r0, r0, r2
	cmp r0, #192
	bne _08019A10
	ldr r6, _08019A08  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r3, #232
	lsl r3, r3, #21
	add r1, r1, r3
	lsr r1, r1, #24
	ldr r0, _08019A0C  @ =gUnknown_0807897C
	lsl r4, r7, #3
	add r5, r4, r0
	mov r3, #0
	ldrsh r2, [r5, r3]
	add r0, r0, #4
	add r4, r4, r0
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	ldr r2, [r5]
	add r2, r2, #6
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #0
	ldrsh r3, [r4, r1]
	add r0, r6, #0
	mov r1, #28
	bl sub_08018D0C
	add r1, r7, #0
	add r1, r1, #29
	b _08019A60
_08019A08:
	.4byte gUnknown_080792C4
_08019A0C:
	.4byte gUnknown_0807897C
_08019A10:
	ldr r6, _08019A1C  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r2, #128
	lsl r2, r2, #17
	add r1, r1, r2
	b _08019A30
_08019A1C:
	.4byte gUnknown_080792C4
_08019A20:
	mov r2, r9
	cmp r2, #0
	beq _08019A80
	ldr r6, _08019A78  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r3, #128
	lsl r3, r3, #17
	add r1, r1, r3
_08019A30:
	lsr r1, r1, #24
	ldr r0, _08019A7C  @ =gUnknown_0807897C
	lsl r4, r7, #3
	add r5, r4, r0
	mov r3, #0
	ldrsh r2, [r5, r3]
	add r0, r0, #4
	add r4, r4, r0
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	ldr r2, [r5]
	add r2, r2, #6
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #0
	ldrsh r3, [r4, r1]
	add r0, r6, #0
	mov r1, #0
	bl sub_08018D0C
	add r1, r7, #1
_08019A60:
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, [r5]
	add r2, r2, #12
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	b _08019AD2
_08019A78:
	.4byte gUnknown_080792C4
_08019A7C:
	.4byte gUnknown_0807897C
_08019A80:
	ldr r6, _08019AEC  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r2, #128
	lsl r2, r2, #20
	add r1, r1, r2
	lsr r1, r1, #24
	ldr r0, _08019AF0  @ =gUnknown_0807897C
	lsl r4, r7, #3
	add r5, r4, r0
	mov r3, #0
	ldrsh r2, [r5, r3]
	add r0, r0, #4
	add r4, r4, r0
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	ldr r2, [r5]
	add r2, r2, #6
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #0
	ldrsh r3, [r4, r1]
	add r0, r6, #0
	mov r1, #7
	bl sub_08018D0C
	add r1, r7, #0
	add r1, r1, #8
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, [r5]
	add r2, r2, #12
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
_08019AD2:
	mov r1, r10
	asr r0, r1, #24
	mov r1, r9
	mov r2, r8
	bl sub_08018F88
_08019ADE:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08019AEC:
	.4byte gUnknown_080792C4
_08019AF0:
	.4byte gUnknown_0807897C
	THUMB_FUNC_END sub_080196CC

	THUMB_FUNC_START sub_08019AF4
sub_08019AF4: @ 0x08019AF4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	blt _08019B10
	cmp r1, #5
	ble _08019B10
	b _08019CFA
_08019B10:
	lsl r3, r0, #24
	mov r5, #0
	mov r8, r3
	cmp r3, #0
	ble _08019BBC
	ldr r0, _08019B78  @ =gUnknown_080789BC
	mov r9, r0
	mov r1, #4
	add r1, r1, r9
	mov r10, r1
_08019B24:
	lsl r2, r5, #24
	ldr r0, _08019B7C  @ =0x0300007C
	ldr r1, [r0]
	lsl r0, r5, #2
	add r0, r0, r1
	ldrb r1, [r0, #1]
	ldrb r4, [r0]
	mov r6, #0
	asr r7, r2, #24
	cmp r2, r3
	bne _08019B48
	ldr r0, _08019B80  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08019B48
	mov r6, #1
_08019B48:
	cmp r4, #0
	beq _08019BAE
	cmp r6, #0
	beq _08019B88
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019BAE
	lsl r2, r7, #3
	mov r1, r9
	add r0, r2, r1
	ldr r1, [r0]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, r10
	ldr r2, [r2]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _08019B84  @ =gUnknown_08079354
	bl sub_08018E38
	b _08019BAE
_08019B78:
	.4byte gUnknown_080789BC
_08019B7C:
	.4byte 0x0300007C
_08019B80:
	.4byte gLevelSelectMode
_08019B84:
	.4byte gUnknown_08079354
_08019B88:
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019BAE
	lsl r2, r7, #3
	mov r1, r9
	add r0, r2, r1
	ldr r1, [r0]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, r10
	ldr r2, [r2]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _08019C14  @ =gUnknown_0807936C
	bl sub_08018EE0
_08019BAE:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r3, r8
	asr r0, r3, #24
	cmp r5, r0
	blt _08019B24
_08019BBC:
	lsl r2, r5, #24
	ldr r0, _08019C18  @ =0x0300007C
	ldr r1, [r0]
	lsl r0, r5, #2
	add r0, r0, r1
	ldrb r1, [r0, #1]
	ldrb r4, [r0]
	mov r6, #0
	asr r3, r2, #24
	cmp r2, r8
	bne _08019BE0
	ldr r0, _08019C1C  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08019BE0
	mov r6, #1
_08019BE0:
	cmp r4, #0
	beq _08019C50
	cmp r6, #0
	beq _08019C28
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019C50
	ldr r0, _08019C20  @ =gUnknown_08079354
	ldr r2, _08019C24  @ =gUnknown_080789BC
	lsl r3, r3, #3
	add r1, r3, r2
	ldr r1, [r1]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, #4
	add r3, r3, r2
	ldr r2, [r3]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018E38
	b _08019C50
	.byte 0x00
	.byte 0x00
_08019C14:
	.4byte gUnknown_0807936C
_08019C18:
	.4byte 0x0300007C
_08019C1C:
	.4byte gLevelSelectMode
_08019C20:
	.4byte gUnknown_08079354
_08019C24:
	.4byte gUnknown_080789BC
_08019C28:
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019C50
	ldr r0, _08019CB8  @ =gUnknown_0807936C
	ldr r2, _08019CBC  @ =gUnknown_080789BC
	lsl r3, r3, #3
	add r1, r3, r2
	ldr r1, [r1]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, #4
	add r3, r3, r2
	ldr r2, [r3]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018EE0
_08019C50:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #6
	bhi _08019CFA
	mov r0, r8
	asr r0, r0, #24
	mov r8, r0
	ldr r6, _08019CBC  @ =gUnknown_080789BC
	add r7, r6, #4
_08019C64:
	lsl r2, r5, #24
	ldr r0, _08019CC0  @ =0x0300007C
	ldr r1, [r0]
	lsl r0, r5, #2
	add r0, r0, r1
	asr r2, r2, #24
	ldrb r1, [r0, #1]
	ldrb r3, [r0]
	mov r4, #0
	cmp r2, r8
	bne _08019C88
	ldr r0, _08019CC4  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08019C88
	mov r4, #1
_08019C88:
	cmp r3, #0
	beq _08019CF0
	cmp r4, #0
	beq _08019CCC
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019CF0
	lsl r2, r2, #3
	add r0, r2, r6
	ldr r1, [r0]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, r7
	ldr r2, [r2]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _08019CC8  @ =gUnknown_08079354
	bl sub_08018E38
	b _08019CF0
	.byte 0x00
	.byte 0x00
_08019CB8:
	.4byte gUnknown_0807936C
_08019CBC:
	.4byte gUnknown_080789BC
_08019CC0:
	.4byte 0x0300007C
_08019CC4:
	.4byte gLevelSelectMode
_08019CC8:
	.4byte gUnknown_08079354
_08019CCC:
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019CF0
	lsl r2, r2, #3
	add r0, r2, r6
	ldr r1, [r0]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, r7
	ldr r2, [r2]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _08019D08  @ =gUnknown_0807936C
	bl sub_08018EE0
_08019CF0:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #6
	bls _08019C64
_08019CFA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08019D08:
	.4byte gUnknown_0807936C
	THUMB_FUNC_END sub_08019AF4

	THUMB_FUNC_START sub_08019D0C
sub_08019D0C: @ 0x08019D0C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r4, [sp, #36]
	lsl r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r8, r3
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r3, #0
	lsr r5, r0, #24
	lsl r2, r2, #24
	cmp r0, r2
	bne _08019D42
	ldr r0, _08019D70  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08019D42
	mov r3, #1
_08019D42:
	add r7, r3, #0
	lsl r0, r5, #24
	asr r6, r0, #24
	mov r9, r0
	cmp r6, #6
	bne _08019E38
	cmp r4, #0
	beq _08019DEC
	cmp r7, #0
	beq _08019D9C
	mov r0, #192
	mov r1, r8
	and r0, r0, r1
	cmp r0, #192
	bne _08019D7C
	ldr r0, _08019D74  @ =gUnknown_0807933C
	ldr r1, _08019D78  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	b _08019DB4
	.byte 0x00
	.byte 0x00
_08019D70:
	.4byte gLevelSelectMode
_08019D74:
	.4byte gUnknown_0807933C
_08019D78:
	.4byte gUnknown_080789BC
_08019D7C:
	ldr r0, _08019D90  @ =gUnknown_0807933C
	ldr r1, _08019D94  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019D98  @ =gUnknown_0807897C
	mov r5, #52
	ldrsh r3, [r1, r5]
	b _08019E22
_08019D90:
	.4byte gUnknown_0807933C
_08019D94:
	.4byte gUnknown_080789BC
_08019D98:
	.4byte gUnknown_0807897C
_08019D9C:
	mov r0, #192
	mov r6, r8
	and r0, r0, r6
	cmp r0, #192
	bne _08019DCC
	ldr r0, _08019DC0  @ =gUnknown_0807933C
	ldr r1, _08019DC4  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019DC8  @ =gUnknown_0807897C
_08019DB4:
	mov r4, #52
	ldrsh r3, [r1, r4]
	mov r1, #3
	bl sub_08018D0C
	b _08019F6E
_08019DC0:
	.4byte gUnknown_0807933C
_08019DC4:
	.4byte gUnknown_080789BC
_08019DC8:
	.4byte gUnknown_0807897C
_08019DCC:
	ldr r0, _08019DE0  @ =gUnknown_0807933C
	ldr r1, _08019DE4  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019DE8  @ =gUnknown_0807897C
	mov r5, #52
	ldrsh r3, [r1, r5]
	b _08019E22
_08019DE0:
	.4byte gUnknown_0807933C
_08019DE4:
	.4byte gUnknown_080789BC
_08019DE8:
	.4byte gUnknown_0807897C
_08019DEC:
	cmp r7, #0
	beq _08019E10
	ldr r0, _08019E04  @ =gUnknown_0807933C
	ldr r1, _08019E08  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019E0C  @ =gUnknown_0807897C
	mov r6, #52
	ldrsh r3, [r1, r6]
	b _08019E22
_08019E04:
	.4byte gUnknown_0807933C
_08019E08:
	.4byte gUnknown_080789BC
_08019E0C:
	.4byte gUnknown_0807897C
_08019E10:
	ldr r0, _08019E2C  @ =gUnknown_0807933C
	ldr r1, _08019E30  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019E34  @ =gUnknown_0807897C
	mov r4, #52
	ldrsh r3, [r1, r4]
_08019E22:
	mov r1, #0
	bl sub_08018D0C
	b _08019F6E
	.byte 0x00
	.byte 0x00
_08019E2C:
	.4byte gUnknown_0807933C
_08019E30:
	.4byte gUnknown_080789BC
_08019E34:
	.4byte gUnknown_0807897C
_08019E38:
	cmp r4, #0
	beq _08019EE0
	cmp r7, #0
	beq _08019E90
	mov r0, #192
	mov r5, r8
	and r0, r0, r5
	cmp r0, #192
	bne _08019EE4
	ldr r0, _08019E84  @ =gUnknown_080792DC
	lsl r1, r1, #24
	mov r2, #144
	lsl r2, r2, #21
	add r1, r1, r2
	lsr r1, r1, #24
	ldr r3, _08019E88  @ =gUnknown_080789BC
	lsl r4, r6, #3
	add r5, r4, r3
	str r5, [sp]
	mov r2, #0
	ldrsh r5, [r5, r2]
	mov r12, r5
	add r3, r3, #4
	add r4, r4, r3
	mov r5, #0
	ldrsh r3, [r4, r5]
	mov r2, r12
	bl sub_08018D0C
	ldr r0, _08019E8C  @ =gUnknown_080792F4
	add r1, r6, #0
	add r1, r1, #18
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r6, [sp]
	ldr r2, [r6]
	b _08019F04
	.byte 0x00
	.byte 0x00
_08019E84:
	.4byte gUnknown_080792DC
_08019E88:
	.4byte gUnknown_080789BC
_08019E8C:
	.4byte gUnknown_080792F4
_08019E90:
	mov r0, #192
	mov r2, r8
	and r0, r0, r2
	cmp r0, #192
	bne _08019EE4
	ldr r0, _08019ED4  @ =gUnknown_080792DC
	lsl r1, r1, #24
	mov r3, #192
	lsl r3, r3, #21
	add r1, r1, r3
	lsr r1, r1, #24
	ldr r3, _08019ED8  @ =gUnknown_080789BC
	lsl r4, r6, #3
	add r5, r4, r3
	str r5, [sp]
	mov r2, #0
	ldrsh r5, [r5, r2]
	mov r10, r5
	add r3, r3, #4
	add r4, r4, r3
	mov r5, #0
	ldrsh r3, [r4, r5]
	mov r2, r10
	bl sub_08018D0C
	ldr r0, _08019EDC  @ =gUnknown_080792F4
	add r1, r6, #0
	add r1, r1, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r6, [sp]
	ldr r2, [r6]
	b _08019F04
	.byte 0x00
	.byte 0x00
_08019ED4:
	.4byte gUnknown_080792DC
_08019ED8:
	.4byte gUnknown_080789BC
_08019EDC:
	.4byte gUnknown_080792F4
_08019EE0:
	cmp r7, #0
	beq _08019F20
_08019EE4:
	ldr r0, _08019F14  @ =gUnknown_080792DC
	ldr r3, _08019F18  @ =gUnknown_080789BC
	lsl r4, r6, #3
	add r5, r4, r3
	mov r6, #0
	ldrsh r2, [r5, r6]
	add r3, r3, #4
	add r4, r4, r3
	mov r6, #0
	ldrsh r3, [r4, r6]
	bl sub_08018D0C
	ldr r0, _08019F1C  @ =gUnknown_080792F4
	mov r2, r9
	lsr r1, r2, #24
	ldr r2, [r5]
_08019F04:
	add r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r5, #0
	ldrsh r3, [r4, r5]
	bl sub_08018D0C
	b _08019F62
_08019F14:
	.4byte gUnknown_080792DC
_08019F18:
	.4byte gUnknown_080789BC
_08019F1C:
	.4byte gUnknown_080792F4
_08019F20:
	ldr r0, _08019F80  @ =gUnknown_080792DC
	lsl r1, r1, #24
	mov r2, #192
	lsl r2, r2, #19
	add r1, r1, r2
	lsr r1, r1, #24
	ldr r3, _08019F84  @ =gUnknown_080789BC
	lsl r4, r6, #3
	add r5, r4, r3
	str r5, [sp]
	mov r2, #0
	ldrsh r5, [r5, r2]
	mov r10, r5
	add r3, r3, #4
	add r4, r4, r3
	mov r5, #0
	ldrsh r3, [r4, r5]
	mov r2, r10
	bl sub_08018D0C
	ldr r0, _08019F88  @ =gUnknown_080792F4
	add r1, r6, #6
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r6, [sp]
	ldr r2, [r6]
	add r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r5, #0
	ldrsh r3, [r4, r5]
	bl sub_08018D0C
_08019F62:
	mov r6, r9
	asr r0, r6, #24
	add r1, r7, #0
	mov r2, r8
	bl sub_08019234
_08019F6E:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08019F80:
	.4byte gUnknown_080792DC
_08019F84:
	.4byte gUnknown_080789BC
_08019F88:
	.4byte gUnknown_080792F4
	THUMB_FUNC_END sub_08019D0C

	THUMB_FUNC_START sub_08019F8C
sub_08019F8C: @ 0x08019F8C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r2, r0, #24
	lsl r1, r1, #24
	asr r0, r1, #24
	cmp r0, #5
	ble _08019FA6
	b _0801A2A8
_08019FA6:
	lsl r2, r2, #24
	mov r6, #0
	mov r9, r1
	str r2, [sp, #4]
	cmp r2, #0
	ble _0801A042
	add r5, r0, #0
	ldr r7, _0801A004  @ =0x0300007C
	add r0, r5, #1
	lsl r0, r0, #24
	mov r8, r0
_08019FBC:
	lsl r0, r6, #24
	asr r0, r0, #24
	asr r2, r2, #24
	ldr r1, [r7]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r5, #0
	bl sub_080196CC
	ldr r0, [r7]
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A010
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	ldr r0, _0801A008  @ =gUnknown_0807915C
	add r0, r4, r0
	mov r2, r8
	asr r1, r2, #24
	bl sub_080185EC
	ldr r0, _0801A00C  @ =gLevelSelectLevelArtSpriteLayout
	add r4, r4, r0
	lsl r1, r5, #3
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080186B0
	b _0801A034
_0801A004:
	.4byte 0x0300007C
_0801A008:
	.4byte gUnknown_0807915C
_0801A00C:
	.4byte gLevelSelectLevelArtSpriteLayout
_0801A010:
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	ldr r0, _0801A098  @ =gUnknown_0807915C
	add r0, r4, r0
	mov r1, #0
	bl sub_080185EC
	ldr r0, _0801A09C  @ =gLevelSelectLevelArtSpriteLayout
	add r4, r4, r0
	lsl r1, r5, #3
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	mov r2, #14
	bl sub_080187C0
_0801A034:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r2, [sp, #4]
	asr r0, r2, #24
	cmp r6, r0
	blt _08019FBC
_0801A042:
	lsl r0, r6, #24
	asr r0, r0, #24
	mov r3, r9
	asr r7, r3, #24
	ldr r1, [sp, #4]
	asr r1, r1, #24
	mov r8, r1
	ldr r5, _0801A0A0  @ =0x0300007C
	ldr r1, [r5]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r7, #0
	mov r2, r8
	bl sub_080196CC
	ldr r0, [r5]
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A12C
	ldr r0, _0801A0A4  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801A0D8
	cmp r6, #6
	bhi _0801A0AC
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A0A8  @ =gUnknown_08078FF4
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018528
	b _0801A0C0
	.byte 0x00
	.byte 0x00
_0801A098:
	.4byte gUnknown_0807915C
_0801A09C:
	.4byte gLevelSelectLevelArtSpriteLayout
_0801A0A0:
	.4byte 0x0300007C
_0801A0A4:
	.4byte gLevelSelectMode
_0801A0A8:
	.4byte gUnknown_08078FF4
_0801A0AC:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A0D0  @ =gUnknown_08078FF4
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
_0801A0C0:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A0D4  @ =gLevelSelectLevelArtSpriteLayout
	add r0, r0, r1
	mov r2, r9
	asr r1, r2, #21
	b _0801A118
	.byte 0x00
	.byte 0x00
_0801A0D0:
	.4byte gUnknown_08078FF4
_0801A0D4:
	.4byte gLevelSelectLevelArtSpriteLayout
_0801A0D8:
	cmp r6, #6
	bhi _0801A0F8
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A0F4  @ =gUnknown_0807915C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080185EC
	b _0801A10C
	.byte 0x00
	.byte 0x00
_0801A0F4:
	.4byte gUnknown_0807915C
_0801A0F8:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A124  @ =gUnknown_0807915C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
_0801A10C:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A128  @ =gLevelSelectLevelArtSpriteLayout
	add r0, r0, r1
	mov r3, r9
	asr r1, r3, #21
_0801A118:
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	b _0801A1C0
_0801A124:
	.4byte gUnknown_0807915C
_0801A128:
	.4byte gLevelSelectLevelArtSpriteLayout
_0801A12C:
	cmp r8, r6
	bne _0801A17C
	ldr r0, _0801A158  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801A17C
	cmp r6, #6
	bhi _0801A160
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A15C  @ =gUnknown_0807915C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080185EC
	b _0801A1A8
	.byte 0x00
	.byte 0x00
_0801A158:
	.4byte gLevelSelectMode
_0801A15C:
	.4byte gUnknown_0807915C
_0801A160:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A178  @ =gUnknown_0807915C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
	b _0801A1A8
	.byte 0x00
	.byte 0x00
_0801A178:
	.4byte gUnknown_0807915C
_0801A17C:
	cmp r6, #6
	bhi _0801A198
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A194  @ =gUnknown_0807915C
	add r0, r0, r1
	mov r1, #0
	bl sub_080185EC
	b _0801A1A8
	.byte 0x00
	.byte 0x00
_0801A194:
	.4byte gUnknown_0807915C
_0801A198:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A214  @ =gUnknown_0807915C
	add r0, r0, r1
	mov r1, #0
	bl sub_08018418
_0801A1A8:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A218  @ =gLevelSelectLevelArtSpriteLayout
	add r0, r0, r1
	mov r2, r9
	asr r1, r2, #21
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #13
	bl sub_080187C0
_0801A1C0:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #7
	bhi _0801A2A8
	ldr r3, _0801A214  @ =gUnknown_0807915C
	mov r8, r3
	mov r0, r9
	asr r0, r0, #24
	mov r10, r0
	mov r5, #128
	lsl r5, r5, #17
	add r5, r5, r9
	lsl r7, r0, #3
	ldr r1, _0801A218  @ =gLevelSelectLevelArtSpriteLayout
	mov r9, r1
_0801A1E0:
	lsl r0, r6, #24
	asr r0, r0, #24
	ldr r2, _0801A21C  @ =0x0300007C
	ldr r1, [r2]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	mov r12, r3
	ldrb r1, [r1]
	str r1, [sp]
	mov r1, r10
	ldr r3, [sp, #4]
	asr r2, r3, #24
	mov r3, r12
	bl sub_080196CC
	ldr r1, _0801A21C  @ =0x0300007C
	ldr r0, [r1]
	add r4, r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0801A220
	cmp r6, #6
	bls _0801A22A
	b _0801A23A
	.byte 0x00
	.byte 0x00
_0801A214:
	.4byte gUnknown_0807915C
_0801A218:
	.4byte gLevelSelectLevelArtSpriteLayout
_0801A21C:
	.4byte 0x0300007C
_0801A220:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A25A
	cmp r6, #6
	bhi _0801A23A
_0801A22A:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r8
	asr r1, r5, #24
	bl sub_080185EC
	b _0801A248
_0801A23A:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r8
	asr r1, r5, #24
	bl sub_08018418
_0801A248:
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r9
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	b _0801A29E
_0801A25A:
	cmp r6, #6
	bhi _0801A280
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	mov r2, r9
	add r0, r4, r2
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #14
	bl sub_080187C0
	add r4, r4, r8
	add r0, r4, #0
	mov r1, #0
	bl sub_080185EC
	b _0801A29E
_0801A280:
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	mov r3, r9
	add r0, r4, r3
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	add r4, r4, r8
	add r0, r4, #0
	asr r1, r5, #24
	bl sub_08018418
_0801A29E:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #7
	bls _0801A1E0
_0801A2A8:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019F8C

	THUMB_FUNC_START sub_0801A2B8
sub_0801A2B8: @ 0x0801A2B8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r3, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	bge _0801A2D6
	mov r3, #0
	b _0801A2DC
_0801A2D6:
	cmp r1, #5
	ble _0801A2DC
	b _0801A5EC
_0801A2DC:
	lsl r2, r0, #24
	mov r6, #0
	lsl r3, r3, #24
	mov r9, r3
	str r2, [sp, #4]
	cmp r2, #0
	ble _0801A380
	asr r5, r3, #24
	ldr r0, _0801A344  @ =0x0300007C
	mov r8, r0
	lsl r0, r5, #3
	sub r7, r0, r5
	add r0, r5, #1
	lsl r0, r0, #24
	mov r10, r0
_0801A2FA:
	lsl r0, r6, #24
	asr r0, r0, #24
	asr r2, r2, #24
	mov r3, r8
	ldr r1, [r3]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r5, #0
	bl sub_08019D0C
	mov r1, r8
	ldr r0, [r1]
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A350
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	ldr r0, _0801A348  @ =gUnknown_0807921C
	add r0, r4, r0
	mov r2, r10
	asr r1, r2, #24
	bl sub_080185EC
	ldr r0, _0801A34C  @ =gLevelSelectLevelPlusArtSpriteLayout
	add r4, r4, r0
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080186B0
	b _0801A372
_0801A344:
	.4byte 0x0300007C
_0801A348:
	.4byte gUnknown_0807921C
_0801A34C:
	.4byte gLevelSelectLevelPlusArtSpriteLayout
_0801A350:
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	ldr r0, _0801A3D4  @ =gUnknown_0807921C
	add r0, r4, r0
	mov r1, #0
	bl sub_080185EC
	ldr r0, _0801A3D8  @ =gLevelSelectLevelPlusArtSpriteLayout
	add r4, r4, r0
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	mov r2, #14
	bl sub_080187C0
_0801A372:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r2, [sp, #4]
	asr r0, r2, #24
	cmp r6, r0
	blt _0801A2FA
_0801A380:
	lsl r0, r6, #24
	asr r0, r0, #24
	mov r3, r9
	asr r7, r3, #24
	ldr r1, [sp, #4]
	asr r1, r1, #24
	mov r8, r1
	ldr r5, _0801A3DC  @ =0x0300007C
	ldr r1, [r5]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r7, #0
	mov r2, r8
	bl sub_08019D0C
	ldr r0, [r5]
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A46C
	ldr r0, _0801A3E0  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _0801A414
	cmp r6, #5
	bhi _0801A3E8
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A3E4  @ =gUnknown_080790B4
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018528
	b _0801A3FC
_0801A3D4:
	.4byte gUnknown_0807921C
_0801A3D8:
	.4byte gLevelSelectLevelPlusArtSpriteLayout
_0801A3DC:
	.4byte 0x0300007C
_0801A3E0:
	.4byte gLevelSelectMode
_0801A3E4:
	.4byte gUnknown_080790B4
_0801A3E8:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A40C  @ =gUnknown_080790B4
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
_0801A3FC:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A410  @ =gLevelSelectLevelPlusArtSpriteLayout
	add r0, r0, r1
	mov r3, r9
	asr r2, r3, #24
	b _0801A454
	.byte 0x00
	.byte 0x00
_0801A40C:
	.4byte gUnknown_080790B4
_0801A410:
	.4byte gLevelSelectLevelPlusArtSpriteLayout
_0801A414:
	cmp r6, #5
	bhi _0801A434
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A430  @ =gUnknown_0807921C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080185EC
	b _0801A448
	.byte 0x00
	.byte 0x00
_0801A430:
	.4byte gUnknown_0807921C
_0801A434:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A464  @ =gUnknown_0807921C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
_0801A448:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A468  @ =gLevelSelectLevelPlusArtSpriteLayout
	add r0, r0, r1
	mov r1, r9
	asr r2, r1, #24
_0801A454:
	lsl r1, r2, #3
	sub r1, r1, r2
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	b _0801A504
_0801A464:
	.4byte gUnknown_0807921C
_0801A468:
	.4byte gLevelSelectLevelPlusArtSpriteLayout
_0801A46C:
	cmp r8, r6
	bne _0801A4BC
	ldr r0, _0801A498  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _0801A4BC
	cmp r6, #5
	bhi _0801A4A0
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A49C  @ =gUnknown_0807921C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080185EC
	b _0801A4E8
	.byte 0x00
	.byte 0x00
_0801A498:
	.4byte gLevelSelectMode
_0801A49C:
	.4byte gUnknown_0807921C
_0801A4A0:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A4B8  @ =gUnknown_0807921C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
	b _0801A4E8
	.byte 0x00
	.byte 0x00
_0801A4B8:
	.4byte gUnknown_0807921C
_0801A4BC:
	cmp r6, #5
	bhi _0801A4D8
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A4D4  @ =gUnknown_0807921C
	add r0, r0, r1
	mov r1, #0
	bl sub_080185EC
	b _0801A4E8
	.byte 0x00
	.byte 0x00
_0801A4D4:
	.4byte gUnknown_0807921C
_0801A4D8:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A558  @ =gUnknown_0807921C
	add r0, r0, r1
	mov r1, #0
	bl sub_08018418
_0801A4E8:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A55C  @ =gLevelSelectLevelPlusArtSpriteLayout
	add r0, r0, r1
	mov r3, r9
	asr r2, r3, #24
	lsl r1, r2, #3
	sub r1, r1, r2
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #14
	bl sub_080187C0
_0801A504:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #6
	bhi _0801A5EC
	ldr r0, _0801A558  @ =gUnknown_0807921C
	mov r8, r0
	mov r1, r9
	asr r1, r1, #24
	mov r10, r1
	mov r5, #128
	lsl r5, r5, #17
	add r5, r5, r9
	ldr r2, _0801A55C  @ =gLevelSelectLevelPlusArtSpriteLayout
	mov r9, r2
	lsl r0, r1, #3
	sub r7, r0, r1
_0801A526:
	lsl r0, r6, #24
	asr r0, r0, #24
	ldr r3, _0801A560  @ =0x0300007C
	ldr r1, [r3]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r2, [r1, #1]
	mov r12, r2
	ldrb r1, [r1]
	str r1, [sp]
	mov r1, r10
	ldr r3, [sp, #4]
	asr r2, r3, #24
	mov r3, r12
	bl sub_08019D0C
	ldr r1, _0801A560  @ =0x0300007C
	ldr r0, [r1]
	add r4, r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0801A564
	cmp r6, #5
	bls _0801A56E
	b _0801A57E
_0801A558:
	.4byte gUnknown_0807921C
_0801A55C:
	.4byte gLevelSelectLevelPlusArtSpriteLayout
_0801A560:
	.4byte 0x0300007C
_0801A564:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A59E
	cmp r6, #5
	bhi _0801A57E
_0801A56E:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r8
	asr r1, r5, #24
	bl sub_080185EC
	b _0801A58C
_0801A57E:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r8
	asr r1, r5, #24
	bl sub_08018418
_0801A58C:
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r9
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	b _0801A5E2
_0801A59E:
	cmp r6, #5
	bhi _0801A5C4
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	mov r2, r8
	add r0, r4, r2
	mov r1, #0
	bl sub_080185EC
	add r4, r4, r9
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	mov r2, #14
	bl sub_080187C0
	b _0801A5E2
_0801A5C4:
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	mov r3, r8
	add r0, r4, r3
	asr r1, r5, #24
	bl sub_08018418
	add r4, r4, r9
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080186B0
_0801A5E2:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #6
	bls _0801A526
_0801A5EC:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A2B8

	THUMB_FUNC_START sub_0801A5FC
sub_0801A5FC: @ 0x0801A5FC
	push {r4,lr}
	sub sp, sp, #4
	ldr r0, _0801A640  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bgt _0801A690
	mov r4, #0
_0801A60E:
	cmp r4, #7
	bhi _0801A648
	ldr r0, _0801A640  @ =gLevelSelectWorldCursor
	ldrb r1, [r0]
	mov r0, #0
	add r2, r4, #0
	mov r3, sp
	bl get_level_stats_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801A648
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801A644  @ =gUnknown_08078D24
	add r0, r0, r1
	mov r1, #11
	bl sub_08018418
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	b _0801A60E
	.byte 0x00
	.byte 0x00
_0801A640:
	.4byte gLevelSelectWorldCursor
_0801A644:
	.4byte gUnknown_08078D24
_0801A648:
	cmp r4, #3
	bls _0801A690
	cmp r4, #7
	bne _0801A680
	ldr r0, _0801A674  @ =gLevelType
	ldrb r0, [r0]
	ldr r1, _0801A678  @ =gLevelSelectWorldCursor
	ldrb r1, [r1]
	mov r3, sp
	add r3, r3, #1
	mov r2, #7
	bl get_level_stats_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801A690
	ldr r0, _0801A67C  @ =gUnknown_08078D24
	add r0, r0, #168
	mov r1, #11
	bl sub_08018418
	b _0801A690
_0801A674:
	.4byte gLevelType
_0801A678:
	.4byte gLevelSelectWorldCursor
_0801A67C:
	.4byte gUnknown_08078D24
_0801A680:
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801A698  @ =gUnknown_08078D24
	add r0, r0, r1
	mov r1, #11
	bl sub_08018418
_0801A690:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0801A698:
	.4byte gUnknown_08078D24
	THUMB_FUNC_END sub_0801A5FC

	THUMB_FUNC_START sub_0801A69C
sub_0801A69C: @ 0x0801A69C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, _0801A798  @ =REG_DMA3SAD
	ldr r0, _0801A79C  @ =0x0300008B
	mov r9, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #10
	ldr r1, _0801A7A0  @ =gUnknown_085E3820
	add r0, r0, r1
	str r0, [r2]
	ldr r1, _0801A7A4  @ =gObjVRAMCopyOffset_0300192C
	mov r12, r1
	ldrh r0, [r1]
	ldr r1, _0801A7A8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0801A7AC  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801A7B0  @ =gUnknown_085E3818
	str r0, [r2]
	ldr r7, _0801A7B4  @ =0x03000094
	mov r10, r7
	mov r0, r10
	ldr r4, [r0]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _0801A7B8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r2, #4]
	ldr r0, _0801A7BC  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r6, _0801A7C0  @ =gUnknown_03001930
	lsr r1, r1, #22
	ldrh r7, [r6]
	add r1, r1, r7
	ldr r7, _0801A7C4  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _0801A7C8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r5
	ldr r0, _0801A7CC  @ =gUnknown_085E3590
	mov r8, r0
	mov r2, r9
	mov r1, #0
	ldrsb r1, [r2, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	mov r1, #3
	ldrsb r1, [r0, r1]
	add r1, r1, #172
	ldr r7, _0801A7D0  @ =0x000001FF
	add r0, r7, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0801A7D4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r0, r9
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	ldrb r0, [r0, #3]
	add r0, r0, #48
	strb r0, [r2]
	mov r1, r10
	ldr r0, [r1]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #32
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	mov r7, r12
	ldrh r7, [r7]
	add r0, r0, r7
	mov r1, r12
	strh r0, [r1]
	mov r2, r10
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801A798:
	.4byte REG_DMA3SAD
_0801A79C:
	.4byte 0x0300008B
_0801A7A0:
	.4byte gUnknown_085E3820
_0801A7A4:
	.4byte gObjVRAMCopyOffset_0300192C
_0801A7A8:
	.4byte OBJ_VRAM0
_0801A7AC:
	.4byte 0x84000100
_0801A7B0:
	.4byte gUnknown_085E3818
_0801A7B4:
	.4byte 0x03000094
_0801A7B8:
	.4byte gOamBuffer
_0801A7BC:
	.4byte 0x84000002
_0801A7C0:
	.4byte gUnknown_03001930
_0801A7C4:
	.4byte 0x000003FF
_0801A7C8:
	.4byte 0xFFFFFC00
_0801A7CC:
	.4byte gUnknown_085E3590
_0801A7D0:
	.4byte 0x000001FF
_0801A7D4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0801A69C

	THUMB_FUNC_START sub_0801A7D8
sub_0801A7D8: @ 0x0801A7D8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r7, _0801ABBC  @ =REG_DMA3SAD
	ldr r0, _0801ABC0  @ =gUnknown_085CD848
	str r0, [r7]
	ldr r3, _0801ABC4  @ =gObjVRAMCopyOffset_0300192C
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r2, _0801ABCC  @ =0x84000200
	str r2, [r7, #8]
	ldr r0, [r7, #8]
	ldr r4, _0801ABD0  @ =0x03000094
	ldr r6, [r4]
	ldr r0, _0801ABD4  @ =gUnknown_03001930
	mov r10, r0
	ldrh r1, [r0]
	mov r12, r1
	strh r1, [r6, #16]
	mov r4, r12
	add r4, r4, #64
	strh r4, [r0]
	ldrh r2, [r3]
	mov r9, r2
	mov r0, #128
	lsl r0, r0, #4
	mov r8, r0
	mov r2, r9
	add r2, r2, r8
	strh r2, [r3]
	ldr r0, _0801ABD8  @ =gUnknown_085CE074
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r0, _0801ABCC  @ =0x84000200
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #18]
	add r4, r4, #64
	mov r1, r10
	strh r4, [r1]
	add r2, r2, r8
	strh r2, [r3]
	ldr r5, _0801ABDC  @ =gUnknown_085C7A78
	ldr r0, _0801ABE0  @ =0x0300008A
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801ABE4  @ =gUnknown_085C7D08
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r0, _0801ABCC  @ =0x84000200
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #20]
	add r4, r4, #64
	mov r1, r10
	strh r4, [r1]
	add r2, r2, r8
	strh r2, [r3]
	ldr r2, _0801ABE8  @ =gUnknown_085E2870
	ldr r5, _0801ABEC  @ =0x03000088
	mov r1, #0
	ldrsb r1, [r5, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	ldr r1, _0801ABF0  @ =gUnknown_085E2B00
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r2, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r2
	str r0, [r7, #4]
	ldr r0, _0801ABF4  @ =0x84000040
	mov r8, r0
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #8]
	mov r4, r12
	add r4, r4, #200
	mov r1, r10
	strh r4, [r1]
	mov r0, #200
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r2, _0801ABF8  @ =gUnknown_085E2F00
	mov r1, #0
	ldrsb r1, [r5, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	ldr r1, _0801ABFC  @ =gUnknown_085E3190
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r2, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r2
	str r0, [r7, #4]
	mov r0, r8
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #10]
	add r4, r4, #8
	mov r1, r10
	strh r4, [r1]
	mov r0, #208
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r2, _0801AC00  @ =gUnknown_085E90D0
	mov r1, #0
	ldrsb r1, [r5, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0801AC04  @ =gUnknown_085E9360
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r2, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r2
	str r0, [r7, #4]
	ldr r0, _0801AC08  @ =0x84000100
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #12]
	mov r1, r12
	add r1, r1, #240
	mov r4, r10
	strh r1, [r4]
	mov r0, #240
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r0, _0801AC0C  @ =gUnknown_085C2588
	str r0, [r7]
	ldrh r0, [r3]
	add r0, r0, r2
	str r0, [r7, #4]
	ldr r4, _0801AC10  @ =0x84000020
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	strh r1, [r6, #22]
	add r1, r1, #4
	mov r0, r10
	strh r1, [r0]
	mov r0, #244
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r0, _0801AC14  @ =gUnknown_085C2634
	str r0, [r7]
	ldrh r0, [r3]
	add r0, r0, r2
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	strh r1, [r6, #24]
	mov r5, r12
	add r5, r5, #248
	mov r1, r10
	strh r5, [r1]
	mov r0, #248
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r2, _0801AC18  @ =gUnknown_085E1F2C
	ldr r0, _0801AC1C  @ =0x03000085
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0801AC20  @ =gUnknown_085E200C
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r2, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r2
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	strh r5, [r6, #26]
	mov r1, r12
	add r1, r1, #252
	mov r0, r10
	strh r1, [r0]
	mov r0, #252
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r0, _0801AC24  @ =gUnknown_085E1C2C
	str r0, [r7]
	ldrh r0, [r3]
	add r0, r0, r2
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	strh r1, [r6, #28]
	mov r5, #128
	lsl r5, r5, #1
	add r5, r5, r12
	mov r1, r10
	strh r5, [r1]
	mov r2, #128
	lsl r2, r2, #6
	add r9, r9, r2
	mov r4, r9
	strh r4, [r3]
	ldr r0, _0801AC28  @ =0x03000086
	mov r12, r0
	ldrb r1, [r0]
	ldr r2, _0801AC2C  @ =gUnknown_080793B4
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r4, #132
	lsl r4, r4, #24
	mov r8, r4
	orr r0, r0, r4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r5, [r6, #30]
	ldrh r5, [r2, #6]
	mov r0, r10
	ldrh r0, [r0]
	add r5, r5, r0
	mov r1, r10
	strh r5, [r1]
	ldrh r0, [r2, #8]
	ldrh r2, [r3]
	add r0, r0, r2
	strh r0, [r3]
	ldr r0, _0801AC30  @ =0x03000087
	ldrb r1, [r0]
	ldr r2, _0801AC34  @ =gUnknown_08079414
	ldr r4, _0801ABD0  @ =0x03000094
	ldr r4, [r4]
	mov r9, r4
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r4, r8
	orr r0, r0, r4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r0, r9
	strh r5, [r0, #32]
	ldrh r5, [r2, #6]
	mov r1, r10
	ldrh r1, [r1]
	add r5, r5, r1
	mov r4, r10
	strh r5, [r4]
	ldrh r0, [r2, #8]
	ldrh r1, [r3]
	add r0, r0, r1
	strh r0, [r3]
	mov r2, r12
	ldrb r1, [r2]
	ldr r2, _0801AC38  @ =gUnknown_08079474
	ldr r4, _0801ABD0  @ =0x03000094
	ldr r4, [r4]
	mov r9, r4
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r4, r8
	orr r0, r0, r4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r0, r9
	strh r5, [r0, #34]
	ldrh r4, [r2, #6]
	mov r1, r10
	ldrh r1, [r1]
	add r4, r4, r1
	mov r0, r10
	strh r4, [r0]
	ldrh r0, [r2, #8]
	ldrh r1, [r3]
	add r0, r0, r1
	strh r0, [r3]
	ldr r2, _0801AC3C  @ =gUnknown_08079384
	ldr r0, _0801ABD0  @ =0x03000094
	ldr r5, [r0]
	ldr r0, [r2, #12]
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, r8
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r5, #36]
	ldrh r4, [r2, #6]
	mov r0, r10
	ldrh r0, [r0]
	add r4, r4, r0
	mov r1, r10
	strh r4, [r1]
	ldrh r0, [r2, #8]
	ldrh r2, [r3]
	add r0, r0, r2
	strh r0, [r3]
	ldr r2, _0801AC40  @ =gUnknown_080793E4
	ldr r0, _0801ABD0  @ =0x03000094
	ldr r5, [r0]
	ldr r0, [r2, #12]
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, r8
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r5, #38]
	ldrh r4, [r2, #6]
	mov r0, r10
	ldrh r0, [r0]
	add r4, r4, r0
	mov r1, r10
	strh r4, [r1]
	ldrh r0, [r2, #8]
	ldrh r2, [r3]
	add r0, r0, r2
	strh r0, [r3]
	ldr r2, _0801AC44  @ =gUnknown_08079444
	ldr r0, _0801ABD0  @ =0x03000094
	ldr r5, [r0]
	ldr r0, [r2, #12]
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, r8
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r5, #40]
	ldrh r0, [r2, #6]
	mov r4, r10
	ldrh r4, [r4]
	add r0, r0, r4
	mov r1, r10
	strh r0, [r1]
	ldrh r0, [r2, #8]
	ldrh r2, [r3]
	add r0, r0, r2
	strh r0, [r3]
	ldr r0, _0801AC48  @ =gLevelSelectMode
	ldrb r1, [r0]
	sub r0, r1, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r3
	cmp r0, #1
	bls _0801AB7A
	cmp r1, #5
	beq _0801AB7A
	b _0801ACB4
_0801AB7A:
	mov r1, #0
	ldr r0, _0801AC4C  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0801AB8A
	mov r1, #1
_0801AB8A:
	str r1, [sp]
	mov r1, #0
	mov r8, r12
	mov r6, r10
_0801AB92:
	lsl r3, r1, #16
	asr r3, r3, #16
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r5, r3, #1
	add r2, r5, r3
	lsl r2, r2, #3
	ldr r4, _0801AC50  @ =gUnknown_08078C1C
	add r2, r2, r4
	ldr r4, _0801ABD0  @ =0x03000094
	ldr r0, [r4]
	add r5, r5, r0
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	b _0801AC54
	.byte 0x00
	.byte 0x00
_0801ABBC:
	.4byte REG_DMA3SAD
_0801ABC0:
	.4byte gUnknown_085CD848
_0801ABC4:
	.4byte gObjVRAMCopyOffset_0300192C
_0801ABC8:
	.4byte OBJ_VRAM0
_0801ABCC:
	.4byte 0x84000200
_0801ABD0:
	.4byte 0x03000094
_0801ABD4:
	.4byte gUnknown_03001930
_0801ABD8:
	.4byte gUnknown_085CE074
_0801ABDC:
	.4byte gUnknown_085C7A78
_0801ABE0:
	.4byte 0x0300008A
_0801ABE4:
	.4byte gUnknown_085C7D08
_0801ABE8:
	.4byte gUnknown_085E2870
_0801ABEC:
	.4byte 0x03000088
_0801ABF0:
	.4byte gUnknown_085E2B00
_0801ABF4:
	.4byte 0x84000040
_0801ABF8:
	.4byte gUnknown_085E2F00
_0801ABFC:
	.4byte gUnknown_085E3190
_0801AC00:
	.4byte gUnknown_085E90D0
_0801AC04:
	.4byte gUnknown_085E9360
_0801AC08:
	.4byte 0x84000100
_0801AC0C:
	.4byte gUnknown_085C2588
_0801AC10:
	.4byte 0x84000020
_0801AC14:
	.4byte gUnknown_085C2634
_0801AC18:
	.4byte gUnknown_085E1F2C
_0801AC1C:
	.4byte 0x03000085
_0801AC20:
	.4byte gUnknown_085E200C
_0801AC24:
	.4byte gUnknown_085E1C2C
_0801AC28:
	.4byte 0x03000086
_0801AC2C:
	.4byte gUnknown_080793B4
_0801AC30:
	.4byte 0x03000087
_0801AC34:
	.4byte gUnknown_08079414
_0801AC38:
	.4byte gUnknown_08079474
_0801AC3C:
	.4byte gUnknown_08079384
_0801AC40:
	.4byte gUnknown_080793E4
_0801AC44:
	.4byte gUnknown_08079444
_0801AC48:
	.4byte gLevelSelectMode
_0801AC4C:
	.4byte gLevelSelectWorldCursor
_0801AC50:
	.4byte gUnknown_08078C1C
_0801AC54:
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	mov r1, r8
	ldrh r0, [r1]
	ldr r4, _0801ACAC  @ =OBJ_VRAM0
	add r0, r0, r4
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	mov r9, r1
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r0, [r6]
	strh r0, [r5, #42]
	ldrh r0, [r2, #6]
	ldrh r4, [r6]
	add r0, r0, r4
	strh r0, [r6]
	ldrh r0, [r2, #8]
	mov r1, r8
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r8
	strh r0, [r2]
	add r3, r3, #1
	lsl r3, r3, #16
	lsr r1, r3, #16
	asr r3, r3, #16
	cmp r3, #6
	bgt _0801AC9E
	b _0801AB92
_0801AC9E:
	ldr r1, [sp]
	lsl r2, r1, #1
	add r2, r2, r1
	lsl r2, r2, #3
	ldr r3, _0801ACB0  @ =gUnknown_08078CF4
	b _0801AD44
	.byte 0x00
	.byte 0x00
_0801ACAC:
	.4byte OBJ_VRAM0
_0801ACB0:
	.4byte gUnknown_08078CF4
_0801ACB4:
	mov r1, #0
	ldr r0, _0801ADA4  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bne _0801ACC4
	mov r1, #1
_0801ACC4:
	str r1, [sp, #4]
	mov r1, #0
	mov r8, r12
	mov r6, r10
_0801ACCC:
	lsl r3, r1, #16
	asr r3, r3, #16
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r5, r3, #1
	add r2, r5, r3
	lsl r2, r2, #3
	ldr r4, _0801ADA8  @ =gUnknown_08078B74
	add r2, r2, r4
	ldr r4, _0801ADAC  @ =0x03000094
	ldr r0, [r4]
	add r5, r5, r0
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	mov r1, r8
	ldrh r0, [r1]
	ldr r4, _0801ADB0  @ =OBJ_VRAM0
	add r0, r0, r4
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	mov r9, r1
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r0, [r6]
	strh r0, [r5, #42]
	ldrh r0, [r2, #6]
	ldrh r4, [r6]
	add r0, r0, r4
	strh r0, [r6]
	ldrh r0, [r2, #8]
	mov r1, r8
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r8
	strh r0, [r2]
	add r3, r3, #1
	lsl r3, r3, #16
	lsr r1, r3, #16
	asr r3, r3, #16
	cmp r3, #6
	ble _0801ACCC
	ldr r1, [sp, #4]
	lsl r2, r1, #1
	add r2, r2, r1
	lsl r2, r2, #3
	ldr r3, _0801ADB4  @ =gUnknown_08078CC4
_0801AD44:
	add r2, r2, r3
	ldr r4, _0801ADAC  @ =0x03000094
	ldr r5, [r4]
	ldr r3, _0801ADB8  @ =REG_DMA3SAD
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r3]
	mov r1, r12
	ldrh r0, [r1]
	ldr r4, _0801ADB0  @ =OBJ_VRAM0
	add r0, r0, r4
	str r0, [r3, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, r9
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r3, r10
	ldrh r0, [r3]
	strh r0, [r5, #14]
	ldrh r0, [r2, #6]
	ldrh r4, [r3]
	add r0, r0, r4
	strh r0, [r3]
	ldrh r0, [r2, #8]
	mov r1, r12
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r12
	strh r0, [r2]
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801ADA4:
	.4byte gLevelSelectWorldCursor
_0801ADA8:
	.4byte gUnknown_08078B74
_0801ADAC:
	.4byte 0x03000094
_0801ADB0:
	.4byte OBJ_VRAM0
_0801ADB4:
	.4byte gUnknown_08078CC4
_0801ADB8:
	.4byte REG_DMA3SAD
	THUMB_FUNC_END sub_0801A7D8

	THUMB_FUNC_START level_select_loop
level_select_loop: @ 0x0801ADBC
	push {r4,r5,lr}
	sub sp, sp, #8
	mov r0, #160
	str r0, [sp]
	ldr r1, _0801AE08  @ =REG_DMA3SAD
	mov r0, sp
	str r0, [r1]
	ldr r0, _0801AE0C  @ =gOamBuffer
	str r0, [r1, #4]
	ldr r0, _0801AE10  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801AE14  @ =0x03000094
	ldr r3, [r0]
	ldr r2, _0801AE18  @ =gUnknown_03001930
	ldr r0, _0801AE1C  @ =gObjVRAMCopyOffset_0300192C
	mov r1, #0
	strh r1, [r0]
	strh r1, [r2]
	mov r0, #0
	strh r0, [r3, #2]
	ldr r0, _0801AE20  @ =0x03000084
	strb r1, [r0]
	ldr r0, _0801AE24  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801AE30
	ldr r1, _0801AE28  @ =gLevelSelectLevelCursor
	ldr r0, _0801AE2C  @ =gLevelSelectLevel
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, #1
	asr r0, r0, #1
	strb r0, [r1]
	b _0801AE38
_0801AE08:
	.4byte REG_DMA3SAD
_0801AE0C:
	.4byte gOamBuffer
_0801AE10:
	.4byte 0x85000100
_0801AE14:
	.4byte 0x03000094
_0801AE18:
	.4byte gUnknown_03001930
_0801AE1C:
	.4byte gObjVRAMCopyOffset_0300192C
_0801AE20:
	.4byte 0x03000084
_0801AE24:
	.4byte gLevelType
_0801AE28:
	.4byte gLevelSelectLevelCursor
_0801AE2C:
	.4byte gLevelSelectLevel
_0801AE30:
	ldr r0, _0801AE80  @ =gLevelSelectLevelCursor
	ldr r1, _0801AE84  @ =gLevelSelectLevel
	ldrb r1, [r1]
	strb r1, [r0]
_0801AE38:
	bl sub_0801A7D8
	bl sub_08017FB8
	bl sub_080180BC
	ldr r0, _0801AE88  @ =gLevelSelectMode
	ldrb r1, [r0]
	sub r0, r1, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0801AE56
	cmp r1, #5
	bne _0801AE94
_0801AE56:
	ldr r4, _0801AE80  @ =gLevelSelectLevelCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0801AE8C  @ =gLevelSelectWorld
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08019AF4
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0801AE90  @ =gLevelSelectWorldCursor
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08017600
	b _0801AEB6
	.byte 0x00
	.byte 0x00
_0801AE80:
	.4byte gLevelSelectLevelCursor
_0801AE84:
	.4byte gLevelSelectLevel
_0801AE88:
	.4byte gLevelSelectMode
_0801AE8C:
	.4byte gLevelSelectWorld
_0801AE90:
	.4byte gLevelSelectWorldCursor
_0801AE94:
	ldr r4, _0801AEE0  @ =gLevelSelectLevelCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0801AEE4  @ =gLevelSelectWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08019630
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0801AEE8  @ =gLevelSelectWorldCursor
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080171C8
_0801AEB6:
	ldr r0, _0801AEEC  @ =gLevelSelectMode
	ldrb r2, [r0]
	add r1, r0, #0
	cmp r2, #1
	bhi _0801AEF0
	ldr r1, _0801AEE4  @ =gLevelSelectWorld
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #6
	beq _0801AF1A
	ldr r0, _0801AEE0  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08019F8C
	b _0801AF1A
	.byte 0x00
	.byte 0x00
_0801AEE0:
	.4byte gLevelSelectLevelCursor
_0801AEE4:
	.4byte gLevelSelectWorld
_0801AEE8:
	.4byte gLevelSelectWorldCursor
_0801AEEC:
	.4byte gLevelSelectMode
_0801AEF0:
	sub r0, r2, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0801AF28
	ldr r0, _0801AF90  @ =gLevelSelectWorld
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #7
	beq _0801AF1A
	ldr r0, _0801AF94  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_0801A2B8
_0801AF1A:
	ldr r1, _0801AF98  @ =gLevelSelectMode
	ldrb r0, [r1]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0801AF32
_0801AF28:
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	beq _0801AF32
	b _0801B068
_0801AF32:
	bl sub_08017944
	ldr r0, _0801AF94  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _0801AF90  @ =gLevelSelectWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08017ABC
	ldr r0, _0801AF9C  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bgt _0801AFBE
	mov r4, #0
_0801AF58:
	cmp r4, #6
	bhi _0801AFA4
	ldr r0, _0801AF9C  @ =gLevelSelectWorldCursor
	ldrb r1, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #1
	add r2, r4, #0
	add r3, sp, #4
	bl get_level_stats_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801AFA4
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801AFA0  @ =gUnknown_08078DE4
	add r0, r0, r1
	mov r1, #11
	bl sub_08018418
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	b _0801AF58
	.byte 0x00
	.byte 0x00
_0801AF90:
	.4byte gLevelSelectWorld
_0801AF94:
	.4byte gLevelSelectLevelCursor
_0801AF98:
	.4byte gLevelSelectMode
_0801AF9C:
	.4byte gLevelSelectWorldCursor
_0801AFA0:
	.4byte gUnknown_08078DE4
_0801AFA4:
	sub r0, r4, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	bhi _0801AFBE
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801B04C  @ =gUnknown_08078DE4
	add r0, r0, r1
	mov r1, #11
	bl sub_08018418
_0801AFBE:
	mov r1, #1
_0801AFC0:
	lsl r0, r1, #24
	asr r4, r0, #24
	ldr r1, _0801B050  @ =gLevelSelectWorldCursor
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	sub r1, r1, #1
	add r5, r0, #0
	cmp r4, r1
	beq _0801AFF6
	sub r1, r4, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #1
	bl is_world_or_expert_level_completed_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801AFF6
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801B054  @ =gUnknown_08078C1C
	add r0, r0, r1
	lsr r1, r5, #24
	bl sub_080188E8
_0801AFF6:
	mov r1, #128
	lsl r1, r1, #17
	add r0, r5, r1
	lsr r1, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	ble _0801AFC0
	ldr r4, _0801B050  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0801B014
	ldr r0, _0801B058  @ =gUnknown_080794A4
	bl sub_08018998
_0801B014:
	ldrb r1, [r4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #5
	bgt _0801B038
	ldr r0, _0801B05C  @ =gLevelType
	ldrb r0, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl is_world_or_expert_level_completed_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801B038
	ldr r0, _0801B060  @ =gUnknown_080794BC
	bl sub_08018A3C
_0801B038:
	ldr r0, _0801B064  @ =gLevelSelectWorld
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bgt _0801B11A
	bl sub_0801A69C
	b _0801B11A
	.byte 0x00
	.byte 0x00
_0801B04C:
	.4byte gUnknown_08078DE4
_0801B050:
	.4byte gLevelSelectWorldCursor
_0801B054:
	.4byte gUnknown_08078C1C
_0801B058:
	.4byte gUnknown_080794A4
_0801B05C:
	.4byte gLevelType
_0801B060:
	.4byte gUnknown_080794BC
_0801B064:
	.4byte gLevelSelectWorld
_0801B068:
	bl sub_080179F8
	ldr r0, _0801B0F8  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _0801B0FC  @ =gLevelSelectWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080174FC
	bl sub_0801A5FC
	mov r1, #1
_0801B086:
	ldr r0, _0801B100  @ =gLevelSelectWorldCursor
	lsl r1, r1, #24
	asr r4, r1, #24
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r5, r1, #0
	cmp r4, r0
	beq _0801B0BA
	sub r1, r4, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #0
	bl is_world_or_expert_level_completed_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801B0BA
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801B104  @ =gUnknown_08078B74
	add r0, r0, r1
	lsr r1, r5, #24
	bl sub_080188E8
_0801B0BA:
	mov r1, #128
	lsl r1, r1, #17
	add r0, r5, r1
	lsr r1, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	ble _0801B086
	ldr r4, _0801B100  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0801B0D8
	ldr r0, _0801B108  @ =gUnknown_080794A4
	bl sub_08018998
_0801B0D8:
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bgt _0801B114
	ldr r0, _0801B10C  @ =gLevelType
	ldrb r0, [r0]
	ldrb r1, [r4]
	bl is_world_or_expert_level_completed_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801B11A
	ldr r0, _0801B110  @ =gUnknown_080794BC
	bl sub_08018A3C
	b _0801B11A
_0801B0F8:
	.4byte gLevelSelectLevelCursor
_0801B0FC:
	.4byte gLevelSelectWorld
_0801B100:
	.4byte gLevelSelectWorldCursor
_0801B104:
	.4byte gUnknown_08078B74
_0801B108:
	.4byte gUnknown_080794A4
_0801B10C:
	.4byte gLevelType
_0801B110:
	.4byte gUnknown_080794BC
_0801B114:
	ldr r0, _0801B158  @ =gUnknown_080794BC
	bl sub_08018A3C
_0801B11A:
	bl sub_080181BC
	bl sub_0801B174
	ldr r2, _0801B15C  @ =REG_DMA3SAD
	ldr r0, _0801B160  @ =gOamBuffer
	str r0, [r2]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r2, #4]
	ldr r0, _0801B164  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801B168  @ =0x03000074
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0801B16C  @ =gLevelSelectData
	ldr r0, [r0, #64]
	str r0, [r2, #4]
	ldr r0, _0801B170  @ =0x03000078
	ldrh r0, [r0]
	lsr r0, r0, #1
	mov r1, #128
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_0801B158:
	.4byte gUnknown_080794BC
_0801B15C:
	.4byte REG_DMA3SAD
_0801B160:
	.4byte gOamBuffer
_0801B164:
	.4byte 0x84000100
_0801B168:
	.4byte 0x03000074
_0801B16C:
	.4byte gLevelSelectData
_0801B170:
	.4byte 0x03000078
	THUMB_FUNC_END level_select_loop

	THUMB_FUNC_START sub_0801B174
sub_0801B174: @ 0x0801B174
	push {r4-r7,lr}
	ldr r0, _0801B1C0  @ =0x0300008A
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, _0801B1C4  @ =gUnknown_085CD18C
	add r4, r0, r1
	mov r7, #0
	ldr r5, _0801B1C8  @ =gOamBuffer
	ldr r1, _0801B1CC  @ =0x03000084
	mov r0, #0
	ldrsb r0, [r1, r0]
	mov r12, r5
	cmp r0, #0
	beq _0801B218
	lsl r0, r0, #16
	lsr r6, r0, #16
	lsl r0, r6, #3
	add r2, r0, r5
	ldrb r0, [r2, #3]
	mov r3, #15
	neg r3, r3
	and r3, r3, r0
	strb r3, [r2, #3]
	ldrb r0, [r2, #1]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2, #1]
	lsl r0, r3, #27
	cmp r0, #0
	blt _0801B1D0
	ldrh r0, [r4, #26]
	strh r0, [r5, #6]
	ldrh r0, [r4, #28]
	b _0801B1E2
	.byte 0x00
	.byte 0x00
_0801B1C0:
	.4byte 0x0300008A
_0801B1C4:
	.4byte gUnknown_085CD18C
_0801B1C8:
	.4byte gOamBuffer
_0801B1CC:
	.4byte 0x03000084
_0801B1D0:
	mov r0, #17
	neg r0, r0
	and r0, r0, r3
	strb r0, [r2, #3]
	ldrh r0, [r4, #26]
	neg r0, r0
	strh r0, [r5, #6]
	ldrh r0, [r4, #28]
	neg r0, r0
_0801B1E2:
	strh r0, [r5, #14]
	lsl r0, r6, #3
	mov r1, r12
	add r2, r0, r1
	ldrb r1, [r2, #3]
	lsl r0, r1, #26
	cmp r0, #0
	blt _0801B200
	lsl r0, r7, #1
	add r0, r0, r5
	ldrh r1, [r4, #30]
	strh r1, [r0, #22]
	ldrh r1, [r4, #32]
	strh r1, [r0, #30]
	b _0801B218
_0801B200:
	mov r0, #33
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2, #3]
	lsl r1, r7, #1
	add r1, r1, r5
	ldrh r0, [r4, #30]
	neg r0, r0
	strh r0, [r1, #22]
	ldrh r0, [r4, #32]
	neg r0, r0
	strh r0, [r1, #30]
_0801B218:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B174

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START level_select_end
level_select_end: @ 0x0801B220
	bx lr
	THUMB_FUNC_END level_select_end

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801B224
sub_0801B224: @ 0x0801B224
	push {lr}
	ldr r0, _0801B23C  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #136
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0801B240
	bl sub_08016260
	b _0801B252
	.byte 0x00
	.byte 0x00
_0801B23C:
	.4byte gSomeKeys_030012E8
_0801B240:
	mov r0, #136
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0801B24E
	mov r0, #0
	b _0801B254
_0801B24E:
	bl sub_080161AC
_0801B252:
	mov r0, #1
_0801B254:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801B224

	THUMB_FUNC_START sub_0801B258
sub_0801B258: @ 0x0801B258
	push {lr}
	ldr r1, _0801B270  @ =gSomeKeys_030012E8
	ldrh r2, [r1]
	mov r1, #136
	lsl r1, r1, #1
	and r1, r1, r2
	cmp r1, #0
	beq _0801B274
	bl sub_08016654
	mov r0, #1
	b _0801B284
_0801B270:
	.4byte gSomeKeys_030012E8
_0801B274:
	mov r1, #136
	lsl r1, r1, #2
	and r1, r1, r2
	cmp r1, #0
	beq _0801B284
	bl sub_080163F4
	mov r0, #1
_0801B284:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801B258

	THUMB_FUNC_START sub_0801B288
sub_0801B288: @ 0x0801B288
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r1, #0
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldrb r0, [r5]
	sub r0, r0, #1
	strb r0, [r5]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _0801B2C4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r1, #0
	ldrsb r1, [r4, r1]
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r1, r0
	blt _0801B2B4
	mov r0, #0
	strb r0, [r4]
_0801B2B4:
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1, #1]
	strb r0, [r5]
_0801B2C4:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B288

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801B2CC
sub_0801B2CC: @ 0x0801B2CC
	push {r4,lr}
	mov r1, #240
	lsl r1, r1, #4
	and r1, r1, r0
	lsr r3, r1, #8
	mov r1, #240
	lsl r1, r1, #8
	and r1, r1, r0
	lsr r2, r1, #12
	cmp r3, #15
	bne _0801B2EA
	cmp r2, #0
	bne _0801B2EA
	mov r3, #16
	b _0801B2F4
_0801B2EA:
	cmp r3, #0
	bne _0801B2F4
	cmp r2, #15
	bne _0801B2F4
	mov r2, #16
_0801B2F4:
	ldr r1, _0801B30C  @ =REG_BLDCNT
	mov r4, #253
	lsl r4, r4, #6
	add r0, r4, #0
	strh r0, [r1]
	add r1, r1, #2
	lsl r0, r3, #8
	orr r2, r2, r0
	strh r2, [r1]
	pop {r4}
	pop {r0}
	bx r0
_0801B30C:
	.4byte REG_BLDCNT
	THUMB_FUNC_END sub_0801B2CC

