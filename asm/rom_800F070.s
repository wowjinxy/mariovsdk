	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_0800F070
sub_0800F070: @ 0x0800F070
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r3, r0, #0
	ldr r2, _0800F0A4  @ =gUnknown_03000A10
	mov r0, #145
	lsl r0, r0, #1
	add r0, r0, r2
	mov r12, r0
	ldrb r1, [r0]
	cmp r3, r1
	beq _0800F098
	mov r4, #144
	lsl r4, r4, #1
	add r0, r2, r4
	mov r1, #0
	strb r1, [r0]
	add r4, r4, #1
	add r0, r2, r4
	strb r1, [r0]
_0800F098:
	mov r0, r12
	strb r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F0A4:
	.4byte gUnknown_03000A10
	THUMB_FUNC_END sub_0800F070

	THUMB_FUNC_START sub_0800F0A8
sub_0800F0A8: @ 0x0800F0A8
	push {lr}
	add r3, r0, #0
	ldr r0, _0800F0C0  @ =gUnknown_03000A10
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800F0BC
	add r0, r3, #0
	bl sub_0806E594
_0800F0BC:
	pop {r0}
	bx r0
_0800F0C0:
	.4byte gUnknown_03000A10
	THUMB_FUNC_END sub_0800F0A8

	THUMB_FUNC_START sub_0800F0C4
sub_0800F0C4: @ 0x0800F0C4
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r0, r3, #16
	ldr r5, _0800F0FC  @ =0x040000D4
	str r4, [r5]
	ldrh r3, [r2]
	ldr r4, _0800F100  @ =0x06010000
	add r3, r3, r4
	str r3, [r5, #4]
	lsr r3, r0, #18
	mov r4, #132
	lsl r4, r4, #24
	orr r3, r3, r4
	str r3, [r5, #8]
	ldr r3, [r5, #8]
	lsr r3, r0, #16
	ldrh r4, [r2]
	add r3, r3, r4
	strh r3, [r2]
	lsr r0, r0, #21
	ldrh r2, [r1]
	add r0, r0, r2
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	pop {r4,r5}
	pop {r1}
	bx r1
_0800F0FC:
	.4byte 0x040000D4
_0800F100:
	.4byte 0x06010000
	THUMB_FUNC_END sub_0800F0C4

	THUMB_FUNC_START sub_0800F104
sub_0800F104: @ 0x0800F104
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r10, r0
	add r4, r3, #0
	ldr r0, [sp, #40]
	lsl r1, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r8, r2
	lsl r0, r0, #24
	mov r2, #160
	lsl r2, r2, #22
	add r1, r1, r2
	lsr r1, r1, #24
	mov r9, r1
	mov r6, #0
	ldr r7, _0800F1C0  @ =0x040000D4
	ldr r5, _0800F1C4  @ =gOamData
	lsr r0, r0, #20
	mov r12, r0
_0800F132:
	ldr r0, _0800F1C8  @ =gUnknown_082EC748
	str r0, [r7]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r7, #4]
	ldr r0, _0800F1CC  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r5
	lsl r1, r6, #3
	mov r2, r9
	sub r1, r2, r1
	ldr r2, _0800F1D0  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800F1D4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r8
	strb r1, [r0]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r5
	mov r2, r10
	add r0, r2, r6
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r2, _0800F1D8  @ =gUnknown_03001B30
	ldr r1, [r2, #4]
	add r1, r1, r0
	ldr r2, _0800F1DC  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800F1E0  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r12
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #5
	bls _0800F132
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F1C0:
	.4byte 0x040000D4
_0800F1C4:
	.4byte gOamData
_0800F1C8:
	.4byte gUnknown_082EC748
_0800F1CC:
	.4byte 0x84000002
_0800F1D0:
	.4byte 0x000001FF
_0800F1D4:
	.4byte 0xFFFFFE00
_0800F1D8:
	.4byte gUnknown_03001B30
_0800F1DC:
	.4byte 0x000003FF
_0800F1E0:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0800F104

	THUMB_FUNC_START sub_0800F1E4
sub_0800F1E4: @ 0x0800F1E4
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, _0800F250  @ =gNextLevelInLevelTable
	ldr r0, _0800F254  @ =gUnknown_08B2CA5C
	ldr r0, [r0, #4]
	lsl r1, r6, #1
	add r1, r1, r6
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F22A:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F22A
	ldr r0, _0800F258  @ =0x08008239
	str r0, [r4, #12]
	mov r0, #0
	strh r5, [r4, #16]
	strh r6, [r4, #18]
	str r0, [r4, #32]
	str r0, [r4, #8]
	cmp r5, #12
	bne _0800F25C
	mov r0, #1
	b _0800F28A
	.byte 0x00
	.byte 0x00
_0800F250:
	.4byte gNextLevelInLevelTable
_0800F254:
	.4byte gUnknown_08B2CA5C
_0800F258:
	.4byte sub_08008238
_0800F25C:
	cmp r5, #13
	bne _0800F280
	mov r0, #2
	str r0, [r4, #32]
	cmp r6, #1
	bne _0800F274
	ldr r0, _0800F270  @ =0x080086A5
	str r0, [r4, #12]
	b _0800F28C
	.byte 0x00
	.byte 0x00
_0800F270:
	.4byte sub_080086A4
_0800F274:
	ldr r0, _0800F27C  @ =0x08008601
	str r0, [r4, #12]
	b _0800F28C
	.byte 0x00
	.byte 0x00
_0800F27C:
	.4byte sub_08008600
_0800F280:
	mov r0, #1
	and r0, r0, r5
	cmp r0, #0
	beq _0800F28C
	mov r0, #8
_0800F28A:
	str r0, [r4, #32]
_0800F28C:
	cmp r5, #0
	bne _0800F296
	ldr r0, [r4, #32]
	mov r1, #32
	b _0800F2AE
_0800F296:
	ldr r0, _0800F2C8  @ =gUnknown_08B2CA5C
	ldr r1, [r0, #4]
	lsl r0, r6, #1
	add r0, r0, r6
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r5, r0
	bcc _0800F2B2
	ldr r0, [r4, #32]
	mov r1, #4
_0800F2AE:
	orr r0, r0, r1
	str r0, [r4, #32]
_0800F2B2:
	cmp r6, #2
	bne _0800F2D8
	lsl r0, r5, #3
	ldr r1, _0800F2CC  @ =gUnknown_0807C028
	add r0, r0, r1
	str r0, [r4, #8]
	cmp r5, #13
	bne _0800F2D4
	ldr r0, _0800F2D0  @ =0x080084A5
	b _0800F2D6
	.byte 0x00
	.byte 0x00
_0800F2C8:
	.4byte gUnknown_08B2CA5C
_0800F2CC:
	.4byte gUnknown_0807C028
_0800F2D0:
	.4byte sub_080084A4
_0800F2D4:
	ldr r0, _0800F2E0  @ =0x08008331
_0800F2D6:
	str r0, [r4, #12]
_0800F2D8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F2E0:
	.4byte sub_08008330
	THUMB_FUNC_END sub_0800F1E4

	THUMB_FUNC_START sub_0800F2E4
sub_0800F2E4: @ 0x0800F2E4
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, _0800F358  @ =gNextLevelInLevelTable
	ldr r0, _0800F35C  @ =gUnknown_08B2CDF4
	ldr r0, [r0, #4]
	lsl r1, r6, #1
	add r1, r1, r6
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F32A:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F32A
	ldr r0, _0800F360  @ =0x08008239
	str r0, [r4, #12]
	mov r1, #0
	strh r5, [r4, #16]
	strh r6, [r4, #18]
	mov r0, #64
	str r0, [r4, #32]
	str r1, [r4, #8]
	cmp r5, #6
	bne _0800F36C
	mov r0, #66
	str r0, [r4, #32]
	cmp r6, #1
	bne _0800F368
	ldr r0, _0800F364  @ =0x080086A5
	b _0800F36A
_0800F358:
	.4byte gNextLevelInLevelTable
_0800F35C:
	.4byte gUnknown_08B2CDF4
_0800F360:
	.4byte sub_08008238
_0800F364:
	.4byte sub_080086A4
_0800F368:
	ldr r0, _0800F378  @ =0x08008601
_0800F36A:
	str r0, [r4, #12]
_0800F36C:
	cmp r5, #0
	bne _0800F37C
	ldr r0, [r4, #32]
	mov r1, #32
	b _0800F394
	.byte 0x00
	.byte 0x00
_0800F378:
	.4byte sub_08008600
_0800F37C:
	ldr r0, _0800F3AC  @ =gUnknown_08B2CDF4
	ldr r1, [r0, #4]
	lsl r0, r6, #1
	add r0, r0, r6
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r5, r0
	bcc _0800F398
	ldr r0, [r4, #32]
	mov r1, #4
_0800F394:
	orr r0, r0, r1
	str r0, [r4, #32]
_0800F398:
	cmp r6, #2
	bne _0800F3BC
	lsl r0, r5, #3
	ldr r1, _0800F3B0  @ =gUnknown_0807C098
	add r0, r0, r1
	str r0, [r4, #8]
	cmp r5, #6
	bne _0800F3B8
	ldr r0, _0800F3B4  @ =0x080084A5
	b _0800F3BA
_0800F3AC:
	.4byte gUnknown_08B2CDF4
_0800F3B0:
	.4byte gUnknown_0807C098
_0800F3B4:
	.4byte sub_080084A4
_0800F3B8:
	ldr r0, _0800F3C4  @ =0x08008331
_0800F3BA:
	str r0, [r4, #12]
_0800F3BC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F3C4:
	.4byte sub_08008330
	THUMB_FUNC_END sub_0800F2E4

	THUMB_FUNC_START sub_0800F3C8
sub_0800F3C8: @ 0x0800F3C8
	push {r4-r7,lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, _0800F434  @ =gNextLevelInLevelTable
	ldr r0, _0800F438  @ =gUnknown_08B2CEBC
	ldr r0, [r0, #4]
	lsl r1, r5, #1
	add r1, r1, r5
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r6, #2
	add r0, r0, r6
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F40E:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F40E
	ldr r0, _0800F43C  @ =0x08008239
	str r0, [r4, #12]
	mov r1, #0
	strh r6, [r4, #16]
	strh r5, [r4, #18]
	mov r0, #128
	str r0, [r4, #32]
	str r1, [r4, #8]
	cmp r6, #0
	bne _0800F440
	mov r0, #160
	b _0800F456
_0800F434:
	.4byte gNextLevelInLevelTable
_0800F438:
	.4byte gUnknown_08B2CEBC
_0800F43C:
	.4byte sub_08008238
_0800F440:
	ldr r0, _0800F468  @ =gUnknown_08B2CEBC
	ldr r1, [r0, #4]
	lsl r0, r5, #1
	add r0, r0, r5
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r6, r0
	bcc _0800F458
	mov r0, #132
_0800F456:
	str r0, [r4, #32]
_0800F458:
	cmp r5, #2
	bne _0800F478
	ldr r0, _0800F46C  @ =gUnknown_0807C0D0
	str r0, [r4, #8]
	cmp r6, #13
	bne _0800F474
	ldr r0, _0800F470  @ =0x080084A5
	b _0800F476
_0800F468:
	.4byte gUnknown_08B2CEBC
_0800F46C:
	.4byte gUnknown_0807C0D0
_0800F470:
	.4byte sub_080084A4
_0800F474:
	ldr r0, _0800F480  @ =0x08008331
_0800F476:
	str r0, [r4, #12]
_0800F478:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F480:
	.4byte sub_08008330
	THUMB_FUNC_END sub_0800F3C8

	THUMB_FUNC_START sub_0800F484
sub_0800F484: @ 0x0800F484
	push {r4-r7,lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, _0800F4F4  @ =gNextLevelInLevelTable
	ldr r0, _0800F4F8  @ =gUnknown_08B2CF84
	ldr r0, [r0, #4]
	lsl r1, r5, #1
	add r1, r1, r5
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r6, #2
	add r0, r0, r6
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F4CA:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F4CA
	ldr r0, _0800F4FC  @ =0x08008239
	str r0, [r4, #12]
	mov r0, #0
	strh r6, [r4, #16]
	strh r5, [r4, #18]
	mov r2, #128
	lsl r2, r2, #3
	str r2, [r4, #32]
	str r0, [r4, #8]
	cmp r6, #0
	bne _0800F500
	mov r0, #32
	b _0800F516
	.byte 0x00
	.byte 0x00
_0800F4F4:
	.4byte gNextLevelInLevelTable
_0800F4F8:
	.4byte gUnknown_08B2CF84
_0800F4FC:
	.4byte sub_08008238
_0800F500:
	ldr r0, _0800F52C  @ =gUnknown_08B2CEBC
	ldr r1, [r0, #4]
	lsl r0, r5, #1
	add r0, r0, r5
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r6, r0
	bcc _0800F51A
	mov r0, #4
_0800F516:
	orr r0, r0, r2
	str r0, [r4, #32]
_0800F51A:
	cmp r5, #2
	bne _0800F53C
	ldr r0, _0800F530  @ =gUnknown_0807C0D8
	str r0, [r4, #8]
	cmp r6, #13
	bne _0800F538
	ldr r0, _0800F534  @ =0x080084A5
	b _0800F53A
	.byte 0x00
	.byte 0x00
_0800F52C:
	.4byte gUnknown_08B2CEBC
_0800F530:
	.4byte gUnknown_0807C0D8
_0800F534:
	.4byte sub_080084A4
_0800F538:
	ldr r0, _0800F544  @ =0x08008331
_0800F53A:
	str r0, [r4, #12]
_0800F53C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F544:
	.4byte sub_08008330
	THUMB_FUNC_END sub_0800F484

	THUMB_FUNC_START sub_0800F548
sub_0800F548: @ 0x0800F548
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, _0800F5B4  @ =gNextLevelInLevelTable
	ldr r0, _0800F5B8  @ =gUnknown_08B2CFC0
	ldr r0, [r0, #4]
	lsl r1, r6, #1
	add r1, r1, r6
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F58E:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F58E
	ldr r0, _0800F5BC  @ =0x08008239
	str r0, [r4, #12]
	mov r1, #0
	strh r5, [r4, #16]
	strh r6, [r4, #18]
	mov r0, #128
	lsl r0, r0, #1
	str r0, [r4, #32]
	str r1, [r4, #8]
	pop {r4-r7}
	pop {r0}
	bx r0
_0800F5B4:
	.4byte gNextLevelInLevelTable
_0800F5B8:
	.4byte gUnknown_08B2CFC0
_0800F5BC:
	.4byte sub_08008238
	THUMB_FUNC_END sub_0800F548

	THUMB_FUNC_START sub_0800F5C0
sub_0800F5C0: @ 0x0800F5C0
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, _0800F62C  @ =gNextLevelInLevelTable
	ldr r0, _0800F630  @ =gUnknown_08B2CFC0
	ldr r0, [r0, #4]
	lsl r1, r6, #1
	add r1, r1, r6
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F606:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F606
	ldr r0, _0800F634  @ =0x08008765
	str r0, [r4, #12]
	mov r1, #0
	strh r5, [r4, #16]
	strh r6, [r4, #18]
	mov r0, #128
	lsl r0, r0, #2
	str r0, [r4, #32]
	str r1, [r4, #8]
	pop {r4-r7}
	pop {r0}
	bx r0
_0800F62C:
	.4byte gNextLevelInLevelTable
_0800F630:
	.4byte gUnknown_08B2CFC0
_0800F634:
	.4byte sub_08008764
	THUMB_FUNC_END sub_0800F5C0

	THUMB_FUNC_START sub_0800F638
sub_0800F638: @ 0x0800F638
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, _0800F6A4  @ =gNextLevelInLevelTable
	ldr r0, _0800F6A8  @ =gUnknown_08B2D378
	ldr r0, [r0, #4]
	lsl r1, r6, #1
	add r1, r1, r6
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F67E:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F67E
	mov r0, #0
	strh r6, [r4, #18]
	strh r5, [r4, #16]
	str r0, [r4, #32]
	str r0, [r4, #8]
	ldr r0, _0800F6AC  @ =0x08008239
	str r0, [r4, #12]
	cmp r5, #6
	bne _0800F6B0
	mov r0, #1
	str r0, [r4, #32]
	b _0800F6C8
_0800F6A4:
	.4byte gNextLevelInLevelTable
_0800F6A8:
	.4byte gUnknown_08B2D378
_0800F6AC:
	.4byte sub_08008238
_0800F6B0:
	cmp r5, #7
	bne _0800F6C8
	mov r0, #2
	str r0, [r4, #32]
	cmp r6, #1
	bne _0800F6C4
	ldr r0, _0800F6C0  @ =0x080086A5
	b _0800F6C6
_0800F6C0:
	.4byte sub_080086A4
_0800F6C4:
	ldr r0, _0800F6E0  @ =0x08008601
_0800F6C6:
	str r0, [r4, #12]
_0800F6C8:
	cmp r6, #2
	bne _0800F6D8
	lsl r0, r5, #3
	ldr r1, _0800F6E4  @ =gUnknown_0807C0E0
	add r0, r0, r1
	str r0, [r4, #8]
	ldr r0, _0800F6E8  @ =0x08008331
	str r0, [r4, #12]
_0800F6D8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F6E0:
	.4byte sub_08008600
_0800F6E4:
	.4byte gUnknown_0807C0E0
_0800F6E8:
	.4byte sub_08008330
	THUMB_FUNC_END sub_0800F638

	THUMB_FUNC_START sub_0800F6EC
sub_0800F6EC: @ 0x0800F6EC
	push {lr}
	add r2, r0, #0
	ldr r0, _0800F704  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0800F708
	add r0, r2, #0
	bl sub_0800F1E4
	b _0800F73E
_0800F704:
	.4byte gUnknown_03000B80
_0800F708:
	cmp r0, #1
	bne _0800F714
	add r0, r2, #0
	bl sub_0800F2E4
	b _0800F73E
_0800F714:
	cmp r0, #2
	bne _0800F720
	add r0, r2, #0
	bl sub_0800F3C8
	b _0800F73E
_0800F720:
	cmp r0, #3
	bne _0800F72C
	add r0, r2, #0
	bl sub_0800F484
	b _0800F73E
_0800F72C:
	cmp r0, #4
	bne _0800F738
	add r0, r2, #0
	bl sub_0800F548
	b _0800F73E
_0800F738:
	add r0, r2, #0
	bl sub_0800F5C0
_0800F73E:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800F6EC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800F744
sub_0800F744: @ 0x0800F744
	push {r4,lr}
	ldr r4, _0800F760  @ =gUnknown_08B2CFC8
	add r4, r0, r4
	ldrb r1, [r4]
	bl sub_0800F1E4
	ldr r2, _0800F764  @ =gNextLevelID
	ldr r1, _0800F768  @ =gNextLevelInLevelTable
	ldrb r0, [r4]
	strh r0, [r1, #16]
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
_0800F760:
	.4byte gUnknown_08B2CFC8
_0800F764:
	.4byte gNextLevelID
_0800F768:
	.4byte gNextLevelInLevelTable
	THUMB_FUNC_END sub_0800F744

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
	ldr r0, _08010330  @ =gUnknown_03000B80
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
	.4byte gUnknown_03000B80
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
	ldr r0, _080105AC  @ =gUnknown_03000B80
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
	ldr r1, _080105B4  @ =0x03001BA0
	b _080105DA
_080105AC:
	.4byte gUnknown_03000B80
_080105B0:
	.4byte gNextLevelInLevelTable
_080105B4:
	.4byte 0x03001BA0
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
	ldr r0, _0801086C  @ =gUnknown_03000B80
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
	.4byte gUnknown_03000B80
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
	ldr r0, _08010ADC  @ =gUnknown_03000B80
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
	.4byte gUnknown_03000B80
_08010AE0:
	.4byte gNextLevelInLevelTable
_08010AE4:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _08010B16
	ldr r1, _08010B08  @ =gAfterTutorialWorld
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
	.4byte gAfterTutorialWorld
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
	ldr r0, _08010B30  @ =gAfterTutorialWorld
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
	.4byte gAfterTutorialWorld
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
	ldr r0, _08010B88  @ =gAfterTutorialWorld
	ldrb r0, [r0]
	lsl r0, r0, #4
	orr r1, r1, r0
	strb r1, [r4, #2]
	b _08010BA2
	.byte 0x00
	.byte 0x00
_08010B88:
	.4byte gAfterTutorialWorld
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
	ldr r0, _08010CE0  @ =gUnknown_03000B80
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
	.4byte gUnknown_03000B80
_08010CE4:
	.4byte gNextLevelInLevelTable
_08010CE8:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _08010D14
	ldr r1, _08010D0C  @ =gAfterTutorialWorld
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
	.4byte gAfterTutorialWorld
_08010D10:
	mov r0, #80
	b _08010D22
_08010D14:
	mov r1, r8
	lsl r0, r1, #4
	orr r0, r0, r6
	strb r0, [r4, #1]
	ldr r0, _08010D2C  @ =gAfterTutorialWorld
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
	.4byte gAfterTutorialWorld
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
	ldr r0, _08010D94  @ =gAfterTutorialWorld
	ldrb r0, [r0]
	lsl r0, r0, #4
	orr r6, r6, r0
	strb r6, [r4, #2]
	b _08010DAC
_08010D94:
	.4byte gAfterTutorialWorld
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

	THUMB_FUNC_START main_menu_init_callback
main_menu_init_callback: @ 0x080114D4
	push {r4,r5,lr}
	sub sp, sp, #4
	mov r0, #0
	bl sub_08034898
	ldr r1, _0801150C  @ =gUnknown_03001740
	mov r0, #0
	strb r0, [r1]
	ldr r2, _08011510  @ =0x0300005D
	ldr r1, _08011514  @ =0x03000062
	strb r0, [r1]
	strb r0, [r2]
	ldr r0, _08011518  @ =gUnknown_0807CA94
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _080114FC
	mov r0, #1
	strb r0, [r1]
	strb r0, [r2]
_080114FC:
	ldr r0, _0801151C  @ =gPreviousMainState
	ldr r1, [r0]
	cmp r1, #4
	bne _08011524
	ldr r0, _08011520  @ =0x03000058
	strb r1, [r0]
	b _0801157E
	.byte 0x00
	.byte 0x00
_0801150C:
	.4byte gUnknown_03001740
_08011510:
	.4byte 0x0300005D
_08011514:
	.4byte 0x03000062
_08011518:
	.4byte gUnknown_0807CA94
_0801151C:
	.4byte gPreviousMainState
_08011520:
	.4byte 0x03000058
_08011524:
	add r0, r1, #0
	sub r0, r0, #24
	cmp r0, #1
	bhi _08011540
	ldrb r0, [r2]
	cmp r0, #0
	beq _08011540
	ldr r1, _0801153C  @ =0x03000058
	mov r0, #3
	strb r0, [r1]
	b _0801157E
	.byte 0x00
	.byte 0x00
_0801153C:
	.4byte 0x03000058
_08011540:
	ldr r0, _08011560  @ =gUnknown_080788F8
	ldr r0, [r0]
	ldr r0, [r0]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08011570
	ldr r0, _08011564  @ =0x0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011570
	ldr r2, _08011568  @ =0x03000058
	ldr r1, _0801156C  @ =0x03000059
	mov r0, #3
	b _0801157A
	.byte 0x00
	.byte 0x00
_08011560:
	.4byte gUnknown_080788F8
_08011564:
	.4byte 0x0300005D
_08011568:
	.4byte 0x03000058
_0801156C:
	.4byte 0x03000059
_08011570:
	ldr r2, _0801163C  @ =0x03000058
	ldr r1, _08011640  @ =0x03000059
	ldr r0, _08011644  @ =gUnknown_080788F4
	ldr r0, [r0]
	ldrb r0, [r0]
_0801157A:
	strb r0, [r1]
	strb r0, [r2]
_0801157E:
	ldr r0, _08011648  @ =0x0300005B
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0801164C  @ =0x0300005E
	strb r1, [r0]
	ldr r2, _08011650  @ =0x0300005F
	ldr r0, _08011654  @ =gUnknown_085FEFE4
	ldrb r0, [r0, #1]
	strb r0, [r2]
	ldr r0, _08011658  @ =0x03000060
	strb r1, [r0]
	ldr r2, _0801165C  @ =0x03000061
	ldr r0, _08011660  @ =gUnknown_08617030
	ldrb r0, [r0, #1]
	strb r0, [r2]
	ldr r0, _08011664  @ =0x03000064
	strb r1, [r0]
	ldr r0, _08011668  @ =0x03000065
	strb r1, [r0]
	ldr r0, _0801166C  @ =gCameraHorizontalOffset
	mov r5, #0
	strh r5, [r0]
	ldr r0, _08011670  @ =gCameraVerticalOffset
	strh r5, [r0]
	ldr r4, _08011674  @ =gMainMenuData
	add r0, r4, #0
	bl sub_08032EB8
	mov r1, sp
	mov r0, #160
	strh r0, [r1]
	ldr r1, _08011678  @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801167C  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_08071FE4
	cmp r0, #10
	beq _080115E0
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_080115E0:
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl sub_08029CDC
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #218
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #1
	mov r1, #3
	bl sub_08032788
	mov r0, sp
	strh r5, [r0]
	ldr r1, _08011680  @ =gBGLayerOffsets 
	ldr r2, _08011684  @ =0x01000008
	bl CpuSet
	mov r0, #0
	mov r1, #0
	bl sub_080381E4
	mov r4, #0
	ldr r5, _08011688  @ =0x03000066
_08011616:
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
	ble _08011616
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801163C:
	.4byte 0x03000058
_08011640:
	.4byte 0x03000059
_08011644:
	.4byte gUnknown_080788F4
_08011648:
	.4byte 0x0300005B
_0801164C:
	.4byte 0x0300005E
_08011650:
	.4byte 0x0300005F
_08011654:
	.4byte gUnknown_085FEFE4
_08011658:
	.4byte 0x03000060
_0801165C:
	.4byte 0x03000061
_08011660:
	.4byte gUnknown_08617030
_08011664:
	.4byte 0x03000064
_08011668:
	.4byte 0x03000065
_0801166C:
	.4byte gCameraHorizontalOffset
_08011670:
	.4byte gCameraVerticalOffset
_08011674:
	.4byte gMainMenuData
_08011678:
	.4byte 0x040000D4
_0801167C:
	.4byte 0x81000100
_08011680:
	.4byte gBGLayerOffsets 
_08011684:
	.4byte 0x01000008
_08011688:
	.4byte 0x03000066
	THUMB_FUNC_END main_menu_init_callback

	THUMB_FUNC_START sub_0801168C
sub_0801168C: @ 0x0801168C
	push {lr}
	sub sp, sp, #32
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _08011748
	ldr r0, _080116A4  @ =0x0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _080116AC
	ldr r1, _080116A8  @ =gUnknown_0807638C
	b _080116AE
_080116A4:
	.4byte 0x0300005D
_080116A8:
	.4byte gUnknown_0807638C
_080116AC:
	ldr r1, _080116FC  @ =gUnknown_080763AC
_080116AE:
	mov r0, sp
	mov r2, #32
	bl memcpy
	ldr r1, _08011700  @ =gBGLayerOffsets 
	ldr r0, _08011704  @ =0x03000058
	ldrb r0, [r0]
	add r0, sp, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	neg r0, r0
	strh r0, [r1, #8]
	ldr r0, _08011704  @ =0x03000058
	ldrb r2, [r0]
	ldr r1, _08011708  @ =gUnknown_08078900
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r3, r1, r0
	cmp r2, #3
	beq _08011714
	ldr r1, _0801170C  @ =0x00000313
	add r0, r3, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08011714
	ldr r1, _08011710  @ =gUnknown_080A8668
	ldrb r0, [r3, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08011714
	mov r0, #1
	b _08011716
_080116FC:
	.4byte gUnknown_080763AC
_08011700:
	.4byte gBGLayerOffsets 
_08011704:
	.4byte 0x03000058
_08011708:
	.4byte gUnknown_08078900
_0801170C:
	.4byte 0x00000313
_08011710:
	.4byte gUnknown_080A8668
_08011714:
	mov r0, #0
_08011716:
	cmp r0, #0
	beq _08011722
	ldr r1, _0801173C  @ =gBGLayerOffsets 
	mov r0, #255
	lsl r0, r0, #8
	strh r0, [r1, #10]
_08011722:
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #80
	ldr r2, _08011740  @ =0x00003B44
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #2
	ldr r2, _08011744  @ =0x00000808
	b _0801175A
_0801173C:
	.4byte gBGLayerOffsets 
_08011740:
	.4byte 0x00003B44
_08011744:
	.4byte 0x00000808
_08011748:
	ldr r0, _08011764  @ =gBGLayerOffsets 
	strh r1, [r0, #6]
	strh r1, [r0, #10]
	strh r1, [r0, #8]
	strh r1, [r0, #2]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #218
	lsl r2, r2, #5
_0801175A:
	add r0, r2, #0
	strh r0, [r1]
	add sp, sp, #32
	pop {r0}
	bx r0
_08011764:
	.4byte gBGLayerOffsets 
	THUMB_FUNC_END sub_0801168C

	THUMB_FUNC_START sub_08011768
sub_08011768: @ 0x08011768
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #16
	bl sub_08034004
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _08011780
	b _08011968
_08011780:
	ldr r4, _080117B4  @ =0x03000058
	ldrb r0, [r4]
	cmp r0, #5
	bne _08011830
	mov r2, #0
	ldr r4, _080117B8  @ =gUnknown_0807CA94
	ldr r0, _080117BC  @ =gUnknown_08078900
	ldr r3, [r0]
_08011790:
	lsl r1, r2, #24
	lsr r1, r1, #24
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	add r0, r3, r0
	cmp r1, #2
	bhi _080117C0
	ldrb r1, [r0, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080117C0
	mov r0, #1
	b _080117C2
	.byte 0x00
	.byte 0x00
_080117B4:
	.4byte 0x03000058
_080117B8:
	.4byte gUnknown_0807CA94
_080117BC:
	.4byte gUnknown_08078900
_080117C0:
	mov r0, #0
_080117C2:
	cmp r0, #0
	bne _080117E4
	add r2, r2, #1
	cmp r2, #2
	ble _08011790
	mov r0, #0
_080117CE:
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	bne _080117E8
	lsl r0, r5, #24
	asr r1, r0, #24
	cmp r1, #0
	bne _080117E8
	b _08011BB8
_080117E4:
	add r0, r2, #1
	b _080117CE
_080117E8:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08011814  @ =0x03000059
	ldr r2, _08011818  @ =0x03000058
	ldrb r0, [r2]
	strb r0, [r1]
	lsl r0, r5, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0801181C
	sub r0, r0, #1
	strb r0, [r2]
	b _0801181E
_08011814:
	.4byte 0x03000059
_08011818:
	.4byte 0x03000058
_0801181C:
	strb r4, [r2]
_0801181E:
	ldr r1, _0801182C  @ =0x0300005B
	mov r0, #2
	strb r0, [r1]
	mov r0, #1
	bl sub_0801168C
	b _08011C9C
_0801182C:
	.4byte 0x0300005B
_08011830:
	cmp r0, #4
	bne _0801184E
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
	mov r0, #4
	b _0801198A
_0801184E:
	cmp r0, #3
	bne _0801186C
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
	mov r0, #29
	b _0801198A
_0801186C:
	cmp r0, #2
	bls _08011872
	b _08011998
_08011872:
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
	ldr r0, _08011908  @ =gUnknown_080788F4
	mov r8, r0
	ldr r1, [r0]
	ldrb r0, [r4]
	strb r0, [r1]
	mov r1, r8
	ldr r5, [r1]
	ldrb r0, [r5]
	ldr r6, _0801190C  @ =gAfterTutorialWorld
	ldr r3, _08011910  @ =gNextLevelID
	mov r12, r3
	ldr r4, _08011914  @ =gUnknown_03000B80
	ldr r1, _08011918  @ =gUnknown_08078900
	mov r9, r1
	lsl r1, r0, #3
	sub r1, r1, r0
	lsl r1, r1, #5
	sub r1, r1, r0
	lsl r1, r1, #2
	mov r0, r9
	ldr r3, [r0]
	add r1, r3, r1
	ldrb r0, [r1, #2]
	mov r7, #15
	and r7, r7, r0
	ldrb r0, [r1, #3]
	strb r0, [r4]
	mov r0, r12
	strb r7, [r0]
	ldrb r0, [r1, #2]
	lsr r0, r0, #4
	mov r2, #7
	and r0, r0, r2
	strb r0, [r6]
	ldrb r2, [r1, #3]
	strb r2, [r4]
	ldrb r1, [r5]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	add r3, r3, r0
	mov r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, _0801191C  @ =gLivesCount
	strb r1, [r0]
	lsl r2, r2, #24
	cmp r2, #0
	bne _080118F2
	lsl r0, r7, #1
	mov r1, r12
	strb r0, [r1]
_080118F2:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	add r3, sp, #12
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08011920
	mov r0, #8
	b _0801198A
_08011908:
	.4byte gUnknown_080788F4
_0801190C:
	.4byte gAfterTutorialWorld
_08011910:
	.4byte gNextLevelID
_08011914:
	.4byte gUnknown_03000B80
_08011918:
	.4byte gUnknown_08078900
_0801191C:
	.4byte gLivesCount
_08011920:
	mov r0, #3
	mov r1, #41
	mov r2, #8
	mov r3, #1
	bl sub_0802D468
	mov r0, #30
	mov r1, #1
	bl sub_080070E8
	mov r2, #1
	mov r3, r8
	ldr r0, [r3]
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	mov r3, r9
	ldr r1, [r3]
	add r1, r1, r0
	ldr r0, [r1, #4]
	orr r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _08011964  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801195C
	b _08011C9C
_0801195C:
	bl sub_0802A164
	b _08011C9C
	.byte 0x00
	.byte 0x00
_08011964:
	.4byte gUnknown_03000B50
_08011968:
	ldr r0, _08011994  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08011998
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #7
_0801198A:
	mov r1, #1
	bl sub_080070E8
	b _08011C9C
	.byte 0x00
	.byte 0x00
_08011994:
	.4byte gUnknown_030012E8
_08011998:
	ldr r5, _080119F0  @ =0x03000058
	ldrb r2, [r5]
	cmp r2, #7
	bls _080119A2
	b _08011B30
_080119A2:
	cmp r2, #3
	bls _080119A8
	b _08011AA6
_080119A8:
	ldr r0, _080119F4  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08011A00
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _080119F8  @ =0x03000059
	ldrb r1, [r5]
	strb r1, [r0]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #2
	bne _080119E4
	ldr r0, _080119FC  @ =0x0300005D
	ldrb r0, [r0]
	cmp r0, #0
	bne _080119E4
	add r0, r1, #1
	strb r0, [r5]
_080119E4:
	ldr r1, _080119F0  @ =0x03000058
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _08011B5A
	.byte 0x00
	.byte 0x00
_080119F0:
	.4byte 0x03000058
_080119F4:
	.4byte gUnknown_030012E8
_080119F8:
	.4byte 0x03000059
_080119FC:
	.4byte 0x0300005D
_08011A00:
	cmp r2, #2
	bls _08011A06
	b _08011B5A
_08011A06:
	mov r4, #128
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	bne _08011A12
	b _08011B5A
_08011A12:
	ldr r0, _08011A44  @ =gUnknown_08078900
	lsl r1, r2, #3
	sub r1, r1, r2
	lsl r1, r1, #5
	sub r1, r1, r2
	lsl r1, r1, #2
	ldr r0, [r0]
	add r3, r0, r1
	cmp r2, #3
	beq _08011A50
	ldr r1, _08011A48  @ =0x00000313
	add r0, r3, r1
	ldrb r1, [r0]
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08011A50
	ldr r1, _08011A4C  @ =gUnknown_080A8668
	ldrb r0, [r3, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08011A50
	mov r0, #1
	b _08011A52
	.byte 0x00
	.byte 0x00
_08011A44:
	.4byte gUnknown_08078900
_08011A48:
	.4byte 0x00000313
_08011A4C:
	.4byte gUnknown_080A8668
_08011A50:
	mov r0, #0
_08011A52:
	add r1, r0, #0
	cmp r1, #0
	beq _08011A90
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _08011A84  @ =0x03000059
	ldr r1, _08011A88  @ =0x03000058
	ldrb r0, [r1]
	strb r0, [r2]
	add r0, r0, #6
	strb r0, [r1]
	ldr r1, _08011A8C  @ =0x0300005B
	mov r0, #1
	strb r0, [r1]
	b _08011C9C
	.byte 0x00
	.byte 0x00
_08011A84:
	.4byte 0x03000059
_08011A88:
	.4byte 0x03000058
_08011A8C:
	.4byte 0x0300005B
_08011A90:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08011B5A
_08011AA6:
	ldr r0, _08011AD8  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r3, #128
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08011AF4
	cmp r2, #4
	bne _08011AE0
	mov r0, #0
	str r0, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08011ADC  @ =0x03000059
	ldrb r0, [r5]
	strb r0, [r1]
	add r0, r0, #1
	strb r0, [r5]
	b _08011AF4
_08011AD8:
	.4byte gUnknown_030012E8
_08011ADC:
	.4byte 0x03000059
_08011AE0:
	mov r0, #0
	str r0, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08011AF4:
	ldr r0, _08011B24  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08011B5A
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _08011B28  @ =0x03000059
	ldr r1, _08011B2C  @ =0x03000058
	ldrb r0, [r1]
	strb r0, [r2]
	strb r4, [r1]
	b _08011B5A
	.byte 0x00
	.byte 0x00
_08011B24:
	.4byte gUnknown_030012E8
_08011B28:
	.4byte 0x03000059
_08011B2C:
	.4byte 0x03000058
_08011B30:
	ldr r0, _08011BD0  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08011B5A
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08011BD4  @ =0x03000059
	ldrb r0, [r5]
	strb r0, [r1]
	strb r4, [r5]
_08011B5A:
	ldr r5, _08011BD8  @ =0x03000058
	ldrb r4, [r5]
	cmp r4, #0
	beq _08011C54
	cmp r4, #4
	bhi _08011BE0
	ldr r2, _08011BD0  @ =gUnknown_030012E8
	ldrh r1, [r2]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08011BAC
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _08011BD4  @ =0x03000059
	ldrb r1, [r5]
	strb r1, [r0]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #4
	bne _08011BA2
	ldr r0, _08011BDC  @ =0x0300005D
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011BA2
	sub r0, r1, #1
	strb r0, [r5]
_08011BA2:
	ldr r1, _08011BD8  @ =0x03000058
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r2, _08011BD0  @ =gUnknown_030012E8
_08011BAC:
	ldrh r1, [r2]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08011C9C
	mov r1, #0
_08011BB8:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08011C9C
	.byte 0x00
	.byte 0x00
_08011BD0:
	.4byte gUnknown_030012E8
_08011BD4:
	.4byte 0x03000059
_08011BD8:
	.4byte 0x03000058
_08011BDC:
	.4byte 0x0300005D
_08011BE0:
	ldr r0, _08011C10  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r0, #64
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _08011C18
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08011C14  @ =0x03000059
	ldrb r0, [r5]
	strb r0, [r1]
	sub r0, r0, #1
	b _08011C9A
_08011C10:
	.4byte gUnknown_030012E8
_08011C14:
	.4byte 0x03000059
_08011C18:
	mov r0, #32
	and r0, r0, r2
	cmp r0, #0
	beq _08011C9C
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _08011C4C  @ =0x03000059
	ldrb r1, [r5]
	strb r1, [r0]
	ldr r0, _08011C50  @ =0x0300005D
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011C46
	sub r0, r1, #1
	strb r0, [r5]
_08011C46:
	ldrb r0, [r5]
	sub r0, r0, #2
	b _08011C9A
_08011C4C:
	.4byte 0x03000059
_08011C50:
	.4byte 0x0300005D
_08011C54:
	ldr r6, _08011CAC  @ =gUnknown_030012E8
	ldrh r1, [r6]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08011C74
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08011C74:
	ldrh r1, [r6]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08011C9C
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08011CB0  @ =0x03000059
	ldrb r0, [r5]
	strb r0, [r1]
	mov r0, #4
_08011C9A:
	strb r0, [r5]
_08011C9C:
	add sp, sp, #16
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08011CAC:
	.4byte gUnknown_030012E8
_08011CB0:
	.4byte 0x03000059
	THUMB_FUNC_END sub_08011768

	THUMB_FUNC_START sub_08011CB4
sub_08011CB4: @ 0x08011CB4
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r0, _08011CEC  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08011CF8
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _08011CF0  @ =0x03000059
	ldr r1, _08011CF4  @ =0x03000058
	ldrb r0, [r1]
	strb r0, [r2]
	sub r0, r0, #6
	b _08011E7E
	.byte 0x00
	.byte 0x00
_08011CEC:
	.4byte gUnknown_030012E8
_08011CF0:
	.4byte 0x03000059
_08011CF4:
	.4byte 0x03000058
_08011CF8:
	mov r0, #32
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _08011DD4
	ldr r5, _08011D44  @ =0x03000058
	ldrb r1, [r5]
	cmp r1, #6
	bls _08011DB0
	sub r1, r1, #7
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _08011D48  @ =gUnknown_08078900
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r2, [r2]
	add r2, r2, r0
	cmp r1, #3
	beq _08011D54
	ldr r1, _08011D4C  @ =0x00000313
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08011D54
	ldr r1, _08011D50  @ =gUnknown_080A8668
	ldrb r0, [r2, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08011D54
	mov r0, #1
	b _08011D56
	.byte 0x00
	.byte 0x00
_08011D44:
	.4byte 0x03000058
_08011D48:
	.4byte gUnknown_08078900
_08011D4C:
	.4byte 0x00000313
_08011D50:
	.4byte gUnknown_080A8668
_08011D54:
	mov r0, #0
_08011D56:
	add r4, r0, #0
	cmp r4, #0
	beq _08011D88
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _08011D80  @ =0x03000059
	ldr r1, _08011D84  @ =0x03000058
	ldrb r0, [r1]
	strb r0, [r2]
	sub r0, r0, #1
	strb r0, [r1]
	b _08011EB6
_08011D80:
	.4byte 0x03000059
_08011D84:
	.4byte 0x03000058
_08011D88:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _08011DA8  @ =0x03000059
	ldr r1, _08011DAC  @ =0x03000058
	ldrb r0, [r1]
	strb r0, [r2]
	strb r4, [r1]
	b _08011E80
_08011DA8:
	.4byte 0x03000059
_08011DAC:
	.4byte 0x03000058
_08011DB0:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08011DD0  @ =0x03000059
	ldrb r0, [r5]
	strb r0, [r1]
	strb r4, [r5]
	b _08011E80
	.byte 0x00
	.byte 0x00
_08011DD0:
	.4byte 0x03000059
_08011DD4:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08011EB6
	ldr r4, _08011E1C  @ =0x03000058
	ldrb r1, [r4]
	cmp r1, #7
	bhi _08011E94
	sub r1, r1, #5
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _08011E20  @ =gUnknown_08078900
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r2, [r2]
	add r2, r2, r0
	cmp r1, #3
	beq _08011E2C
	ldr r1, _08011E24  @ =0x00000313
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08011E2C
	ldr r1, _08011E28  @ =gUnknown_080A8668
	ldrb r0, [r2, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08011E2C
	mov r0, #1
	b _08011E2E
	.byte 0x00
	.byte 0x00
_08011E1C:
	.4byte 0x03000058
_08011E20:
	.4byte gUnknown_08078900
_08011E24:
	.4byte 0x00000313
_08011E28:
	.4byte gUnknown_080A8668
_08011E2C:
	mov r0, #0
_08011E2E:
	add r4, r0, #0
	cmp r4, #0
	beq _08011E60
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _08011E58  @ =0x03000059
	ldr r1, _08011E5C  @ =0x03000058
	ldrb r0, [r1]
	strb r0, [r2]
	add r0, r0, #1
	strb r0, [r1]
	b _08011EB6
_08011E58:
	.4byte 0x03000059
_08011E5C:
	.4byte 0x03000058
_08011E60:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _08011E88  @ =0x03000059
	ldr r1, _08011E8C  @ =0x03000058
	ldrb r0, [r1]
	strb r0, [r2]
	mov r0, #5
_08011E7E:
	strb r0, [r1]
_08011E80:
	ldr r0, _08011E90  @ =0x0300005B
	strb r4, [r0]
	b _08011EB6
	.byte 0x00
	.byte 0x00
_08011E88:
	.4byte 0x03000059
_08011E8C:
	.4byte 0x03000058
_08011E90:
	.4byte 0x0300005B
_08011E94:
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08011F20  @ =0x03000059
	ldrb r0, [r4]
	strb r0, [r1]
	mov r0, #5
	strb r0, [r4]
	ldr r0, _08011F24  @ =0x0300005B
	strb r5, [r0]
_08011EB6:
	ldr r0, _08011F28  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08011ED8
	mov r0, #0
	str r0, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08011ED8:
	bl sub_08034004
	lsl r0, r0, #24
	cmp r0, #0
	beq _08011F4C
	mov r4, #0
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _08011F2C  @ =gUnknown_03000B80
	mov r1, #2
	strb r1, [r0]
	ldr r0, _08011F30  @ =0x03000058
	ldrb r2, [r0]
	cmp r2, #3
	bne _08011F34
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #29
	mov r1, #1
	bl sub_080070E8
	b _08011F4C
_08011F20:
	.4byte 0x03000059
_08011F24:
	.4byte 0x0300005B
_08011F28:
	.4byte gUnknown_030012E8
_08011F2C:
	.4byte gUnknown_03000B80
_08011F30:
	.4byte 0x03000058
_08011F34:
	ldr r0, _08011F54  @ =gUnknown_080788F4
	ldr r1, [r0]
	sub r0, r2, #6
	strb r0, [r1]
	ldr r0, _08011F58  @ =gAfterTutorialWorld
	strb r4, [r0]
	ldr r0, _08011F5C  @ =gNextLevelID
	strb r4, [r0]
	mov r0, #9
	mov r1, #1
	bl sub_080070E8
_08011F4C:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08011F54:
	.4byte gUnknown_080788F4
_08011F58:
	.4byte gAfterTutorialWorld
_08011F5C:
	.4byte gNextLevelID
	THUMB_FUNC_END sub_08011CB4

	THUMB_FUNC_START sub_08011F60
sub_08011F60: @ 0x08011F60
	push {r4-r6,lr}
	sub sp, sp, #44
	ldr r1, _08011FA0  @ =gBGLayerOffsets 
	mov r6, #0
	mov r0, #255
	lsl r0, r0, #8
	strh r0, [r1, #6]
	bl sub_08034004
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _08012004
	ldr r0, _08011FA4  @ =0x03000058
	ldrb r2, [r0]
	cmp r2, #2
	bhi _08011FB2
	ldr r1, _08011FA8  @ =gUnknown_08078900
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	ldrb r1, [r1, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08011FAC
	mov r0, #1
	b _08011FAE
_08011FA0:
	.4byte gBGLayerOffsets 
_08011FA4:
	.4byte 0x03000058
_08011FA8:
	.4byte gUnknown_08078900
_08011FAC:
	mov r0, #0
_08011FAE:
	add r1, r0, #0
	b _08011FB8
_08011FB2:
	ldr r0, _08011FD4  @ =gUnknown_0807CA94
	ldr r0, [r0]
	ldr r1, [r0]
_08011FB8:
	cmp r1, #0
	bne _08011FD8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08012224
	.byte 0x00
	.byte 0x00
_08011FD4:
	.4byte gUnknown_0807CA94
_08011FD8:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08011FFC  @ =0x0300005B
	mov r0, #3
	strb r0, [r1]
	ldr r0, _08012000  @ =0x0300005C
	strb r4, [r0]
	b _08012224
	.byte 0x00
	.byte 0x00
_08011FFC:
	.4byte 0x0300005B
_08012000:
	.4byte 0x0300005C
_08012004:
	ldr r5, _08012040  @ =gUnknown_030012E8
	ldrh r2, [r5]
	mov r0, #2
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08012050
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _08012044  @ =0x03000059
	ldr r1, _08012048  @ =0x03000058
	ldrb r0, [r1]
	strb r0, [r2]
	strb r6, [r1]
	ldr r0, _0801204C  @ =0x0300005B
	strb r6, [r0]
	mov r0, #0
	bl sub_0801168C
	b _08012224
	.byte 0x00
	.byte 0x00
_08012040:
	.4byte gUnknown_030012E8
_08012044:
	.4byte 0x03000059
_08012048:
	.4byte 0x03000058
_0801204C:
	.4byte 0x0300005B
_08012050:
	mov r0, #192
	and r0, r0, r2
	cmp r0, #0
	beq _0801206C
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0801206C:
	ldrh r1, [r5]
	mov r0, #16
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	beq _08012142
	ldr r1, _080120A8  @ =0x03000059
	ldr r5, _080120AC  @ =0x03000058
	ldrb r0, [r5]
	strb r0, [r1]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldrb r1, [r5]
	ldr r0, _080120B0  @ =0x0300005D
	ldrb r0, [r0]
	add r0, r0, #2
	cmp r1, r0
	bge _080120B4
	add r0, r1, #1
	strb r0, [r5]
	b _080120B6
_080120A8:
	.4byte 0x03000059
_080120AC:
	.4byte 0x03000058
_080120B0:
	.4byte 0x0300005D
_080120B4:
	strb r6, [r5]
_080120B6:
	ldr r0, _080120C4  @ =0x0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _080120CC
	ldr r1, _080120C8  @ =gUnknown_0807638C
	b _080120CE
	.byte 0x00
	.byte 0x00
_080120C4:
	.4byte 0x0300005D
_080120C8:
	.4byte gUnknown_0807638C
_080120CC:
	ldr r1, _08012120  @ =gUnknown_080763AC
_080120CE:
	add r0, sp, #12
	mov r2, #32
	bl memcpy
	ldr r1, _08012124  @ =gBGLayerOffsets 
	ldr r0, _08012128  @ =0x03000058
	ldrb r0, [r0]
	add r0, sp, r0
	add r0, r0, #12
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	neg r0, r0
	strh r0, [r1, #8]
	ldr r0, _08012128  @ =0x03000058
	ldrb r2, [r0]
	ldr r1, _0801212C  @ =gUnknown_08078900
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r3, r1, r0
	cmp r2, #3
	beq _08012138
	ldr r1, _08012130  @ =0x00000313
	add r0, r3, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08012138
	ldr r1, _08012134  @ =gUnknown_080A8668
	ldrb r0, [r3, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08012138
	mov r0, #1
	b _0801213A
	.byte 0x00
	.byte 0x00
_08012120:
	.4byte gUnknown_080763AC
_08012124:
	.4byte gBGLayerOffsets 
_08012128:
	.4byte 0x03000058
_0801212C:
	.4byte gUnknown_08078900
_08012130:
	.4byte 0x00000313
_08012134:
	.4byte gUnknown_080A8668
_08012138:
	mov r0, #0
_0801213A:
	add r1, r0, #0
	cmp r1, #0
	bne _08012210
	b _08012220
_08012142:
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08012224
	ldr r0, _08012174  @ =0x03000059
	ldr r4, _08012178  @ =0x03000058
	ldrb r1, [r4]
	strb r1, [r0]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldrb r0, [r4]
	cmp r0, #0
	beq _08012180
	sub r0, r0, #1
	strb r0, [r4]
	ldr r1, _0801217C  @ =0x0300005D
	b _08012188
_08012174:
	.4byte 0x03000059
_08012178:
	.4byte 0x03000058
_0801217C:
	.4byte 0x0300005D
_08012180:
	ldr r1, _08012194  @ =0x0300005D
	ldrb r0, [r1]
	add r0, r0, #2
	strb r0, [r4]
_08012188:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801219C
	ldr r1, _08012198  @ =gUnknown_0807638C
	b _0801219E
	.byte 0x00
	.byte 0x00
_08012194:
	.4byte 0x0300005D
_08012198:
	.4byte gUnknown_0807638C
_0801219C:
	ldr r1, _080121F0  @ =gUnknown_080763AC
_0801219E:
	add r0, sp, #12
	mov r2, #32
	bl memcpy
	ldr r1, _080121F4  @ =gBGLayerOffsets 
	ldr r0, _080121F8  @ =0x03000058
	ldrb r0, [r0]
	add r0, sp, r0
	add r0, r0, #12
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	neg r0, r0
	strh r0, [r1, #8]
	ldr r0, _080121F8  @ =0x03000058
	ldrb r2, [r0]
	ldr r1, _080121FC  @ =gUnknown_08078900
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r3, r1, r0
	cmp r2, #3
	beq _08012208
	ldr r1, _08012200  @ =0x00000313
	add r0, r3, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08012208
	ldr r1, _08012204  @ =gUnknown_080A8668
	ldrb r0, [r3, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08012208
	mov r0, #1
	b _0801220A
	.byte 0x00
	.byte 0x00
_080121F0:
	.4byte gUnknown_080763AC
_080121F4:
	.4byte gBGLayerOffsets 
_080121F8:
	.4byte 0x03000058
_080121FC:
	.4byte gUnknown_08078900
_08012200:
	.4byte 0x00000313
_08012204:
	.4byte gUnknown_080A8668
_08012208:
	mov r0, #0
_0801220A:
	add r1, r0, #0
	cmp r1, #0
	beq _08012220
_08012210:
	ldr r1, _0801221C  @ =gBGLayerOffsets 
	mov r0, #255
	lsl r0, r0, #8
	strh r0, [r1, #10]
	b _08012224
	.byte 0x00
	.byte 0x00
_0801221C:
	.4byte gBGLayerOffsets 
_08012220:
	ldr r0, _0801222C  @ =gBGLayerOffsets 
	strh r1, [r0, #10]
_08012224:
	add sp, sp, #44
	pop {r4-r6}
	pop {r0}
	bx r0
_0801222C:
	.4byte gBGLayerOffsets 
	THUMB_FUNC_END sub_08011F60

	THUMB_FUNC_START sub_08012230
sub_08012230: @ 0x08012230
	push {r4,r5,lr}
	sub sp, sp, #16
	ldr r1, _080122C4  @ =gBGLayerOffsets 
	mov r5, #0
	mov r4, #0
	mov r0, #255
	lsl r0, r0, #8
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	bl sub_08034004
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _08012308
	ldr r0, _080122C8  @ =0x0300005C
	ldrb r1, [r0]
	cmp r1, #0
	beq _08012314
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _080122CC  @ =0x03000058
	ldrb r1, [r0]
	cmp r1, #2
	bhi _080122E0
	add r0, sp, #12
	strh r4, [r0]
	ldr r5, _080122D0  @ =gUnknown_08078900
	lsl r4, r1, #3
	sub r4, r4, r1
	lsl r4, r4, #5
	sub r4, r4, r1
	lsl r4, r4, #2
	ldr r1, [r5]
	add r1, r1, r4
	ldr r2, _080122D4  @ =0x010001BE
	bl CpuSet
	ldr r0, [r5]
	add r0, r0, r4
	bl sub_08010DEC
	ldr r0, _080122D8  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _080122A0
	bl sub_0802A164
_080122A0:
	mov r4, #0
	ldr r5, _080122DC  @ =0x03000066
_080122A4:
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
	ble _080122A4
	b _080122E8
	.byte 0x00
	.byte 0x00
_080122C4:
	.4byte gBGLayerOffsets 
_080122C8:
	.4byte 0x0300005C
_080122CC:
	.4byte 0x03000058
_080122D0:
	.4byte gUnknown_08078900
_080122D4:
	.4byte 0x010001BE
_080122D8:
	.4byte gUnknown_03000B50
_080122DC:
	.4byte 0x03000066
_080122E0:
	bl sub_0802F06C
	bl sub_0802F1D4
_080122E8:
	ldr r1, _080122FC  @ =0x03000059
	ldr r2, _08012300  @ =0x03000058
	ldrb r0, [r2]
	strb r0, [r1]
	mov r1, #0
	strb r1, [r2]
	ldr r0, _08012304  @ =0x0300005B
	strb r1, [r0]
	b _08012336
	.byte 0x00
	.byte 0x00
_080122FC:
	.4byte 0x03000059
_08012300:
	.4byte 0x03000058
_08012304:
	.4byte 0x0300005B
_08012308:
	ldr r0, _08012340  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _08012350
_08012314:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _08012344  @ =0x03000059
	ldr r1, _08012348  @ =0x03000058
	ldrb r0, [r1]
	strb r0, [r2]
	strb r5, [r1]
	ldr r0, _0801234C  @ =0x0300005B
	strb r5, [r0]
_08012336:
	mov r0, #0
	bl sub_0801168C
	b _080123AC
	.byte 0x00
	.byte 0x00
_08012340:
	.4byte gUnknown_030012E8
_08012344:
	.4byte 0x03000059
_08012348:
	.4byte 0x03000058
_0801234C:
	.4byte 0x0300005B
_08012350:
	mov r0, #16
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _08012384
	ldr r2, _08012380  @ =0x0300005C
	ldrb r0, [r2]
	add r1, r0, #0
	cmp r1, #0
	bne _080123AC
	add r0, r0, #1
	strb r0, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _080123AC
_08012380:
	.4byte 0x0300005C
_08012384:
	mov r0, #32
	and r0, r0, r2
	cmp r0, #0
	beq _080123AC
	ldr r2, _080123B4  @ =0x0300005C
	ldrb r0, [r2]
	cmp r0, #0
	beq _080123AC
	sub r0, r0, #1
	strb r0, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_080123AC:
	add sp, sp, #16
	pop {r4,r5}
	pop {r0}
	bx r0
_080123B4:
	.4byte 0x0300005C
	THUMB_FUNC_END sub_08012230

	THUMB_FUNC_START main_menu_main
main_menu_main: @ 0x080123B8
	push {r4,r5,lr}
	sub sp, sp, #12
	bl sub_080331FC
	bl sub_08029C20
	ldr r0, _080123EC  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _080123D0
	bl sub_0801B310
_080123D0:
	ldr r0, _080123F0  @ =0x03000064
	ldrb r0, [r0]
	cmp r0, #20
	bls _08012418
	ldr r0, _080123F4  @ =0x0300005B
	ldrb r0, [r0]
	cmp r0, #1
	beq _08012408
	cmp r0, #1
	bgt _080123F8
	cmp r0, #0
	beq _08012402
	b _08012418
	.byte 0x00
	.byte 0x00
_080123EC:
	.4byte gUnknown_03000C28
_080123F0:
	.4byte 0x03000064
_080123F4:
	.4byte 0x0300005B
_080123F8:
	cmp r0, #2
	beq _0801240E
	cmp r0, #3
	beq _08012414
	b _08012418
_08012402:
	bl sub_08011768
	b _08012418
_08012408:
	bl sub_08011CB4
	b _08012418
_0801240E:
	bl sub_08011F60
	b _08012418
_08012414:
	bl sub_08012230
_08012418:
	ldr r4, _08012494  @ =0x0300005D
	ldrb r5, [r4]
	mov r0, #0
	bl sub_08038130
	ldr r0, _08012498  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012450
	mov r0, #0
	bl sub_08038228
	cmp r0, #0
	bne _0801243E
	ldr r0, _0801249C  @ =gUnknown_0807CA94
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _08012440
_0801243E:
	mov r0, #1
_08012440:
	strb r0, [r4]
	ldr r0, _080124A0  @ =0x03000062
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012450
	ldr r1, _08012494  @ =0x0300005D
	mov r0, #1
	strb r0, [r1]
_08012450:
	ldr r0, _08012494  @ =0x0300005D
	ldrb r1, [r0]
	cmp r5, r1
	beq _080124CC
	cmp r1, #0
	beq _080124AC
	ldr r0, _080124A4  @ =0x03000063
	ldrb r1, [r0]
	add r2, r0, #0
	cmp r1, #0
	bne _08012476
	ldr r0, _0801249C  @ =gUnknown_0807CA94
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	bne _08012476
	ldr r1, _080124A8  @ =0x03000058
	mov r0, #3
	strb r0, [r1]
_08012476:
	mov r0, #1
	strb r0, [r2]
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
	b _080124CC
	.byte 0x00
	.byte 0x00
_08012494:
	.4byte 0x0300005D
_08012498:
	.4byte gUnknown_03000C28
_0801249C:
	.4byte gUnknown_0807CA94
_080124A0:
	.4byte 0x03000062
_080124A4:
	.4byte 0x03000063
_080124A8:
	.4byte 0x03000058
_080124AC:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08012548  @ =0x03000058
	ldrb r0, [r1]
	cmp r0, #3
	bne _080124CC
	sub r0, r0, #1
	strb r0, [r1]
_080124CC:
	ldr r1, _0801254C  @ =0x03000064
	ldrb r0, [r1]
	cmp r0, #20
	bhi _080124D8
	add r0, r0, #1
	strb r0, [r1]
_080124D8:
	ldr r1, _08012550  @ =0x0300005E
	ldr r2, _08012554  @ =0x0300005F
	ldr r3, _08012558  @ =gUnknown_085FEFE4
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _0801250C
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #18
	blt _080124FC
	mov r0, #0
	strb r0, [r1]
_080124FC:
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1, #1]
	strb r0, [r2]
_0801250C:
	ldr r1, _0801255C  @ =0x03000060
	ldr r2, _08012560  @ =0x03000061
	ldr r3, _08012564  @ =gUnknown_08617030
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _08012540
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	blt _08012530
	mov r0, #0
	strb r0, [r1]
_08012530:
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1, #1]
	strb r0, [r2]
_08012540:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08012548:
	.4byte 0x03000058
_0801254C:
	.4byte 0x03000064
_08012550:
	.4byte 0x0300005E
_08012554:
	.4byte 0x0300005F
_08012558:
	.4byte gUnknown_085FEFE4
_0801255C:
	.4byte 0x03000060
_08012560:
	.4byte 0x03000061
_08012564:
	.4byte gUnknown_08617030
	THUMB_FUNC_END main_menu_main

	THUMB_FUNC_START sub_08012568
sub_08012568: @ 0x08012568
	push {r4-r7,lr}
	ldr r0, _08012578  @ =0x0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012580
	ldr r2, _0801257C  @ =gUnknown_080785E0
	b _08012582
	.byte 0x00
	.byte 0x00
_08012578:
	.4byte 0x0300005D
_0801257C:
	.4byte gUnknown_080785E0
_08012580:
	ldr r2, _080125B8  @ =gUnknown_080785B0
_08012582:
	ldr r3, _080125BC  @ =0x03000058
	ldrb r0, [r3]
	lsl r0, r0, #3
	add r1, r0, r2
	ldrh r7, [r1]
	add r2, r2, #4
	add r0, r0, r2
	ldrh r0, [r0]
	mov r12, r0
	ldrb r2, [r3]
	ldr r1, _080125C0  @ =gUnknown_08078900
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	cmp r2, #2
	bhi _080125C4
	ldrb r1, [r1, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080125C4
	mov r0, #1
	b _080125C6
_080125B8:
	.4byte gUnknown_080785B0
_080125BC:
	.4byte 0x03000058
_080125C0:
	.4byte gUnknown_08078900
_080125C4:
	mov r0, #0
_080125C6:
	ldr r1, _08012658  @ =0x040000D4
	ldr r0, _0801265C  @ =gUnknown_08606A1C
	str r0, [r1]
	ldr r5, _08012660  @ =0x03000040
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r6, _08012664  @ =gOamData
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08012668  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r0, _0801266C  @ =0x03000046
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _08012670  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _08012674  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #1]
	mov r4, #13
	neg r4, r4
	add r0, r4, #0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	lsl r1, r7, #16
	asr r1, r1, #16
	sub r1, r1, #8
	ldr r3, _08012678  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0801267C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, r12
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r0, [r1, #5]
	and r4, r4, r0
	mov r0, #8
	orr r4, r4, r0
	strb r4, [r1, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	pop {r4-r7}
	pop {r0}
	bx r0
_08012658:
	.4byte 0x040000D4
_0801265C:
	.4byte gUnknown_08606A1C
_08012660:
	.4byte 0x03000040
_08012664:
	.4byte gOamData
_08012668:
	.4byte 0x84000002
_0801266C:
	.4byte 0x03000046
_08012670:
	.4byte 0x000003FF
_08012674:
	.4byte 0xFFFFFC00
_08012678:
	.4byte 0x000001FF
_0801267C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08012568

	THUMB_FUNC_START sub_08012680
sub_08012680: @ 0x08012680
	push {r4-r7,lr}
	ldr r0, _08012690  @ =0x0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012698
	ldr r2, _08012694  @ =gUnknown_080785E0
	b _0801269A
	.byte 0x00
	.byte 0x00
_08012690:
	.4byte 0x0300005D
_08012694:
	.4byte gUnknown_080785E0
_08012698:
	ldr r2, _080126D0  @ =gUnknown_080785B0
_0801269A:
	ldr r3, _080126D4  @ =0x03000058
	ldrb r0, [r3]
	lsl r0, r0, #3
	add r1, r0, r2
	ldrh r7, [r1]
	add r2, r2, #4
	add r0, r0, r2
	ldrh r0, [r0]
	mov r12, r0
	ldrb r2, [r3]
	ldr r1, _080126D8  @ =gUnknown_08078900
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	cmp r2, #2
	bhi _080126DC
	ldrb r1, [r1, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080126DC
	mov r0, #1
	b _080126DE
_080126D0:
	.4byte gUnknown_080785B0
_080126D4:
	.4byte 0x03000058
_080126D8:
	.4byte gUnknown_08078900
_080126DC:
	mov r0, #0
_080126DE:
	ldr r1, _08012770  @ =0x040000D4
	ldr r0, _08012774  @ =gUnknown_085FB7DC
	str r0, [r1]
	ldr r5, _08012778  @ =0x03000040
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r6, _0801277C  @ =gOamData
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08012780  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r0, _08012784  @ =0x03000048
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _08012788  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _0801278C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #1]
	mov r4, #13
	neg r4, r4
	add r0, r4, #0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	lsl r1, r7, #16
	asr r1, r1, #16
	sub r1, r1, #8
	ldr r3, _08012790  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08012794  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, r12
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r0, [r1, #5]
	and r4, r4, r0
	mov r0, #8
	orr r4, r4, r0
	strb r4, [r1, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	pop {r4-r7}
	pop {r0}
	bx r0
_08012770:
	.4byte 0x040000D4
_08012774:
	.4byte gUnknown_085FB7DC
_08012778:
	.4byte 0x03000040
_0801277C:
	.4byte gOamData
_08012780:
	.4byte 0x84000002
_08012784:
	.4byte 0x03000048
_08012788:
	.4byte 0x000003FF
_0801278C:
	.4byte 0xFFFFFC00
_08012790:
	.4byte 0x000001FF
_08012794:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08012680

	THUMB_FUNC_START sub_08012798
sub_08012798: @ 0x08012798
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #8
	ldr r1, _080127B8  @ =gUnknown_080763CC
	mov r0, sp
	mov r2, #6
	bl memcpy
	ldr r0, _080127BC  @ =0x0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _080127C4
	ldr r2, _080127C0  @ =gUnknown_08078628
	b _080127C6
	.byte 0x00
	.byte 0x00
_080127B8:
	.4byte gUnknown_080763CC
_080127BC:
	.4byte 0x0300005D
_080127C0:
	.4byte gUnknown_08078628
_080127C4:
	ldr r2, _08012808  @ =gUnknown_08078610
_080127C6:
	ldr r3, _0801280C  @ =0x03000058
	ldrb r0, [r3]
	sub r0, r0, #6
	lsl r0, r0, #3
	add r1, r0, r2
	ldrh r7, [r1]
	add r2, r2, #4
	add r0, r0, r2
	ldrh r0, [r0]
	mov r12, r0
	ldrb r2, [r3]
	sub r0, r2, #6
	add r0, sp, r0
	ldrb r0, [r0]
	mov r8, r0
	ldr r1, _08012810  @ =gUnknown_08078900
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	cmp r2, #2
	bhi _08012814
	ldrb r1, [r1, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08012814
	mov r0, #1
	b _08012816
	.byte 0x00
	.byte 0x00
_08012808:
	.4byte gUnknown_08078610
_0801280C:
	.4byte 0x03000058
_08012810:
	.4byte gUnknown_08078900
_08012814:
	mov r0, #0
_08012816:
	ldr r1, _080128C4  @ =0x040000D4
	ldr r0, _080128C8  @ =gUnknown_085FF26C
	str r0, [r1]
	ldr r5, _080128CC  @ =0x03000040
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r6, _080128D0  @ =gOamData
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _080128D4  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r0, _080128D8  @ =0x0300004C
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _080128DC  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _080128E0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #1]
	mov r4, #13
	neg r4, r4
	add r0, r4, #0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	lsl r1, r7, #16
	asr r1, r1, #16
	sub r1, r1, #8
	ldr r3, _080128E4  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _080128E8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, r12
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	mov r0, r8
	lsl r3, r0, #4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r1, #5]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r0, [r1, #5]
	and r4, r4, r0
	mov r0, #8
	orr r4, r4, r0
	strb r4, [r1, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add sp, sp, #8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080128C4:
	.4byte 0x040000D4
_080128C8:
	.4byte gUnknown_085FF26C
_080128CC:
	.4byte 0x03000040
_080128D0:
	.4byte gOamData
_080128D4:
	.4byte 0x84000002
_080128D8:
	.4byte 0x0300004C
_080128DC:
	.4byte 0x000003FF
_080128E0:
	.4byte 0xFFFFFC00
_080128E4:
	.4byte 0x000001FF
_080128E8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08012798

	THUMB_FUNC_START sub_080128EC
sub_080128EC: @ 0x080128EC
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r1, _08012990  @ =gUnknown_080763D2
	mov r0, sp
	mov r2, #4
	bl memcpy
	ldr r1, _08012994  @ =0x040000D4
	ldr r0, _08012998  @ =gUnknown_0860FDCC
	str r0, [r1]
	ldr r5, _0801299C  @ =0x03000040
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r6, _080129A0  @ =gOamData
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _080129A4  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r0, _080129A8  @ =0x0300004A
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _080129AC  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _080129B0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #1]
	mov r4, #13
	neg r4, r4
	add r0, r4, #0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldr r0, _080129B4  @ =0x0300005C
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, sp, r0
	mov r3, #0
	ldrsh r1, [r0, r3]
	ldr r3, _080129B8  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _080129BC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, #81
	strb r1, [r0]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrb r1, [r0, #5]
	and r4, r4, r1
	strb r4, [r0, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08012990:
	.4byte gUnknown_080763D2
_08012994:
	.4byte 0x040000D4
_08012998:
	.4byte gUnknown_0860FDCC
_0801299C:
	.4byte 0x03000040
_080129A0:
	.4byte gOamData
_080129A4:
	.4byte 0x84000002
_080129A8:
	.4byte 0x0300004A
_080129AC:
	.4byte 0x000003FF
_080129B0:
	.4byte 0xFFFFFC00
_080129B4:
	.4byte 0x0300005C
_080129B8:
	.4byte 0x000001FF
_080129BC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080128EC

	THUMB_FUNC_START sub_080129C0
sub_080129C0: @ 0x080129C0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	ldr r1, _080129E4  @ =gUnknown_080763CC
	mov r0, sp
	mov r2, #6
	bl memcpy
	ldr r0, _080129E8  @ =0x0300005D
	ldrb r0, [r0]
	cmp r0, #0
	beq _080129F0
	ldr r2, _080129EC  @ =gUnknown_080785E0
	b _080129F2
	.byte 0x00
	.byte 0x00
_080129E4:
	.4byte gUnknown_080763CC
_080129E8:
	.4byte 0x0300005D
_080129EC:
	.4byte gUnknown_080785E0
_080129F0:
	ldr r2, _08012A30  @ =gUnknown_080785B0
_080129F2:
	ldr r3, _08012A34  @ =0x03000058
	ldrb r0, [r3]
	lsl r0, r0, #3
	add r1, r0, r2
	ldrh r5, [r1]
	add r2, r2, #4
	add r0, r0, r2
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldrb r1, [r3]
	mov r2, sp
	add r0, r2, r1
	ldrb r0, [r0]
	str r0, [sp, #12]
	ldr r2, _08012A38  @ =gUnknown_08078900
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r2, [r2]
	add r2, r2, r0
	cmp r1, #2
	bhi _08012A3C
	ldrb r1, [r2, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08012A3C
	mov r0, #1
	b _08012A3E
_08012A30:
	.4byte gUnknown_080785B0
_08012A34:
	.4byte 0x03000058
_08012A38:
	.4byte gUnknown_08078900
_08012A3C:
	mov r0, #0
_08012A3E:
	cmp r0, #0
	bne _08012A44
	b _08012BA0
_08012A44:
	ldr r0, _08012B70  @ =0x040000D4
	mov r12, r0
	ldr r0, _08012B74  @ =gUnknown_0860C33C
	mov r1, r12
	str r0, [r1]
	ldr r3, _08012B78  @ =0x03000040
	ldrh r0, [r3]
	lsl r0, r0, #3
	ldr r2, _08012B7C  @ =gOamData
	mov r9, r2
	add r0, r0, r9
	str r0, [r1, #4]
	ldr r0, _08012B80  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r3]
	lsl r2, r2, #3
	add r2, r2, r9
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	ldr r0, _08012B84  @ =0x03000042
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r0, _08012B88  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08012B8C  @ =0xFFFFFC00
	mov r10, r0
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #1]
	mov r7, #13
	neg r7, r7
	add r0, r7, #0
	and r0, r0, r2
	mov r2, #4
	orr r0, r0, r2
	strb r0, [r1, #1]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	lsl r5, r5, #16
	mov r8, r5
	mov r0, r8
	asr r0, r0, #16
	mov r8, r0
	sub r2, r2, #12
	add r8, r8, r2
	ldr r2, _08012B90  @ =0x000001FF
	add r0, r2, #0
	mov r2, r8
	and r2, r2, r0
	mov r8, r2
	ldrh r2, [r1, #2]
	ldr r6, _08012B94  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldr r1, [sp, #8]
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldr r0, [sp, #12]
	lsl r0, r0, #4
	str r0, [sp, #16]
	ldrb r2, [r1, #5]
	mov r5, #15
	add r0, r5, #0
	and r0, r0, r2
	ldr r2, [sp, #16]
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #5]
	add r0, r7, #0
	and r0, r0, r2
	mov r2, #8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldr r0, _08012B98  @ =gUnknown_0860A4AC
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	str r0, [r1, #4]
	ldr r2, _08012B80  @ =0x84000002
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrh r4, [r1, #4]
	lsl r0, r4, #22
	ldr r2, _08012B9C  @ =0x03000044
	lsr r0, r0, #22
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r2, _08012B88  @ =0x000003FF
	and r0, r0, r2
	mov r2, r10
	and r2, r2, r4
	orr r2, r2, r0
	strh r2, [r1, #4]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #1]
	add r0, r7, #0
	and r0, r0, r2
	mov r2, #4
	orr r0, r0, r2
	strb r0, [r1, #1]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldrh r1, [r0, #2]
	and r6, r6, r1
	mov r1, r8
	orr r6, r6, r1
	strh r6, [r0, #2]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldr r1, [sp, #8]
	add r1, r1, #56
	strb r1, [r0]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldrb r1, [r0, #5]
	and r5, r5, r1
	ldr r2, [sp, #16]
	b _08012CC8
_08012B70:
	.4byte 0x040000D4
_08012B74:
	.4byte gUnknown_0860C33C
_08012B78:
	.4byte 0x03000040
_08012B7C:
	.4byte gOamData
_08012B80:
	.4byte 0x84000002
_08012B84:
	.4byte 0x03000042
_08012B88:
	.4byte 0x000003FF
_08012B8C:
	.4byte 0xFFFFFC00
_08012B90:
	.4byte 0x000001FF
_08012B94:
	.4byte 0xFFFFFE00
_08012B98:
	.4byte gUnknown_0860A4AC
_08012B9C:
	.4byte 0x03000044
_08012BA0:
	ldr r2, _08012CF4  @ =0x040000D4
	mov r12, r2
	ldr r0, _08012CF8  @ =gUnknown_08602F8C
	str r0, [r2]
	ldr r3, _08012CFC  @ =0x03000040
	ldrh r0, [r3]
	lsl r0, r0, #3
	ldr r1, _08012D00  @ =gOamData
	mov r9, r1
	add r0, r0, r9
	str r0, [r2, #4]
	ldr r0, _08012D04  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r3]
	lsl r2, r2, #3
	add r2, r2, r9
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	ldr r0, _08012D08  @ =0x03000042
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r0, _08012D0C  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08012D10  @ =0xFFFFFC00
	mov r10, r0
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #1]
	mov r7, #13
	neg r7, r7
	add r0, r7, #0
	and r0, r0, r2
	mov r2, #4
	orr r0, r0, r2
	strb r0, [r1, #1]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	lsl r5, r5, #16
	mov r8, r5
	mov r0, r8
	asr r0, r0, #16
	mov r8, r0
	sub r2, r2, #12
	add r8, r8, r2
	ldr r2, _08012D14  @ =0x000001FF
	add r0, r2, #0
	mov r2, r8
	and r2, r2, r0
	mov r8, r2
	ldrh r2, [r1, #2]
	ldr r6, _08012D18  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldr r1, [sp, #8]
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldr r0, [sp, #12]
	lsl r0, r0, #4
	str r0, [sp, #20]
	ldrb r2, [r1, #5]
	mov r5, #15
	add r0, r5, #0
	and r0, r0, r2
	ldr r2, [sp, #20]
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #5]
	add r0, r7, #0
	and r0, r0, r2
	mov r2, #8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldr r0, _08012D1C  @ =gUnknown_086010FC
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	str r0, [r1, #4]
	ldr r2, _08012D04  @ =0x84000002
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrh r4, [r1, #4]
	lsl r0, r4, #22
	ldr r2, _08012D20  @ =0x03000044
	lsr r0, r0, #22
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r2, _08012D0C  @ =0x000003FF
	and r0, r0, r2
	mov r2, r10
	and r2, r2, r4
	orr r2, r2, r0
	strh r2, [r1, #4]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #1]
	add r0, r7, #0
	and r0, r0, r2
	mov r2, #4
	orr r0, r0, r2
	strb r0, [r1, #1]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldrh r1, [r0, #2]
	and r6, r6, r1
	mov r1, r8
	orr r6, r6, r1
	strh r6, [r0, #2]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldr r1, [sp, #8]
	add r1, r1, #56
	strb r1, [r0]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldrb r1, [r0, #5]
	and r5, r5, r1
	ldr r2, [sp, #20]
_08012CC8:
	orr r5, r5, r2
	strb r5, [r0, #5]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r9
	ldrb r1, [r0, #5]
	add r2, r7, #0
	and r2, r2, r1
	mov r1, #8
	orr r2, r2, r1
	strb r2, [r0, #5]
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08012CF4:
	.4byte 0x040000D4
_08012CF8:
	.4byte gUnknown_08602F8C
_08012CFC:
	.4byte 0x03000040
_08012D00:
	.4byte gOamData
_08012D04:
	.4byte 0x84000002
_08012D08:
	.4byte 0x03000042
_08012D0C:
	.4byte 0x000003FF
_08012D10:
	.4byte 0xFFFFFC00
_08012D14:
	.4byte 0x000001FF
_08012D18:
	.4byte 0xFFFFFE00
_08012D1C:
	.4byte gUnknown_086010FC
_08012D20:
	.4byte 0x03000044
	THUMB_FUNC_END sub_080129C0

	THUMB_FUNC_START sub_08012D24
sub_08012D24: @ 0x08012D24
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, _08012DD0  @ =0x040000D4
	ldr r7, _08012DD4  @ =gUnknown_08615C04
	str r7, [r1]
	ldr r3, _08012DD8  @ =gUnknown_0300192C
	ldrh r0, [r3]
	ldr r2, _08012DDC  @ =0x06010000
	mov r8, r2
	add r0, r0, r8
	str r0, [r1, #4]
	ldr r0, _08012DE0  @ =0x84000200
	mov r12, r0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08012DE4  @ =0x0300004E
	ldr r2, _08012DE8  @ =gUnknown_03001930
	mov r10, r2
	ldrh r4, [r2]
	strh r4, [r0]
	add r5, r4, #0
	add r5, r5, #64
	ldrh r6, [r3]
	mov r0, #128
	lsl r0, r0, #4
	mov r9, r0
	mov r0, r9
	add r2, r6, r0
	strh r2, [r3]
	ldr r0, _08012DEC  @ =gUnknown_08615BB4
	add r0, r0, #36
	ldrb r0, [r0]
	lsl r0, r0, #11
	add r0, r0, r7
	str r0, [r1]
	ldrh r0, [r3]
	add r0, r0, r8
	str r0, [r1, #4]
	mov r0, r12
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08012DF0  @ =0x03000050
	strh r5, [r0]
	add r5, r5, #64
	add r2, r2, r9
	strh r2, [r3]
	ldr r0, _08012DF4  @ =gUnknown_08614764
	str r0, [r1]
	ldrh r0, [r3]
	add r0, r0, r8
	str r0, [r1, #4]
	ldr r0, _08012DF8  @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08012DFC  @ =0x03000052
	strh r5, [r0]
	add r4, r4, #160
	mov r1, r10
	strh r4, [r1]
	mov r2, #160
	lsl r2, r2, #5
	add r6, r6, r2
	strh r6, [r3]
	ldr r4, _08012E00  @ =0x03000058
	ldrb r2, [r4]
	ldr r1, _08012E04  @ =gUnknown_08078900
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	add r7, r3, #0
	cmp r2, #2
	bhi _08012E08
	ldrb r1, [r1, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08012E08
	mov r0, #1
	b _08012E0A
_08012DD0:
	.4byte 0x040000D4
_08012DD4:
	.4byte gUnknown_08615C04
_08012DD8:
	.4byte gUnknown_0300192C
_08012DDC:
	.4byte 0x06010000
_08012DE0:
	.4byte 0x84000200
_08012DE4:
	.4byte 0x0300004E
_08012DE8:
	.4byte gUnknown_03001930
_08012DEC:
	.4byte gUnknown_08615BB4
_08012DF0:
	.4byte 0x03000050
_08012DF4:
	.4byte gUnknown_08614764
_08012DF8:
	.4byte 0x84000100
_08012DFC:
	.4byte 0x03000052
_08012E00:
	.4byte 0x03000058
_08012E04:
	.4byte gUnknown_08078900
_08012E08:
	mov r0, #0
_08012E0A:
	cmp r0, #0
	bne _08012E14
	ldrb r0, [r4]
	cmp r0, #3
	bne _08012E94
_08012E14:
	ldr r2, _08012E6C  @ =0x040000D4
	ldr r3, _08012E70  @ =gUnknown_0860C0B4
	ldr r6, _08012E74  @ =0x0300005E
	ldrb r1, [r6]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08012E78  @ =gUnknown_0860C344
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r3, _08012E7C  @ =0x06010000
	mov r9, r3
	add r0, r0, r9
	str r0, [r2, #4]
	ldr r0, _08012E80  @ =0x84000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08012E84  @ =0x03000042
	ldr r1, _08012E88  @ =gUnknown_03001930
	ldrh r3, [r1]
	strh r3, [r0]
	mov r0, #64
	add r0, r0, r3
	mov r8, r0
	strh r0, [r1]
	ldrh r4, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r4, r1
	strh r0, [r7]
	ldr r5, _08012E8C  @ =gUnknown_0860A224
	ldrb r1, [r6]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _08012E90  @ =gUnknown_0860A4B4
	b _08012EEA
_08012E6C:
	.4byte 0x040000D4
_08012E70:
	.4byte gUnknown_0860C0B4
_08012E74:
	.4byte 0x0300005E
_08012E78:
	.4byte gUnknown_0860C344
_08012E7C:
	.4byte 0x06010000
_08012E80:
	.4byte 0x84000200
_08012E84:
	.4byte 0x03000042
_08012E88:
	.4byte gUnknown_03001930
_08012E8C:
	.4byte gUnknown_0860A224
_08012E90:
	.4byte gUnknown_0860A4B4
_08012E94:
	ldr r2, _0801307C  @ =0x040000D4
	ldr r3, _08013080  @ =gUnknown_08602D04
	ldr r6, _08013084  @ =0x0300005E
	ldrb r1, [r6]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08013088  @ =gUnknown_08602F94
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r3, _0801308C  @ =0x06010000
	mov r9, r3
	add r0, r0, r9
	str r0, [r2, #4]
	ldr r0, _08013090  @ =0x84000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08013094  @ =0x03000042
	ldr r1, _08013098  @ =gUnknown_03001930
	ldrh r3, [r1]
	strh r3, [r0]
	mov r0, #64
	add r0, r0, r3
	mov r8, r0
	strh r0, [r1]
	ldrh r4, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r4, r1
	strh r0, [r7]
	ldr r5, _0801309C  @ =gUnknown_08600E74
	ldrb r1, [r6]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080130A0  @ =gUnknown_08601104
_08012EEA:
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	add r0, r0, r9
	str r0, [r2, #4]
	ldr r0, _080130A4  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080130A8  @ =0x03000044
	mov r2, r8
	strh r2, [r0]
	add r3, r3, #96
	ldr r0, _08013098  @ =gUnknown_03001930
	strh r3, [r0]
	mov r1, #192
	lsl r1, r1, #4
	add r4, r4, r1
	strh r4, [r7]
	ldr r2, _0801307C  @ =0x040000D4
	ldr r3, _080130AC  @ =gUnknown_08606794
	ldr r0, _08013084  @ =0x0300005E
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _080130B0  @ =gUnknown_08606A24
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r1, _0801308C  @ =0x06010000
	mov r10, r1
	add r0, r0, r10
	str r0, [r2, #4]
	ldr r3, _08013090  @ =0x84000200
	mov r9, r3
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080130B4  @ =0x03000046
	ldr r1, _08013098  @ =gUnknown_03001930
	ldrh r1, [r1]
	mov r12, r1
	strh r1, [r0]
	mov r5, r12
	add r5, r5, #64
	ldr r3, _08013098  @ =gUnknown_03001930
	strh r5, [r3]
	ldrh r6, [r7]
	mov r0, #128
	lsl r0, r0, #4
	mov r8, r0
	mov r1, r8
	add r3, r6, r1
	strh r3, [r7]
	ldr r4, _080130B8  @ =gUnknown_085FB554
	ldr r0, _08013084  @ =0x0300005E
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _080130BC  @ =gUnknown_085FB7E4
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	add r0, r0, r10
	str r0, [r2, #4]
	mov r1, r9
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080130C0  @ =0x03000048
	strh r5, [r0]
	add r5, r5, #64
	ldr r0, _08013098  @ =gUnknown_03001930
	strh r5, [r0]
	add r3, r3, r8
	strh r3, [r7]
	ldr r3, _080130C4  @ =gUnknown_085FEFE4
	ldr r0, _08013084  @ =0x0300005E
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080130C8  @ =gUnknown_085FF274
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	add r0, r0, r10
	str r0, [r2, #4]
	ldr r1, _080130A4  @ =0x84000100
	mov r8, r1
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080130CC  @ =0x0300004C
	strh r5, [r0]
	mov r4, r12
	add r4, r4, #160
	ldr r3, _08013098  @ =gUnknown_03001930
	strh r4, [r3]
	mov r1, #160
	lsl r1, r1, #5
	add r0, r6, r1
	strh r0, [r7]
	ldr r3, _080130D0  @ =gUnknown_0860FB44
	ldr r0, _08013084  @ =0x0300005E
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080130D4  @ =gUnknown_0860FDD4
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	add r0, r0, r10
	str r0, [r2, #4]
	mov r1, r8
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080130D8  @ =0x0300004A
	strh r4, [r0]
	add r4, r4, #32
	ldr r3, _08013098  @ =gUnknown_03001930
	strh r4, [r3]
	mov r1, #192
	lsl r1, r1, #5
	add r0, r6, r1
	strh r0, [r7]
	ldr r3, _080130DC  @ =gUnknown_08617030
	ldr r0, _080130E0  @ =0x03000060
	mov r9, r0
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _080130E4  @ =gUnknown_08617080
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	add r0, r0, r10
	str r0, [r2, #4]
	ldr r1, _080130E8  @ =0x84000020
	mov r8, r1
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r5, _080130EC  @ =0x03000054
	strh r4, [r5]
	add r4, r4, #4
	ldr r3, _08013098  @ =gUnknown_03001930
	strh r4, [r3]
	mov r1, #196
	lsl r1, r1, #5
	add r0, r6, r1
	strh r0, [r7]
	ldr r3, _080130F0  @ =gUnknown_08618064
	mov r0, r9
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _080130F4  @ =gUnknown_086180B4
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	add r0, r0, r10
	str r0, [r2, #4]
	mov r1, r8
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	strh r4, [r5, #2]
	mov r0, r12
	add r0, r0, #200
	ldr r2, _08013098  @ =gUnknown_03001930
	strh r0, [r2]
	mov r3, #200
	lsl r3, r3, #5
	add r6, r6, r3
	strh r6, [r7]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801307C:
	.4byte 0x040000D4
_08013080:
	.4byte gUnknown_08602D04
_08013084:
	.4byte 0x0300005E
_08013088:
	.4byte gUnknown_08602F94
_0801308C:
	.4byte 0x06010000
_08013090:
	.4byte 0x84000200
_08013094:
	.4byte 0x03000042
_08013098:
	.4byte gUnknown_03001930
_0801309C:
	.4byte gUnknown_08600E74
_080130A0:
	.4byte gUnknown_08601104
_080130A4:
	.4byte 0x84000100
_080130A8:
	.4byte 0x03000044
_080130AC:
	.4byte gUnknown_08606794
_080130B0:
	.4byte gUnknown_08606A24
_080130B4:
	.4byte 0x03000046
_080130B8:
	.4byte gUnknown_085FB554
_080130BC:
	.4byte gUnknown_085FB7E4
_080130C0:
	.4byte 0x03000048
_080130C4:
	.4byte gUnknown_085FEFE4
_080130C8:
	.4byte gUnknown_085FF274
_080130CC:
	.4byte 0x0300004C
_080130D0:
	.4byte gUnknown_0860FB44
_080130D4:
	.4byte gUnknown_0860FDD4
_080130D8:
	.4byte 0x0300004A
_080130DC:
	.4byte gUnknown_08617030
_080130E0:
	.4byte 0x03000060
_080130E4:
	.4byte gUnknown_08617080
_080130E8:
	.4byte 0x84000020
_080130EC:
	.4byte 0x03000054
_080130F0:
	.4byte gUnknown_08618064
_080130F4:
	.4byte gUnknown_086180B4
	THUMB_FUNC_END sub_08012D24

	THUMB_FUNC_START sub_080130F8
sub_080130F8: @ 0x080130F8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	ldr r4, [sp, #44]
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r9, r3
	lsl r4, r4, #24
	lsr r4, r4, #24
	str r4, [sp, #4]
	sub r1, r2, #1
	lsl r1, r1, #3
	add r0, r0, r1
	cmp r2, #0
	beq _08013216
	ldr r5, _08013228  @ =0x040000D4
	ldr r4, _0801322C  @ =0x03000040
	ldr r6, _08013230  @ =gOamData
	mov r8, r0
	ldr r0, _08013234  @ =gUnknown_03001930
	mov r10, r0
	str r2, [sp, #8]
_08013138:
	mov r0, r9
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #11
	ldr r1, _08013238  @ =gUnknown_08617F24
	add r0, r0, r1
	str r0, [r5]
	ldr r1, _0801323C  @ =gUnknown_0300192C
	ldrh r0, [r1]
	ldr r2, _08013240  @ =0x06010000
	add r0, r0, r2
	str r0, [r5, #4]
	ldr r0, _08013244  @ =0x84000008
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08013248  @ =gUnknown_08617F1C
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0801324C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r7, r10
	ldrh r7, [r7]
	add r0, r0, r7
	ldr r7, _08013250  @ =0x000003FF
	add r1, r7, #0
	and r0, r0, r1
	ldr r7, _08013254  @ =0xFFFFFC00
	add r1, r7, #0
	and r2, r2, r1
	orr r2, r2, r0
	strh r2, [r3, #4]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r1, _08013258  @ =0x000001FF
	add r0, r1, #0
	mov r2, r8
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r7, _0801325C  @ =0xFFFFFE00
	add r1, r7, #0
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r3, [r2, #5]
	lsr r1, r3, #4
	ldr r7, [sp, #4]
	add r1, r1, r7
	lsl r1, r1, #4
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r0, r3, #0
	and r1, r1, r0
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _0801323C  @ =gUnknown_0300192C
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, r9
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	mov r2, #5
	neg r2, r2
	add r8, r8, r2
	ldr r3, [sp, #8]
	sub r3, r3, #1
	str r3, [sp, #8]
	cmp r3, #0
	bne _08013138
_08013216:
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
_08013228:
	.4byte 0x040000D4
_0801322C:
	.4byte 0x03000040
_08013230:
	.4byte gOamData
_08013234:
	.4byte gUnknown_03001930
_08013238:
	.4byte gUnknown_08617F24
_0801323C:
	.4byte gUnknown_0300192C
_08013240:
	.4byte 0x06010000
_08013244:
	.4byte 0x84000008
_08013248:
	.4byte gUnknown_08617F1C
_0801324C:
	.4byte 0x84000002
_08013250:
	.4byte 0x000003FF
_08013254:
	.4byte 0xFFFFFC00
_08013258:
	.4byte 0x000001FF
_0801325C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080130F8

	THUMB_FUNC_START sub_08013260
sub_08013260: @ 0x08013260
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	ldr r4, [sp, #48]
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r9, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r8, r3
	lsl r4, r4, #24
	lsr r4, r4, #24
	str r4, [sp, #4]
	mov r1, r9
	sub r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #12]
	cmp r0, r9
	bge _0801338A
	ldr r5, _0801339C  @ =0x040000D4
	ldr r4, _080133A0  @ =0x03000040
	ldr r6, _080133A4  @ =gOamData
	ldr r1, _080133A8  @ =gUnknown_03001930
	mov r10, r1
_080132A6:
	mov r0, r8
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #10
	ldr r1, _080133AC  @ =gUnknown_086172F0
	add r0, r0, r1
	str r0, [r5]
	ldr r2, _080133B0  @ =gUnknown_0300192C
	ldrh r0, [r2]
	ldr r3, _080133B4  @ =0x06010000
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _080133B8  @ =0x84000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _080133BC  @ =gUnknown_086172E8
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _080133C0  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r7, r10
	ldrh r7, [r7]
	add r0, r0, r7
	ldr r1, _080133C4  @ =0x000003FF
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	ldr r1, _080133C8  @ =0xFFFFFC00
	mov r12, r1
	mov r7, r12
	and r2, r2, r7
	orr r2, r2, r0
	strh r2, [r3, #4]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #12]
	lsl r2, r0, #3
	ldr r1, [sp, #8]
	sub r2, r1, r2
	ldr r7, _080133CC  @ =0x000001FF
	add r0, r7, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _080133D0  @ =0xFFFFFE00
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r3, [r2, #5]
	lsr r1, r3, #4
	ldr r7, [sp, #4]
	add r1, r1, r7
	lsl r1, r1, #4
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r0, r3, #0
	and r1, r1, r0
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #2
	strh r0, [r7]
	ldr r1, _080133B0  @ =gUnknown_0300192C
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, r8
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r2, [sp, #12]
	add r2, r2, #1
	str r2, [sp, #12]
	cmp r2, r9
	blt _080132A6
_0801338A:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801339C:
	.4byte 0x040000D4
_080133A0:
	.4byte 0x03000040
_080133A4:
	.4byte gOamData
_080133A8:
	.4byte gUnknown_03001930
_080133AC:
	.4byte gUnknown_086172F0
_080133B0:
	.4byte gUnknown_0300192C
_080133B4:
	.4byte 0x06010000
_080133B8:
	.4byte 0x84000010
_080133BC:
	.4byte gUnknown_086172E8
_080133C0:
	.4byte 0x84000002
_080133C4:
	.4byte 0x000003FF
_080133C8:
	.4byte 0xFFFFFC00
_080133CC:
	.4byte 0x000001FF
_080133D0:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08013260

	THUMB_FUNC_START sub_080133D4
sub_080133D4: @ 0x080133D4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	ldr r4, [sp, #48]
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r9, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r8, r3
	lsl r4, r4, #24
	lsr r4, r4, #24
	str r4, [sp, #4]
	mov r1, r9
	sub r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #12]
	cmp r0, r9
	bge _080134FE
	ldr r5, _08013510  @ =0x040000D4
	ldr r4, _08013514  @ =0x03000040
	ldr r6, _08013518  @ =gOamData
	ldr r1, _0801351C  @ =gUnknown_03001930
	mov r10, r1
_0801341A:
	mov r0, r8
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #11
	ldr r1, _08013520  @ =gUnknown_08617B04
	add r0, r0, r1
	str r0, [r5]
	ldr r2, _08013524  @ =gUnknown_0300192C
	ldrh r0, [r2]
	ldr r3, _08013528  @ =0x06010000
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _0801352C  @ =0x84000008
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08013530  @ =gUnknown_08617AFC
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _08013534  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r7, r10
	ldrh r7, [r7]
	add r0, r0, r7
	ldr r1, _08013538  @ =0x000003FF
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	ldr r1, _0801353C  @ =0xFFFFFC00
	mov r12, r1
	mov r7, r12
	and r2, r2, r7
	orr r2, r2, r0
	strh r2, [r3, #4]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #12]
	lsl r2, r0, #3
	ldr r1, [sp, #8]
	sub r2, r1, r2
	ldr r7, _08013540  @ =0x000001FF
	add r0, r7, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _08013544  @ =0xFFFFFE00
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r3, [r2, #5]
	lsr r1, r3, #4
	ldr r7, [sp, #4]
	add r1, r1, r7
	lsl r1, r1, #4
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r0, r3, #0
	and r1, r1, r0
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _08013524  @ =gUnknown_0300192C
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, r8
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r2, [sp, #12]
	add r2, r2, #1
	str r2, [sp, #12]
	cmp r2, r9
	blt _0801341A
_080134FE:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08013510:
	.4byte 0x040000D4
_08013514:
	.4byte 0x03000040
_08013518:
	.4byte gOamData
_0801351C:
	.4byte gUnknown_03001930
_08013520:
	.4byte gUnknown_08617B04
_08013524:
	.4byte gUnknown_0300192C
_08013528:
	.4byte 0x06010000
_0801352C:
	.4byte 0x84000008
_08013530:
	.4byte gUnknown_08617AFC
_08013534:
	.4byte 0x84000002
_08013538:
	.4byte 0x000003FF
_0801353C:
	.4byte 0xFFFFFC00
_08013540:
	.4byte 0x000001FF
_08013544:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080133D4

	THUMB_FUNC_START sub_08013548
sub_08013548: @ 0x08013548
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r9, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r8, r3
	mov r1, r9
	sub r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	cmp r0, r9
	bge _08013652
	ldr r4, _08013664  @ =0x040000D4
	ldr r5, _08013668  @ =0x03000040
	ldr r6, _0801366C  @ =gOamData
	ldr r1, _08013670  @ =gUnknown_03001930
	mov r10, r1
_08013586:
	mov r0, r8
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #11
	ldr r1, _08013674  @ =gUnknown_08617830
	add r0, r0, r1
	str r0, [r4]
	ldr r2, _08013678  @ =gUnknown_0300192C
	ldrh r0, [r2]
	ldr r3, _0801367C  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _08013680  @ =0x84000008
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08013684  @ =gUnknown_08617828
	str r0, [r4]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r4, #4]
	ldr r0, _08013688  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r7, r10
	ldrh r7, [r7]
	add r0, r0, r7
	ldr r1, _0801368C  @ =0x000003FF
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	ldr r1, _08013690  @ =0xFFFFFC00
	mov r12, r1
	mov r7, r12
	and r2, r2, r7
	orr r2, r2, r0
	strh r2, [r3, #4]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #8]
	lsl r2, r0, #3
	ldr r1, [sp, #4]
	sub r2, r1, r2
	ldr r7, _08013694  @ =0x000001FF
	add r0, r7, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _08013698  @ =0xFFFFFE00
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r0, r3, #0
	and r1, r1, r0
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _08013678  @ =gUnknown_0300192C
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, r8
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r2, [sp, #8]
	add r2, r2, #1
	str r2, [sp, #8]
	cmp r2, r9
	blt _08013586
_08013652:
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
_08013664:
	.4byte 0x040000D4
_08013668:
	.4byte 0x03000040
_0801366C:
	.4byte gOamData
_08013670:
	.4byte gUnknown_03001930
_08013674:
	.4byte gUnknown_08617830
_08013678:
	.4byte gUnknown_0300192C
_0801367C:
	.4byte 0x06010000
_08013680:
	.4byte 0x84000008
_08013684:
	.4byte gUnknown_08617828
_08013688:
	.4byte 0x84000002
_0801368C:
	.4byte 0x000003FF
_08013690:
	.4byte 0xFFFFFC00
_08013694:
	.4byte 0x000001FF
_08013698:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08013548

	THUMB_FUNC_START sub_0801369C
sub_0801369C: @ 0x0801369C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r6, [sp, #32]
	ldr r4, [sp, #36]
	mov r10, r4
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r7, r10
	lsl r7, r7, #16
	mov r10, r7
	ldr r5, _08013780  @ =0x040000D4
	ldr r4, [r0, #16]
	str r4, [r5]
	ldr r4, _08013784  @ =0x03000040
	mov r9, r4
	ldrh r4, [r4]
	lsl r4, r4, #3
	ldr r7, _08013788  @ =gOamData
	mov r12, r7
	add r4, r4, r12
	str r4, [r5, #4]
	ldr r4, _0801378C  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	mov r4, r9
	ldrh r5, [r4]
	lsl r5, r5, #3
	add r5, r5, r12
	ldrh r7, [r5, #4]
	mov r8, r7
	mov r7, r8
	lsl r4, r7, #22
	lsr r4, r4, #22
	add r1, r1, r4
	ldr r7, _08013790  @ =0x000003FF
	add r4, r7, #0
	and r1, r1, r4
	ldr r4, _08013794  @ =0xFFFFFC00
	mov r7, r8
	and r4, r4, r7
	orr r4, r4, r1
	strh r4, [r5, #4]
	mov r1, r9
	ldrh r4, [r1]
	lsl r4, r4, #3
	add r4, r4, r12
	lsl r3, r3, #4
	ldrb r5, [r4, #5]
	mov r1, #15
	and r1, r1, r5
	orr r1, r1, r3
	strb r1, [r4, #5]
	mov r7, r9
	ldrh r4, [r7]
	lsl r4, r4, #3
	add r4, r4, r12
	lsl r6, r6, #16
	asr r6, r6, #16
	ldr r1, [r0, #12]
	lsl r3, r2, #3
	add r3, r3, r2
	lsl r3, r3, #2
	add r1, r3, r1
	ldrb r1, [r1, #2]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r6, r6, r1
	ldr r2, _08013798  @ =0x000001FF
	add r1, r2, #0
	and r6, r6, r1
	ldrh r2, [r4, #2]
	ldr r1, _0801379C  @ =0xFFFFFE00
	and r1, r1, r2
	orr r1, r1, r6
	strh r1, [r4, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r0, [r0, #12]
	add r3, r3, r0
	mov r4, r10
	lsr r4, r4, #16
	mov r10, r4
	ldrb r3, [r3, #3]
	add r10, r10, r3
	mov r7, r10
	strb r7, [r1]
	mov r0, r9
	ldrh r2, [r0]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08013780:
	.4byte 0x040000D4
_08013784:
	.4byte 0x03000040
_08013788:
	.4byte gOamData
_0801378C:
	.4byte 0x84000002
_08013790:
	.4byte 0x000003FF
_08013794:
	.4byte 0xFFFFFC00
_08013798:
	.4byte 0x000001FF
_0801379C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0801369C

	THUMB_FUNC_START sub_080137A0
sub_080137A0: @ 0x080137A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r4, [sp, #36]
	mov r9, r4
	ldr r6, [sp, #40]
	str r6, [sp]
	ldr r4, [sp, #44]
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r6, r9
	lsl r6, r6, #24
	lsr r6, r6, #24
	mov r9, r6
	lsl r4, r4, #16
	mov r12, r4
	ldr r5, _080138B0  @ =0x040000D4
	ldr r4, [r0, #16]
	str r4, [r5]
	ldr r6, _080138B4  @ =0x03000040
	mov r10, r6
	ldrh r4, [r6]
	lsl r4, r4, #3
	ldr r7, _080138B8  @ =gOamData
	add r4, r4, r7
	str r4, [r5, #4]
	ldr r4, _080138BC  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	ldrh r5, [r6]
	lsl r5, r5, #3
	add r5, r5, r7
	ldrh r4, [r5, #4]
	mov r8, r4
	mov r6, r8
	lsl r4, r6, #22
	lsr r4, r4, #22
	add r1, r1, r4
	ldr r6, _080138C0  @ =0x000003FF
	add r4, r6, #0
	and r1, r1, r4
	ldr r4, _080138C4  @ =0xFFFFFC00
	mov r6, r8
	and r4, r4, r6
	orr r4, r4, r1
	strh r4, [r5, #4]
	mov r1, r10
	ldrh r4, [r1]
	lsl r4, r4, #3
	add r4, r4, r7
	lsl r3, r3, #4
	ldrb r5, [r4, #5]
	mov r1, #15
	and r1, r1, r5
	orr r1, r1, r3
	strb r1, [r4, #5]
	mov r6, r10
	ldrh r4, [r6]
	lsl r4, r4, #3
	add r4, r4, r7
	ldr r1, [sp]
	lsl r6, r1, #16
	asr r6, r6, #16
	ldr r1, [r0, #12]
	lsl r3, r2, #3
	add r3, r3, r2
	lsl r3, r3, #2
	add r1, r3, r1
	ldrb r1, [r1, #2]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r6, r6, r1
	ldr r2, _080138C8  @ =0x000001FF
	add r1, r2, #0
	and r6, r6, r1
	ldrh r2, [r4, #2]
	ldr r1, _080138CC  @ =0xFFFFFE00
	and r1, r1, r2
	orr r1, r1, r6
	strh r1, [r4, #2]
	mov r4, r10
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r0, [r0, #12]
	add r3, r3, r0
	mov r6, r12
	lsr r6, r6, #16
	mov r12, r6
	ldrb r3, [r3, #3]
	add r12, r12, r3
	mov r0, r12
	strb r0, [r1]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	mov r0, #1
	mov r2, r9
	and r2, r2, r0
	lsl r2, r2, #4
	mov r9, r2
	ldrb r2, [r1, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r2
	mov r4, r9
	orr r0, r0, r4
	strb r0, [r1, #3]
	mov r6, r10
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
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
_080138B0:
	.4byte 0x040000D4
_080138B4:
	.4byte 0x03000040
_080138B8:
	.4byte gOamData
_080138BC:
	.4byte 0x84000002
_080138C0:
	.4byte 0x000003FF
_080138C4:
	.4byte 0xFFFFFC00
_080138C8:
	.4byte 0x000001FF
_080138CC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080137A0

	THUMB_FUNC_START sub_080138D0
sub_080138D0: @ 0x080138D0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r7, r0, #0
	str r3, [sp]
	ldr r0, [sp, #36]
	mov r8, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r3, r8
	lsl r3, r3, #16
	mov r8, r3
	ldr r4, _080139C8  @ =0x040000D4
	ldr r0, [r7, #12]
	lsl r5, r1, #3
	add r5, r5, r1
	lsl r5, r5, #2
	add r0, r5, r0
	ldrb r1, [r0]
	ldrh r0, [r7, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r7, #20]
	add r0, r0, r1
	str r0, [r4]
	ldr r1, _080139CC  @ =gUnknown_0300192C
	ldrh r0, [r1]
	ldr r1, _080139D0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldrh r0, [r7, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r7, #16]
	str r0, [r4]
	ldr r3, _080139D4  @ =0x03000040
	mov r10, r3
	ldrh r0, [r3]
	lsl r0, r0, #3
	ldr r1, _080139D8  @ =gOamData
	mov r9, r1
	add r0, r0, r9
	str r0, [r4, #4]
	ldr r0, _080139DC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r4, [r3]
	lsl r4, r4, #3
	add r4, r4, r9
	ldrh r6, [r4, #4]
	lsl r1, r6, #22
	ldr r3, _080139E0  @ =gUnknown_03001930
	mov r12, r3
	lsr r1, r1, #22
	ldrh r0, [r3]
	add r1, r1, r0
	ldr r3, _080139E4  @ =0x000003FF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, _080139E8  @ =0xFFFFFC00
	and r0, r0, r6
	orr r0, r0, r1
	strh r0, [r4, #4]
	mov r0, r10
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r9
	ldr r1, [sp]
	lsl r3, r1, #16
	asr r3, r3, #16
	ldr r0, [r7, #12]
	add r0, r5, r0
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r3, r3, r0
	ldr r1, _080139EC  @ =0x000001FF
	add r0, r1, #0
	and r3, r3, r0
	ldrh r1, [r4, #2]
	ldr r0, _080139F0  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r4, #2]
	mov r3, r10
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r9
	ldr r0, [r7, #12]
	add r5, r5, r0
	mov r0, r8
	lsr r0, r0, #16
	mov r8, r0
	ldrb r5, [r5, #3]
	add r8, r8, r5
	mov r3, r8
	strb r3, [r1]
	lsl r2, r2, #24
	asr r0, r2, #24
	ldr r1, _080139CC  @ =gUnknown_0300192C
	mov r8, r1
	mov r5, r10
	mov r4, r9
	mov r6, r12
	cmp r0, #1
	ble _080139F4
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	lsl r3, r0, #4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r1, #5]
	b _08013A0A
	.byte 0x00
	.byte 0x00
_080139C8:
	.4byte 0x040000D4
_080139CC:
	.4byte gUnknown_0300192C
_080139D0:
	.4byte 0x06010000
_080139D4:
	.4byte 0x03000040
_080139D8:
	.4byte gOamData
_080139DC:
	.4byte 0x84000002
_080139E0:
	.4byte gUnknown_03001930
_080139E4:
	.4byte 0x000003FF
_080139E8:
	.4byte 0xFFFFFC00
_080139EC:
	.4byte 0x000001FF
_080139F0:
	.4byte 0xFFFFFE00
_080139F4:
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r3, [r2, #5]
	lsr r1, r3, #4
	add r1, r1, r0
	lsl r1, r1, #4
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
_08013A0A:
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7, #6]
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	ldrh r0, [r7, #8]
	mov r3, r8
	ldrh r3, [r3]
	add r0, r0, r3
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080138D0

	THUMB_FUNC_START sub_08013A48
sub_08013A48: @ 0x08013A48
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #44
	ldr r4, [sp, #76]
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp, #8]
	lsl r2, r2, #24
	lsr r5, r2, #24
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r9, r3
	lsl r4, r4, #16
	lsr r4, r4, #16
	mov r10, r4
	mov r2, #0
	cmp r1, #0
	bne _08013A78
	mov r2, #1
_08013A78:
	str r2, [sp, #12]
	cmp r7, #3
	bne _08013AE4
	ldr r0, _08013AD8  @ =gUnknown_08078700
	add r0, r0, #72
	lsl r5, r5, #24
	asr r5, r5, #24
	mov r1, r9
	lsl r3, r1, #16
	asr r6, r3, #16
	mov r2, #192
	lsl r2, r2, #11
	add r3, r3, r2
	asr r3, r3, #16
	mov r4, r10
	lsl r1, r4, #16
	asr r4, r1, #16
	add r1, r1, r2
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	bl sub_080138D0
	mov r0, r9
	add r0, r0, #14
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, r10
	add r1, r1, #46
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _08013ADC  @ =gUnknown_0807CA94
	ldr r2, [r2]
	ldrh r3, [r2]
	mov r2, #0
	str r2, [sp]
	mov r2, #2
	bl sub_08013260
	ldr r0, _08013AE0  @ =gUnknown_08078778
	add r4, r4, #44
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	mov r1, #2
	b _08013C5A
	.byte 0x00
	.byte 0x00
_08013AD8:
	.4byte gUnknown_08078700
_08013ADC:
	.4byte gUnknown_0807CA94
_08013AE0:
	.4byte gUnknown_08078778
_08013AE4:
	lsl r0, r7, #1
	add r0, r0, r7
	lsl r0, r0, #3
	ldr r1, _08013B40  @ =gUnknown_08078700
	add r0, r0, r1
	lsl r6, r5, #24
	asr r2, r6, #24
	mov r1, r9
	lsl r5, r1, #16
	mov r4, #208
	lsl r4, r4, #12
	add r3, r5, r4
	asr r3, r3, #16
	mov r8, r3
	mov r1, r10
	lsl r4, r1, #16
	mov r3, #128
	lsl r3, r3, #11
	add r1, r4, r3
	asr r1, r1, #16
	str r1, [sp]
	add r1, r7, #0
	mov r3, r8
	bl sub_080138D0
	ldr r1, _08013B44  @ =gUnknown_08078900
	lsl r2, r7, #3
	sub r0, r2, r7
	lsl r0, r0, #5
	sub r0, r0, r7
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	str r5, [sp, #36]
	str r4, [sp, #40]
	str r2, [sp, #32]
	cmp r7, #2
	bhi _08013B48
	ldrb r1, [r1, #19]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08013B48
	mov r0, #1
	b _08013B4A
	.byte 0x00
	.byte 0x00
_08013B40:
	.4byte gUnknown_08078700
_08013B44:
	.4byte gUnknown_08078900
_08013B48:
	mov r0, #0
_08013B4A:
	cmp r0, #0
	bne _08013B8C
	ldr r0, _08013B84  @ =gUnknown_08078760
	asr r2, r6, #24
	ldr r4, [sp, #36]
	asr r5, r4, #16
	ldr r6, [sp, #40]
	asr r4, r6, #16
	mov r3, #192
	lsl r3, r3, #12
	add r1, r6, r3
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #2
	add r3, r5, #0
	bl sub_080138D0
	ldr r0, _08013B88  @ =gUnknown_08078778
	ldr r2, [sp, #12]
	add r4, r4, #44
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	mov r1, #1
	add r3, r5, #0
	bl sub_080138D0
	b _08013EBA
	.byte 0x00
	.byte 0x00
_08013B84:
	.4byte gUnknown_08078760
_08013B88:
	.4byte gUnknown_08078778
_08013B8C:
	ldr r2, _08013BA8  @ =gUnknown_08078900
	ldr r4, [sp, #32]
	sub r0, r4, r7
	lsl r0, r0, #5
	sub r0, r0, r7
	lsl r0, r0, #2
	ldr r1, [r2]
	add r1, r1, r0
	ldr r0, [r1, #4]
	add r5, r2, #0
	cmp r0, #0
	bge _08013BAC
	mov r0, #1
	b _08013BAE
_08013BA8:
	.4byte gUnknown_08078900
_08013BAC:
	mov r0, #0
_08013BAE:
	cmp r0, #0
	beq _08013C6C
	ldr r6, [sp, #32]
	sub r4, r6, r7
	lsl r4, r4, #5
	sub r4, r4, r7
	lsl r4, r4, #2
	ldr r0, [r5]
	add r0, r0, r4
	ldrb r3, [r0, #8]
	mov r0, r9
	add r0, r0, #15
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, r10
	add r1, r1, #48
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, [sp, #12]
	str r2, [sp]
	mov r2, #2
	bl sub_080130F8
	ldr r0, [r5]
	add r0, r0, r4
	ldrb r3, [r0, #9]
	mov r0, r9
	add r0, r0, #25
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, r10
	add r1, r1, #55
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r4, [sp, #12]
	str r4, [sp]
	mov r2, #2
	bl sub_080130F8
	lsl r1, r7, #24
	asr r1, r1, #24
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r5]
	add r1, r1, r0
	mov r3, #0
	ldrsb r3, [r1, r3]
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, r9
	add r0, r0, #24
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, r10
	add r1, r1, #63
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r4, [sp]
	mov r2, #2
	bl sub_08013260
	ldr r0, _08013C64  @ =gUnknown_08078760
	ldr r5, [sp, #12]
	ldr r1, [sp, #36]
	asr r6, r1, #16
	ldr r2, [sp, #40]
	asr r4, r2, #16
	mov r3, #192
	lsl r3, r3, #12
	add r1, r2, r3
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #1
	add r2, r5, #0
	add r3, r6, #0
	bl sub_080138D0
	ldr r0, _08013C68  @ =gUnknown_08078778
	add r4, r4, #44
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	mov r1, #0
_08013C5A:
	add r2, r5, #0
	add r3, r6, #0
	bl sub_080138D0
	b _08013EBA
_08013C64:
	.4byte gUnknown_08078760
_08013C68:
	.4byte gUnknown_08078778
_08013C6C:
	add r3, sp, #4
	mov r6, sp
	add r6, r6, #5
	mov r4, #6
	add r4, sp, r4
	mov r8, r4
	ldr r1, _08013D64  @ =gUnknown_08078900
	ldr r2, [sp, #32]
	sub r0, r2, r7
	lsl r0, r0, #5
	sub r0, r0, r7
	lsl r0, r0, #2
	ldr r2, [r1]
	add r2, r2, r0
	ldrb r1, [r2, #2]
	mov r0, #15
	and r0, r0, r1
	ldrb r1, [r2, #3]
	strb r1, [r4]
	strb r0, [r6]
	ldrb r0, [r2, #2]
	lsr r0, r0, #4
	mov r1, #7
	and r0, r0, r1
	strb r0, [r3]
	ldrb r0, [r2, #3]
	strb r0, [r4]
	ldr r0, _08013D68  @ =gUnknown_08078790
	ldrb r1, [r4]
	ldr r3, [sp, #12]
	lsl r5, r3, #24
	asr r4, r5, #24
	str r4, [sp, #16]
	ldr r2, [sp, #36]
	asr r2, r2, #16
	str r2, [sp, #20]
	ldr r4, [sp, #36]
	mov r2, #192
	lsl r2, r2, #11
	add r3, r4, r2
	asr r3, r3, #16
	mov r12, r3
	ldr r3, [sp, #40]
	asr r3, r3, #16
	str r3, [sp, #24]
	ldr r4, [sp, #40]
	mov r3, #192
	lsl r3, r3, #13
	add r2, r4, r3
	asr r2, r2, #16
	str r2, [sp]
	ldr r2, [sp, #16]
	mov r3, r12
	bl sub_080138D0
	ldr r2, _08013D6C  @ =gUnknown_08078640
	ldrb r1, [r6]
	lsl r1, r1, #3
	add r0, r1, r2
	ldr r0, [r0]
	add r0, r0, r9
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r2, #4
	add r1, r1, r2
	ldr r1, [r1]
	add r1, r1, r10
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r2, sp, #4
	ldrb r3, [r2]
	add r3, r3, #1
	ldr r4, [sp, #12]
	str r4, [sp]
	mov r2, #1
	bl sub_080133D4
	ldr r0, _08013D70  @ =gUnknown_080787F0
	ldr r4, _08013D74  @ =gUnknown_08078680
	ldrb r2, [r6]
	lsl r2, r2, #3
	add r1, r2, r4
	ldr r3, [r1]
	ldr r1, [sp, #20]
	add r3, r1, r3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r4, r4, #4
	add r2, r2, r4
	ldr r1, [r2]
	ldr r2, [sp, #24]
	add r1, r2, r1
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #10
	ldr r2, [sp, #16]
	bl sub_080138D0
	ldrb r1, [r6]
	str r5, [sp, #28]
	cmp r1, #5
	bhi _08013D7C
	ldr r2, _08013D78  @ =gUnknown_080786C0
	ldrb r3, [r6]
	lsl r1, r3, #3
	add r0, r1, r2
	ldr r0, [r0]
	add r0, r0, r9
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r2, #4
	add r1, r1, r2
	ldr r1, [r1]
	add r1, r1, r10
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r3, r3, #1
	ldr r4, [sp, #12]
	str r4, [sp]
	mov r2, #1
	bl sub_080133D4
	b _08013DF0
_08013D64:
	.4byte gUnknown_08078900
_08013D68:
	.4byte gUnknown_08078790
_08013D6C:
	.4byte gUnknown_08078640
_08013D70:
	.4byte gUnknown_080787F0
_08013D74:
	.4byte gUnknown_08078680
_08013D78:
	.4byte gUnknown_080786C0
_08013D7C:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	bne _08013DC0
	ldr r0, _08013DB8  @ =gUnknown_08078808
	sub r1, r1, #6
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _08013DBC  @ =gUnknown_080786C0
	ldrb r4, [r6]
	lsl r4, r4, #3
	add r2, r4, r5
	ldr r3, [r2]
	ldr r6, [sp, #20]
	add r3, r6, r3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r2, [r4]
	ldr r4, [sp, #24]
	add r2, r4, r2
	lsl r2, r2, #16
	asr r2, r2, #16
	str r2, [sp]
	ldr r2, [sp, #16]
	bl sub_080138D0
	b _08013DF0
	.byte 0x00
	.byte 0x00
_08013DB8:
	.4byte gUnknown_08078808
_08013DBC:
	.4byte gUnknown_080786C0
_08013DC0:
	ldr r0, _08013ECC  @ =gUnknown_08078808
	sub r1, r1, #5
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _08013ED0  @ =gUnknown_080786C0
	ldrb r4, [r6]
	lsl r4, r4, #3
	add r2, r4, r5
	ldr r3, [r2]
	ldr r6, [sp, #20]
	add r3, r6, r3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r2, [r4]
	ldr r4, [sp, #24]
	add r2, r4, r2
	lsl r2, r2, #16
	asr r2, r2, #16
	str r2, [sp]
	ldr r2, [sp, #16]
	bl sub_080138D0
_08013DF0:
	ldr r5, _08013ED4  @ =gUnknown_08078900
	ldr r6, [sp, #32]
	sub r0, r6, r7
	lsl r0, r0, #5
	sub r0, r0, r7
	lsl r4, r0, #2
	ldr r0, [r5]
	add r0, r0, r4
	ldrb r3, [r0, #8]
	mov r0, r9
	add r0, r0, #15
	lsl r0, r0, #24
	lsr r2, r0, #24
	mov r0, r10
	add r0, r0, #48
	lsl r0, r0, #24
	lsr r1, r0, #24
	mov r0, #0
	ldr r6, [sp, #8]
	cmp r6, #0
	bne _08013E1C
	mov r0, #1
_08013E1C:
	str r0, [sp]
	add r0, r2, #0
	mov r2, #2
	bl sub_080130F8
	ldr r0, [r5]
	add r0, r0, r4
	ldrb r3, [r0, #9]
	mov r0, r9
	add r0, r0, #25
	lsl r0, r0, #24
	lsr r2, r0, #24
	mov r0, r10
	add r0, r0, #55
	lsl r0, r0, #24
	lsr r1, r0, #24
	mov r0, #0
	ldr r4, [sp, #8]
	cmp r4, #0
	bne _08013E46
	mov r0, #1
_08013E46:
	str r0, [sp]
	add r0, r2, #0
	mov r2, #2
	bl sub_080130F8
	lsl r1, r7, #24
	asr r1, r1, #24
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r5]
	add r1, r1, r0
	mov r3, #0
	ldrsb r3, [r1, r3]
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, r9
	add r0, r0, #24
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, r10
	add r1, r1, #63
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r6, [sp, #12]
	str r6, [sp]
	mov r2, #2
	bl sub_08013260
	ldr r0, _08013ED8  @ =gUnknown_08078760
	ldr r1, [sp, #28]
	asr r5, r1, #24
	ldr r2, [sp, #36]
	asr r6, r2, #16
	ldr r3, [sp, #40]
	asr r4, r3, #16
	mov r2, #192
	lsl r2, r2, #12
	add r1, r3, r2
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_080138D0
	ldr r0, _08013EDC  @ =gUnknown_08078778
	add r4, r4, #44
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	mov r1, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_080138D0
_08013EBA:
	add sp, sp, #44
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08013ECC:
	.4byte gUnknown_08078808
_08013ED0:
	.4byte gUnknown_080786C0
_08013ED4:
	.4byte gUnknown_08078900
_08013ED8:
	.4byte gUnknown_08078760
_08013EDC:
	.4byte gUnknown_08078778
	THUMB_FUNC_END sub_08013A48

	THUMB_FUNC_START sub_08013EE0
sub_08013EE0: @ 0x08013EE0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r1, _08013F50  @ =gUnknown_080763CC
	add r0, sp, #8
	mov r2, #6
	bl memcpy
	add r4, sp, #16
	ldr r1, _08013F54  @ =gUnknown_080763D6
	add r0, r4, #0
	mov r2, #6
	bl memcpy
	add r6, r7, #0
	mov r10, r4
	cmp r6, #8
	bhi _08013FE2
	ldr r0, _08013F58  @ =gUnknown_08078610
	mov r8, r0
	mov r1, #4
	add r1, r1, r8
	mov r9, r1
_08013F18:
	sub r3, r6, r7
	lsl r2, r3, #24
	lsr r2, r2, #24
	ldr r1, _08013F5C  @ =gUnknown_08078900
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r4, r1, r0
	add r5, r3, #0
	cmp r2, #3
	beq _08013F68
	ldr r2, _08013F60  @ =0x00000313
	add r0, r4, r2
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08013F68
	ldr r1, _08013F64  @ =gUnknown_080A8668
	ldrb r0, [r4, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08013F68
	mov r0, #1
	b _08013F6A
_08013F50:
	.4byte gUnknown_080763CC
_08013F54:
	.4byte gUnknown_080763D6
_08013F58:
	.4byte gUnknown_08078610
_08013F5C:
	.4byte gUnknown_08078900
_08013F60:
	.4byte 0x00000313
_08013F64:
	.4byte gUnknown_080A8668
_08013F68:
	mov r0, #0
_08013F6A:
	cmp r0, #0
	beq _08013FD8
	ldr r0, _08013FA4  @ =0x03000058
	ldrb r0, [r0]
	cmp r6, r0
	bne _08013FB0
	ldr r0, _08013FA8  @ =0x03000052
	ldrh r1, [r0]
	mov r0, sp
	add r0, r0, r5
	add r0, r0, #8
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r2, r5, #3
	mov r4, r8
	add r0, r2, r4
	mov r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	add r2, r2, r9
	mov r4, #0
	ldrsh r0, [r2, r4]
	str r0, [sp, #4]
	ldr r0, _08013FAC  @ =gUnknown_080787D8
	mov r2, #0
	bl sub_0801369C
	b _08013FD8
	.byte 0x00
	.byte 0x00
_08013FA4:
	.4byte 0x03000058
_08013FA8:
	.4byte 0x03000052
_08013FAC:
	.4byte gUnknown_080787D8
_08013FB0:
	ldr r0, _08013FF4  @ =0x03000052
	ldrh r1, [r0]
	mov r2, r10
	add r0, r2, r5
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r2, r5, #3
	mov r4, r8
	add r0, r2, r4
	mov r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	add r2, r2, r9
	mov r4, #0
	ldrsh r0, [r2, r4]
	str r0, [sp, #4]
	ldr r0, _08013FF8  @ =gUnknown_080787D8
	mov r2, #0
	bl sub_0801369C
_08013FD8:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #8
	bls _08013F18
_08013FE2:
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08013FF4:
	.4byte 0x03000052
_08013FF8:
	.4byte gUnknown_080787D8
	THUMB_FUNC_END sub_08013EE0

	THUMB_FUNC_START sub_08013FFC
sub_08013FFC: @ 0x08013FFC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r1, _0801406C  @ =gUnknown_080763DC
	add r0, sp, #8
	mov r2, #6
	bl memcpy
	add r4, sp, #16
	ldr r1, _08014070  @ =gUnknown_080763E2
	add r0, r4, #0
	mov r2, #6
	bl memcpy
	add r6, r7, #0
	mov r10, r4
	cmp r6, #8
	bhi _080140FE
	ldr r0, _08014074  @ =gUnknown_08078628
	mov r8, r0
	mov r1, #4
	add r1, r1, r8
	mov r9, r1
_08014034:
	sub r3, r6, r7
	lsl r2, r3, #24
	lsr r2, r2, #24
	ldr r1, _08014078  @ =gUnknown_08078900
	lsl r0, r2, #3
	sub r0, r0, r2
	lsl r0, r0, #5
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r1]
	add r4, r1, r0
	add r5, r3, #0
	cmp r2, #3
	beq _08014084
	ldr r2, _0801407C  @ =0x00000313
	add r0, r4, r2
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08014084
	ldr r1, _08014080  @ =gUnknown_080A8668
	ldrb r0, [r4, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08014084
	mov r0, #1
	b _08014086
_0801406C:
	.4byte gUnknown_080763DC
_08014070:
	.4byte gUnknown_080763E2
_08014074:
	.4byte gUnknown_08078628
_08014078:
	.4byte gUnknown_08078900
_0801407C:
	.4byte 0x00000313
_08014080:
	.4byte gUnknown_080A8668
_08014084:
	mov r0, #0
_08014086:
	cmp r0, #0
	beq _080140F4
	ldr r0, _080140C0  @ =0x03000058
	ldrb r0, [r0]
	cmp r6, r0
	bne _080140CC
	ldr r0, _080140C4  @ =0x03000052
	ldrh r1, [r0]
	mov r0, sp
	add r0, r0, r5
	add r0, r0, #8
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r2, r5, #3
	mov r4, r8
	add r0, r2, r4
	mov r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	add r2, r2, r9
	mov r4, #0
	ldrsh r0, [r2, r4]
	str r0, [sp, #4]
	ldr r0, _080140C8  @ =gUnknown_080787D8
	mov r2, #0
	bl sub_0801369C
	b _080140F4
	.byte 0x00
	.byte 0x00
_080140C0:
	.4byte 0x03000058
_080140C4:
	.4byte 0x03000052
_080140C8:
	.4byte gUnknown_080787D8
_080140CC:
	ldr r0, _08014110  @ =0x03000052
	ldrh r1, [r0]
	mov r2, r10
	add r0, r2, r5
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r2, r5, #3
	mov r4, r8
	add r0, r2, r4
	mov r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	add r2, r2, r9
	mov r4, #0
	ldrsh r0, [r2, r4]
	str r0, [sp, #4]
	ldr r0, _08014114  @ =gUnknown_080787D8
	mov r2, #0
	bl sub_0801369C
_080140F4:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #8
	bls _08014034
_080140FE:
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08014110:
	.4byte 0x03000052
_08014114:
	.4byte gUnknown_080787D8
	THUMB_FUNC_END sub_08013FFC

	THUMB_FUNC_START sub_08014118
sub_08014118: @ 0x08014118
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #40
	ldr r0, _080141DC  @ =0x0300005D
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801412E
	b _0801435C
_0801412E:
	ldr r1, _080141E0  @ =gUnknown_080763CC
	add r0, sp, #8
	mov r2, #6
	bl memcpy
	add r6, sp, #16
	ldr r1, _080141E4  @ =gUnknown_080763D6
	add r0, r6, #0
	mov r2, #6
	bl memcpy
	add r5, sp, #24
	ldr r1, _080141E8  @ =gUnknown_080763DC
	add r0, r5, #0
	mov r2, #6
	bl memcpy
	add r4, sp, #32
	ldr r1, _080141EC  @ =gUnknown_080763E2
	add r0, r4, #0
	mov r2, #6
	bl memcpy
	mov r7, #0
	ldr r0, _080141F0  @ =gUnknown_080785E0
	mov r9, r0
	mov r1, #4
	add r1, r1, r9
	mov r10, r1
	ldr r2, _080141F4  @ =gUnknown_080787A8
	mov r8, r2
_0801416C:
	ldr r0, _080141F8  @ =0x03000058
	ldrb r0, [r0]
	cmp r7, r0
	bne _08014204
	mov r0, sp
	add r0, r0, r7
	add r0, r0, #24
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r4, r7, #3
	mov r0, r9
	add r5, r4, r0
	mov r1, #0
	ldrsh r3, [r5, r1]
	add r4, r4, r10
	mov r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	bl sub_08013A48
	ldr r0, _080141FC  @ =0x0300004E
	ldrh r1, [r0]
	mov r6, sp
	add r6, r6, r7
	add r6, r6, #8
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #0
	bl sub_0801369C
	ldr r0, _08014200  @ =0x03000050
	ldrh r1, [r0]
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	ldr r0, [r4]
	add r0, r0, #64
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #1
	bl sub_0801369C
	b _0801426A
_080141DC:
	.4byte 0x0300005D
_080141E0:
	.4byte gUnknown_080763CC
_080141E4:
	.4byte gUnknown_080763D6
_080141E8:
	.4byte gUnknown_080763DC
_080141EC:
	.4byte gUnknown_080763E2
_080141F0:
	.4byte gUnknown_080785E0
_080141F4:
	.4byte gUnknown_080787A8
_080141F8:
	.4byte 0x03000058
_080141FC:
	.4byte 0x0300004E
_08014200:
	.4byte 0x03000050
_08014204:
	mov r0, sp
	add r0, r0, r7
	add r0, r0, #32
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r4, r7, #3
	mov r0, r9
	add r5, r4, r0
	mov r1, #0
	ldrsh r3, [r5, r1]
	add r4, r4, r10
	mov r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0
	bl sub_08013A48
	ldr r0, _080142A8  @ =0x0300004E
	ldrh r1, [r0]
	mov r6, sp
	add r6, r6, r7
	add r6, r6, #16
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #0
	bl sub_0801369C
	ldr r0, _080142AC  @ =0x03000050
	ldrh r1, [r0]
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	ldr r0, [r4]
	add r0, r0, #64
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #1
	bl sub_0801369C
_0801426A:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #3
	bhi _08014276
	b _0801416C
_08014276:
	ldr r0, _080142B0  @ =0x03000058
	ldrb r0, [r0]
	cmp r7, r0
	bne _080142BC
	ldr r0, _080142B4  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #8
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _080142B8  @ =gUnknown_080785E0
	lsl r4, r7, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #0
	bl sub_080138D0
	b _080142E2
	.byte 0x00
	.byte 0x00
_080142A8:
	.4byte 0x0300004E
_080142AC:
	.4byte 0x03000050
_080142B0:
	.4byte 0x03000058
_080142B4:
	.4byte gUnknown_080787C0
_080142B8:
	.4byte gUnknown_080785E0
_080142BC:
	ldr r0, _08014314  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #16
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _08014318  @ =gUnknown_080785E0
	lsl r4, r7, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #0
	bl sub_080138D0
_080142E2:
	add r4, r7, #1
	ldr r0, _0801431C  @ =0x03000058
	ldrb r0, [r0]
	cmp r4, r0
	bne _08014320
	ldr r0, _08014314  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #8
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _08014318  @ =gUnknown_080785E0
	lsl r4, r4, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #1
	bl sub_080138D0
	b _08014346
_08014314:
	.4byte gUnknown_080787C0
_08014318:
	.4byte gUnknown_080785E0
_0801431C:
	.4byte 0x03000058
_08014320:
	ldr r0, _08014354  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #16
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _08014358  @ =gUnknown_080785E0
	lsl r4, r4, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #1
	bl sub_080138D0
_08014346:
	add r0, r7, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_08013FFC
	b _08014554
	.byte 0x00
	.byte 0x00
_08014354:
	.4byte gUnknown_080787C0
_08014358:
	.4byte gUnknown_080785E0
_0801435C:
	ldr r1, _080143EC  @ =gUnknown_080763E8
	add r0, sp, #8
	mov r2, #5
	bl memcpy
	add r4, sp, #16
	ldr r1, _080143F0  @ =gUnknown_080763ED
	add r0, r4, #0
	mov r2, #5
	bl memcpy
	mov r7, #0
	ldr r0, _080143F4  @ =gUnknown_080785B0
	mov r9, r0
	mov r1, #4
	add r1, r1, r9
	mov r10, r1
	ldr r2, _080143F8  @ =gUnknown_080787A8
	mov r8, r2
_08014382:
	ldr r0, _080143FC  @ =0x03000058
	ldrb r0, [r0]
	cmp r7, r0
	bne _08014408
	mov r6, sp
	add r6, r6, r7
	add r6, r6, #8
	mov r2, #0
	ldrsb r2, [r6, r2]
	lsl r4, r7, #3
	mov r0, r9
	add r5, r4, r0
	mov r1, #0
	ldrsh r3, [r5, r1]
	add r4, r4, r10
	mov r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	bl sub_08013A48
	ldr r0, _08014400  @ =0x0300004E
	ldrh r1, [r0]
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #0
	bl sub_0801369C
	ldr r0, _08014404  @ =0x03000050
	ldrh r1, [r0]
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	ldr r0, [r4]
	add r0, r0, #64
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #1
	bl sub_0801369C
	b _08014468
_080143EC:
	.4byte gUnknown_080763E8
_080143F0:
	.4byte gUnknown_080763ED
_080143F4:
	.4byte gUnknown_080785B0
_080143F8:
	.4byte gUnknown_080787A8
_080143FC:
	.4byte 0x03000058
_08014400:
	.4byte 0x0300004E
_08014404:
	.4byte 0x03000050
_08014408:
	mov r6, sp
	add r6, r6, r7
	add r6, r6, #16
	mov r2, #0
	ldrsb r2, [r6, r2]
	lsl r4, r7, #3
	mov r0, r9
	add r5, r4, r0
	mov r1, #0
	ldrsh r3, [r5, r1]
	add r4, r4, r10
	mov r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0
	bl sub_08013A48
	ldr r0, _080144AC  @ =0x0300004E
	ldrh r1, [r0]
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #0
	bl sub_0801369C
	ldr r0, _080144B0  @ =0x03000050
	ldrh r1, [r0]
	mov r3, #0
	ldrsb r3, [r6, r3]
	mov r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	ldr r0, [r4]
	add r0, r0, #64
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r0, r8
	mov r2, #1
	bl sub_0801369C
_08014468:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #2
	bhi _08014474
	b _08014382
_08014474:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r0, _080144B4  @ =0x03000058
	ldrb r0, [r0]
	cmp r7, r0
	bne _080144C0
	ldr r0, _080144B8  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #8
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _080144BC  @ =gUnknown_080785B0
	lsl r4, r7, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #0
	bl sub_080138D0
	b _080144E6
	.byte 0x00
	.byte 0x00
_080144AC:
	.4byte 0x0300004E
_080144B0:
	.4byte 0x03000050
_080144B4:
	.4byte 0x03000058
_080144B8:
	.4byte gUnknown_080787C0
_080144BC:
	.4byte gUnknown_080785B0
_080144C0:
	ldr r0, _08014518  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #16
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _0801451C  @ =gUnknown_080785B0
	lsl r4, r7, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #0
	bl sub_080138D0
_080144E6:
	add r4, r7, #1
	ldr r0, _08014520  @ =0x03000058
	ldrb r0, [r0]
	cmp r4, r0
	bne _08014524
	ldr r0, _08014518  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #8
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _0801451C  @ =gUnknown_080785B0
	lsl r4, r4, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #1
	bl sub_080138D0
	b _0801454A
_08014518:
	.4byte gUnknown_080787C0
_0801451C:
	.4byte gUnknown_080785B0
_08014520:
	.4byte 0x03000058
_08014524:
	ldr r0, _08014564  @ =gUnknown_080787C0
	mov r1, sp
	add r1, r1, r7
	add r1, r1, #16
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _08014568  @ =gUnknown_080785B0
	lsl r4, r4, #3
	add r3, r4, r1
	mov r5, #0
	ldrsh r3, [r3, r5]
	add r1, r1, #4
	add r4, r4, r1
	mov r5, #0
	ldrsh r1, [r4, r5]
	str r1, [sp]
	mov r1, #1
	bl sub_080138D0
_0801454A:
	add r0, r7, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_08013EE0
_08014554:
	add sp, sp, #40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08014564:
	.4byte gUnknown_080787C0
_08014568:
	.4byte gUnknown_080785B0
	THUMB_FUNC_END sub_08014118

	THUMB_FUNC_START sub_0801456C
sub_0801456C: @ 0x0801456C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	ldr r0, _080145F8  @ =0x0300005D
	ldrb r0, [r0]
	cmp r0, #0
	bne _08014582
	b _08014684
_08014582:
	mov r1, #0
	ldr r0, _080145FC  @ =gUnknown_08078820
	mov r10, r0
	ldr r2, _08014600  @ =0x03000054
	mov r9, r2
_0801458C:
	ldr r0, _08014604  @ =0x03000066
	lsl r1, r1, #16
	asr r3, r1, #16
	add r2, r3, r0
	ldrb r0, [r2]
	add r7, r1, #0
	cmp r0, #0
	beq _08014670
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	asr r0, r0, #16
	cmp r0, #2
	bne _08014610
	mov r0, r9
	ldrh r1, [r0]
	mov r0, #0
	str r0, [sp]
	lsl r4, r3, #1
	add r4, r4, r3
	lsl r4, r4, #3
	ldr r2, _08014608  @ =gUnknown_08078868
	add r5, r4, r2
	mov r3, #0
	ldrsh r0, [r5, r3]
	str r0, [sp, #4]
	add r4, r4, r10
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	ldr r0, _0801460C  @ =gUnknown_08078850
	mov r2, #0
	mov r3, #3
	bl sub_080137A0
	mov r3, r9
	ldrh r1, [r3]
	mov r0, #1
	str r0, [sp]
	ldrh r0, [r5]
	add r0, r0, #16
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	ldr r0, _0801460C  @ =gUnknown_08078850
	mov r2, #0
	mov r3, #3
	bl sub_080137A0
	b _08014670
	.byte 0x00
	.byte 0x00
_080145F8:
	.4byte 0x0300005D
_080145FC:
	.4byte gUnknown_08078820
_08014600:
	.4byte 0x03000054
_08014604:
	.4byte 0x03000066
_08014608:
	.4byte gUnknown_08078868
_0801460C:
	.4byte gUnknown_08078850
_08014610:
	lsl r5, r0, #1
	add r5, r5, r0
	lsl r5, r5, #3
	add r5, r5, r10
	mov r0, r9
	ldrh r1, [r0, #2]
	mov r0, #1
	eor r6, r6, r0
	lsl r6, r6, #24
	asr r6, r6, #24
	mov r0, #0
	str r0, [sp]
	lsl r4, r3, #1
	add r4, r4, r3
	lsl r4, r4, #3
	ldr r2, _08014680  @ =gUnknown_08078868
	add r2, r2, r4
	mov r8, r2
	mov r3, #0
	ldrsh r0, [r2, r3]
	str r0, [sp, #4]
	add r4, r4, r10
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_080137A0
	mov r3, r9
	ldrh r1, [r3, #2]
	mov r0, #1
	str r0, [sp]
	mov r2, r8
	ldrh r0, [r2]
	add r0, r0, #16
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r3, #2
	ldrsh r0, [r4, r3]
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_080137A0
_08014670:
	mov r1, #128
	lsl r1, r1, #9
	add r0, r7, r1
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #2
	ble _0801458C
	b _0801476E
_08014680:
	.4byte gUnknown_08078868
_08014684:
	mov r1, #0
	ldr r2, _080146F8  @ =gUnknown_08078820
	mov r9, r2
	ldr r3, _080146FC  @ =0x03000054
	mov r8, r3
	mov r0, #1
	mov r10, r0
_08014692:
	ldr r0, _08014700  @ =0x03000066
	lsl r1, r1, #16
	asr r3, r1, #16
	add r2, r3, r0
	ldrb r0, [r2]
	add r7, r1, #0
	cmp r0, #0
	beq _08014760
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	asr r0, r0, #16
	cmp r0, #2
	bne _08014708
	mov r2, r8
	ldrh r1, [r2]
	mov r0, #0
	str r0, [sp]
	lsl r4, r3, #1
	add r4, r4, r3
	lsl r4, r4, #3
	add r4, r4, r9
	mov r3, #0
	ldrsh r0, [r4, r3]
	str r0, [sp, #4]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	ldr r0, _08014704  @ =gUnknown_08078850
	mov r2, #0
	mov r3, #3
	bl sub_080137A0
	mov r3, r8
	ldrh r1, [r3]
	mov r0, r10
	str r0, [sp]
	ldrh r0, [r4]
	add r0, r0, #16
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	ldr r0, _08014704  @ =gUnknown_08078850
	mov r2, #0
	mov r3, #3
	bl sub_080137A0
	b _08014760
_080146F8:
	.4byte gUnknown_08078820
_080146FC:
	.4byte 0x03000054
_08014700:
	.4byte 0x03000066
_08014704:
	.4byte gUnknown_08078850
_08014708:
	lsl r5, r0, #1
	add r5, r5, r0
	lsl r5, r5, #3
	add r5, r5, r9
	mov r0, r8
	ldrh r1, [r0, #2]
	mov r2, r10
	eor r6, r6, r2
	lsl r6, r6, #24
	asr r6, r6, #24
	mov r0, #0
	str r0, [sp]
	lsl r4, r3, #1
	add r4, r4, r3
	lsl r4, r4, #3
	add r4, r4, r9
	mov r3, #0
	ldrsh r0, [r4, r3]
	str r0, [sp, #4]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_080137A0
	mov r3, r8
	ldrh r1, [r3, #2]
	mov r0, r10
	str r0, [sp]
	ldrh r0, [r4]
	add r0, r0, #16
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp, #4]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_080137A0
_08014760:
	mov r3, #128
	lsl r3, r3, #9
	add r0, r7, r3
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #2
	ble _08014692
_0801476E:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801456C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START main_menu_loop
main_menu_loop: @ 0x08014780
	push {lr}
	sub sp, sp, #4
	ldr r3, _080147D8  @ =gUnknown_03001930
	ldr r2, _080147DC  @ =gUnknown_0300192C
	ldr r1, _080147E0  @ =0x03000040
	mov r0, #0
	strh r0, [r1]
	strh r0, [r2]
	strh r0, [r3]
	mov r0, #160
	str r0, [sp]
	ldr r1, _080147E4  @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080147E8  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _080147EC  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_08012D24
	ldr r0, _080147F0  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _080147C8
	ldr r2, _080147F4  @ =gUnknown_085FEFE4
	ldr r0, _080147F8  @ =0x0300005E
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r2, #8
	add r0, r0, r2
	ldr r0, [r0]
	bl sub_0801B2CC
_080147C8:
	ldr r0, _080147FC  @ =0x0300005B
	ldrb r0, [r0]
	cmp r0, #3
	bne _08014800
	bl sub_080128EC
	b _08014850
	.byte 0x00
	.byte 0x00
_080147D8:
	.4byte gUnknown_03001930
_080147DC:
	.4byte gUnknown_0300192C
_080147E0:
	.4byte 0x03000040
_080147E4:
	.4byte 0x040000D4
_080147E8:
	.4byte gOamData
_080147EC:
	.4byte 0x85000100
_080147F0:
	.4byte gUnknown_03000C28
_080147F4:
	.4byte gUnknown_085FEFE4
_080147F8:
	.4byte 0x0300005E
_080147FC:
	.4byte 0x0300005B
_08014800:
	cmp r0, #2
	bne _08014824
	ldr r1, _08014818  @ =0x04000050
	ldr r2, _0801481C  @ =0x00003B44
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #2
	ldr r2, _08014820  @ =0x00000808
	add r0, r2, #0
	strh r0, [r1]
	b _08014850
	.byte 0x00
	.byte 0x00
_08014818:
	.4byte 0x04000050
_0801481C:
	.4byte 0x00003B44
_08014820:
	.4byte 0x00000808
_08014824:
	ldr r0, _08014834  @ =0x03000058
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08014838
	bl sub_080129C0
	b _08014850
	.byte 0x00
	.byte 0x00
_08014834:
	.4byte 0x03000058
_08014838:
	cmp r0, #4
	bne _08014842
	bl sub_08012568
	b _08014850
_08014842:
	cmp r0, #5
	bne _0801484C
	bl sub_08012680
	b _08014850
_0801484C:
	bl sub_08012798
_08014850:
	bl sub_08014118
	bl sub_0801456C
	ldr r1, _08014874  @ =0x040000D4
	ldr r0, _08014878  @ =gOamData
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801487C  @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_0801B4BC
	add sp, sp, #4
	pop {r0}
	bx r0
_08014874:
	.4byte 0x040000D4
_08014878:
	.4byte gOamData
_0801487C:
	.4byte 0x84000100
	THUMB_FUNC_END main_menu_loop

	THUMB_FUNC_START main_menu_end
main_menu_end: @ 0x08014880
	push {lr}
	bl sub_080382A8
	pop {r0}
	bx r0
	THUMB_FUNC_END main_menu_end

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801488C
sub_0801488C: @ 0x0801488C
	push {lr}
	ldr r0, _080148A0  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801489A
	bl sub_0802A164
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
	ldr r3, _080148CC  @ =gUnknown_08078900
	ldr r0, _080148D0  @ =gUnknown_080788F4
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
	.4byte gUnknown_08078900
_080148D0:
	.4byte gUnknown_080788F4
_080148D4:
	ldr r0, [r2, #4]
	bic r0, r0, r4
_080148D8:
	str r0, [r2, #4]
	ldr r0, _080148EC  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _080148E6
	bl sub_0802A164
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
	ldr r1, _08014920  @ =gUnknown_08078900
	ldr r0, _08014924  @ =gUnknown_080788F4
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
	.4byte gUnknown_08078900
_08014924:
	.4byte gUnknown_080788F4
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
	ldr r1, _08014980  @ =gUnknown_08078900
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
	.4byte gUnknown_08078900
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
	ldr r2, _080149CC  @ =gUnknown_08078900
	ldr r0, _080149D0  @ =gUnknown_080788F4
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
	.4byte gUnknown_08078900
_080149D0:
	.4byte gUnknown_080788F4
	THUMB_FUNC_END sub_080149AC

	THUMB_FUNC_START sub_080149D4
sub_080149D4: @ 0x080149D4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080149F4  @ =gUnknown_08078900
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
	.4byte gUnknown_08078900
	THUMB_FUNC_END sub_080149D4

	THUMB_FUNC_START sub_080149F8
sub_080149F8: @ 0x080149F8
	push {lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _08014A28  @ =gUnknown_08078900
	ldr r0, _08014A2C  @ =gUnknown_080788F4
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
	.4byte gUnknown_08078900
_08014A2C:
	.4byte gUnknown_080788F4
_08014A30:
	.4byte gLevelEWorldFlag
	THUMB_FUNC_END sub_080149F8

	THUMB_FUNC_START sub_08014A34
sub_08014A34: @ 0x08014A34
	ldr r2, _08014A50  @ =gUnknown_08078900
	ldr r0, _08014A54  @ =gUnknown_080788F4
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
	.4byte gUnknown_08078900
_08014A54:
	.4byte gUnknown_080788F4
	THUMB_FUNC_END sub_08014A34

	THUMB_FUNC_START sub_08014A58
sub_08014A58: @ 0x08014A58
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	ldr r2, _08014AA8  @ =gUnknown_08078900
	ldr r0, _08014AAC  @ =gUnknown_080788F4
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
	.4byte gUnknown_08078900
_08014AAC:
	.4byte gUnknown_080788F4
_08014AB0:
	.4byte gLevelEWorldFlag
_08014AB4:
	.4byte gLivesCount
	THUMB_FUNC_END sub_08014A58

	THUMB_FUNC_START sub_08014AB8
sub_08014AB8: @ 0x08014AB8
	ldr r2, _08014AD4  @ =gUnknown_08078900
	ldr r0, _08014AD8  @ =gUnknown_080788F4
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
	.4byte gUnknown_08078900
_08014AD8:
	.4byte gUnknown_080788F4
	THUMB_FUNC_END sub_08014AB8

	THUMB_FUNC_START sub_08014ADC
sub_08014ADC: @ 0x08014ADC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsl r1, r1, #24
	lsl r2, r2, #16
	ldr r5, _08014B1C  @ =gUnknown_08078900
	ldr r3, _08014B20  @ =gUnknown_080788F4
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
	.4byte gUnknown_08078900
_08014B20:
	.4byte gUnknown_080788F4
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
	ldr r5, _08014B6C  @ =gUnknown_08078900
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
	bl sub_08010DEC
	ldr r0, _08014B74  @ =gUnknown_03000B50
	ldrb r0, [r0]
	cmp r0, #1
	bne _08014B62
	bl sub_0802A164
_08014B62:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08014B6C:
	.4byte gUnknown_08078900
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
	ldr r5, _08014BB0  @ =gUnknown_08078900
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
	.4byte gUnknown_08078900
	THUMB_FUNC_END sub_08014B78

	THUMB_FUNC_START sub_08014BB4
sub_08014BB4: @ 0x08014BB4
	push {lr}
	sub sp, sp, #4
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, sp
	bl sub_0800FE2C
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
	bl sub_0800FE2C
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
	ldr r2, _08014C0C  @ =gUnknown_08078900
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
	.4byte gUnknown_08078900
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
	ldr r2, _08014C54  @ =gUnknown_08078900
	ldr r0, _08014C58  @ =gUnknown_080788F4
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
	ldr r0, _08014C60  @ =gUnknown_080A8668
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
	.4byte gUnknown_08078900
_08014C58:
	.4byte gUnknown_080788F4
_08014C5C:
	.4byte 0x00000313
_08014C60:
	.4byte gUnknown_080A8668
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
	ldr r2, _08014CBC  @ =gUnknown_08078900
	ldr r0, _08014CC0  @ =gUnknown_080788F4
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
	ldr r1, _08014CC8  @ =gUnknown_080A8668
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
	.4byte gUnknown_08078900
_08014CC0:
	.4byte gUnknown_080788F4
_08014CC4:
	.4byte 0x00000313
_08014CC8:
	.4byte gUnknown_080A8668
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
	ldr r2, _08014CFC  @ =gUnknown_08078900
	ldr r0, _08014D00  @ =gUnknown_080788F4
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
	.4byte gUnknown_08078900
_08014D00:
	.4byte gUnknown_080788F4
_08014D04:
	.4byte 0x0000036B
	THUMB_FUNC_END sub_08014CD4

	THUMB_FUNC_START sub_08014D08
sub_08014D08: @ 0x08014D08
	push {r4,r5,lr}
	mov r4, #0
	ldr r5, _08014D30  @ =0x03000066
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
	.4byte 0x03000066
	THUMB_FUNC_END sub_08014D08

	THUMB_FUNC_START sub_08014D34
sub_08014D34: @ 0x08014D34
	ldr r2, _08014D50  @ =gUnknown_08078900
	ldr r0, _08014D54  @ =gUnknown_080788F4
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
	.4byte gUnknown_08078900
_08014D54:
	.4byte gUnknown_080788F4
	THUMB_FUNC_END sub_08014D34

	THUMB_FUNC_START sub_08014D58
sub_08014D58: @ 0x08014D58
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _08014D70  @ =gUnknown_08078900
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
	.4byte gUnknown_08078900
	THUMB_FUNC_END sub_08014D58

	THUMB_FUNC_START sub_08014D74
sub_08014D74: @ 0x08014D74
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _08014DAC  @ =gUnknown_08078900
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
	ldr r1, _08014DB4  @ =gUnknown_080A8668
	ldrb r0, [r2, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08014DB8
	mov r0, #1
	b _08014DBA
	.byte 0x00
	.byte 0x00
_08014DAC:
	.4byte gUnknown_08078900
_08014DB0:
	.4byte 0x00000313
_08014DB4:
	.4byte gUnknown_080A8668
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
	ldr r2, _08014DD8  @ =gUnknown_08078900
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
	.4byte gUnknown_08078900
	THUMB_FUNC_END sub_08014DC0

	THUMB_FUNC_START sub_08014DDC
sub_08014DDC: @ 0x08014DDC
	ldr r2, _08014DF8  @ =gUnknown_08078900
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
	.4byte gUnknown_08078900
	THUMB_FUNC_END sub_08014DDC

	THUMB_FUNC_START sub_08014DFC
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
	ldr r0, _08014E74  @ =gUnknown_0807820C
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
	.4byte gUnknown_0807820C
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
	mov r0, #11
	mov r1, #0
	bl sub_080070E8
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

	THUMB_FUNC_START sub_080150F0
sub_080150F0: @ 0x080150F0
	push {r4,lr}
	sub sp, sp, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _080150FE
	b _0801522A
_080150FE:
	lsl r0, r0, #2
	ldr r1, _08015108  @ =0x0801510C
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08015108:
	.4byte _0801510C
_0801510C:
	.4byte _08015124
	.4byte _0801516C
	.4byte _080151AC
	.4byte _080151D8
	.4byte _08015210
	.4byte _08015220
_08015124:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, _0801515C  @ =gUnknown_0807951C
	ldr r4, _08015160  @ =gLevelSelectWorld
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #12]
	mov r1, #1
	neg r1, r1
	mov r0, sp
	bl sub_08032F24
	ldr r1, _08015164  @ =gUnknown_080794EC
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #3
	bl sub_08032788
	ldr r0, _08015168  @ =gLevelSelectData
	b _080151F8
_0801515C:
	.4byte gUnknown_0807951C
_08015160:
	.4byte gLevelSelectWorld
_08015164:
	.4byte gUnknown_080794EC
_08015168:
	.4byte gLevelSelectData
_0801516C:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, _080151A0  @ =gUnknown_08079534
	ldr r4, _080151A4  @ =gLevelSelectWorld
	mov r0, #0
	ldrsb r0, [r4, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #12]
	mov r1, #1
	neg r1, r1
	mov r0, sp
	bl sub_08032F24
	ldr r1, _080151A8  @ =gUnknown_08079504
	mov r0, #0
	ldrsb r0, [r4, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	b _080151F0
_080151A0:
	.4byte gUnknown_08079534
_080151A4:
	.4byte gLevelSelectWorld
_080151A8:
	.4byte gUnknown_08079504
_080151AC:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _080151D0  @ =gLevelSelectDKBossData
	str r0, [sp, #12]
	mov r1, #1
	neg r1, r1
	mov r0, sp
	bl sub_08032F24
	mov r0, #17
	mov r1, #3
	bl sub_08032788
	ldr r0, _080151D4  @ =gLevelSelectData
	b _080151F8
	.byte 0x00
	.byte 0x00
_080151D0:
	.4byte gLevelSelectDKBossData
_080151D4:
	.4byte gLevelSelectData
_080151D8:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _08015204  @ =gLevelSelectDKPlusBossData
	str r0, [sp, #12]
	mov r1, #1
	neg r1, r1
	mov r0, sp
	bl sub_08032F24
	mov r0, #24
_080151F0:
	mov r1, #3
	bl sub_08032788
	ldr r0, _08015208  @ =gLevelSelectPlusData
_080151F8:
	bl sub_08006968
	ldr r1, _0801520C  @ =0x03000070
	str r0, [r1]
	b _0801522A
	.byte 0x00
	.byte 0x00
_08015204:
	.4byte gLevelSelectDKPlusBossData
_08015208:
	.4byte gLevelSelectPlusData
_0801520C:
	.4byte 0x03000070
_08015210:
	ldr r1, _0801521C  @ =0x03000083
	mov r0, #7
	strb r0, [r1]
	bl sub_08029D80
	b _0801522A
_0801521C:
	.4byte 0x03000083
_08015220:
	ldr r1, _08015234  @ =0x03000083
	mov r0, #9
	strb r0, [r1]
	bl sub_08029D80
_0801522A:
	add sp, sp, #16
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08015234:
	.4byte 0x03000083
	THUMB_FUNC_END sub_080150F0

	THUMB_FUNC_START sub_08015238
sub_08015238: @ 0x08015238
	push {lr}
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015250
	ldr r0, _0801524C  @ =0x03000094
	ldr r1, [r0]
	mov r0, #15
	strh r0, [r1]
	mov r0, #1
	b _08015276
_0801524C:
	.4byte 0x03000094
_08015250:
	ldr r0, _08015260  @ =0x03000094
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08015264
	mov r0, #1
	b _08015276
	.byte 0x00
	.byte 0x00
_08015260:
	.4byte 0x03000094
_08015264:
	sub r0, r0, #1
	strh r0, [r1]
	ldr r2, _0801527C  @ =0x04000052
	mov r1, #15
	sub r1, r1, r0
	lsl r1, r1, #8
	orr r0, r0, r1
	strh r0, [r2]
	mov r0, #0
_08015276:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0801527C:
	.4byte 0x04000052
	THUMB_FUNC_END sub_08015238

	THUMB_FUNC_START level_select_init_callback
level_select_init_callback: @ 0x08015280
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #24
	mov r0, #0
	bl sub_08034898
	ldr r4, _080153C0  @ =0x0300007C
	mov r0, #32
	bl sub_08034854
	str r0, [r4]
	ldr r4, _080153C4  @ =0x03000094
	mov r0, #56
	bl sub_08034854
	add r1, r0, #0
	str r1, [r4]
	add r0, sp, #16
	mov r6, #0
	strh r6, [r0]
	ldr r2, _080153C8  @ =0x0100001C
	bl CpuSet
	bl sub_08071FE4
	cmp r0, #11
	beq _080152C4
	mov r0, #11
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_080152C4:
	ldr r0, [r4]
	mov r1, #0
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #4]
	ldr r0, _080153CC  @ =gUnknown_030009D8
	strh r2, [r0]
	ldr r0, _080153D0  @ =gUnknown_03001740
	strb r6, [r0]
	ldr r1, _080153D4  @ =gLivesCount
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bgt _080152E4
	mov r0, #1
	strb r0, [r1]
_080152E4:
	ldr r5, _080153D8  @ =0x03000085
	ldr r4, _080153DC  @ =0x03000086
	ldr r3, _080153E0  @ =0x03000088
	ldr r2, _080153E4  @ =0x03000089
	ldr r1, _080153E8  @ =0x0300008A
	ldr r0, _080153EC  @ =0x0300008B
	strb r6, [r0]
	strb r6, [r1]
	strb r6, [r2]
	strb r6, [r3]
	strb r6, [r4]
	strb r6, [r5]
	ldr r0, _080153F0  @ =0x03000087
	mov r1, #1
	mov r9, r1
	strb r1, [r0]
	ldr r1, _080153F4  @ =0x0300008D
	ldr r0, _080153F8  @ =gUnknown_085E1F2C
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldr r2, _080153FC  @ =0x0300008E
	ldr r0, _08015400  @ =gUnknown_085E0AC4
	ldrb r1, [r0, #1]
	strb r1, [r2]
	ldr r1, _08015404  @ =0x0300008F
	add r0, r0, #37
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08015408  @ =0x03000090
	ldr r0, _0801540C  @ =gUnknown_085E2870
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldr r1, _08015410  @ =0x03000091
	ldr r0, _08015414  @ =gUnknown_085C240C
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldr r1, _08015418  @ =0x03000092
	ldr r0, _0801541C  @ =gUnknown_085C7A78
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldr r1, _08015420  @ =0x0300008C
	ldr r0, _08015424  @ =gUnknown_085E3590
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldr r5, _08015428  @ =gLevelSelectWorld
	ldr r0, _0801542C  @ =gAfterTutorialWorld
	ldrb r3, [r0]
	strb r3, [r5]
	ldr r4, _08015430  @ =gLevelSelectLevel
	ldr r0, _08015434  @ =gNextLevelID
	ldrb r1, [r0]
	strb r1, [r4]
	ldr r2, _08015438  @ =gUnknown_03000B80
	mov r12, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	cmp r2, #0
	bne _08015362
	mov r0, #2
	neg r0, r0
	and r0, r0, r1
	strb r0, [r4]
_08015362:
	ldr r1, _0801543C  @ =gLevelSelectLevelCursor
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r7, _08015440  @ =gLevelSelectWorldCursor
	strb r3, [r7]
	ldr r0, _08015444  @ =gCameraHorizontalOffset
	mov r1, r8
	strh r1, [r0]
	ldr r0, _08015448  @ =gCameraVerticalOffset
	strh r1, [r0]
	ldr r0, _0801544C  @ =gUnknown_03001930
	strh r1, [r0]
	ldr r0, _08015450  @ =gUnknown_0300192C
	strh r1, [r0]
	ldr r0, _08015454  @ =gUnknown_03001BDC
	strb r6, [r0]
	ldr r0, _08015458  @ =0x03000083
	strb r6, [r0]
	cmp r2, #1
	bne _0801546C
	ldr r1, _0801545C  @ =gLevelSelectMode
	mov r0, #2
	strb r0, [r1]
	add r0, r3, #1
	strb r0, [r7]
	strb r0, [r5]
	ldr r4, _08015460  @ =gLevelSelectPlusData
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _08015464  @ =gUnknown_08079534
	mov r0, #0
	ldrsb r0, [r5, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #2
	bl sub_08032F24
	ldr r1, _08015468  @ =gUnknown_08079504
	mov r0, #0
	ldrsb r0, [r5, r0]
	sub r0, r0, #1
	b _08015560
_080153C0:
	.4byte 0x0300007C
_080153C4:
	.4byte 0x03000094
_080153C8:
	.4byte 0x0100001C
_080153CC:
	.4byte gUnknown_030009D8
_080153D0:
	.4byte gUnknown_03001740
_080153D4:
	.4byte gLivesCount
_080153D8:
	.4byte 0x03000085
_080153DC:
	.4byte 0x03000086
_080153E0:
	.4byte 0x03000088
_080153E4:
	.4byte 0x03000089
_080153E8:
	.4byte 0x0300008A
_080153EC:
	.4byte 0x0300008B
_080153F0:
	.4byte 0x03000087
_080153F4:
	.4byte 0x0300008D
_080153F8:
	.4byte gUnknown_085E1F2C
_080153FC:
	.4byte 0x0300008E
_08015400:
	.4byte gUnknown_085E0AC4
_08015404:
	.4byte 0x0300008F
_08015408:
	.4byte 0x03000090
_0801540C:
	.4byte gUnknown_085E2870
_08015410:
	.4byte 0x03000091
_08015414:
	.4byte gUnknown_085C240C
_08015418:
	.4byte 0x03000092
_0801541C:
	.4byte gUnknown_085C7A78
_08015420:
	.4byte 0x0300008C
_08015424:
	.4byte gUnknown_085E3590
_08015428:
	.4byte gLevelSelectWorld
_0801542C:
	.4byte gAfterTutorialWorld
_08015430:
	.4byte gLevelSelectLevel
_08015434:
	.4byte gNextLevelID
_08015438:
	.4byte gUnknown_03000B80
_0801543C:
	.4byte gLevelSelectLevelCursor
_08015440:
	.4byte gLevelSelectWorldCursor
_08015444:
	.4byte gCameraHorizontalOffset
_08015448:
	.4byte gCameraVerticalOffset
_0801544C:
	.4byte gUnknown_03001930
_08015450:
	.4byte gUnknown_0300192C
_08015454:
	.4byte gUnknown_03001BDC
_08015458:
	.4byte 0x03000083
_0801545C:
	.4byte gLevelSelectMode
_08015460:
	.4byte gLevelSelectPlusData
_08015464:
	.4byte gUnknown_08079534
_08015468:
	.4byte gUnknown_08079504
_0801546C:
	cmp r2, #4
	bne _080154A4
	mov r2, r12
	strb r6, [r2]
	ldr r0, _08015498  @ =gLevelSelectMode
	mov r1, r9
	strb r1, [r0]
	mov r0, #6
	strb r0, [r5]
	strb r0, [r7]
	ldr r4, _0801549C  @ =gLevelSelectData
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _080154A0  @ =gLevelSelectDKBossData
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #3
	bl sub_08032F24
	mov r0, #17
	b _08015566
_08015498:
	.4byte gLevelSelectMode
_0801549C:
	.4byte gLevelSelectData
_080154A0:
	.4byte gLevelSelectDKBossData
_080154A4:
	cmp r2, #5
	bne _080154E0
	mov r0, r9
	mov r2, r12
	strb r0, [r2]
	ldr r1, _080154D4  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	mov r0, #7
	strb r0, [r5]
	strb r0, [r7]
	ldr r4, _080154D8  @ =gLevelSelectPlusData
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _080154DC  @ =gLevelSelectDKPlusBossData
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #3
	bl sub_08032F24
	mov r0, #24
	b _08015566
	.byte 0x00
	.byte 0x00
_080154D4:
	.4byte gLevelSelectMode
_080154D8:
	.4byte gLevelSelectPlusData
_080154DC:
	.4byte gLevelSelectDKPlusBossData
_080154E0:
	cmp r2, #2
	bne _080154F4
	strb r6, [r4]
	ldr r0, _080154F0  @ =gLevelSelectMode
	strb r6, [r0]
	mov r1, r12
	strb r6, [r1]
	b _0801553C
_080154F0:
	.4byte gLevelSelectMode
_080154F4:
	cmp r2, #3
	bne _08015538
	strb r6, [r4]
	ldr r1, _08015528  @ =gLevelSelectMode
	mov r0, #2
	strb r0, [r1]
	mov r0, r9
	mov r2, r12
	strb r0, [r2]
	ldr r4, _0801552C  @ =gLevelSelectPlusData
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _08015530  @ =gUnknown_08079534
	mov r0, #0
	ldrsb r0, [r5, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #3
	bl sub_08032F24
	ldr r1, _08015534  @ =gUnknown_08079504
	b _0801555C
_08015528:
	.4byte gLevelSelectMode
_0801552C:
	.4byte gLevelSelectPlusData
_08015530:
	.4byte gUnknown_08079534
_08015534:
	.4byte gUnknown_08079504
_08015538:
	ldr r0, _080155FC  @ =gLevelSelectMode
	strb r6, [r0]
_0801553C:
	ldr r4, _08015600  @ =gLevelSelectData
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _08015604  @ =gUnknown_0807951C
	mov r0, #0
	ldrsb r0, [r5, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #3
	bl sub_08032F24
	ldr r1, _08015608  @ =gUnknown_080794EC
_0801555C:
	mov r0, #0
	ldrsb r0, [r5, r0]
_08015560:
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
_08015566:
	mov r1, #3
	bl sub_08032788
	add r0, r4, #0
	bl sub_08006968
	ldr r1, _0801560C  @ =0x03000070
	str r0, [r1]
	ldr r5, _08015610  @ =0x03000078
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	strh r0, [r5]
	ldr r4, _08015614  @ =0x03000074
	add r0, r1, #0
	bl sub_08034854
	add r1, r0, #0
	str r1, [r4]
	mov r0, sp
	add r0, r0, #18
	mov r6, #0
	strh r6, [r0]
	ldrh r2, [r5]
	lsr r2, r2, #1
	mov r3, #128
	lsl r3, r3, #17
	orr r2, r2, r3
	bl CpuSet
	ldr r0, _08015618  @ =gUnknown_03000BD0
	strb r6, [r0]
	add r4, sp, #20
	mov r0, #160
	strh r0, [r4]
	ldr r1, _0801561C  @ =0x040000D4
	str r4, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _08015620  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_08072144
	cmp r0, #0
	beq _080155CE
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_080155CE:
	ldr r0, _08015600  @ =gLevelSelectData
	bl sub_08029C9C
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #234
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	strh r6, [r4]
	ldr r1, _08015624  @ =gBGLayerOffsets 
	ldr r2, _08015628  @ =0x01000008
	add r0, r4, #0
	bl CpuSet
	add sp, sp, #24
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080155FC:
	.4byte gLevelSelectMode
_08015600:
	.4byte gLevelSelectData
_08015604:
	.4byte gUnknown_0807951C
_08015608:
	.4byte gUnknown_080794EC
_0801560C:
	.4byte 0x03000070
_08015610:
	.4byte 0x03000078
_08015614:
	.4byte 0x03000074
_08015618:
	.4byte gUnknown_03000BD0
_0801561C:
	.4byte 0x040000D4
_08015620:
	.4byte 0x81000100
_08015624:
	.4byte gBGLayerOffsets 
_08015628:
	.4byte 0x01000008
	THUMB_FUNC_END level_select_init_callback

	THUMB_FUNC_START sub_0801562C
sub_0801562C: @ 0x0801562C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #16
	ldr r6, _08015664  @ =gUnknown_030012E8
	ldrh r1, [r6]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08015684
	ldr r1, _08015668  @ =gLevelSelectLevel
	ldrb r2, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	bgt _08015670
	ldr r1, _0801566C  @ =gLevelSelectMode
	mov r0, #1
	strb r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _08015A18
_08015664:
	.4byte gUnknown_030012E8
_08015668:
	.4byte gLevelSelectLevel
_0801566C:
	.4byte gLevelSelectMode
_08015670:
	add r0, r2, #0
	sub r0, r0, #8
	strb r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _08015A18
_08015684:
	mov r7, #128
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08015720
	ldr r5, _080156C4  @ =gLevelSelectLevel
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bgt _08015718
	cmp r0, #6
	bne _080156D8
	ldr r0, _080156C8  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldr r1, _080156CC  @ =gLevelSelectWorld
	ldrb r1, [r1]
	mov r2, #7
	add r3, sp, #12
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080156D0
	ldrb r0, [r5]
	add r0, r0, #8
	strb r0, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015A18
	.byte 0x00
	.byte 0x00
_080156C4:
	.4byte gLevelSelectLevel
_080156C8:
	.4byte gUnknown_03000B80
_080156CC:
	.4byte gLevelSelectWorld
_080156D0:
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	b _08015A16
_080156D8:
	ldr r0, _08015708  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldr r1, _0801570C  @ =gLevelSelectWorld
	ldrb r1, [r1]
	mov r2, #0
	ldrsb r2, [r5, r2]
	add r2, r2, #8
	asr r2, r2, #1
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl sub_0800FA04
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015710
	ldrb r0, [r5]
	add r0, r0, #8
	strb r0, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015A18
	.byte 0x00
	.byte 0x00
_08015708:
	.4byte gUnknown_03000B80
_0801570C:
	.4byte gLevelSelectWorld
_08015710:
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	b _08015A16
_08015718:
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	b _08015A16
_08015720:
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08015730
	bl sub_08016260
	b _08015A48
_08015730:
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08015744
	bl sub_080161AC
	b _08015A48
_08015744:
	mov r0, #16
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	bne _08015752
	b _0801586C
_08015752:
	ldr r5, _08015788  @ =gLevelSelectLevel
	mov r6, #0
	ldrsb r6, [r5, r6]
	cmp r6, #10
	bgt _0801579C
	ldr r0, _0801578C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldr r1, _08015790  @ =gLevelSelectWorld
	ldrb r1, [r1]
	add r2, r6, #0
	add r2, r2, #2
	asr r2, r2, #1
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl sub_0800FA04
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015794
	ldrb r0, [r5]
	add r0, r0, #2
	strb r0, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015A18
_08015788:
	.4byte gLevelSelectLevel
_0801578C:
	.4byte gUnknown_03000B80
_08015790:
	.4byte gLevelSelectWorld
_08015794:
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	b _08015A16
_0801579C:
	mov r3, #0
	ldrsb r3, [r5, r3]
	ldr r0, _08015818  @ =gUnknown_08B2CA5C
	ldr r1, _0801581C  @ =gLevelSelectWorld
	mov r8, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldr r2, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r3, r0
	bcs _08015860
	cmp r6, #11
	bgt _0801582C
	ldr r6, _08015820  @ =gUnknown_03000B80
	ldrb r0, [r6]
	mov r2, r8
	ldrb r1, [r2]
	mov r2, #7
	bl sub_0800FA04
	lsl r0, r0, #24
	cmp r0, #0
	beq _080157EE
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_080157EE:
	ldrb r0, [r6]
	mov r2, r8
	ldrb r1, [r2]
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #0
	bl sub_0800FA04
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015824
	ldrb r0, [r5]
	add r0, r0, #2
	strb r0, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015A18
	.byte 0x00
	.byte 0x00
_08015818:
	.4byte gUnknown_08B2CA5C
_0801581C:
	.4byte gLevelSelectWorld
_08015820:
	.4byte gUnknown_03000B80
_08015824:
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	b _08015A16
_0801582C:
	ldr r0, _08015854  @ =gUnknown_03000B80
	ldrb r0, [r0]
	mov r2, r8
	ldrb r1, [r2]
	mov r2, #7
	add r3, sp, #12
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015858
	ldrb r0, [r5]
	add r0, r0, #2
	strb r0, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015A18
	.byte 0x00
	.byte 0x00
_08015854:
	.4byte gUnknown_03000B80
_08015858:
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	b _08015A16
_08015860:
	strb r4, [r5]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015A18
_0801586C:
	mov r0, #32
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _080158F4
	ldr r4, _080158B0  @ =gLevelSelectLevel
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _080158C4
	ldr r0, _080158B4  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldr r1, _080158B8  @ =gLevelSelectWorld
	ldrb r1, [r1]
	mov r2, #0
	ldrsb r2, [r4, r2]
	sub r2, r2, #1
	asr r2, r2, #1
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl sub_0800FA04
	lsl r0, r0, #24
	cmp r0, #0
	beq _080158BC
	ldrb r0, [r4]
	sub r0, r0, #2
	strb r0, [r4]
	str r5, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	b _08015A18
_080158B0:
	.4byte gLevelSelectLevel
_080158B4:
	.4byte gUnknown_03000B80
_080158B8:
	.4byte gLevelSelectWorld
_080158BC:
	str r5, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	b _08015A16
_080158C4:
	ldr r0, _080158EC  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldr r1, _080158F0  @ =gLevelSelectWorld
	ldrb r1, [r1]
	mov r2, #7
	bl sub_0800FA04
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _080158DC
	b _08015A10
_080158DC:
	mov r0, #14
	strb r0, [r4]
	str r5, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	b _08015A18
	.byte 0x00
	.byte 0x00
_080158EC:
	.4byte gUnknown_03000B80
_080158F0:
	.4byte gLevelSelectWorld
_080158F4:
	bl sub_08034004
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _08015902
	b _08015A24
_08015902:
	ldr r5, _08015934  @ =gLevelSelectWorld
	ldrb r1, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0801594C
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _08015938  @ =gLevelSelectLevel
	ldrb r1, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #13
	bgt _08015940
	ldr r0, _0801593C  @ =gUnknown_03000B80
	strb r4, [r0]
	b _08015982
	.byte 0x00
	.byte 0x00
_08015934:
	.4byte gLevelSelectWorld
_08015938:
	.4byte gLevelSelectLevel
_0801593C:
	.4byte gUnknown_03000B80
_08015940:
	ldr r0, _08015948  @ =gUnknown_03000B80
	strb r4, [r0]
	b _080159D2
	.byte 0x00
	.byte 0x00
_08015948:
	.4byte gUnknown_03000B80
_0801594C:
	ldr r6, _080159B4  @ =gUnknown_03000B80
	ldrb r0, [r6]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080103C8
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _08015A10
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _080159B8  @ =gLevelSelectLevel
	ldrb r1, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #13
	bgt _080159CC
	strb r4, [r6]
_08015982:
	ldr r0, _080159BC  @ =gNextLevelID
	strb r1, [r0]
	ldr r1, _080159C0  @ =gAfterTutorialWorld
	ldrb r0, [r5]
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r5, r0]
	mov r1, #0
	ldrsb r1, [r2, r1]
	add r1, r1, #1
	asr r1, r1, #1
	bl sub_0800F638
	ldr r0, _080159C4  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #5
	mov r1, #1
	bl sub_080070E8
	ldr r0, _080159C8  @ =gUnknown_030012F8
	strh r4, [r0]
	b _08015A48
_080159B4:
	.4byte gUnknown_03000B80
_080159B8:
	.4byte gLevelSelectLevel
_080159BC:
	.4byte gNextLevelID
_080159C0:
	.4byte gAfterTutorialWorld
_080159C4:
	.4byte gNextLevelInLevelTable
_080159C8:
	.4byte gUnknown_030012F8
_080159CC:
	ldr r0, _08015A00  @ =0x03001BA0
	strb r4, [r0]
	strb r4, [r6]
_080159D2:
	sub r1, r1, #1
	strb r1, [r2]
	ldr r0, _08015A04  @ =gNextLevelID
	strb r1, [r0]
	ldr r1, _08015A08  @ =gAfterTutorialWorld
	ldrb r0, [r5]
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r5, r0]
	mov r1, #0
	ldrsb r1, [r2, r1]
	bl sub_0800F6EC
	ldr r0, _08015A0C  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl sub_080070E8
	b _08015A48
_08015A00:
	.4byte 0x03001BA0
_08015A04:
	.4byte gNextLevelID
_08015A08:
	.4byte gAfterTutorialWorld
_08015A0C:
	.4byte gNextLevelInLevelTable
_08015A10:
	str r0, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
_08015A16:
	mov r0, #27
_08015A18:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08015A48
_08015A24:
	ldrh r1, [r6]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08015A48
	str r2, [sp]
	str r7, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
_08015A48:
	add sp, sp, #16
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801562C

	THUMB_FUNC_START sub_08015A54
sub_08015A54: @ 0x08015A54
	push {r4-r7,lr}
	sub sp, sp, #12
	ldr r5, _08015A74  @ =gUnknown_030012E8
	ldrh r1, [r5]
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08015AF8
	ldr r4, _08015A78  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #5
	ble _08015A7C
	mov r0, #0
	b _08015C28
_08015A74:
	.4byte gUnknown_030012E8
_08015A78:
	.4byte gLevelSelectWorldCursor
_08015A7C:
	ldr r0, _08015ABC  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldrb r1, [r4]
	mov r2, #0
	bl sub_0800FA04
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _08015A92
	b _08015C28
_08015A92:
	ldr r0, _08015AC0  @ =gLevelSelectLevelCursor
	ldr r7, _08015AC4  @ =gLevelSelectLevel
	mov r2, #0
	strb r2, [r7]
	strb r2, [r0]
	ldr r5, _08015AC8  @ =gLevelSelectWorld
	mov r1, #0
	ldrsb r1, [r5, r1]
	ldrb r3, [r4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r1, r0
	bne _08015AD0
	ldr r0, _08015ACC  @ =gLevelSelectMode
	strb r2, [r0]
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #178
	b _08015C30
_08015ABC:
	.4byte gUnknown_03000B80
_08015AC0:
	.4byte gLevelSelectLevelCursor
_08015AC4:
	.4byte gLevelSelectLevel
_08015AC8:
	.4byte gLevelSelectWorld
_08015ACC:
	.4byte gLevelSelectMode
_08015AD0:
	strb r3, [r5]
	strb r2, [r7]
	mov r1, #1
	ldr r0, _08015AF4  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	b _08015C30
	.byte 0x00
	.byte 0x00
_08015AF4:
	.4byte 0x03000083
_08015AF8:
	bl sub_0801B224
	add r4, r0, #0
	cmp r4, #0
	beq _08015B04
	b _08015C5E
_08015B04:
	ldrh r1, [r5]
	mov r2, #9
	and r2, r2, r1
	cmp r2, #0
	bne _08015B10
	b _08015C3C
_08015B10:
	ldr r5, _08015B58  @ =gLevelSelectWorldCursor
	mov r2, #0
	ldrsb r2, [r5, r2]
	cmp r2, #6
	bne _08015B6C
	ldr r1, _08015B5C  @ =gUnknown_03000B80
	mov r0, #4
	strb r0, [r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #0
	mov r1, #0
	bl sub_0800F6EC
	ldr r0, _08015B60  @ =gAfterTutorialWorld
	strb r4, [r0]
	ldr r0, _08015B64  @ =gNextLevelID
	strb r4, [r0]
	ldr r0, _08015B68  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl sub_080070E8
	b _08015C5E
	.byte 0x00
	.byte 0x00
_08015B58:
	.4byte gLevelSelectWorldCursor
_08015B5C:
	.4byte gUnknown_03000B80
_08015B60:
	.4byte gAfterTutorialWorld
_08015B64:
	.4byte gNextLevelID
_08015B68:
	.4byte gNextLevelInLevelTable
_08015B6C:
	cmp r2, #7
	bne _08015BB8
	ldr r1, _08015BA4  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	ldr r0, _08015BA8  @ =gLevelSelectWorld
	strb r4, [r5]
	strb r4, [r0]
	ldr r1, _08015BAC  @ =gLevelSelectLevel
	ldr r0, _08015BB0  @ =gLevelSelectLevelCursor
	strb r4, [r0]
	strb r4, [r1]
	ldr r0, _08015BB4  @ =0x03000083
	strb r2, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #4
	bl sub_080150F0
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #183
	b _08015C30
_08015BA4:
	.4byte gLevelSelectMode
_08015BA8:
	.4byte gLevelSelectWorld
_08015BAC:
	.4byte gLevelSelectLevel
_08015BB0:
	.4byte gLevelSelectLevelCursor
_08015BB4:
	.4byte 0x03000083
_08015BB8:
	ldr r0, _08015BEC  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldrb r1, [r5]
	ldr r2, _08015BF0  @ =gLevelSelectLevelCursor
	ldrb r2, [r2]
	bl sub_0800FA04
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _08015C28
	ldr r3, _08015BF4  @ =gLevelSelectWorld
	mov r1, #0
	ldrsb r1, [r3, r1]
	ldrb r2, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bne _08015BFC
	ldr r0, _08015BF8  @ =gLevelSelectMode
	strb r4, [r0]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #24
	b _08015C30
_08015BEC:
	.4byte gUnknown_03000B80
_08015BF0:
	.4byte gLevelSelectLevelCursor
_08015BF4:
	.4byte gLevelSelectWorld
_08015BF8:
	.4byte gLevelSelectMode
_08015BFC:
	strb r2, [r3]
	ldr r0, _08015C20  @ =gLevelSelectLevel
	strb r4, [r0]
	mov r1, #1
	ldr r0, _08015C24  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	b _08015C30
	.byte 0x00
	.byte 0x00
_08015C20:
	.4byte gLevelSelectLevel
_08015C24:
	.4byte 0x03000083
_08015C28:
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #27
_08015C30:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08015C5E
_08015C3C:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08015C5E
	str r2, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
_08015C5E:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08015A54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08015C68
sub_08015C68: @ 0x08015C68
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	ldr r7, _08015CA0  @ =gUnknown_030012E8
	ldrh r1, [r7]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08015CC6
	ldr r2, _08015CA4  @ =gLevelSelectLevel
	ldrb r0, [r2]
	mov r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bgt _08015CAC
	ldr r1, _08015CA8  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _08015F3C
_08015CA0:
	.4byte gUnknown_030012E8
_08015CA4:
	.4byte gLevelSelectLevel
_08015CA8:
	.4byte gLevelSelectMode
_08015CAC:
	cmp r1, #6
	bne _08015CB4
	sub r0, r0, #4
	b _08015CB6
_08015CB4:
	sub r0, r0, #3
_08015CB6:
	strb r0, [r2]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _08015F3C
_08015CC6:
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _08015D2C
	ldr r5, _08015D10  @ =gLevelSelectLevel
	ldrb r2, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bgt _08015D24
	ldr r0, _08015D14  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldr r1, _08015D18  @ =gLevelSelectWorld
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r2, r2, #3
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl sub_0800FA04
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015D1C
	ldrb r0, [r5]
	add r0, r0, #3
	strb r0, [r5]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015F3C
	.byte 0x00
	.byte 0x00
_08015D10:
	.4byte gLevelSelectLevel
_08015D14:
	.4byte gUnknown_03000B80
_08015D18:
	.4byte gLevelSelectWorld
_08015D1C:
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	b _08015F3A
_08015D24:
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	b _08015F3A
_08015D2C:
	mov r0, #16
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08015DAC
	ldr r4, _08015D88  @ =gLevelSelectLevel
	mov r3, #0
	ldrsb r3, [r4, r3]
	ldr r0, _08015D8C  @ =gUnknown_08B2CDF4
	ldr r7, _08015D90  @ =gLevelSelectWorld
	mov r1, #0
	ldrsb r1, [r7, r1]
	ldr r2, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	sub r0, r0, #12
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r3, r0
	bcs _08015DA0
	ldr r0, _08015D94  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldrb r1, [r7]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldrb r2, [r4]
	add r2, r2, #1
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl sub_0800FA04
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015D98
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	str r5, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	b _08015F3C
_08015D88:
	.4byte gLevelSelectLevel
_08015D8C:
	.4byte gUnknown_08B2CDF4
_08015D90:
	.4byte gLevelSelectWorld
_08015D94:
	.4byte gUnknown_03000B80
_08015D98:
	str r5, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	b _08015F3A
_08015DA0:
	strb r5, [r4]
	str r5, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	b _08015F3C
_08015DAC:
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08015E38
	ldr r5, _08015DF0  @ =gLevelSelectLevel
	ldrb r2, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _08015E04
	ldr r0, _08015DF4  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldr r1, _08015DF8  @ =gLevelSelectWorld
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	sub r2, r2, #1
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl sub_0800FA04
	lsl r0, r0, #24
	cmp r0, #0
	beq _08015DFC
	ldrb r0, [r5]
	sub r0, r0, #1
	strb r0, [r5]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015F3C
	.byte 0x00
	.byte 0x00
_08015DF0:
	.4byte gLevelSelectLevel
_08015DF4:
	.4byte gUnknown_03000B80
_08015DF8:
	.4byte gLevelSelectWorld
_08015DFC:
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	b _08015F3A
_08015E04:
	ldr r0, _08015E30  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldr r1, _08015E34  @ =gLevelSelectWorld
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #6
	bl sub_0800FA04
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _08015E22
	b _08015F34
_08015E22:
	mov r0, #6
	strb r0, [r5]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _08015F3C
_08015E30:
	.4byte gUnknown_03000B80
_08015E34:
	.4byte gLevelSelectWorld
_08015E38:
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08015E48
	bl sub_08016654
	b _08015F6C
_08015E48:
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08015E5C
	bl sub_080163F4
	b _08015F6C
_08015E5C:
	bl sub_08034004
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _08015F48
	ldr r7, _08015EA8  @ =gLevelSelectWorld
	ldrb r1, [r7]
	mov r2, #0
	ldrsb r2, [r7, r2]
	cmp r2, #1
	bne _08015EBC
	ldr r0, _08015EAC  @ =gUnknown_03000B80
	strb r2, [r0]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08015EB0  @ =gNextLevelID
	ldr r2, _08015EB4  @ =gLevelSelectLevel
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _08015EB8  @ =gAfterTutorialWorld
	ldrb r0, [r7]
	sub r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r7, r0]
	sub r0, r0, #1
	mov r1, #0
	ldrsb r1, [r2, r1]
	b _08015F08
	.byte 0x00
	.byte 0x00
_08015EA8:
	.4byte gLevelSelectWorld
_08015EAC:
	.4byte gUnknown_03000B80
_08015EB0:
	.4byte gNextLevelID
_08015EB4:
	.4byte gLevelSelectLevel
_08015EB8:
	.4byte gAfterTutorialWorld
_08015EBC:
	ldr r0, _08015F20  @ =gUnknown_03000B80
	mov r8, r0
	ldrb r0, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _08015F24  @ =gLevelSelectLevel
	ldrb r2, [r5]
	bl sub_0800FA04
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _08015F34
	mov r0, #1
	mov r1, r8
	strb r0, [r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08015F28  @ =gNextLevelID
	ldrb r0, [r5]
	strb r0, [r1]
	ldr r1, _08015F2C  @ =gAfterTutorialWorld
	ldrb r0, [r7]
	sub r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r7, r0]
	sub r0, r0, #1
	mov r1, #0
	ldrsb r1, [r5, r1]
_08015F08:
	bl sub_0800F6EC
	ldr r0, _08015F30  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl sub_080070E8
	b _08015F6C
_08015F20:
	.4byte gUnknown_03000B80
_08015F24:
	.4byte gLevelSelectLevel
_08015F28:
	.4byte gNextLevelID
_08015F2C:
	.4byte gAfterTutorialWorld
_08015F30:
	.4byte gNextLevelInLevelTable
_08015F34:
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
_08015F3A:
	mov r0, #27
_08015F3C:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08015F6C
_08015F48:
	ldrh r1, [r7]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08015F6C
	str r2, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
_08015F6C:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08015C68

	THUMB_FUNC_START sub_08015F78
sub_08015F78: @ 0x08015F78
	push {r4-r7,lr}
	sub sp, sp, #12
	ldr r5, _08015F9C  @ =gUnknown_030012E8
	ldrh r1, [r5]
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0801602C
	ldr r4, _08015FA0  @ =gLevelSelectWorldCursor
	ldrb r1, [r4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #6
	ble _08015FA4
	mov r0, #0
	b _0801616C
	.byte 0x00
	.byte 0x00
_08015F9C:
	.4byte gUnknown_030012E8
_08015FA0:
	.4byte gLevelSelectWorldCursor
_08015FA4:
	cmp r0, #0
	bne _08015FAA
	b _0801616C
_08015FAA:
	ldr r0, _08015FF0  @ =gUnknown_03000B80
	ldrb r0, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #0
	bl sub_0800FA04
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _08015FC4
	b _0801616C
_08015FC4:
	ldr r0, _08015FF4  @ =gLevelSelectLevelCursor
	ldr r7, _08015FF8  @ =gLevelSelectLevel
	mov r2, #0
	strb r2, [r7]
	strb r2, [r0]
	ldr r5, _08015FFC  @ =gLevelSelectWorld
	mov r1, #0
	ldrsb r1, [r5, r1]
	ldrb r3, [r4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r1, r0
	bne _08016004
	ldr r0, _08016000  @ =gLevelSelectMode
	mov r1, #2
	strb r1, [r0]
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #178
	b _08016174
_08015FF0:
	.4byte gUnknown_03000B80
_08015FF4:
	.4byte gLevelSelectLevelCursor
_08015FF8:
	.4byte gLevelSelectLevel
_08015FFC:
	.4byte gLevelSelectWorld
_08016000:
	.4byte gLevelSelectMode
_08016004:
	strb r3, [r5]
	strb r2, [r7]
	mov r1, #4
	ldr r0, _08016028  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	b _08016174
	.byte 0x00
	.byte 0x00
_08016028:
	.4byte 0x03000083
_0801602C:
	bl sub_0801B258
	add r4, r0, #0
	cmp r4, #0
	beq _08016038
	b _080161A2
_08016038:
	ldrh r1, [r5]
	mov r2, #9
	and r2, r2, r1
	cmp r2, #0
	bne _08016044
	b _08016180
_08016044:
	ldr r5, _08016090  @ =gLevelSelectWorldCursor
	ldrb r1, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #6
	ble _080160A4
	ldr r1, _08016094  @ =gUnknown_03000B80
	mov r0, #5
	strb r0, [r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #0
	mov r1, #1
	bl sub_0800F6EC
	ldr r1, _08016098  @ =gNextLevelID
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0801609C  @ =gAfterTutorialWorld
	strb r4, [r0]
	ldr r0, _080160A0  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl sub_080070E8
	b _080161A2
	.byte 0x00
	.byte 0x00
_08016090:
	.4byte gLevelSelectWorldCursor
_08016094:
	.4byte gUnknown_03000B80
_08016098:
	.4byte gNextLevelID
_0801609C:
	.4byte gAfterTutorialWorld
_080160A0:
	.4byte gNextLevelInLevelTable
_080160A4:
	cmp r0, #0
	bne _080160F4
	ldr r1, _080160E0  @ =gLevelSelectMode
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080160E4  @ =gLevelSelectWorld
	mov r0, #7
	strb r0, [r5]
	strb r0, [r1]
	ldr r1, _080160E8  @ =gLevelSelectLevel
	ldr r0, _080160EC  @ =gLevelSelectLevelCursor
	strb r4, [r0]
	strb r4, [r1]
	ldr r1, _080160F0  @ =0x03000083
	mov r0, #9
	strb r0, [r1]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #5
	bl sub_080150F0
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #183
	b _08016174
_080160E0:
	.4byte gLevelSelectMode
_080160E4:
	.4byte gLevelSelectWorld
_080160E8:
	.4byte gLevelSelectLevel
_080160EC:
	.4byte gLevelSelectLevelCursor
_080160F0:
	.4byte 0x03000083
_080160F4:
	ldr r0, _08016130  @ =gUnknown_03000B80
	ldrb r0, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _08016134  @ =gLevelSelectLevelCursor
	ldrb r2, [r2]
	bl sub_0800FA04
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _0801616C
	ldr r3, _08016138  @ =gLevelSelectWorld
	mov r1, #0
	ldrsb r1, [r3, r1]
	ldrb r2, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bne _08016140
	ldr r1, _0801613C  @ =gLevelSelectMode
	mov r0, #2
	strb r0, [r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #24
	b _08016174
	.byte 0x00
	.byte 0x00
_08016130:
	.4byte gUnknown_03000B80
_08016134:
	.4byte gLevelSelectLevelCursor
_08016138:
	.4byte gLevelSelectWorld
_0801613C:
	.4byte gLevelSelectMode
_08016140:
	sub r0, r2, #1
	strb r0, [r3]
	ldr r0, _08016164  @ =gLevelSelectLevel
	strb r4, [r0]
	mov r1, #4
	ldr r0, _08016168  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	b _08016174
_08016164:
	.4byte gLevelSelectLevel
_08016168:
	.4byte 0x03000083
_0801616C:
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #27
_08016174:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _080161A2
_08016180:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _080161A2
	str r2, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
_080161A2:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08015F78

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080161AC
sub_080161AC: @ 0x080161AC
	push {r4-r6,lr}
	sub sp, sp, #12
	ldr r5, _08016220  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _08016240
	cmp r0, #6
	bgt _080161F4
	ldr r0, _08016224  @ =0x03000094
	ldr r3, [r0]
	mov r0, #15
	mov r4, #15
	strh r4, [r3]
	ldr r2, _08016228  @ =0x04000050
	ldr r6, _0801622C  @ =0x00003D42
	add r1, r6, #0
	strh r1, [r2]
	add r2, r2, #2
	ldrh r1, [r3]
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r0, r0, r1
	strh r0, [r2]
	mov r1, #3
	mov r0, #5
	strh r0, [r3, #6]
	ldr r0, _08016230  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	strh r4, [r3]
_080161F4:
	ldrb r0, [r5]
	sub r0, r0, #1
	strb r0, [r5]
	ldr r1, _08016234  @ =gLevelSelectWorld
	strb r0, [r1]
	ldr r2, _08016238  @ =gLevelSelectLevel
	ldr r1, _0801623C  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #177
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08016256
_08016220:
	.4byte gLevelSelectWorldCursor
_08016224:
	.4byte 0x03000094
_08016228:
	.4byte 0x04000050
_0801622C:
	.4byte 0x00003D42
_08016230:
	.4byte 0x03000083
_08016234:
	.4byte gLevelSelectWorld
_08016238:
	.4byte gLevelSelectLevel
_0801623C:
	.4byte gLevelSelectLevelCursor
_08016240:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08016256:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080161AC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08016260
sub_08016260: @ 0x08016260
	push {r4,lr}
	sub sp, sp, #12
	ldr r4, _080162C4  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bgt _080162F0
	ldr r0, _080162C8  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldrb r1, [r4]
	bl sub_080103C8
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _080162E4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r1, _080162CC  @ =gLevelSelectWorld
	strb r0, [r1]
	ldr r2, _080162D0  @ =gLevelSelectLevel
	ldr r1, _080162D4  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #3
	ldr r0, _080162D8  @ =0x03000094
	ldr r2, [r0]
	mov r3, #0
	mov r0, #5
	strh r0, [r2, #6]
	ldr r0, _080162DC  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r4, #250
	lsl r4, r4, #5
	add r0, r4, #0
	strh r0, [r1]
	mov r1, #15
	strh r1, [r2]
	ldr r0, _080162E0  @ =0x04000052
	strh r1, [r0]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #177
	b _080163B8
_080162C4:
	.4byte gLevelSelectWorldCursor
_080162C8:
	.4byte gUnknown_03000B80
_080162CC:
	.4byte gLevelSelectWorld
_080162D0:
	.4byte gLevelSelectLevel
_080162D4:
	.4byte gLevelSelectLevelCursor
_080162D8:
	.4byte 0x03000094
_080162DC:
	.4byte 0x03000083
_080162E0:
	.4byte 0x04000052
_080162E4:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _080163B8
_080162F0:
	cmp r0, #5
	bne _08016370
	ldr r0, _08016348  @ =gUnknown_03000B80
	ldrb r0, [r0]
	mov r1, #5
	bl sub_080103C8
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _08016364
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r1, _0801634C  @ =gLevelSelectWorld
	strb r0, [r1]
	ldr r2, _08016350  @ =gLevelSelectLevel
	ldr r1, _08016354  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #13
	ldr r0, _08016358  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldr r0, _0801635C  @ =0x03000094
	ldr r0, [r0]
	mov r2, #0
	mov r1, #15
	strh r1, [r0]
	ldr r0, _08016360  @ =0x04000052
	strh r1, [r0]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #177
	b _080163B8
	.byte 0x00
	.byte 0x00
_08016348:
	.4byte gUnknown_03000B80
_0801634C:
	.4byte gLevelSelectWorld
_08016350:
	.4byte gLevelSelectLevel
_08016354:
	.4byte gLevelSelectLevelCursor
_08016358:
	.4byte 0x03000083
_0801635C:
	.4byte 0x03000094
_08016360:
	.4byte 0x04000052
_08016364:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _080163B8
_08016370:
	bl sub_08014BD0
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _080163D8
	ldr r1, _080163C4  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	ldr r1, _080163C8  @ =gLevelSelectWorld
	mov r0, #1
	strb r0, [r4]
	strb r0, [r1]
	ldr r2, _080163CC  @ =gLevelSelectLevel
	ldr r1, _080163D0  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #7
	ldr r0, _080163D4  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r4, #250
	lsl r4, r4, #5
	add r0, r4, #0
	strh r0, [r1]
	mov r0, #4
	bl sub_080150F0
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #183
_080163B8:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _080163EC
_080163C4:
	.4byte gLevelSelectMode
_080163C8:
	.4byte gLevelSelectWorld
_080163CC:
	.4byte gLevelSelectLevel
_080163D0:
	.4byte gLevelSelectLevelCursor
_080163D4:
	.4byte 0x03000083
_080163D8:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_080163EC:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016260

	THUMB_FUNC_START sub_080163F4
sub_080163F4: @ 0x080163F4
	push {r4-r7,lr}
	sub sp, sp, #12
	ldr r6, _08016444  @ =gLevelSelectWorldCursor
	mov r1, #0
	ldrsb r1, [r6, r1]
	cmp r1, #0
	bgt _08016404
	b _080165F2
_08016404:
	cmp r1, #1
	bne _0801645C
	ldr r0, _08016448  @ =gLevelSelectMode
	strb r1, [r0]
	ldr r1, _0801644C  @ =gLevelSelectWorld
	mov r0, #6
	strb r0, [r6]
	strb r0, [r1]
	ldr r2, _08016450  @ =gLevelSelectLevel
	ldr r1, _08016454  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #9
	ldr r0, _08016458  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #5
	bl sub_080150F0
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #183
	b _080165E6
_08016444:
	.4byte gLevelSelectWorldCursor
_08016448:
	.4byte gLevelSelectMode
_0801644C:
	.4byte gLevelSelectWorld
_08016450:
	.4byte gLevelSelectLevel
_08016454:
	.4byte gLevelSelectLevelCursor
_08016458:
	.4byte 0x03000083
_0801645C:
	cmp r1, #1
	ble _080164E8
	ldr r0, _080164CC  @ =0x03000094
	ldr r3, [r0]
	mov r5, #0
	mov r7, #0
	mov r12, r7
	mov r0, #15
	mov r4, #15
	strh r4, [r3]
	ldr r2, _080164D0  @ =0x04000050
	ldr r7, _080164D4  @ =0x00003D42
	add r1, r7, #0
	strh r1, [r2]
	add r2, r2, #2
	ldrh r1, [r3]
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r0, r0, r1
	strh r0, [r2]
	mov r1, #6
	mov r0, #5
	strh r0, [r3, #6]
	ldr r0, _080164D8  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	strh r4, [r3]
	ldrb r1, [r6]
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #8
	bne _080164AA
	sub r0, r1, #1
	strb r0, [r6]
_080164AA:
	ldrb r0, [r6]
	sub r0, r0, #1
	strb r0, [r6]
	ldr r1, _080164DC  @ =gLevelSelectWorld
	strb r0, [r1]
	ldr r1, _080164E0  @ =gLevelSelectLevel
	ldr r0, _080164E4  @ =gLevelSelectLevelCursor
	strb r5, [r0]
	strb r5, [r1]
	mov r7, r12
	str r7, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #177
	b _080165E6
	.byte 0x00
	.byte 0x00
_080164CC:
	.4byte 0x03000094
_080164D0:
	.4byte 0x04000050
_080164D4:
	.4byte 0x00003D42
_080164D8:
	.4byte 0x03000083
_080164DC:
	.4byte gLevelSelectWorld
_080164E0:
	.4byte gLevelSelectLevel
_080164E4:
	.4byte gLevelSelectLevelCursor
_080164E8:
	mov r0, #5
	mov r1, #0
	mov r2, #0
	bl sub_0800FA04
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	beq _08016554
	ldr r1, _0801653C  @ =gLevelSelectWorld
	mov r0, #7
	strb r0, [r6]
	strb r0, [r1]
	ldr r2, _08016540  @ =gLevelSelectLevel
	ldr r1, _08016544  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #16
	ldr r0, _08016548  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldr r0, _0801654C  @ =0x03000094
	ldr r0, [r0]
	mov r2, #0
	mov r1, #15
	strh r1, [r0]
	ldr r0, _08016550  @ =0x04000052
	strh r1, [r0]
	mov r0, #8
	strb r0, [r6]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #177
	b _080165E6
_0801653C:
	.4byte gLevelSelectWorld
_08016540:
	.4byte gLevelSelectLevel
_08016544:
	.4byte gLevelSelectLevelCursor
_08016548:
	.4byte 0x03000083
_0801654C:
	.4byte 0x03000094
_08016550:
	.4byte 0x04000052
_08016554:
	mov r0, #1
	mov r1, #5
	mov r2, #0
	bl sub_0800FA04
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _080165DC
	ldr r1, _080165C0  @ =gLevelSelectWorld
	mov r0, #6
	strb r0, [r6]
	strb r0, [r1]
	ldr r1, _080165C4  @ =gLevelSelectLevel
	ldr r0, _080165C8  @ =gLevelSelectLevelCursor
	strb r5, [r0]
	strb r5, [r1]
	ldr r0, _080165CC  @ =0x03000094
	ldr r3, [r0]
	mov r0, #15
	mov r4, #15
	strh r4, [r3]
	ldr r2, _080165D0  @ =0x04000050
	ldr r7, _080165D4  @ =0x00003D42
	add r1, r7, #0
	strh r1, [r2]
	add r2, r2, #2
	ldrh r1, [r3]
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r0, r0, r1
	strh r0, [r2]
	mov r1, #6
	mov r0, #5
	strh r0, [r3, #6]
	ldr r0, _080165D8  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r7, #250
	lsl r7, r7, #5
	add r0, r7, #0
	strh r0, [r1]
	strh r4, [r3]
	strh r4, [r2]
	mov r0, #7
	strb r0, [r6]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #177
	b _080165E6
	.byte 0x00
	.byte 0x00
_080165C0:
	.4byte gLevelSelectWorld
_080165C4:
	.4byte gLevelSelectLevel
_080165C8:
	.4byte gLevelSelectLevelCursor
_080165CC:
	.4byte 0x03000094
_080165D0:
	.4byte 0x04000050
_080165D4:
	.4byte 0x00003D42
_080165D8:
	.4byte 0x03000083
_080165DC:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
_080165E6:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08016638
_080165F2:
	ldr r1, _08016640  @ =gLevelSelectMode
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08016644  @ =gLevelSelectWorld
	mov r0, #7
	strb r0, [r6]
	strb r0, [r1]
	ldr r2, _08016648  @ =gLevelSelectLevel
	ldr r1, _0801664C  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #9
	ldr r0, _08016650  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #5
	bl sub_080150F0
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #183
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08016638:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_08016640:
	.4byte gLevelSelectMode
_08016644:
	.4byte gLevelSelectWorld
_08016648:
	.4byte gLevelSelectLevel
_0801664C:
	.4byte gLevelSelectLevelCursor
_08016650:
	.4byte 0x03000083
	THUMB_FUNC_END sub_080163F4

	THUMB_FUNC_START sub_08016654
sub_08016654: @ 0x08016654
	push {r4-r6,lr}
	sub sp, sp, #12
	ldr r4, _0801668C  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _08016690  @ =gUnknown_08B2CDF4
	ldr r1, [r1]
	cmp r0, r1
	bls _08016668
	b _0801683C
_08016668:
	ldrb r1, [r4]
	add r2, r0, #0
	cmp r2, #0
	bne _080166A0
	add r1, r1, #1
	strb r1, [r4]
	ldr r0, _08016694  @ =gLevelSelectWorld
	strb r1, [r0]
	ldr r1, _08016698  @ =gLevelSelectLevel
	ldr r0, _0801669C  @ =gLevelSelectLevelCursor
	strb r2, [r0]
	strb r2, [r1]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #177
	b _08016830
_0801668C:
	.4byte gLevelSelectWorldCursor
_08016690:
	.4byte gUnknown_08B2CDF4
_08016694:
	.4byte gLevelSelectWorld
_08016698:
	.4byte gLevelSelectLevel
_0801669C:
	.4byte gLevelSelectLevelCursor
_080166A0:
	cmp r2, #5
	bgt _08016738
	ldr r0, _08016718  @ =gUnknown_03000B80
	ldrb r0, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080103C8
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _080166BC
	b _08016826
_080166BC:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r1, _0801671C  @ =gLevelSelectWorld
	strb r0, [r1]
	ldr r2, _08016720  @ =gLevelSelectLevel
	ldr r1, _08016724  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	ldr r0, _08016728  @ =0x03000094
	ldr r3, [r0]
	mov r5, #0
	mov r0, #15
	mov r4, #15
	strh r4, [r3]
	ldr r2, _0801672C  @ =0x04000050
	ldr r6, _08016730  @ =0x00003D42
	add r1, r6, #0
	strh r1, [r2]
	add r2, r2, #2
	ldrh r1, [r3]
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r0, r0, r1
	strh r0, [r2]
	mov r1, #6
	mov r0, #5
	strh r0, [r3, #6]
	ldr r0, _08016734  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r6, #250
	lsl r6, r6, #5
	add r0, r6, #0
	strh r0, [r1]
	strh r4, [r3]
	strh r4, [r2]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #177
	b _08016830
	.byte 0x00
	.byte 0x00
_08016718:
	.4byte gUnknown_03000B80
_0801671C:
	.4byte gLevelSelectWorld
_08016720:
	.4byte gLevelSelectLevel
_08016724:
	.4byte gLevelSelectLevelCursor
_08016728:
	.4byte 0x03000094
_0801672C:
	.4byte 0x04000050
_08016730:
	.4byte 0x00003D42
_08016734:
	.4byte 0x03000083
_08016738:
	mov r0, #5
	mov r1, #0
	mov r2, #0
	bl sub_0800FA04
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _08016826
	ldrb r1, [r4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #6
	bne _080167AC
	add r1, r1, #1
	strb r1, [r4]
	ldr r0, _08016794  @ =gLevelSelectWorld
	strb r1, [r0]
	ldr r2, _08016798  @ =gLevelSelectLevel
	ldr r1, _0801679C  @ =gLevelSelectLevelCursor
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r1, #16
	ldr r0, _080167A0  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldr r0, _080167A4  @ =0x03000094
	ldr r0, [r0]
	mov r2, #0
	mov r1, #15
	strh r1, [r0]
	ldr r0, _080167A8  @ =0x04000052
	strh r1, [r0]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #177
	b _08016830
	.byte 0x00
	.byte 0x00
_08016794:
	.4byte gLevelSelectWorld
_08016798:
	.4byte gLevelSelectLevel
_0801679C:
	.4byte gLevelSelectLevelCursor
_080167A0:
	.4byte 0x03000083
_080167A4:
	.4byte 0x03000094
_080167A8:
	.4byte 0x04000052
_080167AC:
	cmp r0, #7
	bne _08016824
	ldr r0, _08016808  @ =gLevelSelectWorld
	mov r1, #0
	strb r1, [r4]
	strb r1, [r0]
	ldr r2, _0801680C  @ =gLevelSelectLevel
	ldr r0, _08016810  @ =gLevelSelectLevelCursor
	strb r1, [r0]
	strb r1, [r2]
	ldr r0, _08016814  @ =0x03000094
	ldr r3, [r0]
	mov r5, #0
	mov r0, #15
	mov r4, #15
	strh r4, [r3]
	ldr r2, _08016818  @ =0x04000050
	ldr r6, _0801681C  @ =0x00003D42
	add r1, r6, #0
	strh r1, [r2]
	add r2, r2, #2
	ldrh r1, [r3]
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r0, r0, r1
	strh r0, [r2]
	mov r1, #6
	mov r0, #5
	strh r0, [r3, #6]
	ldr r0, _08016820  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r6, #250
	lsl r6, r6, #5
	add r0, r6, #0
	strh r0, [r1]
	strh r4, [r3]
	strh r4, [r2]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #177
	b _08016830
	.byte 0x00
	.byte 0x00
_08016808:
	.4byte gLevelSelectWorld
_0801680C:
	.4byte gLevelSelectLevel
_08016810:
	.4byte gLevelSelectLevelCursor
_08016814:
	.4byte 0x03000094
_08016818:
	.4byte 0x04000050
_0801681C:
	.4byte 0x00003D42
_08016820:
	.4byte 0x03000083
_08016824:
	mov r1, #0
_08016826:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
_08016830:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08016852
_0801683C:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08016852:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016654

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801685C
sub_0801685C: @ 0x0801685C
	push {r4,lr}
	sub sp, sp, #12
	ldr r0, _08016898  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r4, #128
	add r0, r4, #0
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _080168A4
	ldr r1, _0801689C  @ =gLevelSelectMode
	mov r0, #4
	strb r0, [r1]
	mov r1, #11
	ldr r0, _080168A0  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	b _0801691C
	.byte 0x00
	.byte 0x00
_08016898:
	.4byte gUnknown_030012E8
_0801689C:
	.4byte gLevelSelectMode
_080168A0:
	.4byte 0x03000083
_080168A4:
	mov r0, #16
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #0
	beq _080168C4
	str r1, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _080168EC
_080168C4:
	mov r0, #32
	and r0, r0, r2
	cmp r0, #0
	beq _080168EC
	ldr r1, _08016928  @ =gLevelSelectWorldCursor
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, _0801692C  @ =gLevelSelectMode
	mov r0, #1
	strb r0, [r1]
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_080168EC:
	ldr r0, _08016930  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _08016938
	ldr r1, _0801692C  @ =gLevelSelectMode
	mov r0, #4
	strb r0, [r1]
	mov r1, #11
	ldr r0, _08016934  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #24
_0801691C:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _0801695C
_08016928:
	.4byte gLevelSelectWorldCursor
_0801692C:
	.4byte gLevelSelectMode
_08016930:
	.4byte gUnknown_030012E8
_08016934:
	.4byte 0x03000083
_08016938:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _0801695C
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
_0801695C:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801685C

	THUMB_FUNC_START sub_08016964
sub_08016964: @ 0x08016964
	push {r4,lr}
	sub sp, sp, #12
	ldr r0, _08016998  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _080169A0
	ldr r1, _0801699C  @ =gLevelSelectMode
	mov r0, #1
	strb r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08016A1C
	.byte 0x00
	.byte 0x00
_08016998:
	.4byte gUnknown_030012E8
_0801699C:
	.4byte gLevelSelectMode
_080169A0:
	mov r2, #9
	and r2, r2, r1
	cmp r2, #0
	beq _080169F8
	ldr r1, _080169E8  @ =gUnknown_03000B80
	mov r0, #4
	strb r0, [r1]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #0
	mov r1, #0
	bl sub_0800F6EC
	ldr r0, _080169EC  @ =gAfterTutorialWorld
	strb r4, [r0]
	ldr r0, _080169F0  @ =gNextLevelID
	strb r4, [r0]
	ldr r0, _080169F4  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl sub_080070E8
	b _08016A1C
	.byte 0x00
	.byte 0x00
_080169E8:
	.4byte gUnknown_03000B80
_080169EC:
	.4byte gAfterTutorialWorld
_080169F0:
	.4byte gNextLevelID
_080169F4:
	.4byte gNextLevelInLevelTable
_080169F8:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08016A1C
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
_08016A1C:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016964

	THUMB_FUNC_START sub_08016A24
sub_08016A24: @ 0x08016A24
	push {r4,lr}
	sub sp, sp, #12
	ldr r0, _08016A60  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r4, #128
	add r0, r4, #0
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _08016A6C
	ldr r1, _08016A64  @ =gLevelSelectMode
	mov r0, #5
	strb r0, [r1]
	mov r1, #14
	ldr r0, _08016A68  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	b _08016AE4
	.byte 0x00
	.byte 0x00
_08016A60:
	.4byte gUnknown_030012E8
_08016A64:
	.4byte gLevelSelectMode
_08016A68:
	.4byte 0x03000083
_08016A6C:
	mov r0, #16
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #0
	beq _08016A8C
	str r1, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08016AB4
_08016A8C:
	mov r0, #32
	and r0, r0, r2
	cmp r0, #0
	beq _08016AB4
	ldr r1, _08016AF0  @ =gLevelSelectWorldCursor
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, _08016AF4  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08016AB4:
	ldr r0, _08016AF8  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _08016B00
	ldr r1, _08016AF4  @ =gLevelSelectMode
	mov r0, #5
	strb r0, [r1]
	mov r1, #14
	ldr r0, _08016AFC  @ =0x03000083
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #250
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #24
_08016AE4:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08016B24
_08016AF0:
	.4byte gLevelSelectWorldCursor
_08016AF4:
	.4byte gLevelSelectMode
_08016AF8:
	.4byte gUnknown_030012E8
_08016AFC:
	.4byte 0x03000083
_08016B00:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _08016B24
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
_08016B24:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016A24

	THUMB_FUNC_START sub_08016B2C
sub_08016B2C: @ 0x08016B2C
	push {r4,lr}
	sub sp, sp, #12
	ldr r0, _08016B60  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08016B68
	ldr r1, _08016B64  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08016BE4
	.byte 0x00
	.byte 0x00
_08016B60:
	.4byte gUnknown_030012E8
_08016B64:
	.4byte gLevelSelectMode
_08016B68:
	mov r2, #9
	and r2, r2, r1
	cmp r2, #0
	beq _08016BC0
	ldr r1, _08016BB0  @ =gUnknown_03000B80
	mov r0, #5
	strb r0, [r1]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #0
	mov r1, #1
	bl sub_0800F6EC
	ldr r1, _08016BB4  @ =gNextLevelID
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08016BB8  @ =gAfterTutorialWorld
	strb r4, [r0]
	ldr r0, _08016BBC  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl sub_080070E8
	b _08016BE4
_08016BB0:
	.4byte gUnknown_03000B80
_08016BB4:
	.4byte gNextLevelID
_08016BB8:
	.4byte gAfterTutorialWorld
_08016BBC:
	.4byte gNextLevelInLevelTable
_08016BC0:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08016BE4
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
_08016BE4:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016B2C

	THUMB_FUNC_START level_select_main
level_select_main: @ 0x08016BEC
	push {r4,r5,lr}
	sub sp, sp, #40
	bl sub_08029C20
	bl sub_080331FC
	ldr r3, _08016C28  @ =0x03000083
	mov r2, #0
	ldrsb r2, [r3, r2]
	cmp r2, #0
	bne _08016C04
	b _08016FB0
_08016C04:
	ldr r2, _08016C2C  @ =gBGLayerOffsets 
	ldr r0, _08016C30  @ =0x03000094
	ldr r1, [r0]
	mov r0, #0
	strh r0, [r1, #4]
	strh r0, [r2, #12]
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #15
	bls _08016C1E
	b _0801706A
_08016C1E:
	lsl r0, r0, #2
	ldr r1, _08016C34  @ =0x08016C38
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08016C28:
	.4byte 0x03000083
_08016C2C:
	.4byte gBGLayerOffsets 
_08016C30:
	.4byte 0x03000094
_08016C34:
	.4byte _08016C38
_08016C38:
	.4byte _08016C78
	.4byte _08016C94
	.4byte _08016D8A
	.4byte _08016D08
	.4byte _08016D24
	.4byte _08016CF6
	.4byte _08016E44
	.4byte _08016ED0
	.4byte _08016EFC
	.4byte _08016F7C
	.4byte _08016D9C
	.4byte _08016DB8
	.4byte _08016DDC
	.4byte _08016DF0
	.4byte _08016E0C
	.4byte _08016E30
_08016C78:
	mov r0, #1
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016C86
	b _0801706A
_08016C86:
	ldr r1, _08016C90  @ =0x03000083
	mov r0, #3
	strb r0, [r1]
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016C90:
	.4byte 0x03000083
_08016C94:
	mov r0, #0
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	beq _08016CBC
	ldr r1, _08016CB4  @ =gLevelSelectMode
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	beq _08016CAC
	mov r0, #0
_08016CAC:
	strb r0, [r1]
	ldr r1, _08016CB8  @ =0x03000083
	mov r0, #0
	b _08016F90
_08016CB4:
	.4byte gLevelSelectMode
_08016CB8:
	.4byte 0x03000083
_08016CBC:
	ldr r0, _08016CDC  @ =0x03000094
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	cmp r0, #0
	bne _08016D56
	ldr r0, _08016CE0  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #136
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08016CE4
	bl sub_08016260
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016CDC:
	.4byte 0x03000094
_08016CE0:
	.4byte gUnknown_030012E8
_08016CE4:
	mov r0, #136
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08016CF0
	b _0801706A
_08016CF0:
	bl sub_080161AC
	b _0801706A
_08016CF6:
	mov r0, #1
	bl sub_080150F0
	ldr r1, _08016D04  @ =0x03000083
	mov r0, #5
	strb r0, [r1]
	b _0801706A
_08016D04:
	.4byte 0x03000083
_08016D08:
	mov r0, #1
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016D16
	b _0801706A
_08016D16:
	ldr r1, _08016D20  @ =0x03000083
	mov r0, #6
	strb r0, [r1]
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016D20:
	.4byte 0x03000083
_08016D24:
	mov r0, #0
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	beq _08016D4C
	ldr r1, _08016D44  @ =gLevelSelectMode
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _08016D3C
	mov r0, #2
_08016D3C:
	strb r0, [r1]
	ldr r1, _08016D48  @ =0x03000083
	mov r0, #0
	b _08016F90
_08016D44:
	.4byte gLevelSelectMode
_08016D48:
	.4byte 0x03000083
_08016D4C:
	ldr r0, _08016D5C  @ =0x03000094
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _08016D60
_08016D56:
	sub r0, r0, #1
	strh r0, [r1, #6]
	b _0801706A
_08016D5C:
	.4byte 0x03000094
_08016D60:
	ldr r0, _08016D74  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #136
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08016D78
	bl sub_08016654
	b _0801706A
_08016D74:
	.4byte gUnknown_030012E8
_08016D78:
	mov r0, #136
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08016D84
	b _0801706A
_08016D84:
	bl sub_080163F4
	b _0801706A
_08016D8A:
	mov r0, #0
	bl sub_080150F0
	ldr r1, _08016D98  @ =0x03000083
	mov r0, #2
	strb r0, [r1]
	b _0801706A
_08016D98:
	.4byte 0x03000083
_08016D9C:
	mov r0, #1
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016DAA
	b _0801706A
_08016DAA:
	ldr r1, _08016DB4  @ =0x03000083
	mov r0, #13
	strb r0, [r1]
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016DB4:
	.4byte 0x03000083
_08016DB8:
	mov r0, #0
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016DC6
	b _0801706A
_08016DC6:
	ldr r1, _08016DD4  @ =gLevelSelectMode
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08016DD8  @ =0x03000083
	mov r0, #0
	b _08016F90
	.byte 0x00
	.byte 0x00
_08016DD4:
	.4byte gLevelSelectMode
_08016DD8:
	.4byte 0x03000083
_08016DDC:
	ldr r1, _08016DEC  @ =0x03000083
	mov r0, #12
	strb r0, [r1]
	mov r0, #2
	bl sub_080150F0
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016DEC:
	.4byte 0x03000083
_08016DF0:
	mov r0, #1
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016DFE
	b _0801706A
_08016DFE:
	ldr r1, _08016E08  @ =0x03000083
	mov r0, #16
	strb r0, [r1]
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016E08:
	.4byte 0x03000083
_08016E0C:
	mov r0, #0
	bl sub_08015238
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016E1A
	b _0801706A
_08016E1A:
	ldr r1, _08016E28  @ =gLevelSelectMode
	mov r0, #3
	strb r0, [r1]
	ldr r1, _08016E2C  @ =0x03000083
	mov r0, #0
	b _08016F90
	.byte 0x00
	.byte 0x00
_08016E28:
	.4byte gLevelSelectMode
_08016E2C:
	.4byte 0x03000083
_08016E30:
	ldr r1, _08016E40  @ =0x03000083
	mov r0, #15
	strb r0, [r1]
	mov r0, #3
	bl sub_080150F0
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016E40:
	.4byte 0x03000083
_08016E44:
	bl sub_08029F7C
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016E50
	b _0801706A
_08016E50:
	ldr r5, _08016EB0  @ =gLevelSelectPlusData
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r1, _08016EB4  @ =gUnknown_08079534
	ldr r4, _08016EB8  @ =gLevelSelectWorld
	mov r0, #0
	ldrsb r0, [r4, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #3
	bl sub_08032F24
	ldr r1, _08016EBC  @ =gUnknown_08079504
	mov r0, #0
	ldrsb r0, [r4, r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #3
	bl sub_08032788
	add r0, sp, #16
	mov r1, #0
	strh r1, [r0]
	ldr r1, _08016EC0  @ =0x03000074
	ldr r1, [r1]
	ldr r2, _08016EC4  @ =0x03000078
	ldrh r2, [r2]
	lsr r2, r2, #1
	mov r3, #128
	lsl r3, r3, #17
	orr r2, r2, r3
	bl CpuSet
	add r0, r5, #0
	bl sub_08006968
	ldr r1, _08016EC8  @ =0x03000070
	str r0, [r1]
	ldr r1, _08016ECC  @ =0x03000083
	mov r0, #8
	b _08016F4C
_08016EB0:
	.4byte gLevelSelectPlusData
_08016EB4:
	.4byte gUnknown_08079534
_08016EB8:
	.4byte gLevelSelectWorld
_08016EBC:
	.4byte gUnknown_08079504
_08016EC0:
	.4byte 0x03000074
_08016EC4:
	.4byte 0x03000078
_08016EC8:
	.4byte 0x03000070
_08016ECC:
	.4byte 0x03000083
_08016ED0:
	ldr r0, _08016EEC  @ =gUnknown_03000C28
	ldrb r2, [r0]
	cmp r2, #0
	beq _08016EDA
	b _0801706A
_08016EDA:
	ldr r1, _08016EF0  @ =gUnknown_03000B80
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08016EF4  @ =0x03000083
	strb r2, [r0]
	ldr r1, _08016EF8  @ =gLevelSelectMode
	mov r0, #3
	b _08016F90
	.byte 0x00
	.byte 0x00
_08016EEC:
	.4byte gUnknown_03000C28
_08016EF0:
	.4byte gUnknown_03000B80
_08016EF4:
	.4byte 0x03000083
_08016EF8:
	.4byte gLevelSelectMode
_08016EFC:
	bl sub_08029F7C
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016F08
	b _0801706A
_08016F08:
	add r0, sp, #20
	ldr r4, _08016F5C  @ =gLevelSelectData
	str r4, [sp, #20]
	str r4, [r0, #4]
	str r4, [r0, #8]
	ldr r1, _08016F60  @ =gLevelSelectDKBossData
	str r1, [r0, #12]
	mov r1, #3
	bl sub_08032F24
	add r0, sp, #36
	mov r1, #0
	strh r1, [r0]
	ldr r1, _08016F64  @ =0x03000074
	ldr r1, [r1]
	ldr r2, _08016F68  @ =0x03000078
	ldrh r2, [r2]
	lsr r2, r2, #1
	mov r3, #128
	lsl r3, r3, #17
	orr r2, r2, r3
	bl CpuSet
	mov r0, #17
	mov r1, #3
	bl sub_08032788
	add r0, r4, #0
	bl sub_08006968
	ldr r1, _08016F6C  @ =0x03000070
	str r0, [r1]
	ldr r1, _08016F70  @ =0x03000083
	mov r0, #10
_08016F4C:
	strb r0, [r1]
	ldr r0, _08016F74  @ =0x00003D42
	ldr r1, _08016F78  @ =0x0000A0A0
	mov r2, #0
	bl sub_08029CDC
	b _0801706A
	.byte 0x00
	.byte 0x00
_08016F5C:
	.4byte gLevelSelectData
_08016F60:
	.4byte gLevelSelectDKBossData
_08016F64:
	.4byte 0x03000074
_08016F68:
	.4byte 0x03000078
_08016F6C:
	.4byte 0x03000070
_08016F70:
	.4byte 0x03000083
_08016F74:
	.4byte 0x00003D42
_08016F78:
	.4byte 0x0000A0A0
_08016F7C:
	ldr r0, _08016FA0  @ =gUnknown_03000C28
	ldrb r1, [r0]
	cmp r1, #0
	bne _0801706A
	ldr r0, _08016FA4  @ =gUnknown_03000B80
	strb r1, [r0]
	ldr r0, _08016FA8  @ =0x03000083
	strb r1, [r0]
	ldr r1, _08016FAC  @ =gLevelSelectMode
	mov r0, #1
_08016F90:
	strb r0, [r1]
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #234
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	b _0801706A
_08016FA0:
	.4byte gUnknown_03000C28
_08016FA4:
	.4byte gUnknown_03000B80
_08016FA8:
	.4byte 0x03000083
_08016FAC:
	.4byte gLevelSelectMode
_08016FB0:
	ldr r0, _08016FCC  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08016FD4
	ldr r0, _08016FD0  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	ble _08016FE0
	b _08017000
	.byte 0x00
	.byte 0x00
_08016FCC:
	.4byte gUnknown_03000B80
_08016FD0:
	.4byte gLevelSelectWorldCursor
_08016FD4:
	ldr r0, _08016FF4  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bgt _08017000
_08016FE0:
	ldr r0, _08016FF8  @ =0x03000094
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	add r0, r0, #80
	strh r0, [r1, #4]
	ldr r1, _08016FFC  @ =gBGLayerOffsets 
	lsl r0, r0, #16
	lsr r0, r0, #24
	strh r0, [r1, #12]
	b _0801700A
_08016FF4:
	.4byte gLevelSelectWorldCursor
_08016FF8:
	.4byte 0x03000094
_08016FFC:
	.4byte gBGLayerOffsets 
_08017000:
	ldr r0, _08017020  @ =gBGLayerOffsets 
	ldr r1, _08017024  @ =0x03000094
	ldr r1, [r1]
	strh r2, [r1, #4]
	strh r2, [r0, #12]
_0801700A:
	ldr r0, _08017028  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bhi _0801706A
	lsl r0, r0, #2
	ldr r1, _0801702C  @ =0x08017030
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08017020:
	.4byte gBGLayerOffsets 
_08017024:
	.4byte 0x03000094
_08017028:
	.4byte gLevelSelectMode
_0801702C:
	.4byte _08017030
_08017030:
	.4byte _08017048
	.4byte _0801704E
	.4byte _08017054
	.4byte _0801705A
	.4byte _08017060
	.4byte _08017066
_08017048:
	bl sub_0801562C
	b _0801706A
_0801704E:
	bl sub_08015A54
	b _0801706A
_08017054:
	bl sub_08015C68
	b _0801706A
_0801705A:
	bl sub_08015F78
	b _0801706A
_08017060:
	bl sub_08016964
	b _0801706A
_08017066:
	bl sub_08016B2C
_0801706A:
	ldr r0, _080170CC  @ =0x03000085
	ldr r1, _080170D0  @ =0x0300008D
	ldr r3, _080170D4  @ =gUnknown_085E1F2C
	mov r2, #6
	bl sub_0801B288
	ldr r0, _080170D8  @ =0x03000088
	ldr r1, _080170DC  @ =0x03000090
	ldr r3, _080170E0  @ =gUnknown_085E2870
	mov r2, #18
	bl sub_0801B288
	ldr r0, _080170E4  @ =0x03000086
	ldr r1, _080170E8  @ =0x0300008E
	ldr r4, _080170EC  @ =gUnknown_085E0AC4
	mov r2, #2
	add r3, r4, #0
	bl sub_0801B288
	ldr r0, _080170F0  @ =0x03000087
	ldr r1, _080170F4  @ =0x0300008F
	mov r2, #2
	add r3, r4, #0
	bl sub_0801B288
	ldr r0, _080170F8  @ =0x03000089
	ldr r1, _080170FC  @ =0x03000091
	ldr r3, _08017100  @ =gUnknown_085C240C
	mov r2, #2
	bl sub_0801B288
	ldr r0, _08017104  @ =0x0300008A
	ldr r1, _08017108  @ =0x03000092
	ldr r3, _0801710C  @ =gUnknown_085C7A78
	mov r2, #18
	bl sub_0801B288
	ldr r0, _08017110  @ =0x0300008B
	ldr r1, _08017114  @ =0x0300008C
	ldr r3, _08017118  @ =gUnknown_085E3590
	mov r2, #18
	bl sub_0801B288
	bl sub_0801711C
	add sp, sp, #40
	pop {r4,r5}
	pop {r0}
	bx r0
_080170CC:
	.4byte 0x03000085
_080170D0:
	.4byte 0x0300008D
_080170D4:
	.4byte gUnknown_085E1F2C
_080170D8:
	.4byte 0x03000088
_080170DC:
	.4byte 0x03000090
_080170E0:
	.4byte gUnknown_085E2870
_080170E4:
	.4byte 0x03000086
_080170E8:
	.4byte 0x0300008E
_080170EC:
	.4byte gUnknown_085E0AC4
_080170F0:
	.4byte 0x03000087
_080170F4:
	.4byte 0x0300008F
_080170F8:
	.4byte 0x03000089
_080170FC:
	.4byte 0x03000091
_08017100:
	.4byte gUnknown_085C240C
_08017104:
	.4byte 0x0300008A
_08017108:
	.4byte 0x03000092
_0801710C:
	.4byte gUnknown_085C7A78
_08017110:
	.4byte 0x0300008B
_08017114:
	.4byte 0x0300008C
_08017118:
	.4byte gUnknown_085E3590
	THUMB_FUNC_END level_select_main

	THUMB_FUNC_START sub_0801711C
sub_0801711C: @ 0x0801711C
	push {r4-r6,lr}
	sub sp, sp, #4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r4, _0801716C  @ =0x0300007C
	ldr r1, [r4]
	ldr r2, _08017170  @ =0x01000010
	mov r0, sp
	bl CpuSet
	ldr r0, _08017174  @ =gLevelSelectMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0801717C
	mov r3, #0
	add r6, r4, #0
_0801713E:
	ldr r0, _08017178  @ =gLevelSelectWorld
	ldrb r1, [r0]
	lsl r2, r3, #24
	lsr r2, r2, #24
	lsl r4, r3, #16
	asr r4, r4, #16
	lsl r5, r4, #2
	ldr r3, [r6]
	add r3, r3, r5
	add r3, r3, #1
	mov r0, #0
	bl sub_0800FB28
	ldr r1, [r6]
	add r5, r5, r1
	strb r0, [r5]
	add r4, r4, #1
	lsl r4, r4, #16
	lsr r3, r4, #16
	asr r4, r4, #16
	cmp r4, #7
	ble _0801713E
	b _080171BC
_0801716C:
	.4byte 0x0300007C
_08017170:
	.4byte 0x01000010
_08017174:
	.4byte gLevelSelectMode
_08017178:
	.4byte gLevelSelectWorld
_0801717C:
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _080171BC
	mov r3, #0
	add r6, r4, #0
_0801718A:
	ldr r0, _080171C4  @ =gLevelSelectWorld
	ldrb r1, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r2, r3, #24
	lsr r2, r2, #24
	lsl r4, r3, #16
	asr r4, r4, #16
	lsl r5, r4, #2
	ldr r3, [r6]
	add r3, r3, r5
	add r3, r3, #1
	mov r0, #1
	bl sub_0800FB28
	ldr r1, [r6]
	add r5, r5, r1
	strb r0, [r5]
	add r4, r4, #1
	lsl r4, r4, #16
	lsr r3, r4, #16
	asr r4, r4, #16
	cmp r4, #6
	ble _0801718A
_080171BC:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080171C4:
	.4byte gLevelSelectWorld
	THUMB_FUNC_END sub_0801711C

	THUMB_FUNC_START sub_080171C8
sub_080171C8: @ 0x080171C8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r1, r1, #24
	lsr r5, r1, #24
	ldr r1, _0801723C  @ =gUnknown_080763F4
	mov r0, sp
	mov r2, #8
	bl memcpy
	ldr r0, _08017240  @ =0x03000083
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080171F4
	b _080174DA
_080171F4:
	ldr r0, _08017244  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	beq _080171FE
	b _080174DA
_080171FE:
	ldr r0, _08017248  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0801720C
	b _0801735C
_0801720C:
	ldr r2, _0801724C  @ =gUnknown_085C7A78
	ldr r0, _08017250  @ =0x0300008A
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r2, #8
	add r0, r0, r2
	ldr r1, [r0]
	mov r0, #240
	lsl r0, r0, #4
	and r0, r0, r1
	lsr r3, r0, #8
	mov r0, #240
	lsl r0, r0, #8
	and r1, r1, r0
	lsr r2, r1, #12
	cmp r3, #15
	bne _08017254
	cmp r2, #0
	bne _08017254
	mov r3, #16
	b _0801725E
_0801723C:
	.4byte gUnknown_080763F4
_08017240:
	.4byte 0x03000083
_08017244:
	.4byte gUnknown_03000C28
_08017248:
	.4byte gLevelSelectMode
_0801724C:
	.4byte gUnknown_085C7A78
_08017250:
	.4byte 0x0300008A
_08017254:
	cmp r3, #0
	bne _0801725E
	cmp r2, #15
	bne _0801725E
	mov r2, #16
_0801725E:
	ldr r1, _08017334  @ =0x04000050
	mov r4, #253
	lsl r4, r4, #6
	add r0, r4, #0
	strh r0, [r1]
	add r1, r1, #2
	lsl r0, r3, #8
	orr r2, r2, r0
	strh r2, [r1]
	add r1, r1, #130
	ldr r0, _08017338  @ =gUnknown_085C7D00
	str r0, [r1]
	ldr r6, _0801733C  @ =0x03000094
	mov r10, r6
	ldr r3, [r6]
	ldrh r0, [r3, #2]
	lsl r0, r0, #3
	ldr r2, _08017340  @ =gOamData
	mov r8, r2
	add r0, r0, r8
	str r0, [r1, #4]
	ldr r0, _08017344  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r6, [r3, #20]
	add r1, r1, r6
	ldr r6, _08017348  @ =0x000003FF
	add r0, r6, #0
	and r1, r1, r0
	ldr r0, _0801734C  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r3, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r2, [r1, #1]
	mov r6, #13
	neg r6, r6
	add r0, r6, #0
	and r0, r0, r2
	mov r2, #4
	mov r12, r2
	mov r3, r12
	orr r0, r0, r3
	strb r0, [r1, #1]
	mov r4, r10
	ldr r0, [r4]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	lsl r0, r5, #24
	asr r0, r0, #24
	add r0, sp, r0
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r5, [r4]
	mov r9, r5
	ldrh r3, [r5, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldr r5, _08017350  @ =gUnknown_08078904
	lsl r4, r7, #24
	asr r4, r4, #21
	add r0, r4, r5
	ldr r1, [r0]
	sub r1, r1, #8
	ldr r2, _08017354  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08017358  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	mov r3, r9
	ldrh r1, [r3, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	add r5, r5, #4
	add r4, r4, r5
	ldr r0, [r4]
	sub r0, r0, #8
	strb r0, [r1]
	mov r4, r10
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	lsl r0, r0, #3
	add r0, r0, r8
	ldrb r1, [r0, #5]
	and r6, r6, r1
	mov r5, r12
	orr r6, r6, r5
	strb r6, [r0, #5]
	ldr r1, [r4]
	b _080174D4
_08017334:
	.4byte 0x04000050
_08017338:
	.4byte gUnknown_085C7D00
_0801733C:
	.4byte 0x03000094
_08017340:
	.4byte gOamData
_08017344:
	.4byte 0x84000002
_08017348:
	.4byte 0x000003FF
_0801734C:
	.4byte 0xFFFFFC00
_08017350:
	.4byte gUnknown_08078904
_08017354:
	.4byte 0x000001FF
_08017358:
	.4byte 0xFFFFFE00
_0801735C:
	cmp r0, #1
	beq _08017362
	b _080174DA
_08017362:
	lsl r3, r5, #24
	asr r1, r3, #24
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r1, _080173A4  @ =gUnknown_080789F4
	add r0, r0, r1
	mov r8, r0
	ldr r0, _080173A8  @ =0x03000088
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r6, r8
	ldr r2, [r6, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r0, #8]
	mov r0, #240
	lsl r0, r0, #4
	and r0, r0, r1
	lsr r4, r0, #8
	mov r0, #240
	lsl r0, r0, #8
	and r1, r1, r0
	lsr r2, r1, #12
	add r5, r3, #0
	cmp r4, #15
	bne _080173AC
	cmp r2, #0
	bne _080173AC
	mov r4, #16
	b _080173B6
_080173A4:
	.4byte gUnknown_080789F4
_080173A8:
	.4byte 0x03000088
_080173AC:
	cmp r4, #0
	bne _080173B6
	cmp r2, #15
	bne _080173B6
	mov r2, #16
_080173B6:
	ldr r1, _08017414  @ =0x04000050
	mov r3, #253
	lsl r3, r3, #6
	add r0, r3, #0
	strh r0, [r1]
	add r1, r1, #2
	lsl r0, r4, #8
	orr r2, r2, r0
	strh r2, [r1]
	add r1, r1, #130
	mov r4, r8
	ldr r0, [r4, #16]
	str r0, [r1]
	ldr r4, _08017418  @ =0x03000094
	ldr r2, [r4]
	ldrh r0, [r2, #2]
	lsl r0, r0, #3
	ldr r3, _0801741C  @ =gOamData
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _08017420  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r2, #2]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #1]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	asr r5, r5, #24
	add r7, r4, #0
	add r6, r3, #0
	cmp r5, #5
	bgt _08017424
	ldr r3, [r7]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r0, [r3, #8]
	b _0801746C
_08017414:
	.4byte 0x04000050
_08017418:
	.4byte 0x03000094
_0801741C:
	.4byte gOamData
_08017420:
	.4byte 0x84000002
_08017424:
	cmp r5, #7
	bne _0801745C
	ldr r3, [r7]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r5, [r3, #12]
	add r1, r1, r5
	ldr r5, _08017454  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _08017458  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r0, sp
	add r0, r0, #7
	b _08017488
_08017454:
	.4byte 0x000003FF
_08017458:
	.4byte 0xFFFFFC00
_0801745C:
	ldr r3, [r7]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r0, [r3, #10]
_0801746C:
	add r1, r1, r0
	ldr r0, _080174EC  @ =0x000003FF
	mov r9, r0
	mov r0, r9
	and r1, r1, r0
	ldr r0, _080174F0  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, sp
	add r0, r1, r5
_08017488:
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r4, [r7]
	ldrh r1, [r4, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	mov r3, r8
	mov r5, #0
	ldrsh r2, [r3, r5]
	ldr r3, _080174F4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080174F8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, r8
	ldrh r1, [r4, #2]
	strb r1, [r0]
	ldr r0, [r7]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r7]
_080174D4:
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
_080174DA:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080174EC:
	.4byte 0x000003FF
_080174F0:
	.4byte 0xFFFFFC00
_080174F4:
	.4byte 0x000001FF
_080174F8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080171C8

	THUMB_FUNC_START sub_080174FC
sub_080174FC: @ 0x080174FC
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #12
	lsl r1, r1, #24
	lsr r0, r1, #24
	asr r1, r1, #24
	cmp r1, #6
	ble _08017512
	mov r0, #6
_08017512:
	lsl r1, r0, #24
	asr r1, r1, #24
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	lsl r0, r1, #1
	add r0, r0, r1
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r1, #3
	ble _08017534
	lsl r0, r5, #16
	ldr r1, _080175F4  @ =0xFFFF0000
	add r0, r0, r1
	lsr r5, r0, #16
_08017534:
	ldr r0, _080175F8  @ =0x03000074
	mov r9, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r1, #5
	mov r8, r1
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #0
	mov r2, #32
	mov r3, #2
	bl sub_0800667C
	lsl r0, r5, #16
	asr r0, r0, #16
	ldr r6, _080175FC  @ =0x03000070
	ldr r1, [r6]
	lsl r4, r4, #16
	asr r4, r4, #16
	lsl r2, r4, #2
	mov r5, #132
	lsl r5, r5, #1
	add r1, r1, r5
	add r1, r1, r2
	ldr r2, [r1]
	mov r1, r9
	ldr r3, [r1]
	mov r1, r8
	str r1, [sp]
	mov r1, #0
	bl sub_08006548
	ldr r1, [r6]
	add r0, r4, #1
	lsl r0, r0, #2
	add r1, r1, r5
	add r1, r1, r0
	ldr r2, [r1]
	mov r0, r9
	ldr r3, [r0]
	mov r1, r8
	str r1, [sp]
	mov r0, #0
	mov r1, #2
	bl sub_08006548
	ldr r1, [r6]
	add r0, r4, #2
	lsl r0, r0, #2
	add r1, r1, r5
	add r1, r1, r0
	ldr r2, [r1]
	mov r0, r9
	ldr r3, [r0]
	mov r1, r8
	str r1, [sp]
	mov r0, #0
	mov r1, #5
	bl sub_08006548
	ldr r1, [r6]
	add r0, r4, #3
	lsl r0, r0, #2
	add r1, r1, r5
	add r1, r1, r0
	ldr r2, [r1]
	mov r0, r9
	ldr r3, [r0]
	mov r1, r8
	str r1, [sp]
	mov r0, #29
	mov r1, #5
	bl sub_08006548
	ldr r0, [r6]
	add r4, r4, #4
	lsl r4, r4, #2
	add r0, r0, r5
	add r0, r0, r4
	ldr r2, [r0]
	mov r0, r9
	ldr r3, [r0]
	mov r1, r8
	str r1, [sp]
	mov r0, #0
	mov r1, #17
	bl sub_08006548
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
_080175F4:
	.4byte 0xFFFF0000
_080175F8:
	.4byte 0x03000074
_080175FC:
	.4byte 0x03000070
	THUMB_FUNC_END sub_080174FC

	THUMB_FUNC_START sub_08017600
sub_08017600: @ 0x08017600
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r1, r1, #24
	lsr r4, r1, #24
	ldr r1, _08017680  @ =gUnknown_080763F4
	mov r0, sp
	mov r2, #8
	bl memcpy
	ldr r0, _08017684  @ =0x03000083
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0801762C
	b _08017922
_0801762C:
	ldr r0, _08017688  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017636
	b _08017922
_08017636:
	ldr r0, _0801768C  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	beq _08017644
	b _0801779C
_08017644:
	lsl r0, r4, #24
	add r5, r0, #0
	cmp r5, #0
	bge _0801764E
	b _08017922
_0801764E:
	ldr r2, _08017690  @ =gUnknown_085C7A78
	ldr r0, _08017694  @ =0x0300008A
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r2, #8
	add r0, r0, r2
	ldr r1, [r0]
	mov r0, #240
	lsl r0, r0, #4
	and r0, r0, r1
	lsr r3, r0, #8
	mov r0, #240
	lsl r0, r0, #8
	and r1, r1, r0
	lsr r2, r1, #12
	cmp r3, #15
	bne _08017698
	cmp r2, #0
	bne _08017698
	mov r3, #16
	b _080176A2
	.byte 0x00
	.byte 0x00
_08017680:
	.4byte gUnknown_080763F4
_08017684:
	.4byte 0x03000083
_08017688:
	.4byte gUnknown_03000C28
_0801768C:
	.4byte gLevelSelectMode
_08017690:
	.4byte gUnknown_085C7A78
_08017694:
	.4byte 0x0300008A
_08017698:
	cmp r3, #0
	bne _080176A2
	cmp r2, #15
	bne _080176A2
	mov r2, #16
_080176A2:
	ldr r1, _08017774  @ =0x04000050
	mov r4, #253
	lsl r4, r4, #6
	add r0, r4, #0
	strh r0, [r1]
	add r1, r1, #2
	lsl r0, r3, #8
	orr r2, r2, r0
	strh r2, [r1]
	add r1, r1, #130
	ldr r0, _08017778  @ =gUnknown_085C7D00
	str r0, [r1]
	ldr r6, _0801777C  @ =0x03000094
	mov r10, r6
	ldr r3, [r6]
	ldrh r0, [r3, #2]
	lsl r0, r0, #3
	ldr r2, _08017780  @ =gOamData
	mov r8, r2
	add r0, r0, r8
	str r0, [r1, #4]
	ldr r0, _08017784  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r6, [r3, #20]
	add r1, r1, r6
	ldr r6, _08017788  @ =0x000003FF
	add r0, r6, #0
	and r1, r1, r0
	ldr r0, _0801778C  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #1]
	mov r6, #13
	neg r6, r6
	add r0, r6, #0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	mov r1, r10
	ldr r0, [r1]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	asr r0, r5, #24
	add r0, sp, r0
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r2, r10
	ldr r2, [r2]
	mov r9, r2
	ldrh r3, [r2, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldr r5, _08017790  @ =gUnknown_08078944
	lsl r4, r7, #24
	asr r4, r4, #21
	add r0, r4, r5
	ldr r1, [r0]
	sub r1, r1, #8
	ldr r2, _08017794  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08017798  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	mov r3, r9
	ldrh r1, [r3, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	add r5, r5, #4
	add r4, r4, r5
	ldr r0, [r4]
	sub r0, r0, #8
	strb r0, [r1]
	mov r4, r10
	ldr r0, [r4]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r1, #5]
	and r6, r6, r0
	mov r0, #8
	orr r6, r6, r0
	strb r6, [r1, #5]
	ldr r1, [r4]
	b _0801791C
_08017774:
	.4byte 0x04000050
_08017778:
	.4byte gUnknown_085C7D00
_0801777C:
	.4byte 0x03000094
_08017780:
	.4byte gOamData
_08017784:
	.4byte 0x84000002
_08017788:
	.4byte 0x000003FF
_0801778C:
	.4byte 0xFFFFFC00
_08017790:
	.4byte gUnknown_08078944
_08017794:
	.4byte 0x000001FF
_08017798:
	.4byte 0xFFFFFE00
_0801779C:
	cmp r0, #3
	beq _080177A2
	b _08017922
_080177A2:
	lsl r0, r4, #24
	cmp r0, #0
	bge _080177AA
	mov r4, #7
_080177AA:
	lsl r3, r4, #24
	asr r1, r3, #24
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r1, _080177EC  @ =gUnknown_08078AB4
	add r0, r0, r1
	mov r8, r0
	ldr r0, _080177F0  @ =0x03000088
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r5, r8
	ldr r2, [r5, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r0, #8]
	mov r0, #240
	lsl r0, r0, #4
	and r0, r0, r1
	lsr r4, r0, #8
	mov r0, #240
	lsl r0, r0, #8
	and r1, r1, r0
	lsr r2, r1, #12
	add r5, r3, #0
	cmp r4, #15
	bne _080177F4
	cmp r2, #0
	bne _080177F4
	mov r4, #16
	b _080177FE
_080177EC:
	.4byte gUnknown_08078AB4
_080177F0:
	.4byte 0x03000088
_080177F4:
	cmp r4, #0
	bne _080177FE
	cmp r2, #15
	bne _080177FE
	mov r2, #16
_080177FE:
	ldr r1, _0801785C  @ =0x04000050
	mov r6, #253
	lsl r6, r6, #6
	add r0, r6, #0
	strh r0, [r1]
	add r1, r1, #2
	lsl r0, r4, #8
	orr r2, r2, r0
	strh r2, [r1]
	add r1, r1, #130
	mov r2, r8
	ldr r0, [r2, #16]
	str r0, [r1]
	ldr r4, _08017860  @ =0x03000094
	ldr r2, [r4]
	ldrh r0, [r2, #2]
	lsl r0, r0, #3
	ldr r3, _08017864  @ =gOamData
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _08017868  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r2, #2]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #1]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	asr r5, r5, #24
	add r7, r4, #0
	add r6, r3, #0
	cmp r5, #5
	bgt _0801786C
	ldr r3, [r7]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r0, [r3, #8]
	b _080178B4
_0801785C:
	.4byte 0x04000050
_08017860:
	.4byte 0x03000094
_08017864:
	.4byte gOamData
_08017868:
	.4byte 0x84000002
_0801786C:
	cmp r5, #7
	bne _080178A4
	ldr r3, [r7]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r5, [r3, #12]
	add r1, r1, r5
	ldr r5, _0801789C  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _080178A0  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r0, sp
	add r0, r0, #7
	b _080178D0
_0801789C:
	.4byte 0x000003FF
_080178A0:
	.4byte 0xFFFFFC00
_080178A4:
	ldr r3, [r7]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldrh r0, [r3, #10]
_080178B4:
	add r1, r1, r0
	ldr r0, _08017934  @ =0x000003FF
	mov r9, r0
	mov r0, r9
	and r1, r1, r0
	ldr r0, _08017938  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r3, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, sp
	add r0, r1, r5
_080178D0:
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r4, [r7]
	ldrh r1, [r4, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	mov r3, r8
	mov r5, #0
	ldrsh r2, [r3, r5]
	ldr r3, _0801793C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08017940  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, r8
	ldrh r1, [r4, #2]
	strb r1, [r0]
	ldr r0, [r7]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r7]
_0801791C:
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
_08017922:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08017934:
	.4byte 0x000003FF
_08017938:
	.4byte 0xFFFFFC00
_0801793C:
	.4byte 0x000001FF
_08017940:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08017600

	THUMB_FUNC_START sub_08017944
sub_08017944: @ 0x08017944
	push {r4-r7,lr}
	mov r1, #0
	ldr r0, _080179D4  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08017956
	mov r1, #1
_08017956:
	ldr r3, _080179D8  @ =0x040000D4
	ldr r2, _080179DC  @ =gUnknown_08078CF4
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r2, r2, #16
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r3]
	ldr r6, _080179E0  @ =0x03000094
	ldr r4, [r6]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _080179E4  @ =gOamData
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _080179E8  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r4, #14]
	add r1, r1, r0
	ldr r7, _080179EC  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _080179F0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r4, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrh r2, [r1, #2]
	ldr r0, _080179F4  @ =0xFFFFFE00
	and r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, #252
	strb r1, [r0]
	ldr r0, [r6]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r6]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080179D4:
	.4byte gLevelSelectWorldCursor
_080179D8:
	.4byte 0x040000D4
_080179DC:
	.4byte gUnknown_08078CF4
_080179E0:
	.4byte 0x03000094
_080179E4:
	.4byte gOamData
_080179E8:
	.4byte 0x84000002
_080179EC:
	.4byte 0x000003FF
_080179F0:
	.4byte 0xFFFFFC00
_080179F4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08017944

	THUMB_FUNC_START sub_080179F8
sub_080179F8: @ 0x080179F8
	push {r4-r7,lr}
	mov r4, #0
	ldr r0, _08017A98  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bne _08017A0A
	mov r4, #1
_08017A0A:
	bl sub_08014BD0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08017A90
	ldr r3, _08017A9C  @ =0x040000D4
	ldr r2, _08017AA0  @ =gUnknown_08078CC4
	add r1, r4, #0
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r2, r2, #16
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r3]
	ldr r6, _08017AA4  @ =0x03000094
	ldr r4, [r6]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _08017AA8  @ =gOamData
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _08017AAC  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r4, #14]
	add r1, r1, r0
	ldr r7, _08017AB0  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _08017AB4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r1, [r2, #2]
	ldr r0, _08017AB8  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #184
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, #252
	strb r1, [r0]
	ldr r0, [r6]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r6]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
_08017A90:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08017A98:
	.4byte gLevelSelectWorldCursor
_08017A9C:
	.4byte 0x040000D4
_08017AA0:
	.4byte gUnknown_08078CC4
_08017AA4:
	.4byte 0x03000094
_08017AA8:
	.4byte gOamData
_08017AAC:
	.4byte 0x84000002
_08017AB0:
	.4byte 0x000003FF
_08017AB4:
	.4byte 0xFFFFFC00
_08017AB8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080179F8

	THUMB_FUNC_START sub_08017ABC
sub_08017ABC: @ 0x08017ABC
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, sp, #12
	lsl r1, r1, #24
	mov r0, #255
	lsl r0, r0, #24
	add r1, r1, r0
	lsr r0, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	bge _08017ADC
	mov r0, #0
	b _08017AE2
_08017ADC:
	cmp r1, #6
	ble _08017AE2
	mov r0, #6
_08017AE2:
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r5, r0, #2
	add r5, r5, r0
	lsl r5, r5, #16
	lsr r5, r5, #16
	lsl r4, r0, #1
	add r4, r4, r0
	add r4, r4, #7
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r1, _08017BC8  @ =0x03000074
	mov r10, r1
	ldr r0, [r1]
	str r0, [sp]
	mov r0, #5
	mov r9, r0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #0
	mov r2, #32
	mov r3, #2
	bl sub_0800667C
	lsl r4, r4, #16
	asr r4, r4, #16
	ldr r1, _08017BCC  @ =0x03000070
	mov r8, r1
	ldr r0, [r1]
	lsl r5, r5, #16
	asr r5, r5, #16
	lsl r1, r5, #2
	mov r6, #132
	lsl r6, r6, #1
	add r0, r0, r6
	add r0, r0, r1
	ldr r2, [r0]
	mov r0, r10
	ldr r3, [r0]
	mov r1, r9
	str r1, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_08006548
	mov r0, r8
	ldr r1, [r0]
	add r0, r5, #1
	lsl r0, r0, #2
	add r1, r1, r6
	add r1, r1, r0
	ldr r2, [r1]
	mov r1, r10
	ldr r3, [r1]
	mov r0, r9
	str r0, [sp]
	mov r0, #0
	mov r1, #2
	bl sub_08006548
	mov r0, r8
	ldr r1, [r0]
	add r0, r5, #2
	lsl r0, r0, #2
	add r1, r1, r6
	add r1, r1, r0
	ldr r2, [r1]
	mov r1, r10
	ldr r3, [r1]
	mov r0, r9
	str r0, [sp]
	mov r0, #0
	mov r1, #5
	bl sub_08006548
	mov r0, r8
	ldr r1, [r0]
	add r0, r5, #3
	lsl r0, r0, #2
	add r1, r1, r6
	add r1, r1, r0
	ldr r2, [r1]
	mov r1, r10
	ldr r3, [r1]
	mov r0, r9
	str r0, [sp]
	mov r0, #29
	mov r1, #5
	bl sub_08006548
	mov r1, r8
	ldr r0, [r1]
	add r5, r5, #4
	lsl r5, r5, #2
	add r0, r0, r6
	add r0, r0, r5
	ldr r2, [r0]
	mov r0, r10
	ldr r3, [r0]
	mov r1, r9
	str r1, [sp]
	mov r0, #0
	mov r1, #17
	bl sub_08006548
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08017BC8:
	.4byte 0x03000074
_08017BCC:
	.4byte 0x03000070
	THUMB_FUNC_END sub_08017ABC

	THUMB_FUNC_START sub_08017BD0
sub_08017BD0: @ 0x08017BD0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r4, [sp, #40]
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r10, r2
	lsl r3, r3, #16
	lsr r7, r3, #16
	lsl r4, r4, #24
	mov r1, r10
	sub r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [sp, #4]
	cmp r4, #0
	bne _08017C04
	b _08017D18
_08017C04:
	mov r6, #0
	cmp r6, r10
	blt _08017C0C
	b _08017E04
_08017C0C:
	ldr r5, _08017CE0  @ =0x040000D4
	ldr r0, _08017CE4  @ =gOamData
	mov r8, r0
	ldr r1, _08017CE8  @ =gUnknown_03001930
	mov r9, r1
_08017C16:
	add r0, r7, #0
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #10
	ldr r1, _08017CEC  @ =gUnknown_085DEA9C
	add r0, r0, r1
	str r0, [r5]
	ldr r2, _08017CF0  @ =gUnknown_0300192C
	ldrh r0, [r2]
	ldr r3, _08017CF4  @ =0x06010000
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _08017CF8  @ =0x84000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08017CFC  @ =gUnknown_085DEA94
	str r0, [r5]
	ldr r0, _08017D00  @ =0x03000094
	ldr r4, [r0]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r5, #4]
	ldr r0, _08017D04  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r12, r3
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r1, r9
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r3, _08017D08  @ =0x000003FF
	and r0, r0, r3
	ldr r1, _08017D0C  @ =0xFFFFFC00
	and r2, r2, r1
	orr r2, r2, r0
	mov r3, r12
	strh r2, [r3, #4]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	lsl r2, r6, #3
	ldr r0, [sp, #4]
	sub r2, r0, r2
	ldr r1, _08017D10  @ =0x000001FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _08017D14  @ =0xFFFFFE00
	mov r12, r1
	mov r1, r12
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r8
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
	ldr r3, _08017D00  @ =0x03000094
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r0, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r1, r3, #0
	and r0, r0, r1
	strb r0, [r2, #5]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	ldr r2, _08017CF0  @ =gUnknown_0300192C
	ldrh r0, [r2]
	add r0, r0, #64
	strh r0, [r2]
	ldr r3, _08017D00  @ =0x03000094
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	add r0, r7, #0
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r6, r6, #1
	cmp r6, r10
	blt _08017C16
	b _08017E04
_08017CE0:
	.4byte 0x040000D4
_08017CE4:
	.4byte gOamData
_08017CE8:
	.4byte gUnknown_03001930
_08017CEC:
	.4byte gUnknown_085DEA9C
_08017CF0:
	.4byte gUnknown_0300192C
_08017CF4:
	.4byte 0x06010000
_08017CF8:
	.4byte 0x84000010
_08017CFC:
	.4byte gUnknown_085DEA94
_08017D00:
	.4byte 0x03000094
_08017D04:
	.4byte 0x84000002
_08017D08:
	.4byte 0x000003FF
_08017D0C:
	.4byte 0xFFFFFC00
_08017D10:
	.4byte 0x000001FF
_08017D14:
	.4byte 0xFFFFFE00
_08017D18:
	mov r6, #0
	cmp r6, r10
	bge _08017E04
	ldr r5, _08017E14  @ =0x040000D4
	ldr r0, _08017E18  @ =0x03000094
	mov r9, r0
	ldr r1, _08017E1C  @ =gOamData
	mov r8, r1
_08017D28:
	add r0, r7, #0
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #10
	ldr r1, _08017E20  @ =gUnknown_082EC750
	add r0, r0, r1
	str r0, [r5]
	ldr r2, _08017E24  @ =gUnknown_0300192C
	ldrh r0, [r2]
	ldr r3, _08017E28  @ =0x06010000
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _08017E2C  @ =0x84000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08017E30  @ =gUnknown_082EC748
	str r0, [r5]
	mov r0, r9
	ldr r4, [r0]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r5, #4]
	ldr r0, _08017E34  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r12, r3
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r1, _08017E38  @ =gUnknown_03001930
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r3, _08017E3C  @ =0x000003FF
	and r0, r0, r3
	ldr r1, _08017E40  @ =0xFFFFFC00
	and r2, r2, r1
	orr r2, r2, r0
	mov r3, r12
	strh r2, [r3, #4]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	lsl r2, r6, #3
	ldr r0, [sp, #4]
	sub r2, r0, r2
	ldr r1, _08017E44  @ =0x000001FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _08017E48  @ =0xFFFFFE00
	mov r12, r1
	mov r1, r12
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r8
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
	mov r3, r9
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #144
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r0, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r1, r3, #0
	and r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, _08017E38  @ =gUnknown_03001930
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	ldr r2, _08017E24  @ =gUnknown_0300192C
	ldrh r0, [r2]
	add r0, r0, #64
	strh r0, [r2]
	mov r3, r9
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	add r0, r7, #0
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r6, r6, #1
	cmp r6, r10
	blt _08017D28
_08017E04:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08017E14:
	.4byte 0x040000D4
_08017E18:
	.4byte 0x03000094
_08017E1C:
	.4byte gOamData
_08017E20:
	.4byte gUnknown_082EC750
_08017E24:
	.4byte gUnknown_0300192C
_08017E28:
	.4byte 0x06010000
_08017E2C:
	.4byte 0x84000010
_08017E30:
	.4byte gUnknown_082EC748
_08017E34:
	.4byte 0x84000002
_08017E38:
	.4byte gUnknown_03001930
_08017E3C:
	.4byte 0x000003FF
_08017E40:
	.4byte 0xFFFFFC00
_08017E44:
	.4byte 0x000001FF
_08017E48:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08017BD0

	THUMB_FUNC_START sub_08017E4C
sub_08017E4C: @ 0x08017E4C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r10, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r9, r3
	mov r1, r10
	sub r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	cmp r0, r10
	bge _08017F6E
	ldr r5, _08017F80  @ =0x040000D4
	ldr r1, _08017F84  @ =0x03000094
	mov r8, r1
	ldr r6, _08017F88  @ =gOamData
_08017E88:
	mov r0, r9
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #10
	ldr r1, _08017F8C  @ =gUnknown_082EC750
	add r0, r0, r1
	str r0, [r5]
	ldr r2, _08017F90  @ =gUnknown_0300192C
	ldrh r0, [r2]
	ldr r3, _08017F94  @ =0x06010000
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _08017F98  @ =0x84000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08017F9C  @ =gUnknown_082EC748
	str r0, [r5]
	mov r7, r8
	ldr r4, [r7]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _08017FA0  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r1, _08017FA4  @ =gUnknown_03001930
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r7, _08017FA8  @ =0x000003FF
	mov r12, r7
	mov r1, r12
	and r0, r0, r1
	ldr r7, _08017FAC  @ =0xFFFFFC00
	mov r12, r7
	mov r1, r12
	and r2, r2, r1
	orr r2, r2, r0
	strh r2, [r3, #4]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r7, [sp, #8]
	lsl r2, r7, #3
	ldr r0, [sp, #4]
	sub r2, r0, r2
	ldr r1, _08017FB0  @ =0x000001FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r7, _08017FB4  @ =0xFFFFFE00
	mov r12, r7
	mov r1, r12
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
	mov r3, r8
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #144
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r0, [r2, #5]
	mov r7, #13
	neg r7, r7
	add r1, r7, #0
	and r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, _08017FA4  @ =gUnknown_03001930
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	ldr r2, _08017F90  @ =gUnknown_0300192C
	ldrh r0, [r2]
	add r0, r0, #64
	strh r0, [r2]
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	mov r0, r9
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	ldr r3, [sp, #8]
	add r3, r3, #1
	str r3, [sp, #8]
	cmp r3, r10
	blt _08017E88
_08017F6E:
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
_08017F80:
	.4byte 0x040000D4
_08017F84:
	.4byte 0x03000094
_08017F88:
	.4byte gOamData
_08017F8C:
	.4byte gUnknown_082EC750
_08017F90:
	.4byte gUnknown_0300192C
_08017F94:
	.4byte 0x06010000
_08017F98:
	.4byte 0x84000010
_08017F9C:
	.4byte gUnknown_082EC748
_08017FA0:
	.4byte 0x84000002
_08017FA4:
	.4byte gUnknown_03001930
_08017FA8:
	.4byte 0x000003FF
_08017FAC:
	.4byte 0xFFFFFC00
_08017FB0:
	.4byte 0x000001FF
_08017FB4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08017E4C

	THUMB_FUNC_START sub_08017FB8
sub_08017FB8: @ 0x08017FB8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r2, _08018084  @ =0x040000D4
	ldr r0, _08018088  @ =gUnknown_085D0900
	str r0, [r2]
	ldr r0, _0801808C  @ =gUnknown_0300192C
	mov r9, r0
	ldrh r0, [r0]
	ldr r1, _08018090  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08018094  @ =0x84000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08018098  @ =gUnknown_085D08F8
	str r0, [r2]
	ldr r1, _0801809C  @ =0x03000094
	mov r8, r1
	ldr r5, [r1]
	ldrh r0, [r5, #2]
	lsl r0, r0, #3
	ldr r4, _080180A0  @ =gOamData
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _080180A4  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r6, _080180A8  @ =gUnknown_03001930
	lsr r1, r1, #22
	ldrh r7, [r6]
	add r1, r1, r7
	ldr r7, _080180AC  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _080180B0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r1, [r2, #2]
	ldr r0, _080180B4  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5, #2]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, #136
	strb r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r6]
	add r0, r0, #8
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #1
	add r0, r2, #0
	mov r7, r9
	ldrh r7, [r7]
	add r0, r0, r7
	mov r1, r9
	strh r0, [r1]
	mov r2, r8
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	ldr r0, _080180B8  @ =gLivesCount
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #34
	mov r1, #140
	mov r2, #2
	bl sub_08017E4C
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018084:
	.4byte 0x040000D4
_08018088:
	.4byte gUnknown_085D0900
_0801808C:
	.4byte gUnknown_0300192C
_08018090:
	.4byte 0x06010000
_08018094:
	.4byte 0x84000040
_08018098:
	.4byte gUnknown_085D08F8
_0801809C:
	.4byte 0x03000094
_080180A0:
	.4byte gOamData
_080180A4:
	.4byte 0x84000002
_080180A8:
	.4byte gUnknown_03001930
_080180AC:
	.4byte 0x000003FF
_080180B0:
	.4byte 0xFFFFFC00
_080180B4:
	.4byte 0xFFFFFE00
_080180B8:
	.4byte gLivesCount
	THUMB_FUNC_END sub_08017FB8

	THUMB_FUNC_START sub_080180BC
sub_080180BC: @ 0x080180BC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r2, _08018188  @ =0x040000D4
	ldr r0, _0801818C  @ =gUnknown_085E2338
	str r0, [r2]
	ldr r0, _08018190  @ =gUnknown_0300192C
	mov r9, r0
	ldrh r0, [r0]
	ldr r1, _08018194  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08018198  @ =0x84000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801819C  @ =gUnknown_085E2330
	str r0, [r2]
	ldr r1, _080181A0  @ =0x03000094
	mov r8, r1
	ldr r5, [r1]
	ldrh r0, [r5, #2]
	lsl r0, r0, #3
	ldr r4, _080181A4  @ =gOamData
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _080181A8  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r6, _080181AC  @ =gUnknown_03001930
	lsr r1, r1, #22
	ldrh r7, [r6]
	add r1, r1, r7
	ldr r7, _080181B0  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _080181B4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r1, [r2, #2]
	ldr r0, _080181B8  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #58
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5, #2]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, #136
	strb r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r6]
	add r0, r0, #8
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #1
	add r0, r2, #0
	mov r7, r9
	ldrh r7, [r7]
	add r0, r0, r7
	mov r1, r9
	strh r0, [r1]
	mov r2, r8
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	bl sub_08014AB8
	add r3, r0, #0
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r0, #83
	mov r1, #140
	mov r2, #2
	bl sub_08017E4C
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018188:
	.4byte 0x040000D4
_0801818C:
	.4byte gUnknown_085E2338
_08018190:
	.4byte gUnknown_0300192C
_08018194:
	.4byte 0x06010000
_08018198:
	.4byte 0x84000040
_0801819C:
	.4byte gUnknown_085E2330
_080181A0:
	.4byte 0x03000094
_080181A4:
	.4byte gOamData
_080181A8:
	.4byte 0x84000002
_080181AC:
	.4byte gUnknown_03001930
_080181B0:
	.4byte 0x000003FF
_080181B4:
	.4byte 0xFFFFFC00
_080181B8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080180BC

	THUMB_FUNC_START sub_080181BC
sub_080181BC: @ 0x080181BC
	push {lr}
	sub sp, sp, #4
	ldr r0, _08018210  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08018224
	ldr r0, _08018214  @ =gLevelSelectWorld
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #5
	bhi _08018264
	ldr r0, _08018218  @ =gLevelSelectLevel
	ldrb r1, [r0]
	add r0, r2, #0
	mov r2, #1
	bl sub_0801095C
	add r3, r0, #0
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _0801821C  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _08018220  @ =0x0300007C
	ldr r1, [r1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r0, [r0, #1]
	lsr r0, r0, #7
	str r0, [sp]
	mov r0, #172
	mov r1, #140
	mov r2, #6
	bl sub_08017BD0
	b _08018264
	.byte 0x00
	.byte 0x00
_08018210:
	.4byte gLevelSelectMode
_08018214:
	.4byte gLevelSelectWorld
_08018218:
	.4byte gLevelSelectLevel
_0801821C:
	.4byte gLevelSelectLevelCursor
_08018220:
	.4byte 0x0300007C
_08018224:
	cmp r0, #0
	bne _08018264
	ldr r1, _0801826C  @ =gLevelSelectWorld
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	bgt _08018264
	ldrb r0, [r1]
	ldr r1, _08018270  @ =gLevelSelectLevel
	ldrb r1, [r1]
	mov r2, #0
	bl sub_0801095C
	add r3, r0, #0
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _08018274  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _08018278  @ =0x0300007C
	ldr r1, [r1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r0, [r0, #1]
	lsr r0, r0, #7
	str r0, [sp]
	mov r0, #172
	mov r1, #140
	mov r2, #6
	bl sub_08017BD0
_08018264:
	add sp, sp, #4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801826C:
	.4byte gLevelSelectWorld
_08018270:
	.4byte gLevelSelectLevel
_08018274:
	.4byte gLevelSelectLevelCursor
_08018278:
	.4byte 0x0300007C
	THUMB_FUNC_END sub_080181BC

	THUMB_FUNC_START sub_0801827C
sub_0801827C: @ 0x0801827C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	ldr r4, _0801831C  @ =0x040000D4
	ldr r3, [r0, #16]
	str r3, [r4]
	ldr r3, _08018320  @ =0x03000094
	mov r9, r3
	ldr r6, [r3]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	ldr r5, _08018324  @ =gOamData
	mov r8, r5
	add r3, r3, r8
	str r3, [r4, #4]
	ldr r3, _08018328  @ =0x84000002
	str r3, [r4, #8]
	ldr r3, [r4, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	lsl r1, r1, #22
	lsr r1, r1, #22
	ldrh r5, [r4, #4]
	ldr r3, _0801832C  @ =0xFFFFFC00
	and r3, r3, r5
	orr r3, r3, r1
	strh r3, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r1, #0
	ldrsh r4, [r0, r1]
	ldr r5, _08018330  @ =0x000001FF
	add r1, r5, #0
	and r4, r4, r1
	ldrh r5, [r3, #2]
	ldr r1, _08018334  @ =0xFFFFFE00
	and r1, r1, r5
	orr r1, r1, r4
	strh r1, [r3, #2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrh r0, [r0, #2]
	strb r0, [r1]
	mov r1, r9
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	lsl r2, r2, #4
	ldrb r3, [r1, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r2
	strb r0, [r1, #5]
	mov r3, r9
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
_0801831C:
	.4byte 0x040000D4
_08018320:
	.4byte 0x03000094
_08018324:
	.4byte gOamData
_08018328:
	.4byte 0x84000002
_0801832C:
	.4byte 0xFFFFFC00
_08018330:
	.4byte 0x000001FF
_08018334:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0801827C

	THUMB_FUNC_START sub_08018338
sub_08018338: @ 0x08018338
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	ldr r4, [sp, #28]
	mov r8, r4
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r6, r8
	lsl r6, r6, #16
	mov r8, r6
	ldr r5, _080183FC  @ =0x040000D4
	ldr r4, [r0, #16]
	str r4, [r5]
	ldr r4, _08018400  @ =0x03000094
	mov r12, r4
	ldr r6, [r4]
	mov r9, r6
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	ldr r6, _08018404  @ =gOamData
	mov r10, r6
	add r4, r4, r10
	str r4, [r5, #4]
	ldr r4, _08018408  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	mov r4, r9
	ldrh r5, [r4, #2]
	lsl r5, r5, #3
	add r5, r5, r10
	lsl r2, r2, #22
	lsr r2, r2, #22
	ldrh r6, [r5, #4]
	ldr r4, _0801840C  @ =0xFFFFFC00
	and r4, r4, r6
	orr r4, r4, r2
	strh r4, [r5, #4]
	mov r6, r9
	ldrh r5, [r6, #2]
	lsl r5, r5, #3
	add r5, r5, r10
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r2, [r0, #12]
	lsl r4, r1, #3
	add r4, r4, r1
	lsl r4, r4, #2
	add r2, r4, r2
	mov r1, #2
	ldrsb r1, [r2, r1]
	add r3, r3, r1
	ldr r2, _08018410  @ =0x000001FF
	add r1, r2, #0
	and r3, r3, r1
	ldrh r2, [r5, #2]
	ldr r1, _08018414  @ =0xFFFFFE00
	and r1, r1, r2
	orr r1, r1, r3
	strh r1, [r5, #2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	add r1, r1, r10
	ldr r0, [r0, #12]
	add r4, r4, r0
	mov r6, r8
	lsr r6, r6, #16
	mov r8, r6
	ldrb r4, [r4, #3]
	add r8, r8, r4
	mov r0, r8
	strb r0, [r1]
	mov r1, r12
	ldr r0, [r1]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r10
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r2, r12
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080183FC:
	.4byte 0x040000D4
_08018400:
	.4byte 0x03000094
_08018404:
	.4byte gOamData
_08018408:
	.4byte 0x84000002
_0801840C:
	.4byte 0xFFFFFC00
_08018410:
	.4byte 0x000001FF
_08018414:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018338

	THUMB_FUNC_START sub_08018418
sub_08018418: @ 0x08018418
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	ldr r4, _080184FC  @ =0x040000D4
	ldr r2, [r0, #20]
	str r2, [r4]
	ldr r2, _08018500  @ =gUnknown_0300192C
	mov r12, r2
	ldrh r2, [r2]
	ldr r3, _08018504  @ =0x06010000
	add r2, r2, r3
	str r2, [r4, #4]
	ldrh r2, [r0, #8]
	lsr r2, r2, #2
	mov r3, #132
	lsl r3, r3, #24
	orr r2, r2, r3
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	ldr r2, [r0, #16]
	str r2, [r4]
	ldr r3, _08018508  @ =0x03000094
	mov r10, r3
	ldr r6, [r3]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	ldr r5, _0801850C  @ =gOamData
	mov r8, r5
	add r2, r2, r8
	str r2, [r4, #4]
	ldr r2, _08018510  @ =0x84000002
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	ldr r2, _08018514  @ =gUnknown_03001930
	mov r9, r2
	ldrh r2, [r2]
	ldr r3, _08018518  @ =0x000003FF
	and r3, r3, r2
	ldrh r5, [r4, #4]
	ldr r2, _0801851C  @ =0xFFFFFC00
	and r2, r2, r5
	orr r2, r2, r3
	strh r2, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r5, #0
	ldrsh r4, [r0, r5]
	ldr r5, _08018520  @ =0x000001FF
	add r2, r5, #0
	and r4, r4, r2
	ldrh r5, [r3, #2]
	ldr r2, _08018524  @ =0xFFFFFE00
	and r2, r2, r5
	orr r2, r2, r4
	strh r2, [r3, #2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r3, [r0, #2]
	strb r3, [r2]
	mov r3, r10
	ldr r2, [r3]
	ldrh r3, [r2, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	lsl r1, r1, #4
	ldrb r4, [r3, #5]
	mov r2, #15
	and r2, r2, r4
	orr r2, r2, r1
	strb r2, [r3, #5]
	mov r5, r10
	ldr r1, [r5]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r2, r9
	ldrh r2, [r2]
	add r1, r1, r2
	mov r3, r9
	strh r1, [r3]
	ldrh r0, [r0, #8]
	mov r5, r12
	ldrh r5, [r5]
	add r0, r0, r5
	mov r1, r12
	strh r0, [r1]
	mov r2, r10
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080184FC:
	.4byte 0x040000D4
_08018500:
	.4byte gUnknown_0300192C
_08018504:
	.4byte 0x06010000
_08018508:
	.4byte 0x03000094
_0801850C:
	.4byte gOamData
_08018510:
	.4byte 0x84000002
_08018514:
	.4byte gUnknown_03001930
_08018518:
	.4byte 0x000003FF
_0801851C:
	.4byte 0xFFFFFC00
_08018520:
	.4byte 0x000001FF
_08018524:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018418

	THUMB_FUNC_START sub_08018528
sub_08018528: @ 0x08018528
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	ldr r3, _080185CC  @ =0x040000D4
	ldr r2, [r0, #16]
	str r2, [r3]
	ldr r2, _080185D0  @ =0x03000094
	mov r9, r2
	ldr r6, [r2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	ldr r4, _080185D4  @ =gOamData
	mov r8, r4
	add r2, r2, r8
	str r2, [r3, #4]
	ldr r2, _080185D8  @ =0x84000002
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	ldrh r2, [r6, #18]
	ldr r3, _080185DC  @ =0x000003FF
	and r3, r3, r2
	ldrh r5, [r4, #4]
	ldr r2, _080185E0  @ =0xFFFFFC00
	and r2, r2, r5
	orr r2, r2, r3
	strh r2, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r5, #0
	ldrsh r4, [r0, r5]
	ldr r5, _080185E4  @ =0x000001FF
	add r2, r5, #0
	and r4, r4, r2
	ldrh r5, [r3, #2]
	ldr r2, _080185E8  @ =0xFFFFFE00
	and r2, r2, r5
	orr r2, r2, r4
	strh r2, [r3, #2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r0, [r0, #2]
	strb r0, [r2]
	mov r2, r9
	ldr r0, [r2]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r4, r9
	ldr r0, [r4]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080185CC:
	.4byte 0x040000D4
_080185D0:
	.4byte 0x03000094
_080185D4:
	.4byte gOamData
_080185D8:
	.4byte 0x84000002
_080185DC:
	.4byte 0x000003FF
_080185E0:
	.4byte 0xFFFFFC00
_080185E4:
	.4byte 0x000001FF
_080185E8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018528

	THUMB_FUNC_START sub_080185EC
sub_080185EC: @ 0x080185EC
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	ldr r3, _08018690  @ =0x040000D4
	ldr r2, [r0, #16]
	str r2, [r3]
	ldr r2, _08018694  @ =0x03000094
	mov r9, r2
	ldr r6, [r2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	ldr r4, _08018698  @ =gOamData
	mov r8, r4
	add r2, r2, r8
	str r2, [r3, #4]
	ldr r2, _0801869C  @ =0x84000002
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	ldrh r2, [r6, #16]
	ldr r3, _080186A0  @ =0x000003FF
	and r3, r3, r2
	ldrh r5, [r4, #4]
	ldr r2, _080186A4  @ =0xFFFFFC00
	and r2, r2, r5
	orr r2, r2, r3
	strh r2, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r5, #0
	ldrsh r4, [r0, r5]
	ldr r5, _080186A8  @ =0x000001FF
	add r2, r5, #0
	and r4, r4, r2
	ldrh r5, [r3, #2]
	ldr r2, _080186AC  @ =0xFFFFFE00
	and r2, r2, r5
	orr r2, r2, r4
	strh r2, [r3, #2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r0, [r0, #2]
	strb r0, [r2]
	mov r2, r9
	ldr r0, [r2]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r4, r9
	ldr r0, [r4]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018690:
	.4byte 0x040000D4
_08018694:
	.4byte 0x03000094
_08018698:
	.4byte gOamData
_0801869C:
	.4byte 0x84000002
_080186A0:
	.4byte 0x000003FF
_080186A4:
	.4byte 0xFFFFFC00
_080186A8:
	.4byte 0x000001FF
_080186AC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080185EC

	THUMB_FUNC_START sub_080186B0
sub_080186B0: @ 0x080186B0
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r3, _08018794  @ =0x040000D4
	ldr r4, [r0, #12]
	lsl r2, r1, #3
	add r2, r2, r1
	lsl r2, r2, #2
	add r2, r2, r4
	ldrb r2, [r2]
	ldrh r1, [r0, #4]
	mul r2, r1, r2
	lsl r2, r2, #2
	ldr r1, [r0, #20]
	add r1, r1, r2
	str r1, [r3]
	ldr r1, _08018798  @ =gUnknown_0300192C
	mov r10, r1
	ldrh r1, [r1]
	ldr r2, _0801879C  @ =0x06010000
	add r1, r1, r2
	str r1, [r3, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r2, #132
	lsl r2, r2, #24
	orr r1, r1, r2
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r1, [r0, #16]
	str r1, [r3]
	ldr r2, _080187A0  @ =0x03000094
	mov r9, r2
	ldr r6, [r2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	ldr r5, _080187A4  @ =gOamData
	add r1, r1, r5
	str r1, [r3, #4]
	ldr r1, _080187A8  @ =0x84000002
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r5
	ldr r4, _080187AC  @ =gUnknown_03001930
	mov r8, r4
	ldrh r1, [r4]
	ldr r2, _080187B0  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _080187B4  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, #0
	ldrsh r3, [r0, r1]
	ldr r4, _080187B8  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r2, #2]
	ldr r1, _080187BC  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r2, #2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrh r2, [r0, #2]
	strb r2, [r1]
	mov r2, r9
	ldr r1, [r2]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r5
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r3, r8
	ldrh r3, [r3]
	add r1, r1, r3
	mov r4, r8
	strh r1, [r4]
	ldrh r0, [r0, #8]
	mov r1, r10
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r10
	strh r0, [r2]
	mov r3, r9
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018794:
	.4byte 0x040000D4
_08018798:
	.4byte gUnknown_0300192C
_0801879C:
	.4byte 0x06010000
_080187A0:
	.4byte 0x03000094
_080187A4:
	.4byte gOamData
_080187A8:
	.4byte 0x84000002
_080187AC:
	.4byte gUnknown_03001930
_080187B0:
	.4byte 0x000003FF
_080187B4:
	.4byte 0xFFFFFC00
_080187B8:
	.4byte 0x000001FF
_080187BC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080186B0

	THUMB_FUNC_START sub_080187C0
sub_080187C0: @ 0x080187C0
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r2, r2, #24
	ldr r4, _080188BC  @ =0x040000D4
	ldr r5, [r0, #12]
	lsl r3, r1, #3
	add r3, r3, r1
	lsl r3, r3, #2
	add r3, r3, r5
	ldrb r3, [r3]
	ldrh r1, [r0, #4]
	mul r3, r1, r3
	lsl r3, r3, #2
	ldr r1, [r0, #20]
	add r1, r1, r3
	str r1, [r4]
	ldr r1, _080188C0  @ =gUnknown_0300192C
	mov r12, r1
	ldrh r1, [r1]
	ldr r3, _080188C4  @ =0x06010000
	add r1, r1, r3
	str r1, [r4, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r3, #132
	lsl r3, r3, #24
	orr r1, r1, r3
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldr r1, [r0, #16]
	str r1, [r4]
	ldr r3, _080188C8  @ =0x03000094
	mov r10, r3
	ldr r6, [r3]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	ldr r5, _080188CC  @ =gOamData
	mov r8, r5
	add r1, r1, r8
	str r1, [r4, #4]
	ldr r1, _080188D0  @ =0x84000002
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	ldr r1, _080188D4  @ =gUnknown_03001930
	mov r9, r1
	ldrh r1, [r1]
	ldr r3, _080188D8  @ =0x000003FF
	and r3, r3, r1
	ldrh r5, [r4, #4]
	ldr r1, _080188DC  @ =0xFFFFFC00
	and r1, r1, r5
	orr r1, r1, r3
	strh r1, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r5, #0
	ldrsh r4, [r0, r5]
	ldr r5, _080188E0  @ =0x000001FF
	add r1, r5, #0
	and r4, r4, r1
	ldrh r5, [r3, #2]
	ldr r1, _080188E4  @ =0xFFFFFE00
	and r1, r1, r5
	orr r1, r1, r4
	strh r1, [r3, #2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrh r3, [r0, #2]
	strb r3, [r1]
	mov r3, r10
	ldr r1, [r3]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	lsr r2, r2, #20
	ldrb r4, [r3, #5]
	mov r1, #15
	and r1, r1, r4
	orr r1, r1, r2
	strb r1, [r3, #5]
	mov r5, r10
	ldr r1, [r5]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r2, r9
	ldrh r2, [r2]
	add r1, r1, r2
	mov r3, r9
	strh r1, [r3]
	ldrh r0, [r0, #8]
	mov r5, r12
	ldrh r5, [r5]
	add r0, r0, r5
	mov r1, r12
	strh r0, [r1]
	mov r2, r10
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
_080188BC:
	.4byte 0x040000D4
_080188C0:
	.4byte gUnknown_0300192C
_080188C4:
	.4byte 0x06010000
_080188C8:
	.4byte 0x03000094
_080188CC:
	.4byte gOamData
_080188D0:
	.4byte 0x84000002
_080188D4:
	.4byte gUnknown_03001930
_080188D8:
	.4byte 0x000003FF
_080188DC:
	.4byte 0xFFFFFC00
_080188E0:
	.4byte 0x000001FF
_080188E4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080187C0

	THUMB_FUNC_START sub_080188E8
sub_080188E8: @ 0x080188E8
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	lsl r1, r1, #24
	ldr r3, _08018978  @ =0x040000D4
	ldr r2, [r0, #16]
	str r2, [r3]
	ldr r2, _0801897C  @ =0x03000094
	mov r8, r2
	ldr r5, [r2]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	ldr r6, _08018980  @ =gOamData
	add r2, r2, r6
	str r2, [r3, #4]
	ldr r2, _08018984  @ =0x84000002
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	ldrh r3, [r5, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	lsr r1, r1, #23
	add r2, r5, #0
	add r2, r2, #42
	add r2, r2, r1
	ldrh r1, [r2]
	ldr r2, _08018988  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _0801898C  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r4, #0
	ldrsh r3, [r0, r4]
	ldr r4, _08018990  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r2, #2]
	ldr r1, _08018994  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r2, #2]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r0, [r0, #2]
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	mov r2, r8
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018978:
	.4byte 0x040000D4
_0801897C:
	.4byte 0x03000094
_08018980:
	.4byte gOamData
_08018984:
	.4byte 0x84000002
_08018988:
	.4byte 0x000003FF
_0801898C:
	.4byte 0xFFFFFC00
_08018990:
	.4byte 0x000001FF
_08018994:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080188E8

	THUMB_FUNC_START sub_08018998
sub_08018998: @ 0x08018998
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r2, _08018A1C  @ =0x040000D4
	ldr r1, [r0, #16]
	str r1, [r2]
	ldr r1, _08018A20  @ =0x03000094
	mov r8, r1
	ldr r5, [r1]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	ldr r6, _08018A24  @ =gOamData
	add r1, r1, r6
	str r1, [r2, #4]
	ldr r1, _08018A28  @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldrh r3, [r5, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r1, [r5, #22]
	ldr r2, _08018A2C  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _08018A30  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r4, #0
	ldrsh r3, [r0, r4]
	ldr r4, _08018A34  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r2, #2]
	ldr r1, _08018A38  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r2, #2]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r0, [r0, #2]
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	mov r4, r8
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
_08018A1C:
	.4byte 0x040000D4
_08018A20:
	.4byte 0x03000094
_08018A24:
	.4byte gOamData
_08018A28:
	.4byte 0x84000002
_08018A2C:
	.4byte 0x000003FF
_08018A30:
	.4byte 0xFFFFFC00
_08018A34:
	.4byte 0x000001FF
_08018A38:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018998

	THUMB_FUNC_START sub_08018A3C
sub_08018A3C: @ 0x08018A3C
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r2, _08018AC0  @ =0x040000D4
	ldr r1, [r0, #16]
	str r1, [r2]
	ldr r1, _08018AC4  @ =0x03000094
	mov r8, r1
	ldr r5, [r1]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	ldr r6, _08018AC8  @ =gOamData
	add r1, r1, r6
	str r1, [r2, #4]
	ldr r1, _08018ACC  @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldrh r3, [r5, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r1, [r5, #24]
	ldr r2, _08018AD0  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _08018AD4  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r4, #0
	ldrsh r3, [r0, r4]
	ldr r4, _08018AD8  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r2, #2]
	ldr r1, _08018ADC  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r2, #2]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r0, [r0, #2]
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	mov r4, r8
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
_08018AC0:
	.4byte 0x040000D4
_08018AC4:
	.4byte 0x03000094
_08018AC8:
	.4byte gOamData
_08018ACC:
	.4byte 0x84000002
_08018AD0:
	.4byte 0x000003FF
_08018AD4:
	.4byte 0xFFFFFC00
_08018AD8:
	.4byte 0x000001FF
_08018ADC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018A3C

	THUMB_FUNC_START sub_08018AE0
sub_08018AE0: @ 0x08018AE0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _08018BC0  @ =0x040000D4
	ldr r6, [r0, #12]
	lsl r4, r1, #3
	add r4, r4, r1
	lsl r4, r4, #2
	add r4, r4, r6
	ldrb r4, [r4]
	ldrh r1, [r0, #4]
	mul r4, r1, r4
	lsl r4, r4, #2
	ldr r1, [r0, #20]
	add r1, r1, r4
	str r1, [r5]
	ldr r7, _08018BC4  @ =gUnknown_0300192C
	ldrh r1, [r7]
	ldr r4, _08018BC8  @ =0x06010000
	add r1, r1, r4
	str r1, [r5, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r4, #132
	lsl r4, r4, #24
	orr r1, r1, r4
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldr r1, [r0, #16]
	str r1, [r5]
	ldr r1, _08018BCC  @ =0x03000094
	mov r12, r1
	ldr r4, [r1]
	mov r9, r4
	ldrh r1, [r4, #2]
	lsl r1, r1, #3
	ldr r4, _08018BD0  @ =gOamData
	mov r8, r4
	add r1, r1, r8
	str r1, [r5, #4]
	ldr r1, _08018BD4  @ =0x84000002
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	mov r1, r9
	ldrh r5, [r1, #2]
	lsl r5, r5, #3
	add r5, r5, r8
	ldr r4, _08018BD8  @ =gUnknown_03001930
	mov r10, r4
	ldrh r1, [r4]
	ldr r4, _08018BDC  @ =0x000003FF
	and r4, r4, r1
	ldrh r6, [r5, #4]
	ldr r1, _08018BE0  @ =0xFFFFFC00
	and r1, r1, r6
	orr r1, r1, r4
	strh r1, [r5, #4]
	mov r1, r9
	ldrh r4, [r1, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	lsl r2, r2, #23
	lsr r2, r2, #23
	ldrh r5, [r4, #2]
	ldr r1, _08018BE4  @ =0xFFFFFE00
	and r1, r1, r5
	orr r1, r1, r2
	strh r1, [r4, #2]
	mov r2, r9
	ldrh r1, [r2, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	strb r3, [r1]
	mov r3, r12
	ldr r1, [r3]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r4, r10
	ldrh r4, [r4]
	add r1, r1, r4
	mov r2, r10
	strh r1, [r2]
	ldrh r0, [r0, #8]
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r4, r12
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018BC0:
	.4byte 0x040000D4
_08018BC4:
	.4byte gUnknown_0300192C
_08018BC8:
	.4byte 0x06010000
_08018BCC:
	.4byte 0x03000094
_08018BD0:
	.4byte gOamData
_08018BD4:
	.4byte 0x84000002
_08018BD8:
	.4byte gUnknown_03001930
_08018BDC:
	.4byte 0x000003FF
_08018BE0:
	.4byte 0xFFFFFC00
_08018BE4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018AE0

	THUMB_FUNC_START sub_08018BE8
sub_08018BE8: @ 0x08018BE8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r7, [sp, #32]
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _08018CE4  @ =0x040000D4
	ldr r6, [r0, #12]
	lsl r4, r1, #3
	add r4, r4, r1
	lsl r4, r4, #2
	add r4, r4, r6
	ldrb r4, [r4]
	ldrh r1, [r0, #4]
	mul r4, r1, r4
	lsl r4, r4, #2
	ldr r1, [r0, #20]
	add r1, r1, r4
	str r1, [r5]
	ldr r4, _08018CE8  @ =gUnknown_0300192C
	ldrh r1, [r4]
	ldr r4, _08018CEC  @ =0x06010000
	add r1, r1, r4
	str r1, [r5, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r4, #132
	lsl r4, r4, #24
	orr r1, r1, r4
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldr r1, [r0, #16]
	str r1, [r5]
	ldr r1, _08018CF0  @ =0x03000094
	mov r12, r1
	ldr r4, [r1]
	mov r8, r4
	ldrh r1, [r4, #2]
	lsl r1, r1, #3
	ldr r4, _08018CF4  @ =gOamData
	mov r9, r4
	add r1, r1, r9
	str r1, [r5, #4]
	ldr r1, _08018CF8  @ =0x84000002
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	mov r1, r8
	ldrh r5, [r1, #2]
	lsl r5, r5, #3
	add r5, r5, r9
	ldr r4, _08018CFC  @ =gUnknown_03001930
	mov r10, r4
	ldrh r1, [r4]
	ldr r4, _08018D00  @ =0x000003FF
	and r4, r4, r1
	ldrh r6, [r5, #4]
	ldr r1, _08018D04  @ =0xFFFFFC00
	and r1, r1, r6
	orr r1, r1, r4
	strh r1, [r5, #4]
	mov r1, r8
	ldrh r4, [r1, #2]
	lsl r4, r4, #3
	add r4, r4, r9
	lsl r3, r3, #23
	lsr r3, r3, #23
	ldrh r5, [r4, #2]
	ldr r1, _08018D08  @ =0xFFFFFE00
	and r1, r1, r5
	orr r1, r1, r3
	strh r1, [r4, #2]
	mov r3, r8
	ldrh r1, [r3, #2]
	lsl r1, r1, #3
	add r1, r1, r9
	strb r7, [r1]
	mov r4, r12
	ldr r1, [r4]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r9
	lsl r2, r2, #4
	ldrb r4, [r3, #5]
	mov r1, #15
	and r1, r1, r4
	orr r1, r1, r2
	strb r1, [r3, #5]
	mov r2, r12
	ldr r1, [r2]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r9
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r3, r10
	ldrh r3, [r3]
	add r1, r1, r3
	mov r4, r10
	strh r1, [r4]
	ldrh r0, [r0, #8]
	ldr r1, _08018CE8  @ =gUnknown_0300192C
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r2, _08018CE8  @ =gUnknown_0300192C
	strh r0, [r2]
	mov r3, r12
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018CE4:
	.4byte 0x040000D4
_08018CE8:
	.4byte gUnknown_0300192C
_08018CEC:
	.4byte 0x06010000
_08018CF0:
	.4byte 0x03000094
_08018CF4:
	.4byte gOamData
_08018CF8:
	.4byte 0x84000002
_08018CFC:
	.4byte gUnknown_03001930
_08018D00:
	.4byte 0x000003FF
_08018D04:
	.4byte 0xFFFFFC00
_08018D08:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018BE8

	THUMB_FUNC_START sub_08018D0C
sub_08018D0C: @ 0x08018D0C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r3, r3, #16
	ldr r5, _08018E0C  @ =0x040000D4
	ldr r4, [r0, #12]
	lsl r6, r1, #3
	mov r8, r6
	add r8, r8, r1
	mov r1, r8
	lsl r1, r1, #2
	mov r8, r1
	add r4, r4, r8
	ldrb r4, [r4]
	ldrh r1, [r0, #4]
	mul r4, r1, r4
	lsl r4, r4, #2
	ldr r1, [r0, #20]
	add r1, r1, r4
	str r1, [r5]
	ldr r4, _08018E10  @ =gUnknown_0300192C
	ldrh r1, [r4]
	ldr r4, _08018E14  @ =0x06010000
	add r1, r1, r4
	str r1, [r5, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r4, #132
	lsl r4, r4, #24
	orr r1, r1, r4
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldr r1, [r0, #16]
	str r1, [r5]
	ldr r7, _08018E18  @ =0x03000094
	ldr r6, [r7]
	mov r9, r6
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	ldr r4, _08018E1C  @ =gOamData
	mov r10, r4
	add r1, r1, r10
	str r1, [r5, #4]
	ldr r1, _08018E20  @ =0x84000002
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldrh r5, [r6, #2]
	lsl r5, r5, #3
	add r5, r5, r10
	ldr r6, _08018E24  @ =gUnknown_03001930
	mov r12, r6
	ldrh r1, [r6]
	ldr r4, _08018E28  @ =0x000003FF
	and r4, r4, r1
	ldrh r6, [r5, #4]
	ldr r1, _08018E2C  @ =0xFFFFFC00
	and r1, r1, r6
	orr r1, r1, r4
	strh r1, [r5, #4]
	mov r1, r9
	ldrh r5, [r1, #2]
	lsl r5, r5, #3
	add r5, r5, r10
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, [r0, #12]
	add r1, r1, r8
	ldrb r1, [r1, #2]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r2, r2, r1
	ldr r4, _08018E30  @ =0x000001FF
	add r1, r4, #0
	and r2, r2, r1
	ldrh r4, [r5, #2]
	ldr r1, _08018E34  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r5, #2]
	mov r6, r9
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r10
	ldr r1, [r0, #12]
	add r8, r8, r1
	lsr r3, r3, #16
	mov r1, r8
	ldrb r1, [r1, #3]
	add r3, r3, r1
	strb r3, [r2]
	ldr r1, [r7]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r10
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r2, r12
	ldrh r2, [r2]
	add r1, r1, r2
	mov r3, r12
	strh r1, [r3]
	ldrh r0, [r0, #8]
	ldr r4, _08018E10  @ =gUnknown_0300192C
	ldrh r4, [r4]
	add r0, r0, r4
	ldr r6, _08018E10  @ =gUnknown_0300192C
	strh r0, [r6]
	ldr r1, [r7]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08018E0C:
	.4byte 0x040000D4
_08018E10:
	.4byte gUnknown_0300192C
_08018E14:
	.4byte 0x06010000
_08018E18:
	.4byte 0x03000094
_08018E1C:
	.4byte gOamData
_08018E20:
	.4byte 0x84000002
_08018E24:
	.4byte gUnknown_03001930
_08018E28:
	.4byte 0x000003FF
_08018E2C:
	.4byte 0xFFFFFC00
_08018E30:
	.4byte 0x000001FF
_08018E34:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018D0C

	THUMB_FUNC_START sub_08018E38
sub_08018E38: @ 0x08018E38
	push {r4-r7,lr}
	add r3, r0, #0
	lsl r1, r1, #16
	lsr r7, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r12, r2
	ldr r0, _08018EC0  @ =0x03000083
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08018EBA
	ldr r1, _08018EC4  @ =0x040000D4
	ldr r0, [r3, #16]
	str r0, [r1]
	ldr r6, _08018EC8  @ =0x03000094
	ldr r4, [r6]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _08018ECC  @ =gOamData
	add r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _08018ED0  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r0, [r4, #26]
	ldr r1, _08018ED4  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08018ED8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	lsl r1, r7, #23
	lsr r1, r1, #23
	ldrh r3, [r2, #2]
	ldr r0, _08018EDC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r12
	strb r1, [r0]
	ldr r0, [r6]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r6]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
_08018EBA:
	pop {r4-r7}
	pop {r0}
	bx r0
_08018EC0:
	.4byte 0x03000083
_08018EC4:
	.4byte 0x040000D4
_08018EC8:
	.4byte 0x03000094
_08018ECC:
	.4byte gOamData
_08018ED0:
	.4byte 0x84000002
_08018ED4:
	.4byte 0x000003FF
_08018ED8:
	.4byte 0xFFFFFC00
_08018EDC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018E38

	THUMB_FUNC_START sub_08018EE0
sub_08018EE0: @ 0x08018EE0
	push {r4-r7,lr}
	add r3, r0, #0
	lsl r1, r1, #16
	lsr r7, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r12, r2
	ldr r0, _08018F68  @ =0x03000083
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08018F62
	ldr r1, _08018F6C  @ =0x040000D4
	ldr r0, [r3, #16]
	str r0, [r1]
	ldr r6, _08018F70  @ =0x03000094
	ldr r4, [r6]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _08018F74  @ =gOamData
	add r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _08018F78  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r0, [r4, #28]
	ldr r1, _08018F7C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08018F80  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	lsl r1, r7, #23
	lsr r1, r1, #23
	ldrh r3, [r2, #2]
	ldr r0, _08018F84  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r12
	strb r1, [r0]
	ldr r0, [r6]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r6]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
_08018F62:
	pop {r4-r7}
	pop {r0}
	bx r0
_08018F68:
	.4byte 0x03000083
_08018F6C:
	.4byte 0x040000D4
_08018F70:
	.4byte 0x03000094
_08018F74:
	.4byte gOamData
_08018F78:
	.4byte 0x84000002
_08018F7C:
	.4byte 0x000003FF
_08018F80:
	.4byte 0xFFFFFC00
_08018F84:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018EE0

	THUMB_FUNC_START sub_08018F88
sub_08018F88: @ 0x08018F88
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r9, r7
	lsl r1, r1, #24
	lsl r2, r2, #24
	lsr r6, r2, #24
	mov r8, r6
	cmp r1, #0
	bne _08018FA6
	b _080190E8
_08018FA6:
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _08019044
	ldr r0, _08019028  @ =gUnknown_080793B4
	ldr r1, _0801902C  @ =0x03000086
	mov r9, r1
	ldrb r1, [r1]
	ldr r2, _08019030  @ =0x03000094
	mov r8, r2
	ldr r2, [r2]
	ldrh r2, [r2, #30]
	ldr r4, _08019034  @ =gUnknown_0807897C
	lsl r5, r7, #24
	asr r5, r5, #21
	add r6, r5, r4
	ldr r3, [r6]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r4, r4, #4
	add r5, r5, r4
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	ldr r0, _08019038  @ =gUnknown_08079414
	ldr r1, _0801903C  @ =0x03000087
	ldrb r1, [r1]
	mov r3, r8
	ldr r2, [r3]
	ldrh r2, [r2, #32]
	ldr r3, [r6]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	ldr r0, _08019040  @ =gUnknown_08079474
	mov r2, r9
	ldrb r1, [r2]
	mov r3, r8
	ldr r2, [r3]
	ldrh r2, [r2, #34]
	ldr r3, [r6]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	b _08019210
	.byte 0x00
	.byte 0x00
_08019028:
	.4byte gUnknown_080793B4
_0801902C:
	.4byte 0x03000086
_08019030:
	.4byte 0x03000094
_08019034:
	.4byte gUnknown_0807897C
_08019038:
	.4byte gUnknown_08079414
_0801903C:
	.4byte 0x03000087
_08019040:
	.4byte gUnknown_08079474
_08019044:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _08019078
	ldr r0, _080190D4  @ =gUnknown_08079384
	ldr r1, _080190D8  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #36]
	ldr r5, _080190DC  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019078:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _080190AC
	ldr r0, _080190E0  @ =gUnknown_080793E4
	ldr r1, _080190D8  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #38]
	ldr r5, _080190DC  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_080190AC:
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	bne _080190B6
	b _08019210
_080190B6:
	ldr r0, _080190E4  @ =gUnknown_08079444
	ldr r1, _080190D8  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #40]
	ldr r5, _080190DC  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	b _08019148
_080190D4:
	.4byte gUnknown_08079384
_080190D8:
	.4byte 0x03000094
_080190DC:
	.4byte gUnknown_0807897C
_080190E0:
	.4byte gUnknown_080793E4
_080190E4:
	.4byte gUnknown_08079444
_080190E8:
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _08019170
	ldr r0, _0801915C  @ =gUnknown_080793CC
	ldr r6, _08019160  @ =0x03000094
	ldr r1, [r6]
	ldrh r2, [r1, #36]
	ldr r1, _08019164  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r5, r4, r1
	ldr r3, [r5]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r1, r1, #4
	add r4, r4, r1
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	ldr r0, _08019168  @ =gUnknown_0807942C
	ldr r1, [r6]
	ldrh r2, [r1, #38]
	ldr r3, [r5]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	ldr r0, _0801916C  @ =gUnknown_0807948C
	ldr r1, [r6]
	ldrh r2, [r1, #40]
	ldr r3, [r5]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
_08019148:
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	b _08019210
	.byte 0x00
	.byte 0x00
_0801915C:
	.4byte gUnknown_080793CC
_08019160:
	.4byte 0x03000094
_08019164:
	.4byte gUnknown_0807897C
_08019168:
	.4byte gUnknown_0807942C
_0801916C:
	.4byte gUnknown_0807948C
_08019170:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _080191A4
	ldr r0, _08019220  @ =gUnknown_0807939C
	ldr r1, _08019224  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #36]
	ldr r5, _08019228  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_080191A4:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _080191D8
	ldr r0, _0801922C  @ =gUnknown_080793FC
	ldr r1, _08019224  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #38]
	ldr r5, _08019228  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_080191D8:
	mov r0, #4
	mov r1, r8
	and r1, r1, r0
	cmp r1, #0
	beq _08019210
	ldr r0, _08019230  @ =gUnknown_0807945C
	ldr r1, _08019224  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #40]
	ldr r5, _08019228  @ =gUnknown_0807897C
	mov r3, r9
	lsl r4, r3, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019210:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08019220:
	.4byte gUnknown_0807939C
_08019224:
	.4byte 0x03000094
_08019228:
	.4byte gUnknown_0807897C
_0801922C:
	.4byte gUnknown_080793FC
_08019230:
	.4byte gUnknown_0807945C
	THUMB_FUNC_END sub_08018F88

	THUMB_FUNC_START sub_08019234
sub_08019234: @ 0x08019234
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r9, r7
	lsl r1, r1, #24
	lsl r2, r2, #24
	lsr r6, r2, #24
	mov r8, r6
	cmp r1, #0
	bne _08019252
	b _08019394
_08019252:
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _080192F0
	ldr r0, _080192D4  @ =gUnknown_080793B4
	ldr r1, _080192D8  @ =0x03000086
	mov r9, r1
	ldrb r1, [r1]
	ldr r2, _080192DC  @ =0x03000094
	mov r8, r2
	ldr r2, [r2]
	ldrh r2, [r2, #30]
	ldr r4, _080192E0  @ =gUnknown_080789BC
	lsl r5, r7, #24
	asr r5, r5, #21
	add r6, r5, r4
	ldr r3, [r6]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r4, r4, #4
	add r5, r5, r4
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	ldr r0, _080192E4  @ =gUnknown_08079414
	ldr r1, _080192E8  @ =0x03000087
	ldrb r1, [r1]
	mov r3, r8
	ldr r2, [r3]
	ldrh r2, [r2, #32]
	ldr r3, [r6]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	ldr r0, _080192EC  @ =gUnknown_08079474
	mov r2, r9
	ldrb r1, [r2]
	mov r3, r8
	ldr r2, [r3]
	ldrh r2, [r2, #34]
	ldr r3, [r6]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	b _080194BE
	.byte 0x00
	.byte 0x00
_080192D4:
	.4byte gUnknown_080793B4
_080192D8:
	.4byte 0x03000086
_080192DC:
	.4byte 0x03000094
_080192E0:
	.4byte gUnknown_080789BC
_080192E4:
	.4byte gUnknown_08079414
_080192E8:
	.4byte 0x03000087
_080192EC:
	.4byte gUnknown_08079474
_080192F0:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _08019324
	ldr r0, _08019380  @ =gUnknown_08079384
	ldr r1, _08019384  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #36]
	ldr r5, _08019388  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019324:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _08019358
	ldr r0, _0801938C  @ =gUnknown_080793E4
	ldr r1, _08019384  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #38]
	ldr r5, _08019388  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019358:
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	bne _08019362
	b _080194BE
_08019362:
	ldr r0, _08019390  @ =gUnknown_08079444
	ldr r1, _08019384  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #40]
	ldr r5, _08019388  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	b _080193F4
_08019380:
	.4byte gUnknown_08079384
_08019384:
	.4byte 0x03000094
_08019388:
	.4byte gUnknown_080789BC
_0801938C:
	.4byte gUnknown_080793E4
_08019390:
	.4byte gUnknown_08079444
_08019394:
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _0801941C
	ldr r0, _08019408  @ =gUnknown_080793CC
	ldr r6, _0801940C  @ =0x03000094
	ldr r1, [r6]
	ldrh r2, [r1, #36]
	ldr r1, _08019410  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r5, r4, r1
	ldr r3, [r5]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r1, r1, #4
	add r4, r4, r1
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	ldr r0, _08019414  @ =gUnknown_0807942C
	ldr r1, [r6]
	ldrh r2, [r1, #38]
	ldr r3, [r5]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	ldr r0, _08019418  @ =gUnknown_0807948C
	ldr r1, [r6]
	ldrh r2, [r1, #40]
	ldr r3, [r5]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
_080193F4:
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	b _080194BE
	.byte 0x00
	.byte 0x00
_08019408:
	.4byte gUnknown_080793CC
_0801940C:
	.4byte 0x03000094
_08019410:
	.4byte gUnknown_080789BC
_08019414:
	.4byte gUnknown_0807942C
_08019418:
	.4byte gUnknown_0807948C
_0801941C:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _08019450
	ldr r0, _080194CC  @ =gUnknown_0807939C
	ldr r1, _080194D0  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #36]
	ldr r5, _080194D4  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019450:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _08019484
	ldr r0, _080194D8  @ =gUnknown_080793FC
	ldr r1, _080194D0  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #38]
	ldr r5, _080194D4  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019484:
	mov r0, #4
	mov r1, r8
	and r1, r1, r0
	cmp r1, #0
	beq _080194BE
	ldr r0, _080194DC  @ =gUnknown_0807945C
	ldr r1, _080194D0  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #40]
	ldr r1, _080194D4  @ =gUnknown_080789BC
	mov r3, r9
	lsl r4, r3, #24
	asr r4, r4, #21
	add r1, r4, r1
	ldr r3, [r1]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r1, _080194E0  @ =gUnknown_0807897C
	add r1, r1, #4
	add r4, r4, r1
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_080194BE:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080194CC:
	.4byte gUnknown_0807939C
_080194D0:
	.4byte 0x03000094
_080194D4:
	.4byte gUnknown_080789BC
_080194D8:
	.4byte gUnknown_080793FC
_080194DC:
	.4byte gUnknown_0807945C
_080194E0:
	.4byte gUnknown_0807897C
	THUMB_FUNC_END sub_08019234

	THUMB_FUNC_START sub_080194E4
sub_080194E4: @ 0x080194E4
	push {r4,r5,lr}
	ldr r1, [sp, #12]
	lsl r0, r0, #24
	lsl r3, r3, #24
	lsr r4, r3, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r5, #0
	lsr r3, r0, #24
	lsl r2, r2, #24
	cmp r0, r2
	bne _0801950A
	ldr r0, _08019538  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801950A
	mov r5, #1
_0801950A:
	lsl r0, r3, #24
	asr r3, r0, #24
	cmp r3, #6
	bne _08019564
	cmp r1, #0
	bne _08019518
	b _08019620
_08019518:
	cmp r5, #0
	beq _08019544
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	beq _08019526
	b _08019620
_08019526:
	ldr r0, _0801953C  @ =gUnknown_08079354
	ldr r2, _08019540  @ =gUnknown_0807897C
	ldr r1, [r2, #48]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	ldr r2, [r2, #52]
	b _080195E2
	.byte 0x00
	.byte 0x00
_08019538:
	.4byte gLevelSelectMode
_0801953C:
	.4byte gUnknown_08079354
_08019540:
	.4byte gUnknown_0807897C
_08019544:
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _0801955C  @ =gUnknown_0807936C
	ldr r2, _08019560  @ =gUnknown_0807897C
	ldr r1, [r2, #48]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	ldr r2, [r2, #52]
	b _080195A6
_0801955C:
	.4byte gUnknown_0807936C
_08019560:
	.4byte gUnknown_0807897C
_08019564:
	cmp r3, #7
	bne _080195BC
	cmp r1, #0
	beq _08019620
	cmp r5, #0
	beq _08019590
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _08019588  @ =gUnknown_08079354
	ldr r2, _0801958C  @ =gUnknown_0807897C
	ldr r1, [r2, #56]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	ldr r2, [r2, #60]
	b _080195E2
_08019588:
	.4byte gUnknown_08079354
_0801958C:
	.4byte gUnknown_0807897C
_08019590:
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _080195B4  @ =gUnknown_0807936C
	ldr r2, _080195B8  @ =gUnknown_0807897C
	ldr r1, [r2, #56]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	ldr r2, [r2, #60]
_080195A6:
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018EE0
	b _08019620
	.byte 0x00
	.byte 0x00
_080195B4:
	.4byte gUnknown_0807936C
_080195B8:
	.4byte gUnknown_0807897C
_080195BC:
	cmp r1, #0
	beq _08019620
	cmp r5, #0
	beq _080195F8
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _080195F0  @ =gUnknown_08079354
	ldr r2, _080195F4  @ =gUnknown_0807897C
	lsl r3, r3, #3
	add r1, r3, r2
	ldr r1, [r1]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, #4
	add r3, r3, r2
	ldr r2, [r3]
_080195E2:
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018E38
	b _08019620
	.byte 0x00
	.byte 0x00
_080195F0:
	.4byte gUnknown_08079354
_080195F4:
	.4byte gUnknown_0807897C
_080195F8:
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _08019628  @ =gUnknown_0807936C
	ldr r2, _0801962C  @ =gUnknown_0807897C
	lsl r3, r3, #3
	add r1, r3, r2
	ldr r1, [r1]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, #4
	add r3, r3, r2
	ldr r2, [r3]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018EE0
_08019620:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08019628:
	.4byte gUnknown_0807936C
_0801962C:
	.4byte gUnknown_0807897C
	THUMB_FUNC_END sub_080194E4

	THUMB_FUNC_START sub_08019630
sub_08019630: @ 0x08019630
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r1, r1, #24
	asr r0, r1, #24
	cmp r0, #5
	bgt _080196BA
	lsl r6, r4, #24
	mov r5, #0
	add r7, r1, #0
	mov r8, r6
	cmp r6, #0
	ble _08019676
_08019650:
	lsl r0, r5, #24
	asr r0, r0, #24
	asr r4, r6, #24
	ldr r1, _08019690  @ =0x0300007C
	ldr r2, [r1]
	lsl r1, r5, #2
	add r1, r1, r2
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	asr r1, r7, #24
	add r2, r4, #0
	bl sub_080194E4
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, r4
	blt _08019650
_08019676:
	lsl r0, r5, #24
	asr r0, r0, #24
	asr r1, r7, #24
	mov r3, r8
	asr r2, r3, #24
	ldr r3, _08019690  @ =0x0300007C
	ldr r3, [r3]
	lsl r4, r5, #2
	add r4, r4, r3
	ldrb r3, [r4, #1]
	ldrb r4, [r4]
	str r4, [sp]
	b _080196AC
_08019690:
	.4byte 0x0300007C
_08019694:
	lsl r0, r5, #24
	asr r0, r0, #24
	ldr r1, _080196C8  @ =0x0300007C
	ldr r2, [r1]
	lsl r1, r5, #2
	add r1, r1, r2
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	asr r1, r7, #24
	mov r4, r8
	asr r2, r4, #24
_080196AC:
	bl sub_080194E4
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #7
	bls _08019694
_080196BA:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080196C8:
	.4byte 0x0300007C
	THUMB_FUNC_END sub_08019630

	THUMB_FUNC_START sub_080196CC
sub_080196CC: @ 0x080196CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, [sp, #32]
	lsl r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r8, r3
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r3, #0
	lsr r5, r0, #24
	lsl r2, r2, #24
	cmp r0, r2
	bne _08019700
	ldr r0, _08019768  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08019700
	mov r3, #1
_08019700:
	mov r9, r3
	lsl r0, r5, #24
	asr r7, r0, #24
	mov r10, r0
	cmp r7, #6
	beq _0801970E
	b _080198CC
_0801970E:
	cmp r4, #0
	bne _08019714
	b _0801988C
_08019714:
	cmp r3, #0
	beq _080197D4
	mov r0, #192
	mov r1, r8
	and r0, r0, r1
	cmp r0, #192
	bne _0801977C
	ldr r0, _0801976C  @ =gUnknown_0807930C
	ldr r4, _08019770  @ =gUnknown_0807897C
	ldr r2, [r4, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #52
	ldrsh r3, [r4, r1]
	mov r1, #3
	bl sub_08018D0C
	ldr r0, _08019774  @ =gUnknown_080792C4
	mov r1, #7
	mov r2, r8
	and r1, r1, r2
	add r1, r1, #21
	ldr r2, [r4, #48]
	add r2, r2, #26
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r3, [r4, #52]
	add r3, r3, #26
	lsl r3, r3, #16
	asr r3, r3, #16
	bl sub_08018D0C
	ldr r0, _08019778  @ =gUnknown_080794D4
	mov r3, #48
	ldrsh r2, [r4, r3]
	ldr r3, [r4, #52]
	add r3, r3, #20
	lsl r3, r3, #16
	asr r3, r3, #16
	b _08019942
	.byte 0x00
	.byte 0x00
_08019768:
	.4byte gLevelSelectMode
_0801976C:
	.4byte gUnknown_0807930C
_08019770:
	.4byte gUnknown_0807897C
_08019774:
	.4byte gUnknown_080792C4
_08019778:
	.4byte gUnknown_080794D4
_0801977C:
	ldr r0, _080197C4  @ =gUnknown_0807930C
	ldr r4, _080197C8  @ =gUnknown_0807897C
	ldr r2, [r4, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #52
	ldrsh r3, [r4, r1]
	mov r1, #0
	bl sub_08018D0C
	mov r1, #7
	mov r2, r8
	and r1, r1, r2
	cmp r1, #0
	bne _0801979E
	b _08019ADE
_0801979E:
	ldr r0, _080197CC  @ =gUnknown_080792C4
	ldr r2, [r4, #48]
	add r2, r2, #26
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r3, [r4, #52]
	add r3, r3, #26
	lsl r3, r3, #16
	asr r3, r3, #16
	bl sub_08018D0C
	ldr r0, _080197D0  @ =gUnknown_080794D4
	mov r3, #48
	ldrsh r2, [r4, r3]
	ldr r3, [r4, #52]
	add r3, r3, #20
	lsl r3, r3, #16
	asr r3, r3, #16
	b _08019942
_080197C4:
	.4byte gUnknown_0807930C
_080197C8:
	.4byte gUnknown_0807897C
_080197CC:
	.4byte gUnknown_080792C4
_080197D0:
	.4byte gUnknown_080794D4
_080197D4:
	mov r0, #192
	mov r4, r8
	and r0, r0, r4
	cmp r0, #192
	bne _08019834
	ldr r0, _08019824  @ =gUnknown_0807930C
	ldr r4, _08019828  @ =gUnknown_0807897C
	ldr r2, [r4, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #52
	ldrsh r3, [r4, r1]
	mov r1, #4
	bl sub_08018D0C
	ldr r0, _0801982C  @ =gUnknown_080792C4
	mov r1, #7
	mov r2, r8
	and r1, r1, r2
	add r1, r1, #28
	ldr r2, [r4, #48]
	add r2, r2, #26
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r3, [r4, #52]
	add r3, r3, #26
	lsl r3, r3, #16
	asr r3, r3, #16
	bl sub_08018D0C
	ldr r0, _08019830  @ =gUnknown_080794D4
	mov r3, #48
	ldrsh r2, [r4, r3]
	ldr r3, [r4, #52]
	add r3, r3, #20
	lsl r3, r3, #16
	asr r3, r3, #16
	b _080198BC
	.byte 0x00
	.byte 0x00
_08019824:
	.4byte gUnknown_0807930C
_08019828:
	.4byte gUnknown_0807897C
_0801982C:
	.4byte gUnknown_080792C4
_08019830:
	.4byte gUnknown_080794D4
_08019834:
	ldr r0, _0801987C  @ =gUnknown_0807930C
	ldr r4, _08019880  @ =gUnknown_0807897C
	ldr r2, [r4, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #52
	ldrsh r3, [r4, r1]
	mov r1, #0
	bl sub_08018D0C
	mov r1, #7
	mov r2, r8
	and r1, r1, r2
	cmp r1, #0
	bne _08019856
	b _08019ADE
_08019856:
	ldr r0, _08019884  @ =gUnknown_080792C4
	ldr r2, [r4, #48]
	add r2, r2, #26
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r3, [r4, #52]
	add r3, r3, #26
	lsl r3, r3, #16
	asr r3, r3, #16
	bl sub_08018D0C
	ldr r0, _08019888  @ =gUnknown_080794D4
	mov r3, #48
	ldrsh r2, [r4, r3]
	ldr r3, [r4, #52]
	add r3, r3, #20
	lsl r3, r3, #16
	asr r3, r3, #16
	b _080198BC
_0801987C:
	.4byte gUnknown_0807930C
_08019880:
	.4byte gUnknown_0807897C
_08019884:
	.4byte gUnknown_080792C4
_08019888:
	.4byte gUnknown_080794D4
_0801988C:
	mov r4, r9
	cmp r4, #0
	beq _080198AC
	ldr r0, _080198A4  @ =gUnknown_0807930C
	ldr r1, _080198A8  @ =gUnknown_0807897C
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #52
	ldrsh r3, [r1, r4]
	b _08019942
_080198A4:
	.4byte gUnknown_0807930C
_080198A8:
	.4byte gUnknown_0807897C
_080198AC:
	ldr r0, _080198C4  @ =gUnknown_0807930C
	ldr r1, _080198C8  @ =gUnknown_0807897C
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #52
	ldrsh r3, [r1, r4]
_080198BC:
	mov r1, #1
	bl sub_08018D0C
	b _08019ADE
_080198C4:
	.4byte gUnknown_0807930C
_080198C8:
	.4byte gUnknown_0807897C
_080198CC:
	cmp r7, #7
	bne _08019954
	cmp r4, #0
	beq _08019930
	mov r0, r9
	cmp r0, #0
	beq _08019904
	mov r0, #192
	mov r1, r8
	and r0, r0, r1
	cmp r0, #192
	bne _08019932
	ldr r0, _080198FC  @ =gUnknown_08079324
	ldr r1, _08019900  @ =gUnknown_0807897C
	ldr r2, [r1, #56]
	add r2, r2, #2
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #60
	ldrsh r3, [r1, r4]
	mov r1, #3
	bl sub_08018D0C
	b _08019ADE
_080198FC:
	.4byte gUnknown_08079324
_08019900:
	.4byte gUnknown_0807897C
_08019904:
	mov r0, #192
	mov r1, r8
	and r0, r0, r1
	cmp r0, #192
	bne _08019932
	ldr r0, _08019928  @ =gUnknown_08079324
	ldr r1, _0801992C  @ =gUnknown_0807897C
	ldr r2, [r1, #56]
	add r2, r2, #2
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #60
	ldrsh r3, [r1, r4]
	mov r1, #4
	bl sub_08018D0C
	b _08019ADE
	.byte 0x00
	.byte 0x00
_08019928:
	.4byte gUnknown_08079324
_0801992C:
	.4byte gUnknown_0807897C
_08019930:
	mov r0, r9
_08019932:
	ldr r0, _0801994C  @ =gUnknown_08079324
	ldr r1, _08019950  @ =gUnknown_0807897C
	ldr r2, [r1, #56]
	add r2, r2, #2
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #60
	ldrsh r3, [r1, r4]
_08019942:
	mov r1, #0
	bl sub_08018D0C
	b _08019ADE
	.byte 0x00
	.byte 0x00
_0801994C:
	.4byte gUnknown_08079324
_08019950:
	.4byte gUnknown_0807897C
_08019954:
	cmp r4, #0
	beq _08019A20
	mov r0, r9
	cmp r0, #0
	beq _080199C0
	mov r0, #192
	mov r2, r8
	and r0, r0, r2
	cmp r0, #192
	bne _080199B0
	ldr r6, _080199A8  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r3, #176
	lsl r3, r3, #21
	add r1, r1, r3
	lsr r1, r1, #24
	ldr r0, _080199AC  @ =gUnknown_0807897C
	lsl r4, r7, #3
	add r5, r4, r0
	mov r3, #0
	ldrsh r2, [r5, r3]
	add r0, r0, #4
	add r4, r4, r0
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	ldr r2, [r5]
	add r2, r2, #6
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #0
	ldrsh r3, [r4, r1]
	add r0, r6, #0
	mov r1, #21
	bl sub_08018D0C
	add r1, r7, #0
	add r1, r1, #22
	b _08019A60
	.byte 0x00
	.byte 0x00
_080199A8:
	.4byte gUnknown_080792C4
_080199AC:
	.4byte gUnknown_0807897C
_080199B0:
	ldr r6, _080199BC  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r2, #128
	lsl r2, r2, #17
	add r1, r1, r2
	b _08019A30
_080199BC:
	.4byte gUnknown_080792C4
_080199C0:
	mov r0, #192
	mov r2, r8
	and r0, r0, r2
	cmp r0, #192
	bne _08019A10
	ldr r6, _08019A08  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r3, #232
	lsl r3, r3, #21
	add r1, r1, r3
	lsr r1, r1, #24
	ldr r0, _08019A0C  @ =gUnknown_0807897C
	lsl r4, r7, #3
	add r5, r4, r0
	mov r3, #0
	ldrsh r2, [r5, r3]
	add r0, r0, #4
	add r4, r4, r0
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	ldr r2, [r5]
	add r2, r2, #6
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #0
	ldrsh r3, [r4, r1]
	add r0, r6, #0
	mov r1, #28
	bl sub_08018D0C
	add r1, r7, #0
	add r1, r1, #29
	b _08019A60
_08019A08:
	.4byte gUnknown_080792C4
_08019A0C:
	.4byte gUnknown_0807897C
_08019A10:
	ldr r6, _08019A1C  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r2, #128
	lsl r2, r2, #17
	add r1, r1, r2
	b _08019A30
_08019A1C:
	.4byte gUnknown_080792C4
_08019A20:
	mov r2, r9
	cmp r2, #0
	beq _08019A80
	ldr r6, _08019A78  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r3, #128
	lsl r3, r3, #17
	add r1, r1, r3
_08019A30:
	lsr r1, r1, #24
	ldr r0, _08019A7C  @ =gUnknown_0807897C
	lsl r4, r7, #3
	add r5, r4, r0
	mov r3, #0
	ldrsh r2, [r5, r3]
	add r0, r0, #4
	add r4, r4, r0
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	ldr r2, [r5]
	add r2, r2, #6
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #0
	ldrsh r3, [r4, r1]
	add r0, r6, #0
	mov r1, #0
	bl sub_08018D0C
	add r1, r7, #1
_08019A60:
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, [r5]
	add r2, r2, #12
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	b _08019AD2
_08019A78:
	.4byte gUnknown_080792C4
_08019A7C:
	.4byte gUnknown_0807897C
_08019A80:
	ldr r6, _08019AEC  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r2, #128
	lsl r2, r2, #20
	add r1, r1, r2
	lsr r1, r1, #24
	ldr r0, _08019AF0  @ =gUnknown_0807897C
	lsl r4, r7, #3
	add r5, r4, r0
	mov r3, #0
	ldrsh r2, [r5, r3]
	add r0, r0, #4
	add r4, r4, r0
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	ldr r2, [r5]
	add r2, r2, #6
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #0
	ldrsh r3, [r4, r1]
	add r0, r6, #0
	mov r1, #7
	bl sub_08018D0C
	add r1, r7, #0
	add r1, r1, #8
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, [r5]
	add r2, r2, #12
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
_08019AD2:
	mov r1, r10
	asr r0, r1, #24
	mov r1, r9
	mov r2, r8
	bl sub_08018F88
_08019ADE:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08019AEC:
	.4byte gUnknown_080792C4
_08019AF0:
	.4byte gUnknown_0807897C
	THUMB_FUNC_END sub_080196CC

	THUMB_FUNC_START sub_08019AF4
sub_08019AF4: @ 0x08019AF4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	blt _08019B10
	cmp r1, #5
	ble _08019B10
	b _08019CFA
_08019B10:
	lsl r3, r0, #24
	mov r5, #0
	mov r8, r3
	cmp r3, #0
	ble _08019BBC
	ldr r0, _08019B78  @ =gUnknown_080789BC
	mov r9, r0
	mov r1, #4
	add r1, r1, r9
	mov r10, r1
_08019B24:
	lsl r2, r5, #24
	ldr r0, _08019B7C  @ =0x0300007C
	ldr r1, [r0]
	lsl r0, r5, #2
	add r0, r0, r1
	ldrb r1, [r0, #1]
	ldrb r4, [r0]
	mov r6, #0
	asr r7, r2, #24
	cmp r2, r3
	bne _08019B48
	ldr r0, _08019B80  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08019B48
	mov r6, #1
_08019B48:
	cmp r4, #0
	beq _08019BAE
	cmp r6, #0
	beq _08019B88
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019BAE
	lsl r2, r7, #3
	mov r1, r9
	add r0, r2, r1
	ldr r1, [r0]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, r10
	ldr r2, [r2]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _08019B84  @ =gUnknown_08079354
	bl sub_08018E38
	b _08019BAE
_08019B78:
	.4byte gUnknown_080789BC
_08019B7C:
	.4byte 0x0300007C
_08019B80:
	.4byte gLevelSelectMode
_08019B84:
	.4byte gUnknown_08079354
_08019B88:
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019BAE
	lsl r2, r7, #3
	mov r1, r9
	add r0, r2, r1
	ldr r1, [r0]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, r10
	ldr r2, [r2]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _08019C14  @ =gUnknown_0807936C
	bl sub_08018EE0
_08019BAE:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r3, r8
	asr r0, r3, #24
	cmp r5, r0
	blt _08019B24
_08019BBC:
	lsl r2, r5, #24
	ldr r0, _08019C18  @ =0x0300007C
	ldr r1, [r0]
	lsl r0, r5, #2
	add r0, r0, r1
	ldrb r1, [r0, #1]
	ldrb r4, [r0]
	mov r6, #0
	asr r3, r2, #24
	cmp r2, r8
	bne _08019BE0
	ldr r0, _08019C1C  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08019BE0
	mov r6, #1
_08019BE0:
	cmp r4, #0
	beq _08019C50
	cmp r6, #0
	beq _08019C28
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019C50
	ldr r0, _08019C20  @ =gUnknown_08079354
	ldr r2, _08019C24  @ =gUnknown_080789BC
	lsl r3, r3, #3
	add r1, r3, r2
	ldr r1, [r1]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, #4
	add r3, r3, r2
	ldr r2, [r3]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018E38
	b _08019C50
	.byte 0x00
	.byte 0x00
_08019C14:
	.4byte gUnknown_0807936C
_08019C18:
	.4byte 0x0300007C
_08019C1C:
	.4byte gLevelSelectMode
_08019C20:
	.4byte gUnknown_08079354
_08019C24:
	.4byte gUnknown_080789BC
_08019C28:
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019C50
	ldr r0, _08019CB8  @ =gUnknown_0807936C
	ldr r2, _08019CBC  @ =gUnknown_080789BC
	lsl r3, r3, #3
	add r1, r3, r2
	ldr r1, [r1]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, #4
	add r3, r3, r2
	ldr r2, [r3]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018EE0
_08019C50:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #6
	bhi _08019CFA
	mov r0, r8
	asr r0, r0, #24
	mov r8, r0
	ldr r6, _08019CBC  @ =gUnknown_080789BC
	add r7, r6, #4
_08019C64:
	lsl r2, r5, #24
	ldr r0, _08019CC0  @ =0x0300007C
	ldr r1, [r0]
	lsl r0, r5, #2
	add r0, r0, r1
	asr r2, r2, #24
	ldrb r1, [r0, #1]
	ldrb r3, [r0]
	mov r4, #0
	cmp r2, r8
	bne _08019C88
	ldr r0, _08019CC4  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08019C88
	mov r4, #1
_08019C88:
	cmp r3, #0
	beq _08019CF0
	cmp r4, #0
	beq _08019CCC
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019CF0
	lsl r2, r2, #3
	add r0, r2, r6
	ldr r1, [r0]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, r7
	ldr r2, [r2]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _08019CC8  @ =gUnknown_08079354
	bl sub_08018E38
	b _08019CF0
	.byte 0x00
	.byte 0x00
_08019CB8:
	.4byte gUnknown_0807936C
_08019CBC:
	.4byte gUnknown_080789BC
_08019CC0:
	.4byte 0x0300007C
_08019CC4:
	.4byte gLevelSelectMode
_08019CC8:
	.4byte gUnknown_08079354
_08019CCC:
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019CF0
	lsl r2, r2, #3
	add r0, r2, r6
	ldr r1, [r0]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, r7
	ldr r2, [r2]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _08019D08  @ =gUnknown_0807936C
	bl sub_08018EE0
_08019CF0:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #6
	bls _08019C64
_08019CFA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08019D08:
	.4byte gUnknown_0807936C
	THUMB_FUNC_END sub_08019AF4

	THUMB_FUNC_START sub_08019D0C
sub_08019D0C: @ 0x08019D0C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r4, [sp, #36]
	lsl r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r8, r3
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r3, #0
	lsr r5, r0, #24
	lsl r2, r2, #24
	cmp r0, r2
	bne _08019D42
	ldr r0, _08019D70  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08019D42
	mov r3, #1
_08019D42:
	add r7, r3, #0
	lsl r0, r5, #24
	asr r6, r0, #24
	mov r9, r0
	cmp r6, #6
	bne _08019E38
	cmp r4, #0
	beq _08019DEC
	cmp r7, #0
	beq _08019D9C
	mov r0, #192
	mov r1, r8
	and r0, r0, r1
	cmp r0, #192
	bne _08019D7C
	ldr r0, _08019D74  @ =gUnknown_0807933C
	ldr r1, _08019D78  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	b _08019DB4
	.byte 0x00
	.byte 0x00
_08019D70:
	.4byte gLevelSelectMode
_08019D74:
	.4byte gUnknown_0807933C
_08019D78:
	.4byte gUnknown_080789BC
_08019D7C:
	ldr r0, _08019D90  @ =gUnknown_0807933C
	ldr r1, _08019D94  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019D98  @ =gUnknown_0807897C
	mov r5, #52
	ldrsh r3, [r1, r5]
	b _08019E22
_08019D90:
	.4byte gUnknown_0807933C
_08019D94:
	.4byte gUnknown_080789BC
_08019D98:
	.4byte gUnknown_0807897C
_08019D9C:
	mov r0, #192
	mov r6, r8
	and r0, r0, r6
	cmp r0, #192
	bne _08019DCC
	ldr r0, _08019DC0  @ =gUnknown_0807933C
	ldr r1, _08019DC4  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019DC8  @ =gUnknown_0807897C
_08019DB4:
	mov r4, #52
	ldrsh r3, [r1, r4]
	mov r1, #3
	bl sub_08018D0C
	b _08019F6E
_08019DC0:
	.4byte gUnknown_0807933C
_08019DC4:
	.4byte gUnknown_080789BC
_08019DC8:
	.4byte gUnknown_0807897C
_08019DCC:
	ldr r0, _08019DE0  @ =gUnknown_0807933C
	ldr r1, _08019DE4  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019DE8  @ =gUnknown_0807897C
	mov r5, #52
	ldrsh r3, [r1, r5]
	b _08019E22
_08019DE0:
	.4byte gUnknown_0807933C
_08019DE4:
	.4byte gUnknown_080789BC
_08019DE8:
	.4byte gUnknown_0807897C
_08019DEC:
	cmp r7, #0
	beq _08019E10
	ldr r0, _08019E04  @ =gUnknown_0807933C
	ldr r1, _08019E08  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019E0C  @ =gUnknown_0807897C
	mov r6, #52
	ldrsh r3, [r1, r6]
	b _08019E22
_08019E04:
	.4byte gUnknown_0807933C
_08019E08:
	.4byte gUnknown_080789BC
_08019E0C:
	.4byte gUnknown_0807897C
_08019E10:
	ldr r0, _08019E2C  @ =gUnknown_0807933C
	ldr r1, _08019E30  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019E34  @ =gUnknown_0807897C
	mov r4, #52
	ldrsh r3, [r1, r4]
_08019E22:
	mov r1, #0
	bl sub_08018D0C
	b _08019F6E
	.byte 0x00
	.byte 0x00
_08019E2C:
	.4byte gUnknown_0807933C
_08019E30:
	.4byte gUnknown_080789BC
_08019E34:
	.4byte gUnknown_0807897C
_08019E38:
	cmp r4, #0
	beq _08019EE0
	cmp r7, #0
	beq _08019E90
	mov r0, #192
	mov r5, r8
	and r0, r0, r5
	cmp r0, #192
	bne _08019EE4
	ldr r0, _08019E84  @ =gUnknown_080792DC
	lsl r1, r1, #24
	mov r2, #144
	lsl r2, r2, #21
	add r1, r1, r2
	lsr r1, r1, #24
	ldr r3, _08019E88  @ =gUnknown_080789BC
	lsl r4, r6, #3
	add r5, r4, r3
	str r5, [sp]
	mov r2, #0
	ldrsh r5, [r5, r2]
	mov r12, r5
	add r3, r3, #4
	add r4, r4, r3
	mov r5, #0
	ldrsh r3, [r4, r5]
	mov r2, r12
	bl sub_08018D0C
	ldr r0, _08019E8C  @ =gUnknown_080792F4
	add r1, r6, #0
	add r1, r1, #18
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r6, [sp]
	ldr r2, [r6]
	b _08019F04
	.byte 0x00
	.byte 0x00
_08019E84:
	.4byte gUnknown_080792DC
_08019E88:
	.4byte gUnknown_080789BC
_08019E8C:
	.4byte gUnknown_080792F4
_08019E90:
	mov r0, #192
	mov r2, r8
	and r0, r0, r2
	cmp r0, #192
	bne _08019EE4
	ldr r0, _08019ED4  @ =gUnknown_080792DC
	lsl r1, r1, #24
	mov r3, #192
	lsl r3, r3, #21
	add r1, r1, r3
	lsr r1, r1, #24
	ldr r3, _08019ED8  @ =gUnknown_080789BC
	lsl r4, r6, #3
	add r5, r4, r3
	str r5, [sp]
	mov r2, #0
	ldrsh r5, [r5, r2]
	mov r10, r5
	add r3, r3, #4
	add r4, r4, r3
	mov r5, #0
	ldrsh r3, [r4, r5]
	mov r2, r10
	bl sub_08018D0C
	ldr r0, _08019EDC  @ =gUnknown_080792F4
	add r1, r6, #0
	add r1, r1, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r6, [sp]
	ldr r2, [r6]
	b _08019F04
	.byte 0x00
	.byte 0x00
_08019ED4:
	.4byte gUnknown_080792DC
_08019ED8:
	.4byte gUnknown_080789BC
_08019EDC:
	.4byte gUnknown_080792F4
_08019EE0:
	cmp r7, #0
	beq _08019F20
_08019EE4:
	ldr r0, _08019F14  @ =gUnknown_080792DC
	ldr r3, _08019F18  @ =gUnknown_080789BC
	lsl r4, r6, #3
	add r5, r4, r3
	mov r6, #0
	ldrsh r2, [r5, r6]
	add r3, r3, #4
	add r4, r4, r3
	mov r6, #0
	ldrsh r3, [r4, r6]
	bl sub_08018D0C
	ldr r0, _08019F1C  @ =gUnknown_080792F4
	mov r2, r9
	lsr r1, r2, #24
	ldr r2, [r5]
_08019F04:
	add r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r5, #0
	ldrsh r3, [r4, r5]
	bl sub_08018D0C
	b _08019F62
_08019F14:
	.4byte gUnknown_080792DC
_08019F18:
	.4byte gUnknown_080789BC
_08019F1C:
	.4byte gUnknown_080792F4
_08019F20:
	ldr r0, _08019F80  @ =gUnknown_080792DC
	lsl r1, r1, #24
	mov r2, #192
	lsl r2, r2, #19
	add r1, r1, r2
	lsr r1, r1, #24
	ldr r3, _08019F84  @ =gUnknown_080789BC
	lsl r4, r6, #3
	add r5, r4, r3
	str r5, [sp]
	mov r2, #0
	ldrsh r5, [r5, r2]
	mov r10, r5
	add r3, r3, #4
	add r4, r4, r3
	mov r5, #0
	ldrsh r3, [r4, r5]
	mov r2, r10
	bl sub_08018D0C
	ldr r0, _08019F88  @ =gUnknown_080792F4
	add r1, r6, #6
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r6, [sp]
	ldr r2, [r6]
	add r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r5, #0
	ldrsh r3, [r4, r5]
	bl sub_08018D0C
_08019F62:
	mov r6, r9
	asr r0, r6, #24
	add r1, r7, #0
	mov r2, r8
	bl sub_08019234
_08019F6E:
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
_08019F80:
	.4byte gUnknown_080792DC
_08019F84:
	.4byte gUnknown_080789BC
_08019F88:
	.4byte gUnknown_080792F4
	THUMB_FUNC_END sub_08019D0C

	THUMB_FUNC_START sub_08019F8C
sub_08019F8C: @ 0x08019F8C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r2, r0, #24
	lsl r1, r1, #24
	asr r0, r1, #24
	cmp r0, #5
	ble _08019FA6
	b _0801A2A8
_08019FA6:
	lsl r2, r2, #24
	mov r6, #0
	mov r9, r1
	str r2, [sp, #4]
	cmp r2, #0
	ble _0801A042
	add r5, r0, #0
	ldr r7, _0801A004  @ =0x0300007C
	add r0, r5, #1
	lsl r0, r0, #24
	mov r8, r0
_08019FBC:
	lsl r0, r6, #24
	asr r0, r0, #24
	asr r2, r2, #24
	ldr r1, [r7]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r5, #0
	bl sub_080196CC
	ldr r0, [r7]
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A010
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	ldr r0, _0801A008  @ =gUnknown_0807915C
	add r0, r4, r0
	mov r2, r8
	asr r1, r2, #24
	bl sub_080185EC
	ldr r0, _0801A00C  @ =gUnknown_08078E8C
	add r4, r4, r0
	lsl r1, r5, #3
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080186B0
	b _0801A034
_0801A004:
	.4byte 0x0300007C
_0801A008:
	.4byte gUnknown_0807915C
_0801A00C:
	.4byte gUnknown_08078E8C
_0801A010:
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	ldr r0, _0801A098  @ =gUnknown_0807915C
	add r0, r4, r0
	mov r1, #0
	bl sub_080185EC
	ldr r0, _0801A09C  @ =gUnknown_08078E8C
	add r4, r4, r0
	lsl r1, r5, #3
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	mov r2, #14
	bl sub_080187C0
_0801A034:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r2, [sp, #4]
	asr r0, r2, #24
	cmp r6, r0
	blt _08019FBC
_0801A042:
	lsl r0, r6, #24
	asr r0, r0, #24
	mov r3, r9
	asr r7, r3, #24
	ldr r1, [sp, #4]
	asr r1, r1, #24
	mov r8, r1
	ldr r5, _0801A0A0  @ =0x0300007C
	ldr r1, [r5]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r7, #0
	mov r2, r8
	bl sub_080196CC
	ldr r0, [r5]
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A12C
	ldr r0, _0801A0A4  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801A0D8
	cmp r6, #6
	bhi _0801A0AC
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A0A8  @ =gUnknown_08078FF4
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018528
	b _0801A0C0
	.byte 0x00
	.byte 0x00
_0801A098:
	.4byte gUnknown_0807915C
_0801A09C:
	.4byte gUnknown_08078E8C
_0801A0A0:
	.4byte 0x0300007C
_0801A0A4:
	.4byte gLevelSelectMode
_0801A0A8:
	.4byte gUnknown_08078FF4
_0801A0AC:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A0D0  @ =gUnknown_08078FF4
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
_0801A0C0:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A0D4  @ =gUnknown_08078E8C
	add r0, r0, r1
	mov r2, r9
	asr r1, r2, #21
	b _0801A118
	.byte 0x00
	.byte 0x00
_0801A0D0:
	.4byte gUnknown_08078FF4
_0801A0D4:
	.4byte gUnknown_08078E8C
_0801A0D8:
	cmp r6, #6
	bhi _0801A0F8
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A0F4  @ =gUnknown_0807915C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080185EC
	b _0801A10C
	.byte 0x00
	.byte 0x00
_0801A0F4:
	.4byte gUnknown_0807915C
_0801A0F8:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A124  @ =gUnknown_0807915C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
_0801A10C:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A128  @ =gUnknown_08078E8C
	add r0, r0, r1
	mov r3, r9
	asr r1, r3, #21
_0801A118:
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	b _0801A1C0
_0801A124:
	.4byte gUnknown_0807915C
_0801A128:
	.4byte gUnknown_08078E8C
_0801A12C:
	cmp r8, r6
	bne _0801A17C
	ldr r0, _0801A158  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801A17C
	cmp r6, #6
	bhi _0801A160
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A15C  @ =gUnknown_0807915C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080185EC
	b _0801A1A8
	.byte 0x00
	.byte 0x00
_0801A158:
	.4byte gLevelSelectMode
_0801A15C:
	.4byte gUnknown_0807915C
_0801A160:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A178  @ =gUnknown_0807915C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
	b _0801A1A8
	.byte 0x00
	.byte 0x00
_0801A178:
	.4byte gUnknown_0807915C
_0801A17C:
	cmp r6, #6
	bhi _0801A198
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A194  @ =gUnknown_0807915C
	add r0, r0, r1
	mov r1, #0
	bl sub_080185EC
	b _0801A1A8
	.byte 0x00
	.byte 0x00
_0801A194:
	.4byte gUnknown_0807915C
_0801A198:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A214  @ =gUnknown_0807915C
	add r0, r0, r1
	mov r1, #0
	bl sub_08018418
_0801A1A8:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A218  @ =gUnknown_08078E8C
	add r0, r0, r1
	mov r2, r9
	asr r1, r2, #21
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #13
	bl sub_080187C0
_0801A1C0:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #7
	bhi _0801A2A8
	ldr r3, _0801A214  @ =gUnknown_0807915C
	mov r8, r3
	mov r0, r9
	asr r0, r0, #24
	mov r10, r0
	mov r5, #128
	lsl r5, r5, #17
	add r5, r5, r9
	lsl r7, r0, #3
	ldr r1, _0801A218  @ =gUnknown_08078E8C
	mov r9, r1
_0801A1E0:
	lsl r0, r6, #24
	asr r0, r0, #24
	ldr r2, _0801A21C  @ =0x0300007C
	ldr r1, [r2]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	mov r12, r3
	ldrb r1, [r1]
	str r1, [sp]
	mov r1, r10
	ldr r3, [sp, #4]
	asr r2, r3, #24
	mov r3, r12
	bl sub_080196CC
	ldr r1, _0801A21C  @ =0x0300007C
	ldr r0, [r1]
	add r4, r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0801A220
	cmp r6, #6
	bls _0801A22A
	b _0801A23A
	.byte 0x00
	.byte 0x00
_0801A214:
	.4byte gUnknown_0807915C
_0801A218:
	.4byte gUnknown_08078E8C
_0801A21C:
	.4byte 0x0300007C
_0801A220:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A25A
	cmp r6, #6
	bhi _0801A23A
_0801A22A:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r8
	asr r1, r5, #24
	bl sub_080185EC
	b _0801A248
_0801A23A:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r8
	asr r1, r5, #24
	bl sub_08018418
_0801A248:
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r9
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	b _0801A29E
_0801A25A:
	cmp r6, #6
	bhi _0801A280
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	mov r2, r9
	add r0, r4, r2
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #14
	bl sub_080187C0
	add r4, r4, r8
	add r0, r4, #0
	mov r1, #0
	bl sub_080185EC
	b _0801A29E
_0801A280:
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	mov r3, r9
	add r0, r4, r3
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	add r4, r4, r8
	add r0, r4, #0
	asr r1, r5, #24
	bl sub_08018418
_0801A29E:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #7
	bls _0801A1E0
_0801A2A8:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019F8C

	THUMB_FUNC_START sub_0801A2B8
sub_0801A2B8: @ 0x0801A2B8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r3, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	bge _0801A2D6
	mov r3, #0
	b _0801A2DC
_0801A2D6:
	cmp r1, #5
	ble _0801A2DC
	b _0801A5EC
_0801A2DC:
	lsl r2, r0, #24
	mov r6, #0
	lsl r3, r3, #24
	mov r9, r3
	str r2, [sp, #4]
	cmp r2, #0
	ble _0801A380
	asr r5, r3, #24
	ldr r0, _0801A344  @ =0x0300007C
	mov r8, r0
	lsl r0, r5, #3
	sub r7, r0, r5
	add r0, r5, #1
	lsl r0, r0, #24
	mov r10, r0
_0801A2FA:
	lsl r0, r6, #24
	asr r0, r0, #24
	asr r2, r2, #24
	mov r3, r8
	ldr r1, [r3]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r5, #0
	bl sub_08019D0C
	mov r1, r8
	ldr r0, [r1]
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A350
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	ldr r0, _0801A348  @ =gUnknown_0807921C
	add r0, r4, r0
	mov r2, r10
	asr r1, r2, #24
	bl sub_080185EC
	ldr r0, _0801A34C  @ =gUnknown_08078F4C
	add r4, r4, r0
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080186B0
	b _0801A372
_0801A344:
	.4byte 0x0300007C
_0801A348:
	.4byte gUnknown_0807921C
_0801A34C:
	.4byte gUnknown_08078F4C
_0801A350:
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	ldr r0, _0801A3D4  @ =gUnknown_0807921C
	add r0, r4, r0
	mov r1, #0
	bl sub_080185EC
	ldr r0, _0801A3D8  @ =gUnknown_08078F4C
	add r4, r4, r0
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	mov r2, #14
	bl sub_080187C0
_0801A372:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r2, [sp, #4]
	asr r0, r2, #24
	cmp r6, r0
	blt _0801A2FA
_0801A380:
	lsl r0, r6, #24
	asr r0, r0, #24
	mov r3, r9
	asr r7, r3, #24
	ldr r1, [sp, #4]
	asr r1, r1, #24
	mov r8, r1
	ldr r5, _0801A3DC  @ =0x0300007C
	ldr r1, [r5]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r7, #0
	mov r2, r8
	bl sub_08019D0C
	ldr r0, [r5]
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A46C
	ldr r0, _0801A3E0  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _0801A414
	cmp r6, #5
	bhi _0801A3E8
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A3E4  @ =gUnknown_080790B4
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018528
	b _0801A3FC
_0801A3D4:
	.4byte gUnknown_0807921C
_0801A3D8:
	.4byte gUnknown_08078F4C
_0801A3DC:
	.4byte 0x0300007C
_0801A3E0:
	.4byte gLevelSelectMode
_0801A3E4:
	.4byte gUnknown_080790B4
_0801A3E8:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A40C  @ =gUnknown_080790B4
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
_0801A3FC:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A410  @ =gUnknown_08078F4C
	add r0, r0, r1
	mov r3, r9
	asr r2, r3, #24
	b _0801A454
	.byte 0x00
	.byte 0x00
_0801A40C:
	.4byte gUnknown_080790B4
_0801A410:
	.4byte gUnknown_08078F4C
_0801A414:
	cmp r6, #5
	bhi _0801A434
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A430  @ =gUnknown_0807921C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080185EC
	b _0801A448
	.byte 0x00
	.byte 0x00
_0801A430:
	.4byte gUnknown_0807921C
_0801A434:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A464  @ =gUnknown_0807921C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
_0801A448:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A468  @ =gUnknown_08078F4C
	add r0, r0, r1
	mov r1, r9
	asr r2, r1, #24
_0801A454:
	lsl r1, r2, #3
	sub r1, r1, r2
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	b _0801A504
_0801A464:
	.4byte gUnknown_0807921C
_0801A468:
	.4byte gUnknown_08078F4C
_0801A46C:
	cmp r8, r6
	bne _0801A4BC
	ldr r0, _0801A498  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _0801A4BC
	cmp r6, #5
	bhi _0801A4A0
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A49C  @ =gUnknown_0807921C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080185EC
	b _0801A4E8
	.byte 0x00
	.byte 0x00
_0801A498:
	.4byte gLevelSelectMode
_0801A49C:
	.4byte gUnknown_0807921C
_0801A4A0:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A4B8  @ =gUnknown_0807921C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
	b _0801A4E8
	.byte 0x00
	.byte 0x00
_0801A4B8:
	.4byte gUnknown_0807921C
_0801A4BC:
	cmp r6, #5
	bhi _0801A4D8
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A4D4  @ =gUnknown_0807921C
	add r0, r0, r1
	mov r1, #0
	bl sub_080185EC
	b _0801A4E8
	.byte 0x00
	.byte 0x00
_0801A4D4:
	.4byte gUnknown_0807921C
_0801A4D8:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A558  @ =gUnknown_0807921C
	add r0, r0, r1
	mov r1, #0
	bl sub_08018418
_0801A4E8:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A55C  @ =gUnknown_08078F4C
	add r0, r0, r1
	mov r3, r9
	asr r2, r3, #24
	lsl r1, r2, #3
	sub r1, r1, r2
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #14
	bl sub_080187C0
_0801A504:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #6
	bhi _0801A5EC
	ldr r0, _0801A558  @ =gUnknown_0807921C
	mov r8, r0
	mov r1, r9
	asr r1, r1, #24
	mov r10, r1
	mov r5, #128
	lsl r5, r5, #17
	add r5, r5, r9
	ldr r2, _0801A55C  @ =gUnknown_08078F4C
	mov r9, r2
	lsl r0, r1, #3
	sub r7, r0, r1
_0801A526:
	lsl r0, r6, #24
	asr r0, r0, #24
	ldr r3, _0801A560  @ =0x0300007C
	ldr r1, [r3]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r2, [r1, #1]
	mov r12, r2
	ldrb r1, [r1]
	str r1, [sp]
	mov r1, r10
	ldr r3, [sp, #4]
	asr r2, r3, #24
	mov r3, r12
	bl sub_08019D0C
	ldr r1, _0801A560  @ =0x0300007C
	ldr r0, [r1]
	add r4, r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0801A564
	cmp r6, #5
	bls _0801A56E
	b _0801A57E
_0801A558:
	.4byte gUnknown_0807921C
_0801A55C:
	.4byte gUnknown_08078F4C
_0801A560:
	.4byte 0x0300007C
_0801A564:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A59E
	cmp r6, #5
	bhi _0801A57E
_0801A56E:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r8
	asr r1, r5, #24
	bl sub_080185EC
	b _0801A58C
_0801A57E:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r8
	asr r1, r5, #24
	bl sub_08018418
_0801A58C:
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r9
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	b _0801A5E2
_0801A59E:
	cmp r6, #5
	bhi _0801A5C4
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	mov r2, r8
	add r0, r4, r2
	mov r1, #0
	bl sub_080185EC
	add r4, r4, r9
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	mov r2, #14
	bl sub_080187C0
	b _0801A5E2
_0801A5C4:
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	mov r3, r8
	add r0, r4, r3
	asr r1, r5, #24
	bl sub_08018418
	add r4, r4, r9
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080186B0
_0801A5E2:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #6
	bls _0801A526
_0801A5EC:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A2B8

	THUMB_FUNC_START sub_0801A5FC
sub_0801A5FC: @ 0x0801A5FC
	push {r4,lr}
	sub sp, sp, #4
	ldr r0, _0801A640  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bgt _0801A690
	mov r4, #0
_0801A60E:
	cmp r4, #7
	bhi _0801A648
	ldr r0, _0801A640  @ =gLevelSelectWorldCursor
	ldrb r1, [r0]
	mov r0, #0
	add r2, r4, #0
	mov r3, sp
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801A648
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801A644  @ =gUnknown_08078D24
	add r0, r0, r1
	mov r1, #11
	bl sub_08018418
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	b _0801A60E
	.byte 0x00
	.byte 0x00
_0801A640:
	.4byte gLevelSelectWorldCursor
_0801A644:
	.4byte gUnknown_08078D24
_0801A648:
	cmp r4, #3
	bls _0801A690
	cmp r4, #7
	bne _0801A680
	ldr r0, _0801A674  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldr r1, _0801A678  @ =gLevelSelectWorldCursor
	ldrb r1, [r1]
	mov r3, sp
	add r3, r3, #1
	mov r2, #7
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801A690
	ldr r0, _0801A67C  @ =gUnknown_08078D24
	add r0, r0, #168
	mov r1, #11
	bl sub_08018418
	b _0801A690
_0801A674:
	.4byte gUnknown_03000B80
_0801A678:
	.4byte gLevelSelectWorldCursor
_0801A67C:
	.4byte gUnknown_08078D24
_0801A680:
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801A698  @ =gUnknown_08078D24
	add r0, r0, r1
	mov r1, #11
	bl sub_08018418
_0801A690:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0801A698:
	.4byte gUnknown_08078D24
	THUMB_FUNC_END sub_0801A5FC

	THUMB_FUNC_START sub_0801A69C
sub_0801A69C: @ 0x0801A69C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, _0801A798  @ =0x040000D4
	ldr r0, _0801A79C  @ =0x0300008B
	mov r9, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #10
	ldr r1, _0801A7A0  @ =gUnknown_085E3820
	add r0, r0, r1
	str r0, [r2]
	ldr r1, _0801A7A4  @ =gUnknown_0300192C
	mov r12, r1
	ldrh r0, [r1]
	ldr r1, _0801A7A8  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0801A7AC  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801A7B0  @ =gUnknown_085E3818
	str r0, [r2]
	ldr r7, _0801A7B4  @ =0x03000094
	mov r10, r7
	mov r0, r10
	ldr r4, [r0]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _0801A7B8  @ =gOamData
	add r0, r0, r5
	str r0, [r2, #4]
	ldr r0, _0801A7BC  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r6, _0801A7C0  @ =gUnknown_03001930
	lsr r1, r1, #22
	ldrh r7, [r6]
	add r1, r1, r7
	ldr r7, _0801A7C4  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _0801A7C8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r5
	ldr r0, _0801A7CC  @ =gUnknown_085E3590
	mov r8, r0
	mov r2, r9
	mov r1, #0
	ldrsb r1, [r2, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	mov r1, #3
	ldrsb r1, [r0, r1]
	add r1, r1, #172
	ldr r7, _0801A7D0  @ =0x000001FF
	add r0, r7, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0801A7D4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r0, r9
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	ldrb r0, [r0, #3]
	add r0, r0, #48
	strb r0, [r2]
	mov r1, r10
	ldr r0, [r1]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #32
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	mov r7, r12
	ldrh r7, [r7]
	add r0, r0, r7
	mov r1, r12
	strh r0, [r1]
	mov r2, r10
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801A798:
	.4byte 0x040000D4
_0801A79C:
	.4byte 0x0300008B
_0801A7A0:
	.4byte gUnknown_085E3820
_0801A7A4:
	.4byte gUnknown_0300192C
_0801A7A8:
	.4byte 0x06010000
_0801A7AC:
	.4byte 0x84000100
_0801A7B0:
	.4byte gUnknown_085E3818
_0801A7B4:
	.4byte 0x03000094
_0801A7B8:
	.4byte gOamData
_0801A7BC:
	.4byte 0x84000002
_0801A7C0:
	.4byte gUnknown_03001930
_0801A7C4:
	.4byte 0x000003FF
_0801A7C8:
	.4byte 0xFFFFFC00
_0801A7CC:
	.4byte gUnknown_085E3590
_0801A7D0:
	.4byte 0x000001FF
_0801A7D4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0801A69C

	THUMB_FUNC_START sub_0801A7D8
sub_0801A7D8: @ 0x0801A7D8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r7, _0801ABBC  @ =0x040000D4
	ldr r0, _0801ABC0  @ =gUnknown_085CD848
	str r0, [r7]
	ldr r3, _0801ABC4  @ =gUnknown_0300192C
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r2, _0801ABCC  @ =0x84000200
	str r2, [r7, #8]
	ldr r0, [r7, #8]
	ldr r4, _0801ABD0  @ =0x03000094
	ldr r6, [r4]
	ldr r0, _0801ABD4  @ =gUnknown_03001930
	mov r10, r0
	ldrh r1, [r0]
	mov r12, r1
	strh r1, [r6, #16]
	mov r4, r12
	add r4, r4, #64
	strh r4, [r0]
	ldrh r2, [r3]
	mov r9, r2
	mov r0, #128
	lsl r0, r0, #4
	mov r8, r0
	mov r2, r9
	add r2, r2, r8
	strh r2, [r3]
	ldr r0, _0801ABD8  @ =gUnknown_085CE074
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r0, _0801ABCC  @ =0x84000200
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #18]
	add r4, r4, #64
	mov r1, r10
	strh r4, [r1]
	add r2, r2, r8
	strh r2, [r3]
	ldr r5, _0801ABDC  @ =gUnknown_085C7A78
	ldr r0, _0801ABE0  @ =0x0300008A
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801ABE4  @ =gUnknown_085C7D08
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r0, _0801ABCC  @ =0x84000200
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #20]
	add r4, r4, #64
	mov r1, r10
	strh r4, [r1]
	add r2, r2, r8
	strh r2, [r3]
	ldr r2, _0801ABE8  @ =gUnknown_085E2870
	ldr r5, _0801ABEC  @ =0x03000088
	mov r1, #0
	ldrsb r1, [r5, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	ldr r1, _0801ABF0  @ =gUnknown_085E2B00
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r2, _0801ABC8  @ =0x06010000
	add r0, r0, r2
	str r0, [r7, #4]
	ldr r0, _0801ABF4  @ =0x84000040
	mov r8, r0
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #8]
	mov r4, r12
	add r4, r4, #200
	mov r1, r10
	strh r4, [r1]
	mov r0, #200
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r2, _0801ABF8  @ =gUnknown_085E2F00
	mov r1, #0
	ldrsb r1, [r5, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	ldr r1, _0801ABFC  @ =gUnknown_085E3190
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r2, _0801ABC8  @ =0x06010000
	add r0, r0, r2
	str r0, [r7, #4]
	mov r0, r8
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #10]
	add r4, r4, #8
	mov r1, r10
	strh r4, [r1]
	mov r0, #208
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r2, _0801AC00  @ =gUnknown_085E90D0
	mov r1, #0
	ldrsb r1, [r5, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0801AC04  @ =gUnknown_085E9360
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r2, _0801ABC8  @ =0x06010000
	add r0, r0, r2
	str r0, [r7, #4]
	ldr r0, _0801AC08  @ =0x84000100
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #12]
	mov r1, r12
	add r1, r1, #240
	mov r4, r10
	strh r1, [r4]
	mov r0, #240
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r0, _0801AC0C  @ =gUnknown_085C2588
	str r0, [r7]
	ldrh r0, [r3]
	add r0, r0, r2
	str r0, [r7, #4]
	ldr r4, _0801AC10  @ =0x84000020
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	strh r1, [r6, #22]
	add r1, r1, #4
	mov r0, r10
	strh r1, [r0]
	mov r0, #244
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r0, _0801AC14  @ =gUnknown_085C2634
	str r0, [r7]
	ldrh r0, [r3]
	add r0, r0, r2
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	strh r1, [r6, #24]
	mov r5, r12
	add r5, r5, #248
	mov r1, r10
	strh r5, [r1]
	mov r0, #248
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r2, _0801AC18  @ =gUnknown_085E1F2C
	ldr r0, _0801AC1C  @ =0x03000085
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0801AC20  @ =gUnknown_085E200C
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r2, _0801ABC8  @ =0x06010000
	add r0, r0, r2
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	strh r5, [r6, #26]
	mov r1, r12
	add r1, r1, #252
	mov r0, r10
	strh r1, [r0]
	mov r0, #252
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r0, _0801AC24  @ =gUnknown_085E1C2C
	str r0, [r7]
	ldrh r0, [r3]
	add r0, r0, r2
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	strh r1, [r6, #28]
	mov r5, #128
	lsl r5, r5, #1
	add r5, r5, r12
	mov r1, r10
	strh r5, [r1]
	mov r2, #128
	lsl r2, r2, #6
	add r9, r9, r2
	mov r4, r9
	strh r4, [r3]
	ldr r0, _0801AC28  @ =0x03000086
	mov r12, r0
	ldrb r1, [r0]
	ldr r2, _0801AC2C  @ =gUnknown_080793B4
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r4, #132
	lsl r4, r4, #24
	mov r8, r4
	orr r0, r0, r4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r5, [r6, #30]
	ldrh r5, [r2, #6]
	mov r0, r10
	ldrh r0, [r0]
	add r5, r5, r0
	mov r1, r10
	strh r5, [r1]
	ldrh r0, [r2, #8]
	ldrh r2, [r3]
	add r0, r0, r2
	strh r0, [r3]
	ldr r0, _0801AC30  @ =0x03000087
	ldrb r1, [r0]
	ldr r2, _0801AC34  @ =gUnknown_08079414
	ldr r4, _0801ABD0  @ =0x03000094
	ldr r4, [r4]
	mov r9, r4
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r4, r8
	orr r0, r0, r4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r0, r9
	strh r5, [r0, #32]
	ldrh r5, [r2, #6]
	mov r1, r10
	ldrh r1, [r1]
	add r5, r5, r1
	mov r4, r10
	strh r5, [r4]
	ldrh r0, [r2, #8]
	ldrh r1, [r3]
	add r0, r0, r1
	strh r0, [r3]
	mov r2, r12
	ldrb r1, [r2]
	ldr r2, _0801AC38  @ =gUnknown_08079474
	ldr r4, _0801ABD0  @ =0x03000094
	ldr r4, [r4]
	mov r9, r4
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r4, r8
	orr r0, r0, r4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r0, r9
	strh r5, [r0, #34]
	ldrh r4, [r2, #6]
	mov r1, r10
	ldrh r1, [r1]
	add r4, r4, r1
	mov r0, r10
	strh r4, [r0]
	ldrh r0, [r2, #8]
	ldrh r1, [r3]
	add r0, r0, r1
	strh r0, [r3]
	ldr r2, _0801AC3C  @ =gUnknown_08079384
	ldr r0, _0801ABD0  @ =0x03000094
	ldr r5, [r0]
	ldr r0, [r2, #12]
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, r8
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r5, #36]
	ldrh r4, [r2, #6]
	mov r0, r10
	ldrh r0, [r0]
	add r4, r4, r0
	mov r1, r10
	strh r4, [r1]
	ldrh r0, [r2, #8]
	ldrh r2, [r3]
	add r0, r0, r2
	strh r0, [r3]
	ldr r2, _0801AC40  @ =gUnknown_080793E4
	ldr r0, _0801ABD0  @ =0x03000094
	ldr r5, [r0]
	ldr r0, [r2, #12]
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, r8
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r5, #38]
	ldrh r4, [r2, #6]
	mov r0, r10
	ldrh r0, [r0]
	add r4, r4, r0
	mov r1, r10
	strh r4, [r1]
	ldrh r0, [r2, #8]
	ldrh r2, [r3]
	add r0, r0, r2
	strh r0, [r3]
	ldr r2, _0801AC44  @ =gUnknown_08079444
	ldr r0, _0801ABD0  @ =0x03000094
	ldr r5, [r0]
	ldr r0, [r2, #12]
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, r8
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r5, #40]
	ldrh r0, [r2, #6]
	mov r4, r10
	ldrh r4, [r4]
	add r0, r0, r4
	mov r1, r10
	strh r0, [r1]
	ldrh r0, [r2, #8]
	ldrh r2, [r3]
	add r0, r0, r2
	strh r0, [r3]
	ldr r0, _0801AC48  @ =gLevelSelectMode
	ldrb r1, [r0]
	sub r0, r1, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r3
	cmp r0, #1
	bls _0801AB7A
	cmp r1, #5
	beq _0801AB7A
	b _0801ACB4
_0801AB7A:
	mov r1, #0
	ldr r0, _0801AC4C  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0801AB8A
	mov r1, #1
_0801AB8A:
	str r1, [sp]
	mov r1, #0
	mov r8, r12
	mov r6, r10
_0801AB92:
	lsl r3, r1, #16
	asr r3, r3, #16
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r5, r3, #1
	add r2, r5, r3
	lsl r2, r2, #3
	ldr r4, _0801AC50  @ =gUnknown_08078C1C
	add r2, r2, r4
	ldr r4, _0801ABD0  @ =0x03000094
	ldr r0, [r4]
	add r5, r5, r0
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	b _0801AC54
	.byte 0x00
	.byte 0x00
_0801ABBC:
	.4byte 0x040000D4
_0801ABC0:
	.4byte gUnknown_085CD848
_0801ABC4:
	.4byte gUnknown_0300192C
_0801ABC8:
	.4byte 0x06010000
_0801ABCC:
	.4byte 0x84000200
_0801ABD0:
	.4byte 0x03000094
_0801ABD4:
	.4byte gUnknown_03001930
_0801ABD8:
	.4byte gUnknown_085CE074
_0801ABDC:
	.4byte gUnknown_085C7A78
_0801ABE0:
	.4byte 0x0300008A
_0801ABE4:
	.4byte gUnknown_085C7D08
_0801ABE8:
	.4byte gUnknown_085E2870
_0801ABEC:
	.4byte 0x03000088
_0801ABF0:
	.4byte gUnknown_085E2B00
_0801ABF4:
	.4byte 0x84000040
_0801ABF8:
	.4byte gUnknown_085E2F00
_0801ABFC:
	.4byte gUnknown_085E3190
_0801AC00:
	.4byte gUnknown_085E90D0
_0801AC04:
	.4byte gUnknown_085E9360
_0801AC08:
	.4byte 0x84000100
_0801AC0C:
	.4byte gUnknown_085C2588
_0801AC10:
	.4byte 0x84000020
_0801AC14:
	.4byte gUnknown_085C2634
_0801AC18:
	.4byte gUnknown_085E1F2C
_0801AC1C:
	.4byte 0x03000085
_0801AC20:
	.4byte gUnknown_085E200C
_0801AC24:
	.4byte gUnknown_085E1C2C
_0801AC28:
	.4byte 0x03000086
_0801AC2C:
	.4byte gUnknown_080793B4
_0801AC30:
	.4byte 0x03000087
_0801AC34:
	.4byte gUnknown_08079414
_0801AC38:
	.4byte gUnknown_08079474
_0801AC3C:
	.4byte gUnknown_08079384
_0801AC40:
	.4byte gUnknown_080793E4
_0801AC44:
	.4byte gUnknown_08079444
_0801AC48:
	.4byte gLevelSelectMode
_0801AC4C:
	.4byte gLevelSelectWorldCursor
_0801AC50:
	.4byte gUnknown_08078C1C
_0801AC54:
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	mov r1, r8
	ldrh r0, [r1]
	ldr r4, _0801ACAC  @ =0x06010000
	add r0, r0, r4
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	mov r9, r1
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r0, [r6]
	strh r0, [r5, #42]
	ldrh r0, [r2, #6]
	ldrh r4, [r6]
	add r0, r0, r4
	strh r0, [r6]
	ldrh r0, [r2, #8]
	mov r1, r8
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r8
	strh r0, [r2]
	add r3, r3, #1
	lsl r3, r3, #16
	lsr r1, r3, #16
	asr r3, r3, #16
	cmp r3, #6
	bgt _0801AC9E
	b _0801AB92
_0801AC9E:
	ldr r1, [sp]
	lsl r2, r1, #1
	add r2, r2, r1
	lsl r2, r2, #3
	ldr r3, _0801ACB0  @ =gUnknown_08078CF4
	b _0801AD44
	.byte 0x00
	.byte 0x00
_0801ACAC:
	.4byte 0x06010000
_0801ACB0:
	.4byte gUnknown_08078CF4
_0801ACB4:
	mov r1, #0
	ldr r0, _0801ADA4  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bne _0801ACC4
	mov r1, #1
_0801ACC4:
	str r1, [sp, #4]
	mov r1, #0
	mov r8, r12
	mov r6, r10
_0801ACCC:
	lsl r3, r1, #16
	asr r3, r3, #16
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r5, r3, #1
	add r2, r5, r3
	lsl r2, r2, #3
	ldr r4, _0801ADA8  @ =gUnknown_08078B74
	add r2, r2, r4
	ldr r4, _0801ADAC  @ =0x03000094
	ldr r0, [r4]
	add r5, r5, r0
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	mov r1, r8
	ldrh r0, [r1]
	ldr r4, _0801ADB0  @ =0x06010000
	add r0, r0, r4
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	mov r9, r1
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r0, [r6]
	strh r0, [r5, #42]
	ldrh r0, [r2, #6]
	ldrh r4, [r6]
	add r0, r0, r4
	strh r0, [r6]
	ldrh r0, [r2, #8]
	mov r1, r8
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r8
	strh r0, [r2]
	add r3, r3, #1
	lsl r3, r3, #16
	lsr r1, r3, #16
	asr r3, r3, #16
	cmp r3, #6
	ble _0801ACCC
	ldr r1, [sp, #4]
	lsl r2, r1, #1
	add r2, r2, r1
	lsl r2, r2, #3
	ldr r3, _0801ADB4  @ =gUnknown_08078CC4
_0801AD44:
	add r2, r2, r3
	ldr r4, _0801ADAC  @ =0x03000094
	ldr r5, [r4]
	ldr r3, _0801ADB8  @ =0x040000D4
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r3]
	mov r1, r12
	ldrh r0, [r1]
	ldr r4, _0801ADB0  @ =0x06010000
	add r0, r0, r4
	str r0, [r3, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, r9
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r3, r10
	ldrh r0, [r3]
	strh r0, [r5, #14]
	ldrh r0, [r2, #6]
	ldrh r4, [r3]
	add r0, r0, r4
	strh r0, [r3]
	ldrh r0, [r2, #8]
	mov r1, r12
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r12
	strh r0, [r2]
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801ADA4:
	.4byte gLevelSelectWorldCursor
_0801ADA8:
	.4byte gUnknown_08078B74
_0801ADAC:
	.4byte 0x03000094
_0801ADB0:
	.4byte 0x06010000
_0801ADB4:
	.4byte gUnknown_08078CC4
_0801ADB8:
	.4byte 0x040000D4
	THUMB_FUNC_END sub_0801A7D8

	THUMB_FUNC_START level_select_loop
level_select_loop: @ 0x0801ADBC
	push {r4,r5,lr}
	sub sp, sp, #8
	mov r0, #160
	str r0, [sp]
	ldr r1, _0801AE08  @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0801AE0C  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _0801AE10  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801AE14  @ =0x03000094
	ldr r3, [r0]
	ldr r2, _0801AE18  @ =gUnknown_03001930
	ldr r0, _0801AE1C  @ =gUnknown_0300192C
	mov r1, #0
	strh r1, [r0]
	strh r1, [r2]
	mov r0, #0
	strh r0, [r3, #2]
	ldr r0, _0801AE20  @ =0x03000084
	strb r1, [r0]
	ldr r0, _0801AE24  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801AE30
	ldr r1, _0801AE28  @ =gLevelSelectLevelCursor
	ldr r0, _0801AE2C  @ =gLevelSelectLevel
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, #1
	asr r0, r0, #1
	strb r0, [r1]
	b _0801AE38
_0801AE08:
	.4byte 0x040000D4
_0801AE0C:
	.4byte gOamData
_0801AE10:
	.4byte 0x85000100
_0801AE14:
	.4byte 0x03000094
_0801AE18:
	.4byte gUnknown_03001930
_0801AE1C:
	.4byte gUnknown_0300192C
_0801AE20:
	.4byte 0x03000084
_0801AE24:
	.4byte gUnknown_03000B80
_0801AE28:
	.4byte gLevelSelectLevelCursor
_0801AE2C:
	.4byte gLevelSelectLevel
_0801AE30:
	ldr r0, _0801AE80  @ =gLevelSelectLevelCursor
	ldr r1, _0801AE84  @ =gLevelSelectLevel
	ldrb r1, [r1]
	strb r1, [r0]
_0801AE38:
	bl sub_0801A7D8
	bl sub_08017FB8
	bl sub_080180BC
	ldr r0, _0801AE88  @ =gLevelSelectMode
	ldrb r1, [r0]
	sub r0, r1, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0801AE56
	cmp r1, #5
	bne _0801AE94
_0801AE56:
	ldr r4, _0801AE80  @ =gLevelSelectLevelCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0801AE8C  @ =gLevelSelectWorld
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08019AF4
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0801AE90  @ =gLevelSelectWorldCursor
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08017600
	b _0801AEB6
	.byte 0x00
	.byte 0x00
_0801AE80:
	.4byte gLevelSelectLevelCursor
_0801AE84:
	.4byte gLevelSelectLevel
_0801AE88:
	.4byte gLevelSelectMode
_0801AE8C:
	.4byte gLevelSelectWorld
_0801AE90:
	.4byte gLevelSelectWorldCursor
_0801AE94:
	ldr r4, _0801AEE0  @ =gLevelSelectLevelCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0801AEE4  @ =gLevelSelectWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08019630
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0801AEE8  @ =gLevelSelectWorldCursor
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080171C8
_0801AEB6:
	ldr r0, _0801AEEC  @ =gLevelSelectMode
	ldrb r2, [r0]
	add r1, r0, #0
	cmp r2, #1
	bhi _0801AEF0
	ldr r1, _0801AEE4  @ =gLevelSelectWorld
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #6
	beq _0801AF1A
	ldr r0, _0801AEE0  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08019F8C
	b _0801AF1A
	.byte 0x00
	.byte 0x00
_0801AEE0:
	.4byte gLevelSelectLevelCursor
_0801AEE4:
	.4byte gLevelSelectWorld
_0801AEE8:
	.4byte gLevelSelectWorldCursor
_0801AEEC:
	.4byte gLevelSelectMode
_0801AEF0:
	sub r0, r2, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0801AF28
	ldr r0, _0801AF90  @ =gLevelSelectWorld
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #7
	beq _0801AF1A
	ldr r0, _0801AF94  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_0801A2B8
_0801AF1A:
	ldr r1, _0801AF98  @ =gLevelSelectMode
	ldrb r0, [r1]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0801AF32
_0801AF28:
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	beq _0801AF32
	b _0801B068
_0801AF32:
	bl sub_08017944
	ldr r0, _0801AF94  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _0801AF90  @ =gLevelSelectWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08017ABC
	ldr r0, _0801AF9C  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bgt _0801AFBE
	mov r4, #0
_0801AF58:
	cmp r4, #6
	bhi _0801AFA4
	ldr r0, _0801AF9C  @ =gLevelSelectWorldCursor
	ldrb r1, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #1
	add r2, r4, #0
	add r3, sp, #4
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801AFA4
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801AFA0  @ =gUnknown_08078DE4
	add r0, r0, r1
	mov r1, #11
	bl sub_08018418
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	b _0801AF58
	.byte 0x00
	.byte 0x00
_0801AF90:
	.4byte gLevelSelectWorld
_0801AF94:
	.4byte gLevelSelectLevelCursor
_0801AF98:
	.4byte gLevelSelectMode
_0801AF9C:
	.4byte gLevelSelectWorldCursor
_0801AFA0:
	.4byte gUnknown_08078DE4
_0801AFA4:
	sub r0, r4, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	bhi _0801AFBE
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801B04C  @ =gUnknown_08078DE4
	add r0, r0, r1
	mov r1, #11
	bl sub_08018418
_0801AFBE:
	mov r1, #1
_0801AFC0:
	lsl r0, r1, #24
	asr r4, r0, #24
	ldr r1, _0801B050  @ =gLevelSelectWorldCursor
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	sub r1, r1, #1
	add r5, r0, #0
	cmp r4, r1
	beq _0801AFF6
	sub r1, r4, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #1
	bl sub_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801AFF6
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801B054  @ =gUnknown_08078C1C
	add r0, r0, r1
	lsr r1, r5, #24
	bl sub_080188E8
_0801AFF6:
	mov r1, #128
	lsl r1, r1, #17
	add r0, r5, r1
	lsr r1, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	ble _0801AFC0
	ldr r4, _0801B050  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0801B014
	ldr r0, _0801B058  @ =gUnknown_080794A4
	bl sub_08018998
_0801B014:
	ldrb r1, [r4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #5
	bgt _0801B038
	ldr r0, _0801B05C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801B038
	ldr r0, _0801B060  @ =gUnknown_080794BC
	bl sub_08018A3C
_0801B038:
	ldr r0, _0801B064  @ =gLevelSelectWorld
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bgt _0801B11A
	bl sub_0801A69C
	b _0801B11A
	.byte 0x00
	.byte 0x00
_0801B04C:
	.4byte gUnknown_08078DE4
_0801B050:
	.4byte gLevelSelectWorldCursor
_0801B054:
	.4byte gUnknown_08078C1C
_0801B058:
	.4byte gUnknown_080794A4
_0801B05C:
	.4byte gUnknown_03000B80
_0801B060:
	.4byte gUnknown_080794BC
_0801B064:
	.4byte gLevelSelectWorld
_0801B068:
	bl sub_080179F8
	ldr r0, _0801B0F8  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _0801B0FC  @ =gLevelSelectWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080174FC
	bl sub_0801A5FC
	mov r1, #1
_0801B086:
	ldr r0, _0801B100  @ =gLevelSelectWorldCursor
	lsl r1, r1, #24
	asr r4, r1, #24
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r5, r1, #0
	cmp r4, r0
	beq _0801B0BA
	sub r1, r4, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #0
	bl sub_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801B0BA
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801B104  @ =gUnknown_08078B74
	add r0, r0, r1
	lsr r1, r5, #24
	bl sub_080188E8
_0801B0BA:
	mov r1, #128
	lsl r1, r1, #17
	add r0, r5, r1
	lsr r1, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	ble _0801B086
	ldr r4, _0801B100  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0801B0D8
	ldr r0, _0801B108  @ =gUnknown_080794A4
	bl sub_08018998
_0801B0D8:
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bgt _0801B114
	ldr r0, _0801B10C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldrb r1, [r4]
	bl sub_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801B11A
	ldr r0, _0801B110  @ =gUnknown_080794BC
	bl sub_08018A3C
	b _0801B11A
_0801B0F8:
	.4byte gLevelSelectLevelCursor
_0801B0FC:
	.4byte gLevelSelectWorld
_0801B100:
	.4byte gLevelSelectWorldCursor
_0801B104:
	.4byte gUnknown_08078B74
_0801B108:
	.4byte gUnknown_080794A4
_0801B10C:
	.4byte gUnknown_03000B80
_0801B110:
	.4byte gUnknown_080794BC
_0801B114:
	ldr r0, _0801B158  @ =gUnknown_080794BC
	bl sub_08018A3C
_0801B11A:
	bl sub_080181BC
	bl sub_0801B174
	ldr r2, _0801B15C  @ =0x040000D4
	ldr r0, _0801B160  @ =gOamData
	str r0, [r2]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r2, #4]
	ldr r0, _0801B164  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801B168  @ =0x03000074
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0801B16C  @ =gLevelSelectData
	ldr r0, [r0, #64]
	str r0, [r2, #4]
	ldr r0, _0801B170  @ =0x03000078
	ldrh r0, [r0]
	lsr r0, r0, #1
	mov r1, #128
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_0801B158:
	.4byte gUnknown_080794BC
_0801B15C:
	.4byte 0x040000D4
_0801B160:
	.4byte gOamData
_0801B164:
	.4byte 0x84000100
_0801B168:
	.4byte 0x03000074
_0801B16C:
	.4byte gLevelSelectData
_0801B170:
	.4byte 0x03000078
	THUMB_FUNC_END level_select_loop

	THUMB_FUNC_START sub_0801B174
sub_0801B174: @ 0x0801B174
	push {r4-r7,lr}
	ldr r0, _0801B1C0  @ =0x0300008A
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, _0801B1C4  @ =gUnknown_085CD18C
	add r4, r0, r1
	mov r7, #0
	ldr r5, _0801B1C8  @ =gOamData
	ldr r1, _0801B1CC  @ =0x03000084
	mov r0, #0
	ldrsb r0, [r1, r0]
	mov r12, r5
	cmp r0, #0
	beq _0801B218
	lsl r0, r0, #16
	lsr r6, r0, #16
	lsl r0, r6, #3
	add r2, r0, r5
	ldrb r0, [r2, #3]
	mov r3, #15
	neg r3, r3
	and r3, r3, r0
	strb r3, [r2, #3]
	ldrb r0, [r2, #1]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2, #1]
	lsl r0, r3, #27
	cmp r0, #0
	blt _0801B1D0
	ldrh r0, [r4, #26]
	strh r0, [r5, #6]
	ldrh r0, [r4, #28]
	b _0801B1E2
	.byte 0x00
	.byte 0x00
_0801B1C0:
	.4byte 0x0300008A
_0801B1C4:
	.4byte gUnknown_085CD18C
_0801B1C8:
	.4byte gOamData
_0801B1CC:
	.4byte 0x03000084
_0801B1D0:
	mov r0, #17
	neg r0, r0
	and r0, r0, r3
	strb r0, [r2, #3]
	ldrh r0, [r4, #26]
	neg r0, r0
	strh r0, [r5, #6]
	ldrh r0, [r4, #28]
	neg r0, r0
_0801B1E2:
	strh r0, [r5, #14]
	lsl r0, r6, #3
	mov r1, r12
	add r2, r0, r1
	ldrb r1, [r2, #3]
	lsl r0, r1, #26
	cmp r0, #0
	blt _0801B200
	lsl r0, r7, #1
	add r0, r0, r5
	ldrh r1, [r4, #30]
	strh r1, [r0, #22]
	ldrh r1, [r4, #32]
	strh r1, [r0, #30]
	b _0801B218
_0801B200:
	mov r0, #33
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2, #3]
	lsl r1, r7, #1
	add r1, r1, r5
	ldrh r0, [r4, #30]
	neg r0, r0
	strh r0, [r1, #22]
	ldrh r0, [r4, #32]
	neg r0, r0
	strh r0, [r1, #30]
_0801B218:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B174

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START level_select_end
level_select_end: @ 0x0801B220
	bx lr
	THUMB_FUNC_END level_select_end

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801B224
sub_0801B224: @ 0x0801B224
	push {lr}
	ldr r0, _0801B23C  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #136
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0801B240
	bl sub_08016260
	b _0801B252
	.byte 0x00
	.byte 0x00
_0801B23C:
	.4byte gUnknown_030012E8
_0801B240:
	mov r0, #136
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0801B24E
	mov r0, #0
	b _0801B254
_0801B24E:
	bl sub_080161AC
_0801B252:
	mov r0, #1
_0801B254:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801B224

	THUMB_FUNC_START sub_0801B258
sub_0801B258: @ 0x0801B258
	push {lr}
	ldr r1, _0801B270  @ =gUnknown_030012E8
	ldrh r2, [r1]
	mov r1, #136
	lsl r1, r1, #1
	and r1, r1, r2
	cmp r1, #0
	beq _0801B274
	bl sub_08016654
	mov r0, #1
	b _0801B284
_0801B270:
	.4byte gUnknown_030012E8
_0801B274:
	mov r1, #136
	lsl r1, r1, #2
	and r1, r1, r2
	cmp r1, #0
	beq _0801B284
	bl sub_080163F4
	mov r0, #1
_0801B284:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801B258

	THUMB_FUNC_START sub_0801B288
sub_0801B288: @ 0x0801B288
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r1, #0
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldrb r0, [r5]
	sub r0, r0, #1
	strb r0, [r5]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _0801B2C4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r1, #0
	ldrsb r1, [r4, r1]
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r1, r0
	blt _0801B2B4
	mov r0, #0
	strb r0, [r4]
_0801B2B4:
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1, #1]
	strb r0, [r5]
_0801B2C4:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B288

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801B2CC
sub_0801B2CC: @ 0x0801B2CC
	push {r4,lr}
	mov r1, #240
	lsl r1, r1, #4
	and r1, r1, r0
	lsr r3, r1, #8
	mov r1, #240
	lsl r1, r1, #8
	and r1, r1, r0
	lsr r2, r1, #12
	cmp r3, #15
	bne _0801B2EA
	cmp r2, #0
	bne _0801B2EA
	mov r3, #16
	b _0801B2F4
_0801B2EA:
	cmp r3, #0
	bne _0801B2F4
	cmp r2, #15
	bne _0801B2F4
	mov r2, #16
_0801B2F4:
	ldr r1, _0801B30C  @ =0x04000050
	mov r4, #253
	lsl r4, r4, #6
	add r0, r4, #0
	strh r0, [r1]
	add r1, r1, #2
	lsl r0, r3, #8
	orr r2, r2, r0
	strh r2, [r1]
	pop {r4}
	pop {r0}
	bx r0
_0801B30C:
	.4byte 0x04000050
	THUMB_FUNC_END sub_0801B2CC

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
	ldr r7, _0801B360  @ =0x03000D3C
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
	.4byte 0x03000D3C
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

	THUMB_FUNC_START sub_0801B3C0
sub_0801B3C0: @ 0x0801B3C0
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
	THUMB_FUNC_END sub_0801B3C0

	THUMB_FUNC_START sub_0801B3DC
sub_0801B3DC: @ 0x0801B3DC
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
	THUMB_FUNC_END sub_0801B3DC

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
	bl sub_08034854
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

	THUMB_FUNC_START sub_0801B4BC
sub_0801B4BC: @ 0x0801B4BC
	push {r4-r6,lr}
	mov r4, #0
	ldr r5, _0801B500  @ =0x0300009C
	ldr r0, [r5]
	cmp r4, r0
	bge _0801B4FA
	ldr r0, _0801B504  @ =0x03000098
	ldr r3, _0801B508  @ =0x040000D4
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
	.4byte 0x040000D4
	THUMB_FUNC_END sub_0801B4BC

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
