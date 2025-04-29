	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_0801B310
sub_0801B310: @ 0x0801B310
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r6, #0
	ldr r0, _0801B354  @ =0x0300009C
	ldr r1, [r0]
	mov r9, r0
	cmp r6, r1
	bge _0801B3B4
	ldr r2, _0801B358  @ =0x03000098
	ldr r3, [r2]
	ldr r0, _0801B35C  @ =0x03000BDC
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0801B3B4
	mov r12, r2
	ldr r7, _0801B360  @ =gUnknown_03000D3C
	mov r5, #0
_0801B338:
	ldrh r0, [r3, #10]
	add r4, r0, #0
	cmp r4, #0
	bne _0801B396
	ldrb r2, [r3, #8]
	ldr r1, [r3, #12]
	ldrh r0, [r1]
	sub r0, r0, #1
	cmp r2, r0
	bge _0801B364
	add r0, r2, #1
	strb r0, [r3, #8]
	b _0801B38A
	.byte 0x00
	.byte 0x00
_0801B354:
	.4byte 0x0300009C
_0801B358:
	.4byte 0x03000098
_0801B35C:
	.4byte 0x03000BDC
_0801B360:
	.4byte gUnknown_03000D3C
_0801B364:
	ldrb r1, [r1, #3]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801B372
	strb r4, [r3, #8]
	b _0801B38A
_0801B372:
	ldrb r0, [r7]
	cmp r0, #1
	bne _0801B38A
	mov r1, r12
	ldr r0, [r1]
	add r0, r5, r0
	ldr r0, [r0, #12]
	ldrb r0, [r0, #2]
	cmp r0, #40
	bne _0801B38A
	mov r0, #2
	strb r0, [r7]
_0801B38A:
	ldr r0, [r3, #12]
	ldrb r1, [r3, #8]
	lsl r1, r1, #2
	add r0, r0, r1
	ldrb r0, [r0, #11]
	b _0801B398
_0801B396:
	sub r0, r0, #1
_0801B398:
	strh r0, [r3, #10]
	add r5, r5, #16
	add r6, r6, #1
	mov r1, r9
	ldr r0, [r1]
	cmp r6, r0
	bge _0801B3B4
	mov r1, r12
	ldr r0, [r1]
	add r3, r0, r5
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801B338
_0801B3B4:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B310

	THUMB_FUNC_START reset_some_array_0801B3C0
reset_some_array_0801B3C0: @ 0x0801B3C0
	ldr r0, _0801B3D0  @ =0x03000098
	mov r1, #0
	str r1, [r0]
	ldr r0, _0801B3D4  @ =0x03000BDC
	strb r1, [r0]
	ldr r0, _0801B3D8  @ =0x0300009C
	str r1, [r0]
	bx lr
_0801B3D0:
	.4byte 0x03000098
_0801B3D4:
	.4byte 0x03000BDC
_0801B3D8:
	.4byte 0x0300009C
	THUMB_FUNC_END reset_some_array_0801B3C0

	THUMB_FUNC_START setup_animated_tiles_0801B3DC
setup_animated_tiles_0801B3DC: @ 0x0801B3DC
	push {r4-r6,lr}
	add r3, r0, #0
	add r5, r1, #0
	ldr r0, _0801B428  @ =0x030000A0
	add r0, r2, r0
	ldr r1, _0801B42C  @ =0x0300009C
	ldr r1, [r1]
	strb r1, [r0]
	ldr r0, [r3, #8]
	cmp r0, #96
	bls _0801B422
	ldr r0, [r3, #96]
	cmp r0, #0
	beq _0801B422
	add r1, r3, r0
	ldr r0, [r1]
	add r0, r0, #4
	add r4, r1, r0
	mov r6, #64
	cmp r5, #0
	beq _0801B408
	mov r6, #32
_0801B408:
	add r1, r1, #4
	lsl r0, r2, #2
	add r2, r3, #0
	add r2, r2, #80
	add r2, r2, r0
	ldrh r0, [r3, #44]
	lsl r0, r0, #6
	ldr r2, [r2]
	add r2, r2, r0
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0801B430
_0801B422:
	pop {r4-r6}
	pop {r0}
	bx r0
_0801B428:
	.4byte 0x030000A0
_0801B42C:
	.4byte 0x0300009C
	THUMB_FUNC_END setup_animated_tiles_0801B3DC

	THUMB_FUNC_START sub_0801B430
sub_0801B430: @ 0x0801B430
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r9, r1
	mov r8, r2
	mov r10, r3
	ldr r0, [r6]
	cmp r0, #0
	beq _0801B4A4
	ldr r4, _0801B4B4  @ =0x03000098
	ldr r0, [r4]
	cmp r0, #0
	bne _0801B45A
	mov r0, #200
	lsl r0, r0, #3
	bl arena_allocate
	str r0, [r4]
_0801B45A:
	add r2, r6, #4
	mov r3, #0
	ldr r0, [r6]
	cmp r3, r0
	bcs _0801B4A4
	ldr r5, _0801B4B8  @ =0x0300009C
	mov r12, r4
	mov r4, #0
_0801B46A:
	ldr r0, [r5]
	cmp r0, #99
	bgt _0801B494
	lsl r0, r0, #4
	mov r7, r12
	ldr r1, [r7]
	add r1, r1, r0
	str r2, [r1, #12]
	mov r0, r9
	str r0, [r1]
	mov r7, r10
	strb r7, [r1, #9]
	ldrb r0, [r2, #11]
	strh r0, [r1, #10]
	strb r4, [r1, #8]
	ldr r0, [r2, #4]
	add r0, r0, r8
	str r0, [r1, #4]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_0801B494:
	ldrh r0, [r2]
	lsl r0, r0, #2
	add r0, r0, #8
	add r2, r2, r0
	add r3, r3, #1
	ldr r0, [r6]
	cmp r3, r0
	bcc _0801B46A
_0801B4A4:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801B4B4:
	.4byte 0x03000098
_0801B4B8:
	.4byte 0x0300009C
	THUMB_FUNC_END sub_0801B430

	THUMB_FUNC_START update_animated_tiles_0801B4BC
update_animated_tiles_0801B4BC: @ 0x0801B4BC
	push {r4-r6,lr}
	mov r4, #0
	ldr r5, _0801B500  @ =0x0300009C
	ldr r0, [r5]
	cmp r4, r0
	bge _0801B4FA
	ldr r0, _0801B504  @ =0x03000098
	ldr r3, _0801B508  @ =REG_DMA3SAD
	ldr r2, [r0]
	mov r6, #128
	lsl r6, r6, #24
_0801B4D2:
	ldr r1, [r2, #12]
	ldrb r0, [r2, #8]
	lsl r0, r0, #2
	add r1, r1, r0
	ldrh r1, [r1, #8]
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r3]
	ldr r0, [r2, #4]
	str r0, [r3, #4]
	ldrb r0, [r2, #9]
	lsr r0, r0, #1
	orr r0, r0, r6
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	add r2, r2, #16
	add r4, r4, #1
	ldr r0, [r5]
	cmp r4, r0
	blt _0801B4D2
_0801B4FA:
	pop {r4-r6}
	pop {r0}
	bx r0
_0801B500:
	.4byte 0x0300009C
_0801B504:
	.4byte 0x03000098
_0801B508:
	.4byte REG_DMA3SAD
	THUMB_FUNC_END update_animated_tiles_0801B4BC

	THUMB_FUNC_START sub_0801B50C
sub_0801B50C: @ 0x0801B50C
	push {r4-r7,lr}
	lsl r0, r0, #16
	lsr r1, r0, #16
	mov r3, #0
	ldr r2, _0801B544  @ =0x0300009C
	ldr r0, [r2]
	cmp r3, r0
	bge _0801B554
	ldr r0, _0801B548  @ =0x03000098
	mov r12, r0
	lsl r0, r1, #16
	asr r5, r0, #16
	mov r4, #0
	mov r7, #2
	add r6, r2, #0
_0801B52A:
	mov r1, r12
	ldr r0, [r1]
	lsl r1, r3, #4
	add r1, r1, r0
	ldr r2, [r1, #12]
	ldrb r0, [r2, #2]
	cmp r0, r5
	bne _0801B54C
	strb r4, [r1, #8]
	strh r7, [r1, #10]
	strb r4, [r2, #3]
	b _0801B554
	.byte 0x00
	.byte 0x00
_0801B544:
	.4byte 0x0300009C
_0801B548:
	.4byte 0x03000098
_0801B54C:
	add r3, r3, #1
	ldr r0, [r6]
	cmp r3, r0
	blt _0801B52A
_0801B554:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B50C

	.ALIGN 2, 0
