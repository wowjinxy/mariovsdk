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
