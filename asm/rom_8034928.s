	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_08034928
sub_08034928: @ 0x08034928
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #48
	str r0, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #12]
	ldr r2, _080349C4  @ =gUnknown_03001770
	ldrb r0, [r2, #20]
	str r0, [sp, #24]
	ldrb r3, [r2, #22]
	str r3, [sp, #28]
	ldr r0, [r2]
	ldrb r0, [r0, #11]
	str r0, [sp, #16]
	ldr r4, [sp, #84]
	mov r12, r4
	ldr r0, [sp, #88]
	str r0, [sp, #20]
	add r3, r1, #0
	ldr r1, [sp, #8]
	cmp r3, r1
	bne _0803495C
	b _08034A80
_0803495C:
	ldrb r1, [r3]
	cmp r1, #0
	bne _08034964
	b _08034A80
_08034964:
	mov r4, #16
	ldr r0, [sp, #96]
	and r4, r4, r0
	str r4, [sp, #36]
_0803496C:
	cmp r1, #10
	bne _080349C8
	ldr r0, [sp, #20]
	ldr r1, [sp, #16]
	add r0, r0, r1
	str r0, [sp, #20]
	ldr r2, [sp, #12]
	mov r12, r2
	add r4, r3, #1
	mov r10, r4
	ldr r0, [sp, #36]
	cmp r0, #0
	beq _08034A70
	mov r5, sp
	mov r4, #0
	mov r2, r10
	ldrb r1, [r3, #1]
	cmp r1, #0
	beq _080349B8
	cmp r1, #10
	beq _080349B8
	ldr r0, _080349C4  @ =gUnknown_03001770
	ldr r3, [r0, #16]
	ldr r1, [r0]
_0803499C:
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r1
	ldr r0, [r0, #16]
	add r4, r4, r0
	add r2, r2, #1
	ldrb r0, [r2]
	cmp r0, #0
	beq _080349B8
	cmp r0, #10
	bne _0803499C
_080349B8:
	str r4, [r5]
	ldr r0, [sp]
	ldr r1, [sp, #80]
	sub r0, r1, r0
	asr r0, r0, #1
	b _08034A6E
_080349C4:
	.4byte gUnknown_03001770
_080349C8:
	ldrb r0, [r3]
	ldr r2, _08034AA4  @ =gUnknown_03001770
	ldr r1, [r2, #16]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, #12
	ldr r1, [r2]
	add r0, r0, r1
	mov r9, r0
	ldr r0, [r0, #4]
	add r0, r0, r12
	mov r8, r0
	ldr r4, [sp, #16]
	ldr r0, [sp, #20]
	add r4, r4, r0
	str r4, [sp, #32]
	mov r2, r9
	ldr r0, [r2]
	add r7, r1, r0
	ldr r1, [sp, #20]
	add r3, r3, #1
	mov r10, r3
	cmp r1, r4
	bge _08034A6A
_080349FC:
	mov r5, r12
	add r3, r1, #1
	str r3, [sp, #44]
	cmp r12, r8
	bge _08034A62
	asr r0, r1, #3
	ldr r2, [sp, #92]
	add r4, r0, #0
	mul r4, r2, r4
	str r4, [sp, #40]
	mov r6, #7
	and r6, r6, r1
	ldr r3, [sp, #24]
	lsl r6, r6, r3
_08034A18:
	add r1, r5, #0
	ldr r4, [sp, #24]
	asr r1, r1, r4
	add r0, r4, #0
	add r0, r0, #3
	lsl r1, r1, r0
	ldr r0, [sp, #40]
	add r1, r1, r0
	add r2, r5, #0
	ldr r3, [sp, #28]
	and r2, r2, r3
	add r2, r2, r6
	add r2, r2, r1
	ldrb r4, [r7]
	mov r1, #1
	add r0, r2, #0
	and r0, r0, r1
	lsl r0, r0, #3
	lsl r4, r4, r0
	mov r1, #8
	sub r1, r1, r0
	mov r3, #255
	lsl r3, r3, #16
	lsl r3, r3, r1
	lsr r3, r3, #16
	asr r2, r2, #1
	lsl r2, r2, #1
	ldr r0, [sp, #4]
	add r2, r0, r2
	ldrh r0, [r2]
	and r0, r0, r3
	orr r0, r0, r4
	strh r0, [r2]
	add r5, r5, #1
	add r7, r7, #1
	cmp r5, r8
	blt _08034A18
_08034A62:
	ldr r1, [sp, #44]
	ldr r2, [sp, #32]
	cmp r1, r2
	blt _080349FC
_08034A6A:
	mov r3, r9
	ldr r0, [r3, #4]
_08034A6E:
	add r12, r12, r0
_08034A70:
	mov r3, r10
	ldr r4, [sp, #8]
	cmp r10, r4
	beq _08034A80
	ldrb r1, [r3]
	cmp r1, #0
	beq _08034A80
	b _0803496C
_08034A80:
	ldr r0, _08034AA8  @ =0x0000FFFF
	mov r1, r12
	and r1, r1, r0
	ldr r2, [sp, #20]
	and r2, r2, r0
	lsl r0, r2, #16
	orr r1, r1, r0
	mov r12, r1
	mov r0, r12
	add sp, sp, #48
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08034AA4:
	.4byte gUnknown_03001770
_08034AA8:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08034928

	THUMB_FUNC_START sub_08034AAC
sub_08034AAC: @ 0x08034AAC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #76
	mov r10, r0
	str r1, [sp, #40]
	mov r9, r2
	str r3, [sp, #44]
	ldr r3, _08034C34  @ =gUnknown_03001770
	ldr r1, [r3]
	ldrb r0, [r1, #11]
	str r0, [sp, #28]
	ldr r2, [sp, #108]
	lsl r0, r2, #28
	lsr r0, r0, #16
	str r0, [sp, #68]
	add r4, sp, #24
	mov r12, r4
	mov r0, sp
	add r0, r0, #28
	str r0, [sp, #72]
	ldrb r6, [r1, #11]
	mov r5, #0
	str r5, [sp, #32]
	mov r2, r10
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034B3E
	add r1, sp, #32
	mov r8, r1
	add r7, r3, #0
_08034AEE:
	mov r1, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034B1A
	cmp r0, #10
	beq _08034B1A
	ldr r4, [r7, #16]
	ldr r3, [r7]
_08034AFE:
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r4
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r3
	ldr r0, [r0, #16]
	add r1, r1, r0
	add r2, r2, #1
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034B1A
	cmp r0, #10
	bne _08034AFE
_08034B1A:
	mov r3, r8
	str r1, [r3]
	ldr r0, [sp, #32]
	cmp r0, r5
	ble _08034B26
	add r5, r0, #0
_08034B26:
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034B3E
	cmp r0, #10
	bne _08034B36
	ldr r0, [r7]
	ldrb r0, [r0, #11]
	add r6, r6, r0
_08034B36:
	add r2, r2, #1
	ldrb r0, [r2]
	cmp r0, #0
	bne _08034AEE
_08034B3E:
	ldr r7, _08034C34  @ =gUnknown_03001770
	ldrb r0, [r7, #20]
	mov r1, #3
	sub r0, r1, r0
	lsl r5, r5, r0
	mov r4, r12
	str r5, [r4]
	ldr r0, [sp, #72]
	str r6, [r0]
	mov r0, #64
	ldr r2, [sp, #108]
	and r0, r0, r2
	cmp r0, #0
	beq _08034B62
	ldr r0, [sp, #28]
	mov r3, r9
	sub r3, r3, r0
	mov r9, r3
_08034B62:
	ldrb r0, [r7, #20]
	sub r0, r1, r0
	ldr r1, [sp, #24]
	add r6, r1, #0
	asr r6, r6, r0
	mov r0, #7
	ldr r4, [sp, #40]
	and r4, r4, r0
	add r1, r1, r4
	mov r3, r9
	and r3, r3, r0
	ldr r0, [sp, #28]
	add r0, r0, r3
	add r1, r1, #7
	mov r2, #8
	neg r2, r2
	and r1, r1, r2
	add r0, r0, #7
	and r0, r0, r2
	asr r1, r1, #3
	str r1, [sp, #24]
	asr r0, r0, #3
	str r0, [sp, #28]
	ldr r2, [sp, #40]
	asr r2, r2, #3
	mov r8, r2
	mov r2, r9
	asr r2, r2, #3
	str r2, [sp, #48]
	add r2, r1, #0
	mul r2, r0, r2
	str r2, [sp, #60]
	str r4, [sp, #40]
	mov r9, r3
	ldrb r3, [r7, #20]
	str r3, [sp, #56]
	ldrb r2, [r7, #21]
	add r4, r2, #0
	mul r4, r1, r4
	str r4, [sp, #52]
	ldrh r0, [r7, #24]
	add r1, r2, #0
	mul r1, r0, r1
	ldr r0, [r7, #4]
	add r0, r0, r1
	str r0, [sp, #64]
	add r1, sp, #20
	mov r0, #0
	strh r0, [r1]
	ldr r0, [sp, #60]
	mul r2, r0, r2
	lsr r0, r2, #31
	add r2, r2, r0
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r1, #0
	ldr r1, [sp, #64]
	bl CpuSet
	ldr r1, [sp, #44]
	add r1, r1, r10
	mov r12, r1
	ldr r2, [sp, #44]
	cmp r2, #0
	bge _08034BEE
	mov r3, #0
	mov r12, r3
_08034BEE:
	mov r0, #16
	ldr r4, [sp, #108]
	and r0, r0, r4
	cmp r0, #0
	beq _08034C38
	add r2, sp, #36
	mov r3, #0
	mov r1, r10
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034C28
	cmp r0, #10
	beq _08034C28
	ldr r5, [r7, #16]
	ldr r4, [r7]
_08034C0C:
	ldrb r0, [r1]
	lsl r0, r0, #1
	add r0, r0, r5
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0, #16]
	add r3, r3, r0
	add r1, r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034C28
	cmp r0, #10
	bne _08034C0C
_08034C28:
	str r3, [r2]
	ldr r0, [sp, #36]
	sub r0, r6, r0
	asr r1, r0, #1
	b _08034C3A
	.byte 0x00
	.byte 0x00
_08034C34:
	.4byte gUnknown_03001770
_08034C38:
	mov r1, #0
_08034C3A:
	mov r0, #3
	ldr r2, [sp, #56]
	sub r0, r0, r2
	ldr r3, [sp, #40]
	asr r3, r3, r0
	str r3, [sp, #40]
	str r6, [sp]
	str r1, [sp, #4]
	mov r4, r9
	str r4, [sp, #8]
	ldr r0, [sp, #52]
	str r0, [sp, #12]
	ldr r1, [sp, #108]
	str r1, [sp, #16]
	ldr r0, [sp, #64]
	mov r1, r10
	mov r2, r12
	bl sub_08034928
	ldr r1, _08034CC8  @ =gUnknown_03001770
	ldr r2, [r1, #12]
	mov r12, r2
	ldr r0, [sp, #28]
	ldr r3, [sp, #48]
	add r2, r0, r3
	str r2, [sp, #28]
	ldr r0, [sp, #24]
	mov r3, r8
	add r4, r0, r3
	str r4, [sp, #24]
	ldrh r3, [r1, #24]
	ldr r0, [sp, #48]
	cmp r0, r2
	bge _08034CAC
	add r5, r4, #0
	add r7, r2, #0
	mov r4, r8
	lsl r6, r4, #1
_08034C86:
	mov r1, r8
	add r4, r0, #1
	cmp r1, r5
	bge _08034CA6
	lsl r0, r0, #6
	add r0, r0, r12
	add r2, r6, r0
	sub r1, r5, r1
_08034C96:
	ldr r0, [sp, #68]
	orr r0, r0, r3
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	add r3, r3, #1
	cmp r1, #0
	bne _08034C96
_08034CA6:
	add r0, r4, #0
	cmp r0, r7
	blt _08034C86
_08034CAC:
	ldr r1, _08034CC8  @ =gUnknown_03001770
	ldrh r0, [r1, #24]
	ldr r2, [sp, #60]
	add r0, r0, r2
	strh r0, [r1, #24]
	add sp, sp, #76
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08034CC8:
	.4byte gUnknown_03001770
	THUMB_FUNC_END sub_08034AAC

	THUMB_FUNC_START sub_08034CCC
sub_08034CCC: @ 0x08034CCC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #68
	mov r12, r0
	str r1, [sp, #40]
	str r2, [sp, #44]
	ldr r0, [sp, #100]
	mov r10, r0
	mov r1, #0
	str r1, [sp, #48]
	ldr r2, _08034D2C  @ =0x03001798
	str r2, [sp, #52]
	mov r0, #32
	mov r6, r10
	and r0, r0, r6
	cmp r0, #0
	beq _08034CFC
	ldr r0, _08034D30  @ =gUnknown_0300192C
	str r0, [sp, #52]
	mov r1, #1
	str r1, [sp, #48]
_08034CFC:
	ldr r2, _08034D34  @ =gUnknown_03001770
	ldr r1, [r2, #32]
	mov r0, #44
	mul r1, r0, r1
	ldr r0, [r2, #28]
	add r5, r0, r1
	mov r1, #15
	mov r0, r10
	and r0, r0, r1
	strb r0, [r5, #4]
	mov r6, r10
	str r6, [r5, #12]
	mov r0, sp
	ldrh r0, [r0, #40]
	strh r0, [r5]
	mov r1, sp
	ldrh r1, [r1, #44]
	strh r1, [r5, #2]
	mov r9, r2
	cmp r3, #0
	blt _08034D38
	mov r2, r12
	add r0, r2, r3
	b _08034D3A
_08034D2C:
	.4byte 0x03001798
_08034D30:
	.4byte gUnknown_0300192C
_08034D34:
	.4byte gUnknown_03001770
_08034D38:
	mov r0, #0
_08034D3A:
	str r0, [r5, #24]
	mov r3, r9
	ldr r1, [r3, #32]
	ldr r0, [r3, #36]
	cmp r1, r0
	bge _08034DA8
	ldr r0, [r5, #16]
	cmp r0, r12
	bne _08034D7C
	add r0, r1, #1
	str r0, [r3, #32]
	ldr r6, [sp, #48]
	cmp r6, #0
	beq _08034D68
	ldr r1, [sp, #52]
	ldrh r0, [r1]
	strh r0, [r5, #6]
	ldr r1, [r5, #40]
	ldr r2, [sp, #52]
	ldrh r0, [r2]
	add r0, r0, r1
	strh r0, [r2]
	b _08034D74
_08034D68:
	ldr r1, [r5, #40]
	ldr r3, [sp, #52]
	ldrh r0, [r3]
	sub r0, r0, r1
	strh r0, [r3]
	strh r0, [r5, #6]
_08034D74:
	ldrh r0, [r5, #6]
	lsr r0, r0, #5
	strh r0, [r5, #8]
	b _08034EF2
_08034D7C:
	ldrb r2, [r5, #5]
	lsl r2, r2, #3
	mov r6, r9
	ldrh r0, [r6, #42]
	lsl r0, r0, #3
	sub r0, r0, r2
	add r3, sp, #20
	mov r1, #160
	strh r1, [r3]
	ldr r3, _08034ED4  @ =REG_DMA3SAD
	add r1, sp, #20
	str r1, [r3]
	mov r1, #224
	lsl r1, r1, #19
	add r2, r2, r1
	str r2, [r3, #4]
	lsr r0, r0, #1
	mov r1, #129
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08034DA8:
	mov r2, r12
	str r2, [r5, #16]
	str r2, [r5, #20]
	mov r0, #0
	strh r0, [r5, #30]
	mov r3, sp
	add r3, r3, #24
	str r3, [sp, #56]
	mov r6, sp
	add r6, r6, #28
	str r6, [sp, #60]
	mov r1, r9
	ldr r0, [r1]
	ldrb r7, [r0, #11]
	mov r6, #0
	str r6, [sp, #32]
	mov r1, r12
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034E2C
	mov r2, sp
	add r2, r2, #32
	str r2, [sp, #64]
	mov r8, r9
_08034DD8:
	mov r4, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034E06
	cmp r0, #10
	beq _08034E06
	mov r0, r8
	ldr r3, [r0, #16]
	ldr r2, [r0]
_08034DEA:
	ldrb r0, [r1]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r2
	ldr r0, [r0, #16]
	add r4, r4, r0
	add r1, r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034E06
	cmp r0, #10
	bne _08034DEA
_08034E06:
	ldr r2, [sp, #64]
	str r4, [r2]
	ldr r0, [sp, #32]
	cmp r0, r6
	ble _08034E12
	add r6, r0, #0
_08034E12:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034E2C
	cmp r0, #10
	bne _08034E24
	mov r3, r8
	ldr r0, [r3]
	ldrb r0, [r0, #11]
	add r7, r7, r0
_08034E24:
	add r1, r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08034DD8
_08034E2C:
	mov r1, r9
	ldrb r0, [r1, #20]
	mov r1, #3
	sub r0, r1, r0
	lsl r6, r6, r0
	ldr r2, [sp, #56]
	str r6, [r2]
	ldr r3, [sp, #60]
	str r7, [r3]
	ldr r0, [sp, #28]
	strh r0, [r5, #38]
	mov r6, r9
	ldrb r0, [r6, #20]
	sub r1, r1, r0
	ldr r3, [sp, #24]
	asr r3, r3, r1
	strh r3, [r5, #36]
	ldr r1, [sp, #24]
	add r1, r1, #7
	mov r2, #8
	neg r2, r2
	and r1, r1, r2
	ldr r0, [sp, #28]
	add r0, r0, #7
	and r0, r0, r2
	asr r1, r1, #3
	str r1, [sp, #24]
	asr r0, r0, #3
	str r0, [sp, #28]
	strh r1, [r5, #32]
	ldr r0, [sp, #28]
	strh r0, [r5, #34]
	ldr r1, [sp, #24]
	ldr r0, [sp, #28]
	mul r1, r0, r1
	ldrb r0, [r6, #21]
	mul r0, r1, r0
	str r0, [r5, #40]
	mov r0, #16
	mov r1, r10
	and r0, r0, r1
	cmp r0, #0
	beq _08034EBC
	add r7, sp, #36
	mov r2, #0
	mov r1, r12
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034EB4
	cmp r0, #10
	beq _08034EB4
	ldr r6, [r6, #16]
	mov r0, r9
	ldr r4, [r0]
_08034E98:
	ldrb r0, [r1]
	lsl r0, r0, #1
	add r0, r0, r6
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0, #16]
	add r2, r2, r0
	add r1, r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034EB4
	cmp r0, #10
	bne _08034E98
_08034EB4:
	str r2, [r7]
	ldr r0, [sp, #36]
	sub r0, r3, r0
	asr r0, r0, #1
_08034EBC:
	strh r0, [r5, #28]
	ldr r1, [sp, #48]
	cmp r1, #0
	beq _08034ED8
	ldr r2, [sp, #52]
	ldrh r0, [r2]
	strh r0, [r5, #6]
	ldr r1, [r5, #40]
	ldrh r0, [r2]
	add r0, r0, r1
	strh r0, [r2]
	b _08034EE4
_08034ED4:
	.4byte REG_DMA3SAD
_08034ED8:
	ldr r1, [r5, #40]
	ldr r3, [sp, #52]
	ldrh r0, [r3]
	sub r0, r0, r1
	strh r0, [r3]
	strh r0, [r5, #6]
_08034EE4:
	ldrh r0, [r5, #6]
	lsr r0, r0, #5
	strh r0, [r5, #8]
	mov r6, r9
	ldr r0, [r6, #32]
	add r0, r0, #1
	str r0, [r6, #32]
_08034EF2:
	ldr r3, _08034FA4  @ =0xFFFF8001
	ldr r0, [sp, #40]
	cmp r0, r3
	bne _08034F10
	mov r2, #36
	ldrsh r1, [r5, r2]
	mov r6, r9
	ldrb r2, [r6, #20]
	mov r0, #3
	sub r0, r0, r2
	lsl r1, r1, r0
	mov r0, #240
	sub r0, r0, r1
	asr r0, r0, #1
	strh r0, [r5]
_08034F10:
	ldr r0, [sp, #44]
	cmp r0, r3
	bne _08034F22
	mov r2, #38
	ldrsh r1, [r5, r2]
	mov r0, #160
	sub r0, r0, r1
	asr r0, r0, #1
	strh r0, [r5, #2]
_08034F22:
	mov r0, #32
	mov r3, r10
	and r3, r3, r0
	cmp r3, #0
	beq _08034F88
	ldrh r4, [r5, #6]
	ldr r0, _08034FA8  @ =OBJ_VRAM0
	add r4, r4, r0
	add r1, sp, #20
	mov r0, #0
	strh r0, [r1]
	ldr r2, [r5, #40]
	lsr r0, r2, #31
	add r2, r2, r0
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r1, #0
	add r1, r4, #0
	bl CpuSet
	ldr r1, [r5, #20]
	ldr r2, [r5, #24]
	mov r6, #36
	ldrsh r0, [r5, r6]
	str r0, [sp]
	mov r3, #28
	ldrsh r0, [r5, r3]
	str r0, [sp, #4]
	mov r6, #30
	ldrsh r0, [r5, r6]
	str r0, [sp, #8]
	ldr r0, _08034FAC  @ =gUnknown_03001770
	ldrb r3, [r0, #21]
	mov r6, #32
	ldrsh r0, [r5, r6]
	mul r0, r3, r0
	str r0, [sp, #12]
	ldr r0, [r5, #12]
	str r0, [sp, #16]
	add r0, r4, #0
	mov r3, #0
	bl sub_08034928
	ldr r1, [r5, #24]
	str r1, [r5, #20]
	strh r0, [r5, #28]
	lsr r0, r0, #16
	strh r0, [r5, #30]
_08034F88:
	mov r1, #2
	ldrsh r0, [r5, r1]
	mov r2, #38
	ldrsh r1, [r5, r2]
	add r0, r0, r1
	add sp, sp, #68
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08034FA4:
	.4byte 0xFFFF8001
_08034FA8:
	.4byte OBJ_VRAM0
_08034FAC:
	.4byte gUnknown_03001770
	THUMB_FUNC_END sub_08034CCC

	
	THUMB_FUNC_START sub_08034FB0
sub_08034FB0: @ 0x08034FB0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #28
	add r4, r0, #0
	str r1, [sp]
	mov r12, r2
	str r3, [sp, #4]
	mov r1, #32
	ldrsh r0, [r4, r1]
	mov r9, r0
	mov r0, #34
	ldrsh r2, [r4, r0]
	str r2, [sp, #8]
	ldr r0, _0803509C  @ =gUnknown_03001770
	ldrb r6, [r0, #20]
	ldrh r5, [r4, #8]
	sub r6, r6, #2
	ldrb r2, [r4, #4]
	ldr r0, [r4, #12]
	mov r1, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08034FEE
	mov r1, #38
	ldrsh r0, [r4, r1]
	mov r1, r12
	sub r1, r1, r0
	mov r12, r1
_08034FEE:
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	strb r0, [r4, #5]
	ldrh r0, [r1]
	lsl r0, r0, #3
	ldr r1, _080350A0  @ =gOamBuffer
	add r3, r0, r1
	mov r0, #0
	ldr r1, [sp, #8]
	cmp r0, r1
	bge _080350E8
	lsl r2, r2, #4
	str r2, [sp, #12]
	mov r2, #4
	lsl r2, r2, r6
	str r2, [sp, #16]
_0803500E:
	mov r4, #0
	add r0, r0, #1
	str r0, [sp, #20]
	mov r0, r12
	add r0, r0, #8
	str r0, [sp, #24]
	cmp r4, r9
	bge _080350DC
	sub r1, r6, #2
	mov r7, #63
	mov r2, #64
	mov r8, r2
	mov r0, #1
	and r1, r1, r0
	lsl r1, r1, #5
	mov r10, r1
_0803502E:
	mov r0, r12
	strb r0, [r3]
	lsl r1, r4, #3
	ldr r2, [sp]
	add r1, r2, r1
	ldr r2, _080350A4  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080350A8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldr r1, _080350AC  @ =0x000003FF
	add r0, r1, #0
	add r1, r5, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _080350B0  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	mov r0, #15
	and r0, r0, r1
	ldr r2, [sp, #12]
	orr r0, r0, r2
	mov r1, #13
	neg r1, r1
	and r0, r0, r1
	strb r0, [r3, #5]
	ldrb r0, [r3, #1]
	sub r1, r1, #20
	and r1, r1, r0
	mov r2, r10
	orr r1, r1, r2
	strb r1, [r3, #1]
	mov r2, r9
	sub r0, r2, r4
	cmp r0, #3
	ble _080350B4
	and r1, r1, r7
	mov r0, r8
	orr r1, r1, r0
	strb r1, [r3, #1]
	ldrb r1, [r3, #3]
	add r0, r7, #0
	and r0, r0, r1
	mov r1, r8
	orr r0, r0, r1
	strb r0, [r3, #3]
	add r4, r4, #4
	ldr r2, [sp, #16]
	add r5, r5, r2
	b _080350D6
_0803509C:
	.4byte gUnknown_03001770
_080350A0:
	.4byte gOamBuffer
_080350A4:
	.4byte 0x000001FF
_080350A8:
	.4byte 0xFFFFFE00
_080350AC:
	.4byte 0x000003FF
_080350B0:
	.4byte 0xFFFFFC00
_080350B4:
	cmp r0, #1
	ble _080350CE
	and r1, r1, r7
	mov r0, r8
	orr r1, r1, r0
	strb r1, [r3, #1]
	ldrb r0, [r3, #3]
	add r1, r7, #0
	and r1, r1, r0
	strb r1, [r3, #3]
	add r4, r4, #2
	mov r0, #2
	b _080350D2
_080350CE:
	add r4, r4, #1
	mov r0, #1
_080350D2:
	lsl r0, r0, r6
	add r5, r5, r0
_080350D6:
	add r3, r3, #8
	cmp r4, r9
	blt _0803502E
_080350DC:
	ldr r0, [sp, #20]
	ldr r1, [sp, #24]
	mov r12, r1
	ldr r2, [sp, #8]
	cmp r0, r2
	blt _0803500E
_080350E8:
	ldr r1, _08035104  @ =gOamBuffer
	sub r0, r3, r1
	asr r0, r0, #3
	ldr r2, [sp, #4]
	strh r0, [r2]
	add sp, sp, #28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035104:
	.4byte gOamBuffer
	THUMB_FUNC_END sub_08034FB0

	THUMB_FUNC_START sub_08035108
sub_08035108: @ 0x08035108
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #24
	mov r8, r0
	mov r7, #0
	ldr r1, _080351BC  @ =gUnknown_03001770
	ldr r4, [r1, #28]
	ldr r0, [r1, #32]
	cmp r7, r0
	bge _080351A4
	mov r9, r1
_08035122:
	mov r0, r9
	ldrb r1, [r0, #21]
	mov r2, #32
	ldrsh r0, [r4, r2]
	add r6, r1, #0
	mul r6, r0, r6
	ldrh r0, [r4, #6]
	ldr r3, _080351C0  @ =OBJ_VRAM0
	add r5, r0, r3
	ldr r1, [r4, #20]
	ldr r0, [r4, #16]
	cmp r1, r0
	bne _0803515A
	add r1, sp, #20
	mov r0, #0
	strh r0, [r1]
	ldr r2, [r4, #40]
	lsr r0, r2, #31
	add r2, r2, r0
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r1, #0
	add r1, r5, #0
	bl CpuSet
_0803515A:
	ldr r1, [r4, #20]
	ldr r2, [r4, #24]
	mov r3, #36
	ldrsh r0, [r4, r3]
	str r0, [sp]
	mov r3, #28
	ldrsh r0, [r4, r3]
	str r0, [sp, #4]
	mov r3, #30
	ldrsh r0, [r4, r3]
	str r0, [sp, #8]
	str r6, [sp, #12]
	ldr r0, [r4, #12]
	str r0, [sp, #16]
	add r0, r5, #0
	mov r3, #0
	bl sub_08034928
	ldr r1, [r4, #24]
	str r1, [r4, #20]
	strh r0, [r4, #28]
	lsr r0, r0, #16
	strh r0, [r4, #30]
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r3, #2
	ldrsh r2, [r4, r3]
	add r0, r4, #0
	mov r3, r8
	bl sub_08034FB0
	add r7, r7, #1
	add r4, r4, #44
	mov r1, r9
	ldr r0, [r1, #32]
	cmp r7, r0
	blt _08035122
_080351A4:
	ldr r1, _080351BC  @ =gUnknown_03001770
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r1, #42]
	add sp, sp, #24
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080351BC:
	.4byte gUnknown_03001770
_080351C0:
	.4byte OBJ_VRAM0
	THUMB_FUNC_END sub_08035108

	THUMB_FUNC_START sub_080351C4
sub_080351C4: @ 0x080351C4
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r1, #0
	add r3, r2, #0
	ldr r0, _080351DC  @ =gUnknown_08B2AD88
	add r1, r4, #0
	add r2, r5, #0
	bl sub_080348C8
	pop {r4,r5}
	pop {r0}
	bx r0
_080351DC:
	.4byte gUnknown_08B2AD88
	THUMB_FUNC_END sub_080351C4

	THUMB_FUNC_START sub_080351E0
sub_080351E0: @ 0x080351E0
	ldr r1, _080351F8  @ =gUnknown_03001770
	ldr r0, [r1, #8]
	mov r2, #0
	strh r0, [r1, #24]
	ldr r0, [r1, #32]
	str r0, [r1, #36]
	str r2, [r1, #32]
	mov r0, #128
	lsl r0, r0, #8
	strh r0, [r1, #40]
	bx lr
	.byte 0x00
	.byte 0x00
_080351F8:
	.4byte gUnknown_03001770
	THUMB_FUNC_END sub_080351E0

	THUMB_FUNC_START sub_080351FC
sub_080351FC: @ 0x080351FC
	push {r4,r5,lr}
	ldr r5, _08035214  @ =gUnknown_03001770
	mov r4, #44
	mul r4, r0, r4
	ldr r0, [r5, #28]
	add r0, r0, r4
	bl sub_08034FB0
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035214:
	.4byte gUnknown_03001770
	THUMB_FUNC_END sub_080351FC

	THUMB_FUNC_START sub_08035218
sub_08035218: @ 0x08035218
	push {r4,r5,lr}
	add r5, r1, #0
	mov r3, #0
	add r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803524C
	cmp r0, #10
	beq _0803524C
	ldr r0, _08035258  @ =gUnknown_03001770
	ldr r4, [r0, #16]
	ldr r1, [r0]
_08035230:
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r4
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r1
	ldr r0, [r0, #16]
	add r3, r3, r0
	add r2, r2, #1
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803524C
	cmp r0, #10
	bne _08035230
_0803524C:
	str r3, [r5]
	add r0, r2, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08035258:
	.4byte gUnknown_03001770
	THUMB_FUNC_END sub_08035218

	THUMB_FUNC_START sub_0803525C
sub_0803525C: @ 0x0803525C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r8, r1
	mov r9, r2
	ldr r2, _080352F4  @ =gUnknown_03001770
	ldr r1, [r2]
	ldrb r6, [r1, #11]
	mov r5, #0
	str r5, [sp]
	add r1, r0, #0
	ldrb r0, [r1]
	mov r10, r2
	cmp r0, #0
	beq _080352D2
	mov r12, sp
	mov r7, r10
_08035284:
	mov r4, #0
	cmp r0, #0
	beq _080352AE
	cmp r0, #10
	beq _080352AE
	ldr r2, [r7, #16]
	ldr r3, [r7]
_08035292:
	ldrb r0, [r1]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r3
	ldr r0, [r0, #16]
	add r4, r4, r0
	add r1, r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _080352AE
	cmp r0, #10
	bne _08035292
_080352AE:
	mov r0, r12
	str r4, [r0]
	ldr r0, [sp]
	cmp r0, r5
	ble _080352BA
	add r5, r0, #0
_080352BA:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080352D2
	cmp r0, #10
	bne _080352CA
	ldr r0, [r7]
	ldrb r0, [r0, #11]
	add r6, r6, r0
_080352CA:
	add r1, r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08035284
_080352D2:
	mov r0, r10
	ldrb r1, [r0, #20]
	mov r0, #3
	sub r0, r0, r1
	lsl r5, r5, r0
	mov r0, r8
	str r5, [r0]
	mov r0, r9
	str r6, [r0]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080352F4:
	.4byte gUnknown_03001770
	THUMB_FUNC_END sub_0803525C

	THUMB_FUNC_START sub_080352F8
sub_080352F8: @ 0x080352F8
	push {r4-r7,lr}
	sub sp, sp, #24
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, _08035380  @ =gUnknown_03001770
	ldrb r1, [r0, #21]
	mov r2, #32
	ldrsh r0, [r4, r2]
	add r6, r1, #0
	mul r6, r0, r6
	ldrh r1, [r4, #6]
	ldr r0, _08035384  @ =OBJ_VRAM0
	add r5, r1, r0
	ldr r1, [r4, #20]
	ldr r0, [r4, #16]
	cmp r1, r0
	bne _08035338
	add r1, sp, #20
	mov r0, #0
	strh r0, [r1]
	ldr r2, [r4, #40]
	lsr r0, r2, #31
	add r2, r2, r0
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r1, #0
	add r1, r5, #0
	bl CpuSet
_08035338:
	ldr r1, [r4, #20]
	ldr r2, [r4, #24]
	mov r3, #36
	ldrsh r0, [r4, r3]
	str r0, [sp]
	mov r3, #28
	ldrsh r0, [r4, r3]
	str r0, [sp, #4]
	mov r3, #30
	ldrsh r0, [r4, r3]
	str r0, [sp, #8]
	str r6, [sp, #12]
	ldr r0, [r4, #12]
	str r0, [sp, #16]
	add r0, r5, #0
	mov r3, #0
	bl sub_08034928
	ldr r1, [r4, #24]
	str r1, [r4, #20]
	strh r0, [r4, #28]
	lsr r0, r0, #16
	strh r0, [r4, #30]
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r3, #2
	ldrsh r2, [r4, r3]
	add r0, r4, #0
	add r3, r7, #0
	bl sub_08034FB0
	add sp, sp, #24
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035380:
	.4byte gUnknown_03001770
_08035384:
	.4byte OBJ_VRAM0
	THUMB_FUNC_END sub_080352F8

