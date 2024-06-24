	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_080379BC
sub_080379BC: @ 0x080379BC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _080379FC  @ =0x030002FC
	lsr r0, r0, #21
	ldr r2, [r2]
	add r2, r2, r0
	mov r4, #0
	strb r4, [r2]
	ldr r0, _08037A00  @ =0x030002F0
	ldr r0, [r0]
	lsl r3, r1, #2
	mov r5, #132
	lsl r5, r5, #1
	add r0, r0, r5
	add r0, r0, r3
	ldr r3, [r0]
	ldrb r0, [r3, #11]
	strb r0, [r2, #1]
	ldrb r0, [r3, #10]
	strb r0, [r2, #5]
	strb r1, [r2, #4]
	strh r4, [r2, #6]
	ldrb r0, [r3, #12]
	strb r0, [r2, #2]
	ldrb r0, [r3, #13]
	strb r0, [r2, #3]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080379FC:
	.4byte 0x030002FC
_08037A00:
	.4byte 0x030002F0
	THUMB_FUNC_END sub_080379BC

		THUMB_FUNC_START print_error_message
print_error_message: @ 0x08037A04
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	add r5, r0, #0
	mov r7, #128
	lsl r7, r7, #19
	mov r0, #128
	strh r0, [r7]
	ldr r0, _08037AC8  @ =0x04000208
	mov r4, #0
	strh r4, [r0]
	bl sub_08071EE4
	mov r0, #1
	neg r0, r0
	mov r10, r0
	bl arena_restore_head
	ldr r0, _08037ACC  @ =gUnknown_08B2AD88
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_080348C8
	ldr r0, _08037AD0  @ =0x08037B05
	bl set_loop_callback_08033EA0
	add r0, sp, #4
	strh r4, [r0]
	mov r1, #160
	lsl r1, r1, #19
	ldr r2, _08037AD4  @ =0x01000100
	bl CpuSet
	ldr r0, _08037AD8  @ =gUnknown_080A86EC
	ldr r1, _08037ADC  @ =OBJ_PLTT
	mov r2, #3
	bl CpuSet
	ldr r6, _08037AE0  @ =0x03000308
	str r5, [r6]
	add r1, sp, #8
	add r0, sp, #12
	mov r9, r0
	mov r5, #0
	strh r5, [r0]
	mov r0, #160
	str r0, [sp, #8]
	ldr r4, _08037AE4  @ =REG_DMA3SAD
	str r1, [r4]
	ldr r1, _08037AE8  @ =gOamBuffer
	mov r8, r1
	str r1, [r4, #4]
	ldr r0, _08037AEC  @ =0x85000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_080351E0
	ldr r0, [r6]
	mov r1, #16
	str r1, [sp]
	ldr r1, _08037AF0  @ =0xFFFF8001
	mov r2, #48
	mov r3, r10
	bl sub_08034CCC
	mov r0, r9
	bl sub_08035108
	mov r0, r8
	str r0, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08037AF4  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08037AF8  @ =0x04000200
	strh r5, [r0]
	ldr r1, _08037AFC  @ =REG_DISPSTAT
	mov r0, #8
	strh r0, [r1]
	mov r1, #138
	lsl r1, r1, #5
	add r0, r1, #0
	strh r0, [r7]
	ldr r0, _08037B00  @ =REG_BLDCNT
	strh r5, [r0]
	add r0, r0, #2
	strh r5, [r0]
	add r0, r0, #2
	strh r5, [r0]
_08037AC2:
	bl wait_for_some_counter_08033EE0
	b _08037AC2
_08037AC8:
	.4byte 0x04000208
_08037ACC:
	.4byte gUnknown_08B2AD88
_08037AD0:
	.4byte sub_08037B04
_08037AD4:
	.4byte 0x01000100
_08037AD8:
	.4byte gUnknown_080A86EC
_08037ADC:
	.4byte OBJ_PLTT
_08037AE0:
	.4byte 0x03000308
_08037AE4:
	.4byte REG_DMA3SAD
_08037AE8:
	.4byte gOamBuffer
_08037AEC:
	.4byte 0x85000100
_08037AF0:
	.4byte 0xFFFF8001
_08037AF4:
	.4byte 0x84000100
_08037AF8:
	.4byte 0x04000200
_08037AFC:
	.4byte REG_DISPSTAT
_08037B00:
	.4byte REG_BLDCNT

		THUMB_FUNC_START sub_08037B04
sub_08037B04: @ 0x08037B04
	push {r4-r6,lr}
	sub sp, sp, #12
	add r6, sp, #8
	mov r0, #0
	strh r0, [r6]
	mov r0, #160
	str r0, [sp, #4]
	ldr r4, _08037B58  @ =REG_DMA3SAD
	add r0, sp, #4
	str r0, [r4]
	ldr r5, _08037B5C  @ =gOamBuffer
	str r5, [r4, #4]
	ldr r0, _08037B60  @ =0x85000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_080351E0
	ldr r0, _08037B64  @ =0x03000308
	ldr r0, [r0]
	ldr r1, _08037B68  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #16
	str r2, [sp]
	mov r2, #48
	bl sub_08034CCC
	add r0, r6, #0
	bl sub_08035108
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08037B6C  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08037B58:
	.4byte REG_DMA3SAD
_08037B5C:
	.4byte gOamBuffer
_08037B60:
	.4byte 0x85000100
_08037B64:
	.4byte 0x03000308
_08037B68:
	.4byte 0xFFFF8001
_08037B6C:
	.4byte 0x84000100
	THUMB_FUNC_END sub_08037B04

	THUMB_FUNC_START sub_08037B70
sub_08037B70: @ 0x08037B70
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	ldr r3, _08037C34  @ =0x04000208
	mov r4, #0
	strh r4, [r3]
	ldr r2, _08037C38  @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08037C3C  @ =0x0000FF3F
	and r0, r0, r1
	strh r0, [r2]
	mov r0, #1
	strh r0, [r3]
	ldr r0, _08037C40  @ =0x04000134
	strh r4, [r0]
	sub r2, r2, #216
	mov r0, #128
	lsl r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _08037C44  @ =0x00004003
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	mov r0, #0
	str r0, [sp]
	ldr r4, _08037C48  @ =0x030017A0
	ldr r2, _08037C4C  @ =0x05000048
	mov r0, sp
	add r1, r4, #0
	bl CpuSet
	mov r0, #1
	neg r0, r0
	str r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #96
	str r0, [r4, #40]
	add r0, r0, #24
	str r0, [r4, #44]
	mov r3, #0
	add r5, r4, #0
	add r5, r5, #192
	mov r2, #0
	mov r7, #48
	add r7, r7, r4
	mov r8, r7
	mov r0, #144
	add r0, r0, r4
	mov r12, r0
	add r6, r4, #0
	add r6, r6, #168
	mov r7, #64
	add r7, r7, r4
	mov r9, r7
_08037BE2:
	lsl r1, r3, #2
	mov r7, r12
	add r0, r2, r7
	mov r7, r8
	add r7, r7, #4
	mov r8, r7
	sub r7, r7, #4
	stm r7!, {r0}
	add r0, r2, r6
	mov r7, r9
	add r7, r7, #4
	mov r9, r7
	sub r7, r7, #4
	stm r7!, {r0}
	add r0, r4, #0
	add r0, r0, #80
	add r1, r1, r0
	str r5, [r1]
	add r5, r5, #72
	add r2, r2, #72
	add r3, r3, #1
	cmp r3, #1
	ble _08037BE2
	mov r0, #0
	ldr r3, _08037C34  @ =0x04000208
	strh r0, [r3]
	ldr r2, _08037C38  @ =0x04000200
	ldrh r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strh r0, [r2]
	mov r0, #1
	strh r0, [r3]
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08037C34:
	.4byte 0x04000208
_08037C38:
	.4byte 0x04000200
_08037C3C:
	.4byte 0x0000FF3F
_08037C40:
	.4byte 0x04000134
_08037C44:
	.4byte 0x00004003
_08037C48:
	.4byte 0x030017A0
_08037C4C:
	.4byte 0x05000048
	THUMB_FUNC_END sub_08037B70

	THUMB_FUNC_START sub_08037C50
sub_08037C50: @ 0x08037C50
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	mov r12, r1
	ldr r6, _08037C74  @ =0x04000128
	ldr r5, [r6]
	ldr r0, _08037C78  @ =0x030017A0
	ldrb r2, [r0, #1]
	add r7, r0, #0
	cmp r2, #1
	beq _08037CE4
	cmp r2, #1
	bgt _08037C7C
	cmp r2, #0
	beq _08037C82
	b _08037D20
	.byte 0x00
	.byte 0x00
_08037C74:
	.4byte 0x04000128
_08037C78:
	.4byte 0x030017A0
_08037C7C:
	cmp r2, #2
	beq _08037D14
	b _08037D20
_08037C82:
	mov r1, #48
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _08037CE0
	mov r0, #136
	add r4, r5, #0
	and r4, r4, r0
	cmp r4, #8
	bne _08037D20
	mov r1, #4
	add r0, r5, #0
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _08037CE0
	ldr r1, [r7, #20]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08037CE0
	ldr r3, _08037CF8  @ =0x04000208
	strh r2, [r3]
	ldr r2, _08037CFC  @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08037D00  @ =0x0000FF7F
	and r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	mov r1, #64
	orr r0, r0, r1
	strh r0, [r2]
	mov r0, #1
	strh r0, [r3]
	ldrb r1, [r6, #1]
	mov r0, #65
	neg r0, r0
	and r0, r0, r1
	strb r0, [r6, #1]
	ldr r1, _08037D04  @ =0x04000202
	mov r0, #192
	strh r0, [r1]
	sub r1, r1, #246
	ldr r0, _08037D08  @ =0x0000B1FC
	str r0, [r1]
	strb r4, [r7]
_08037CE0:
	mov r0, #1
	strb r0, [r7, #1]
_08037CE4:
	ldr r1, _08037D0C  @ =0x030017A0
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _08037D14
	ldrb r0, [r1, #10]
	cmp r0, #7
	bhi _08037D10
	add r0, r0, #1
	strb r0, [r1, #10]
	b _08037D14
_08037CF8:
	.4byte 0x04000208
_08037CFC:
	.4byte 0x04000200
_08037D00:
	.4byte 0x0000FF7F
_08037D04:
	.4byte 0x04000202
_08037D08:
	.4byte 0x0000B1FC
_08037D0C:
	.4byte 0x030017A0
_08037D10:
	mov r0, #2
	strb r0, [r1, #1]
_08037D14:
	mov r0, r12
	bl sub_08037DF0
	mov r0, r8
	bl sub_08037D7C
_08037D20:
	ldr r1, _08037D40  @ =0x030017A0
	ldrb r0, [r1, #11]
	add r0, r0, #1
	strb r0, [r1, #11]
	ldrb r3, [r1, #3]
	ldrb r0, [r1, #2]
	lsl r2, r0, #8
	ldrb r0, [r1]
	add r7, r1, #0
	cmp r0, #8
	bne _08037D44
	mov r0, #128
	orr r0, r0, r2
	orr r0, r0, r3
	b _08037D48
	.byte 0x00
	.byte 0x00
_08037D40:
	.4byte 0x030017A0
_08037D44:
	add r0, r3, #0
	orr r0, r0, r2
_08037D48:
	add r2, r0, #0
	ldrb r0, [r7, #9]
	cmp r0, #0
	beq _08037D56
	mov r0, #128
	lsl r0, r0, #5
	orr r2, r2, r0
_08037D56:
	ldrb r0, [r7, #10]
	lsr r0, r0, #3
	lsl r1, r0, #15
	lsl r0, r5, #26
	lsr r0, r0, #30
	cmp r0, #1
	bls _08037D6E
	mov r0, #128
	lsl r0, r0, #6
	orr r0, r0, r1
	orr r0, r0, r2
	b _08037D72
_08037D6E:
	add r0, r2, #0
	orr r0, r0, r1
_08037D72:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_08037D7C
sub_08037D7C: @ 0x08037D7C
	push {r4,r5,lr}
	mov r5, #0
	ldr r4, _08037DE4  @ =0x030017A0
	ldr r2, [r4, #40]
	ldrb r1, [r4, #11]
	strb r1, [r2]
	ldr r3, [r4, #40]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	eor r1, r1, r2
	strb r1, [r3, #1]
	ldr r1, [r4, #40]
	strh r5, [r1, #2]
	ldr r1, [r4, #40]
	add r1, r1, #4
	ldr r2, _08037DE8  @ =REG_DISPSTAT
	bl CpuSet
	mov r2, #0
	ldr r1, [r4, #40]
_08037DA4:
	ldrh r0, [r1]
	add r5, r5, r0
	add r1, r1, #2
	add r2, r2, #1
	cmp r2, #9
	bls _08037DA4
	add r2, r4, #0
	ldr r1, [r2, #40]
	mvn r0, r5
	sub r0, r0, #12
	strh r0, [r1, #2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08037DC6
	ldr r1, _08037DEC  @ =0x0400010E
	mov r0, #0
	strh r0, [r1]
_08037DC6:
	mov r0, #1
	neg r0, r0
	str r0, [r4, #20]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08037DDE
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08037DDE
	ldr r1, _08037DEC  @ =0x0400010E
	mov r0, #192
	strh r0, [r1]
_08037DDE:
	pop {r4,r5}
	pop {r0}
	bx r0
_08037DE4:
	.4byte 0x030017A0
_08037DE8:
	.4byte REG_DISPSTAT
_08037DEC:
	.4byte 0x0400010E
	THUMB_FUNC_END sub_08037D7C

	THUMB_FUNC_START sub_08037DF0
sub_08037DF0: @ 0x08037DF0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	str r0, [sp, #12]
	mov r1, #0
	str r1, [sp]
	ldr r0, _08037EC0  @ =0x04000208
	strh r1, [r0]
	ldr r3, _08037EC4  @ =0x030017A4
	add r0, sp, #4
	mov r10, r0
	add r1, sp, #8
	mov r9, r1
	add r2, r3, #0
	add r2, r2, #60
	mov r4, #3
_08037E16:
	ldr r1, [r2, #16]
	ldr r0, [r2]
	str r0, [r2, #16]
	stm r2!, {r1}
	sub r4, r4, #1
	cmp r4, #0
	bge _08037E16
	ldr r0, [r3]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [r3]
	ldr r1, _08037EC0  @ =0x04000208
	mov r0, #1
	strh r0, [r1]
	sub r0, r3, #4
	strb r2, [r0, #3]
	mov r4, #0
	mov r8, r0
	mov r7, r8
	add r7, r7, #80
_08037E3E:
	mov r3, #0
	mov r2, #0
	lsl r5, r4, #2
	add r6, r4, #1
	add r0, r5, r7
	ldr r1, [r0]
_08037E4A:
	ldrh r0, [r1]
	add r3, r3, r0
	add r1, r1, #2
	add r2, r2, #1
	cmp r2, #9
	bls _08037E4A
	mov r2, r10
	add r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037E8A
	lsl r0, r3, #16
	asr r0, r0, #16
	mov r1, #13
	neg r1, r1
	cmp r0, r1
	bne _08037E8A
	add r0, r5, r7
	ldr r0, [r0]
	add r0, r0, #4
	lsl r1, r4, #4
	ldr r2, [sp, #12]
	add r1, r2, r1
	ldr r2, _08037EC8  @ =REG_DISPSTAT
	bl CpuSet
	mov r0, #1
	lsl r0, r0, r4
	mov r2, r8
	ldrb r1, [r2, #3]
	orr r0, r0, r1
	strb r0, [r2, #3]
_08037E8A:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, r7
	ldr r1, [r0]
	add r1, r1, #4
	mov r0, r9
	ldr r2, _08037ECC  @ =0x05000004
	bl CpuSet
	add r4, r6, #0
	cmp r4, #1
	ble _08037E3E
	ldr r1, _08037ED0  @ =0x030017A0
	ldrb r0, [r1, #2]
	ldrb r2, [r1, #3]
	orr r0, r0, r2
	strb r0, [r1, #2]
	ldrb r0, [r1, #3]
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08037EC0:
	.4byte 0x04000208
_08037EC4:
	.4byte 0x030017A4
_08037EC8:
	.4byte REG_DISPSTAT
_08037ECC:
	.4byte 0x05000004
_08037ED0:
	.4byte 0x030017A0
	THUMB_FUNC_END sub_08037DF0

	THUMB_FUNC_START sub_08037ED4
sub_08037ED4: @ 0x08037ED4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r0, _08037F10  @ =0x04000120
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r2, _08037F14  @ =0x030017A0
	ldr r3, _08037F18  @ =0x04000128
	ldr r0, [r3]
	lsl r0, r0, #25
	lsr r0, r0, #31
	strb r0, [r2, #9]
	ldr r1, [r2, #20]
	mov r0, #1
	neg r0, r0
	mov r12, r2
	cmp r1, r0
	bne _08037F20
	ldr r0, _08037F1C  @ =0x0000FEFE
	strh r0, [r3, #2]
	ldr r1, [r2, #44]
	ldr r0, [r2, #40]
	str r0, [r2, #44]
	str r1, [r2, #40]
	b _08037F30
_08037F10:
	.4byte 0x04000120
_08037F14:
	.4byte 0x030017A0
_08037F18:
	.4byte 0x04000128
_08037F1C:
	.4byte 0x0000FEFE
_08037F20:
	cmp r1, #0
	blt _08037F30
	mov r2, r12
	ldr r0, [r2, #44]
	lsl r1, r1, #1
	add r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r3, #2]
_08037F30:
	mov r1, r12
	ldr r0, [r1, #20]
	cmp r0, #10
	bgt _08037F3C
	add r0, r0, #1
	str r0, [r1, #20]
_08037F3C:
	mov r2, #0
	mov r8, r2
	mov r10, r12
	mov r9, r2
	mov r6, r12
	add r6, r6, #24
	mov r5, sp
_08037F4A:
	ldrh r0, [r5]
	mov r1, r8
	lsl r7, r1, #2
	ldr r2, _08037F64  @ =0x0000FEFE
	cmp r0, r2
	bne _08037F68
	ldr r0, [r6]
	cmp r0, #9
	ble _08037F68
	mov r0, #1
	neg r0, r0
	str r0, [r6]
	b _08037F96
_08037F64:
	.4byte 0x0000FEFE
_08037F68:
	mov r0, r10
	add r0, r0, #48
	mov r1, r9
	add r4, r1, r0
	ldr r2, [r6]
	ldr r3, [r4]
	lsl r0, r2, #1
	add r0, r0, r3
	ldrh r1, [r5]
	strh r1, [r0]
	cmp r2, #9
	bne _08037F96
	mov r0, r12
	add r0, r0, #64
	add r0, r7, r0
	ldr r1, [r0]
	str r3, [r0]
	str r1, [r4]
	mov r0, r12
	add r0, r0, #4
	add r0, r0, r8
	mov r1, #1
	strb r1, [r0]
_08037F96:
	ldr r0, [r6]
	cmp r0, #10
	bgt _08037FA0
	add r0, r0, #1
	str r0, [r6]
_08037FA0:
	mov r2, #4
	add r9, r9, r2
	add r6, r6, #4
	add r5, r5, #2
	mov r0, #1
	add r8, r8, r0
	mov r1, r8
	cmp r1, #1
	ble _08037F4A
	mov r2, r12
	ldrb r0, [r2]
	cmp r0, #8
	bne _08037FCE
	ldr r3, _08037FE0  @ =0x0400010E
	mov r0, #0
	strh r0, [r3]
	ldr r2, _08037FE4  @ =0x04000128
	ldrh r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strh r0, [r2]
	mov r0, #192
	strh r0, [r3]
_08037FCE:
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
_08037FE0:
	.4byte 0x0400010E
_08037FE4:
	.4byte 0x04000128
	THUMB_FUNC_END sub_08037ED4

	THUMB_FUNC_START sub_08037FE8
sub_08037FE8: @ 0x08037FE8
	ldr r1, _08037FF0  @ =0x030017A0
	mov r0, #0
	strb r0, [r1, #1]
	bx lr
_08037FF0:
	.4byte 0x030017A0
	THUMB_FUNC_END sub_08037FE8

	THUMB_FUNC_START sub_08037FF4
sub_08037FF4: @ 0x08037FF4
	push {lr}
	ldr r1, _08038008  @ =0x030017A0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08038002
	mov r0, #1
	strb r0, [r1, #8]
_08038002:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08038008:
	.4byte 0x030017A0
	THUMB_FUNC_END sub_08037FF4

	THUMB_FUNC_START sub_0803800C
sub_0803800C: @ 0x0803800C
	push {r4,lr}
	ldr r3, _08038040  @ =0x04000208
	mov r4, #0
	strh r4, [r3]
	ldr r2, _08038044  @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08038048  @ =0x0000FF3F
	and r0, r0, r1
	strh r0, [r2]
	mov r0, #1
	strh r0, [r3]
	ldr r1, _0803804C  @ =0x04000128
	ldr r2, _08038050  @ =0x00002003
	add r0, r2, #0
	strh r0, [r1]
	sub r1, r1, #28
	ldr r0, _08038054  @ =0x0000B1FC
	str r0, [r1]
	add r1, r1, #246
	mov r0, #192
	strh r0, [r1]
	ldr r0, _08038058  @ =0x030017A0
	strb r4, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
_08038040:
	.4byte 0x04000208
_08038044:
	.4byte 0x04000200
_08038048:
	.4byte 0x0000FF3F
_0803804C:
	.4byte 0x04000128
_08038050:
	.4byte 0x00002003
_08038054:
	.4byte 0x0000B1FC
_08038058:
	.4byte 0x030017A0
	THUMB_FUNC_END sub_0803800C

	THUMB_FUNC_START sub_0803805C
sub_0803805C: @ 0x0803805C
	push {r4,r5,lr}
	lsl r0, r0, #16
	lsr r3, r0, #16
	ldr r0, _08038080  @ =0x030018C0
	add r1, r0, #0
	add r1, r1, #36
	ldrb r4, [r1]
	add r5, r1, #0
	ldr r1, [r0, #52]
	add r2, r0, #0
	cmp r1, #5
	bhi _080380A0
	lsl r0, r1, #2
	ldr r1, _08038084  @ =0x08038088
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_08038080:
	.4byte 0x030018C0
_08038084:
	.4byte _08038088
_08038088:
	.4byte _080380A0
	.4byte _080380B8
	.4byte _080380C4
	.4byte _080380D6
	.4byte _08038124
	.4byte _080380CC
_080380A0:
	cmp r4, #5
	bne _080380A8
	mov r0, #1
	b _08038126
_080380A8:
	cmp r4, #6
	bne _08038128
	cmp r3, #0
	beq _080380B4
	mov r0, #2
	b _08038126
_080380B4:
	mov r0, #1
	b _08038126
_080380B8:
	cmp r4, #6
	bne _08038128
	cmp r3, #0
	beq _08038128
	mov r0, #2
	b _08038126
_080380C4:
	cmp r4, #6
	beq _08038128
	mov r0, #3
	b _08038126
_080380CC:
	sub r0, r4, #7
	cmp r0, #1
	bhi _08038128
	mov r0, #3
	str r0, [r2, #52]
_080380D6:
	sub r0, r4, #7
	cmp r0, #1
	bhi _08038120
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080380FA
	add r0, r5, #4
	ldr r3, _08038110  @ =0x030018C0
	ldrb r1, [r5, #1]
	lsl r2, r1, #1
	add r2, r2, r1
	lsl r2, r2, #2
	ldr r1, [r3, #56]
	add r1, r1, r2
	ldrb r2, [r5, #2]
	lsr r2, r2, #1
	bl CpuSet
_080380FA:
	cmp r4, #8
	beq _08038114
	ldr r2, _08038110  @ =0x030018C0
	ldr r1, [r2, #72]
	ldr r0, [r2, #64]
	cmp r1, r0
	bge _08038128
	ldrb r0, [r5, #1]
	add r0, r0, #1
	str r0, [r2, #72]
	b _08038128
_08038110:
	.4byte 0x030018C0
_08038114:
	ldr r1, _0803811C  @ =0x030018C0
	mov r0, #4
	str r0, [r1, #52]
	b _08038128
_0803811C:
	.4byte 0x030018C0
_08038120:
	mov r0, #5
	b _08038126
_08038124:
	mov r0, #0
_08038126:
	str r0, [r2, #52]
_08038128:
	mov r0, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803805C

	THUMB_FUNC_START sub_08038130
sub_08038130: @ 0x08038130
	push {r4-r6,lr}
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r1, _08038188  @ =0x030018C0
	ldr r3, _0803818C  @ =gUnknown_080A86F4
	ldr r2, [r1, #52]
	add r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1, #4]
	cmp r6, #0
	bne _0803814E
	cmp r2, #1
	bne _0803814E
	ldrb r0, [r3]
	strb r0, [r1, #4]
_0803814E:
	ldr r0, [r1, #52]
	cmp r0, #3
	beq _08038158
	cmp r0, #5
	bne _0803815C
_08038158:
	ldr r0, [r1, #72]
	strb r0, [r1, #5]
_0803815C:
	ldr r4, _08038190  @ =0x030018C4
	add r1, r4, #0
	add r1, r1, #16
	add r0, r4, #0
	bl sub_08037C50
	sub r4, r4, #4
	str r0, [r4]
	mov r5, #192
	lsl r5, r5, #6
	and r5, r5, r0
	cmp r5, #0
	beq _08038198
	mov r0, #60
	str r0, [r4, #68]
	ldr r1, _08038194  @ =gEReaderSendTextPointers
	ldr r0, [r4, #52]
	add r0, r0, r1
	ldrb r0, [r0]
	str r0, [r4, #52]
	b _080381DC
	.byte 0x00
	.byte 0x00
_08038188:
	.4byte 0x030018C0
_0803818C:
	.4byte gUnknown_080A86F4
_08038190:
	.4byte 0x030018C4
_08038194:
	.4byte gEReaderSendTextPointers
_08038198:
	cmp r0, #0
	beq _080381D8
	bl sub_08037FF4
	ldr r0, [r4]
	mov r2, #15
	add r1, r0, #0
	and r1, r1, r2
	lsr r0, r0, #8
	and r0, r0, r2
	cmp r1, r0
	bne _080381BA
	add r0, r6, #0
	bl sub_0803805C
	str r5, [r4, #68]
	b _080381DC
_080381BA:
	ldr r0, [r4, #68]
	cmp r0, #59
	bgt _080381C6
	add r0, r0, #1
	str r0, [r4, #68]
	b _080381DC
_080381C6:
	ldr r0, _080381D4  @ =gEReaderSendTextPointers
	ldr r1, [r4, #52]
	add r1, r1, r0
	ldrb r0, [r1]
	str r0, [r4, #52]
	b _080381DC
	.byte 0x00
	.byte 0x00
_080381D4:
	.4byte gEReaderSendTextPointers
_080381D8:
	bl sub_08037FE8
_080381DC:
	mov r0, #0
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08038130

	THUMB_FUNC_START sub_080381E4
sub_080381E4: @ 0x080381E4
	push {r4-r6,lr}
	sub sp, sp, #4
	add r6, r0, #0
	add r5, r1, #0
	bl sub_08037B70
	bl sub_08037FF4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r4, _08038220  @ =0x030018C0
	ldr r2, _08038224  @ =0x0100002A
	mov r0, sp
	add r1, r4, #0
	bl CpuSet
	mov r0, #0
	str r0, [r4, #52]
	str r6, [r4, #56]
	str r5, [r4, #60]
	add r0, r5, #0
	mov r1, #12
	bl __udivsi3
	str r0, [r4, #64]
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_08038220:
	.4byte 0x030018C0
_08038224:
	.4byte 0x0100002A
	THUMB_FUNC_END sub_080381E4

	THUMB_FUNC_START sub_08038228
sub_08038228: @ 0x08038228
	push {lr}
	add r3, r0, #0
	ldr r2, _08038248  @ =0x030018C0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	bne _0803825E
	cmp r3, #1
	bne _0803824C
	ldr r0, [r2, #52]
	cmp r0, #1
	bls _0803825E
_08038244:
	mov r0, #1
	b _08038260
_08038248:
	.4byte 0x030018C0
_0803824C:
	cmp r3, #2
	bne _08038258
	ldr r0, [r2, #68]
	cmp r0, #0
	ble _0803825E
	b _08038244
_08038258:
	ldr r0, [r2, #52]
	cmp r0, #0
	bne _08038244
_0803825E:
	mov r0, #0
_08038260:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08038228

	THUMB_FUNC_START sub_08038264
sub_08038264: @ 0x08038264
	push {lr}
	ldr r0, _08038274  @ =0x030018C0
	ldr r0, [r0, #52]
	cmp r0, #4
	beq _08038278
	mov r0, #0
	b _0803827A
	.byte 0x00
	.byte 0x00
_08038274:
	.4byte 0x030018C0
_08038278:
	mov r0, #1
_0803827A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08038264

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08038280
sub_08038280: @ 0x08038280
	ldr r0, _08038290  @ =0x030018C0
	mov r1, #3
	str r1, [r0, #52]
	mov r1, #0
	str r1, [r0, #76]
	str r1, [r0, #72]
	bx lr
	.byte 0x00
	.byte 0x00
_08038290:
	.4byte 0x030018C0
	THUMB_FUNC_END sub_08038280

	THUMB_FUNC_START sub_08038294
sub_08038294: @ 0x08038294
	ldr r1, _080382A0  @ =0x030018C0
	mov r0, #0
	str r0, [r1, #52]
	str r0, [r1, #68]
	bx lr
	.byte 0x00
	.byte 0x00
_080382A0:
	.4byte 0x030018C0
	THUMB_FUNC_END sub_08038294

	THUMB_FUNC_START sub_080382A4
sub_080382A4: @ 0x080382A4
	bx lr
	THUMB_FUNC_END sub_080382A4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080382A8
sub_080382A8: @ 0x080382A8
	push {lr}
	bl sub_0803800C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080382A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080382B4
sub_080382B4: @ 0x080382B4
	push {r4,lr}
	lsl r0, r0, #16
	ldr r2, _080382E4  @ =0x030018C0
	ldr r4, _080382E8  @ =gUnknown_080A86F4
	ldr r3, [r2, #52]
	add r1, r3, r4
	ldrb r1, [r1]
	strb r1, [r2, #4]
	cmp r0, #0
	bne _080382D0
	cmp r3, #1
	bne _080382D0
	ldrb r0, [r4]
	strb r0, [r2, #4]
_080382D0:
	ldr r0, [r2, #52]
	cmp r0, #3
	beq _080382DA
	cmp r0, #5
	bne _080382DE
_080382DA:
	ldr r0, [r2, #72]
	strb r0, [r2, #5]
_080382DE:
	pop {r4}
	pop {r0}
	bx r0
_080382E4:
	.4byte 0x030018C0
_080382E8:
	.4byte gUnknown_080A86F4
	THUMB_FUNC_END sub_080382B4

	THUMB_FUNC_START sub_080382EC
sub_080382EC: @ 0x080382EC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	mov r8, r0
	add r7, r1, #0
	mov r9, r2
	add r6, r3, #0
	cmp r6, #255
	beq _0803831E
	mov r4, r8
	add r4, r4, #156
	ldr r0, [r4]
	mov r5, #1
	neg r5, r5
	cmp r0, r5
	beq _08038314
	bl sub_08071D9C
_08038314:
	str r5, [r4]
	mov r1, r8
	add r1, r1, #70
	mov r0, #0
	strh r0, [r1]
_0803831E:
	cmp r7, #0
	ble _08038406
	cmp r6, #255
	beq _08038406
	mov r0, #128
	lsl r0, r0, #1
	mov r1, r9
	and r0, r0, r1
	mov r1, #8
	cmp r0, #0
	beq _08038336
	mov r1, #20
_08038336:
	add r6, r1, #0
	mov r2, r8
	ldr r0, [r2, #32]
	asr r0, r0, #8
	ldr r1, _08038374  @ =gSpriteHorizontalOffset
	mov r2, #0
	ldrsh r1, [r1, r2]
	sub r0, r0, r1
	cmp r0, #0
	bge _0803834C
	mov r0, #0
_0803834C:
	cmp r0, #240
	ble _08038352
	mov r0, #240
_08038352:
	add r0, r0, #8
	asr r5, r0, #1
	sub r2, r7, #1
	cmp r2, #6
	bne _080383B6
	ldr r0, _08038378  @ =0x0300030C
	ldr r1, _0803837C  @ =gGeneralTimer
	ldr r0, [r0]
	ldr r1, [r1]
	sub r0, r0, r1
	sub r0, r0, #1
	cmp r0, #49
	bls _08038384
	ldr r1, _08038380  @ =0x03000310
	mov r0, #0
	str r0, [r1]
	b _080383AC
_08038374:
	.4byte gSpriteHorizontalOffset
_08038378:
	.4byte 0x0300030C
_0803837C:
	.4byte gGeneralTimer
_08038380:
	.4byte 0x03000310
_08038384:
	ldr r4, _080383F0  @ =0x03000310
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	cmp r0, #2
	ble _08038394
	mov r0, #1
	str r0, [r4]
_08038394:
	bl sub_0804A244
	mov r1, #1
	and r1, r1, r0
	ldr r2, _080383F4  @ =gUnknown_080B51C0
	lsl r1, r1, #2
	ldr r0, [r4]
	lsl r0, r0, #3
	add r1, r1, r0
	add r1, r1, r2
	ldr r0, [r1]
	add r7, r0, #1
_080383AC:
	ldr r0, _080383F8  @ =0x0300030C
	ldr r1, _080383FC  @ =gGeneralTimer
	ldr r1, [r1]
	str r1, [r0]
	sub r2, r7, #1
_080383B6:
	lsl r3, r5, #24
	lsr r3, r3, #24
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r2, #0
	add r1, r6, #0
	mov r2, #16
	bl play_sound_effect_08071990
	mov r2, r8
	add r2, r2, #156
	str r0, [r2]
	mov r0, #4
	and r0, r0, r6
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _08038400
	mov r0, #1
	neg r0, r0
	str r0, [r2]
	mov r0, r8
	add r0, r0, #70
	strh r1, [r0]
	b _08038406
	.byte 0x00
	.byte 0x00
_080383F0:
	.4byte 0x03000310
_080383F4:
	.4byte gUnknown_080B51C0
_080383F8:
	.4byte 0x0300030C
_080383FC:
	.4byte gGeneralTimer
_08038400:
	mov r0, r8
	add r0, r0, #70
	strh r7, [r0]
_08038406:
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080382EC
