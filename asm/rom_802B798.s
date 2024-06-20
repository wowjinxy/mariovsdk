	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_0802B798
sub_0802B798: @ 0x0802B798
	push {r4-r7,lr}
	sub sp, sp, #12
	mov r2, #50
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _0802B7A6
	b _0802B962
_0802B7A6:
	mov r0, #127
	and r0, r0, r1
	cmp r0, #9
	bne _0802B840
	ldr r7, _0802B828  @ =gCurrentSwitchState
	ldrb r6, [r7]
	cmp r6, #1
	bne _0802B7B8
	b _0802B962
_0802B7B8:
	ldr r0, _0802B82C  @ =gEWRAMBasePtr
	ldr r2, [r0]
	lsr r1, r1, #16
	lsl r1, r1, #1
	ldr r3, _0802B830  @ =0x0000600C
	add r0, r2, r3
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #16
	asr r0, r0, #14
	add r2, r2, r0
	ldrb r4, [r2, #14]
	lsl r4, r4, #25
	lsr r4, r4, #22
	ldrb r5, [r2, #15]
	lsl r5, r5, #3
	ldr r3, _0802B834  @ =gPreviousSwitchState
	strb r6, [r3]
	mov r0, #1
	strb r0, [r7]
	ldr r2, _0802B838  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #10
	orr r0, r0, r1
	str r0, [r2]
	ldrb r1, [r3]
	mov r0, #1
	bl sub_080035C0
	mov r0, #1
	bl sub_0801B50C
	ldr r0, _0802B83C  @ =0x030019E4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_08041F2C
	sub r4, r4, #8
	add r5, r5, #8
	mov r0, #3
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0804138C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #56
	b _0802B8BA
	.byte 0x00
	.byte 0x00
_0802B828:
	.4byte gCurrentSwitchState
_0802B82C:
	.4byte gEWRAMBasePtr
_0802B830:
	.4byte 0x0000600C
_0802B834:
	.4byte gPreviousSwitchState
_0802B838:
	.4byte gUnknown_030019A0
_0802B83C:
	.4byte 0x030019E4
_0802B840:
	cmp r0, #8
	bne _0802B8E0
	ldr r7, _0802B8C8  @ =gCurrentSwitchState
	ldrb r6, [r7]
	cmp r6, #2
	bne _0802B84E
	b _0802B962
_0802B84E:
	ldr r0, _0802B8CC  @ =gEWRAMBasePtr
	ldr r2, [r0]
	lsr r1, r1, #16
	lsl r1, r1, #1
	ldr r3, _0802B8D0  @ =0x0000600C
	add r0, r2, r3
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #16
	asr r0, r0, #14
	add r2, r2, r0
	ldrb r4, [r2, #14]
	lsl r4, r4, #25
	lsr r4, r4, #22
	ldrb r5, [r2, #15]
	lsl r5, r5, #3
	ldr r3, _0802B8D4  @ =gPreviousSwitchState
	strb r6, [r3]
	mov r0, #2
	strb r0, [r7]
	ldr r2, _0802B8D8  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #10
	orr r0, r0, r1
	str r0, [r2]
	ldrb r1, [r3]
	mov r0, #2
	bl sub_080035C0
	mov r0, #1
	bl sub_0801B50C
	ldr r0, _0802B8DC  @ =0x030019E4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_08041F2C
	sub r4, r4, #8
	add r5, r5, #8
	mov r0, #4
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0804138C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #57
_0802B8BA:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0802B962
	.byte 0x00
	.byte 0x00
_0802B8C8:
	.4byte gCurrentSwitchState
_0802B8CC:
	.4byte gEWRAMBasePtr
_0802B8D0:
	.4byte 0x0000600C
_0802B8D4:
	.4byte gPreviousSwitchState
_0802B8D8:
	.4byte gUnknown_030019A0
_0802B8DC:
	.4byte 0x030019E4
_0802B8E0:
	cmp r0, #10
	bne _0802B962
	ldr r7, _0802B96C  @ =gCurrentSwitchState
	ldrb r6, [r7]
	cmp r6, #3
	beq _0802B962
	ldr r0, _0802B970  @ =gEWRAMBasePtr
	ldr r2, [r0]
	lsr r1, r1, #16
	lsl r1, r1, #1
	ldr r3, _0802B974  @ =0x0000600C
	add r0, r2, r3
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #16
	asr r0, r0, #14
	add r2, r2, r0
	ldrb r4, [r2, #14]
	lsl r4, r4, #25
	lsr r4, r4, #22
	ldrb r5, [r2, #15]
	lsl r5, r5, #3
	ldr r3, _0802B978  @ =gPreviousSwitchState
	strb r6, [r3]
	mov r0, #3
	strb r0, [r7]
	ldr r2, _0802B97C  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #10
	orr r0, r0, r1
	str r0, [r2]
	ldrb r1, [r3]
	mov r0, #3
	bl sub_080035C0
	mov r0, #1
	bl sub_0801B50C
	ldr r0, _0802B980  @ =0x030019E4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_08041F2C
	sub r4, r4, #8
	add r5, r5, #8
	mov r0, #5
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0804138C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #58
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802B962:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802B96C:
	.4byte gCurrentSwitchState
_0802B970:
	.4byte gEWRAMBasePtr
_0802B974:
	.4byte 0x0000600C
_0802B978:
	.4byte gPreviousSwitchState
_0802B97C:
	.4byte gUnknown_030019A0
_0802B980:
	.4byte 0x030019E4
	THUMB_FUNC_END sub_0802B798

	THUMB_FUNC_START sub_0802B984
sub_0802B984: @ 0x0802B984
	ldr r0, _0802B994  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #9
	orr r1, r1, r2
	str r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0802B994:
	.4byte gUnknown_030019A0
	THUMB_FUNC_END sub_0802B984

	THUMB_FUNC_START sub_0802B998
sub_0802B998: @ 0x0802B998
	push {r4,r5,lr}
	ldr r5, _0802B9CC  @ =0x080006D8
	ldr r0, _0802B9D0  @ =0x00001068
	bl arena_allocate
	add r4, r0, #0
	ldr r2, _0802B9D4  @ =0x0400041A
	add r0, r5, #0
	add r1, r4, #0
	bl CpuSet
	ldr r0, _0802B9D8  @ =0x03000C2C
	str r4, [r0]
	ldr r3, _0802B9DC  @ =0x03000970
	ldr r2, _0802B9E0  @ =gUnknown_0807AA1C
	mov r1, #14
_0802B9B8:
	ldm r2!, {r0}
	sub r0, r0, r5
	add r0, r4, r0
	stm r3!, {r0}
	sub r1, r1, #1
	cmp r1, #0
	bge _0802B9B8
	pop {r4,r5}
	pop {r0}
	bx r0
_0802B9CC:
	.4byte sub_080006D8
_0802B9D0:
	.4byte 0x00001068
_0802B9D4:
	.4byte 0x0400041A
_0802B9D8:
	.4byte 0x03000C2C
_0802B9DC:
	.4byte 0x03000970
_0802B9E0:
	.4byte gUnknown_0807AA1C
	THUMB_FUNC_END sub_0802B998

	THUMB_FUNC_START sub_0802B9E4
sub_0802B9E4: @ 0x0802B9E4
	push {lr}
	mov r0, #240
	lsl r0, r0, #1
	bl arena_allocate
	ldr r1, _0802B9FC  @ =0x03000C30
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802B9FC:
	.4byte 0x03000C30
	THUMB_FUNC_END sub_0802B9E4

	THUMB_FUNC_START sub_0802BA00
sub_0802BA00: @ 0x0802BA00
	push {r4,r5,lr}
	ldr r4, _0802BA2C  @ =0x03000C30
	ldr r5, [r4, #4]
	cmp r5, #0
	bne _0802BA16
	mov r0, #240
	lsl r0, r0, #1
	bl arena_allocate
	str r0, [r4, #4]
	str r5, [r4]
_0802BA16:
	ldr r2, [r4]
	cmp r2, #29
	bhi _0802BA30
	lsl r1, r2, #4
	ldr r0, [r4, #4]
	add r0, r0, r1
	add r1, r2, #1
	str r1, [r4]
	mov r1, #0
	str r1, [r0, #12]
	b _0802BA32
_0802BA2C:
	.4byte 0x03000C30
_0802BA30:
	mov r0, #0
_0802BA32:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802BA00

	THUMB_FUNC_START sub_0802BA38
sub_0802BA38: @ 0x0802BA38
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r9, r0
	mov r8, r1
	add r7, r2, #0
	add r6, r3, #0
	ldr r1, _0802BA90  @ =0x03000C30
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0802BA84
	add r4, r0, #0
	ldr r0, [r1]
	lsl r0, r0, #4
	add r5, r4, r0
	cmp r4, r5
	bcs _0802BA84
_0802BA5C:
	ldr r1, [r4, #8]
	ldr r0, [r4, #12]
	cmp r1, r0
	beq _0802BA7E
	add r0, r4, #0
	mov r2, r9
	mov r3, r8
	bl sub_080064D4
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_080064D4
	ldr r0, [r4, #8]
	str r0, [r4, #12]
_0802BA7E:
	add r4, r4, #16
	cmp r4, r5
	bcc _0802BA5C
_0802BA84:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0802BA90:
	.4byte 0x03000C30
	THUMB_FUNC_END sub_0802BA38

	THUMB_FUNC_START sub_0802BA94
sub_0802BA94: @ 0x0802BA94
	ldr r1, _0802BA9C  @ =0x03000C30
	mov r0, #0
	str r0, [r1, #4]
	bx lr
_0802BA9C:
	.4byte 0x03000C30
	THUMB_FUNC_END sub_0802BA94

	THUMB_FUNC_START sub_0802BAA0
sub_0802BAA0: @ 0x0802BAA0
	push {r4-r7,lr}
	ldr r0, _0802BACC  @ =0x03000C40
	ldr r1, [r0, #32]
	cmp r1, #0
	beq _0802BB1A
	add r4, r1, #0
	ldr r1, [r0, #28]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r7, r4, r0
	cmp r4, r7
	bcs _0802BB1A
_0802BABA:
	ldr r6, [r4]
	cmp r6, #0
	beq _0802BB14
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0802BAD0
	sub r0, r0, #1
	b _0802BB12
	.byte 0x00
	.byte 0x00
_0802BACC:
	.4byte 0x03000C40
_0802BAD0:
	ldr r2, [r4, #8]
	ldr r5, _0802BB0C  @ =0x03000C40
	ldr r1, [r2, #8]
	ldr r0, [r5, #24]
	add r3, r1, r0
	str r3, [r2, #8]
	lsl r0, r6, #3
	add r1, r5, #4
	add r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bne _0802BB10
	ldr r1, [r5, #32]
	sub r1, r4, r1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #0
	bl sub_0802BC64
	b _0802BB14
_0802BB0C:
	.4byte 0x03000C40
_0802BB10:
	ldrb r0, [r3, #12]
_0802BB12:
	strb r0, [r4, #4]
_0802BB14:
	add r4, r4, #12
	cmp r4, r7
	bcc _0802BABA
_0802BB1A:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802BAA0

	THUMB_FUNC_START sub_0802BB20
sub_0802BB20: @ 0x0802BB20
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r0, _0802BB48  @ =0x03000C40
	str r4, [r0, #24]
	add r3, r0, #0
	mov r1, #2
_0802BB2E:
	str r2, [r3]
	ldrb r0, [r2, #11]
	mul r0, r4, r0
	add r2, r2, r0
	str r2, [r3, #4]
	add r3, r3, #8
	sub r1, r1, #1
	cmp r1, #0
	bge _0802BB2E
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BB48:
	.4byte 0x03000C40
	THUMB_FUNC_END sub_0802BB20

	THUMB_FUNC_START sub_0802BB4C
sub_0802BB4C: @ 0x0802BB4C
	push {r4,lr}
	sub sp, sp, #4
	mov r0, #84
	bl arena_allocate
	add r1, r0, #0
	ldr r4, _0802BB78  @ =0x03000C40
	str r1, [r4, #32]
	mov r2, sp
	mov r0, #0
	strh r0, [r2]
	ldr r2, _0802BB7C  @ =0x0100002A
	mov r0, sp
	bl CpuSet
	mov r0, #0
	str r0, [r4, #28]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BB78:
	.4byte 0x03000C40
_0802BB7C:
	.4byte 0x0100002A
	THUMB_FUNC_END sub_0802BB4C

	THUMB_FUNC_START sub_0802BB80
sub_0802BB80: @ 0x0802BB80
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	lsl r1, r1, #24
	lsr r7, r1, #24
	lsl r2, r2, #16
	lsr r6, r2, #16
	ldr r5, _0802BBC8  @ =0x03000C40
	ldr r4, [r5, #32]
	cmp r4, #0
	bne _0802BBB4
	mov r0, #84
	bl arena_allocate
	add r1, r0, #0
	str r1, [r5, #32]
	mov r0, sp
	strh r4, [r0]
	ldr r2, _0802BBCC  @ =0x0100002A
	bl CpuSet
	str r4, [r5, #28]
_0802BBB4:
	ldr r0, [r5, #28]
	cmp r0, #6
	bhi _0802BBC4
	bl sub_0802BA00
	add r4, r0, #0
	cmp r4, #0
	bne _0802BBD0
_0802BBC4:
	mov r0, #0
	b _0802BBF4
_0802BBC8:
	.4byte 0x03000C40
_0802BBCC:
	.4byte 0x0100002A
_0802BBD0:
	ldr r3, [r5, #28]
	lsl r1, r3, #1
	add r1, r1, r3
	lsl r1, r1, #2
	ldr r2, [r5, #32]
	add r2, r2, r1
	add r3, r3, #1
	str r3, [r5, #28]
	mov r1, #0
	strb r1, [r2, #4]
	str r1, [r2]
	str r4, [r2, #8]
	strh r6, [r2, #6]
	mov r1, r8
	str r1, [r4]
	str r7, [r4, #4]
	ldr r1, [r5]
	str r1, [r4, #8]
_0802BBF4:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802BB80

	THUMB_FUNC_START sub_0802BC00
sub_0802BC00: @ 0x0802BC00
	push {r4,lr}
	ldr r1, _0802BC48  @ =gEWRAMBasePtr
	ldr r1, [r1]
	lsl r0, r0, #1
	ldr r2, _0802BC4C  @ =0x0000600C
	add r1, r1, r2
	add r1, r1, r0
	ldrh r4, [r1]
	ldr r3, _0802BC50  @ =0x03000C40
	ldr r2, [r3, #32]
	ldr r1, [r3, #28]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r1, r2, r0
	cmp r2, r1
	bcs _0802BC5A
_0802BC22:
	ldrh r0, [r2, #6]
	cmp r0, r4
	bne _0802BC54
	ldr r1, [r3, #32]
	sub r1, r2, r1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #2
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _0802BC5C
_0802BC48:
	.4byte gEWRAMBasePtr
_0802BC4C:
	.4byte 0x0000600C
_0802BC50:
	.4byte 0x03000C40
_0802BC54:
	add r2, r2, #12
	cmp r2, r1
	bcc _0802BC22
_0802BC5A:
	mov r0, #1
_0802BC5C:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802BC00

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802BC64
sub_0802BC64: @ 0x0802BC64
	push {r4,lr}
	add r3, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _0802BC94  @ =0x03000C40
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #2
	ldr r0, [r4, #32]
	add r2, r0, r1
	ldr r0, [r2]
	cmp r0, r3
	beq _0802BC8E
	str r3, [r2]
	ldr r1, [r2, #8]
	lsl r0, r3, #3
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1, #8]
	ldrb r0, [r0, #12]
	strb r0, [r2, #4]
_0802BC8E:
	pop {r4}
	pop {r0}
	bx r0
_0802BC94:
	.4byte 0x03000C40
	THUMB_FUNC_END sub_0802BC64

	THUMB_FUNC_START sub_0802BC98
sub_0802BC98: @ 0x0802BC98
	ldr r1, _0802BCA0  @ =0x03000C40
	mov r0, #0
	str r0, [r1, #32]
	bx lr
_0802BCA0:
	.4byte 0x03000C40
	THUMB_FUNC_END sub_0802BC98

	THUMB_FUNC_START sub_0802BCA4
sub_0802BCA4: @ 0x0802BCA4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #8
	add r2, r0, #0
	add r6, r1, #0
	mov r3, #104
	cmp r2, #0
	beq _0802BCDC
	ldr r1, [r2]
	cmp r1, #0
	bge _0802BCDC
	ldr r0, _0802BCD8  @ =0x7FFFFFFF
	and r1, r1, r0
	cmp r1, r3
	bls _0802BCDC
	ldr r0, [r2, #104]
	cmp r0, #0
	beq _0802BCDC
	add r1, r2, r0
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _0802BCDC
	add r5, r1, #0
	b _0802BCF2
	.byte 0x00
	.byte 0x00
_0802BCD8:
	.4byte 0x7FFFFFFF
_0802BCDC:
	cmp r6, #0
	bne _0802BCF0
	ldr r1, _0802BCEC  @ =0x03000C90
	str r6, [r1, #24]
	mov r0, #4
	strh r0, [r1, #8]
	b _0802BDF0
	.byte 0x00
	.byte 0x00
_0802BCEC:
	.4byte 0x03000C90
_0802BCF0:
	ldr r5, _0802BD14  @ =gUnknown_0807BA58
_0802BCF2:
	ldr r0, _0802BD18  @ =0x08001840
	ldr r7, _0802BD1C  @ =0x08001760
	sub r4, r0, r7
	add r0, r4, #0
	bl arena_allocate
	add r1, r0, #0
	ldr r0, _0802BD20  @ =0x03000C90
	str r1, [r0, #24]
	cmp r6, #0
	beq _0802BD24
	lsl r2, r4, #10
	lsr r2, r2, #11
	add r0, r7, #0
	bl CpuSet
	b _0802BD2E
_0802BD14:
	.4byte gUnknown_0807BA58
_0802BD18:
	.4byte sub_08001840
_0802BD1C:
	.4byte sub_08001760
_0802BD20:
	.4byte 0x03000C90
_0802BD24:
	ldr r0, _0802BDFC  @ =0x0800169C
	lsl r2, r4, #10
	lsr r2, r2, #11
	bl CpuSet
_0802BD2E:
	ldrh r0, [r5, #2]
	lsl r0, r0, #4
	add r0, r0, #1
	bl arena_allocate
	ldr r1, _0802BE00  @ =0x03000C90
	str r0, [r1, #20]
	add r0, sp, #4
	mov r8, r0
	add r6, r1, #0
	add r6, r6, #12
	mov r4, #1
_0802BD46:
	mov r0, #228
	lsl r0, r0, #1
	bl arena_allocate
	stm r6!, {r0}
	sub r4, r4, #1
	cmp r4, #0
	bge _0802BD46
	mov r0, #0
	str r0, [sp]
	ldr r6, _0802BE00  @ =0x03000C90
	ldr r1, [r6, #20]
	ldrh r2, [r5, #2]
	lsl r2, r2, #2
	mov r0, #160
	lsl r0, r0, #19
	orr r2, r2, r0
	mov r0, sp
	bl CpuSet
	mov r4, #0
	ldrh r1, [r5, #2]
	cmp r4, r1
	bge _0802BD96
	add r3, r6, #0
	add r2, r5, #4
_0802BD7A:
	lsl r0, r4, #4
	ldr r1, [r3, #20]
	add r1, r1, r0
	ldr r0, [r2]
	str r0, [r1]
	ldrh r0, [r2, #8]
	strh r0, [r1, #12]
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	add r2, r2, #12
	add r4, r4, #1
	ldrh r0, [r5, #2]
	cmp r4, r0
	blt _0802BD7A
_0802BD96:
	ldr r7, _0802BE04  @ =0x03000C70
	ldrh r0, [r5, #2]
	str r0, [r7, #24]
	ldr r6, _0802BE00  @ =0x03000C90
	ldr r0, [r6, #20]
	str r0, [r7, #20]
	ldrh r4, [r5]
	ldr r0, _0802BE08  @ =gUnknown_0807BB30
	lsl r4, r4, #2
	add r0, r4, r0
	ldr r0, [r0]
	str r0, [r7]
	mov r0, #0
	mov r1, r8
	strh r0, [r1]
	ldr r5, _0802BE0C  @ =gBGLayerOffsets 
	ldr r2, _0802BE10  @ =0x01000008
	mov r0, r8
	add r1, r5, #0
	bl CpuSet
	add r0, r4, r5
	str r0, [r7, #8]
	add r5, r5, #2
	add r4, r4, r5
	str r4, [r7, #12]
	ldr r0, _0802BE14  @ =0x04000005
	str r0, [r7, #4]
	ldr r0, [r7]
	str r0, [r6]
	ldr r0, [r6, #16]
	str r0, [r6, #4]
	mov r0, #3
	strh r0, [r6, #8]
	mov r0, #1
	strh r0, [r6, #10]
	ldr r4, [r6, #24]
	cmp r4, #0
	beq _0802BDF0
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	mov r3, #0
	bl _call_via_r4
_0802BDF0:
	add sp, sp, #8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0802BDFC:
	.4byte sub_0800169C
_0802BE00:
	.4byte 0x03000C90
_0802BE04:
	.4byte 0x03000C70
_0802BE08:
	.4byte gUnknown_0807BB30
_0802BE0C:
	.4byte gBGLayerOffsets 
_0802BE10:
	.4byte 0x01000008
_0802BE14:
	.4byte 0x04000005
	THUMB_FUNC_END sub_0802BCA4

	THUMB_FUNC_START sub_0802BE18
sub_0802BE18: @ 0x0802BE18
	push {lr}
	add r2, r0, #0
	mov r3, #104
	cmp r2, #0
	beq _0802BE48
	ldr r1, [r2]
	cmp r1, #0
	bge _0802BE48
	ldr r0, _0802BE44  @ =0x7FFFFFFF
	and r1, r1, r0
	cmp r1, r3
	bls _0802BE48
	ldr r0, [r2, #104]
	cmp r0, #0
	beq _0802BE48
	add r0, r2, r0
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0802BE48
	mov r0, #1
	b _0802BE4A
	.byte 0x00
	.byte 0x00
_0802BE44:
	.4byte 0x7FFFFFFF
_0802BE48:
	mov r0, #0
_0802BE4A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802BE18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802BE50
sub_0802BE50: @ 0x0802BE50
	push {r4,lr}
	ldr r0, _0802BE6C  @ =0x03000C90
	ldr r4, [r0, #24]
	cmp r4, #0
	beq _0802BE64
	ldr r1, _0802BE70  @ =0x03000C70
	mov r2, #0
	mov r3, #0
	bl _call_via_r4
_0802BE64:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BE6C:
	.4byte 0x03000C90
_0802BE70:
	.4byte 0x03000C70
	THUMB_FUNC_END sub_0802BE50

	THUMB_FUNC_START sub_0802BE74
sub_0802BE74: @ 0x0802BE74
	push {lr}
	ldr r0, _0802BE94  @ =0x03000C90
	ldrh r1, [r0, #8]
	add r2, r0, #0
	cmp r1, #1
	bhi _0802BE9E
	cmp r1, #1
	bne _0802BE9A
	ldr r0, [r2, #4]
	ldr r1, [r2, #12]
	cmp r0, r1
	bne _0802BE98
	ldr r0, [r2, #16]
	str r0, [r2, #4]
	b _0802BE9A
	.byte 0x00
	.byte 0x00
_0802BE94:
	.4byte 0x03000C90
_0802BE98:
	str r1, [r2, #4]
_0802BE9A:
	mov r0, #0
	strh r0, [r2, #8]
_0802BE9E:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802BE74

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802BEA4
sub_0802BEA4: @ 0x0802BEA4
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r0, _0802BEDC  @ =0x03000C90
	ldr r5, [r0, #24]
	cmp r5, #0
	beq _0802BED4
	ldr r1, _0802BEE0  @ =0x03000C70
	ldr r2, _0802BEE4  @ =gUnknown_0807BA68
	ldr r4, _0802BEE8  @ =0x0300015A
	mov r7, #0
	ldrsh r3, [r4, r7]
	bl _call_via_r5
	cmp r6, #0
	beq _0802BED4
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	cmp r0, #0
	bge _0802BED4
	mov r0, #99
	strh r0, [r4]
_0802BED4:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BEDC:
	.4byte 0x03000C90
_0802BEE0:
	.4byte 0x03000C70
_0802BEE4:
	.4byte gUnknown_0807BA68
_0802BEE8:
	.4byte 0x0300015A
	THUMB_FUNC_END sub_0802BEA4

	THUMB_FUNC_START sub_0802BEEC
sub_0802BEEC: @ 0x0802BEEC
	push {lr}
	ldr r1, _0802BF14  @ =REG_BG0HOFS
	mov r2, #8
	bl CpuSet
	ldr r1, _0802BF18  @ =0x03000C90
	ldrh r0, [r1, #8]
	cmp r0, #2
	bhi _0802BF0E
	ldrh r0, [r1, #10]
	cmp r0, #0
	beq _0802BF0E
	ldr r0, [r1, #4]
	ldr r1, [r1]
	mov r2, #1
	bl CpuSet
_0802BF0E:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BF14:
	.4byte REG_BG0HOFS
_0802BF18:
	.4byte 0x03000C90
	THUMB_FUNC_END sub_0802BEEC

	THUMB_FUNC_START sub_0802BF1C
sub_0802BF1C: @ 0x0802BF1C
	ldr r1, _0802BF24  @ =0x0300015A
	mov r0, #0
	strh r0, [r1]
	bx lr
_0802BF24:
	.4byte 0x0300015A
	THUMB_FUNC_END sub_0802BF1C

	THUMB_FUNC_START enable_vcount_interrupt_0802BF28
enable_vcount_interrupt_0802BF28: @ 0x0802BF28
	ldr r2, _0802BF58  @ =0x04000200
	ldrh r0, [r2]
	mov r1, #4
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0802BF5C  @ =0x04000005
	mov r0, #0
	strb r0, [r1]
	ldr r2, _0802BF60  @ =REG_DISPSTAT
	ldrh r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0802BF64  @ =REG_DMA0CNT_H
	mov r0, #0
	strh r0, [r1]
	ldr r0, _0802BF68  @ =0x03000CB0
	mov r1, #227
	strb r1, [r0, #4]
	ldr r1, _0802BF6C  @ =0x0802C081
	str r1, [r0]
	str r0, [r0, #8]
	bx lr
	.byte 0x00
	.byte 0x00
_0802BF58:
	.4byte 0x04000200
_0802BF5C:
	.4byte 0x04000005
_0802BF60:
	.4byte REG_DISPSTAT
_0802BF64:
	.4byte REG_DMA0CNT_H
_0802BF68:
	.4byte 0x03000CB0
_0802BF6C:
	.4byte sub_0802C080
	THUMB_FUNC_END enable_vcount_interrupt_0802BF28

	THUMB_FUNC_START sub_0802BF70
sub_0802BF70: @ 0x0802BF70
	push {r4,r5,lr}
	ldr r0, _0802BF9C  @ =0x03000CB0
	ldr r5, [r0, #104]
	cmp r5, #0
	beq _0802BF96
	add r4, r5, #0
_0802BF7C:
	ldr r0, [r4, #16]
	ldr r1, [r4]
	bl _call_via_r1
	ldr r4, [r4, #12]
	cmp r4, #0
	bne _0802BF7C
	ldr r1, _0802BF9C  @ =0x03000CB0
	ldr r0, [r5, #8]
	str r0, [r1, #104]
	ldr r1, _0802BFA0  @ =0x04000005
	ldrb r0, [r5, #4]
	strb r0, [r1]
_0802BF96:
	pop {r4,r5}
	pop {r0}
	bx r0
_0802BF9C:
	.4byte 0x03000CB0
_0802BFA0:
	.4byte 0x04000005
	THUMB_FUNC_END sub_0802BF70

	THUMB_FUNC_START sub_0802BFA4
sub_0802BFA4: @ 0x0802BFA4
	ldr r1, _0802BFB8  @ =REG_DMA0CNT_H
	mov r0, #0
	strh r0, [r1]
	ldr r0, _0802BFBC  @ =0x03000CB0
	str r0, [r0, #108]
	str r0, [r0, #8]
	mov r1, #1
	str r1, [r0, #100]
	bx lr
	.byte 0x00
	.byte 0x00
_0802BFB8:
	.4byte REG_DMA0CNT_H
_0802BFBC:
	.4byte 0x03000CB0
	THUMB_FUNC_END sub_0802BFA4

	THUMB_FUNC_START sub_0802BFC0
sub_0802BFC0: @ 0x0802BFC0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r8, r0
	add r6, r1, #0
	add r5, r2, #0
	mov r0, #0
	mov r12, r0
	cmp r5, #159
	bhi _0802C04A
	mov r7, #0
	ldr r0, _0802BFFC  @ =0x03000CB0
	ldr r3, [r0, #108]
	add r2, r3, #0
	mov r9, r0
	cmp r3, #0
	beq _0802C00C
	add r1, r5, #2
_0802BFE6:
	ldrb r0, [r3, #4]
	cmp r0, r5
	bcc _0802C004
	cmp r0, r1
	bhi _0802C000
	ldr r0, [r3]
	cmp r0, r6
	beq _0802C04A
	mov r1, #1
	mov r12, r1
	b _0802C00C
_0802BFFC:
	.4byte 0x03000CB0
_0802C000:
	cmp r0, r5
	bhi _0802C00C
_0802C004:
	add r7, r3, #0
	ldr r3, [r3, #8]
	cmp r3, r2
	bne _0802BFE6
_0802C00C:
	mov r2, r9
	ldr r1, [r2, #100]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r4, r0, r2
	add r1, r1, #1
	str r1, [r2, #100]
	mov r0, #0
	strb r5, [r4, #4]
	str r6, [r4]
	mov r1, r8
	str r1, [r4, #16]
	str r0, [r4, #12]
	mov r0, r12
	cmp r0, #0
	beq _0802C03C
	b _0802C032
_0802C030:
	ldr r3, [r3, #12]
_0802C032:
	ldr r0, [r3, #12]
	cmp r0, #0
	bne _0802C030
	str r4, [r3, #12]
	b _0802C04A
_0802C03C:
	cmp r7, #0
	bne _0802C046
	mov r1, r9
	str r4, [r1, #108]
	b _0802C048
_0802C046:
	str r4, [r7, #8]
_0802C048:
	str r3, [r4, #8]
_0802C04A:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802BFC0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802C058
sub_0802C058: @ 0x0802C058
	push {lr}
	ldr r0, _0802C06C  @ =0x03000CB0
	ldr r2, [r0, #108]
	str r2, [r0, #104]
	cmp r2, #0
	beq _0802C074
	ldr r1, _0802C070  @ =0x04000005
	ldrb r0, [r2, #4]
	strb r0, [r1]
	b _0802C078
_0802C06C:
	.4byte 0x03000CB0
_0802C070:
	.4byte 0x04000005
_0802C074:
	ldr r0, _0802C07C  @ =0x04000005
	strb r2, [r0]
_0802C078:
	pop {r0}
	bx r0
_0802C07C:
	.4byte 0x04000005
	THUMB_FUNC_END sub_0802C058

	THUMB_FUNC_START sub_0802C080
sub_0802C080: @ 0x0802C080
	push {lr}
	ldr r2, _0802C0A8  @ =REG_DMA0SAD
	ldr r0, _0802C0AC  @ =REG_DMA0CNT_H
	mov r1, #0
	strh r1, [r0]
	ldr r1, _0802C0B0  @ =0x03000C90
	ldrh r0, [r1, #8]
	cmp r0, #2
	bhi _0802C0A2
	ldr r0, [r1, #4]
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldrh r0, [r1, #10]
	ldr r1, _0802C0B4  @ =0xA2600000
	orr r0, r0, r1
	str r0, [r2, #8]
_0802C0A2:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802C0A8:
	.4byte REG_DMA0SAD
_0802C0AC:
	.4byte REG_DMA0CNT_H
_0802C0B0:
	.4byte 0x03000C90
_0802C0B4:
	.4byte 0xA2600000
	THUMB_FUNC_END sub_0802C080

	THUMB_FUNC_START gfx_related_0802C0B8
gfx_related_0802C0B8: @ 0x0802C0B8
	push {lr}
	add r1, r0, #0
	ldr r3, _0802C0E0  @ =gCurrentPalette
	cmp r1, #0
	beq _0802C0D6
	ldr r2, [r1]
	cmp r2, #0
	bge _0802C0D6
	ldr r0, _0802C0E4  @ =0x7FFFFFFF
	and r2, r2, r0
	cmp r2, #108
	bls _0802C0D6
	ldr r0, [r1, #108]
	cmp r0, #0
	bne _0802C0E8
_0802C0D6:
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r3, #16]
	b _0802C0FE
	.byte 0x00
	.byte 0x00
_0802C0E0:
	.4byte gCurrentPalette
_0802C0E4:
	.4byte 0x7FFFFFFF
_0802C0E8:
	add r1, r1, r0
	add r0, r1, #4
	str r0, [r3, #8]
	mov r2, #129
	lsl r2, r2, #2
	add r0, r1, r2
	str r0, [r3, #12]
	ldrh r0, [r1]
	strh r0, [r3, #16]
	ldrh r0, [r1, #2]
	strh r0, [r3, #18]
_0802C0FE:
	pop {r0}
	bx r0
	THUMB_FUNC_END gfx_related_0802C0B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802C104
sub_0802C104: @ 0x0802C104
	ldr r3, _0802C114  @ =gCurrentPalette
	lsl r1, r1, #2
	lsl r0, r0, #3
	add r1, r1, r0
	add r1, r1, r3
	str r2, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_0802C114:
	.4byte gCurrentPalette
	THUMB_FUNC_END sub_0802C104

	THUMB_FUNC_START sub_0802C118
sub_0802C118: @ 0x0802C118
	push {lr}
	add r2, r0, #0
	cmp r2, #0
	beq _0802C134
	ldr r1, [r2]
	cmp r1, #0
	bge _0802C134
	ldr r0, _0802C138  @ =0x7FFFFFFF
	and r1, r1, r0
	cmp r1, #108
	bls _0802C134
	ldr r0, [r2, #108]
	cmp r0, #0
	bne _0802C13C
_0802C134:
	mov r0, #0
	b _0802C13E
_0802C138:
	.4byte 0x7FFFFFFF
_0802C13C:
	mov r0, #1
_0802C13E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802C118

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802C144
sub_0802C144: @ 0x0802C144
	push {r4,lr}
	add r2, r0, #0
	ldr r4, _0802C198  @ =gCurrentPalette
	ldrh r1, [r4, #16]
	mov r0, #128
	lsl r0, r0, #3
	cmp r1, r0
	beq _0802C192
	ldr r1, [r4]
	cmp r1, #0
	beq _0802C192
	ldr r3, [r4, #4]
	cmp r3, #0
	beq _0802C192
	ldr r0, _0802C19C  @ =REG_DMA3SAD
	str r1, [r0]
	mov r1, #160
	lsl r1, r1, #19
	str r1, [r0, #4]
	ldr r1, _0802C1A0  @ =0x80000100
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [r0]
	ldr r1, _0802C1A4  @ =0x05000200
	str r1, [r0, #4]
	ldr r1, _0802C1A8  @ =0x84000080
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r4, #16]
	sub r2, r0, r2
	cmp r2, #159
	bgt _0802C192
	cmp r2, #0
	bge _0802C18A
	mov r2, #0
_0802C18A:
	ldr r1, _0802C1AC  @ =0x0802C1C1
	add r0, r4, #0
	bl sub_0802BFC0
_0802C192:
	pop {r4}
	pop {r0}
	bx r0
_0802C198:
	.4byte gCurrentPalette
_0802C19C:
	.4byte REG_DMA3SAD
_0802C1A0:
	.4byte 0x80000100
_0802C1A4:
	.4byte 0x05000200
_0802C1A8:
	.4byte 0x84000080
_0802C1AC:
	.4byte sub_0802C1C0
	THUMB_FUNC_END sub_0802C144

	THUMB_FUNC_START sub_0802C1B0
sub_0802C1B0: @ 0x0802C1B0
	ldr r1, _0802C1BC  @ =gCurrentPalette
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r1, #16]
	bx lr
	.byte 0x00
	.byte 0x00
_0802C1BC:
	.4byte gCurrentPalette
	THUMB_FUNC_END sub_0802C1B0

	THUMB_FUNC_START sub_0802C1C0
sub_0802C1C0: @ 0x0802C1C0
	push {lr}
	add r2, r0, #0
	add r3, r2, #0
	ldrh r1, [r2, #18]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0802C1E2
	ldr r1, _0802C200  @ =REG_DMA3SAD
	ldr r0, [r2, #8]
	str r0, [r1]
	mov r0, #160
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0802C204  @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0802C1E2:
	ldrh r1, [r3, #18]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802C1FC
	ldr r1, _0802C200  @ =REG_DMA3SAD
	ldr r0, [r3, #12]
	str r0, [r1]
	ldr r0, _0802C208  @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _0802C204  @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0802C1FC:
	pop {r0}
	bx r0
_0802C200:
	.4byte REG_DMA3SAD
_0802C204:
	.4byte 0x84000080
_0802C208:
	.4byte 0x05000200
	THUMB_FUNC_END sub_0802C1C0

	THUMB_FUNC_START sub_0802C20C
sub_0802C20C: @ 0x0802C20C
	push {r4,r5,lr}
	ldr r0, _0802C23C  @ =0x0300015C
	mov r1, #0
	str r1, [r0]
	ldr r2, _0802C240  @ =gUnknown_03000D38
	mov r0, #90
	strh r0, [r2]
	ldr r0, _0802C244  @ =0x03000D34
	str r1, [r0]
	ldr r0, _0802C248  @ =0x03000D3C
	strb r1, [r0]
	ldr r2, _0802C24C  @ =0x03000160
	strb r1, [r2]
	ldr r0, _0802C250  @ =0x03000161
	strb r1, [r0]
	ldr r0, _0802C254  @ =gMainState
	ldr r0, [r0]
	sub r0, r0, #5
	add r4, r2, #0
	cmp r0, #1
	bhi _0802C260
	ldr r1, _0802C258  @ =0x03000164
	ldr r3, _0802C25C  @ =gUnknown_0807C0E0
	b _0802C2C4
_0802C23C:
	.4byte 0x0300015C
_0802C240:
	.4byte gUnknown_03000D38
_0802C244:
	.4byte 0x03000D34
_0802C248:
	.4byte 0x03000D3C
_0802C24C:
	.4byte 0x03000160
_0802C250:
	.4byte 0x03000161
_0802C254:
	.4byte gMainState
_0802C258:
	.4byte 0x03000164
_0802C25C:
	.4byte gUnknown_0807C0E0
_0802C260:
	ldr r0, _0802C274  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0802C280
	ldr r1, _0802C278  @ =0x03000164
	ldr r3, _0802C27C  @ =gUnknown_0807C098
	b _0802C2C4
	.byte 0x00
	.byte 0x00
_0802C274:
	.4byte gLevelType
_0802C278:
	.4byte 0x03000164
_0802C27C:
	.4byte gUnknown_0807C098
_0802C280:
	cmp r0, #2
	bne _0802C2A0
	ldr r1, _0802C294  @ =0x03000164
	ldr r2, _0802C298  @ =gUnknown_0807C0D0
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldr r1, _0802C29C  @ =0x03000168
	ldr r0, [r2]
	b _0802C2DE
	.byte 0x00
	.byte 0x00
_0802C294:
	.4byte 0x03000164
_0802C298:
	.4byte gUnknown_0807C0D0
_0802C29C:
	.4byte 0x03000168
_0802C2A0:
	cmp r0, #3
	bne _0802C2C0
	ldr r1, _0802C2B4  @ =0x03000164
	ldr r2, _0802C2B8  @ =gUnknown_0807C0D8
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldr r1, _0802C2BC  @ =0x03000168
	ldr r0, [r2]
	b _0802C2DE
	.byte 0x00
	.byte 0x00
_0802C2B4:
	.4byte 0x03000164
_0802C2B8:
	.4byte gUnknown_0807C0D8
_0802C2BC:
	.4byte 0x03000168
_0802C2C0:
	ldr r1, _0802C304  @ =0x03000164
	ldr r3, _0802C308  @ =gUnknown_0807C028
_0802C2C4:
	ldr r2, _0802C30C  @ =gNextLevelInLevelTable
	mov r5, #16
	ldrsh r0, [r2, r5]
	lsl r0, r0, #3
	add r0, r0, r3
	ldrh r0, [r0, #4]
	strh r0, [r1]
	ldr r1, _0802C310  @ =0x03000168
	mov r5, #16
	ldrsh r0, [r2, r5]
	lsl r0, r0, #3
	add r0, r0, r3
	ldr r0, [r0]
_0802C2DE:
	str r0, [r1]
	ldr r2, _0802C314  @ =gUnknown_030009E0
	ldrb r0, [r4]
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r0, [r0, #2]
	strh r0, [r2]
	ldr r1, _0802C318  @ =0x03000D40
	lsl r0, r0, #16
	lsr r0, r0, #19
	strh r0, [r1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802C304:
	.4byte 0x03000164
_0802C308:
	.4byte gUnknown_0807C028
_0802C30C:
	.4byte gNextLevelInLevelTable
_0802C310:
	.4byte 0x03000168
_0802C314:
	.4byte gUnknown_030009E0
_0802C318:
	.4byte 0x03000D40
	THUMB_FUNC_END sub_0802C20C

	THUMB_FUNC_START sub_0802C31C
sub_0802C31C: @ 0x0802C31C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #28
	ldr r0, _0802C3CC  @ =gCurrentLevelWidth
	ldrh r1, [r0]
	lsl r1, r1, #16
	asr r1, r1, #19
	lsl r1, r1, #16
	ldr r0, _0802C3D0  @ =gUnknown_030009E0
	ldrh r0, [r0]
	add r0, r0, #2
	lsr r0, r0, #3
	mov r8, r0
	lsr r0, r1, #16
	str r0, [sp, #16]
	mov r2, #0
	cmp r1, #0
	bgt _0802C348
	b _0802C4F8
_0802C348:
	mov r1, r8
	lsl r0, r1, #16
	asr r5, r0, #16
	lsl r0, r5, #6
	lsl r2, r2, #16
	asr r4, r2, #16
	add r0, r0, r4
	ldr r6, _0802C3D4  @ =gEWRAMBasePtr
	ldr r3, [r6]
	lsl r1, r0, #1
	ldr r6, _0802C3D8  @ =0x0000600C
	add r0, r3, r6
	add r0, r0, r1
	ldrh r0, [r0]
	ldr r1, [sp, #16]
	lsl r1, r1, #16
	str r1, [sp, #24]
	str r2, [sp, #20]
	cmp r0, #0
	bne _0802C372
	b _0802C4E6
_0802C372:
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r3, r0
	ldrh r6, [r0, #12]
	ldr r0, _0802C3DC  @ =gObjectTileDataRAMPtr
	ldr r1, [r0]
	sub r0, r6, #1
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #40
	bne _0802C3EC
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r0, [r0]
	str r4, [sp]
	ldrh r0, [r0, #2]
	sub r0, r5, r0
	add r0, r0, #1
	str r0, [sp, #4]
	mov r0, sp
	bl level_edit_delete_object
	ldr r3, _0802C3D4  @ =gEWRAMBasePtr
	ldr r2, [r3]
	ldr r4, _0802C3E0  @ =0x0000800C
	add r2, r2, r4
	mov r0, sp
	add r1, r6, #0
	bl sub_080063E4
	ldr r0, _0802C3E4  @ =gUnknown_030009EC
	mov r4, #1
	strb r4, [r0]
	mov r0, #40
	bl sub_0801B50C
	ldr r0, _0802C3E8  @ =0x03000D3C
	strb r4, [r0]
	b _0802C4E6
	.byte 0x00
	.byte 0x00
_0802C3CC:
	.4byte gCurrentLevelWidth
_0802C3D0:
	.4byte gUnknown_030009E0
_0802C3D4:
	.4byte gEWRAMBasePtr
_0802C3D8:
	.4byte 0x0000600C
_0802C3DC:
	.4byte gObjectTileDataRAMPtr
_0802C3E0:
	.4byte 0x0000800C
_0802C3E4:
	.4byte gUnknown_030009EC
_0802C3E8:
	.4byte 0x03000D3C
_0802C3EC:
	ldr r0, _0802C520  @ =0x03000D3C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802C4E6
	ldr r0, _0802C524  @ =gUnknown_030009E0
	ldrh r0, [r0]
	add r0, r0, #2
	lsr r0, r0, #3
	mov r8, r0
	ldr r0, _0802C528  @ =0x03000D40
	mov r6, r8
	lsl r2, r6, #16
	mov r3, #0
	ldrsh r1, [r0, r3]
	add r3, r0, #0
	cmp r8, r1
	bge _0802C4DC
	mov r9, r4
_0802C410:
	asr r7, r2, #16
	lsl r0, r7, #6
	add r0, r0, r9
	ldr r4, _0802C52C  @ =gEWRAMBasePtr
	ldr r2, [r4]
	lsl r1, r0, #1
	ldr r6, _0802C530  @ =0x0000600C
	add r0, r2, r6
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802C4C2
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r2, r0
	ldrh r6, [r0, #12]
	ldr r0, _0802C534  @ =gObjectTileDataRAMPtr
	ldr r1, [r0]
	sub r0, r6, #1
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	mov r10, r2
	add r1, r1, r10
	add r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #41
	bne _0802C4C2
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r4, [r0]
	mov r3, r9
	str r3, [sp, #8]
	ldrh r0, [r4, #2]
	sub r0, r7, r0
	add r0, r0, #1
	add r5, sp, #8
	str r0, [r5, #4]
	add r0, r5, #0
	bl level_edit_delete_object
	ldr r0, _0802C52C  @ =gEWRAMBasePtr
	ldr r2, [r0]
	ldr r1, _0802C538  @ =0x0000800C
	add r2, r2, r1
	add r0, r5, #0
	add r1, r6, #0
	bl sub_080063E4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_08001BA4
	ldrh r0, [r4, #2]
	sub r0, r7, r0
	lsl r0, r0, #6
	add r0, r0, r9
	ldr r3, _0802C52C  @ =gEWRAMBasePtr
	ldr r2, [r3]
	lsl r1, r0, #1
	ldr r4, _0802C530  @ =0x0000600C
	add r0, r2, r4
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802C4BA
	ldr r1, _0802C534  @ =gObjectTileDataRAMPtr
	ldr r0, [r1]
	add r1, r6, #2
	lsl r1, r1, #2
	add r0, r0, r10
	add r0, r0, r1
	ldr r4, [r0]
	ldrh r1, [r4, #2]
	ldr r0, [r5, #4]
	sub r0, r0, r1
	str r0, [r5, #4]
	ldr r3, _0802C538  @ =0x0000800C
	add r2, r2, r3
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #6
	bl sub_080064D4
_0802C4BA:
	ldr r1, _0802C53C  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r1]
	ldr r3, _0802C528  @ =0x03000D40
_0802C4C2:
	mov r4, r8
	lsl r0, r4, #16
	mov r6, #128
	lsl r6, r6, #9
	add r0, r0, r6
	lsr r0, r0, #16
	mov r8, r0
	lsl r2, r0, #16
	asr r1, r2, #16
	mov r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	blt _0802C410
_0802C4DC:
	ldr r0, _0802C524  @ =gUnknown_030009E0
	ldrh r0, [r0]
	add r0, r0, #2
	lsr r0, r0, #3
	mov r8, r0
_0802C4E6:
	ldr r6, [sp, #20]
	mov r1, #128
	lsl r1, r1, #9
	add r0, r6, r1
	lsr r2, r0, #16
	ldr r3, [sp, #24]
	cmp r0, r3
	bge _0802C4F8
	b _0802C348
_0802C4F8:
	ldr r1, _0802C520  @ =0x03000D3C
	ldrb r0, [r1]
	cmp r0, #2
	bne _0802C510
	mov r0, #0
	strb r0, [r1]
	ldr r1, _0802C528  @ =0x03000D40
	ldr r0, _0802C524  @ =gUnknown_030009E0
	ldrh r0, [r0]
	add r0, r0, #2
	asr r0, r0, #3
	strh r0, [r1]
_0802C510:
	add sp, sp, #28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802C520:
	.4byte 0x03000D3C
_0802C524:
	.4byte gUnknown_030009E0
_0802C528:
	.4byte 0x03000D40
_0802C52C:
	.4byte gEWRAMBasePtr
_0802C530:
	.4byte 0x0000600C
_0802C534:
	.4byte gObjectTileDataRAMPtr
_0802C538:
	.4byte 0x0000800C
_0802C53C:
	.4byte gUnknown_030009EC
	THUMB_FUNC_END sub_0802C31C

	THUMB_FUNC_START sub_0802C540
sub_0802C540: @ 0x0802C540
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	ldr r0, _0802C574  @ =gNextLevelInLevelTable
	mov r1, #18
	ldrsh r0, [r0, r1]
	cmp r0, #2
	beq _0802C558
	b _0802C6F4
_0802C558:
	ldr r0, _0802C578  @ =0x03000161
	ldrb r1, [r0]
	cmp r1, #1
	bne _0802C590
	ldr r2, _0802C57C  @ =gUnknown_030009E0
	ldr r0, _0802C580  @ =0x03000162
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	bls _0802C584
	sub r0, r1, #1
	strh r0, [r2]
	b _0802C6E8
	.byte 0x00
	.byte 0x00
_0802C574:
	.4byte gNextLevelInLevelTable
_0802C578:
	.4byte 0x03000161
_0802C57C:
	.4byte gUnknown_030009E0
_0802C580:
	.4byte 0x03000162
_0802C584:
	mov r0, #0
	ldr r2, _0802C58C  @ =0x03000161
	strb r0, [r2]
	b _0802C6E8
_0802C58C:
	.4byte 0x03000161
_0802C590:
	cmp r1, #2
	bne _0802C5BC
	ldr r2, _0802C5A8  @ =gUnknown_030009E0
	ldr r0, _0802C5AC  @ =0x03000162
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	bcs _0802C5B0
	add r0, r1, #1
	strh r0, [r2]
	b _0802C6E8
	.byte 0x00
	.byte 0x00
_0802C5A8:
	.4byte gUnknown_030009E0
_0802C5AC:
	.4byte 0x03000162
_0802C5B0:
	mov r0, #0
	ldr r3, _0802C5B8  @ =0x03000161
	strb r0, [r3]
	b _0802C6E8
_0802C5B8:
	.4byte 0x03000161
_0802C5BC:
	ldr r0, _0802C680  @ =0x03000160
	ldrb r3, [r0]
	ldr r1, _0802C684  @ =0x03000164
	ldrh r1, [r1]
	cmp r3, r1
	bcc _0802C5CA
	b _0802C6EC
_0802C5CA:
	ldr r1, _0802C688  @ =gLevelCollectableFlags
	ldrb r7, [r1]
	ldrb r0, [r1, #1]
	mov r8, r0
	add r0, r7, r0
	ldrb r2, [r1, #2]
	mov r10, r2
	add r0, r0, r10
	ldrb r6, [r1, #3]
	add r0, r6, r0
	ldrb r2, [r1, #4]
	mov r12, r2
	add r0, r0, r12
	ldrb r1, [r1, #5]
	mov r9, r1
	add r5, r1, r0
	ldr r2, _0802C68C  @ =0x03000168
	ldr r1, [r2]
	lsl r0, r3, #3
	add r3, r0, r1
	ldrh r4, [r3]
	cmp r4, #0
	bne _0802C608
	ldr r0, _0802C690  @ =0x0300015C
	ldr r1, _0802C694  @ =0x03000D34
	ldr r0, [r0]
	ldr r1, [r1]
	sub r0, r0, r1
	ldrh r1, [r3, #4]
	cmp r0, r1
	bge _0802C652
_0802C608:
	cmp r4, #1
	bne _0802C6E8
	ldrh r0, [r3, #4]
	cmp r0, #4
	bne _0802C61A
	cmp r7, #0
	bne _0802C652
	cmp r6, #0
	bne _0802C652
_0802C61A:
	cmp r0, #5
	bne _0802C62A
	mov r2, r8
	cmp r2, #0
	bne _0802C652
	mov r3, r12
	cmp r3, #0
	bne _0802C652
_0802C62A:
	cmp r0, #6
	bne _0802C63A
	mov r1, r10
	cmp r1, #0
	bne _0802C652
	mov r2, r9
	cmp r2, #0
	bne _0802C652
_0802C63A:
	cmp r0, #1
	bne _0802C642
	cmp r5, #0
	bne _0802C652
_0802C642:
	cmp r0, #2
	bne _0802C64A
	cmp r5, #1
	bhi _0802C652
_0802C64A:
	cmp r0, #3
	bne _0802C6E8
	cmp r5, #2
	bls _0802C6E8
_0802C652:
	ldr r2, _0802C698  @ =0x03000162
	ldr r3, _0802C680  @ =0x03000160
	ldrb r0, [r3]
	ldr r3, _0802C68C  @ =0x03000168
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r0, [r0, #2]
	strh r0, [r2]
	ldr r2, _0802C680  @ =0x03000160
	ldrb r0, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldr r1, _0802C69C  @ =gUnknown_030009E0
	ldrh r0, [r0, #2]
	ldrh r1, [r1]
	cmp r0, r1
	bcs _0802C6A4
	mov r0, #1
	ldr r3, _0802C6A0  @ =0x03000161
	strb r0, [r3]
	b _0802C6AA
	.byte 0x00
	.byte 0x00
_0802C680:
	.4byte 0x03000160
_0802C684:
	.4byte 0x03000164
_0802C688:
	.4byte gLevelCollectableFlags
_0802C68C:
	.4byte 0x03000168
_0802C690:
	.4byte 0x0300015C
_0802C694:
	.4byte 0x03000D34
_0802C698:
	.4byte 0x03000162
_0802C69C:
	.4byte gUnknown_030009E0
_0802C6A0:
	.4byte 0x03000161
_0802C6A4:
	mov r0, #2
	ldr r1, _0802C704  @ =0x03000161
	strb r0, [r1]
_0802C6AA:
	ldr r2, _0802C708  @ =0x03000160
	ldrb r0, [r2]
	ldr r3, _0802C70C  @ =0x03000168
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _0802C6D8
	ldr r1, _0802C710  @ =gUnknown_03000D38
	mov r0, #0
	strh r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #110
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802C6D8:
	ldr r1, _0802C708  @ =0x03000160
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _0802C714  @ =0x03000D34
	ldr r0, _0802C718  @ =0x0300015C
	ldr r0, [r0]
	str r0, [r1]
_0802C6E8:
	bl sub_0802C31C
_0802C6EC:
	ldr r1, _0802C718  @ =0x0300015C
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
_0802C6F4:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802C704:
	.4byte 0x03000161
_0802C708:
	.4byte 0x03000160
_0802C70C:
	.4byte 0x03000168
_0802C710:
	.4byte gUnknown_03000D38
_0802C714:
	.4byte 0x03000D34
_0802C718:
	.4byte 0x0300015C
	THUMB_FUNC_END sub_0802C540

	THUMB_FUNC_START sub_0802C71C
sub_0802C71C: @ 0x0802C71C
	push {r4,r5,lr}
	ldr r0, _0802C774  @ =0x0300015C
	mov r1, #0
	str r1, [r0]
	ldr r2, _0802C778  @ =gUnknown_03000D38
	mov r0, #90
	strh r0, [r2]
	ldr r0, _0802C77C  @ =0x03000D34
	str r1, [r0]
	ldr r0, _0802C780  @ =0x03000D3C
	strb r1, [r0]
	ldr r4, _0802C784  @ =0x03000160
	strb r1, [r4]
	ldr r0, _0802C788  @ =0x03000161
	strb r1, [r0]
	ldr r2, _0802C78C  @ =0x03000164
	ldr r3, _0802C790  @ =gUnknown_0807C0E0
	ldr r1, _0802C794  @ =gNextLevelInLevelTable
	mov r5, #16
	ldrsh r0, [r1, r5]
	lsl r0, r0, #3
	add r0, r0, r3
	ldrh r0, [r0, #4]
	strh r0, [r2]
	ldr r2, _0802C798  @ =0x03000168
	mov r5, #16
	ldrsh r0, [r1, r5]
	lsl r0, r0, #3
	add r0, r0, r3
	ldr r0, [r0]
	str r0, [r2]
	ldr r1, _0802C79C  @ =gUnknown_030009E0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	ldr r1, _0802C7A0  @ =0x03000D40
	lsl r0, r0, #16
	lsr r0, r0, #19
	strh r0, [r1]
	mov r0, #1
	strb r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802C774:
	.4byte 0x0300015C
_0802C778:
	.4byte gUnknown_03000D38
_0802C77C:
	.4byte 0x03000D34
_0802C780:
	.4byte 0x03000D3C
_0802C784:
	.4byte 0x03000160
_0802C788:
	.4byte 0x03000161
_0802C78C:
	.4byte 0x03000164
_0802C790:
	.4byte gUnknown_0807C0E0
_0802C794:
	.4byte gNextLevelInLevelTable
_0802C798:
	.4byte 0x03000168
_0802C79C:
	.4byte gUnknown_030009E0
_0802C7A0:
	.4byte 0x03000D40
	THUMB_FUNC_END sub_0802C71C

	THUMB_FUNC_START sub_0802C7A4
sub_0802C7A4: @ 0x0802C7A4
	push {r4-r7,lr}
	ldr r3, _0802C7E8  @ =gNextLevelInLevelTable
	mov r1, #18
	ldrsh r0, [r3, r1]
	cmp r0, #2
	beq _0802C7B2
	b _0802C902
_0802C7B2:
	ldr r0, _0802C7EC  @ =0x03000D7C
	mov r4, #0
	str r4, [r0]
	ldr r0, _0802C7F0  @ =gMainState
	ldr r1, [r0]
	cmp r1, #5
	bne _0802C80C
	ldr r2, _0802C7F4  @ =0x03000D78
	ldr r1, _0802C7F8  @ =gUnknown_0807C7A8
	mov r5, #16
	ldrsh r0, [r3, r5]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0802C7FC  @ =0x03000D80
	strb r4, [r0]
	ldr r0, _0802C800  @ =0x03000D88
	ldr r1, _0802C804  @ =gUnknown_0807C7C4
	str r1, [r0]
	ldr r2, _0802C808  @ =0x03000D74
	mov r4, #16
	ldrsh r0, [r3, r4]
	add r0, r0, r1
	ldrb r0, [r0]
	b _0802C8BA
	.byte 0x00
	.byte 0x00
_0802C7E8:
	.4byte gNextLevelInLevelTable
_0802C7EC:
	.4byte 0x03000D7C
_0802C7F0:
	.4byte gMainState
_0802C7F4:
	.4byte 0x03000D78
_0802C7F8:
	.4byte gUnknown_0807C7A8
_0802C7FC:
	.4byte 0x03000D80
_0802C800:
	.4byte 0x03000D88
_0802C804:
	.4byte gUnknown_0807C7C4
_0802C808:
	.4byte 0x03000D74
_0802C80C:
	ldr r0, _0802C844  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0802C81C
	cmp r1, #2
	bne _0802C860
_0802C81C:
	ldr r2, _0802C848  @ =0x03000D78
	ldr r1, _0802C84C  @ =gUnknown_0807C7CC
	mov r5, #16
	ldrsh r0, [r3, r5]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0802C850  @ =0x03000D80
	strb r4, [r0]
	ldr r0, _0802C854  @ =0x03000D88
	ldr r1, _0802C858  @ =gUnknown_0807C804
	str r1, [r0]
	ldr r2, _0802C85C  @ =0x03000D74
	mov r4, #16
	ldrsh r0, [r3, r4]
	add r0, r0, r1
	ldrb r0, [r0]
	b _0802C8BA
	.byte 0x00
	.byte 0x00
_0802C844:
	.4byte gLevelType
_0802C848:
	.4byte 0x03000D78
_0802C84C:
	.4byte gUnknown_0807C7CC
_0802C850:
	.4byte 0x03000D80
_0802C854:
	.4byte 0x03000D88
_0802C858:
	.4byte gUnknown_0807C804
_0802C85C:
	.4byte 0x03000D74
_0802C860:
	cmp r0, #1
	bne _0802C8A4
	ldr r2, _0802C88C  @ =0x03000D78
	ldr r1, _0802C890  @ =gUnknown_0807C814
	mov r5, #16
	ldrsh r0, [r3, r5]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0802C894  @ =0x03000D80
	strb r4, [r0]
	ldr r0, _0802C898  @ =0x03000D88
	ldr r1, _0802C89C  @ =gUnknown_0807C82C
	str r1, [r0]
	ldr r2, _0802C8A0  @ =0x03000D74
	mov r4, #16
	ldrsh r0, [r3, r4]
	add r0, r0, r1
	ldrb r0, [r0]
	b _0802C8BA
	.byte 0x00
	.byte 0x00
_0802C88C:
	.4byte 0x03000D78
_0802C890:
	.4byte gUnknown_0807C814
_0802C894:
	.4byte 0x03000D80
_0802C898:
	.4byte 0x03000D88
_0802C89C:
	.4byte gUnknown_0807C82C
_0802C8A0:
	.4byte 0x03000D74
_0802C8A4:
	ldr r1, _0802C908  @ =0x03000D78
	ldr r0, _0802C90C  @ =gUnknown_0807C834
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0802C910  @ =0x03000D80
	strb r4, [r0]
	ldr r0, _0802C914  @ =0x03000D88
	ldr r1, _0802C918  @ =gUnknown_0807C838
	str r1, [r0]
	ldr r2, _0802C91C  @ =0x03000D74
	ldrb r0, [r1]
_0802C8BA:
	strb r0, [r2]
	ldr r1, _0802C920  @ =gUnknown_03000D64
	ldr r0, _0802C924  @ =gUnknown_030009E0
	ldrh r0, [r0]
	add r0, r0, #8
	lsl r0, r0, #8
	str r0, [r1]
	mov r1, #0
	add r4, r2, #0
	ldr r7, _0802C928  @ =0x03000D84
	ldr r5, _0802C92C  @ =0x03000D68
	mov r12, r5
	ldrb r0, [r4]
	cmp r1, r0
	bge _0802C8F8
	ldr r6, _0802C930  @ =0x03000D90
	ldr r5, _0802C934  @ =0x03000D58
	mov r3, #0
_0802C8DE:
	lsl r0, r1, #16
	asr r0, r0, #16
	add r2, r0, r6
	add r1, r0, r5
	strb r3, [r1]
	strb r3, [r2]
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	ldrb r2, [r4]
	cmp r0, r2
	blt _0802C8DE
_0802C8F8:
	mov r0, #0
	strb r0, [r7]
	mov r0, #0
	mov r4, r12
	strh r0, [r4]
_0802C902:
	pop {r4-r7}
	pop {r0}
	bx r0
_0802C908:
	.4byte 0x03000D78
_0802C90C:
	.4byte gUnknown_0807C834
_0802C910:
	.4byte 0x03000D80
_0802C914:
	.4byte 0x03000D88
_0802C918:
	.4byte gUnknown_0807C838
_0802C91C:
	.4byte 0x03000D74
_0802C920:
	.4byte gUnknown_03000D64
_0802C924:
	.4byte gUnknown_030009E0
_0802C928:
	.4byte 0x03000D84
_0802C92C:
	.4byte 0x03000D68
_0802C930:
	.4byte 0x03000D90
_0802C934:
	.4byte 0x03000D58
	THUMB_FUNC_END sub_0802C7A4

	THUMB_FUNC_START sub_0802C938
sub_0802C938: @ 0x0802C938
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r4, #0
	ldr r0, _0802C9C0  @ =gNextLevelInLevelTable
	mov r2, #16
	ldrsh r1, [r0, r2]
	ldr r0, _0802C9C4  @ =0x03000D88
	ldr r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	bge _0802C9B8
	mov r7, #0
	ldr r6, _0802C9C8  @ =0x03000DA0
_0802C954:
	lsl r4, r4, #16
	asr r5, r4, #16
	ldr r0, _0802C9CC  @ =0x03000D78
	ldr r1, [r0]
	lsl r0, r5, #1
	add r0, r0, r5
	lsl r0, r0, #3
	add r0, r0, r1
	ldr r3, [r0]
	asr r3, r3, #8
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _0802C9D0  @ =gUnknown_030009E0
	ldrh r0, [r0]
	sub r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #255
	mov r1, #171
	mov r2, #1
	neg r2, r2
	bl sub_08038DF4
	lsl r0, r0, #24
	lsr r1, r0, #24
	lsl r2, r5, #2
	add r2, r2, r6
	ldr r3, _0802C9D4  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r3]
	add r0, r0, r1
	str r0, [r2]
	mov r3, #128
	lsl r3, r3, #9
	add r1, r4, r3
	lsr r4, r1, #16
	asr r1, r1, #16
	ldr r0, _0802C9C0  @ =gNextLevelInLevelTable
	mov r3, #16
	ldrsh r2, [r0, r3]
	ldr r0, _0802C9C4  @ =0x03000D88
	ldr r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	blt _0802C954
_0802C9B8:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
_0802C9C0:
	.4byte gNextLevelInLevelTable
_0802C9C4:
	.4byte 0x03000D88
_0802C9C8:
	.4byte 0x03000DA0
_0802C9CC:
	.4byte 0x03000D78
_0802C9D0:
	.4byte gUnknown_030009E0
_0802C9D4:
	.4byte gUnknown_03001940
	THUMB_FUNC_END sub_0802C938

	THUMB_FUNC_START sub_0802C9D8
sub_0802C9D8: @ 0x0802C9D8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802CA3C  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r1, [r0, r2]
	mov r8, r0
	cmp r1, #2
	beq _0802C9EC
	b _0802CD28
_0802C9EC:
	ldr r0, _0802CA40  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	bne _0802C9FC
	b _0802CD28
_0802C9FC:
	ldr r2, _0802CA44  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #16
	and r0, r0, r1
	add r6, r2, #0
	cmp r0, #0
	bne _0802CA0C
	b _0802CD28
_0802CA0C:
	ldr r0, _0802CA48  @ =0x03000D7C
	ldr r2, [r0]
	add r7, r0, #0
	ldr r3, _0802CA4C  @ =0x03000D84
	mov r12, r3
	cmp r2, #0
	beq _0802CA64
	ldr r0, _0802CA50  @ =0x03000D54
	ldr r1, _0802CA54  @ =gUnknown_03000D64
	ldr r1, [r1]
	ldr r3, _0802CA58  @ =0xFFFFFB00
	add r1, r1, r3
	ldr r0, [r0]
	cmp r0, r1
	ble _0802CA62
	mov r4, r12
	ldrb r0, [r4]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0802CA5C
	str r1, [r2, #36]
	b _0802CA64
_0802CA3C:
	.4byte gNextLevelInLevelTable
_0802CA40:
	.4byte gUnknown_03001A1C
_0802CA44:
	.4byte gUnknown_030009D0
_0802CA48:
	.4byte 0x03000D7C
_0802CA4C:
	.4byte 0x03000D84
_0802CA50:
	.4byte 0x03000D54
_0802CA54:
	.4byte gUnknown_03000D64
_0802CA58:
	.4byte 0xFFFFFB00
_0802CA5C:
	ldr r0, _0802CA78  @ =0x03000D50
	ldr r0, [r0]
	add r0, r0, r3
_0802CA62:
	str r0, [r2, #36]
_0802CA64:
	mov r5, r12
	ldrb r0, [r5]
	cmp r0, #4
	bls _0802CA6E
	b _0802CD28
_0802CA6E:
	lsl r0, r0, #2
	ldr r1, _0802CA7C  @ =0x0802CA80
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802CA78:
	.4byte 0x03000D50
_0802CA7C:
	.4byte _0802CA80
_0802CA80:
	.4byte _0802CA94
	.4byte _0802CB44
	.4byte _0802CBA4
	.4byte _0802CC14
	.4byte _0802CCD0
_0802CA94:
	ldrb r1, [r6]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0802CAA0
	b _0802CD28
_0802CAA0:
	ldr r0, _0802CB18  @ =0x03000D68
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldr r6, _0802CB1C  @ =0x03000D80
	ldrb r2, [r6]
	ldr r0, _0802CB20  @ =0x03000D78
	ldr r5, [r0]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r5
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r0, [r0, #12]
	cmp r1, r0
	bcs _0802CAC4
	b _0802CD28
_0802CAC4:
	mov r0, #1
	mov r1, r12
	strb r0, [r1]
	ldr r2, _0802CB24  @ =gUnknown_03000D60
	ldrb r1, [r6]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r0, [r0]
	str r0, [r2]
	ldr r4, _0802CB28  @ =0x03000D70
	ldr r3, _0802CB2C  @ =gUnknown_030009E0
	ldrh r2, [r3]
	lsl r2, r2, #8
	ldrb r1, [r6]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r0, [r0, #4]
	sub r2, r2, r0
	str r2, [r4]
	ldr r1, _0802CB30  @ =gUnknown_03000D64
	ldrh r0, [r3]
	lsl r0, r0, #8
	str r0, [r1]
	ldr r1, _0802CB34  @ =0x03000DA0
	ldrb r0, [r6]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r7]
	ldr r1, _0802CB38  @ =0x03000D54
	ldr r0, [r0, #36]
	str r0, [r1]
	ldr r1, _0802CB3C  @ =0x03000D6C
	ldr r0, _0802CB40  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r0, [r0, #36]
	str r0, [r1]
	b _0802CD28
_0802CB18:
	.4byte 0x03000D68
_0802CB1C:
	.4byte 0x03000D80
_0802CB20:
	.4byte 0x03000D78
_0802CB24:
	.4byte gUnknown_03000D60
_0802CB28:
	.4byte 0x03000D70
_0802CB2C:
	.4byte gUnknown_030009E0
_0802CB30:
	.4byte gUnknown_03000D64
_0802CB34:
	.4byte 0x03000DA0
_0802CB38:
	.4byte 0x03000D54
_0802CB3C:
	.4byte 0x03000D6C
_0802CB40:
	.4byte gUnknown_030019AC
_0802CB44:
	ldr r3, _0802CB88  @ =gUnknown_03000D64
	ldr r0, _0802CB8C  @ =0x03000D80
	ldrb r1, [r0]
	ldr r0, _0802CB90  @ =0x03000D78
	ldr r2, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	mov r2, #8
	ldrsh r1, [r0, r2]
	ldr r0, [r3]
	sub r2, r0, r1
	str r2, [r3]
	ldr r0, _0802CB94  @ =0x03000D70
	ldr r0, [r0]
	mov r3, #128
	lsl r3, r3, #4
	add r0, r0, r3
	cmp r2, r0
	blt _0802CB70
	b _0802CD28
_0802CB70:
	mov r0, #2
	mov r4, r12
	strb r0, [r4]
	ldr r0, _0802CB98  @ =0x03000D68
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0802CB9C  @ =0x03000D50
	str r2, [r0]
	ldr r0, _0802CBA0  @ =0x03000DC8
	strh r1, [r0]
	b _0802CD28
	.byte 0x00
	.byte 0x00
_0802CB88:
	.4byte gUnknown_03000D64
_0802CB8C:
	.4byte 0x03000D80
_0802CB90:
	.4byte 0x03000D78
_0802CB94:
	.4byte 0x03000D70
_0802CB98:
	.4byte 0x03000D68
_0802CB9C:
	.4byte 0x03000D50
_0802CBA0:
	.4byte 0x03000DC8
_0802CBA4:
	ldr r5, _0802CBE0  @ =0x03000D68
	ldrh r0, [r5]
	add r3, r0, #1
	strh r3, [r5]
	ldr r0, _0802CBE4  @ =0x03000DC8
	ldrh r1, [r0]
	add r4, r0, #0
	cmp r1, #9
	bls _0802CBF0
	mov r0, #9
	strh r0, [r4]
	ldr r0, _0802CBE8  @ =0x03000D80
	ldrb r1, [r0]
	ldr r0, _0802CBEC  @ =0x03000D78
	ldr r2, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	lsl r1, r3, #16
	lsr r1, r1, #16
	ldrh r0, [r0, #14]
	cmp r1, r0
	bcc _0802CC04
	mov r0, #3
	mov r1, r12
	strb r0, [r1]
	mov r0, #2
	strh r0, [r5]
	b _0802CC04
_0802CBE0:
	.4byte 0x03000D68
_0802CBE4:
	.4byte 0x03000DC8
_0802CBE8:
	.4byte 0x03000D80
_0802CBEC:
	.4byte 0x03000D78
_0802CBF0:
	ldr r2, _0802CC0C  @ =0x03000D50
	ldr r1, _0802CC10  @ =gUnknown_0807C83A
	ldrh r0, [r4]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	sub r0, r0, r1
	str r0, [r2]
_0802CC04:
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0802CD28
_0802CC0C:
	.4byte 0x03000D50
_0802CC10:
	.4byte gUnknown_0807C83A
_0802CC14:
	ldr r3, _0802CC90  @ =0x03000D50
	ldr r1, [r3]
	add r1, r1, #32
	ldr r5, _0802CC94  @ =0x03000D80
	ldrb r2, [r5]
	ldr r0, _0802CC98  @ =0x03000D78
	ldr r4, [r0]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, #10
	ldrsh r0, [r0, r2]
	add r1, r1, r0
	str r1, [r3]
	ldr r3, _0802CC9C  @ =gUnknown_03000D64
	ldrb r1, [r5]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	mov r4, #10
	ldrsh r0, [r0, r4]
	ldr r1, [r3]
	add r1, r1, r0
	str r1, [r3]
	ldr r0, _0802CCA0  @ =gUnknown_030009E0
	ldrh r2, [r0]
	lsl r0, r2, #8
	cmp r1, r0
	ble _0802CD28
	add r0, r2, #0
	add r0, r0, #8
	lsl r0, r0, #8
	str r0, [r3]
	ldr r0, _0802CCA4  @ =0x03000D68
	mov r3, #0
	strh r3, [r0]
	ldrb r1, [r6]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0802CCAC
	mov r0, r12
	strb r3, [r0]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	mov r1, r8
	mov r4, #16
	ldrsh r2, [r1, r4]
	ldr r1, _0802CCA8  @ =0x03000D88
	ldr r1, [r1]
	add r1, r1, r2
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0802CD28
	strb r3, [r5]
	b _0802CD28
	.byte 0x00
	.byte 0x00
_0802CC90:
	.4byte 0x03000D50
_0802CC94:
	.4byte 0x03000D80
_0802CC98:
	.4byte 0x03000D78
_0802CC9C:
	.4byte gUnknown_03000D64
_0802CCA0:
	.4byte gUnknown_030009E0
_0802CCA4:
	.4byte 0x03000D68
_0802CCA8:
	.4byte 0x03000D88
_0802CCAC:
	ldr r0, [r7]
	ldr r2, [r0, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r0, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #12
	mov r1, #0
	bl sub_0804138C
	ldr r1, _0802CCCC  @ =0x03000D84
	mov r0, #4
	strb r0, [r1]
	b _0802CD28
	.byte 0x00
	.byte 0x00
_0802CCCC:
	.4byte 0x03000D84
_0802CCD0:
	ldr r2, _0802CD0C  @ =0x03000D50
	ldr r3, _0802CD10  @ =0x03000D80
	ldrb r1, [r3]
	ldr r0, _0802CD14  @ =0x03000D78
	ldr r4, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	mov r5, #10
	ldrsh r1, [r0, r5]
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
	ldr r0, [r7]
	ldr r0, [r0, #32]
	asr r2, r0, #8
	ldrb r1, [r3]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0]
	asr r0, r0, #8
	sub r1, r2, r0
	cmp r1, #0
	blt _0802CD18
	cmp r1, #8
	bgt _0802CD1E
	b _0802CD28
_0802CD0C:
	.4byte 0x03000D50
_0802CD10:
	.4byte 0x03000D80
_0802CD14:
	.4byte 0x03000D78
_0802CD18:
	sub r0, r0, r2
	cmp r0, #8
	ble _0802CD28
_0802CD1E:
	mov r0, #0
	mov r1, r12
	strb r0, [r1]
	mov r0, #0
	str r0, [r7]
_0802CD28:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802C9D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802CD34
sub_0802CD34: @ 0x0802CD34
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	add r6, r0, #0
	ldr r0, [r6, #32]
	asr r4, r0, #8
	ldr r0, _0802CDBC  @ =gUnknown_030009E0
	ldrh r0, [r0]
	lsl r0, r0, #8
	mov r12, r0
	ldr r0, _0802CDC0  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _0802CD5A
	b _0802CEF6
_0802CD5A:
	ldr r0, [r6, #36]
	cmp r0, r12
	ble _0802CD62
	b _0802CEF6
_0802CD62:
	mov r2, r12
	sub r1, r2, r0
	mov r0, #128
	lsl r0, r0, #5
	cmp r1, r0
	ble _0802CD70
	b _0802CEF6
_0802CD70:
	ldr r0, _0802CDC4  @ =0x03000D84
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CD7A
	b _0802CEF6
_0802CD7A:
	mov r7, #0
	ldr r3, _0802CDC8  @ =gNextLevelInLevelTable
	mov r0, #16
	ldrsh r2, [r3, r0]
	ldr r1, _0802CDCC  @ =0x03000D88
	ldr r0, [r1]
	add r0, r0, r2
	mov r9, r3
	add r5, r1, #0
	ldrb r0, [r0]
	cmp r7, r0
	blt _0802CD94
	b _0802CEF6
_0802CD94:
	ldr r1, _0802CDD0  @ =0x03000D78
	mov r8, r1
_0802CD98:
	lsl r3, r7, #16
	asr r1, r3, #16
	ldr r0, _0802CDD0  @ =0x03000D78
	ldr r2, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	ldr r0, [r0]
	asr r1, r0, #8
	sub r0, r4, r1
	cmp r0, #0
	blt _0802CDD4
	cmp r4, r1
	beq _0802CDB8
	b _0802CEDA
_0802CDB8:
	b _0802CDDA
	.byte 0x00
	.byte 0x00
_0802CDBC:
	.4byte gUnknown_030009E0
_0802CDC0:
	.4byte gUnknown_030009D0
_0802CDC4:
	.4byte 0x03000D84
_0802CDC8:
	.4byte gNextLevelInLevelTable
_0802CDCC:
	.4byte 0x03000D88
_0802CDD0:
	.4byte 0x03000D78
_0802CDD4:
	cmp r1, r4
	beq _0802CDDA
	b _0802CEDA
_0802CDDA:
	asr r3, r3, #16
	mov r2, r8
	ldr r4, [r2]
	lsl r0, r3, #1
	add r0, r0, r3
	lsl r0, r0, #3
	add r1, r0, r4
	ldr r0, _0802CE80  @ =0x03000D90
	add r5, r3, r0
	add r0, r1, #0
	add r0, r0, #16
	ldrb r2, [r5]
	add r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CEA8
	ldr r0, [r1]
	str r0, [r6, #32]
	ldr r2, _0802CE84  @ =0x03000D80
	strb r7, [r2]
	ldr r3, _0802CE88  @ =gUnknown_03000D60
	ldrb r1, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802CE8C  @ =0x03000D70
	ldrb r1, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0, #4]
	mov r1, r12
	sub r0, r1, r0
	str r0, [r3]
	ldr r0, _0802CE90  @ =gUnknown_03000D64
	str r1, [r0]
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #112
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0802CE94  @ =0x03000D84
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0802CE98  @ =0x03000D7C
	str r6, [r0]
	ldr r0, _0802CE9C  @ =0x03000D54
	ldr r3, [r6, #36]
	str r3, [r0]
	ldr r1, _0802CEA0  @ =0x03000D6C
	ldr r0, _0802CEA4  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r0, [r0, #36]
	str r0, [r1]
	ldr r2, [r6, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #12
	mov r1, #0
	bl sub_0804138C
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #7
	bls _0802CE7C
	strb r4, [r5]
_0802CE7C:
	mov r0, #1
	b _0802CEF8
_0802CE80:
	.4byte 0x03000D90
_0802CE84:
	.4byte 0x03000D80
_0802CE88:
	.4byte gUnknown_03000D60
_0802CE8C:
	.4byte 0x03000D70
_0802CE90:
	.4byte gUnknown_03000D64
_0802CE94:
	.4byte 0x03000D84
_0802CE98:
	.4byte 0x03000D7C
_0802CE9C:
	.4byte 0x03000D54
_0802CEA0:
	.4byte 0x03000D6C
_0802CEA4:
	.4byte gUnknown_030019AC
_0802CEA8:
	ldr r0, _0802CEB8  @ =0x03000D58
	add r3, r3, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0802CEBC
	mov r0, #1
	strb r0, [r3]
	b _0802CEF6
_0802CEB8:
	.4byte 0x03000D58
_0802CEBC:
	sub r0, r0, #1
	strb r0, [r3]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _0802CEF6
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #7
	bls _0802CEF6
	strb r1, [r5]
	b _0802CEF6
_0802CEDA:
	mov r2, #128
	lsl r2, r2, #9
	add r0, r3, r2
	lsr r7, r0, #16
	asr r0, r0, #16
	mov r3, r9
	mov r1, #16
	ldrsh r2, [r3, r1]
	ldr r1, [r5]
	add r1, r1, r2
	ldrb r1, [r1]
	cmp r0, r1
	bge _0802CEF6
	b _0802CD98
_0802CEF6:
	mov r0, #0
_0802CEF8:
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802CD34

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802CF08
sub_0802CF08: @ 0x0802CF08
	ldr r1, _0802CF18  @ =0x03000D84
	mov r0, #0
	strb r0, [r1]
	ldr r1, _0802CF1C  @ =0x03000D68
	mov r0, #0
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_0802CF18:
	.4byte 0x03000D84
_0802CF1C:
	.4byte 0x03000D68
	THUMB_FUNC_END sub_0802CF08

	THUMB_FUNC_START sub_0802CF20
sub_0802CF20: @ 0x0802CF20
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _0802CF60  @ =0x03000D84
	ldrb r0, [r0]
	cmp r0, #4
	bne _0802CF70
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	ldr r1, _0802CF64  @ =gUnknown_030019AC
	ldr r2, [r1]
	add r3, r2, #0
	add r3, r3, #67
	mov r1, #0
	ldrsb r1, [r3, r1]
	cmp r0, r1
	bne _0802CF54
	ldr r0, [r2, #36]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r0, r1
	ldr r1, _0802CF68  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r2, #36]
	mov r0, #255
	strb r0, [r3]
_0802CF54:
	ldr r0, _0802CF6C  @ =0x03000D54
	ldr r0, [r0]
	str r0, [r4, #36]
	mov r0, #1
	b _0802CF72
	.byte 0x00
	.byte 0x00
_0802CF60:
	.4byte 0x03000D84
_0802CF64:
	.4byte gUnknown_030019AC
_0802CF68:
	.4byte 0xFFFFFF00
_0802CF6C:
	.4byte 0x03000D54
_0802CF70:
	mov r0, #0
_0802CF72:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802CF20

	THUMB_FUNC_START sub_0802CF78
sub_0802CF78: @ 0x0802CF78
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	mov r0, #0
	mov r8, r0
	ldr r0, _0802CFCC  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0802D058
	ldr r2, _0802CFD0  @ =0x03000170
	ldr r1, [r2, #28]
	cmp r1, #0
	beq _0802D058
	ldr r0, _0802CFD4  @ =gUnknown_03001A38
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802D058
	add r4, r1, #0
	add r6, r4, #0
	add r6, r6, #144
	cmp r4, r6
	bcs _0802D040
	mov r7, #1
	neg r7, r7
	mov r9, r2
	mov r3, #4
	add r3, r3, r9
	mov r10, r3
_0802CFBA:
	ldr r0, [r4]
	cmp r0, r7
	beq _0802D03A
	cmp r0, #2
	bgt _0802D03A
	cmp r0, #2
	bne _0802CFD8
	str r7, [r4]
	b _0802D03A
_0802CFCC:
	.4byte gUnknown_03001A1C
_0802CFD0:
	.4byte 0x03000170
_0802CFD4:
	.4byte gUnknown_03001A38
_0802CFD8:
	mov r0, #1
	add r8, r8, r0
	ldr r5, _0802D010  @ =0x03000170
	ldr r0, [r5, #32]
	cmp r0, r7
	beq _0802CFEC
	bl sub_080721A8
	cmp r0, #0
	beq _0802D004
_0802CFEC:
	mov r0, #0
	str r0, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #109
	mov r1, #4
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r5, #32]
_0802D004:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0802D014
	sub r0, r0, #1
	b _0802D038
	.byte 0x00
	.byte 0x00
_0802D010:
	.4byte 0x03000170
_0802D014:
	ldr r2, [r4, #8]
	ldr r1, [r2, #8]
	mov r3, r9
	ldr r0, [r3, #24]
	add r1, r1, r0
	str r1, [r2, #8]
	ldr r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r10
	ldr r0, [r0]
	cmp r1, r0
	bne _0802D036
	add r0, r4, #0
	mov r1, #2
	bl sub_0802D1DC
	b _0802D03A
_0802D036:
	ldrb r0, [r1, #12]
_0802D038:
	strb r0, [r4, #4]
_0802D03A:
	add r4, r4, #12
	cmp r4, r6
	bcc _0802CFBA
_0802D040:
	mov r0, r8
	cmp r0, #0
	bne _0802D058
	ldr r5, _0802D068  @ =0x03000170
	ldr r0, [r5, #32]
	mov r4, #1
	neg r4, r4
	cmp r0, r4
	beq _0802D058
	bl sub_08071D9C
	str r4, [r5, #32]
_0802D058:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802D068:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802CF78

	THUMB_FUNC_START sub_0802D06C
sub_0802D06C: @ 0x0802D06C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r0, #144
	bl arena_allocate
	ldr r1, _0802D0B8  @ =0x03000170
	str r0, [r1, #28]
	mov r8, r1
	mov r1, #0
	mov r6, #0
	mov r5, #11
_0802D086:
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
	bge _0802D086
	ldr r0, _0802D0B8  @ =0x03000170
	str r7, [r0, #32]
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0802D0B8:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D06C

	THUMB_FUNC_START sub_0802D0BC
sub_0802D0BC: @ 0x0802D0BC
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r0, _0802D0E4  @ =0x03000170
	str r4, [r0, #24]
	add r3, r0, #0
	mov r1, #2
_0802D0CA:
	str r2, [r3]
	ldrb r0, [r2, #11]
	mul r0, r4, r0
	add r2, r2, r0
	str r2, [r3, #4]
	add r3, r3, #8
	sub r1, r1, #1
	cmp r1, #0
	bge _0802D0CA
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D0E4:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D0BC

	THUMB_FUNC_START sub_0802D0E8
sub_0802D0E8: @ 0x0802D0E8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r4, _0802D13C  @ =0x03000170
	ldr r0, [r4, #28]
	cmp r0, #0
	bne _0802D12E
	mov r0, #144
	bl arena_allocate
	str r0, [r4, #28]
	mov r8, r4
	mov r1, #0
	mov r6, #0
	mov r5, #11
_0802D108:
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
	bge _0802D108
	ldr r0, _0802D13C  @ =0x03000170
	str r7, [r0, #32]
_0802D12E:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D13C:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D0E8

	THUMB_FUNC_START sub_0802D140
sub_0802D140: @ 0x0802D140
	push {r4-r7,lr}
	add r3, r1, #0
	mov r1, #1
	neg r1, r1
	mov r12, r1
	ldr r0, [r0, #8]
	asr r7, r0, #11
	mov r0, #64
	neg r0, r0
	and r0, r0, r3
	add r7, r7, r0
	cmp r3, r7
	bhi _0802D1CA
_0802D15A:
	ldr r0, _0802D18C  @ =gEWRAMBasePtr
	ldr r4, [r0]
	lsl r1, r3, #1
	ldr r2, _0802D190  @ =0x0000400C
	add r0, r4, r2
	add r0, r0, r1
	ldrh r2, [r0]
	ldr r5, _0802D194  @ =0x0000600C
	add r0, r4, r5
	add r0, r0, r1
	ldrh r5, [r0]
	add r6, r3, #1
	cmp r2, #6
	bne _0802D1C2
	cmp r5, r12
	beq _0802D1C2
	lsl r0, r5, #2
	add r0, r0, #8
	add r3, r4, r0
	ldr r0, _0802D198  @ =0x03000170
	ldr r2, [r0, #28]
	add r4, r2, #0
	add r4, r4, #144
	b _0802D19E
	.byte 0x00
	.byte 0x00
_0802D18C:
	.4byte gEWRAMBasePtr
_0802D190:
	.4byte 0x0000400C
_0802D194:
	.4byte 0x0000600C
_0802D198:
	.4byte 0x03000170
_0802D19C:
	add r2, r2, #12
_0802D19E:
	cmp r2, r4
	bcs _0802D1C2
	ldr r1, [r2]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _0802D19C
	ldr r0, [r2, #8]
	ldr r1, [r3]
	lsl r1, r1, #9
	lsr r1, r1, #25
	str r1, [r0]
	ldrb r1, [r3, #3]
	str r1, [r0, #4]
	add r0, r2, #0
	mov r1, #1
	bl sub_0802D1DC
_0802D1C2:
	mov r12, r5
	add r3, r6, #0
	cmp r3, r7
	bls _0802D15A
_0802D1CA:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802D140

	THUMB_FUNC_START sub_0802D1D0
sub_0802D1D0: @ 0x0802D1D0
	ldr r1, _0802D1D8  @ =0x03000170
	mov r0, #0
	str r0, [r1, #28]
	bx lr
_0802D1D8:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D1D0

	THUMB_FUNC_START sub_0802D1DC
sub_0802D1DC: @ 0x0802D1DC
	push {lr}
	add r3, r0, #0
	ldr r0, [r3]
	cmp r0, r1
	beq _0802D1FE
	str r1, [r3]
	ldr r0, [r3, #8]
	ldr r2, _0802D204  @ =0x03000170
	lsl r1, r1, #3
	add r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #8]
	ldrb r1, [r1, #12]
	strb r1, [r3, #4]
	ldr r1, [r0, #8]
	bl sub_08001BA4
_0802D1FE:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D204:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D1DC
