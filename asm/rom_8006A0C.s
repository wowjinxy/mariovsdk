	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_08006A0C
sub_08006A0C: @ 0x08006A0C
	ldr r1, _08006A24  @ =gUnknown_03000934
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08006A28  @ =gNextLevelID
	ldr r0, _08006A2C  @ =gEWRAMBasePtr
	ldr r0, [r0]
	ldr r2, _08006A30  @ =0x0000400C
	add r0, r0, r2
	ldrh r0, [r0]
	strb r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08006A24:
	.4byte gUnknown_03000934
_08006A28:
	.4byte gNextLevelID
_08006A2C:
	.4byte gEWRAMBasePtr
_08006A30:
	.4byte 0x0000400C
	THUMB_FUNC_END sub_08006A0C

	THUMB_FUNC_START sub_08006A34
sub_08006A34: @ 0x08006A34
	push {r4,lr}
	mov r4, #0
_08006A38:
	ldr r0, _08006A68  @ =gUnknown_03000924
	ldr r1, [r0]
	lsl r0, r4, #2
	add r0, r0, r1
	mov r1, #210
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r3, [r0]
	sub r3, r3, #1
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_08001DBC
	add r4, r4, #1
	cmp r4, #2
	ble _08006A38
	mov r0, #7
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08006A68:
	.4byte gUnknown_03000924
	THUMB_FUNC_END sub_08006A34
