	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_0801488C
sub_0801488C: @ 0x0801488C
	push {lr}
	ldr r0, _080148A0  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801489A
	bl write_flash_sector_0802A164
_0801489A:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080148A0:
	.4byte gUnknown_03000B50
	THUMB_FUNC_END sub_0801488C

	THUMB_FUNC_START sub_080148A4
sub_080148A4: @ 0x080148A4
	push {r4,lr}
	add r4, r0, #0
	lsl r1, r1, #24
	ldr r3, _080148CC  @ =gSaveFilesPtr
	ldr r0, _080148D0  @ =gSelectedSaveFileNumPtr
	ldr r0, [r0]
	ldrb r2, [r0]
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r2, [r3]
	add r2, r2, r0
	cmp r1, #0
	beq _080148D4
	ldr r0, [r2, #4]
	orr r0, r0, r4
	b _080148D8
	.byte 0x00
	.byte 0x00
_080148CC:
	.4byte gSaveFilesPtr
_080148D0:
	.4byte gSelectedSaveFileNumPtr
_080148D4:
	ldr r0, [r2, #4]
	bic r0, r0, r4
_080148D8:
	str r0, [r2, #4]
	ldr r0, _080148EC  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _080148E6
	bl write_flash_sector_0802A164
_080148E6:
	pop {r4}
	pop {r0}
	bx r0
_080148EC:
	.4byte gUnknown_03000B50
	THUMB_FUNC_END sub_080148A4

	THUMB_FUNC_START sub_080148F0
sub_080148F0: @ 0x080148F0
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _08014920  @ =gSaveFilesPtr
	ldr r0, _08014924  @ =gSelectedSaveFileNumPtr
	ldr r0, [r0]
	ldrb r2, [r0]
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r3, r1, r0
	cmp r4, #1
	bne _0801493C
	cmp r2, #2
	bhi _08014928
	ldrb r1, [r3, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08014928
	mov r0, #1
	b _0801492A
_08014920:
	.4byte gSaveFilesPtr
_08014924:
	.4byte gSelectedSaveFileNumPtr
_08014928:
	mov r0, #0
_0801492A:
	cmp r0, #0
	bne _08014948
	ldr r0, [r3, #4]
	mov r1, #2
	neg r1, r1
	and r0, r0, r1
	str r0, [r3, #4]
	mov r0, #0
	b _0801494A
_0801493C:
	ldr r0, [r3, #4]
	and r0, r0, r4
	cmp r0, #0
	bne _08014948
	mov r0, #0
	b _0801494A
_08014948:
	mov r0, #1
_0801494A:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080148F0

	THUMB_FUNC_START sub_08014950
sub_08014950: @ 0x08014950
	push {r4,lr}
	add r4, r1, #0
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _08014980  @ =gSaveFilesPtr
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r3, r1, r0
	cmp r4, #1
	bne _08014998
	cmp r2, #2
	bhi _08014984
	ldrb r1, [r3, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08014984
	mov r0, #1
	b _08014986
	.byte 0x00
	.byte 0x00
_08014980:
	.4byte gSaveFilesPtr
_08014984:
	mov r0, #0
_08014986:
	cmp r0, #0
	bne _080149A4
	ldr r0, [r3, #4]
	mov r1, #2
	neg r1, r1
	and r0, r0, r1
	str r0, [r3, #4]
	mov r0, #0
	b _080149A6
_08014998:
	ldr r0, [r3, #4]
	and r0, r0, r4
	cmp r0, #0
	bne _080149A4
	mov r0, #0
	b _080149A6
_080149A4:
	mov r0, #1
_080149A6:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08014950

	THUMB_FUNC_START sub_080149AC
sub_080149AC: @ 0x080149AC
	ldr r2, _080149CC  @ =gSaveFilesPtr
	ldr r0, _080149D0  @ =gSelectedSaveFileNumPtr
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r1, r1, r0
	ldr r0, [r1, #4]
	mov r1, #128
	lsl r1, r1, #24
	and r0, r0, r1
	bx lr
_080149CC:
	.4byte gSaveFilesPtr
_080149D0:
	.4byte gSelectedSaveFileNumPtr
	THUMB_FUNC_END sub_080149AC

	THUMB_FUNC_START sub_080149D4
sub_080149D4: @ 0x080149D4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080149F4  @ =gSaveFilesPtr
	lsl r1, r0, #3
	sub r1, r1, r0
	lsl r1, r1, #5
	sub r1, r1, r0
	lsl r1, r1, #2
	ldr r0, [r2]
	add r0, r0, r1
	ldr r0, [r0, #4]
	mov r1, #128
	lsl r1, r1, #24
	and r0, r0, r1
	bx lr
	.byte 0x00
	.byte 0x00
_080149F4:
	.4byte gSaveFilesPtr
	THUMB_FUNC_END sub_080149D4

	THUMB_FUNC_START sub_080149F8
sub_080149F8: @ 0x080149F8
	push {lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _08014A28  @ =gSaveFilesPtr
	ldr r0, _08014A2C  @ =gSelectedSaveFileNumPtr
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r1, r1, r0
	ldr r0, _08014A30  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08014A22
	strb r3, [r1]
_08014A22:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08014A28:
	.4byte gSaveFilesPtr
_08014A2C:
	.4byte gSelectedSaveFileNumPtr
_08014A30:
	.4byte gLevelEWorldFlag
	THUMB_FUNC_END sub_080149F8

	THUMB_FUNC_START sub_08014A34
sub_08014A34: @ 0x08014A34
	ldr r2, _08014A50  @ =gSaveFilesPtr
	ldr r0, _08014A54  @ =gSelectedSaveFileNumPtr
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r1, r1, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	bx lr
_08014A50:
	.4byte gSaveFilesPtr
_08014A54:
	.4byte gSelectedSaveFileNumPtr
	THUMB_FUNC_END sub_08014A34

	THUMB_FUNC_START sub_08014A58
sub_08014A58: @ 0x08014A58
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	ldr r2, _08014AA8  @ =gSaveFilesPtr
	ldr r0, _08014AAC  @ =gSelectedSaveFileNumPtr
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r3, r1, r0
	ldr r0, _08014AB0  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08014AA2
	ldr r2, _08014AB4  @ =gLivesCount
	ldrb r1, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #98
	ble _08014A94
	lsl r0, r4, #24
	cmp r0, #0
	bgt _08014AA2
_08014A94:
	lsl r0, r5, #24
	asr r0, r0, #24
	add r1, r0, r1
	strb r1, [r2]
	ldrb r1, [r3]
	add r0, r0, r1
	strb r0, [r3]
_08014AA2:
	pop {r4,r5}
	pop {r0}
	bx r0
_08014AA8:
	.4byte gSaveFilesPtr
_08014AAC:
	.4byte gSelectedSaveFileNumPtr
_08014AB0:
	.4byte gLevelEWorldFlag
_08014AB4:
	.4byte gLivesCount
	THUMB_FUNC_END sub_08014A58

	THUMB_FUNC_START sub_08014AB8
sub_08014AB8: @ 0x08014AB8
	ldr r2, _08014AD4  @ =gSaveFilesPtr
	ldr r0, _08014AD8  @ =gSelectedSaveFileNumPtr
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r1, r1, r0
	ldrb r0, [r1, #8]
	bx lr
	.byte 0x00
	.byte 0x00
_08014AD4:
	.4byte gSaveFilesPtr
_08014AD8:
	.4byte gSelectedSaveFileNumPtr
	THUMB_FUNC_END sub_08014AB8

	THUMB_FUNC_START sub_08014ADC
sub_08014ADC: @ 0x08014ADC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsl r1, r1, #24
	lsl r2, r2, #16
	ldr r5, _08014B1C  @ =gSaveFilesPtr
	ldr r3, _08014B20  @ =gSelectedSaveFileNumPtr
	ldr r3, [r3]
	ldrb r4, [r3]
	lsl r3, r4, #3
	sub r3, r3, r4
	lsl r3, r3, #5
	sub r3, r3, r4
	lsl r3, r3, #2
	ldr r4, [r5]
	add r4, r4, r3
	lsr r1, r1, #25
	ldr r3, _08014B24  @ =gCurrentPresentScore
	lsr r0, r0, #21
	add r0, r0, r1
	lsl r0, r0, #3
	add r4, r4, r0
	lsr r2, r2, #16
	ldrh r0, [r4, #12]
	add r2, r2, r0
	strh r2, [r4, #12]
	lsl r2, r2, #16
	lsr r2, r2, #16
	str r2, [r3]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08014B1C:
	.4byte gSaveFilesPtr
_08014B20:
	.4byte gSelectedSaveFileNumPtr
_08014B24:
	.4byte gCurrentPresentScore
	THUMB_FUNC_END sub_08014ADC

	THUMB_FUNC_START sub_08014B28
sub_08014B28: @ 0x08014B28
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r2, sp
	mov r1, #0
	strh r1, [r2]
	ldr r5, _08014B6C  @ =gSaveFilesPtr
	lsl r4, r0, #3
	sub r4, r4, r0
	lsl r4, r4, #5
	sub r4, r4, r0
	lsl r4, r4, #2
	ldr r1, [r5]
	add r1, r1, r4
	ldr r2, _08014B70  @ =0x010001BE
	mov r0, sp
	bl CpuSet
	ldr r0, [r5]
	add r0, r0, r4
	bl init_level_highscores_08010DEC
	ldr r0, _08014B74  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _08014B62
	bl write_flash_sector_0802A164
_08014B62:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08014B6C:
	.4byte gSaveFilesPtr
_08014B70:
	.4byte 0x010001BE
_08014B74:
	.4byte gUnknown_03000B50
	THUMB_FUNC_END sub_08014B28

	THUMB_FUNC_START sub_08014B78
sub_08014B78: @ 0x08014B78
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r5, _08014BB0  @ =gSaveFilesPtr
	lsl r4, r0, #3
	sub r4, r4, r0
	lsl r4, r4, #5
	sub r4, r4, r0
	lsl r4, r4, #2
	ldr r5, [r5]
	add r5, r5, r4
	ldrb r4, [r5, #2]
	mov r0, #15
	and r0, r0, r4
	ldrb r4, [r5, #3]
	strb r4, [r3]
	strb r0, [r2]
	ldrb r0, [r5, #2]
	lsr r0, r0, #4
	mov r2, #7
	and r0, r0, r2
	strb r0, [r1]
	ldrb r0, [r5, #3]
	strb r0, [r3]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08014BB0:
	.4byte gSaveFilesPtr
	THUMB_FUNC_END sub_08014B78

	THUMB_FUNC_START sub_08014BB4
sub_08014BB4: @ 0x08014BB4
	push {lr}
	sub sp, sp, #4
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, sp
	bl get_level_stats_0800FE2C
	lsl r0, r0, #24
	lsr r0, r0, #24
	add sp, sp, #4
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08014BB4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08014BD0
sub_08014BD0: @ 0x08014BD0
	push {lr}
	sub sp, sp, #4
	mov r0, #4
	mov r1, #0
	mov r2, #0
	mov r3, sp
	bl get_level_stats_0800FE2C
	lsl r0, r0, #24
	lsr r0, r0, #24
	add sp, sp, #4
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08014BD0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08014BEC
sub_08014BEC: @ 0x08014BEC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _08014C0C  @ =gSaveFilesPtr
	lsl r1, r0, #3
	sub r1, r1, r0
	lsl r1, r1, #5
	sub r1, r1, r0
	lsl r1, r1, #2
	ldr r0, [r2]
	add r0, r0, r1
	ldr r0, [r0, #4]
	cmp r0, #0
	blt _08014C10
	mov r0, #0
	b _08014C12
_08014C0C:
	.4byte gSaveFilesPtr
_08014C10:
	mov r0, #1
_08014C12:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08014BEC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08014C18
sub_08014C18: @ 0x08014C18
	push {lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _08014C54  @ =gSaveFilesPtr
	ldr r0, _08014C58  @ =gSelectedSaveFileNumPtr
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r2, r1, r0
	ldr r1, _08014C5C  @ =0x00000313
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08014C64
	ldr r0, _08014C60  @ =gExpertLevelsStarsNeeded
	add r0, r3, r0
	ldrb r1, [r2, #8]
	ldrb r0, [r0]
	cmp r1, r0
	bcc _08014C64
	mov r0, #1
	b _08014C66
	.byte 0x00
	.byte 0x00
_08014C54:
	.4byte gSaveFilesPtr
_08014C58:
	.4byte gSelectedSaveFileNumPtr
_08014C5C:
	.4byte 0x00000313
_08014C60:
	.4byte gExpertLevelsStarsNeeded
_08014C64:
	mov r0, #0
_08014C66:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08014C18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08014C6C
sub_08014C6C: @ 0x08014C6C
	push {lr}
	ldr r2, _08014CBC  @ =gSaveFilesPtr
	ldr r0, _08014CC0  @ =gSelectedSaveFileNumPtr
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r3, r1, r0
	ldr r1, _08014CC4  @ =0x00000313
	add r0, r3, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08014CCC
	mov r2, #0
	ldr r1, _08014CC8  @ =gExpertLevelsStarsNeeded
	ldrb r0, [r3, #8]
	ldrb r3, [r1]
	cmp r0, r3
	bcc _08014CB4
	add r3, r1, #0
	add r1, r0, #0
_08014CA2:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #11
	bhi _08014CB4
	add r0, r2, r3
	ldrb r0, [r0]
	cmp r1, r0
	bcs _08014CA2
_08014CB4:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _08014CCE
_08014CBC:
	.4byte gSaveFilesPtr
_08014CC0:
	.4byte gSelectedSaveFileNumPtr
_08014CC4:
	.4byte 0x00000313
_08014CC8:
	.4byte gExpertLevelsStarsNeeded
_08014CCC:
	mov r0, #0
_08014CCE:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08014C6C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08014CD4
sub_08014CD4: @ 0x08014CD4
	ldr r2, _08014CFC  @ =gSaveFilesPtr
	ldr r0, _08014D00  @ =gSelectedSaveFileNumPtr
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r1, r1, r0
	ldr r0, _08014D04  @ =0x0000036B
	add r1, r1, r0
	ldrb r1, [r1]
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	bx lr
	.byte 0x00
	.byte 0x00
_08014CFC:
	.4byte gSaveFilesPtr
_08014D00:
	.4byte gSelectedSaveFileNumPtr
_08014D04:
	.4byte 0x0000036B
	THUMB_FUNC_END sub_08014CD4

	THUMB_FUNC_START sub_08014D08
sub_08014D08: @ 0x08014D08
	push {r4,r5,lr}
	mov r4, #0
	ldr r5, _08014D30  @ =gUnknown_03000066
_08014D0E:
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
	ble _08014D0E
	pop {r4,r5}
	pop {r0}
	bx r0
_08014D30:
	.4byte gUnknown_03000066
	THUMB_FUNC_END sub_08014D08

	THUMB_FUNC_START sub_08014D34
sub_08014D34: @ 0x08014D34
	ldr r2, _08014D50  @ =gSaveFilesPtr
	ldr r0, _08014D54  @ =gSelectedSaveFileNumPtr
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r1, r1, r0
	ldrb r0, [r1, #9]
	bx lr
	.byte 0x00
	.byte 0x00
_08014D50:
	.4byte gSaveFilesPtr
_08014D54:
	.4byte gSelectedSaveFileNumPtr
	THUMB_FUNC_END sub_08014D34

	THUMB_FUNC_START sub_08014D58
sub_08014D58: @ 0x08014D58
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _08014D70  @ =gSaveFilesPtr
	lsl r1, r0, #3
	sub r1, r1, r0
	lsl r1, r1, #5
	sub r1, r1, r0
	lsl r1, r1, #2
	ldr r0, [r2]
	add r0, r0, r1
	ldrb r0, [r0, #8]
	bx lr
_08014D70:
	.4byte gSaveFilesPtr
	THUMB_FUNC_END sub_08014D58

	THUMB_FUNC_START sub_08014D74
sub_08014D74: @ 0x08014D74
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _08014DAC  @ =gSaveFilesPtr
	lsl r1, r0, #3
	sub r1, r1, r0
	lsl r1, r1, #5
	sub r1, r1, r0
	lsl r1, r1, #2
	ldr r2, [r2]
	add r2, r2, r1
	cmp r0, #3
	beq _08014DB8
	ldr r1, _08014DB0  @ =0x00000313
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08014DB8
	ldr r1, _08014DB4  @ =gExpertLevelsStarsNeeded
	ldrb r0, [r2, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08014DB8
	mov r0, #1
	b _08014DBA
	.byte 0x00
	.byte 0x00
_08014DAC:
	.4byte gSaveFilesPtr
_08014DB0:
	.4byte 0x00000313
_08014DB4:
	.4byte gExpertLevelsStarsNeeded
_08014DB8:
	mov r0, #0
_08014DBA:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08014D74

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08014DC0
sub_08014DC0: @ 0x08014DC0
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _08014DD8  @ =gSaveFilesPtr
	lsl r1, r0, #3
	sub r1, r1, r0
	lsl r1, r1, #5
	sub r1, r1, r0
	lsl r1, r1, #2
	ldr r0, [r2]
	add r0, r0, r1
	ldrb r0, [r0, #9]
	bx lr
_08014DD8:
	.4byte gSaveFilesPtr
	THUMB_FUNC_END sub_08014DC0

	THUMB_FUNC_START sub_08014DDC
sub_08014DDC: @ 0x08014DDC
	ldr r2, _08014DF8  @ =gSaveFilesPtr
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r1, r0, #3
	sub r1, r1, r0
	lsl r1, r1, #5
	sub r1, r1, r0
	lsl r1, r1, #2
	ldr r0, [r2]
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bx lr
_08014DF8:
	.4byte gSaveFilesPtr
	THUMB_FUNC_END sub_08014DDC

	THUMB_FUNC_START sub_08014DFC @ unused -- seems to be able to to set the current mode to the level editor
sub_08014DFC: @ 0x08014DFC
	push {r4,r5,lr}
	ldr r0, _08014E24  @ =0x04000150
	ldr r2, [r0]
	mov r4, #0
	sub r0, r0, #16
	ldrh r0, [r0]
	add r5, r0, #0
	ldr r0, _08014E28  @ =0x04000158
	ldrh r0, [r0]
	ldr r0, _08014E2C  @ =0x03000BC8
	ldr r1, [r0]
	add r3, r0, #0
	cmp r1, #2
	beq _08014E3A
	cmp r1, #2
	bhi _08014E30
	cmp r1, #1
	beq _08014E36
	b _08014ECC
	.byte 0x00
	.byte 0x00
_08014E24:
	.4byte 0x04000150
_08014E28:
	.4byte 0x04000158
_08014E2C:
	.4byte 0x03000BC8
_08014E30:
	cmp r1, #3
	beq _08014E78
	b _08014ECC
_08014E36:
	mov r0, #2
	str r0, [r3]
_08014E3A:
	mov r0, #2
	and r0, r0, r5
	cmp r0, #0
	beq _08014ED0
	mov r0, #4
	neg r0, r0
	cmp r2, r0
	bne _08014E4E
	add r4, r2, #0
	b _08014ED0
_08014E4E:
	mov r0, #2
	neg r0, r0
	cmp r2, r0
	bne _08014ED0
	add r4, r2, #0
	mov r0, #3
	str r0, [r3]
	ldr r2, _08014E6C  @ =0x03000BC4
	ldr r1, _08014E70  @ =0x03000BC0
	ldr r0, _08014E74  @ =gEWRAMBasePtr
	ldr r0, [r0]
	str r0, [r1]
	str r0, [r2]
	b _08014ED0
	.byte 0x00
	.byte 0x00
_08014E6C:
	.4byte 0x03000BC4
_08014E70:
	.4byte 0x03000BC0
_08014E74:
	.4byte gEWRAMBasePtr
_08014E78:
	mov r1, #2
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08014ED0
	mov r0, #1
	neg r0, r0
	cmp r2, r0
	beq _08014E96
	sub r0, r0, #3
	cmp r2, r0
	beq _08014E96
	add r0, r0, #2
	cmp r2, r0
	bne _08014E9C
_08014E96:
	mov r4, #4
	neg r4, r4
	b _08014ECC
_08014E9C:
	mov r0, #3
	neg r0, r0
	cmp r2, r0
	bne _08014EB6
	add r4, r2, #0
	str r1, [r3]
	bl sub_08006A0C
	mov r0, #11 @ 0xb -- level editor 
	mov r1, #0
	bl change_main_state
	b _08014ED0
_08014EB6:
	ldr r1, _08014EC8  @ =0x03000BC0
	ldr r0, [r1]
	str r2, [r0]
	add r4, r2, #0
	ldr r0, [r1]
	add r0, r0, #4
	str r0, [r1]
	b _08014ED0
	.byte 0x00
	.byte 0x00
_08014EC8:
	.4byte 0x03000BC0
_08014ECC:
	mov r0, #2
	str r0, [r3]
_08014ED0:
	ldr r0, _08014F00  @ =0x04000154
	str r4, [r0]
	mov r2, #1
	and r2, r2, r5
	cmp r2, #0
	beq _08014F0C
	ldr r0, _08014F04  @ =0x0300006D
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08014EF8
	ldr r1, _08014F08  @ =0x0300006C
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #29
	bls _08014EF8
	bl sub_080747B8
_08014EF8:
	ldr r1, _08014F04  @ =0x0300006D
	mov r0, #0
	b _08014F2A
	.byte 0x00
	.byte 0x00
_08014F00:
	.4byte 0x04000154
_08014F04:
	.4byte 0x0300006D
_08014F08:
	.4byte 0x0300006C
_08014F0C:
	ldr r1, _08014F20  @ =0x0300006D
	ldrb r0, [r1]
	cmp r0, #1
	bls _08014F28
	mov r0, #2
	strb r0, [r1]
	ldr r0, _08014F24  @ =0x0300006C
	strb r2, [r0]
	b _08014F2C
	.byte 0x00
	.byte 0x00
_08014F20:
	.4byte 0x0300006D
_08014F24:
	.4byte 0x0300006C
_08014F28:
	add r0, r0, #1
_08014F2A:
	strb r0, [r1]
_08014F2C:
	ldr r0, _08014F38  @ =0x04000140
	strh r5, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08014F38:
	.4byte 0x04000140
	THUMB_FUNC_END sub_08014DFC

	THUMB_FUNC_START sub_08014F3C
sub_08014F3C: @ 0x08014F3C
	push {r4,lr}
	ldr r0, _08014F60  @ =0x04000150
	ldr r1, [r0]
	mov r3, #0
	sub r0, r0, #16
	ldrh r0, [r0]
	add r4, r0, #0
	ldr r0, _08014F64  @ =0x04000158
	ldrh r0, [r0]
	ldr r2, _08014F68  @ =0x03000BC8
	ldr r0, [r2]
	cmp r0, #0
	beq _08014F6C
	cmp r0, #1
	beq _08014F84
	str r3, [r2]
	b _08014FA0
	.byte 0x00
	.byte 0x00
_08014F60:
	.4byte 0x04000150
_08014F64:
	.4byte 0x04000158
_08014F68:
	.4byte 0x03000BC8
_08014F6C:
	mov r0, #2
	and r0, r0, r4
	cmp r0, #0
	beq _08014FA0
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08014FA0
	add r3, r1, #0
	mov r0, #1
	str r0, [r2]
	b _08014FA0
_08014F84:
	mov r0, #2
	and r0, r0, r4
	cmp r0, #0
	beq _08014FA0
	mov r0, #4
	neg r0, r0
	cmp r1, r0
	beq _08014F9C
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08014FA0
_08014F9C:
	mov r3, #1
	neg r3, r3
_08014FA0:
	ldr r0, _08014FD0  @ =0x04000154
	str r3, [r0]
	mov r2, #1
	and r2, r2, r4
	cmp r2, #0
	beq _08014FDC
	ldr r0, _08014FD4  @ =0x0300006F
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08014FC8
	ldr r1, _08014FD8  @ =0x0300006E
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #29
	bls _08014FC8
	bl sub_080747B8
_08014FC8:
	ldr r1, _08014FD4  @ =0x0300006F
	mov r0, #0
	b _08014FFA
	.byte 0x00
	.byte 0x00
_08014FD0:
	.4byte 0x04000154
_08014FD4:
	.4byte 0x0300006F
_08014FD8:
	.4byte 0x0300006E
_08014FDC:
	ldr r1, _08014FF0  @ =0x0300006F
	ldrb r0, [r1]
	cmp r0, #1
	bls _08014FF8
	mov r0, #2
	strb r0, [r1]
	ldr r0, _08014FF4  @ =0x0300006E
	strb r2, [r0]
	b _08014FFC
	.byte 0x00
	.byte 0x00
_08014FF0:
	.4byte 0x0300006F
_08014FF4:
	.4byte 0x0300006E
_08014FF8:
	add r0, r0, #1
_08014FFA:
	strb r0, [r1]
_08014FFC:
	ldr r0, _08015008  @ =0x04000140
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08015008:
	.4byte 0x04000140
	THUMB_FUNC_END sub_08014F3C

	THUMB_FUNC_START sub_0801500C
sub_0801500C: @ 0x0801500C
	ldr r1, _08015014  @ =0x03000BCC
	str r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08015014:
	.4byte 0x03000BCC
	THUMB_FUNC_END sub_0801500C

	THUMB_FUNC_START sub_08015018
sub_08015018: @ 0x08015018
	push {lr}
	ldr r0, _08015034  @ =0x03000BC0
	ldr r1, _08015038  @ =0x03000BC4
	ldr r0, [r0]
	ldr r1, [r1]
	sub r0, r0, r1
	asr r0, r0, #2
	mov r1, #128
	lsl r1, r1, #3
	cmp r0, r1
	bgt _0801503C
	mov r0, #0
	b _0801503E
	.byte 0x00
	.byte 0x00
_08015034:
	.4byte 0x03000BC0
_08015038:
	.4byte 0x03000BC4
_0801503C:
	mov r0, #1
_0801503E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08015018

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08015044
sub_08015044: @ 0x08015044
	ldr r3, _08015054  @ =0x04000140
	ldrh r1, [r3]
	ldr r2, _08015058  @ =0x04000154
	mov r0, #0
	strh r0, [r2]
	strh r1, [r3]
	bx lr
	.byte 0x00
	.byte 0x00
_08015054:
	.4byte 0x04000140
_08015058:
	.4byte 0x04000154
	THUMB_FUNC_END sub_08015044

	THUMB_FUNC_START sub_0801505C
sub_0801505C: @ 0x0801505C
	push {r4,lr}
	ldr r1, _080150AC  @ =0x08015045
	ldr r0, _080150B0  @ =0x03000BCC
	str r1, [r0]
	ldr r4, _080150B4  @ =0x04000208
	mov r0, #0
	strh r0, [r4]
	ldr r3, _080150B8  @ =0x04000200
	ldrh r1, [r3]
	ldr r0, _080150BC  @ =0x0000FF7F
	and r0, r0, r1
	strh r0, [r3]
	ldr r1, _080150C0  @ =0x04000134
	mov r2, #192
	lsl r2, r2, #8
	add r0, r2, #0
	strh r0, [r1]
	ldr r0, _080150C4  @ =0x04000154
	mov r2, #0
	str r2, [r0]
	add r1, r1, #12
	mov r0, #71
	strh r0, [r1]
	ldr r0, _080150C8  @ =0x04000202
	mov r1, #128
	strh r1, [r0]
	ldrh r0, [r3]
	orr r0, r0, r1
	strh r0, [r3]
	mov r0, #1
	strh r0, [r4]
	ldr r0, _080150CC  @ =0x03000BC8
	str r2, [r0]
	ldr r1, _080150D0  @ =0x03000BC0
	ldr r0, _080150D4  @ =0x03000BC4
	str r2, [r0]
	str r2, [r1]
	pop {r4}
	pop {r0}
	bx r0
_080150AC:
	.4byte sub_08015044
_080150B0:
	.4byte 0x03000BCC
_080150B4:
	.4byte 0x04000208
_080150B8:
	.4byte 0x04000200
_080150BC:
	.4byte 0x0000FF7F
_080150C0:
	.4byte 0x04000134
_080150C4:
	.4byte 0x04000154
_080150C8:
	.4byte 0x04000202
_080150CC:
	.4byte 0x03000BC8
_080150D0:
	.4byte 0x03000BC0
_080150D4:
	.4byte 0x03000BC4
	THUMB_FUNC_END sub_0801505C

	THUMB_FUNC_START sub_080150D8
sub_080150D8: @ 0x080150D8
	push {lr}
	ldr r0, _080150EC  @ =0x03000BCC
	ldr r0, [r0]
	cmp r0, #0
	beq _080150E6
	bl _call_via_r0
_080150E6:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080150EC:
	.4byte 0x03000BCC
	THUMB_FUNC_END sub_080150D8
