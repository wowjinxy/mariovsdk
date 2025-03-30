	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_08030E30 @ bob-omb explodes blocks
sub_08030E30: @ 0x08030E30
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	mov r6, #1
	neg r6, r6
	mov r1, #0
	str r1, [sp, #16]
	ldr r1, [r0, #4]
	asr r1, r1, #11
	lsl r2, r1, #6
	ldr r1, [r0, #12]
	asr r1, r1, #11
	lsl r1, r1, #6
	mov r9, r1
	ldr r1, [r0]
	asr r1, r1, #11
	str r1, [sp, #12]
	ldr r0, [r0, #8]
	asr r0, r0, #11
	mov r10, r0
	cmp r0, #63
	bls _08030E66
	mov r5, #63
	mov r10, r5
_08030E66:
	ldr r0, _08030E74  @ =0x00000FBF
	cmp r9, r0
	bls _08030F20
	add r0, r0, #1
	mov r9, r0
	b _08030F20
	.byte 0x00
	.byte 0x00
_08030E74:
	.4byte 0x00000FBF
_08030E78:
	ldr r1, [sp, #12]
	add r3, r2, r1
	add r5, r2, #0
	add r5, r5, r10
	mov r8, r5
	add r2, r2, #64
	str r2, [sp, #20]
	cmp r3, r8
	bhi _08030F1E
_08030E8A:
	ldr r0, _08030EFC  @ =gEWRAMBasePtr
	ldr r4, [r0]
	lsl r1, r3, #1
	ldr r2, _08030F00  @ =0x0000400C
	add r0, r4, r2
	add r0, r0, r1
	ldrh r2, [r0]
	ldr r5, _08030F04  @ =0x0000600C
	add r0, r4, r5
	add r0, r0, r1
	ldrh r5, [r0]
	add r7, r3, #1
	cmp r2, #3
	bne _08030F16
	cmp r5, r6
	beq _08030F16
	lsl r0, r5, #2
	add r0, r0, #8
	add r3, r4, r0
	ldr r0, _08030F08  @ =0x030001E8
	ldr r4, [r0, #28]
	add r2, r4, #0
	add r2, r2, #84
	cmp r4, r2
	bcs _08030F16
	ldr r6, _08030F0C  @ =gCurrentPresentScore
_08030EBE:
	ldr r1, [r4]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08030F10
	ldr r1, [r4, #8]
	ldr r0, [r3]
	lsl r0, r0, #9
	lsr r0, r0, #25
	str r0, [r1]
	ldrb r0, [r3, #3]
	str r0, [r1, #4]
	add r0, r4, #0
	mov r1, #1
	bl sub_080310A8
	mov r0, #1
	str r0, [sp, #16]
	ldr r0, [r6]
	add r0, r0, #100
	str r0, [r6]
	ldr r0, [r4, #8]
	ldr r1, [r0]
	lsl r1, r1, #3
	ldr r2, [r0, #4]
	lsl r2, r2, #3
	mov r0, #100
	bl sub_08031A64
	b _08030F16
	.byte 0x00
	.byte 0x00
_08030EFC:
	.4byte gEWRAMBasePtr
_08030F00:
	.4byte 0x0000400C
_08030F04:
	.4byte 0x0000600C
_08030F08:
	.4byte 0x030001E8
_08030F0C:
	.4byte gCurrentPresentScore
_08030F10:
	add r4, r4, #12
	cmp r4, r2
	bcc _08030EBE
_08030F16:
	add r6, r5, #0
	add r3, r7, #0
	cmp r3, r8
	bls _08030E8A
_08030F1E:
	ldr r2, [sp, #20]
_08030F20:
	cmp r2, r9
	bls _08030E78
	ldr r1, [sp, #16]
	cmp r1, #0
	beq _08030F40
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #130
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08030F40:
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08030E30
