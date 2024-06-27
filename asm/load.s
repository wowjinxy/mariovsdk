	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_08029FD0
sub_08029FD0: @ 0x08029FD0
	push {r4-r7,lr}
	sub sp, sp, #8
	bl IdentifyFlash
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802A090
	ldr r0, _0802A010  @ =0x03000124
	mov r1, #1
	str r1, [r0]
	ldr r1, _0802A014  @ =gUnknown_08076D70
	mov r0, #2
	bl SetFlashTimerIntr
	mov r6, #0
	mov r5, #0
	mov r4, sp
	ldr r7, _0802A018  @ =0x0000FFFC
_08029FF4:
	ldr r0, _0802A01C  @ =0x0300012A
	strh r5, [r0]
	bl sub_0802A0A8
	cmp r0, #0
	beq _0802A024
	ldr r0, _0802A020  @ =0x03000128
	ldrh r0, [r0]
	str r0, [r4]
	cmp r0, r7
	bls _0802A02A
	mov r6, #1
	b _0802A02A
	.byte 0x00
	.byte 0x00
_0802A010:
	.4byte 0x03000124
_0802A014:
	.4byte gUnknown_08076D70
_0802A018:
	.4byte 0x0000FFFC
_0802A01C:
	.4byte 0x0300012A
_0802A020:
	.4byte 0x03000128
_0802A024:
	mov r0, #1
	neg r0, r0
	str r0, [r4]
_0802A02A:
	add r4, r4, #4
	add r5, r5, #1
	cmp r5, #1
	bls _08029FF4
	ldr r0, _0802A080  @ =0x03000124
	mov r12, r0
	ldr r1, _0802A084  @ =0x0300012A
	ldr r7, _0802A088  @ =0x03000128
	cmp r6, #0
	beq _0802A058
	mov r5, #0
	mov r3, #128
	lsl r3, r3, #9
	mov r2, sp
_0802A046:
	ldr r0, [r2]
	cmp r0, #2
	bhi _0802A050
	add r0, r0, r3
	str r0, [r2]
_0802A050:
	add r2, r2, #4
	add r5, r5, #1
	cmp r5, #1
	bls _0802A046
_0802A058:
	mov r3, #0
	ldr r4, _0802A08C  @ =0x0000FFFF
	mov r5, #0
	mov r6, #1
	neg r6, r6
	mov r2, sp
_0802A064:
	ldr r0, [r2]
	cmp r0, r6
	beq _0802A072
	cmp r0, r3
	bcc _0802A072
	add r4, r5, #0
	add r3, r0, #0
_0802A072:
	add r2, r2, #4
	add r5, r5, #1
	cmp r5, #1
	bls _0802A064
	strh r3, [r7]
	strh r4, [r1]
	b _0802A098
_0802A080:
	.4byte 0x03000124
_0802A084:
	.4byte 0x0300012A
_0802A088:
	.4byte 0x03000128
_0802A08C:
	.4byte 0x0000FFFF
_0802A090:
	ldr r1, _0802A0A4  @ =0x03000124
	mov r0, #0
	str r0, [r1]
	mov r12, r1
_0802A098:
	mov r1, r12
	ldr r0, [r1]
	add sp, sp, #8
	pop {r4-r7}
	pop {r1}
	bx r1
_0802A0A4:
	.4byte 0x03000124
	THUMB_FUNC_END sub_08029FD0

	THUMB_FUNC_START sub_0802A0A8
sub_0802A0A8: @ 0x0802A0A8
	push {r4-r6,lr}
	ldr r5, _0802A134  @ =0x02032FF8
	ldr r0, _0802A138  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	beq _0802A15C
	ldr r2, _0802A13C  @ =0x0300012A
	ldrh r1, [r2]
	ldr r0, _0802A140  @ =0x0000FFFF
	cmp r1, r0
	beq _0802A15C
	ldrh r0, [r2]
	ldr r6, _0802A144  @ =0x02032000
	mov r4, #128
	lsl r4, r4, #5
	mov r1, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ReadFlash
	ldrb r0, [r5]
	cmp r0, #68
	bne _0802A15C
	ldrb r0, [r5, #1]
	cmp r0, #75
	bne _0802A15C
	ldr r0, _0802A148  @ =0x02032FFA
	ldrb r1, [r0]
	add r0, r0, #1
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	cmp r1, r4
	bne _0802A15C
	ldr r0, _0802A14C  @ =0x02032FFE
	ldrb r1, [r0]
	add r0, r0, #1
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r4, r1, #0
	orr r4, r4, r0
	mov r1, #0
	add r5, r6, #0
	mov r3, #0
	ldr r2, _0802A150  @ =0x00000FF7
_0802A102:
	add r0, r5, r3
	ldrb r0, [r0]
	add r0, r0, #1
	add r0, r3, r0
	add r0, r1, r0
	lsl r0, r0, #16
	lsr r1, r0, #16
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, r2
	bls _0802A102
	cmp r4, r1
	bne _0802A15C
	ldr r0, _0802A154  @ =0x02032FFC
	ldrb r1, [r0]
	add r0, r0, #1
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r0, _0802A158  @ =0x03000128
	strh r1, [r0]
	mov r0, #1
	b _0802A15E
	.byte 0x00
	.byte 0x00
_0802A134:
	.4byte 0x02032FF8
_0802A138:
	.4byte 0x03000124
_0802A13C:
	.4byte 0x0300012A
_0802A140:
	.4byte 0x0000FFFF
_0802A144:
	.4byte 0x02032000
_0802A148:
	.4byte 0x02032FFA
_0802A14C:
	.4byte 0x02032FFE
_0802A150:
	.4byte 0x00000FF7
_0802A154:
	.4byte 0x02032FFC
_0802A158:
	.4byte 0x03000128
_0802A15C:
	mov r0, #0
_0802A15E:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802A0A8

	THUMB_FUNC_START sub_0802A164
sub_0802A164: @ 0x0802A164
	push {r4-r6,lr}
	ldr r1, _0802A174  @ =0x02032FF8
	ldr r0, _0802A178  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	bne _0802A17C
	mov r0, #0
	b _0802A28A
_0802A174:
	.4byte 0x02032FF8
_0802A178:
	.4byte 0x03000124
_0802A17C:
	mov r0, #68
	strb r0, [r1]
	mov r0, #75
	strb r0, [r1, #1]
	ldr r3, _0802A19C  @ =0x0300012A
	ldrh r1, [r3]
	ldr r0, _0802A1A0  @ =0x0000FFFF
	cmp r1, r0
	bne _0802A1A8
	ldr r1, _0802A1A4  @ =0x03000128
	mov r0, #0
	strh r0, [r1]
	strh r0, [r3]
	add r2, r1, #0
	b _0802A1BC
	.byte 0x00
	.byte 0x00
_0802A19C:
	.4byte 0x0300012A
_0802A1A0:
	.4byte 0x0000FFFF
_0802A1A4:
	.4byte 0x03000128
_0802A1A8:
	ldr r2, _0802A208  @ =0x03000128
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	ldrh r1, [r3]
	add r1, r1, #1
	lsr r0, r1, #1
	lsl r0, r0, #1
	sub r1, r1, r0
	strh r1, [r3]
_0802A1BC:
	ldr r1, _0802A20C  @ =0x02032FFA
	mov r0, #0
	strb r0, [r1]
	add r1, r1, #1
	mov r0, #16
	strb r0, [r1]
	ldrh r0, [r2]
	add r1, r1, #1
	strb r0, [r1]
	add r1, r1, #1
	lsr r0, r0, #8
	strb r0, [r1]
	mov r2, #0
	ldr r4, _0802A210  @ =0x02032000
	mov r1, #0
	ldr r3, _0802A214  @ =0x00000FF7
_0802A1DC:
	add r0, r4, r1
	ldrb r0, [r0]
	add r0, r0, #1
	add r0, r1, r0
	add r0, r2, r0
	lsl r0, r0, #16
	lsr r2, r0, #16
	add r0, r1, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, r3
	bls _0802A1DC
	ldr r0, _0802A218  @ =0x02032FFE
	strb r2, [r0]
	ldr r1, _0802A21C  @ =0x02032FFF
	lsr r0, r2, #8
	strb r0, [r1]
	mov r4, #0
	ldr r6, _0802A220  @ =0x0300012A
	ldr r5, _0802A210  @ =0x02032000
	b _0802A22C
	.byte 0x00
	.byte 0x00
_0802A208:
	.4byte 0x03000128
_0802A20C:
	.4byte 0x02032FFA
_0802A210:
	.4byte 0x02032000
_0802A214:
	.4byte 0x00000FF7
_0802A218:
	.4byte 0x02032FFE
_0802A21C:
	.4byte 0x02032FFF
_0802A220:
	.4byte 0x0300012A
_0802A224:
	add r0, r4, #0
	add r4, r4, #1
	cmp r0, #1
	bhi _0802A288
_0802A22C:
	ldr r1, _0802A250  @ =0x03001F38
	ldrh r0, [r6]
	ldr r2, [r1]
	add r1, r5, #0
	bl _call_via_r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r0, _0802A254  @ =0x000080FF
	cmp r1, r0
	beq _0802A27E
	cmp r1, r0
	bgt _0802A258
	cmp r1, #0
	beq _0802A26C
	sub r0, r0, #251
	b _0802A260
	.byte 0x00
	.byte 0x00
_0802A250:
	.4byte 0x03001F38
_0802A254:
	.4byte 0x000080FF
_0802A258:
	ldr r0, _0802A268  @ =0x0000C001
	cmp r1, r0
	beq _0802A27E
	add r0, r0, #1
_0802A260:
	cmp r1, r0
	beq _0802A27E
	b _0802A282
	.byte 0x00
	.byte 0x00
_0802A268:
	.4byte 0x0000C001
_0802A26C:
	ldrh r0, [r6]
	add r1, r5, #0
	bl VerifyFlashSector
	mov r1, #0
	cmp r0, #0
	bne _0802A284
	mov r1, #1
	b _0802A288
_0802A27E:
	mov r1, #0
	b _0802A224
_0802A282:
	mov r1, #0
_0802A284:
	cmp r1, #0
	beq _0802A224
_0802A288:
	add r0, r1, #0
_0802A28A:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802A164

	THUMB_FUNC_START sub_0802A290
sub_0802A290: @ 0x0802A290
	push {r4-r7,lr}
	add r3, r0, #0
	add r4, r1, #0
	ldr r0, _0802A2C0  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	beq _0802A354
	ldr r1, _0802A2C4  @ =0x0300011C
	cmp r3, #0
	blt _0802A2AE
	ldr r0, _0802A2C8  @ =0x03000120
	str r3, [r0]
	ldr r0, _0802A2CC  @ =0x03000118
	str r4, [r0]
	str r2, [r1]
_0802A2AE:
	ldr r0, [r1]
	cmp r0, #0
	ble _0802A354
	mov r4, #0
	ldr r7, _0802A2D0  @ =0x03001F38
	ldr r6, _0802A2C8  @ =0x03000120
	ldr r5, _0802A2CC  @ =0x03000118
	b _0802A2DC
	.byte 0x00
	.byte 0x00
_0802A2C0:
	.4byte 0x03000124
_0802A2C4:
	.4byte 0x0300011C
_0802A2C8:
	.4byte 0x03000120
_0802A2CC:
	.4byte 0x03000118
_0802A2D0:
	.4byte 0x03001F38
_0802A2D4:
	add r0, r4, #0
	add r4, r4, #1
	cmp r0, #1
	bhi _0802A32E
_0802A2DC:
	ldrh r0, [r6]
	ldr r1, [r5]
	ldr r2, [r7]
	bl _call_via_r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r0, _0802A2FC  @ =0x000080FF
	cmp r1, r0
	beq _0802A324
	cmp r1, r0
	bgt _0802A300
	cmp r1, #0
	beq _0802A314
	sub r0, r0, #251
	b _0802A308
_0802A2FC:
	.4byte 0x000080FF
_0802A300:
	ldr r0, _0802A310  @ =0x0000C001
	cmp r1, r0
	beq _0802A324
	add r0, r0, #1
_0802A308:
	cmp r1, r0
	beq _0802A324
	b _0802A328
	.byte 0x00
	.byte 0x00
_0802A310:
	.4byte 0x0000C001
_0802A314:
	ldrh r0, [r6]
	ldr r1, [r5]
	bl VerifyFlashSector
	mov r1, #0
	cmp r0, #0
	bne _0802A32A
	b _0802A332
_0802A324:
	mov r1, #0
	b _0802A2D4
_0802A328:
	mov r1, #0
_0802A32A:
	cmp r1, #0
	beq _0802A2D4
_0802A32E:
	cmp r1, #0
	beq _0802A368
_0802A332:
	ldr r1, _0802A358  @ =0x03000120
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	ldr r1, _0802A35C  @ =0x03000118
	ldr r0, [r1]
	mov r2, #128
	lsl r2, r2, #5
	add r0, r0, r2
	str r0, [r1]
	ldr r1, _0802A360  @ =0x0300011C
	ldr r0, [r1]
	ldr r2, _0802A364  @ =0xFFFFF000
	add r0, r0, r2
	str r0, [r1]
	cmp r0, #0
	bgt _0802A368
_0802A354:
	mov r0, #1
	b _0802A36A
_0802A358:
	.4byte 0x03000120
_0802A35C:
	.4byte 0x03000118
_0802A360:
	.4byte 0x0300011C
_0802A364:
	.4byte 0xFFFFF000
_0802A368:
	mov r0, #0
_0802A36A:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802A290

	THUMB_FUNC_START sub_0802A370
sub_0802A370: @ 0x0802A370
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r0, _0802A38C  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	bne _0802A390
	mov r0, #0
	b _0802A41E
	.byte 0x00
	.byte 0x00
_0802A38C:
	.4byte 0x03000124
_0802A390:
	mov r0, #0
	mov r9, r0
	cmp r6, #0
	ble _0802A41C
_0802A398:
	lsl r1, r7, #16
	mov r8, r1
	b _0802A3A8
_0802A39E:
	mov r0, r9
	mov r1, #1
	add r9, r9, r1
	cmp r0, #1
	bhi _0802A408
_0802A3A8:
	ldr r0, _0802A3D0  @ =0x03001F38
	mov r1, r8
	lsr r4, r1, #16
	ldr r2, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl _call_via_r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r0, _0802A3D4  @ =0x000080FF
	cmp r1, r0
	beq _0802A3FE
	cmp r1, r0
	bgt _0802A3D8
	cmp r1, #0
	beq _0802A3EC
	sub r0, r0, #251
	b _0802A3E0
	.byte 0x00
	.byte 0x00
_0802A3D0:
	.4byte 0x03001F38
_0802A3D4:
	.4byte 0x000080FF
_0802A3D8:
	ldr r0, _0802A3E8  @ =0x0000C001
	cmp r1, r0
	beq _0802A3FE
	add r0, r0, #1
_0802A3E0:
	cmp r1, r0
	beq _0802A3FE
	b _0802A402
	.byte 0x00
	.byte 0x00
_0802A3E8:
	.4byte 0x0000C001
_0802A3EC:
	add r0, r4, #0
	add r1, r5, #0
	bl VerifyFlashSector
	mov r3, #0
	cmp r0, #0
	bne _0802A404
	mov r3, #1
	b _0802A40C
_0802A3FE:
	mov r3, #0
	b _0802A39E
_0802A402:
	mov r3, #0
_0802A404:
	cmp r3, #0
	beq _0802A39E
_0802A408:
	cmp r3, #0
	beq _0802A41C
_0802A40C:
	add r7, r7, #1
	mov r0, #128
	lsl r0, r0, #5
	add r5, r5, r0
	ldr r1, _0802A42C  @ =0xFFFFF000
	add r6, r6, r1
	cmp r6, #0
	bgt _0802A398
_0802A41C:
	add r0, r3, #0
_0802A41E:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0802A42C:
	.4byte 0xFFFFF000
	THUMB_FUNC_END sub_0802A370

	THUMB_FUNC_START sub_0802A430
sub_0802A430: @ 0x0802A430
	push {r4,r5,lr}
	add r3, r0, #0
	add r4, r1, #0
	add r5, r2, #0
	ldr r0, _0802A454  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	beq _0802A44E
	lsl r0, r3, #16
	lsr r0, r0, #16
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ReadFlash
_0802A44E:
	pop {r4,r5}
	pop {r0}
	bx r0
_0802A454:
	.4byte 0x03000124
	THUMB_FUNC_END sub_0802A430

	THUMB_FUNC_START sub_0802A458
sub_0802A458: @ 0x0802A458
	ldr r0, _0802A460  @ =0x03000124
	ldr r0, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0802A460:
	.4byte 0x03000124
	THUMB_FUNC_END sub_0802A458

	THUMB_FUNC_START sub_0802A464
sub_0802A464: @ 0x0802A464
	push {r4-r6,lr}
	ldr r6, _0802A478  @ =0x02032000
	ldr r5, _0802A47C  @ =0x02032FF8
	ldr r0, _0802A480  @ =0x0300012A
	ldrh r1, [r0]
	ldr r0, _0802A484  @ =0x0000FFFF
	cmp r1, r0
	beq _0802A488
_0802A474:
	mov r0, #0
	b _0802A4AE
_0802A478:
	.4byte 0x02032000
_0802A47C:
	.4byte 0x02032FF8
_0802A480:
	.4byte 0x0300012A
_0802A484:
	.4byte 0x0000FFFF
_0802A488:
	mov r4, #0
_0802A48A:
	lsl r0, r4, #16
	lsr r0, r0, #16
	mov r1, #0
	add r2, r6, #0
	mov r3, #128
	lsl r3, r3, #5
	bl ReadFlash
	ldrb r0, [r5]
	cmp r0, #68
	bne _0802A4A6
	ldrb r0, [r5, #1]
	cmp r0, #75
	beq _0802A474
_0802A4A6:
	add r4, r4, #1
	cmp r4, #1
	ble _0802A48A
	mov r0, #1
_0802A4AE:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802A464
