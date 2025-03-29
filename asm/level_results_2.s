	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_0802F5C0
sub_0802F5C0: @ 0x0802F5C0
	push {lr}
	sub sp, sp, #12
	add r2, r0, #0
	lsl r0, r2, #4
	add r0, r0, r2
	lsl r0, r0, #4
	add r0, r0, r2
	lsl r0, r0, #2
	asr r2, r0, #16
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r2
	lsl r0, r0, #4
	asr r1, r0, #16
	str r1, [sp, #8]
	mov r0, #100
	mul r0, r1, r0
	sub r2, r2, r0
	cmp r2, #99
	ble _0802F5FE
	sub r2, r2, #100
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	ble _0802F5FE
	mov r0, #0
	str r0, [sp, #4]
	add r0, r1, #1
	str r0, [sp, #8]
_0802F5FE:
	ldr r0, _0802F644  @ =0x0000199A
	mul r0, r2, r0
	asr r1, r0, #16
	str r1, [sp, #4]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	sub r2, r2, r0
	cmp r2, #9
	ble _0802F626
	sub r2, r2, #10
	add r0, r1, #1
	str r0, [sp, #4]
	cmp r0, #5
	ble _0802F626
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0802F626:
	str r2, [sp]
	ldr r1, [sp, #4]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r2, r0
	ldr r2, [sp, #8]
	mov r1, #100
	mul r1, r2, r1
	add r2, r0, r1
	add r0, r2, #0
	add sp, sp, #12
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0802F644:
	.4byte 0x0000199A
	THUMB_FUNC_END sub_0802F5C0

	THUMB_FUNC_START sub_0802F648
sub_0802F648: @ 0x0802F648
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	add r6, r0, #0
	add r4, r1, #0
	mov r5, #0
	mov r9, r5
	ldr r0, _0802F6B4  @ =0x03000DE8
	str r6, [r0]
	ldr r0, _0802F6B8  @ =gUnknown_03000DDC
	strb r5, [r0]
	ldr r0, _0802F6BC  @ =0x03000DE4
	strb r5, [r0]
	ldr r1, _0802F6C0  @ =0x03000DE0
	ldr r0, _0802F6C4  @ =0x03000DF0
	strb r5, [r0]
	strb r5, [r1]
	ldr r1, _0802F6C8  @ =0x03000DEC
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0802F6CC  @ =0x03000DD4
	strb r5, [r0]
	mov r0, sp
	strh r5, [r0]
	ldr r2, _0802F6D0  @ =0x0100002A
	add r1, r6, #0
	bl CpuSet
	str r4, [r6, #80]
	mov r7, #0
	ldr r0, [r4]
	cmp r5, r0
	blt _0802F690
	b _0802F78E
_0802F690:
	lsl r0, r7, #3
	add r0, r0, #4
	ldr r1, [r6, #80]
	add r1, r1, r0
	mov r8, r1
	lsl r0, r7, #2
	add r0, r0, r7
	lsl r0, r0, #2
	add r4, r6, r0
	ldrb r0, [r1, #7]
	cmp r0, #4
	bhi _0802F766
	lsl r0, r0, #2
	ldr r1, _0802F6D4  @ =0x0802F6D8
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0802F6B4:
	.4byte 0x03000DE8
_0802F6B8:
	.4byte gUnknown_03000DDC
_0802F6BC:
	.4byte 0x03000DE4
_0802F6C0:
	.4byte 0x03000DE0
_0802F6C4:
	.4byte 0x03000DF0
_0802F6C8:
	.4byte 0x03000DEC
_0802F6CC:
	.4byte 0x03000DD4
_0802F6D0:
	.4byte 0x0100002A
_0802F6D4:
	.4byte _0802F6D8
_0802F6D8:
	.4byte _0802F6EC
	.4byte _0802F718
	.4byte _0802F700
	.4byte _0802F72C
	.4byte _0802F74C
_0802F6EC:
	ldr r0, _0802F6FC  @ =gGeneralTimer
	ldr r0, [r0]
	bl sub_0802F5C0
	mov r1, #100
	mul r0, r1, r0
	b _0802F764
	.byte 0x00
	.byte 0x00
_0802F6FC:
	.4byte gGeneralTimer
_0802F700:
	ldr r0, _0802F714  @ =gUnknown_03000B44
	ldr r0, [r0]
	bl sub_0802F5C0
	mov r1, #100
	mul r1, r0, r1
	ldr r0, [r4]
	add r0, r0, r1
	b _0802F764
	.byte 0x00
	.byte 0x00
_0802F714:
	.4byte gUnknown_03000B44
_0802F718:
	ldr r0, _0802F728  @ =gMiniMariosRescued_03001BA0
	ldrb r1, [r0]
	mov r0, #100
	mul r1, r0, r1
	ldr r0, [r4]
	add r0, r0, r1
	b _0802F764
	.byte 0x00
	.byte 0x00
_0802F728:
	.4byte gMiniMariosRescued_03001BA0
_0802F72C:
	ldr r0, _0802F740  @ =0x03000DD8
	add r5, r4, #0
	str r5, [r0]
	ldr r0, _0802F744  @ =gCurrentPresentScore
	ldr r1, _0802F748  @ =gCurrentEnemyScore
	ldr r0, [r0]
	ldr r1, [r1]
	add r0, r0, r1
	str r0, [r5]
	b _0802F766
_0802F740:
	.4byte 0x03000DD8
_0802F744:
	.4byte gCurrentPresentScore
_0802F748:
	.4byte gCurrentEnemyScore
_0802F74C:
	ldr r0, _0802F7A8  @ =0x03000E54
	str r4, [r0]
	ldr r0, _0802F7AC  @ =gUnknown_03000DD0
	ldrb r0, [r0]
	ldr r1, _0802F7B0  @ =gUnknown_03000DF8
	ldrb r1, [r1]
	ldr r2, _0802F7B4  @ =gLevelType
	ldrb r2, [r2]
	bl get_level_highscore_0801095C
	lsl r0, r0, #16
	lsr r0, r0, #16
_0802F764:
	str r0, [r4]
_0802F766:
	mov r1, r8
	ldrb r0, [r1, #7]
	sub r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, [r4]
	cmp r0, #1
	bls _0802F778
	add r9, r9, r1
_0802F778:
	str r1, [r4, #4]
	add r0, r4, #0
	add r0, r0, #12
	bl sub_0802FB18
	add r7, r7, #1
	ldr r0, [r6, #80]
	ldr r0, [r0]
	cmp r7, r0
	bge _0802F78E
	b _0802F690
_0802F78E:
	cmp r5, #0
	beq _0802F79A
	ldr r0, [r5, #4]
	add r0, r0, r9
	str r0, [r5, #4]
	str r0, [r5, #8]
_0802F79A:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0802F7A8:
	.4byte 0x03000E54
_0802F7AC:
	.4byte gUnknown_03000DD0
_0802F7B0:
	.4byte gUnknown_03000DF8
_0802F7B4:
	.4byte gLevelType
	THUMB_FUNC_END sub_0802F648

	THUMB_FUNC_START sub_0802F7B8
sub_0802F7B8: @ 0x0802F7B8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #8
	add r2, r0, #0
	mov r8, r1
	ldr r0, [r2, #80]
	ldr r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	sub r0, r0, #40
	add r6, r2, r0
	mov r7, #0
	mov r3, #0
	sub r1, r1, #2
	cmp r7, r1
	bge _0802F81E
	add r4, r2, #4
	mov r0, #12
	add r0, r0, r2
	mov r9, r0
_0802F7E6:
	ldr r1, [r4]
	mov r5, r8
	sub r0, r1, r5
	cmp r0, #0
	bge _0802F7F8
	add r7, r7, r1
	mov r0, #0
	str r0, [r4]
	b _0802F7FC
_0802F7F8:
	str r0, [r4]
	add r7, r7, r8
_0802F7FC:
	ldr r1, [r4]
	mov r0, r9
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_0802FB18
	add r4, r4, #20
	mov r0, #20
	add r9, r9, r0
	ldr r3, [sp, #4]
	add r3, r3, #1
	ldr r2, [sp]
	ldr r0, [r2, #80]
	ldr r0, [r0]
	sub r0, r0, #2
	cmp r3, r0
	blt _0802F7E6
_0802F81E:
	ldr r0, [r6]
	add r2, r0, r7
	str r2, [r6]
	ldr r0, _0802F884  @ =gUnknown_03000DDC
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r3, r0, #0
	cmp r1, #0
	bne _0802F83E
	ldr r0, [r6, #20]
	cmp r2, r0
	ble _0802F83E
	str r2, [r6, #20]
	ldr r1, _0802F888  @ =0x03000DE4
	mov r0, #1
	strb r0, [r1]
_0802F83E:
	ldr r0, [r6]
	ldr r1, [r6, #4]
	cmp r0, r1
	blt _0802F860
	mov r5, #0
	mov r8, r5
	str r1, [r6]
	mov r1, #1
	strb r1, [r3]
	ldr r0, _0802F888  @ =0x03000DE4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0802F860
	ldr r0, _0802F88C  @ =0x03000DD4
	strb r1, [r0]
_0802F860:
	add r0, r6, #0
	add r0, r0, #12
	ldr r1, [r6]
	bl sub_0802FB18
	add r0, r6, #0
	add r0, r0, #32
	ldr r1, [r6, #20]
	bl sub_0802FB18
	mov r0, r8
	add sp, sp, #8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
_0802F884:
	.4byte gUnknown_03000DDC
_0802F888:
	.4byte 0x03000DE4
_0802F88C:
	.4byte 0x03000DD4
	THUMB_FUNC_END sub_0802F7B8

	THUMB_FUNC_START sub_0802F890
sub_0802F890: @ 0x0802F890
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	str r0, [sp, #12]
	str r1, [sp, #16]
	mov r10, r2
	mov r9, r3
	ldr r0, _0802F8C4  @ =0x03000DE4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0802F936
	ldr r2, _0802F8C8  @ =0x03000DE0
	ldrb r1, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #4
	bgt _0802F8CC
	add r0, r1, #1
	strb r0, [r2]
	b _0802F936
	.byte 0x00
	.byte 0x00
_0802F8C4:
	.4byte 0x03000DE4
_0802F8C8:
	.4byte 0x03000DE0
_0802F8CC:
	ldr r1, _0802F910  @ =0x03000DF0
	ldrb r3, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #11
	bgt _0802F928
	mov r0, #0
	strb r0, [r2]
	add r0, r3, #1
	strb r0, [r1]
	ldr r2, _0802F914  @ =0x03000DEC
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	cmp r0, #1
	bne _0802F91C
	ldr r1, _0802F918  @ =gBGLayerOffsets 
	mov r2, #0
	mov r0, #128
	lsl r0, r0, #1
	strh r0, [r1, #4]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #25
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0802F936
	.byte 0x00
	.byte 0x00
_0802F910:
	.4byte 0x03000DF0
_0802F914:
	.4byte 0x03000DEC
_0802F918:
	.4byte gBGLayerOffsets 
_0802F91C:
	ldr r1, _0802F924  @ =gBGLayerOffsets 
	mov r0, #0
	strh r0, [r1, #4]
	b _0802F936
_0802F924:
	.4byte gBGLayerOffsets 
_0802F928:
	ldr r0, _0802F9C8  @ =gUnknown_03000DDC
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	bne _0802F936
	ldr r0, _0802F9CC  @ =0x03000DD4
	strb r1, [r0]
_0802F936:
	mov r7, #0
	ldr r0, [sp, #12]
	ldr r1, [r0, #80]
	ldr r0, [r1]
	cmp r7, r0
	bge _0802F9B8
	ldr r6, [sp, #12]
	add r6, r6, #12
	mov r3, #4
	mov r8, r3
_0802F94A:
	mov r5, #6
	mov r0, r8
	add r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0802F96A
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	mov r3, r10
	str r3, [sp]
	mov r3, r9
	str r3, [sp, #4]
	str r5, [sp, #8]
	ldr r3, [sp, #16]
	bl sub_0802F9D8
_0802F96A:
	ldr r0, _0802F9D0  @ =0x03000DE4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0802F990
	ldr r0, _0802F9D4  @ =0x03000DEC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0802F990
	ldrb r0, [r4, #7]
	sub r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0802F990
	mov r5, #8
_0802F990:
	ldrb r1, [r4, #6]
	ldrb r2, [r4, #5]
	mov r0, r10
	str r0, [sp]
	mov r3, r9
	str r3, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	ldr r3, [sp, #16]
	bl sub_0802FB60
	add r6, r6, #20
	mov r0, #8
	add r8, r8, r0
	add r7, r7, #1
	ldr r3, [sp, #12]
	ldr r1, [r3, #80]
	ldr r0, [r1]
	cmp r7, r0
	blt _0802F94A
_0802F9B8:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802F9C8:
	.4byte gUnknown_03000DDC
_0802F9CC:
	.4byte 0x03000DD4
_0802F9D0:
	.4byte 0x03000DE4
_0802F9D4:
	.4byte 0x03000DEC
	THUMB_FUNC_END sub_0802F890

	THUMB_FUNC_START sub_0802F9D8
sub_0802F9D8: @ 0x0802F9D8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	mov r9, r0
	add r4, r3, #0
	ldr r0, [sp, #44]
	mov r10, r0
	ldr r0, [sp, #48]
	lsl r1, r1, #24
	lsr r6, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	str r2, [sp]
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #4]
	mov r0, r9
	bl strlen
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	mov r1, #0
	mov r12, r1
	cmp r12, r8
	bcs _0802FADE
	ldr r5, _0802FAF0  @ =REG_DMA3SAD
	ldr r7, _0802FAF4  @ =gOamBuffer
_0802FA16:
	mov r1, r9
	add r1, r1, r12
	ldrb r0, [r1]
	cmp r0, #32
	beq _0802FAC8
	ldrb r0, [r1]
	sub r0, r0, #65
	lsl r0, r0, #5
	ldr r2, _0802FAF8  @ =gUnknown_080CB7F0
	add r0, r0, r2
	str r0, [r5]
	mov r3, r10
	ldrh r0, [r3]
	ldr r1, _0802FAFC  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0802FB00  @ =0x84000008
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0802FB04  @ =gUnknown_080CB7E8
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r5, #4]
	ldr r0, _0802FB08  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	ldrh r2, [r1, #2]
	ldr r0, _0802FB0C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r6
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #40]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0802FB10  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0802FB14  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r0, [sp, #4]
	lsl r3, r0, #4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r1, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldr r1, [sp, #40]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	mov r2, r10
	ldrh r0, [r2]
	add r0, r0, #32
	strh r0, [r2]
_0802FAC8:
	add r0, r6, #0
	add r0, r0, #8
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, r12
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	cmp r12, r8
	bcc _0802FA16
_0802FADE:
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
_0802FAF0:
	.4byte REG_DMA3SAD
_0802FAF4:
	.4byte gOamBuffer
_0802FAF8:
	.4byte gUnknown_080CB7F0
_0802FAFC:
	.4byte OBJ_VRAM0
_0802FB00:
	.4byte 0x84000008
_0802FB04:
	.4byte gUnknown_080CB7E8
_0802FB08:
	.4byte 0x84000002
_0802FB0C:
	.4byte 0xFFFFFE00
_0802FB10:
	.4byte 0x000003FF
_0802FB14:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0802F9D8

	THUMB_FUNC_START sub_0802FB18
sub_0802FB18: @ 0x0802FB18
	push {r4-r7,lr}
	add r7, r0, #0
	add r6, r1, #0
	mov r5, #0
	mov r1, #0
_0802FB22:
	add r0, r7, r5
	strb r1, [r0]
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #5
	bls _0802FB22
	mov r5, #0
	cmp r6, #0
	beq _0802FB5A
_0802FB36:
	add r4, r7, r5
	add r0, r6, #0
	mov r1, #10
	bl __umodsi3
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #10
	bl __udivsi3
	add r6, r0, #0
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #5
	bhi _0802FB5A
	cmp r6, #0
	bne _0802FB36
_0802FB5A:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802FB18

	THUMB_FUNC_START sub_0802FB60
sub_0802FB60: @ 0x0802FB60
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r10, r0
	add r4, r3, #0
	ldr r0, [sp, #40]
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r9, r1
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r8, r2
	lsl r0, r0, #24
	mov r6, #0
	ldr r7, _0802FC08  @ =REG_DMA3SAD
	ldr r5, _0802FC0C  @ =gOamBuffer
	lsr r0, r0, #20
	mov r12, r0
_0802FB88:
	ldr r0, _0802FC10  @ =gUnknown_082EC748
	str r0, [r7]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r7, #4]
	ldr r0, _0802FC14  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r5
	lsl r1, r6, #3
	mov r2, r9
	sub r1, r2, r1
	ldr r2, _0802FC18  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0802FC1C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r8
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	add r0, r1, r6
	ldrb r1, [r0]
	lsl r1, r1, #1
	ldrh r3, [r2, #4]
	ldr r0, _0802FC20  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
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
	bls _0802FB88
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802FC08:
	.4byte REG_DMA3SAD
_0802FC0C:
	.4byte gOamBuffer
_0802FC10:
	.4byte gUnknown_082EC748
_0802FC14:
	.4byte 0x84000002
_0802FC18:
	.4byte 0x000001FF
_0802FC1C:
	.4byte 0xFFFFFE00
_0802FC20:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0802FB60

	THUMB_FUNC_START sub_0802FC24 @ Plus level results related
sub_0802FC24: @ 0x0802FC24
	push {r4,lr}
	add r2, r0, #0
	cmp r1, #0
	beq _0802FC3C
	ldr r0, _0802FC38  @ =0x03000DD8
	ldr r1, [r0]
	ldr r0, [r1, #8]
	add r0, r0, r2
	str r0, [r1, #8]
	b _0802FC76
_0802FC38:
	.4byte 0x03000DD8
_0802FC3C:
	ldr r4, _0802FC7C  @ =0x03000DD8
	ldr r1, [r4]
	ldr r0, [r1, #4]
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, [r1]
	add r2, r0, r2
	str r2, [r1]
	ldr r3, _0802FC80  @ =0x03000E54
	ldr r1, [r3]
	ldr r0, [r1]
	cmp r2, r0
	ble _0802FC5E
	str r2, [r1]
	ldr r1, _0802FC84  @ =0x03000DE4
	mov r0, #1
	strb r0, [r1]
_0802FC5E:
	ldr r1, [r3]
	add r0, r1, #0
	add r0, r0, #12
	ldr r1, [r1]
	bl sub_0802FB18
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #12
	ldr r1, [r1]
	bl sub_0802FB18
_0802FC76:
	pop {r4}
	pop {r0}
	bx r0
_0802FC7C:
	.4byte 0x03000DD8
_0802FC80:
	.4byte 0x03000E54
_0802FC84:
	.4byte 0x03000DE4
	THUMB_FUNC_END sub_0802FC24

	THUMB_FUNC_START sub_0802FC88
sub_0802FC88: @ 0x0802FC88
	push {lr}
	mov r2, #0
	ldr r0, _0802FCA0  @ =0x03000DD8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	cmp r1, r0
	blt _0802FC9A
	mov r2, #1
_0802FC9A:
	add r0, r2, #0
	pop {r1}
	bx r1
_0802FCA0:
	.4byte 0x03000DD8
	THUMB_FUNC_END sub_0802FC88

	THUMB_FUNC_START sub_0802FCA4
sub_0802FCA4: @ 0x0802FCA4
	push {lr}
	ldr r0, _0802FCCC  @ =0x03000DD8
	ldr r1, [r0]
	ldr r0, _0802FCD0  @ =0x03000E54
	ldr r0, [r0]
	ldr r2, [r1, #8]
	ldr r0, [r0, #4]
	cmp r2, r0
	blt _0802FCC6
	ldr r0, _0802FCD4  @ =gUnknown_03000DD0
	ldrb r0, [r0]
	ldr r1, _0802FCD8  @ =gUnknown_03000DF8
	ldrb r1, [r1]
	lsl r2, r2, #16
	lsr r2, r2, #16
	bl set_level_highscore_flag_080107E8
_0802FCC6:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FCCC:
	.4byte 0x03000DD8
_0802FCD0:
	.4byte 0x03000E54
_0802FCD4:
	.4byte gUnknown_03000DD0
_0802FCD8:
	.4byte gUnknown_03000DF8
	THUMB_FUNC_END sub_0802FCA4

	THUMB_FUNC_START sub_0802FCDC
sub_0802FCDC: @ 0x0802FCDC
	push {r4-r7,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	lsr r0, r7, #31
	mov r12, r0
	mov r1, r12
	cmp r1, #0
	beq _0802FCF4
	mov r0, #0
	strh r0, [r4, #60]
_0802FCF4:
	mov r2, #62
	ldrsh r7, [r4, r2]
	cmp r3, #0
	blt _0802FD04
	add r0, r4, #0
	add r0, r0, #64
	strh r3, [r0]
	b _0802FD0C
_0802FD04:
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsh r3, [r0, r1]
_0802FD0C:
	ldr r0, [r4, #32]
	str r0, [r4, #40]
	ldr r0, [r4, #36]
	str r0, [r4, #44]
	mov r6, #0
	str r6, [r4, #48]
	str r6, [r4, #52]
	cmp r5, #53
	bne _0802FD70
	ldr r0, _0802FD64  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #7
	ldr r0, _0802FD68  @ =0x030001CC
	ldr r2, [r0]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #6
	ldr r2, _0802FD6C  @ =gUnknown_0807D1F0
	add r0, r0, r2
	add r1, r1, r0
	lsl r0, r7, #5
	add r2, r1, r0
	mov r0, #60
	ldrsh r1, [r4, r0]
	lsl r1, r1, #2
	add r0, r2, #4
	add r0, r0, r1
	ldr r5, [r0]
	mov r1, r12
	cmp r1, #0
	bne _0802FD54
	ldrh r0, [r4, #60]
	add r0, r0, #1
	strh r0, [r4, #60]
_0802FD54:
	mov r0, #60
	ldrsh r1, [r4, r0]
	ldr r0, [r2]
	cmp r1, r0
	blt _0802FD82
	strh r6, [r4, #60]
	b _0802FD82
	.byte 0x00
	.byte 0x00
_0802FD64:
	.4byte gUnknown_03001BC8
_0802FD68:
	.4byte 0x030001CC
_0802FD6C:
	.4byte gUnknown_0807D1F0
_0802FD70:
	cmp r5, #51
	bne _0802FD76
	b _0802FF24
_0802FD76:
	cmp r5, #52
	bne _0802FD82
	mov r0, #1
	strh r0, [r4, #56]
	strh r6, [r4, #58]
	b _0802FF24
_0802FD82:
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #3
	ldr r1, _0802FDAC  @ =gUnknown_0807CB68
	add r5, r0, r1
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802FDB4
	ldr r0, _0802FDB0  @ =0x03000DD4
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _0802FDB4
	mov r0, #1
	strh r0, [r4, #56]
	strh r1, [r4, #58]
	b _0802FF24
	.byte 0x00
	.byte 0x00
_0802FDAC:
	.4byte gUnknown_0807CB68
_0802FDB0:
	.4byte 0x03000DD4
_0802FDB4:
	mov r6, #0
	ldrh r1, [r5, #22]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #0
	bne _0802FE08
	ldr r0, [r5, #16]
	str r0, [r4]
	ldrb r1, [r5, #12]
	cmp r6, r1
	bge _0802FDDA
	ldr r0, [r5, #16]
	ldr r2, [r0, #12]
_0802FDCE:
	ldrb r0, [r2, #1]
	add r6, r6, r0
	add r2, r2, #36
	sub r1, r1, #1
	cmp r1, #0
	bne _0802FDCE
_0802FDDA:
	ldr r0, [r5, #16]
	ldr r0, [r0, #16]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r4, #24]
	str r1, [r4, #28]
	ldrh r1, [r5, #22]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802FE08
	mov r1, #0
	ldrb r2, [r4, #27]
	lsl r0, r2, #27
	cmp r0, #0
	blt _0802FDFC
	mov r1, #1
_0802FDFC:
	lsl r1, r1, #4
	mov r0, #17
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #27]
_0802FE08:
	mov r1, #20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0802FE12
	add r6, r0, #0
_0802FE12:
	mov r0, r12
	cmp r0, #0
	beq _0802FE1A
	mov r6, #0
_0802FE1A:
	mov r0, #0
	strh r6, [r4, #56]
	strh r0, [r4, #58]
	ldrh r1, [r5, #8]
	lsl r1, r1, #8
	ldr r0, [r4, #40]
	add r0, r0, r1
	str r0, [r4, #40]
	ldrh r1, [r5, #10]
	lsl r1, r1, #8
	ldr r0, [r4, #44]
	add r0, r0, r1
	str r0, [r4, #44]
	ldrb r0, [r5, #13]
	cmp r0, #0
	beq _0802FE54
	add r2, r0, #0
	add r1, r3, #0
	mul r1, r2, r1
	mov r0, #240
	sub r0, r0, r1
	asr r0, r0, #1
	add r1, r7, #0
	mul r1, r2, r1
	add r1, r0, r1
	mov r2, #4
	ldrsh r0, [r5, r2]
	add r1, r1, r0
	b _0802FE58
_0802FE54:
	mov r3, #4
	ldrsh r1, [r5, r3]
_0802FE58:
	lsl r1, r1, #8
	ldr r0, [r4, #40]
	sub r2, r1, r0
	mov r3, #30
	ldrsh r1, [r5, r3]
	asr r2, r2, r1
	add r0, r0, r2
	str r0, [r4, #32]
	cmp r6, #0
	beq _0802FE84
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0802FE84
	add r0, r2, #0
	add r1, r6, #0
	bl __divsi3
	str r0, [r4, #48]
	b _0802FE8C
_0802FE84:
	mov r0, #0
	str r0, [r4, #48]
	ldr r0, [r4, #32]
	str r0, [r4, #40]
_0802FE8C:
	mov r1, #6
	ldrsh r0, [r5, r1]
	lsl r0, r0, #8
	str r0, [r4, #36]
	ldr r1, [r4, #44]
	sub r2, r0, r1
	cmp r6, #0
	beq _0802FEB4
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0802FEB4
	add r0, r2, #0
	add r1, r6, #0
	bl __divsi3
	str r0, [r4, #52]
	b _0802FEBC
_0802FEB4:
	mov r0, #0
	str r0, [r4, #52]
	ldr r0, [r4, #36]
	str r0, [r4, #44]
_0802FEBC:
	mov r2, #0
	strh r2, [r4, #10]
	ldr r0, [r4]
	ldr r0, [r0, #12]
	ldrb r0, [r0, #1]
	strh r0, [r4, #8]
	ldr r0, [r5, #24]
	str r0, [r4, #68]
	str r5, [r4, #20]
	strh r2, [r4, #14]
	ldrh r1, [r5, #22]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0802FEDE
	mov r0, #1
	strh r0, [r4, #14]
_0802FEDE:
	ldr r1, [r5]
	ldr r0, _0802FF2C  @ =0x0000FFFF
	cmp r1, r0
	beq _0802FEFA
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r0, r1, #0
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802FEFA:
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0802FF24
	add r5, r4, #0
	add r5, r5, #66
	mov r2, #0
	ldrsh r0, [r5, r2]
	ldr r1, [r4, #40]
	asr r1, r1, #8
	ldr r2, [r4, #44]
	asr r2, r2, #8
	bl sub_08031A64
	mov r3, #0
	ldrsh r0, [r5, r3]
	mov r1, #0
	bl sub_0802FC24
_0802FF24:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_0802FF2C:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_0802FCDC

	THUMB_FUNC_START sub_0802FF30
sub_0802FF30: @ 0x0802FF30
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r0, #53
	mov r8, r0
	ldr r0, _0802FF84  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r6, _0802FF88  @ =gUnknown_03001BC8
	cmp r0, #1
	bne _0802FF54
	ldrb r0, [r6]
	cmp r0, #6
	bne _0802FF54
	mov r2, #21
	mov r8, r2
_0802FF54:
	ldr r1, _0802FF8C  @ =0x030001CC
	mov r0, #0
	str r0, [r1]
	mov r5, #0
	ldr r7, _0802FF90  @ =0x030001E0
	ldr r4, _0802FF94  @ =0x030001D0
	ldr r3, _0802FF98  @ =gCollectedLevelItems
	add r2, r1, #0
_0802FF64:
	add r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FF72
	ldr r0, [r2]
	add r0, r0, #1
	str r0, [r2]
_0802FF72:
	add r5, r5, #1
	cmp r5, #2
	ble _0802FF64
	ldr r0, [r1]
	cmp r0, #3
	bne _0802FF9C
	mov r0, #1
	b _0802FF9E
	.byte 0x00
	.byte 0x00
_0802FF84:
	.4byte gLevelType
_0802FF88:
	.4byte gUnknown_03001BC8
_0802FF8C:
	.4byte 0x030001CC
_0802FF90:
	.4byte 0x030001E0
_0802FF94:
	.4byte 0x030001D0
_0802FF98:
	.4byte gCollectedLevelItems
_0802FF9C:
	mov r0, #0
_0802FF9E:
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r7]
	mov r5, #0
	ldrb r3, [r6]
	cmp r5, r3
	bge _08030036
	ldr r0, _0802FFE4  @ =0x030001D8
	mov r9, r0
	mov r7, #0
_0802FFB2:
	ldr r0, _0802FFE8  @ =0x030001E0
	ldr r0, [r0]
	add r0, r5, r0
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	mov r2, r9
	ldr r0, [r2]
	add r4, r0, r1
	mov r3, r8
	cmp r3, #21
	bne _0802FFF0
	mov r2, #0
	strh r5, [r4, #62]
	add r1, r4, #0
	add r1, r1, #66
	mov r0, #250
	lsl r0, r0, #2
	strh r0, [r1]
	cmp r5, #5
	bne _0802FFF8
	ldr r0, _0802FFEC  @ =0x00001388
	strh r0, [r1]
	b _0802FFF8
	.byte 0x00
	.byte 0x00
_0802FFE4:
	.4byte 0x030001D8
_0802FFE8:
	.4byte 0x030001E0
_0802FFEC:
	.4byte 0x00001388
_0802FFF0:
	mvn r0, r5
	ldrb r6, [r6]
	add r0, r0, r6
	strh r0, [r4, #62]
_0802FFF8:
	ldr r6, _0803004C  @ =gUnknown_03001BC8
	ldrb r3, [r6]
	add r0, r4, #0
	mov r1, r8
	mov r2, #1
	neg r2, r2
	bl sub_0802FCDC
	mov r0, r8
	cmp r0, #21
	bne _08030014
	ldrh r0, [r4, #56]
	add r0, r0, r7
	strh r0, [r4, #56]
_08030014:
	ldr r2, [r4, #40]
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r0, [r4, #26]
	ldr r3, _08030050  @ =0xFFFFFE00
	add r1, r3, #0
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r4, #26]
	ldr r0, [r4, #44]
	asr r0, r0, #8
	strb r0, [r4, #24]
	add r7, r7, #20
	add r5, r5, #1
	ldrb r0, [r6]
	cmp r5, r0
	blt _0802FFB2
_08030036:
	ldr r2, _08030054  @ =0x030001D0
	ldrb r1, [r6]
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0803004C:
	.4byte gUnknown_03001BC8
_08030050:
	.4byte 0xFFFFFE00
_08030054:
	.4byte 0x030001D0
	THUMB_FUNC_END sub_0802FF30

	THUMB_FUNC_START sub_08030058
sub_08030058: @ 0x08030058
	push {r4,lr}
	add r2, r0, #0
	ldr r3, _080300BC  @ =0x030001D8
	ldr r4, _080300C0  @ =0x030001D0
	ldr r0, [r4]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r3]
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0, #62]
	str r1, [r0, #52]
	str r1, [r0, #48]
	strh r1, [r0, #56]
	strh r1, [r0, #58]
	str r2, [r0, #68]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r2, _080300C4  @ =gUnknown_0807CB68
	add r1, r1, r2
	str r1, [r0, #20]
	ldrb r1, [r0, #27]
	mov r2, #16
	orr r1, r1, r2
	strb r1, [r0, #27]
	ldr r2, [r0, #40]
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r3, [r0, #26]
	ldr r1, _080300C8  @ =0xFFFFFE00
	and r1, r1, r3
	orr r1, r1, r2
	strh r1, [r0, #26]
	ldr r1, [r0, #44]
	asr r1, r1, #8
	strb r1, [r0, #24]
	mov r2, #1
	neg r2, r2
	mov r1, #31
	mov r3, #0
	bl sub_0802FCDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
_080300BC:
	.4byte 0x030001D8
_080300C0:
	.4byte 0x030001D0
_080300C4:
	.4byte gUnknown_0807CB68
_080300C8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08030058

	THUMB_FUNC_START sub_080300CC
sub_080300CC: @ 0x080300CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	mov r10, r0
	ldr r0, _080301A4  @ =gUnknown_03000DF8
	mov r6, #0
	ldrsb r6, [r0, r6]
	ldr r0, _080301A8  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080300EE
	b _08030250
_080300EE:
	ldr r0, _080301AC  @ =gLevelType
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _08030108
	asr r6, r6, #1
	ldr r0, _080301B0  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08030108
	mov r6, #7
_08030108:
	mov r3, #0
	ldr r0, _080301B4  @ =0x030001D0
	ldr r2, [r0]
	cmp r3, r2
	blt _08030114
	b _08030250
_08030114:
	ldr r0, _080301B8  @ =0x030001D8
	ldr r4, [r0]
	ldr r1, [r4, #20]
	mov r9, r0
	ldr r5, _080301BC  @ =gUnknown_0807D270
	cmp r1, r5
	beq _0803015A
	add r4, r5, #0
	add r4, r4, #40
	cmp r1, r4
	beq _0803015A
	add r0, r5, #0
	add r0, r0, #80
	cmp r1, r0
	beq _0803015A
	add r1, r2, #0
	mov r8, r9
	mov r2, #0
	mov r12, r4
	add r7, r0, #0
_0803013C:
	add r2, r2, #72
	add r3, r3, #1
	cmp r3, r1
	blt _08030146
	b _08030250
_08030146:
	mov r4, r8
	ldr r0, [r4]
	add r4, r0, r2
	ldr r0, [r4, #20]
	cmp r0, r5
	beq _0803015A
	cmp r0, r12
	beq _0803015A
	cmp r0, r7
	bne _0803013C
_0803015A:
	ldr r1, _080301B4  @ =0x030001D0
	ldr r0, [r1]
	cmp r3, r0
	bge _08030250
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #3
	mov r2, r9
	ldr r1, [r2]
	add r4, r1, r0
	ldr r1, _080301AC  @ =gLevelType
	ldrb r0, [r1]
	ldr r1, _080301C0  @ =gUnknown_03000DD0
	ldrb r1, [r1]
	lsl r2, r6, #24
	lsr r2, r2, #24
	bl got_star_on_level
	lsl r0, r0, #24
	cmp r0, #0
	bne _080301CC
	mov r2, r10
	cmp r2, #0
	beq _0803023A
	ldr r1, [r4, #20]
	ldr r0, _080301C4  @ =gUnknown_0807D298
	cmp r1, r0
	beq _0803019A
	ldr r0, _080301C8  @ =0x030001D4
	ldrb r0, [r0]
	cmp r6, r0
	bge _0803021C
_0803019A:
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #42
	b _08030224
_080301A4:
	.4byte gUnknown_03000DF8
_080301A8:
	.4byte gLevelEWorldFlag
_080301AC:
	.4byte gLevelType
_080301B0:
	.4byte gNextLevelInLevelTable
_080301B4:
	.4byte 0x030001D0
_080301B8:
	.4byte 0x030001D8
_080301BC:
	.4byte gUnknown_0807D270
_080301C0:
	.4byte gUnknown_03000DD0
_080301C4:
	.4byte gUnknown_0807D298
_080301C8:
	.4byte 0x030001D4
_080301CC:
	mov r0, r10
	cmp r0, #0
	beq _0803022C
	ldr r1, [r4, #20]
	ldr r0, _08030200  @ =gUnknown_0807D298
	cmp r1, r0
	beq _080301E0
	add r0, r0, #40
	cmp r1, r0
	bne _08030204
_080301E0:
	mov r0, #0
	str r0, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #233
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #43
	b _08030224
_08030200:
	.4byte gUnknown_0807D298
_08030204:
	ldr r0, _08030218  @ =0x030001D4
	ldrb r0, [r0]
	cmp r6, r0
	bge _0803021C
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #47
	b _08030224
	.byte 0x00
	.byte 0x00
_08030218:
	.4byte 0x030001D4
_0803021C:
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #46
_08030224:
	mov r2, #0
	bl sub_0802FCDC
	b _0803023A
_0803022C:
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #44
	mov r2, #0
	bl sub_0802FCDC
_0803023A:
	ldr r1, [r4, #40]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4, #26]
	ldr r0, _08030260  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #26]
	ldr r0, [r4, #44]
	asr r0, r0, #8
	strb r0, [r4, #24]
_08030250:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08030260:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080300CC

	THUMB_FUNC_START sub_08030264
sub_08030264: @ 0x08030264
	push {r4,r5,lr}
	ldr r0, _080302E0  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080302D8
	ldr r0, _080302E4  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080302D8
	ldr r0, _080302E8  @ =gLevelType
	ldrb r0, [r0]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _080302D8
	mov r1, #0
	ldr r2, _080302EC  @ =gCollectedLevelItems
_08030290:
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080302D8
	add r1, r1, #1
	cmp r1, #2
	ble _08030290
	ldr r2, _080302F0  @ =0x030001D8
	ldr r5, _080302F4  @ =0x030001D0
	ldr r1, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r4, [r2]
	add r4, r4, r0
	mov r2, #1
	neg r2, r2
	add r0, r4, #0
	mov r1, #48
	mov r3, #0
	bl sub_0802FCDC
	ldr r1, [r4, #40]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4, #26]
	ldr r0, _080302F8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #26]
	ldr r0, [r4, #44]
	asr r0, r0, #8
	strb r0, [r4, #24]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_080302D8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080302E0:
	.4byte gNextLevelInLevelTable
_080302E4:
	.4byte gLevelEWorldFlag
_080302E8:
	.4byte gLevelType
_080302EC:
	.4byte gCollectedLevelItems
_080302F0:
	.4byte 0x030001D8
_080302F4:
	.4byte 0x030001D0
_080302F8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08030264

	THUMB_FUNC_START sub_080302FC
sub_080302FC: @ 0x080302FC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, _08030384  @ =gUnknown_03000DF8
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r8, r0
	ldr r0, _08030388  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080303FA
	ldr r5, _0803038C  @ =gLevelType
	ldrb r0, [r5]
	cmp r0, #1
	bhi _080303FA
	ldr r4, _08030390  @ =0x030001D4
	ldr r1, _08030394  @ =gUnknown_03000DD0
	ldrb r1, [r1]
	bl get_last_unlocked_level_for_world
	strb r0, [r4]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0803034C
	mov r0, r8
	asr r0, r0, #1
	mov r8, r0
	ldr r0, _08030398  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803034C
	mov r2, #7
	mov r8, r2
_0803034C:
	ldr r0, _0803038C  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r6, #7
	cmp r0, #0
	bne _0803035C
	mov r6, #8
_0803035C:
	mov r5, #0
	cmp r5, r6
	bge _080303FA
	ldr r0, _0803039C  @ =0x030001D8
	mov r9, r0
	ldr r7, _080303A0  @ =0x030001D0
_08030368:
	ldr r0, [r7]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	mov r2, r9
	ldr r0, [r2]
	add r4, r0, r1
	strh r5, [r4, #62]
	cmp r5, r8
	bne _080303A4
	add r0, r4, #0
	mov r1, #45
	b _080303C6
	.byte 0x00
	.byte 0x00
_08030384:
	.4byte gUnknown_03000DF8
_08030388:
	.4byte gLevelEWorldFlag
_0803038C:
	.4byte gLevelType
_08030390:
	.4byte 0x030001D4
_08030394:
	.4byte gUnknown_03000DD0
_08030398:
	.4byte gNextLevelInLevelTable
_0803039C:
	.4byte 0x030001D8
_080303A0:
	.4byte 0x030001D0
_080303A4:
	ldr r0, _080303D4  @ =0x030001D4
	ldrb r0, [r0]
	cmp r5, r0
	bge _080303FA
	ldr r0, _080303D8  @ =gLevelType
	ldrb r0, [r0]
	ldr r1, _080303DC  @ =gUnknown_03000DD0
	ldrb r1, [r1]
	lsl r2, r5, #24
	lsr r2, r2, #24
	bl got_star_on_level
	lsl r0, r0, #24
	cmp r0, #0
	beq _080303E0
	add r0, r4, #0
	mov r1, #41
_080303C6:
	mov r2, #1
	neg r2, r2
	add r3, r6, #0
	bl sub_0802FCDC
	b _080303EE
	.byte 0x00
	.byte 0x00
_080303D4:
	.4byte 0x030001D4
_080303D8:
	.4byte gLevelType
_080303DC:
	.4byte gUnknown_03000DD0
_080303E0:
	add r0, r4, #0
	mov r1, #42
	mov r2, #1
	neg r2, r2
	add r3, r6, #0
	bl sub_0802FCDC
_080303EE:
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	add r5, r5, #1
	cmp r5, r6
	blt _08030368
_080303FA:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080302FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08030408
sub_08030408: @ 0x08030408
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r7, r0, #0
	ldr r6, _08030464  @ =0x030001D0
	mov r4, #0
	str r4, [r6]
	ldr r0, _08030468  @ =0x030001DC
	str r4, [r0]
	ldr r5, _0803046C  @ =0x030001D8
	mov r0, #135
	lsl r0, r0, #4
	bl arena_allocate
	add r1, r0, #0
	str r1, [r5]
	mov r0, sp
	strh r4, [r0]
	ldr r2, _08030470  @ =0x01000438
	bl CpuSet
	ldr r1, [r6]
	ldr r2, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #3
	add r1, r0, r2
	str r4, [r1, #32]
	mov r0, #128
	lsl r0, r0, #3
	str r0, [r1, #36]
	cmp r7, #2
	beq _08030474
	cmp r7, #2
	ble _08030458
	cmp r7, #3
	beq _08030484
_08030458:
	mov r2, #1
	neg r2, r2
	add r0, r1, #0
	mov r1, #34
	b _0803047C
	.byte 0x00
	.byte 0x00
_08030464:
	.4byte 0x030001D0
_08030468:
	.4byte 0x030001DC
_0803046C:
	.4byte 0x030001D8
_08030470:
	.4byte 0x01000438
_08030474:
	mov r2, #1
	neg r2, r2
	add r0, r1, #0
	mov r1, #35
_0803047C:
	mov r3, #0
	bl sub_0802FCDC
	b _08030492
_08030484:
	mov r2, #1
	neg r2, r2
	add r0, r1, #0
	mov r1, #36
	mov r3, #0
	bl sub_0802FCDC
_08030492:
	ldr r0, _080304E8  @ =0x030001D0
	mov r8, r0
	ldr r0, [r0]
	lsl r2, r0, #3
	add r2, r2, r0
	lsl r2, r2, #3
	ldr r1, _080304EC  @ =0x030001D8
	mov r9, r1
	ldr r0, [r1]
	add r2, r2, r0
	ldr r1, [r2, #40]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldr r3, _080304F0  @ =0x000001FF
	mov r10, r3
	mov r4, r10
	and r1, r1, r4
	ldrh r3, [r2, #26]
	ldr r0, _080304F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #26]
	ldr r0, [r2, #44]
	asr r0, r0, #8
	strb r0, [r2, #24]
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	bl sub_080302FC
	bl sub_08030264
	cmp r7, #1
	bhi _080305CC
	cmp r7, #0
	bne _08030500
	ldr r1, _080304F8  @ =gUnknown_03001BC8
	ldr r0, _080304FC  @ =gUnknown_03000DF4
	ldrb r0, [r0]
	add r0, r0, #1
	b _08030504
	.byte 0x00
	.byte 0x00
_080304E8:
	.4byte 0x030001D0
_080304EC:
	.4byte 0x030001D8
_080304F0:
	.4byte 0x000001FF
_080304F4:
	.4byte 0xFFFFFE00
_080304F8:
	.4byte gUnknown_03001BC8
_080304FC:
	.4byte gUnknown_03000DF4
_08030500:
	ldr r1, _0803054C  @ =gUnknown_03001BC8
	mov r0, #0
_08030504:
	strb r0, [r1]
	mov r0, #31
	mov r1, #19
	bl sub_08030058
	ldr r0, _08030550  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08030560
	ldr r3, _0803054C  @ =gUnknown_03001BC8
	ldrb r0, [r3]
	cmp r0, #6
	bne _08030560
	ldr r0, _08030554  @ =0x030001D0
	ldr r2, [r0]
	ldr r0, _08030558  @ =0x030001D8
	ldr r0, [r0]
	lsl r1, r2, #3
	add r1, r1, r2
	lsl r1, r1, #3
	add r1, r1, r0
	sub r1, r1, #72
	ldrb r2, [r3]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, #30
	strh r0, [r1, #56]
	ldr r2, _0803055C  @ =0x03000C18
	mov r3, #56
	ldrsh r0, [r1, r3]
	add r0, r0, #100
	str r0, [r2]
	b _08030566
_0803054C:
	.4byte gUnknown_03001BC8
_08030550:
	.4byte gLevelType
_08030554:
	.4byte 0x030001D0
_08030558:
	.4byte 0x030001D8
_0803055C:
	.4byte 0x03000C18
_08030560:
	ldr r1, _080305BC  @ =0x03000C18
	mov r0, #100
	str r0, [r1]
_08030566:
	bl sub_0802FF30
	ldr r4, _080305C0  @ =0x030001D0
	ldr r1, [r4]
	ldr r5, _080305C4  @ =0x030001D8
	ldr r2, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	mov r1, #190
	lsl r1, r1, #7
	str r1, [r0, #32]
	mov r1, #192
	lsl r1, r1, #2
	str r1, [r0, #36]
	mov r2, #1
	neg r2, r2
	mov r1, #37
	mov r3, #0
	bl sub_0802FCDC
	ldr r0, [r4]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r5]
	add r1, r1, r0
	ldr r2, [r1, #40]
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r3, [r1, #26]
	ldr r0, _080305C8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #26]
	ldr r0, [r1, #44]
	asr r0, r0, #8
	strb r0, [r1, #24]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _08030830
_080305BC:
	.4byte 0x03000C18
_080305C0:
	.4byte 0x030001D0
_080305C4:
	.4byte 0x030001D8
_080305C8:
	.4byte 0xFFFFFE00
_080305CC:
	cmp r7, #2
	beq _080305D2
	b _08030750
_080305D2:
	ldr r5, _0803072C  @ =gUnknown_03001BC8
	ldr r0, _08030730  @ =gMiniMariosRescued_03001BA0
	ldrb r0, [r0]
	strb r0, [r5]
	mov r0, #32
	mov r1, #19
	bl sub_08030058
	mov r4, r8
	ldr r3, [r4]
	mov r1, r9
	ldr r0, [r1]
	lsl r1, r3, #3
	add r1, r1, r3
	lsl r1, r1, #3
	add r1, r1, r0
	sub r1, r1, #72
	ldrb r2, [r5]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, #140
	strh r0, [r1, #56]
	ldr r0, _08030734  @ =0x030001E0
	str r3, [r0]
	mov r4, #0
	ldrb r2, [r5]
	cmp r4, r2
	bge _08030670
	add r6, r5, #0
	mov r5, #0
	ldr r3, _08030738  @ =0x00001388
	mov r8, r3
_08030614:
	ldr r0, _0803073C  @ =0x030001D0
	ldr r0, [r0]
	add r0, r4, r0
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	mov r2, r9
	ldr r0, [r2]
	add r7, r0, r1
	strh r4, [r7, #62]
	ldrb r3, [r6]
	add r0, r7, #0
	mov r1, #7
	mov r2, #1
	neg r2, r2
	bl sub_0802FCDC
	ldrh r0, [r7, #56]
	add r0, r0, r5
	strh r0, [r7, #56]
	ldr r2, [r7, #40]
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r0, [r7, #26]
	ldr r3, _08030740  @ =0xFFFFFE00
	add r1, r3, #0
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r7, #26]
	ldr r0, [r7, #44]
	asr r0, r0, #8
	strb r0, [r7, #24]
	add r1, r7, #0
	add r1, r1, #66
	mov r0, #250
	lsl r0, r0, #2
	strh r0, [r1]
	cmp r4, #5
	bne _08030666
	mov r0, r8
	strh r0, [r1]
_08030666:
	add r5, r5, #20
	add r4, r4, #1
	ldrb r1, [r6]
	cmp r4, r1
	blt _08030614
_08030670:
	ldr r5, _0803073C  @ =0x030001D0
	ldr r2, _0803072C  @ =gUnknown_03001BC8
	mov r8, r2
	ldrb r0, [r2]
	ldr r2, [r5]
	add r2, r2, r0
	str r2, [r5]
	ldr r3, _08030744  @ =0x03000C18
	mov r4, r8
	ldrb r1, [r4]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, #240
	str r0, [r3]
	ldr r6, _08030748  @ =0x030001D8
	lsl r1, r2, #3
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r0, [r6]
	add r0, r0, r1
	mov r1, #1
	neg r1, r1
	mov r9, r1
	mov r1, #38
	mov r2, r9
	mov r3, #0
	bl sub_0802FCDC
	ldr r1, [r5]
	lsl r2, r1, #3
	add r2, r2, r1
	lsl r2, r2, #3
	ldr r0, [r6]
	add r2, r2, r0
	add r1, r1, #1
	str r1, [r5]
	ldr r1, [r2, #40]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldr r3, _0803074C  @ =0x000001FF
	mov r10, r3
	mov r4, r10
	and r1, r1, r4
	ldrh r3, [r2, #26]
	ldr r4, _08030740  @ =0xFFFFFE00
	add r0, r4, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #26]
	ldr r0, [r2, #44]
	asr r0, r0, #8
	strb r0, [r2, #24]
	ldr r0, [r5]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r6]
	add r0, r0, r1
	mov r1, #39
	mov r2, r9
	mov r3, #0
	bl sub_0802FCDC
	ldr r3, [r5]
	ldr r0, [r6]
	lsl r1, r3, #3
	add r1, r1, r3
	lsl r1, r1, #3
	add r1, r1, r0
	mov r0, r8
	ldrb r2, [r0]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	ldrh r2, [r1, #56]
	add r0, r0, r2
	strh r0, [r1, #56]
	add r3, r3, #1
	str r3, [r5]
	ldr r0, [r1, #40]
	lsl r0, r0, #8
	lsr r0, r0, #16
	mov r3, r10
	and r0, r0, r3
	ldrh r2, [r1, #26]
	and r4, r4, r2
	orr r4, r4, r0
	strh r4, [r1, #26]
	ldr r0, [r1, #44]
	asr r0, r0, #8
	strb r0, [r1, #24]
	b _08030830
	.byte 0x00
	.byte 0x00
_0803072C:
	.4byte gUnknown_03001BC8
_08030730:
	.4byte gMiniMariosRescued_03001BA0
_08030734:
	.4byte 0x030001E0
_08030738:
	.4byte 0x00001388
_0803073C:
	.4byte 0x030001D0
_08030740:
	.4byte 0xFFFFFE00
_08030744:
	.4byte 0x03000C18
_08030748:
	.4byte 0x030001D8
_0803074C:
	.4byte 0x000001FF
_08030750:
	ldr r0, _08030850  @ =gUnknown_080769B0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	mov r0, r8
	ldr r2, [r0]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #3
	mov r3, r9
	ldr r1, [r3]
	add r7, r1, r0
	add r2, r2, #1
	mov r0, r8
	str r2, [r0]
	ldr r6, _08030854  @ =gUnknown_0807CB68
	lsl r1, r4, #2
	add r1, r1, r4
	lsl r1, r1, #3
	add r1, r1, r6
	mov r2, #4
	ldrsh r0, [r1, r2]
	sub r0, r0, #240
	lsl r0, r0, #8
	str r0, [r7, #32]
	mov r3, #6
	ldrsh r0, [r1, r3]
	lsl r0, r0, #8
	str r0, [r7, #36]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_0802FCDC
	ldr r1, [r7, #40]
	lsl r1, r1, #8
	lsr r1, r1, #16
	mov r0, r10
	and r1, r1, r0
	ldrh r2, [r7, #26]
	ldr r0, _08030858  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r7, #26]
	ldr r0, [r7, #44]
	asr r0, r0, #8
	strb r0, [r7, #24]
	mov r1, r8
	ldr r2, [r1]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #3
	mov r3, r9
	ldr r1, [r3]
	add r7, r1, r0
	add r2, r2, #1
	mov r0, r8
	str r2, [r0]
	add r1, r5, #0
	lsl r2, r1, #2
	add r2, r2, r5
	lsl r2, r2, #3
	add r2, r2, r6
	mov r3, #4
	ldrsh r0, [r2, r3]
	sub r0, r0, #240
	lsl r0, r0, #8
	str r0, [r7, #32]
	mov r4, #6
	ldrsh r0, [r2, r4]
	lsl r0, r0, #8
	str r0, [r7, #36]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0
	bl sub_0802FCDC
	ldr r1, [r7, #40]
	lsl r1, r1, #8
	lsr r1, r1, #16
	mov r0, r10
	and r1, r1, r0
	ldrh r2, [r7, #26]
	ldr r0, _08030858  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r7, #26]
	ldr r0, [r7, #44]
	asr r0, r0, #8
	strb r0, [r7, #24]
	ldr r3, _0803085C  @ =0x030001DC
	mov r1, r8
	ldr r2, [r1]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #3
	mov r4, r9
	ldr r1, [r4]
	add r7, r1, r0
	str r7, [r3]
	add r2, r2, #1
	mov r0, r8
	str r2, [r0]
	mov r2, #1
	neg r2, r2
	add r0, r7, #0
	mov r1, #25
	mov r3, #0
	bl sub_0802FCDC
	mov r0, #50
	strh r0, [r7, #56]
_08030830:
	ldr r2, _08030860  @ =gSpriteHorizontalOffset
	ldr r1, _08030864  @ =gUnknown_030012F4
	mov r0, #0
	strh r0, [r1]
	strh r0, [r2]
	mov r0, #0
	bl sub_080300CC
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08030850:
	.4byte gUnknown_080769B0
_08030854:
	.4byte gUnknown_0807CB68
_08030858:
	.4byte 0xFFFFFE00
_0803085C:
	.4byte 0x030001DC
_08030860:
	.4byte gSpriteHorizontalOffset
_08030864:
	.4byte gUnknown_030012F4
	THUMB_FUNC_END sub_08030408

	THUMB_FUNC_START sub_08030868
sub_08030868: @ 0x08030868
	push {r4-r7,lr}
	add r4, r0, #0
	add r6, r2, #0
	mov r7, #1
	ldr r5, [r4, #20]
	ldrh r1, [r5, #22]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #0
	bne _08030884
	ldrb r1, [r5, #12]
	add r0, r4, #0
	bl sub_080280CC
_08030884:
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #6
	and r0, r0, r1
	cmp r0, #0
	beq _080308A6
	ldr r0, _080308D8  @ =0x030001DC
	ldr r0, [r0]
	cmp r0, #0
	beq _080308A6
	mov r2, #58
	ldrsh r1, [r0, r2]
	mov r3, #56
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _080308A6
	mov r7, #0
_080308A6:
	cmp r6, #0
	bne _080308B4
	ldrh r1, [r5, #22]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803090C
_080308B4:
	cmp r7, #0
	beq _0803090C
	ldrh r2, [r4, #58]
	mov r0, #58
	ldrsh r1, [r4, r0]
	mov r3, #56
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _080308DC
	ldr r1, [r4, #68]
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r2, #0
	bl sub_0802FCDC
	b _080308E0
	.byte 0x00
	.byte 0x00
_080308D8:
	.4byte 0x030001DC
_080308DC:
	add r0, r2, #1
	strh r0, [r4, #58]
_080308E0:
	ldr r0, [r4, #40]
	ldr r1, [r4, #48]
	add r0, r0, r1
	str r0, [r4, #40]
	ldr r1, [r5, #32]
	cmp r1, #0
	beq _08030904
	mov r2, #58
	ldrsh r0, [r4, r2]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #36]
	asr r1, r1, r0
	ldr r0, [r4, #44]
	sub r0, r0, r1
	b _0803090A
_08030904:
	ldr r0, [r4, #44]
	ldr r1, [r4, #52]
	add r0, r0, r1
_0803090A:
	str r0, [r4, #44]
_0803090C:
	ldrh r0, [r5, #22]
	mov r1, #240
	and r1, r1, r0
	cmp r1, #0
	beq _0803091A
	cmp r1, #48
	bne _08030950
_0803091A:
	ldr r1, [r4, #40]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4, #26]
	ldr r0, _08030958  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #26]
	ldr r0, [r4, #44]
	asr r3, r0, #8
	strb r3, [r4, #24]
	ldrh r1, [r5, #22]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	bne _08030950
	ldr r0, [r4]
	mov r2, #10
	ldrsh r1, [r4, r2]
	ldr r2, [r0, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	add r0, r3, r0
	strb r0, [r4, #24]
_08030950:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030958:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08030868

	THUMB_FUNC_START sub_0803095C
sub_0803095C: @ 0x0803095C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #36
	add r7, r0, #0
	mov r9, r1
	str r2, [sp]
	str r3, [sp, #4]
	ldr r0, _080309CC  @ =gSpriteHorizontalOffset
	mov r2, #0
	ldrsh r1, [r0, r2]
	str r1, [sp, #20]
	ldr r0, _080309D0  @ =gUnknown_030012F4
	mov r5, #0
	ldrsh r3, [r0, r5]
	str r3, [sp, #24]
	mov r1, #10
	ldrsh r0, [r7, r1]
	mov r10, r0
	ldr r2, [r7, #20]
	str r2, [sp, #28]
	ldr r3, [r7]
	mov r8, r3
	ldr r2, [r3, #12]
	ldr r0, [r2, #8]
	cmp r0, #0
	blt _08030998
	b _08030B76
_08030998:
	mov r5, r9
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r1, _080309D4  @ =gOamBuffer
	add r4, r0, r1
	add r6, r2, #0
	ldr r0, [r6, #12]
	ldr r1, [r0, #8]
	lsr r0, r1, #24
	str r0, [sp, #8]
	lsr r0, r1, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #12]
	ldr r3, [sp, #8]
	add r2, r3, #0
	mul r2, r0, r2
	str r2, [sp, #16]
	mov r0, #64
	and r1, r1, r0
	cmp r1, #0
	beq _080309D8
	lsl r1, r2, #16
	asr r0, r1, #18
	b _080309DE
	.byte 0x00
	.byte 0x00
_080309CC:
	.4byte gSpriteHorizontalOffset
_080309D0:
	.4byte gUnknown_030012F4
_080309D4:
	.4byte gOamBuffer
_080309D8:
	ldr r5, [sp, #16]
	lsl r1, r5, #16
	asr r0, r1, #19
_080309DE:
	lsl r0, r0, #16
	lsr r3, r0, #16
	str r1, [sp, #32]
	ldr r2, _08030A64  @ =REG_DMA3SAD
	add r0, r7, #0
	add r0, r0, #24
	str r0, [r2]
	str r4, [r2, #4]
	ldr r0, _08030A68  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, [r6, #12]
	mov r5, r10
	lsl r0, r5, #3
	add r0, r0, r10
	lsl r5, r0, #2
	add r1, r1, r5
	mov r12, r1
	ldrb r1, [r1]
	lsl r0, r3, #16
	asr r0, r0, #16
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r6, #20]
	add r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	ldr r1, _08030A6C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r3, [sp, #32]
	asr r0, r3, #16
	cmp r0, #0
	bge _08030A26
	add r0, r0, #3
_08030A26:
	asr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, r12
	ldr r1, [r0, #8]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08030A46
	mov r2, r9
	ldrh r0, [r2]
	bl sub_08041154
_08030A46:
	ldrb r0, [r7, #27]
	lsl r0, r0, #27
	cmp r0, #0
	bge _08030A70
	ldr r1, [r7, #40]
	asr r1, r1, #8
	mov r3, r8
	ldr r0, [r3, #12]
	ldr r0, [r0, #12]
	add r0, r5, r0
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _08030A82
_08030A64:
	.4byte REG_DMA3SAD
_08030A68:
	.4byte 0x84000002
_08030A6C:
	.4byte OBJ_VRAM0
_08030A70:
	ldr r2, [r7, #40]
	asr r2, r2, #8
	mov r1, r8
	ldr r0, [r1, #12]
	ldr r0, [r0, #12]
	add r0, r5, r0
	mov r1, #2
	ldrsb r1, [r0, r1]
	add r1, r1, r2
_08030A82:
	lsl r1, r1, #23
	lsr r1, r1, #23
	ldrh r2, [r4, #2]
	ldr r0, _08030C64  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	ldr r3, [r7, #44]
	mov r2, r8
	ldr r0, [r2, #12]
	ldr r1, [r0, #12]
	mov r5, r10
	lsl r0, r5, #3
	add r0, r0, r10
	lsl r0, r0, #2
	add r0, r0, r1
	asr r3, r3, #8
	ldrb r0, [r0, #3]
	add r3, r3, r0
	strb r3, [r4]
	ldr r0, [r6, #16]
	ldrb r0, [r0, #1]
	mov r1, #32
	and r1, r1, r0
	ldrb r2, [r4, #1]
	mov r0, #33
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #1]
	ldr r1, [r6, #16]
	ldrb r1, [r1, #1]
	lsr r1, r1, #6
	lsl r1, r1, #6
	mov r2, #63
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #1]
	ldr r0, [r6, #16]
	ldrb r0, [r0, #3]
	lsr r0, r0, #6
	lsl r0, r0, #6
	ldrb r1, [r4, #3]
	and r2, r2, r1
	orr r2, r2, r0
	strb r2, [r4, #3]
	ldr r0, [r6, #16]
	ldrb r1, [r0, #5]
	lsr r1, r1, #4
	lsl r1, r1, #4
	ldrb r2, [r4, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #5]
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	mov r5, r8
	ldrb r0, [r5, #8]
	ldr r5, [sp, #8]
	sub r0, r0, r5
	asr r0, r0, #1
	ldr r5, [sp, #20]
	sub r0, r5, r0
	sub r1, r1, r0
	ldr r5, _08030C68  @ =0x000001FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _08030C64  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	mov r1, r8
	ldrb r0, [r1, #9]
	ldr r2, [sp, #12]
	sub r0, r0, r2
	asr r0, r0, #1
	ldr r5, [sp, #24]
	sub r0, r5, r0
	sub r3, r3, r0
	strb r3, [r4]
	ldrh r2, [r4, #4]
	lsl r1, r2, #22
	lsr r1, r1, #22
	ldr r0, [sp]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08030C6C  @ =0x000003FF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, _08030C70  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #4]
	mov r0, #3
	ldr r5, [sp, #28]
	ldrb r1, [r5, #28]
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r2, [r4, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #5]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldr r2, [sp, #32]
	asr r0, r2, #21
	ldr r3, [sp]
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r5, [sp]
	strh r0, [r5]
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	ldr r2, [sp, #16]
	add r0, r0, r2
	strh r0, [r1]
_08030B76:
	ldr r3, _08030C74  @ =REG_DMA3SAD
	add r0, r7, #0
	add r0, r0, #24
	str r0, [r3]
	mov r5, r9
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _08030C78  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _08030C7C  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, r8
	ldr r0, [r1, #12]
	mov r5, r10
	lsl r2, r5, #3
	add r2, r2, r10
	lsl r2, r2, #2
	add r2, r2, r0
	ldrb r1, [r2]
	mov r5, r8
	ldrh r0, [r5, #6]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r5, #20]
	add r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	ldr r1, _08030C80  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r3, #4]
	ldrh r0, [r5, #2]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [r2, #8]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08030BD8
	mov r2, r9
	ldrh r0, [r2]
	bl sub_08041154
_08030BD8:
	mov r3, r9
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r4, r0, r4
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	ldr r5, [sp, #20]
	sub r1, r1, r5
	ldr r3, _08030C68  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, _08030C64  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	ldrb r0, [r4]
	ldr r5, [sp, #24]
	sub r0, r0, r5
	strb r0, [r4]
	ldrh r2, [r4, #4]
	lsl r1, r2, #22
	lsr r1, r1, #22
	ldr r0, [sp]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08030C6C  @ =0x000003FF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, _08030C70  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #4]
	mov r0, #3
	ldr r5, [sp, #28]
	ldrb r1, [r5, #28]
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r2, [r4, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #5]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	mov r2, r8
	ldrh r0, [r2, #4]
	ldr r3, [sp]
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r5, [sp]
	strh r0, [r5]
	ldrh r0, [r2, #2]
	ldr r1, [sp, #4]
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r2, [sp, #4]
	strh r0, [r2]
	add sp, sp, #36
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030C64:
	.4byte 0xFFFFFE00
_08030C68:
	.4byte 0x000001FF
_08030C6C:
	.4byte 0x000003FF
_08030C70:
	.4byte 0xFFFFFC00
_08030C74:
	.4byte REG_DMA3SAD
_08030C78:
	.4byte gOamBuffer
_08030C7C:
	.4byte 0x84000002
_08030C80:
	.4byte OBJ_VRAM0
	THUMB_FUNC_END sub_0803095C

	THUMB_FUNC_START sub_08030C84
sub_08030C84: @ 0x08030C84
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	add r7, r0, #0
	mov r9, r1
	mov r8, r2
	ldr r0, _08030CDC  @ =gUnknown_03000DDC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	str r0, [sp, #8]
	mov r0, #0
	mov r10, r0
	ldr r0, _08030CE0  @ =0x030001D0
	ldr r0, [r0]
	cmp r10, r0
	bge _08030D82
	mov r1, #0
	str r1, [sp, #12]
_08030CB0:
	ldr r0, _08030CE4  @ =0x030001D8
	ldr r0, [r0]
	ldr r2, [sp, #12]
	add r4, r0, r2
	ldr r6, [r4, #20]
	ldrh r1, [r6, #22]
	mov r2, #240
	and r2, r2, r1
	mov r3, #128
	lsl r3, r3, #5
	add r0, r3, #0
	and r1, r1, r0
	cmp r1, #0
	bne _08030D70
	cmp r2, #16
	beq _08030CE8
	cmp r2, #16
	ble _08030D18
	cmp r2, #32
	beq _08030CFE
	b _08030D18
	.byte 0x00
	.byte 0x00
_08030CDC:
	.4byte gUnknown_03000DDC
_08030CE0:
	.4byte 0x030001D0
_08030CE4:
	.4byte 0x030001D8
_08030CE8:
	ldr r0, [r4, #40]
	asr r0, r0, #8
	ldr r1, [r4, #44]
	asr r1, r1, #8
	mov r2, r8
	str r2, [sp]
	add r2, r7, #0
	mov r3, r9
	bl sub_0800A2B8
	b _08030D70
_08030CFE:
	ldr r0, [r4, #40]
	asr r0, r0, #8
	ldr r1, [r4, #44]
	asr r1, r1, #8
	mov r3, r8
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r2, r7, #0
	mov r3, r9
	bl sub_0800A4B4
	b _08030D70
_08030D18:
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _08030D5C  @ =gOamBuffer
	add r5, r0, r1
	add r0, r4, #0
	add r1, r7, #0
	mov r2, r9
	mov r3, r8
	bl sub_0803095C
	ldrh r0, [r6, #22]
	mov r2, #128
	lsl r2, r2, #2
	add r1, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08030D70
	ldrh r1, [r4, #14]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08030D70
	ldr r0, _08030D60  @ =gUnknown_030009D8
	ldrh r1, [r0]
	mov r2, #15
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #3
	bhi _08030D64
	ldrb r0, [r5, #5]
	add r1, r2, #0
	and r1, r1, r0
	mov r0, #128
	b _08030D6C
_08030D5C:
	.4byte gOamBuffer
_08030D60:
	.4byte gUnknown_030009D8
_08030D64:
	ldrb r0, [r5, #5]
	add r1, r2, #0
	and r1, r1, r0
	mov r0, #96
_08030D6C:
	orr r1, r1, r0
	strb r1, [r5, #5]
_08030D70:
	ldr r3, [sp, #12]
	add r3, r3, #72
	str r3, [sp, #12]
	mov r0, #1
	add r10, r10, r0
	ldr r0, _08030D9C  @ =0x030001D0
	ldr r0, [r0]
	cmp r10, r0
	blt _08030CB0
_08030D82:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08030D8C
	bl sub_08009878
_08030D8C:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08030D9C:
	.4byte 0x030001D0
	THUMB_FUNC_END sub_08030C84

	THUMB_FUNC_START sub_08030DA0
sub_08030DA0: @ 0x08030DA0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	mov r4, #0
	ldr r1, _08030DDC  @ =0x030001D0
	ldr r0, [r1]
	cmp r4, r0
	bge _08030DD2
	ldr r0, _08030DE0  @ =0x030001D8
	mov r8, r0
	mov r5, #0
	add r7, r1, #0
_08030DBA:
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, r5
	add r1, r4, #0
	add r2, r6, #0
	bl sub_08030868
	add r5, r5, #72
	add r4, r4, #1
	ldr r0, [r7]
	cmp r4, r0
	blt _08030DBA
_08030DD2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08030DDC:
	.4byte 0x030001D0
_08030DE0:
	.4byte 0x030001D8
	THUMB_FUNC_END sub_08030DA0

	THUMB_FUNC_START sub_08030DE4
sub_08030DE4: @ 0x08030DE4
	bx lr
	THUMB_FUNC_END sub_08030DE4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08030DE8 @ level results plus star get
sub_08030DE8: @ 0x08030DE8
	push {r4,r5,lr}
	ldr r0, _08030E18  @ =0x030001D8
	ldr r2, [r0]
	mov r3, #0
	ldr r0, _08030E1C  @ =0x030001D0
	ldr r0, [r0]
	cmp r3, r0
	bge _08030E28
	add r4, r0, #0
_08030DFA:
	ldr r1, [r2, #68]
	add r0, r1, #0
	sub r0, r0, #51
	cmp r0, #2
	bhi _08030E14
	cmp r1, #51
	bne _08030E20
	mov r0, #58
	ldrsh r1, [r2, r0]
	mov r5, #56
	ldrsh r0, [r2, r5]
	cmp r1, r0
	bge _08030E20
_08030E14:
	mov r0, #0
	b _08030E2A
_08030E18:
	.4byte 0x030001D8
_08030E1C:
	.4byte 0x030001D0
_08030E20:
	add r3, r3, #1
	add r2, r2, #72
	cmp r3, r4
	blt _08030DFA
_08030E28:
	mov r0, #1
_08030E2A:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08030DE8

	THUMB_FUNC_START sub_08030E30
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
