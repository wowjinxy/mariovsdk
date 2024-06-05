	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_0800F76C
sub_0800F76C: @ 0x0800F76C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r1, r1, #24
	lsr r4, r1, #24
	ldr r2, _0800F7D8  @ =gUnknown_08078900
	ldr r0, _0800F7DC  @ =gUnknown_080788F4
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r5, r1, r0
	cmp r3, #0
	bne _0800F7E0
	cmp r4, #0
	beq _0800F7A6
	sub r1, r4, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #0
	bl sub_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0800F7FA
_0800F7A6:
	mov r2, #0
	lsl r0, r4, #6
	add r0, r5, r0
	ldrb r1, [r0, #19]
	mov r0, #128
	and r0, r0, r1
	lsl r1, r4, #3
	cmp r0, #0
	beq _0800F838
	add r3, r1, #0
	mov r4, #128
_0800F7BC:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #7
	bhi _0800F838
	add r0, r3, r2
	lsl r0, r0, #3
	add r0, r5, r0
	ldrb r1, [r0, #19]
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0800F7BC
	b _0800F838
_0800F7D8:
	.4byte gUnknown_08078900
_0800F7DC:
	.4byte gUnknown_080788F4
_0800F7E0:
	cmp r3, #1
	bne _0800F844
	cmp r4, #0
	beq _0800F800
	sub r1, r4, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #1
	bl sub_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0800F800
_0800F7FA:
	mov r0, #1
	neg r0, r0
	b _0800F846
_0800F800:
	mov r2, #0
	lsl r0, r4, #6
	add r0, r5, r0
	ldr r6, _0800F840  @ =0x00000193
	add r0, r0, r6
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	lsl r1, r4, #3
	cmp r0, #0
	beq _0800F838
	add r3, r1, #0
	add r4, r6, #0
	mov r6, #128
_0800F81C:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #6
	bhi _0800F838
	add r0, r3, r2
	lsl r0, r0, #3
	add r0, r5, r0
	add r0, r0, r4
	ldrb r1, [r0]
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0800F81C
_0800F838:
	lsl r0, r2, #24
	asr r0, r0, #24
	b _0800F846
	.byte 0x00
	.byte 0x00
_0800F840:
	.4byte 0x00000193
_0800F844:
	mov r0, #0
_0800F846:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800F76C

	THUMB_FUNC_START sub_0800F84C
sub_0800F84C: @ 0x0800F84C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r1, _0800F9FC  @ =gUnknown_08078900
	lsl r0, r6, #3
	sub r0, r0, r6
	lsl r0, r0, #5
	sub r0, r0, r6
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	str r1, [sp, #8]
	mov r7, #0
	mov r0, #0
	mov r8, r0
	mov r1, #0
	add r2, sp, #4
	mov r10, r2
_0800F87A:
	mov r5, #0
	lsl r4, r1, #24
	mov r9, r4
	lsl r1, r1, #16
	str r1, [sp, #12]
_0800F884:
	lsl r3, r5, #24
	lsr r3, r3, #24
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	mov r4, r9
	lsr r2, r4, #24
	bl sub_08010068
	lsl r0, r0, #24
	cmp r0, #0
	beq _0800F8BE
	mov r1, r8
	lsl r0, r1, #16
	mov r2, #128
	lsl r2, r2, #9
	add r0, r0, r2
	lsr r0, r0, #16
	mov r8, r0
	mov r4, r10
	ldrb r1, [r4]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _0800F8BE
	lsl r0, r7, #16
	add r0, r0, r2
	lsr r7, r0, #16
_0800F8BE:
	lsl r3, r5, #24
	lsr r3, r3, #24
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	mov r4, r9
	lsr r2, r4, #24
	bl sub_08010068
	lsl r0, r0, #24
	cmp r0, #0
	beq _0800F8F8
	mov r1, r8
	lsl r0, r1, #16
	mov r2, #128
	lsl r2, r2, #9
	add r0, r0, r2
	lsr r0, r0, #16
	mov r8, r0
	mov r4, r10
	ldrb r1, [r4]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _0800F8F8
	lsl r0, r7, #16
	add r0, r0, r2
	lsr r7, r0, #16
_0800F8F8:
	lsl r0, r5, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r5, r0, #16
	asr r0, r0, #16
	cmp r0, #5
	ble _0800F884
	mov r4, r9
	lsr r2, r4, #24
	lsl r4, r5, #24
	lsr r3, r4, #24
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	bl sub_08010068
	lsl r0, r0, #24
	cmp r0, #0
	beq _0800F942
	mov r1, r8
	lsl r0, r1, #16
	mov r2, #128
	lsl r2, r2, #9
	add r0, r0, r2
	lsr r0, r0, #16
	mov r8, r0
	mov r0, r10
	ldrb r1, [r0]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _0800F942
	lsl r0, r7, #16
	add r0, r0, r2
	lsr r7, r0, #16
_0800F942:
	mov r1, r9
	lsr r2, r1, #24
	add r3, r5, #1
	lsl r3, r3, #24
	lsr r3, r3, #24
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	bl sub_08010068
	lsl r0, r0, #24
	cmp r0, #0
	beq _0800F97E
	mov r1, r8
	lsl r0, r1, #16
	mov r2, #128
	lsl r2, r2, #9
	add r0, r0, r2
	lsr r0, r0, #16
	mov r8, r0
	mov r0, r10
	ldrb r1, [r0]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _0800F97E
	lsl r0, r7, #16
	add r0, r0, r2
	lsr r7, r0, #16
_0800F97E:
	mov r1, r9
	lsr r2, r1, #24
	lsr r3, r4, #24
	add r4, sp, #4
	str r4, [sp]
	add r0, r6, #0
	mov r1, #1
	bl sub_08010068
	lsl r0, r0, #24
	cmp r0, #0
	beq _0800F9B6
	mov r1, r8
	lsl r0, r1, #16
	mov r2, #128
	lsl r2, r2, #9
	add r0, r0, r2
	lsr r0, r0, #16
	mov r8, r0
	mov r4, r10
	ldrb r1, [r4]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _0800F9B6
	lsl r0, r7, #16
	add r0, r0, r2
	lsr r7, r0, #16
_0800F9B6:
	ldr r1, [sp, #12]
	mov r2, #128
	lsl r2, r2, #9
	add r0, r1, r2
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #5
	bgt _0800F9C8
	b _0800F87A
_0800F9C8:
	ldr r4, [sp, #8]
	strb r7, [r4, #8]
	mov r0, r8
	strb r0, [r4, #9]
	cmp r7, #90
	bne _0800F9EC
	ldr r1, _0800FA00  @ =0x0000031B
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0800F9EC
	ldr r0, [r4, #4]
	mov r1, #128
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r4, #4]
_0800F9EC:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0800F9FC:
	.4byte gUnknown_08078900
_0800FA00:
	.4byte 0x0000031B
	THUMB_FUNC_END sub_0800F84C

	THUMB_FUNC_START sub_0800FA04
sub_0800FA04: @ 0x0800FA04
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r7, r3, #0
	lsl r1, r1, #24
	lsr r5, r1, #24
	add r6, r5, #0
	lsl r2, r2, #24
	lsr r4, r2, #24
	ldr r2, _0800FA6C  @ =gUnknown_08078900
	ldr r0, _0800FA70  @ =gUnknown_080788F4
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r2, r1, r0
	cmp r3, #0
	bne _0800FA7E
	cmp r4, #7
	bls _0800FA36
	mov r4, #7
_0800FA36:
	lsl r0, r5, #3
	add r0, r0, r4
	lsl r0, r0, #3
	add r0, r2, r0
	ldrb r1, [r0, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0800FB16
	mov r0, #0
	add r1, r5, #0
	bl sub_0800F76C
	lsl r0, r0, #24
	asr r1, r0, #24
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _0800FB20
	cmp r1, #0
	bne _0800FA74
_0800FA60:
	mov r0, #0
	cmp r4, #0
	bne _0800FB22
	mov r0, #1
	b _0800FB22
	.byte 0x00
	.byte 0x00
_0800FA6C:
	.4byte gUnknown_08078900
_0800FA70:
	.4byte gUnknown_080788F4
_0800FA74:
	mov r0, #0
	cmp r1, r4
	blt _0800FB22
	mov r0, #1
	b _0800FB22
_0800FA7E:
	cmp r3, #1
	bne _0800FAD0
	cmp r5, #0
	bne _0800FA98
	cmp r4, #0
	bne _0800FA98
	ldr r1, _0800FAC8  @ =0x00000313
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0800FB16
_0800FA98:
	lsl r0, r6, #3
	add r0, r0, r4
	lsl r0, r0, #3
	add r0, r2, r0
	ldr r1, _0800FACC  @ =0x00000193
	add r0, r0, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0800FB16
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0800F76C
	lsl r0, r0, #24
	asr r1, r0, #24
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _0800FB20
	cmp r1, #0
	beq _0800FA60
	b _0800FA74
_0800FAC8:
	.4byte 0x00000313
_0800FACC:
	.4byte 0x00000193
_0800FAD0:
	cmp r3, #4
	bne _0800FAE0
	ldr r1, _0800FADC  @ =0x0000018B
	add r0, r2, r1
	b _0800FB0C
	.byte 0x00
	.byte 0x00
_0800FADC:
	.4byte 0x0000018B
_0800FAE0:
	cmp r3, #5
	bne _0800FAF0
	ldr r1, _0800FAEC  @ =0x000002FB
	add r0, r2, r1
	b _0800FB0C
	.byte 0x00
	.byte 0x00
_0800FAEC:
	.4byte 0x000002FB
_0800FAF0:
	cmp r3, #2
	bne _0800FB00
	lsl r0, r5, #3
	add r0, r2, r0
	ldr r1, _0800FAFC  @ =0x00000323
	b _0800FB0A
_0800FAFC:
	.4byte 0x00000323
_0800FB00:
	cmp r7, #3
	bne _0800FB20
	lsl r0, r6, #3
	add r0, r2, r0
	ldr r1, _0800FB1C  @ =0x00000353
_0800FB0A:
	add r0, r0, r1
_0800FB0C:
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0800FB20
_0800FB16:
	mov r0, #1
	b _0800FB22
	.byte 0x00
	.byte 0x00
_0800FB1C:
	.4byte 0x00000353
_0800FB20:
	mov r0, #0
_0800FB22:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800FA04

	THUMB_FUNC_START sub_0800FB28
sub_0800FB28: @ 0x0800FB28
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	lsl r1, r1, #24
	lsr r5, r1, #24
	lsl r2, r2, #24
	lsr r4, r2, #24
	ldr r2, _0800FB94  @ =gUnknown_08078900
	ldr r0, _0800FB98  @ =gUnknown_080788F4
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r7, r1, r0
	mov r0, #0
	strb r0, [r3]
	cmp r6, #0
	bne _0800FC18
	cmp r4, #7
	bls _0800FB5A
	mov r4, #7
_0800FB5A:
	cmp r5, #5
	bls _0800FB60
	mov r5, #5
_0800FB60:
	lsl r2, r5, #3
	add r0, r2, r4
	lsl r0, r0, #3
	add r6, r7, r0
	ldrb r1, [r6, #19]
	mov r0, #128
	mov r12, r0
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0800FBEC
	cmp r4, #6
	bne _0800FB9C
	add r0, r2, #6
	lsl r0, r0, #3
	add r2, r7, r0
	ldrb r1, [r2, #19]
	mov r0, #7
	and r0, r0, r1
	strb r0, [r3]
	cmp r0, #5
	bls _0800FB90
	mov r0, #70
	strb r0, [r3]
_0800FB90:
	ldrb r1, [r2, #19]
	b _0800FBDC
_0800FB94:
	.4byte gUnknown_08078900
_0800FB98:
	.4byte gUnknown_080788F4
_0800FB9C:
	cmp r4, #7
	bne _0800FBB8
	add r0, r2, #7
	lsl r0, r0, #3
	add r1, r7, r0
	ldrb r0, [r1, #19]
	and r0, r0, r4
	strb r0, [r3]
	cmp r0, #5
	bls _0800FBB4
	mov r0, #70
	strb r0, [r3]
_0800FBB4:
	ldrb r1, [r1, #19]
	b _0800FBDC
_0800FBB8:
	ldrb r1, [r6, #16]
	strb r1, [r3]
	ldrb r0, [r6, #17]
	lsl r0, r0, #1
	add r1, r1, r0
	strb r1, [r3]
	ldrb r0, [r6, #18]
	lsl r0, r0, #2
	add r1, r1, r0
	strb r1, [r3]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #7
	bne _0800FBDA
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r3]
_0800FBDA:
	ldrb r1, [r6, #19]
_0800FBDC:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0800FCDC
	ldrb r0, [r3]
	mov r1, r12
	orr r0, r0, r1
	b _0800FCDA
_0800FBEC:
	mov r0, #0
	add r1, r5, #0
	bl sub_0800F76C
	lsl r0, r0, #24
	asr r1, r0, #24
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _0800FCD0
	cmp r1, #0
	bne _0800FC0E
_0800FC04:
	mov r0, #0
	cmp r4, #0
	bne _0800FCDE
	mov r0, #1
	b _0800FCDE
_0800FC0E:
	mov r0, #0
	cmp r1, r4
	blt _0800FCDE
	mov r0, #1
	b _0800FCDE
_0800FC18:
	cmp r6, #1
	bne _0800FCDA
	cmp r4, #6
	bls _0800FC22
	mov r4, #6
_0800FC22:
	cmp r5, #5
	bls _0800FC28
	mov r5, #5
_0800FC28:
	lsl r2, r5, #3
	add r0, r2, r4
	lsl r0, r0, #3
	add r0, r0, r7
	mov r12, r0
	ldr r6, _0800FC60  @ =0x00000193
	add r0, r0, r6
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0800FCBC
	cmp r4, #6
	bne _0800FC64
	add r0, r2, #6
	lsl r0, r0, #3
	add r0, r7, r0
	add r0, r0, r6
	ldrb r1, [r0]
	mov r0, #7
	and r0, r0, r1
	strb r0, [r3]
	cmp r0, #5
	bls _0800FC96
	mov r0, #70
	strb r0, [r3]
	b _0800FC96
	.byte 0x00
	.byte 0x00
_0800FC60:
	.4byte 0x00000193
_0800FC64:
	mov r0, #200
	lsl r0, r0, #1
	add r0, r0, r12
	ldrb r1, [r0]
	strb r1, [r3]
	ldr r0, _0800FCB4  @ =0x00000191
	add r0, r0, r12
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r1, r0
	strb r1, [r3]
	mov r0, #201
	lsl r0, r0, #1
	add r0, r0, r12
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, r0
	strb r1, [r3]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #7
	bne _0800FC96
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r3]
_0800FC96:
	add r0, r2, r4
	lsl r0, r0, #3
	add r0, r7, r0
	ldr r1, _0800FCB8  @ =0x00000193
	add r0, r0, r1
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0800FCDC
	ldrb r0, [r3]
	mov r1, #128
	orr r0, r0, r1
	b _0800FCDA
	.byte 0x00
	.byte 0x00
_0800FCB4:
	.4byte 0x00000191
_0800FCB8:
	.4byte 0x00000193
_0800FCBC:
	mov r0, #1
	add r1, r5, #0
	bl sub_0800F76C
	lsl r0, r0, #24
	asr r1, r0, #24
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _0800FCD4
_0800FCD0:
	mov r0, #0
	b _0800FCDE
_0800FCD4:
	cmp r1, #0
	beq _0800FC04
	b _0800FC0E
_0800FCDA:
	strb r0, [r3]
_0800FCDC:
	mov r0, #1
_0800FCDE:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800FB28

	THUMB_FUNC_START sub_0800FCE4
sub_0800FCE4: @ 0x0800FCE4
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r7, r3, #0
	lsl r1, r1, #24
	lsr r5, r1, #24
	lsl r2, r2, #24
	lsr r4, r2, #24
	ldr r2, _0800FD58  @ =gUnknown_08078900
	ldr r0, _0800FD5C  @ =gUnknown_080788F4
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r6, r1, r0
	ldr r0, _0800FD60  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0800FD18
	b _0800FE24
_0800FD18:
	cmp r3, #0
	bne _0800FD98
	cmp r4, #7
	bls _0800FD22
	mov r4, #7
_0800FD22:
	cmp r5, #5
	bls _0800FD28
	mov r5, #5
_0800FD28:
	lsl r1, r5, #3
	add r0, r1, r4
	lsl r0, r0, #3
	add r3, r6, r0
	ldrb r2, [r3, #19]
	mov r0, #128
	and r0, r0, r2
	cmp r0, #0
	beq _0800FE24
	cmp r4, #6
	bne _0800FD64
	add r0, r1, #6
	lsl r0, r0, #3
	add r0, r6, r0
	ldrb r1, [r0, #19]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #5
	bls _0800FE24
_0800FD4E:
	mov r0, #64
	and r0, r0, r1
_0800FD52:
	cmp r0, #0
	bne _0800FE1C
	b _0800FE24
_0800FD58:
	.4byte gUnknown_08078900
_0800FD5C:
	.4byte gUnknown_080788F4
_0800FD60:
	.4byte gLevelEWorldFlag
_0800FD64:
	cmp r4, #7
	bne _0800FD78
	add r0, r1, #7
	lsl r0, r0, #3
	add r0, r6, r0
	ldrb r1, [r0, #19]
	and r4, r4, r1
	cmp r4, #5
	bls _0800FE24
	b _0800FD4E
_0800FD78:
	ldrb r0, [r3, #17]
	lsl r0, r0, #1
	ldrb r1, [r3, #16]
	add r0, r0, r1
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldrb r0, [r3, #18]
	lsl r0, r0, #2
	add r0, r1, r0
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #6
	bls _0800FE24
	mov r0, #64
	and r0, r0, r2
	b _0800FD52
_0800FD98:
	cmp r3, #4
	beq _0800FE24
	cmp r3, #1
	bne _0800FE24
	cmp r4, #6
	bls _0800FDA6
	mov r4, #6
_0800FDA6:
	cmp r5, #5
	bls _0800FDAC
	mov r5, #5
_0800FDAC:
	lsl r2, r5, #3
	add r0, r2, r4
	lsl r0, r0, #3
	add r3, r6, r0
	ldr r5, _0800FDDC  @ =0x00000193
	add r0, r3, r5
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0800FE24
	cmp r4, #6
	bne _0800FDE0
	add r0, r2, #6
	lsl r0, r0, #3
	add r0, r6, r0
	add r0, r0, r5
	ldrb r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #5
	bhi _0800FE08
	b _0800FE24
	.byte 0x00
	.byte 0x00
_0800FDDC:
	.4byte 0x00000193
_0800FDE0:
	mov r5, #200
	lsl r5, r5, #1
	add r0, r3, r5
	add r5, r5, #1
	add r1, r3, r5
	ldrb r1, [r1]
	lsl r1, r1, #1
	ldrb r0, [r0]
	add r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r5, r5, #1
	add r0, r3, r5
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r1, r0
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #6
	bls _0800FE24
_0800FE08:
	add r0, r2, r4
	lsl r0, r0, #3
	add r0, r6, r0
	ldr r1, _0800FE20  @ =0x00000193
	add r0, r0, r1
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0800FE24
_0800FE1C:
	mov r0, #1
	b _0800FE26
_0800FE20:
	.4byte 0x00000193
_0800FE24:
	mov r0, #0
_0800FE26:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800FCE4

	THUMB_FUNC_START sub_0800FE2C
sub_0800FE2C: @ 0x0800FE2C
	push {r4-r7,lr}
	add r4, r3, #0
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r12, r5
	lsl r1, r1, #24
	lsr r3, r1, #24
	lsl r2, r2, #24
	lsr r6, r2, #24
	ldr r2, _0800FE9C  @ =gUnknown_08078900
	ldr r0, _0800FEA0  @ =gUnknown_080788F4
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r7, r1, r0
	mov r0, #0
	strb r0, [r4]
	cmp r5, #0
	bne _0800FEF4
	cmp r6, #7
	bls _0800FE62
	mov r6, #7
_0800FE62:
	cmp r3, #5
	bls _0800FE68
	mov r3, #5
_0800FE68:
	lsl r2, r3, #3
	add r0, r2, r6
	lsl r0, r0, #3
	add r3, r7, r0
	ldrb r1, [r3, #19]
	mov r5, #128
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0800FE7E
	b _08010060
_0800FE7E:
	cmp r6, #6
	bne _0800FEA4
	add r0, r2, #6
	lsl r0, r0, #3
	add r2, r7, r0
	ldrb r1, [r2, #19]
	mov r0, #7
	and r0, r0, r1
	strb r0, [r4]
	cmp r0, #5
	bls _0800FE98
	mov r0, #70
	strb r0, [r4]
_0800FE98:
	ldrb r1, [r2, #19]
	b _0800FEE4
_0800FE9C:
	.4byte gUnknown_08078900
_0800FEA0:
	.4byte gUnknown_080788F4
_0800FEA4:
	cmp r6, #7
	bne _0800FEC0
	add r0, r2, #7
	lsl r0, r0, #3
	add r1, r7, r0
	ldrb r0, [r1, #19]
	and r0, r0, r6
	strb r0, [r4]
	cmp r0, #5
	bls _0800FEBC
	mov r0, #70
	strb r0, [r4]
_0800FEBC:
	ldrb r1, [r1, #19]
	b _0800FEE4
_0800FEC0:
	ldrb r1, [r3, #16]
	strb r1, [r4]
	ldrb r0, [r3, #17]
	lsl r0, r0, #1
	add r1, r1, r0
	strb r1, [r4]
	ldrb r0, [r3, #18]
	lsl r0, r0, #2
	add r1, r1, r0
	strb r1, [r4]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #7
	bne _0800FEE2
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r4]
_0800FEE2:
	ldrb r1, [r3, #19]
_0800FEE4:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _0800FEEE
	b _08010056
_0800FEEE:
	ldrb r0, [r4]
	orr r0, r0, r5
	b _08010054
_0800FEF4:
	cmp r5, #4
	bne _0800FF1C
	ldr r1, _0800FF18  @ =0x00000313
	add r0, r7, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0800FF08
	b _08010060
_0800FF08:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _0800FF12
	b _08010056
_0800FF12:
	mov r0, #192
	b _08010054
	.byte 0x00
	.byte 0x00
_0800FF18:
	.4byte 0x00000313
_0800FF1C:
	cmp r5, #1
	bne _0800FFAC
	cmp r6, #6
	bls _0800FF26
	mov r6, #6
_0800FF26:
	cmp r3, #5
	bls _0800FF2C
	mov r3, #5
_0800FF2C:
	lsl r2, r3, #3
	add r0, r2, r6
	lsl r0, r0, #3
	add r3, r7, r0
	ldr r5, _0800FF64  @ =0x00000193
	add r0, r3, r5
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0800FF44
	b _08010060
_0800FF44:
	cmp r6, #6
	bne _0800FF68
	add r0, r2, #6
	lsl r0, r0, #3
	add r0, r7, r0
	add r0, r0, r5
	ldrb r1, [r0]
	mov r0, #7
	and r0, r0, r1
	strb r0, [r4]
	cmp r0, #5
	bls _0800FF98
	mov r0, #70
	strb r0, [r4]
	b _0800FF98
	.byte 0x00
	.byte 0x00
_0800FF64:
	.4byte 0x00000193
_0800FF68:
	mov r5, #200
	lsl r5, r5, #1
	add r0, r3, r5
	ldrb r1, [r0]
	strb r1, [r4]
	add r5, r5, #1
	add r0, r3, r5
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r1, r0
	strb r1, [r4]
	add r5, r5, #1
	add r0, r3, r5
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, r0
	strb r1, [r4]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #7
	bne _0800FF98
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r4]
_0800FF98:
	add r0, r2, r6
	lsl r0, r0, #3
	add r0, r7, r0
	ldr r1, _0800FFA8  @ =0x00000193
	add r0, r0, r1
	ldrb r1, [r0]
	b _08010046
	.byte 0x00
	.byte 0x00
_0800FFA8:
	.4byte 0x00000193
_0800FFAC:
	cmp r5, #5
	bne _0800FFD0
	ldr r5, _0800FFCC  @ =0x0000031B
	add r0, r7, r5
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08010060
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08010056
	mov r0, #192
	b _08010054
	.byte 0x00
	.byte 0x00
_0800FFCC:
	.4byte 0x0000031B
_0800FFD0:
	cmp r5, #2
	bne _0800FFFC
	lsl r0, r3, #3
	add r2, r7, r0
	ldr r0, _0800FFF4  @ =0x00000323
	add r3, r2, r0
	ldrb r1, [r3]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08010060
	mov r1, #200
	lsl r1, r1, #2
	add r0, r2, r1
	ldrb r1, [r0]
	strb r1, [r4]
	ldr r5, _0800FFF8  @ =0x00000321
	b _08010020
_0800FFF4:
	.4byte 0x00000323
_0800FFF8:
	.4byte 0x00000321
_0800FFFC:
	mov r0, r12
	cmp r0, #3
	bne _08010060
	lsl r0, r3, #3
	add r2, r7, r0
	ldr r1, _0801005C  @ =0x00000353
	add r3, r2, r1
	ldrb r1, [r3]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08010060
	mov r5, #212
	lsl r5, r5, #2
	add r0, r2, r5
	ldrb r1, [r0]
	strb r1, [r4]
	add r5, r5, #1
_08010020:
	add r0, r2, r5
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r1, r0
	strb r1, [r4]
	add r5, r5, #1
	add r0, r2, r5
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, r0
	strb r1, [r4]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #7
	bne _08010044
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r4]
_08010044:
	ldrb r1, [r3]
_08010046:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08010056
	ldrb r0, [r4]
	mov r1, #128
	orr r0, r0, r1
_08010054:
	strb r0, [r4]
_08010056:
	mov r0, #1
	b _08010062
	.byte 0x00
	.byte 0x00
_0801005C:
	.4byte 0x00000353
_08010060:
	mov r0, #0
_08010062:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800FE2C

	THUMB_FUNC_START sub_08010068
sub_08010068: @ 0x08010068
	push {r4-r7,lr}
	ldr r6, [sp, #20]
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r5, r1, #24
	mov r12, r5
	lsl r2, r2, #24
	lsr r4, r2, #24
	lsl r3, r3, #24
	lsr r3, r3, #24
	ldr r2, _080100D8  @ =gUnknown_08078900
	lsl r1, r0, #3
	sub r1, r1, r0
	lsl r1, r1, #5
	sub r1, r1, r0
	lsl r1, r1, #2
	ldr r0, [r2]
	add r7, r0, r1
	mov r0, #0
	strb r0, [r6]
	cmp r5, #0
	bne _0801012C
	cmp r3, #7
	bls _0801009C
	mov r3, #7
_0801009C:
	cmp r4, #5
	bls _080100A2
	mov r4, #5
_080100A2:
	lsl r2, r4, #3
	add r0, r2, r3
	lsl r0, r0, #3
	add r4, r7, r0
	ldrb r1, [r4, #19]
	mov r5, #128
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080100B8
	b _080102AC
_080100B8:
	cmp r3, #6
	bne _080100DC
	add r0, r2, #6
	lsl r0, r0, #3
	add r2, r7, r0
	ldrb r1, [r2, #19]
	mov r0, #7
	and r0, r0, r1
	strb r0, [r6]
	cmp r0, #5
	bls _080100D2
	mov r0, #70
	strb r0, [r6]
_080100D2:
	ldrb r1, [r2, #19]
	b _0801011C
	.byte 0x00
	.byte 0x00
_080100D8:
	.4byte gUnknown_08078900
_080100DC:
	cmp r3, #7
	bne _080100F8
	add r0, r2, #7
	lsl r0, r0, #3
	add r2, r7, r0
	ldrb r0, [r2, #19]
	and r0, r0, r3
	strb r0, [r6]
	cmp r0, #5
	bls _080100F4
	mov r0, #70
	strb r0, [r6]
_080100F4:
	ldrb r1, [r2, #19]
	b _0801011C
_080100F8:
	ldrb r1, [r4, #16]
	strb r1, [r6]
	ldrb r0, [r4, #17]
	lsl r0, r0, #1
	add r1, r1, r0
	strb r1, [r6]
	ldrb r0, [r4, #18]
	lsl r0, r0, #2
	add r1, r1, r0
	strb r1, [r6]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #7
	bne _0801011A
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r6]
_0801011A:
	ldrb r1, [r4, #19]
_0801011C:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _08010126
	b _0801029E
_08010126:
	ldrb r0, [r6]
	orr r0, r0, r5
	b _0801029C
_0801012C:
	cmp r5, #4
	bne _08010154
	ldr r1, _08010150  @ =0x00000313
	add r0, r7, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _08010140
	b _080102AC
_08010140:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _0801014A
	b _0801029E
_0801014A:
	mov r0, #192
	b _0801029C
	.byte 0x00
	.byte 0x00
_08010150:
	.4byte 0x00000313
_08010154:
	cmp r5, #1
	bne _080101E4
	cmp r3, #6
	bls _0801015E
	mov r3, #6
_0801015E:
	cmp r4, #5
	bls _08010164
	mov r4, #5
_08010164:
	lsl r2, r4, #3
	add r0, r2, r3
	lsl r0, r0, #3
	add r4, r7, r0
	ldr r5, _0801019C  @ =0x00000193
	add r0, r4, r5
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0801017C
	b _080102AC
_0801017C:
	cmp r3, #6
	bne _080101A0
	add r0, r2, #6
	lsl r0, r0, #3
	add r0, r7, r0
	add r0, r0, r5
	ldrb r1, [r0]
	mov r0, #7
	and r0, r0, r1
	strb r0, [r6]
	cmp r0, #5
	bls _080101D0
	mov r0, #70
	strb r0, [r6]
	b _080101D0
	.byte 0x00
	.byte 0x00
_0801019C:
	.4byte 0x00000193
_080101A0:
	mov r5, #200
	lsl r5, r5, #1
	add r0, r4, r5
	ldrb r1, [r0]
	strb r1, [r6]
	add r5, r5, #1
	add r0, r4, r5
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r1, r0
	strb r1, [r6]
	add r5, r5, #1
	add r0, r4, r5
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, r0
	strb r1, [r6]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #7
	bne _080101D0
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r6]
_080101D0:
	add r0, r2, r3
	lsl r0, r0, #3
	add r0, r7, r0
	ldr r1, _080101E0  @ =0x00000193
	add r0, r0, r1
	ldrb r1, [r0]
	b _0801028E
	.byte 0x00
	.byte 0x00
_080101E0:
	.4byte 0x00000193
_080101E4:
	cmp r5, #5
	bne _08010208
	ldr r4, _08010204  @ =0x0000031B
	add r0, r7, r4
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080102AC
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0801029E
	mov r0, #192
	b _0801029C
	.byte 0x00
	.byte 0x00
_08010204:
	.4byte 0x0000031B
_08010208:
	cmp r5, #2
	bne _08010244
	lsl r0, r4, #3
	add r2, r7, r0
	ldr r5, _0801023C  @ =0x00000323
	add r3, r2, r5
	ldrb r1, [r3]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080102AC
	mov r1, #200
	lsl r1, r1, #2
	add r0, r2, r1
	ldrb r1, [r0]
	strb r1, [r6]
	ldr r4, _08010240  @ =0x00000321
	add r0, r2, r4
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r1, r0
	strb r1, [r6]
	sub r5, r5, #1
	add r0, r2, r5
	b _08010276
	.byte 0x00
	.byte 0x00
_0801023C:
	.4byte 0x00000323
_08010240:
	.4byte 0x00000321
_08010244:
	mov r0, r12
	cmp r0, #3
	bne _080102AC
	lsl r0, r4, #3
	add r2, r7, r0
	ldr r1, _080102A4  @ =0x00000353
	add r3, r2, r1
	ldrb r1, [r3]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080102AC
	mov r4, #212
	lsl r4, r4, #2
	add r0, r2, r4
	ldrb r1, [r0]
	strb r1, [r6]
	ldr r5, _080102A8  @ =0x00000351
	add r0, r2, r5
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r1, r0
	strb r1, [r6]
	add r4, r4, #2
	add r0, r2, r4
_08010276:
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, r0
	strb r1, [r6]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #7
	bne _0801028C
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r6]
_0801028C:
	ldrb r1, [r3]
_0801028E:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0801029E
	ldrb r0, [r6]
	mov r1, #128
	orr r0, r0, r1
_0801029C:
	strb r0, [r6]
_0801029E:
	mov r0, #1
	b _080102AE
	.byte 0x00
	.byte 0x00
_080102A4:
	.4byte 0x00000353
_080102A8:
	.4byte 0x00000351
_080102AC:
	mov r0, #0
_080102AE:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08010068

	THUMB_FUNC_START sub_080102B4
sub_080102B4: @ 0x080102B4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r2, _08010328  @ =gUnknown_08078900
	ldr r0, _0801032C  @ =gUnknown_080788F4
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r7, r1, r0
	ldr r0, _08010330  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801033C
	mov r4, #0
	ldr r0, _08010334  @ =0x03000058
	mov r9, r0
	lsl r6, r5, #3
	ldr r1, _08010338  @ =gUnknown_080784F8
	mov r12, r1
	mov r3, #0
	lsl r5, r5, #4
_080102F2:
	lsl r2, r4, #16
	asr r2, r2, #16
	add r1, r6, r2
	lsl r1, r1, #3
	add r1, r7, r1
	lsl r0, r2, #1
	add r0, r0, r5
	add r0, r0, r12
	ldrh r0, [r0]
	strh r0, [r1, #12]
	strb r3, [r1, #19]
	strb r3, [r1, #17]
	strb r3, [r1, #18]
	strb r3, [r1, #16]
	add r2, r2, #1
	lsl r2, r2, #16
	lsr r4, r2, #16
	asr r2, r2, #16
	cmp r2, #5
	ble _080102F2
	mov r0, #5
	strb r0, [r7]
	mov r2, r9
	ldrb r0, [r2]
	bl sub_0800F84C
	b _0801039E
_08010328:
	.4byte gUnknown_08078900
_0801032C:
	.4byte gUnknown_080788F4
_08010330:
	.4byte gLevelType
_08010334:
	.4byte 0x03000058
_08010338:
	.4byte gUnknown_080784F8
_0801033C:
	cmp r0, #1
	bne _0801039E
	mov r4, #0
	ldr r0, _080103B8  @ =0x03000058
	mov r9, r0
	lsl r6, r5, #3
	ldr r1, _080103BC  @ =gUnknown_08078558
	mov r8, r1
	sub r0, r6, r5
	lsl r0, r0, #1
	mov r12, r0
	mov r5, #0
_08010354:
	lsl r1, r4, #16
	asr r1, r1, #16
	add r0, r6, r1
	lsl r0, r0, #3
	add r3, r7, r0
	lsl r0, r1, #1
	add r0, r0, r12
	add r0, r0, r8
	ldrh r2, [r0]
	mov r4, #198
	lsl r4, r4, #1
	add r0, r3, r4
	strh r2, [r0]
	ldr r2, _080103C0  @ =0x00000193
	add r0, r3, r2
	strb r5, [r0]
	add r4, r4, #5
	add r0, r3, r4
	strb r5, [r0]
	sub r2, r2, #1
	add r0, r3, r2
	strb r5, [r0]
	sub r4, r4, #1
	add r0, r3, r4
	strb r5, [r0]
	add r1, r1, #1
	lsl r1, r1, #16
	lsr r4, r1, #16
	asr r1, r1, #16
	cmp r1, #5
	ble _08010354
	mov r0, #5
	strb r0, [r7]
	mov r1, r9
	ldrb r0, [r1]
	bl sub_0800F84C
_0801039E:
	ldr r0, _080103C4  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _080103AA
	bl sub_0802A164
_080103AA:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080103B8:
	.4byte 0x03000058
_080103BC:
	.4byte gUnknown_08078558
_080103C0:
	.4byte 0x00000193
_080103C4:
	.4byte gUnknown_03000B50
	THUMB_FUNC_END sub_080102B4

	THUMB_FUNC_START sub_080103C8
sub_080103C8: @ 0x080103C8
	push {lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r3, r1, #0
	cmp r0, #0
	bne _080103E2
	mov r0, #0
_080103DE:
	mov r2, #7
	b _08010414
_080103E2:
	cmp r0, #4
	bne _080103EC
	mov r0, #0
	mov r1, #5
	b _080103DE
_080103EC:
	cmp r0, #1
	bne _080103F6
	mov r0, #1
	mov r2, #6
	b _08010414
_080103F6:
	cmp r0, #5
	bne _08010402
	mov r0, #1
	mov r1, #5
	mov r2, #6
	b _08010414
_08010402:
	cmp r0, #2
	bne _0801040A
	mov r0, #2
	b _08010412
_0801040A:
	cmp r2, #3
	bne _08010424
	mov r0, #3
	add r1, r3, #0
_08010412:
	mov r2, #0
_08010414:
	mov r3, sp
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08010424
	mov r0, #1
	b _08010426
_08010424:
	mov r0, #0
_08010426:
	add sp, sp, #4
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080103C8

	THUMB_FUNC_START sub_0801042C
sub_0801042C: @ 0x0801042C
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	lsl r1, r1, #24
	lsr r6, r1, #24
	cmp r5, #0
	bne _0801046A
	mov r4, #0
_0801043E:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, sp
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08010528
	mov r0, sp
	ldrb r1, [r0]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _08010528
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #7
	bls _0801043E
_08010466:
	mov r0, #1
	b _0801052A
_0801046A:
	cmp r5, #4
	bne _0801048E
	mov r0, #4
	mov r1, #0
	mov r2, #0
	mov r3, sp
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08010528
	mov r0, sp
	ldrb r1, [r0]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _08010528
	b _08010466
_0801048E:
	cmp r5, #1
	bne _080104BE
	mov r4, #0
_08010494:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, sp
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08010528
	mov r0, sp
	ldrb r1, [r0]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _08010528
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #5
	bls _08010494
	b _08010466
_080104BE:
	cmp r5, #5
	bne _080104E2
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, sp
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08010528
	mov r0, sp
	ldrb r1, [r0]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _08010528
	b _08010466
_080104E2:
	cmp r5, #2
	bne _08010506
	mov r0, #2
	add r1, r6, #0
	mov r2, #0
	mov r3, sp
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08010528
	mov r0, sp
	ldrb r1, [r0]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _08010528
	b _08010466
_08010506:
	cmp r5, #3
	bne _08010528
	mov r0, #3
	add r1, r6, #0
	mov r2, #0
	mov r3, sp
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08010528
	mov r0, sp
	ldrb r1, [r0]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	beq _08010466
_08010528:
	mov r0, #0
_0801052A:
	add sp, sp, #4
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801042C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08010534
sub_08010534: @ 0x08010534
	push {r4-r7,lr}
	add r7, r2, #0
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r5, r1, #24
	lsr r6, r5, #24
	ldr r2, _0801056C  @ =gUnknown_08078900
	ldr r0, _08010570  @ =gUnknown_080788F4
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r4, r1, r0
	ldr r0, _08010574  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08010578
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0802F168
	b _080107D4
_0801056C:
	.4byte gUnknown_08078900
_08010570:
	.4byte gUnknown_080788F4
_08010574:
	.4byte gLevelEWorldFlag
_08010578:
	ldr r0, _080105AC  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801063C
	ldr r0, _080105B0  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080105B8
	lsl r0, r3, #3
	add r0, r0, #6
	lsl r0, r0, #3
	add r2, r4, r0
	ldrb r1, [r2, #19]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #5
	bhi _080105E0
	mov r0, #248
	and r0, r0, r1
	strb r0, [r2, #19]
	ldr r1, _080105B4  @ =gUnknown_03001BA0
	b _080105DA
_080105AC:
	.4byte gLevelType
_080105B0:
	.4byte gNextLevelInLevelTable
_080105B4:
	.4byte gUnknown_03001BA0
_080105B8:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _080105F0
	lsl r0, r3, #3
	add r0, r0, #7
	lsl r0, r0, #3
	add r2, r4, r0
	ldrb r1, [r2, #19]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #5
	bhi _080105E0
	mov r0, #248
	and r0, r0, r1
	strb r0, [r2, #19]
	ldr r1, _080105EC  @ =0x03000C20
_080105DA:
	ldrb r1, [r1]
	orr r0, r0, r1
	strb r0, [r2, #19]
_080105E0:
	ldrb r1, [r2, #19]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2, #19]
	b _080107D4
	.byte 0x00
	.byte 0x00
_080105EC:
	.4byte 0x03000C20
_080105F0:
	lsr r6, r5, #25
	lsl r0, r3, #3
	add r1, r0, r6
	lsl r1, r1, #3
	add r2, r4, r1
	ldrb r1, [r2, #16]
	add r5, r0, #0
	cmp r1, #0
	beq _0801060E
	ldrb r0, [r2, #17]
	cmp r0, #0
	beq _0801060E
	ldrb r0, [r2, #18]
	cmp r0, #0
	bne _0801062C
_0801060E:
	add r1, r5, r6
	lsl r1, r1, #3
	add r1, r4, r1
	ldrb r0, [r7]
	neg r0, r0
	lsr r0, r0, #31
	strb r0, [r1, #16]
	ldrb r0, [r7, #1]
	neg r0, r0
	lsr r0, r0, #31
	strb r0, [r1, #17]
	ldrb r0, [r7, #2]
	neg r0, r0
	lsr r0, r0, #31
	strb r0, [r1, #18]
_0801062C:
	add r0, r5, r6
	lsl r0, r0, #3
	add r0, r4, r0
	ldrb r2, [r0, #19]
	mov r1, #128
	orr r1, r1, r2
	strb r1, [r0, #19]
	b _080107D4
_0801063C:
	cmp r0, #1
	bne _080106E8
	cmp r6, #6
	bne _0801067C
	lsl r0, r3, #3
	add r1, r0, #6
	lsl r1, r1, #3
	add r1, r4, r1
	ldr r3, _08010674  @ =0x00000193
	add r2, r1, r3
	ldrb r3, [r2]
	mov r1, #7
	and r1, r1, r3
	add r5, r0, #0
	cmp r1, #5
	bhi _0801066A
	mov r0, #248
	and r0, r0, r3
	strb r0, [r2]
	ldr r1, _08010678  @ =0x03000C20
	ldrb r1, [r1]
	orr r0, r0, r1
	strb r0, [r2]
_0801066A:
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	b _080106D4
_08010674:
	.4byte 0x00000193
_08010678:
	.4byte 0x03000C20
_0801067C:
	lsl r1, r3, #3
	add r0, r1, r6
	lsl r0, r0, #3
	add r2, r4, r0
	mov r3, #200
	lsl r3, r3, #1
	add r0, r2, r3
	ldrb r0, [r0]
	add r5, r1, #0
	cmp r0, #0
	beq _080106A6
	ldr r1, _080106E0  @ =0x00000191
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080106A6
	add r3, r3, #2
	add r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080106D4
_080106A6:
	add r0, r5, r6
	lsl r0, r0, #3
	add r2, r4, r0
	ldrb r0, [r7]
	neg r0, r0
	lsr r0, r0, #31
	mov r3, #200
	lsl r3, r3, #1
	add r1, r2, r3
	strb r0, [r1]
	ldrb r0, [r7, #1]
	neg r0, r0
	lsr r0, r0, #31
	add r3, r3, #1
	add r1, r2, r3
	strb r0, [r1]
	ldrb r0, [r7, #2]
	neg r0, r0
	lsr r0, r0, #31
	mov r1, #201
	lsl r1, r1, #1
	add r3, r2, r1
	strb r0, [r3]
_080106D4:
	add r0, r5, r6
	lsl r0, r0, #3
	add r0, r4, r0
	ldr r3, _080106E4  @ =0x00000193
	add r2, r0, r3
	b _08010700
_080106E0:
	.4byte 0x00000191
_080106E4:
	.4byte 0x00000193
_080106E8:
	cmp r0, #4
	bne _080106F8
	ldr r0, _080106F4  @ =0x00000313
	add r2, r4, r0
	b _08010700
	.byte 0x00
	.byte 0x00
_080106F4:
	.4byte 0x00000313
_080106F8:
	cmp r0, #5
	bne _08010710
	ldr r1, _0801070C  @ =0x0000031B
	add r2, r4, r1
_08010700:
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	b _080107D4
	.byte 0x00
	.byte 0x00
_0801070C:
	.4byte 0x0000031B
_08010710:
	cmp r0, #2
	bne _08010774
	lsl r0, r3, #3
	add r2, r4, r0
	mov r3, #200
	lsl r3, r3, #2
	add r1, r2, r3
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #0
	beq _0801073A
	ldr r1, _08010768  @ =0x00000321
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801073A
	add r3, r3, #2
	add r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010762
_0801073A:
	add r2, r4, r5
	ldrb r0, [r7]
	neg r0, r0
	lsr r0, r0, #31
	mov r3, #200
	lsl r3, r3, #2
	add r1, r2, r3
	strb r0, [r1]
	ldrb r0, [r7, #1]
	neg r0, r0
	lsr r0, r0, #31
	add r3, r3, #1
	add r1, r2, r3
	strb r0, [r1]
	ldrb r0, [r7, #2]
	neg r0, r0
	lsr r0, r0, #31
	ldr r1, _0801076C  @ =0x00000322
	add r2, r2, r1
	strb r0, [r2]
_08010762:
	add r0, r4, r5
	ldr r2, _08010770  @ =0x00000323
	b _080107CA
_08010768:
	.4byte 0x00000321
_0801076C:
	.4byte 0x00000322
_08010770:
	.4byte 0x00000323
_08010774:
	cmp r0, #3
	bne _080107D4
	lsl r0, r3, #3
	add r3, r4, r0
	mov r2, #212
	lsl r2, r2, #2
	add r1, r3, r2
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #0
	beq _0801079E
	ldr r1, _080107DC  @ =0x00000351
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801079E
	add r2, r2, #2
	add r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080107C6
_0801079E:
	add r2, r4, r5
	ldrb r0, [r7]
	neg r0, r0
	lsr r0, r0, #31
	mov r3, #212
	lsl r3, r3, #2
	add r1, r2, r3
	strb r0, [r1]
	ldrb r0, [r7, #1]
	neg r0, r0
	lsr r0, r0, #31
	add r3, r3, #1
	add r1, r2, r3
	strb r0, [r1]
	ldrb r0, [r7, #2]
	neg r0, r0
	lsr r0, r0, #31
	ldr r1, _080107E0  @ =0x00000352
	add r2, r2, r1
	strb r0, [r2]
_080107C6:
	add r0, r4, r5
	ldr r2, _080107E4  @ =0x00000353
_080107CA:
	add r0, r0, r2
	ldrb r2, [r0]
	mov r1, #128
	orr r1, r1, r2
	strb r1, [r0]
_080107D4:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080107DC:
	.4byte 0x00000351
_080107E0:
	.4byte 0x00000352
_080107E4:
	.4byte 0x00000353
	THUMB_FUNC_END sub_08010534

	THUMB_FUNC_START sub_080107E8
sub_080107E8: @ 0x080107E8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r8, r5
	lsl r1, r1, #24
	mov r12, r1
	lsr r7, r1, #24
	add r6, r7, #0
	lsl r2, r2, #16
	lsr r4, r2, #16
	mov r9, r4
	ldr r2, _08010830  @ =gUnknown_08078900
	ldr r0, _08010834  @ =gUnknown_080788F4
	ldr r0, [r0]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r1, r1, r0
	ldr r0, _08010838  @ =gLevelEWorldFlag
	mov r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #0
	beq _0801083C
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0802F1AC
	b _0801094C
	.byte 0x00
	.byte 0x00
_08010830:
	.4byte gUnknown_08078900
_08010834:
	.4byte gUnknown_080788F4
_08010838:
	.4byte gLevelEWorldFlag
_0801083C:
	ldr r0, _08010868  @ =gCurrentEnemyScore
	str r3, [r0]
	ldr r0, _0801086C  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080108A8
	ldr r0, _08010870  @ =gNextLevelInLevelTable
	ldr r3, [r0, #32]
	mov r0, #1
	and r0, r0, r3
	cmp r0, #0
	beq _08010874
	lsl r0, r5, #3
	add r0, r0, #6
_0801085C:
	lsl r0, r0, #3
	add r2, r1, r0
	ldrh r0, [r2, #12]
	cmp r0, r4
	bls _08010894
	b _080108FC
_08010868:
	.4byte gCurrentEnemyScore
_0801086C:
	.4byte gLevelType
_08010870:
	.4byte gNextLevelInLevelTable
_08010874:
	mov r0, #2
	and r3, r3, r0
	cmp r3, #0
	beq _08010882
	lsl r0, r5, #3
	add r0, r0, #7
	b _0801085C
_08010882:
	mov r0, r12
	lsr r6, r0, #25
	lsl r0, r5, #3
	add r0, r0, r6
	lsl r0, r0, #3
	add r2, r1, r0
	ldrh r0, [r2, #12]
	cmp r0, r4
	bhi _080108FC
_08010894:
	ldr r0, _080108A4  @ =gCurrentPresentScore
	strh r4, [r2, #12]
	str r4, [r0]
	ldrb r1, [r2, #19]
	mov r0, #64
	orr r0, r0, r1
	strb r0, [r2, #19]
	b _0801094C
_080108A4:
	.4byte gCurrentPresentScore
_080108A8:
	cmp r0, #1
	bne _080108D4
	lsl r0, r5, #3
	add r0, r0, r6
	lsl r0, r0, #3
	add r2, r1, r0
	mov r0, #198
	lsl r0, r0, #1
	add r1, r2, r0
	ldrh r0, [r1]
	cmp r0, r4
	bhi _080108FC
	ldr r0, _080108CC  @ =gCurrentPresentScore
	strh r4, [r1]
	str r4, [r0]
	ldr r1, _080108D0  @ =0x00000193
	add r2, r2, r1
	b _08010928
_080108CC:
	.4byte gCurrentPresentScore
_080108D0:
	.4byte 0x00000193
_080108D4:
	cmp r0, #2
	bne _08010908
	lsl r0, r5, #3
	add r1, r1, r0
	mov r2, #199
	lsl r2, r2, #2
	add r3, r1, r2
	ldrh r0, [r3]
	cmp r0, r4
	bhi _080108FC
	ldr r0, _080108F4  @ =gCurrentPresentScore
	strh r4, [r3]
	str r4, [r0]
	ldr r0, _080108F8  @ =0x00000323
	b _08010926
	.byte 0x00
	.byte 0x00
_080108F4:
	.4byte gCurrentPresentScore
_080108F8:
	.4byte 0x00000323
_080108FC:
	ldr r0, _08010904  @ =gCurrentPresentScore
	str r4, [r0]
	b _0801094C
	.byte 0x00
	.byte 0x00
_08010904:
	.4byte gCurrentPresentScore
_08010908:
	cmp r0, #3
	bne _08010948
	mov r2, r8
	lsl r0, r2, #3
	add r1, r1, r0
	mov r0, #211
	lsl r0, r0, #2
	add r3, r1, r0
	ldrh r0, [r3]
	cmp r0, r4
	bhi _0801093C
	ldr r0, _08010934  @ =gCurrentPresentScore
	strh r4, [r3]
	str r4, [r0]
	ldr r0, _08010938  @ =0x00000353
_08010926:
	add r2, r1, r0
_08010928:
	ldrb r1, [r2]
	mov r0, #64
	orr r0, r0, r1
	strb r0, [r2]
	b _0801094C
	.byte 0x00
	.byte 0x00
_08010934:
	.4byte gCurrentPresentScore
_08010938:
	.4byte 0x00000353
_0801093C:
	ldr r0, _08010944  @ =gCurrentPresentScore
	mov r1, r9
	str r1, [r0]
	b _0801094C
_08010944:
	.4byte gCurrentPresentScore
_08010948:
	ldr r0, _08010958  @ =gCurrentPresentScore
	str r3, [r0]
_0801094C:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08010958:
	.4byte gCurrentPresentScore
	THUMB_FUNC_END sub_080107E8

	THUMB_FUNC_START sub_0801095C
sub_0801095C: @ 0x0801095C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r3, r0, #0
	lsl r3, r3, #24
	lsr r6, r3, #24
	mov r9, r6
	lsl r1, r1, #24
	mov r12, r1
	lsr r5, r1, #24
	add r7, r5, #0
	lsl r2, r2, #24
	lsr r4, r2, #24
	mov r8, r4
	ldr r3, _080109A8  @ =gUnknown_08078900
	ldr r1, _080109AC  @ =gUnknown_080788F4
	ldr r1, [r1]
	ldrb r2, [r1]
	lsl r1, r2, #3
	sub r1, r1, r2
	lsl r1, r1, #5
	sub r1, r1, r2
	lsl r1, r1, #2
	ldr r2, [r3]
	add r2, r2, r1
	ldr r1, _080109B0  @ =gLevelEWorldFlag
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _080109B4
	add r0, r5, #0
	bl sub_0802F1C0
	lsl r0, r0, #16
	lsr r0, r0, #16
	b _08010A30
_080109A8:
	.4byte gUnknown_08078900
_080109AC:
	.4byte gUnknown_080788F4
_080109B0:
	.4byte gLevelEWorldFlag
_080109B4:
	cmp r4, #0
	bne _080109E8
	cmp r5, #12
	bne _080109C8
	lsl r0, r6, #3
	add r0, r0, #6
	lsl r0, r0, #3
	add r0, r2, r0
	ldrh r0, [r0, #12]
	b _08010A30
_080109C8:
	cmp r5, #13
	bne _080109D8
	lsl r0, r6, #3
	add r0, r0, #7
	lsl r0, r0, #3
	add r0, r2, r0
	ldrh r0, [r0, #12]
	b _08010A30
_080109D8:
	mov r0, r12
	lsr r7, r0, #25
	lsl r0, r6, #3
	add r0, r0, r7
	lsl r0, r0, #3
	add r0, r2, r0
	ldrh r0, [r0, #12]
	b _08010A30
_080109E8:
	cmp r4, #1
	bne _080109FE
	lsl r0, r6, #3
	add r0, r0, r7
	lsl r0, r0, #3
	add r0, r2, r0
	mov r1, #198
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0]
	b _08010A30
_080109FE:
	cmp r4, #4
	beq _08010A06
	cmp r4, #5
	bne _08010A0A
_08010A06:
	mov r0, #0
	b _08010A30
_08010A0A:
	cmp r4, #2
	bne _08010A1C
	lsl r0, r6, #3
	add r0, r2, r0
	mov r1, #199
	lsl r1, r1, #2
	add r0, r0, r1
	ldrh r0, [r0]
	b _08010A30
_08010A1C:
	mov r1, r8
	cmp r1, #3
	bne _08010A30
	mov r1, r9
	lsl r0, r1, #3
	add r0, r2, r0
	mov r1, #211
	lsl r1, r1, #2
	add r0, r0, r1
	ldrh r0, [r0]
_08010A30:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801095C

	THUMB_FUNC_START sub_08010A3C
sub_08010A3C: @ 0x08010A3C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r7, r0, #24
	str r7, [sp, #4]
	lsl r1, r1, #24
	mov r10, r1
	mov r0, r10
	lsr r0, r0, #24
	mov r9, r0
	mov r8, r9
	ldr r1, _08010AD0  @ =gUnknown_08078900
	ldr r2, _08010AD4  @ =gUnknown_080788F4
	ldr r0, [r2]
	ldrb r3, [r0]
	lsl r0, r3, #3
	sub r0, r0, r3
	lsl r0, r0, #5
	sub r0, r0, r3
	lsl r0, r0, #2
	ldr r1, [r1]
	add r4, r1, r0
	ldr r1, _08010AD8  @ =0x0000031B
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _08010A84
	b _08010BA6
_08010A84:
	mov r2, sp
	add r2, r2, #1
	mov r5, sp
	add r5, r5, #2
	add r0, r3, #0
	mov r1, sp
	add r3, r5, #0
	bl sub_08014B78
	ldr r0, _08010ADC  @ =gLevelType
	mov r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	bne _08010B34
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08010AAA
	b _08010BA6
_08010AAA:
	mov r0, sp
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r7, r0
	bge _08010AB8
	b _08010BA6
_08010AB8:
	ldr r0, _08010AE0  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08010AE4
	lsl r0, r7, #4
	mov r1, #6
	orr r0, r0, r1
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	b _08010B2A
_08010AD0:
	.4byte gUnknown_08078900
_08010AD4:
	.4byte gUnknown_080788F4
_08010AD8:
	.4byte 0x0000031B
_08010ADC:
	.4byte gLevelType
_08010AE0:
	.4byte gNextLevelInLevelTable
_08010AE4:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _08010B16
	ldr r1, _08010B08  @ =gCurrentWorld
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	ble _08010AF8
	strb r2, [r1]
_08010AF8:
	lsl r0, r7, #4
	mov r1, r9
	orr r0, r0, r1
	strb r0, [r4, #1]
	cmp r7, #4
	bhi _08010B0C
	strb r0, [r4, #2]
	b _08010B2A
_08010B08:
	.4byte gCurrentWorld
_08010B0C:
	mov r1, #80
	mov r0, r9
	orr r0, r0, r1
	strb r0, [r4, #2]
	b _08010B2A
_08010B16:
	mov r0, r10
	lsr r1, r0, #25
	lsl r0, r7, #4
	orr r0, r0, r1
	strb r0, [r4, #1]
	ldr r0, _08010B30  @ =gCurrentWorld
	ldrb r0, [r0]
	lsl r0, r0, #4
	orr r1, r1, r0
	strb r1, [r4, #2]
_08010B2A:
	mov r0, #0
	b _08010BA4
	.byte 0x00
	.byte 0x00
_08010B30:
	.4byte gCurrentWorld
_08010B34:
	cmp r2, #1
	bne _08010B8C
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _08010BA6
	mov r0, sp
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r7, r0
	blt _08010BA6
	ldr r0, _08010B6C  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08010B70
	lsl r0, r7, #4
	mov r1, r9
	orr r0, r0, r1
	strb r0, [r4, #1]
	cmp r7, #4
	bls _08010BA0
	mov r1, #80
	mov r0, r9
	orr r0, r0, r1
	b _08010BA0
_08010B6C:
	.4byte gNextLevelInLevelTable
_08010B70:
	ldr r1, [sp, #4]
	lsl r0, r1, #4
	mov r1, r8
	orr r0, r0, r1
	strb r0, [r4, #1]
	ldr r0, _08010B88  @ =gCurrentWorld
	ldrb r0, [r0]
	lsl r0, r0, #4
	orr r1, r1, r0
	strb r1, [r4, #2]
	b _08010BA2
	.byte 0x00
	.byte 0x00
_08010B88:
	.4byte gCurrentWorld
_08010B8C:
	cmp r2, #4
	bne _08010B96
	strb r6, [r4, #1]
	strb r6, [r4, #2]
	b _08010BA2
_08010B96:
	cmp r2, #5
	bne _08010BA6
	mov r0, #85
	strb r0, [r4, #1]
	mov r0, #86
_08010BA0:
	strb r0, [r4, #2]
_08010BA2:
	mov r0, #1
_08010BA4:
	strb r0, [r4, #3]
_08010BA6:
	ldr r1, _08010BD8  @ =gUnknown_080788F4
	ldr r0, [r1]
	ldrb r0, [r0]
	bl sub_0800F84C
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _08010BBC
	mov r0, #1
	strb r0, [r4]
_08010BBC:
	ldr r0, _08010BDC  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _08010BC8
	bl sub_0802A164
_08010BC8:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08010BD8:
	.4byte gUnknown_080788F4
_08010BDC:
	.4byte gUnknown_03000B50
	THUMB_FUNC_END sub_08010A3C

	THUMB_FUNC_START sub_08010BE0
sub_08010BE0: @ 0x08010BE0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	str r0, [sp, #4]
	lsl r1, r1, #24
	str r1, [sp, #8]
	lsr r1, r1, #24
	mov r10, r1
	mov r6, r10
	ldr r3, _08010C38  @ =gUnknown_08078900
	ldr r2, _08010C3C  @ =gUnknown_080788F4
	ldr r0, [r2]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r3]
	add r4, r1, r0
	ldr r0, _08010C40  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08010C48
	bl sub_0802F1D4
	ldr r0, _08010C44  @ =gUnknown_080788F8
	ldr r2, [r0]
	ldr r0, [r2]
	mov r1, #1
	orr r0, r0, r1
	str r0, [r2]
	bl sub_0802A164
	b _08010DD2
	.byte 0x00
	.byte 0x00
_08010C38:
	.4byte gUnknown_08078900
_08010C3C:
	.4byte gUnknown_080788F4
_08010C40:
	.4byte gLevelEWorldFlag
_08010C44:
	.4byte gUnknown_080788F8
_08010C48:
	ldr r0, _08010CD4  @ =gUnknown_080788F8
	ldr r2, [r0]
	ldr r0, [r2]
	mov r1, #2
	neg r1, r1
	and r0, r0, r1
	str r0, [r2]
	ldr r1, _08010CD8  @ =0x0000031B
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #0
	beq _08010C6A
	b _08010DB0
_08010C6A:
	ldr r1, _08010CDC  @ =gUnknown_080788F4
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r1, #1
	add r1, sp, r1
	mov r9, r1
	mov r5, sp
	add r5, r5, #2
	mov r1, sp
	mov r2, r9
	add r3, r5, #0
	bl sub_08014B78
	ldr r0, _08010CE0  @ =gLevelType
	mov r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	bne _08010D30
	ldr r0, [sp, #8]
	lsr r6, r0, #25
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08010C9C
	b _08010DB0
_08010C9C:
	mov r0, sp
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r8, r0
	bgt _08010CBA
	cmp r8, r0
	beq _08010CAE
	b _08010DB0
_08010CAE:
	mov r1, r9
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r6, r0
	bge _08010CBA
	b _08010DB0
_08010CBA:
	ldr r0, _08010CE4  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08010CE8
	mov r1, r8
	lsl r0, r1, #4
	mov r1, #6
	orr r0, r0, r1
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	b _08010D26
_08010CD4:
	.4byte gUnknown_080788F8
_08010CD8:
	.4byte 0x0000031B
_08010CDC:
	.4byte gUnknown_080788F4
_08010CE0:
	.4byte gLevelType
_08010CE4:
	.4byte gNextLevelInLevelTable
_08010CE8:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _08010D14
	ldr r1, _08010D0C  @ =gCurrentWorld
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	ble _08010CFC
	strb r2, [r1]
_08010CFC:
	mov r1, r8
	lsl r0, r1, #4
	orr r0, r0, r6
	strb r0, [r4, #1]
	cmp r1, #4
	bhi _08010D10
	strb r0, [r4, #2]
	b _08010D26
_08010D0C:
	.4byte gCurrentWorld
_08010D10:
	mov r0, #80
	b _08010D22
_08010D14:
	mov r1, r8
	lsl r0, r1, #4
	orr r0, r0, r6
	strb r0, [r4, #1]
	ldr r0, _08010D2C  @ =gCurrentWorld
	ldrb r0, [r0]
	lsl r0, r0, #4
_08010D22:
	orr r6, r6, r0
	strb r6, [r4, #2]
_08010D26:
	mov r0, #0
	b _08010DAE
	.byte 0x00
	.byte 0x00
_08010D2C:
	.4byte gCurrentWorld
_08010D30:
	cmp r2, #1
	bne _08010D98
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bgt _08010DB0
	mov r0, sp
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r8, r0
	bgt _08010D56
	cmp r8, r0
	bne _08010DB0
	mov r1, r9
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r10, r0
	blt _08010DB0
_08010D56:
	ldr r0, _08010D7C  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08010D80
	mov r1, r8
	lsl r0, r1, #4
	mov r1, r10
	orr r0, r0, r1
	strb r0, [r4, #1]
	mov r1, r8
	cmp r1, #4
	bls _08010DAA
	mov r1, #80
	mov r0, r10
	orr r0, r0, r1
	b _08010DAA
	.byte 0x00
	.byte 0x00
_08010D7C:
	.4byte gNextLevelInLevelTable
_08010D80:
	ldr r1, [sp, #4]
	lsl r0, r1, #4
	orr r0, r0, r6
	strb r0, [r4, #1]
	ldr r0, _08010D94  @ =gCurrentWorld
	ldrb r0, [r0]
	lsl r0, r0, #4
	orr r6, r6, r0
	strb r6, [r4, #2]
	b _08010DAC
_08010D94:
	.4byte gCurrentWorld
_08010D98:
	cmp r2, #4
	bne _08010DA2
	strb r7, [r4, #1]
	strb r7, [r4, #2]
	b _08010DAC
_08010DA2:
	cmp r2, #5
	bne _08010DB0
	mov r0, #85
	strb r0, [r4, #1]
_08010DAA:
	strb r0, [r4, #2]
_08010DAC:
	mov r0, #1
_08010DAE:
	strb r0, [r4, #3]
_08010DB0:
	ldr r1, _08010DE4  @ =gUnknown_080788F4
	ldr r0, [r1]
	ldrb r0, [r0]
	bl sub_0800F84C
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _08010DC6
	mov r0, #1
	strb r0, [r4]
_08010DC6:
	ldr r0, _08010DE8  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _08010DD2
	bl sub_0802A164
_08010DD2:
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
_08010DE4:
	.4byte gUnknown_080788F4
_08010DE8:
	.4byte gUnknown_03000B50
	THUMB_FUNC_END sub_08010BE0

	THUMB_FUNC_START sub_08010DEC
sub_08010DEC: @ 0x08010DEC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	mov r0, #5
	strb r0, [r6]
	mov r1, #0
	ldr r0, _08010E88  @ =gUnknown_080784F8
	mov r8, r0
_08010DFE:
	mov r2, #0
	lsl r5, r1, #16
	asr r0, r5, #16
	lsl r4, r0, #3
	lsl r3, r0, #4
_08010E08:
	lsl r1, r2, #16
	asr r1, r1, #16
	add r2, r4, r1
	lsl r2, r2, #3
	add r2, r6, r2
	lsl r0, r1, #1
	add r0, r0, r3
	add r0, r0, r8
	ldrh r0, [r0]
	strh r0, [r2, #12]
	add r1, r1, #1
	lsl r1, r1, #16
	lsr r2, r1, #16
	asr r1, r1, #16
	cmp r1, #7
	ble _08010E08
	mov r2, #0
	asr r0, r5, #16
	lsl r3, r0, #3
	ldr r1, _08010E8C  @ =gUnknown_08078558
	mov r12, r1
	sub r0, r3, r0
	lsl r4, r0, #1
	mov r7, #198
	lsl r7, r7, #1
_08010E3A:
	lsl r1, r2, #16
	asr r1, r1, #16
	add r2, r3, r1
	lsl r2, r2, #3
	add r2, r6, r2
	lsl r0, r1, #1
	add r0, r0, r4
	add r0, r0, r12
	ldrh r0, [r0]
	add r2, r2, r7
	strh r0, [r2]
	add r1, r1, #1
	lsl r1, r1, #16
	lsr r2, r1, #16
	asr r1, r1, #16
	cmp r1, #6
	ble _08010E3A
	mov r2, #128
	lsl r2, r2, #9
	add r0, r5, r2
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #5
	ble _08010DFE
	mov r1, #195
	lsl r1, r1, #2
	add r0, r6, r1
	mov r1, #0
	strh r1, [r0]
	mov r2, #197
	lsl r2, r2, #2
	add r0, r6, r2
	strh r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08010E88:
	.4byte gUnknown_080784F8
_08010E8C:
	.4byte gUnknown_08078558
	THUMB_FUNC_END sub_08010DEC

	THUMB_FUNC_START sub_08010E90
sub_08010E90: @ 0x08010E90
	push {r4,r5,lr}
	ldr r0, _08010F5C  @ =gUnknown_08078900
	ldr r0, [r0]
	mov r1, #223
	lsl r1, r1, #2
	add r4, r0, r1
	mov r1, #0
	mov r0, #16
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	mov r0, #5
	strb r0, [r4]
	str r1, [r4, #4]
	mov r2, #0
	mov r5, #128
_08010EAE:
	mov r0, #0
	lsl r3, r2, #16
	asr r3, r3, #13
_08010EB4:
	lsl r1, r0, #16
	asr r1, r1, #16
	add r0, r3, r1
	lsl r0, r0, #3
	add r0, r4, r0
	strb r5, [r0, #19]
	add r1, r1, #1
	lsl r1, r1, #16
	lsr r0, r1, #16
	asr r1, r1, #16
	cmp r1, #5
	ble _08010EB4
	lsl r3, r2, #16
	asr r3, r3, #16
	lsl r0, r3, #3
	add r0, r0, r1
	lsl r1, r0, #3
	add r1, r4, r1
	mov r2, #134
	strb r2, [r1, #19]
	add r0, r0, #1
	lsl r0, r0, #3
	add r0, r4, r0
	strb r5, [r0, #19]
	add r3, r3, #1
	lsl r3, r3, #16
	lsr r2, r3, #16
	cmp r3, #0
	ble _08010EAE
	mov r0, #1
	bl sub_0800F84C
	ldr r0, _08010F5C  @ =gUnknown_08078900
	ldr r0, [r0]
	mov r1, #223
	lsl r1, r1, #3
	add r4, r0, r1
	mov r1, #0
	mov r0, #48
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	mov r0, #5
	strb r0, [r4]
	str r1, [r4, #4]
	mov r2, #0
	mov r5, #128
_08010F10:
	mov r0, #0
	lsl r3, r2, #16
	asr r2, r3, #13
_08010F16:
	lsl r1, r0, #16
	asr r1, r1, #16
	add r0, r2, r1
	lsl r0, r0, #3
	add r0, r4, r0
	strb r5, [r0, #19]
	add r1, r1, #1
	lsl r1, r1, #16
	lsr r0, r1, #16
	asr r1, r1, #16
	cmp r1, #5
	ble _08010F16
	asr r3, r3, #16
	lsl r0, r3, #3
	add r0, r0, r1
	lsl r1, r0, #3
	add r1, r4, r1
	mov r2, #134
	strb r2, [r1, #19]
	add r0, r0, #1
	lsl r0, r0, #3
	add r0, r4, r0
	strb r5, [r0, #19]
	add r3, r3, #1
	lsl r3, r3, #16
	lsr r2, r3, #16
	asr r3, r3, #16
	cmp r3, #2
	ble _08010F10
	mov r0, #2
	bl sub_0800F84C
	pop {r4,r5}
	pop {r0}
	bx r0
_08010F5C:
	.4byte gUnknown_08078900
	THUMB_FUNC_END sub_08010E90

	THUMB_FUNC_START sub_08010F60
sub_08010F60: @ 0x08010F60
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r2, _08011074  @ =gUnknown_08078900
	ldr r3, _08011078  @ =0x03000058
	ldrb r1, [r3]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r6, r1, r0
	mov r1, #0
	mov r0, #5
	strb r0, [r6]
	str r1, [r6, #4]
	mov r0, #192
	mov r9, r0
	mov r5, #1
	mov r4, #128
	mov r12, r4
	mov r7, #198
	mov r8, r7
	add r0, r0, #211
	mov r10, r0
	ldr r4, _0801107C  @ =0x00000313
	add r4, r6, r4
	str r4, [sp]
_08010FA0:
	mov r0, #0
	lsl r3, r1, #16
	asr r7, r3, #13
_08010FA6:
	lsl r1, r0, #16
	asr r1, r1, #16
	add r0, r7, r1
	lsl r0, r0, #3
	add r2, r6, r0
	mov r0, r9
	strb r0, [r2, #19]
	mov r4, r10
	add r0, r2, r4
	mov r4, r9
	strb r4, [r0]
	ldr r4, _08011080  @ =0x00000191
	add r0, r2, r4
	strb r5, [r0]
	add r4, r4, #1
	add r0, r2, r4
	strb r5, [r0]
	sub r4, r4, #2
	add r0, r2, r4
	strb r5, [r0]
	strb r5, [r2, #17]
	strb r5, [r2, #18]
	strb r5, [r2, #16]
	add r1, r1, #1
	lsl r1, r1, #16
	lsr r0, r1, #16
	asr r4, r1, #16
	cmp r4, #5
	ble _08010FA6
	asr r3, r3, #16
	lsl r2, r3, #3
	add r1, r6, r2
	ldr r7, _08011084  @ =0x00000323
	add r0, r1, r7
	mov r7, r12
	strb r7, [r0]
	ldr r7, _08011088  @ =0x00000353
	add r0, r1, r7
	mov r7, r12
	strb r7, [r0]
	ldr r7, _0801108C  @ =0x00000321
	add r0, r1, r7
	strb r5, [r0]
	add r7, r7, #1
	add r0, r1, r7
	strb r5, [r0]
	sub r7, r7, #2
	add r0, r1, r7
	strb r5, [r0]
	add r7, r7, #49
	add r0, r1, r7
	strb r5, [r0]
	add r7, r7, #1
	add r0, r1, r7
	strb r5, [r0]
	mov r0, #212
	lsl r0, r0, #2
	add r1, r1, r0
	strb r5, [r1]
	add r2, r2, r4
	lsl r0, r2, #3
	add r0, r6, r0
	mov r1, r8
	strb r1, [r0, #19]
	add r2, r2, #1
	lsl r2, r2, #3
	add r2, r6, r2
	strb r1, [r2, #19]
	add r0, r0, r10
	strb r1, [r0]
	mov r7, r12
	ldr r4, [sp]
	strb r7, [r4]
	ldr r1, _08011090  @ =0x0000031B
	add r0, r6, r1
	mov r4, r12
	strb r4, [r0]
	add r3, r3, #1
	lsl r3, r3, #16
	lsr r1, r3, #16
	asr r3, r3, #16
	cmp r3, #5
	ble _08010FA0
	ldr r7, _08011078  @ =0x03000058
	ldrb r0, [r7]
	bl sub_0800F84C
	bl sub_08014D08
	ldr r0, _08011094  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _08011064
	bl sub_0802A164
_08011064:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08011074:
	.4byte gUnknown_08078900
_08011078:
	.4byte 0x03000058
_0801107C:
	.4byte 0x00000313
_08011080:
	.4byte 0x00000191
_08011084:
	.4byte 0x00000323
_08011088:
	.4byte 0x00000353
_0801108C:
	.4byte 0x00000321
_08011090:
	.4byte 0x0000031B
_08011094:
	.4byte gUnknown_03000B50
	THUMB_FUNC_END sub_08010F60

	THUMB_FUNC_START sub_08011098
sub_08011098: @ 0x08011098
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r2, _08011184  @ =gUnknown_08078900
	ldr r3, _08011188  @ =0x03000058
	ldrb r1, [r3]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r5, r1, r0
	mov r0, #5
	strb r0, [r5]
	ldr r0, _0801118C  @ =0xF000FFEF
	str r0, [r5, #4]
	mov r1, #0
	mov r10, r3
	mov r6, #192
	mov r7, #1
	mov r0, #198
	mov r12, r0
	add r0, r0, #205
	mov r8, r0
	ldr r0, _08011190  @ =0x00000313
	add r0, r0, r5
	mov r9, r0
_080110D6:
	mov r0, #0
	lsl r3, r1, #16
	asr r2, r3, #13
_080110DC:
	lsl r1, r0, #16
	asr r1, r1, #16
	add r0, r2, r1
	lsl r0, r0, #3
	add r0, r5, r0
	strb r6, [r0, #19]
	add r0, r0, r8
	strb r6, [r0]
	add r1, r1, #1
	lsl r1, r1, #16
	lsr r0, r1, #16
	asr r4, r1, #16
	cmp r4, #5
	ble _080110DC
	asr r3, r3, #16
	lsl r2, r3, #3
	add r1, r5, r2
	ldr r0, _08011194  @ =0x00000323
	add r0, r1, r0
	strb r6, [r0]
	ldr r0, _08011198  @ =0x00000353
	add r0, r1, r0
	strb r6, [r0]
	ldr r0, _0801119C  @ =0x00000321
	add r0, r1, r0
	strb r7, [r0]
	ldr r0, _080111A0  @ =0x00000322
	add r0, r1, r0
	strb r7, [r0]
	mov r0, #200
	lsl r0, r0, #2
	add r0, r1, r0
	strb r7, [r0]
	ldr r0, _080111A4  @ =0x00000351
	add r0, r1, r0
	strb r7, [r0]
	ldr r0, _080111A8  @ =0x00000352
	add r0, r1, r0
	strb r7, [r0]
	mov r0, #212
	lsl r0, r0, #2
	add r1, r1, r0
	strb r7, [r1]
	add r2, r2, r4
	lsl r0, r2, #3
	add r0, r5, r0
	mov r1, r12
	strb r1, [r0, #19]
	add r2, r2, #1
	lsl r2, r2, #3
	add r2, r5, r2
	strb r1, [r2, #19]
	mov r0, r9
	strb r6, [r0]
	ldr r1, _080111AC  @ =0x0000031B
	add r0, r5, r1
	strb r6, [r0]
	add r3, r3, #1
	lsl r3, r3, #16
	lsr r1, r3, #16
	asr r3, r3, #16
	cmp r3, #5
	ble _080110D6
	mov r1, r10
	ldrb r0, [r1]
	bl sub_0800F84C
	bl sub_08014D08
	ldr r0, _080111B0  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _08011172
	bl sub_0802A164
_08011172:
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
_08011184:
	.4byte gUnknown_08078900
_08011188:
	.4byte 0x03000058
_0801118C:
	.4byte 0xF000FFEF
_08011190:
	.4byte 0x00000313
_08011194:
	.4byte 0x00000323
_08011198:
	.4byte 0x00000353
_0801119C:
	.4byte 0x00000321
_080111A0:
	.4byte 0x00000322
_080111A4:
	.4byte 0x00000351
_080111A8:
	.4byte 0x00000352
_080111AC:
	.4byte 0x0000031B
_080111B0:
	.4byte gUnknown_03000B50
	THUMB_FUNC_END sub_08011098

	THUMB_FUNC_START sub_080111B4
sub_080111B4: @ 0x080111B4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	mov r0, #0
	str r0, [sp, #8]
	mov r6, #0
	mov r4, #0
	add r1, sp, #4
	mov r8, r1
	mov r0, #192
	mov r10, r0
_080111D6:
	mov r5, #0
	lsl r7, r4, #24
	lsl r4, r4, #16
_080111DC:
	lsl r3, r5, #24
	lsr r3, r3, #24
	add r1, sp, #4
	str r1, [sp]
	mov r0, r9
	mov r1, #0
	lsr r2, r7, #24
	bl sub_08010068
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801120A
	mov r0, r8
	ldrb r1, [r0]
	mov r0, r10
	and r0, r0, r1
	cmp r0, #192
	bne _0801120A
	lsl r0, r6, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r6, r0, #16
_0801120A:
	lsl r0, r5, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r5, r0, #16
	asr r0, r0, #16
	cmp r0, #5
	ble _080111DC
	lsr r2, r7, #24
	lsl r3, r5, #24
	lsr r3, r3, #24
	add r0, sp, #4
	str r0, [sp]
	mov r0, r9
	mov r1, #0
	bl sub_08010068
	lsl r0, r0, #24
	cmp r0, #0
	beq _08011248
	mov r0, r8
	ldrb r1, [r0]
	mov r0, r10
	and r0, r0, r1
	cmp r0, #192
	bne _08011248
	lsl r0, r6, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r6, r0, #16
_08011248:
	lsr r2, r7, #24
	add r3, r5, #1
	lsl r3, r3, #24
	lsr r3, r3, #24
	add r0, sp, #4
	str r0, [sp]
	mov r0, r9
	mov r1, #0
	bl sub_08010068
	lsl r0, r0, #24
	cmp r0, #0
	beq _08011278
	mov r0, r8
	ldrb r1, [r0]
	mov r0, r10
	and r0, r0, r1
	cmp r0, #192
	bne _08011278
	lsl r0, r6, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r6, r0, #16
_08011278:
	mov r1, #128
	lsl r1, r1, #9
	add r0, r4, r1
	lsr r4, r0, #16
	asr r0, r0, #16
	cmp r0, #5
	ble _080111D6
	lsl r0, r6, #16
	asr r0, r0, #16
	cmp r0, #47
	bgt _08011292
	mov r0, #0
	b _0801137A
_08011292:
	ldr r1, [sp, #8]
	lsl r0, r1, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r0, r0, #16
	str r0, [sp, #8]
	mov r6, #0
	mov r4, #0
_080112A4:
	mov r5, #0
	lsl r7, r4, #24
	lsl r4, r4, #16
_080112AA:
	lsl r3, r5, #24
	lsr r3, r3, #24
	add r0, sp, #4
	str r0, [sp]
	mov r0, r9
	mov r1, #1
	lsr r2, r7, #24
	bl sub_08010068
	lsl r0, r0, #24
	cmp r0, #0
	beq _080112D8
	add r0, sp, #4
	ldrb r1, [r0]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _080112D8
	lsl r0, r6, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r6, r0, #16
_080112D8:
	lsl r0, r5, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r5, r0, #16
	asr r0, r0, #16
	cmp r0, #6
	ble _080112AA
	add r0, r4, r1
	lsr r4, r0, #16
	asr r0, r0, #16
	cmp r0, #5
	ble _080112A4
	lsl r0, r6, #16
	asr r0, r0, #16
	cmp r0, #41
	ble _08011374
	ldr r1, [sp, #8]
	lsl r0, r1, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r0, r0, #16
	str r0, [sp, #8]
	mov r6, #0
	mov r4, #0
_0801130C:
	lsl r0, r4, #24
	lsr r5, r0, #24
	add r0, sp, #4
	str r0, [sp]
	mov r0, r9
	mov r1, #2
	add r2, r5, #0
	mov r3, #0
	bl sub_08010068
	lsl r0, r0, #24
	cmp r0, #0
	beq _08011330
	lsl r0, r6, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r6, r0, #16
_08011330:
	add r0, sp, #4
	str r0, [sp]
	mov r0, r9
	mov r1, #3
	add r2, r5, #0
	mov r3, #0
	bl sub_08010068
	lsl r0, r0, #24
	cmp r0, #0
	beq _08011350
	lsl r0, r6, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r6, r0, #16
_08011350:
	lsl r0, r4, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r4, r0, #16
	asr r0, r0, #16
	cmp r0, #5
	ble _0801130C
	lsl r0, r6, #16
	asr r0, r0, #16
	cmp r0, #11
	ble _08011374
	ldr r1, [sp, #8]
	lsl r0, r1, #24
	mov r1, #128
	lsl r1, r1, #17
	add r0, r0, r1
	b _08011378
_08011374:
	ldr r1, [sp, #8]
	lsl r0, r1, #24
_08011378:
	lsr r0, r0, #24
_0801137A:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080111B4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801138C
sub_0801138C: @ 0x0801138C
	push {r4,lr}
	sub sp, sp, #12
	ldr r3, _080113DC  @ =gUnknown_030012E0
	ldrh r2, [r3]
	mov r0, #4
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _08011418
	ldr r1, _080113E0  @ =0x0000FFFB
	and r1, r1, r2
	strh r1, [r3]
	ldr r4, _080113E4  @ =gUnknown_080788E0
	ldr r3, _080113E8  @ =0x03000065
	ldrb r2, [r3]
	lsl r0, r2, #1
	add r0, r0, r4
	ldrh r0, [r0]
	cmp r1, r0
	bne _080113EC
	add r0, r2, #1
	strb r0, [r3]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #10
	bne _08011404
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #20
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08011404
	.byte 0x00
	.byte 0x00
_080113DC:
	.4byte gUnknown_030012E0
_080113E0:
	.4byte 0x0000FFFB
_080113E4:
	.4byte gUnknown_080788E0
_080113E8:
	.4byte 0x03000065
_080113EC:
	cmp r2, #0
	beq _08011404
	cmp r1, #0
	beq _08011404
	sub r0, r2, #1
	lsl r0, r0, #1
	add r0, r0, r4
	ldrh r0, [r0]
	cmp r1, r0
	beq _08011404
	mov r0, #0
	strb r0, [r3]
_08011404:
	ldr r0, _08011410  @ =gUnknown_030012E8
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08011414  @ =gUnknown_030012E0
	strh r1, [r0]
	b _0801141C
_08011410:
	.4byte gUnknown_030012E8
_08011414:
	.4byte gUnknown_030012E0
_08011418:
	ldr r0, _08011424  @ =0x03000065
	strb r1, [r0]
_0801141C:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_08011424:
	.4byte 0x03000065
	THUMB_FUNC_END sub_0801138C

	THUMB_FUNC_START sub_08011428
sub_08011428: @ 0x08011428
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r5, _080114BC  @ =gUnknown_080788FC
	ldr r0, [r5]
	ldr r6, [r0]
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r0, _080114C0  @ =gUnknown_080788F4
	ldr r1, [r0]
	ldr r2, _080114C4  @ =0x01000542
	mov r0, sp
	bl CpuSet
	bl sub_08029080
	cmp r4, #0
	bne _08011452
	ldr r0, [r5]
	str r6, [r0]
_08011452:
	ldr r0, [r5]
	ldr r0, [r0]
	lsl r0, r0, #26
	lsr r0, r0, #31
	bl sub_0807220C
	ldr r4, _080114C8  @ =gUnknown_08078900
	ldr r0, [r4]
	bl sub_08010DEC
	ldr r0, [r4]
	mov r1, #223
	lsl r1, r1, #2
	add r0, r0, r1
	bl sub_08010DEC
	ldr r0, [r4]
	mov r1, #223
	lsl r1, r1, #3
	add r0, r0, r1
	bl sub_08010DEC
	bl sub_0802F06C
	bl sub_0802F1D4
	mov r4, #0
	ldr r5, _080114CC  @ =0x03000066
_0801148A:
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
	ble _0801148A
	ldr r0, _080114D0  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _080114B2
	bl sub_0802A164
_080114B2:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080114BC:
	.4byte gUnknown_080788FC
_080114C0:
	.4byte gUnknown_080788F4
_080114C4:
	.4byte 0x01000542
_080114C8:
	.4byte gUnknown_08078900
_080114CC:
	.4byte 0x03000066
_080114D0:
	.4byte gUnknown_03000B50
	THUMB_FUNC_END sub_08011428
