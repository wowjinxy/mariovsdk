	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_0801BAD8
sub_0801BAD8: @ 0x0801BAD8
	push {r4-r7,lr}
	sub sp, sp, #16
	ldr r0, _0801BB04  @ =gUnknown_03000BEC
	ldrb r3, [r0]
	cmp r3, #0
	beq _0801BB44
	ldr r0, _0801BB08  @ =gUnknown_030000B6
	ldrh r0, [r0]
	cmp r0, #60
	bls _0801BB34
	ldr r0, _0801BB0C  @ =0x03000BF4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801BB10
	mov r0, #14
	mov r1, #0
	bl sub_080070E8
	b _0801BB34
	.byte 0x00
	.byte 0x00
_0801BB04:
	.4byte gUnknown_03000BEC
_0801BB08:
	.4byte gUnknown_030000B6
_0801BB0C:
	.4byte 0x03000BF4
_0801BB10:
	ldr r0, _0801BB28  @ =gUnknown_03000B80
	ldrb r0, [r0]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0801BB2C
	mov r0, #9
	mov r1, #1
	bl sub_080070E8
	b _0801BB34
_0801BB28:
	.4byte gUnknown_03000B80
_0801BB2C:
	mov r0, #8
	mov r1, #1
	bl sub_080070E8
_0801BB34:
	ldr r1, _0801BB40  @ =gUnknown_030000B6
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	b _0801BE1C
	.byte 0x00
	.byte 0x00
_0801BB40:
	.4byte gUnknown_030000B6
_0801BB44:
	ldr r2, _0801BB74  @ =gUnknown_030012E8
	ldrh r1, [r2]
	mov r0, #64
	and r0, r0, r1
	add r5, r2, #0
	cmp r0, #0
	beq _0801BB80
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _0801BB78  @ =gUnknown_030000B4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801BB7C
	sub r0, r0, #1
	b _0801BB7E
	.byte 0x00
	.byte 0x00
_0801BB74:
	.4byte gUnknown_030012E8
_0801BB78:
	.4byte gUnknown_030000B4
_0801BB7C:
	mov r0, #2
_0801BB7E:
	strb r0, [r1]
_0801BB80:
	ldrh r1, [r5]
	mov r2, #128
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0801BBB6
	mov r4, #0
	str r4, [sp]
	str r2, [sp, #4]
	str r4, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _0801BBB0  @ =gUnknown_030000B4
	ldrb r0, [r1]
	cmp r0, #1
	bhi _0801BBB4
	add r0, r0, #1
	strb r0, [r1]
	b _0801BBB6
	.byte 0x00
	.byte 0x00
_0801BBB0:
	.4byte gUnknown_030000B4
_0801BBB4:
	strb r4, [r1]
_0801BBB6:
	ldrh r1, [r5]
	mov r2, #9
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0801BBC4
	b _0801BDE8
_0801BBC4:
	ldr r0, _0801BBD8  @ =gUnknown_030000B4
	ldrb r5, [r0]
	cmp r5, #1
	beq _0801BBEC
	cmp r5, #1
	bgt _0801BBDC
	cmp r5, #0
	beq _0801BBE2
	b _0801BE1C
	.byte 0x00
	.byte 0x00
_0801BBD8:
	.4byte gUnknown_030000B4
_0801BBDC:
	cmp r5, #2
	beq _0801BCB4
	b _0801BE1C
_0801BBE2:
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	b _0801BE04
_0801BBEC:
	ldr r0, _0801BC1C  @ =gLevelEWorldFlag
	mov r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	beq _0801BC20
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	bl sub_080720AC
	mov r0, #14
	mov r1, #0
	bl sub_080070E8
	b _0801BE1C
	.byte 0x00
	.byte 0x00
_0801BC1C:
	.4byte gLevelEWorldFlag
_0801BC20:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #114
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #1
	neg r0, r0
	bl sub_08014A58
	ldr r0, _0801BC5C  @ =gLivesCount
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0801BC6C
	bl sub_0800F010
	ldr r0, _0801BC60  @ =gUnknown_03000BEC
	strb r5, [r0]
	ldr r0, _0801BC64  @ =gUnknown_030000B6
	mov r1, #0
	strh r4, [r0]
	ldr r0, _0801BC68  @ =0x03000BF4
	strb r1, [r0]
	b _0801BC96
_0801BC5C:
	.4byte gLivesCount
_0801BC60:
	.4byte gUnknown_03000BEC
_0801BC64:
	.4byte gUnknown_030000B6
_0801BC68:
	.4byte 0x03000BF4
_0801BC6C:
	ldr r3, _0801BCA8  @ =gUnknown_030019A0
	ldr r1, _0801BCAC  @ =gNextLevelInLevelTable
	ldr r2, [r1, #32]
	mov r0, #15
	and r2, r2, r0
	mov r4, #18
	ldrsh r0, [r1, r4]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r3]
	orr r0, r0, r2
	str r0, [r3]
	mov r0, #20
	mov r1, #1
	bl sub_080070E8
	ldr r0, _0801BCB0  @ =gUnknown_03000BD0
	str r5, [r0]
_0801BC96:
	ldr r0, _0801BCA8  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #21
	orr r1, r1, r2
	str r1, [r0]
_0801BCA2:
	bl sub_080720AC
	b _0801BE1C
_0801BCA8:
	.4byte gUnknown_030019A0
_0801BCAC:
	.4byte gNextLevelInLevelTable
_0801BCB0:
	.4byte gUnknown_03000BD0
_0801BCB4:
	ldr r0, _0801BD3C  @ =gNextLevelID
	mov r6, #0
	ldrsb r6, [r0, r6]
	ldr r3, _0801BD40  @ =gUnknown_030019A0
	ldr r0, _0801BD44  @ =gNextLevelInLevelTable
	ldr r4, [r0, #32]
	mov r2, #15
	and r2, r2, r4
	mov r1, #18
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r3]
	orr r0, r0, r2
	str r0, [r3]
	ldr r0, _0801BD48  @ =gUnknown_03000B80
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r7, r0, #0
	cmp r1, #0
	bne _0801BCEE
	asr r6, r6, #1
	and r4, r4, r5
	cmp r4, #0
	beq _0801BCEE
	mov r6, #7
_0801BCEE:
	mov r0, #0
	ldrsb r0, [r7, r0]
	ldr r1, _0801BD4C  @ =gAfterTutorialWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r2, r6, #0
	add r3, sp, #12
	bl sub_0800FE2C
	add r4, r0, #0
	cmp r4, #0
	bne _0801BD14
	ldr r0, _0801BD50  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0801BD5E
_0801BD14:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldrb r0, [r7]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0801BD54
	mov r0, #9
	b _0801BD56
	.byte 0x00
	.byte 0x00
_0801BD3C:
	.4byte gNextLevelID
_0801BD40:
	.4byte gUnknown_030019A0
_0801BD44:
	.4byte gNextLevelInLevelTable
_0801BD48:
	.4byte gUnknown_03000B80
_0801BD4C:
	.4byte gAfterTutorialWorld
_0801BD50:
	.4byte gLevelEWorldFlag
_0801BD54:
	mov r0, #8
_0801BD56:
	mov r1, #1
	bl sub_080070E8
	b _0801BCA2
_0801BD5E:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #114
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #1
	neg r0, r0
	bl sub_08014A58
	ldr r0, _0801BD9C  @ =gLivesCount
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0801BDAC
	bl sub_0800F010
	ldr r0, _0801BDA0  @ =gUnknown_03000BEC
	mov r1, #1
	strb r1, [r0]
	ldr r0, _0801BDA4  @ =gUnknown_030000B6
	strh r4, [r0]
	ldr r0, _0801BDA8  @ =0x03000BF4
	strb r1, [r0]
	b _0801BCA2
	.byte 0x00
	.byte 0x00
_0801BD9C:
	.4byte gLivesCount
_0801BDA0:
	.4byte gUnknown_03000BEC
_0801BDA4:
	.4byte gUnknown_030000B6
_0801BDA8:
	.4byte 0x03000BF4
_0801BDAC:
	ldr r3, _0801BDDC  @ =gUnknown_030019A0
	ldr r1, _0801BDE0  @ =gNextLevelInLevelTable
	ldr r2, [r1, #32]
	mov r0, #15
	and r2, r2, r0
	mov r4, #18
	ldrsh r0, [r1, r4]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r3]
	orr r0, r0, r2
	str r0, [r3]
	mov r0, #20
	mov r1, #1
	bl sub_080070E8
	ldr r1, _0801BDE4  @ =gUnknown_03000BD0
	mov r0, #1
	str r0, [r1]
	b _0801BCA2
	.byte 0x00
	.byte 0x00
_0801BDDC:
	.4byte gUnknown_030019A0
_0801BDE0:
	.4byte gNextLevelInLevelTable
_0801BDE4:
	.4byte gUnknown_03000BD0
_0801BDE8:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0801BE1C
	ldr r0, _0801BE2C  @ =gUnknown_030012E0
	ldrh r0, [r0]
	add r1, r2, #0
	and r1, r1, r0
	cmp r1, #0
	bne _0801BE1C
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
_0801BE04:
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #19
	mov r1, #0
	bl sub_080070E8
	bl sub_08072118
_0801BE1C:
	ldr r0, _0801BE30  @ =gUnknown_030000B4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add sp, sp, #16
	pop {r4-r7}
	pop {r1}
	bx r1
_0801BE2C:
	.4byte gUnknown_030012E0
_0801BE30:
	.4byte gUnknown_030000B4
	THUMB_FUNC_END sub_0801BAD8
	