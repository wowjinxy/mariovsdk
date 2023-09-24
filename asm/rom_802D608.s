	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_0802D608
sub_0802D608: @ 0x0802D608
	ldr r1, _0802D610  @ =0x030001A0
	mov r0, #0
	strb r0, [r1, #4]
	bx lr
_0802D610:
	.4byte 0x030001A0
	THUMB_FUNC_END sub_0802D608

	THUMB_FUNC_START sub_0802D614
sub_0802D614: @ 0x0802D614
	push {r4,lr}
	add r4, r0, #0
	mov r0, #26
	mov r1, #0
	bl sub_080070E8
	ldr r2, _0802D648  @ =0x030001C0
	str r4, [r2]
	ldr r1, _0802D64C  @ =0x030001B4
	mov r0, #1
	str r0, [r1]
	ldr r0, _0802D650  @ =0x030001BC
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1]
	ldr r4, [r2]
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0802D66C
	add r0, r4, #0
	bl sub_08031944
	cmp r0, #2
	bne _0802D654
	mov r3, #6
	b _0802D67E
_0802D648:
	.4byte 0x030001C0
_0802D64C:
	.4byte 0x030001B4
_0802D650:
	.4byte 0x030001BC
_0802D654:
	add r0, r4, #0
	bl sub_08031944
	cmp r0, #1
	bne _0802D662
	mov r3, #7
	b _0802D67E
_0802D662:
	add r0, r4, #0
	bl sub_08031978
	mov r3, #5
	b _0802D67E
_0802D66C:
	add r0, r4, #0
	add r0, r0, #16
	bl sub_0802F090
	mov r3, #1
	neg r3, r3
	cmp r0, #0
	beq _0802D67E
	mov r3, #3
_0802D67E:
	ldr r0, _0802D694  @ =0x030001B8
	mov r4, #0
	str r4, [r0]
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	bne _0802D69C
	ldr r1, _0802D698  @ =0x030001A8
	mov r0, #4
	str r0, [r1]
	b _0802D6C4
_0802D694:
	.4byte 0x030001B8
_0802D698:
	.4byte 0x030001A8
_0802D69C:
	cmp r3, #3
	bne _0802D6AC
	ldr r1, _0802D6A8  @ =0x030001A8
	mov r0, #5
	str r0, [r1]
	b _0802D6C4
_0802D6A8:
	.4byte 0x030001A8
_0802D6AC:
	ldr r1, _0802D6CC  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r2, _0802D6D0  @ =0x030001AC
	lsl r0, r3, #2
	add r0, r0, r3
	lsl r0, r0, #3
	ldr r1, _0802D6D4  @ =gUnknown_0807C850
	add r0, r0, r1
	str r0, [r2]
	ldr r0, _0802D6D8  @ =0x030001B0
	str r4, [r0]
_0802D6C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D6CC:
	.4byte 0x030001A8
_0802D6D0:
	.4byte 0x030001AC
_0802D6D4:
	.4byte gUnknown_0807C850
_0802D6D8:
	.4byte 0x030001B0
	THUMB_FUNC_END sub_0802D614
	