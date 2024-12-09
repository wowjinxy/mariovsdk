	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	.GLOBAL sound_arm_2_start
sound_arm_2_start:

@ struct Struct080714B8
@ {
@     void *unk0;
@     void *samplePtr;
@     u32 unk8;
@     u32 unkC;
@     u32 unk10;
@     u32 unk14;
@     u32 unk18;
@     u32 unk1C;
@     u32 unk20;
@ };

	ARM_FUNC_START audio_related_08001840
audio_related_08001840:
_08001840:
	push {r4-r11}
	mov r12, r0
	ldm r12, {r0-r8}
	mla r10, r3, r6, r2
	add r6, r0, r6, lsl #2
	cmp r3, #0
	blt _0800191C
	cmp r10, r4
	bge _080018C0
_08001864:
	lsr r10, r2, #14
	ldrsb r9, [r1, r10]
	ldrsh r10, [r0]
	mul r11, r7, r9
	add r10, r10, r11, asr #6
	strh r10, [r0], #2
	ldrsh r10, [r0]
	mul r11, r8, r9
	add r10, r10, r11, asr #6
	strh r10, [r0], #2
	add r2, r2, r3
	cmp r0, r6
	blt _08001864
	b _080018FC
_0800189C:
	teq r5, #0
	beq _080018FC
	tst r5, #1
	subeq r2, r2, r5, asr #1
	beq _080018C8
	rsb r2, r2, r4, lsl #1
	sub r4, r4, r5, asr #1
	mvn r3, r3
	b _08001928
_080018C0:
	cmp r2, r4
	bge _0800189C
_080018C8:
	lsr r10, r2, #14
	ldrsb r9, [r1, r10]
	ldrsh r10, [r0]
	mul r11, r7, r9
	add r10, r10, r11, asr #6
	strh r10, [r0], #2
	ldrsh r10, [r0]
	mul r11, r8, r9
	add r10, r10, r11, asr #6
	strh r10, [r0], #2
	add r2, r2, r3
	cmp r0, r6
	blt _080018C0
_080018FC:
	str r2, [r12, #8]
	str r3, [r12, #12]
	pop {r4-r11}
	bx lr
_0800190C:
	rsb r2, r2, r4, lsl #1
	add r4, r4, r5, asr #1
	mvn r3, r3
	b _080018C0
_0800191C:
	sub r4, r4, r5, asr #1
	cmp r10, r4
	bgt _08001864
_08001928:
	cmp r2, r4
	ble _0800190C
	lsr r10, r2, #8
	ldrsb r9, [r1, r10]
	ldrsh r10, [r0]
	mul r11, r7, r9
	add r10, r10, r11, asr #6
	strh r10, [r0], #2
	ldrsh r10, [r0]
	mul r11, r8, r9
	add r10, r10, r11, asr #6
	strh r10, [r0], #2
	add r2, r2, r3
	cmp r0, r6
	blt _08001928
	b _080018FC

	ARM_FUNC_START sub_08001968
sub_08001968:
	push {r4-r11,lr}
	ldrsh r4, [r0, #38]
	ldr r5, [r0, #64]
	ldrsh r9, [r0, #70]
	cmp r9, #0
	blt _080019C8
	ldr r6, =gUnknown_08B39C1C
	ldrb r7, [r5, #40]
	lsr r8, r9, #2
	add r8, r8, r7, lsl #6
	ldrb r7, [r5, #42]
	ldr r6, [r6, r8, lsl #2]
	mul r6, r7, r6
	add r4, r4, r6, asr #16
	cmp r4, #40
	movlt r4, #40
	cmp r4, #0x1e00
	movgt r4, #0x1e00
	cmp r3, #0
	beq _080019C8
	ldrb r7, [r5, #41]
	add r9, r9, r7
	and r9, r9, #255
	strh r9, [r0, #70]
_080019C8:
	rsb r4, r4, #0x1e00
	ldr r6, =gUnknown_08B39F48
	lsr r9, r4, #8
	ldr r6, [r6, r9, lsl #2]
	ldr r7, =gUnknown_08B3961C
	and r8, r6, #768
	and r4, r4, #255
	orr r4, r4, r8
	lsl r4, r4, #1
	ldrh r4, [r7, r4]
	and r6, r6, #15
	rsb r6, r6, #7
	lsl r4, r4, #2
	lsr r4, r4, r6
	mov r4, r4
	ldrsb r6, [r0, #44]
	ldrh r7, [r0, #48]
	ldrb r8, [r0, #1]
	ldrsb r9, [r0, #47]
	mul r6, r7, r6
	asr r6, r6, #16
	mul r6, r8, r6
	mul r6, r9, r6
	asrs r6, r6, #12
	movlt r6, #0
	cmp r6, #64
	movgt r6, #64
	ldrsb r9, [r0, #45]
	cmp r9, #0
	movlt r9, #0
	cmp r9, #64
	movgt r9, #64
	strb r9, [r0, #45]
	ldrb r12, [r5, #15]
	ldr r3, [r0, #32]
	ldr r8, [r5]
	mov r10, #2
	cmp r12, #0
	subeq r10, r10, #1
	cmp r3, r8, lsl #6
	subge r10, r10, #1
	cmp r10, #0
	moveq r6, #0
	ldrb r10, [r0, #29]
	ands r10, r10, #1
	moveq r6, #0
	orr r10, r10, r6, lsl #1
	strb r10, [r0, #29]
	ldr r10, =gVolume_03001F24
	ldr r10, [r10]
	mul r6, r10, r6
	asrs r6, r6, #7
	bne _08001AD8
	mla r3, r4, r2, r3
	cmp r12, #0
	bne _08001AB4
	cmp r3, r8, lsl #6
	lslgt r3, r8, #6
	b _08001B84
_08001AB4:
	ldr r6, [r5, #8]
	ldr r7, [r5, #4]
	add r7, r7, r6
	cmp r3, r7, lsl #6
	blt _08001B84
_08001AC8:
	sub r3, r3, r6, lsl #6
	cmp r3, r7
	bge _08001AC8
	b _08001B84
_08001AD8:
	mov r7, r2
	mov r2, r5
	mov r11, r6
	cmp r12, #0
	bne _08001AF8
	mov r5, r8
	mov r6, #0
	b _08001B10
_08001AF8:
	ldr r5, [r2, #4]
	ldr r6, [r2, #8]
	add r5, r5, r6
	lsl r6, r6, #7
	cmp r12, #1
	orrne r6, r6, #1
_08001B10:
	lsl r5, r5, #6
	cmp r9, #0
	blt _08001B50
	ldr r10, =gUnknown_08B3A0A8
	rsb r8, r9, #64
	mul r8, r11, r8
	asr r8, r8, #5
	lsl r8, r8, #1
	ldrh r8, [r10, r8]
	mul r9, r11, r9
	asr r9, r9, #5
	lsl r9, r9, #1
	ldrh r9, [r10, r9]
	asr r8, r8, #1
	asr r9, r9, #1
	b _08001B58
_08001B50:
	mov r8, r11
	rsb r9, r8, #0
_08001B58:
	ldr r2, [r2, #44]
	push {r1-r9}
	mov r4, r0
	mov r0, sp
	bl _08001840
	mov r0, r4
	ldr r3, [sp, #8]
	ldr r4, [sp, #12]
	asr r4, r4, #31
	strh r4, [r0, #30]
	add sp, sp, #36
_08001B84:
	str r3, [r0, #32]
	pop {r4-r11,lr}
	bx lr
	.pool
ARM_FUNC_END audio_related_08001840

