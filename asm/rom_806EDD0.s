	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_0806EDD0
sub_0806EDD0: @ 0x0806EDD0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #28]
	mov r8, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _0806EED4  @ =0x0806EF55
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0806EED8  @ =0x0806F475
	str r0, [r1]
	mov r1, #0
	mov r9, r1
	strh r2, [r7]
	ldr r1, _0806EEDC  @ =gUnknown_03001E38
	ldrb r0, [r1]
	add r0, r0, #1
	strh r0, [r7, #4]
	mov r0, #5
	strh r0, [r7, #6]
	ldrb r0, [r1]
	add r0, r0, #50
	add r1, r7, #0
	add r1, r1, #65
	strb r0, [r1]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0806EEE0  @ =gUnknown_086695D8
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	add r6, r7, #0
	add r6, r6, #124
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r6]
	str r1, [r6, #4]
	ldr r5, _0806EEE4  @ =0x03000718
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r8
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r8
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0806EEE8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	strb r0, [r6]
	mov r0, r9
	strb r0, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	mov r1, r9
	strb r1, [r7, #10]
	ldr r1, _0806EEEC  @ =0x030006F0
	mov r2, r9
	strb r2, [r1]
	ldrb r0, [r3, #22]
	strb r0, [r1, #1]
	ldrb r0, [r3, #23]
	strb r0, [r1, #2]
	ldr r3, _0806EEF0  @ =gUnknown_03001E3C
	ldrb r2, [r3]
	mov r0, #7
	and r0, r0, r2
	add r2, r1, #0
	cmp r0, #1
	bne _0806EEF4
	add r0, r7, #0
	add r0, r0, #64
	mov r1, r9
	strb r1, [r0]
	strb r1, [r2, #16]
	b _0806EEFE
	.byte 0x00
	.byte 0x00
_0806EED4:
	.4byte sub_0806EF54
_0806EED8:
	.4byte sub_0806F474
_0806EEDC:
	.4byte gUnknown_03001E38
_0806EEE0:
	.4byte gUnknown_086695D8
_0806EEE4:
	.4byte 0x03000718
_0806EEE8:
	.4byte 0xFFFFFE00
_0806EEEC:
	.4byte 0x030006F0
_0806EEF0:
	.4byte gUnknown_03001E3C
_0806EEF4:
	add r1, r7, #0
	add r1, r1, #64
	mov r0, #1
	strb r0, [r1]
	strb r0, [r2, #16]
_0806EEFE:
	ldrb r1, [r3]
	mov r0, #112
	and r0, r0, r1
	cmp r0, #16
	bne _0806EF0C
	mov r0, #0
	b _0806EF0E
_0806EF0C:
	mov r0, #1
_0806EF0E:
	strb r0, [r7, #10]
	mov r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #1
	beq _0806EF1E
	mov r0, #128
	lsl r0, r0, #8
	b _0806EF20
_0806EF1E:
	mov r0, #0
_0806EF20:
	str r0, [r2, #8]
	mov r4, #0
	str r4, [r2, #12]
	mov r0, #10
	strb r0, [r2, #19]
	mov r0, #1
	strb r0, [r2, #17]
	mov r0, #2
	strb r0, [r2, #18]
	str r4, [r2, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #129
	lsl r0, r0, #13
	str r0, [r7, #92]
	str r4, [r7, #96]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806EDD0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806EF54
sub_0806EF54: @ 0x0806EF54
	push {r4-r7,lr}
	add r4, r0, #0
	add r5, r4, #0
	add r5, r5, #160
	ldr r0, [r5]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r7, _0806EFB0  @ =gUnknown_03001A1C
	ldr r0, [r7]
	mov r6, #128
	lsl r6, r6, #5
	and r0, r0, r6
	cmp r0, #0
	bne _0806EF84
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0806EFB4  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_0806EF84:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, [r7]
	and r1, r1, r6
	cmp r1, #0
	bne _0806EFE8
	ldr r3, [r5]
	add r1, r4, #0
	add r1, r1, #64
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	bne _0806EFB8
	ldrh r1, [r4, #8]
	ldr r2, [r3, #28]
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	neg r1, r1
	b _0806EFC2
_0806EFB0:
	.4byte gUnknown_03001A1C
_0806EFB4:
	.4byte 0x00007FFF
_0806EFB8:
	ldrh r1, [r4, #8]
	ldr r2, [r3, #28]
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
_0806EFC2:
	strh r1, [r4, #48]
	ldrh r2, [r4, #8]
	mov r1, #10
	ldrsb r1, [r4, r1]
	cmp r1, #0
	bne _0806EFDC
	ldr r1, [r3, #32]
	lsl r2, r2, #1
	add r2, r2, r1
	ldrh r1, [r2]
	neg r1, r1
	strh r1, [r4, #50]
	b _0806EFEE
_0806EFDC:
	ldr r1, [r3, #32]
	lsl r2, r2, #1
	add r2, r2, r1
	ldrh r1, [r2]
	strh r1, [r4, #50]
	b _0806EFEE
_0806EFE8:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_0806EFEE:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806EF54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806F01C
sub_0806F01C: @ 0x0806F01C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r5, r0, #0
	mov r0, #61
	add r0, r0, r5
	mov r12, r0
	ldr r7, _0806F098  @ =0x030019F0
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	bne _0806F0CC
	ldr r2, _0806F09C  @ =gUnknown_030019AC
	mov r8, r2
	ldr r4, [r2]
	ldr r3, [r4, #100]
	mov r6, #4
	ldrsh r0, [r3, r6]
	ldr r1, [r4, #32]
	add r0, r1, r0
	mov r6, #48
	ldrsh r2, [r4, r6]
	add r0, r0, r2
	mov r9, r0
	mov r6, #6
	ldrsh r0, [r3, r6]
	add r1, r1, r0
	add r1, r1, r2
	ldr r0, [r5, #108]
	cmp r0, r1
	bgt _0806F062
	ldr r0, [r5, #116]
	cmp r0, r9
	bge _0806F0CC
_0806F062:
	mov r2, #255
	strb r2, [r7]
	add r1, r4, #0
	add r1, r1, #67
	mov r0, #0
	ldrsb r0, [r1, r0]
	mov r3, r12
	ldrb r3, [r3]
	cmp r0, r3
	bne _0806F07C
	ldrb r0, [r1]
	orr r0, r0, r2
	strb r0, [r1]
_0806F07C:
	mov r4, r8
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0806F0A4
	ldr r1, _0806F0A0  @ =0xFFFFFC00
	add r0, r2, #0
	bl sub_0804A264
	b _0806F0AE
_0806F098:
	.4byte 0x030019F0
_0806F09C:
	.4byte gUnknown_030019AC
_0806F0A0:
	.4byte 0xFFFFFC00
_0806F0A4:
	mov r1, #128
	lsl r1, r1, #3
	add r0, r2, #0
	bl sub_0804A264
_0806F0AE:
	ldr r4, _0806F0D8  @ =gUnknown_030019AC
	ldr r0, [r4]
	mov r2, #192
	lsl r2, r2, #2
	mov r1, #0
	bl sub_0803F9A8
	cmp r0, #0
	beq _0806F0CC
	ldr r1, [r4]
	ldr r0, [r1, #36]
	mov r6, #192
	lsl r6, r6, #2
	add r0, r0, r6
	str r0, [r1, #36]
_0806F0CC:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0806F0D8:
	.4byte gUnknown_030019AC
	THUMB_FUNC_END sub_0806F01C

	THUMB_FUNC_START sub_0806F0DC
sub_0806F0DC: @ 0x0806F0DC
	push {r4,lr}
	sub sp, sp, #20
	add r4, r0, #0
	ldr r1, [r4, #32]
	asr r1, r1, #8
	add r0, r0, #132
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #8
	orr r0, r0, r1
	str r0, [r2, #8]
	add r2, sp, #12
	add r0, r4, #0
	add r1, sp, #4
	bl sub_08006C30
	add r1, r4, #0
	add r1, r1, #65
	mov r2, #0
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #49
	bne _0806F132
	ldrb r0, [r4, #10]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r4, #10]
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #36]
	sub r0, r0, r1
	str r0, [r4, #36]
	b _0806F1C6
_0806F132:
	cmp r0, #46
	beq _0806F13A
	cmp r0, #52
	bne _0806F180
_0806F13A:
	mov r1, #50
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806F158
	ldr r2, _0806F154  @ =0x030006F0
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #1
	strb r0, [r1]
	strb r0, [r2, #16]
	add r0, r1, #0
	b _0806F162
	.byte 0x00
	.byte 0x00
_0806F154:
	.4byte 0x030006F0
_0806F158:
	ldr r1, _0806F174  @ =0x030006F0
	add r0, r4, #0
	add r0, r0, #64
	strb r2, [r0]
	strb r2, [r1, #16]
_0806F162:
	ldrb r2, [r0]
	ldr r0, _0806F178  @ =0x03000718
	ldrb r3, [r0]
	ldr r0, _0806F17C  @ =gUnknown_086695D8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	b _0806F1BC
	.byte 0x00
	.byte 0x00
_0806F174:
	.4byte 0x030006F0
_0806F178:
	.4byte 0x03000718
_0806F17C:
	.4byte gUnknown_086695D8
_0806F180:
	cmp r0, #47
	beq _0806F188
	cmp r0, #53
	bne _0806F1C6
_0806F188:
	mov r1, #50
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806F1A0
	ldr r1, _0806F19C  @ =0x030006F0
	add r0, r4, #0
	add r0, r0, #64
	strb r2, [r0]
	strb r2, [r1, #16]
	b _0806F1AE
_0806F19C:
	.4byte 0x030006F0
_0806F1A0:
	ldr r2, _0806F1D0  @ =0x030006F0
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #1
	strb r0, [r1]
	strb r0, [r2, #16]
	add r0, r1, #0
_0806F1AE:
	ldrb r2, [r0]
	ldr r0, _0806F1D4  @ =0x03000718
	ldrb r3, [r0]
	ldr r0, _0806F1D8  @ =gUnknown_086695D8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
_0806F1BC:
	bl sub_0804A644
	mov r0, #129
	lsl r0, r0, #13
	str r0, [r4, #92]
_0806F1C6:
	add sp, sp, #20
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806F1D0:
	.4byte 0x030006F0
_0806F1D4:
	.4byte 0x03000718
_0806F1D8:
	.4byte gUnknown_086695D8
	THUMB_FUNC_END sub_0806F0DC

	THUMB_FUNC_START sub_0806F1DC
sub_0806F1DC: @ 0x0806F1DC
	push {r4,lr}
	sub sp, sp, #20
	add r4, r0, #0
	bl sub_0806F01C
	ldr r1, [r4, #32]
	asr r1, r1, #8
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #4
	str r0, [sp, #8]
	add r2, sp, #12
	add r0, r4, #0
	add r1, sp, #4
	bl sub_08006C30
	add r1, r4, #0
	add r1, r1, #65
	mov r2, #0
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #49
	bne _0806F232
	add r2, r4, #0
	add r2, r2, #64
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	mov r0, #48
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #32]
	sub r0, r0, r1
	str r0, [r4, #32]
	b _0806F2C0
_0806F232:
	cmp r0, #46
	beq _0806F23A
	cmp r0, #52
	bne _0806F278
_0806F23A:
	mov r1, #48
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806F250
	ldr r1, _0806F24C  @ =0x030006F0
	mov r0, #1
	strb r0, [r4, #10]
	strb r0, [r1, #16]
	b _0806F256
_0806F24C:
	.4byte 0x030006F0
_0806F250:
	ldr r0, _0806F26C  @ =0x030006F0
	strb r2, [r4, #10]
	strb r2, [r0, #16]
_0806F256:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806F270  @ =0x03000718
	ldrb r3, [r0]
	ldr r0, _0806F274  @ =gUnknown_086695D8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	b _0806F2AE
	.byte 0x00
	.byte 0x00
_0806F26C:
	.4byte 0x030006F0
_0806F270:
	.4byte 0x03000718
_0806F274:
	.4byte gUnknown_086695D8
_0806F278:
	cmp r0, #47
	beq _0806F280
	cmp r0, #53
	bne _0806F2C0
_0806F280:
	mov r1, #48
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806F294
	ldr r0, _0806F290  @ =0x030006F0
	strb r2, [r4, #10]
	strb r2, [r0, #16]
	b _0806F29C
_0806F290:
	.4byte 0x030006F0
_0806F294:
	ldr r1, _0806F2C8  @ =0x030006F0
	mov r0, #1
	strb r0, [r4, #10]
	strb r0, [r1, #16]
_0806F29C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806F2CC  @ =0x03000718
	ldrb r3, [r0]
	ldr r0, _0806F2D0  @ =gUnknown_086695D8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
_0806F2AE:
	bl sub_0804A644
	mov r0, #129
	lsl r0, r0, #13
	str r0, [r4, #92]
	ldr r1, _0806F2C8  @ =0x030006F0
	mov r0, #128
	lsl r0, r0, #8
	str r0, [r1, #8]
_0806F2C0:
	add sp, sp, #20
	pop {r4}
	pop {r0}
	bx r0
_0806F2C8:
	.4byte 0x030006F0
_0806F2CC:
	.4byte 0x03000718
_0806F2D0:
	.4byte gUnknown_086695D8
	THUMB_FUNC_END sub_0806F1DC

	THUMB_FUNC_START sub_0806F2D4
sub_0806F2D4: @ 0x0806F2D4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #20
	add r4, r0, #0
	bl sub_0806F01C
	add r6, r4, #0
	add r6, r6, #132
	ldr r2, [r6]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #8
	orr r0, r0, r1
	str r0, [r2, #8]
	mov r1, #48
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #32]
	add r1, r1, r0
	asr r1, r1, #8
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #4
	str r0, [sp, #8]
	add r5, sp, #12
	add r0, r4, #0
	add r1, sp, #4
	add r2, r5, #0
	bl sub_08006C30
	add r7, r4, #0
	add r7, r7, #65
	mov r2, #0
	mov r8, r2
	strb r0, [r7]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #49
	beq _0806F36C
	cmp r0, #44
	beq _0806F388
	cmp r0, #50
	beq _0806F388
	cmp r0, #45
	beq _0806F3F8
	cmp r0, #51
	beq _0806F3F8
	ldr r1, [r4, #32]
	asr r1, r1, #8
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	str r1, [sp, #4]
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #36]
	add r0, r0, r1
	asr r0, r0, #8
	add r0, r0, #4
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #4
	add r2, r5, #0
	bl sub_08006C30
	strb r0, [r7]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #49
	bne _0806F380
_0806F36C:
	add r1, r4, #0
	add r1, r1, #64
	ldrb r0, [r1]
	mov r2, #1
	eor r0, r0, r2
	strb r0, [r1]
	ldrb r0, [r4, #10]
	eor r0, r0, r2
	strb r0, [r4, #10]
	b _0806F424
_0806F380:
	cmp r0, #44
	beq _0806F388
	cmp r0, #50
	bne _0806F3F0
_0806F388:
	ldr r0, [r5, #4]
	lsl r0, r0, #8
	str r0, [r4, #36]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806F3DC  @ =0x03000718
	ldrb r3, [r0]
	ldr r0, _0806F3E0  @ =gUnknown_086695D8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0804A644
	mov r0, #129
	lsl r0, r0, #13
	str r0, [r4, #92]
	ldr r0, _0806F3E4  @ =0x030006F0
	mov r1, r8
	str r1, [r0, #8]
	add r0, r4, #0
	add r0, r0, #61
	ldrb r1, [r0]
	ldr r3, _0806F3E8  @ =gUnknown_030019AC
	ldr r0, [r3]
	add r2, r0, #0
	add r2, r2, #67
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bne _0806F424
	mov r0, #255
	strb r0, [r2]
	ldr r1, [r3]
	ldr r0, [r4, #36]
	ldr r2, _0806F3EC  @ =0xFFFFE200
	add r0, r0, r2
	str r0, [r1, #36]
	asr r0, r0, #8
	add r1, r1, #124
	strb r0, [r1]
	b _0806F424
_0806F3DC:
	.4byte 0x03000718
_0806F3E0:
	.4byte gUnknown_086695D8
_0806F3E4:
	.4byte 0x030006F0
_0806F3E8:
	.4byte gUnknown_030019AC
_0806F3EC:
	.4byte 0xFFFFE200
_0806F3F0:
	cmp r0, #45
	beq _0806F3F8
	cmp r0, #51
	bne _0806F424
_0806F3F8:
	ldr r0, [r6]
	ldrb r1, [r0, #1]
	lsr r1, r1, #1
	ldr r0, [sp, #12]
	sub r0, r0, r1
	add r0, r0, #4
	lsl r0, r0, #8
	str r0, [r4, #32]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806F430  @ =0x03000718
	ldrb r3, [r0]
	ldr r0, _0806F434  @ =gUnknown_086695D8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	bl sub_0804A644
	mov r0, #129
	lsl r0, r0, #13
	str r0, [r4, #92]
_0806F424:
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0806F430:
	.4byte 0x03000718
_0806F434:
	.4byte gUnknown_086695D8
	THUMB_FUNC_END sub_0806F2D4

	THUMB_FUNC_START sub_0806F438
sub_0806F438: @ 0x0806F438
	push {lr}
	add r3, r0, #0
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #1
	bne _0806F452
	add r0, r3, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #1
	eor r1, r1, r2
	strb r1, [r0]
	b _0806F470
_0806F452:
	cmp r0, #2
	bne _0806F45E
	ldrb r0, [r3, #10]
	mov r1, #1
	eor r0, r0, r1
	b _0806F46E
_0806F45E:
	add r1, r3, #0
	add r1, r1, #64
	ldrb r0, [r1]
	mov r2, #1
	eor r0, r0, r2
	strb r0, [r1]
	ldrb r0, [r3, #10]
	eor r0, r0, r2
_0806F46E:
	strb r0, [r3, #10]
_0806F470:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806F438

	THUMB_FUNC_START sub_0806F474
sub_0806F474: @ 0x0806F474
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806F474

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806F488
sub_0806F488: @ 0x0806F488
	bx lr
	THUMB_FUNC_END sub_0806F488

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806F48C
sub_0806F48C: @ 0x0806F48C
	bx lr
	THUMB_FUNC_END sub_0806F48C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806F490
sub_0806F490: @ 0x0806F490
	push {r4-r6,lr}
	ldr r3, _0806F4B8  @ =0x0300074A
	ldr r4, _0806F4BC  @ =gUnknown_03001BD0
	ldr r0, [r4]
	ldr r1, [r0, #32]
	asr r1, r1, #7
	sub r1, r1, #240
	strh r1, [r3]
	ldr r2, _0806F4C0  @ =0x0300074C
	ldr r0, [r0, #36]
	asr r0, r0, #7
	sub r0, r0, #160
	strh r0, [r2]
	lsl r0, r1, #16
	add r5, r4, #0
	cmp r0, #0
	bge _0806F4C4
	mov r0, #0
	b _0806F4D8
	.byte 0x00
	.byte 0x00
_0806F4B8:
	.4byte 0x0300074A
_0806F4BC:
	.4byte gUnknown_03001BD0
_0806F4C0:
	.4byte 0x0300074C
_0806F4C4:
	asr r0, r0, #17
	add r0, r0, #240
	ldr r4, _0806F4E8  @ =gCurrentLevelWidth
	mov r6, #0
	ldrsh r1, [r4, r6]
	cmp r0, r1
	blt _0806F4DA
	ldrh r0, [r4]
	sub r0, r0, #240
	lsl r0, r0, #1
_0806F4D8:
	strh r0, [r3]
_0806F4DA:
	ldrh r0, [r2]
	lsl r0, r0, #16
	cmp r0, #0
	bge _0806F4EC
	mov r0, #0
	b _0806F500
	.byte 0x00
	.byte 0x00
_0806F4E8:
	.4byte gCurrentLevelWidth
_0806F4EC:
	asr r0, r0, #17
	add r0, r0, #160
	ldr r4, _0806F534  @ =gCurrentLevelHeight
	mov r6, #0
	ldrsh r1, [r4, r6]
	cmp r0, r1
	blt _0806F502
	ldrh r0, [r4]
	sub r0, r0, #160
	lsl r0, r0, #1
_0806F500:
	strh r0, [r2]
_0806F502:
	ldr r0, _0806F538  @ =0x03000746
	ldrh r1, [r3]
	lsl r1, r1, #16
	asr r1, r1, #17
	strh r1, [r0]
	ldr r0, _0806F53C  @ =0x03000748
	ldrh r2, [r2]
	lsl r2, r2, #16
	asr r2, r2, #17
	strh r2, [r0]
	ldr r4, _0806F540  @ =0x03000742
	ldr r3, [r5]
	ldr r0, [r3, #32]
	asr r0, r0, #8
	sub r0, r0, r1
	strh r0, [r4]
	ldr r1, _0806F544  @ =0x03000744
	ldr r0, [r3, #36]
	asr r0, r0, #8
	sub r0, r0, r2
	strh r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806F534:
	.4byte gCurrentLevelHeight
_0806F538:
	.4byte 0x03000746
_0806F53C:
	.4byte 0x03000748
_0806F540:
	.4byte 0x03000742
_0806F544:
	.4byte 0x03000744
	THUMB_FUNC_END sub_0806F490

	THUMB_FUNC_START sub_0806F548
sub_0806F548: @ sub_0806F548
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r10, r1
	lsl r2, r2, #24
	lsr r6, r2, #24
	mov r0, #8
	and r0, r0, r6
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _0806F5D8
	mov r2, #128
	lsl r2, r2, #19
	ldr r0, _0806F5B0  @ =0x03000740
	ldrh r0, [r0]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	bl sub_08029E14
	ldr r1, _0806F5B4  @ =gUnknown_03001B90
	mov r0, #3
	strb r0, [r1]
	ldr r1, _0806F5B8  @ =gCameraHorizontalOffset
	ldr r0, _0806F5BC  @ =0x0300074A
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0806F5C0  @ =gCameraVerticalOffset
	ldr r0, _0806F5C4  @ =0x0300074C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0806F5C8  @ =gSpriteHorizontalOffset
	ldr r0, _0806F5CC  @ =0x03000746
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0806F5D0  @ =gUnknown_030012F4
	ldr r0, _0806F5D4  @ =0x03000748
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, #1
	neg r0, r0
	b _0806F7B8
_0806F5B0:
	.4byte 0x03000740
_0806F5B4:
	.4byte gUnknown_03001B90
_0806F5B8:
	.4byte gCameraHorizontalOffset
_0806F5BC:
	.4byte 0x0300074A
_0806F5C0:
	.4byte gCameraVerticalOffset
_0806F5C4:
	.4byte 0x0300074C
_0806F5C8:
	.4byte gSpriteHorizontalOffset
_0806F5CC:
	.4byte 0x03000746
_0806F5D0:
	.4byte gUnknown_030012F4
_0806F5D4:
	.4byte 0x03000748
_0806F5D8:
	mov r1, r9
	lsl r0, r1, #16
	asr r1, r0, #16
	cmp r1, #0
	blt _0806F626
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, _0806F608  @ =0x03000760
	add r7, r0, r1
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	beq _0806F660
	strb r2, [r7, #7]
	strb r2, [r7, #4]
	strb r2, [r7, #6]
	mov r0, #0
	strh r2, [r7, #8]
	strb r0, [r7, #5]
	mov r0, #1
	neg r0, r0
	b _0806F7B8
	.byte 0x00
	.byte 0x00
_0806F608:
	.4byte 0x03000760
_0806F60C:
	lsr r2, r3, #16
	mov r9, r2
	asr r1, r3, #16
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	mov r3, r12
	add r7, r0, r3
	ldrb r0, [r7, #7]
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r7, #7]
	b _0806F652
_0806F626:
	mov r4, #0
	ldr r5, _0806F65C  @ =0x03000760
	mov r12, r5
	mov r0, #16
	mov r8, r0
_0806F630:
	lsl r3, r4, #16
	asr r2, r3, #16
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r1, [r0, #7]
	mov r0, r8
	and r0, r0, r1
	cmp r0, #0
	beq _0806F60C
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _0806F630
_0806F652:
	cmp r4, #8
	bne _0806F660
	mov r0, #1
	neg r0, r0
	b _0806F7B8
_0806F65C:
	.4byte 0x03000760
_0806F660:
	ldrb r1, [r7, #7]
	mov r0, #16
	mov r4, #0
	orr r0, r0, r1
	strb r0, [r7, #7]
	mov r1, r10
	lsl r0, r1, #16
	asr r0, r0, #16
	mov r1, #44
	mul r0, r1, r0
	ldr r1, _0806F6C4  @ =gUnknown_08669A80
	add r0, r0, r1
	str r0, [r7]
	ldrh r1, [r0, #30]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _0806F694
	mov r0, #138
	bl sub_08071E14
	ldr r1, _0806F6C8  @ =0x03000754
	mov r0, #1
	neg r0, r0
	str r0, [r1]
_0806F694:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	bne _0806F69E
	strb r4, [r7, #4]
_0806F69E:
	strb r4, [r7, #6]
	strh r4, [r7, #8]
	ldr r1, [r7]
	ldr r0, [r1, #16]
	ldrb r0, [r0, #1]
	strb r0, [r7, #5]
	ldr r0, [r1, #4]
	add r2, r1, #0
	cmp r0, #0
	beq _0806F6CC
	mov r3, #4
	ldrsh r0, [r2, r3]
	lsl r0, r0, #8
	str r0, [r7, #12]
	mov r1, #6
	ldrsh r0, [r2, r1]
	lsl r0, r0, #8
	b _0806F6D8
	.byte 0x00
	.byte 0x00
_0806F6C4:
	.4byte gUnknown_08669A80
_0806F6C8:
	.4byte 0x03000754
_0806F6CC:
	ldr r0, [r7, #12]
	ldr r1, _0806F7C8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r7, #12]
	ldr r0, [r7, #16]
	and r0, r0, r1
_0806F6D8:
	str r0, [r7, #16]
	ldrh r1, [r2, #30]
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0806F6EA
	bl sub_0806F490
_0806F6EA:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _0806F7B2
	mov r6, #1
	neg r6, r6
	add r0, r6, #0
	mov r1, #12
	mov r2, #0
	bl sub_0806F548
	ldr r4, _0806F7CC  @ =0x03000760
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r5, r4, #0
	add r5, r5, #12
	add r2, r1, r5
	ldr r0, [r7, #12]
	str r0, [r2]
	add r4, r4, #16
	add r1, r1, r4
	ldr r0, [r7, #16]
	str r0, [r1]
	add r0, r6, #0
	mov r1, #13
	mov r2, #0
	bl sub_0806F548
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r2, r1, r5
	ldr r0, [r7, #12]
	str r0, [r2]
	add r1, r1, r4
	ldr r0, [r7, #16]
	str r0, [r1]
	add r0, r6, #0
	mov r1, #14
	mov r2, #0
	bl sub_0806F548
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r2, r1, r5
	ldr r0, [r7, #12]
	str r0, [r2]
	add r1, r1, r4
	ldr r0, [r7, #16]
	str r0, [r1]
	add r0, r6, #0
	mov r1, #15
	mov r2, #0
	bl sub_0806F548
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r2, r1, r5
	ldr r0, [r7, #12]
	ldr r3, _0806F7D0  @ =0xFFFFF400
	add r0, r0, r3
	str r0, [r2]
	add r1, r1, r4
	ldr r0, [r7, #16]
	mov r2, #192
	lsl r2, r2, #4
	mov r8, r2
	add r0, r0, r8
	str r0, [r1]
	add r0, r6, #0
	mov r1, #16
	mov r2, #0
	bl sub_0806F548
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r5, r1, r5
	ldr r0, [r7, #12]
	mov r3, #224
	lsl r3, r3, #5
	add r0, r0, r3
	str r0, [r5]
	add r1, r1, r4
	ldr r0, [r7, #16]
	add r0, r0, r8
	str r0, [r1]
_0806F7B2:
	mov r1, r9
	lsl r0, r1, #24
	asr r0, r0, #24
_0806F7B8:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0806F7C8:
	.4byte 0xFFFFFF00
_0806F7CC:
	.4byte 0x03000760
_0806F7D0:
	.4byte 0xFFFFF400
	THUMB_FUNC_END sub_0806F548

	THUMB_FUNC_START sub_0806F7D4
sub_0806F7D4:
	push {r4,r5,lr}
	add r3, r0, #0
	ldrb r0, [r3, #5]
	sub r0, r0, #1
	strb r0, [r3, #5]
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _0806F82C
	ldrb r0, [r3, #4]
	add r0, r0, #1
	strb r0, [r3, #4]
	ldr r1, [r3]
	ldrb r4, [r1, #28]
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r1, #0
	cmp r0, r4
	bcc _0806F81C
	ldrh r1, [r2, #30]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806F80A
	strb r5, [r3, #4]
	b _0806F80E
_0806F80A:
	sub r0, r4, #1
	strb r0, [r3, #4]
_0806F80E:
	ldrh r1, [r2, #30]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0806F81C
	mov r0, #1
	b _0806F82E
_0806F81C:
	ldrb r1, [r3, #4]
	ldr r2, [r2, #16]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r3, #5]
_0806F82C:
	mov r0, #0
_0806F82E:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806F7D4

	THUMB_FUNC_START sub_0806F834
sub_0806F834: @ 0x0806F834
	push {r4,lr}
	add r2, r0, #0
	ldr r3, [r2]
	mov r0, #34
	add r0, r0, r3
	mov r12, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806F88E
	ldrb r0, [r2, #6]
	ldr r1, [r3, #36]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, [r2, #12]
	add r0, r0, r1
	str r0, [r2, #12]
	ldrb r0, [r2, #6]
	ldr r1, [r3, #40]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, [r2, #16]
	sub r0, r0, r1
	str r0, [r2, #16]
	ldrb r0, [r2, #6]
	add r0, r0, #1
	strb r0, [r2, #6]
	mov r4, r12
	ldrb r1, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, r1
	bcc _0806F88E
	sub r0, r1, #1
	strb r0, [r2, #6]
	ldrh r1, [r3, #30]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0806F88E
	mov r0, #1
	b _0806F890
_0806F88E:
	mov r0, #0
_0806F890:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806F834

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806F898
sub_0806F898: @ 0x0806F898
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	ldr r1, _0806F990  @ =0x03000740
	mov r0, #128
	lsl r0, r0, #19
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0806F994  @ =0x0300074E
	ldr r0, _0806F998  @ =gSpriteHorizontalOffset
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0806F99C  @ =0x03000750
	ldr r0, _0806F9A0  @ =gUnknown_030012F4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0806F9A4  @ =gUnknown_03001B98 
	ldrb r5, [r0]
	cmp r5, #0
	bne _0806F8E0
	bl sub_08029DB8
	ldr r4, _0806F9A8  @ =0x03000754
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #138
	mov r1, #12
	mov r2, #10
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r4]
_0806F8E0:
	mov r3, #0
	ldr r0, _0806F9AC  @ =gMiniMariosAliveInLevel_03001BC8
	ldr r5, _0806F9B0  @ =0x03000720
	ldr r1, _0806F9B4  @ =gUnknown_0854301C
	mov r8, r1
	ldr r2, _0806F9B8  @ =gUnknown_03001940
	mov r9, r2
	ldrb r1, [r0]
	cmp r3, r1
	bcs _0806F92A
	ldr r2, _0806F9BC  @ =0x03000728
	mov r12, r2
	add r4, r0, #0
	ldr r7, _0806F9C0  @ =gUnknown_085BD3D8
	mov r6, #0
_0806F8FE:
	lsl r2, r3, #2
	add r2, r2, r12
	strb r6, [r2]
	ldrb r0, [r4]
	sub r0, r0, r3
	lsl r0, r0, #3
	add r0, r0, #20
	neg r0, r0
	strh r0, [r2, #2]
	ldrb r1, [r2]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	strb r0, [r2, #1]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldrb r0, [r4]
	cmp r3, r0
	bcc _0806F8FE
_0806F92A:
	mov r0, #0
	strb r0, [r5]
	mov r1, #0
	ldr r0, _0806F9C4  @ =0x0000FFEC
	strh r0, [r5, #2]
	mov r2, r8
	ldrb r0, [r2, #1]
	strb r0, [r5, #1]
	mov r2, r9
	ldr r0, [r2]
	add r0, r0, #153
	strb r1, [r0]
	mov r3, #0
	ldr r2, _0806F9C8  @ =0x03000760
	mov r1, #0
_0806F948:
	lsl r0, r3, #2
	add r0, r0, r3
	lsl r0, r0, #2
	add r0, r0, r2
	strb r1, [r0, #7]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #7
	bls _0806F948
	mov r4, #1
	neg r4, r4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl sub_0806F548
	ldr r1, _0806F9CC  @ =0x03000758
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl sub_0806F548
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_0806F548
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0806F990:
	.4byte 0x03000740
_0806F994:
	.4byte 0x0300074E
_0806F998:
	.4byte gSpriteHorizontalOffset
_0806F99C:
	.4byte 0x03000750
_0806F9A0:
	.4byte gUnknown_030012F4
_0806F9A4:
	.4byte gUnknown_03001B98 
_0806F9A8:
	.4byte 0x03000754
_0806F9AC:
	.4byte gMiniMariosAliveInLevel_03001BC8
_0806F9B0:
	.4byte 0x03000720
_0806F9B4:
	.4byte gUnknown_0854301C
_0806F9B8:
	.4byte gUnknown_03001940
_0806F9BC:
	.4byte 0x03000728
_0806F9C0:
	.4byte gUnknown_085BD3D8
_0806F9C4:
	.4byte 0x0000FFEC
_0806F9C8:
	.4byte 0x03000760
_0806F9CC:
	.4byte 0x03000758
	THUMB_FUNC_END sub_0806F898

	THUMB_FUNC_START sub_0806F9D0
sub_0806F9D0: @ 0x0806F9D0
	push {r4-r6,lr}
	sub sp, sp, #12
	ldr r0, _0806FA5C  @ =0x03000754
	ldr r0, [r0]
	ldr r3, _0806FA60  @ =0x03000760
	ldr r1, _0806FA64  @ =0x03000758
	mov r2, #0
	ldrsb r2, [r1, r2]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #2
	add r3, r3, #12
	add r1, r1, r3
	ldr r1, [r1]
	bl sub_08040FC0
	mov r2, #0
_0806F9F2:
	ldr r1, _0806FA60  @ =0x03000760
	lsl r2, r2, #16
	asr r5, r2, #16
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	add r3, r0, r1
	ldrb r1, [r3, #7]
	mov r0, #16
	and r0, r0, r1
	add r6, r2, #0
	cmp r0, #0
	bne _0806FA0E
	b _0806FB76
_0806FA0E:
	add r4, r3, #0
	add r0, r4, #0
	bl sub_0806F834
	lsl r0, r0, #24
	cmp r0, #0
	bne _0806FA28
	add r0, r4, #0
	bl sub_0806F7D4
	lsl r0, r0, #24
	cmp r0, #0
	beq _0806FA68
_0806FA28:
	ldr r0, [r4]
	add r1, r0, #0
	add r1, r1, #33
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806FA4E
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, [r4, #12]
	bl sub_08040FC0
_0806FA4E:
	ldr r0, [r4]
	ldrb r1, [r0, #29]
	ldrb r2, [r0, #30]
	add r0, r5, #0
	bl sub_0806F548
	b _0806FB86
_0806FA5C:
	.4byte 0x03000754
_0806FA60:
	.4byte 0x03000760
_0806FA64:
	.4byte 0x03000758
_0806FA68:
	ldr r0, [r4]
	ldrh r0, [r0, #30]
	mov r2, #128
	lsl r2, r2, #2
	add r1, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0806FAF2
	mov r3, #0
	ldr r1, [r4, #12]
	asr r2, r1, #8
	ldr r0, _0806FA94  @ =0x03000742
	mov r5, #0
	ldrsh r0, [r0, r5]
	cmp r2, r0
	bge _0806FA98
	mov r2, #128
	lsl r2, r2, #1
	add r0, r1, r2
	str r0, [r4, #12]
	b _0806FAAA
	.byte 0x00
	.byte 0x00
_0806FA94:
	.4byte 0x03000742
_0806FA98:
	cmp r2, r0
	ble _0806FAA8
	ldr r5, _0806FAA4  @ =0xFFFFFF00
	add r0, r1, r5
	str r0, [r4, #12]
	b _0806FAAA
_0806FAA4:
	.4byte 0xFFFFFF00
_0806FAA8:
	mov r3, #1
_0806FAAA:
	ldr r1, [r4, #16]
	asr r2, r1, #8
	ldr r0, _0806FAC4  @ =0x03000744
	mov r5, #0
	ldrsh r0, [r0, r5]
	cmp r2, r0
	bge _0806FAC8
	mov r2, #128
	lsl r2, r2, #1
	add r0, r1, r2
	str r0, [r4, #16]
	b _0806FAE2
	.byte 0x00
	.byte 0x00
_0806FAC4:
	.4byte 0x03000744
_0806FAC8:
	cmp r2, r0
	ble _0806FAD8
	ldr r5, _0806FAD4  @ =0xFFFFFF00
	add r0, r1, r5
	str r0, [r4, #16]
	b _0806FAE2
_0806FAD4:
	.4byte 0xFFFFFF00
_0806FAD8:
	lsl r0, r3, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r3, r0, #16
_0806FAE2:
	cmp r3, #2
	bne _0806FAF2
	asr r0, r6, #16
	ldr r2, [r4]
	ldrb r1, [r2, #29]
	ldrb r2, [r2, #30]
	bl sub_0806F548
_0806FAF2:
	ldrh r0, [r4, #8]
	add r3, r0, #1
	mov r0, #255
	and r3, r3, r0
	strh r3, [r4, #8]
	ldr r1, [r4]
	ldrh r5, [r1, #30]
	mov r0, #128
	and r0, r0, r5
	add r2, r1, #0
	cmp r0, #0
	beq _0806FB22
	add r0, r2, #0
	add r0, r0, #32
	ldrb r0, [r0]
	cmp r3, r0
	bcc _0806FB22
	asr r0, r6, #16
	ldrb r1, [r2, #29]
	lsl r2, r5, #24
	lsr r2, r2, #24
	bl sub_0806F548
	b _0806FB86
_0806FB22:
	ldrh r1, [r2, #30]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0806FB76
	mov r5, #0
	ldrsh r0, [r2, r5]
	lsl r0, r0, #8
	ldr r1, [r4, #12]
	cmp r1, r0
	blt _0806FB76
	mov r1, #2
	ldrsh r0, [r2, r1]
	lsl r0, r0, #8
	ldr r1, [r4, #16]
	cmp r1, r0
	blt _0806FB76
	add r1, r2, #0
	add r1, r1, #33
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806FB68
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, [r4, #12]
	bl sub_08040FC0
_0806FB68:
	asr r0, r6, #16
	ldr r2, [r4]
	ldrb r1, [r2, #29]
	ldrb r2, [r2, #30]
	bl sub_0806F548
	b _0806FB86
_0806FB76:
	mov r2, #128
	lsl r2, r2, #9
	add r0, r6, r2
	lsr r2, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	bgt _0806FB86
	b _0806F9F2
_0806FB86:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806F9D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806FB90
sub_0806FB90: @ 0x0806FB90
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r5, #0
	ldr r0, _0806FC04  @ =gMiniMariosAliveInLevel_03001BC8
	mov r12, r0
	ldr r6, _0806FC08  @ =0x03000720
	ldr r0, _0806FC0C  @ =gUnknown_03001940
	mov r10, r0
	mov r1, r12
	ldrb r1, [r1]
	cmp r5, r1
	bcs _0806FC2E
	ldr r7, _0806FC10  @ =0x03000728
	ldr r2, _0806FC14  @ =gUnknown_085BD3D8
	mov r9, r2
	ldr r3, _0806FC18  @ =gUnknown_03001BB0
	mov r8, r3
_0806FBB8:
	lsl r1, r5, #2
	add r2, r1, r7
	ldrb r0, [r2, #1]
	sub r0, r0, #1
	strb r0, [r2, #1]
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r4, r1, #0
	cmp r3, #0
	bne _0806FBE8
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldrb r0, [r2]
	cmp r0, #12
	blt _0806FBDA
	strb r3, [r2]
_0806FBDA:
	ldrb r0, [r2]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r9
	ldrb r0, [r1, #1]
	strb r0, [r2, #1]
_0806FBE8:
	add r2, r4, r7
	mov r1, #2
	ldrsh r0, [r2, r1]
	lsl r0, r0, #8
	mov r3, r8
	add r1, r4, r3
	ldr r1, [r1]
	ldr r1, [r1, #32]
	cmp r0, r1
	bge _0806FC1C
	ldrh r0, [r2, #2]
	add r0, r0, #1
	b _0806FC1E
	.byte 0x00
	.byte 0x00
_0806FC04:
	.4byte gMiniMariosAliveInLevel_03001BC8
_0806FC08:
	.4byte 0x03000720
_0806FC0C:
	.4byte gUnknown_03001940
_0806FC10:
	.4byte 0x03000728
_0806FC14:
	.4byte gUnknown_085BD3D8
_0806FC18:
	.4byte gUnknown_03001BB0
_0806FC1C:
	asr r0, r1, #8
_0806FC1E:
	strh r0, [r2, #2]
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r0, r12
	ldrb r0, [r0]
	cmp r5, r0
	bcc _0806FBB8
_0806FC2E:
	ldrb r0, [r6, #1]
	sub r0, r0, #1
	strb r0, [r6, #1]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _0806FC5A
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	ldrb r0, [r6]
	cmp r0, #24
	blt _0806FC4A
	strb r1, [r6]
_0806FC4A:
	ldrb r0, [r6]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	ldr r2, _0806FC8C  @ =gUnknown_0854301C
	add r1, r1, r2
	ldrb r0, [r1, #1]
	strb r0, [r6, #1]
_0806FC5A:
	mov r3, #2
	ldrsh r0, [r6, r3]
	lsl r0, r0, #8
	ldr r2, _0806FC90  @ =gUnknown_030019AC
	ldr r1, [r2]
	ldr r1, [r1, #32]
	cmp r0, r1
	bge _0806FC98
	ldrh r0, [r6, #2]
	add r0, r0, #1
	mov r1, #0
	strh r0, [r6, #2]
	mov r3, r10
	ldr r0, [r3]
	add r0, r0, #153
	strb r1, [r0]
	ldr r0, _0806FC94  @ =0x03000754
	ldr r0, [r0]
	mov r2, #2
	ldrsh r1, [r6, r2]
	lsl r1, r1, #8
	bl sub_08040FC0
	b _0806FCAE
	.byte 0x00
	.byte 0x00
_0806FC8C:
	.4byte gUnknown_0854301C
_0806FC90:
	.4byte gUnknown_030019AC
_0806FC94:
	.4byte 0x03000754
_0806FC98:
	ldr r0, _0806FCBC  @ =gUnknown_03000A10
	add r0, r0, #48
	mov r2, #0
	mov r1, #1
	strb r1, [r0]
	mov r3, r10
	ldr r0, [r3]
	add r0, r0, #153
	strb r1, [r0]
	ldr r0, _0806FCC0  @ =gUnknown_03001B90
	strb r2, [r0]
_0806FCAE:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0806FCBC:
	.4byte gUnknown_03000A10
_0806FCC0:
	.4byte gUnknown_03001B90
	THUMB_FUNC_END sub_0806FB90

	THUMB_FUNC_START sub_0806FCC4
sub_0806FCC4: @ 0x0806FCC4
	push {r4,r5,lr}
	sub sp, sp, #12
	mov r4, #0
	ldr r2, _0806FCEC  @ =gSpriteHorizontalOffset
	ldr r0, _0806FCF0  @ =0x0300074E
	ldrh r3, [r2]
	mov r5, #0
	ldrsh r1, [r2, r5]
	mov r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	bge _0806FCF8
	add r0, r3, #1
	strh r0, [r2]
	ldr r1, _0806FCF4  @ =gCameraHorizontalOffset
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	b _0806FD12
	.byte 0x00
	.byte 0x00
_0806FCEC:
	.4byte gSpriteHorizontalOffset
_0806FCF0:
	.4byte 0x0300074E
_0806FCF4:
	.4byte gCameraHorizontalOffset
_0806FCF8:
	cmp r1, r0
	ble _0806FD10
	sub r0, r3, #1
	strh r0, [r2]
	ldr r1, _0806FD0C  @ =gCameraHorizontalOffset
	ldrh r0, [r1]
	sub r0, r0, #2
	strh r0, [r1]
	b _0806FD12
	.byte 0x00
	.byte 0x00
_0806FD0C:
	.4byte gCameraHorizontalOffset
_0806FD10:
	mov r4, #1
_0806FD12:
	ldr r2, _0806FD34  @ =gUnknown_030012F4
	ldr r0, _0806FD38  @ =0x03000750
	ldrh r3, [r2]
	mov r5, #0
	ldrsh r1, [r2, r5]
	mov r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	bge _0806FD40
	add r0, r3, #1
	strh r0, [r2]
	ldr r1, _0806FD3C  @ =gCameraVerticalOffset
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	b _0806FD62
	.byte 0x00
	.byte 0x00
_0806FD34:
	.4byte gUnknown_030012F4
_0806FD38:
	.4byte 0x03000750
_0806FD3C:
	.4byte gCameraVerticalOffset
_0806FD40:
	cmp r1, r0
	ble _0806FD58
	sub r0, r3, #1
	strh r0, [r2]
	ldr r1, _0806FD54  @ =gCameraVerticalOffset
	ldrh r0, [r1]
	sub r0, r0, #2
	strh r0, [r1]
	b _0806FD62
	.byte 0x00
	.byte 0x00
_0806FD54:
	.4byte gCameraVerticalOffset
_0806FD58:
	lsl r0, r4, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r4, r0, #16
_0806FD62:
	cmp r4, #2
	bne _0806FD8E
	ldr r1, _0806FD98  @ =gUnknown_03001B90
	mov r0, #5
	strb r0, [r1]
	ldr r0, _0806FD9C  @ =gMainState
	ldr r0, [r0]
	cmp r0, #13
	bne _0806FD8E
	ldr r4, _0806FDA0  @ =0x03000754
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #18
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r4]
_0806FD8E:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806FD98:
	.4byte gUnknown_03001B90
_0806FD9C:
	.4byte gMainState
_0806FDA0:
	.4byte 0x03000754
	THUMB_FUNC_END sub_0806FCC4

	THUMB_FUNC_START sub_0806FDA4
sub_0806FDA4: @ 0x0806FDA4
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r0, _0806FE24  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	ldr r2, _0806FE28  @ =gUnknown_03001B98 
	cmp r0, #0
	bne _0806FDBC
	ldrb r0, [r2]
	cmp r0, #0
	beq _0806FE58
_0806FDBC:
	ldr r0, _0806FE2C  @ =gUnknown_03000A10
	add r0, r0, #48
	mov r5, #0
	mov r1, #1
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	ldr r0, _0806FE30  @ =0x03000740
	ldrh r0, [r0]
	strh r0, [r1]
	strb r5, [r2]
	bl end_fade_08029E7C
	ldr r2, _0806FE34  @ =gSpriteHorizontalOffset
	ldr r0, _0806FE38  @ =0x0300074E
	ldrh r1, [r0]
	strh r1, [r2]
	ldr r2, _0806FE3C  @ =gUnknown_030012F4
	ldr r0, _0806FE40  @ =0x03000750
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r2, _0806FE44  @ =gCameraHorizontalOffset
	lsl r1, r1, #1
	strh r1, [r2]
	ldr r1, _0806FE48  @ =gCameraVerticalOffset
	lsl r0, r0, #1
	strh r0, [r1]
	ldr r1, _0806FE4C  @ =gUnknown_03001B90
	ldrb r0, [r1]
	cmp r0, #5
	beq _0806FEAA
	mov r0, #5
	strb r0, [r1]
	bl sub_08071C24
	ldr r0, _0806FE50  @ =gMainState
	ldr r0, [r0]
	cmp r0, #13
	bne _0806FEAA
	ldr r4, _0806FE54  @ =0x03000754
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #18
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r4]
	b _0806FEAA
_0806FE24:
	.4byte gNewKeys
_0806FE28:
	.4byte gUnknown_03001B98 
_0806FE2C:
	.4byte gUnknown_03000A10
_0806FE30:
	.4byte 0x03000740
_0806FE34:
	.4byte gSpriteHorizontalOffset
_0806FE38:
	.4byte 0x0300074E
_0806FE3C:
	.4byte gUnknown_030012F4
_0806FE40:
	.4byte 0x03000750
_0806FE44:
	.4byte gCameraHorizontalOffset
_0806FE48:
	.4byte gCameraVerticalOffset
_0806FE4C:
	.4byte gUnknown_03001B90
_0806FE50:
	.4byte gMainState
_0806FE54:
	.4byte 0x03000754
_0806FE58:
	ldr r1, _0806FE6C  @ =gUnknown_03001B90
	ldrb r0, [r1]
	cmp r0, #3
	beq _0806FE80
	cmp r0, #3
	bgt _0806FE70
	cmp r0, #2
	beq _0806FE7A
	b _0806FEAA
	.byte 0x00
	.byte 0x00
_0806FE6C:
	.4byte gUnknown_03001B90
_0806FE70:
	cmp r0, #4
	beq _0806FEA0
	cmp r0, #5
	beq _0806FEA6
	b _0806FEAA
_0806FE7A:
	bl sub_0806F9D0
	b _0806FEAA
_0806FE80:
	ldr r0, _0806FE98  @ =gIsFadeInProgress
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806FEAA
	mov r0, #4
	strb r0, [r1]
	mov r1, #128
	lsl r1, r1, #19
	ldr r0, _0806FE9C  @ =0x03000740
	ldrh r0, [r0]
	strh r0, [r1]
	b _0806FEAA
_0806FE98:
	.4byte gIsFadeInProgress
_0806FE9C:
	.4byte 0x03000740
_0806FEA0:
	bl sub_0806FCC4
	b _0806FEAA
_0806FEA6:
	bl sub_0806FB90
_0806FEAA:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806FDA4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806FEB4
sub_0806FEB4: @ 0x0806FEB4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, [r0]
	mov r12, r4
	ldr r5, _08070038  @ =REG_DMA3SAD
	mov r8, r5
	ldr r4, [r4, #20]
	str r4, [r5]
	ldrh r4, [r1]
	lsl r4, r4, #3
	ldr r6, _0807003C  @ =gOamBuffer
	add r4, r4, r6
	str r4, [r5, #4]
	ldr r4, _08070040  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	ldrb r5, [r0, #4]
	mov r4, r12
	ldr r6, [r4, #16]
	lsl r4, r5, #3
	add r4, r4, r5
	lsl r4, r4, #2
	add r4, r4, r6
	ldrb r5, [r4]
	mov r6, r12
	ldrh r4, [r6, #8]
	mul r5, r4, r5
	lsl r5, r5, #2
	ldr r4, [r6, #24]
	add r4, r4, r5
	mov r5, r8
	str r4, [r5]
	ldrh r4, [r3]
	ldr r6, _08070044  @ =OBJ_VRAM0
	add r4, r4, r6
	str r4, [r5, #4]
	mov r5, r12
	ldrh r4, [r5, #12]
	lsr r4, r4, #2
	mov r6, #132
	lsl r6, r6, #24
	orr r4, r4, r6
	mov r5, r8
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	ldrh r4, [r1]
	lsl r4, r4, #3
	ldr r6, _0807003C  @ =gOamBuffer
	add r7, r4, r6
	ldrb r5, [r7, #1]
	mov r4, #13
	neg r4, r4
	and r4, r4, r5
	mov r5, #8
	orr r4, r4, r5
	strb r4, [r7, #1]
	ldr r5, [r0, #12]
	asr r5, r5, #8
	ldr r4, _08070048  @ =0x000001FF
	and r5, r5, r4
	ldrh r6, [r7, #2]
	ldr r4, _0807004C  @ =0xFFFFFE00
	mov r10, r4
	and r4, r4, r6
	orr r4, r4, r5
	strh r4, [r7, #2]
	ldr r4, [r0, #16]
	asr r4, r4, #8
	strb r4, [r7]
	ldrh r6, [r7, #4]
	lsl r5, r6, #22
	lsr r5, r5, #22
	ldrh r4, [r2]
	add r5, r5, r4
	ldr r4, _08070050  @ =0x000003FF
	and r5, r5, r4
	ldr r4, _08070054  @ =0xFFFFFC00
	mov r9, r4
	and r4, r4, r6
	orr r4, r4, r5
	strh r4, [r7, #4]
	ldrb r5, [r7, #5]
	mov r4, #13
	neg r4, r4
	and r4, r4, r5
	strb r4, [r7, #5]
	ldrh r4, [r1]
	add r4, r4, #1
	strh r4, [r1]
	mov r5, r12
	ldrh r4, [r5, #10]
	ldrh r6, [r2]
	add r4, r4, r6
	strh r4, [r2]
	ldrh r4, [r5, #12]
	ldrh r5, [r3]
	add r4, r4, r5
	strh r4, [r3]
	mov r6, r12
	ldr r4, [r6, #20]
	mov r5, r8
	str r4, [r5]
	ldrh r4, [r1]
	lsl r4, r4, #3
	ldr r6, _0807003C  @ =gOamBuffer
	add r4, r4, r6
	str r4, [r5, #4]
	ldr r4, _08070040  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	ldrb r5, [r0, #4]
	mov r4, r12
	ldr r6, [r4, #16]
	lsl r4, r5, #3
	add r4, r4, r5
	lsl r4, r4, #2
	add r4, r4, r6
	ldrb r5, [r4]
	mov r6, r12
	ldrh r4, [r6, #8]
	mul r5, r4, r5
	lsl r5, r5, #2
	ldr r4, [r6, #24]
	add r4, r4, r5
	mov r5, r8
	str r4, [r5]
	ldrh r4, [r3]
	ldr r6, _08070044  @ =OBJ_VRAM0
	add r4, r4, r6
	str r4, [r5, #4]
	mov r5, r12
	ldrh r4, [r5, #12]
	lsr r4, r4, #2
	mov r6, #132
	lsl r6, r6, #24
	orr r4, r4, r6
	mov r5, r8
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	ldrh r4, [r1]
	lsl r4, r4, #3
	ldr r6, _0807003C  @ =gOamBuffer
	add r7, r4, r6
	ldr r4, [r0, #12]
	asr r4, r4, #8
	ldr r5, _08070048  @ =0x000001FF
	and r4, r4, r5
	ldrh r5, [r7, #2]
	mov r6, r10
	and r6, r6, r5
	orr r6, r6, r4
	strh r6, [r7, #2]
	ldr r0, [r0, #16]
	asr r0, r0, #8
	strb r0, [r7]
	ldrh r4, [r7, #4]
	lsl r0, r4, #22
	lsr r0, r0, #22
	ldrh r5, [r2]
	add r0, r0, r5
	ldr r6, _08070050  @ =0x000003FF
	and r0, r0, r6
	mov r5, r9
	and r5, r5, r4
	orr r5, r5, r0
	strh r5, [r7, #4]
	ldrb r0, [r7, #5]
	mov r4, #13
	neg r4, r4
	and r4, r4, r0
	strb r4, [r7, #5]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	mov r6, r12
	ldrh r0, [r6, #10]
	ldrh r1, [r2]
	add r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r6, #12]
	ldrh r4, [r3]
	add r0, r0, r4
	strh r0, [r3]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08070038:
	.4byte REG_DMA3SAD
_0807003C:
	.4byte gOamBuffer
_08070040:
	.4byte 0x84000002
_08070044:
	.4byte OBJ_VRAM0
_08070048:
	.4byte 0x000001FF
_0807004C:
	.4byte 0xFFFFFE00
_08070050:
	.4byte 0x000003FF
_08070054:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0806FEB4

	THUMB_FUNC_START sub_08070058
sub_08070058: @ 0x08070058
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r6, r0, #0
	mov r9, r1
	mov r8, r2
	ldr r5, _08070238  @ =REG_DMA3SAD
	ldr r0, _0807023C  @ =gUnknown_0854337C
	str r0, [r5]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r1, _08070240  @ =gOamBuffer
	mov r12, r1
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r0, _08070244  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r4, _08070248  @ =0x03000720
	ldrb r0, [r4]
	lsl r0, r0, #10
	ldr r1, _0807024C  @ =gUnknown_08543384
	add r0, r0, r1
	str r0, [r5]
	ldrh r0, [r2]
	ldr r1, _08070250  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _08070254  @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r7, r9
	ldrh r7, [r7]
	add r1, r1, r7
	ldr r7, _08070258  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _0807025C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r12
	mov r0, #2
	ldrsh r1, [r4, r0]
	ldr r4, _08070260  @ =gCameraHorizontalOffset
	ldrh r0, [r4]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	ldr r2, _08070264  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08070268  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r0, _0807026C  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r3, _08070270  @ =gCameraVerticalOffset
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r7, r9
	ldrh r0, [r7]
	add r0, r0, #32
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	mov r2, r8
	ldrh r2, [r2]
	add r0, r0, r2
	mov r7, r8
	strh r0, [r7]
	mov r0, #0
	mov r10, r0
	ldr r1, _08070274  @ =gMiniMariosAliveInLevel_03001BC8
	ldrb r1, [r1]
	cmp r10, r1
	bcs _08070226
	add r7, r5, #0
_08070142:
	ldr r2, _08070278  @ =gUnknown_085BD588
	str r2, [r7]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r7, #4]
	ldr r0, _08070244  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r3, r10
	lsl r4, r3, #2
	ldr r5, _0807027C  @ =0x03000728
	add r5, r4, r5
	str r5, [sp]
	ldrb r0, [r5]
	lsl r0, r0, #8
	ldr r1, _08070280  @ =gUnknown_085BD590
	add r0, r0, r1
	str r0, [r7]
	mov r2, r8
	ldrh r0, [r2]
	ldr r1, _08070250  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r0, _08070284  @ =0x84000040
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r5, r9
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r5, _08070258  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _0807025C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r0, [r2, #3]
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r2, #3]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r0, [r2, #5]
	mov r1, #240
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r12
	ldr r0, [sp]
	mov r1, #2
	ldrsh r2, [r0, r1]
	ldr r5, _08070260  @ =gCameraHorizontalOffset
	ldrh r0, [r5]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r2, r2, r0
	ldr r1, _08070264  @ =0x000001FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r1, [r3, #2]
	ldr r0, _08070268  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _08070288  @ =gUnknown_03001BB0
	add r4, r4, r3
	ldr r0, [r4]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r5, _08070270  @ =gCameraVerticalOffset
	ldrh r0, [r5]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #8
	strh r0, [r1]
	mov r2, #128
	lsl r2, r2, #1
	add r0, r2, #0
	mov r3, r8
	ldrh r3, [r3]
	add r0, r0, r3
	mov r5, r8
	strh r0, [r5]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	ldr r0, _08070274  @ =gMiniMariosAliveInLevel_03001BC8
	ldrb r0, [r0]
	cmp r10, r0
	bcc _08070142
_08070226:
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
_08070238:
	.4byte REG_DMA3SAD
_0807023C:
	.4byte gUnknown_0854337C
_08070240:
	.4byte gOamBuffer
_08070244:
	.4byte 0x84000002
_08070248:
	.4byte 0x03000720
_0807024C:
	.4byte gUnknown_08543384
_08070250:
	.4byte OBJ_VRAM0
_08070254:
	.4byte 0x84000100
_08070258:
	.4byte 0x000003FF
_0807025C:
	.4byte 0xFFFFFC00
_08070260:
	.4byte gCameraHorizontalOffset
_08070264:
	.4byte 0x000001FF
_08070268:
	.4byte 0xFFFFFE00
_0807026C:
	.4byte gUnknown_030019AC
_08070270:
	.4byte gCameraVerticalOffset
_08070274:
	.4byte gMiniMariosAliveInLevel_03001BC8
_08070278:
	.4byte gUnknown_085BD588
_0807027C:
	.4byte 0x03000728
_08070280:
	.4byte gUnknown_085BD590
_08070284:
	.4byte 0x84000040
_08070288:
	.4byte gUnknown_03001BB0
	THUMB_FUNC_END sub_08070058

	THUMB_FUNC_START sub_0807028C
sub_0807028C: @ 0x0807028C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _080702AC  @ =gUnknown_03001B90
	ldrb r0, [r0]
	cmp r0, #3
	beq _080702F4
	cmp r0, #3
	bgt _080702B0
	cmp r0, #2
	beq _080702B6
	b _0807033A
	.byte 0x00
	.byte 0x00
_080702AC:
	.4byte gUnknown_03001B90
_080702B0:
	cmp r0, #5
	beq _08070330
	b _0807033A
_080702B6:
	mov r1, #0
	ldr r0, _080702F0  @ =0x03000760
	mov r8, r0
_080702BC:
	lsl r0, r1, #16
	asr r4, r0, #16
	lsl r0, r4, #2
	add r0, r0, r4
	lsl r0, r0, #2
	mov r1, r8
	add r2, r0, r1
	ldrb r1, [r2, #7]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _080702E0
	add r0, r2, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0806FEB4
_080702E0:
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _080702BC
	b _0807033A
	.byte 0x00
	.byte 0x00
_080702F0:
	.4byte 0x03000760
_080702F4:
	mov r1, #0
	ldr r0, _0807032C  @ =0x03000760
	mov r8, r0
_080702FA:
	lsl r0, r1, #16
	asr r4, r0, #16
	lsl r0, r4, #2
	add r0, r0, r4
	lsl r0, r0, #2
	mov r1, r8
	add r2, r0, r1
	ldrb r1, [r2, #7]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0807031E
	add r0, r2, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0806FEB4
_0807031E:
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _080702FA
	b _0807033A
_0807032C:
	.4byte 0x03000760
_08070330:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_08070058
_0807033A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0807028C

	THUMB_FUNC_START sub_08070344
sub_08070344: @ 0x08070344
	push {r4-r6,lr}
	add r6, r1, #0
	add r5, r0, #0
	lsl r2, r2, #24
	ldr r1, _08070378  @ =0x03000800
	ldr r3, _0807037C  @ =gUnknown_03001994
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0]
	ldr r1, _08070380  @ =0x03000806
	ldrb r0, [r3]
	sub r0, r0, #1
	add r0, r0, r1
	mov r4, #1
	strb r4, [r0]
	cmp r2, #0
	beq _08070388
	ldr r1, _08070384  @ =0x0300081A
	ldrb r0, [r3]
	sub r0, r0, #1
	add r0, r0, r1
	strb r4, [r0]
	b _08070394
_08070378:
	.4byte 0x03000800
_0807037C:
	.4byte gUnknown_03001994
_08070380:
	.4byte 0x03000806
_08070384:
	.4byte 0x0300081A
_08070388:
	ldr r0, _080703C4  @ =0x0300081A
	ldrb r1, [r3]
	sub r1, r1, #1
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1]
_08070394:
	ldr r1, _080703C8  @ =0x0300080C
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	lsl r1, r5, #3
	mov r2, #0
	strh r1, [r0]
	ldr r1, _080703CC  @ =0x03000814
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	lsl r1, r6, #3
	strh r1, [r0]
	ldr r1, _080703D0  @ =0x03001E40
	ldrb r0, [r3]
	sub r0, r0, #1
	add r0, r0, r1
	strb r2, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080703C4:
	.4byte 0x0300081A
_080703C8:
	.4byte 0x0300080C
_080703CC:
	.4byte 0x03000814
_080703D0:
	.4byte 0x03001E40
	THUMB_FUNC_END sub_08070344

	THUMB_FUNC_START sub_080703D4
sub_080703D4: @ 0x080703D4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #8
	mov r6, #0
	ldr r0, _0807045C  @ =gUnknown_03001994
	mov r9, r0
	ldrb r0, [r0]
	cmp r6, r0
	bcc _080703EC
	b _08070590
_080703EC:
	mov r1, #1
	neg r1, r1
	mov r8, r1
_080703F2:
	ldr r0, _08070460  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	bne _08070402
	b _08070580
_08070402:
	ldr r1, _08070464  @ =0x03000800
	lsl r2, r6, #1
	add r3, r2, r1
	ldrh r0, [r3]
	add r5, r0, #1
	mov r7, #0
	mov r0, #0
	mov r12, r0
	strh r5, [r3]
	ldr r0, _08070468  @ =0x03000806
	add r4, r6, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080704D8
	lsl r0, r5, #16
	cmp r0, #0
	beq _080704D8
	strb r7, [r4]
	mov r1, r12
	strh r1, [r3]
	ldr r0, _0807046C  @ =0x0300081A
	add r0, r6, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _08070478
	ldr r0, _08070470  @ =0x0300080C
	add r0, r2, r0
	ldrh r3, [r0]
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _08070474  @ =0x03000814
	add r0, r2, r0
	ldrh r0, [r0]
	add r0, r0, #6
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, r12
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #187
	mov r2, #1
	b _0807049A
	.byte 0x00
	.byte 0x00
_0807045C:
	.4byte gUnknown_03001994
_08070460:
	.4byte gUnknown_03001A1C
_08070464:
	.4byte 0x03000800
_08070468:
	.4byte 0x03000806
_0807046C:
	.4byte 0x0300081A
_08070470:
	.4byte 0x0300080C
_08070474:
	.4byte 0x03000814
_08070478:
	ldr r0, _080704C4  @ =0x0300080C
	add r0, r2, r0
	ldrh r3, [r0]
	add r3, r3, #2
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _080704C8  @ =0x03000814
	add r0, r2, r0
	ldrh r0, [r0]
	add r0, r0, #6
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #187
	mov r2, #0
_0807049A:
	bl spawn_sprite_08038DF4
	lsl r0, r0, #24
	asr r2, r0, #24
	cmp r2, r8
	beq _08070590
	ldr r0, _080704CC  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	str r6, [r0, #72]
	ldr r1, _080704D0  @ =0x03001E40
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080704D4  @ =gUnknown_03001994
	mov r9, r1
	b _08070580
	.byte 0x00
	.byte 0x00
_080704C4:
	.4byte 0x0300080C
_080704C8:
	.4byte 0x03000814
_080704CC:
	.4byte gUnknown_03001940
_080704D0:
	.4byte 0x03001E40
_080704D4:
	.4byte gUnknown_03001994
_080704D8:
	add r4, r2, #0
	add r3, r4, r1
	ldrh r1, [r3]
	mov r0, #150
	lsl r0, r0, #2
	cmp r1, r0
	bls _08070580
	ldr r0, _08070528  @ =0x03001E40
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bgt _08070580
	mov r5, #0
	strh r5, [r3]
	ldr r0, _0807052C  @ =0x0300081A
	add r0, r6, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _08070538
	ldr r0, _08070530  @ =0x0300080C
	add r0, r4, r0
	ldrh r3, [r0]
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _08070534  @ =0x03000814
	add r0, r4, r0
	ldrh r0, [r0]
	add r0, r0, #6
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #20
	mov r1, #187
	mov r2, #1
	b _0807055A
	.byte 0x00
	.byte 0x00
_08070528:
	.4byte 0x03001E40
_0807052C:
	.4byte 0x0300081A
_08070530:
	.4byte 0x0300080C
_08070534:
	.4byte 0x03000814
_08070538:
	ldr r0, _080705A0  @ =0x0300080C
	add r0, r2, r0
	ldrh r3, [r0]
	add r3, r3, #2
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _080705A4  @ =0x03000814
	add r0, r2, r0
	ldrh r0, [r0]
	add r0, r0, #6
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #187
	mov r2, #0
_0807055A:
	bl spawn_sprite_08038DF4
	lsl r0, r0, #24
	asr r2, r0, #24
	cmp r2, r8
	beq _08070590
	ldr r0, _080705A8  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	str r6, [r0, #72]
	ldr r1, _080705AC  @ =0x03001E40
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080705B0  @ =gUnknown_03001994
	mov r9, r0
_08070580:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r1, r9
	ldrb r1, [r1]
	cmp r6, r1
	bcs _08070590
	b _080703F2
_08070590:
	add sp, sp, #8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080705A0:
	.4byte 0x0300080C
_080705A4:
	.4byte 0x03000814
_080705A8:
	.4byte gUnknown_03001940
_080705AC:
	.4byte 0x03001E40
_080705B0:
	.4byte gUnknown_03001994
	THUMB_FUNC_END sub_080703D4

	THUMB_FUNC_START sub_080705B4
sub_080705B4: @ 0x080705B4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r4, [sp, #40]
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp]
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp, #4]
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r10, r2
	lsl r3, r3, #24
	lsr r5, r3, #24
	mov r9, r5
	lsl r4, r4, #24
	lsr r7, r4, #24
	mov r8, r7
	ldr r4, _080705FC  @ =0x03001E50
	add r6, r4, #0
	add r6, r6, #136
	ldr r0, [r6]
	cmp r0, #7
	bhi _080705F6
	bl sub_0802BA00
	mov r12, r0
	cmp r0, #0
	bne _08070600
_080705F6:
	mov r0, #0
	b _080706F6
	.byte 0x00
	.byte 0x00
_080705FC:
	.4byte 0x03001E50
_08070600:
	add r2, r4, #0
	add r2, r2, #140
	ldr r3, [r6]
	lsl r1, r3, #1
	add r1, r1, r3
	lsl r1, r1, #3
	ldr r2, [r2]
	add r4, r2, r1
	add r3, r3, #1
	str r3, [r6]
	cmp r7, #0
	beq _08070670
	cmp r5, #61
	beq _080706CA
	cmp r5, #62
	bne _08070630
	ldr r1, _0807062C  @ =gUnknown_08669D6C
	ldrh r1, [r1, #40]
	strh r1, [r4, #4]
	mov r1, #20
	b _080706D2
	.byte 0x00
	.byte 0x00
_0807062C:
	.4byte gUnknown_08669D6C
_08070630:
	cmp r5, #63
	bne _08070644
	ldr r1, _08070640  @ =gUnknown_08669D6C
	ldrh r1, [r1, #26]
	strh r1, [r4, #4]
	mov r1, #13
	b _080706D2
	.byte 0x00
	.byte 0x00
_08070640:
	.4byte gUnknown_08669D6C
_08070644:
	cmp r5, #64
	bne _08070658
	ldr r1, _08070654  @ =gUnknown_08669D6C
	ldrh r1, [r1, #12]
	mov r2, #0
	strh r1, [r4, #4]
	mov r1, #6
	b _080706A6
_08070654:
	.4byte gUnknown_08669D6C
_08070658:
	cmp r5, #65
	bne _080706D8
	ldr r1, _0807066C  @ =gUnknown_08669D6C
	ldrh r2, [r1]
	mov r3, #0
	mov r1, #0
	strh r2, [r4, #4]
	str r1, [r4]
	strb r3, [r4, #14]
	b _080706D8
_0807066C:
	.4byte gUnknown_08669D6C
_08070670:
	cmp r5, #61
	bne _08070684
	ldr r1, _08070680  @ =gUnknown_08669D6C
	ldrh r1, [r1]
	mov r2, #0
	strh r1, [r4, #4]
	mov r1, r8
	b _080706A6
_08070680:
	.4byte gUnknown_08669D6C
_08070684:
	cmp r5, #62
	bne _08070698
	ldr r1, _08070694  @ =gUnknown_08669D6C
	ldrh r1, [r1, #12]
	mov r2, #0
	strh r1, [r4, #4]
	mov r1, #6
	b _080706A6
_08070694:
	.4byte gUnknown_08669D6C
_08070698:
	cmp r5, #63
	bne _080706B0
	ldr r1, _080706AC  @ =gUnknown_08669D6C
	ldrh r1, [r1, #26]
	mov r2, #0
	strh r1, [r4, #4]
	mov r1, #13
_080706A6:
	str r1, [r4]
	strb r2, [r4, #14]
	b _080706D8
_080706AC:
	.4byte gUnknown_08669D6C
_080706B0:
	cmp r5, #64
	bne _080706C4
	ldr r1, _080706C0  @ =gUnknown_08669D6C
	ldrh r1, [r1, #40]
	strh r1, [r4, #4]
	mov r1, #20
	b _080706D2
	.byte 0x00
	.byte 0x00
_080706C0:
	.4byte gUnknown_08669D6C
_080706C4:
	mov r2, r9
	cmp r2, #65
	bne _080706D8
_080706CA:
	ldr r1, _08070708  @ =gUnknown_08669D6C
	ldrh r1, [r1, #54]
	strh r1, [r4, #4]
	mov r1, #27
_080706D2:
	str r1, [r4]
	mov r1, #1
	strb r1, [r4, #14]
_080706D8:
	mov r1, r12
	str r1, [r4, #20]
	mov r2, r10
	strh r2, [r4, #6]
	ldr r2, [sp]
	str r2, [r1]
	ldr r2, [sp, #4]
	str r2, [r1, #4]
	ldr r1, _0807070C  @ =0x03001E50
	ldr r2, [r4]
	lsl r2, r2, #2
	add r2, r2, r1
	ldr r1, [r2]
	mov r2, r12
	str r1, [r2, #8]
_080706F6:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08070708:
	.4byte gUnknown_08669D6C
_0807070C:
	.4byte 0x03001E50
	THUMB_FUNC_END sub_080705B4

	THUMB_FUNC_START sub_08070710
sub_08070710: @ 0x08070710
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	ldr r0, _0807077C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	bne _0807072E
	bl _08071326
_0807072E:
	mov r0, #0
	mov r9, r0
	ldr r0, _08070780  @ =0x03001E50
	add r1, r0, #0
	add r1, r1, #140
	ldr r4, [r1]
	add r0, r0, #136
	ldr r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	mov r10, r0
	cmp r4, r10
	bcc _08070750
	bl _08071326
_08070750:
	mov r1, #0
	mov r8, r1
	ldr r7, _08070784  @ =gUnknown_08669D6C
_08070756:
	ldrh r5, [r4, #4]
	cmp r5, #0
	beq _08070788
	ldr r3, _08070780  @ =0x03001E50
	add r0, r3, #0
	add r0, r0, #140
	ldr r1, [r0]
	mov r6, r9
	lsl r2, r6, #1
	add r0, r2, r6
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080707A0
	sub r0, r5, #1
	strh r0, [r4, #4]
	bl _08071312
_0807077C:
	.4byte gUnknown_03001A1C
_08070780:
	.4byte 0x03001E50
_08070784:
	.4byte gUnknown_08669D6C
_08070788:
	ldr r3, _0807080C  @ =0x03001E50
	add r0, r3, #0
	add r0, r0, #140
	ldr r1, [r0]
	mov r0, r9
	lsl r2, r0, #1
	add r0, r2, r0
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _080707B2
_080707A0:
	add r0, r3, #0
	add r0, r0, #140
	ldr r1, [r0]
	mov r5, r9
	add r0, r2, r5
	lsl r0, r0, #3
	add r0, r0, r1
	mov r6, r8
	strb r6, [r0, #8]
_080707B2:
	ldrb r5, [r4, #14]
	cmp r5, #0
	beq _080707BA
	b _08070CE2
_080707BA:
	ldrb r6, [r4, #16]
	cmp r6, #0
	bne _080707C2
	b _08070A9A
_080707C2:
	ldr r1, [r4]
	cmp r1, #0
	bne _08070810
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #2
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #2
	bne _080707FC
	bl _08071312
_080707FC:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #8]
	str r1, [r0, #8]
	ldrh r0, [r7, #4]
	strh r0, [r2, #4]
	bl _08071312
_0807080C:
	.4byte 0x03001E50
_08070810:
	cmp r1, #2
	bne _08070858
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #3
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #3
	bne _08070848
	bl _08071312
_08070848:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #12]
	str r1, [r0, #8]
	ldrh r0, [r7, #6]
	strh r0, [r2, #4]
	bl _08071312
_08070858:
	cmp r1, #3
	bne _080708B6
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r6, #4
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #4
	beq _08070898
	str r6, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #16]
	str r1, [r0, #8]
	ldrh r0, [r7, #8]
	strh r0, [r2, #4]
_08070898:
	ldrh r3, [r4, #10]
	sub r3, r3, #4
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #2
	bl _08071230
_080708B6:
	cmp r1, #4
	bne _080708FE
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #5
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #5
	bne _080708EE
	bl _08071312
_080708EE:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #20]
	str r1, [r0, #8]
	ldrh r0, [r7, #10]
	strh r0, [r2, #4]
	bl _08071312
_080708FE:
	cmp r1, #5
	bne _08070946
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #1
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #1
	bne _08070936
	bl _08071312
_08070936:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #4]
	str r1, [r0, #8]
	ldrh r0, [r7, #2]
	strh r0, [r2, #4]
	bl _08071312
_08070946:
	cmp r1, #1
	bne _0807094C
	b _08070AE8
_0807094C:
	cmp r1, #6
	bne _08070952
	b _08070B2C
_08070952:
	cmp r1, #9
	bne _08070958
	b _08070B70
_08070958:
	cmp r1, #10
	bne _080709C6
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #11
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #11
	beq _08070998
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #44]
	str r1, [r0, #8]
	ldrh r0, [r7, #22]
	strh r0, [r2, #4]
_08070998:
	ldrh r3, [r4, #10]
	sub r3, r3, #1
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #6
	bl spawn_sprite_08038DF4
	mov r1, r8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	bl _0807123C
_080709C6:
	cmp r1, #11
	bne _080709CC
	b _08070C1C
_080709CC:
	cmp r1, #12
	bne _08070A14
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #8
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #8
	bne _08070A04
	bl _08071312
_08070A04:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #32]
	str r1, [r0, #8]
	ldrh r0, [r7, #16]
	strh r0, [r2, #4]
	bl _08071312
_08070A14:
	cmp r1, #8
	bne _08070A1A
	b _08070F40
_08070A1A:
	cmp r1, #13
	bne _08070A20
	b _08070F84
_08070A20:
	cmp r1, #16
	bne _08070A26
	b _08070FC8
_08070A26:
	cmp r1, #17
	bne _08070A84
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #18
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #18
	beq _08070A66
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #72]
	str r1, [r0, #8]
	ldrh r0, [r7, #36]
	strh r0, [r2, #4]
_08070A66:
	ldrh r3, [r4, #10]
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	sub r0, r0, #3
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r5, r8
	str r5, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #10
	b _08071230
_08070A84:
	cmp r1, #18
	bne _08070A8A
	b _08071078
_08070A8A:
	cmp r1, #19
	beq _08070A92
	bl _08071312
_08070A92:
	mov r6, r8
	strb r6, [r4, #16]
	bl _08071312
_08070A9A:
	ldr r0, [r4]
	cmp r0, #19
	bne _08070AE4
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #14
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #14
	bne _08070AD4
	bl _08071312
_08070AD4:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #56]
	str r1, [r0, #8]
	ldrh r0, [r7, #28]
	strh r0, [r2, #4]
	bl _08071312
_08070AE4:
	cmp r0, #14
	bne _08070B28
_08070AE8:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #6
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #6
	bne _08070B1A
	b _08071312
_08070B1A:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #24]
	str r1, [r0, #8]
	ldrh r0, [r7, #12]
	strh r0, [r2, #4]
	b _08071312
_08070B28:
	cmp r0, #6
	bne _08070B6C
_08070B2C:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #9
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #9
	bne _08070B5E
	b _08071312
_08070B5E:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #36]
	str r1, [r0, #8]
	ldrh r0, [r7, #18]
	strh r0, [r2, #4]
	b _08071312
_08070B6C:
	cmp r0, #9
	bne _08070BB0
_08070B70:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #10
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #10
	bne _08070BA2
	b _08071312
_08070BA2:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #40]
	str r1, [r0, #8]
	ldrh r0, [r7, #20]
	strh r0, [r2, #4]
	b _08071312
_08070BB0:
	cmp r0, #10
	bne _08070C18
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #11
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #11
	beq _08070BF0
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #44]
	str r1, [r0, #8]
	ldrh r0, [r7, #22]
	strh r0, [r2, #4]
_08070BF0:
	ldrh r3, [r4, #10]
	sub r3, r3, #1
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #6
	bl spawn_sprite_08038DF4
	str r6, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r6, [sp, #8]
	b _0807123C
_08070C18:
	cmp r0, #11
	bne _08070C5C
_08070C1C:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #12
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #12
	bne _08070C4E
	b _08071312
_08070C4E:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #48]
	str r1, [r0, #8]
	ldrh r0, [r7, #24]
	strh r0, [r2, #4]
	b _08071312
_08070C5C:
	cmp r0, #12
	bne _08070CA0
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #7
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #7
	bne _08070C92
	b _08071312
_08070C92:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #28]
	str r1, [r0, #8]
	ldrh r0, [r7, #14]
	strh r0, [r2, #4]
	b _08071312
_08070CA0:
	cmp r0, #7
	beq _08070CA6
	b _08071312
_08070CA6:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #0
	bne _08070CD6
	b _0807130E
_08070CD6:
	str r6, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3]
	str r1, [r0, #8]
	ldrh r0, [r7]
	b _0807130C
_08070CE2:
	ldrb r5, [r4, #16]
	cmp r5, #0
	bne _08070CEA
	b _080710C4
_08070CEA:
	ldr r1, [r4]
	cmp r1, #27
	bne _08070D30
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #29
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #29
	bne _08070D22
	b _08071312
_08070D22:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #116]
	str r1, [r0, #8]
	ldrh r0, [r7, #58]
	strh r0, [r2, #4]
	b _08071312
_08070D30:
	cmp r1, #29
	bne _08070D74
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #30
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #30
	bne _08070D66
	b _08071312
_08070D66:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #120]
	str r1, [r0, #8]
	ldrh r0, [r7, #60]
	strh r0, [r2, #4]
	b _08071312
_08070D74:
	cmp r1, #30
	bne _08070DE0
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #31
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #31
	beq _08070DB4
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #124]
	str r1, [r0, #8]
	ldrh r0, [r7, #62]
	strh r0, [r2, #4]
_08070DB4:
	ldrh r3, [r4, #10]
	add r3, r3, #20
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #4
	bl spawn_sprite_08038DF4
	mov r1, r8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	b _0807123C
_08070DE0:
	cmp r1, #31
	bne _08070E30
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #32
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #32
	bne _08070E16
	b _08071312
_08070E16:
	str r5, [r2]
	ldr r1, [r2, #20]
	add r0, r3, #0
	add r0, r0, #128
	ldr r0, [r0]
	str r0, [r1, #8]
	ldr r5, _08070E2C  @ =gUnknown_08669DAC
	ldrh r0, [r5]
	strh r0, [r2, #4]
	b _08071312
	.byte 0x00
	.byte 0x00
_08070E2C:
	.4byte gUnknown_08669DAC
_08070E30:
	cmp r1, #32
	bne _08070E74
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #28
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #28
	bne _08070E66
	b _08071312
_08070E66:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #112]
	str r1, [r0, #8]
	ldrh r0, [r7, #56]
	strh r0, [r2, #4]
	b _08071312
_08070E74:
	cmp r1, #28
	bne _08070E7A
	b _0807110E
_08070E7A:
	cmp r1, #20
	bne _08070E80
	b _08071152
_08070E80:
	cmp r1, #23
	bne _08070E86
	b _08071196
_08070E86:
	cmp r1, #24
	bne _08070EF0
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #25
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #25
	beq _08070EC6
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #100]
	str r1, [r0, #8]
	ldrh r0, [r7, #50]
	strh r0, [r2, #4]
_08070EC6:
	ldrh r3, [r4, #10]
	add r3, r3, #17
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r6, r8
	str r6, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #8
	bl spawn_sprite_08038DF4
	str r6, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r6, [sp, #8]
	b _0807123C
_08070EF0:
	add r0, r1, #0
	cmp r0, #25
	bne _08070EF8
	b _0807124E
_08070EF8:
	cmp r0, #26
	bne _08070F3C
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #21
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #21
	bne _08070F2E
	b _08071312
_08070F2E:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #84]
	str r1, [r0, #8]
	ldrh r0, [r7, #42]
	strh r0, [r2, #4]
	b _08071312
_08070F3C:
	cmp r0, #21
	bne _08070F80
_08070F40:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #13
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #13
	bne _08070F72
	b _08071312
_08070F72:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #52]
	str r1, [r0, #8]
	ldrh r0, [r7, #26]
	strh r0, [r2, #4]
	b _08071312
_08070F80:
	cmp r0, #13
	bne _08070FC4
_08070F84:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #16
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #16
	bne _08070FB6
	b _08071312
_08070FB6:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #64]
	str r1, [r0, #8]
	ldrh r0, [r7, #32]
	strh r0, [r2, #4]
	b _08071312
_08070FC4:
	cmp r0, #16
	bne _08071008
_08070FC8:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #17
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #17
	bne _08070FFA
	b _08071312
_08070FFA:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #68]
	str r1, [r0, #8]
	ldrh r0, [r7, #34]
	strh r0, [r2, #4]
	b _08071312
_08071008:
	cmp r0, #17
	bne _08071074
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #18
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #18
	beq _08071048
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #72]
	str r1, [r0, #8]
	ldrh r0, [r7, #36]
	strh r0, [r2, #4]
_08071048:
	ldrh r3, [r4, #10]
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	sub r0, r0, #3
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #10
	bl spawn_sprite_08038DF4
	mov r1, r8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	b _0807123C
_08071074:
	cmp r0, #18
	bne _080710B8
_08071078:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #19
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #19
	bne _080710AA
	b _08071312
_080710AA:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #76]
	str r1, [r0, #8]
	ldrh r0, [r7, #38]
	strh r0, [r2, #4]
	b _08071312
_080710B8:
	cmp r1, #19
	beq _080710BE
	b _08071312
_080710BE:
	mov r5, r8
	strb r5, [r4, #16]
	b _08071312
_080710C4:
	ldr r0, [r4]
	cmp r0, #19
	bne _0807110A
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #15
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #15
	bne _080710FC
	b _08071312
_080710FC:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #60]
	str r1, [r0, #8]
	ldrh r0, [r7, #30]
	strh r0, [r2, #4]
	b _08071312
_0807110A:
	cmp r0, #15
	bne _0807114E
_0807110E:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #20
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #20
	bne _08071140
	b _08071312
_08071140:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #80]
	str r1, [r0, #8]
	ldrh r0, [r7, #40]
	strh r0, [r2, #4]
	b _08071312
_0807114E:
	cmp r0, #20
	bne _08071192
_08071152:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #23
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #23
	bne _08071184
	b _08071312
_08071184:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #92]
	str r1, [r0, #8]
	ldrh r0, [r7, #46]
	strh r0, [r2, #4]
	b _08071312
_08071192:
	cmp r0, #23
	bne _080711D6
_08071196:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #24
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #24
	bne _080711C8
	b _08071312
_080711C8:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #96]
	str r1, [r0, #8]
	ldrh r0, [r7, #48]
	strh r0, [r2, #4]
	b _08071312
_080711D6:
	cmp r0, #24
	bne _0807124A
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r6, #25
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #25
	beq _08071216
	str r6, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #100]
	str r1, [r0, #8]
	ldrh r0, [r7, #50]
	strh r0, [r2, #4]
_08071216:
	ldrh r3, [r4, #10]
	add r3, r3, #17
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #8
_08071230:
	bl spawn_sprite_08038DF4
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
_0807123C:
	mov r0, #132
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08071312
_0807124A:
	cmp r0, #25
	bne _0807128C
_0807124E:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #26
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #26
	beq _08071312
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #104]
	str r1, [r0, #8]
	ldrh r0, [r7, #52]
	strh r0, [r2, #4]
	b _08071312
_0807128C:
	cmp r0, #26
	bne _080712CE
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #22
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #22
	beq _08071312
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #88]
	str r1, [r0, #8]
	ldrh r0, [r7, #44]
	strh r0, [r2, #4]
	b _08071312
_080712CE:
	cmp r0, #22
	bne _08071312
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #27
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #27
	beq _0807130E
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #108]
	str r1, [r0, #8]
	ldrh r0, [r7, #54]
_0807130C:
	strh r0, [r2, #4]
_0807130E:
	mov r0, #1
	strb r0, [r4, #16]
_08071312:
	add r4, r4, #24
	mov r0, r9
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	cmp r4, r10
	bcs _08071326
	bl _08070756
_08071326:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08070710

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08071338
sub_08071338: @ 0x08071338
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	str r0, [sp, #4]
	str r1, [sp, #8]
	lsl r2, r2, #24
	lsr r7, r2, #24
	mov r8, r7
	ldr r6, _0807139C  @ =0x03001E50
	add r5, r6, #0
	add r5, r5, #140
	ldr r4, [r5]
	cmp r4, #0
	bne _08071370
	mov r0, #192
	bl arena_allocate
	add r1, r0, #0
	str r1, [r5]
	mov r0, sp
	strh r4, [r0]
	ldr r2, _080713A0  @ =0x01000060
	bl CpuSet
	add r0, r6, #0
	add r0, r0, #136
	str r4, [r0]
_08071370:
	ldr r3, _080713A4  @ =gUnknown_0300199C
	ldrb r1, [r3]
	ldr r2, [r5]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	sub r0, r0, #24
	mov r6, #1
	strb r6, [r0, #8]
	add r4, r3, #0
	cmp r7, #0
	beq _080713A8
	ldrb r0, [r4]
	ldr r2, [r5]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r1, r1, r2
	sub r1, r1, #24
	strb r6, [r1, #14]
	b _080713BA
_0807139C:
	.4byte 0x03001E50
_080713A0:
	.4byte 0x01000060
_080713A4:
	.4byte gUnknown_0300199C
_080713A8:
	ldrb r0, [r4]
	ldr r2, [r5]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r1, r1, r2
	sub r1, r1, #24
	mov r0, r8
	strb r0, [r1, #14]
_080713BA:
	ldr r2, _08071404  @ =0x03001E50
	ldrb r1, [r4]
	add r2, r2, #140
	ldr r3, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r3
	sub r0, r0, #24
	ldr r3, [sp, #4]
	lsl r1, r3, #3
	strh r1, [r0, #10]
	ldrb r1, [r4]
	ldr r3, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r3
	sub r0, r0, #24
	ldr r3, [sp, #8]
	lsl r1, r3, #3
	strh r1, [r0, #12]
	ldrb r1, [r4]
	ldr r2, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	sub r0, r0, #24
	mov r1, #1
	strb r1, [r0, #16]
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08071404:
	.4byte 0x03001E50
	THUMB_FUNC_END sub_08071338

	THUMB_FUNC_START sub_08071408
sub_08071408: @ 0x08071408
	push {lr}
	add r2, r0, #0
	add r3, r1, #0
	ldr r1, _08071428  @ =0x03001E50
	add r0, r1, #0
	add r0, r0, #132
	str r3, [r0]
	mov r0, #32
_08071418:
	stm r1!, {r2}
	add r2, r2, r3
	sub r0, r0, #1
	cmp r0, #0
	bge _08071418
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08071428:
	.4byte 0x03001E50
	THUMB_FUNC_END sub_08071408

	THUMB_FUNC_START sub_0807142C
sub_0807142C: @ 0x0807142C
	push {r4,lr}
	sub sp, sp, #4
	mov r0, #192
	bl arena_allocate
	add r1, r0, #0
	ldr r4, _0807145C  @ =0x03001E50
	add r0, r4, #0
	add r0, r0, #140
	str r1, [r0]
	mov r2, sp
	mov r0, #0
	strh r0, [r2]
	ldr r2, _08071460  @ =0x01000060
	mov r0, sp
	bl CpuSet
	add r4, r4, #136
	mov r0, #0
	str r0, [r4]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0807145C:
	.4byte 0x03001E50
_08071460:
	.4byte 0x01000060
	THUMB_FUNC_END sub_0807142C

	THUMB_FUNC_START sub_08071464
sub_08071464: @ 0x08071464
	push {r4,lr}
	add r3, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _080714A0  @ =0x03001E50
	add r2, r4, #0
	add r2, r2, #140
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r2]
	add r2, r0, r1
	ldr r0, [r2]
	cmp r0, r3
	beq _08071498
	str r3, [r2]
	ldr r1, [r2, #20]
	lsl r0, r3, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1, #8]
	ldr r1, _080714A4  @ =gUnknown_08669D6C
	lsl r0, r3, #1
	add r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
_08071498:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080714A0:
	.4byte 0x03001E50
_080714A4:
	.4byte gUnknown_08669D6C
	THUMB_FUNC_END sub_08071464

	THUMB_FUNC_START sub_080714A8
sub_080714A8: @ 0x080714A8
	ldr r0, _080714B4  @ =0x03001E50
	add r0, r0, #140
	mov r1, #0
	str r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080714B4:
	.4byte 0x03001E50
	THUMB_FUNC_END sub_080714A8
