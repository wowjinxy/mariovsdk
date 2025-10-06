	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_08006A6C
sub_08006A6C: @ 0x08006A6C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	asr r2, r0, #3
	str r2, [sp]
	asr r3, r1, #3
	str r3, [sp, #4]
	ldr r0, _08006AF4  @ =gObjectTileDataRAMPtr
	ldr r0, [r0]
	mov r1, #194
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08006AF8  @ =gEWRAMBasePtr
	ldr r0, [r0]
	ldr r4, _08006AFC  @ =0x0000800C
	add r4, r4, r0
	mov r8, r4
	ldrh r0, [r1, #28]
	add r0, r0, #32
	add r4, r1, r0
	ldrh r0, [r1, #24]
	lsl r0, r0, #3
	add r5, r4, r0
	cmp r4, r5
	bcs _08006AE4
	mov r6, #31
	mov r12, r2
	ldr r7, _08006B00  @ =gUnknown_030008E8
	mov r9, r7
	mov r10, r3
_08006AB0:
	mov r0, #6
	ldrsh r2, [r4, r0]
	add r2, r2, r10
	mov r1, #4
	ldrsh r3, [r4, r1]
	add r3, r3, r12
	asr r1, r2, #5
	mov r7, r9
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	and r2, r2, r6
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	and r3, r3, r6
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r8
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r5
	bcc _08006AB0
_08006AE4:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08006AF4:
	.4byte gObjectTileDataRAMPtr
_08006AF8:
	.4byte gEWRAMBasePtr
_08006AFC:
	.4byte 0x0000800C
_08006B00:
	.4byte gUnknown_030008E8
	THUMB_FUNC_END sub_08006A6C

	THUMB_FUNC_START sub_08006B04
sub_08006B04: @ 0x08006B04
	push {r4,r5,lr}
	sub sp, sp, #4
	add r5, r1, #0
	ldr r4, [r0, #32]
	asr r4, r4, #11
	ldr r1, [r0, #36]
	asr r1, r1, #11
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r2, [r0, #1]
	lsr r2, r2, #3
	add r2, r4, r2
	ldrb r3, [r0, #2]
	lsr r3, r3, #3
	add r3, r1, r3
	str r5, [sp]
	add r0, r4, #0
	bl sub_08006C5C
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08006B04

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08006B34
sub_08006B34: @ 0x08006B34
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #52
	mov r8, r0
	ldr r0, [sp, #92]
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #40]
	ldr r0, _08006C08  @ =0x7FFFFFFF
	str r0, [sp, #48]
	mov r0, #0
	ldr r4, [sp, #88]
	str r0, [r4]
	ldr r4, [sp, #84]
	str r0, [r4]
	add r3, r1, r3
	add r2, r2, r8
	mov r0, r8
	asr r0, r0, #8
	mov r8, r0
	asr r2, r2, #8
	asr r3, r3, #8
	asr r1, r1, #8
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #12]
	sub r2, r2, r0
	sub r3, r3, r1
	add r2, r2, #7
	mov r0, #8
	neg r0, r0
	and r2, r2, r0
	add r2, r2, r8
	mov r9, r2
	add r3, r3, #7
	and r3, r3, r0
	add r3, r1, r3
	str r3, [sp, #44]
	add r6, r1, #0
	cmp r6, r3
	bgt _08006BFC
_08006B8E:
	mov r5, r8
	mov r1, #8
	add r1, r1, r6
	mov r10, r1
	cmp r5, r9
	bgt _08006BF4
	add r7, sp, #24
_08006B9C:
	str r5, [sp, #16]
	add r0, sp, #16
	str r6, [r0, #4]
	add r1, r7, #0
	mov r2, #0
	bl sub_08002390
	add r2, r0, #0
	cmp r2, #0
	beq _08006BEE
	ldrb r0, [r2, #4]
	cmp r0, #3
	bne _08006BEE
	ldrb r0, [r2, #15]
	cmp r0, #0
	beq _08006BC2
	ldr r4, [sp, #40]
	cmp r0, r4
	bne _08006BEE
_08006BC2:
	add r4, sp, #32
	mov r0, sp
	add r1, r7, #0
	add r3, r4, #0
	bl sub_080022AC
	ldr r1, [sp, #48]
	cmp r0, r1
	bge _08006BEE
	ldr r2, [sp, #32]
	add r1, r2, #0
	cmp r2, #0
	bge _08006BDE
	neg r1, r2
_08006BDE:
	cmp r1, #7
	bgt _08006BEE
	str r0, [sp, #48]
	ldr r0, [sp, #84]
	str r2, [r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #88]
	str r0, [r1]
_08006BEE:
	add r5, r5, #8
	cmp r5, r9
	ble _08006B9C
_08006BF4:
	mov r6, r10
	ldr r4, [sp, #44]
	cmp r6, r4
	ble _08006B8E
_08006BFC:
	ldr r0, _08006C08  @ =0x7FFFFFFF
	ldr r1, [sp, #48]
	cmp r1, r0
	bne _08006C0C
	mov r0, #0
	b _08006C1E
_08006C08:
	.4byte 0x7FFFFFFF
_08006C0C:
	ldr r4, [sp, #84]
	ldr r0, [r4]
	lsl r0, r0, #8
	str r0, [r4]
	ldr r1, [sp, #88]
	ldr r0, [r1]
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #1
_08006C1E:
	add sp, sp, #52
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08006B34

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08006C30
sub_08006C30: @ 0x08006C30
	push {lr}
	sub sp, sp, #4
	add r0, r1, #0
	add r1, r2, #0
	mov r2, sp
	bl sub_08002390
	add r1, r0, #0
	cmp r1, #0
	beq _08006C50
	ldrb r0, [r1, #4]
	sub r0, r0, #44
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #9
	bls _08006C54
_08006C50:
	mov r0, #0
	b _08006C56
_08006C54:
	ldrb r0, [r1, #4]
_08006C56:
	add sp, sp, #4
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08006C30

	THUMB_FUNC_START sub_08006C5C
sub_08006C5C: @ 0x08006C5C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	mov r12, r1
	add r4, r2, #0
	mov r9, r3
	ldr r5, [sp, #32]
	mov r0, r12
	mov r1, r8
	lsl r1, r1, #1
	mov r10, r1
_08006C78:
	mov r1, r8
	add r3, r0, #1
	cmp r1, r4
	bge _08006C9C
	ldr r6, _08006CE8  @ =0x0000400C
	lsl r0, r0, #7
	mov r7, r10
	add r2, r7, r0
	sub r1, r4, r1
_08006C8A:
	ldr r7, _08006CEC  @ =gEWRAMBasePtr
	ldr r0, [r7]
	add r0, r0, r6
	add r0, r0, r2
	strh r5, [r0]
	add r2, r2, #2
	sub r1, r1, #1
	cmp r1, #0
	bne _08006C8A
_08006C9C:
	add r0, r3, #0
	cmp r0, r12
	ble _08006C78
	cmp r5, #4
	bls _08006CA8
	mov r5, #14
_08006CA8:
	cmp r0, r9
	bge _08006CDA
	mov r2, r8
	lsl r2, r2, #1
	mov r12, r2
_08006CB2:
	mov r1, r8
	add r3, r0, #1
	cmp r1, r4
	bge _08006CD4
	ldr r6, _08006CE8  @ =0x0000400C
	lsl r0, r0, #7
	mov r7, r12
	add r2, r7, r0
_08006CC2:
	ldr r7, _08006CEC  @ =gEWRAMBasePtr
	ldr r0, [r7]
	add r0, r0, r6
	add r0, r0, r2
	strh r5, [r0]
	add r2, r2, #2
	add r1, r1, #1
	cmp r1, r4
	blt _08006CC2
_08006CD4:
	add r0, r3, #0
	cmp r0, r9
	blt _08006CB2
_08006CDA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08006CE8:
	.4byte 0x0000400C
_08006CEC:
	.4byte gEWRAMBasePtr
	THUMB_FUNC_END sub_08006C5C
