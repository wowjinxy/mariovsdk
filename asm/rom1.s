	.INCLUDE "macro.inc"

	THUMB_FUNC_START level_play_main
level_play_main: @ 0x08007B58
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	bl sub_08029C20
	bl sub_080331FC
	ldr r0, _08007BB8  @ =gUnknown_030012E8
	ldrh r0, [r0]
	ldr r1, _08007BBC  @ =gUnknown_030012E0
	ldrh r1, [r1]
	bl sub_08038414
	bl sub_08039C44
	mov r0, #0
	mov r9, r0
	ldr r0, _08007BC0  @ =gUnknown_03001A1C
	ldr r3, [r0]
	ldr r0, _08007BC4  @ =0x00001B08
	and r0, r0, r3
	cmp r0, #0
	bne _08007B8E
	mov r1, #1
	mov r9, r1
_08007B8E:
	ldr r0, _08007BC8  @ =0x03001A00
	mov r2, r9
	strb r2, [r0]
	ldr r1, _08007BCC  @ =gUnknown_03000038
	ldr r0, _08007BD0  @ =gUnknown_03000034
	ldr r2, [r0]
	add r0, r2, #0
	eor r0, r0, r3
	and r3, r3, r0
	str r3, [r1]
	ldr r1, _08007BD4  @ =gUnknown_0300003C
	and r0, r0, r2
	str r0, [r1]
	ldr r1, _08007BD8  @ =gLevelEndTimer
	ldr r0, [r1]
	cmp r0, #0
	bge _08007BDC
	bl sub_08007544
	b _08007F6E
	.byte 0x00
	.byte 0x00
_08007BB8:
	.4byte gUnknown_030012E8
_08007BBC:
	.4byte gUnknown_030012E0
_08007BC0:
	.4byte gUnknown_03001A1C
_08007BC4:
	.4byte 0x00001B08
_08007BC8:
	.4byte 0x03001A00
_08007BCC:
	.4byte gUnknown_03000038
_08007BD0:
	.4byte gUnknown_03000034
_08007BD4:
	.4byte gUnknown_0300003C
_08007BD8:
	.4byte gLevelEndTimer
_08007BDC:
	cmp r0, #0 @ compare current level end timer inside of r0 to 0
	ble _08007BE6 
	sub r0, r0, #1 @ subtract 1 from the level end timer
	str r0, [r1] @ store r0 into r1 which is currently set to gLevelEndTimer as per line 42 of this file.
	b _08007F6E
_08007BE6:
	ldr r0, _08007C0C  @ =gUnknown_03000B68
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	ldr r7, _08007C10  @ =gNextLevelInLevelTable
	cmp r0, #0
	beq _08007C18
	ldr r0, [r7, #32]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _08007C18
	ldr r1, _08007C14  @ =gNextLevelID
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #12
	b _08007EBA
	.byte 0x00
	.byte 0x00
_08007C0C:
	.4byte gUnknown_03000B68
_08007C10:
	.4byte gNextLevelInLevelTable
_08007C14:
	.4byte gNextLevelID
_08007C18:
	add r4, r7, #0
	ldr r2, [r4, #32]
	mov r6, #2
	and r6, r6, r2
	cmp r6, #0
	beq _08007D04
	ldr r1, _08007C64  @ =gUnknown_030009D8
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #60
	bhi _08007C36
	b _08007F6E
_08007C36:
	ldr r0, _08007C68  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08007C70
	ldr r0, _08007C6C  @ =gAfterTutorialWorld
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _08007C92
	mov r0, #2
	bl sub_080148F0
	cmp r0, #0
	bne _08007C92
	mov r0, #2
	mov r1, #1
	bl sub_080148A4
	b _08007C92
	.byte 0x00
	.byte 0x00
_08007C64:
	.4byte gUnknown_030009D8
_08007C68:
	.4byte gUnknown_03000B80
_08007C6C:
	.4byte gAfterTutorialWorld
_08007C70:
	cmp r0, #1
	bne _08007C92
	ldr r0, _08007CE0  @ =gAfterTutorialWorld
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _08007C92
	mov r0, #16
	bl sub_080148F0
	cmp r0, #0
	bne _08007C92
	mov r0, #16
	mov r1, #1
	bl sub_080148A4
_08007C92:
	mov r0, #20
	mov r1, #1
	bl sub_080070E8
	ldr r4, _08007CE4  @ =gUnknown_030019A0
	ldr r0, _08007CE8  @ =gNextLevelInLevelTable
	ldr r3, [r0, #32]
	mov r2, #15
	and r2, r2, r3
	mov r1, #18
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r4]
	orr r0, r0, r2
	str r0, [r4]
	ldr r1, _08007CEC  @ =gNextLevelID
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _08007CF0  @ =gUnknown_03000BD0
	mov r4, #0
	strb r4, [r0]
	mov r0, #4
	and r3, r3, r0
	cmp r3, #0
	bne _08007CD0
	b _08007F6E
_08007CD0:
	ldr r1, _08007CE0  @ =gAfterTutorialWorld
	ldrb r2, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	ble _08007CF4
	strb r4, [r1]
	b _08007CF8
_08007CE0:
	.4byte gAfterTutorialWorld
_08007CE4:
	.4byte gUnknown_030019A0
_08007CE8:
	.4byte gNextLevelInLevelTable
_08007CEC:
	.4byte gNextLevelID
_08007CF0:
	.4byte gUnknown_03000BD0
_08007CF4:
	add r0, r2, #1
	strb r0, [r1]
_08007CF8:
	ldr r1, _08007D00  @ =gNextLevelID
	mov r0, #0
	strb r0, [r1]
	b _08007F6E
_08007D00:
	.4byte gNextLevelID
_08007D04:
	mov r0, #1
	mov r8, r0
	add r5, r2, #0
	and r5, r5, r0
	cmp r5, #0
	beq _08007D50
	mov r0, #21
	mov r1, #1
	bl sub_080070E8
	ldr r3, _08007D44  @ =gUnknown_030019A0
	ldr r2, [r4, #32]
	mov r0, #15
	and r2, r2, r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r3]
	orr r0, r0, r2
	str r0, [r3]
	ldr r1, _08007D48  @ =gNextLevelID
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _08007D4C  @ =gUnknown_03000BD0
	strb r6, [r0]
	b _08007F6E
	.byte 0x00
	.byte 0x00
_08007D44:
	.4byte gUnknown_030019A0
_08007D48:
	.4byte gNextLevelID
_08007D4C:
	.4byte gUnknown_03000BD0
_08007D50:
	ldr r6, _08007DC8  @ =gUnknown_03000B80
	ldrb r0, [r6]
	mov r1, #0
	ldrsb r1, [r6, r1]
	cmp r1, #4
	bne _08007DE0
	ldr r0, _08007DCC  @ =gLivesCount
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_080149F8
	mov r2, #18
	ldrsh r0, [r4, r2]
	mov r2, #16
	ldrsh r1, [r4, r2]
	ldr r2, _08007DD0  @ =gRedPresentFlag
	bl sub_08010534
	mov r1, #18
	ldrsh r0, [r4, r1]
	mov r2, #16
	ldrsh r1, [r4, r2]
	bl sub_08010BE0
	mov r0, #8
	bl sub_080148F0
	cmp r0, #0
	bne _08007D94
	mov r0, #8
	mov r1, #1
	bl sub_080148A4
_08007D94:
	mov r0, #4
	bl sub_080148F0
	cmp r0, #0
	bne _08007DA6
	mov r0, #4
	mov r1, #1
	bl sub_080148A4
_08007DA6:
	mov r0, r8
	strb r0, [r6]
	ldr r0, _08007DD4  @ =gAfterTutorialWorld
	ldr r1, _08007DD8  @ =gNextLevelID
	strb r5, [r1]
	strb r5, [r0]
	ldr r0, _08007DDC  @ =gUnknown_03000BD0
	strb r5, [r0]
	mov r0, #3
	mov r1, #62
	mov r2, #1
	mov r3, #8
	bl movie_player_setup_data
	mov r0, #30
	b _08007EBA
	.byte 0x00
	.byte 0x00
_08007DC8:
	.4byte gUnknown_03000B80
_08007DCC:
	.4byte gLivesCount
_08007DD0:
	.4byte gRedPresentFlag
_08007DD4:
	.4byte gAfterTutorialWorld
_08007DD8:
	.4byte gNextLevelID
_08007DDC:
	.4byte gUnknown_03000BD0
_08007DE0:
	cmp r1, #5
	bne _08007E64
	ldr r0, _08007E50  @ =gLivesCount
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_080149F8
	mov r1, #18
	ldrsh r0, [r4, r1]
	mov r2, #16
	ldrsh r1, [r4, r2]
	bl sub_08010BE0
	mov r1, #18
	ldrsh r0, [r4, r1]
	mov r2, #16
	ldrsh r1, [r4, r2]
	ldr r2, _08007E54  @ =gRedPresentFlag
	bl sub_08010534
	mov r0, #32
	bl sub_080148F0
	cmp r0, #0
	bne _08007E1C
	mov r0, #32
	mov r1, #1
	bl sub_080148A4
_08007E1C:
	mov r0, #64
	bl sub_080148F0
	cmp r0, #0
	bne _08007E2E
	mov r0, #64
	mov r1, #1
	bl sub_080148A4
_08007E2E:
	strb r5, [r6]
	ldr r0, _08007E58  @ =gAfterTutorialWorld
	ldr r1, _08007E5C  @ =gNextLevelID
	strb r5, [r1]
	strb r5, [r0]
	ldr r0, _08007E60  @ =gUnknown_03000BD0
	mov r1, r8
	strb r1, [r0]
	mov r0, #3
	mov r1, #46
	mov r2, #1
	mov r3, #6
	bl movie_player_setup_data
	mov r0, #30
	b _08007EBA
	.byte 0x00
	.byte 0x00
_08007E50:
	.4byte gLivesCount
_08007E54:
	.4byte gRedPresentFlag
_08007E58:
	.4byte gAfterTutorialWorld
_08007E5C:
	.4byte gNextLevelID
_08007E60:
	.4byte gUnknown_03000BD0
_08007E64:
	cmp r1, #1
	bne _08007EA4
	ldr r1, _08007E8C  @ =gNextLevelID
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _08007E90  @ =gUnknown_03000BD0
	strb r5, [r0]
	mov r0, #4
	and r2, r2, r0
	cmp r2, #0
	beq _08007EB8
	ldr r2, _08007E94  @ =gAfterTutorialWorld
	ldrb r3, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #4
	ble _08007E98
	strb r5, [r2]
	b _08007E9C
_08007E8C:
	.4byte gNextLevelID
_08007E90:
	.4byte gUnknown_03000BD0
_08007E94:
	.4byte gAfterTutorialWorld
_08007E98:
	add r0, r3, #1
	strb r0, [r2]
_08007E9C:
	mov r0, #0
	strb r0, [r1]
	mov r0, #20
	b _08007EBA
_08007EA4:
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08007EB8
	ldr r0, _08007EC4  @ =gLevelEWorldFlag
	mov r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	beq _08007EC8
_08007EB8:
	mov r0, #21
_08007EBA:
	mov r1, #1
	bl sub_080070E8
	b _08007F6E
	.byte 0x00
	.byte 0x00
_08007EC4:
	.4byte gLevelEWorldFlag
_08007EC8:
	mov r5, #8
	and r5, r5, r2
	cmp r5, #0
	beq _08007F24
	mov r0, #20
	and r2, r2, r0
	cmp r2, #20
	bne _08007EEC
	mov r1, #1
	bl sub_080070E8
	ldr r1, _08007EE8  @ =gNextLevelID
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _08007F6E
_08007EE8:
	.4byte gNextLevelID
_08007EEC:
	mov r0, #21
	mov r1, #1
	bl sub_080070E8
	ldr r2, _08007F18  @ =gNextLevelID
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r0, _08007F1C  @ =gUnknown_03000BD0
	strb r4, [r0]
	ldr r0, [r7, #32]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08007F6E
	ldr r1, _08007F20  @ =gAfterTutorialWorld
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r4, [r2]
	b _08007F6E
	.byte 0x00
	.byte 0x00
_08007F18:
	.4byte gNextLevelID
_08007F1C:
	.4byte gUnknown_03000BD0
_08007F20:
	.4byte gAfterTutorialWorld
_08007F24:
	ldr r3, _08007FC8  @ =gNextLevelID
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	ldr r0, _08007FCC  @ =gUnknown_03000BD0
	strb r5, [r0]
	mov r0, #4
	and r2, r2, r0
	cmp r2, #0
	beq _08007F42
	ldr r1, _08007FD0  @ =gAfterTutorialWorld
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r5, [r3]
_08007F42:
	ldr r1, _08007FD4  @ =gUnknown_03000BB8
	ldr r2, _08007FD8  @ =gCurrentEnemyScore
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08007FDC  @ =gPreviousPresentScore
	ldr r0, _08007FE0  @ =gCurrentPresentScore
	ldr r0, [r0]
	str r0, [r1]
	str r5, [r2]
	ldr r1, _08007FE4  @ =gUnknown_03000B44
	ldr r0, _08007FE8  @ =gGeneralTimer
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08007FEC  @ =gRedPresentFlag
	ldr r1, _08007FF0  @ =gUnknown_030009E4
	mov r2, #2
	bl CpuSet
	mov r0, #12
	mov r1, #1
	bl sub_080070E8
_08007F6E:
	ldr r1, _08007FF4  @ =gUnknown_03000034
	ldr r0, _08007FF8  @ =gUnknown_03001A1C
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08007FFC  @ =0x03001A00
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007FAA
	bl sub_0802C540
	ldr r0, _08008000  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #24
	and r0, r0, r1
	cmp r0, #0
	beq _08007F92
	bl sub_0802C9D8
_08007F92:
	bl sub_0802BAA0
	bl sub_0802CF78
	bl sub_08030F50
	ldr r0, _08008004  @ =gLevelTimerOnOffFlag
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007FAA
	bl sub_080315A4
_08007FAA:
	bl sub_08031C1C
	ldr r4, _08008008  @ =gNextLevelInLevelTable
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r2, #18
	ldrsh r0, [r4, r2]
	cmp r0, #2
	bne _0800800C
	ldr r0, _08007FFC  @ =0x03001A00
	ldrb r0, [r0]
	bl sub_0802BEA4
	b _08008016
_08007FC8:
	.4byte gNextLevelID
_08007FCC:
	.4byte gUnknown_03000BD0
_08007FD0:
	.4byte gAfterTutorialWorld
_08007FD4:
	.4byte gUnknown_03000BB8
_08007FD8:
	.4byte gCurrentEnemyScore
_08007FDC:
	.4byte gPreviousPresentScore
_08007FE0:
	.4byte gCurrentPresentScore
_08007FE4:
	.4byte gUnknown_03000B44
_08007FE8:
	.4byte gGeneralTimer
_08007FEC:
	.4byte gRedPresentFlag
_08007FF0:
	.4byte gUnknown_030009E4
_08007FF4:
	.4byte gUnknown_03000034
_08007FF8:
	.4byte gUnknown_03001A1C
_08007FFC:
	.4byte 0x03001A00
_08008000:
	.4byte gUnknown_030009D0
_08008004:
	.4byte gLevelTimerOnOffFlag
_08008008:
	.4byte gNextLevelInLevelTable
_0800800C:
	mov r0, r9
	cmp r0, #0
	beq _08008016
	bl sub_0802BE50
_08008016:
	ldr r0, _080080D4  @ =0x03001A00
	ldrb r0, [r0]
	cmp r0, #0
	beq _08008022
	bl sub_0801B310
_08008022:
	ldr r0, _080080D8  @ =gLevelEndTimer
	ldr r0, [r0]
	cmp r0, #0
	bge _080080C6
	ldr r0, _080080DC  @ =gUnknown_030012E8
	ldrh r0, [r0]
	cmp r0, #8
	bne _0800807E
	ldr r0, _080080E0  @ =gGeneralTimer
	ldr r0, [r0]
	cmp r0, #0
	ble _0800807E
	ldr r0, _080080E4  @ =gUnknown_03000B5C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800807E
	ldr r0, _080080E8  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _0800807E
	ldr r0, _080080EC  @ =gUnknown_030019A0
	ldr r4, [r0]
	mov r0, #128
	lsl r0, r0, #22
	and r4, r4, r0
	cmp r4, #0
	bne _0800807E
	mov r0, #16
	mov r1, #0
	bl sub_080070E8
	bl sub_08071C24
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #24
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0800807E:
	ldr r0, _080080E8  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _080080C6
	ldr r3, _080080F0  @ =gUnknown_03001938
	ldr r1, [r3]
	mov r2, #1
	add r4, r1, #0
	and r4, r4, r2
	cmp r4, #0
	bne _080080C6
	ldr r0, _080080F4  @ =0x000050FE
	and r0, r0, r1
	cmp r0, #0
	beq _080080C6
	orr r1, r1, r2
	str r1, [r3]
	mov r0, #17
	mov r1, #0
	bl sub_080070E8
	bl sub_08071C24
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #24
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_080080C6:
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080080D4:
	.4byte 0x03001A00
_080080D8:
	.4byte gLevelEndTimer
_080080DC:
	.4byte gUnknown_030012E8
_080080E0:
	.4byte gGeneralTimer
_080080E4:
	.4byte gUnknown_03000B5C
_080080E8:
	.4byte gUnknown_03001A1C
_080080EC:
	.4byte gUnknown_030019A0
_080080F0:
	.4byte gUnknown_03001938
_080080F4:
	.4byte 0x000050FE
	THUMB_FUNC_END level_play_main

	THUMB_FUNC_START level_demo_main
level_demo_main: @ 0x080080F8
	push {r4,r5,lr}
	bl sub_08029C20
	bl sub_080331FC
	ldr r0, _08008174  @ =gUnknown_03001938
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0800812A
	ldr r0, _08008178  @ =gUnknown_030012E8
	ldrh r0, [r0]
	ldr r1, _0800817C  @ =gUnknown_030012E0
	ldrh r1, [r1]
	bl sub_08038414
	bl sub_08039C44
	ldr r0, _08008180  @ =gNextMainState
	ldr r0, [r0]
	cmp r0, #33
	bne _0800812A
	b _08008230
_0800812A:
	mov r5, #0
	ldr r0, _08008184  @ =gUnknown_03001A1C
	ldr r4, [r0]
	mov r0, #216
	lsl r0, r0, #5
	and r0, r0, r4
	cmp r0, #0
	bne _0800813C
	mov r5, #1
_0800813C:
	ldr r0, _08008188  @ =0x03001A00
	strb r5, [r0]
	ldr r2, _0800818C  @ =gUnknown_03000038
	ldr r0, _08008190  @ =gUnknown_03000034
	ldr r3, [r0]
	add r0, r3, #0
	eor r0, r0, r4
	add r1, r0, #0
	and r1, r1, r4
	str r1, [r2]
	ldr r2, _08008194  @ =gUnknown_0300003C
	and r0, r0, r3
	str r0, [r2]
	mov r0, #128
	lsl r0, r0, #23
	and r1, r1, r0
	cmp r1, #0
	beq _080081A0
	ldr r2, _08008198  @ =gAfterTutorialWorld
	ldr r1, _0800819C  @ =gNextLevelID
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r0, #7
	mov r1, #1
	bl sub_080070E8
	b _080081C6
_08008174:
	.4byte gUnknown_03001938
_08008178:
	.4byte gUnknown_030012E8
_0800817C:
	.4byte gUnknown_030012E0
_08008180:
	.4byte gNextMainState
_08008184:
	.4byte gUnknown_03001A1C
_08008188:
	.4byte 0x03001A00
_0800818C:
	.4byte gUnknown_03000038
_08008190:
	.4byte gUnknown_03000034
_08008194:
	.4byte gUnknown_0300003C
_08008198:
	.4byte gAfterTutorialWorld
_0800819C:
	.4byte gNextLevelID
_080081A0:
	ldr r1, _080081B0  @ =gLevelEndTimer
	ldr r0, [r1]
	cmp r0, #0
	bge _080081B4
	bl sub_08007544
	b _080081C6
	.byte 0x00
	.byte 0x00
_080081B0:
	.4byte gLevelEndTimer
_080081B4:
	cmp r0, #0
	ble _080081BE
	sub r0, r0, #1
	str r0, [r1]
	b _080081C6
_080081BE:
	mov r0, #7
	mov r1, #1
	bl sub_080070E8
_080081C6:
	ldr r1, _08008210  @ =gUnknown_03000034
	ldr r0, _08008214  @ =gUnknown_03001A1C
	ldr r0, [r0]
	str r0, [r1]
	bl sub_0802BAA0
	bl sub_0802CF78
	bl sub_08030F50
	bl sub_08031C1C
	bl sub_080315A4
	bl sub_0802C540
	ldr r0, _08008218  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #24
	and r0, r0, r1
	cmp r0, #0
	beq _080081F6
	bl sub_0802C9D8
_080081F6:
	ldr r4, _0800821C  @ =gNextLevelInLevelTable
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _08008224
	ldr r0, _08008220  @ =0x03001A00
	ldrb r0, [r0]
	bl sub_0802BEA4
	b _0800822C
_08008210:
	.4byte gUnknown_03000034
_08008214:
	.4byte gUnknown_03001A1C
_08008218:
	.4byte gUnknown_030009D0
_0800821C:
	.4byte gNextLevelInLevelTable
_08008220:
	.4byte 0x03001A00
_08008224:
	cmp r5, #0
	beq _0800822C
	bl sub_0802BE50
_0800822C:
	bl sub_0801B310
_08008230:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END level_demo_main

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08008238
sub_08008238: @ 0x08008238
	push {r4-r6,lr}
	ldr r0, _080082B0  @ =gCameraHorizontalOffset
	ldrh r2, [r0]
	lsl r2, r2, #16
	asr r2, r2, #17
	ldr r0, _080082B4  @ =gCameraVerticalOffset
	ldrh r3, [r0]
	lsl r3, r3, #16
	asr r3, r3, #17
	ldr r4, _080082B8  @ =gBGLayerOffsets 
	strh r2, [r4, #4]
	strh r2, [r4]
	ldr r0, _080082BC  @ =gBGHorizontalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r2, r2, r0
	ldr r5, _080082C0  @ =0x03000E70
	ldr r6, [r5, #8]
	mov r1, #34
	ldrsh r0, [r6, r1]
	add r1, r2, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r6, #8]
	add r0, r0, r1
	strh r0, [r4, #8]
	ldr r5, [r5, #12]
	mov r1, #34
	ldrsh r0, [r5, r1]
	add r1, r2, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #8]
	add r0, r0, r1
	strh r0, [r4, #12]
	strh r3, [r4, #6]
	strh r3, [r4, #2]
	ldr r0, _080082C4  @ =gBGVerticalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r3, r3, r0
	mov r1, #36
	ldrsh r0, [r6, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r6, #12]
	add r0, r0, r1
	strh r0, [r4, #10]
	mov r1, #36
	ldrsh r0, [r5, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #12]
	add r0, r0, r1
	strh r0, [r4, #14]
	pop {r4-r6}
	pop {r0}
	bx r0
_080082B0:
	.4byte gCameraHorizontalOffset
_080082B4:
	.4byte gCameraVerticalOffset
_080082B8:
	.4byte gBGLayerOffsets 
_080082BC:
	.4byte gBGHorizontalOffset
_080082C0:
	.4byte 0x03000E70
_080082C4:
	.4byte gBGVerticalOffset
	THUMB_FUNC_END sub_08008238

	THUMB_FUNC_START sub_080082C8
sub_080082C8: @ 0x080082C8
	ldr r1, _0800830C  @ =gBGLayerOffsets 
	ldr r0, _08008310  @ =0x03001C04
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1]
	ldr r0, _08008314  @ =0x03001BE4
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, _08008318  @ =0x03001BEC
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, _0800831C  @ =0x03001C0C
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #12]
	ldr r0, _08008320  @ =0x03001C08
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #2]
	ldr r0, _08008324  @ =0x03001C1C
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #6]
	ldr r0, _08008328  @ =0x03001C20
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #10]
	ldr r0, _0800832C  @ =0x03001BF4
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #14]
	bx lr
_0800830C:
	.4byte gBGLayerOffsets 
_08008310:
	.4byte 0x03001C04
_08008314:
	.4byte 0x03001BE4
_08008318:
	.4byte 0x03001BEC
_0800831C:
	.4byte 0x03001C0C
_08008320:
	.4byte 0x03001C08
_08008324:
	.4byte 0x03001C1C
_08008328:
	.4byte 0x03001C20
_0800832C:
	.4byte 0x03001BF4
	THUMB_FUNC_END sub_080082C8

	THUMB_FUNC_START sub_08008330
sub_08008330: @ 0x08008330
	push {r4-r7,lr}
	ldr r0, _080083D8  @ =gCameraHorizontalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r4, r0, #17
	ldr r0, _080083DC  @ =gCameraVerticalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r5, r0, #17
	ldr r6, _080083E0  @ =0x03000D38
	ldrh r0, [r6]
	cmp r0, #90
	beq _080083A6
	ldr r3, _080083E4  @ =gUnknown_0807C118
	lsl r2, r0, #2
	add r1, r2, r3
	mov r7, #0
	ldrsh r1, [r1, r7]
	add r4, r4, r1
	add r3, r3, #2
	add r2, r2, r3
	mov r3, #0
	ldrsh r1, [r2, r3]
	add r5, r5, r1
	add r0, r0, #1
	strh r0, [r6]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #90
	bne _08008376
	ldr r0, _080083E8  @ =gUnknown_030019A0
	ldr r1, [r0]
	ldr r2, _080083EC  @ =0xDFFFFFFF
	and r1, r1, r2
	str r1, [r0]
_08008376:
	cmp r4, #0
	bge _0800837C
	mov r4, #0
_0800837C:
	add r1, r4, #0
	add r1, r1, #240
	ldr r0, _080083F0  @ =gCurrentLevelWidth
	mov r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	blt _0800838E
	add r4, r0, #0
	sub r4, r4, #240
_0800838E:
	cmp r5, #0
	bge _08008394
	mov r5, #0
_08008394:
	asr r0, r5, #1
	add r0, r0, #160
	ldr r1, _080083F4  @ =gCurrentLevelHeight
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _080083A6
	add r5, r1, #0
	sub r5, r5, #160
_080083A6:
	ldr r0, _080083F8  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #24
	and r0, r0, r1
	cmp r0, #0
	beq _08008410
	ldr r3, _080083FC  @ =gBGLayerOffsets 
	ldr r2, _08008400  @ =gSpriteHorizontalOffset
	ldr r0, _08008404  @ =0x03000D60
	ldr r1, [r0]
	asr r1, r1, #8
	ldrh r0, [r2]
	sub r0, r0, r1
	strh r0, [r3]
	ldr r0, _08008408  @ =0x03000D64
	ldr r0, [r0]
	asr r0, r0, #8
	sub r0, r5, r0
	mov r1, #160
	neg r1, r1
	add r6, r3, #0
	cmp r0, r1
	bge _0800840C
	strh r1, [r6, #2]
	b _08008418
_080083D8:
	.4byte gCameraHorizontalOffset
_080083DC:
	.4byte gCameraVerticalOffset
_080083E0:
	.4byte 0x03000D38
_080083E4:
	.4byte gUnknown_0807C118
_080083E8:
	.4byte gUnknown_030019A0
_080083EC:
	.4byte 0xDFFFFFFF
_080083F0:
	.4byte gCurrentLevelWidth
_080083F4:
	.4byte gCurrentLevelHeight
_080083F8:
	.4byte gUnknown_030009D0
_080083FC:
	.4byte gBGLayerOffsets 
_08008400:
	.4byte gSpriteHorizontalOffset
_08008404:
	.4byte 0x03000D60
_08008408:
	.4byte 0x03000D64
_0800840C:
	strh r0, [r6, #2]
	b _08008418
_08008410:
	ldr r0, _08008460  @ =gBGLayerOffsets 
	strh r4, [r0]
	strh r5, [r0, #2]
	add r6, r0, #0
_08008418:
	strh r4, [r6, #4]
	strh r5, [r6, #6]
	ldr r0, _08008464  @ =gBGHorizontalOffset
	mov r3, #0
	ldrsh r0, [r0, r3]
	add r4, r4, r0
	ldr r3, _08008468  @ =0x03000E70
	ldr r2, [r3, #8]
	mov r7, #34
	ldrsh r0, [r2, r7]
	add r1, r4, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r2, #8]
	add r0, r0, r1
	strh r0, [r6, #8]
	ldr r2, [r3, #12]
	mov r1, #34
	ldrsh r0, [r2, r1]
	add r1, r4, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r2, #8]
	add r0, r0, r1
	strh r0, [r6, #12]
	ldr r0, _0800846C  @ =0x030009E0
	ldrh r1, [r0]
	add r0, r1, #0
	sub r0, r0, #160
	sub r0, r5, r0
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #0
	bgt _08008470
	mov r0, #0
	b _0800847E
_08008460:
	.4byte gBGLayerOffsets 
_08008464:
	.4byte gBGHorizontalOffset
_08008468:
	.4byte 0x03000E70
_0800846C:
	.4byte 0x030009E0
_08008470:
	cmp r0, #176
	ble _08008478
	mov r0, #176
	b _0800847E
_08008478:
	add r0, r5, #0
	add r0, r0, #160
	sub r0, r0, r1
_0800847E:
	strh r0, [r6, #10]
	ldr r0, _080084A0  @ =gBGVerticalOffset
	mov r2, #0
	ldrsh r0, [r0, r2]
	add r5, r5, r0
	ldr r2, [r3, #12]
	mov r3, #36
	ldrsh r0, [r2, r3]
	add r1, r5, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r2, #12]
	add r0, r0, r1
	strh r0, [r6, #14]
	pop {r4-r7}
	pop {r0}
	bx r0
_080084A0:
	.4byte gBGVerticalOffset
	THUMB_FUNC_END sub_08008330

	THUMB_FUNC_START sub_080084A4
sub_080084A4: @ 0x080084A4
	push {r4-r7,lr}
	ldr r0, _0800857C  @ =gCameraHorizontalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r5, r0, #17
	ldr r0, _08008580  @ =gCameraVerticalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r6, r0, #17
	ldr r4, _08008584  @ =0x03000D38
	ldrh r0, [r4]
	cmp r0, #90
	beq _0800851A
	ldr r3, _08008588  @ =gUnknown_0807C118
	lsl r2, r0, #2
	add r1, r2, r3
	mov r7, #0
	ldrsh r1, [r1, r7]
	add r5, r5, r1
	add r3, r3, #2
	add r2, r2, r3
	mov r3, #0
	ldrsh r1, [r2, r3]
	add r6, r6, r1
	add r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #90
	bne _080084EA
	ldr r0, _0800858C  @ =gUnknown_030019A0
	ldr r1, [r0]
	ldr r2, _08008590  @ =0xDFFFFFFF
	and r1, r1, r2
	str r1, [r0]
_080084EA:
	cmp r5, #0
	bge _080084F0
	mov r5, #0
_080084F0:
	add r1, r5, #0
	add r1, r1, #240
	ldr r0, _08008594  @ =gCurrentLevelWidth
	mov r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	blt _08008502
	add r5, r0, #0
	sub r5, r5, #240
_08008502:
	cmp r6, #0
	bge _08008508
	mov r6, #0
_08008508:
	asr r0, r6, #1
	add r0, r0, #160
	ldr r1, _08008598  @ =gCurrentLevelHeight
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _0800851A
	add r6, r1, #0
	sub r6, r6, #160
_0800851A:
	ldr r3, _0800859C  @ =gBGLayerOffsets 
	strh r5, [r3, #4]
	strh r6, [r3, #6]
	ldr r0, _080085A0  @ =gBGHorizontalOffset
	mov r7, #0
	ldrsh r0, [r0, r7]
	add r5, r5, r0
	ldr r4, _080085A4  @ =0x03000E70
	ldr r2, [r4]
	mov r1, #34
	ldrsh r0, [r2, r1]
	add r1, r5, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r2, #8]
	add r0, r0, r1
	strh r0, [r3]
	ldr r1, [r4, #8]
	mov r2, #34
	ldrsh r0, [r1, r2]
	mul r0, r5, r0
	asr r0, r0, #8
	ldr r1, [r1, #8]
	add r1, r1, r0
	ldr r0, _080085A8  @ =0x03001C48
	ldrh r0, [r0]
	sub r1, r1, r0
	strh r1, [r3, #8]
	ldr r2, [r4, #12]
	mov r7, #34
	ldrsh r0, [r2, r7]
	add r1, r5, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r2, #8]
	add r0, r0, r1
	strh r0, [r3, #12]
	ldr r0, _080085AC  @ =0x030009E0
	ldrh r1, [r0]
	add r0, r1, #0
	sub r0, r0, #160
	sub r0, r6, r0
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #0
	bgt _080085B0
	mov r0, #0
	b _080085BE
	.byte 0x00
	.byte 0x00
_0800857C:
	.4byte gCameraHorizontalOffset
_08008580:
	.4byte gCameraVerticalOffset
_08008584:
	.4byte 0x03000D38
_08008588:
	.4byte gUnknown_0807C118
_0800858C:
	.4byte gUnknown_030019A0
_08008590:
	.4byte 0xDFFFFFFF
_08008594:
	.4byte gCurrentLevelWidth
_08008598:
	.4byte gCurrentLevelHeight
_0800859C:
	.4byte gBGLayerOffsets 
_080085A0:
	.4byte gBGHorizontalOffset
_080085A4:
	.4byte 0x03000E70
_080085A8:
	.4byte 0x03001C48
_080085AC:
	.4byte 0x030009E0
_080085B0:
	cmp r0, #160
	ble _080085B8
	mov r0, #160
	b _080085BE
_080085B8:
	add r0, r6, #0
	add r0, r0, #160
	sub r0, r0, r1
_080085BE:
	strh r0, [r3, #2]
	ldr r0, _080085F8  @ =gBGVerticalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r6, r6, r0
	ldr r1, [r4, #8]
	mov r2, #36
	ldrsh r0, [r1, r2]
	mul r0, r6, r0
	asr r0, r0, #8
	ldr r1, [r1, #12]
	sub r1, r1, #56
	ldr r2, _080085FC  @ =0x03001C40
	add r0, r0, r1
	ldrh r2, [r2]
	add r0, r0, r2
	strh r0, [r3, #10]
	ldr r2, [r4, #12]
	mov r7, #36
	ldrsh r0, [r2, r7]
	add r1, r6, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r2, #12]
	add r0, r0, r1
	strh r0, [r3, #14]
	pop {r4-r7}
	pop {r0}
	bx r0
_080085F8:
	.4byte gBGVerticalOffset
_080085FC:
	.4byte 0x03001C40
	THUMB_FUNC_END sub_080084A4

	THUMB_FUNC_START sub_08008600
sub_08008600: @ 0x08008600
	push {r4-r6,lr}
	ldr r0, _08008684  @ =gCameraHorizontalOffset
	ldrh r2, [r0]
	lsl r2, r2, #16
	asr r2, r2, #17
	ldr r0, _08008688  @ =gCameraVerticalOffset
	ldrh r3, [r0]
	lsl r3, r3, #16
	asr r3, r3, #17
	ldr r4, _0800868C  @ =gBGLayerOffsets 
	strh r2, [r4, #4]
	strh r2, [r4]
	ldr r0, _08008690  @ =gBGHorizontalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r2, r2, r0
	ldr r5, _08008694  @ =0x03000E70
	ldr r6, [r5, #8]
	mov r1, #34
	ldrsh r0, [r6, r1]
	mul r0, r2, r0
	asr r0, r0, #8
	ldr r1, [r6, #8]
	add r1, r1, r0
	ldr r0, _08008698  @ =0x03001C48
	ldrh r0, [r0]
	sub r1, r1, r0
	strh r1, [r4, #8]
	ldr r5, [r5, #12]
	mov r1, #34
	ldrsh r0, [r5, r1]
	add r1, r2, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #8]
	add r0, r0, r1
	strh r0, [r4, #12]
	strh r3, [r4, #6]
	strh r3, [r4, #2]
	ldr r0, _0800869C  @ =gBGVerticalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r3, r3, r0
	mov r1, #36
	ldrsh r0, [r6, r1]
	mul r0, r3, r0
	asr r0, r0, #8
	ldr r1, [r6, #12]
	sub r1, r1, #56
	ldr r2, _080086A0  @ =0x03001C40
	add r0, r0, r1
	ldrh r2, [r2]
	add r0, r0, r2
	strh r0, [r4, #10]
	mov r1, #36
	ldrsh r0, [r5, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #12]
	add r0, r0, r1
	strh r0, [r4, #14]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008684:
	.4byte gCameraHorizontalOffset
_08008688:
	.4byte gCameraVerticalOffset
_0800868C:
	.4byte gBGLayerOffsets 
_08008690:
	.4byte gBGHorizontalOffset
_08008694:
	.4byte 0x03000E70
_08008698:
	.4byte 0x03001C48
_0800869C:
	.4byte gBGVerticalOffset
_080086A0:
	.4byte 0x03001C40
	THUMB_FUNC_END sub_08008600

	THUMB_FUNC_START sub_080086A4
sub_080086A4: @ 0x080086A4
	push {r4-r6,lr}
	ldr r0, _0800873C  @ =gCameraHorizontalOffset
	ldrh r2, [r0]
	lsl r2, r2, #16
	asr r2, r2, #17
	ldr r0, _08008740  @ =gCameraVerticalOffset
	ldrh r3, [r0]
	lsl r3, r3, #16
	asr r3, r3, #17
	ldr r4, _08008744  @ =gBGLayerOffsets 
	strh r2, [r4, #4]
	strh r2, [r4]
	ldr r0, _08008748  @ =gBGHorizontalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r2, r2, r0
	ldr r5, _0800874C  @ =0x03000E70
	ldr r6, [r5, #8]
	mov r1, #34
	ldrsh r0, [r6, r1]
	mul r0, r2, r0
	asr r0, r0, #8
	ldr r1, [r6, #8]
	add r1, r1, r0
	ldr r0, _08008750  @ =0x03001C80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, r1
	ldr r1, _08008754  @ =0x03001C48
	ldrh r1, [r1]
	sub r0, r0, r1
	strh r0, [r4, #8]
	ldr r5, [r5, #12]
	mov r1, #34
	ldrsh r0, [r5, r1]
	add r1, r2, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #8]
	add r0, r0, r1
	strh r0, [r4, #12]
	strh r3, [r4, #6]
	strh r3, [r4, #2]
	ldr r0, _08008758  @ =gBGVerticalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r3, r3, r0
	mov r1, #36
	ldrsh r0, [r6, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r6, #12]
	add r0, r0, r1
	ldr r1, _0800875C  @ =0x03001C84
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	sub r1, r1, #8
	ldr r2, _08008760  @ =0x03001C40
	add r0, r0, r1
	ldrh r2, [r2]
	add r0, r0, r2
	strh r0, [r4, #10]
	mov r1, #36
	ldrsh r0, [r5, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #12]
	add r0, r0, r1
	strh r0, [r4, #14]
	pop {r4-r6}
	pop {r0}
	bx r0
_0800873C:
	.4byte gCameraHorizontalOffset
_08008740:
	.4byte gCameraVerticalOffset
_08008744:
	.4byte gBGLayerOffsets 
_08008748:
	.4byte gBGHorizontalOffset
_0800874C:
	.4byte 0x03000E70
_08008750:
	.4byte 0x03001C80
_08008754:
	.4byte 0x03001C48
_08008758:
	.4byte gBGVerticalOffset
_0800875C:
	.4byte 0x03001C84
_08008760:
	.4byte 0x03001C40
	THUMB_FUNC_END sub_080086A4

	THUMB_FUNC_START sub_08008764
sub_08008764: @ 0x08008764
	push {r4-r6,lr}
	ldr r0, _080087FC  @ =gCameraHorizontalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r6, r0, #17
	ldr r0, _08008800  @ =gCameraVerticalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r5, r0, #17
	ldr r0, _08008804  @ =0x03001D60
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r5, r5, r0
	cmp r5, #0
	bge _08008784
	mov r5, #0
_08008784:
	asr r0, r5, #1
	add r0, r0, #160
	ldr r1, _08008808  @ =gCurrentLevelHeight
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _08008796
	add r5, r1, #0
	sub r5, r5, #160
_08008796:
	ldr r2, _0800880C  @ =gBGLayerOffsets 
	strh r6, [r2, #4]
	strh r6, [r2]
	ldr r0, _08008810  @ =gBGHorizontalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r6, r6, r0
	ldr r3, _08008814  @ =0x03000E70
	ldr r4, [r3, #8]
	mov r1, #34
	ldrsh r0, [r4, r1]
	add r1, r6, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r4, #8]
	add r0, r0, r1
	strh r0, [r2, #8]
	ldr r3, [r3, #12]
	mov r1, #34
	ldrsh r0, [r3, r1]
	add r1, r6, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r3, #8]
	add r0, r0, r1
	strh r0, [r2, #12]
	strh r5, [r2, #6]
	strh r5, [r2, #2]
	ldr r0, _08008818  @ =gBGVerticalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r5, r5, r0
	mov r1, #36
	ldrsh r0, [r4, r1]
	add r1, r5, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r4, #12]
	add r0, r0, r1
	strh r0, [r2, #10]
	mov r1, #36
	ldrsh r0, [r3, r1]
	add r1, r5, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r3, #12]
	add r0, r0, r1
	strh r0, [r2, #14]
	pop {r4-r6}
	pop {r0}
	bx r0
_080087FC:
	.4byte gCameraHorizontalOffset
_08008800:
	.4byte gCameraVerticalOffset
_08008804:
	.4byte 0x03001D60
_08008808:
	.4byte gCurrentLevelHeight
_0800880C:
	.4byte gBGLayerOffsets 
_08008810:
	.4byte gBGHorizontalOffset
_08008814:
	.4byte 0x03000E70
_08008818:
	.4byte gBGVerticalOffset
	THUMB_FUNC_END sub_08008764

	THUMB_FUNC_START sub_0800881C
sub_0800881C: @ 0x0800881C
	push {r4-r6,lr}
	ldr r0, _080088A4  @ =gCameraHorizontalOffset
	ldrh r2, [r0]
	lsl r2, r2, #16
	asr r2, r2, #17
	ldr r0, _080088A8  @ =gCameraVerticalOffset
	ldrh r3, [r0]
	lsl r3, r3, #16
	asr r3, r3, #17
	ldr r4, _080088AC  @ =gBGLayerOffsets 
	strh r2, [r4, #4]
	strh r2, [r4]
	ldr r0, _080088B0  @ =gBGHorizontalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r2, r2, r0
	ldr r5, _080088B4  @ =0x03000E70
	ldr r6, [r5, #8]
	mov r1, #34
	ldrsh r0, [r6, r1]
	add r1, r2, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r6, #8]
	add r0, r0, r1
	strh r0, [r4, #8]
	ldr r5, [r5, #12]
	mov r1, #34
	ldrsh r0, [r5, r1]
	add r1, r2, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #8]
	add r0, r0, r1
	strh r0, [r4, #12]
	strh r3, [r4, #6]
	ldr r0, _080088B8  @ =0x03000C00
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, r3
	strh r0, [r4, #2]
	ldr r0, _080088BC  @ =gBGVerticalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r3, r3, r0
	mov r1, #36
	ldrsh r0, [r6, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, _080088C0  @ =0x03000BFC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, r1
	strh r0, [r4, #10]
	mov r1, #36
	ldrsh r0, [r5, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #12]
	add r0, r0, r1
	strh r0, [r4, #14]
	pop {r4-r6}
	pop {r0}
	bx r0
_080088A4:
	.4byte gCameraHorizontalOffset
_080088A8:
	.4byte gCameraVerticalOffset
_080088AC:
	.4byte gBGLayerOffsets 
_080088B0:
	.4byte gBGHorizontalOffset
_080088B4:
	.4byte 0x03000E70
_080088B8:
	.4byte 0x03000C00
_080088BC:
	.4byte gBGVerticalOffset
_080088C0:
	.4byte 0x03000BFC
	THUMB_FUNC_END sub_0800881C

	THUMB_FUNC_START sub_080088C4
sub_080088C4: @ 0x080088C4
	ldr r0, _080088E4  @ =gBGLayerOffsets 
	mov r2, #0
	strh r2, [r0, #4]
	strh r2, [r0]
	ldr r1, _080088E8  @ =0x03000C04
	ldrh r1, [r1]
	strh r1, [r0, #8]
	strh r2, [r0, #12]
	strh r2, [r0, #6]
	strh r2, [r0, #2]
	ldr r1, _080088EC  @ =0x03000C0C
	ldrh r1, [r1]
	strh r1, [r0, #10]
	strh r2, [r0, #14]
	bx lr
	.byte 0x00
	.byte 0x00
_080088E4:
	.4byte gBGLayerOffsets 
_080088E8:
	.4byte 0x03000C04
_080088EC:
	.4byte 0x03000C0C
	THUMB_FUNC_END sub_080088C4

	THUMB_FUNC_START level_play_loop
level_play_loop: @ 0x080088F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r5, sp, #4
	mov r0, #0
	strh r0, [r5]
	ldr r0, _08008A4C  @ =gUnknown_03001930
	ldrh r0, [r0]
	mov r7, sp
	add r7, r7, #6
	strh r0, [r7]
	ldr r0, _08008A50  @ =gUnknown_0300192C
	ldrh r0, [r0]
	add r6, sp, #8
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _08008A54  @ =0x0000FF7F
	and r0, r0, r1
	strh r0, [r2]
	mov r0, #160
	str r0, [sp]
	ldr r4, _08008A58  @ =0x040000D4
	mov r0, sp
	str r0, [r4]
	ldr r1, _08008A5C  @ =gOamData
	mov r8, r1
	str r1, [r4, #4]
	ldr r0, _08008A60  @ =0x85000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r1, #0
	ldr r2, _08008A64  @ =gMainState
	mov r9, r2
	ldr r0, [r2]
	sub r0, r0, #10
	cmp r0, #1
	bhi _08008946
	mov r1, #1
_08008946:
	add r0, r1, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0803D248
	add r0, r5, #0
	bl sub_08031AD4
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_080322A8
	mov r7, r8
	str r7, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08008A68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08008A6C  @ =0x03000E80
	ldr r0, [r0]
	ldr r1, _08008A70  @ =gUnknown_0807820C
	ldr r2, [r1]
	ldr r1, _08008A74  @ =0x0000800C
	add r2, r2, r1
	mov r1, #6
	mov r3, #6
	bl sub_0802BA38
	ldr r0, _08008A78  @ =gUnknown_030009EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080089A8
	mov r2, r9
	ldr r0, [r2]
	cmp r0, #10
	beq _080089A8
	cmp r0, #11
	beq _080089A8
	ldr r0, _08008A7C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	beq _08008A36
_080089A8:
	mov r5, #0
	ldr r7, _08008A70  @ =gUnknown_0807820C
	mov r12, r7
	mov r1, r12
	ldr r0, [r1]
	ldr r2, _08008A80  @ =0x0000C00C
	add r0, r0, r2
	ldr r0, [r0]
	cmp r5, r0
	bcs _08008A30
	ldr r3, _08008A58  @ =0x040000D4
	ldr r0, _08008A6C  @ =0x03000E80
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _08008A84  @ =gUnknown_030009D0
	ldrb r0, [r0]
	ldr r7, _08008A88  @ =gNextLevelInLevelTable
	mov r10, r7
	ldr r1, _08008A8C  @ =0x03000E90
	mov r9, r1
	mov r6, #24
	and r6, r6, r0
_080089D4:
	lsl r2, r5, #1
	ldr r7, _08008A74  @ =0x0000800C
	add r0, r2, r7
	ldr r1, _08008A70  @ =gUnknown_0807820C
	ldr r4, [r1]
	add r0, r4, r0
	str r0, [r3]
	mov r7, r8
	add r0, r7, r2
	str r0, [r3, #4]
	ldr r0, _08008A90  @ =0x80000400
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	cmp r6, #0
	bne _08008A1C
	ldr r7, _08008A94  @ =gAfterTutorialWorld
	mov r1, #0
	ldrsb r1, [r7, r1]
	cmp r1, #2
	bne _08008A06
	mov r7, r10
	ldr r0, [r7, #32]
	and r0, r0, r1
	cmp r0, #0
	bne _08008A1C
_08008A06:
	ldr r1, _08008A98  @ =0x0000A00C
	add r0, r2, r1
	add r0, r4, r0
	str r0, [r3]
	mov r7, r9
	ldr r0, [r7]
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _08008A90  @ =0x80000400
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08008A1C:
	mov r1, #128
	lsl r1, r1, #3
	add r5, r5, r1
	mov r2, r12
	ldr r0, [r2]
	ldr r7, _08008A80  @ =0x0000C00C
	add r0, r0, r7
	ldr r0, [r0]
	cmp r5, r0
	bcc _080089D4
_08008A30:
	mov r0, #0
	ldr r1, _08008A78  @ =gUnknown_030009EC
	strb r0, [r1]
_08008A36:
	bl sub_0801B4BC
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
_08008A4C:
	.4byte gUnknown_03001930
_08008A50:
	.4byte gUnknown_0300192C
_08008A54:
	.4byte 0x0000FF7F
_08008A58:
	.4byte 0x040000D4
_08008A5C:
	.4byte gOamData
_08008A60:
	.4byte 0x85000100
_08008A64:
	.4byte gMainState
_08008A68:
	.4byte 0x80000200
_08008A6C:
	.4byte 0x03000E80
_08008A70:
	.4byte gUnknown_0807820C
_08008A74:
	.4byte 0x0000800C
_08008A78:
	.4byte gUnknown_030009EC
_08008A7C:
	.4byte gUnknown_03001A1C
_08008A80:
	.4byte 0x0000C00C
_08008A84:
	.4byte gUnknown_030009D0
_08008A88:
	.4byte gNextLevelInLevelTable
_08008A8C:
	.4byte 0x03000E90
_08008A90:
	.4byte 0x80000400
_08008A94:
	.4byte gAfterTutorialWorld
_08008A98:
	.4byte 0x0000A00C
	THUMB_FUNC_END level_play_loop

	THUMB_FUNC_START after_tutorial_init_callback
after_tutorial_init_callback: @ 0x08008A9C
	push {lr}
	ldr r0, _08008AC0  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08008ACC
	ldr r0, _08008AC4  @ =gAfterTutorialWorld
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _08008AC8  @ =gNextLevelID
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_0800F6EC
	b _08008AFA
_08008AC0:
	.4byte gLevelEWorldFlag
_08008AC4:
	.4byte gAfterTutorialWorld
_08008AC8:
	.4byte gNextLevelID
_08008ACC:
	ldr r0, _08008AE8  @ =gUnknown_0807CA98
	ldr r1, [r0]
	ldr r0, _08008AEC  @ =gNextLevelID
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r0, r2, #2
	add r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08008AF0
	add r0, r2, #0
	bl sub_0802EDAC
	b _08008AFA
_08008AE8:
	.4byte gUnknown_0807CA98
_08008AEC:
	.4byte gNextLevelID
_08008AF0:
	mov r0, #24
	mov r1, #0
	bl sub_080070E8
	b _08008B0C
_08008AFA:
	ldr r0, _08008B10  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #0
	bl sub_080070E8
_08008B0C:
	pop {r0}
	bx r0
_08008B10:
	.4byte gNextLevelInLevelTable
	THUMB_FUNC_END after_tutorial_init_callback

	THUMB_FUNC_START level_play_init_callback
level_play_init_callback: @ 0x08008B14
	push {r4,r5,lr}
	ldr r1, _08008B70  @ =gUnknown_03000BD0
	mov r0, #1
	strb r0, [r1]
	mov r0, #0
	bl sub_08034898
	bl sub_08040D50
	bl sub_0805727C
	bl sub_08038B18
	bl sub_0802B998
	bl sub_080069BC
	ldr r1, _08008B74  @ =gUnknown_030009D0
	ldr r4, _08008B78  @ =gNextLevelInLevelTable
	ldr r0, [r4]
	ldr r0, [r0, #12]
	strb r0, [r1]
	ldr r0, _08008B7C  @ =gUnknown_030009D8
	mov r5, #0
	strh r5, [r0]
	ldr r0, _08008B80  @ =gUnknown_03000B60
	strb r5, [r0]
	add r0, r4, #0
	bl sub_08032C44
	ldr r0, [r4, #4]
	bl sub_080041B8
	mov r0, #2
	bl sub_08034884
	ldr r0, _08008B84  @ =0x03001B98
	strb r5, [r0]
	bl sub_080072A4
	ldr r0, _08008B88  @ =gUnknown_030009D4
	strb r5, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008B70:
	.4byte gUnknown_03000BD0
_08008B74:
	.4byte gUnknown_030009D0
_08008B78:
	.4byte gNextLevelInLevelTable
_08008B7C:
	.4byte gUnknown_030009D8
_08008B80:
	.4byte gUnknown_03000B60
_08008B84:
	.4byte 0x03001B98
_08008B88:
	.4byte gUnknown_030009D4
	THUMB_FUNC_END level_play_init_callback

	THUMB_FUNC_START level_demo_init_callback
level_demo_init_callback: @ 0x08008B8C
	push {r4,lr}
	ldr r1, _08008BE0  @ =0x03001744
	mov r0, #0
	strb r0, [r1]
	mov r0, #0
	bl sub_08034898
	bl sub_08040D50
	bl sub_0805727C
	bl sub_08038B18
	bl sub_0802B998
	bl sub_080069BC
	ldr r1, _08008BE4  @ =gUnknown_030009D0
	ldr r4, _08008BE8  @ =gNextLevelInLevelTable
	ldr r0, [r4]
	ldr r0, [r0, #12]
	strb r0, [r1]
	ldr r0, _08008BEC  @ =gUnknown_030009D8
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08008BF0  @ =gUnknown_03000B60
	strb r1, [r0]
	add r0, r4, #0
	bl sub_08032C44
	ldr r0, [r4, #4]
	bl sub_080041B8
	mov r0, #2
	bl sub_08034884
	bl level_demo_reset_init_callback
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008BE0:
	.4byte 0x03001744
_08008BE4:
	.4byte gUnknown_030009D0
_08008BE8:
	.4byte gNextLevelInLevelTable
_08008BEC:
	.4byte gUnknown_030009D8
_08008BF0:
	.4byte gUnknown_03000B60
	THUMB_FUNC_END level_demo_init_callback

	THUMB_FUNC_START level_play_end
level_play_end: @ 0x08008BF4
	push {lr}
	ldr r0, _08008C0C  @ =gNextMainState
	ldr r1, [r0]
	add r0, r1, #0
	sub r0, r0, #16
	cmp r0, #1
	bls _08008C06
	cmp r1, #33
	bne _08008C10
_08008C06:
	bl sub_080720E4
	b _08008C26
_08008C0C:
	.4byte gNextMainState
_08008C10:
	mov r0, #22
	bl sub_08071C6C
	ldr r0, _08008C2C  @ =gMainState
	ldr r0, [r0]
	cmp r0, #5
	beq _08008C26
	cmp r0, #2
	beq _08008C26
	bl sub_080720AC
_08008C26:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008C2C:
	.4byte gMainState
	THUMB_FUNC_END level_play_end

	THUMB_FUNC_START sub_08008C30
sub_08008C30: @ 0x08008C30
	bx lr
	THUMB_FUNC_END sub_08008C30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START unknown_0A_init_callback
unknown_0A_init_callback: @ 0x08008C34
	push {r4,lr}
	bl sub_08071BE0
	ldr r1, _08008C90  @ =gUnknown_03000B60
	mov r0, #0
	strb r0, [r1]
	mov r0, #0
	bl sub_08034898
	bl sub_08040D50
	bl sub_0805727C
	ldr r4, _08008C94  @ =gNextLevelInLevelTable
	add r0, r4, #0
	bl sub_08032C44
	ldr r0, [r4, #4]
	bl sub_080041B8
	bl sub_08038B18
	bl sub_08071C00
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _08008C98  @ =0x0000FF7F
	and r0, r0, r1
	strh r0, [r2]
	mov r0, #0
	mov r1, #0
	bl sub_08033F80
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #2
	bl sub_08034884
	bl level_editor_init_callback
	pop {r4}
	pop {r0}
	bx r0
_08008C90:
	.4byte gUnknown_03000B60
_08008C94:
	.4byte gNextLevelInLevelTable
_08008C98:
	.4byte 0x0000FF7F
	THUMB_FUNC_END unknown_0A_init_callback

	THUMB_FUNC_START level_editor_init_callback
level_editor_init_callback: @ 0x08008C9C
	push {lr}
	mov r0, #2
	bl sub_08034898
	bl sub_08008CE4
	bl sub_080069E8
	bl sub_080040D8
	bl sub_0802C20C
	bl sub_080386DC
	mov r0, #0
	bl sub_08004634
	ldr r2, _08008CD8  @ =0x03000A0C
	ldr r1, _08008CDC  @ =0x0400000A
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r2, [r1]
	ldr r0, _08008CE0  @ =0x0000FFFC
	and r0, r0, r2
	strh r0, [r1]
	bl sub_0800EF0C
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008CD8:
	.4byte 0x03000A0C
_08008CDC:
	.4byte 0x0400000A
_08008CE0:
	.4byte 0x0000FFFC
	THUMB_FUNC_END level_editor_init_callback

	THUMB_FUNC_START sub_08008CE4
sub_08008CE4: @ 0x08008CE4
	ldr r1, _08008CEC  @ =0x030009FC
	mov r0, #0
	strb r0, [r1]
	bx lr
_08008CEC:
	.4byte 0x030009FC
	THUMB_FUNC_END sub_08008CE4

	THUMB_FUNC_START level_edit_main
level_edit_main: @ 0x08008CF0
	push {r4,r5,lr}
	ldr r5, _08008D00  @ =0x030009FC
	ldrb r4, [r5]
	cmp r4, #0
	beq _08008D04
	bl sub_080331FC
	b _08008D30
_08008D00:
	.4byte 0x030009FC
_08008D04:
	bl sub_080331FC
	ldr r2, _08008D1C  @ =gUnknown_030012E0
	ldrh r0, [r2]
	cmp r0, #1
	bne _08008D28
	ldr r1, _08008D20  @ =gUnknown_030012E8
	ldr r0, _08008D24  @ =gUnknown_03001708
	strh r4, [r0]
	strh r4, [r2]
	strh r4, [r1]
	b _08008D30
_08008D1C:
	.4byte gUnknown_030012E0
_08008D20:
	.4byte gUnknown_030012E8
_08008D24:
	.4byte gUnknown_03001708
_08008D28:
	cmp r0, #0
	beq _08008D30
	mov r0, #1
	strb r0, [r5]
_08008D30:
	bl sub_08004FBC
	bl sub_08005FA0
	bl sub_0801B310
	ldr r0, _08008D74  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08008D68
	bl sub_08006A34
	cmp r0, #7
	bne _08008D68
	mov r0, #13
	mov r1, #1
	bl sub_080070E8
	ldr r1, _08008D78  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r1, r2]
	mov r2, #16
	ldrsh r1, [r1, r2]
	mov r2, #0
	bl sub_080107E8
_08008D68:
	bl sub_08008238
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008D74:
	.4byte gUnknown_030012E8
_08008D78:
	.4byte gNextLevelInLevelTable
	THUMB_FUNC_END level_edit_main

	THUMB_FUNC_START level_editor_end
level_editor_end: @ 0x08008D7C
	push {lr}
	ldr r0, _08008D98  @ =0x0400000A
	ldr r1, _08008D9C  @ =0x03000A0C
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_080062D0
	bl sub_080720AC
	bl sub_08006A00
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008D98:
	.4byte 0x0400000A
_08008D9C:
	.4byte 0x03000A0C
	THUMB_FUNC_END level_editor_end

	THUMB_FUNC_START sub_08008DA0
sub_08008DA0: @ 0x08008DA0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r0, #96
	mov r9, r0
	mov r6, #0
	ldr r1, _08008E48  @ =0x030019AC
	ldr r0, [r1]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r6, r0
	bge _08008EA6
	ldr r2, _08008E4C  @ =gUnknown_03000A10
	mov r8, r2
	mov r0, #128
	lsl r0, r0, #1
	mov r12, r0
	ldr r7, _08008E50  @ =gCurrentEnemyScore
	ldr r1, _08008E54  @ =gUnknown_03001A1C
	mov r10, r1
_08008DD2:
	lsl r1, r6, #2
	mov r0, r8
	add r0, r0, #156
	add r5, r1, r0
	ldr r4, [r5]
	cmp r4, r12
	bgt _08008E8A
	lsl r3, r6, #1
	mov r2, r8
	add r2, r2, #130
	add r2, r3, r2
	str r2, [sp]
	mov r2, r12
	sub r0, r2, r4
	add r1, r0, #0
	mul r1, r0, r1
	mov r2, r9
	mul r2, r1, r2
	add r1, r2, #0
	lsl r0, r0, #1
	mul r0, r4, r0
	mov r2, #151
	mul r0, r2, r0
	add r1, r1, r0
	add r0, r4, #0
	mul r0, r4, r0
	mul r0, r2, r0
	add r1, r1, r0
	asr r1, r1, #16
	ldr r0, [sp]
	strh r1, [r0]
	ldr r1, _08008E58  @ =0x03000A9E
	add r3, r3, r1
	ldr r2, [r5]
	mov r1, r12
	sub r0, r1, r2
	add r1, r0, #0
	mul r1, r0, r1
	lsl r0, r0, #1
	mul r0, r2, r0
	add r1, r1, r0
	lsl r1, r1, #4
	add r0, r2, #0
	mul r0, r2, r0
	add r1, r1, r0
	asr r1, r1, #16
	strh r1, [r3]
	ldr r0, [r5]
	add r0, r0, #3
	str r0, [r5]
	cmp r0, r12
	ble _08008E8A
	cmp r6, #5
	bne _08008E60
	ldr r0, [r7]
	ldr r2, _08008E5C  @ =0x00001388
	add r0, r0, r2
	b _08008E68
	.byte 0x00
	.byte 0x00
_08008E48:
	.4byte 0x030019AC
_08008E4C:
	.4byte gUnknown_03000A10
_08008E50:
	.4byte gCurrentEnemyScore
_08008E54:
	.4byte gUnknown_03001A1C
_08008E58:
	.4byte 0x03000A9E
_08008E5C:
	.4byte 0x00001388
_08008E60:
	ldr r0, [r7]
	mov r1, #250
	lsl r1, r1, #2
	add r0, r0, r1
_08008E68:
	str r0, [r7]
	ldr r2, _08008EB8  @ =0x030019AC
	ldr r0, [r2]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r0, r0, #1
	cmp r6, r0
	bne _08008E8A
	mov r1, r10
	ldr r0, [r1]
	mov r1, #134
	lsl r1, r1, #7
	orr r0, r0, r1
	mov r2, r10
	str r0, [r2]
_08008E8A:
	mov r0, #13
	neg r0, r0
	add r9, r9, r0
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r1, _08008EB8  @ =0x030019AC
	ldr r0, [r1]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r6, r0
	blt _08008DD2
_08008EA6:
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
_08008EB8:
	.4byte 0x030019AC
	THUMB_FUNC_END sub_08008DA0

	THUMB_FUNC_START sub_08008EBC
sub_08008EBC: @ 0x08008EBC
	push {r4-r7,lr}
	sub sp, sp, #32
	add r7, r0, #0
	ldr r1, _08008F6C  @ =gUnknown_08076368
	mov r0, sp
	mov r2, #31
	bl memcpy
	ldr r6, _08008F70  @ =gUnknown_03000A10
	add r0, r6, #0
	add r0, r0, #57
	ldrb r5, [r0]
	cmp r5, #1
	beq _08008EDA
	b _080091A0
_08008EDA:
	sub r0, r0, #8
	ldrb r0, [r0]
	add r0, sp, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08008EE8
	b _080091A0
_08008EE8:
	ldr r0, _08008F74  @ =gCurrentLevelHeight
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #160
	bgt _08008EF4
	b _08009050
_08008EF4:
	ldr r0, _08008F78  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _08008F02
	b _08009050
_08008F02:
	ldr r1, _08008F7C  @ =0x040000D4
	ldr r2, _08008F80  @ =gUnknown_082E84D4
	mov r12, r2
	str r2, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _08008F84  @ =gOamData
	add r0, r0, r4
	str r0, [r1, #4]
	ldr r0, _08008F88  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r1, [r2, #2]
	ldr r0, _08008F8C  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #104
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, #8
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldr r2, [r6, #40]
	ldr r0, _08008F90  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _08008F94  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	add r0, r6, #0
	add r0, r0, #55
	ldrb r0, [r0]
	and r5, r5, r0
	mov r3, r12
	mov r12, r4
	cmp r5, #0
	beq _08008F98
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	b _08008FA6
_08008F6C:
	.4byte gUnknown_08076368
_08008F70:
	.4byte gUnknown_03000A10
_08008F74:
	.4byte gCurrentLevelHeight
_08008F78:
	.4byte gUnknown_03000B80
_08008F7C:
	.4byte 0x040000D4
_08008F80:
	.4byte gUnknown_082E84D4
_08008F84:
	.4byte gOamData
_08008F88:
	.4byte 0x84000002
_08008F8C:
	.4byte 0xFFFFFE00
_08008F90:
	.4byte 0x000003FF
_08008F94:
	.4byte 0xFFFFFC00
_08008F98:
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
_08008FA6:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _08009020  @ =0x040000D4
	str r3, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r1, #4]
	ldr r0, _08009024  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r1, [r2, #2]
	ldr r0, _08009028  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #104
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, #120
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	mov r2, #32
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _0800902C  @ =gUnknown_03000A10
	ldr r1, [r3, #40]
	ldr r0, _08009030  @ =0x000003FF
	and r1, r1, r0
	ldrh r4, [r2, #4]
	ldr r0, _08009034  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	add r3, r3, #55
	ldrb r1, [r3]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08009038
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	b _08009046
_08009020:
	.4byte 0x040000D4
_08009024:
	.4byte 0x84000002
_08009028:
	.4byte 0xFFFFFE00
_0800902C:
	.4byte gUnknown_03000A10
_08009030:
	.4byte 0x000003FF
_08009034:
	.4byte 0xFFFFFC00
_08009038:
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
_08009046:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_08009050:
	ldr r0, _080090C8  @ =gCurrentLevelWidth
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #240
	bgt _0800905C
	b _080091A0
_0800905C:
	ldr r1, _080090CC  @ =0x040000D4
	ldr r6, _080090D0  @ =gUnknown_082E8A50
	str r6, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _080090D4  @ =gOamData
	mov r12, r2
	add r0, r0, r12
	str r0, [r1, #4]
	ldr r0, _080090D8  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r1, [r2, #2]
	ldr r0, _080090DC  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, #64
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r4, _080090E0  @ =gUnknown_03000A10
	ldr r1, [r4, #44]
	ldr r0, _080090E4  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _080090E8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	add r0, r4, #0
	add r0, r0, #55
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080090EC
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	b _080090FA
	.byte 0x00
	.byte 0x00
_080090C8:
	.4byte gCurrentLevelWidth
_080090CC:
	.4byte 0x040000D4
_080090D0:
	.4byte gUnknown_082E8A50
_080090D4:
	.4byte gOamData
_080090D8:
	.4byte 0x84000002
_080090DC:
	.4byte 0xFFFFFE00
_080090E0:
	.4byte gUnknown_03000A10
_080090E4:
	.4byte 0x000003FF
_080090E8:
	.4byte 0xFFFFFC00
_080090EC:
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
_080090FA:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _08009174  @ =0x040000D4
	str r6, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r1, #4]
	ldr r0, _08009178  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r1, [r2, #2]
	ldr r0, _0800917C  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #200
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, #64
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [r4, #44]
	ldr r0, _08009180  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _08009184  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	add r0, r4, #0
	add r0, r0, #55
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08009188
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	b _08009196
_08009174:
	.4byte 0x040000D4
_08009178:
	.4byte 0x84000002
_0800917C:
	.4byte 0xFFFFFE00
_08009180:
	.4byte 0x000003FF
_08009184:
	.4byte 0xFFFFFC00
_08009188:
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
_08009196:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_080091A0:
	add sp, sp, #32
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08008EBC

	THUMB_FUNC_START sub_080091A8
sub_080091A8: @ 0x080091A8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r10, r0
	add r6, r1, #0
	ldr r0, _080095A0  @ =gUnknown_03000A10
	mov r12, r0
	add r0, r0, #48
	mov r1, #0
	mov r9, r1
	mov r2, #1
	strb r2, [r0]
	mov r0, r12
	add r0, r0, #182
	mov r3, r9
	strb r3, [r0]
	sub r0, r0, #125
	strb r3, [r0]
	add r0, r0, #11
	strb r3, [r0]
	sub r0, r0, #18
	strb r3, [r0]
	add r0, r0, #1
	strb r2, [r0]
	add r0, r0, #153
	strb r3, [r0]
	add r0, r0, #10
	strb r3, [r0]
	mov r4, r10
	ldrh r0, [r4]
	mov r7, r12
	str r0, [r7, #20]
	ldr r0, _080095A4  @ =gUnknown_082EBC34
	ldr r7, _080095A8  @ =0x040000D4
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r2, _080095B0  @ =0x84000080
	str r2, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r2, [r6]
	mov r3, #128
	lsl r3, r3, #2
	add r0, r2, r3
	strh r0, [r6]
	ldrh r4, [r4]
	mov r8, r4
	mov r0, r8
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	str r0, [r1, #24]
	ldr r0, _080095B4  @ =gUnknown_082EAE80
	str r0, [r7]
	ldrh r0, [r6]
	ldr r3, _080095AC  @ =0x06010000
	add r0, r0, r3
	str r0, [r7, #4]
	mov r4, #132
	lsl r4, r4, #24
	str r4, [sp]
	add r4, r4, #32
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #160
	lsl r1, r1, #2
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #20
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r3, r12
	str r0, [r3, #36]
	ldr r0, _080095B8  @ =gUnknown_082F0BE4
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	mov r3, #192
	lsl r3, r3, #2
	add r0, r2, r3
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	str r0, [r1, #40]
	ldr r0, _080095BC  @ =gUnknown_082E84DC
	str r0, [r7]
	ldrh r0, [r6]
	ldr r3, _080095AC  @ =0x06010000
	add r0, r0, r3
	str r0, [r7, #4]
	ldr r0, _080095B0  @ =0x84000080
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #160
	lsl r1, r1, #3
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #40
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r3, r12
	str r0, [r3, #44]
	ldr r0, _080095C0  @ =gUnknown_082E8A58
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r3, _080095B0  @ =0x84000080
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #224
	lsl r1, r1, #3
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #56
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r3, r12
	str r0, [r3, #28]
	ldr r0, _080095C4  @ =gUnknown_082F0CFC
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	mov r3, #240
	lsl r3, r3, #3
	add r0, r2, r3
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #60
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	str r0, [r1, #32]
	ldr r0, _080095C8  @ =gUnknown_082F0C90
	str r0, [r7]
	ldrh r0, [r6]
	ldr r3, _080095AC  @ =0x06010000
	add r0, r0, r3
	str r0, [r7, #4]
	ldr r5, _080095CC  @ =0x84000010
	str r5, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #248
	lsl r1, r1, #3
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #62
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #228
	str r0, [r1]
	ldr r0, _080095D0  @ =gUnknown_082EFC70
	str r0, [r7]
	ldrh r0, [r6]
	add r0, r0, r3
	str r0, [r7, #4]
	mov r3, #8
	ldr r0, [sp]
	orr r3, r3, r0
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #252
	lsl r1, r1, #3
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #63
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #232
	str r0, [r1]
	ldr r0, _080095D4  @ =gUnknown_082EFCBC
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #64
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #236
	str r0, [r1]
	ldr r0, _080095D8  @ =gUnknown_082F0770
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #130
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #65
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #240
	str r0, [r1]
	ldr r0, _080095DC  @ =gUnknown_082F07BC
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #132
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #66
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #244
	str r0, [r1]
	ldr r0, _080095E0  @ =gUnknown_082F0808
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #134
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #67
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #248
	str r0, [r1]
	ldr r0, _080095E4  @ =gUnknown_082F0854
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #136
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #68
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #252
	str r0, [r1]
	ldr r0, _080095E8  @ =gUnknown_082EFDB4
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #138
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #69
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #128
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _080095EC  @ =gUnknown_082EFE00
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #140
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #70
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #130
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _080095F0  @ =gUnknown_082EFE4C
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #142
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #71
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #132
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _080095F4  @ =gUnknown_082EFE98
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #144
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #72
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #134
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _080095F8  @ =gUnknown_082EE194
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	mov r4, #152
	lsl r4, r4, #4
	add r0, r2, r4
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #76
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #136
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _080095FC  @ =gUnknown_082EFC04
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r5, [r7, #8]
	ldr r0, [r7, #8]
	add r4, r4, #64
	add r0, r2, r4
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #78
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #138
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _08009600  @ =gUnknown_082F01B8
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	mov r0, #88
	ldr r4, [sp]
	orr r0, r0, r4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #178
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #89
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #140
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _08009604  @ =gUnknown_082F0344
	str r0, [r7]
	ldrh r0, [r6]
	ldr r4, _080095AC  @ =0x06010000
	add r0, r0, r4
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #180
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #90
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #142
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _08009608  @ =gUnknown_082F094C
	str r0, [r7]
	ldrh r0, [r6]
	add r0, r0, r4
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r3, #182
	lsl r3, r3, #4
	add r2, r2, r3
	strh r2, [r6]
	mov r0, r8
	add r0, r0, #91
	mov r4, r10
	strh r0, [r4]
	ldr r0, _0800960C  @ =0x00000123
	add r0, r0, r12
	mov r1, r9
	strb r1, [r0]
	mov r0, #146
	lsl r0, r0, #1
	add r0, r0, r12
	strb r1, [r0]
	mov r0, r12
	add r0, r0, #215
	mov r2, #3
	strb r2, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #4
	mov r3, r9
	str r3, [r0]
	mov r1, r12
	add r1, r1, #224
	ldr r0, _08009610  @ =gUnknown_082EB118
	str r0, [r1]
	ldr r0, _08009614  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r4, r12
	cmp r0, #4
	bne _08009622
	add r0, r4, #0
	add r0, r0, #206
	strb r3, [r0]
	add r0, r0, #1
	mov r1, r9
	strb r1, [r0]
	add r0, r0, #1
	mov r1, #0
	mov r3, r9
	strh r3, [r0]
	add r0, r0, #2
	b _08009618
	.byte 0x00
	.byte 0x00
_080095A0:
	.4byte gUnknown_03000A10
_080095A4:
	.4byte gUnknown_082EBC34
_080095A8:
	.4byte 0x040000D4
_080095AC:
	.4byte 0x06010000
_080095B0:
	.4byte 0x84000080
_080095B4:
	.4byte gUnknown_082EAE80
_080095B8:
	.4byte gUnknown_082F0BE4
_080095BC:
	.4byte gUnknown_082E84DC
_080095C0:
	.4byte gUnknown_082E8A58
_080095C4:
	.4byte gUnknown_082F0CFC
_080095C8:
	.4byte gUnknown_082F0C90
_080095CC:
	.4byte 0x84000010
_080095D0:
	.4byte gUnknown_082EFC70
_080095D4:
	.4byte gUnknown_082EFCBC
_080095D8:
	.4byte gUnknown_082F0770
_080095DC:
	.4byte gUnknown_082F07BC
_080095E0:
	.4byte gUnknown_082F0808
_080095E4:
	.4byte gUnknown_082F0854
_080095E8:
	.4byte gUnknown_082EFDB4
_080095EC:
	.4byte gUnknown_082EFE00
_080095F0:
	.4byte gUnknown_082EFE4C
_080095F4:
	.4byte gUnknown_082EFE98
_080095F8:
	.4byte gUnknown_082EE194
_080095FC:
	.4byte gUnknown_082EFC04
_08009600:
	.4byte gUnknown_082F01B8
_08009604:
	.4byte gUnknown_082F0344
_08009608:
	.4byte gUnknown_082F094C
_0800960C:
	.4byte 0x00000123
_08009610:
	.4byte gUnknown_082EB118
_08009614:
	.4byte gUnknown_03000B80
_08009618:
	strh r3, [r0]
	add r0, r0, #2
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
_08009622:
	ldr r0, _08009660  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	bne _080096A4
	mov r2, r10
	ldrh r0, [r2]
	str r0, [r4, #72]
	mov r3, #8
	and r1, r1, r3
	cmp r1, #0
	beq _08009670
	ldr r0, _08009664  @ =gUnknown_08514014
	str r0, [r7]
	ldrh r0, [r6]
	ldr r4, _08009668  @ =0x06010000
	add r0, r0, r4
	str r0, [r7, #4]
	ldr r0, _0800966C  @ =0x84000080
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r0, [r6]
	mov r1, #128
	lsl r1, r1, #2
	add r0, r0, r1
	strh r0, [r6]
	ldrh r0, [r2]
	add r0, r0, #16
	strh r0, [r2]
	b _08009840
_08009660:
	.4byte gNextLevelInLevelTable
_08009664:
	.4byte gUnknown_08514014
_08009668:
	.4byte 0x06010000
_0800966C:
	.4byte 0x84000080
_08009670:
	ldr r0, _08009698  @ =gUnknown_082F8F0C
	str r0, [r7]
	ldrh r0, [r6]
	ldr r2, _0800969C  @ =0x06010000
	add r0, r0, r2
	str r0, [r7, #4]
	ldr r3, _080096A0  @ =0x84000080
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r0, [r6]
	mov r4, #128
	lsl r4, r4, #2
	add r0, r0, r4
	strh r0, [r6]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #16
	strh r0, [r7]
	b _08009840
	.byte 0x00
	.byte 0x00
_08009698:
	.4byte gUnknown_082F8F0C
_0800969C:
	.4byte 0x06010000
_080096A0:
	.4byte 0x84000080
_080096A4:
	add r2, r1, #0
	mov r0, #1
	and r2, r2, r0
	cmp r2, #0
	beq _08009754
	add r0, r4, #0
	add r0, r0, #183
	mov r1, r9
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #3
	strb r1, [r0]
	sub r0, r0, #2
	strb r1, [r0]
	add r0, r0, #3
	strb r1, [r0]
	sub r0, r0, #2
	strb r1, [r0]
	add r0, r0, #3
	strb r1, [r0]
	sub r0, r0, #93
	strb r1, [r0]
	add r1, r4, #0
	add r1, r1, #96
	mov r0, #6
	strb r0, [r1]
	mov r2, #0
	ldr r3, _08009740  @ =gUnknown_082EC2E0
	mov r12, r3
	mov r7, #99
	add r7, r7, r4
	mov r8, r7
	mov r1, #0
	mov r0, #156
	add r0, r0, r4
	mov r9, r0
	add r5, r4, #0
	add r5, r5, #105
	ldr r3, _08009744  @ =0x00000101
_080096F8:
	mov r7, r8
	add r0, r2, r7
	strb r1, [r0]
	add r0, r2, r5
	strb r1, [r0]
	lsl r0, r2, #2
	add r0, r0, r9
	str r3, [r0]
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #5
	bls _080096F8
	mov r1, r10
	ldrh r0, [r1]
	str r0, [r4, #76]
	ldr r1, _08009748  @ =0x040000D4
	mov r2, r12
	str r2, [r1]
	ldrh r0, [r6]
	ldr r3, _0800974C  @ =0x06010000
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _08009750  @ =0x840000C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r0, [r6]
	mov r4, #192
	lsl r4, r4, #2
	add r0, r0, r4
	strh r0, [r6]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #24
	strh r0, [r7]
	b _08009840
_08009740:
	.4byte gUnknown_082EC2E0
_08009744:
	.4byte 0x00000101
_08009748:
	.4byte 0x040000D4
_0800974C:
	.4byte 0x06010000
_08009750:
	.4byte 0x840000C0
_08009754:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _08009840
	add r0, r4, #0
	add r0, r0, #97
	strb r2, [r0]
	add r0, r0, #1
	strb r2, [r0]
	add r0, r0, #29
	strb r2, [r0]
	sub r0, r0, #1
	strb r2, [r0]
	add r0, r0, #2
	strh r2, [r0]
	ldr r2, _08009850  @ =gUnknown_03001938
	ldr r0, [r2]
	ldr r1, _08009854  @ =0xFFFDFFFF
	and r0, r0, r1
	str r0, [r2]
	mov r2, #0
	ldr r0, _08009858  @ =gUnknown_082EC2E0
	mov r12, r0
	add r5, r4, #0
	mov r3, #0
	mov r1, #156
	add r1, r1, r4
	mov r9, r1
	mov r7, #99
	add r7, r7, r4
	mov r8, r7
	add r7, r4, #0
	add r7, r7, #105
_08009796:
	mov r1, r8
	add r0, r2, r1
	strb r3, [r0]
	add r0, r2, r7
	strb r3, [r0]
	add r0, r5, #0
	add r0, r0, #111
	add r0, r2, r0
	strb r3, [r0]
	add r0, r5, #0
	add r0, r0, #117
	add r0, r2, r0
	strb r3, [r0]
	lsl r0, r2, #2
	add r0, r0, r9
	ldr r1, _0800985C  @ =0x00000101
	str r1, [r0]
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #5
	bls _08009796
	add r1, r4, #0
	add r1, r1, #180
	mov r0, #0
	strh r0, [r1]
	mov r2, r10
	ldrh r0, [r2]
	str r0, [r4, #76]
	ldr r1, _08009860  @ =0x040000D4
	mov r3, r12
	str r3, [r1]
	ldrh r0, [r6]
	ldr r7, _08009864  @ =0x06010000
	add r0, r0, r7
	str r0, [r1, #4]
	ldr r0, _08009868  @ =0x840000C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r6]
	mov r3, #192
	lsl r3, r3, #2
	add r0, r2, r3
	strh r0, [r6]
	mov r7, r10
	ldrh r5, [r7]
	add r0, r5, #0
	add r0, r0, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [r4, #80]
	ldr r0, _0800986C  @ =gUnknown_082E8EA8
	str r0, [r1]
	ldrh r0, [r6]
	ldr r3, _08009864  @ =0x06010000
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r3, _08009870  @ =0x84000080
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	mov r7, #160
	lsl r7, r7, #3
	add r0, r2, r7
	strh r0, [r6]
	add r0, r5, #0
	add r0, r0, #40
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [r4, #92]
	ldr r0, _08009874  @ =gUnknown_082E92C8
	str r0, [r1]
	ldrh r0, [r6]
	ldr r4, _08009864  @ =0x06010000
	add r0, r0, r4
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	mov r7, #224
	lsl r7, r7, #3
	add r2, r2, r7
	strh r2, [r6]
	add r0, r5, #0
	add r0, r0, #56
	mov r1, r10
	strh r0, [r1]
_08009840:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08009850:
	.4byte gUnknown_03001938
_08009854:
	.4byte 0xFFFDFFFF
_08009858:
	.4byte gUnknown_082EC2E0
_0800985C:
	.4byte 0x00000101
_08009860:
	.4byte 0x040000D4
_08009864:
	.4byte 0x06010000
_08009868:
	.4byte 0x840000C0
_0800986C:
	.4byte gUnknown_082E8EA8
_08009870:
	.4byte 0x84000080
_08009874:
	.4byte gUnknown_082E92C8
	THUMB_FUNC_END sub_080091A8

	THUMB_FUNC_START sub_08009878
sub_08009878: @ 0x08009878
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _080098CC  @ =gUnknown_03000A10
	mov r1, #215
	add r1, r1, r0
	mov r8, r1
	ldrb r6, [r1]
	mov r12, r0
	cmp r6, #0
	beq _08009910
	ldr r1, _080098D0  @ =gRedPresentFlag
	ldrb r0, [r1]
	cmp r0, #0
	beq _08009910
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08009910
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _08009910
	mov r4, r12
	add r4, r4, #216
	ldr r1, _080098D4  @ =gUnknown_082EAF00
	mov r5, r12
	add r5, r5, #220
	ldr r2, [r5]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r3, [r4]
	add r7, r1, #0
	ldrb r0, [r0, #1]
	cmp r3, r0
	bne _0800990C
	mov r0, #0
	strb r0, [r4]
	cmp r2, #2
	bhi _080098D8
	add r0, r2, #1
	b _080098E6
_080098CC:
	.4byte gUnknown_03000A10
_080098D0:
	.4byte gRedPresentFlag
_080098D4:
	.4byte gUnknown_082EAF00
_080098D8:
	sub r0, r6, #1
	mov r1, r8
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080098E8
	mov r0, #1
_080098E6:
	str r0, [r5]
_080098E8:
	mov r2, r12
	add r2, r2, #224
	mov r0, r12
	add r0, r0, #220
	ldr r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _08009908  @ =gUnknown_082EAF98
	add r0, r0, r1
	str r0, [r2]
	b _08009910
	.byte 0x00
	.byte 0x00
_08009908:
	.4byte gUnknown_082EAF98
_0800990C:
	add r0, r3, #1
	strb r0, [r4]
_08009910:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08009878

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800991C
sub_0800991C: @ 0x0800991C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	ldr r0, _08009A30  @ =gCurrentPresentScore
	ldr r1, _08009A34  @ =gCurrentEnemyScore
	ldr r2, [r0]
	ldr r0, [r1]
	add r2, r2, r0
	mov r8, r2
	ldr r0, _08009A38  @ =gLivesCount
	ldrb r0, [r0]
	mov r9, r0
	ldr r0, _08009A3C  @ =gGeneralTimer
	ldr r1, [r0]
	lsl r0, r1, #4
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r1
	lsl r0, r0, #2
	asr r7, r0, #16
	ldr r6, _08009A40  @ =gUnknown_03000A10
	add r0, r6, #0
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800995A
	bl _0800A246
_0800995A:
	add r0, r6, #0
	add r0, r0, #204
	mov r4, #0
	strb r4, [r0]
	add r0, sp, #12
	strh r4, [r0]
	ldr r2, _08009A44  @ =0x01000003
	add r1, r6, #0
	bl CpuSet
	mov r0, sp
	add r0, r0, #14
	strh r4, [r0]
	add r1, r6, #0
	add r1, r1, #12
	ldr r5, _08009A48  @ =0x01000001
	add r2, r5, #0
	bl CpuSet
	add r0, sp, #16
	strh r4, [r0]
	add r1, r6, #0
	add r1, r1, #14
	add r2, r5, #0
	bl CpuSet
	add r0, r6, #0
	mov r1, r8
	bl sub_0802FB18
	add r4, r6, #6
	ldr r0, _08009A4C  @ =gAfterTutorialWorld
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _08009A50  @ =gNextLevelID
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldr r2, _08009A54  @ =gUnknown_03000B80
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	bl sub_0801095C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0802FB18
	lsl r0, r7, #2
	add r0, r0, r7
	lsl r0, r0, #3
	add r0, r0, r7
	asr r2, r0, #12
	strb r2, [r6, #16]
	ldrb r1, [r6, #16]
	mov r0, #100
	mul r0, r1, r0
	sub r7, r7, r0
	cmp r7, #99
	ble _080099EC
	sub r7, r7, #100
	ldrb r0, [r6, #15]
	add r0, r0, #1
	strb r0, [r6, #15]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _080099EC
	mov r0, #0
	strb r0, [r6, #15]
	add r0, r2, #1
	strb r0, [r6, #16]
_080099EC:
	ldr r2, _08009A40  @ =gUnknown_03000A10
	ldr r0, _08009A58  @ =0x0000199A
	mul r0, r7, r0
	asr r0, r0, #16
	strb r0, [r2, #15]
	ldrb r1, [r2, #15]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	sub r7, r7, r0
	add r6, r2, #0
	cmp r7, #9
	ble _08009A1E
	sub r7, r7, #10
	add r0, r1, #1
	strb r0, [r6, #15]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _08009A1E
	mov r0, #0
	strb r0, [r6, #15]
	ldrb r0, [r6, #16]
	add r0, r0, #1
	strb r0, [r6, #16]
_08009A1E:
	strb r7, [r6, #14]
	ldr r0, _08009A3C  @ =gGeneralTimer
	ldr r1, [r0]
	cmp r1, #59
	bgt _08009A5C
	add r1, r6, #0
	add r1, r1, #51
	mov r0, #6
	b _08009ADA
_08009A30:
	.4byte gCurrentPresentScore
_08009A34:
	.4byte gCurrentEnemyScore
_08009A38:
	.4byte gLivesCount
_08009A3C:
	.4byte gGeneralTimer
_08009A40:
	.4byte gUnknown_03000A10
_08009A44:
	.4byte 0x01000003
_08009A48:
	.4byte 0x01000001
_08009A4C:
	.4byte gAfterTutorialWorld
_08009A50:
	.4byte gNextLevelID
_08009A54:
	.4byte gUnknown_03000B80
_08009A58:
	.4byte 0x0000199A
_08009A5C:
	ldr r0, _08009A7C  @ =0x00000167
	cmp r1, r0
	bgt _08009A96
	add r1, r6, #0
	add r1, r1, #50
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #8
	bhi _08009A80
	add r1, r1, #1
	mov r0, #4
	b _08009A86
	.byte 0x00
	.byte 0x00
_08009A7C:
	.4byte 0x00000167
_08009A80:
	add r1, r6, #0
	add r1, r1, #51
	mov r0, #5
_08009A86:
	strb r0, [r1]
	add r1, r6, #0
	add r1, r1, #50
	ldrb r0, [r1]
	cmp r0, #15
	bls _08009ADC
	mov r0, #5
	b _08009ADA
_08009A96:
	ldr r0, _08009AB4  @ =0x00000383
	cmp r1, r0
	bgt _08009ACE
	add r1, r6, #0
	add r1, r1, #50
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #23
	bhi _08009AB8
	add r1, r1, #1
	mov r0, #3
	b _08009ABE
_08009AB4:
	.4byte 0x00000383
_08009AB8:
	add r1, r6, #0
	add r1, r1, #51
	mov r0, #0
_08009ABE:
	strb r0, [r1]
	add r1, r6, #0
	add r1, r1, #50
	ldrb r0, [r1]
	cmp r0, #30
	bls _08009ADC
	mov r0, #0
	b _08009ADA
_08009ACE:
	ldr r0, _08009B5C  @ =0x00000707
	cmp r1, r0
	bgt _08009ADC
	add r1, r6, #0
	add r1, r1, #51
	mov r0, #2
_08009ADA:
	strb r0, [r1]
_08009ADC:
	mov r0, r9
	lsl r1, r0, #24
	asr r1, r1, #24
	ldr r0, _08009B60  @ =0x0000199A
	mul r0, r1, r0
	asr r3, r0, #16
	mov r7, #0
	strb r3, [r6, #13]
	ldrb r2, [r6, #13]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #1
	sub r1, r1, r0
	strb r1, [r6, #12]
	lsl r1, r1, #24
	lsr r1, r1, #24
	cmp r1, #9
	bls _08009B04
	mov r0, #9
	strb r0, [r6, #12]
_08009B04:
	strb r3, [r6, #13]
	ldr r0, _08009B64  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bne _08009BA6
	add r4, r6, #0
	add r4, r4, #208
	add r5, r6, #0
	add r5, r5, #210
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08066C70
	add r1, r6, #0
	add r1, r1, #212
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _08009B90
	sub r4, r4, #1
	ldr r1, _08009B68  @ =gUnknown_082E9574
	add r2, r6, #0
	add r2, r2, #206
	ldrb r3, [r2]
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r1, [r4]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bcc _08009B6C
	add r0, r3, #1
	strb r0, [r2]
	strb r7, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _08009B70
	strb r7, [r2]
	b _08009B70
_08009B5C:
	.4byte 0x00000707
_08009B60:
	.4byte 0x0000199A
_08009B64:
	.4byte gUnknown_03000B80
_08009B68:
	.4byte gUnknown_082E9574
_08009B6C:
	add r0, r1, #1
	strb r0, [r4]
_08009B70:
	ldr r0, _08009B8C  @ =gUnknown_03000A10
	add r1, r0, #0
	add r1, r1, #213
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #31
	bls _08009BA6
	mov r0, #0
	strb r0, [r1]
	b _08009BA6
	.byte 0x00
	.byte 0x00
_08009B8C:
	.4byte gUnknown_03000A10
_08009B90:
	add r1, r6, #0
	add r1, r1, #206
	strb r0, [r1]
	add r1, r1, #1
	strb r0, [r1]
	mov r1, #0
	strh r0, [r4]
	strh r0, [r5]
	add r0, r6, #0
	add r0, r0, #213
	strb r1, [r0]
_08009BA6:
	ldr r0, _08009BD0  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _08009BE0
	ldr r0, _08009BD4  @ =gUnknown_03001A1C
	ldr r0, [r0]
	ldr r1, _08009BD8  @ =0x00901000
	and r0, r0, r1
	cmp r0, #0
	beq _08009BC0
	b _0800A246
_08009BC0:
	ldr r0, _08009BDC  @ =gMainState
	ldr r0, [r0]
	cmp r0, #13
	beq _08009BCA
	b _0800A246
_08009BCA:
	bl sub_08009878
	b _0800A246
_08009BD0:
	.4byte gNextLevelInLevelTable
_08009BD4:
	.4byte gUnknown_03001A1C
_08009BD8:
	.4byte 0x00901000
_08009BDC:
	.4byte gMainState
_08009BE0:
	mov r7, #1
	add r0, r1, #0
	and r0, r0, r7
	cmp r0, #0
	bne _08009BEC
	b _08009E9C
_08009BEC:
	ldr r0, _08009C48  @ =0x03001BC8
	ldr r1, _08009C4C  @ =0x03001BA0
	ldrb r2, [r0]
	ldrb r0, [r1]
	orr r0, r0, r2
	cmp r0, #0
	bne _08009C04
	ldr r0, _08009C50  @ =gUnknown_03001B30
	ldr r1, [r0, #20]
	mov r2, #128
	orr r1, r1, r2
	str r1, [r0, #20]
_08009C04:
	ldr r1, _08009C54  @ =0x030008E4
	ldrb r2, [r1]
	mov r12, r2
	add r0, r7, #0
	mov r3, r12
	and r0, r0, r3
	add r7, r1, #0
	cmp r0, #0
	beq _08009C92
	ldr r3, _08009C58  @ =gUnknown_03000A10
	add r4, r3, #0
	add r4, r4, #185
	ldr r2, _08009C5C  @ =gUnknown_082F1898
	add r5, r3, #0
	add r5, r5, #188
	ldrb r1, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r4]
	add r6, r3, #0
	add r3, r2, #0
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _08009C8C
	mov r0, #0
	strb r0, [r4]
	ldrb r0, [r5]
	cmp r0, #2
	bhi _08009C60
	add r0, r0, #1
	strb r0, [r5]
	b _08009C68
_08009C48:
	.4byte 0x03001BC8
_08009C4C:
	.4byte 0x03001BA0
_08009C50:
	.4byte gUnknown_03001B30
_08009C54:
	.4byte 0x030008E4
_08009C58:
	.4byte gUnknown_03000A10
_08009C5C:
	.4byte gUnknown_082F1898
_08009C60:
	mov r0, #254
	mov r5, r12
	and r0, r0, r5
	strb r0, [r7]
_08009C68:
	add r2, r6, #0
	add r2, r2, #192
	add r0, r6, #0
	add r0, r0, #188
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _08009C88  @ =gUnknown_082F1930
	add r0, r0, r1
	str r0, [r2]
	b _08009C9E
	.byte 0x00
	.byte 0x00
_08009C88:
	.4byte gUnknown_082F1930
_08009C8C:
	add r0, r1, #1
	strb r0, [r4]
	b _08009C9E
_08009C92:
	ldr r2, _08009CD8  @ =gUnknown_03000A10
	add r1, r2, #0
	add r1, r1, #192
	ldr r0, _08009CDC  @ =gUnknown_082F1930
	str r0, [r1]
	add r6, r2, #0
_08009C9E:
	ldrb r1, [r7]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08009D16
	add r3, r6, #0
	add r3, r3, #186
	ldr r2, _08009CE0  @ =gUnknown_082F1680
	add r4, r6, #0
	add r4, r4, #189
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r3]
	add r5, r2, #0
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _08009D10
	mov r0, #0
	strb r0, [r3]
	ldrb r0, [r4]
	cmp r0, #2
	bhi _08009CE4
	add r0, r0, #1
	strb r0, [r4]
	b _08009CEC
	.byte 0x00
	.byte 0x00
_08009CD8:
	.4byte gUnknown_03000A10
_08009CDC:
	.4byte gUnknown_082F1930
_08009CE0:
	.4byte gUnknown_082F1680
_08009CE4:
	ldrb r1, [r7]
	mov r0, #253
	and r0, r0, r1
	strb r0, [r7]
_08009CEC:
	add r2, r6, #0
	add r2, r2, #196
	add r0, r6, #0
	add r0, r0, #189
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _08009D0C  @ =gUnknown_082F1718
	add r0, r0, r1
	str r0, [r2]
	b _08009D1E
	.byte 0x00
	.byte 0x00
_08009D0C:
	.4byte gUnknown_082F1718
_08009D10:
	add r0, r1, #1
	strb r0, [r3]
	b _08009D1E
_08009D16:
	add r1, r6, #0
	add r1, r1, #196
	ldr r0, _08009D58  @ =gUnknown_082F1718
	str r0, [r1]
_08009D1E:
	ldrb r1, [r7]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08009D92
	add r3, r6, #0
	add r3, r3, #187
	ldr r2, _08009D5C  @ =gUnknown_082F1AB0
	add r4, r6, #0
	add r4, r4, #190
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r3]
	add r5, r2, #0
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _08009D8C
	mov r0, #0
	strb r0, [r3]
	ldrb r0, [r4]
	cmp r0, #2
	bhi _08009D60
	add r0, r0, #1
	strb r0, [r4]
	b _08009D68
	.byte 0x00
	.byte 0x00
_08009D58:
	.4byte gUnknown_082F1718
_08009D5C:
	.4byte gUnknown_082F1AB0
_08009D60:
	ldrb r1, [r7]
	mov r0, #251
	and r0, r0, r1
	strb r0, [r7]
_08009D68:
	add r2, r6, #0
	add r2, r2, #200
	add r0, r6, #0
	add r0, r0, #190
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _08009D88  @ =gUnknown_082F1B48
	add r0, r0, r1
	str r0, [r2]
	b _08009D9A
	.byte 0x00
	.byte 0x00
_08009D88:
	.4byte gUnknown_082F1B48
_08009D8C:
	add r0, r1, #1
	strb r0, [r3]
	b _08009D9A
_08009D92:
	add r1, r6, #0
	add r1, r1, #200
	ldr r0, _08009E24  @ =gUnknown_082F1B48
	str r0, [r1]
_08009D9A:
	add r4, r6, #0
	add r4, r4, #184
	ldrb r3, [r4]
	cmp r3, #4
	bhi _08009DEA
	ldrb r0, [r7]
	cmp r0, #0
	bne _08009DEA
	ldr r1, _08009E28  @ =gRedPresentFlag
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _08009DEA
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08009DEA
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08009DEA
	ldr r0, _08009E2C  @ =gUnknown_03001A1C
	ldr r1, [r0]
	ldr r0, _08009E30  @ =0x00901000
	and r1, r1, r0
	cmp r1, #0
	bne _08009DEA
	ldr r0, _08009E34  @ =gMainState
	ldr r0, [r0]
	cmp r0, #13
	bne _08009DEA
	add r2, r6, #0
	add r2, r2, #183
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #15
	bls _08009DEA
	strb r1, [r2]
	add r0, r3, #1
	strb r0, [r4]
_08009DEA:
	mov r5, #0
	ldr r7, _08009E38  @ =0x03000A71
	mov r0, #1
	mov r12, r0
	ldr r1, _08009E3C  @ =gUnknown_08587E38
	mov r8, r1
_08009DF6:
	ldrb r0, [r7]
	asr r0, r0, r5
	mov r2, r12
	and r0, r0, r2
	cmp r0, #0
	beq _08009E5A
	add r0, r6, #0
	add r0, r0, #105
	add r4, r5, r0
	sub r0, r0, #6
	add r3, r5, r0
	ldrb r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	ldrb r2, [r4]
	ldrb r0, [r0, #1]
	cmp r2, r0
	bcs _08009E40
	add r0, r2, #1
	strb r0, [r4]
	b _08009E5A
_08009E24:
	.4byte gUnknown_082F1B48
_08009E28:
	.4byte gRedPresentFlag
_08009E2C:
	.4byte gUnknown_03001A1C
_08009E30:
	.4byte 0x00901000
_08009E34:
	.4byte gMainState
_08009E38:
	.4byte 0x03000A71
_08009E3C:
	.4byte gUnknown_08587E38
_08009E40:
	add r0, r1, #1
	mov r1, #0
	strb r0, [r3]
	strb r1, [r4]
	ldrb r0, [r3]
	cmp r0, #31
	bls _08009E5A
	strb r1, [r3]
	mov r1, r12
	lsl r1, r1, r5
	ldrb r0, [r7]
	bic r0, r0, r1
	strb r0, [r7]
_08009E5A:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #5
	bls _08009DF6
	b _0800A246
_08009E66:
	add r3, r2, #0
	add r3, r3, #97
	mov r0, #1
	lsl r0, r0, r5
	ldrb r1, [r3]
	orr r0, r0, r1
	mov r1, #0
	strb r0, [r3]
	add r0, r2, #0
	add r0, r0, #99
	add r0, r5, r0
	strb r1, [r0]
	add r0, r2, #0
	add r0, r0, #105
	add r0, r5, r0
	strb r1, [r0]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #146
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08009EE0
_08009E9C:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	bne _08009EA6
	b _0800A246
_08009EA6:
	ldr r0, _08009F30  @ =gUnknown_03001938
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #10
	and r0, r0, r1
	cmp r0, #0
	beq _08009F8C
	mov r5, #0
	ldr r0, _08009F34  @ =0x030019AC
	ldr r0, [r0]
	add r0, r0, #52
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r5, r1
	bge _08009EE0
	ldr r2, _08009F38  @ =gUnknown_03000A10
	add r0, r2, #0
	add r0, r0, #180
	ldrh r3, [r0]
_08009ECC:
	lsl r0, r5, #4
	sub r0, r0, r5
	lsl r0, r0, #1
	cmp r3, r0
	beq _08009E66
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, r1
	blt _08009ECC
_08009EE0:
	mov r5, #0
	ldr r0, _08009F3C  @ =0x03001BA0
	mov r10, r0
	ldrb r3, [r0]
	cmp r5, r3
	bcs _08009F78
	ldr r6, _08009F38  @ =gUnknown_03000A10
	add r7, r6, #0
	add r7, r7, #97
	mov r0, #1
	mov r12, r0
	ldr r1, _08009F40  @ =gUnknown_08587E38
	mov r9, r1
	mov r2, #156
	add r2, r2, r6
	mov r8, r2
_08009F00:
	ldrb r0, [r7]
	asr r0, r0, r5
	mov r3, r12
	and r0, r0, r3
	cmp r0, #0
	beq _08009F6A
	add r0, r6, #0
	add r0, r0, #105
	add r4, r5, r0
	sub r0, r0, #6
	add r3, r5, r0
	ldrb r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r9
	ldrb r2, [r4]
	ldrb r0, [r0, #1]
	cmp r2, r0
	bcs _08009F44
	add r0, r2, #1
	strb r0, [r4]
	b _08009F6A
	.byte 0x00
	.byte 0x00
_08009F30:
	.4byte gUnknown_03001938
_08009F34:
	.4byte 0x030019AC
_08009F38:
	.4byte gUnknown_03000A10
_08009F3C:
	.4byte 0x03001BA0
_08009F40:
	.4byte gUnknown_08587E38
_08009F44:
	add r0, r1, #1
	mov r1, #0
	strb r0, [r3]
	strb r1, [r4]
	ldrb r0, [r3]
	cmp r0, #7
	bne _08009F58
	lsl r0, r5, #2
	add r0, r0, r8
	str r1, [r0]
_08009F58:
	ldrb r0, [r3]
	cmp r0, #31
	bls _08009F6A
	strb r1, [r3]
	mov r1, r12
	lsl r1, r1, r5
	ldrb r0, [r7]
	bic r0, r0, r1
	strb r0, [r7]
_08009F6A:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	mov r0, r10
	ldrb r0, [r0]
	cmp r5, r0
	bcc _08009F00
_08009F78:
	bl sub_08008DA0
	ldr r1, _08009F88  @ =gUnknown_03000A10
	add r1, r1, #180
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	b _0800A246
_08009F88:
	.4byte gUnknown_03000A10
_08009F8C:
	ldr r0, _0800A008  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #21
	and r1, r1, r2
	mov r9, r0
	cmp r1, #0
	beq _0800A02C
	ldr r1, _0800A00C  @ =gUnknown_03000A10
	add r4, r1, #0
	add r4, r4, #97
	ldrb r2, [r4]
	ldr r5, _0800A010  @ =0x030019AC
	ldr r0, [r5]
	add r3, r0, #0
	add r3, r3, #52
	mov r0, #0
	ldrsb r0, [r3, r0]
	asr r2, r2, r0
	and r2, r2, r7
	add r6, r1, #0
	cmp r2, #0
	bne _08009FEE
	mov r0, #30
	str r0, [r6, #84]
	mov r1, #0
	ldrsb r1, [r3, r1]
	add r0, r7, #0
	lsl r0, r0, r1
	ldrb r1, [r4]
	orr r0, r0, r1
	strb r0, [r4]
	ldr r0, [r5]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r6, #0
	add r1, r1, #99
	add r0, r0, r1
	strb r2, [r0]
	ldr r0, [r5]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r1, #6
	add r0, r0, r1
	strb r2, [r0]
_08009FEE:
	ldr r0, [r6, #84]
	cmp r0, #0
	bne _0800A01C
	mov r1, r9
	ldr r0, [r1]
	ldr r1, _0800A014  @ =0xEFFFFFFF
	and r0, r0, r1
	mov r2, r9
	str r0, [r2]
	ldr r3, _0800A018  @ =0x03001BA0
	mov r10, r3
	b _0800A0A6
	.byte 0x00
	.byte 0x00
_0800A008:
	.4byte gUnknown_03001A1C
_0800A00C:
	.4byte gUnknown_03000A10
_0800A010:
	.4byte 0x030019AC
_0800A014:
	.4byte 0xEFFFFFFF
_0800A018:
	.4byte 0x03001BA0
_0800A01C:
	sub r0, r0, #1
	str r0, [r6, #84]
	ldr r5, _0800A028  @ =0x03001BA0
	mov r10, r5
	b _0800A0A6
	.byte 0x00
	.byte 0x00
_0800A028:
	.4byte 0x03001BA0
_0800A02C:
	ldr r2, _0800A0E8  @ =0x030019AC
	ldr r3, [r2]
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r1, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r1, r1, r0
	ldr r6, _0800A0EC  @ =gUnknown_03000A10
	ldr r0, _0800A0F0  @ =0x03001BA0
	mov r10, r0
	cmp r1, #0
	beq _0800A0A6
	mov r5, #0
	add r0, r3, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r5, r0
	bge _0800A09E
	add r4, r6, #0
	add r4, r4, #97
	mov r7, #1
	mov r1, #99
	add r1, r1, r6
	mov r8, r1
	mov r3, #105
	add r3, r3, r6
	mov r12, r3
_0800A06A:
	ldrb r3, [r4]
	add r1, r3, #0
	asr r1, r1, r5
	and r1, r1, r7
	cmp r1, #0
	bne _0800A08A
	add r0, r7, #0
	lsl r0, r0, r5
	orr r3, r3, r0
	strb r3, [r4]
	mov r3, r8
	add r0, r5, r3
	strb r1, [r0]
	mov r3, r12
	add r0, r5, r3
	strb r1, [r0]
_0800A08A:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	ldr r0, [r2]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r5, r0
	blt _0800A06A
_0800A09E:
	ldr r0, [r2]
	add r0, r0, #52
	mov r1, #0
	strb r1, [r0]
_0800A0A6:
	mov r5, #0
	mov r0, r10
	ldrb r0, [r0]
	cmp r5, r0
	bcs _0800A124
	ldr r7, _0800A0F4  @ =0x03000A71
	mov r1, #1
	mov r12, r1
	ldr r2, _0800A0F8  @ =gUnknown_08587E38
	mov r8, r2
_0800A0BA:
	ldrb r0, [r7]
	asr r0, r0, r5
	mov r3, r12
	and r0, r0, r3
	cmp r0, #0
	beq _0800A116
	add r0, r6, #0
	add r0, r0, #105
	add r4, r5, r0
	sub r0, r0, #6
	add r3, r5, r0
	ldrb r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	ldrb r2, [r4]
	ldrb r0, [r0, #1]
	cmp r2, r0
	bcs _0800A0FC
	add r0, r2, #1
	strb r0, [r4]
	b _0800A116
_0800A0E8:
	.4byte 0x030019AC
_0800A0EC:
	.4byte gUnknown_03000A10
_0800A0F0:
	.4byte 0x03001BA0
_0800A0F4:
	.4byte 0x03000A71
_0800A0F8:
	.4byte gUnknown_08587E38
_0800A0FC:
	add r0, r1, #1
	mov r1, #0
	strb r0, [r3]
	strb r1, [r4]
	ldrb r0, [r3]
	cmp r0, #31
	bls _0800A116
	strb r1, [r3]
	mov r1, r12
	lsl r1, r1, r5
	ldrb r0, [r7]
	bic r0, r0, r1
	strb r0, [r7]
_0800A116:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	mov r0, r10
	ldrb r0, [r0]
	cmp r5, r0
	bcc _0800A0BA
_0800A124:
	mov r1, r9
	ldr r0, [r1]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	beq _0800A1A4
	add r3, r6, #0
	add r3, r3, #98
	ldrb r2, [r3]
	ldr r5, _0800A198  @ =gUnknown_03001C78
	ldr r0, [r5]
	add r1, r0, #0
	add r1, r1, #52
	mov r0, #0
	ldrsb r0, [r1, r0]
	asr r2, r2, r0
	mov r4, #1
	and r2, r2, r4
	cmp r2, #0
	bne _0800A184
	mov r0, #30
	str r0, [r6, #88]
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r0, r4, #0
	lsl r0, r0, r1
	ldrb r1, [r3]
	orr r0, r0, r1
	strb r0, [r3]
	ldr r0, [r5]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r6, #0
	add r1, r1, #111
	add r0, r0, r1
	strb r2, [r0]
	ldr r0, [r5]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r1, #6
	add r0, r0, r1
	strb r2, [r0]
_0800A184:
	ldr r0, [r6, #88]
	cmp r0, #0
	bne _0800A1A0
	mov r2, r9
	ldr r0, [r2]
	ldr r1, _0800A19C  @ =0xDFFFFFFF
	and r0, r0, r1
	str r0, [r2]
	b _0800A1A4
	.byte 0x00
	.byte 0x00
_0800A198:
	.4byte gUnknown_03001C78
_0800A19C:
	.4byte 0xDFFFFFFF
_0800A1A0:
	sub r0, r0, #1
	str r0, [r6, #88]
_0800A1A4:
	mov r5, #0
	ldr r7, _0800A1E0  @ =0x03000A72
	mov r3, #1
	mov r12, r3
	ldr r0, _0800A1E4  @ =gUnknown_08587E38
	mov r8, r0
_0800A1B0:
	ldrb r0, [r7]
	asr r0, r0, r5
	mov r1, r12
	and r0, r0, r1
	cmp r0, #0
	beq _0800A202
	add r0, r6, #0
	add r0, r0, #117
	add r4, r5, r0
	sub r0, r0, #6
	add r3, r5, r0
	ldrb r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	ldrb r2, [r4]
	ldrb r0, [r0, #1]
	cmp r2, r0
	bcs _0800A1E8
	add r0, r2, #1
	strb r0, [r4]
	b _0800A202
	.byte 0x00
	.byte 0x00
_0800A1E0:
	.4byte 0x03000A72
_0800A1E4:
	.4byte gUnknown_08587E38
_0800A1E8:
	add r0, r1, #1
	mov r1, #0
	strb r0, [r3]
	strb r1, [r4]
	ldrb r0, [r3]
	cmp r0, #31
	bls _0800A202
	strb r1, [r3]
	mov r1, r12
	lsl r1, r1, r5
	ldrb r0, [r7]
	bic r0, r0, r1
	strb r0, [r7]
_0800A202:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #3
	bls _0800A1B0
	add r0, r6, #0
	add r4, r0, #0
	add r4, r4, #126
	ldrb r3, [r4]
	cmp r3, #25
	bhi _0800A246
	add r1, r0, #0
	add r1, r1, #128
	ldrh r2, [r1]
	mov r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #119
	bgt _0800A22C
	add r0, r2, #1
	strh r0, [r1]
	b _0800A246
_0800A22C:
	add r1, r6, #0
	add r1, r1, #127
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bls _0800A246
	add r0, r3, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r1]
_0800A246:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800991C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800A258
sub_0800A258: @ 0x0800A258
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r3, _0800A2B4  @ =gUnknown_03000A10
	add r4, r3, #0
	add r4, r4, #96
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800A2AA
	sub r0, r0, #1
	mov r2, #0
	strb r0, [r4]
	mov r0, #97
	add r0, r0, r3
	mov r12, r0
	mov r0, #1
	ldrb r1, [r4]
	lsl r0, r0, r1
	mov r5, r12
	ldrb r1, [r5]
	orr r0, r0, r1
	strb r0, [r5]
	add r0, r3, #0
	add r0, r0, #99
	ldrb r1, [r4]
	add r0, r0, r1
	strb r2, [r0]
	add r0, r3, #0
	add r0, r0, #105
	ldrb r4, [r4]
	add r0, r0, r4
	strb r2, [r0]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #68
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0800A2AA:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800A2B4:
	.4byte gUnknown_03000A10
	THUMB_FUNC_END sub_0800A258

	THUMB_FUNC_START sub_0800A2B8
sub_0800A2B8: @ 0x0800A2B8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r2, #0
	add r6, r0, #0
	mov r12, r1
	ldr r5, _0800A384  @ =0x040000D4
	ldr r0, _0800A388  @ =gUnknown_082EBC2C
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	ldr r7, _0800A38C  @ =gOamData
	add r0, r0, r7
	str r0, [r5, #4]
	ldr r0, _0800A390  @ =0x84000002
	mov r9, r0
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r1, _0800A394  @ =0x000001FF
	mov r10, r1
	add r1, r6, #0
	mov r3, r10
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800A398  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r1, r12
	strb r1, [r0]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r3, _0800A39C  @ =gUnknown_03000A10
	ldr r2, [r3, #20]
	ldr r0, _0800A3A0  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800A3A4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	add r6, r6, #24
	mov r1, #4
	add r12, r12, r1
	ldr r0, _0800A3A8  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0800A3B0
	ldr r0, _0800A3AC  @ =gUnknown_082EAE78
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r5, #4]
	mov r3, r9
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	mov r0, r10
	and r6, r6, r0
	ldrh r2, [r1, #2]
	ldr r0, _0800A398  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r6
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r1, r12
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r3, _0800A39C  @ =gUnknown_03000A10
	ldr r1, [r3, #24]
	b _0800A47A
	.byte 0x00
	.byte 0x00
_0800A384:
	.4byte 0x040000D4
_0800A388:
	.4byte gUnknown_082EBC2C
_0800A38C:
	.4byte gOamData
_0800A390:
	.4byte 0x84000002
_0800A394:
	.4byte 0x000001FF
_0800A398:
	.4byte 0xFFFFFE00
_0800A39C:
	.4byte gUnknown_03000A10
_0800A3A0:
	.4byte 0x000003FF
_0800A3A4:
	.4byte 0xFFFFFC00
_0800A3A8:
	.4byte gLevelEWorldFlag
_0800A3AC:
	.4byte gUnknown_082EAE78
_0800A3B0:
	ldr r1, _0800A49C  @ =gUnknown_03000A10
	ldrb r0, [r1, #13]
	ldr r3, _0800A4A0  @ =gUnknown_082EC748
	mov r8, r3
	cmp r0, #0
	beq _0800A426
	str r3, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r5, #4]
	mov r0, r9
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	add r1, r6, #0
	mov r3, r10
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800A4A4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r1, r12
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r3, _0800A49C  @ =gUnknown_03000A10
	ldrb r0, [r3, #13]
	lsl r0, r0, #1
	ldr r3, _0800A4A8  @ =gUnknown_03001B30
	ldr r1, [r3, #4]
	add r1, r1, r0
	ldr r0, _0800A4AC  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800A4B0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	add r6, r6, #8
_0800A426:
	mov r1, r8
	str r1, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r5, #4]
	mov r3, r9
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	mov r0, r10
	and r6, r6, r0
	ldrh r2, [r1, #2]
	ldr r0, _0800A4A4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r6
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r1, r12
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r3, _0800A49C  @ =gUnknown_03000A10
	ldrb r0, [r3, #12]
	lsl r0, r0, #1
	ldr r3, _0800A4A8  @ =gUnknown_03001B30
	ldr r1, [r3, #4]
	add r1, r1, r0
_0800A47A:
	ldr r0, _0800A4AC  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800A4B0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0800A49C:
	.4byte gUnknown_03000A10
_0800A4A0:
	.4byte gUnknown_082EC748
_0800A4A4:
	.4byte 0xFFFFFE00
_0800A4A8:
	.4byte gUnknown_03001B30
_0800A4AC:
	.4byte 0x000003FF
_0800A4B0:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0800A2B8

	THUMB_FUNC_START sub_0800A4B4
sub_0800A4B4: @ 0x0800A4B4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r5, r0, #0
	mov r8, r1
	add r4, r2, #0
	add r7, r3, #0
	ldr r0, [sp, #44]
	mov r9, r0
	ldr r1, _0800A4F8  @ =gUnknown_08076387
	mov r0, sp
	mov r2, #3
	bl memcpy
	mov r3, #0
	ldr r0, _0800A4FC  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0800A4E6
	b _0800A7D2
_0800A4E6:
	ldr r0, _0800A500  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r2, #8
	and r1, r1, r2
	cmp r1, #0
	beq _0800A504
	mov r3, #3
	b _0800A526
	.byte 0x00
	.byte 0x00
_0800A4F8:
	.4byte gUnknown_08076387
_0800A4FC:
	.4byte gUnknown_03000B80
_0800A500:
	.4byte gNextLevelInLevelTable
_0800A504:
	ldr r0, _0800A5D0  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0800A512
	mov r3, #1
_0800A512:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0800A51C
	add r3, r3, #1
_0800A51C:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0800A526
	add r3, r3, #1
_0800A526:
	mov r1, #3
	sub r1, r1, r3
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r6, r5, r0
	mov r1, r8
	str r1, [sp, #4]
	mov r2, #0
	mov r8, r2
	ldr r5, _0800A5D4  @ =0x040000D4
	ldr r0, _0800A5D8  @ =gOamData
	mov r12, r0
	ldr r1, _0800A5DC  @ =gUnknown_03000A10
	str r1, [sp, #8]
	mov r10, sp
_0800A546:
	ldr r0, _0800A5E0  @ =gRedPresentFlag
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A604
	ldr r0, [sp, #8]
	add r0, r0, #224
	ldr r0, [r0]
	str r0, [r5]
	mov r2, r9
	ldrh r0, [r2]
	ldr r1, _0800A5E4  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800A5E8  @ =0x84000020
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800A5EC  @ =gUnknown_082EAF90
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r0, _0800A5F0  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r1, _0800A5F4  @ =0x000001FF
	add r0, r1, #0
	add r1, r6, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800A5F8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r0, _0800A5FC  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800A600  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r0, r10
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	b _0800A7AA
	.byte 0x00
	.byte 0x00
_0800A5D0:
	.4byte gUnknown_030009D0
_0800A5D4:
	.4byte 0x040000D4
_0800A5D8:
	.4byte gOamData
_0800A5DC:
	.4byte gUnknown_03000A10
_0800A5E0:
	.4byte gRedPresentFlag
_0800A5E4:
	.4byte 0x06010000
_0800A5E8:
	.4byte 0x84000020
_0800A5EC:
	.4byte gUnknown_082EAF90
_0800A5F0:
	.4byte 0x84000002
_0800A5F4:
	.4byte 0x000001FF
_0800A5F8:
	.4byte 0xFFFFFE00
_0800A5FC:
	.4byte 0x000003FF
_0800A600:
	.4byte 0xFFFFFC00
_0800A604:
	ldr r2, _0800A6C8  @ =gNextLevelInLevelTable
	ldr r0, [r2, #32]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0800A646
	mov r0, r8
	cmp r0, #0
	bne _0800A622
	ldr r2, _0800A6CC  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0800A64C
_0800A622:
	mov r0, r8
	cmp r0, #1
	bne _0800A634
	ldr r2, _0800A6CC  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0800A64C
_0800A634:
	mov r0, r8
	cmp r0, #2
	bne _0800A646
	ldr r2, _0800A6CC  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0800A64C
_0800A646:
	ldr r0, [sp, #48]
	cmp r0, #1
	bne _0800A6F4
_0800A64C:
	ldr r1, _0800A6D0  @ =gUnknown_082EB1C4
	str r1, [r5]
	mov r2, r9
	ldrh r0, [r2]
	ldr r1, _0800A6D4  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800A6D8  @ =0x84000020
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800A6DC  @ =gUnknown_082EB1BC
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r0, _0800A6E0  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r1, _0800A6E4  @ =0x000001FF
	add r0, r1, #0
	add r1, r6, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800A6E8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r0, _0800A6EC  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800A6F0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r0, r10
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	b _0800A7AA
	.byte 0x00
	.byte 0x00
_0800A6C8:
	.4byte gNextLevelInLevelTable
_0800A6CC:
	.4byte gUnknown_030009D0
_0800A6D0:
	.4byte gUnknown_082EB1C4
_0800A6D4:
	.4byte 0x06010000
_0800A6D8:
	.4byte 0x84000020
_0800A6DC:
	.4byte gUnknown_082EB1BC
_0800A6E0:
	.4byte 0x84000002
_0800A6E4:
	.4byte 0x000001FF
_0800A6E8:
	.4byte 0xFFFFFE00
_0800A6EC:
	.4byte 0x000003FF
_0800A6F0:
	.4byte 0xFFFFFC00
_0800A6F4:
	mov r2, r8
	cmp r2, #0
	bne _0800A706
	ldr r0, _0800A7E4  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	bne _0800A736
_0800A706:
	mov r1, r8
	cmp r1, #1
	bne _0800A718
	ldr r2, _0800A7E4  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _0800A736
_0800A718:
	mov r0, r8
	cmp r0, #2
	bne _0800A72A
	ldr r2, _0800A7E4  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0800A736
_0800A72A:
	ldr r1, _0800A7E8  @ =gNextLevelInLevelTable
	ldr r0, [r1, #32]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0800A7C4
_0800A736:
	ldr r2, _0800A7EC  @ =gUnknown_082EAF98
	str r2, [r5]
	mov r1, r9
	ldrh r0, [r1]
	ldr r1, _0800A7F0  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800A7F4  @ =0x84000020
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _0800A7F8  @ =gUnknown_082EAF90
	str r2, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r0, _0800A7FC  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r1, _0800A800  @ =0x000001FF
	add r0, r1, #0
	add r1, r6, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800A804  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r0, _0800A808  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800A80C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
_0800A7AA:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #128
	strh r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #4
	strh r0, [r7]
	add r6, r6, #12
_0800A7C4:
	mov r2, #1
	add r10, r10, r2
	add r8, r8, r2
	mov r0, r8
	cmp r0, #2
	bgt _0800A7D2
	b _0800A546
_0800A7D2:
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
_0800A7E4:
	.4byte gUnknown_030009D0
_0800A7E8:
	.4byte gNextLevelInLevelTable
_0800A7EC:
	.4byte gUnknown_082EAF98
_0800A7F0:
	.4byte 0x06010000
_0800A7F4:
	.4byte 0x84000020
_0800A7F8:
	.4byte gUnknown_082EAF90
_0800A7FC:
	.4byte 0x84000002
_0800A800:
	.4byte 0x000001FF
_0800A804:
	.4byte 0xFFFFFE00
_0800A808:
	.4byte 0x000003FF
_0800A80C:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0800A4B4

	THUMB_FUNC_START sub_0800A810
sub_0800A810: @ 0x0800A810
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #44
	add r7, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #12]
	ldr r1, _0800A89C  @ =gUnknown_03000A10
	add r0, r1, #0
	add r0, r0, #48
	ldrb r0, [r0]
	str r1, [sp, #36]
	cmp r0, #1
	beq _0800A834
	bl _0800C55E
_0800A834:
	ldr r0, _0800A8A0  @ =gNextMainState
	ldr r0, [r0]
	cmp r0, #31
	bne _0800A840
	bl _0800C55E
_0800A840:
	add r5, r1, #0
	add r5, r5, #51
	ldrb r0, [r5]
	cmp r0, #5
	bne _0800A84C
	b _0800A98C
_0800A84C:
	mov r0, #8
	str r0, [sp, #16]
	ldr r1, _0800A8A4  @ =0x040000D4
	ldr r0, _0800A8A8  @ =gUnknown_082F0CF4
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800A8AC  @ =gOamData
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _0800A8B0  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r3
	mov r4, #181
	ldrh r2, [r1, #2]
	ldr r0, _0800A8B4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r3
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	bne _0800A8B8
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	b _0800A8C8
	.byte 0x00
	.byte 0x00
_0800A89C:
	.4byte gUnknown_03000A10
_0800A8A0:
	.4byte gNextMainState
_0800A8A4:
	.4byte 0x040000D4
_0800A8A8:
	.4byte gUnknown_082F0CF4
_0800A8AC:
	.4byte gOamData
_0800A8B0:
	.4byte 0x84000002
_0800A8B4:
	.4byte 0xFFFFFE00
_0800A8B8:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r4, _0800A93C  @ =gOamData
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
_0800A8C8:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	ldr r0, _0800A93C  @ =gOamData
	add r1, r1, r0
	ldr r3, [sp, #36]
	ldr r2, [r3, #28]
	ldr r0, _0800A940  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800A944  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, #8
	ldr r1, _0800A948  @ =0x040000D4
	ldr r0, _0800A94C  @ =gUnknown_082F0C88
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _0800A93C  @ =gOamData
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0800A950  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r2
	mov r3, #224
	ldrh r2, [r1, #2]
	ldr r0, _0800A954  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800A93C  @ =gOamData
	add r0, r0, r3
	strb r4, [r0]
	ldr r0, [sp, #36]
	add r0, r0, #51
	ldrb r0, [r0]
	cmp r0, #6
	bne _0800A958
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	b _0800A968
	.byte 0x00
	.byte 0x00
_0800A93C:
	.4byte gOamData
_0800A940:
	.4byte 0x000003FF
_0800A944:
	.4byte 0xFFFFFC00
_0800A948:
	.4byte 0x040000D4
_0800A94C:
	.4byte gUnknown_082F0C88
_0800A950:
	.4byte 0x84000002
_0800A954:
	.4byte 0xFFFFFE00
_0800A958:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r0, _0800A9F8  @ =gOamData
	add r2, r2, r0
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
_0800A968:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r0, _0800A9F8  @ =gOamData
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r0
	ldr r3, [sp, #36]
	ldr r2, [r3, #32]
	ldr r0, _0800A9FC  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800AA00  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800A98C:
	ldr r4, [sp, #36]
	add r4, r4, #51
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800A998
	b _0800AC1E
_0800A998:
	cmp r0, #5
	bne _0800A99E
	b _0800AC1E
_0800A99E:
	mov r0, #4
	str r0, [sp, #16]
	ldr r1, [sp, #36]
	ldrb r0, [r1, #16]
	cmp r0, #0
	beq _0800AA72
	ldr r1, _0800AA04  @ =0x040000D4
	ldr r2, _0800AA08  @ =gUnknown_082EC748
	str r2, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800A9F8  @ =gOamData
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _0800AA0C  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r3
	mov r3, #200
	ldrh r2, [r1, #2]
	ldr r0, _0800AA10  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _0800A9F8  @ =gOamData
	add r0, r0, r1
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrb r0, [r4]
	cmp r0, #1
	bne _0800AA14
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r1
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	b _0800AA44
	.byte 0x00
	.byte 0x00
_0800A9F8:
	.4byte gOamData
_0800A9FC:
	.4byte 0x000003FF
_0800AA00:
	.4byte 0xFFFFFC00
_0800AA04:
	.4byte 0x040000D4
_0800AA08:
	.4byte gUnknown_082EC748
_0800AA0C:
	.4byte 0x84000002
_0800AA10:
	.4byte 0xFFFFFE00
_0800AA14:
	cmp r0, #2
	bne _0800AA30
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800AA2C  @ =gOamData
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	b _0800AA44
	.byte 0x00
	.byte 0x00
_0800AA2C:
	.4byte gOamData
_0800AA30:
	cmp r0, #2
	bls _0800AA48
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r4, _0800AAD0  @ =gOamData
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
_0800AA44:
	orr r0, r0, r1
	strb r0, [r2, #5]
_0800AA48:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r0, _0800AAD0  @ =gOamData
	add r2, r2, r0
	ldr r1, [sp, #36]
	ldrb r0, [r1, #16]
	lsl r0, r0, #1
	ldr r4, _0800AAD4  @ =gUnknown_03001B30
	ldr r1, [r4, #4]
	add r1, r1, r0
	ldr r3, _0800AAD8  @ =0x000003FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800AADC  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800AA72:
	ldr r4, [sp, #36]
	ldrb r1, [r4, #16]
	ldrb r0, [r4, #15]
	orr r0, r0, r1
	cmp r0, #0
	beq _0800AB4E
	ldr r1, _0800AAE0  @ =0x040000D4
	ldr r0, _0800AAE4  @ =gUnknown_082EC748
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _0800AAD0  @ =gOamData
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0800AAE8  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r2
	mov r3, #208
	ldrh r2, [r1, #2]
	ldr r0, _0800AAEC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800AAD0  @ =gOamData
	add r0, r0, r3
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldr r0, [sp, #36]
	add r0, r0, #51
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800AAF0
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	b _0800AB20
	.byte 0x00
	.byte 0x00
_0800AAD0:
	.4byte gOamData
_0800AAD4:
	.4byte gUnknown_03001B30
_0800AAD8:
	.4byte 0x000003FF
_0800AADC:
	.4byte 0xFFFFFC00
_0800AAE0:
	.4byte 0x040000D4
_0800AAE4:
	.4byte gUnknown_082EC748
_0800AAE8:
	.4byte 0x84000002
_0800AAEC:
	.4byte 0xFFFFFE00
_0800AAF0:
	cmp r0, #2
	bne _0800AB0C
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r0, _0800AB08  @ =gOamData
	add r2, r2, r0
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	b _0800AB20
	.byte 0x00
	.byte 0x00
_0800AB08:
	.4byte gOamData
_0800AB0C:
	cmp r0, #2
	bls _0800AB24
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r1, _0800ABA0  @ =gOamData
	add r2, r2, r1
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
_0800AB20:
	orr r0, r0, r1
	strb r0, [r2, #5]
_0800AB24:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800ABA0  @ =gOamData
	add r2, r2, r3
	ldr r4, [sp, #36]
	ldrb r0, [r4, #15]
	lsl r0, r0, #1
	ldr r3, _0800ABA4  @ =gUnknown_03001B30
	ldr r1, [r3, #4]
	add r1, r1, r0
	ldr r4, _0800ABA8  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800ABAC  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800AB4E:
	ldr r1, _0800ABB0  @ =0x040000D4
	ldr r0, _0800ABB4  @ =gUnknown_082EC748
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _0800ABA0  @ =gOamData
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0800ABB8  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r2
	mov r3, #216
	ldrh r2, [r1, #2]
	ldr r0, _0800ABBC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800ABA0  @ =gOamData
	add r0, r0, r3
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldr r0, [sp, #36]
	add r0, r0, #51
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800ABC0
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	b _0800ABF0
	.byte 0x00
	.byte 0x00
_0800ABA0:
	.4byte gOamData
_0800ABA4:
	.4byte gUnknown_03001B30
_0800ABA8:
	.4byte 0x000003FF
_0800ABAC:
	.4byte 0xFFFFFC00
_0800ABB0:
	.4byte 0x040000D4
_0800ABB4:
	.4byte gUnknown_082EC748
_0800ABB8:
	.4byte 0x84000002
_0800ABBC:
	.4byte 0xFFFFFE00
_0800ABC0:
	cmp r0, #2
	bne _0800ABDC
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r0, _0800ABD8  @ =gOamData
	add r2, r2, r0
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	b _0800ABF0
	.byte 0x00
	.byte 0x00
_0800ABD8:
	.4byte gOamData
_0800ABDC:
	cmp r0, #2
	bls _0800ABF4
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r1, _0800AD5C  @ =gOamData
	add r2, r2, r1
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
_0800ABF0:
	orr r0, r0, r1
	strb r0, [r2, #5]
_0800ABF4:
	ldr r0, _0800AD5C  @ =gOamData
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r0
	ldr r3, [sp, #36]
	ldrb r0, [r3, #14]
	lsl r0, r0, #1
	ldr r1, _0800AD60  @ =gUnknown_03001B30
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r4, _0800AD64  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800AD68  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800AC1E:
	ldr r0, _0800AD6C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	beq _0800AC2C
	b _0800AED4
_0800AC2C:
	ldr r0, [sp, #36]
	add r0, r0, #212
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800AC38
	b _0800AED4
_0800AC38:
	ldr r6, [sp, #36]
	add r6, r6, #210
	ldrh r0, [r6]
	cmp r0, #112
	beq _0800AC44
	b _0800AD9C
_0800AC44:
	ldr r4, _0800AD70  @ =0x040000D4
	ldr r0, [sp, #36]
	add r0, r0, #206
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0800AD74  @ =gUnknown_082E9654
	add r0, r0, r1
	str r0, [r4]
	ldr r1, [sp, #12]
	ldrh r0, [r1]
	ldr r1, _0800AD78  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0800AD7C  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800AD80  @ =gUnknown_082E964C
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0800AD5C  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r2, _0800AD84  @ =0x84000002
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r3, [sp, #36]
	add r3, r3, #208
	mov r12, r3
	ldrh r2, [r3]
	ldr r0, _0800AD88  @ =0x000001FF
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0800AD8C  @ =0xFFFFFE00
	mov r9, r0
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r1, [r6]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0800AD64  @ =0x000003FF
	mov r10, r3
	mov r0, r10
	and r1, r1, r0
	ldr r3, _0800AD68  @ =0xFFFFFC00
	mov r8, r3
	mov r0, r8
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldr r2, [sp, #12]
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r3, [sp, #12]
	strh r0, [r3]
	ldr r1, [sp, #8]
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	ldr r0, [sp, #36]
	add r0, r0, #213
	ldrb r0, [r0]
	cmp r0, #11
	bhi _0800ACF2
	b _0800AED4
_0800ACF2:
	ldr r0, _0800AD90  @ =gUnknown_082E94F4
	str r0, [r4]
	ldrh r0, [r3]
	ldr r2, _0800AD78  @ =0x06010000
	add r0, r0, r2
	str r0, [r4, #4]
	ldr r0, _0800AD94  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800AD98  @ =gUnknown_082E94EC
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r3, _0800AD84  @ =0x84000002
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r4, r12
	ldrh r1, [r4]
	add r1, r1, #8
	ldr r0, _0800AD88  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r0, [r6]
	add r0, r0, #32
	strb r0, [r1]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	add r0, r0, r1
	mov r4, r10
	and r0, r0, r4
	mov r1, r8
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	b _0800AEBE
_0800AD5C:
	.4byte gOamData
_0800AD60:
	.4byte gUnknown_03001B30
_0800AD64:
	.4byte 0x000003FF
_0800AD68:
	.4byte 0xFFFFFC00
_0800AD6C:
	.4byte gUnknown_03000B80
_0800AD70:
	.4byte 0x040000D4
_0800AD74:
	.4byte gUnknown_082E9654
_0800AD78:
	.4byte 0x06010000
_0800AD7C:
	.4byte 0x84000100
_0800AD80:
	.4byte gUnknown_082E964C
_0800AD84:
	.4byte 0x84000002
_0800AD88:
	.4byte 0x000001FF
_0800AD8C:
	.4byte 0xFFFFFE00
_0800AD90:
	.4byte gUnknown_082E94F4
_0800AD94:
	.4byte 0x84000020
_0800AD98:
	.4byte gUnknown_082E94EC
_0800AD9C:
	ldr r4, _0800AF08  @ =0x040000D4
	ldr r0, [sp, #36]
	add r0, r0, #206
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0800AF0C  @ =gUnknown_082E9654
	add r0, r0, r1
	str r0, [r4]
	ldr r3, [sp, #12]
	ldrh r0, [r3]
	ldr r1, _0800AF10  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0800AF14  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800AF18  @ =gUnknown_082E964C
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0800AF1C  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0800AF20  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [sp, #36]
	add r2, r2, #208
	mov r12, r2
	ldrh r2, [r2]
	ldr r3, _0800AF24  @ =0x000001FF
	and r2, r2, r3
	ldrh r3, [r1, #2]
	ldr r0, _0800AF28  @ =0xFFFFFE00
	mov r10, r0
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r0, [r6]
	add r0, r0, #16
	strb r0, [r1]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0800AF2C  @ =0x000003FF
	mov r9, r3
	mov r0, r9
	and r1, r1, r0
	ldr r3, _0800AF30  @ =0xFFFFFC00
	mov r8, r3
	mov r0, r8
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldr r2, [sp, #12]
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r3, [sp, #12]
	strh r0, [r3]
	ldr r1, [sp, #8]
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	ldr r0, [sp, #36]
	add r0, r0, #213
	ldrb r0, [r0]
	cmp r0, #11
	bls _0800AED4
	ldr r0, _0800AF34  @ =gUnknown_082E94F4
	str r0, [r4]
	ldrh r0, [r3]
	ldr r2, _0800AF10  @ =0x06010000
	add r0, r0, r2
	str r0, [r4, #4]
	ldr r0, _0800AF38  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800AF3C  @ =gUnknown_082E94EC
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r3, _0800AF20  @ =0x84000002
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r4, r12
	ldrh r1, [r4]
	add r1, r1, #8
	ldr r0, _0800AF24  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r1, [r6]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	add r0, r0, r1
	mov r4, r9
	and r0, r0, r4
	mov r1, r8
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r0, [r1, #3]
	mov r2, #32
	orr r0, r0, r2
	strb r0, [r1, #3]
_0800AEBE:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, [sp, #12]
	ldrh r0, [r1]
	add r0, r0, #128
	strh r0, [r1]
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	add r0, r0, #4
	strh r0, [r2]
_0800AED4:
	ldr r0, _0800AF40  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0800AEE2
	b _0800B126
_0800AEE2:
	mov r3, #100
	mov r9, r3
	mov r4, #12
	str r4, [sp, #16]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0800AF44
	ldr r1, [sp, #12]
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #100
	mov r1, #12
	add r2, r7, #0
	ldr r3, [sp, #8]
	bl sub_0800A4B4
	b _0800B126
	.byte 0x00
	.byte 0x00
_0800AF08:
	.4byte 0x040000D4
_0800AF0C:
	.4byte gUnknown_082E9654
_0800AF10:
	.4byte 0x06010000
_0800AF14:
	.4byte 0x84000100
_0800AF18:
	.4byte gUnknown_082E964C
_0800AF1C:
	.4byte gOamData
_0800AF20:
	.4byte 0x84000002
_0800AF24:
	.4byte 0x000001FF
_0800AF28:
	.4byte 0xFFFFFE00
_0800AF2C:
	.4byte 0x000003FF
_0800AF30:
	.4byte 0xFFFFFC00
_0800AF34:
	.4byte gUnknown_082E94F4
_0800AF38:
	.4byte 0x84000020
_0800AF3C:
	.4byte gUnknown_082E94EC
_0800AF40:
	.4byte gNextLevelInLevelTable
_0800AF44:
	ldr r0, [sp, #36]
	add r0, r0, #183
	ldrb r0, [r0]
	cmp r0, #11
	bls _0800AF50
	b _0800B126
_0800AF50:
	mov r2, #0
	mov r12, r2
	ldr r6, _0800AF84  @ =0x040000D4
	ldr r3, _0800AF88  @ =0x06010000
	mov r8, r3
	ldr r5, _0800AF8C  @ =0x84000020
	ldr r4, _0800AF90  @ =gOamData
	ldr r0, _0800AF94  @ =0xFFFFFC00
	mov r10, r0
_0800AF62:
	mov r0, r12
	add r0, r0, #3
	ldr r1, _0800AF98  @ =gRedPresentFlag
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B048
	mov r2, r12
	cmp r2, #0
	bne _0800AFA0
	ldr r3, _0800AF9C  @ =0x03000AD0
	ldr r0, [r3]
	str r0, [r6]
	ldr r1, [sp, #12]
	ldrh r0, [r1]
	b _0800AFC2
	.byte 0x00
	.byte 0x00
_0800AF84:
	.4byte 0x040000D4
_0800AF88:
	.4byte 0x06010000
_0800AF8C:
	.4byte 0x84000020
_0800AF90:
	.4byte gOamData
_0800AF94:
	.4byte 0xFFFFFC00
_0800AF98:
	.4byte gRedPresentFlag
_0800AF9C:
	.4byte 0x03000AD0
_0800AFA0:
	mov r2, r12
	cmp r2, #1
	bne _0800AFB8
	ldr r3, _0800AFB4  @ =0x03000AD4
	ldr r0, [r3]
	str r0, [r6]
	ldr r1, [sp, #12]
	ldrh r0, [r1]
	b _0800AFC2
	.byte 0x00
	.byte 0x00
_0800AFB4:
	.4byte 0x03000AD4
_0800AFB8:
	ldr r2, _0800B030  @ =0x03000AD8
	ldr r0, [r2]
	str r0, [r6]
	ldr r3, [sp, #12]
	ldrh r0, [r3]
_0800AFC2:
	add r0, r0, r8
	str r0, [r6, #4]
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800B034  @ =gUnknown_082F15F8
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800B038  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0800B03C  @ =0x000001FF
	add r0, r1, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B040  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0800B044  @ =0x000003FF
	and r1, r1, r3
	mov r0, r10
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	b _0800B0FC
_0800B030:
	.4byte 0x03000AD8
_0800B034:
	.4byte gUnknown_082F15F8
_0800B038:
	.4byte 0x84000002
_0800B03C:
	.4byte 0x000001FF
_0800B040:
	.4byte 0xFFFFFE00
_0800B044:
	.4byte 0x000003FF
_0800B048:
	ldr r3, _0800B0CC  @ =gUnknown_082F1600
	str r3, [r6]
	ldr r1, [sp, #12]
	ldrh r0, [r1]
	add r0, r0, r8
	str r0, [r6, #4]
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldr r2, _0800B0D0  @ =gUnknown_082F15F8
	str r2, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800B0D4  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800B0D8  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B0DC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0800B0E0  @ =0x000003FF
	and r1, r1, r3
	mov r0, r10
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldr r1, _0800B0E4  @ =gAfterTutorialWorld
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0800B0EC
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800B0E8  @ =gOamData
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	b _0800B0FC
	.byte 0x00
	.byte 0x00
_0800B0CC:
	.4byte gUnknown_082F1600
_0800B0D0:
	.4byte gUnknown_082F15F8
_0800B0D4:
	.4byte 0x84000002
_0800B0D8:
	.4byte 0x000001FF
_0800B0DC:
	.4byte 0xFFFFFE00
_0800B0E0:
	.4byte 0x000003FF
_0800B0E4:
	.4byte gAfterTutorialWorld
_0800B0E8:
	.4byte gOamData
_0800B0EC:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r0, _0800B1CC  @ =gOamData
	add r2, r2, r0
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
_0800B0FC:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, [sp, #12]
	ldrh r0, [r1]
	add r0, r0, #128
	strh r0, [r1]
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	add r0, r0, #4
	strh r0, [r2]
	mov r3, #17
	add r9, r9, r3
	mov r0, #1
	add r12, r12, r0
	mov r1, r12
	cmp r1, #2
	bgt _0800B126
	b _0800AF62
_0800B126:
	ldr r0, _0800B1D0  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0800B134
	b _0800B5F0
_0800B134:
	mov r2, #5
	mov r9, r2
	mov r3, #17
	str r3, [sp, #16]
	ldr r6, _0800B1D4  @ =gUnknown_03000A10
	add r0, r6, #0
	add r0, r0, #97
	ldrb r0, [r0]
	str r6, [sp, #36]
	cmp r0, #0
	bne _0800B14C
	b _0800B44C
_0800B14C:
	mov r4, #0
	mov r12, r4
	add r0, r6, #0
	add r0, r0, #96
	ldrb r0, [r0]
	cmp r12, r0
	blt _0800B15C
	b _0800B260
_0800B15C:
	ldr r5, _0800B1D8  @ =0x040000D4
	ldr r4, _0800B1CC  @ =gOamData
	ldr r0, _0800B1DC  @ =gUnknown_082EC2D8
	mov r10, r0
	ldr r1, _0800B1E0  @ =0x84000002
	mov r8, r1
_0800B168:
	ldr r2, _0800B1E4  @ =0x03001BA0
	ldrb r2, [r2]
	cmp r12, r2
	bge _0800B1F8
	mov r3, r10
	str r3, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	mov r0, r8
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0800B1E8  @ =0x000001FF
	add r0, r1, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B1EC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, [r6, #76]
	add r1, r1, #16
	ldr r3, _0800B1F0  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	ldr r0, _0800B1F4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r0, #13
	add r9, r9, r0
	b _0800B250
	.byte 0x00
	.byte 0x00
_0800B1CC:
	.4byte gOamData
_0800B1D0:
	.4byte gNextLevelInLevelTable
_0800B1D4:
	.4byte gUnknown_03000A10
_0800B1D8:
	.4byte 0x040000D4
_0800B1DC:
	.4byte gUnknown_082EC2D8
_0800B1E0:
	.4byte 0x84000002
_0800B1E4:
	.4byte 0x03001BA0
_0800B1E8:
	.4byte 0x000001FF
_0800B1EC:
	.4byte 0xFFFFFE00
_0800B1F0:
	.4byte 0x000003FF
_0800B1F4:
	.4byte 0xFFFFFC00
_0800B1F8:
	mov r1, r10
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	mov r2, r8
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800B370  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B374  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #76]
	ldr r0, _0800B378  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800B37C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	add r9, r9, r1
_0800B250:
	mov r2, #1
	add r12, r12, r2
	ldr r6, [sp, #36]
	add r0, r6, #0
	add r0, r0, #96
	ldrb r0, [r0]
	cmp r12, r0
	blt _0800B168
_0800B260:
	mov r3, r12
	cmp r3, #5
	ble _0800B26A
	bl _0800C458
_0800B26A:
	ldr r4, _0800B380  @ =gUnknown_03000A10
	str r4, [sp, #20]
	ldr r5, _0800B384  @ =0x040000D4
	ldr r6, _0800B388  @ =gOamData
_0800B272:
	ldr r0, [sp, #20]
	add r0, r0, #97
	ldrb r0, [r0]
	mov r1, r12
	asr r0, r0, r1
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0800B286
	b _0800B3C8
_0800B286:
	ldr r4, [sp, #36]
	add r4, r4, #99
	add r4, r4, r12
	str r4, [sp, #40]
	ldrb r0, [r4]
	lsl r0, r0, #10
	ldr r1, _0800B38C  @ =gUnknown_085882C0
	add r0, r0, r1
	str r0, [r5]
	ldr r2, [sp, #12]
	ldrh r0, [r2]
	ldr r1, _0800B390  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800B394  @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800B398  @ =gUnknown_085882B8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r3, _0800B39C  @ =0x84000002
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	sub r1, r1, #8
	ldr r4, _0800B370  @ =0x000001FF
	and r1, r1, r4
	ldrh r3, [r2, #2]
	ldr r0, _0800B374  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldr r1, [sp, #16]
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _0800B378  @ =0x000003FF
	mov r8, r4
	mov r0, r8
	and r1, r1, r0
	ldr r4, _0800B37C  @ =0xFFFFFC00
	mov r10, r4
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldr r2, [sp, #12]
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r3, [sp, #12]
	strh r0, [r3]
	ldr r4, [sp, #8]
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
	ldr r0, _0800B3A0  @ =gUnknown_082EC2D8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800B39C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800B370  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800B374  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldr r1, [sp, #40]
	ldrb r0, [r1]
	cmp r0, #6
	bhi _0800B3A4
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800B388  @ =gOamData
	add r2, r2, r3
	ldr r4, [sp, #20]
	ldr r1, [r4, #76]
	mov r0, r8
	and r1, r1, r0
	b _0800B3B6
_0800B370:
	.4byte 0x000001FF
_0800B374:
	.4byte 0xFFFFFE00
_0800B378:
	.4byte 0x000003FF
_0800B37C:
	.4byte 0xFFFFFC00
_0800B380:
	.4byte gUnknown_03000A10
_0800B384:
	.4byte 0x040000D4
_0800B388:
	.4byte gOamData
_0800B38C:
	.4byte gUnknown_085882C0
_0800B390:
	.4byte 0x06010000
_0800B394:
	.4byte 0x84000100
_0800B398:
	.4byte gUnknown_085882B8
_0800B39C:
	.4byte 0x84000002
_0800B3A0:
	.4byte gUnknown_082EC2D8
_0800B3A4:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r1, _0800B3C4  @ =gOamData
	add r2, r2, r1
	ldr r3, [sp, #20]
	ldr r1, [r3, #76]
	add r1, r1, #8
	mov r4, r8
	and r1, r1, r4
_0800B3B6:
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	b _0800B418
	.byte 0x00
	.byte 0x00
_0800B3C4:
	.4byte gOamData
_0800B3C8:
	ldr r0, _0800B434  @ =gUnknown_082EC2D8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800B438  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800B43C  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800B440  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #36]
	ldr r1, [r0, #76]
	add r1, r1, #8
	ldr r2, _0800B444  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800B448  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
_0800B418:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	add r9, r9, r3
	mov r4, #1
	add r12, r12, r4
	mov r0, r12
	cmp r0, #5
	bgt _0800B42E
	b _0800B272
_0800B42E:
	bl _0800C458
	.byte 0x00
	.byte 0x00
_0800B434:
	.4byte gUnknown_082EC2D8
_0800B438:
	.4byte 0x84000002
_0800B43C:
	.4byte 0x000001FF
_0800B440:
	.4byte 0xFFFFFE00
_0800B444:
	.4byte 0x000003FF
_0800B448:
	.4byte 0xFFFFFC00
_0800B44C:
	mov r1, #0
	mov r12, r1
	ldr r3, _0800B4B8  @ =0x03001BC8
	ldrb r1, [r3]
	ldr r2, _0800B4BC  @ =0x03001BCC
	ldrb r0, [r2]
	sub r1, r1, r0
	cmp r12, r1
	bge _0800B548
	ldr r5, _0800B4C0  @ =0x040000D4
	ldr r4, _0800B4C4  @ =gOamData
	ldr r2, _0800B4C8  @ =0xFFFFFC00
	mov r10, r2
	ldr r3, _0800B4CC  @ =gUnknown_082EC2D8
	mov r8, r3
	ldr r6, _0800B4D0  @ =0x84000002
_0800B46C:
	ldr r0, _0800B4D4  @ =0x03001BA0
	ldrb r0, [r0]
	cmp r12, r0
	bge _0800B4E0
	mov r1, r8
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800B4D8  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B4DC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #76]
	add r1, r1, #16
	b _0800B51E
	.byte 0x00
	.byte 0x00
_0800B4B8:
	.4byte 0x03001BC8
_0800B4BC:
	.4byte 0x03001BCC
_0800B4C0:
	.4byte 0x040000D4
_0800B4C4:
	.4byte gOamData
_0800B4C8:
	.4byte 0xFFFFFC00
_0800B4CC:
	.4byte gUnknown_082EC2D8
_0800B4D0:
	.4byte 0x84000002
_0800B4D4:
	.4byte 0x03001BA0
_0800B4D8:
	.4byte 0x000001FF
_0800B4DC:
	.4byte 0xFFFFFE00
_0800B4E0:
	mov r2, r8
	str r2, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800B5C8  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B5CC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #76]
_0800B51E:
	ldr r0, _0800B5D0  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	add r9, r9, r1
	mov r2, #1
	add r12, r12, r2
	ldr r3, _0800B5D4  @ =0x03001BC8
	ldrb r0, [r3]
	ldr r2, _0800B5D8  @ =0x03001BCC
	ldrb r1, [r2]
	sub r0, r0, r1
	cmp r12, r0
	blt _0800B46C
_0800B548:
	mov r3, r12
	cmp r3, #5
	ble _0800B552
	bl _0800C458
_0800B552:
	ldr r5, _0800B5DC  @ =0x040000D4
	ldr r4, _0800B5E0  @ =gOamData
	ldr r0, _0800B5CC  @ =0xFFFFFE00
	mov r8, r0
	ldr r6, _0800B5E4  @ =0xFFFFFC00
_0800B55C:
	ldr r0, _0800B5E8  @ =gUnknown_082EC2D8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800B5EC  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0800B5C8  @ =0x000001FF
	add r0, r1, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r0, [sp, #36]
	ldr r1, [r0, #76]
	add r1, r1, #8
	ldr r2, _0800B5D0  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	add r9, r9, r3
	mov r0, #1
	add r12, r12, r0
	mov r1, r12
	cmp r1, #5
	ble _0800B55C
	bl _0800C458
	.byte 0x00
	.byte 0x00
_0800B5C8:
	.4byte 0x000001FF
_0800B5CC:
	.4byte 0xFFFFFE00
_0800B5D0:
	.4byte 0x000003FF
_0800B5D4:
	.4byte 0x03001BC8
_0800B5D8:
	.4byte 0x03001BCC
_0800B5DC:
	.4byte 0x040000D4
_0800B5E0:
	.4byte gOamData
_0800B5E4:
	.4byte 0xFFFFFC00
_0800B5E8:
	.4byte gUnknown_082EC2D8
_0800B5EC:
	.4byte 0x84000002
_0800B5F0:
	mov r0, #2
	and r1, r1, r0
	ldr r2, _0800B91C  @ =gUnknown_03000A10
	str r2, [sp, #36]
	cmp r1, #0
	bne _0800B600
	bl _0800C458
_0800B600:
	ldr r0, _0800B920  @ =gUnknown_03001938
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #10
	and r0, r0, r1
	cmp r0, #0
	bne _0800B610
	b _0800BB30
_0800B610:
	mov r3, #84
	mov r9, r3
	mov r4, #14
	str r4, [sp, #16]
	mov r0, #0
	mov r12, r0
	ldr r0, _0800B924  @ =0x030019AC
	ldr r1, [r0]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r12, r1
	blt _0800B62E
	b _0800B9A2
_0800B62E:
	str r2, [sp, #24]
	ldr r1, _0800B928  @ =0x040000D4
	mov r8, r1
	ldr r6, _0800B92C  @ =gOamData
_0800B636:
	ldr r0, [sp, #24]
	add r0, r0, #180
	ldrh r1, [r0]
	mov r2, r12
	lsl r0, r2, #4
	sub r0, r0, r2
	lsl r0, r0, #1
	cmp r1, r0
	bgt _0800B69C
	ldr r3, _0800B930  @ =gUnknown_082EC2D8
	mov r4, r8
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r4, #4]
	ldr r0, _0800B934  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800B938  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r0, [sp, #36]
	ldr r2, [r0, #76]
	ldr r0, _0800B940  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800B944  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800B69C:
	ldr r1, [sp, #24]
	add r1, r1, #97
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800B6A8
	b _0800B7AC
_0800B6A8:
	mov r1, r12
	asr r0, r0, r1
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0800B7AC
	ldr r5, _0800B928  @ =0x040000D4
	ldr r4, [sp, #24]
	add r4, r4, #99
	add r4, r4, r12
	str r4, [sp, #40]
	ldrb r0, [r4]
	lsl r0, r0, #10
	ldr r2, _0800B948  @ =gUnknown_085882C0
	add r0, r0, r2
	str r0, [r5]
	ldr r3, [sp, #12]
	ldrh r0, [r3]
	ldr r1, _0800B94C  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800B950  @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r4, _0800B954  @ =gUnknown_085882B8
	str r4, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800B934  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	mov r2, r9
	sub r2, r2, #8
	ldr r3, _0800B938  @ =0x000001FF
	and r2, r2, r3
	ldrh r3, [r1, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldr r1, [sp, #16]
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r4, [sp, #8]
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r0, _0800B940  @ =0x000003FF
	mov r10, r0
	mov r4, r10
	and r1, r1, r4
	ldr r0, _0800B944  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldr r2, [sp, #12]
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r3, [sp, #12]
	strh r0, [r3]
	ldr r4, [sp, #8]
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
	ldr r1, [sp, #40]
	ldrb r0, [r1]
	cmp r0, #6
	bhi _0800B7AC
	ldr r2, _0800B930  @ =gUnknown_082EC2D8
	str r2, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800B92C  @ =gOamData
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r4, _0800B934  @ =0x84000002
	str r4, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r3
	mov r1, r9
	ldr r0, _0800B938  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _0800B92C  @ =gOamData
	add r0, r0, r1
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r1
	ldr r3, [sp, #24]
	ldr r1, [r3, #76]
	mov r4, r10
	and r1, r1, r4
	ldrh r3, [r2, #4]
	ldr r0, _0800B944  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800B7AC:
	mov r1, r12
	lsl r0, r1, #2
	ldr r2, _0800B958  @ =0x03000AAC
	add r0, r0, r2
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #1
	cmp r1, r0
	ble _0800B7C0
	b _0800B986
_0800B7C0:
	ldr r3, _0800B95C  @ =gUnknown_082EC748
	mov r4, r8
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r4, #4]
	ldr r0, _0800B934  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r6
	mov r1, r12
	lsl r4, r1, #1
	ldr r5, [sp, #36]
	add r5, r5, #130
	add r5, r4, r5
	ldrh r1, [r5]
	ldr r2, _0800B938  @ =0x000001FF
	and r1, r1, r2
	ldrh r2, [r3, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r0, [sp, #36]
	add r0, r0, #142
	add r4, r4, r0
	ldrh r0, [r4]
	strb r0, [r1]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r3, _0800B960  @ =gUnknown_03001B30
	ldr r2, [r3, #4]
	ldr r0, _0800B940  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800B944  @ =0xFFFFFC00
	mov r10, r0
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _0800B95C  @ =gUnknown_082EC748
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r2, #4]
	ldr r3, _0800B934  @ =0x84000002
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r1, [r5]
	sub r1, r1, #6
	ldr r0, _0800B938  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrh r1, [r4]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldr r3, _0800B960  @ =gUnknown_03001B30
	ldr r1, [r3, #4]
	ldr r0, _0800B940  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _0800B95C  @ =gUnknown_082EC748
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r2, #4]
	ldr r3, _0800B934  @ =0x84000002
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r1, [r5]
	sub r1, r1, #12
	ldr r0, _0800B938  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrh r1, [r4]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldr r3, _0800B960  @ =gUnknown_03001B30
	ldr r1, [r3, #4]
	ldr r0, _0800B940  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _0800B95C  @ =gUnknown_082EC748
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r2, #4]
	ldr r3, _0800B934  @ =0x84000002
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r1, [r5]
	sub r1, r1, #18
	ldr r0, _0800B938  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrh r1, [r4]
	strb r1, [r0]
	mov r1, r12
	cmp r1, #5
	bne _0800B964
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800B92C  @ =gOamData
	add r2, r2, r3
	ldr r4, _0800B960  @ =gUnknown_03001B30
	ldr r1, [r4, #4]
	add r1, r1, #10
	ldr r0, _0800B940  @ =0x000003FF
	and r1, r1, r0
	b _0800B976
_0800B91C:
	.4byte gUnknown_03000A10
_0800B920:
	.4byte gUnknown_03001938
_0800B924:
	.4byte 0x030019AC
_0800B928:
	.4byte 0x040000D4
_0800B92C:
	.4byte gOamData
_0800B930:
	.4byte gUnknown_082EC2D8
_0800B934:
	.4byte 0x84000002
_0800B938:
	.4byte 0x000001FF
_0800B93C:
	.4byte 0xFFFFFE00
_0800B940:
	.4byte 0x000003FF
_0800B944:
	.4byte 0xFFFFFC00
_0800B948:
	.4byte gUnknown_085882C0
_0800B94C:
	.4byte 0x06010000
_0800B950:
	.4byte 0x84000100
_0800B954:
	.4byte gUnknown_085882B8
_0800B958:
	.4byte 0x03000AAC
_0800B95C:
	.4byte gUnknown_082EC748
_0800B960:
	.4byte gUnknown_03001B30
_0800B964:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r1, _0800BAFC  @ =gOamData
	add r2, r2, r1
	ldr r3, _0800BB00  @ =gUnknown_03001B30
	ldr r1, [r3, #4]
	add r1, r1, #2
	ldr r4, _0800BB04  @ =0x000003FF
	and r1, r1, r4
_0800B976:
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800B986:
	mov r0, #13
	neg r0, r0
	add r9, r9, r0
	mov r1, #1
	add r12, r12, r1
	ldr r2, _0800BB08  @ =0x030019AC
	ldr r0, [r2]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	bge _0800B9A2
	b _0800B636
_0800B9A2:
	ldr r3, _0800BB08  @ =0x030019AC
	ldr r0, [r3]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r12, r0
	ldr r6, _0800BB0C  @ =0x03001BA0
	ldrb r4, [r6]
	cmp r12, r4
	bge _0800BA2C
	ldr r5, _0800BB10  @ =0x040000D4
	ldr r4, _0800BAFC  @ =gOamData
	ldr r0, _0800BB14  @ =0xFFFFFC00
	mov r10, r0
	ldr r1, _0800BB18  @ =gUnknown_082EC2D8
	mov r8, r1
_0800B9C4:
	mov r2, r8
	str r2, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800BB1C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800BB20  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800BB24  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r2, [sp, #36]
	ldr r1, [r2, #76]
	add r1, r1, #8
	ldr r2, _0800BB04  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	mov r0, r10
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	neg r3, r3
	add r9, r9, r3
	mov r0, #1
	add r12, r12, r0
	ldrb r1, [r6]
	cmp r12, r1
	blt _0800B9C4
_0800BA2C:
	mov r2, #140
	mov r9, r2
	ldr r5, _0800BB10  @ =0x040000D4
	ldr r4, _0800BAFC  @ =gOamData
	ldr r3, _0800BB14  @ =0xFFFFFC00
	mov r10, r3
	mov r0, #3
	mov r12, r0
_0800BA3C:
	ldr r1, _0800BB28  @ =gUnknown_082E8EA0
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r2, _0800BB1C  @ =0x84000002
	mov r8, r2
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800BB20  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800BB24  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r2, [sp, #36]
	ldr r1, [r2, #80]
	add r1, r1, #8
	ldr r0, _0800BB04  @ =0x000003FF
	add r6, r0, #0
	and r1, r1, r6
	ldrh r2, [r3, #4]
	mov r0, r10
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	add r9, r9, r1
	mov r2, #1
	neg r2, r2
	add r12, r12, r2
	mov r3, r12
	cmp r3, #0
	bge _0800BA3C
	mov r4, #13
	str r4, [sp, #16]
	ldr r1, _0800BB10  @ =0x040000D4
	ldr r0, _0800BB2C  @ =gUnknown_082E92C0
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _0800BAFC  @ =gOamData
	add r0, r0, r2
	str r0, [r1, #4]
	mov r3, r8
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r2
	mov r3, #104
	ldrh r2, [r1, #2]
	ldr r0, _0800BB24  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0800BAFC  @ =gOamData
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #92]
	and r1, r1, r6
	ldrh r3, [r2, #4]
	ldr r0, _0800BB14  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	bl _0800C452
	.byte 0x00
	.byte 0x00
_0800BAFC:
	.4byte gOamData
_0800BB00:
	.4byte gUnknown_03001B30
_0800BB04:
	.4byte 0x000003FF
_0800BB08:
	.4byte 0x030019AC
_0800BB0C:
	.4byte 0x03001BA0
_0800BB10:
	.4byte 0x040000D4
_0800BB14:
	.4byte 0xFFFFFC00
_0800BB18:
	.4byte gUnknown_082EC2D8
_0800BB1C:
	.4byte 0x84000002
_0800BB20:
	.4byte 0x000001FF
_0800BB24:
	.4byte 0xFFFFFE00
_0800BB28:
	.4byte gUnknown_082E8EA0
_0800BB2C:
	.4byte gUnknown_082E92C0
_0800BB30:
	ldr r1, [sp, #36]
	add r1, r1, #126
	ldrb r0, [r1]
	cmp r0, #25
	bls _0800BB3C
	b _0800BC7A
_0800BB3C:
	mov r4, #84
	mov r9, r4
	mov r0, #14
	str r0, [sp, #16]
	mov r2, #0
	mov r12, r2
	ldr r3, _0800BC40  @ =gUnknown_082EC2D8
	mov r10, r3
	ldr r4, _0800BC44  @ =0x03001BA0
	ldrb r4, [r4]
	cmp r12, r4
	bge _0800BBCC
	ldr r5, _0800BC48  @ =0x040000D4
	ldr r4, _0800BC4C  @ =gOamData
	ldr r0, [sp, #36]
	mov r8, r0
	add r6, r1, #0
_0800BB5E:
	mov r1, r10
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800BC50  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800BC54  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800BC58  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	mov r3, r8
	ldr r1, [r3, #76]
	ldr r0, _0800BC5C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800BC60  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldrb r0, [r6]
	cmp r0, #12
	bls _0800BBC0
	mov r1, r9
	add r1, r1, #13
	sub r1, r1, r0
	mov r9, r1
_0800BBC0:
	mov r1, #1
	add r12, r12, r1
	ldr r2, _0800BC44  @ =0x03001BA0
	ldrb r2, [r2]
	cmp r12, r2
	blt _0800BB5E
_0800BBCC:
	mov r3, #140
	mov r9, r3
	ldr r5, _0800BC48  @ =0x040000D4
	ldr r4, _0800BC4C  @ =gOamData
	ldr r0, _0800BC64  @ =gUnknown_03000A10
	mov r8, r0
	mov r6, r8
	add r6, r6, #126
	mov r1, #3
	mov r12, r1
_0800BBE0:
	mov r2, r10
	str r2, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800BC50  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800BC54  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800BC58  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	mov r3, r8
	ldr r1, [r3, #80]
	ldr r0, _0800BC5C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800BC60  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldrb r0, [r6]
	cmp r0, #12
	bhi _0800BC68
	add r9, r9, r0
	b _0800BC6C
	.byte 0x00
	.byte 0x00
_0800BC40:
	.4byte gUnknown_082EC2D8
_0800BC44:
	.4byte 0x03001BA0
_0800BC48:
	.4byte 0x040000D4
_0800BC4C:
	.4byte gOamData
_0800BC50:
	.4byte 0x84000002
_0800BC54:
	.4byte 0x000001FF
_0800BC58:
	.4byte 0xFFFFFE00
_0800BC5C:
	.4byte 0x000003FF
_0800BC60:
	.4byte 0xFFFFFC00
_0800BC64:
	.4byte gUnknown_03000A10
_0800BC68:
	mov r1, #13
	add r9, r9, r1
_0800BC6C:
	mov r2, #1
	neg r2, r2
	add r12, r12, r2
	mov r3, r12
	cmp r3, #0
	bge _0800BBE0
	b _0800C402
_0800BC7A:
	mov r4, #84
	mov r9, r4
	mov r0, #14
	str r0, [sp, #16]
	ldr r0, [sp, #36]
	add r0, r0, #97
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800BCA4
	ldr r1, _0800BD48  @ =0x030019AC
	ldr r2, [r1]
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _0800BCA4
	b _0800BF64
_0800BCA4:
	ldr r6, _0800BD48  @ =0x030019AC
	ldr r2, [r6]
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _0800BD6C
	mov r3, #0
	mov r12, r3
	add r0, r2, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	bge _0800BD70
	ldr r5, _0800BD4C  @ =0x040000D4
	ldr r4, _0800BD50  @ =gOamData
	ldr r0, _0800BD54  @ =0x000003FF
	mov r8, r0
	ldr r1, _0800BD58  @ =0xFFFFFC00
	mov r10, r1
_0800BCD8:
	ldr r0, _0800BD5C  @ =gUnknown_082EC2D8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800BD60  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800BD64  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800BD68  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #76]
	mov r0, r8
	and r1, r1, r0
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	neg r1, r1
	add r9, r9, r1
	mov r2, #1
	add r12, r12, r2
	ldr r0, [r6]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	blt _0800BCD8
	b _0800BD70
	.byte 0x00
	.byte 0x00
_0800BD48:
	.4byte 0x030019AC
_0800BD4C:
	.4byte 0x040000D4
_0800BD50:
	.4byte gOamData
_0800BD54:
	.4byte 0x000003FF
_0800BD58:
	.4byte 0xFFFFFC00
_0800BD5C:
	.4byte gUnknown_082EC2D8
_0800BD60:
	.4byte 0x84000002
_0800BD64:
	.4byte 0x000001FF
_0800BD68:
	.4byte 0xFFFFFE00
_0800BD6C:
	mov r3, #0
	mov r12, r3
_0800BD70:
	ldr r4, _0800BE80  @ =0x03001BA0
	ldrb r4, [r4]
	cmp r12, r4
	blt _0800BD7A
	b _0800C06E
_0800BD7A:
	ldr r0, _0800BE84  @ =gUnknown_03000A10
	str r0, [sp, #28]
	ldr r5, _0800BE88  @ =0x040000D4
	ldr r6, _0800BE8C  @ =gOamData
_0800BD82:
	ldr r0, [sp, #28]
	add r0, r0, #97
	ldrb r0, [r0]
	mov r1, r12
	asr r0, r0, r1
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0800BD96
	b _0800BEDC
_0800BD96:
	ldr r4, [sp, #36]
	add r4, r4, #99
	add r4, r4, r12
	str r4, [sp, #40]
	ldrb r0, [r4]
	lsl r0, r0, #10
	ldr r1, _0800BE90  @ =gUnknown_085882C0
	add r0, r0, r1
	str r0, [r5]
	ldr r2, [sp, #12]
	ldrh r0, [r2]
	ldr r1, _0800BE94  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800BE98  @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800BE9C  @ =gUnknown_085882B8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r3, _0800BEA0  @ =0x84000002
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	sub r1, r1, #8
	ldr r4, _0800BEA4  @ =0x000001FF
	and r1, r1, r4
	ldrh r3, [r2, #2]
	ldr r0, _0800BEA8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldr r1, [sp, #16]
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _0800BEAC  @ =0x000003FF
	mov r8, r4
	mov r0, r8
	and r1, r1, r0
	ldr r4, _0800BEB0  @ =0xFFFFFC00
	mov r10, r4
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldr r2, [sp, #12]
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r3, [sp, #12]
	strh r0, [r3]
	ldr r4, [sp, #8]
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
	ldr r0, _0800BEB4  @ =gUnknown_082EC2D8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800BEA0  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800BEA4  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800BEA8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldr r1, [sp, #40]
	ldrb r0, [r1]
	cmp r0, #6
	bhi _0800BEB8
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800BE8C  @ =gOamData
	add r2, r2, r3
	ldr r4, [sp, #28]
	ldr r1, [r4, #76]
	mov r0, r8
	and r1, r1, r0
	b _0800BECA
_0800BE80:
	.4byte 0x03001BA0
_0800BE84:
	.4byte gUnknown_03000A10
_0800BE88:
	.4byte 0x040000D4
_0800BE8C:
	.4byte gOamData
_0800BE90:
	.4byte gUnknown_085882C0
_0800BE94:
	.4byte 0x06010000
_0800BE98:
	.4byte 0x84000100
_0800BE9C:
	.4byte gUnknown_085882B8
_0800BEA0:
	.4byte 0x84000002
_0800BEA4:
	.4byte 0x000001FF
_0800BEA8:
	.4byte 0xFFFFFE00
_0800BEAC:
	.4byte 0x000003FF
_0800BEB0:
	.4byte 0xFFFFFC00
_0800BEB4:
	.4byte gUnknown_082EC2D8
_0800BEB8:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r1, _0800BED8  @ =gOamData
	add r2, r2, r1
	ldr r3, [sp, #28]
	ldr r1, [r3, #76]
	add r1, r1, #8
	mov r4, r8
	and r1, r1, r4
_0800BECA:
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	b _0800BF2C
	.byte 0x00
	.byte 0x00
_0800BED8:
	.4byte gOamData
_0800BEDC:
	ldr r0, _0800BF48  @ =gUnknown_082EC2D8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800BF4C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800BF50  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800BF54  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #36]
	ldr r1, [r0, #76]
	add r1, r1, #8
	ldr r2, _0800BF58  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800BF5C  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
_0800BF2C:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	neg r3, r3
	add r9, r9, r3
	mov r4, #1
	add r12, r12, r4
	ldr r0, _0800BF60  @ =0x03001BA0
	ldrb r0, [r0]
	cmp r12, r0
	bge _0800BF46
	b _0800BD82
_0800BF46:
	b _0800C06E
_0800BF48:
	.4byte gUnknown_082EC2D8
_0800BF4C:
	.4byte 0x84000002
_0800BF50:
	.4byte 0x000001FF
_0800BF54:
	.4byte 0xFFFFFE00
_0800BF58:
	.4byte 0x000003FF
_0800BF5C:
	.4byte 0xFFFFFC00
_0800BF60:
	.4byte 0x03001BA0
_0800BF64:
	mov r1, #0
	mov r12, r1
	add r0, r2, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	bge _0800BFF2
	ldr r5, _0800C218  @ =0x040000D4
	ldr r4, _0800C21C  @ =gOamData
	ldr r2, _0800C220  @ =0x000003FF
	mov r10, r2
	ldr r3, _0800C224  @ =gUnknown_082EC2D8
	mov r8, r3
	ldr r6, _0800C228  @ =0xFFFFFC00
_0800BF84:
	mov r0, r8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800C22C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0800C230  @ =0x000001FF
	add r0, r1, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800C234  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #76]
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	neg r1, r1
	add r9, r9, r1
	mov r2, #1
	add r12, r12, r2
	ldr r3, _0800C238  @ =0x030019AC
	ldr r0, [r3]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	blt _0800BF84
_0800BFF2:
	ldr r6, _0800C23C  @ =0x03001BA0
	ldrb r4, [r6]
	cmp r12, r4
	bge _0800C06E
	ldr r5, _0800C218  @ =0x040000D4
	ldr r4, _0800C21C  @ =gOamData
	ldr r0, _0800C228  @ =0xFFFFFC00
	mov r10, r0
	ldr r1, _0800C224  @ =gUnknown_082EC2D8
	mov r8, r1
_0800C006:
	mov r2, r8
	str r2, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800C22C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800C230  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800C234  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r2, [sp, #36]
	ldr r1, [r2, #76]
	add r1, r1, #8
	ldr r2, _0800C220  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	mov r0, r10
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	neg r3, r3
	add r9, r9, r3
	mov r0, #1
	add r12, r12, r0
	ldrb r1, [r6]
	cmp r12, r1
	blt _0800C006
_0800C06E:
	mov r2, #140
	mov r9, r2
	ldr r0, [sp, #36]
	add r0, r0, #98
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C07E
	b _0800C300
_0800C07E:
	mov r3, #0
	mov r12, r3
	ldr r6, _0800C240  @ =gUnknown_03001C78
	ldr r0, [r6]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	bge _0800C108
	ldr r5, _0800C218  @ =0x040000D4
	ldr r4, _0800C21C  @ =gOamData
	ldr r0, _0800C244  @ =gUnknown_082E8EA0
	mov r10, r0
	ldr r1, _0800C228  @ =0xFFFFFC00
	mov r8, r1
_0800C09E:
	mov r2, r10
	str r2, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800C22C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800C230  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800C234  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #80]
	ldr r0, _0800C220  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	mov r0, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	add r9, r9, r1
	mov r2, #1
	add r12, r12, r2
	ldr r0, [r6]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	blt _0800C09E
_0800C108:
	mov r3, r12
	cmp r3, #3
	ble _0800C110
	b _0800C402
_0800C110:
	ldr r4, _0800C248  @ =gUnknown_03000A10
	str r4, [sp, #32]
	ldr r5, _0800C218  @ =0x040000D4
	ldr r6, _0800C21C  @ =gOamData
_0800C118:
	ldr r0, [sp, #32]
	add r0, r0, #98
	ldrb r0, [r0]
	mov r1, r12
	asr r0, r0, r1
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0800C12C
	b _0800C280
_0800C12C:
	ldr r4, [sp, #36]
	add r4, r4, #111
	add r4, r4, r12
	str r4, [sp, #40]
	ldrb r0, [r4]
	lsl r0, r0, #10
	ldr r1, _0800C24C  @ =gUnknown_085882C0
	add r0, r0, r1
	str r0, [r5]
	ldr r2, [sp, #12]
	ldrh r0, [r2]
	ldr r1, _0800C250  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800C254  @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800C258  @ =gUnknown_085882B8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r3, _0800C22C  @ =0x84000002
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	sub r1, r1, #8
	ldr r4, _0800C230  @ =0x000001FF
	and r1, r1, r4
	ldrh r3, [r2, #2]
	ldr r0, _0800C234  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldr r1, [sp, #16]
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _0800C220  @ =0x000003FF
	mov r8, r4
	mov r0, r8
	and r1, r1, r0
	ldr r4, _0800C228  @ =0xFFFFFC00
	mov r10, r4
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldr r2, [sp, #12]
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r3, [sp, #12]
	strh r0, [r3]
	ldr r4, [sp, #8]
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
	ldr r0, _0800C244  @ =gUnknown_082E8EA0
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800C22C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800C230  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800C234  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldr r1, [sp, #40]
	ldrb r0, [r1]
	cmp r0, #6
	bhi _0800C25C
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800C21C  @ =gOamData
	add r2, r2, r3
	ldr r4, [sp, #32]
	ldr r1, [r4, #80]
	mov r0, r8
	and r1, r1, r0
	b _0800C26E
	.byte 0x00
	.byte 0x00
_0800C218:
	.4byte 0x040000D4
_0800C21C:
	.4byte gOamData
_0800C220:
	.4byte 0x000003FF
_0800C224:
	.4byte gUnknown_082EC2D8
_0800C228:
	.4byte 0xFFFFFC00
_0800C22C:
	.4byte 0x84000002
_0800C230:
	.4byte 0x000001FF
_0800C234:
	.4byte 0xFFFFFE00
_0800C238:
	.4byte 0x030019AC
_0800C23C:
	.4byte 0x03001BA0
_0800C240:
	.4byte gUnknown_03001C78
_0800C244:
	.4byte gUnknown_082E8EA0
_0800C248:
	.4byte gUnknown_03000A10
_0800C24C:
	.4byte gUnknown_085882C0
_0800C250:
	.4byte 0x06010000
_0800C254:
	.4byte 0x84000100
_0800C258:
	.4byte gUnknown_085882B8
_0800C25C:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r1, _0800C27C  @ =gOamData
	add r2, r2, r1
	ldr r3, [sp, #32]
	ldr r1, [r3, #80]
	add r1, r1, #8
	mov r4, r8
	and r1, r1, r4
_0800C26E:
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	b _0800C2D0
	.byte 0x00
	.byte 0x00
_0800C27C:
	.4byte gOamData
_0800C280:
	ldr r0, _0800C2E8  @ =gUnknown_082E8EA0
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800C2EC  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800C2F0  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800C2F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #36]
	ldr r1, [r0, #80]
	add r1, r1, #8
	ldr r2, _0800C2F8  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800C2FC  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
_0800C2D0:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	add r9, r9, r3
	mov r4, #1
	add r12, r12, r4
	mov r0, r12
	cmp r0, #3
	bgt _0800C2E6
	b _0800C118
_0800C2E6:
	b _0800C402
_0800C2E8:
	.4byte gUnknown_082E8EA0
_0800C2EC:
	.4byte 0x84000002
_0800C2F0:
	.4byte 0x000001FF
_0800C2F4:
	.4byte 0xFFFFFE00
_0800C2F8:
	.4byte 0x000003FF
_0800C2FC:
	.4byte 0xFFFFFC00
_0800C300:
	mov r1, #0
	mov r12, r1
	ldr r6, _0800C570  @ =gUnknown_03001C78
	ldr r0, [r6]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	bge _0800C38A
	ldr r5, _0800C574  @ =0x040000D4
	ldr r4, _0800C578  @ =gOamData
	ldr r2, _0800C57C  @ =gUnknown_082E8EA0
	mov r10, r2
	ldr r3, _0800C580  @ =0xFFFFFC00
	mov r8, r3
_0800C320:
	mov r0, r10
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800C584  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0800C588  @ =0x000001FF
	add r0, r1, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800C58C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #80]
	ldr r0, _0800C590  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	mov r0, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	add r9, r9, r1
	mov r2, #1
	add r12, r12, r2
	ldr r0, [r6]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	blt _0800C320
_0800C38A:
	mov r3, r12
	cmp r3, #3
	bgt _0800C402
	ldr r5, _0800C574  @ =0x040000D4
	ldr r4, _0800C578  @ =gOamData
	ldr r0, _0800C58C  @ =0xFFFFFE00
	mov r10, r0
	ldr r1, _0800C580  @ =0xFFFFFC00
	mov r8, r1
	ldr r6, _0800C57C  @ =gUnknown_082E8EA0
_0800C39E:
	str r6, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800C584  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800C588  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r2, [sp, #36]
	ldr r1, [r2, #80]
	add r1, r1, #8
	ldr r2, _0800C590  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	add r9, r9, r3
	mov r0, #1
	add r12, r12, r0
	mov r1, r12
	cmp r1, #3
	ble _0800C39E
_0800C402:
	mov r2, #13
	str r2, [sp, #16]
	ldr r1, _0800C574  @ =0x040000D4
	ldr r3, _0800C594  @ =gUnknown_082E92C0
	str r3, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0800C578  @ =gOamData
	add r0, r0, r4
	str r0, [r1, #4]
	ldr r0, _0800C584  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	mov r3, #104
	ldrh r2, [r1, #2]
	ldr r0, _0800C58C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldr r3, [sp, #36]
	ldr r2, [r3, #92]
	ldr r0, _0800C590  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800C580  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
_0800C452:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800C458:
	mov r4, #4
	str r4, [sp, #16]
	ldr r4, _0800C574  @ =0x040000D4
	ldr r0, _0800C598  @ =gUnknown_082F0BDC
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _0800C578  @ =gOamData
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0800C584  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	ldr r2, _0800C578  @ =gOamData
	add r1, r1, r2
	mov r3, #78
	ldrh r2, [r1, #2]
	ldr r6, _0800C58C  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800C578  @ =gOamData
	add r0, r0, r3
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r3
	ldr r3, [sp, #36]
	ldr r2, [r3, #36]
	ldr r0, _0800C590  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r5, _0800C580  @ =0xFFFFFC00
	add r0, r5, #0
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, [sp, #36]
	mov r10, r0
	mov r1, #0
	mov r8, r1
	mov r9, r4
	ldr r4, _0800C578  @ =gOamData
	mov r12, r6
	add r6, r5, #0
	mov r5, #96
_0800C4DA:
	ldr r2, _0800C59C  @ =gUnknown_082EC748
	mov r3, r9
	str r2, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _0800C584  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	mov r0, r8
	lsl r1, r0, #3
	mov r2, #150
	sub r1, r2, r1
	ldr r2, _0800C588  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	mov r0, r12
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r3, #1
	strb r3, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	mov r0, r10
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r2, _0800C5A0  @ =gUnknown_03001B30
	ldr r1, [r2, #4]
	add r1, r1, r0
	ldr r2, _0800C590  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r5
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	cmp r0, #5
	bls _0800C4DA
_0800C55E:
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
_0800C570:
	.4byte gUnknown_03001C78
_0800C574:
	.4byte 0x040000D4
_0800C578:
	.4byte gOamData
_0800C57C:
	.4byte gUnknown_082E8EA0
_0800C580:
	.4byte 0xFFFFFC00
_0800C584:
	.4byte 0x84000002
_0800C588:
	.4byte 0x000001FF
_0800C58C:
	.4byte 0xFFFFFE00
_0800C590:
	.4byte 0x000003FF
_0800C594:
	.4byte gUnknown_082E92C0
_0800C598:
	.4byte gUnknown_082F0BDC
_0800C59C:
	.4byte gUnknown_082EC748
_0800C5A0:
	.4byte gUnknown_03001B30
	THUMB_FUNC_END sub_0800A810

	THUMB_FUNC_START sub_0800C5A4
sub_0800C5A4: @ 0x0800C5A4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	mov r6, #0
	ldr r4, _0800C610  @ =gUnknown_03000A10
	add r0, r4, #0
	add r0, r0, #57
	mov r1, #1
	mov r5, #1
	strb r5, [r0]
	add r2, r4, #0
	add r2, r2, #53
	ldrb r0, [r2]
	eor r0, r0, r1
	strb r0, [r2]
	sub r2, r2, #4
	ldrb r0, [r2]
	add r0, r0, #1
	mov r1, #31
	and r0, r0, r1
	strb r0, [r2]
	ldr r2, _0800C614  @ =gUnknown_030012E0
	ldrh r1, [r2]
	mov r0, #10
	and r0, r0, r1
	mov r12, r2
	cmp r0, #0
	beq _0800C624
	ldr r2, _0800C618  @ =gUnknown_030019A0
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #23
	and r0, r0, r1
	cmp r0, #0
	beq _0800C624
	ldr r0, _0800C61C  @ =0x03000B78
	strb r6, [r0]
	ldr r0, _0800C620  @ =0xBFFFFFFF
	and r1, r1, r0
	str r1, [r2]
	bl sub_08040F9C
	add r0, r4, #0
	add r0, r0, #52
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C60C
	add r0, r4, #0
	add r0, r0, #182
	strb r5, [r0]
_0800C60C:
	mov r0, #2
	b _0800CAC0
_0800C610:
	.4byte gUnknown_03000A10
_0800C614:
	.4byte gUnknown_030012E0
_0800C618:
	.4byte gUnknown_030019A0
_0800C61C:
	.4byte 0x03000B78
_0800C620:
	.4byte 0xBFFFFFFF
_0800C624:
	mov r0, r12
	ldrh r2, [r0]
	mov r1, #192
	lsl r1, r1, #2
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, r1
	beq _0800C640
	ldr r0, _0800C6D0  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #23
	orr r1, r1, r2
	str r1, [r0]
_0800C640:
	ldr r4, _0800C6D4  @ =gUnknown_03000A10
	mov r1, #55
	add r1, r1, r4
	mov r8, r1
	mov r0, #0
	strb r0, [r1]
	ldr r2, _0800C6D8  @ =gCurrentLevelWidth
	mov r9, r2
	mov r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #240
	bgt _0800C65A
	b _0800C862
_0800C65A:
	ldr r0, _0800C6DC  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r3, #32
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0800C674
	mov r5, r12
	ldrh r2, [r5]
	add r0, r3, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0800C754
_0800C674:
	mov r0, #1
	orr r6, r6, r0
	add r0, r4, #0
	add r0, r0, #53
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C6FC
	ldr r5, _0800C6E0  @ =0x030008C8
	ldr r2, [r5]
	sub r0, r2, #1
	str r0, [r5]
	lsl r0, r0, #3
	add r1, r0, #0
	sub r1, r1, #120
	cmp r1, #0
	blt _0800C6A0
	ldr r0, _0800C6E4  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0800C6E8
_0800C6A0:
	mov r0, #254
	and r6, r6, r0
	str r2, [r5]
	mov r0, #4
	mov r7, r8
	strb r0, [r7]
	add r4, r4, #56
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800C6C8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0800C6C8:
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4]
	b _0800C862
_0800C6D0:
	.4byte gUnknown_030019A0
_0800C6D4:
	.4byte gUnknown_03000A10
_0800C6D8:
	.4byte gCurrentLevelWidth
_0800C6DC:
	.4byte gUnknown_030012E8
_0800C6E0:
	.4byte 0x030008C8
_0800C6E4:
	.4byte gUnknown_03000B80
_0800C6E8:
	lsl r0, r1, #17
	asr r0, r0, #16
	ldr r1, [r5, #4]
	lsl r1, r1, #20
	ldr r2, _0800C6F8  @ =0xFF600000
	add r1, r1, r2
	b _0800C7E4
	.byte 0x00
	.byte 0x00
_0800C6F8:
	.4byte 0xFF600000
_0800C6FC:
	ldr r1, _0800C74C  @ =0x030008C8
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
	lsl r0, r0, #3
	sub r0, r0, #120
	add r7, r1, #0
	cmp r0, #0
	blt _0800C71A
	ldr r0, _0800C750  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0800C746
_0800C71A:
	mov r0, #254
	and r6, r6, r0
	mov r0, #4
	mov r3, r8
	strb r0, [r3]
	add r4, r4, #56
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800C740
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0800C740:
	mov r5, r8
	ldrb r0, [r5]
	strb r0, [r4]
_0800C746:
	ldr r0, [r7]
	add r0, r0, #1
	b _0800C860
_0800C74C:
	.4byte 0x030008C8
_0800C750:
	.4byte gUnknown_03000B80
_0800C754:
	mov r3, #16
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0800C768
	add r0, r3, #0
	and r0, r0, r2
	cmp r0, #0
	bne _0800C768
	b _0800C862
_0800C768:
	mov r0, #1
	orr r6, r6, r0
	add r0, r4, #0
	add r0, r0, #53
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C80C
	ldr r5, _0800C7CC  @ =0x030008C8
	ldr r3, [r5]
	add r0, r3, #1
	str r0, [r5]
	lsl r2, r0, #3
	mov r7, #120
	add r7, r7, r2
	mov r12, r7
	mov r1, r9
	mov r7, #0
	ldrsh r0, [r1, r7]
	cmp r12, r0
	bgt _0800C79C
	ldr r0, _0800C7D0  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0800C7D4
_0800C79C:
	mov r0, #254
	and r6, r6, r0
	str r3, [r5]
	mov r0, #8
	mov r1, r8
	strb r0, [r1]
	add r4, r4, #56
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800C7C4
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0800C7C4:
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4]
	b _0800C862
_0800C7CC:
	.4byte 0x030008C8
_0800C7D0:
	.4byte gUnknown_03000B80
_0800C7D4:
	add r0, r2, #0
	sub r0, r0, #120
	lsl r0, r0, #17
	asr r0, r0, #16
	ldr r1, [r5, #4]
	lsl r1, r1, #20
	ldr r3, _0800C804  @ =0xFF600000
	add r1, r1, r3
_0800C7E4:
	asr r1, r1, #16
	bl sub_08033FAC
	ldr r0, _0800C808  @ =gCameraHorizontalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	add r0, r0, #120
	asr r0, r0, #3
	str r0, [r5]
	add r1, r4, #0
	add r1, r1, #52
	mov r0, #1
	strb r0, [r1]
	b _0800C862
	.byte 0x00
	.byte 0x00
_0800C804:
	.4byte 0xFF600000
_0800C808:
	.4byte gCameraHorizontalOffset
_0800C80C:
	ldr r0, _0800C8F4  @ =0x030008C8
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	lsl r1, r1, #3
	add r1, r1, #120
	mov r5, r9
	mov r7, #0
	ldrsh r2, [r5, r7]
	add r7, r0, #0
	cmp r1, r2
	bgt _0800C830
	ldr r0, _0800C8F8  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0800C85C
_0800C830:
	mov r0, #254
	and r6, r6, r0
	mov r0, #8
	mov r1, r8
	strb r0, [r1]
	add r4, r4, #56
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800C856
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0800C856:
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4]
_0800C85C:
	ldr r0, [r7]
	sub r0, r0, #1
_0800C860:
	str r0, [r7]
_0800C862:
	ldr r3, _0800C8FC  @ =gCurrentLevelHeight
	mov r9, r3
	mov r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #160
	bgt _0800C870
	b _0800CA66
_0800C870:
	ldr r0, _0800C8F8  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0800C87E
	b _0800CA66
_0800C87E:
	ldr r0, _0800C900  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r3, #64
	add r0, r3, #0
	and r0, r0, r2
	cmp r0, #0
	bne _0800C898
	ldr r0, _0800C904  @ =gUnknown_030012E0
	ldrh r1, [r0]
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0800C974
_0800C898:
	mov r0, #2
	orr r6, r6, r0
	lsl r0, r6, #24
	lsr r6, r0, #24
	ldr r4, _0800C908  @ =gUnknown_03000A10
	add r0, r4, #0
	add r0, r0, #53
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C928
	ldr r2, _0800C8F4  @ =0x030008C8
	ldr r3, [r2, #4]
	sub r0, r3, #1
	str r0, [r2, #4]
	lsl r0, r0, #3
	add r1, r0, #0
	sub r1, r1, #80
	cmp r1, #0
	bge _0800C90C
	mov r0, #253
	and r6, r6, r0
	str r3, [r2, #4]
	mov r0, #1
	add r5, r4, #0
	add r5, r5, #55
	ldrb r1, [r5]
	orr r0, r0, r1
	strb r0, [r5]
	add r4, r4, #56
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800C8EC
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0800C8EC:
	ldrb r0, [r5]
	strb r0, [r4]
	b _0800CA66
	.byte 0x00
	.byte 0x00
_0800C8F4:
	.4byte 0x030008C8
_0800C8F8:
	.4byte gUnknown_03000B80
_0800C8FC:
	.4byte gCurrentLevelHeight
_0800C900:
	.4byte gUnknown_030012E8
_0800C904:
	.4byte gUnknown_030012E0
_0800C908:
	.4byte gUnknown_03000A10
_0800C90C:
	ldr r0, [r2]
	lsl r0, r0, #20
	ldr r5, _0800C924  @ =0xFF100000
	add r0, r0, r5
	asr r0, r0, #16
	lsl r1, r1, #17
	asr r1, r1, #16
	bl sub_08033FAC
	add r1, r4, #0
	b _0800CA0C
	.byte 0x00
	.byte 0x00
_0800C924:
	.4byte 0xFF100000
_0800C928:
	ldr r1, _0800C970  @ =0x030008C8
	ldr r0, [r1, #4]
	sub r0, r0, #1
	str r0, [r1, #4]
	lsl r0, r0, #3
	sub r0, r0, #80
	add r7, r1, #0
	cmp r0, #0
	bge _0800C96A
	mov r0, #253
	and r6, r6, r0
	mov r0, #1
	add r5, r4, #0
	add r5, r5, #55
	ldrb r1, [r5]
	orr r0, r0, r1
	strb r0, [r5]
	add r4, r4, #56
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800C966
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0800C966:
	ldrb r0, [r5]
	strb r0, [r4]
_0800C96A:
	ldr r0, [r7, #4]
	add r0, r0, #1
	b _0800CA64
_0800C970:
	.4byte 0x030008C8
_0800C974:
	mov r7, #128
	mov r8, r7
	mov r0, r8
	and r0, r0, r2
	cmp r0, #0
	bne _0800C988
	mov r0, r8
	and r0, r0, r1
	cmp r0, #0
	beq _0800CA66
_0800C988:
	mov r0, #2
	orr r6, r6, r0
	lsl r0, r6, #24
	lsr r6, r0, #24
	ldr r5, _0800C9EC  @ =gUnknown_03000A10
	add r0, r5, #0
	add r0, r0, #53
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800CA18
	ldr r2, _0800C9F0  @ =0x030008C8
	ldr r4, [r2, #4]
	add r0, r4, #1
	str r0, [r2, #4]
	lsl r3, r0, #3
	mov r0, #80
	add r0, r0, r3
	mov r12, r0
	mov r1, r9
	mov r7, #0
	ldrsh r0, [r1, r7]
	cmp r12, r0
	ble _0800C9F4
	mov r0, #253
	and r6, r6, r0
	str r4, [r2, #4]
	mov r0, #2
	add r4, r5, #0
	add r4, r4, #55
	ldrb r1, [r4]
	orr r0, r0, r1
	strb r0, [r4]
	add r5, r5, #56
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800C9E4
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0800C9E4:
	ldrb r0, [r4]
	strb r0, [r5]
	b _0800CA66
	.byte 0x00
	.byte 0x00
_0800C9EC:
	.4byte gUnknown_03000A10
_0800C9F0:
	.4byte 0x030008C8
_0800C9F4:
	ldr r0, [r2]
	lsl r0, r0, #20
	ldr r2, _0800CA14  @ =0xFF100000
	add r0, r0, r2
	asr r0, r0, #16
	add r1, r3, #0
	sub r1, r1, #80
	lsl r1, r1, #17
	asr r1, r1, #16
	bl sub_08033FAC
	add r1, r5, #0
_0800CA0C:
	add r1, r1, #52
	mov r0, #1
	strb r0, [r1]
	b _0800CA66
_0800CA14:
	.4byte 0xFF100000
_0800CA18:
	ldr r0, _0800CA90  @ =0x030008C8
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	lsl r1, r1, #3
	add r1, r1, #80
	mov r3, r9
	mov r4, #0
	ldrsh r2, [r3, r4]
	add r7, r0, #0
	cmp r1, r2
	ble _0800CA60
	mov r0, #253
	and r6, r6, r0
	mov r0, #2
	add r4, r5, #0
	add r4, r4, #55
	ldrb r1, [r4]
	orr r0, r0, r1
	strb r0, [r4]
	add r5, r5, #56
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800CA5C
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0800CA5C:
	ldrb r0, [r4]
	strb r0, [r5]
_0800CA60:
	ldr r0, [r7, #4]
	sub r0, r0, #1
_0800CA64:
	str r0, [r7, #4]
_0800CA66:
	cmp r6, #0
	beq _0800CA98
	ldr r0, _0800CA94  @ =gUnknown_03000A10
	add r4, r0, #0
	add r4, r4, #54
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800CAAC
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #64
	mov r1, #12
	mov r2, #1
	mov r3, #64
	bl sub_08071990
	mov r0, #1
	strb r0, [r4]
	b _0800CAAC
_0800CA90:
	.4byte 0x030008C8
_0800CA94:
	.4byte gUnknown_03000A10
_0800CA98:
	ldr r0, _0800CAD0  @ =gUnknown_03000A10
	add r4, r0, #0
	add r4, r4, #54
	ldrb r0, [r4]
	cmp r0, #1
	bne _0800CAAA
	mov r0, #64
	bl sub_08071E14
_0800CAAA:
	strb r6, [r4]
_0800CAAC:
	ldr r0, _0800CAD0  @ =gUnknown_03000A10
	add r2, r0, #0
	add r2, r2, #55
	ldrb r1, [r2]
	cmp r1, #0
	bne _0800CABE
	strb r1, [r2]
	add r0, r0, #56
	strb r1, [r0]
_0800CABE:
	mov r0, #1
_0800CAC0:
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0800CAD0:
	.4byte gUnknown_03000A10
	THUMB_FUNC_END sub_0800C5A4

	THUMB_FUNC_START sub_0800CAD4
sub_0800CAD4: @ 0x0800CAD4
	push {r4-r7,lr}
	add r7, r0, #0
	ldr r4, _0800CB68  @ =gUnknown_03000A10
	add r0, r4, #0
	add r0, r0, #68
	ldrb r0, [r0]
	cmp r0, #5
	bne _0800CB90
	ldr r2, [r4, #60]
	ldr r0, _0800CB6C  @ =gSpriteHorizontalOffset
	ldrh r0, [r0]
	sub r2, r2, r0
	ldr r0, [r4, #64]
	ldr r1, _0800CB70  @ =gUnknown_030012F4
	ldrh r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r6, r0, #16
	lsl r2, r2, #16
	asr r3, r2, #16
	mov r0, #128
	lsl r0, r0, #14
	add r2, r2, r0
	ldr r0, _0800CB74  @ =0x010F0000
	cmp r2, r0
	bls _0800CB0A
	b _0800CC3C
_0800CB0A:
	lsl r0, r6, #16
	asr r1, r0, #16
	add r0, r1, #0
	add r0, r0, #32
	cmp r0, #0
	bge _0800CB18
	b _0800CC3C
_0800CB18:
	cmp r1, #159
	ble _0800CB1E
	b _0800CC3C
_0800CB1E:
	ldr r1, _0800CB78  @ =0x040000D4
	ldr r0, _0800CB7C  @ =gUnknown_0851400C
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0800CB80  @ =gOamData
	add r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _0800CB84  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, _0800CB88  @ =0x000001FF
	add r0, r2, #0
	and r3, r3, r0
	ldrh r2, [r1, #2]
	ldr r0, _0800CB8C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	strb r6, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #144
	orr r0, r0, r1
	strb r0, [r2, #5]
	b _0800CBFC
	.byte 0x00
	.byte 0x00
_0800CB68:
	.4byte gUnknown_03000A10
_0800CB6C:
	.4byte gSpriteHorizontalOffset
_0800CB70:
	.4byte gUnknown_030012F4
_0800CB74:
	.4byte 0x010F0000
_0800CB78:
	.4byte 0x040000D4
_0800CB7C:
	.4byte gUnknown_0851400C
_0800CB80:
	.4byte gOamData
_0800CB84:
	.4byte 0x84000002
_0800CB88:
	.4byte 0x000001FF
_0800CB8C:
	.4byte 0xFFFFFE00
_0800CB90:
	cmp r0, #18
	bne _0800CC3C
	ldr r1, [r4, #60]
	ldr r0, _0800CC44  @ =gSpriteHorizontalOffset
	ldrh r0, [r0]
	sub r1, r1, r0
	ldr r0, [r4, #64]
	ldr r2, _0800CC48  @ =gUnknown_030012F4
	ldrh r2, [r2]
	sub r0, r0, r2
	lsl r0, r0, #16
	lsr r6, r0, #16
	lsl r1, r1, #16
	asr r3, r1, #16
	mov r0, #128
	lsl r0, r0, #13
	add r1, r1, r0
	lsr r1, r1, #16
	cmp r1, #255
	bhi _0800CC3C
	lsl r0, r6, #16
	asr r1, r0, #16
	add r0, r1, #0
	add r0, r0, #16
	cmp r0, #0
	blt _0800CC3C
	cmp r1, #159
	bgt _0800CC3C
	ldr r1, _0800CC4C  @ =0x040000D4
	ldr r0, _0800CC50  @ =gUnknown_082F8F04
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0800CC54  @ =gOamData
	add r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _0800CC58  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, _0800CC5C  @ =0x000001FF
	add r0, r2, #0
	and r3, r3, r0
	ldrh r2, [r1, #2]
	ldr r0, _0800CC60  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	strb r6, [r0]
_0800CBFC:
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r3, #13
	neg r3, r3
	add r0, r3, #0
	and r0, r0, r2
	mov r6, #4
	orr r0, r0, r6
	strb r0, [r1, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r4, #72]
	ldr r0, _0800CC64  @ =0x000003FF
	and r2, r2, r0
	ldrh r4, [r1, #4]
	ldr r0, _0800CC68  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrb r1, [r0, #1]
	and r3, r3, r1
	orr r3, r3, r6
	strb r3, [r0, #1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800CC3C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800CC44:
	.4byte gSpriteHorizontalOffset
_0800CC48:
	.4byte gUnknown_030012F4
_0800CC4C:
	.4byte 0x040000D4
_0800CC50:
	.4byte gUnknown_082F8F04
_0800CC54:
	.4byte gOamData
_0800CC58:
	.4byte 0x84000002
_0800CC5C:
	.4byte 0x000001FF
_0800CC60:
	.4byte 0xFFFFFE00
_0800CC64:
	.4byte 0x000003FF
_0800CC68:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0800CAD4

	THUMB_FUNC_START sub_0800CC6C
sub_0800CC6C: @ 0x0800CC6C
	push {r4-r6,lr}
	ldr r0, _0800CCDC  @ =gLivesCount
	ldrb r5, [r0]
	ldr r0, _0800CCE0  @ =gNextLevelID
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, _0800CCE4  @ =gUnknown_03000B80
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r3, r0, #0
	cmp r1, #0
	bne _0800CC94
	asr r2, r2, #1
	ldr r0, _0800CCE8  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0800CC94
	mov r2, #7
_0800CC94:
	mov r0, #0
	ldrsb r0, [r3, r0]
	ldr r1, _0800CCEC  @ =gAfterTutorialWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_0800FCE4
	cmp r0, #0
	beq _0800CD00
	ldr r0, _0800CCF0  @ =gUnknown_03000A10
	ldr r1, _0800CCF4  @ =0x00000123
	add r4, r0, r1
	ldr r2, _0800CCF8  @ =gUnknown_082F0364
	add r1, r1, #1
	add r3, r0, r1
	ldrb r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r4]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bcc _0800CCFC
	mov r1, #0
	strb r1, [r4]
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _0800CD00
	strb r1, [r3]
	b _0800CD00
_0800CCDC:
	.4byte gLivesCount
_0800CCE0:
	.4byte gNextLevelID
_0800CCE4:
	.4byte gUnknown_03000B80
_0800CCE8:
	.4byte gNextLevelInLevelTable
_0800CCEC:
	.4byte gAfterTutorialWorld
_0800CCF0:
	.4byte gUnknown_03000A10
_0800CCF4:
	.4byte 0x00000123
_0800CCF8:
	.4byte gUnknown_082F0364
_0800CCFC:
	add r0, r1, #1
	strb r0, [r4]
_0800CD00:
	ldr r1, _0800CD5C  @ =gUnknown_03000A10
	mov r2, #123
	add r2, r2, r1
	mov r12, r2
	ldrb r0, [r2]
	add r3, r1, #0
	cmp r0, #0
	beq _0800CD7C
	lsl r1, r5, #24
	asr r1, r1, #24
	ldr r0, _0800CD60  @ =0x0000199A
	mul r0, r1, r0
	asr r4, r0, #16
	mov r6, #0
	strb r4, [r3, #13]
	ldrb r2, [r3, #13]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #1
	sub r1, r1, r0
	strb r1, [r3, #12]
	lsl r1, r1, #24
	lsr r1, r1, #24
	cmp r1, #9
	bls _0800CD36
	mov r0, #9
	strb r0, [r3, #12]
_0800CD36:
	strb r4, [r3, #13]
	add r4, r3, #0
	add r4, r4, #125
	ldr r1, _0800CD64  @ =gUnknown_08587E38
	add r5, r3, #0
	add r5, r5, #124
	ldrb r2, [r5]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r1, [r4]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bcs _0800CD68
	add r0, r1, #2
	strb r0, [r4]
	b _0800CD7C
	.byte 0x00
	.byte 0x00
_0800CD5C:
	.4byte gUnknown_03000A10
_0800CD60:
	.4byte 0x0000199A
_0800CD64:
	.4byte gUnknown_08587E38
_0800CD68:
	add r0, r2, #1
	strb r0, [r5]
	strb r6, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #31
	bls _0800CD7C
	strb r6, [r5]
	mov r0, r12
	strb r6, [r0]
_0800CD7C:
	mov r1, #145
	lsl r1, r1, #1
	add r0, r3, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne _0800CDC2
	mov r2, #144
	lsl r2, r2, #1
	add r5, r3, r2
	ldr r1, _0800CDB4  @ =gUnknown_082EE214
	ldr r0, _0800CDB8  @ =0x00000121
	add r0, r0, r3
	mov r12, r0
	ldrb r2, [r0]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r1, [r5]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _0800CE38
	cmp r2, #0
	bne _0800CDBC
	add r0, r2, #1
	mov r1, r12
	strb r0, [r1]
	b _0800CE2C
_0800CDB4:
	.4byte gUnknown_082EE214
_0800CDB8:
	.4byte 0x00000121
_0800CDBC:
	mov r2, r12
	strb r4, [r2]
	b _0800CE2C
_0800CDC2:
	cmp r4, #1
	bne _0800CDF4
	mov r1, #144
	lsl r1, r1, #1
	add r5, r3, r1
	ldr r1, _0800CDEC  @ =gUnknown_082EF144
	ldr r2, _0800CDF0  @ =0x00000121
	add r4, r3, r2
	ldrb r2, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r1, [r5]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _0800CE38
	cmp r2, #0
	bne _0800CE28
	add r0, r2, #1
	b _0800CE2A
_0800CDEC:
	.4byte gUnknown_082EF144
_0800CDF0:
	.4byte 0x00000121
_0800CDF4:
	cmp r4, #2
	bne _0800CE3C
	mov r1, #144
	lsl r1, r1, #1
	add r5, r3, r1
	ldr r1, _0800CE20  @ =gUnknown_082EEEF4
	ldr r2, _0800CE24  @ =0x00000121
	add r4, r3, r2
	ldrb r2, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r1, [r5]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _0800CE38
	cmp r2, #0
	bne _0800CE28
	add r0, r2, #1
	b _0800CE2A
	.byte 0x00
	.byte 0x00
_0800CE20:
	.4byte gUnknown_082EEEF4
_0800CE24:
	.4byte 0x00000121
_0800CE28:
	mov r0, #0
_0800CE2A:
	strb r0, [r4]
_0800CE2C:
	mov r0, #144
	lsl r0, r0, #1
	add r1, r3, r0
	mov r0, #0
	strb r0, [r1]
	b _0800CE3C
_0800CE38:
	add r0, r1, #1
	strb r0, [r5]
_0800CE3C:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800CC6C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800CE44
sub_0800CE44: @ 0x0800CE44
	push {r4-r7,lr}
	sub sp, sp, #4
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	ldr r1, _0800CF14  @ =gUnknown_03000A10
	add r0, r1, #0
	add r0, r0, #123
	ldrb r0, [r0]
	mov r12, r1
	cmp r0, #0
	beq _0800CEEA
	mov r0, r12
	add r0, r0, #214
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800CEEA
	ldr r2, _0800CF18  @ =0x040000D4
	mov r0, r12
	add r0, r0, #124
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0800CF1C  @ =gUnknown_085882C0
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0800CF20  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0800CF24  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0800CF28  @ =gUnknown_085882B8
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0800CF2C  @ =gOamData
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0800CF30  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	mov r3, #20
	ldrh r2, [r1, #2]
	ldr r0, _0800CF34  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r1, _0800CF38  @ =0x0000FFFC
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r4, _0800CF3C  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _0800CF40  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r4, [r6]
	add r0, r0, r4
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #32
	strh r0, [r7]
_0800CEEA:
	mov r0, r12
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CEFE
	mov r0, r12
	add r0, r0, #214
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800CF0C
_0800CEFE:
	str r6, [sp]
	mov r0, #8
	mov r1, #0
	add r2, r5, #0
	add r3, r7, #0
	bl sub_0800A2B8
_0800CF0C:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_0800CF14:
	.4byte gUnknown_03000A10
_0800CF18:
	.4byte 0x040000D4
_0800CF1C:
	.4byte gUnknown_085882C0
_0800CF20:
	.4byte 0x06010000
_0800CF24:
	.4byte 0x84000100
_0800CF28:
	.4byte gUnknown_085882B8
_0800CF2C:
	.4byte gOamData
_0800CF30:
	.4byte 0x84000002
_0800CF34:
	.4byte 0xFFFFFE00
_0800CF38:
	.4byte 0x0000FFFC
_0800CF3C:
	.4byte 0x000003FF
_0800CF40:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0800CE44

	THUMB_FUNC_START sub_0800CF44
sub_0800CF44: @ 0x0800CF44
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #148
	add r7, r0, #0
	str r1, [sp]
	mov r9, r2
	ldr r0, _0800D32C  @ =gUnknown_03000A10
	add r0, r0, #214
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CF64
	bl _0800ECCC
_0800CF64:
	ldr r0, _0800D330  @ =gNextLevelID
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, _0800D334  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0800CF86
	asr r2, r2, #1
	ldr r0, _0800D338  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0800CF86
	mov r2, #7
_0800CF86:
	ldr r1, _0800D334  @ =gUnknown_03000B80
	mov r0, #0
	ldrsb r0, [r1, r0]
	ldr r1, _0800D33C  @ =gAfterTutorialWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_0800FCE4
	mov r1, #72
	lsl r1, r1, #16
	str r1, [sp, #128]
	cmp r0, #0
	beq _0800D042
	ldr r2, [sp]
	ldrh r0, [r2]
	sub r0, r0, #4
	strh r0, [r2]
	mov r3, r9
	ldrh r0, [r3]
	sub r0, r0, #128
	strh r0, [r3]
	ldr r2, _0800D340  @ =0x040000D4
	ldr r0, _0800D32C  @ =gUnknown_03000A10
	mov r4, #146
	lsl r4, r4, #1
	add r0, r0, r4
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0800D344  @ =gUnknown_082F0444
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r3]
	ldr r1, _0800D348  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0800D34C  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0800D350  @ =gUnknown_082F043C
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0800D354  @ =gOamData
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0800D358  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r5, [sp, #128]
	asr r1, r5, #16
	add r1, r1, #77
	ldrh r3, [r2, #2]
	ldr r0, _0800D35C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, #48
	add r1, r1, #6
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r5, _0800D360  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _0800D364  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800D042:
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, _0800D340  @ =0x040000D4
	mov r8, r1
	ldr r2, _0800D368  @ =gUnknown_082F0768
	str r2, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r6, _0800D354  @ =gOamData
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r3, _0800D358  @ =0x84000002
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r4, [sp, #128]
	asr r4, r4, #16
	str r4, [sp, #12]
	ldrh r2, [r1, #2]
	ldr r0, _0800D35C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r5, #48
	strb r5, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldr r0, _0800D32C  @ =gUnknown_03000A10
	str r0, [sp, #16]
	add r0, r0, #236
	ldr r1, [r0]
	ldr r3, _0800D360  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	ldr r4, _0800D364  @ =0xFFFFFC00
	add r0, r4, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r3, #15
	add r0, r3, #0
	and r0, r0, r2
	mov r5, #96
	orr r0, r0, r5
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _0800D36C  @ =gUnknown_082F07B4
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r2, _0800D358  @ =0x84000002
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r5, [sp, #12]
	add r5, r5, #8
	ldrh r2, [r1, #2]
	ldr r0, _0800D35C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r5
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, #48
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r0, [sp, #16]
	add r0, r0, #240
	ldr r0, [r0]
	ldr r2, _0800D360  @ =0x000003FF
	and r0, r0, r2
	ldrh r2, [r1, #4]
	and r4, r4, r2
	orr r4, r4, r0
	strh r4, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrb r1, [r0, #5]
	and r3, r3, r1
	mov r4, #96
	orr r3, r3, r4
	strb r3, [r0, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, #16
	mov r5, #0
	mov r10, r5
	ldr r0, [sp, #16]
	str r0, [sp, #112]
	mov r12, r6
	mov r1, #48
	add r1, r1, #8
	str r1, [sp, #116]
	mov r2, #48
	add r2, r2, #16
	str r2, [sp, #120]
	mov r3, #48
	add r3, r3, #24
	str r3, [sp, #124]
	mov r5, #48
	add r5, r5, #32
	str r5, [sp, #132]
	mov r0, #48
	add r0, r0, #40
	str r0, [sp, #136]
	mov r1, #48
	add r1, r1, #56
	str r1, [sp, #144]
	mov r2, #48
	add r2, r2, #48
	str r2, [sp, #140]
	mov r6, r8
	mov r5, r12
	ldr r3, [sp, #12]
	mov r8, r3
_0800D154:
	ldr r0, _0800D370  @ =gUnknown_082F0800
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r6, #4]
	ldr r1, _0800D358  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r5
	lsl r4, r4, #16
	asr r4, r4, #16
	mov r2, r8
	add r1, r4, r2
	ldr r0, _0800D374  @ =0x000001FF
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800D35C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r1, [sp, #4]
	add r1, r1, #48
	str r1, [sp, #24]
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r3, _0800D378  @ =0x03000B04
	ldr r2, [r3]
	ldr r0, _0800D360  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800D364  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	add r4, r4, #8
	lsl r4, r4, #16
	lsr r4, r4, #16
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r10, r0
	cmp r0, #7
	bls _0800D154
	ldr r3, _0800D37C  @ =gUnknown_082F084C
	ldr r5, _0800D340  @ =0x040000D4
	str r3, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r0, _0800D358  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	lsl r4, r4, #16
	asr r4, r4, #16
	ldr r1, [sp, #128]
	asr r1, r1, #16
	mov r8, r1
	add r1, r4, r1
	ldr r3, _0800D374  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r6, _0800D35C  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r5, sp
	ldrb r5, [r5, #24]
	strb r5, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r0, [sp, #112]
	add r0, r0, #248
	ldr r1, [r0]
	ldr r0, _0800D360  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800D364  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	add r4, r4, #8
	ldr r3, _0800D368  @ =gUnknown_082F0768
	ldr r5, _0800D340  @ =0x040000D4
	str r3, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r0, _0800D358  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	lsl r4, r4, #16
	asr r4, r4, #16
	add r4, r4, r8
	ldr r2, _0800D374  @ =0x000001FF
	and r4, r4, r2
	ldrh r2, [r1, #2]
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r3, sp
	ldrb r3, [r3, #24]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r0, [sp, #112]
	add r0, r0, #236
	ldr r1, [r0]
	ldr r4, _0800D360  @ =0x000003FF
	and r1, r1, r4
	ldrh r3, [r2, #4]
	ldr r0, _0800D364  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r5, #96
	orr r0, r0, r5
	strb r0, [r1, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r0, #8
	str r0, [sp, #4]
	mov r1, #0
	mov r10, r1
	ldr r2, _0800D340  @ =0x040000D4
	mov r8, r2
	mov r5, r12
_0800D2D2:
	ldr r3, _0800D380  @ =gUnknown_082EFCB4
	mov r4, r8
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0800D358  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r5
	ldr r1, [sp, #128]
	asr r1, r1, #16
	str r1, [sp, #28]
	add r4, r1, #0
	add r4, r4, #0
	add r1, r4, #0
	ldr r2, _0800D374  @ =0x000001FF
	and r1, r1, r2
	ldrh r2, [r3, #2]
	ldr r0, _0800D35C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r6, [sp, #4]
	add r6, r6, #48
	strb r6, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r3, _0800D384  @ =0x03000AF8
	ldr r1, [r3]
	ldr r0, _0800D360  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800D364  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	b _0800D388
_0800D32C:
	.4byte gUnknown_03000A10
_0800D330:
	.4byte gNextLevelID
_0800D334:
	.4byte gUnknown_03000B80
_0800D338:
	.4byte gNextLevelInLevelTable
_0800D33C:
	.4byte gAfterTutorialWorld
_0800D340:
	.4byte 0x040000D4
_0800D344:
	.4byte gUnknown_082F0444
_0800D348:
	.4byte 0x06010000
_0800D34C:
	.4byte 0x84000020
_0800D350:
	.4byte gUnknown_082F043C
_0800D354:
	.4byte gOamData
_0800D358:
	.4byte 0x84000002
_0800D35C:
	.4byte 0xFFFFFE00
_0800D360:
	.4byte 0x000003FF
_0800D364:
	.4byte 0xFFFFFC00
_0800D368:
	.4byte gUnknown_082F0768
_0800D36C:
	.4byte gUnknown_082F07B4
_0800D370:
	.4byte gUnknown_082F0800
_0800D374:
	.4byte 0x000001FF
_0800D378:
	.4byte 0x03000B04
_0800D37C:
	.4byte gUnknown_082F084C
_0800D380:
	.4byte gUnknown_082EFCB4
_0800D384:
	.4byte 0x03000AF8
_0800D388:
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800D614  @ =gUnknown_082EFCB4
	mov r0, r8
	str r3, [r0]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r8
	str r0, [r1, #4]
	ldr r2, _0800D618  @ =0x84000002
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	add r4, r4, #88
	ldr r3, _0800D61C  @ =0x000001FF
	and r4, r4, r3
	ldrh r2, [r1, #2]
	ldr r0, _0800D620  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	strb r6, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r4, _0800D624  @ =0x03000AF8
	ldr r1, [r4]
	ldr r0, _0800D628  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800D62C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r0, [r2, #3]
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r2, #3]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, [sp, #4]
	lsl r0, r3, #16
	mov r4, #128
	lsl r4, r4, #12
	add r0, r0, r4
	lsr r0, r0, #16
	str r0, [sp, #4]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r10, r0
	cmp r0, #5
	bhi _0800D430
	b _0800D2D2
_0800D430:
	mov r5, #8
	str r5, [sp, #4]
	ldr r5, _0800D630  @ =0x040000D4
	ldr r0, _0800D634  @ =gUnknown_082EFDAC
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r1, _0800D618  @ =0x84000002
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r3, [sp, #28]
	add r3, r3, #8
	ldrh r2, [r1, #2]
	ldr r0, _0800D620  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r2, sp, #116
	ldrb r2, [r2]
	strb r2, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r0, [sp, #112]
	add r0, r0, #252
	ldr r2, [r0]
	ldr r3, _0800D628  @ =0x000003FF
	mov r10, r3
	and r2, r2, r3
	ldrh r3, [r1, #4]
	ldr r0, _0800D62C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r4, #15
	mov r8, r4
	mov r0, r8
	and r0, r0, r2
	mov r6, #96
	orr r0, r0, r6
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _0800D638  @ =gUnknown_082F0944
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r1, _0800D618  @ =0x84000002
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #28]
	add r2, r2, #16
	ldrh r3, [r1, #2]
	ldr r0, _0800D620  @ =0xFFFFFE00
	and r0, r0, r3
	orr r2, r2, r0
	strh r2, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r2, sp, #116
	ldrb r2, [r2]
	strb r2, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, [sp, #112]
	mov r4, #142
	lsl r4, r4, #1
	add r0, r3, r4
	ldr r1, [r0]
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800D62C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r6
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _0800D63C  @ =gUnknown_082EFBFC
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r2, _0800D618  @ =0x84000002
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	add r4, r4, #227
	mov r3, sp
	strh r4, [r3, #32]
	ldr r3, [sp, #28]
	add r3, r3, #24
	ldrh r2, [r1, #2]
	ldr r0, _0800D620  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #116
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, [sp, #112]
	sub r4, r4, #239
	add r0, r3, r4
	ldr r1, [r0]
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800D62C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r6
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, #72
	ldr r1, _0800D640  @ =gUnknown_03000B80
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0800D658
	ldr r0, _0800D644  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0800D658
	ldr r2, [sp]
	ldrh r0, [r2]
	sub r0, r0, #1
	strh r0, [r2]
	mov r3, r9
	ldrh r0, [r3]
	sub r0, r0, #32
	strh r0, [r3]
	ldr r0, _0800D648  @ =gUnknown_082EFF2C
	str r0, [r5]
	ldrh r0, [r3]
	ldr r1, _0800D64C  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800D650  @ =0x84000008
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800D654  @ =gUnknown_082EFF24
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r4, _0800D618  @ =0x84000002
	str r4, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r1, [sp, #28]
	add r1, r1, #72
	mov r5, sp
	ldrh r5, [r5, #32]
	and r1, r1, r5
	ldrh r3, [r2, #2]
	ldr r0, _0800D620  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #116
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r4, [sp]
	ldrh r4, [r4]
	add r0, r0, r4
	mov r5, r10
	and r0, r0, r5
	ldr r1, _0800D62C  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r6
	strb r0, [r1, #5]
	b _0800D6C8
	.byte 0x00
	.byte 0x00
_0800D614:
	.4byte gUnknown_082EFCB4
_0800D618:
	.4byte 0x84000002
_0800D61C:
	.4byte 0x000001FF
_0800D620:
	.4byte 0xFFFFFE00
_0800D624:
	.4byte 0x03000AF8
_0800D628:
	.4byte 0x000003FF
_0800D62C:
	.4byte 0xFFFFFC00
_0800D630:
	.4byte 0x040000D4
_0800D634:
	.4byte gUnknown_082EFDAC
_0800D638:
	.4byte gUnknown_082F0944
_0800D63C:
	.4byte gUnknown_082EFBFC
_0800D640:
	.4byte gUnknown_03000B80
_0800D644:
	.4byte gNextLevelInLevelTable
_0800D648:
	.4byte gUnknown_082EFF2C
_0800D64C:
	.4byte 0x06010000
_0800D650:
	.4byte 0x84000008
_0800D654:
	.4byte gUnknown_082EFF24
_0800D658:
	ldr r1, _0800DA44  @ =0x040000D4
	ldr r0, _0800DA48  @ =gUnknown_082F0944
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r1, #4]
	ldr r0, _0800DA4C  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	lsl r1, r4, #16
	asr r1, r1, #16
	ldr r3, [sp, #128]
	asr r0, r3, #16
	add r1, r1, r0
	ldr r4, _0800DA50  @ =0x000001FF
	add r0, r4, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldr r1, [sp, #4]
	add r1, r1, #48
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, [sp, #112]
	mov r1, #142
	lsl r1, r1, #1
	add r0, r5, r1
	ldr r1, [r0]
	ldr r0, _0800DA58  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800DA5C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
_0800D6C8:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r4, _0800DA44  @ =0x040000D4
	ldr r2, _0800DA60  @ =gUnknown_082EFDF8
	str r2, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r3, _0800DA4C  @ =0x84000002
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r5, [sp, #128]
	asr r5, r5, #16
	str r5, [sp, #36]
	add r5, r5, #80
	str r5, [sp, #40]
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r5
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldr r1, [sp, #4]
	add r1, r1, #48
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #112]
	mov r3, #128
	lsl r3, r3, #1
	add r0, r2, r3
	ldr r2, [r0]
	ldr r5, _0800DA58  @ =0x000003FF
	and r2, r2, r5
	ldrh r3, [r1, #4]
	ldr r6, _0800DA5C  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	mov r8, r2
	mov r3, r8
	orr r0, r0, r3
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, _0800DA64  @ =gUnknown_082EE18C
	str r5, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r0, _0800DA4C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #36]
	add r2, r2, #8
	str r2, [sp, #44]
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r3, [sp, #44]
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r5, sp, #120
	ldrb r5, [r5]
	strb r5, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r1, [sp, #112]
	mov r3, #134
	lsl r3, r3, #1
	add r0, r1, r3
	ldr r1, [r0]
	ldr r5, _0800DA58  @ =0x000003FF
	and r1, r1, r5
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DA68  @ =gUnknown_082EFE44
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DA4C  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #44]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #124
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, [sp, #112]
	mov r1, #130
	lsl r1, r1, #1
	add r0, r5, r1
	ldr r1, [r0]
	ldr r3, _0800DA58  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r5, r8
	orr r0, r0, r5
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _0800DA6C  @ =gUnknown_082EFE90
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r1, _0800DA4C  @ =0x84000002
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #40]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #124
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, [sp, #112]
	mov r1, #132
	lsl r1, r1, #1
	add r0, r5, r1
	ldr r1, [r0]
	ldr r3, _0800DA58  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r5, r8
	orr r0, r0, r5
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _0800DA70  @ =gUnknown_082F033C
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r1, _0800DA4C  @ =0x84000002
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #44]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #132
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, _0800DA74  @ =0x03000B28
	ldr r1, [r5]
	ldr r0, _0800DA58  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DA70  @ =gUnknown_082F033C
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DA4C  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #44]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #136
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, _0800DA74  @ =0x03000B28
	ldr r1, [r5]
	ldr r0, _0800DA58  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DA70  @ =gUnknown_082F033C
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DA4C  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #36]
	add r2, r2, #16
	ldrh r3, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r3
	orr r2, r2, r0
	strh r2, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #136
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _0800DA74  @ =0x03000B28
	ldr r1, [r3]
	ldr r5, _0800DA58  @ =0x000003FF
	and r1, r1, r5
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DA70  @ =gUnknown_082F033C
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DA4C  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #40]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #132
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, _0800DA74  @ =0x03000B28
	ldr r1, [r5]
	ldr r0, _0800DA58  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DA70  @ =gUnknown_082F033C
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DA4C  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r3, [sp, #36]
	add r3, r3, #72
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #136
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _0800DA74  @ =0x03000B28
	ldr r1, [r3]
	ldr r5, _0800DA58  @ =0x000003FF
	and r1, r1, r5
	ldrh r3, [r2, #4]
	b _0800DA78
	.byte 0x00
	.byte 0x00
_0800DA44:
	.4byte 0x040000D4
_0800DA48:
	.4byte gUnknown_082F0944
_0800DA4C:
	.4byte 0x84000002
_0800DA50:
	.4byte 0x000001FF
_0800DA54:
	.4byte 0xFFFFFE00
_0800DA58:
	.4byte 0x000003FF
_0800DA5C:
	.4byte 0xFFFFFC00
_0800DA60:
	.4byte gUnknown_082EFDF8
_0800DA64:
	.4byte gUnknown_082EE18C
_0800DA68:
	.4byte gUnknown_082EFE44
_0800DA6C:
	.4byte gUnknown_082EFE90
_0800DA70:
	.4byte gUnknown_082F033C
_0800DA74:
	.4byte 0x03000B28
_0800DA78:
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DD74  @ =gUnknown_082F033C
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DD78  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DD7C  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #40]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #136
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, _0800DD80  @ =0x03000B28
	ldr r1, [r5]
	ldr r0, _0800DD84  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DD88  @ =gUnknown_082EFC68
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DD78  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DD7C  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #36]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, #48
	add r1, r1, #56
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _0800DD8C  @ =0x03000AF4
	ldr r1, [r3]
	ldr r5, _0800DD84  @ =0x000003FF
	and r1, r1, r5
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DD88  @ =gUnknown_082EFC68
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DD78  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r3, [sp, #36]
	add r3, r3, #88
	ldrh r2, [r1, #2]
	ldr r0, _0800DD7C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #144
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, _0800DD8C  @ =0x03000AF4
	ldr r0, [r2]
	ldr r3, _0800DD84  @ =0x000003FF
	and r0, r0, r3
	ldrh r2, [r1, #4]
	and r6, r6, r2
	orr r6, r6, r0
	strh r6, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrb r1, [r0, #5]
	mov r5, #15
	and r5, r5, r1
	mov r1, r8
	orr r5, r5, r1
	strb r5, [r0, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #16
	str r3, [sp, #4]
	mov r5, #0
	mov r10, r5
	mov r5, r12
	ldr r6, [sp, #112]
	ldr r0, [sp, #36]
	add r0, r0, #40
	str r0, [sp, #52]
_0800DBD8:
	ldr r1, _0800DD90  @ =gUnknown_082F01B0
	str r1, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r2, _0800DD78  @ =0x84000002
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r5
	mov r0, r10
	lsl r1, r0, #3
	ldr r2, [sp, #52]
	add r1, r2, r1
	ldr r0, _0800DD94  @ =0x000001FF
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800DD7C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r1, [sp, #4]
	add r1, r1, #48
	strb r1, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r5
	mov r0, #5
	mov r1, r10
	sub r0, r0, r1
	add r1, r6, #6
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #138
	lsl r2, r2, #1
	add r0, r6, r2
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, _0800DD84  @ =0x000003FF
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800DD98  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	mov r8, r2
	mov r3, r8
	orr r0, r0, r3
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r10, r0
	cmp r0, #5
	bls _0800DBD8
	ldr r4, _0800DD9C  @ =gUnknown_03000B80
	ldrb r2, [r4]
	sub r0, r2, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0800DC76
	b _0800DDB8
_0800DC76:
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #4
	strh r0, [r5]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #128
	strh r0, [r1]
	ldr r4, _0800DDA0  @ =0x040000D4
	ldr r0, _0800DDA4  @ =gUnknown_082EFB58
	str r0, [r4]
	ldrh r0, [r1]
	ldr r1, _0800DDA8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0800DDAC  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800DDB0  @ =gUnknown_082EFB50
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r2, _0800DD78  @ =0x84000002
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, [sp, #128]
	asr r6, r3, #16
	add r1, r6, #0
	add r1, r1, #40
	ldr r5, _0800DD94  @ =0x000001FF
	and r1, r1, r5
	ldrh r3, [r2, #2]
	ldr r0, _0800DD7C  @ =0xFFFFFE00
	mov r10, r0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #116
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800DD84  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _0800DD98  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DDB4  @ =gUnknown_082F0944
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DD78  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r6, r6, #64
	ldr r1, _0800DD94  @ =0x000001FF
	and r6, r6, r1
	ldrh r1, [r0, #2]
	mov r2, r10
	and r2, r2, r1
	orr r2, r2, r6
	strh r2, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #116
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, [sp, #112]
	mov r1, #142
	lsl r1, r1, #1
	add r0, r5, r1
	ldr r1, [r0]
	ldr r3, _0800DD84  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	ldr r0, _0800DD98  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r4, r8
	orr r0, r0, r4
	strb r0, [r1, #5]
	b _0800E3EC
	.byte 0x00
	.byte 0x00
_0800DD74:
	.4byte gUnknown_082F033C
_0800DD78:
	.4byte 0x84000002
_0800DD7C:
	.4byte 0xFFFFFE00
_0800DD80:
	.4byte 0x03000B28
_0800DD84:
	.4byte 0x000003FF
_0800DD88:
	.4byte gUnknown_082EFC68
_0800DD8C:
	.4byte 0x03000AF4
_0800DD90:
	.4byte gUnknown_082F01B0
_0800DD94:
	.4byte 0x000001FF
_0800DD98:
	.4byte 0xFFFFFC00
_0800DD9C:
	.4byte gUnknown_03000B80
_0800DDA0:
	.4byte 0x040000D4
_0800DDA4:
	.4byte gUnknown_082EFB58
_0800DDA8:
	.4byte 0x06010000
_0800DDAC:
	.4byte 0x84000020
_0800DDB0:
	.4byte gUnknown_082EFB50
_0800DDB4:
	.4byte gUnknown_082F0944
_0800DDB8:
	ldr r0, _0800DDC8  @ =gLevelEWorldFlag
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	beq _0800DDCC
	mov r1, #7
	b _0800DDE2
	.byte 0x00
	.byte 0x00
_0800DDC8:
	.4byte gLevelEWorldFlag
_0800DDCC:
	lsl r0, r2, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0800DDE0
	ldr r0, _0800DDDC  @ =gUnknown_03000BF0
	mov r1, #0
	ldrsb r1, [r0, r1]
	b _0800DDE2
_0800DDDC:
	.4byte gUnknown_03000BF0
_0800DDE0:
	mov r1, #6
_0800DDE2:
	mov r5, #8
	str r5, [sp, #4]
	ldr r2, [sp]
	ldrh r0, [r2]
	sub r0, r0, #2
	strh r0, [r2]
	mov r3, r9
	ldrh r0, [r3]
	sub r0, r0, #64
	strh r0, [r3]
	ldr r6, _0800DEC0  @ =0x040000D4
	lsl r0, r1, #6
	ldr r1, _0800DEC4  @ =gUnknown_082EF92C
	add r0, r0, r1
	str r0, [r6]
	ldrh r0, [r3]
	ldr r4, _0800DEC8  @ =0x06010000
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r5, _0800DECC  @ =0x84000010
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800DED0  @ =gUnknown_082EF924
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r0, _0800DED4  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #128]
	asr r2, r2, #16
	mov r8, r2
	ldr r3, _0800DED8  @ =0x000001FF
	mov r10, r3
	mov r3, r8
	add r3, r3, #40
	ldrh r2, [r1, #2]
	ldr r0, _0800DEDC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldr r5, [sp, #116]
	str r5, [sp, #60]
	add r1, sp, #60
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800DEE0  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800DEE4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DEE8  @ =gLevelEWorldFlag
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0800DF6C
	ldr r1, _0800DEEC  @ =gUnknown_03000BF8
	mov r0, #0
	ldrsb r0, [r1, r0]
	add r0, r0, #1
	cmp r0, #9
	bgt _0800DEF4
	str r0, [sp, #8]
	ldr r4, _0800DEF0  @ =gUnknown_082F0944
	str r4, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r5, _0800DED4  @ =0x84000002
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r0, r10
	and r1, r1, r0
	b _0800E252
	.byte 0x00
	.byte 0x00
_0800DEC0:
	.4byte 0x040000D4
_0800DEC4:
	.4byte gUnknown_082EF92C
_0800DEC8:
	.4byte 0x06010000
_0800DECC:
	.4byte 0x84000010
_0800DED0:
	.4byte gUnknown_082EF924
_0800DED4:
	.4byte 0x84000002
_0800DED8:
	.4byte 0x000001FF
_0800DEDC:
	.4byte 0xFFFFFE00
_0800DEE0:
	.4byte 0x000003FF
_0800DEE4:
	.4byte 0xFFFFFC00
_0800DEE8:
	.4byte gLevelEWorldFlag
_0800DEEC:
	.4byte gUnknown_03000BF8
_0800DEF0:
	.4byte gUnknown_082F0944
_0800DEF4:
	mov r3, #1
	str r3, [sp, #8]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	mov r2, r9
	ldrh r0, [r2]
	sub r0, r0, #32
	strh r0, [r2]
	mov r0, #0
	ldrsb r0, [r1, r0]
	sub r0, r0, #9
	lsl r0, r0, #5
	ldr r3, _0800DF58  @ =gUnknown_082ECF9C
	add r0, r0, r3
	str r0, [r6]
	ldrh r0, [r2]
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800DF5C  @ =0x84000008
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r4, _0800DF60  @ =gUnknown_082ECF94
	str r4, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r5, _0800DF64  @ =0x84000002
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800DF68  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #60
	b _0800E324
	.byte 0x00
	.byte 0x00
_0800DF58:
	.4byte gUnknown_082ECF9C
_0800DF5C:
	.4byte 0x84000008
_0800DF60:
	.4byte gUnknown_082ECF94
_0800DF64:
	.4byte 0x84000002
_0800DF68:
	.4byte 0xFFFFFE00
_0800DF6C:
	ldr r0, _0800DFF0  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0800E010
	mov r3, #10
	str r3, [sp, #8]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #32
	strh r0, [r1]
	ldr r0, _0800DFF4  @ =gUnknown_082EFF4C
	str r0, [r6]
	ldrh r0, [r1]
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800DFF8  @ =0x84000008
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800DFFC  @ =gUnknown_082EFF24
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r2, _0800E000  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r3, r10
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800E004  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #60
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800E008  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _0800E00C  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	b _0800E286
_0800DFF0:
	.4byte gNextLevelInLevelTable
_0800DFF4:
	.4byte gUnknown_082EFF4C
_0800DFF8:
	.4byte 0x84000008
_0800DFFC:
	.4byte gUnknown_082EFF24
_0800E000:
	.4byte 0x84000002
_0800E004:
	.4byte 0xFFFFFE00
_0800E008:
	.4byte 0x000003FF
_0800E00C:
	.4byte 0xFFFFFC00
_0800E010:
	mov r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq _0800E0AC
	mov r3, #11
	str r3, [sp, #8]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #32
	strh r0, [r1]
	ldr r0, _0800E090  @ =gUnknown_082EFF6C
	str r0, [r6]
	ldrh r0, [r1]
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800E094  @ =0x84000008
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800E098  @ =gUnknown_082EFF24
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r2, _0800E09C  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r3, r10
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800E0A0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #60
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800E0A4  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _0800E0A8  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	b _0800E286
_0800E090:
	.4byte gUnknown_082EFF6C
_0800E094:
	.4byte 0x84000008
_0800E098:
	.4byte gUnknown_082EFF24
_0800E09C:
	.4byte 0x84000002
_0800E0A0:
	.4byte 0xFFFFFE00
_0800E0A4:
	.4byte 0x000003FF
_0800E0A8:
	.4byte 0xFFFFFC00
_0800E0AC:
	ldr r3, _0800E144  @ =gUnknown_03000B80
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0800E168
	ldr r1, _0800E148  @ =gUnknown_03000BF8
	ldrb r0, [r1]
	lsl r0, r0, #24
	asr r0, r0, #25
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #2
	strh r0, [r5]
	mov r3, r9
	ldrh r0, [r3]
	sub r0, r0, #64
	strh r0, [r3]
	ldrb r1, [r1]
	add r0, r2, #0
	and r0, r0, r1
	lsl r0, r0, #6
	ldr r1, _0800E14C  @ =gUnknown_082ED5C4
	add r0, r0, r1
	str r0, [r6]
	ldrh r0, [r3]
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r4, _0800E150  @ =0x84000010
	str r4, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800E154  @ =gUnknown_082ED5BC
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r5, _0800E158  @ =0x84000002
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800E15C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #60
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r4, [sp]
	ldrh r4, [r4]
	add r0, r0, r4
	ldr r5, _0800E160  @ =0x000003FF
	and r0, r0, r5
	ldr r1, _0800E164  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	b _0800E286
	.byte 0x00
	.byte 0x00
_0800E144:
	.4byte gUnknown_03000B80
_0800E148:
	.4byte gUnknown_03000BF8
_0800E14C:
	.4byte gUnknown_082ED5C4
_0800E150:
	.4byte 0x84000010
_0800E154:
	.4byte gUnknown_082ED5BC
_0800E158:
	.4byte 0x84000002
_0800E15C:
	.4byte 0xFFFFFE00
_0800E160:
	.4byte 0x000003FF
_0800E164:
	.4byte 0xFFFFFC00
_0800E168:
	cmp r0, #1
	bne _0800E210
	ldr r0, _0800E1F0  @ =gUnknown_03000BF8
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r3, [sp]
	ldrh r0, [r3]
	sub r0, r0, #1
	strh r0, [r3]
	mov r5, r9
	ldrh r0, [r5]
	sub r0, r0, #32
	strh r0, [r5]
	ldr r0, _0800E1F4  @ =gUnknown_082EFF2C
	str r0, [r6]
	ldrh r0, [r5]
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800E1F8  @ =0x84000008
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800E1FC  @ =gUnknown_082EFF24
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r0, _0800E200  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r3, r10
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800E204  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #60
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800E208  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _0800E20C  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	b _0800E286
	.byte 0x00
	.byte 0x00
_0800E1F0:
	.4byte gUnknown_03000BF8
_0800E1F4:
	.4byte gUnknown_082EFF2C
_0800E1F8:
	.4byte 0x84000008
_0800E1FC:
	.4byte gUnknown_082EFF24
_0800E200:
	.4byte 0x84000002
_0800E204:
	.4byte 0xFFFFFE00
_0800E208:
	.4byte 0x000003FF
_0800E20C:
	.4byte 0xFFFFFC00
_0800E210:
	cmp r0, #2
	bne _0800E224
	ldr r0, _0800E220  @ =gUnknown_03000BF0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, #1
	b _0800E230
_0800E220:
	.4byte gUnknown_03000BF0
_0800E224:
	ldr r1, _0800E2A4  @ =gUnknown_03000BF0
	mov r0, #0
	ldrsb r0, [r1, r0]
	add r0, r0, #7
	cmp r0, #9
	bgt _0800E2C4
_0800E230:
	str r0, [sp, #8]
	ldr r3, _0800E2A8  @ =gUnknown_082F0944
	str r3, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r4, _0800E2AC  @ =0x84000002
	str r4, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r5, r10
	and r1, r1, r5
_0800E252:
	ldrh r3, [r2, #2]
	ldr r0, _0800E2B0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #60
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, [sp, #112]
	mov r4, #142
	lsl r4, r4, #1
	add r0, r3, r4
	ldr r1, [r0]
	ldr r5, _0800E2B4  @ =0x000003FF
	and r1, r1, r5
	ldrh r3, [r2, #4]
	ldr r0, _0800E2B8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
_0800E286:
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, _0800E2BC  @ =gUnknown_082ECF9C
	ldr r4, _0800E2C0  @ =gUnknown_082ECF94
	b _0800E360
_0800E2A4:
	.4byte gUnknown_03000BF0
_0800E2A8:
	.4byte gUnknown_082F0944
_0800E2AC:
	.4byte 0x84000002
_0800E2B0:
	.4byte 0xFFFFFE00
_0800E2B4:
	.4byte 0x000003FF
_0800E2B8:
	.4byte 0xFFFFFC00
_0800E2BC:
	.4byte gUnknown_082ECF9C
_0800E2C0:
	.4byte gUnknown_082ECF94
_0800E2C4:
	mov r3, #1
	str r3, [sp, #8]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	mov r2, r9
	ldrh r0, [r2]
	sub r0, r0, #32
	strh r0, [r2]
	mov r0, #0
	ldrsb r0, [r1, r0]
	sub r0, r0, #3
	lsl r0, r0, #5
	ldr r3, _0800E4E8  @ =gUnknown_082ECF9C
	add r0, r0, r3
	str r0, [r6]
	ldrh r0, [r2]
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800E4EC  @ =0x84000008
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r4, _0800E4F0  @ =gUnknown_082ECF94
	str r4, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r5, _0800E4F4  @ =0x84000002
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800E4F8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #116
_0800E324:
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800E4FC  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _0800E500  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, _0800E4E8  @ =gUnknown_082ECF9C
_0800E360:
	ldr r3, [sp]
	ldrh r0, [r3]
	sub r0, r0, #1
	strh r0, [r3]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #32
	strh r0, [r1]
	ldr r2, _0800E504  @ =0x040000D4
	ldr r3, [sp, #8]
	lsl r0, r3, #5
	add r0, r0, r5
	str r0, [r2]
	ldrh r0, [r1]
	ldr r1, _0800E508  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0800E4EC  @ =0x84000008
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	str r4, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r2, #4]
	ldr r0, _0800E4F4  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r4, [sp, #128]
	asr r1, r4, #16
	add r1, r1, #56
	ldrh r3, [r2, #2]
	ldr r0, _0800E4F8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldr r1, [sp, #4]
	add r1, r1, #48
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r4, _0800E4FC  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _0800E500  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
_0800E3EC:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, [sp, #112]
	mov r1, #145
	lsl r1, r1, #1
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E402
	b _0800E528
_0800E402:
	ldr r2, [sp]
	ldrh r0, [r2]
	sub r0, r0, #8
	strh r0, [r2]
	ldr r4, _0800E50C  @ =0xFFFFFF00
	mov r3, r9
	ldrh r3, [r3]
	add r0, r4, r3
	mov r4, r9
	strh r0, [r4]
	ldr r3, _0800E504  @ =0x040000D4
	ldr r5, _0800E510  @ =0x03000B31
	ldrb r0, [r5]
	lsl r0, r0, #8
	ldr r1, _0800E514  @ =gUnknown_082EE264
	add r0, r0, r1
	str r0, [r3]
	ldrh r0, [r4]
	ldr r1, _0800E508  @ =0x06010000
	add r0, r0, r1
	str r0, [r3, #4]
	ldr r2, _0800E518  @ =0x84000040
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800E51C  @ =gUnknown_082EE25C
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r4, _0800E4F4  @ =0x84000002
	str r4, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r5, [sp, #128]
	asr r5, r5, #16
	mov r8, r5
	mov r2, r8
	add r2, r2, #16
	ldrh r4, [r1, #2]
	ldr r6, _0800E4F8  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r4
	orr r2, r2, r0
	strh r2, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #124
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800E4FC  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800E500  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r4, #15
	add r0, r4, #0
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #8
	strh r0, [r5]
	ldr r1, _0800E50C  @ =0xFFFFFF00
	mov r0, r9
	ldrh r0, [r0]
	add r0, r1, r0
	str r0, [sp, #64]
	mov r1, r9
	strh r0, [r1]
	ldr r2, _0800E510  @ =0x03000B31
	ldrb r0, [r2]
	lsl r0, r0, #8
	ldr r1, _0800E520  @ =gUnknown_082EE4B4
	add r0, r0, r1
	str r0, [r3]
	mov r5, r9
	ldrh r0, [r5]
	ldr r1, _0800E508  @ =0x06010000
	add r0, r0, r1
	str r0, [r3, #4]
	ldr r2, _0800E518  @ =0x84000040
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800E524  @ =gUnknown_082EE4AC
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r5, _0800E4F4  @ =0x84000002
	str r5, [r3, #8]
	b _0800E5F8
_0800E4E8:
	.4byte gUnknown_082ECF9C
_0800E4EC:
	.4byte 0x84000008
_0800E4F0:
	.4byte gUnknown_082ECF94
_0800E4F4:
	.4byte 0x84000002
_0800E4F8:
	.4byte 0xFFFFFE00
_0800E4FC:
	.4byte 0x000003FF
_0800E500:
	.4byte 0xFFFFFC00
_0800E504:
	.4byte 0x040000D4
_0800E508:
	.4byte 0x06010000
_0800E50C:
	.4byte 0xFFFFFF00
_0800E510:
	.4byte 0x03000B31
_0800E514:
	.4byte gUnknown_082EE264
_0800E518:
	.4byte 0x84000040
_0800E51C:
	.4byte gUnknown_082EE25C
_0800E520:
	.4byte gUnknown_082EE4B4
_0800E524:
	.4byte gUnknown_082EE4AC
_0800E528:
	ldr r2, [sp]
	ldrh r0, [r2]
	sub r0, r0, #8
	strh r0, [r2]
	ldr r4, _0800E77C  @ =0xFFFFFF00
	mov r3, r9
	ldrh r3, [r3]
	add r0, r4, r3
	mov r4, r9
	strh r0, [r4]
	ldr r3, _0800E780  @ =0x040000D4
	ldr r0, _0800E784  @ =gUnknown_082ED670
	str r0, [r3]
	ldrh r0, [r4]
	ldr r5, _0800E788  @ =0x06010000
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _0800E78C  @ =0x84000040
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800E790  @ =gUnknown_082ED668
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r1, _0800E794  @ =0x84000002
	str r1, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #128]
	asr r2, r2, #16
	mov r8, r2
	add r2, r2, #16
	ldrh r4, [r1, #2]
	ldr r6, _0800E798  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r4
	orr r2, r2, r0
	strh r2, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #124
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800E79C  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800E7A0  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r4, #15
	add r0, r4, #0
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #8
	strh r0, [r5]
	ldr r1, _0800E77C  @ =0xFFFFFF00
	mov r0, r9
	ldrh r0, [r0]
	add r0, r1, r0
	str r0, [sp, #72]
	mov r1, r9
	strh r0, [r1]
	ldr r0, _0800E7A4  @ =gUnknown_082ED79C
	str r0, [r3]
	ldrh r0, [r1]
	ldr r2, _0800E788  @ =0x06010000
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r5, _0800E78C  @ =0x84000040
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800E7A8  @ =gUnknown_082ED794
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r0, _0800E794  @ =0x84000002
	str r0, [r3, #8]
_0800E5F8:
	ldr r0, [r3, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, #48
	add r8, r8, r1
	ldrh r1, [r0, #2]
	and r6, r6, r1
	mov r2, r8
	orr r6, r6, r2
	strh r6, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #124
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r3, _0800E79C  @ =0x000003FF
	and r0, r0, r3
	ldr r5, _0800E7A0  @ =0xFFFFFC00
	and r5, r5, r2
	orr r5, r5, r0
	strh r5, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrb r1, [r0, #5]
	and r4, r4, r1
	mov r1, #96
	orr r4, r4, r1
	strb r4, [r0, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r2, [sp, #112]
	mov r3, #145
	lsl r3, r3, #1
	add r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800E65E
	b _0800E7C8
_0800E65E:
	ldr r4, [sp]
	ldrh r0, [r4]
	sub r0, r0, #4
	strh r0, [r4]
	mov r5, r9
	ldrh r0, [r5]
	sub r0, r0, #128
	strh r0, [r5]
	ldr r3, _0800E780  @ =0x040000D4
	ldr r1, _0800E7AC  @ =0x03000B31
	ldrb r0, [r1]
	lsl r0, r0, #7
	ldr r1, _0800E7B0  @ =gUnknown_082EF634
	add r0, r0, r1
	str r0, [r3]
	ldrh r0, [r5]
	ldr r2, _0800E788  @ =0x06010000
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0800E7B4  @ =0x84000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800E7B8  @ =gUnknown_082EF62C
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r4, _0800E794  @ =0x84000002
	str r4, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r5, [sp, #128]
	asr r5, r5, #16
	mov r8, r5
	mov r4, r8
	add r4, r4, #24
	ldrh r2, [r1, #2]
	ldr r6, _0800E798  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #136
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800E79C  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800E7A0  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r4, #15
	add r0, r4, #0
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #2
	strh r0, [r5]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #64
	strh r0, [r1]
	ldr r2, _0800E7AC  @ =0x03000B31
	ldrb r0, [r2]
	lsl r0, r0, #6
	ldr r1, _0800E7BC  @ =gUnknown_082EF784
	add r0, r0, r1
	str r0, [r3]
	mov r5, r9
	ldrh r0, [r5]
	ldr r1, _0800E788  @ =0x06010000
	add r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0800E7C0  @ =0x84000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800E7C4  @ =gUnknown_082EF77C
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r2, _0800E794  @ =0x84000002
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r3, #56
	add r8, r8, r3
	ldrh r1, [r0, #2]
	and r6, r6, r1
	mov r5, r8
	orr r6, r6, r5
	strh r6, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #136
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r3, [sp]
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r5, _0800E79C  @ =0x000003FF
	and r0, r0, r5
	ldr r3, _0800E7A0  @ =0xFFFFFC00
	and r3, r3, r2
	orr r3, r3, r0
	strh r3, [r1, #4]
	b _0800E8D2
	.byte 0x00
	.byte 0x00
_0800E77C:
	.4byte 0xFFFFFF00
_0800E780:
	.4byte 0x040000D4
_0800E784:
	.4byte gUnknown_082ED670
_0800E788:
	.4byte 0x06010000
_0800E78C:
	.4byte 0x84000040
_0800E790:
	.4byte gUnknown_082ED668
_0800E794:
	.4byte 0x84000002
_0800E798:
	.4byte 0xFFFFFE00
_0800E79C:
	.4byte 0x000003FF
_0800E7A0:
	.4byte 0xFFFFFC00
_0800E7A4:
	.4byte gUnknown_082ED79C
_0800E7A8:
	.4byte gUnknown_082ED794
_0800E7AC:
	.4byte 0x03000B31
_0800E7B0:
	.4byte gUnknown_082EF634
_0800E7B4:
	.4byte 0x84000020
_0800E7B8:
	.4byte gUnknown_082EF62C
_0800E7BC:
	.4byte gUnknown_082EF784
_0800E7C0:
	.4byte 0x84000010
_0800E7C4:
	.4byte gUnknown_082EF77C
_0800E7C8:
	ldr r2, [sp]
	ldrh r0, [r2]
	sub r0, r0, #4
	strh r0, [r2]
	mov r3, r9
	ldrh r0, [r3]
	sub r0, r0, #128
	strh r0, [r3]
	ldr r3, _0800EAC4  @ =0x040000D4
	ldr r0, _0800EAC8  @ =gUnknown_082EE07C
	str r0, [r3]
	mov r4, r9
	ldrh r0, [r4]
	ldr r5, _0800EACC  @ =0x06010000
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _0800EAD0  @ =0x84000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800EAD4  @ =gUnknown_082EE074
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r0, _0800EAD8  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #128]
	asr r2, r2, #16
	mov r8, r2
	mov r4, r8
	add r4, r4, #24
	ldrh r2, [r1, #2]
	ldr r6, _0800EADC  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #136
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800EAE0  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800EAE4  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r4, #15
	add r0, r4, #0
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #2
	strh r0, [r5]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #64
	strh r0, [r1]
	ldr r0, _0800EAE8  @ =gUnknown_082EE128
	str r0, [r3]
	ldrh r0, [r1]
	ldr r2, _0800EACC  @ =0x06010000
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0800EAEC  @ =0x84000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800EAF0  @ =gUnknown_082EE120
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r5, _0800EAD8  @ =0x84000002
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, #56
	add r8, r8, r1
	ldrh r1, [r0, #2]
	and r6, r6, r1
	mov r2, r8
	orr r6, r6, r2
	strh r6, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #136
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r3, _0800EAE0  @ =0x000003FF
	and r0, r0, r3
	ldr r5, _0800EAE4  @ =0xFFFFFC00
	and r5, r5, r2
	orr r5, r5, r0
	strh r5, [r1, #4]
_0800E8D2:
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrb r1, [r0, #5]
	and r4, r4, r1
	mov r1, #96
	orr r4, r4, r1
	strb r4, [r0, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r2, [sp, #112]
	mov r3, #145
	lsl r3, r3, #1
	add r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #2
	beq _0800E8F8
	b _0800EB18
_0800E8F8:
	ldr r4, [sp]
	ldrh r0, [r4]
	sub r0, r0, #8
	strh r0, [r4]
	ldr r1, _0800EAF4  @ =0xFFFFFF00
	mov r5, r9
	ldrh r5, [r5]
	add r0, r1, r5
	mov r1, r9
	strh r0, [r1]
	ldr r3, _0800EAC4  @ =0x040000D4
	ldr r2, _0800EAF8  @ =0x03000B31
	ldrb r0, [r2]
	lsl r0, r0, #8
	ldr r1, _0800EAFC  @ =gUnknown_082EE954
	add r0, r0, r1
	str r0, [r3]
	mov r4, r9
	ldrh r0, [r4]
	ldr r5, _0800EACC  @ =0x06010000
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _0800EB00  @ =0x84000040
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800EB04  @ =gUnknown_082EE94C
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r1, _0800EAD8  @ =0x84000002
	str r1, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #128]
	asr r2, r2, #16
	str r2, [sp, #88]
	add r4, r2, #0
	add r4, r4, #8
	ldrh r2, [r1, #2]
	ldr r5, _0800EADC  @ =0xFFFFFE00
	mov r8, r5
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #140
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800EAE0  @ =0x000003FF
	and r1, r1, r0
	ldr r6, _0800EAE4  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r4, [sp]
	ldrh r0, [r4]
	sub r0, r0, #8
	strh r0, [r4]
	ldr r0, _0800EAF4  @ =0xFFFFFF00
	mov r5, r9
	ldrh r5, [r5]
	add r5, r0, r5
	str r5, [sp, #92]
	mov r0, r9
	strh r5, [r0]
	ldr r1, _0800EAF8  @ =0x03000B31
	ldrb r0, [r1]
	lsl r0, r0, #8
	ldr r1, _0800EB08  @ =gUnknown_082EEBA4
	add r0, r0, r1
	str r0, [r3]
	mov r2, r9
	ldrh r0, [r2]
	ldr r4, _0800EACC  @ =0x06010000
	add r0, r0, r4
	str r0, [r3, #4]
	ldr r5, _0800EB00  @ =0x84000040
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800EB0C  @ =gUnknown_082EEB9C
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r0, _0800EAD8  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r4, [sp, #88]
	add r4, r4, #40
	ldrh r2, [r1, #2]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #140
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r0, r4, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800EAE0  @ =0x000003FF
	and r0, r0, r1
	add r1, r6, #0
	and r1, r1, r4
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r4, [sp]
	ldrh r0, [r4]
	sub r0, r0, #4
	strh r0, [r4]
	mov r5, r9
	ldrh r0, [r5]
	sub r0, r0, #128
	strh r0, [r5]
	ldr r1, _0800EAF8  @ =0x03000B31
	ldrb r0, [r1]
	lsl r0, r0, #7
	ldr r1, _0800EB10  @ =gUnknown_082EEDF4
	add r0, r0, r1
	str r0, [r3]
	ldrh r0, [r5]
	ldr r2, _0800EACC  @ =0x06010000
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0800EAD0  @ =0x84000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800EB14  @ =gUnknown_082EEDEC
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r4, _0800EAD8  @ =0x84000002
	str r4, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldr r2, [sp, #88]
	add r2, r2, #72
	ldrh r1, [r0, #2]
	mov r5, r8
	and r5, r5, r1
	orr r5, r5, r2
	strh r5, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #140
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r3, [sp]
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r4, _0800EAE0  @ =0x000003FF
	and r0, r0, r4
	and r6, r6, r2
	orr r6, r6, r0
	strh r6, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrb r1, [r0, #5]
	mov r5, #15
	and r5, r5, r1
	mov r1, #96
	orr r5, r5, r1
	strb r5, [r0, #5]
	b _0800ECC6
_0800EAC4:
	.4byte 0x040000D4
_0800EAC8:
	.4byte gUnknown_082EE07C
_0800EACC:
	.4byte 0x06010000
_0800EAD0:
	.4byte 0x84000020
_0800EAD4:
	.4byte gUnknown_082EE074
_0800EAD8:
	.4byte 0x84000002
_0800EADC:
	.4byte 0xFFFFFE00
_0800EAE0:
	.4byte 0x000003FF
_0800EAE4:
	.4byte 0xFFFFFC00
_0800EAE8:
	.4byte gUnknown_082EE128
_0800EAEC:
	.4byte 0x84000010
_0800EAF0:
	.4byte gUnknown_082EE120
_0800EAF4:
	.4byte 0xFFFFFF00
_0800EAF8:
	.4byte 0x03000B31
_0800EAFC:
	.4byte gUnknown_082EE954
_0800EB00:
	.4byte 0x84000040
_0800EB04:
	.4byte gUnknown_082EE94C
_0800EB08:
	.4byte gUnknown_082EEBA4
_0800EB0C:
	.4byte gUnknown_082EEB9C
_0800EB10:
	.4byte gUnknown_082EEDF4
_0800EB14:
	.4byte gUnknown_082EEDEC
_0800EB18:
	ldr r3, [sp]
	ldrh r0, [r3]
	sub r0, r0, #8
	strh r0, [r3]
	ldr r5, _0800ECDC  @ =0xFFFFFF00
	mov r4, r9
	ldrh r4, [r4]
	add r0, r5, r4
	mov r5, r9
	strh r0, [r5]
	ldr r3, _0800ECE0  @ =0x040000D4
	ldr r0, _0800ECE4  @ =gUnknown_082ED9F4
	str r0, [r3]
	ldrh r0, [r5]
	ldr r1, _0800ECE8  @ =0x06010000
	add r0, r0, r1
	str r0, [r3, #4]
	ldr r2, _0800ECEC  @ =0x84000040
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800ECF0  @ =gUnknown_082ED9EC
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r4, _0800ECF4  @ =0x84000002
	str r4, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r5, [sp, #128]
	asr r5, r5, #16
	str r5, [sp, #100]
	add r4, r5, #0
	add r4, r4, #8
	ldrh r2, [r1, #2]
	ldr r0, _0800ECF8  @ =0xFFFFFE00
	mov r8, r0
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #140
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800ECFC  @ =0x000003FF
	and r1, r1, r0
	ldr r6, _0800ED00  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r4, [sp]
	ldrh r0, [r4]
	sub r0, r0, #8
	strh r0, [r4]
	ldr r0, _0800ECDC  @ =0xFFFFFF00
	mov r5, r9
	ldrh r5, [r5]
	add r5, r0, r5
	str r5, [sp, #104]
	mov r0, r9
	strh r5, [r0]
	ldr r0, _0800ED04  @ =gUnknown_082EDB20
	str r0, [r3]
	mov r1, r9
	ldrh r0, [r1]
	ldr r2, _0800ECE8  @ =0x06010000
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r4, _0800ECEC  @ =0x84000040
	str r4, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800ED08  @ =gUnknown_082EDB18
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r5, _0800ECF4  @ =0x84000002
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r4, [sp, #100]
	add r4, r4, #40
	ldrh r2, [r1, #2]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #140
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r0, r4, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800ECFC  @ =0x000003FF
	and r0, r0, r1
	add r1, r6, #0
	and r1, r1, r4
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r4, [sp]
	ldrh r0, [r4]
	sub r0, r0, #4
	strh r0, [r4]
	mov r5, r9
	ldrh r0, [r5]
	sub r0, r0, #128
	strh r0, [r5]
	ldr r0, _0800ED0C  @ =gUnknown_082EDC4C
	str r0, [r3]
	ldrh r0, [r5]
	ldr r1, _0800ECE8  @ =0x06010000
	add r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0800ED10  @ =0x84000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800ED14  @ =gUnknown_082EDC44
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r2, _0800ECF4  @ =0x84000002
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldr r2, [sp, #100]
	add r2, r2, #72
	ldrh r1, [r0, #2]
	mov r3, r8
	and r3, r3, r1
	orr r3, r3, r2
	strh r3, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #140
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r3, _0800ECFC  @ =0x000003FF
	and r0, r0, r3
	and r6, r6, r2
	orr r6, r6, r0
	strh r6, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrb r1, [r0, #5]
	mov r4, #15
	and r4, r4, r1
	mov r5, #96
	orr r4, r4, r5
	strb r4, [r0, #5]
_0800ECC6:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800ECCC:
	add sp, sp, #148
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0800ECDC:
	.4byte 0xFFFFFF00
_0800ECE0:
	.4byte 0x040000D4
_0800ECE4:
	.4byte gUnknown_082ED9F4
_0800ECE8:
	.4byte 0x06010000
_0800ECEC:
	.4byte 0x84000040
_0800ECF0:
	.4byte gUnknown_082ED9EC
_0800ECF4:
	.4byte 0x84000002
_0800ECF8:
	.4byte 0xFFFFFE00
_0800ECFC:
	.4byte 0x000003FF
_0800ED00:
	.4byte 0xFFFFFC00
_0800ED04:
	.4byte gUnknown_082EDB20
_0800ED08:
	.4byte gUnknown_082EDB18
_0800ED0C:
	.4byte gUnknown_082EDC4C
_0800ED10:
	.4byte 0x84000020
_0800ED14:
	.4byte gUnknown_082EDC44
	THUMB_FUNC_END sub_0800CF44

	THUMB_FUNC_START sub_0800ED18
sub_0800ED18: @ 0x0800ED18
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, _0800EE44  @ =gUnknown_03000A10
	mov r12, r2
	add r2, r2, #48
	mov r3, #0
	mov r8, r3
	mov r3, #1
	strb r3, [r2]
	mov r2, r12
	add r2, r2, #182
	mov r4, r8
	strb r4, [r2]
	sub r2, r2, #125
	strb r4, [r2]
	add r2, r2, #11
	strb r4, [r2]
	sub r2, r2, #18
	strb r4, [r2]
	add r2, r2, #1
	strb r3, [r2]
	add r2, r2, #153
	strb r4, [r2]
	add r2, r2, #10
	strb r4, [r2]
	ldrh r2, [r0]
	mov r5, r12
	str r2, [r5, #20]
	ldr r2, _0800EE48  @ =gUnknown_082EBC34
	ldr r4, _0800EE4C  @ =0x040000D4
	str r2, [r4]
	ldrh r2, [r1]
	ldr r3, _0800EE50  @ =0x06010000
	add r2, r2, r3
	str r2, [r4, #4]
	ldr r5, _0800EE54  @ =0x84000080
	mov r9, r5
	str r5, [r4, #8]
	ldr r2, [r4, #8]
	ldrh r6, [r1]
	mov r2, #128
	lsl r2, r2, #2
	add r6, r6, r2
	strh r6, [r1]
	ldrh r2, [r0]
	add r7, r2, #0
	add r7, r7, #16
	lsl r2, r7, #16
	lsr r2, r2, #16
	mov r3, r12
	str r2, [r3, #40]
	ldr r2, _0800EE58  @ =gUnknown_082E84DC
	str r2, [r4]
	ldrh r2, [r1]
	ldr r5, _0800EE50  @ =0x06010000
	add r2, r2, r5
	str r2, [r4, #4]
	mov r2, r9
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	mov r3, #128
	lsl r3, r3, #2
	add r3, r3, r6
	mov r10, r3
	strh r3, [r1]
	add r3, r7, #0
	add r3, r3, #16
	lsl r2, r3, #16
	lsr r2, r2, #16
	mov r5, r12
	str r2, [r5, #44]
	ldr r2, _0800EE5C  @ =gUnknown_082E8A58
	str r2, [r4]
	ldrh r2, [r1]
	ldr r5, _0800EE50  @ =0x06010000
	add r2, r2, r5
	str r2, [r4, #4]
	mov r2, r9
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	mov r5, #128
	lsl r5, r5, #2
	add r5, r5, r10
	strh r5, [r1]
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r5, r12
	str r3, [r5, #28]
	ldr r2, _0800EE60  @ =gUnknown_082F0CFC
	str r2, [r4]
	ldrh r2, [r1]
	ldr r3, _0800EE50  @ =0x06010000
	add r2, r2, r3
	str r2, [r4, #4]
	ldr r2, _0800EE64  @ =0x84000020
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	mov r5, #144
	lsl r5, r5, #3
	add r2, r6, r5
	strh r2, [r1]
	add r2, r7, #0
	add r2, r2, #36
	strh r2, [r0]
	ldrh r2, [r0]
	mov r3, r12
	str r2, [r3, #72]
	ldr r2, _0800EE68  @ =gUnknown_082F8F0C
	str r2, [r4]
	ldrh r2, [r1]
	ldr r5, _0800EE50  @ =0x06010000
	add r2, r2, r5
	str r2, [r4, #4]
	mov r2, r9
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	mov r3, #208
	lsl r3, r3, #3
	add r6, r6, r3
	strh r6, [r1]
	add r2, r7, #0
	add r2, r2, #52
	strh r2, [r0]
	mov r3, r12
	add r3, r3, #215
	mov r2, #3
	strb r2, [r3]
	mov r2, r12
	add r2, r2, #216
	mov r4, r8
	strb r4, [r2]
	add r2, r2, #4
	mov r5, r8
	str r5, [r2]
	add r3, r3, #9
	ldr r2, _0800EE6C  @ =gUnknown_082EB118
	str r2, [r3]
	bl sub_0806CFB0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0800EE44:
	.4byte gUnknown_03000A10
_0800EE48:
	.4byte gUnknown_082EBC34
_0800EE4C:
	.4byte 0x040000D4
_0800EE50:
	.4byte 0x06010000
_0800EE54:
	.4byte 0x84000080
_0800EE58:
	.4byte gUnknown_082E84DC
_0800EE5C:
	.4byte gUnknown_082E8A58
_0800EE60:
	.4byte gUnknown_082F0CFC
_0800EE64:
	.4byte 0x84000020
_0800EE68:
	.4byte gUnknown_082F8F0C
_0800EE6C:
	.4byte gUnknown_082EB118
	THUMB_FUNC_END sub_0800ED18

	THUMB_FUNC_START sub_0800EE70
sub_0800EE70: @ 0x0800EE70
	push {r4,r5,lr}
	ldr r0, _0800EEB4  @ =gLivesCount
	ldrb r5, [r0]
	ldr r4, _0800EEB8  @ =gUnknown_03000A10
	add r0, r4, #0
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800EEAC
	bl sub_0806D7EC
	lsl r1, r5, #24
	asr r1, r1, #24
	ldr r0, _0800EEBC  @ =0x0000199A
	mul r0, r1, r0
	asr r3, r0, #16
	strb r3, [r4, #13]
	ldrb r2, [r4, #13]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #1
	sub r1, r1, r0
	strb r1, [r4, #12]
	lsl r1, r1, #24
	lsr r1, r1, #24
	cmp r1, #9
	bls _0800EEAA
	mov r0, #9
	strb r0, [r4, #12]
_0800EEAA:
	strb r3, [r4, #13]
_0800EEAC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800EEB4:
	.4byte gLivesCount
_0800EEB8:
	.4byte gUnknown_03000A10
_0800EEBC:
	.4byte 0x0000199A
	THUMB_FUNC_END sub_0800EE70

	THUMB_FUNC_START sub_0800EEC0
sub_0800EEC0: @ 0x0800EEC0
	bx lr
	THUMB_FUNC_END sub_0800EEC0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EEC4
sub_0800EEC4: @ 0x0800EEC4
	bx lr
	THUMB_FUNC_END sub_0800EEC4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EEC8
sub_0800EEC8: @ 0x0800EEC8
	push {r4,r5,lr}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _0800EF08  @ =gUnknown_03000A10
	add r4, r2, #0
	add r4, r4, #55
	ldrb r1, [r4]
	orr r0, r0, r1
	strb r0, [r4]
	add r5, r2, #0
	add r5, r5, #56
	ldrb r1, [r5]
	cmp r1, #0
	bne _0800EEFA
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0800EEFA:
	ldrb r0, [r4]
	strb r0, [r5]
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800EF08:
	.4byte gUnknown_03000A10
	THUMB_FUNC_END sub_0800EEC8

	THUMB_FUNC_START sub_0800EF0C
sub_0800EF0C: @ 0x0800EF0C
	ldr r0, _0800EF18  @ =gUnknown_03000A10
	add r0, r0, #48
	mov r1, #0
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0800EF18:
	.4byte gUnknown_03000A10
	THUMB_FUNC_END sub_0800EF0C

	THUMB_FUNC_START sub_0800EF1C
sub_0800EF1C: @ 0x0800EF1C
	ldr r0, _0800EF2C  @ =gUnknown_03000A10
	add r2, r0, #0
	add r2, r2, #55
	mov r1, #0
	strb r1, [r2]
	add r0, r0, #56
	strb r1, [r0]
	bx lr
_0800EF2C:
	.4byte gUnknown_03000A10
	THUMB_FUNC_END sub_0800EF1C

	THUMB_FUNC_START sub_0800EF30
sub_0800EF30: @ 0x0800EF30
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r4, _0800EF5C  @ =gUnknown_03000A10
	add r0, r4, #0
	add r0, r0, #57
	mov r5, #0
	strb r5, [r0]
	bl sub_0801B310
	bl sub_08033658
	add r1, r0, #0
	cmp r1, #0
	beq _0800EF60
	add r0, r4, #0
	add r0, r0, #52
	strb r5, [r0]
	mov r0, #64
	bl sub_08071E14
	mov r0, #3
	b _0800EF82
_0800EF5C:
	.4byte gUnknown_03000A10
_0800EF60:
	add r2, r4, #0
	add r2, r2, #182
	ldrb r0, [r2]
	cmp r0, #1
	bne _0800EF80
	strb r1, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #65
	mov r1, #8
	mov r2, #1
	mov r3, #64
	bl sub_08071990
_0800EF80:
	mov r0, #2
_0800EF82:
	add sp, sp, #12
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800EF30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EF8C
sub_0800EF8C: @ 0x0800EF8C
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r4, _0800EFB4  @ =gUnknown_03000A10
	add r0, r4, #0
	add r0, r0, #57
	mov r5, #0
	strb r5, [r0]
	bl sub_0801B310
	add r4, r4, #52
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #14
	bhi _0800EFB8
	mov r0, #3
	b _0800EFCE
	.byte 0x00
	.byte 0x00
_0800EFB4:
	.4byte gUnknown_03000A10
_0800EFB8:
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #1
	mov r3, #64
	bl sub_08071990
	mov r0, #0
_0800EFCE:
	add sp, sp, #12
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800EF8C

	.byte 0x00
	.byte 0x00
