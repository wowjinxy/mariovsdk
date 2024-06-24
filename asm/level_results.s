	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_0802919C
sub_0802919C: @ 0x0802919C
	push {r4-r7,lr}
	add r4, r0, #0
	add r3, r1, #0
	ldr r6, _080291D8  @ =0x0300010E
	mov r2, #0
	strb r2, [r6]
	ldr r0, _080291DC  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080291F0
	ldr r1, _080291E0  @ =0x0300010C
	mov r0, #7
	strb r0, [r1]
	ldr r0, _080291E4  @ =0x03000DF8
	ldr r1, _080291E8  @ =0x0300010D
	strb r3, [r1]
	strb r3, [r0]
	ldr r0, _080291EC  @ =0x03000DD0
	strb r2, [r0]
	lsl r0, r3, #24
	cmp r0, #0
	bge _080291CE
	strb r2, [r1]
_080291CE:
	ldrb r0, [r1]
	add r0, r0, #9
	strb r0, [r1]
	b _08029346
	.byte 0x00
	.byte 0x00
_080291D8:
	.4byte 0x0300010E
_080291DC:
	.4byte gLevelEWorldFlag
_080291E0:
	.4byte 0x0300010C
_080291E4:
	.4byte 0x03000DF8
_080291E8:
	.4byte 0x0300010D
_080291EC:
	.4byte 0x03000DD0
_080291F0:
	ldr r1, _08029218  @ =gNextLevelInLevelTable
	ldr r5, [r1, #32]
	mov r0, #2
	and r5, r5, r0
	add r7, r1, #0
	cmp r5, #0
	beq _08029278
	ldr r0, _0802921C  @ =0x03000DD0
	strb r4, [r0]
	ldr r1, _08029220  @ =gLevelType
	mov r2, #0
	ldrsb r2, [r1, r2]
	add r3, r0, #0
	add r4, r1, #0
	cmp r2, #0
	bne _08029228
	ldr r1, _08029224  @ =0x03000DF8
	mov r0, #13
	b _0802922C
	.byte 0x00
	.byte 0x00
_08029218:
	.4byte gNextLevelInLevelTable
_0802921C:
	.4byte 0x03000DD0
_08029220:
	.4byte gLevelType
_08029224:
	.4byte 0x03000DF8
_08029228:
	ldr r1, _08029258  @ =0x03000DF8
	mov r0, #6
_0802922C:
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #5
	bne _0802923C
	ldr r1, _0802925C  @ =0x0300010F
	mov r0, #1
	strb r0, [r1]
_0802923C:
	ldr r1, _08029260  @ =0x03000DF4
	mov r0, #7
	strb r0, [r1]
	ldr r1, _08029264  @ =0x0300010C
	ldrb r0, [r3]
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _0802926C
	ldr r1, _08029268  @ =0x0300010D
	mov r0, #25
	strb r0, [r1]
	b _08029346
_08029258:
	.4byte 0x03000DF8
_0802925C:
	.4byte 0x0300010F
_08029260:
	.4byte 0x03000DF4
_08029264:
	.4byte 0x0300010C
_08029268:
	.4byte 0x0300010D
_0802926C:
	ldr r1, _08029274  @ =0x0300010D
	mov r0, #22
	strb r0, [r1]
	b _08029346
_08029274:
	.4byte 0x0300010D
_08029278:
	ldr r1, _0802929C  @ =0x03000DD0
	strb r4, [r1]
	ldr r0, _080292A0  @ =gLevelType
	ldrb r2, [r0]
	sub r0, r2, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _080292B0
	ldr r1, _080292A4  @ =0x0300010C
	mov r0, #8
	strb r0, [r1]
	ldr r1, _080292A8  @ =0x0300010D
	mov r0, #23
	strb r0, [r1]
	add r2, r1, #0
	ldr r1, _080292AC  @ =0x03000DF4
	b _08029332
_0802929C:
	.4byte 0x03000DD0
_080292A0:
	.4byte gLevelType
_080292A4:
	.4byte 0x0300010C
_080292A8:
	.4byte 0x0300010D
_080292AC:
	.4byte 0x03000DF4
_080292B0:
	sub r0, r2, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _080292EC
	ldr r0, _080292DC  @ =0x03000DF8
	strb r4, [r0]
	strb r4, [r1]
	ldr r1, _080292E0  @ =0x0300010C
	mov r0, #6
	strb r0, [r1]
	ldr r1, _080292E4  @ =0x03000DF4
	strb r4, [r1]
	lsl r0, r2, #24
	asr r0, r0, #24
	ldr r2, _080292E8  @ =0x0300010D
	cmp r0, #3
	bne _08029332
	add r0, r4, #6
	strb r0, [r1]
	b _08029332
	.byte 0x00
	.byte 0x00
_080292DC:
	.4byte 0x03000DF8
_080292E0:
	.4byte 0x0300010C
_080292E4:
	.4byte 0x03000DF4
_080292E8:
	.4byte 0x0300010D
_080292EC:
	lsl r0, r2, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08029314
	strb r0, [r6]
	ldr r0, _08029308  @ =0x03000DF8
	strb r3, [r0]
	strb r4, [r1]
	ldr r0, _0802930C  @ =0x0300010C
	strb r4, [r0]
	ldr r0, _08029310  @ =0x03000DF4
	strb r3, [r0]
	b _0802932E
	.byte 0x00
	.byte 0x00
_08029308:
	.4byte 0x03000DF8
_0802930C:
	.4byte 0x0300010C
_08029310:
	.4byte 0x03000DF4
_08029314:
	ldr r1, _0802934C  @ =0x03000DF8
	strb r3, [r1]
	lsl r0, r3, #24
	cmp r0, #0
	bge _08029320
	strb r5, [r1]
_08029320:
	ldr r0, _08029350  @ =0x03000DF4
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #25
	strb r1, [r0]
	ldr r1, _08029354  @ =0x0300010C
	strb r4, [r1]
_0802932E:
	ldr r2, _08029358  @ =0x0300010D
	add r1, r0, #0
_08029332:
	ldrb r0, [r1]
	add r0, r0, #9
	strb r0, [r2]
	ldr r0, [r7, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08029346
	mov r0, #21
	strb r0, [r2]
_08029346:
	pop {r4-r7}
	pop {r0}
	bx r0
_0802934C:
	.4byte 0x03000DF8
_08029350:
	.4byte 0x03000DF4
_08029354:
	.4byte 0x0300010C
_08029358:
	.4byte 0x0300010D
	THUMB_FUNC_END sub_0802919C

	THUMB_FUNC_START level_results_init_callback
level_results_init_callback: @ 0x0802935C
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r1, _0802937C  @ =0x0300010F
	mov r0, #0
	strb r0, [r1]
	ldr r0, _08029380  @ =gUnknown_03001940
	ldr r0, [r0]
	cmp r0, #0
	beq _0802938C
	ldr r1, _08029384  @ =0x03000C20
	ldr r0, _08029388  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #52
	ldrb r0, [r0]
	b _08029390
	.byte 0x00
	.byte 0x00
_0802937C:
	.4byte 0x0300010F
_08029380:
	.4byte gUnknown_03001940
_08029384:
	.4byte 0x03000C20
_08029388:
	.4byte gUnknown_030019AC
_0802938C:
	ldr r1, _08029408  @ =0x03000C20
	mov r0, #6
_08029390:
	strb r0, [r1]
	mov r0, #0
	bl arena_restore_head
	ldr r1, _0802940C  @ =gUnknown_03000C1C
	mov r0, #0
	strb r0, [r1]
	ldr r0, _08029410  @ =gUnknown_030009D8
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08029414  @ =gCameraHorizontalOffset
	strh r1, [r0]
	ldr r0, _08029418  @ =gCameraVerticalOffset
	strh r1, [r0]
	ldr r4, _0802941C  @ =gLevelResultsData
	add r0, r4, #0
	bl load_graphics_config_bg2_08032EB8
	mov r0, #0
	mov r1, #0
	bl sub_0802BCA4
	add r0, r4, #0
	bl sub_08006968
	ldr r1, _08029420  @ =0x03000104
	str r0, [r1]
	mov r1, sp
	mov r0, #160
	strh r0, [r1]
	ldr r1, _08029424  @ =REG_DMA3SAD
	mov r0, sp
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _08029428  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0802942C  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #3
	and r0, r0, r1
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #242
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldr r1, _08029430  @ =gUnknown_03001A1C
	mov r0, #0
	str r0, [r1]
	ldr r0, _0802942C  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08029434
	mov r4, #3
	b _08029456
_08029408:
	.4byte 0x03000C20
_0802940C:
	.4byte gUnknown_03000C1C
_08029410:
	.4byte gUnknown_030009D8
_08029414:
	.4byte gCameraHorizontalOffset
_08029418:
	.4byte gCameraVerticalOffset
_0802941C:
	.4byte gLevelResultsData
_08029420:
	.4byte 0x03000104
_08029424:
	.4byte REG_DMA3SAD
_08029428:
	.4byte 0x81000100
_0802942C:
	.4byte gNextLevelInLevelTable
_08029430:
	.4byte gUnknown_03001A1C
_08029434:
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08029440
	mov r4, #2
	b _08029456
_08029440:
	ldr r0, _080294A8  @ =gLevelType
	ldrb r0, [r0]
	mov r4, #1
	cmp r0, #1
	bhi _08029456
	ldr r0, _080294AC  @ =gLevelEWorldFlag
	mov r1, #0
	ldrsb r1, [r0, r1]
	neg r0, r1
	orr r0, r0, r1
	lsr r4, r0, #31
_08029456:
	bl sub_08029A80
	add r0, r4, #0
	bl sub_08030408
	ldr r2, _080294B0  @ =gLevelResultsData
	ldrh r0, [r2, #48]
	ldrh r1, [r2, #50]
	ldrh r2, [r2, #52]
	bl set_blend_regs_08029CDC
	bl sub_08071FE4
	cmp r0, #11
	beq _0802947E
	mov r0, #11
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_0802947E:
	bl sub_08038B18
	mov r4, #0
	mov r0, sp
	strh r4, [r0]
	ldr r1, _080294B4  @ =gBGLayerOffsets 
	ldr r2, _080294B8  @ =0x01000008
	bl CpuSet
	ldr r0, _080294BC  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080294C8
	ldr r0, _080294C0  @ =gUnknown_03000E00
	ldr r1, _080294C4  @ =gUnknown_08079DA0
	ldr r1, [r1, #4]
	bl sub_0802F648
	b _08029522
_080294A8:
	.4byte gLevelType
_080294AC:
	.4byte gLevelEWorldFlag
_080294B0:
	.4byte gLevelResultsData
_080294B4:
	.4byte gBGLayerOffsets 
_080294B8:
	.4byte 0x01000008
_080294BC:
	.4byte gNextLevelInLevelTable
_080294C0:
	.4byte gUnknown_03000E00
_080294C4:
	.4byte gUnknown_08079DA0
_080294C8:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _080294E4
	ldr r0, _080294DC  @ =gUnknown_03000E00
	ldr r1, _080294E0  @ =gUnknown_08079DA0
	ldr r1, [r1, #8]
	bl sub_0802F648
	b _08029522
_080294DC:
	.4byte gUnknown_03000E00
_080294E0:
	.4byte gUnknown_08079DA0
_080294E4:
	ldr r0, _08029508  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08029518
	ldr r0, _0802950C  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08029518
	ldr r0, _08029510  @ =gUnknown_03000E00
	ldr r1, _08029514  @ =gUnknown_08079DA0
	ldr r1, [r1]
	bl sub_0802F648
	b _08029522
_08029508:
	.4byte gLevelEWorldFlag
_0802950C:
	.4byte gLevelType
_08029510:
	.4byte gUnknown_03000E00
_08029514:
	.4byte gUnknown_08079DA0
_08029518:
	ldr r0, _08029544  @ =gUnknown_03000E00
	ldr r1, _08029548  @ =gUnknown_08079DA0
	ldr r1, [r1, #12]
	bl sub_0802F648
_08029522:
	ldr r0, _0802954C  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08029558
	ldr r1, _08029550  @ =gMiniMariosRescued_03001BA0
	ldrb r0, [r1]
	cmp r0, #5
	bhi _08029554
	add r1, r0, #0
	lsl r0, r1, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r1
	lsl r0, r0, #3
	b _08029556
_08029544:
	.4byte gUnknown_03000E00
_08029548:
	.4byte gUnknown_08079DA0
_0802954C:
	.4byte gNextLevelInLevelTable
_08029550:
	.4byte gMiniMariosRescued_03001BA0
_08029554:
	ldr r0, _080295D8  @ =0x00002710
_08029556:
	add r4, r4, r0
_08029558:
	add r0, r4, #0
	mov r1, #1
	bl sub_0802FC24
	ldr r1, _080295DC  @ =REG_DMA3SAD
	ldr r0, _080295E0  @ =gUnknown_082EC750
	str r0, [r1]
	ldr r0, _080295E4  @ =OBJ_VRAM0
	str r0, [r1, #4]
	ldr r0, _080295E8  @ =0x840000A0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r5, _080295EC  @ =gObjVRAMCopyOffset_0300192C
	mov r1, #160
	lsl r1, r1, #2
	add r0, r1, #0
	strh r0, [r5]
	ldr r4, _080295F0  @ =gVRAMCurrTileNum_03001930
	mov r0, #20
	strh r0, [r4]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_080091A8
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08042FB0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_08031BF0
	ldr r0, _080295F4  @ =0x03000C24
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080295F8  @ =0x03000C14
	strb r1, [r0]
	bl sub_08029A80
	ldr r1, _080295FC  @ =0x03000108
	mov r0, #1
	neg r0, r0
	str r0, [r1]
	bl sub_0802FCA4
	ldr r0, _08029600  @ =gLivesCount
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_080149F8
	ldr r0, _08029604  @ =0x0300010F
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08029610
	ldr r0, _08029608  @ =0x03000DF8
	ldrb r1, [r0]
	ldr r2, _0802960C  @ =gLevelCollectableFlags
	mov r0, #5
	bl set_level_flags_08010534
	b _0802961E
_080295D8:
	.4byte 0x00002710
_080295DC:
	.4byte REG_DMA3SAD
_080295E0:
	.4byte gUnknown_082EC750
_080295E4:
	.4byte OBJ_VRAM0
_080295E8:
	.4byte 0x840000A0
_080295EC:
	.4byte gObjVRAMCopyOffset_0300192C
_080295F0:
	.4byte gVRAMCurrTileNum_03001930
_080295F4:
	.4byte 0x03000C24
_080295F8:
	.4byte 0x03000C14
_080295FC:
	.4byte 0x03000108
_08029600:
	.4byte gLivesCount
_08029604:
	.4byte 0x0300010F
_08029608:
	.4byte 0x03000DF8
_0802960C:
	.4byte gLevelCollectableFlags
_08029610:
	ldr r0, _08029648  @ =0x03000DD0
	ldrb r0, [r0]
	ldr r1, _0802964C  @ =0x03000DF8
	ldrb r1, [r1]
	ldr r2, _08029650  @ =gLevelCollectableFlags
	bl set_level_flags_08010534
_0802961E:
	ldr r0, _08029654  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08029682
	ldr r0, _08029648  @ =0x03000DD0
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bgt _08029658
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #0
	bl sub_08010BE0
	b _0802968E
	.byte 0x00
	.byte 0x00
_08029648:
	.4byte 0x03000DD0
_0802964C:
	.4byte 0x03000DF8
_08029650:
	.4byte gLevelCollectableFlags
_08029654:
	.4byte gNextLevelInLevelTable
_08029658:
	ldr r0, _08029670  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08029674
	mov r0, #5
	mov r1, #14
	bl sub_08010BE0
	b _0802968E
	.byte 0x00
	.byte 0x00
_08029670:
	.4byte gLevelType
_08029674:
	cmp r0, #1
	bne _0802968E
	mov r0, #5
	mov r1, #6
	bl sub_08010BE0
	b _0802968E
_08029682:
	ldr r0, _0802969C  @ =0x03000DD0
	ldrb r0, [r0]
	ldr r1, _080296A0  @ =gNextLevelID
	ldrb r1, [r1]
	bl sub_08010BE0
_0802968E:
	mov r0, #1
	bl sub_080300CC
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_0802969C:
	.4byte 0x03000DD0
_080296A0:
	.4byte gNextLevelID
	THUMB_FUNC_END level_results_init_callback

	THUMB_FUNC_START level_results_main
level_results_main: @ 0x080296A4
	push {r4-r7,lr}
	sub sp, sp, #12
	mov r4, #0
	bl sub_08029C20
	ldr r1, _08029774  @ =0x03000C14
	ldrb r0, [r1]
	cmp r0, #30
	bhi _080296B8
	b _080297DA
_080296B8:
	mov r4, #50
	bl process_input
	ldr r0, _08029778  @ =0x03000DDC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080296CC
	b _080297C8
_080296CC:
	ldr r0, _0802977C  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _08029716
	ldr r0, _08029780  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080296F8
	ldr r1, _08029784  @ =gLevelCollectableFlags
	ldrb r0, [r1]
	cmp r0, #0
	beq _080296F8
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _080296F8
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _0802970E
_080296F8:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #32
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802970E:
	ldr r4, _08029788  @ =0x000F423F
	ldr r1, _0802977C  @ =gNewKeys
	mov r0, #0
	strh r0, [r1]
_08029716:
	ldr r0, _0802978C  @ =gUnknown_03000E00
	add r1, r4, #0
	bl sub_0802F7B8
	mov r4, #0
	cmp r0, #0
	bne _08029726
	mov r4, #1
_08029726:
	cmp r4, #0
	beq _08029794
	ldr r0, _08029790  @ =0x03000108
	ldr r1, [r0]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _0802973C
	add r0, r1, #0
	bl sub_08071D9C
_0802973C:
	ldr r0, _08029780  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #3
	and r1, r1, r0
	cmp r1, #0
	bne _080297DE
	ldr r2, _08029784  @ =gLevelCollectableFlags
	ldrb r0, [r2]
	cmp r0, #0
	beq _080297DE
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _080297DE
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _080297DE
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #41
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _080297DE
	.byte 0x00
	.byte 0x00
_08029774:
	.4byte 0x03000C14
_08029778:
	.4byte 0x03000DDC
_0802977C:
	.4byte gNewKeys
_08029780:
	.4byte gNextLevelInLevelTable
_08029784:
	.4byte gLevelCollectableFlags
_08029788:
	.4byte 0x000F423F
_0802978C:
	.4byte gUnknown_03000E00
_08029790:
	.4byte 0x03000108
_08029794:
	ldr r5, _080297C4  @ =0x03000108
	ldr r1, [r5]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _080297AA
	add r0, r1, #0
	bl sub_080721A8
	cmp r0, #0
	beq _080297DE
_080297AA:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #12
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r5]
	b _080297DE
	.byte 0x00
	.byte 0x00
_080297C4:
	.4byte 0x03000108
_080297C8:
	bl sub_0802FC88
	cmp r0, #0
	beq _080297D6
	mov r0, #1
	bl sub_080300CC
_080297D6:
	mov r4, #1
	b _080297DE
_080297DA:
	add r0, r0, #1
	strb r0, [r1]
_080297DE:
	add r0, r4, #0
	bl sub_08030DA0
	cmp r4, #0
	bne _080297EA
	b _08029A74
_080297EA:
	ldr r0, _08029860  @ =gUnknown_030009D8
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	bl sub_08030DE8
	cmp r0, #0
	bne _080297FC
	b _08029A74
_080297FC:
	ldr r0, _08029864  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	bne _0802980A
	b _08029A74
_0802980A:
	ldr r2, _08029868  @ =gUnknown_03000E00
	ldr r0, [r2, #80]
	ldr r1, [r0]
	sub r1, r1, #1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r1, r0, r2
	add r2, r2, #4
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0802986C  @ =0x03000108
	ldr r1, [r0]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08029834
	add r0, r1, #0
	bl sub_08071D9C
_08029834:
	mov r0, #0
	str r0, [sp]
	mov r7, #128
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08029870  @ =gUnknown_03000C1C
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08029874  @ =gLevelEWorldFlag
	mov r5, #0
	ldrsb r5, [r0, r5]
	cmp r5, #0
	beq _08029878
	mov r0, #8
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029860:
	.4byte gUnknown_030009D8
_08029864:
	.4byte gNewKeys
_08029868:
	.4byte gUnknown_03000E00
_0802986C:
	.4byte 0x03000108
_08029870:
	.4byte gUnknown_03000C1C
_08029874:
	.4byte gLevelEWorldFlag
_08029878:
	ldr r2, _08029888  @ =gLevelType
	mov r4, #0
	ldrsb r4, [r2, r4]
	cmp r4, #2
	bne _0802988C
	mov r0, #9
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029888:
	.4byte gLevelType
_0802988C:
	cmp r4, #3
	bne _08029894
	mov r0, #9
	b _08029A52
_08029894:
	ldr r1, _080298D0  @ =gNextLevelInLevelTable
	ldr r0, [r1, #32]
	mov r3, #4
	and r0, r0, r3
	add r6, r1, #0
	cmp r0, #0
	bne _080298A4
	b _080299E4
_080298A4:
	cmp r4, #0
	bne _08029938
	mov r0, #18
	ldrsh r1, [r6, r0]
	ldr r0, _080298D4  @ =gUnknown_08B2CA5C
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bcs _080298F2
	ldr r4, _080298D8  @ =gUnknown_080788B0
	add r0, r1, #1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080298DC
	mov r0, #8
	b _08029A52
	.byte 0x00
	.byte 0x00
_080298D0:
	.4byte gNextLevelInLevelTable
_080298D4:
	.4byte gUnknown_08B2CA5C
_080298D8:
	.4byte gUnknown_080788B0
_080298DC:
	mov r1, #18
	ldrsh r0, [r6, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _08029A52
_080298F2:
	strb r3, [r2]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #0
	mov r1, #0
	bl sub_0800F6EC
	ldr r0, _08029930  @ =gCurrentWorld
	strb r4, [r0]
	ldr r0, _08029934  @ =gNextLevelID
	strb r4, [r0]
	ldr r0, [r6]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #3
	mov r1, #43
	mov r2, #13
	mov r3, #2
	bl movie_player_setup_data
	mov r0, #30
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029930:
	.4byte gCurrentWorld
_08029934:
	.4byte gNextLevelID
_08029938:
	cmp r4, #1
	bne _080299C8
	mov r0, #18
	ldrsh r1, [r6, r0]
	ldr r0, _08029964  @ =gUnknown_08B2CDF4
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bcs _08029982
	ldr r4, _08029968  @ =gUnknown_080788C8
	add r0, r1, #1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	beq _0802996C
	mov r0, #8
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029964:
	.4byte gUnknown_08B2CDF4
_08029968:
	.4byte gUnknown_080788C8
_0802996C:
	mov r1, #18
	ldrsh r0, [r6, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _08029A52
_08029982:
	mov r0, #5
	strb r0, [r2]
	str r5, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #0
	mov r1, #1
	bl sub_0800F6EC
	ldr r0, _080299C0  @ =gCurrentWorld
	strb r5, [r0]
	ldr r0, _080299C4  @ =gNextLevelID
	strb r4, [r0]
	ldr r0, [r6]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #3
	mov r1, #45
	mov r2, #13
	mov r3, #5
	bl movie_player_setup_data
	mov r0, #30
	b _08029A52
_080299C0:
	.4byte gCurrentWorld
_080299C4:
	.4byte gNextLevelID
_080299C8:
	mov r0, #7
	mov r1, #1
	bl change_main_state
	ldr r0, _080299DC  @ =gCurrentWorld
	strb r5, [r0]
	ldr r0, _080299E0  @ =gNextLevelID
	strb r5, [r0]
	b _08029A74
	.byte 0x00
	.byte 0x00
_080299DC:
	.4byte gCurrentWorld
_080299E0:
	.4byte gNextLevelID
_080299E4:
	ldr r1, _08029A30  @ =gLevelCollectableFlags
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029A5A
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08029A5A
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _08029A5A
	cmp r4, #0
	bne _08029A38
	mov r1, #18
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08029A38
	mov r1, #16
	ldrsh r0, [r6, r1]
	cmp r0, #1
	bne _08029A1A
	mov r0, #128
	lsl r0, r0, #1
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08029A50
_08029A1A:
	ldr r0, _08029A34  @ =gGeneralTimer
	ldr r0, [r0]
	bl sub_0802F5C0
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08029A50
	mov r0, #23
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029A30:
	.4byte gLevelCollectableFlags
_08029A34:
	.4byte gGeneralTimer
_08029A38:
	ldr r0, _08029A4C  @ =gGeneralTimer
	ldr r0, [r0]
	bl sub_0802F5C0
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08029A50
	mov r0, #23
	b _08029A52
_08029A4C:
	.4byte gGeneralTimer
_08029A50:
	mov r0, #22
_08029A52:
	mov r1, #1
	bl change_main_state
	b _08029A74
_08029A5A:
	ldr r0, [r6, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08029A6C
	mov r0, #12
	bl change_main_state
	b _08029A74
_08029A6C:
	mov r0, #8
	mov r1, #1
	bl change_main_state
_08029A74:
	bl sub_08031C1C
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END level_results_main

	THUMB_FUNC_START sub_08029A80
sub_08029A80: @ 0x08029A80
	push {r4-r7,lr}
	sub sp, sp, #16
	ldr r0, _08029B64  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r5, sp, #8
	cmp r0, #0
	bne _08029AE6
	ldr r0, _08029B68  @ =gLevelType
	ldrb r0, [r0]
	lsl r2, r0, #24
	lsr r0, r2, #24
	cmp r0, #1
	bhi _08029AE6
	ldr r0, _08029B6C  @ =gUnknown_080763FC
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, #8
	ldr r0, _08029B70  @ =gLevelResultsData
	ldr r7, [r0, #72]
	ldr r0, _08029B74  @ =0x03000104
	ldr r0, [r0]
	mov r3, #184
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r6, [r0]
	asr r0, r2, #24
	cmp r0, #1
	bne _08029AC8
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	mov r1, #7
_08029AC8:
	cmp r1, #0
	beq _08029AE6
	add r4, r1, #0
_08029ACE:
	mov r0, sp
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #5
	bl sub_080064D4
	sub r4, r4, #1
	ldr r0, [sp]
	add r0, r0, #2
	str r0, [sp]
	cmp r4, #0
	bne _08029ACE
_08029AE6:
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #2
	str r0, [r5, #4]
	ldr r7, _08029B74  @ =0x03000104
	ldr r1, [r7]
	ldr r0, _08029B78  @ =0x0300010C
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #2
	mov r4, #132
	lsl r4, r4, #1
	add r1, r1, r4
	add r1, r1, r0
	ldr r1, [r1]
	ldr r6, _08029B70  @ =gLevelResultsData
	ldr r2, [r6, #76]
	add r0, r5, #0
	mov r3, #5
	bl sub_080064D4
	ldr r0, [sp, #8]
	add r0, r0, #2
	str r0, [sp, #8]
	ldr r1, [r7]
	ldr r0, _08029B7C  @ =0x0300010D
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #2
	add r1, r1, r4
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r6, #76]
	add r0, r5, #0
	mov r3, #5
	bl sub_080064D4
	ldr r0, _08029B80  @ =0x0300010E
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08029B5A
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [r7]
	mov r1, #180
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r6, #76]
	add r0, r5, #0
	mov r3, #5
	bl sub_080064D4
_08029B5A:
	add sp, sp, #16
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08029B64:
	.4byte gLevelEWorldFlag
_08029B68:
	.4byte gLevelType
_08029B6C:
	.4byte gUnknown_080763FC
_08029B70:
	.4byte gLevelResultsData
_08029B74:
	.4byte 0x03000104
_08029B78:
	.4byte 0x0300010C
_08029B7C:
	.4byte 0x0300010D
_08029B80:
	.4byte 0x0300010E
	THUMB_FUNC_END sub_08029A80
