	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_08031A64 @ Score gain numbers
sub_08031A64: @ 0x08031A64
	push {r4-r7,lr}
	add r3, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	cmp r3, #0
	ble _08031ACC
	mov r2, #0
	ldr r5, _08031AC0  @ =gUnknown_03000284
	mov r1, #0
_08031A76:
	ldr r0, [r5]
	add r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031AC4
	add r5, r4, #2
	add r0, r5, #0
	add r1, r3, #0
	bl sub_0802FB18
	mov r1, #5
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _08031AA2
	add r2, r5, #0
_08031A94:
	sub r1, r1, #1
	cmp r1, #0
	ble _08031AA2
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031A94
_08031AA2:
	strb r1, [r4, #1]
	mov r0, #40
	strb r0, [r4]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #1
	mov r0, #16
	sub r0, r0, r1
	asr r0, r0, #1
	add r0, r6, r0
	strh r0, [r4, #8]
	strh r7, [r4, #10]
	b _08031ACC
_08031AC0:
	.4byte gUnknown_03000284
_08031AC4:
	add r1, r1, #12
	add r2, r2, #1
	cmp r2, #5
	ble _08031A76
_08031ACC:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08031A64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08031AD4 @ always used in level - objects hitting eachother/hammer smashed
sub_08031AD4: @ 0x08031AD4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r9, r0
	mov r2, #0
_08031AE4:
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	ldr r3, _08031BBC  @ =gUnknown_03000284
	ldr r1, [r3]
	add r6, r1, r0
	ldrb r0, [r6]
	add r2, r2, #1
	str r2, [sp]
	cmp r0, #0
	beq _08031BA4
	mov r0, #8
	ldrsh r1, [r6, r0]
	ldr r0, _08031BC0  @ =gSpriteHorizontalOffset
	mov r2, #0
	ldrsh r0, [r0, r2]
	sub r1, r1, r0
	mov r10, r1
	mov r3, #10
	ldrsh r1, [r6, r3]
	ldr r0, _08031BC4  @ =gUnknown_030012F4
	mov r2, #0
	ldrsh r0, [r0, r2]
	sub r1, r1, r0
	mov r12, r1
	ldrb r1, [r6, #1]
	add r0, r1, #2
	add r7, r6, r0
	mov r0, #64
	neg r0, r0
	cmp r12, r0
	blt _08031BA4
	mov r3, r12
	cmp r3, #160
	bgt _08031BA4
	mov r5, #0
	cmp r5, r1
	bgt _08031BA4
	ldr r0, _08031BC8  @ =REG_DMA3SAD
	mov r8, r0
_08031B34:
	ldrb r4, [r7]
	mov r1, r9
	ldrh r3, [r1]
	lsl r3, r3, #3
	ldr r2, _08031BCC  @ =gOamBuffer
	add r3, r3, r2
	ldr r0, _08031BD0  @ =gUnknown_082EC748
	mov r1, r8
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08031BD4  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08031BD8  @ =gUnknown_0807DC90
	add r0, r4, r2
	ldrb r0, [r0]
	add r1, r5, #0
	mul r1, r0, r1
	add r1, r1, r10
	ldr r2, _08031BDC  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08031BE0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	mov r0, r12
	strb r0, [r3]
	lsl r4, r4, #1
	ldr r2, _08031BE4  @ =gUnknown_03001B30
	ldr r1, [r2, #4]
	add r1, r1, r4
	ldr r2, _08031BE8  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08031BEC  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r3, #5]
	mov r3, r9
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	add r5, r5, #1
	sub r7, r7, #1
	ldrb r0, [r6, #1]
	cmp r5, r0
	ble _08031B34
_08031BA4:
	ldr r2, [sp]
	cmp r2, #5
	ble _08031AE4
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
_08031BBC:
	.4byte gUnknown_03000284
_08031BC0:
	.4byte gSpriteHorizontalOffset
_08031BC4:
	.4byte gUnknown_030012F4
_08031BC8:
	.4byte REG_DMA3SAD
_08031BCC:
	.4byte gOamBuffer
_08031BD0:
	.4byte gUnknown_082EC748
_08031BD4:
	.4byte 0x84000002
_08031BD8:
	.4byte gUnknown_0807DC90
_08031BDC:
	.4byte 0x000001FF
_08031BE0:
	.4byte 0xFFFFFE00
_08031BE4:
	.4byte gUnknown_03001B30
_08031BE8:
	.4byte 0x000003FF
_08031BEC:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_08031AD4
