	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"
.if 0
	THUMB_FUNC_START main_menu_init_callback
main_menu_init_callback: @ 0x080114D4
	push {r4,r5,lr}
	sub sp, sp, #4
	mov r0, #0
	bl arena_restore_head
	ldr r1, _0801150C  @ =gUnknown_03001740
	mov r0, #0
	strb r0, [r1]
	ldr r2, _08011510  @ =gUnknown_0300005D
	ldr r1, _08011514  @ =gUnknown_03000062
	strb r0, [r1]
	strb r0, [r2]
	ldr r0, _08011518  @ =gUnknown_0807CA94
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _080114FC
	mov r0, #1
	strb r0, [r1]
	strb r0, [r2]
_080114FC:
	ldr r0, _0801151C  @ =gPreviousMainState
	ldr r1, [r0]
	cmp r1, #4
	bne _08011524
	ldr r0, _08011520  @ =gFileSelectMenuSel
	strb r1, [r0]
	b _0801157E
	.byte 0x00
	.byte 0x00
_0801150C:
	.4byte gUnknown_03001740
_08011510:
	.4byte gUnknown_0300005D
_08011514:
	.4byte gUnknown_03000062
_08011518:
	.4byte gUnknown_0807CA94
_0801151C:
	.4byte gPreviousMainState
_08011520:
	.4byte gFileSelectMenuSel
_08011524:
	add r0, r1, #0
	sub r0, r0, #24
	cmp r0, #1
	bhi _08011540
	ldrb r0, [r2]
	cmp r0, #0
	beq _08011540
	ldr r1, _0801153C  @ =gFileSelectMenuSel
	mov r0, #3
	strb r0, [r1]
	b _0801157E
	.byte 0x00
	.byte 0x00
_0801153C:
	.4byte gFileSelectMenuSel
_08011540:
	ldr r0, _08011560  @ =gUnknown_080788F8
	ldr r0, [r0]
	ldr r0, [r0]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08011570
	ldr r0, _08011564  @ =gUnknown_0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011570
	ldr r2, _08011568  @ =gFileSelectMenuSel
	ldr r1, _0801156C  @ =gPrevFileSelectMenuSel
	mov r0, #3
	b _0801157A
	.byte 0x00
	.byte 0x00
_08011560:
	.4byte gUnknown_080788F8
_08011564:
	.4byte gUnknown_0300005D
_08011568:
	.4byte gFileSelectMenuSel
_0801156C:
	.4byte gPrevFileSelectMenuSel
_08011570:
	ldr r2, _0801163C  @ =gFileSelectMenuSel
	ldr r1, _08011640  @ =gPrevFileSelectMenuSel
	ldr r0, _08011644  @ =gSelectedSaveFileNumPtr
	ldr r0, [r0]
	ldrb r0, [r0]
_0801157A:
	strb r0, [r1]
	strb r0, [r2]
_0801157E:
	ldr r0, _08011648  @ =gUnknown_0300005B
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0801164C  @ =gUnknown_0300005E
	strb r1, [r0]
	ldr r2, _08011650  @ =gUnknown_0300005F
	ldr r0, _08011654  @ =gUnknown_085FEFE4
	ldrb r0, [r0, #1]
	strb r0, [r2]
	ldr r0, _08011658  @ =gUnknown_03000060
	strb r1, [r0]
	ldr r2, _0801165C  @ =gUnknown_03000061
	ldr r0, _08011660  @ =gUnknown_08617030
	ldrb r0, [r0, #1]
	strb r0, [r2]
	ldr r0, _08011664  @ =gUnknown_03000064
	strb r1, [r0]
	ldr r0, _08011668  @ =gUnknown_03000065
	strb r1, [r0]
	ldr r0, _0801166C  @ =gCameraHorizontalOffset
	mov r5, #0
	strh r5, [r0]
	ldr r0, _08011670  @ =gCameraVerticalOffset
	strh r5, [r0]
	ldr r4, _08011674  @ =gMainMenuData
	add r0, r4, #0
	bl load_graphics_config_bg2_08032EB8
	mov r1, sp
	mov r0, #160
	strh r0, [r1]
	ldr r1, _08011678  @ =REG_DMA3SAD
	mov r0, sp
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801167C  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_08071FE4
	cmp r0, #10
	beq _080115E0
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_080115E0:
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl set_blend_regs_08029CDC
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #218
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #1
	mov r1, #3
	bl load_predefined_palette
	mov r0, sp
	strh r5, [r0]
	ldr r1, _08011680  @ =gBGLayerOffsets 
	ldr r2, _08011684  @ =0x01000008
	bl CpuSet
	mov r0, #0
	mov r1, #0
	bl sub_080381E4
	mov r4, #0
	ldr r5, _08011688  @ =gUnknown_03000066
_08011616:
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080111B4
	lsl r1, r4, #16
	asr r1, r1, #16
	add r2, r1, r5
	strb r0, [r2]
	add r1, r1, #1
	lsl r1, r1, #16
	lsr r4, r1, #16
	asr r1, r1, #16
	cmp r1, #2
	ble _08011616
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801163C:
	.4byte gFileSelectMenuSel
_08011640:
	.4byte gPrevFileSelectMenuSel
_08011644:
	.4byte gSelectedSaveFileNumPtr
_08011648:
	.4byte gUnknown_0300005B
_0801164C:
	.4byte gUnknown_0300005E
_08011650:
	.4byte gUnknown_0300005F
_08011654:
	.4byte gUnknown_085FEFE4
_08011658:
	.4byte gUnknown_03000060
_0801165C:
	.4byte gUnknown_03000061
_08011660:
	.4byte gUnknown_08617030
_08011664:
	.4byte gUnknown_03000064
_08011668:
	.4byte gUnknown_03000065
_0801166C:
	.4byte gCameraHorizontalOffset
_08011670:
	.4byte gCameraVerticalOffset
_08011674:
	.4byte gMainMenuData
_08011678:
	.4byte REG_DMA3SAD
_0801167C:
	.4byte 0x81000100
_08011680:
	.4byte gBGLayerOffsets 
_08011684:
	.4byte 0x01000008
_08011688:
	.4byte gUnknown_03000066
	THUMB_FUNC_END main_menu_init_callback

	THUMB_FUNC_START sub_0801168C
sub_0801168C: @ 0x0801168C
	push {lr}
	sub sp, sp, #32
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _08011748
	ldr r0, _080116A4  @ =gUnknown_0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _080116AC
	ldr r1, _080116A8  @ =gUnknown_0807638C
	b _080116AE
_080116A4:
	.4byte gUnknown_0300005D
_080116A8:
	.4byte gUnknown_0807638C
_080116AC:
	ldr r1, _080116FC  @ =gUnknown_080763AC
_080116AE:
	mov r0, sp
	mov r2, #32
	bl memcpy
	ldr r1, _08011700  @ =gBGLayerOffsets 
	ldr r0, _08011704  @ =gFileSelectMenuSel
	ldrb r0, [r0]
	add r0, sp, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	neg r0, r0
	strh r0, [r1, #8]
	ldr r0, _08011704  @ =gFileSelectMenuSel
	ldrb r2, [r0]
	ldr r1, _08011708  @ =gSaveFilesPtr
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r3, r1, r0
	cmp r2, #3
	beq _08011714
	ldr r1, _0801170C  @ =0x00000313
	add r0, r3, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08011714
	ldr r1, _08011710  @ =gUnknown_080A8668
	ldrb r0, [r3, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08011714
	mov r0, #1
	b _08011716
_080116FC:
	.4byte gUnknown_080763AC
_08011700:
	.4byte gBGLayerOffsets 
_08011704:
	.4byte gFileSelectMenuSel
_08011708:
	.4byte gSaveFilesPtr
_0801170C:
	.4byte 0x00000313
_08011710:
	.4byte gUnknown_080A8668
_08011714:
	mov r0, #0
_08011716:
	cmp r0, #0
	beq _08011722
	ldr r1, _0801173C  @ =gBGLayerOffsets 
	mov r0, #255
	lsl r0, r0, #8
	strh r0, [r1, #10]
_08011722:
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #80
	ldr r2, _08011740  @ =0x00003B44
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #2
	ldr r2, _08011744  @ =0x00000808
	b _0801175A
_0801173C:
	.4byte gBGLayerOffsets 
_08011740:
	.4byte 0x00003B44
_08011744:
	.4byte 0x00000808
_08011748:
	ldr r0, _08011764  @ =gBGLayerOffsets 
	strh r1, [r0, #6]
	strh r1, [r0, #10]
	strh r1, [r0, #8]
	strh r1, [r0, #2]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #218
	lsl r2, r2, #5
_0801175A:
	add r0, r2, #0
	strh r0, [r1]
	add sp, sp, #32
	pop {r0}
	bx r0
_08011764:
	.4byte gBGLayerOffsets 
	THUMB_FUNC_END sub_0801168C

	THUMB_FUNC_START pick_file
pick_file: @ 0x08011768
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #16
	bl sub_08034004
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _08011780
	b _08011968
_08011780:
	ldr r4, _080117B4  @ =gFileSelectMenuSel
	ldrb r0, [r4]
	cmp r0, #5
	bne _08011830
	mov r2, #0
	ldr r4, _080117B8  @ =gUnknown_0807CA94
	ldr r0, _080117BC  @ =gSaveFilesPtr
	ldr r3, [r0]
_08011790:
	lsl r1, r2, #24
	lsr r1, r1, #24
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	add r0, r3, r0
	cmp r1, #2
	bhi _080117C0
	ldrb r1, [r0, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080117C0
	mov r0, #1
	b _080117C2
	.byte 0x00
	.byte 0x00
_080117B4:
	.4byte gFileSelectMenuSel
_080117B8:
	.4byte gUnknown_0807CA94
_080117BC:
	.4byte gSaveFilesPtr
_080117C0:
	mov r0, #0
_080117C2:
	cmp r0, #0
	bne _080117E4
	add r2, r2, #1
	cmp r2, #2
	ble _08011790
	mov r0, #0
_080117CE:
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	bne _080117E8
	lsl r0, r5, #24
	asr r1, r0, #24
	cmp r1, #0
	bne _080117E8
	b _08011BB8
_080117E4:
	add r0, r2, #1
	b _080117CE
_080117E8:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08011814  @ =gPrevFileSelectMenuSel
	ldr r2, _08011818  @ =gFileSelectMenuSel
	ldrb r0, [r2]
	strb r0, [r1]
	lsl r0, r5, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0801181C
	sub r0, r0, #1
	strb r0, [r2]
	b _0801181E
_08011814:
	.4byte gPrevFileSelectMenuSel
_08011818:
	.4byte gFileSelectMenuSel
_0801181C:
	strb r4, [r2]
_0801181E:
	ldr r1, _0801182C  @ =gUnknown_0300005B
	mov r0, #2
	strb r0, [r1]
	mov r0, #1
	bl sub_0801168C
	b _08011C9C
_0801182C:
	.4byte gUnknown_0300005B
_08011830:
	cmp r0, #4
	bne _0801184E
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #4
	b _0801198A
_0801184E:
	cmp r0, #3
	bne _0801186C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #29
	b _0801198A
_0801186C:
	cmp r0, #2
	bls _08011872
	b _08011998
_08011872:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _08011908  @ =gSelectedSaveFileNumPtr
	mov r8, r0
	ldr r1, [r0]
	ldrb r0, [r4]
	strb r0, [r1]
	mov r1, r8
	ldr r5, [r1]
	ldrb r0, [r5]
	ldr r6, _0801190C  @ =gCurrentWorld
	ldr r3, _08011910  @ =gNextLevelID
	mov r12, r3
	ldr r4, _08011914  @ =gLevelType
	ldr r1, _08011918  @ =gSaveFilesPtr
	mov r9, r1
	lsl r1, r0, #3
	sub r1, r1, r0
	lsl r1, r1, #5
	sub r1, r1, r0
	lsl r1, r1, #2
	mov r0, r9
	ldr r3, [r0]
	add r1, r3, r1
	ldrb r0, [r1, #2]
	mov r7, #15
	and r7, r7, r0
	ldrb r0, [r1, #3]
	strb r0, [r4]
	mov r0, r12
	strb r7, [r0]
	ldrb r0, [r1, #2]
	lsr r0, r0, #4
	mov r2, #7
	and r0, r0, r2
	strb r0, [r6]
	ldrb r2, [r1, #3]
	strb r2, [r4]
	ldrb r1, [r5]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	add r3, r3, r0
	mov r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, _0801191C  @ =gLivesCount
	strb r1, [r0]
	lsl r2, r2, #24
	cmp r2, #0
	bne _080118F2
	lsl r0, r7, #1
	mov r1, r12
	strb r0, [r1]
_080118F2:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	add r3, sp, #12
	bl get_level_stats_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08011920
	mov r0, #8
	b _0801198A
_08011908:
	.4byte gSelectedSaveFileNumPtr
_0801190C:
	.4byte gCurrentWorld
_08011910:
	.4byte gNextLevelID
_08011914:
	.4byte gLevelType
_08011918:
	.4byte gSaveFilesPtr
_0801191C:
	.4byte gLivesCount
_08011920:
	mov r0, #3
	mov r1, #41
	mov r2, #8
	mov r3, #1
	bl movie_player_setup_data
	mov r0, #30
	mov r1, #1
	bl change_main_state
	mov r2, #1
	mov r3, r8
	ldr r0, [r3]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	mov r3, r9
	ldr r1, [r3]
	add r1, r1, r0
	ldr r0, [r1, #4]
	orr r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _08011964  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801195C
	b _08011C9C
_0801195C:
	bl sub_0802A164
	b _08011C9C
	.byte 0x00
	.byte 0x00
_08011964:
	.4byte gUnknown_03000B50
_08011968:
	ldr r0, _08011994  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08011998
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #7
_0801198A:
	mov r1, #1
	bl change_main_state
	b _08011C9C
	.byte 0x00
	.byte 0x00
_08011994:
	.4byte gSomeKeys_030012E8
_08011998:
	ldr r5, _080119F0  @ =gFileSelectMenuSel
	ldrb r2, [r5]
	cmp r2, #7
	bls _080119A2
	b _08011B30
_080119A2:
	cmp r2, #3
	bls _080119A8
	b _08011AA6
_080119A8:
	ldr r0, _080119F4  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08011A00
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _080119F8  @ =gPrevFileSelectMenuSel
	ldrb r1, [r5]
	strb r1, [r0]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #2
	bne _080119E4
	ldr r0, _080119FC  @ =gUnknown_0300005D
	ldrb r0, [r0]
	cmp r0, #0
	bne _080119E4
	add r0, r1, #1
	strb r0, [r5]
_080119E4:
	ldr r1, _080119F0  @ =gFileSelectMenuSel
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _08011B5A
	.byte 0x00
	.byte 0x00
_080119F0:
	.4byte gFileSelectMenuSel
_080119F4:
	.4byte gSomeKeys_030012E8
_080119F8:
	.4byte gPrevFileSelectMenuSel
_080119FC:
	.4byte gUnknown_0300005D
_08011A00:
	cmp r2, #2
	bls _08011A06
	b _08011B5A
_08011A06:
	mov r4, #128
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	bne _08011A12
	b _08011B5A
_08011A12:
	ldr r0, _08011A44  @ =gSaveFilesPtr
	lsl r1, r2, #3
	sub r1, r1, r2
	lsl r1, r1, #5
	sub r1, r1, r2
	lsl r1, r1, #2
	ldr r0, [r0]
	add r3, r0, r1
	cmp r2, #3
	beq _08011A50
	ldr r1, _08011A48  @ =0x00000313
	add r0, r3, r1
	ldrb r1, [r0]
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08011A50
	ldr r1, _08011A4C  @ =gUnknown_080A8668
	ldrb r0, [r3, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08011A50
	mov r0, #1
	b _08011A52
	.byte 0x00
	.byte 0x00
_08011A44:
	.4byte gSaveFilesPtr
_08011A48:
	.4byte 0x00000313
_08011A4C:
	.4byte gUnknown_080A8668
_08011A50:
	mov r0, #0
_08011A52:
	add r1, r0, #0
	cmp r1, #0
	beq _08011A90
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
	ldr r2, _08011A84  @ =gPrevFileSelectMenuSel
	ldr r1, _08011A88  @ =gFileSelectMenuSel
	ldrb r0, [r1]
	strb r0, [r2]
	add r0, r0, #6
	strb r0, [r1]
	ldr r1, _08011A8C  @ =gUnknown_0300005B
	mov r0, #1
	strb r0, [r1]
	b _08011C9C
	.byte 0x00
	.byte 0x00
_08011A84:
	.4byte gPrevFileSelectMenuSel
_08011A88:
	.4byte gFileSelectMenuSel
_08011A8C:
	.4byte gUnknown_0300005B
_08011A90:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08011B5A
_08011AA6:
	ldr r0, _08011AD8  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r3, #128
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08011AF4
	cmp r2, #4
	bne _08011AE0
	mov r0, #0
	str r0, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08011ADC  @ =gPrevFileSelectMenuSel
	ldrb r0, [r5]
	strb r0, [r1]
	add r0, r0, #1
	strb r0, [r5]
	b _08011AF4
_08011AD8:
	.4byte gSomeKeys_030012E8
_08011ADC:
	.4byte gPrevFileSelectMenuSel
_08011AE0:
	mov r0, #0
	str r0, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08011AF4:
	ldr r0, _08011B24  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08011B5A
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, _08011B28  @ =gPrevFileSelectMenuSel
	ldr r1, _08011B2C  @ =gFileSelectMenuSel
	ldrb r0, [r1]
	strb r0, [r2]
	strb r4, [r1]
	b _08011B5A
	.byte 0x00
	.byte 0x00
_08011B24:
	.4byte gSomeKeys_030012E8
_08011B28:
	.4byte gPrevFileSelectMenuSel
_08011B2C:
	.4byte gFileSelectMenuSel
_08011B30:
	ldr r0, _08011BD0  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08011B5A
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08011BD4  @ =gPrevFileSelectMenuSel
	ldrb r0, [r5]
	strb r0, [r1]
	strb r4, [r5]
_08011B5A:
	ldr r5, _08011BD8  @ =gFileSelectMenuSel
	ldrb r4, [r5]
	cmp r4, #0
	beq _08011C54
	cmp r4, #4
	bhi _08011BE0
	ldr r2, _08011BD0  @ =gSomeKeys_030012E8
	ldrh r1, [r2]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08011BAC
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _08011BD4  @ =gPrevFileSelectMenuSel
	ldrb r1, [r5]
	strb r1, [r0]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #4
	bne _08011BA2
	ldr r0, _08011BDC  @ =gUnknown_0300005D
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011BA2
	sub r0, r1, #1
	strb r0, [r5]
_08011BA2:
	ldr r1, _08011BD8  @ =gFileSelectMenuSel
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r2, _08011BD0  @ =gSomeKeys_030012E8
_08011BAC:
	ldrh r1, [r2]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08011C9C
	mov r1, #0
_08011BB8:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08011C9C
	.byte 0x00
	.byte 0x00
_08011BD0:
	.4byte gSomeKeys_030012E8
_08011BD4:
	.4byte gPrevFileSelectMenuSel
_08011BD8:
	.4byte gFileSelectMenuSel
_08011BDC:
	.4byte gUnknown_0300005D
_08011BE0:
	ldr r0, _08011C10  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r0, #64
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _08011C18
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
	ldr r1, _08011C14  @ =gPrevFileSelectMenuSel
	ldrb r0, [r5]
	strb r0, [r1]
	sub r0, r0, #1
	b _08011C9A
_08011C10:
	.4byte gSomeKeys_030012E8
_08011C14:
	.4byte gPrevFileSelectMenuSel
_08011C18:
	mov r0, #32
	and r0, r0, r2
	cmp r0, #0
	beq _08011C9C
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _08011C4C  @ =gPrevFileSelectMenuSel
	ldrb r1, [r5]
	strb r1, [r0]
	ldr r0, _08011C50  @ =gUnknown_0300005D
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011C46
	sub r0, r1, #1
	strb r0, [r5]
_08011C46:
	ldrb r0, [r5]
	sub r0, r0, #2
	b _08011C9A
_08011C4C:
	.4byte gPrevFileSelectMenuSel
_08011C50:
	.4byte gUnknown_0300005D
_08011C54:
	ldr r6, _08011CAC  @ =gSomeKeys_030012E8
	ldrh r1, [r6]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08011C74
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08011C74:
	ldrh r1, [r6]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08011C9C
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08011CB0  @ =gPrevFileSelectMenuSel
	ldrb r0, [r5]
	strb r0, [r1]
	mov r0, #4
_08011C9A:
	strb r0, [r5]
_08011C9C:
	add sp, sp, #16
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08011CAC:
	.4byte gSomeKeys_030012E8
_08011CB0:
	.4byte gPrevFileSelectMenuSel
	THUMB_FUNC_END pick_file

	THUMB_FUNC_START sub_08011CB4
sub_08011CB4: @ 0x08011CB4
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r0, _08011CEC  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08011CF8
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, _08011CF0  @ =gPrevFileSelectMenuSel
	ldr r1, _08011CF4  @ =gFileSelectMenuSel
	ldrb r0, [r1]
	strb r0, [r2]
	sub r0, r0, #6
	b _08011E7E
	.byte 0x00
	.byte 0x00
_08011CEC:
	.4byte gSomeKeys_030012E8
_08011CF0:
	.4byte gPrevFileSelectMenuSel
_08011CF4:
	.4byte gFileSelectMenuSel
_08011CF8:
	mov r0, #32
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _08011DD4
	ldr r5, _08011D44  @ =gFileSelectMenuSel
	ldrb r1, [r5]
	cmp r1, #6
	bls _08011DB0
	sub r1, r1, #7
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _08011D48  @ =gSaveFilesPtr
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r2, [r2]
	add r2, r2, r0
	cmp r1, #3
	beq _08011D54
	ldr r1, _08011D4C  @ =0x00000313
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08011D54
	ldr r1, _08011D50  @ =gUnknown_080A8668
	ldrb r0, [r2, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08011D54
	mov r0, #1
	b _08011D56
	.byte 0x00
	.byte 0x00
_08011D44:
	.4byte gFileSelectMenuSel
_08011D48:
	.4byte gSaveFilesPtr
_08011D4C:
	.4byte 0x00000313
_08011D50:
	.4byte gUnknown_080A8668
_08011D54:
	mov r0, #0
_08011D56:
	add r4, r0, #0
	cmp r4, #0
	beq _08011D88
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, _08011D80  @ =gPrevFileSelectMenuSel
	ldr r1, _08011D84  @ =gFileSelectMenuSel
	ldrb r0, [r1]
	strb r0, [r2]
	sub r0, r0, #1
	strb r0, [r1]
	b _08011EB6
_08011D80:
	.4byte gPrevFileSelectMenuSel
_08011D84:
	.4byte gFileSelectMenuSel
_08011D88:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, _08011DA8  @ =gPrevFileSelectMenuSel
	ldr r1, _08011DAC  @ =gFileSelectMenuSel
	ldrb r0, [r1]
	strb r0, [r2]
	strb r4, [r1]
	b _08011E80
_08011DA8:
	.4byte gPrevFileSelectMenuSel
_08011DAC:
	.4byte gFileSelectMenuSel
_08011DB0:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08011DD0  @ =gPrevFileSelectMenuSel
	ldrb r0, [r5]
	strb r0, [r1]
	strb r4, [r5]
	b _08011E80
	.byte 0x00
	.byte 0x00
_08011DD0:
	.4byte gPrevFileSelectMenuSel
_08011DD4:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08011EB6
	ldr r4, _08011E1C  @ =gFileSelectMenuSel
	ldrb r1, [r4]
	cmp r1, #7
	bhi _08011E94
	sub r1, r1, #5
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _08011E20  @ =gSaveFilesPtr
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r2, [r2]
	add r2, r2, r0
	cmp r1, #3
	beq _08011E2C
	ldr r1, _08011E24  @ =0x00000313
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08011E2C
	ldr r1, _08011E28  @ =gUnknown_080A8668
	ldrb r0, [r2, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08011E2C
	mov r0, #1
	b _08011E2E
	.byte 0x00
	.byte 0x00
_08011E1C:
	.4byte gFileSelectMenuSel
_08011E20:
	.4byte gSaveFilesPtr
_08011E24:
	.4byte 0x00000313
_08011E28:
	.4byte gUnknown_080A8668
_08011E2C:
	mov r0, #0
_08011E2E:
	add r4, r0, #0
	cmp r4, #0
	beq _08011E60
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, _08011E58  @ =gPrevFileSelectMenuSel
	ldr r1, _08011E5C  @ =gFileSelectMenuSel
	ldrb r0, [r1]
	strb r0, [r2]
	add r0, r0, #1
	strb r0, [r1]
	b _08011EB6
_08011E58:
	.4byte gPrevFileSelectMenuSel
_08011E5C:
	.4byte gFileSelectMenuSel
_08011E60:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, _08011E88  @ =gPrevFileSelectMenuSel
	ldr r1, _08011E8C  @ =gFileSelectMenuSel
	ldrb r0, [r1]
	strb r0, [r2]
	mov r0, #5
_08011E7E:
	strb r0, [r1]
_08011E80:
	ldr r0, _08011E90  @ =gUnknown_0300005B
	strb r4, [r0]
	b _08011EB6
	.byte 0x00
	.byte 0x00
_08011E88:
	.4byte gPrevFileSelectMenuSel
_08011E8C:
	.4byte gFileSelectMenuSel
_08011E90:
	.4byte gUnknown_0300005B
_08011E94:
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08011F20  @ =gPrevFileSelectMenuSel
	ldrb r0, [r4]
	strb r0, [r1]
	mov r0, #5
	strb r0, [r4]
	ldr r0, _08011F24  @ =gUnknown_0300005B
	strb r5, [r0]
_08011EB6:
	ldr r0, _08011F28  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08011ED8
	mov r0, #0
	str r0, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08011ED8:
	bl sub_08034004
	lsl r0, r0, #24
	cmp r0, #0
	beq _08011F4C
	mov r4, #0
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _08011F2C  @ =gLevelType
	mov r1, #2
	strb r1, [r0]
	ldr r0, _08011F30  @ =gFileSelectMenuSel
	ldrb r2, [r0]
	cmp r2, #3
	bne _08011F34
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #29
	mov r1, #1
	bl change_main_state
	b _08011F4C
_08011F20:
	.4byte gPrevFileSelectMenuSel
_08011F24:
	.4byte gUnknown_0300005B
_08011F28:
	.4byte gSomeKeys_030012E8
_08011F2C:
	.4byte gLevelType
_08011F30:
	.4byte gFileSelectMenuSel
_08011F34:
	ldr r0, _08011F54  @ =gSelectedSaveFileNumPtr
	ldr r1, [r0]
	sub r0, r2, #6
	strb r0, [r1]
	ldr r0, _08011F58  @ =gCurrentWorld
	strb r4, [r0]
	ldr r0, _08011F5C  @ =gNextLevelID
	strb r4, [r0]
	mov r0, #9
	mov r1, #1
	bl change_main_state
_08011F4C:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08011F54:
	.4byte gSelectedSaveFileNumPtr
_08011F58:
	.4byte gCurrentWorld
_08011F5C:
	.4byte gNextLevelID
	THUMB_FUNC_END sub_08011CB4

	THUMB_FUNC_START sub_08011F60
sub_08011F60: @ 0x08011F60
	push {r4-r6,lr}
	sub sp, sp, #44
	ldr r1, _08011FA0  @ =gBGLayerOffsets 
	mov r6, #0
	mov r0, #255
	lsl r0, r0, #8
	strh r0, [r1, #6]
	bl sub_08034004
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _08012004
	ldr r0, _08011FA4  @ =gFileSelectMenuSel
	ldrb r2, [r0]
	cmp r2, #2
	bhi _08011FB2
	ldr r1, _08011FA8  @ =gSaveFilesPtr
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	ldrb r1, [r1, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08011FAC
	mov r0, #1
	b _08011FAE
_08011FA0:
	.4byte gBGLayerOffsets 
_08011FA4:
	.4byte gFileSelectMenuSel
_08011FA8:
	.4byte gSaveFilesPtr
_08011FAC:
	mov r0, #0
_08011FAE:
	add r1, r0, #0
	b _08011FB8
_08011FB2:
	ldr r0, _08011FD4  @ =gUnknown_0807CA94
	ldr r0, [r0]
	ldr r1, [r0]
_08011FB8:
	cmp r1, #0
	bne _08011FD8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08012224
	.byte 0x00
	.byte 0x00
_08011FD4:
	.4byte gUnknown_0807CA94
_08011FD8:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08011FFC  @ =gUnknown_0300005B
	mov r0, #3
	strb r0, [r1]
	ldr r0, _08012000  @ =0x0300005C
	strb r4, [r0]
	b _08012224
	.byte 0x00
	.byte 0x00
_08011FFC:
	.4byte gUnknown_0300005B
_08012000:
	.4byte 0x0300005C
_08012004:
	ldr r5, _08012040  @ =gSomeKeys_030012E8
	ldrh r2, [r5]
	mov r0, #2
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08012050
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, _08012044  @ =gPrevFileSelectMenuSel
	ldr r1, _08012048  @ =gFileSelectMenuSel
	ldrb r0, [r1]
	strb r0, [r2]
	strb r6, [r1]
	ldr r0, _0801204C  @ =gUnknown_0300005B
	strb r6, [r0]
	mov r0, #0
	bl sub_0801168C
	b _08012224
	.byte 0x00
	.byte 0x00
_08012040:
	.4byte gSomeKeys_030012E8
_08012044:
	.4byte gPrevFileSelectMenuSel
_08012048:
	.4byte gFileSelectMenuSel
_0801204C:
	.4byte gUnknown_0300005B
_08012050:
	mov r0, #192
	and r0, r0, r2
	cmp r0, #0
	beq _0801206C
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0801206C:
	ldrh r1, [r5]
	mov r0, #16
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	beq _08012142
	ldr r1, _080120A8  @ =gPrevFileSelectMenuSel
	ldr r5, _080120AC  @ =gFileSelectMenuSel
	ldrb r0, [r5]
	strb r0, [r1]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldrb r1, [r5]
	ldr r0, _080120B0  @ =gUnknown_0300005D
	ldrb r0, [r0]
	add r0, r0, #2
	cmp r1, r0
	bge _080120B4
	add r0, r1, #1
	strb r0, [r5]
	b _080120B6
_080120A8:
	.4byte gPrevFileSelectMenuSel
_080120AC:
	.4byte gFileSelectMenuSel
_080120B0:
	.4byte gUnknown_0300005D
_080120B4:
	strb r6, [r5]
_080120B6:
	ldr r0, _080120C4  @ =gUnknown_0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _080120CC
	ldr r1, _080120C8  @ =gUnknown_0807638C
	b _080120CE
	.byte 0x00
	.byte 0x00
_080120C4:
	.4byte gUnknown_0300005D
_080120C8:
	.4byte gUnknown_0807638C
_080120CC:
	ldr r1, _08012120  @ =gUnknown_080763AC
_080120CE:
	add r0, sp, #12
	mov r2, #32
	bl memcpy
	ldr r1, _08012124  @ =gBGLayerOffsets 
	ldr r0, _08012128  @ =gFileSelectMenuSel
	ldrb r0, [r0]
	add r0, sp, r0
	add r0, r0, #12
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	neg r0, r0
	strh r0, [r1, #8]
	ldr r0, _08012128  @ =gFileSelectMenuSel
	ldrb r2, [r0]
	ldr r1, _0801212C  @ =gSaveFilesPtr
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r3, r1, r0
	cmp r2, #3
	beq _08012138
	ldr r1, _08012130  @ =0x00000313
	add r0, r3, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08012138
	ldr r1, _08012134  @ =gUnknown_080A8668
	ldrb r0, [r3, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08012138
	mov r0, #1
	b _0801213A
	.byte 0x00
	.byte 0x00
_08012120:
	.4byte gUnknown_080763AC
_08012124:
	.4byte gBGLayerOffsets 
_08012128:
	.4byte gFileSelectMenuSel
_0801212C:
	.4byte gSaveFilesPtr
_08012130:
	.4byte 0x00000313
_08012134:
	.4byte gUnknown_080A8668
_08012138:
	mov r0, #0
_0801213A:
	add r1, r0, #0
	cmp r1, #0
	bne _08012210
	b _08012220
_08012142:
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08012224
	ldr r0, _08012174  @ =gPrevFileSelectMenuSel
	ldr r4, _08012178  @ =gFileSelectMenuSel
	ldrb r1, [r4]
	strb r1, [r0]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldrb r0, [r4]
	cmp r0, #0
	beq _08012180
	sub r0, r0, #1
	strb r0, [r4]
	ldr r1, _0801217C  @ =gUnknown_0300005D
	b _08012188
_08012174:
	.4byte gPrevFileSelectMenuSel
_08012178:
	.4byte gFileSelectMenuSel
_0801217C:
	.4byte gUnknown_0300005D
_08012180:
	ldr r1, _08012194  @ =gUnknown_0300005D
	ldrb r0, [r1]
	add r0, r0, #2
	strb r0, [r4]
_08012188:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801219C
	ldr r1, _08012198  @ =gUnknown_0807638C
	b _0801219E
	.byte 0x00
	.byte 0x00
_08012194:
	.4byte gUnknown_0300005D
_08012198:
	.4byte gUnknown_0807638C
_0801219C:
	ldr r1, _080121F0  @ =gUnknown_080763AC
_0801219E:
	add r0, sp, #12
	mov r2, #32
	bl memcpy
	ldr r1, _080121F4  @ =gBGLayerOffsets 
	ldr r0, _080121F8  @ =gFileSelectMenuSel
	ldrb r0, [r0]
	add r0, sp, r0
	add r0, r0, #12
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	neg r0, r0
	strh r0, [r1, #8]
	ldr r0, _080121F8  @ =gFileSelectMenuSel
	ldrb r2, [r0]
	ldr r1, _080121FC  @ =gSaveFilesPtr
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r3, r1, r0
	cmp r2, #3
	beq _08012208
	ldr r1, _08012200  @ =0x00000313
	add r0, r3, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08012208
	ldr r1, _08012204  @ =gUnknown_080A8668
	ldrb r0, [r3, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08012208
	mov r0, #1
	b _0801220A
	.byte 0x00
	.byte 0x00
_080121F0:
	.4byte gUnknown_080763AC
_080121F4:
	.4byte gBGLayerOffsets 
_080121F8:
	.4byte gFileSelectMenuSel
_080121FC:
	.4byte gSaveFilesPtr
_08012200:
	.4byte 0x00000313
_08012204:
	.4byte gUnknown_080A8668
_08012208:
	mov r0, #0
_0801220A:
	add r1, r0, #0
	cmp r1, #0
	beq _08012220
_08012210:
	ldr r1, _0801221C  @ =gBGLayerOffsets 
	mov r0, #255
	lsl r0, r0, #8
	strh r0, [r1, #10]
	b _08012224
	.byte 0x00
	.byte 0x00
_0801221C:
	.4byte gBGLayerOffsets 
_08012220:
	ldr r0, _0801222C  @ =gBGLayerOffsets 
	strh r1, [r0, #10]
_08012224:
	add sp, sp, #44
	pop {r4-r6}
	pop {r0}
	bx r0
_0801222C:
	.4byte gBGLayerOffsets 
	THUMB_FUNC_END sub_08011F60

	THUMB_FUNC_START sub_08012230
sub_08012230: @ 0x08012230
	push {r4,r5,lr}
	sub sp, sp, #16
	ldr r1, _080122C4  @ =gBGLayerOffsets 
	mov r5, #0
	mov r4, #0
	mov r0, #255
	lsl r0, r0, #8
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	bl sub_08034004
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _08012308
	ldr r0, _080122C8  @ =0x0300005C
	ldrb r1, [r0]
	cmp r1, #0
	beq _08012314
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _080122CC  @ =gFileSelectMenuSel
	ldrb r1, [r0]
	cmp r1, #2
	bhi _080122E0
	add r0, sp, #12
	strh r4, [r0]
	ldr r5, _080122D0  @ =gSaveFilesPtr
	lsl r4, r1, #3
	sub r4, r4, r1
	lsl r4, r4, #5
	sub r4, r4, r1
	lsl r4, r4, #2
	ldr r1, [r5]
	add r1, r1, r4
	ldr r2, _080122D4  @ =0x010001BE
	bl CpuSet
	ldr r0, [r5]
	add r0, r0, r4
	bl init_level_highscores_08010DEC
	ldr r0, _080122D8  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _080122A0
	bl sub_0802A164
_080122A0:
	mov r4, #0
	ldr r5, _080122DC  @ =gUnknown_03000066
_080122A4:
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080111B4
	lsl r1, r4, #16
	asr r1, r1, #16
	add r2, r1, r5
	strb r0, [r2]
	add r1, r1, #1
	lsl r1, r1, #16
	lsr r4, r1, #16
	asr r1, r1, #16
	cmp r1, #2
	ble _080122A4
	b _080122E8
	.byte 0x00
	.byte 0x00
_080122C4:
	.4byte gBGLayerOffsets 
_080122C8:
	.4byte 0x0300005C
_080122CC:
	.4byte gFileSelectMenuSel
_080122D0:
	.4byte gSaveFilesPtr
_080122D4:
	.4byte 0x010001BE
_080122D8:
	.4byte gUnknown_03000B50
_080122DC:
	.4byte gUnknown_03000066
_080122E0:
	bl sub_0802F06C
	bl sub_0802F1D4
_080122E8:
	ldr r1, _080122FC  @ =gPrevFileSelectMenuSel
	ldr r2, _08012300  @ =gFileSelectMenuSel
	ldrb r0, [r2]
	strb r0, [r1]
	mov r1, #0
	strb r1, [r2]
	ldr r0, _08012304  @ =gUnknown_0300005B
	strb r1, [r0]
	b _08012336
	.byte 0x00
	.byte 0x00
_080122FC:
	.4byte gPrevFileSelectMenuSel
_08012300:
	.4byte gFileSelectMenuSel
_08012304:
	.4byte gUnknown_0300005B
_08012308:
	ldr r0, _08012340  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _08012350
_08012314:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, _08012344  @ =gPrevFileSelectMenuSel
	ldr r1, _08012348  @ =gFileSelectMenuSel
	ldrb r0, [r1]
	strb r0, [r2]
	strb r5, [r1]
	ldr r0, _0801234C  @ =gUnknown_0300005B
	strb r5, [r0]
_08012336:
	mov r0, #0
	bl sub_0801168C
	b _080123AC
	.byte 0x00
	.byte 0x00
_08012340:
	.4byte gSomeKeys_030012E8
_08012344:
	.4byte gPrevFileSelectMenuSel
_08012348:
	.4byte gFileSelectMenuSel
_0801234C:
	.4byte gUnknown_0300005B
_08012350:
	mov r0, #16
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _08012384
	ldr r2, _08012380  @ =0x0300005C
	ldrb r0, [r2]
	add r1, r0, #0
	cmp r1, #0
	bne _080123AC
	add r0, r0, #1
	strb r0, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _080123AC
_08012380:
	.4byte 0x0300005C
_08012384:
	mov r0, #32
	and r0, r0, r2
	cmp r0, #0
	beq _080123AC
	ldr r2, _080123B4  @ =0x0300005C
	ldrb r0, [r2]
	cmp r0, #0
	beq _080123AC
	sub r0, r0, #1
	strb r0, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080123AC:
	add sp, sp, #16
	pop {r4,r5}
	pop {r0}
	bx r0
_080123B4:
	.4byte 0x0300005C
	THUMB_FUNC_END sub_08012230

	THUMB_FUNC_START main_menu_main
main_menu_main: @ 0x080123B8
	push {r4,r5,lr}
	sub sp, sp, #12
	bl process_input
	bl sub_08029C20
	ldr r0, _080123EC  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _080123D0
	bl sub_0801B310
_080123D0:
	ldr r0, _080123F0  @ =gUnknown_03000064
	ldrb r0, [r0]
	cmp r0, #20
	bls _08012418
	ldr r0, _080123F4  @ =gUnknown_0300005B
	ldrb r0, [r0]
	cmp r0, #1
	beq _08012408
	cmp r0, #1
	bgt _080123F8
	cmp r0, #0
	beq _08012402
	b _08012418
	.byte 0x00
	.byte 0x00
_080123EC:
	.4byte gUnknown_03000C28
_080123F0:
	.4byte gUnknown_03000064
_080123F4:
	.4byte gUnknown_0300005B
_080123F8:
	cmp r0, #2
	beq _0801240E
	cmp r0, #3
	beq _08012414
	b _08012418
_08012402:
	bl pick_file
	b _08012418
_08012408:
	bl sub_08011CB4
	b _08012418
_0801240E:
	bl sub_08011F60
	b _08012418
_08012414:
	bl sub_08012230
_08012418:
	ldr r4, _08012494  @ =gUnknown_0300005D
	ldrb r5, [r4]
	mov r0, #0
	bl sub_08038130
	ldr r0, _08012498  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012450
	mov r0, #0
	bl sub_08038228
	cmp r0, #0
	bne _0801243E
	ldr r0, _0801249C  @ =gUnknown_0807CA94
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _08012440
_0801243E:
	mov r0, #1
_08012440:
	strb r0, [r4]
	ldr r0, _080124A0  @ =gUnknown_03000062
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012450
	ldr r1, _08012494  @ =gUnknown_0300005D
	mov r0, #1
	strb r0, [r1]
_08012450:
	ldr r0, _08012494  @ =gUnknown_0300005D
	ldrb r1, [r0]
	cmp r5, r1
	beq _080124CC
	cmp r1, #0
	beq _080124AC
	ldr r0, _080124A4  @ =0x03000063
	ldrb r1, [r0]
	add r2, r0, #0
	cmp r1, #0
	bne _08012476
	ldr r0, _0801249C  @ =gUnknown_0807CA94
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	bne _08012476
	ldr r1, _080124A8  @ =gFileSelectMenuSel
	mov r0, #3
	strb r0, [r1]
_08012476:
	mov r0, #1
	strb r0, [r2]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _080124CC
	.byte 0x00
	.byte 0x00
_08012494:
	.4byte gUnknown_0300005D
_08012498:
	.4byte gUnknown_03000C28
_0801249C:
	.4byte gUnknown_0807CA94
_080124A0:
	.4byte gUnknown_03000062
_080124A4:
	.4byte 0x03000063
_080124A8:
	.4byte gFileSelectMenuSel
_080124AC:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08012548  @ =gFileSelectMenuSel
	ldrb r0, [r1]
	cmp r0, #3
	bne _080124CC
	sub r0, r0, #1
	strb r0, [r1]
_080124CC:
	ldr r1, _0801254C  @ =gUnknown_03000064
	ldrb r0, [r1]
	cmp r0, #20
	bhi _080124D8
	add r0, r0, #1
	strb r0, [r1]
_080124D8:
	ldr r1, _08012550  @ =gUnknown_0300005E
	ldr r2, _08012554  @ =gUnknown_0300005F
	ldr r3, _08012558  @ =gUnknown_085FEFE4
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _0801250C
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #18
	blt _080124FC
	mov r0, #0
	strb r0, [r1]
_080124FC:
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1, #1]
	strb r0, [r2]
_0801250C:
	ldr r1, _0801255C  @ =gUnknown_03000060
	ldr r2, _08012560  @ =gUnknown_03000061
	ldr r3, _08012564  @ =gUnknown_08617030
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _08012540
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	blt _08012530
	mov r0, #0
	strb r0, [r1]
_08012530:
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1, #1]
	strb r0, [r2]
_08012540:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08012548:
	.4byte gFileSelectMenuSel
_0801254C:
	.4byte gUnknown_03000064
_08012550:
	.4byte gUnknown_0300005E
_08012554:
	.4byte gUnknown_0300005F
_08012558:
	.4byte gUnknown_085FEFE4
_0801255C:
	.4byte gUnknown_03000060
_08012560:
	.4byte gUnknown_03000061
_08012564:
	.4byte gUnknown_08617030
	THUMB_FUNC_END main_menu_main

	THUMB_FUNC_START sub_08012568
sub_08012568: @ 0x08012568
	push {r4-r7,lr}
	ldr r0, _08012578  @ =gUnknown_0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012580
	ldr r2, _0801257C  @ =gUnknown_080785E0
	b _08012582
	.byte 0x00
	.byte 0x00
_08012578:
	.4byte gUnknown_0300005D
_0801257C:
	.4byte gUnknown_080785E0
_08012580:
	ldr r2, _080125B8  @ =gUnknown_080785B0
_08012582:
	ldr r3, _080125BC  @ =gFileSelectMenuSel
	ldrb r0, [r3]
	lsl r0, r0, #3
	add r1, r0, r2
	ldrh r7, [r1]
	add r2, r2, #4
	add r0, r0, r2
	ldrh r0, [r0]
	mov r12, r0
	ldrb r2, [r3]
	ldr r1, _080125C0  @ =gSaveFilesPtr
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	cmp r2, #2
	bhi _080125C4
	ldrb r1, [r1, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080125C4
	mov r0, #1
	b _080125C6
_080125B8:
	.4byte gUnknown_080785B0
_080125BC:
	.4byte gFileSelectMenuSel
_080125C0:
	.4byte gSaveFilesPtr
_080125C4:
	mov r0, #0
_080125C6:
	ldr r1, _08012658  @ =REG_DMA3SAD
	ldr r0, _0801265C  @ =gUnknown_08606A1C
	str r0, [r1]
	ldr r5, _08012660  @ =0x03000040
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r6, _08012664  @ =gOamBuffer
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08012668  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r0, _0801266C  @ =0x03000046
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _08012670  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _08012674  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #1]
	mov r4, #13
	neg r4, r4
	add r0, r4, #0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	lsl r1, r7, #16
	asr r1, r1, #16
	sub r1, r1, #8
	ldr r3, _08012678  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0801267C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, r12
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r0, [r1, #5]
	and r4, r4, r0
	mov r0, #8
	orr r4, r4, r0
	strb r4, [r1, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	pop {r4-r7}
	pop {r0}
	bx r0
_08012658:
	.4byte REG_DMA3SAD
_0801265C:
	.4byte gUnknown_08606A1C
_08012660:
	.4byte 0x03000040
_08012664:
	.4byte gOamBuffer
_08012668:
	.4byte 0x84000002
_0801266C:
	.4byte 0x03000046
_08012670:
	.4byte 0x000003FF
_08012674:
	.4byte 0xFFFFFC00
_08012678:
	.4byte 0x000001FF
_0801267C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08012568

	THUMB_FUNC_START sub_08012680
sub_08012680: @ 0x08012680
	push {r4-r7,lr}
	ldr r0, _08012690  @ =gUnknown_0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012698
	ldr r2, _08012694  @ =gUnknown_080785E0
	b _0801269A
	.byte 0x00
	.byte 0x00
_08012690:
	.4byte gUnknown_0300005D
_08012694:
	.4byte gUnknown_080785E0
_08012698:
	ldr r2, _080126D0  @ =gUnknown_080785B0
_0801269A:
	ldr r3, _080126D4  @ =gFileSelectMenuSel
	ldrb r0, [r3]
	lsl r0, r0, #3
	add r1, r0, r2
	ldrh r7, [r1]
	add r2, r2, #4
	add r0, r0, r2
	ldrh r0, [r0]
	mov r12, r0
	ldrb r2, [r3]
	ldr r1, _080126D8  @ =gSaveFilesPtr
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	cmp r2, #2
	bhi _080126DC
	ldrb r1, [r1, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080126DC
	mov r0, #1
	b _080126DE
_080126D0:
	.4byte gUnknown_080785B0
_080126D4:
	.4byte gFileSelectMenuSel
_080126D8:
	.4byte gSaveFilesPtr
_080126DC:
	mov r0, #0
_080126DE:
	ldr r1, _08012770  @ =REG_DMA3SAD
	ldr r0, _08012774  @ =gUnknown_085FB7DC
	str r0, [r1]
	ldr r5, _08012778  @ =0x03000040
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r6, _0801277C  @ =gOamBuffer
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08012780  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r0, _08012784  @ =0x03000048
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _08012788  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _0801278C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #1]
	mov r4, #13
	neg r4, r4
	add r0, r4, #0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	lsl r1, r7, #16
	asr r1, r1, #16
	sub r1, r1, #8
	ldr r3, _08012790  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08012794  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, r12
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r0, [r1, #5]
	and r4, r4, r0
	mov r0, #8
	orr r4, r4, r0
	strb r4, [r1, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	pop {r4-r7}
	pop {r0}
	bx r0
_08012770:
	.4byte REG_DMA3SAD
_08012774:
	.4byte gUnknown_085FB7DC
_08012778:
	.4byte 0x03000040
_0801277C:
	.4byte gOamBuffer
_08012780:
	.4byte 0x84000002
_08012784:
	.4byte 0x03000048
_08012788:
	.4byte 0x000003FF
_0801278C:
	.4byte 0xFFFFFC00
_08012790:
	.4byte 0x000001FF
_08012794:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08012680

	THUMB_FUNC_START sub_08012798
sub_08012798: @ 0x08012798
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #8
	ldr r1, _080127B8  @ =gUnknown_080763CC
	mov r0, sp
	mov r2, #6
	bl memcpy
	ldr r0, _080127BC  @ =gUnknown_0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _080127C4
	ldr r2, _080127C0  @ =gUnknown_08078628
	b _080127C6
	.byte 0x00
	.byte 0x00
_080127B8:
	.4byte gUnknown_080763CC
_080127BC:
	.4byte gUnknown_0300005D
_080127C0:
	.4byte gUnknown_08078628
_080127C4:
	ldr r2, _08012808  @ =gUnknown_08078610
_080127C6:
	ldr r3, _0801280C  @ =gFileSelectMenuSel
	ldrb r0, [r3]
	sub r0, r0, #6
	lsl r0, r0, #3
	add r1, r0, r2
	ldrh r7, [r1]
	add r2, r2, #4
	add r0, r0, r2
	ldrh r0, [r0]
	mov r12, r0
	ldrb r2, [r3]
	sub r0, r2, #6
	add r0, sp, r0
	ldrb r0, [r0]
	mov r8, r0
	ldr r1, _08012810  @ =gSaveFilesPtr
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	cmp r2, #2
	bhi _08012814
	ldrb r1, [r1, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08012814
	mov r0, #1
	b _08012816
	.byte 0x00
	.byte 0x00
_08012808:
	.4byte gUnknown_08078610
_0801280C:
	.4byte gFileSelectMenuSel
_08012810:
	.4byte gSaveFilesPtr
_08012814:
	mov r0, #0
_08012816:
	ldr r1, _080128C4  @ =REG_DMA3SAD
	ldr r0, _080128C8  @ =gUnknown_085FF26C
	str r0, [r1]
	ldr r5, _080128CC  @ =0x03000040
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r6, _080128D0  @ =gOamBuffer
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _080128D4  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r0, _080128D8  @ =0x0300004C
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _080128DC  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _080128E0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #1]
	mov r4, #13
	neg r4, r4
	add r0, r4, #0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	lsl r1, r7, #16
	asr r1, r1, #16
	sub r1, r1, #8
	ldr r3, _080128E4  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _080128E8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, r12
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	mov r0, r8
	lsl r3, r0, #4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r1, #5]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r0, [r1, #5]
	and r4, r4, r0
	mov r0, #8
	orr r4, r4, r0
	strb r4, [r1, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add sp, sp, #8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080128C4:
	.4byte REG_DMA3SAD
_080128C8:
	.4byte gUnknown_085FF26C
_080128CC:
	.4byte 0x03000040
_080128D0:
	.4byte gOamBuffer
_080128D4:
	.4byte 0x84000002
_080128D8:
	.4byte 0x0300004C
_080128DC:
	.4byte 0x000003FF
_080128E0:
	.4byte 0xFFFFFC00
_080128E4:
	.4byte 0x000001FF
_080128E8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08012798

	THUMB_FUNC_START sub_080128EC
sub_080128EC: @ 0x080128EC
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r1, _08012990  @ =gUnknown_080763D2
	mov r0, sp
	mov r2, #4
	bl memcpy
	ldr r1, _08012994  @ =REG_DMA3SAD
	ldr r0, _08012998  @ =gUnknown_0860FDCC
	str r0, [r1]
	ldr r5, _0801299C  @ =0x03000040
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r6, _080129A0  @ =gOamBuffer
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _080129A4  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r0, _080129A8  @ =0x0300004A
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _080129AC  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _080129B0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #1]
	mov r4, #13
	neg r4, r4
	add r0, r4, #0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldr r0, _080129B4  @ =0x0300005C
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, sp, r0
	mov r3, #0
	ldrsh r1, [r0, r3]
	ldr r3, _080129B8  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _080129BC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, #81
	strb r1, [r0]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrb r1, [r0, #5]
	and r4, r4, r1
	strb r4, [r0, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08012990:
	.4byte gUnknown_080763D2
_08012994:
	.4byte REG_DMA3SAD
_08012998:
	.4byte gUnknown_0860FDCC
_0801299C:
	.4byte 0x03000040
_080129A0:
	.4byte gOamBuffer
_080129A4:
	.4byte 0x84000002
_080129A8:
	.4byte 0x0300004A
_080129AC:
	.4byte 0x000003FF
_080129B0:
	.4byte 0xFFFFFC00
_080129B4:
	.4byte 0x0300005C
_080129B8:
	.4byte 0x000001FF
_080129BC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080128EC

	THUMB_FUNC_START sub_080129C0
sub_080129C0: @ 0x080129C0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	ldr r1, _080129E4  @ =gUnknown_080763CC
	mov r0, sp
	mov r2, #6
	bl memcpy
	ldr r0, _080129E8  @ =gUnknown_0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _080129F0
	ldr r2, _080129EC  @ =gUnknown_080785E0
	b _080129F2
	.byte 0x00
	.byte 0x00
_080129E4:
	.4byte gUnknown_080763CC
_080129E8:
	.4byte gUnknown_0300005D
_080129EC:
	.4byte gUnknown_080785E0
_080129F0:
	ldr r2, _08012A30  @ =gUnknown_080785B0
_080129F2:
	ldr r3, _08012A34  @ =gFileSelectMenuSel
	ldrb r0, [r3]
	lsl r0, r0, #3
	add r1, r0, r2
	ldrh r5, [r1]
	add r2, r2, #4
	add r0, r0, r2
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldrb r1, [r3]
	mov r2, sp
	add r0, r2, r1
	ldrb r0, [r0]
	str r0, [sp, #12]
	ldr r2, _08012A38  @ =gSaveFilesPtr
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r2, [r2]
	add r2, r2, r0
	cmp r1, #2
	bhi _08012A3C
	ldrb r1, [r2, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08012A3C
	mov r0, #1
	b _08012A3E
_08012A30:
	.4byte gUnknown_080785B0
_08012A34:
	.4byte gFileSelectMenuSel
_08012A38:
	.4byte gSaveFilesPtr
_08012A3C:
	mov r0, #0
_08012A3E:
	cmp r0, #0
	bne _08012A44
	b _08012BA0
_08012A44:
	ldr r0, _08012B70  @ =REG_DMA3SAD
	mov r12, r0
	ldr r0, _08012B74  @ =gUnknown_0860C33C
	mov r1, r12
	str r0, [r1]
	ldr r3, _08012B78  @ =0x03000040
	ldrh r0, [r3]
	lsl r0, r0, #3
	ldr r2, _08012B7C  @ =gOamBuffer
	mov r9, r2
	add r0, r0, r9
	str r0, [r1, #4]
	ldr r0, _08012B80  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r3]
	lsl r2, r2, #3
	add r2, r2, r9
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	ldr r0, _08012B84  @ =0x03000042
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r0, _08012B88  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08012B8C  @ =0xFFFFFC00
	mov r10, r0
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #1]
	mov r7, #13
	neg r7, r7
	add r0, r7, #0
	and r0, r0, r2
	mov r2, #4
	orr r0, r0, r2
	strb r0, [r1, #1]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	lsl r5, r5, #16
	mov r8, r5
	mov r0, r8
	asr r0, r0, #16
	mov r8, r0
	sub r2, r2, #12
	add r8, r8, r2
	ldr r2, _08012B90  @ =0x000001FF
	add r0, r2, #0
	mov r2, r8
	and r2, r2, r0
	mov r8, r2
	ldrh r2, [r1, #2]
	ldr r6, _08012B94  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldr r1, [sp, #8]
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldr r0, [sp, #12]
	lsl r0, r0, #4
	str r0, [sp, #16]
	ldrb r2, [r1, #5]
	mov r5, #15
	add r0, r5, #0
	and r0, r0, r2
	ldr r2, [sp, #16]
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #5]
	add r0, r7, #0
	and r0, r0, r2
	mov r2, #8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldr r0, _08012B98  @ =gUnknown_0860A4AC
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	str r0, [r1, #4]
	ldr r2, _08012B80  @ =0x84000002
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrh r4, [r1, #4]
	lsl r0, r4, #22
	ldr r2, _08012B9C  @ =0x03000044
	lsr r0, r0, #22
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r2, _08012B88  @ =0x000003FF
	and r0, r0, r2
	mov r2, r10
	and r2, r2, r4
	orr r2, r2, r0
	strh r2, [r1, #4]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #1]
	add r0, r7, #0
	and r0, r0, r2
	mov r2, #4
	orr r0, r0, r2
	strb r0, [r1, #1]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldrh r1, [r0, #2]
	and r6, r6, r1
	mov r1, r8
	orr r6, r6, r1
	strh r6, [r0, #2]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldr r1, [sp, #8]
	add r1, r1, #56
	strb r1, [r0]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldrb r1, [r0, #5]
	and r5, r5, r1
	ldr r2, [sp, #16]
	b _08012CC8
_08012B70:
	.4byte REG_DMA3SAD
_08012B74:
	.4byte gUnknown_0860C33C
_08012B78:
	.4byte 0x03000040
_08012B7C:
	.4byte gOamBuffer
_08012B80:
	.4byte 0x84000002
_08012B84:
	.4byte 0x03000042
_08012B88:
	.4byte 0x000003FF
_08012B8C:
	.4byte 0xFFFFFC00
_08012B90:
	.4byte 0x000001FF
_08012B94:
	.4byte 0xFFFFFE00
_08012B98:
	.4byte gUnknown_0860A4AC
_08012B9C:
	.4byte 0x03000044
_08012BA0:
	ldr r2, _08012CF4  @ =REG_DMA3SAD
	mov r12, r2
	ldr r0, _08012CF8  @ =gUnknown_08602F8C
	str r0, [r2]
	ldr r3, _08012CFC  @ =0x03000040
	ldrh r0, [r3]
	lsl r0, r0, #3
	ldr r1, _08012D00  @ =gOamBuffer
	mov r9, r1
	add r0, r0, r9
	str r0, [r2, #4]
	ldr r0, _08012D04  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r3]
	lsl r2, r2, #3
	add r2, r2, r9
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	ldr r0, _08012D08  @ =0x03000042
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r0, _08012D0C  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08012D10  @ =0xFFFFFC00
	mov r10, r0
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #1]
	mov r7, #13
	neg r7, r7
	add r0, r7, #0
	and r0, r0, r2
	mov r2, #4
	orr r0, r0, r2
	strb r0, [r1, #1]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	lsl r5, r5, #16
	mov r8, r5
	mov r0, r8
	asr r0, r0, #16
	mov r8, r0
	sub r2, r2, #12
	add r8, r8, r2
	ldr r2, _08012D14  @ =0x000001FF
	add r0, r2, #0
	mov r2, r8
	and r2, r2, r0
	mov r8, r2
	ldrh r2, [r1, #2]
	ldr r6, _08012D18  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldr r1, [sp, #8]
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldr r0, [sp, #12]
	lsl r0, r0, #4
	str r0, [sp, #20]
	ldrb r2, [r1, #5]
	mov r5, #15
	add r0, r5, #0
	and r0, r0, r2
	ldr r2, [sp, #20]
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #5]
	add r0, r7, #0
	and r0, r0, r2
	mov r2, #8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldr r0, _08012D1C  @ =gUnknown_086010FC
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	str r0, [r1, #4]
	ldr r2, _08012D04  @ =0x84000002
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrh r4, [r1, #4]
	lsl r0, r4, #22
	ldr r2, _08012D20  @ =0x03000044
	lsr r0, r0, #22
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r2, _08012D0C  @ =0x000003FF
	and r0, r0, r2
	mov r2, r10
	and r2, r2, r4
	orr r2, r2, r0
	strh r2, [r1, #4]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #1]
	add r0, r7, #0
	and r0, r0, r2
	mov r2, #4
	orr r0, r0, r2
	strb r0, [r1, #1]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldrh r1, [r0, #2]
	and r6, r6, r1
	mov r1, r8
	orr r6, r6, r1
	strh r6, [r0, #2]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldr r1, [sp, #8]
	add r1, r1, #56
	strb r1, [r0]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldrb r1, [r0, #5]
	and r5, r5, r1
	ldr r2, [sp, #20]
_08012CC8:
	orr r5, r5, r2
	strb r5, [r0, #5]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldrb r1, [r0, #5]
	add r2, r7, #0
	and r2, r2, r1
	mov r1, #8
	orr r2, r2, r1
	strb r2, [r0, #5]
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08012CF4:
	.4byte REG_DMA3SAD
_08012CF8:
	.4byte gUnknown_08602F8C
_08012CFC:
	.4byte 0x03000040
_08012D00:
	.4byte gOamBuffer
_08012D04:
	.4byte 0x84000002
_08012D08:
	.4byte 0x03000042
_08012D0C:
	.4byte 0x000003FF
_08012D10:
	.4byte 0xFFFFFC00
_08012D14:
	.4byte 0x000001FF
_08012D18:
	.4byte 0xFFFFFE00
_08012D1C:
	.4byte gUnknown_086010FC
_08012D20:
	.4byte 0x03000044
	THUMB_FUNC_END sub_080129C0

	THUMB_FUNC_START sub_08012D24
sub_08012D24: @ 0x08012D24
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, _08012DD0  @ =REG_DMA3SAD
	ldr r7, _08012DD4  @ =gUnknown_08615C04
	str r7, [r1]
	ldr r3, _08012DD8  @ =gUnknown_0300192C
	ldrh r0, [r3]
	ldr r2, _08012DDC  @ =OBJ_VRAM0
	mov r8, r2
	add r0, r0, r8
	str r0, [r1, #4]
	ldr r0, _08012DE0  @ =0x84000200
	mov r12, r0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08012DE4  @ =0x0300004E
	ldr r2, _08012DE8  @ =gUnknown_03001930
	mov r10, r2
	ldrh r4, [r2]
	strh r4, [r0]
	add r5, r4, #0
	add r5, r5, #64
	ldrh r6, [r3]
	mov r0, #128
	lsl r0, r0, #4
	mov r9, r0
	mov r0, r9
	add r2, r6, r0
	strh r2, [r3]
	ldr r0, _08012DEC  @ =gUnknown_08615BB4
	add r0, r0, #36
	ldrb r0, [r0]
	lsl r0, r0, #11
	add r0, r0, r7
	str r0, [r1]
	ldrh r0, [r3]
	add r0, r0, r8
	str r0, [r1, #4]
	mov r0, r12
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08012DF0  @ =0x03000050
	strh r5, [r0]
	add r5, r5, #64
	add r2, r2, r9
	strh r2, [r3]
	ldr r0, _08012DF4  @ =gUnknown_08614764
	str r0, [r1]
	ldrh r0, [r3]
	add r0, r0, r8
	str r0, [r1, #4]
	ldr r0, _08012DF8  @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08012DFC  @ =0x03000052
	strh r5, [r0]
	add r4, r4, #160
	mov r1, r10
	strh r4, [r1]
	mov r2, #160
	lsl r2, r2, #5
	add r6, r6, r2
	strh r6, [r3]
	ldr r4, _08012E00  @ =gFileSelectMenuSel
	ldrb r2, [r4]
	ldr r1, _08012E04  @ =gSaveFilesPtr
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	add r7, r3, #0
	cmp r2, #2
	bhi _08012E08
	ldrb r1, [r1, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08012E08
	mov r0, #1
	b _08012E0A
_08012DD0:
	.4byte REG_DMA3SAD
_08012DD4:
	.4byte gUnknown_08615C04
_08012DD8:
	.4byte gUnknown_0300192C
_08012DDC:
	.4byte OBJ_VRAM0
_08012DE0:
	.4byte 0x84000200
_08012DE4:
	.4byte 0x0300004E
_08012DE8:
	.4byte gUnknown_03001930
_08012DEC:
	.4byte gUnknown_08615BB4
_08012DF0:
	.4byte 0x03000050
_08012DF4:
	.4byte gUnknown_08614764
_08012DF8:
	.4byte 0x84000100
_08012DFC:
	.4byte 0x03000052
_08012E00:
	.4byte gFileSelectMenuSel
_08012E04:
	.4byte gSaveFilesPtr
_08012E08:
	mov r0, #0
_08012E0A:
	cmp r0, #0
	bne _08012E14
	ldrb r0, [r4]
	cmp r0, #3
	bne _08012E94
_08012E14:
	ldr r2, _08012E6C  @ =REG_DMA3SAD
	ldr r3, _08012E70  @ =gUnknown_0860C0B4
	ldr r6, _08012E74  @ =gUnknown_0300005E
	ldrb r1, [r6]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08012E78  @ =gUnknown_0860C344
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r3, _08012E7C  @ =OBJ_VRAM0
	mov r9, r3
	add r0, r0, r9
	str r0, [r2, #4]
	ldr r0, _08012E80  @ =0x84000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08012E84  @ =0x03000042
	ldr r1, _08012E88  @ =gUnknown_03001930
	ldrh r3, [r1]
	strh r3, [r0]
	mov r0, #64
	add r0, r0, r3
	mov r8, r0
	strh r0, [r1]
	ldrh r4, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r4, r1
	strh r0, [r7]
	ldr r5, _08012E8C  @ =gUnknown_0860A224
	ldrb r1, [r6]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _08012E90  @ =gUnknown_0860A4B4
	b _08012EEA
_08012E6C:
	.4byte REG_DMA3SAD
_08012E70:
	.4byte gUnknown_0860C0B4
_08012E74:
	.4byte gUnknown_0300005E
_08012E78:
	.4byte gUnknown_0860C344
_08012E7C:
	.4byte OBJ_VRAM0
_08012E80:
	.4byte 0x84000200
_08012E84:
	.4byte 0x03000042
_08012E88:
	.4byte gUnknown_03001930
_08012E8C:
	.4byte gUnknown_0860A224
_08012E90:
	.4byte gUnknown_0860A4B4
_08012E94:
	ldr r2, _0801307C  @ =REG_DMA3SAD
	ldr r3, _08013080  @ =gUnknown_08602D04
	ldr r6, _08013084  @ =gUnknown_0300005E
	ldrb r1, [r6]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08013088  @ =gUnknown_08602F94
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r3, _0801308C  @ =OBJ_VRAM0
	mov r9, r3
	add r0, r0, r9
	str r0, [r2, #4]
	ldr r0, _08013090  @ =0x84000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08013094  @ =0x03000042
	ldr r1, _08013098  @ =gUnknown_03001930
	ldrh r3, [r1]
	strh r3, [r0]
	mov r0, #64
	add r0, r0, r3
	mov r8, r0
	strh r0, [r1]
	ldrh r4, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r4, r1
	strh r0, [r7]
	ldr r5, _0801309C  @ =gUnknown_08600E74
	ldrb r1, [r6]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080130A0  @ =gUnknown_08601104
_08012EEA:
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	add r0, r0, r9
	str r0, [r2, #4]
	ldr r0, _080130A4  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080130A8  @ =0x03000044
	mov r2, r8
	strh r2, [r0]
	add r3, r3, #96
	ldr r0, _08013098  @ =gUnknown_03001930
	strh r3, [r0]
	mov r1, #192
	lsl r1, r1, #4
	add r4, r4, r1
	strh r4, [r7]
	ldr r2, _0801307C  @ =REG_DMA3SAD
	ldr r3, _080130AC  @ =gUnknown_08606794
	ldr r0, _08013084  @ =gUnknown_0300005E
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _080130B0  @ =gUnknown_08606A24
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r1, _0801308C  @ =OBJ_VRAM0
	mov r10, r1
	add r0, r0, r10
	str r0, [r2, #4]
	ldr r3, _08013090  @ =0x84000200
	mov r9, r3
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080130B4  @ =0x03000046
	ldr r1, _08013098  @ =gUnknown_03001930
	ldrh r1, [r1]
	mov r12, r1
	strh r1, [r0]
	mov r5, r12
	add r5, r5, #64
	ldr r3, _08013098  @ =gUnknown_03001930
	strh r5, [r3]
	ldrh r6, [r7]
	mov r0, #128
	lsl r0, r0, #4
	mov r8, r0
	mov r1, r8
	add r3, r6, r1
	strh r3, [r7]
	ldr r4, _080130B8  @ =gUnknown_085FB554
	ldr r0, _08013084  @ =gUnknown_0300005E
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _080130BC  @ =gUnknown_085FB7E4
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	add r0, r0, r10
	str r0, [r2, #4]
	mov r1, r9
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080130C0  @ =0x03000048
	strh r5, [r0]
	add r5, r5, #64
	ldr r0, _08013098  @ =gUnknown_03001930
	strh r5, [r0]
	add r3, r3, r8
	strh r3, [r7]
	ldr r3, _080130C4  @ =gUnknown_085FEFE4
	ldr r0, _08013084  @ =gUnknown_0300005E
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080130C8  @ =gUnknown_085FF274
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	add r0, r0, r10
	str r0, [r2, #4]
	ldr r1, _080130A4  @ =0x84000100
	mov r8, r1
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080130CC  @ =0x0300004C
	strh r5, [r0]
	mov r4, r12
	add r4, r4, #160
	ldr r3, _08013098  @ =gUnknown_03001930
	strh r4, [r3]
	mov r1, #160
	lsl r1, r1, #5
	add r0, r6, r1
	strh r0, [r7]
	ldr r3, _080130D0  @ =gUnknown_0860FB44
	ldr r0, _08013084  @ =gUnknown_0300005E
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080130D4  @ =gUnknown_0860FDD4
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	add r0, r0, r10
	str r0, [r2, #4]
	mov r1, r8
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080130D8  @ =0x0300004A
	strh r4, [r0]
	add r4, r4, #32
	ldr r3, _08013098  @ =gUnknown_03001930
	strh r4, [r3]
	mov r1, #192
	lsl r1, r1, #5
	add r0, r6, r1
	strh r0, [r7]
	ldr r3, _080130DC  @ =gUnknown_08617030
	ldr r0, _080130E0  @ =gUnknown_03000060
	mov r9, r0
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _080130E4  @ =gUnknown_08617080
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	add r0, r0, r10
	str r0, [r2, #4]
	ldr r1, _080130E8  @ =0x84000020
	mov r8, r1
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r5, _080130EC  @ =0x03000054
	strh r4, [r5]
	add r4, r4, #4
	ldr r3, _08013098  @ =gUnknown_03001930
	strh r4, [r3]
	mov r1, #196
	lsl r1, r1, #5
	add r0, r6, r1
	strh r0, [r7]
	ldr r3, _080130F0  @ =gUnknown_08618064
	mov r0, r9
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _080130F4  @ =gUnknown_086180B4
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	add r0, r0, r10
	str r0, [r2, #4]
	mov r1, r8
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	strh r4, [r5, #2]
	mov r0, r12
	add r0, r0, #200
	ldr r2, _08013098  @ =gUnknown_03001930
	strh r0, [r2]
	mov r3, #200
	lsl r3, r3, #5
	add r6, r6, r3
	strh r6, [r7]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801307C:
	.4byte REG_DMA3SAD
_08013080:
	.4byte gUnknown_08602D04
_08013084:
	.4byte gUnknown_0300005E
_08013088:
	.4byte gUnknown_08602F94
_0801308C:
	.4byte OBJ_VRAM0
_08013090:
	.4byte 0x84000200
_08013094:
	.4byte 0x03000042
_08013098:
	.4byte gUnknown_03001930
_0801309C:
	.4byte gUnknown_08600E74
_080130A0:
	.4byte gUnknown_08601104
_080130A4:
	.4byte 0x84000100
_080130A8:
	.4byte 0x03000044
_080130AC:
	.4byte gUnknown_08606794
_080130B0:
	.4byte gUnknown_08606A24
_080130B4:
	.4byte 0x03000046
_080130B8:
	.4byte gUnknown_085FB554
_080130BC:
	.4byte gUnknown_085FB7E4
_080130C0:
	.4byte 0x03000048
_080130C4:
	.4byte gUnknown_085FEFE4
_080130C8:
	.4byte gUnknown_085FF274
_080130CC:
	.4byte 0x0300004C
_080130D0:
	.4byte gUnknown_0860FB44
_080130D4:
	.4byte gUnknown_0860FDD4
_080130D8:
	.4byte 0x0300004A
_080130DC:
	.4byte gUnknown_08617030
_080130E0:
	.4byte gUnknown_03000060
_080130E4:
	.4byte gUnknown_08617080
_080130E8:
	.4byte 0x84000020
_080130EC:
	.4byte 0x03000054
_080130F0:
	.4byte gUnknown_08618064
_080130F4:
	.4byte gUnknown_086180B4
	THUMB_FUNC_END sub_08012D24

	THUMB_FUNC_START print_digits_080130F8
print_digits_080130F8: @ 0x080130F8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	ldr r4, [sp, #44]
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r9, r3
	lsl r4, r4, #24
	lsr r4, r4, #24
	str r4, [sp, #4]
	sub r1, r2, #1
	lsl r1, r1, #3
	add r0, r0, r1
	cmp r2, #0
	beq _08013216
	ldr r5, _08013228  @ =REG_DMA3SAD
	ldr r4, _0801322C  @ =0x03000040
	ldr r6, _08013230  @ =gOamBuffer
	mov r8, r0
	ldr r0, _08013234  @ =gUnknown_03001930
	mov r10, r0
	str r2, [sp, #8]
_08013138:
	mov r0, r9
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #11
	ldr r1, _08013238  @ =gUnknown_08617F24
	add r0, r0, r1
	str r0, [r5]
	ldr r1, _0801323C  @ =gUnknown_0300192C
	ldrh r0, [r1]
	ldr r2, _08013240  @ =OBJ_VRAM0
	add r0, r0, r2
	str r0, [r5, #4]
	ldr r0, _08013244  @ =0x84000008
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08013248  @ =gUnknown_08617F1C
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0801324C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r7, r10
	ldrh r7, [r7]
	add r0, r0, r7
	ldr r7, _08013250  @ =0x000003FF
	add r1, r7, #0
	and r0, r0, r1
	ldr r7, _08013254  @ =0xFFFFFC00
	add r1, r7, #0
	and r2, r2, r1
	orr r2, r2, r0
	strh r2, [r3, #4]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r1, _08013258  @ =0x000001FF
	add r0, r1, #0
	mov r2, r8
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r7, _0801325C  @ =0xFFFFFE00
	add r1, r7, #0
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r3, [r2, #5]
	lsr r1, r3, #4
	ldr r7, [sp, #4]
	add r1, r1, r7
	lsl r1, r1, #4
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r0, r3, #0
	and r1, r1, r0
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _0801323C  @ =gUnknown_0300192C
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, r9
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	mov r2, #5
	neg r2, r2
	add r8, r8, r2
	ldr r3, [sp, #8]
	sub r3, r3, #1
	str r3, [sp, #8]
	cmp r3, #0
	bne _08013138
_08013216:
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
_08013228:
	.4byte REG_DMA3SAD
_0801322C:
	.4byte 0x03000040
_08013230:
	.4byte gOamBuffer
_08013234:
	.4byte gUnknown_03001930
_08013238:
	.4byte gUnknown_08617F24
_0801323C:
	.4byte gUnknown_0300192C
_08013240:
	.4byte OBJ_VRAM0
_08013244:
	.4byte 0x84000008
_08013248:
	.4byte gUnknown_08617F1C
_0801324C:
	.4byte 0x84000002
_08013250:
	.4byte 0x000003FF
_08013254:
	.4byte 0xFFFFFC00
_08013258:
	.4byte 0x000001FF
_0801325C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END print_digits_080130F8

	THUMB_FUNC_START print_digits_08013260
print_digits_08013260: @ 0x08013260
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	ldr r4, [sp, #48]
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r9, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r8, r3
	lsl r4, r4, #24
	lsr r4, r4, #24
	str r4, [sp, #4]
	mov r1, r9
	sub r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #12]
	cmp r0, r9
	bge _0801338A
	ldr r5, _0801339C  @ =REG_DMA3SAD
	ldr r4, _080133A0  @ =0x03000040
	ldr r6, _080133A4  @ =gOamBuffer
	ldr r1, _080133A8  @ =gUnknown_03001930
	mov r10, r1
_080132A6:
	mov r0, r8
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #10
	ldr r1, _080133AC  @ =gUnknown_086172F0
	add r0, r0, r1
	str r0, [r5]
	ldr r2, _080133B0  @ =gUnknown_0300192C
	ldrh r0, [r2]
	ldr r3, _080133B4  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _080133B8  @ =0x84000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _080133BC  @ =gUnknown_086172E8
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _080133C0  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r7, r10
	ldrh r7, [r7]
	add r0, r0, r7
	ldr r1, _080133C4  @ =0x000003FF
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	ldr r1, _080133C8  @ =0xFFFFFC00
	mov r12, r1
	mov r7, r12
	and r2, r2, r7
	orr r2, r2, r0
	strh r2, [r3, #4]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #12]
	lsl r2, r0, #3
	ldr r1, [sp, #8]
	sub r2, r1, r2
	ldr r7, _080133CC  @ =0x000001FF
	add r0, r7, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _080133D0  @ =0xFFFFFE00
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r3, [r2, #5]
	lsr r1, r3, #4
	ldr r7, [sp, #4]
	add r1, r1, r7
	lsl r1, r1, #4
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r0, r3, #0
	and r1, r1, r0
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #2
	strh r0, [r7]
	ldr r1, _080133B0  @ =gUnknown_0300192C
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, r8
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r2, [sp, #12]
	add r2, r2, #1
	str r2, [sp, #12]
	cmp r2, r9
	blt _080132A6
_0801338A:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801339C:
	.4byte REG_DMA3SAD
_080133A0:
	.4byte 0x03000040
_080133A4:
	.4byte gOamBuffer
_080133A8:
	.4byte gUnknown_03001930
_080133AC:
	.4byte gUnknown_086172F0
_080133B0:
	.4byte gUnknown_0300192C
_080133B4:
	.4byte OBJ_VRAM0
_080133B8:
	.4byte 0x84000010
_080133BC:
	.4byte gUnknown_086172E8
_080133C0:
	.4byte 0x84000002
_080133C4:
	.4byte 0x000003FF
_080133C8:
	.4byte 0xFFFFFC00
_080133CC:
	.4byte 0x000001FF
_080133D0:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END print_digits_08013260

	THUMB_FUNC_START print_digits_080133D4
print_digits_080133D4: @ 0x080133D4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	ldr r4, [sp, #48]
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r9, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r8, r3
	lsl r4, r4, #24
	lsr r4, r4, #24
	str r4, [sp, #4]
	mov r1, r9
	sub r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #12]
	cmp r0, r9
	bge _080134FE
	ldr r5, _08013510  @ =REG_DMA3SAD
	ldr r4, _08013514  @ =0x03000040
	ldr r6, _08013518  @ =gOamBuffer
	ldr r1, _0801351C  @ =gUnknown_03001930
	mov r10, r1
_0801341A:
	mov r0, r8
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #11
	ldr r1, _08013520  @ =gUnknown_08617B04
	add r0, r0, r1
	str r0, [r5]
	ldr r2, _08013524  @ =gUnknown_0300192C
	ldrh r0, [r2]
	ldr r3, _08013528  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _0801352C  @ =0x84000008
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08013530  @ =gUnknown_08617AFC
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _08013534  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r7, r10
	ldrh r7, [r7]
	add r0, r0, r7
	ldr r1, _08013538  @ =0x000003FF
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	ldr r1, _0801353C  @ =0xFFFFFC00
	mov r12, r1
	mov r7, r12
	and r2, r2, r7
	orr r2, r2, r0
	strh r2, [r3, #4]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #12]
	lsl r2, r0, #3
	ldr r1, [sp, #8]
	sub r2, r1, r2
	ldr r7, _08013540  @ =0x000001FF
	add r0, r7, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _08013544  @ =0xFFFFFE00
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r3, [r2, #5]
	lsr r1, r3, #4
	ldr r7, [sp, #4]
	add r1, r1, r7
	lsl r1, r1, #4
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r0, r3, #0
	and r1, r1, r0
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _08013524  @ =gUnknown_0300192C
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, r8
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r2, [sp, #12]
	add r2, r2, #1
	str r2, [sp, #12]
	cmp r2, r9
	blt _0801341A
_080134FE:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08013510:
	.4byte REG_DMA3SAD
_08013514:
	.4byte 0x03000040
_08013518:
	.4byte gOamBuffer
_0801351C:
	.4byte gUnknown_03001930
_08013520:
	.4byte gUnknown_08617B04
_08013524:
	.4byte gUnknown_0300192C
_08013528:
	.4byte OBJ_VRAM0
_0801352C:
	.4byte 0x84000008
_08013530:
	.4byte gUnknown_08617AFC
_08013534:
	.4byte 0x84000002
_08013538:
	.4byte 0x000003FF
_0801353C:
	.4byte 0xFFFFFC00
_08013540:
	.4byte 0x000001FF
_08013544:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END print_digits_080133D4

	THUMB_FUNC_START print_digits_08013548
print_digits_08013548: @ 0x08013548
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
	mov r9, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r8, r3
	mov r1, r9
	sub r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	cmp r0, r9
	bge _08013652
	ldr r4, _08013664  @ =REG_DMA3SAD
	ldr r5, _08013668  @ =0x03000040
	ldr r6, _0801366C  @ =gOamBuffer
	ldr r1, _08013670  @ =gUnknown_03001930
	mov r10, r1
_08013586:
	mov r0, r8
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #11
	ldr r1, _08013674  @ =gUnknown_08617830
	add r0, r0, r1
	str r0, [r4]
	ldr r2, _08013678  @ =gUnknown_0300192C
	ldrh r0, [r2]
	ldr r3, _0801367C  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _08013680  @ =0x84000008
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08013684  @ =gUnknown_08617828
	str r0, [r4]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r4, #4]
	ldr r0, _08013688  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r7, r10
	ldrh r7, [r7]
	add r0, r0, r7
	ldr r1, _0801368C  @ =0x000003FF
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	ldr r1, _08013690  @ =0xFFFFFC00
	mov r12, r1
	mov r7, r12
	and r2, r2, r7
	orr r2, r2, r0
	strh r2, [r3, #4]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #8]
	lsl r2, r0, #3
	ldr r1, [sp, #4]
	sub r2, r1, r2
	ldr r7, _08013694  @ =0x000001FF
	add r0, r7, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _08013698  @ =0xFFFFFE00
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r0, r3, #0
	and r1, r1, r0
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _08013678  @ =gUnknown_0300192C
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, r8
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r2, [sp, #8]
	add r2, r2, #1
	str r2, [sp, #8]
	cmp r2, r9
	blt _08013586
_08013652:
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
_08013664:
	.4byte REG_DMA3SAD
_08013668:
	.4byte 0x03000040
_0801366C:
	.4byte gOamBuffer
_08013670:
	.4byte gUnknown_03001930
_08013674:
	.4byte gUnknown_08617830
_08013678:
	.4byte gUnknown_0300192C
_0801367C:
	.4byte OBJ_VRAM0
_08013680:
	.4byte 0x84000008
_08013684:
	.4byte gUnknown_08617828
_08013688:
	.4byte 0x84000002
_0801368C:
	.4byte 0x000003FF
_08013690:
	.4byte 0xFFFFFC00
_08013694:
	.4byte 0x000001FF
_08013698:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END print_digits_08013548

	THUMB_FUNC_START add_sprite_0801369C
add_sprite_0801369C: @ 0x0801369C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r6, [sp, #32]
	ldr r4, [sp, #36]
	mov r10, r4
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r7, r10
	lsl r7, r7, #16
	mov r10, r7
	ldr r5, _08013780  @ =REG_DMA3SAD
	ldr r4, [r0, #16]
	str r4, [r5]
	ldr r4, _08013784  @ =0x03000040
	mov r9, r4
	ldrh r4, [r4]
	lsl r4, r4, #3
	ldr r7, _08013788  @ =gOamBuffer
	mov r12, r7
	add r4, r4, r12
	str r4, [r5, #4]
	ldr r4, _0801378C  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	mov r4, r9
	ldrh r5, [r4]
	lsl r5, r5, #3
	add r5, r5, r12
	ldrh r7, [r5, #4]
	mov r8, r7
	mov r7, r8
	lsl r4, r7, #22
	lsr r4, r4, #22
	add r1, r1, r4
	ldr r7, _08013790  @ =0x000003FF
	add r4, r7, #0
	and r1, r1, r4
	ldr r4, _08013794  @ =0xFFFFFC00
	mov r7, r8
	and r4, r4, r7
	orr r4, r4, r1
	strh r4, [r5, #4]
	mov r1, r9
	ldrh r4, [r1]
	lsl r4, r4, #3
	add r4, r4, r12
	lsl r3, r3, #4
	ldrb r5, [r4, #5]
	mov r1, #15
	and r1, r1, r5
	orr r1, r1, r3
	strb r1, [r4, #5]
	mov r7, r9
	ldrh r4, [r7]
	lsl r4, r4, #3
	add r4, r4, r12
	lsl r6, r6, #16
	asr r6, r6, #16
	ldr r1, [r0, #12]
	lsl r3, r2, #3
	add r3, r3, r2
	lsl r3, r3, #2
	add r1, r3, r1
	ldrb r1, [r1, #2]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r6, r6, r1
	ldr r2, _08013798  @ =0x000001FF
	add r1, r2, #0
	and r6, r6, r1
	ldrh r2, [r4, #2]
	ldr r1, _0801379C  @ =0xFFFFFE00
	and r1, r1, r2
	orr r1, r1, r6
	strh r1, [r4, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r0, [r0, #12]
	add r3, r3, r0
	mov r4, r10
	lsr r4, r4, #16
	mov r10, r4
	ldrb r3, [r3, #3]
	add r10, r10, r3
	mov r7, r10
	strb r7, [r1]
	mov r0, r9
	ldrh r2, [r0]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08013780:
	.4byte REG_DMA3SAD
_08013784:
	.4byte 0x03000040
_08013788:
	.4byte gOamBuffer
_0801378C:
	.4byte 0x84000002
_08013790:
	.4byte 0x000003FF
_08013794:
	.4byte 0xFFFFFC00
_08013798:
	.4byte 0x000001FF
_0801379C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END add_sprite_0801369C

	THUMB_FUNC_START add_sprite_080137A0
add_sprite_080137A0: @ 0x080137A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r4, [sp, #36]
	mov r9, r4
	ldr r6, [sp, #40]
	str r6, [sp]
	ldr r4, [sp, #44]
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r6, r9
	lsl r6, r6, #24
	lsr r6, r6, #24
	mov r9, r6
	lsl r4, r4, #16
	mov r12, r4
	ldr r5, _080138B0  @ =REG_DMA3SAD
	ldr r4, [r0, #16]
	str r4, [r5]
	ldr r6, _080138B4  @ =0x03000040
	mov r10, r6
	ldrh r4, [r6]
	lsl r4, r4, #3
	ldr r7, _080138B8  @ =gOamBuffer
	add r4, r4, r7
	str r4, [r5, #4]
	ldr r4, _080138BC  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	ldrh r5, [r6]
	lsl r5, r5, #3
	add r5, r5, r7
	ldrh r4, [r5, #4]
	mov r8, r4
	mov r6, r8
	lsl r4, r6, #22
	lsr r4, r4, #22
	add r1, r1, r4
	ldr r6, _080138C0  @ =0x000003FF
	add r4, r6, #0
	and r1, r1, r4
	ldr r4, _080138C4  @ =0xFFFFFC00
	mov r6, r8
	and r4, r4, r6
	orr r4, r4, r1
	strh r4, [r5, #4]
	mov r1, r10
	ldrh r4, [r1]
	lsl r4, r4, #3
	add r4, r4, r7
	lsl r3, r3, #4
	ldrb r5, [r4, #5]
	mov r1, #15
	and r1, r1, r5
	orr r1, r1, r3
	strb r1, [r4, #5]
	mov r6, r10
	ldrh r4, [r6]
	lsl r4, r4, #3
	add r4, r4, r7
	ldr r1, [sp]
	lsl r6, r1, #16
	asr r6, r6, #16
	ldr r1, [r0, #12]
	lsl r3, r2, #3
	add r3, r3, r2
	lsl r3, r3, #2
	add r1, r3, r1
	ldrb r1, [r1, #2]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r6, r6, r1
	ldr r2, _080138C8  @ =0x000001FF
	add r1, r2, #0
	and r6, r6, r1
	ldrh r2, [r4, #2]
	ldr r1, _080138CC  @ =0xFFFFFE00
	and r1, r1, r2
	orr r1, r1, r6
	strh r1, [r4, #2]
	mov r4, r10
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r0, [r0, #12]
	add r3, r3, r0
	mov r6, r12
	lsr r6, r6, #16
	mov r12, r6
	ldrb r3, [r3, #3]
	add r12, r12, r3
	mov r0, r12
	strb r0, [r1]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	mov r0, #1
	mov r2, r9
	and r2, r2, r0
	lsl r2, r2, #4
	mov r9, r2
	ldrb r2, [r1, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r2
	mov r4, r9
	orr r0, r0, r4
	strb r0, [r1, #3]
	mov r6, r10
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
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
_080138B0:
	.4byte REG_DMA3SAD
_080138B4:
	.4byte 0x03000040
_080138B8:
	.4byte gOamBuffer
_080138BC:
	.4byte 0x84000002
_080138C0:
	.4byte 0x000003FF
_080138C4:
	.4byte 0xFFFFFC00
_080138C8:
	.4byte 0x000001FF
_080138CC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END add_sprite_080137A0

	THUMB_FUNC_START add_sprite_080138D0
add_sprite_080138D0: @ 0x080138D0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r7, r0, #0
	str r3, [sp]
	ldr r0, [sp, #36]
	mov r8, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r3, r8
	lsl r3, r3, #16
	mov r8, r3
	ldr r4, _080139C8  @ =REG_DMA3SAD
	ldr r0, [r7, #12]
	lsl r5, r1, #3
	add r5, r5, r1
	lsl r5, r5, #2
	add r0, r5, r0
	ldrb r1, [r0]
	ldrh r0, [r7, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r7, #20]
	add r0, r0, r1
	str r0, [r4]
	ldr r1, _080139CC  @ =gUnknown_0300192C
	ldrh r0, [r1]
	ldr r1, _080139D0  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldrh r0, [r7, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r7, #16]
	str r0, [r4]
	ldr r3, _080139D4  @ =0x03000040
	mov r10, r3
	ldrh r0, [r3]
	lsl r0, r0, #3
	ldr r1, _080139D8  @ =gOamBuffer
	mov r9, r1
	add r0, r0, r9
	str r0, [r4, #4]
	ldr r0, _080139DC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r4, [r3]
	lsl r4, r4, #3
	add r4, r4, r9
	ldrh r6, [r4, #4]
	lsl r1, r6, #22
	ldr r3, _080139E0  @ =gUnknown_03001930
	mov r12, r3
	lsr r1, r1, #22
	ldrh r0, [r3]
	add r1, r1, r0
	ldr r3, _080139E4  @ =0x000003FF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, _080139E8  @ =0xFFFFFC00
	and r0, r0, r6
	orr r0, r0, r1
	strh r0, [r4, #4]
	mov r0, r10
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r9
	ldr r1, [sp]
	lsl r3, r1, #16
	asr r3, r3, #16
	ldr r0, [r7, #12]
	add r0, r5, r0
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r3, r3, r0
	ldr r1, _080139EC  @ =0x000001FF
	add r0, r1, #0
	and r3, r3, r0
	ldrh r1, [r4, #2]
	ldr r0, _080139F0  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r4, #2]
	mov r3, r10
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldr r0, [r7, #12]
	add r5, r5, r0
	mov r0, r8
	lsr r0, r0, #16
	mov r8, r0
	ldrb r5, [r5, #3]
	add r8, r8, r5
	mov r3, r8
	strb r3, [r1]
	lsl r2, r2, #24
	asr r0, r2, #24
	ldr r1, _080139CC  @ =gUnknown_0300192C
	mov r8, r1
	mov r5, r10
	mov r4, r9
	mov r6, r12
	cmp r0, #1
	ble _080139F4
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	lsl r3, r0, #4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r1, #5]
	b _08013A0A
	.byte 0x00
	.byte 0x00
_080139C8:
	.4byte REG_DMA3SAD
_080139CC:
	.4byte gUnknown_0300192C
_080139D0:
	.4byte OBJ_VRAM0
_080139D4:
	.4byte 0x03000040
_080139D8:
	.4byte gOamBuffer
_080139DC:
	.4byte 0x84000002
_080139E0:
	.4byte gUnknown_03001930
_080139E4:
	.4byte 0x000003FF
_080139E8:
	.4byte 0xFFFFFC00
_080139EC:
	.4byte 0x000001FF
_080139F0:
	.4byte 0xFFFFFE00
_080139F4:
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r3, [r2, #5]
	lsr r1, r3, #4
	add r1, r1, r0
	lsl r1, r1, #4
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
_08013A0A:
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7, #6]
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	ldrh r0, [r7, #8]
	mov r3, r8
	ldrh r3, [r3]
	add r0, r0, r3
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END add_sprite_080138D0

	THUMB_FUNC_START sub_08013A48
sub_08013A48: @ 0x08013A48
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #44
	ldr r4, [sp, #76]
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp, #8]
	lsl r2, r2, #24
	lsr r5, r2, #24
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r9, r3
	lsl r4, r4, #16
	lsr r4, r4, #16
	mov r10, r4
	mov r2, #0
	cmp r1, #0
	bne _08013A78
	mov r2, #1
_08013A78:
	str r2, [sp, #12]
	cmp r7, #3
	bne _08013AE4
	ldr r0, _08013AD8  @ =gUnknown_08078700
	add r0, r0, #72
	lsl r5, r5, #24
	asr r5, r5, #24
	mov r1, r9
	lsl r3, r1, #16
	asr r6, r3, #16
	mov r2, #192
	lsl r2, r2, #11
	add r3, r3, r2
	asr r3, r3, #16
	mov r4, r10
	lsl r1, r4, #16
	asr r4, r1, #16
	add r1, r1, r2
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	bl add_sprite_080138D0
	mov r0, r9
	add r0, r0, #14
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, r10
	add r1, r1, #46
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _08013ADC  @ =gUnknown_0807CA94
	ldr r2, [r2]
	ldrh r3, [r2]
	mov r2, #0
	str r2, [sp]
	mov r2, #2
	bl print_digits_08013260
	ldr r0, _08013AE0  @ =gUnknown_08078778
	add r4, r4, #44
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	mov r1, #2
	b _08013C5A
	.byte 0x00
	.byte 0x00
_08013AD8:
	.4byte gUnknown_08078700
_08013ADC:
	.4byte gUnknown_0807CA94
_08013AE0:
	.4byte gUnknown_08078778
_08013AE4:
	lsl r0, r7, #1
	add r0, r0, r7
	lsl r0, r0, #3
	ldr r1, _08013B40  @ =gUnknown_08078700
	add r0, r0, r1
	lsl r6, r5, #24
	asr r2, r6, #24
	mov r1, r9
	lsl r5, r1, #16
	mov r4, #208
	lsl r4, r4, #12
	add r3, r5, r4
	asr r3, r3, #16
	mov r8, r3
	mov r1, r10
	lsl r4, r1, #16
	mov r3, #128
	lsl r3, r3, #11
	add r1, r4, r3
	asr r1, r1, #16
	str r1, [sp]
	add r1, r7, #0
	mov r3, r8
	bl add_sprite_080138D0
	ldr r1, _08013B44  @ =gSaveFilesPtr
	lsl r2, r7, #3
	sub r0, r2, r7
	lsl r0, r0, #5
	sub r0, r0, r7
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	str r5, [sp, #36]
	str r4, [sp, #40]
	str r2, [sp, #32]
	cmp r7, #2
	bhi _08013B48
	ldrb r1, [r1, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08013B48
	mov r0, #1
	b _08013B4A
	.byte 0x00
	.byte 0x00
_08013B40:
	.4byte gUnknown_08078700
_08013B44:
	.4byte gSaveFilesPtr
_08013B48:
	mov r0, #0
_08013B4A:
	cmp r0, #0
	bne _08013B8C
	ldr r0, _08013B84  @ =gUnknown_08078760
	asr r2, r6, #24
	ldr r4, [sp, #36]
	asr r5, r4, #16
	ldr r6, [sp, #40]
	asr r4, r6, #16
	mov r3, #192
	lsl r3, r3, #12
	add r1, r6, r3
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #2
	add r3, r5, #0
	bl add_sprite_080138D0
	ldr r0, _08013B88  @ =gUnknown_08078778
	ldr r2, [sp, #12]
	add r4, r4, #44
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	mov r1, #1
	add r3, r5, #0
	bl add_sprite_080138D0
	b _08013EBA
	.byte 0x00
	.byte 0x00
_08013B84:
	.4byte gUnknown_08078760
_08013B88:
	.4byte gUnknown_08078778
_08013B8C:
	ldr r2, _08013BA8  @ =gSaveFilesPtr
	ldr r4, [sp, #32]
	sub r0, r4, r7
	lsl r0, r0, #5
	sub r0, r0, r7
	lsl r0, r0, #2
	ldr r1, [r2]
	add r1, r1, r0
	ldr r0, [r1, #4]
	add r5, r2, #0
	cmp r0, #0
	bge _08013BAC
	mov r0, #1
	b _08013BAE
_08013BA8:
	.4byte gSaveFilesPtr
_08013BAC:
	mov r0, #0
_08013BAE:
	cmp r0, #0
	beq _08013C6C
	ldr r6, [sp, #32]
	sub r4, r6, r7
	lsl r4, r4, #5
	sub r4, r4, r7
	lsl r4, r4, #2
	ldr r0, [r5]
	add r0, r0, r4
	ldrb r3, [r0, #8]
	mov r0, r9
	add r0, r0, #15
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, r10
	add r1, r1, #48
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, [sp, #12]
	str r2, [sp]
	mov r2, #2
	bl print_digits_080130F8
	ldr r0, [r5]
	add r0, r0, r4
	ldrb r3, [r0, #9]
	mov r0, r9
	add r0, r0, #25
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, r10
	add r1, r1, #55
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r4, [sp, #12]
	str r4, [sp]
	mov r2, #2
	bl print_digits_080130F8
	lsl r1, r7, #24
	asr r1, r1, #24
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r5]
	add r1, r1, r0
	mov r3, #0
	ldrsb r3, [r1, r3]
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, r9
	add r0, r0, #24
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, r10
	add r1, r1, #63
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r4, [sp]
	mov r2, #2
	bl print_digits_08013260
	ldr r0, _08013C64  @ =gUnknown_08078760
	ldr r5, [sp, #12]
	ldr r1, [sp, #36]
	asr r6, r1, #16
	ldr r2, [sp, #40]
	asr r4, r2, #16
	mov r3, #192
	lsl r3, r3, #12
	add r1, r2, r3
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #1
	add r2, r5, #0
	add r3, r6, #0
	bl add_sprite_080138D0
	ldr r0, _08013C68  @ =gUnknown_08078778
	add r4, r4, #44
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	mov r1, #0
_08013C5A:
	add r2, r5, #0
	add r3, r6, #0
	bl add_sprite_080138D0
	b _08013EBA
_08013C64:
	.4byte gUnknown_08078760
_08013C68:
	.4byte gUnknown_08078778
_08013C6C:
	add r3, sp, #4
	mov r6, sp
	add r6, r6, #5
	mov r4, #6
	add r4, sp, r4
	mov r8, r4
	ldr r1, _08013D64  @ =gSaveFilesPtr
	ldr r2, [sp, #32]
	sub r0, r2, r7
	lsl r0, r0, #5
	sub r0, r0, r7
	lsl r0, r0, #2
	ldr r2, [r1]
	add r2, r2, r0
	ldrb r1, [r2, #2]
	mov r0, #15
	and r0, r0, r1
	ldrb r1, [r2, #3]
	strb r1, [r4]
	strb r0, [r6]
	ldrb r0, [r2, #2]
	lsr r0, r0, #4
	mov r1, #7
	and r0, r0, r1
	strb r0, [r3]
	ldrb r0, [r2, #3]
	strb r0, [r4]
	ldr r0, _08013D68  @ =gUnknown_08078790
	ldrb r1, [r4]
	ldr r3, [sp, #12]
	lsl r5, r3, #24
	asr r4, r5, #24
	str r4, [sp, #16]  @ sp16 = spC
	ldr r2, [sp, #36]
	asr r2, r2, #16
	str r2, [sp, #20]  @ sp20 = sp36
	ldr r4, [sp, #36]
	mov r2, #192
	lsl r2, r2, #11
	add r3, r4, r2
	asr r3, r3, #16
	mov r12, r3
	ldr r3, [sp, #40]
	asr r3, r3, #16
	str r3, [sp, #24]
	ldr r4, [sp, #40]
	mov r3, #192
	lsl r3, r3, #13
	add r2, r4, r3
	asr r2, r2, #16
	str r2, [sp]
	ldr r2, [sp, #16]
	mov r3, r12
	bl add_sprite_080138D0
	ldr r2, _08013D6C  @ =gUnknown_08078640
	ldrb r1, [r6]
	lsl r1, r1, #3
	add r0, r1, r2
	ldr r0, [r0]
	add r0, r0, r9
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r2, #4
	add r1, r1, r2
	ldr r1, [r1]
	add r1, r1, r10
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r2, sp, #4
	ldrb r3, [r2]
	add r3, r3, #1
	ldr r4, [sp, #12]
	str r4, [sp]
	mov r2, #1
	bl print_digits_080133D4
	ldr r0, _08013D70  @ =gUnknown_080787F0
	ldr r4, _08013D74  @ =gUnknown_08078680
	ldrb r2, [r6]
	lsl r2, r2, #3
	add r1, r2, r4
	ldr r3, [r1]
	ldr r1, [sp, #20]
	add r3, r1, r3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r4, r4, #4
	add r2, r2, r4
	ldr r1, [r2]
	ldr r2, [sp, #24]
	add r1, r2, r1
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #10
	ldr r2, [sp, #16]
	bl add_sprite_080138D0
	ldrb r1, [r6]
	str r5, [sp, #28]
	cmp r1, #5
	bhi _08013D7C
	ldr r2, _08013D78  @ =gUnknown_080786C0
	ldrb r3, [r6]
	lsl r1, r3, #3
	add r0, r1, r2
	ldr r0, [r0]
	add r0, r0, r9
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r2, #4
	add r1, r1, r2
	ldr r1, [r1]
	add r1, r1, r10
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r3, r3, #1
	ldr r4, [sp, #12]
	str r4, [sp]
	mov r2, #1
	bl print_digits_080133D4
	b _08013DF0
_08013D64:
	.4byte gSaveFilesPtr
_08013D68:
	.4byte gUnknown_08078790
_08013D6C:
	.4byte gUnknown_08078640
_08013D70:
	.4byte gUnknown_080787F0
_08013D74:
	.4byte gUnknown_08078680
_08013D78:
	.4byte gUnknown_080786C0
_08013D7C:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	bne _08013DC0
	ldr r0, _08013DB8  @ =gUnknown_08078808
	sub r1, r1, #6
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _08013DBC  @ =gUnknown_080786C0
	ldrb r4, [r6]
	lsl r4, r4, #3
	add r2, r4, r5
	ldr r3, [r2]
	ldr r6, [sp, #20]
	add r3, r6, r3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r2, [r4]
	ldr r4, [sp, #24]
	add r2, r4, r2
	lsl r2, r2, #16
	asr r2, r2, #16
	str r2, [sp]
	ldr r2, [sp, #16]
	bl add_sprite_080138D0
	b _08013DF0
	.byte 0x00
	.byte 0x00
_08013DB8:
	.4byte gUnknown_08078808
_08013DBC:
	.4byte gUnknown_080786C0
_08013DC0:
	ldr r0, _08013ECC  @ =gUnknown_08078808
	sub r1, r1, #5
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _08013ED0  @ =gUnknown_080786C0
	ldrb r4, [r6]
	lsl r4, r4, #3
	add r2, r4, r5
	ldr r3, [r2]
	ldr r6, [sp, #20]
	add r3, r6, r3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r2, [r4]
	ldr r4, [sp, #24]
	add r2, r4, r2
	lsl r2, r2, #16
	asr r2, r2, #16
	str r2, [sp]
	ldr r2, [sp, #16]
	bl add_sprite_080138D0
_08013DF0:
	ldr r5, _08013ED4  @ =gSaveFilesPtr
	ldr r6, [sp, #32]
	sub r0, r6, r7
	lsl r0, r0, #5
	sub r0, r0, r7
	lsl r4, r0, #2
	ldr r0, [r5]
	add r0, r0, r4
	ldrb r3, [r0, #8]
	mov r0, r9
	add r0, r0, #15
	lsl r0, r0, #24
	lsr r2, r0, #24
	mov r0, r10
	add r0, r0, #48
	lsl r0, r0, #24
	lsr r1, r0, #24
	mov r0, #0
	ldr r6, [sp, #8]
	cmp r6, #0
	bne _08013E1C
	mov r0, #1
_08013E1C:
	str r0, [sp]
	add r0, r2, #0
	mov r2, #2
	bl print_digits_080130F8
	ldr r0, [r5]
	add r0, r0, r4
	ldrb r3, [r0, #9]
	mov r0, r9
	add r0, r0, #25
	lsl r0, r0, #24
	lsr r2, r0, #24
	mov r0, r10
	add r0, r0, #55
	lsl r0, r0, #24
	lsr r1, r0, #24
	mov r0, #0
	ldr r4, [sp, #8]
	cmp r4, #0
	bne _08013E46
	mov r0, #1
_08013E46:
	str r0, [sp]
	add r0, r2, #0
	mov r2, #2
	bl print_digits_080130F8
	lsl r1, r7, #24
	asr r1, r1, #24
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r5]
	add r1, r1, r0
	mov r3, #0
	ldrsb r3, [r1, r3]
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, r9
	add r0, r0, #24
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, r10
	add r1, r1, #63
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r6, [sp, #12]
	str r6, [sp]
	mov r2, #2
	bl print_digits_08013260
	ldr r0, _08013ED8  @ =gUnknown_08078760
	ldr r1, [sp, #28]
	asr r5, r1, #24
	ldr r2, [sp, #36]
	asr r6, r2, #16
	ldr r3, [sp, #40]
	asr r4, r3, #16
	mov r2, #192
	lsl r2, r2, #12
	add r1, r3, r2
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	add r3, r6, #0
	bl add_sprite_080138D0
	ldr r0, _08013EDC  @ =gUnknown_08078778
	add r4, r4, #44
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	mov r1, #0
	add r2, r5, #0
	add r3, r6, #0
	bl add_sprite_080138D0
_08013EBA:
	add sp, sp, #44
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08013ECC:
	.4byte gUnknown_08078808
_08013ED0:
	.4byte gUnknown_080786C0
_08013ED4:
	.4byte gSaveFilesPtr
_08013ED8:
	.4byte gUnknown_08078760
_08013EDC:
	.4byte gUnknown_08078778
	THUMB_FUNC_END sub_08013A48
.endif
	THUMB_FUNC_START sub_08013EE0
sub_08013EE0: @ 0x08013EE0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r1, _08013F50  @ =gUnknown_080763CC
	add r0, sp, #8
	mov r2, #6
	bl memcpy
	add r4, sp, #16
	ldr r1, _08013F54  @ =gUnknown_080763D6
	add r0, r4, #0
	mov r2, #6
	bl memcpy
	add r6, r7, #0
	mov r10, r4
	cmp r6, #8
	bhi _08013FE2
	ldr r0, _08013F58  @ =gUnknown_08078610
	mov r8, r0
	mov r1, #4
	add r1, r1, r8
	mov r9, r1
_08013F18:
	sub r3, r6, r7
	lsl r2, r3, #24
	lsr r2, r2, #24
	ldr r1, _08013F5C  @ =gSaveFilesPtr
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r4, r1, r0
	add r5, r3, #0
	cmp r2, #3
	beq _08013F68
	ldr r2, _08013F60  @ =0x00000313
	add r0, r4, r2
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08013F68
	ldr r1, _08013F64  @ =gUnknown_080A8668
	ldrb r0, [r4, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08013F68
	mov r0, #1
	b _08013F6A
_08013F50:
	.4byte gUnknown_080763CC
_08013F54:
	.4byte gUnknown_080763D6
_08013F58:
	.4byte gUnknown_08078610
_08013F5C:
	.4byte gSaveFilesPtr
_08013F60:
	.4byte 0x00000313
_08013F64:
	.4byte gUnknown_080A8668
_08013F68:
	mov r0, #0
_08013F6A:
	cmp r0, #0
	beq _08013FD8
	ldr r0, _08013FA4  @ =gFileSelectMenuSel
	ldrb r0, [r0]
	cmp r6, r0
	bne _08013FB0
	ldr r0, _08013FA8  @ =0x03000052
	ldrh r1, [r0]
	mov r0, sp
	add r0, r0, r5
	add r0, r0, #8
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r2, r5, #3
	mov r4, r8
	add r0, r2, r4
	mov r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	add r2, r2, r9
	mov r4, #0
	ldrsh r0, [r2, r4]
	str r0, [sp, #4]
	ldr r0, _08013FAC  @ =gUnknown_080787D8
	mov r2, #0
	bl add_sprite_0801369C
	b _08013FD8
	.byte 0x00
	.byte 0x00
_08013FA4:
	.4byte gFileSelectMenuSel
_08013FA8:
	.4byte 0x03000052
_08013FAC:
	.4byte gUnknown_080787D8
_08013FB0:
	ldr r0, _08013FF4  @ =0x03000052
	ldrh r1, [r0]
	mov r2, r10
	add r0, r2, r5
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r2, r5, #3
	mov r4, r8
	add r0, r2, r4
	mov r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	add r2, r2, r9
	mov r4, #0
	ldrsh r0, [r2, r4]
	str r0, [sp, #4]
	ldr r0, _08013FF8  @ =gUnknown_080787D8
	mov r2, #0
	bl add_sprite_0801369C
_08013FD8:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #8
	bls _08013F18
_08013FE2:
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08013FF4:
	.4byte 0x03000052
_08013FF8:
	.4byte gUnknown_080787D8
	THUMB_FUNC_END sub_08013EE0

	THUMB_FUNC_START sub_08013FFC
sub_08013FFC: @ 0x08013FFC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r1, _0801406C  @ =gUnknown_080763DC
	add r0, sp, #8
	mov r2, #6
	bl memcpy
	add r4, sp, #16
	ldr r1, _08014070  @ =gUnknown_080763E2
	add r0, r4, #0
	mov r2, #6
	bl memcpy
	add r6, r7, #0
	mov r10, r4
	cmp r6, #8
	bhi _080140FE
	ldr r0, _08014074  @ =gUnknown_08078628
	mov r8, r0
	mov r1, #4
	add r1, r1, r8
	mov r9, r1
_08014034:
	sub r3, r6, r7
	lsl r2, r3, #24
	lsr r2, r2, #24
	ldr r1, _08014078  @ =gSaveFilesPtr
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r4, r1, r0
	add r5, r3, #0
	cmp r2, #3
	beq _08014084
	ldr r2, _0801407C  @ =0x00000313
	add r0, r4, r2
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08014084
	ldr r1, _08014080  @ =gUnknown_080A8668
	ldrb r0, [r4, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08014084
	mov r0, #1
	b _08014086
_0801406C:
	.4byte gUnknown_080763DC
_08014070:
	.4byte gUnknown_080763E2
_08014074:
	.4byte gUnknown_08078628
_08014078:
	.4byte gSaveFilesPtr
_0801407C:
	.4byte 0x00000313
_08014080:
	.4byte gUnknown_080A8668
_08014084:
	mov r0, #0
_08014086:
	cmp r0, #0
	beq _080140F4
	ldr r0, _080140C0  @ =gFileSelectMenuSel
	ldrb r0, [r0]
	cmp r6, r0
	bne _080140CC
	ldr r0, _080140C4  @ =0x03000052
	ldrh r1, [r0]
	mov r0, sp
	add r0, r0, r5
	add r0, r0, #8
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r2, r5, #3
	mov r4, r8
	add r0, r2, r4
	mov r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	add r2, r2, r9
	mov r4, #0
	ldrsh r0, [r2, r4]
	str r0, [sp, #4]
	ldr r0, _080140C8  @ =gUnknown_080787D8
	mov r2, #0
	bl add_sprite_0801369C
	b _080140F4
	.byte 0x00
	.byte 0x00
_080140C0:
	.4byte gFileSelectMenuSel
_080140C4:
	.4byte 0x03000052
_080140C8:
	.4byte gUnknown_080787D8
_080140CC:
	ldr r0, _08014110  @ =0x03000052
	ldrh r1, [r0]
	mov r2, r10
	add r0, r2, r5
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r2, r5, #3
	mov r4, r8
	add r0, r2, r4
	mov r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	add r2, r2, r9
	mov r4, #0
	ldrsh r0, [r2, r4]
	str r0, [sp, #4]
	ldr r0, _08014114  @ =gUnknown_080787D8
	mov r2, #0
	bl add_sprite_0801369C
_080140F4:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #8
	bls _08014034
_080140FE:
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08014110:
	.4byte 0x03000052
_08014114:
	.4byte gUnknown_080787D8
	THUMB_FUNC_END sub_08013FFC

	THUMB_FUNC_START sub_08014118
sub_08014118: @ 0x08014118
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #40
	ldr r0, _080141DC  @ =gUnknown_0300005D
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801412E
	b _0801435C
_0801412E:
	ldr r1, _080141E0  @ =gUnknown_080763CC
	add r0, sp, #8
	mov r2, #6
	bl memcpy
	add r6, sp, #16
	ldr r1, _080141E4  @ =gUnknown_080763D6
	add r0, r6, #0
	mov r2, #6
	bl memcpy
	add r5, sp, #24
	ldr r1, _080141E8  @ =gUnknown_080763DC
	add r0, r5, #0
	mov r2, #6
	bl memcpy
	add r4, sp, #32
	ldr r1, _080141EC  @ =gUnknown_080763E2
	add r0, r4, #0
	mov r2, #6
	bl memcpy
	mov r7, #0
	ldr r0, _080141F0  @ =gUnknown_080785E0
	mov r9, r0
	mov r1, #4
	add r1, r1, r9
	mov r10, r1
	ldr r2, _080141F4  @ =gUnknown_080787A8
	mov r8, r2
_0801416C:
	ldr r0, _080141F8  @ =gFileSelectMenuSel
	ldrb r0, [r0]
	cmp r7, r0
	bne _08014204
	mov r0, sp
	add r0, r0, r7
	add r0, r0, #24
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r4, r7, #3
	mov r0, r9
	add r5, r4, r0
	mov r1, #0
	ldrsh r3, [r5, r1]
	add r4, r4, r10
	mov r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	bl sub_08013A48
	ldr r0, _080141FC  @ =0x0300004E
	ldrh r1, [r0]
	mov r6, sp
	add r6, r6, r7
	add r6, r6, #8
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #0
	bl add_sprite_0801369C
	ldr r0, _08014200  @ =0x03000050
	ldrh r1, [r0]
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	ldr r0, [r4]
	add r0, r0, #64
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #1
	bl add_sprite_0801369C
	b _0801426A
_080141DC:
	.4byte gUnknown_0300005D
_080141E0:
	.4byte gUnknown_080763CC
_080141E4:
	.4byte gUnknown_080763D6
_080141E8:
	.4byte gUnknown_080763DC
_080141EC:
	.4byte gUnknown_080763E2
_080141F0:
	.4byte gUnknown_080785E0
_080141F4:
	.4byte gUnknown_080787A8
_080141F8:
	.4byte gFileSelectMenuSel
_080141FC:
	.4byte 0x0300004E
_08014200:
	.4byte 0x03000050
_08014204:
	mov r0, sp
	add r0, r0, r7
	add r0, r0, #32
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r4, r7, #3
	mov r0, r9
	add r5, r4, r0
	mov r1, #0
	ldrsh r3, [r5, r1]
	add r4, r4, r10
	mov r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0
	bl sub_08013A48
	ldr r0, _080142A8  @ =0x0300004E
	ldrh r1, [r0]
	mov r6, sp
	add r6, r6, r7
	add r6, r6, #16
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #0
	bl add_sprite_0801369C
	ldr r0, _080142AC  @ =0x03000050
	ldrh r1, [r0]
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	ldr r0, [r4]
	add r0, r0, #64
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #1
	bl add_sprite_0801369C
_0801426A:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #3
	bhi _08014276
	b _0801416C
_08014276:
	ldr r0, _080142B0  @ =gFileSelectMenuSel
	ldrb r0, [r0]
	cmp r7, r0
	bne _080142BC
	ldr r0, _080142B4  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #8
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _080142B8  @ =gUnknown_080785E0
	lsl r4, r7, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #0
	bl add_sprite_080138D0
	b _080142E2
	.byte 0x00
	.byte 0x00
_080142A8:
	.4byte 0x0300004E
_080142AC:
	.4byte 0x03000050
_080142B0:
	.4byte gFileSelectMenuSel
_080142B4:
	.4byte gUnknown_080787C0
_080142B8:
	.4byte gUnknown_080785E0
_080142BC:
	ldr r0, _08014314  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #16
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _08014318  @ =gUnknown_080785E0
	lsl r4, r7, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #0
	bl add_sprite_080138D0
_080142E2:
	add r4, r7, #1
	ldr r0, _0801431C  @ =gFileSelectMenuSel
	ldrb r0, [r0]
	cmp r4, r0
	bne _08014320
	ldr r0, _08014314  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #8
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _08014318  @ =gUnknown_080785E0
	lsl r4, r4, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #1
	bl add_sprite_080138D0
	b _08014346
_08014314:
	.4byte gUnknown_080787C0
_08014318:
	.4byte gUnknown_080785E0
_0801431C:
	.4byte gFileSelectMenuSel
_08014320:
	ldr r0, _08014354  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #16
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _08014358  @ =gUnknown_080785E0
	lsl r4, r4, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #1
	bl add_sprite_080138D0
_08014346:
	add r0, r7, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_08013FFC
	b _08014554
	.byte 0x00
	.byte 0x00
_08014354:
	.4byte gUnknown_080787C0
_08014358:
	.4byte gUnknown_080785E0
_0801435C:
	ldr r1, _080143EC  @ =gUnknown_080763E8
	add r0, sp, #8
	mov r2, #5
	bl memcpy
	add r4, sp, #16
	ldr r1, _080143F0  @ =gUnknown_080763ED
	add r0, r4, #0
	mov r2, #5
	bl memcpy
	mov r7, #0
	ldr r0, _080143F4  @ =gUnknown_080785B0
	mov r9, r0
	mov r1, #4
	add r1, r1, r9
	mov r10, r1
	ldr r2, _080143F8  @ =gUnknown_080787A8
	mov r8, r2
_08014382:
	ldr r0, _080143FC  @ =gFileSelectMenuSel
	ldrb r0, [r0]
	cmp r7, r0
	bne _08014408
	mov r6, sp
	add r6, r6, r7
	add r6, r6, #8
	mov r2, #0
	ldrsb r2, [r6, r2]
	lsl r4, r7, #3
	mov r0, r9
	add r5, r4, r0
	mov r1, #0
	ldrsh r3, [r5, r1]
	add r4, r4, r10
	mov r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	bl sub_08013A48
	ldr r0, _08014400  @ =0x0300004E
	ldrh r1, [r0]
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #0
	bl add_sprite_0801369C
	ldr r0, _08014404  @ =0x03000050
	ldrh r1, [r0]
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	ldr r0, [r4]
	add r0, r0, #64
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #1
	bl add_sprite_0801369C
	b _08014468
_080143EC:
	.4byte gUnknown_080763E8
_080143F0:
	.4byte gUnknown_080763ED
_080143F4:
	.4byte gUnknown_080785B0
_080143F8:
	.4byte gUnknown_080787A8
_080143FC:
	.4byte gFileSelectMenuSel
_08014400:
	.4byte 0x0300004E
_08014404:
	.4byte 0x03000050
_08014408:
	mov r6, sp
	add r6, r6, r7
	add r6, r6, #16
	mov r2, #0
	ldrsb r2, [r6, r2]
	lsl r4, r7, #3
	mov r0, r9
	add r5, r4, r0
	mov r1, #0
	ldrsh r3, [r5, r1]
	add r4, r4, r10
	mov r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0
	bl sub_08013A48
	ldr r0, _080144AC  @ =0x0300004E
	ldrh r1, [r0]
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #0
	bl add_sprite_0801369C
	ldr r0, _080144B0  @ =0x03000050
	ldrh r1, [r0]
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	ldr r0, [r4]
	add r0, r0, #64
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #1
	bl add_sprite_0801369C
_08014468:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #2
	bhi _08014474
	b _08014382
_08014474:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r0, _080144B4  @ =gFileSelectMenuSel
	ldrb r0, [r0]
	cmp r7, r0
	bne _080144C0
	ldr r0, _080144B8  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #8
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _080144BC  @ =gUnknown_080785B0
	lsl r4, r7, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #0
	bl add_sprite_080138D0
	b _080144E6
	.byte 0x00
	.byte 0x00
_080144AC:
	.4byte 0x0300004E
_080144B0:
	.4byte 0x03000050
_080144B4:
	.4byte gFileSelectMenuSel
_080144B8:
	.4byte gUnknown_080787C0
_080144BC:
	.4byte gUnknown_080785B0
_080144C0:
	ldr r0, _08014518  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #16
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _0801451C  @ =gUnknown_080785B0
	lsl r4, r7, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #0
	bl add_sprite_080138D0
_080144E6:
	add r4, r7, #1
	ldr r0, _08014520  @ =gFileSelectMenuSel
	ldrb r0, [r0]
	cmp r4, r0
	bne _08014524
	ldr r0, _08014518  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #8
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _0801451C  @ =gUnknown_080785B0
	lsl r4, r4, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #1
	bl add_sprite_080138D0
	b _0801454A
_08014518:
	.4byte gUnknown_080787C0
_0801451C:
	.4byte gUnknown_080785B0
_08014520:
	.4byte gFileSelectMenuSel
_08014524:
	ldr r0, _08014564  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #16
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _08014568  @ =gUnknown_080785B0
	lsl r4, r4, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #1
	bl add_sprite_080138D0
_0801454A:
	add r0, r7, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_08013EE0
_08014554:
	add sp, sp, #40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08014564:
	.4byte gUnknown_080787C0
_08014568:
	.4byte gUnknown_080785B0
	THUMB_FUNC_END sub_08014118

	THUMB_FUNC_START sub_0801456C
sub_0801456C: @ 0x0801456C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	ldr r0, _080145F8  @ =gUnknown_0300005D
	ldrb r0, [r0]
	cmp r0, #0
	bne _08014582
	b _08014684
_08014582:
	mov r1, #0
	ldr r0, _080145FC  @ =gUnknown_08078820
	mov r10, r0
	ldr r2, _08014600  @ =0x03000054
	mov r9, r2
_0801458C:
	ldr r0, _08014604  @ =gUnknown_03000066
	lsl r1, r1, #16
	asr r3, r1, #16
	add r2, r3, r0
	ldrb r0, [r2]
	add r7, r1, #0
	cmp r0, #0
	beq _08014670
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	asr r0, r0, #16
	cmp r0, #2
	bne _08014610
	mov r0, r9
	ldrh r1, [r0]
	mov r0, #0
	str r0, [sp]
	lsl r4, r3, #1
	add r4, r4, r3
	lsl r4, r4, #3
	ldr r2, _08014608  @ =gUnknown_08078868
	add r5, r4, r2
	mov r3, #0
	ldrsh r0, [r5, r3]
	str r0, [sp, #4]
	add r4, r4, r10
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	ldr r0, _0801460C  @ =gUnknown_08078850
	mov r2, #0
	mov r3, #3
	bl add_sprite_080137A0
	mov r3, r9
	ldrh r1, [r3]
	mov r0, #1
	str r0, [sp]
	ldrh r0, [r5]
	add r0, r0, #16
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	ldr r0, _0801460C  @ =gUnknown_08078850
	mov r2, #0
	mov r3, #3
	bl add_sprite_080137A0
	b _08014670
	.byte 0x00
	.byte 0x00
_080145F8:
	.4byte gUnknown_0300005D
_080145FC:
	.4byte gUnknown_08078820
_08014600:
	.4byte 0x03000054
_08014604:
	.4byte gUnknown_03000066
_08014608:
	.4byte gUnknown_08078868
_0801460C:
	.4byte gUnknown_08078850
_08014610:
	lsl r5, r0, #1
	add r5, r5, r0
	lsl r5, r5, #3
	add r5, r5, r10
	mov r0, r9
	ldrh r1, [r0, #2]
	mov r0, #1
	eor r6, r6, r0
	lsl r6, r6, #24
	asr r6, r6, #24
	mov r0, #0
	str r0, [sp]
	lsl r4, r3, #1
	add r4, r4, r3
	lsl r4, r4, #3
	ldr r2, _08014680  @ =gUnknown_08078868
	add r2, r2, r4
	mov r8, r2
	mov r3, #0
	ldrsh r0, [r2, r3]
	str r0, [sp, #4]
	add r4, r4, r10
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl add_sprite_080137A0
	mov r3, r9
	ldrh r1, [r3, #2]
	mov r0, #1
	str r0, [sp]
	mov r2, r8
	ldrh r0, [r2]
	add r0, r0, #16
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r3, #2
	ldrsh r0, [r4, r3]
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl add_sprite_080137A0
_08014670:
	mov r1, #128
	lsl r1, r1, #9
	add r0, r7, r1
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #2
	ble _0801458C
	b _0801476E
_08014680:
	.4byte gUnknown_08078868
_08014684:
	mov r1, #0
	ldr r2, _080146F8  @ =gUnknown_08078820
	mov r9, r2
	ldr r3, _080146FC  @ =0x03000054
	mov r8, r3
	mov r0, #1
	mov r10, r0
_08014692:
	ldr r0, _08014700  @ =gUnknown_03000066
	lsl r1, r1, #16
	asr r3, r1, #16
	add r2, r3, r0
	ldrb r0, [r2]
	add r7, r1, #0
	cmp r0, #0
	beq _08014760
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	asr r0, r0, #16
	cmp r0, #2
	bne _08014708
	mov r2, r8
	ldrh r1, [r2]
	mov r0, #0
	str r0, [sp]
	lsl r4, r3, #1
	add r4, r4, r3
	lsl r4, r4, #3
	add r4, r4, r9
	mov r3, #0
	ldrsh r0, [r4, r3]
	str r0, [sp, #4]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	ldr r0, _08014704  @ =gUnknown_08078850
	mov r2, #0
	mov r3, #3
	bl add_sprite_080137A0
	mov r3, r8
	ldrh r1, [r3]
	mov r0, r10
	str r0, [sp]
	ldrh r0, [r4]
	add r0, r0, #16
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	ldr r0, _08014704  @ =gUnknown_08078850
	mov r2, #0
	mov r3, #3
	bl add_sprite_080137A0
	b _08014760
_080146F8:
	.4byte gUnknown_08078820
_080146FC:
	.4byte 0x03000054
_08014700:
	.4byte gUnknown_03000066
_08014704:
	.4byte gUnknown_08078850
_08014708:
	lsl r5, r0, #1
	add r5, r5, r0
	lsl r5, r5, #3
	add r5, r5, r9
	mov r0, r8
	ldrh r1, [r0, #2]
	mov r2, r10
	eor r6, r6, r2
	lsl r6, r6, #24
	asr r6, r6, #24
	mov r0, #0
	str r0, [sp]
	lsl r4, r3, #1
	add r4, r4, r3
	lsl r4, r4, #3
	add r4, r4, r9
	mov r3, #0
	ldrsh r0, [r4, r3]
	str r0, [sp, #4]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl add_sprite_080137A0
	mov r3, r8
	ldrh r1, [r3, #2]
	mov r0, r10
	str r0, [sp]
	ldrh r0, [r4]
	add r0, r0, #16
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl add_sprite_080137A0
_08014760:
	mov r3, #128
	lsl r3, r3, #9
	add r0, r7, r3
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #2
	ble _08014692
_0801476E:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801456C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START main_menu_loop
main_menu_loop: @ 0x08014780
	push {lr}
	sub sp, sp, #4
	ldr r3, _080147D8  @ =gUnknown_03001930
	ldr r2, _080147DC  @ =gUnknown_0300192C
	ldr r1, _080147E0  @ =0x03000040
	mov r0, #0
	strh r0, [r1]
	strh r0, [r2]
	strh r0, [r3]
	mov r0, #160
	str r0, [sp]
	ldr r1, _080147E4  @ =REG_DMA3SAD
	mov r0, sp
	str r0, [r1]
	ldr r0, _080147E8  @ =gOamBuffer
	str r0, [r1, #4]
	ldr r0, _080147EC  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_08012D24
	ldr r0, _080147F0  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _080147C8
	ldr r2, _080147F4  @ =gUnknown_085FEFE4
	ldr r0, _080147F8  @ =gUnknown_0300005E
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r2, #8
	add r0, r0, r2
	ldr r0, [r0]
	bl sub_0801B2CC
_080147C8:
	ldr r0, _080147FC  @ =gUnknown_0300005B
	ldrb r0, [r0]
	cmp r0, #3
	bne _08014800
	bl sub_080128EC
	b _08014850
	.byte 0x00
	.byte 0x00
_080147D8:
	.4byte gUnknown_03001930
_080147DC:
	.4byte gUnknown_0300192C
_080147E0:
	.4byte 0x03000040
_080147E4:
	.4byte REG_DMA3SAD
_080147E8:
	.4byte gOamBuffer
_080147EC:
	.4byte 0x85000100
_080147F0:
	.4byte gUnknown_03000C28
_080147F4:
	.4byte gUnknown_085FEFE4
_080147F8:
	.4byte gUnknown_0300005E
_080147FC:
	.4byte gUnknown_0300005B
_08014800:
	cmp r0, #2
	bne _08014824
	ldr r1, _08014818  @ =REG_BLDCNT
	ldr r2, _0801481C  @ =0x00003B44
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #2
	ldr r2, _08014820  @ =0x00000808
	add r0, r2, #0
	strh r0, [r1]
	b _08014850
	.byte 0x00
	.byte 0x00
_08014818:
	.4byte REG_BLDCNT
_0801481C:
	.4byte 0x00003B44
_08014820:
	.4byte 0x00000808
_08014824:
	ldr r0, _08014834  @ =gFileSelectMenuSel
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08014838
	bl sub_080129C0
	b _08014850
	.byte 0x00
	.byte 0x00
_08014834:
	.4byte gFileSelectMenuSel
_08014838:
	cmp r0, #4
	bne _08014842
	bl sub_08012568
	b _08014850
_08014842:
	cmp r0, #5
	bne _0801484C
	bl sub_08012680
	b _08014850
_0801484C:
	bl sub_08012798
_08014850:
	bl sub_08014118
	bl sub_0801456C
	ldr r1, _08014874  @ =REG_DMA3SAD
	ldr r0, _08014878  @ =gOamBuffer
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801487C  @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_0801B4BC
	add sp, sp, #4
	pop {r0}
	bx r0
_08014874:
	.4byte REG_DMA3SAD
_08014878:
	.4byte gOamBuffer
_0801487C:
	.4byte 0x84000100
	THUMB_FUNC_END main_menu_loop

	THUMB_FUNC_START main_menu_end
main_menu_end: @ 0x08014880
	push {lr}
	bl sub_080382A8
	pop {r0}
	bx r0
	THUMB_FUNC_END main_menu_end

	.byte 0x00
	.byte 0x00
	
