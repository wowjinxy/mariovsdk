	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_08030F50 @ used while in level
sub_08030F50: @ 0x08030F50
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _08030F84  @ =gUnknown_03001A38
	ldrb r0, [r0]
	cmp r0, #1
	beq _08030FBE
	ldr r0, _08030F88  @ =0x030001E8
	ldr r4, [r0, #28]
	add r5, r4, #0
	add r5, r5, #84
	cmp r4, r5
	bcs _08030FBE
	mov r6, #1
	neg r6, r6
	add r7, r0, #0
	add r0, r7, #4
	mov r8, r0
_08030F74:
	ldr r3, [r4]
	cmp r3, r6
	beq _08030FB8
	cmp r3, #2
	bne _08030F8C
	str r6, [r4]
	b _08030FB8
	.byte 0x00
	.byte 0x00
_08030F84:
	.4byte gUnknown_03001A38
_08030F88:
	.4byte 0x030001E8
_08030F8C:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08030F96
	sub r0, r0, #1
	b _08030FB6
_08030F96:
	ldr r2, [r4, #8]
	ldr r1, [r2, #8]
	ldr r0, [r7, #24]
	add r1, r1, r0
	str r1, [r2, #8]
	lsl r0, r3, #3
	add r0, r0, r8
	ldr r0, [r0]
	cmp r1, r0
	bne _08030FB4
	add r0, r4, #0
	mov r1, #2
	bl sub_080310A8
	b _08030FB8
_08030FB4:
	ldrb r0, [r1, #12]
_08030FB6:
	strb r0, [r4, #4]
_08030FB8:
	add r4, r4, #12
	cmp r4, r5
	bcc _08030F74
_08030FBE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08030F50

	THUMB_FUNC_START sub_08030FC8
sub_08030FC8: @ 0x08030FC8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r0, #84
	bl arena_allocate
	ldr r1, _08031014  @ =0x030001E8
	str r0, [r1, #28]
	mov r8, r1
	mov r1, #0
	mov r6, #0
	mov r5, #6
_08030FE2:
	mov r0, r8
	ldr r4, [r0, #28]
	add r4, r4, r6
	mov r7, #1
	neg r7, r7
	str r7, [r4]
	str r1, [sp]
	bl sub_0802BA00
	str r0, [r4, #8]
	ldr r1, [sp]
	str r1, [r0, #12]
	str r1, [r0, #8]
	add r6, r6, #12
	sub r5, r5, #1
	cmp r5, #0
	bge _08030FE2
	ldr r0, _08031014  @ =0x030001E8
	str r7, [r0, #32]
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08031014:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_08030FC8

	THUMB_FUNC_START sub_08031018
sub_08031018: @ 0x08031018
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r4, _0803106C  @ =0x030001E8
	ldr r0, [r4, #28]
	cmp r0, #0
	bne _0803105E
	mov r0, #84
	bl arena_allocate
	str r0, [r4, #28]
	mov r8, r4
	mov r1, #0
	mov r6, #0
	mov r5, #6
_08031038:
	mov r0, r8
	ldr r4, [r0, #28]
	add r4, r4, r6
	mov r7, #1
	neg r7, r7
	str r7, [r4]
	str r1, [sp]
	bl sub_0802BA00
	str r0, [r4, #8]
	ldr r1, [sp]
	str r1, [r0, #12]
	str r1, [r0, #8]
	add r6, r6, #12
	sub r5, r5, #1
	cmp r5, #0
	bge _08031038
	ldr r0, _0803106C  @ =0x030001E8
	str r7, [r0, #32]
_0803105E:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803106C:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_08031018

	THUMB_FUNC_START sub_08031070
sub_08031070: @ 0x08031070
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r0, _08031098  @ =0x030001E8
	str r4, [r0, #24]
	add r3, r0, #0
	mov r1, #2
_0803107E:
	str r2, [r3]
	ldrb r0, [r2, #11]
	mul r0, r4, r0
	add r2, r2, r0
	str r2, [r3, #4]
	add r3, r3, #8
	sub r1, r1, #1
	cmp r1, #0
	bge _0803107E
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031098:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_08031070

	THUMB_FUNC_START sub_0803109C @ used on level load/reload
sub_0803109C: @ 0x0803109C
	ldr r1, _080310A4  @ =0x030001E8
	mov r0, #0
	str r0, [r1, #28]
	bx lr
_080310A4:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_0803109C

	THUMB_FUNC_START sub_080310A8
sub_080310A8: @ 0x080310A8
	push {lr}
	add r3, r0, #0
	ldr r0, [r3]
	cmp r0, r1
	beq _080310CA
	str r1, [r3]
	ldr r0, [r3, #8]
	ldr r2, _080310D0  @ =0x030001E8
	lsl r1, r1, #3
	add r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #8]
	ldrb r1, [r1, #12]
	strb r1, [r3, #4]
	ldr r1, [r0, #8]
	bl sub_08001BA4
_080310CA:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080310D0:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_080310A8

	THUMB_FUNC_START sub_080310D4 @ used in level init
sub_080310D4: @ 0x080310D4
	push {r4-r7,lr}
	add r5, r0, #0
	add r7, r1, #0
	ldrb r0, [r5, #11]
	cmp r0, #2
	bhi _08031168
	lsl r0, r0, #5
	ldr r1, _080310F8  @ =0x03000210
	add r6, r0, r1
	ldrb r0, [r5, #4]
	cmp r0, #67
	beq _08031134
	cmp r0, #67
	bgt _080310FC
	cmp r0, #66
	beq _08031102
	b _08031168
	.byte 0x00
	.byte 0x00
_080310F8:
	.4byte 0x03000210
_080310FC:
	cmp r0, #76
	beq _0803114C
	b _08031168
_08031102:
	ldrb r4, [r5, #12]
	cmp r4, #3
	bgt _08031168
	cmp r4, #0
	bne _08031110
	ldrb r0, [r5, #13]
	str r0, [r6, #28]
_08031110:
	add r0, r5, #0
	bl sub_080064A0
	add r2, r0, #0
	lsl r4, r4, #2
	add r1, r6, r4
	ldrh r0, [r2]
	strh r0, [r1]
	add r5, r5, r7
	add r0, r5, #0
	bl sub_080064A0
	add r2, r0, #0
	add r0, r6, #2
	add r0, r0, r4
	ldrh r1, [r2]
	strh r1, [r0]
	b _08031168
_08031134:
	ldrb r0, [r5, #12]
	cmp r0, #2
	bhi _08031168
	add r0, r5, #0
	bl sub_080064A0
	add r2, r0, #0
	ldrb r0, [r5, #12]
	lsl r0, r0, #1
	add r1, r6, #0
	add r1, r1, #16
	b _08031162
_0803114C:
	ldrb r0, [r5, #12]
	cmp r0, #2
	bhi _08031168
	add r0, r5, #0
	bl sub_080064A0
	add r2, r0, #0
	ldrb r0, [r5, #12]
	lsl r0, r0, #1
	add r1, r6, #0
	add r1, r1, #22
_08031162:
	add r1, r1, r0
	ldrh r0, [r2]
	strh r0, [r1]
_08031168:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080310D4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08031170
sub_08031170: @ 0x08031170
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r6, r0, #0
	add r7, r1, #0
	mov r8, r2
	ldr r4, _080311F0  @ =0x03000210
	ldr r5, [r4, #108]
	cmp r5, #0
	bne _080311AC
	mov r0, #160
	bl arena_allocate
	add r1, r0, #0
	str r1, [r4, #108]
	str r5, [sp]
	mov r0, sp
	ldr r2, _080311F4  @ =0x05000028
	bl CpuSet
	str r5, [r4, #96]
	str r5, [r4, #100]
	add r1, r4, #0
	add r1, r1, #104
	ldr r0, _080311F8  @ =0x0000FFFF
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #106
	strh r5, [r0]
_080311AC:
	ldr r1, [r4, #96]
	cmp r1, #39
	bgt _080311E4
	lsl r0, r1, #2
	ldr r2, [r4, #108]
	add r2, r2, r0
	add r0, r1, #1
	str r0, [r4, #96]
	ldrb r0, [r6, #12]
	mov r4, #15
	add r1, r4, #0
	and r1, r1, r0
	ldrb r3, [r2, #3]
	mov r0, #16
	neg r0, r0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #3]
	ldrb r1, [r6, #11]
	lsl r1, r1, #4
	and r0, r0, r4
	orr r0, r0, r1
	strb r0, [r2, #3]
	mov r0, #0
	strb r7, [r2]
	mov r1, r8
	strb r1, [r2, #1]
	strb r0, [r2, #2]
_080311E4:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080311F0:
	.4byte 0x03000210
_080311F4:
	.4byte 0x05000028
_080311F8:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08031170

	THUMB_FUNC_START sub_080311FC
sub_080311FC: @ 0x080311FC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #28
	mov r9, r0
	add r4, r1, #0
	ldr r0, _080312EC  @ =gEWRAMBasePtr
	ldr r0, [r0]
	ldr r1, _080312F0  @ =0x0000400C
	add r1, r0, r1
	str r1, [sp, #24]
	ldr r2, _080312F4  @ =0x0000800C
	add r2, r2, r0
	mov r10, r2
	mov r0, r9
	ldrb r7, [r0]
	ldrb r6, [r0, #1]
	lsl r0, r6, #6
	add r0, r0, r7
	str r0, [sp]
	ldr r2, _080312F8  @ =gUnknown_0807DC70
	mov r1, r9
	ldr r5, [r1]
	lsl r3, r5, #4
	lsr r1, r3, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r2
	mov r1, #0
	ldrsh r0, [r0, r1]
	str r0, [sp, #4]
	lsr r1, r3, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r1, r2, #2
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	str r0, [sp, #8]
	lsr r1, r3, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r2, r2, #4
	add r0, r0, r2
	mov r1, #0
	ldrsh r2, [r0, r1]
	str r2, [sp, #12]
	cmp r4, #0
	bne _08031304
	ldr r0, _080312FC  @ =gUnknown_03000E60
	ldrh r0, [r0]
	mov r8, r0
	mov r2, #0
	str r2, [sp, #16]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080064B0
	lsl r3, r0, #1
	add r3, r3, r10
	ldr r2, _08031300  @ =0x03000210
	mov r0, r9
	ldr r1, [r0]
	lsl r0, r1, #4
	lsr r0, r0, #28
	lsl r0, r0, #2
	lsr r1, r1, #28
	lsl r1, r1, #5
	add r0, r0, r1
	add r2, r2, #2
	add r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r1, r1, r2
	str r1, [sp]
	ldr r0, [sp, #8]
	add r7, r7, r0
	ldr r1, [sp, #12]
	add r6, r6, r1
	mov r5, #0
	mov r2, r9
	ldrb r2, [r2, #2]
	cmp r5, r2
	blt _080312B4
	b _080313F8
_080312B4:
	ldr r1, [sp]
	lsl r0, r1, #1
	ldr r2, [sp, #24]
	add r4, r0, r2
_080312BC:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080064B0
	mov r1, sp
	ldrh r1, [r1, #16]
	strh r1, [r4]
	lsl r0, r0, #1
	add r0, r0, r10
	mov r2, r8
	strh r2, [r0]
	add r5, r5, #1
	ldr r0, [sp, #8]
	add r7, r7, r0
	ldr r1, [sp, #12]
	add r6, r6, r1
	ldr r2, [sp, #4]
	lsl r0, r2, #1
	add r4, r4, r0
	mov r0, r9
	ldrb r0, [r0, #2]
	cmp r5, r0
	blt _080312BC
	b _080313F8
_080312EC:
	.4byte gEWRAMBasePtr
_080312F0:
	.4byte 0x0000400C
_080312F4:
	.4byte 0x0000800C
_080312F8:
	.4byte gUnknown_0807DC70
_080312FC:
	.4byte gUnknown_03000E60
_08031300:
	.4byte 0x03000210
_08031304:
	ldr r1, _08031358  @ =gUnknown_0807DC88
	lsr r0, r3, #28
	add r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
	cmp r4, #2
	bne _08031360
	ldr r4, _0803135C  @ =0x03000210
	lsl r1, r0, #1
	lsr r0, r5, #28
	lsl r0, r0, #5
	add r1, r1, r0
	add r0, r4, #0
	add r0, r0, #16
	add r1, r1, r0
	ldrh r1, [r1]
	mov r8, r1
	lsr r0, r5, #28
	lsl r0, r0, #5
	add r0, r0, r4
	ldrh r0, [r0, #20]
	str r0, [sp, #20]
	mov r1, #15
	str r1, [sp, #16]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080064B0
	lsl r2, r0, #1
	add r2, r2, r10
	mov r0, r9
	ldr r1, [r0]
	lsl r0, r1, #4
	lsr r0, r0, #28
	lsl r0, r0, #2
	lsr r1, r1, #28
	lsl r1, r1, #5
	add r0, r0, r1
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r2]
	b _08031384
_08031358:
	.4byte gUnknown_0807DC88
_0803135C:
	.4byte 0x03000210
_08031360:
	ldr r2, _080313C4  @ =0x03000210
	mov r0, r8
	lsl r1, r0, #1
	lsr r0, r5, #28
	lsl r0, r0, #5
	add r1, r1, r0
	add r0, r2, #0
	add r0, r0, #22
	add r1, r1, r0
	ldrh r1, [r1]
	mov r8, r1
	lsr r0, r5, #28
	lsl r0, r0, #5
	add r0, r0, r2
	ldrh r0, [r0, #26]
	str r0, [sp, #20]
	mov r1, #0
	str r1, [sp, #16]
_08031384:
	ldr r2, [sp]
	ldr r0, [sp, #4]
	add r2, r2, r0
	str r2, [sp]
	ldr r1, [sp, #8]
	add r7, r7, r1
	ldr r2, [sp, #12]
	add r6, r6, r2
	mov r5, #0
	mov r0, r9
	ldrb r0, [r0, #2]
	cmp r5, r0
	bge _080313F8
	ldr r1, [sp]
	lsl r0, r1, #1
	ldr r2, [sp, #24]
	add r4, r0, r2
_080313A6:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080064B0
	ldrh r1, [r4]
	cmp r1, #0
	bne _080313C8
	mov r1, sp
	ldrh r1, [r1, #16]
	strh r1, [r4]
	lsl r0, r0, #1
	add r0, r0, r10
	mov r2, r8
	strh r2, [r0]
	b _080313E0
_080313C4:
	.4byte 0x03000210
_080313C8:
	ldr r2, [sp, #16]
	cmp r1, r2
	bne _080313E0
	lsl r0, r0, #1
	mov r1, r10
	add r2, r0, r1
	ldrh r0, [r2]
	cmp r0, r8
	beq _080313E0
	mov r0, sp
	ldrh r0, [r0, #20]
	strh r0, [r2]
_080313E0:
	add r5, r5, #1
	ldr r1, [sp, #8]
	add r7, r7, r1
	ldr r2, [sp, #12]
	add r6, r6, r2
	ldr r1, [sp, #4]
	lsl r0, r1, #1
	add r4, r4, r0
	mov r2, r9
	ldrb r2, [r2, #2]
	cmp r5, r2
	blt _080313A6
_080313F8:
	add sp, sp, #28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080311FC

	THUMB_FUNC_START sub_08031408 @ Level object interaction?
sub_08031408: @ 0x08031408
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	ldr r0, _080314C4  @ =gEWRAMBasePtr
	ldr r0, [r0]
	ldr r1, _080314C8  @ =0x0000400C
	add r1, r1, r0
	mov r10, r1
	ldr r3, _080314CC  @ =gUnknown_0807DC70
	mov r4, r8
	ldr r2, [r4]
	lsl r2, r2, #4
	lsr r1, r2, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r1, r3, #2
	add r0, r0, r1
	mov r4, #0
	ldrsh r1, [r0, r4]
	mov r9, r1
	lsr r1, r2, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r1, r3, #4
	add r0, r0, r1
	mov r4, #0
	ldrsh r1, [r0, r4]
	mov r12, r1
	mov r0, r8
	ldrb r5, [r0]
	ldrb r4, [r0, #1]
	lsl r0, r4, #6
	add r1, r0, r5
	ldr r0, _080314D0  @ =gCurrentLevelWidth
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r7, r0, #19
	ldr r0, _080314D4  @ =gCurrentLevelHeight
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r6, r0, #19
	lsr r2, r2, #28
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #1
	add r0, r0, r3
	mov r3, #0
	ldrsh r2, [r0, r3]
	add r1, r1, r2
	add r5, r5, r9
	add r4, r4, r12
	mov r3, #0
	cmp r5, #0
	blt _080314B2
	cmp r5, r7
	bge _080314B2
	cmp r4, #0
	blt _080314B2
	cmp r4, r6
	bge _080314B2
	lsl r0, r1, #1
	add r0, r0, r10
	lsl r2, r2, #1
_08031490:
	ldrh r1, [r0]
	cmp r1, #0
	beq _0803149A
	cmp r1, #15
	bne _080314B2
_0803149A:
	add r3, r3, #1
	add r5, r5, r9
	add r4, r4, r12
	add r0, r0, r2
	cmp r5, #0
	blt _080314B2
	cmp r5, r7
	bge _080314B2
	cmp r4, #0
	blt _080314B2
	cmp r4, r6
	blt _08031490
_080314B2:
	mov r4, r8
	strb r3, [r4, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080314C4:
	.4byte gEWRAMBasePtr
_080314C8:
	.4byte 0x0000400C
_080314CC:
	.4byte gUnknown_0807DC70
_080314D0:
	.4byte gCurrentLevelWidth
_080314D4:
	.4byte gCurrentLevelHeight
	THUMB_FUNC_END sub_08031408

	THUMB_FUNC_START sub_080314D8 @ level lasers
sub_080314D8: @ 0x080314D8
	push {r4-r7,lr}
	sub sp, sp, #12
	add r5, r0, #0
	mov r7, #0
	mov r2, #0
	ldr r1, _080315A0  @ =0x03000210
	ldr r0, [r1, #108]
	cmp r0, #0
	beq _08031598
	cmp r5, #0
	bge _080314F8
	add r0, r1, #0
	add r0, r0, #104
	mov r3, #0
	ldrsh r5, [r0, r3]
	mov r7, #1
_080314F8:
	mov r4, #0
	ldr r0, [r1, #96]
	cmp r2, r0
	bge _08031522
	add r6, r1, #0
_08031502:
	lsl r1, r4, #2
	ldr r0, [r6, #108]
	add r1, r0, r1
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r5
	bne _0803151A
	add r0, r1, #0
	mov r1, #2
	bl sub_080311FC
	mov r2, #1
_0803151A:
	add r4, r4, #1
	ldr r0, [r6, #96]
	cmp r4, r0
	blt _08031502
_08031522:
	cmp r2, #0
	beq _0803153C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #147
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0803153C:
	cmp r7, #0
	beq _08031598
	ldr r2, _080315A0  @ =0x03000210
	add r0, r2, #0
	add r0, r0, #106
	mov r1, #0
	ldrsh r3, [r0, r1]
	lsl r0, r3, #5
	add r1, r2, #0
	add r1, r1, #28
	add r0, r0, r1
	ldr r0, [r0]
	asr r0, r0, #1
	ldr r1, [r2, #100]
	cmp r1, r0
	bgt _08031598
	add r6, r3, #0
	ldr r0, [r2, #108]
	cmp r0, #0
	beq _08031598
	cmp r6, #0
	bge _08031570
	add r0, r2, #0
	add r0, r0, #104
	mov r3, #0
	ldrsh r6, [r0, r3]
_08031570:
	mov r4, #0
	ldr r0, [r2, #96]
	cmp r4, r0
	bge _08031598
	add r5, r2, #0
_0803157A:
	lsl r1, r4, #2
	ldr r0, [r5, #108]
	add r1, r0, r1
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r6
	bne _08031590
	add r0, r1, #0
	mov r1, #1
	bl sub_080311FC
_08031590:
	add r4, r4, #1
	ldr r0, [r5, #96]
	cmp r4, r0
	blt _0803157A
_08031598:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_080315A0:
	.4byte 0x03000210
	THUMB_FUNC_END sub_080314D8

	THUMB_FUNC_START sub_080315A4 @ used during level
sub_080315A4: @ 0x080315A4
	push {r4-r7,lr}
	ldr r0, _08031608  @ =0x03000210
	ldr r1, [r0, #108]
	add r7, r0, #0
	cmp r1, #0
	beq _08031684
	ldr r2, [r7, #100]
	cmp r2, #0
	ble _0803160C
	sub r2, r2, #1
	str r2, [r7, #100]
	add r0, r0, #106
	mov r1, #0
	ldrsh r3, [r0, r1]
	lsl r0, r3, #5
	add r1, r7, #0
	add r1, r1, #28
	add r0, r0, r1
	ldr r0, [r0]
	asr r0, r0, #1
	cmp r2, r0
	bne _08031684
	add r5, r3, #0
	cmp r5, #0
	bge _080315DE
	add r0, r7, #0
	add r0, r0, #104
	mov r1, #0
	ldrsh r5, [r0, r1]
_080315DE:
	mov r4, #0
	ldr r0, [r7, #96]
	cmp r4, r0
	bge _0803167E
	add r6, r7, #0
_080315E8:
	lsl r1, r4, #2
	ldr r0, [r6, #108]
	add r1, r0, r1
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r5
	bne _080315FE
	add r0, r1, #0
	mov r1, #1
	bl sub_080311FC
_080315FE:
	add r4, r4, #1
	ldr r0, [r6, #96]
	cmp r4, r0
	blt _080315E8
	b _0803167E
_08031608:
	.4byte 0x03000210
_0803160C:
	add r0, r7, #0
	add r0, r0, #104
	mov r1, #0
	ldrsh r5, [r0, r1]
	mov r4, #0
	ldr r0, [r7, #96]
	cmp r4, r0
	bge _08031640
	add r6, r7, #0
_0803161E:
	lsl r1, r4, #2
	ldr r0, [r6, #108]
	add r1, r0, r1
	cmp r5, #0
	blt _08031630
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r5
	bne _08031638
_08031630:
	add r0, r1, #0
	mov r1, #0
	bl sub_080311FC
_08031638:
	add r4, r4, #1
	ldr r0, [r6, #96]
	cmp r4, r0
	blt _0803161E
_08031640:
	add r1, r7, #0
	add r2, r1, #0
	add r2, r2, #106
	ldrh r0, [r2]
	add r3, r1, #0
	add r3, r3, #104
	strh r0, [r3]
	add r0, r0, #1
	strh r0, [r2]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #2
	ble _0803165E
	mov r0, #0
	strh r0, [r2]
_0803165E:
	mov r1, #0
	ldrsh r0, [r3, r1]
	lsl r0, r0, #5
	add r1, r7, #0
	add r1, r1, #28
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r7, #100]
	cmp r0, #0
	bne _08031676
	mov r0, #60
	str r0, [r7, #100]
_08031676:
	mov r1, #0
	ldrsh r0, [r3, r1]
	bl sub_080314D8
_0803167E:
	ldr r1, _0803168C  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r1]
_08031684:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803168C:
	.4byte gUnknown_030009EC
	THUMB_FUNC_END sub_080315A4

	THUMB_FUNC_START sub_08031690
sub_08031690: @ 0x08031690
	push {r4,r5,lr}
	sub sp, sp, #4
	mov r0, #160
	bl arena_allocate
	add r1, r0, #0
	ldr r4, _080316C4  @ =0x03000210
	str r1, [r4, #108]
	mov r5, #0
	str r5, [sp]
	ldr r2, _080316C8  @ =0x05000028
	mov r0, sp
	bl CpuSet
	str r5, [r4, #96]
	str r5, [r4, #100]
	add r1, r4, #0
	add r1, r1, #104
	ldr r0, _080316CC  @ =0x0000FFFF
	strh r0, [r1]
	add r4, r4, #106
	strh r5, [r4]
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080316C4:
	.4byte 0x03000210
_080316C8:
	.4byte 0x05000028
_080316CC:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08031690

	THUMB_FUNC_START sub_080316D0 @ Switch state change related
sub_080316D0: @ 0x080316D0
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r2, _080316E0  @ =0x03000210
	ldr r0, [r2, #108]
	cmp r0, #0
	beq _08031708
	mov r4, #0
	b _08031702
_080316E0:
	.4byte 0x03000210
_080316E4:
	lsl r1, r4, #2
	ldr r0, [r2, #108]
	add r1, r0, r1
	cmp r5, #0
	blt _080316F6
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r5
	bne _080316FE
_080316F6:
	add r0, r1, #0
	mov r1, #0
	bl sub_080311FC
_080316FE:
	add r4, r4, #1
	ldr r2, _08031710  @ =0x03000210
_08031702:
	ldr r0, [r2, #96]
	cmp r4, r0
	blt _080316E4
_08031708:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031710:
	.4byte 0x03000210
	THUMB_FUNC_END sub_080316D0

	THUMB_FUNC_START sub_08031714
sub_08031714: @ 0x08031714
	push {r4,r5,lr}
	mov r4, #0
	ldr r1, _0803173C  @ =0x03000210
	ldr r0, [r1, #96]
	cmp r4, r0
	bge _08031734
	add r5, r1, #0
_08031722:
	lsl r1, r4, #2
	ldr r0, [r5, #108]
	add r0, r0, r1
	bl sub_08031408
	add r4, r4, #1
	ldr r0, [r5, #96]
	cmp r4, r0
	blt _08031722
_08031734:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803173C:
	.4byte 0x03000210
	THUMB_FUNC_END sub_08031714

	THUMB_FUNC_START sub_08031740
sub_08031740: @ 0x08031740
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, [r0, #4]
	asr r1, r1, #11
	lsl r3, r1, #6
	ldr r1, [r0, #12]
	asr r1, r1, #11
	lsl r1, r1, #6
	mov r12, r1
	ldr r1, [r0]
	asr r1, r1, #11
	mov r10, r1
	ldr r0, [r0, #8]
	asr r0, r0, #11
	mov r8, r0
	cmp r0, #63
	bls _0803176C
	mov r0, #63
	mov r8, r0
_0803176C:
	ldr r0, _0803177C  @ =0x00000FBF
	cmp r12, r0
	bls _080317D6
	mov r5, #252
	lsl r5, r5, #4
	mov r12, r5
	b _080317D6
	.byte 0x00
	.byte 0x00
_0803177C:
	.4byte 0x00000FBF
_08031780:
	mov r0, r10
	add r2, r3, r0
	mov r5, r8
	add r4, r3, r5
	cmp r2, r4
	bhi _080317D4
	ldr r0, _080317B8  @ =gEWRAMBasePtr
	ldr r1, [r0]
	ldr r0, _080317BC  @ =0x03001B54
	mov r9, r0
	lsl r0, r2, #1
	ldr r5, _080317C0  @ =0x0000400C
	add r0, r0, r5
	add r1, r0, r1
	ldr r5, _080317C4  @ =gNextLevelInLevelTable
	mov r6, #2
	mov r7, #1
_080317A2:
	ldrh r0, [r1]
	cmp r0, #15
	bne _080317CC
	ldr r0, [r5, #32]
	and r0, r0, r6
	cmp r0, #0
	beq _080317C8
	mov r0, r9
	strb r7, [r0]
	b _080317DA
	.byte 0x00
	.byte 0x00
_080317B8:
	.4byte gEWRAMBasePtr
_080317BC:
	.4byte 0x03001B54
_080317C0:
	.4byte 0x0000400C
_080317C4:
	.4byte gNextLevelInLevelTable
_080317C8:
	mov r0, #1
	b _080317DC
_080317CC:
	add r1, r1, #2
	add r2, r2, #1
	cmp r2, r4
	bls _080317A2
_080317D4:
	add r3, r3, #64
_080317D6:
	cmp r3, r12
	bls _08031780
_080317DA:
	mov r0, #0
_080317DC:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08031740

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080317EC
sub_080317EC: @ 0x080317EC
	ldr r0, _080317F4  @ =0x03000210
	add r0, r0, #104
	ldrb r0, [r0]
	bx lr
_080317F4:
	.4byte 0x03000210
	THUMB_FUNC_END sub_080317EC

	THUMB_FUNC_START sub_080317F8
sub_080317F8: @ 0x080317F8
	ldr r1, _08031800  @ =0x03000210
	mov r0, #0
	str r0, [r1, #108]
	bx lr
_08031800:
	.4byte 0x03000210
	THUMB_FUNC_END sub_080317F8
