	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_0807166C
sub_0807166C: @ 0x0807166C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r7, r2, #0
	mov r9, r3
	cmp r7, #0
	bne _0807167E
	mov r7, #1
_0807167E:
	bl sub_08072230
	ldr r5, _08071790  @ =0x03001F10
	sub r1, r7, #1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, _08071794  @ =0x000014F0
	add r0, r0, r1
	bl sub_0807226C
	str r0, [r5]
	ldr r2, _08071798  @ =0x000014C3
	add r0, r0, r2
	mov r3, #0
	mov r8, r3
	mov r1, sp
	ldrb r1, [r1, #28]
	strb r1, [r0]
	ldr r0, _0807179C  @ =0x03001EE0
	ldr r6, [r5]
	mov r3, #181
	lsl r3, r3, #4
	add r2, r6, r3
	str r2, [r0]
	ldr r1, _080717A0  @ =REG_DMA3SAD
	ldr r3, _080717A4  @ =0x0800023C
	str r3, [r1]
	str r2, [r1, #4]
	ldr r0, _080717A8  @ =0x80000074
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _080717AC  @ =0x03001EF8
	ldr r0, _080717B0  @ =0x08000260
	sub r0, r0, r3
	add r0, r2, r0
	str r0, [r4]
	ldr r4, _080717B4  @ =0x03001EE8
	ldr r0, _080717B8  @ =0x080002A0
	sub r0, r0, r3
	add r2, r2, r0
	str r2, [r4]
	ldr r0, _080717BC  @ =0x03001EE4
	ldr r3, _080717C0  @ =0x00000C38
	add r2, r6, r3
	str r2, [r0]
	ldr r3, _080717C4  @ =0x08001840
	str r3, [r1]
	str r2, [r1, #4]
	ldr r0, _080717C8  @ =0x800001C8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _080717CC  @ =0x03001EFC
	ldr r0, _080717D0  @ =0x08001968
	sub r0, r0, r3
	add r2, r2, r0
	str r2, [r1]
	strb r7, [r6]
	ldr r0, [r5]
	mov r1, sp
	ldrb r1, [r1, #28]
	strb r1, [r0, #4]
	ldr r0, [r5]
	mov r2, r9
	strb r2, [r0, #3]
	ldr r0, [r5]
	mov r2, #18
	strb r2, [r0, #1]
	ldr r1, [r5]
	mov r0, #2
	strb r0, [r1, #7]
	strb r0, [r1, #6]
	strb r0, [r1, #8]
	ldr r0, [r5]
	mov r3, r8
	strb r3, [r0, #5]
	ldr r0, [r5]
	strb r2, [r0, #2]
	ldr r1, _080717D4  @ =REG_SOUNDCNT_X
	mov r0, #128
	strh r0, [r1]
	ldr r0, _080717D8  @ =REG_SOUNDCNT_L
	mov r1, r8
	strh r1, [r0]
	ldr r1, _080717DC  @ =REG_SOUNDCNT_H
	ldr r2, _080717E0  @ =0x0000DE0C
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #62
	ldr r0, _080717E4  @ =REG_FIFO_A
	str r0, [r1]
	add r1, r1, #12
	add r0, r0, #4
	str r0, [r1]
	ldr r3, _080717E8  @ =REG_DMA1SAD
	ldr r1, [r5]
	ldrb r2, [r1, #6]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #6
	add r0, r0, #16
	add r0, r1, r0
	str r0, [r3]
	add r3, r3, #12
	ldrb r2, [r1, #6]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #6
	add r0, r0, #16
	add r1, r1, r0
	mov r0, #144
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r3]
	ldr r0, _080717EC  @ =REG_DMA1CNT
	ldr r1, _080717F0  @ =0xF6600004
	str r1, [r0]
	add r0, r0, #12
	str r1, [r0]
	ldr r1, _080717F4  @ =0x04000104
	ldr r0, _080717F8  @ =0x0080FC00
	str r0, [r1]
	ldr r2, _080717FC  @ =0x04000200
	ldrh r0, [r2]
	mov r3, #192
	lsl r3, r3, #3
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	bl sub_08073B18
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08071790:
	.4byte 0x03001F10
_08071794:
	.4byte 0x000014F0
_08071798:
	.4byte 0x000014C3
_0807179C:
	.4byte 0x03001EE0
_080717A0:
	.4byte REG_DMA3SAD
_080717A4:
	.4byte sub_0800023C
_080717A8:
	.4byte 0x80000074
_080717AC:
	.4byte 0x03001EF8
_080717B0:
	.4byte sub_08000260
_080717B4:
	.4byte 0x03001EE8
_080717B8:
	.4byte sub_080002A0
_080717BC:
	.4byte 0x03001EE4
_080717C0:
	.4byte 0x00000C38
_080717C4:
	.4byte 0x08001840
_080717C8:
	.4byte 0x800001C8
_080717CC:
	.4byte 0x03001EFC
_080717D0:
	.4byte 0x08001968
_080717D4:
	.4byte REG_SOUNDCNT_X
_080717D8:
	.4byte REG_SOUNDCNT_L
_080717DC:
	.4byte REG_SOUNDCNT_H
_080717E0:
	.4byte 0x0000DE0C
_080717E4:
	.4byte REG_FIFO_A
_080717E8:
	.4byte REG_DMA1SAD
_080717EC:
	.4byte REG_DMA1CNT
_080717F0:
	.4byte 0xF6600004
_080717F4:
	.4byte 0x04000104
_080717F8:
	.4byte 0x0080FC00
_080717FC:
	.4byte 0x04000200
	THUMB_FUNC_END sub_0807166C

	THUMB_FUNC_START sub_08071800
sub_08071800: @ 0x08071800
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r6, _08071928  @ =0x03001F10
	ldr r4, [r6]
	cmp r4, #0
	bne _08071816
	b _08071916
_08071816:
	ldrb r2, [r4, #1]
	mov r0, #1
	and r0, r0, r2
	cmp r0, #0
	bne _08071916
	mov r0, #8
	and r0, r0, r2
	cmp r0, #0
	bne _08071916
	ldrb r5, [r4, #5]
	mov r0, #218
	lsl r0, r0, #3
	add r0, r0, r4
	mov r8, r0
	lsl r0, r5, #3
	add r0, r0, r5
	lsl r0, r0, #6
	add r0, r0, #16
	add r0, r0, r4
	mov r10, r0
	mov r1, #144
	lsl r1, r1, #1
	mov r3, r10
	add r3, r3, r1
	str r3, [sp]
	ldr r0, _0807192C  @ =0x03001F00
	ldr r0, [r0]
	str r0, [sp, #4]
	add r7, r1, #0
	mov r0, #8
	orr r0, r0, r2
	strb r0, [r4, #1]
	ldr r0, _08071930  @ =0x03001EE0
	ldr r2, [r0]
	mov r0, r8
	bl _call_via_r2
	ldr r2, [r6]
	ldr r1, _08071934  @ =0x000014BA
	add r0, r2, r1
	mov r3, #0
	ldrsh r1, [r0, r3]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08071896
	ldr r1, _08071938  @ =0x00000FC8
	add r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08071896
	mov r4, #0
_0807187E:
	ldr r0, _08071928  @ =0x03001F10
	ldr r0, [r0]
	ldr r2, _08071938  @ =0x00000FC8
	add r0, r0, r2
	lsl r1, r4, #2
	add r1, r1, r8
	sub r2, r7, r4
	bl sub_080736A0
	add r4, r4, r0
	cmp r4, r7
	bcc _0807187E
_08071896:
	mov r4, #0
	ldr r1, _08071928  @ =0x03001F10
	ldr r0, [r1]
	add r3, r5, #1
	mov r9, r3
	ldrb r0, [r0]
	cmp r4, r0
	bcs _080718D6
	ldr r6, _0807193C  @ =0x000014DC
_080718A8:
	ldr r0, [r1]
	add r2, r0, r6
	ldrb r1, [r2]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _080718C8
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080718C8
	add r0, r2, #0
	mov r1, r8
	add r2, r7, #0
	bl sub_080714B8
_080718C8:
	add r6, r6, #20
	add r4, r4, #1
	ldr r1, _08071928  @ =0x03001F10
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r4, r0
	bcc _080718A8
_080718D6:
	ldr r0, _08071940  @ =0x03001EF8
	ldr r4, [r0]
	mov r0, r8
	mov r1, r10
	ldr r2, [sp]
	add r3, r7, #0
	bl _call_via_r4
	ldr r3, _08071928  @ =0x03001F10
	ldr r0, [r3]
	strb r5, [r0, #8]
	mov r5, r9
	cmp r5, #2
	bls _080718F4
	mov r5, #0
_080718F4:
	ldr r0, [r3]
	strb r5, [r0, #5]
	ldr r2, _08071944  @ =0x03001F04
	ldr r0, _0807192C  @ =0x03001F00
	ldr r1, [r0]
	ldr r0, [sp, #4]
	sub r1, r1, r0
	str r1, [r2]
	ldr r2, _08071948  @ =0x03001F08
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
	ldr r2, [r3]
	ldrb r1, [r2, #1]
	mov r0, #247
	and r0, r0, r1
	strb r0, [r2, #1]
_08071916:
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
_08071928:
	.4byte 0x03001F10
_0807192C:
	.4byte 0x03001F00
_08071930:
	.4byte 0x03001EE0
_08071934:
	.4byte 0x000014BA
_08071938:
	.4byte 0x00000FC8
_0807193C:
	.4byte 0x000014DC
_08071940:
	.4byte 0x03001EF8
_08071944:
	.4byte 0x03001F04
_08071948:
	.4byte 0x03001F08
	THUMB_FUNC_END sub_08071800

	THUMB_FUNC_START sub_0807194C
sub_0807194C: @ 0x0807194C
	push {lr}
	ldr r1, _08071970  @ =0x03001F10
	ldr r3, [r1]
	cmp r3, #0
	beq _0807198A
	ldrb r2, [r3, #1]
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _08071974
	mov r0, #252
	and r0, r0, r2
	strb r0, [r3, #1]
	ldr r1, [r1]
	ldrb r0, [r1, #8]
	strb r0, [r1, #7]
	b _0807198A
	.byte 0x00
	.byte 0x00
_08071970:
	.4byte 0x03001F10
_08071974:
	mov r0, #1
	orr r0, r0, r2
	strb r0, [r3, #1]
	ldr r0, [r1]
	ldrb r1, [r0, #1]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0807198A
	bl sub_08071C00
_0807198A:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0807194C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08071990
sub_08071990: @ 0x08071990
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	ldr r4, [sp, #52]
	ldr r5, [sp, #60]
	mov r8, r5
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r5, r2, #24
	lsl r3, r3, #24
	lsr r3, r3, #24
	str r3, [sp, #4]
	lsl r4, r4, #24
	lsr r4, r4, #24
	str r4, [sp, #8]
	mov r1, #0
	mov r9, r1
	ldr r2, _080719FC  @ =0x03001F10
	ldr r6, [r2]
	ldrb r3, [r6]
	mov r10, r3
	str r1, [sp, #12]
	lsl r1, r0, #3
	sub r1, r1, r0
	lsl r1, r1, #2
	ldr r0, _08071A00  @ =gUnknown_08B3A4E0
	add r1, r1, r0
	mov r12, r1
	cmp r5, #15
	bls _080719D8
	ldrb r5, [r1, #18]
_080719D8:
	ldrb r1, [r6, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _080719EA
	mov r2, #64
	str r2, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
_080719EA:
	mov r1, r12
	ldr r0, [r1]
	cmp r0, #1
	bne _08071A04
	add r0, r5, #0
	mov r1, #0
	bl sub_08071E7C
	b _08071BB8
_080719FC:
	.4byte 0x03001F10
_08071A00:
	.4byte gUnknown_08B3A4E0
_08071A04:
	lsl r0, r5, #28
	lsr r5, r0, #24
	add r7, r5, #0
	ldr r2, _08071A1C  @ =0x000014DC
	add r3, r6, r2
	mov r0, r8
	cmp r0, #0
	bne _08071A20
	mov r1, r12
	ldr r1, [r1, #8]
	mov r8, r1
	b _08071A3E
_08071A1C:
	.4byte 0x000014DC
_08071A20:
	mov r2, r8
	cmp r2, #0
	ble _08071A34
	mov r1, r12
	ldr r0, [r1, #8]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	lsr r0, r0, #13
	b _08071A3C
_08071A34:
	mov r0, r8
	cmp r0, #0
	bge _08071A3E
	neg r0, r0
_08071A3C:
	mov r8, r0
_08071A3E:
	mov r1, r12
	ldrh r0, [r1, #16]
	ldr r2, [sp, #56]
	mul r0, r2, r0
	lsr r0, r0, #7
	str r0, [sp, #56]
	mov r0, #24
	ldr r1, [sp]
	and r0, r0, r1
	cmp r0, #0
	beq _08071B10
	mov r6, #0
	cmp r6, r10
	bcs _08071AAA
	mov r0, #8
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #16]
_08071A64:
	add r4, r3, #0
	ldrb r2, [r4]
	mov r0, #3
	and r0, r0, r2
	cmp r0, #0
	beq _08071A96
	mov r1, #240
	and r1, r1, r2
	ldr r0, [r4, #16]
	cmp r0, r12
	bne _08071A86
	ldr r2, [sp, #16]
	cmp r2, #0
	bne _08071A82
	b _08071BB4
_08071A82:
	mov r9, r4
	b _08071AAA
_08071A86:
	ldr r0, [sp, #12]
	cmp r0, #0
	bne _08071AA2
	cmp r1, r7
	bcs _08071AA2
	add r7, r1, #0
	mov r9, r4
	b _08071AA2
_08071A96:
	ldr r1, [sp, #12]
	cmp r1, #0
	bne _08071AA2
	mov r9, r4
	mov r2, #1
	str r2, [sp, #12]
_08071AA2:
	add r6, r6, #1
	add r3, r3, #20
	cmp r6, r10
	bcc _08071A64
_08071AAA:
	mov r3, r9
	cmp r3, #0
	bne _08071AB2
	b _08071BB8
_08071AB2:
	mov r4, r9
	mov r0, r12
	str r0, [r4, #16]
	mov r2, #0
	mov r1, #1
	mov r0, #4
	ldr r3, [sp]
	and r0, r0, r3
	orr r5, r5, r0
	orr r5, r5, r1
	strb r5, [r4]
	mov r5, sp
	ldrb r5, [r5, #4]
	strb r5, [r4, #1]
	mov r0, sp
	ldrb r0, [r0, #8]
	strb r0, [r4, #2]
	add r1, sp, #56
	ldrb r1, [r1]
	strb r1, [r4, #3]
	str r2, [r4, #8]
	mov r2, r8
	lsl r0, r2, #14
	asr r0, r0, #14
	str r0, [r4, #12]
	ldr r5, _08071B00  @ =0x03001F10
	ldr r3, [r5]
	ldr r1, [r3, #12]
	ldr r0, _08071B04  @ =0x7FFFFFFF
	and r0, r0, r1
	str r0, [r4, #4]
	add r1, r1, #1
	str r1, [r3, #12]
	ldr r1, _08071B08  @ =0x00000FC8
	add r0, r3, r1
	ldr r5, _08071B0C  @ =0xFFFFEB24
	add r2, r4, r5
	b _08071B86
	.byte 0x00
	.byte 0x00
_08071B00:
	.4byte 0x03001F10
_08071B04:
	.4byte 0x7FFFFFFF
_08071B08:
	.4byte 0x00000FC8
_08071B0C:
	.4byte 0xFFFFEB24
_08071B10:
	mov r6, #0
	mov r4, #3
	mov r2, #240
	b _08071B1C
_08071B18:
	add r6, r6, #1
	add r3, r3, #20
_08071B1C:
	cmp r6, r10
	bcs _08071B3A
	ldrb r1, [r3]
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08071B38
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, r7
	bcs _08071B18
	add r7, r0, #0
	mov r9, r3
	b _08071B18
_08071B38:
	mov r9, r3
_08071B3A:
	mov r0, r9
	cmp r0, #0
	beq _08071BB8
	mov r4, r9
	mov r1, r12
	str r1, [r4, #16]
	mov r1, #0
	mov r0, #1
	ldr r2, [sp]
	orr r5, r5, r2
	orr r5, r5, r0
	strb r5, [r4]
	mov r3, sp
	ldrb r3, [r3, #4]
	strb r3, [r4, #1]
	mov r5, sp
	ldrb r5, [r5, #8]
	strb r5, [r4, #2]
	add r0, sp, #56
	ldrb r0, [r0]
	strb r0, [r4, #3]
	str r1, [r4, #8]
	mov r1, r8
	lsl r0, r1, #14
	asr r0, r0, #14
	str r0, [r4, #12]
	ldr r2, _08071BA4  @ =0x03001F10
	ldr r3, [r2]
	ldr r1, [r3, #12]
	ldr r0, _08071BA8  @ =0x7FFFFFFF
	and r0, r0, r1
	str r0, [r4, #4]
	add r1, r1, #1
	str r1, [r3, #12]
	ldr r5, _08071BAC  @ =0x00000FC8
	add r0, r3, r5
	ldr r1, _08071BB0  @ =0xFFFFEB24
	add r2, r4, r1
_08071B86:
	sub r2, r2, r3
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r2, r1, #4
	add r1, r1, r2
	lsl r2, r1, #8
	add r1, r1, r2
	lsl r2, r1, #16
	add r1, r1, r2
	neg r1, r1
	asr r1, r1, #2
	bl sub_080738D4
	ldr r0, [r4, #4]
	b _08071BBC
_08071BA4:
	.4byte 0x03001F10
_08071BA8:
	.4byte 0x7FFFFFFF
_08071BAC:
	.4byte 0x00000FC8
_08071BB0:
	.4byte 0xFFFFEB24
_08071BB4:
	ldr r0, [r3, #4]
	b _08071BBC
_08071BB8:
	mov r0, #1
	neg r0, r0
_08071BBC:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08071990

	THUMB_FUNC_START sub_08071BCC
sub_08071BCC: @ 0x08071BCC
	push {lr}
	ldr r0, _08071BDC  @ =0x03001EE8
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08071BDC:
	.4byte 0x03001EE8
	THUMB_FUNC_END sub_08071BCC

	THUMB_FUNC_START sub_08071BE0
sub_08071BE0: @ 0x08071BE0
	ldr r0, _08071BF8  @ =REG_DMA1CNT
	mov r1, #0
	str r1, [r0]
	add r0, r0, #12
	str r1, [r0]
	ldr r0, _08071BFC  @ =0x03001F10
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	mov r0, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	bx lr
_08071BF8:
	.4byte REG_DMA1CNT
_08071BFC:
	.4byte 0x03001F10
	THUMB_FUNC_END sub_08071BE0

	THUMB_FUNC_START sub_08071C00
sub_08071C00: @ 0x08071C00
	ldr r0, _08071C18  @ =0x03001F10
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	mov r0, #251
	and r0, r0, r1
	strb r0, [r2, #1]
	ldr r0, _08071C1C  @ =REG_DMA1CNT
	ldr r1, _08071C20  @ =0xF6600004
	str r1, [r0]
	add r0, r0, #12
	str r1, [r0]
	bx lr
_08071C18:
	.4byte 0x03001F10
_08071C1C:
	.4byte REG_DMA1CNT
_08071C20:
	.4byte 0xF6600004
	THUMB_FUNC_END sub_08071C00

	THUMB_FUNC_START sub_08071C24
sub_08071C24: @ 0x08071C24
	push {r4-r6,lr}
	mov r4, #0
	ldr r1, _08071C60  @ =0x03001F10
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r4, r0
	bge _08071C5A
	add r5, r1, #0
	mov r6, #0
_08071C36:
	ldr r0, [r5]
	add r0, r0, r6
	ldr r1, _08071C64  @ =0x000014DC
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0]
	ldr r0, [r5]
	ldr r1, _08071C68  @ =0x00000FC8
	add r0, r0, r1
	add r1, r4, #0
	bl sub_08073914
	add r6, r6, #20
	add r4, r4, #1
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r4, r0
	blt _08071C36
_08071C5A:
	pop {r4-r6}
	pop {r0}
	bx r0
_08071C60:
	.4byte 0x03001F10
_08071C64:
	.4byte 0x000014DC
_08071C68:
	.4byte 0x00000FC8
	THUMB_FUNC_END sub_08071C24

	THUMB_FUNC_START sub_08071C6C
sub_08071C6C: @ 0x08071C6C
	push {r4-r7,lr}
	lsl r1, r0, #3
	sub r1, r1, r0
	lsl r1, r1, #2
	ldr r0, _08071CC0  @ =gUnknown_08B3A4E0
	add r7, r1, r0
	mov r5, #0
	ldr r1, _08071CC4  @ =0x03001F10
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r5, r0
	bge _08071CB8
	add r6, r1, #0
	mov r4, #0
_08071C88:
	ldr r1, [r6]
	ldr r2, _08071CC8  @ =0x000014EC
	add r0, r1, r2
	add r0, r0, r4
	ldr r0, [r0]
	cmp r0, r7
	beq _08071CAC
	add r0, r1, r4
	ldr r1, _08071CCC  @ =0x000014DC
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0]
	ldr r0, [r6]
	ldr r2, _08071CD0  @ =0x00000FC8
	add r0, r0, r2
	add r1, r5, #0
	bl sub_08073914
_08071CAC:
	add r4, r4, #20
	add r5, r5, #1
	ldr r0, [r6]
	ldrb r0, [r0]
	cmp r5, r0
	blt _08071C88
_08071CB8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08071CC0:
	.4byte gUnknown_08B3A4E0
_08071CC4:
	.4byte 0x03001F10
_08071CC8:
	.4byte 0x000014EC
_08071CCC:
	.4byte 0x000014DC
_08071CD0:
	.4byte 0x00000FC8
	THUMB_FUNC_END sub_08071C6C

	THUMB_FUNC_START sub_08071CD4
sub_08071CD4: @ 0x08071CD4
	push {r4-r6,lr}
	mov r4, #0
	ldr r1, _08071D1C  @ =0x03001F10
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r4, r0
	bge _08071D14
	add r5, r1, #0
	mov r6, #0
_08071CE6:
	ldr r0, [r5]
	add r0, r0, r6
	ldr r1, _08071D20  @ =0x000014DC
	add r2, r0, r1
	ldrb r1, [r2]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08071D08
	mov r0, #0
	strb r0, [r2]
	ldr r0, [r5]
	ldr r1, _08071D24  @ =0x00000FC8
	add r0, r0, r1
	add r1, r4, #0
	bl sub_08073914
_08071D08:
	add r6, r6, #20
	add r4, r4, #1
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r4, r0
	blt _08071CE6
_08071D14:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08071D1C:
	.4byte 0x03001F10
_08071D20:
	.4byte 0x000014DC
_08071D24:
	.4byte 0x00000FC8
	THUMB_FUNC_END sub_08071CD4

	THUMB_FUNC_START sub_08071D28
sub_08071D28: @ 0x08071D28
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	mov r12, r1
	add r7, r2, #0
	ldr r1, _08071D6C  @ =0x03001F10
	ldr r0, [r1]
	ldrb r4, [r0]
	ldr r2, _08071D70  @ =0x000014DC
	add r3, r0, r2
	mov r2, #0
	mov r8, r1
	cmp r2, r4
	bge _08071D60
	mov r6, #3
_08071D48:
	ldrb r1, [r3]
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08071D58
	ldr r0, [r3, #4]
	cmp r0, r5
	beq _08071D62
_08071D58:
	add r2, r2, #1
	add r3, r3, #20
	cmp r2, r4
	blt _08071D48
_08071D60:
	mov r3, #0
_08071D62:
	cmp r3, #0
	bne _08071D74
	mov r0, #1
	neg r0, r0
	b _08071D90
_08071D6C:
	.4byte 0x03001F10
_08071D70:
	.4byte 0x000014DC
_08071D74:
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08071D88
	mov r2, #64
	mov r12, r2
	mov r7, #0
_08071D88:
	mov r0, r12
	strb r0, [r3, #1]
	strb r7, [r3, #2]
	add r0, r5, #0
_08071D90:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08071D28

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08071D9C
sub_08071D9C: @ 0x08071D9C
	push {r4-r7,lr}
	add r5, r0, #0
	ldr r1, _08071E04  @ =0x03001F10
	ldr r0, [r1]
	ldrb r4, [r0]
	ldr r3, _08071E08  @ =0x000014DC
	add r2, r0, r3
	mov r3, #0
	add r7, r1, #0
	cmp r3, r4
	bge _08071DCC
	mov r6, #3
_08071DB4:
	ldrb r1, [r2]
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08071DC4
	ldr r0, [r2, #4]
	cmp r0, r5
	beq _08071DCE
_08071DC4:
	add r3, r3, #1
	add r2, r2, #20
	cmp r3, r4
	blt _08071DB4
_08071DCC:
	mov r2, #0
_08071DCE:
	cmp r2, #0
	beq _08071DFC
	ldr r1, _08071E0C  @ =0xFFFFEB24
	add r0, r2, r1
	ldr r1, [r7]
	sub r0, r0, r1
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r0, r1, #4
	add r1, r1, r0
	lsl r0, r1, #8
	add r1, r1, r0
	lsl r0, r1, #16
	add r1, r1, r0
	neg r1, r1
	asr r1, r1, #2
	mov r0, #0
	strb r0, [r2]
	ldr r0, [r7]
	ldr r2, _08071E10  @ =0x00000FC8
	add r0, r0, r2
	bl sub_08073914
_08071DFC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08071E04:
	.4byte 0x03001F10
_08071E08:
	.4byte 0x000014DC
_08071E0C:
	.4byte 0xFFFFEB24
_08071E10:
	.4byte 0x00000FC8
	THUMB_FUNC_END sub_08071D9C

	THUMB_FUNC_START sub_08071E14
sub_08071E14: @ 0x08071E14
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r7, #1
	lsl r1, r0, #3
	sub r1, r1, r0
	lsl r1, r1, #2
	ldr r0, _08071E6C  @ =gUnknown_08B3A4E0
	add r1, r1, r0
	mov r8, r1
	ldr r0, _08071E70  @ =0x03001F10
	ldr r0, [r0]
	ldr r1, _08071E74  @ =0x000014DC
	add r4, r0, r1
	ldrb r6, [r0]
	mov r5, #0
	cmp r5, r6
	bge _08071E60
_08071E38:
	ldrb r0, [r4]
	and r0, r0, r7
	cmp r0, r7
	bne _08071E58
	ldr r0, [r4, #16]
	cmp r0, r8
	bne _08071E58
	mov r0, #0
	strb r0, [r4]
	ldr r0, _08071E70  @ =0x03001F10
	ldr r0, [r0]
	ldr r1, _08071E78  @ =0x00000FC8
	add r0, r0, r1
	add r1, r5, #0
	bl sub_08073914
_08071E58:
	add r5, r5, #1
	add r4, r4, #20
	cmp r5, r6
	blt _08071E38
_08071E60:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08071E6C:
	.4byte gUnknown_08B3A4E0
_08071E70:
	.4byte 0x03001F10
_08071E74:
	.4byte 0x000014DC
_08071E78:
	.4byte 0x00000FC8
	THUMB_FUNC_END sub_08071E14

	THUMB_FUNC_START sub_08071E7C
sub_08071E7C: @ 0x08071E7C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r1, r1, #24
	mov r7, #1
	ldr r2, _08071ED8  @ =0x03001F10
	ldr r2, [r2]
	ldr r3, _08071EDC  @ =0x000014DC
	add r4, r2, r3
	ldrb r6, [r2]
	lsl r0, r0, #28
	lsr r0, r0, #24
	mov r8, r0
	cmp r1, #0
	bne _08071E9C
	mov r7, #5
_08071E9C:
	mov r5, #0
	cmp r5, r6
	bge _08071ECE
_08071EA2:
	ldrb r1, [r4]
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, r7
	bne _08071EC6
	mov r0, #240
	and r0, r0, r1
	cmp r0, r8
	bne _08071EC6
	mov r0, #0
	strb r0, [r4]
	ldr r0, _08071ED8  @ =0x03001F10
	ldr r0, [r0]
	ldr r1, _08071EE0  @ =0x00000FC8
	add r0, r0, r1
	add r1, r5, #0
	bl sub_08073914
_08071EC6:
	add r5, r5, #1
	add r4, r4, #20
	cmp r5, r6
	blt _08071EA2
_08071ECE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08071ED8:
	.4byte 0x03001F10
_08071EDC:
	.4byte 0x000014DC
_08071EE0:
	.4byte 0x00000FC8
	THUMB_FUNC_END sub_08071E7C

	THUMB_FUNC_START sub_08071EE4
sub_08071EE4: @ 0x08071EE4
	push {r4,lr}
	ldr r0, _08071F08  @ =REG_DMA1CNT
	mov r4, #0
	str r4, [r0]
	add r0, r0, #12
	str r4, [r0]
	sub r0, r0, #76
	strh r4, [r0]
	add r0, r0, #128
	str r4, [r0]
	bl sub_0807229C
	ldr r0, _08071F0C  @ =0x03001F10
	str r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08071F08:
	.4byte REG_DMA1CNT
_08071F0C:
	.4byte 0x03001F10
	THUMB_FUNC_END sub_08071EE4

	THUMB_FUNC_START sub_08071F10
sub_08071F10: @ 0x08071F10
	push {lr}
	add r1, r0, #0
	ldr r0, _08071F24  @ =0x03001F10
	ldr r0, [r0]
	ldr r2, _08071F28  @ =0x00000FC8
	add r0, r0, r2
	bl sub_080734F8
	pop {r0}
	bx r0
_08071F24:
	.4byte 0x03001F10
_08071F28:
	.4byte 0x00000FC8
	THUMB_FUNC_END sub_08071F10

	THUMB_FUNC_START sub_08071F2C
sub_08071F2C: @ 0x08071F2C
	push {lr}
	add r1, r0, #0
	ldr r0, _08071F40  @ =0x03001F10
	ldr r0, [r0]
	ldr r2, _08071F44  @ =0x00000FC8
	add r0, r0, r2
	bl sub_080734F8
	pop {r0}
	bx r0
_08071F40:
	.4byte 0x03001F10
_08071F44:
	.4byte 0x00000FC8
	THUMB_FUNC_END sub_08071F2C

	THUMB_FUNC_START sub_08071F48
sub_08071F48: @ 0x08071F48
	push {lr}
	ldr r0, _08071F5C  @ =0x03001F10
	ldr r0, [r0]
	ldr r1, _08071F60  @ =0x00000FC8
	add r0, r0, r1
	bl sub_080735D0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08071F5C:
	.4byte 0x03001F10
_08071F60:
	.4byte 0x00000FC8
	THUMB_FUNC_END sub_08071F48

	THUMB_FUNC_START sub_08071F64
sub_08071F64: @ 0x08071F64
	ldr r2, _08071F74  @ =gUnknown_08D7B110
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	ldrh r0, [r1, #4]
	bx lr
	.byte 0x00
	.byte 0x00
_08071F74:
	.4byte gUnknown_08D7B110
	THUMB_FUNC_END sub_08071F64

	THUMB_FUNC_START sub_08071F78
sub_08071F78: @ 0x08071F78
	ldr r2, _08071F88  @ =gUnknown_08D7B110
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08071F88:
	.4byte gUnknown_08D7B110
	THUMB_FUNC_END sub_08071F78

	THUMB_FUNC_START sub_08071F8C
sub_08071F8C: @ 0x08071F8C
	add r1, r0, #0
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, _08071F9C  @ =gUnknown_08D7B116
	add r0, r0, r1
	bx lr
	.byte 0x00
	.byte 0x00
_08071F9C:
	.4byte gUnknown_08D7B116
	THUMB_FUNC_END sub_08071F8C

	THUMB_FUNC_START sub_08071FA0
sub_08071FA0: @ 0x08071FA0
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	add r6, r0, #0
	mov r8, r1
	mov r9, r2
	mov r10, r3
	ldr r5, _08071FDC  @ =0x03001F10
	ldr r0, [r5]
	ldr r4, _08071FE0  @ =0x00000FC8
	add r0, r0, r4
	add r1, r6, #0
	bl sub_080734F8
	ldr r0, [r5]
	add r0, r0, r4
	mov r1, r8
	mov r2, r9
	mov r3, r10
	bl sub_0807387C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
_08071FDC:
	.4byte 0x03001F10
_08071FE0:
	.4byte 0x00000FC8
	THUMB_FUNC_END sub_08071FA0

	THUMB_FUNC_START sub_08071FE4
sub_08071FE4: @ 0x08071FE4
	push {r4,lr}
	bl sub_08072144
	cmp r0, #0
	beq _08071FF8
	mov r0, #1
	neg r0, r0
	b _08072022
_08071FF4:
	add r0, r2, #0
	b _08072022
_08071FF8:
	mov r2, #0
	ldr r0, _08072028  @ =gUnknown_08D7B10C
	ldrh r1, [r0]
	cmp r2, r1
	bge _0807201E
	ldr r0, _0807202C  @ =0x03001F10
	ldr r0, [r0]
	ldr r3, _08072030  @ =0x00000FC8
	add r0, r0, r3
	ldr r4, [r0]
	add r3, r1, #0
	ldr r1, _08072034  @ =gUnknown_08D7B110
_08072010:
	ldr r0, [r1]
	cmp r4, r0
	beq _08071FF4
	add r1, r1, #12
	add r2, r2, #1
	cmp r2, r3
	blt _08072010
_0807201E:
	mov r0, #2
	neg r0, r0
_08072022:
	pop {r4}
	pop {r1}
	bx r1
_08072028:
	.4byte gUnknown_08D7B10C
_0807202C:
	.4byte 0x03001F10
_08072030:
	.4byte 0x00000FC8
_08072034:
	.4byte gUnknown_08D7B110
	THUMB_FUNC_END sub_08071FE4

	THUMB_FUNC_START sub_08072038
sub_08072038: @ 0x08072038
	ldr r0, _08072044  @ =0x03001F10
	ldr r0, [r0]
	ldr r1, _08072048  @ =0x00000FC8
	add r0, r0, r1
	ldr r0, [r0]
	bx lr
_08072044:
	.4byte 0x03001F10
_08072048:
	.4byte 0x00000FC8
	THUMB_FUNC_END sub_08072038

	THUMB_FUNC_START sub_0807204C
sub_0807204C: @ 0x0807204C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r3, r0, #0
	add r7, r1, #0
	mov r10, r2
	ldr r0, _080720A0  @ =0x03001F10
	mov r9, r0
	ldr r0, [r0]
	ldr r1, _080720A4  @ =0x00000FC8
	mov r8, r1
	add r0, r0, r8
	ldr r5, _080720A8  @ =gUnknown_08D7B110
	lsl r4, r3, #1
	add r4, r4, r3
	lsl r4, r4, #2
	add r6, r4, r5
	ldr r1, [r6]
	bl sub_080734F8
	ldrh r0, [r6, #4]
	mul r0, r7, r0
	asr r7, r0, #7
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, r8
	add r5, r5, #6
	add r4, r4, r5
	add r1, r7, #0
	mov r2, r10
	add r3, r4, #0
	bl sub_0807387C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080720A0:
	.4byte 0x03001F10
_080720A4:
	.4byte 0x00000FC8
_080720A8:
	.4byte gUnknown_08D7B110
	THUMB_FUNC_END sub_0807204C

	THUMB_FUNC_START sub_080720AC
sub_080720AC: @ 0x080720AC
	push {r4,r5,lr}
	ldr r4, _080720D8  @ =0x03001F10
	ldr r1, [r4]
	ldr r3, _080720DC  @ =0x000014BA
	add r0, r1, r3
	ldrh r2, [r0]
	mov r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _080720C8
	mov r5, #166
	lsl r5, r5, #5
	add r0, r1, r5
	strh r2, [r0]
_080720C8:
	ldr r0, [r4]
	add r0, r0, r3
	ldr r1, _080720E0  @ =0x0000FFFE
	strh r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080720D8:
	.4byte 0x03001F10
_080720DC:
	.4byte 0x000014BA
_080720E0:
	.4byte 0x0000FFFE
	THUMB_FUNC_END sub_080720AC

	THUMB_FUNC_START sub_080720E4
sub_080720E4: @ 0x080720E4
	push {r4,lr}
	ldr r0, _0807210C  @ =0x03001F10
	ldr r2, [r0]
	ldr r0, _08072110  @ =0x000014BA
	add r1, r2, r0
	ldrh r3, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	blt _08072104
	mov r4, #166
	lsl r4, r4, #5
	add r0, r2, r4
	strh r3, [r0]
	ldr r0, _08072114  @ =0x0000FFFF
	strh r0, [r1]
_08072104:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0807210C:
	.4byte 0x03001F10
_08072110:
	.4byte 0x000014BA
_08072114:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_080720E4

	THUMB_FUNC_START sub_08072118
sub_08072118: @ 0x08072118
	push {lr}
	ldr r0, _0807213C  @ =0x03001F10
	ldr r2, [r0]
	ldr r0, _08072140  @ =0x000014BA
	add r3, r2, r0
	mov r0, #0
	ldrsh r1, [r3, r0]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08072138
	mov r1, #166
	lsl r1, r1, #5
	add r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3]
_08072138:
	pop {r0}
	bx r0
_0807213C:
	.4byte 0x03001F10
_08072140:
	.4byte 0x000014BA
	THUMB_FUNC_END sub_08072118

	THUMB_FUNC_START sub_08072144
sub_08072144: @ 0x08072144
	push {lr}
	mov r2, #0
	ldr r0, _08072164  @ =0x03001F10
	ldr r0, [r0]
	ldr r1, _08072168  @ =0x000014BA
	add r0, r0, r1
	mov r3, #0
	ldrsh r1, [r0, r3]
	mov r0, #2
	neg r0, r0
	cmp r1, r0
	bne _0807215E
	mov r2, #1
_0807215E:
	add r0, r2, #0
	pop {r1}
	bx r1
_08072164:
	.4byte 0x03001F10
_08072168:
	.4byte 0x000014BA
	THUMB_FUNC_END sub_08072144

	THUMB_FUNC_START sub_0807216C
sub_0807216C: @ 0x0807216C
	push {r4,r5,lr}
	ldr r0, _080721A0  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0]
	mov r4, #0
	ldr r2, _080721A4  @ =0x000014DC
	add r3, r0, r2
	cmp r4, r1
	bge _08072196
	mov r5, #3
	add r2, r1, #0
_08072182:
	ldrb r1, [r3]
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0807218E
	add r4, r4, #1
_0807218E:
	sub r2, r2, #1
	add r3, r3, #20
	cmp r2, #0
	bne _08072182
_08072196:
	add r0, r4, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080721A0:
	.4byte 0x03001F10
_080721A4:
	.4byte 0x000014DC
	THUMB_FUNC_END sub_0807216C

	THUMB_FUNC_START sub_080721A8
sub_080721A8: @ 0x080721A8
	push {r4-r6,lr}
	add r5, r0, #0
	ldr r0, _080721D4  @ =0x03001F10
	ldr r0, [r0]
	ldrb r4, [r0]
	ldr r1, _080721D8  @ =0x000014DC
	add r2, r0, r1
	mov r3, #0
	cmp r3, r4
	bge _080721E4
	mov r6, #3
_080721BE:
	ldrb r1, [r2]
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080721DC
	ldr r0, [r2, #4]
	cmp r0, r5
	bne _080721DC
	add r0, r2, #0
	b _080721E6
	.byte 0x00
	.byte 0x00
_080721D4:
	.4byte 0x03001F10
_080721D8:
	.4byte 0x000014DC
_080721DC:
	add r3, r3, #1
	add r2, r2, #20
	cmp r3, r4
	blt _080721BE
_080721E4:
	mov r0, #0
_080721E6:
	mov r1, #0
	cmp r0, #0
	bne _080721EE
	mov r1, #1
_080721EE:
	add r0, r1, #0
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080721A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080721F8
sub_080721F8: @ 0x080721F8
	ldr r0, _08072208  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #28
	bx lr
_08072208:
	.4byte 0x03001F10
	THUMB_FUNC_END sub_080721F8

	THUMB_FUNC_START sub_0807220C
sub_0807220C: @ 0x0807220C
	push {r4,lr}
	ldr r4, _0807222C  @ =0x03001F10
	ldr r3, [r4]
	ldrb r2, [r3, #1]
	mov r1, #239
	and r1, r1, r2
	strb r1, [r3, #1]
	ldr r2, [r4]
	lsl r0, r0, #4
	ldrb r1, [r2, #1]
	orr r0, r0, r1
	strb r0, [r2, #1]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0807222C:
	.4byte 0x03001F10
	THUMB_FUNC_END sub_0807220C

	THUMB_FUNC_START sub_08072230
sub_08072230: @ 0x08072230
	push {r4,r5,lr}
	ldr r3, _08072260  @ =0x03001F18
	str r0, [r3]
	ldr r5, _08072264  @ =0x03001F14
	str r1, [r5]
	ldr r2, _08072268  @ =0x03001F1C
	mov r0, #0
	str r0, [r2]
	mov r2, #0
	cmp r2, r1
	bcs _0807225A
	add r4, r3, #0
	mov r3, #0
	add r1, r5, #0
_0807224C:
	ldr r0, [r4]
	add r0, r0, r2
	strb r3, [r0]
	add r2, r2, #1
	ldr r0, [r1]
	cmp r2, r0
	bcc _0807224C
_0807225A:
	pop {r4,r5}
	pop {r0}
	bx r0
_08072260:
	.4byte 0x03001F18
_08072264:
	.4byte 0x03001F14
_08072268:
	.4byte 0x03001F1C
	THUMB_FUNC_END sub_08072230

	THUMB_FUNC_START sub_0807226C
sub_0807226C: @ 0x0807226C
	push {lr}
	ldr r1, _08072288  @ =0x03001F18
	ldr r3, _0807228C  @ =0x03001F1C
	ldr r2, [r1]
	ldr r1, [r3]
	add r2, r2, r1
	add r1, r1, r0
	ldr r0, _08072290  @ =0x03001F14
	ldr r0, [r0]
	cmp r1, r0
	bhi _08072294
	str r1, [r3]
	add r0, r2, #0
	b _08072296
_08072288:
	.4byte 0x03001F18
_0807228C:
	.4byte 0x03001F1C
_08072290:
	.4byte 0x03001F14
_08072294:
	mov r0, #0
_08072296:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0807226C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0807229C
sub_0807229C: @ 0x0807229C
	ldr r1, _080722A4  @ =0x03001F18
	mov r0, #0
	str r0, [r1]
	bx lr
_080722A4:
	.4byte 0x03001F18
	THUMB_FUNC_END sub_0807229C

	THUMB_FUNC_START sub_080722A8
sub_080722A8: @ 0x080722A8
	push {r4-r7,lr}
	add r3, r0, #0
	add r7, r1, #0
	ldrb r5, [r7, #29]
	ldr r0, _080722EC  @ =0x000004C4
	add r6, r3, r0
	mov r1, #1
	neg r1, r1
	ldr r2, _080722F0  @ =0x000004FA
	add r0, r3, r2
	add r2, r2, #1
	add r4, r3, r2
	ldrb r0, [r0]
	ldrb r2, [r4]
	cmp r0, r2
	bhi _080722F4
	sub r1, r7, #4
	sub r1, r1, r3
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #2
	sub r0, r0, r1
	lsl r1, r0, #9
	sub r1, r1, r0
	lsl r0, r1, #18
	add r1, r1, r0
	neg r1, r1
	asr r1, r1, #2
	lsl r0, r1, #2
	add r0, r0, r6
	ldr r0, [r0]
	cmp r0, #1
	bne _08072336
	b _08072360
_080722EC:
	.4byte 0x000004C4
_080722F0:
	.4byte 0x000004FA
_080722F4:
	mov r2, #0
	ldrb r4, [r4]
	cmp r2, r4
	bge _08072336
	ldr r4, _0807230C  @ =0x000004C4
	add r0, r3, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _08072310
	mov r1, #0
	b _0807233A
	.byte 0x00
	.byte 0x00
_0807230C:
	.4byte 0x000004C4
_08072310:
	cmp r0, #1
	beq _0807231E
	ldrb r0, [r0, #29]
	cmp r0, r5
	bge _0807231E
	add r5, r0, #0
	add r1, r2, #0
_0807231E:
	add r2, r2, #1
	ldr r4, _0807235C  @ =0x000004FB
	add r0, r3, r4
	ldrb r0, [r0]
	cmp r2, r0
	bge _08072336
	lsl r0, r2, #2
	add r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	bne _08072310
	add r1, r2, #0
_08072336:
	cmp r1, #0
	blt _08072360
_0807233A:
	lsl r0, r1, #2
	add r3, r0, r6
	ldr r2, [r3]
	cmp r2, #0
	beq _0807234C
	ldrb r1, [r2, #29]
	mov r0, #254
	and r0, r0, r1
	strb r0, [r2, #29]
_0807234C:
	str r7, [r3]
	ldrb r1, [r7, #29]
	mov r0, #1
	orr r0, r0, r1
	strb r0, [r7, #29]
	mov r0, #1
	b _08072362
	.byte 0x00
	.byte 0x00
_0807235C:
	.4byte 0x000004FB
_08072360:
	mov r0, #0
_08072362:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080722A8

	THUMB_FUNC_START sub_08072368
sub_08072368: @ 0x08072368
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	str r0, [sp]
	add r1, r0, #0
	add r1, r1, #4
	str r1, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	ldr r3, _080723CC  @ =0x000004E4
	add r1, r0, r3
	ldr r5, [r1]
	ldrb r2, [r5]
	add r5, r5, #1
	cmp r2, #0
	bne _08072390
	b _08072728
_08072390:
	mov r6, #0
	mov r10, r6
_08072394:
	mov r1, #63
	and r1, r1, r2
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	cmp r1, #15
	bls _080723A4
	b _0807271E
_080723A4:
	mov r0, #1
	lsl r0, r0, r1
	ldr r3, [sp, #8]
	orr r3, r3, r0
	str r3, [sp, #8]
	mov r0, #76
	mul r0, r1, r0
	ldr r6, [sp, #4]
	add r4, r6, r0
	mov r0, #128
	and r2, r2, r0
	cmp r2, #0
	beq _080723D0
	ldrb r1, [r5]
	mov r8, r1
	add r5, r5, #1
	add r2, r4, #0
	add r2, r2, #37
	str r2, [sp, #12]
	b _080723DA
_080723CC:
	.4byte 0x000004E4
_080723D0:
	add r0, r4, #0
	add r0, r0, #37
	ldrb r3, [r0]
	mov r8, r3
	str r0, [sp, #12]
_080723DA:
	ldr r1, _08072424  @ =gUnknown_08B39F1C
	ldrb r0, [r4, #24]
	add r0, r0, r1
	ldrb r2, [r0]
	add r6, r1, #0
	cmp r2, #7
	bgt _080723F6
	ldrb r1, [r4, #26]
	cmp r1, #0
	beq _080723F6
	add r0, r4, #0
	add r0, r0, #52
	add r0, r0, r2
	strb r1, [r0]
_080723F6:
	mov r0, r10
	strb r0, [r4, #26]
	strb r0, [r4, #24]
	strb r0, [r4, #20]
	strb r0, [r4, #18]
	strb r0, [r4, #16]
	mov r1, #128
	neg r1, r1
	strb r1, [r4, #22]
	mov r0, #2
	mov r2, r8
	and r0, r0, r2
	cmp r0, #0
	beq _08072428
	ldrb r0, [r5]
	strb r0, [r4, #18]
	ldrb r1, [r5]
	mov r0, #255
	and r0, r0, r1
	strb r0, [r4, #19]
	add r5, r5, #1
	b _08072436
	.byte 0x00
	.byte 0x00
_08072424:
	.4byte gUnknown_08B39F1C
_08072428:
	mov r0, #32
	mov r3, r8
	and r0, r0, r3
	cmp r0, #0
	beq _08072498
	ldrb r0, [r4, #19]
	strb r0, [r4, #18]
_08072436:
	ldr r0, [sp]
	ldr r1, [r0]
	ldrb r0, [r4, #18]
	sub r0, r0, #1
	lsl r0, r0, #1
	mov r2, #162
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	mov r3, #0
	ldrsh r1, [r1, r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #4
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r1, _080724C0  @ =gUnknown_08EBFE90
	add r0, r1, r0
	str r0, [r4, #60]
	ldrb r1, [r0, #23]
	mov r3, #128
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08072472
	mov r0, #127
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #45
	strb r0, [r1]
_08072472:
	ldr r2, [r4, #64]
	cmp r2, #0
	beq _08072498
	ldrb r1, [r2, #12]
	add r0, r4, #0
	add r0, r0, #44
	strb r1, [r0]
	ldrb r1, [r2, #12]
	sub r0, r0, #8
	strb r1, [r0]
	ldr r0, [r4, #64]
	ldrb r1, [r0, #16]
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	bne _08072498
	add r0, r4, #0
	add r0, r0, #45
	strb r1, [r0]
_08072498:
	mov r0, #4
	mov r2, r8
	and r0, r0, r2
	cmp r0, #0
	beq _080724C4
	ldrb r0, [r5]
	strb r0, [r4, #20]
	ldrb r1, [r5]
	mov r0, #255
	and r0, r0, r1
	strb r0, [r4, #21]
	add r5, r5, #1
	ldrb r0, [r5]
	strb r0, [r4, #22]
	ldrb r1, [r5]
	mov r0, #255
	and r0, r0, r1
	strb r0, [r4, #23]
	add r5, r5, #1
	b _080724D6
_080724C0:
	.4byte gUnknown_08EBFE90
_080724C4:
	mov r0, #64
	mov r3, r8
	and r0, r0, r3
	cmp r0, #0
	beq _080724D6
	ldrb r0, [r4, #21]
	strb r0, [r4, #20]
	ldrb r0, [r4, #23]
	strb r0, [r4, #22]
_080724D6:
	mov r0, #8
	mov r1, r8
	and r0, r0, r1
	cmp r0, #0
	beq _08072516
	ldrb r0, [r5]
	strb r0, [r4, #24]
	ldrb r1, [r5]
	mov r0, #255
	and r0, r0, r1
	strb r0, [r4, #25]
	add r5, r5, #1
	ldrb r3, [r5]
	strb r3, [r4, #26]
	ldrb r1, [r5]
	mov r0, #255
	and r0, r0, r1
	strb r0, [r4, #27]
	add r5, r5, #1
	ldrb r0, [r4, #24]
	add r0, r0, r6
	ldrb r2, [r0]
	cmp r2, #7
	bgt _08072528
	lsl r0, r3, #24
	cmp r0, #0
	bne _08072528
	add r0, r4, #0
	add r0, r0, #52
	add r0, r0, r2
	ldrb r0, [r0]
	b _08072526
_08072516:
	mov r0, r8
	mov r2, #128
	and r0, r0, r2
	cmp r0, #0
	beq _08072528
	ldrb r0, [r4, #25]
	strb r0, [r4, #24]
	ldrb r0, [r4, #27]
_08072526:
	strb r0, [r4, #26]
_08072528:
	mov r0, #1
	mov r3, r8
	and r0, r0, r3
	cmp r0, #0
	beq _08072542
	ldrb r0, [r5]
	strb r0, [r4, #16]
	ldrb r1, [r5]
	mov r0, #255
	and r0, r0, r1
	strb r0, [r4, #17]
	add r5, r5, #1
	b _08072552
_08072542:
	mov r0, #16
	mov r6, r8
	and r0, r0, r6
	cmp r0, #0
	bne _0807254E
	b _080726FA
_0807254E:
	ldrb r0, [r4, #17]
	strb r0, [r4, #16]
_08072552:
	ldrb r0, [r4, #16]
	cmp r0, #120
	bls _0807255A
	b _080726C4
_0807255A:
	mov r12, r0
	ldrb r0, [r4, #24]
	cmp r0, #3
	beq _08072566
	cmp r0, #5
	bne _08072590
_08072566:
	mov r2, r12
	lsl r1, r2, #16
	asr r1, r1, #16
	sub r1, r1, #12
	ldr r0, [r4, #64]
	mov r2, #17
	ldrsb r2, [r0, r2]
	add r2, r2, r1
	ldrb r1, [r4, #28]
	lsl r1, r1, #24
	asr r1, r1, #25
	mov r3, #240
	lsl r3, r3, #5
	add r0, r3, #0
	sub r0, r0, r1
	lsl r2, r2, #16
	asr r2, r2, #10
	sub r0, r0, r2
	add r0, r0, #64
	strh r0, [r4, #42]
	b _080726E8
_08072590:
	ldr r0, [r4, #60]
	add r3, r4, #0
	add r3, r3, #44
	cmp r0, #0
	beq _08072660
	add r3, r0, #0
	mov r6, r12
	lsl r0, r6, #16
	asr r0, r0, #16
	add r0, r3, r0
	ldrb r1, [r0, #27]
	mov r0, #156
	lsl r0, r0, #1
	add r2, r3, r0
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #4
	ldr r1, [r2]
	add r6, r1, r0
	ldrb r1, [r3, #23]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080725CA
	mov r0, #127
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #45
	strb r0, [r1]
_080725CA:
	add r0, r6, #0
	add r0, r0, #40
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080725DE
	add r0, r4, #0
	add r0, r0, #70
	mov r1, r10
	strh r1, [r0]
	b _080725E6
_080725DE:
	add r1, r4, #0
	add r1, r1, #70
	ldr r0, _080726AC  @ =0x0000FFFF
	strh r0, [r1]
_080725E6:
	mov r7, #0
	str r7, [r4, #32]
	mov r2, #0
	mov r9, r2
	mov r0, #1
	strh r0, [r4, #30]
	str r6, [r4, #64]
	ldrb r1, [r6, #16]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _08072604
	add r0, r4, #0
	add r0, r0, #45
	strb r1, [r0]
_08072604:
	ldrb r0, [r6, #12]
	add r2, r4, #0
	add r2, r2, #44
	strb r0, [r2]
	ldrb r0, [r6, #14]
	strb r0, [r4, #28]
	add r0, r4, #0
	add r0, r0, #46
	mov r1, #0
	ldrsb r1, [r0, r1]
	ldrb r0, [r3, #22]
	mul r0, r1, r0
	asr r0, r0, #6
	add r3, r4, #0
	add r3, r3, #47
	strb r0, [r3]
	mov r1, #0
	ldrsb r1, [r3, r1]
	ldrb r0, [r6, #13]
	mul r0, r1, r0
	asr r0, r0, #6
	strb r0, [r3]
	mov r3, #128
	lsl r3, r3, #7
	strh r3, [r4]
	strh r7, [r4, #4]
	mov r6, r9
	strb r6, [r4, #2]
	add r0, r4, #0
	add r0, r0, #8
	mov r1, #128
	lsl r1, r1, #6
	strh r1, [r4, #8]
	strh r7, [r0, #4]
	strb r6, [r0, #2]
	ldr r0, [r4, #64]
	mov r1, #17
	ldrsb r1, [r0, r1]
	mov r3, r12
	lsl r0, r3, #16
	asr r0, r0, #16
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r12, r0
	add r3, r2, #0
_08072660:
	mov r6, r12
	lsl r2, r6, #16
	ldr r0, _080726AC  @ =0x0000FFFF
	strh r0, [r4, #48]
	mov r0, r10
	strh r0, [r4, #50]
	mov r1, #28
	ldrsb r1, [r4, r1]
	lsr r0, r1, #31
	add r1, r1, r0
	asr r1, r1, #1
	mov r6, #240
	lsl r6, r6, #5
	add r0, r6, #0
	sub r0, r0, r1
	ldr r1, _080726B0  @ =0xFFF40000
	add r2, r2, r1
	asr r2, r2, #10
	sub r0, r0, r2
	add r0, r0, #64
	strh r0, [r4, #38]
	strh r0, [r4, #40]
	ldrb r1, [r3]
	add r0, r4, #0
	add r0, r0, #36
	mov r6, #0
	strb r1, [r0]
	ldrb r1, [r4, #29]
	mov r2, #1
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080726B4
	ldrb r0, [r3]
	lsl r0, r0, #1
	orr r0, r0, r2
	strb r0, [r4, #29]
	b _080726E8
_080726AC:
	.4byte 0x0000FFFF
_080726B0:
	.4byte 0xFFF40000
_080726B4:
	ldrb r0, [r3]
	lsl r0, r0, #1
	strb r0, [r4, #29]
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_080722A8
	b _080726E8
_080726C4:
	cmp r0, #121
	bne _080726E0
	ldr r0, [r4, #60]
	cmp r0, #0
	beq _080726E8
	mov r2, #154
	lsl r2, r2, #1
	add r0, r0, r2
	ldrh r0, [r0]
	lsl r0, r0, #1
	mov r1, #1
	orr r0, r0, r1
	strh r0, [r4, #50]
	b _080726E8
_080726E0:
	add r0, r4, #0
	add r0, r0, #44
	mov r3, r10
	strb r3, [r0]
_080726E8:
	ldrb r0, [r4, #24]
	cmp r0, #4
	beq _080726F2
	cmp r0, #6
	bne _080726FA
_080726F2:
	add r1, r4, #0
	add r1, r1, #70
	ldr r0, _08072748  @ =0x0000FFFF
	strh r0, [r1]
_080726FA:
	ldrb r1, [r4, #22]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0807270A
	add r0, r4, #0
	add r0, r0, #45
	strb r1, [r0]
_0807270A:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_080731C4
	add r0, r4, #0
	bl sub_08073464
	mov r1, r8
	ldr r6, [sp, #12]
	strb r1, [r6]
_0807271E:
	ldrb r2, [r5]
	add r5, r5, #1
	cmp r2, #0
	beq _08072728
	b _08072394
_08072728:
	ldr r2, [sp]
	ldr r3, _0807274C  @ =0x000004FC
	add r1, r2, r3
	ldr r6, [sp, #8]
	str r6, [r1]
	sub r3, r3, #24
	add r1, r2, r3
	str r5, [r1]
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
_08072748:
	.4byte 0x0000FFFF
_0807274C:
	.4byte 0x000004FC
	THUMB_FUNC_END sub_08072368

	THUMB_FUNC_START sub_08072750
sub_08072750: @ 0x08072750
	push {r4-r7,lr}
	add r4, r0, #0
	add r5, r1, #0
	ldrh r1, [r4]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08072824
	ldrb r0, [r4, #2]
	mov r6, #15
	and r6, r6, r0
	add r7, r0, #0
	cmp r2, #0
	bne _08072784
	add r0, r5, #0
	add r0, r0, #53
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08072784
	add r0, r5, #0
	add r0, r0, #49
	ldrb r0, [r0]
	cmp r6, r0
	beq _08072824
_08072784:
	lsr r1, r7, #4
	lsl r0, r1, #2
	add r0, r5, r0
	ldrh r2, [r4, #4]
	ldrh r0, [r0]
	cmp r2, r0
	bne _0807280E
	mov r0, #240
	mov r12, r0
	mov r3, r12
	and r3, r3, r7
	orr r3, r3, r1
	strb r3, [r4, #2]
	mov r7, #15
	add r2, r3, #0
	and r2, r2, r7
	add r6, r2, #0
	add r0, r5, #0
	add r0, r0, #53
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080727E6
	add r0, r5, #0
	add r0, r0, #52
	ldrb r0, [r0]
	cmp r6, r0
	bne _080727EE
	mov r2, r12
	and r2, r2, r3
	add r0, r5, #0
	add r0, r0, #51
	ldrb r0, [r0]
	orr r2, r2, r0
	strb r2, [r4, #2]
	add r3, r2, #0
	and r3, r3, r7
	lsl r1, r3, #2
	add r1, r5, r1
	ldrh r1, [r1]
	strh r1, [r4, #4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r6, r0
	bne _080727EE
	lsl r0, r2, #4
	orr r0, r0, r3
	b _080727EC
_080727E6:
	add r0, r6, #1
	lsl r0, r0, #4
	orr r0, r0, r2
_080727EC:
	strb r0, [r4, #2]
_080727EE:
	lsl r0, r6, #2
	add r0, r5, r0
	ldrh r0, [r0, #2]
	lsl r2, r0, #8
	strh r2, [r4]
	ldrb r0, [r4, #2]
	add r1, r5, #0
	add r1, r1, #48
	lsr r0, r0, #4
	ldrb r1, [r1]
	cmp r0, r1
	bne _08072824
	mov r0, #1
	orr r2, r2, r0
	strh r2, [r4]
	b _08072824
_0807280E:
	lsl r1, r6, #1
	add r0, r5, #0
	add r0, r0, #54
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #1
	ldrh r1, [r4]
	add r0, r0, r1
	strh r0, [r4]
	add r0, r2, #1
	strh r0, [r4, #4]
_08072824:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08072750

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0807282C
sub_0807282C: @ 0x0807282C
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r2, [r4, #20]
	ldrh r0, [r4, #50]
	lsr r0, r0, #1
	cmp r0, #0
	beq _0807284A
	ldrh r1, [r4, #48]
	sub r1, r1, r0
	cmp r1, #0
	bge _08072848
	mov r0, #0
	strh r0, [r4, #48]
	b _0807284A
_08072848:
	strh r1, [r4, #48]
_0807284A:
	mov r0, #240
	and r0, r0, r2
	cmp r0, #208
	beq _08072884
	cmp r0, #208
	bgt _08072860
	cmp r0, #96
	beq _08072876
	cmp r0, #112
	beq _08072866
	b _080728A2
_08072860:
	cmp r0, #224
	beq _08072894
	b _080728A2
_08072866:
	add r0, r4, #0
	add r0, r0, #44
	mov r1, #15
	and r2, r2, r1
	ldrb r3, [r0]
	add r1, r2, r3
	strb r1, [r0]
	b _080728A2
_08072876:
	add r1, r4, #0
	add r1, r1, #44
	mov r0, #15
	and r2, r2, r0
	ldrb r0, [r1]
	sub r0, r0, r2
	b _080728A0
_08072884:
	add r3, r4, #0
	add r3, r3, #45
	mov r0, #15
	and r2, r2, r0
	ldrb r0, [r3]
	sub r0, r0, r2
	strb r0, [r3]
	b _080728A2
_08072894:
	add r1, r4, #0
	add r1, r1, #45
	mov r0, #15
	and r2, r2, r0
	ldrb r3, [r1]
	add r0, r2, r3
_080728A0:
	strb r0, [r1]
_080728A2:
	ldr r2, [r4, #60]
	add r0, r2, #0
	add r0, r0, #201
	ldrb r1, [r0]
	mov r5, #1
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080728C4
	add r1, r2, #0
	add r1, r1, #148
	ldrh r0, [r4, #50]
	add r2, r5, #0
	and r2, r2, r0
	add r0, r4, #0
	bl sub_08072750
_080728C4:
	ldr r2, [r4, #60]
	ldr r1, _080728EC  @ =0x00000119
	add r0, r2, r1
	ldrb r1, [r0]
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080728E6
	add r0, r4, #0
	add r0, r0, #8
	add r1, r2, #0
	add r1, r1, #228
	ldrh r3, [r4, #50]
	add r2, r5, #0
	and r2, r2, r3
	bl sub_08072750
_080728E6:
	pop {r4,r5}
	pop {r0}
	bx r0
_080728EC:
	.4byte 0x00000119
	THUMB_FUNC_END sub_0807282C

	THUMB_FUNC_START sub_080728F0
sub_080728F0: @ 0x080728F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r5, r0, #0
	mov r12, r1
	mov r8, r2
	ldrb r4, [r5, #26]
	cmp r4, #0
	bne _08072954
	add r6, r5, #0
	add r6, r6, #45
	mov r7, #0
	ldrsb r7, [r6, r7]
	ldr r0, _08072944  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08072922
	mov r0, #32
	strb r0, [r6]
_08072922:
	ldr r0, _08072948  @ =0x03001F28
	str r5, [r0]
	ldr r4, _0807294C  @ =0x03001EFC
	mov r3, #0
	ldr r0, _08072950  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08072934
	mov r3, #1
_08072934:
	ldr r4, [r4]
	add r0, r5, #0
	mov r1, r12
	mov r2, r8
	bl _call_via_r4
	strb r7, [r6]
	b _080729DC
_08072944:
	.4byte 0x03001F10
_08072948:
	.4byte 0x03001F28
_0807294C:
	.4byte 0x03001EFC
_08072950:
	.4byte 0x03000820
_08072954:
	ldr r0, _080729EC  @ =0x03000824
	ldr r3, [r0]
	add r7, r5, #0
	add r7, r7, #45
	ldr r0, _080729F0  @ =0x03001F10
	mov r9, r0
	ldr r1, _080729F4  @ =0x03001F28
	mov r10, r1
	ldr r6, _080729F8  @ =gUnknown_08B39FC4
	lsr r0, r4, #4
	cmp r3, #2
	ble _08072972
_0807296C:
	sub r3, r3, #3
	cmp r3, #2
	bgt _0807296C
_08072972:
	mov r2, #40
	ldrsh r1, [r5, r2]
	str r1, [sp]
	mov r2, #15
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r0, [r0]
	sub r0, r1, r0
	str r0, [sp, #4]
	and r4, r4, r2
	lsl r0, r4, #2
	add r0, r0, r6
	ldr r0, [r0]
	sub r1, r1, r0
	str r1, [sp, #8]
	lsl r0, r3, #2
	add r0, sp, r0
	ldr r0, [r0]
	strh r0, [r5, #38]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #39
	bgt _080729A4
	mov r0, #40
	strh r0, [r5, #38]
_080729A4:
	add r2, r7, #0
	mov r6, #0
	ldrsb r6, [r2, r6]
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _080729BC
	mov r0, #32
	strb r0, [r2]
_080729BC:
	mov r2, r10
	str r5, [r2]
	mov r3, #0
	ldr r1, _080729FC  @ =0x03000820
	ldr r0, [r1]
	cmp r0, #0
	bne _080729CC
	mov r3, #1
_080729CC:
	ldr r2, _08072A00  @ =0x03001EFC
	ldr r4, [r2]
	add r0, r5, #0
	mov r1, r12
	mov r2, r8
	bl _call_via_r4
	strb r6, [r7]
_080729DC:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080729EC:
	.4byte 0x03000824
_080729F0:
	.4byte 0x03001F10
_080729F4:
	.4byte 0x03001F28
_080729F8:
	.4byte gUnknown_08B39FC4
_080729FC:
	.4byte 0x03000820
_08072A00:
	.4byte 0x03001EFC
	THUMB_FUNC_END sub_080728F0

	THUMB_FUNC_START sub_08072A04
sub_08072A04: @ 0x08072A04
	push {r4-r7,lr}
	add r3, r0, #0
	mov r12, r1
	ldrb r1, [r3, #26]
	cmp r1, #0
	bne _08072A14
	add r0, r0, #52
	ldrb r1, [r0]
_08072A14:
	ldr r0, _08072A74  @ =0x03000824
	ldr r0, [r0]
	cmp r0, #0
	beq _08072A34
	lsl r1, r1, #2
	ldrh r0, [r3, #38]
	sub r0, r0, r1
	strh r0, [r3, #38]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #39
	bgt _08072A30
	mov r0, #40
	strh r0, [r3, #38]
_08072A30:
	ldrh r0, [r3, #38]
	strh r0, [r3, #40]
_08072A34:
	add r5, r3, #0
	add r5, r5, #45
	mov r7, #0
	ldrsb r7, [r5, r7]
	ldr r0, _08072A78  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08072A4E
	mov r0, #32
	strb r0, [r5]
_08072A4E:
	ldr r0, _08072A7C  @ =0x03001F28
	str r3, [r0]
	ldr r4, _08072A80  @ =0x03001EFC
	mov r6, #0
	ldr r0, _08072A84  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08072A60
	mov r6, #1
_08072A60:
	ldr r4, [r4]
	add r0, r3, #0
	mov r1, r12
	add r3, r6, #0
	bl _call_via_r4
	strb r7, [r5]
	pop {r4-r7}
	pop {r0}
	bx r0
_08072A74:
	.4byte 0x03000824
_08072A78:
	.4byte 0x03001F10
_08072A7C:
	.4byte 0x03001F28
_08072A80:
	.4byte 0x03001EFC
_08072A84:
	.4byte 0x03000820
	THUMB_FUNC_END sub_08072A04

	THUMB_FUNC_START sub_08072A88
sub_08072A88: @ 0x08072A88
	push {r4-r7,lr}
	add r3, r0, #0
	mov r12, r1
	ldrb r1, [r3, #26]
	cmp r1, #0
	bne _08072A98
	add r0, r0, #53
	ldrb r1, [r0]
_08072A98:
	ldr r0, _08072AFC  @ =0x03000824
	ldr r0, [r0]
	cmp r0, #0
	beq _08072ABA
	lsl r0, r1, #2
	ldrh r1, [r3, #38]
	add r0, r0, r1
	strh r0, [r3, #38]
	lsl r0, r0, #16
	asr r0, r0, #16
	mov r1, #240
	lsl r1, r1, #5
	cmp r0, r1
	ble _08072AB6
	strh r1, [r3, #38]
_08072AB6:
	ldrh r0, [r3, #38]
	strh r0, [r3, #40]
_08072ABA:
	add r5, r3, #0
	add r5, r5, #45
	mov r7, #0
	ldrsb r7, [r5, r7]
	ldr r0, _08072B00  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08072AD4
	mov r0, #32
	strb r0, [r5]
_08072AD4:
	ldr r0, _08072B04  @ =0x03001F28
	str r3, [r0]
	ldr r4, _08072B08  @ =0x03001EFC
	mov r6, #0
	ldr r0, _08072B0C  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08072AE6
	mov r6, #1
_08072AE6:
	ldr r4, [r4]
	add r0, r3, #0
	mov r1, r12
	add r3, r6, #0
	bl _call_via_r4
	strb r7, [r5]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08072AFC:
	.4byte 0x03000824
_08072B00:
	.4byte 0x03001F10
_08072B04:
	.4byte 0x03001F28
_08072B08:
	.4byte 0x03001EFC
_08072B0C:
	.4byte 0x03000820
	THUMB_FUNC_END sub_08072A88

	THUMB_FUNC_START sub_08072B10
sub_08072B10: @ 0x08072B10
	push {r4-r7,lr}
	add r5, r0, #0
	mov r12, r1
	ldrb r4, [r5, #26]
	mov r0, #38
	ldrsh r1, [r5, r0]
	mov r0, #42
	ldrsh r3, [r5, r0]
	cmp r4, #0
	bne _08072B2A
	add r0, r5, #0
	add r0, r0, #54
	ldrb r4, [r0]
_08072B2A:
	lsl r4, r4, #2
	ldr r0, _08072B44  @ =0x03000824
	ldr r0, [r0]
	cmp r0, #0
	beq _08072B58
	cmp r3, #0
	beq _08072B52
	cmp r1, r3
	ble _08072B48
	sub r1, r1, r4
	cmp r1, r3
	bgt _08072B52
	b _08072B4E
_08072B44:
	.4byte 0x03000824
_08072B48:
	add r1, r1, r4
	cmp r1, r3
	blt _08072B52
_08072B4E:
	add r1, r3, #0
	mov r3, #0
_08072B52:
	strh r1, [r5, #38]
	strh r1, [r5, #40]
	strh r3, [r5, #42]
_08072B58:
	add r6, r5, #0
	add r6, r6, #45
	mov r7, #0
	ldrsb r7, [r6, r7]
	ldr r0, _08072B98  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08072B72
	mov r0, #32
	strb r0, [r6]
_08072B72:
	ldr r0, _08072B9C  @ =0x03001F28
	str r5, [r0]
	ldr r4, _08072BA0  @ =0x03001EFC
	mov r3, #0
	ldr r0, _08072BA4  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08072B84
	mov r3, #1
_08072B84:
	ldr r4, [r4]
	add r0, r5, #0
	mov r1, r12
	bl _call_via_r4
	strb r7, [r6]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08072B98:
	.4byte 0x03001F10
_08072B9C:
	.4byte 0x03001F28
_08072BA0:
	.4byte 0x03001EFC
_08072BA4:
	.4byte 0x03000820
	THUMB_FUNC_END sub_08072B10

	THUMB_FUNC_START sub_08072BA8
sub_08072BA8: @ 0x08072BA8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	add r7, r1, #0
	mov r8, r2
	ldrb r3, [r0, #26]
	mov r1, #40
	ldrsh r2, [r0, r1]
	add r0, r0, #68
	ldrb r0, [r0]
	lsl r0, r0, #8
	ldr r1, _08072C00  @ =gUnknown_08B39C1C
	add r5, r0, r1
	mov r0, r12
	add r0, r0, #72
	mov r1, #0
	ldrsh r4, [r0, r1]
	cmp r3, #0
	bne _08072BD4
	sub r0, r0, #17
	ldrb r3, [r0]
_08072BD4:
	mov r0, #15
	add r1, r3, #0
	and r1, r1, r0
	lsl r1, r1, #1
	asr r3, r3, #4
	and r3, r3, r0
	lsl r0, r4, #2
	add r0, r0, r5
	ldr r0, [r0]
	mul r0, r1, r0
	asr r0, r0, #16
	add r0, r2, r0
	mov r1, r12
	strh r0, [r1, #38]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #39
	bgt _08072C04
	mov r0, #40
	strh r0, [r1, #38]
	b _08072C10
	.byte 0x00
	.byte 0x00
_08072C00:
	.4byte gUnknown_08B39C1C
_08072C04:
	mov r1, #240
	lsl r1, r1, #5
	cmp r0, r1
	ble _08072C10
	mov r0, r12
	strh r1, [r0, #38]
_08072C10:
	add r4, r4, r3
	mov r0, #63
	and r4, r4, r0
	mov r0, r12
	add r0, r0, #72
	strh r4, [r0]
	mov r5, r12
	add r5, r5, #45
	mov r6, #0
	ldrsb r6, [r5, r6]
	ldr r0, _08072C64  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08072C36
	mov r0, #32
	strb r0, [r5]
_08072C36:
	ldr r0, _08072C68  @ =0x03001F28
	mov r1, r12
	str r1, [r0]
	ldr r4, _08072C6C  @ =0x03001EFC
	mov r3, #0
	ldr r0, _08072C70  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08072C4A
	mov r3, #1
_08072C4A:
	ldr r4, [r4]
	mov r0, r12
	add r1, r7, #0
	mov r2, r8
	bl _call_via_r4
	strb r6, [r5]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08072C64:
	.4byte 0x03001F10
_08072C68:
	.4byte 0x03001F28
_08072C6C:
	.4byte 0x03001EFC
_08072C70:
	.4byte 0x03000820
	THUMB_FUNC_END sub_08072BA8

	THUMB_FUNC_START sub_08072C74
sub_08072C74: @ 0x08072C74
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	add r7, r1, #0
	mov r8, r2
	add r0, r0, #54
	ldrb r4, [r0]
	mov r0, r12
	ldrb r2, [r0, #26]
	mov r1, #42
	ldrsh r3, [r0, r1]
	mov r5, #38
	ldrsh r1, [r0, r5]
	mov r0, #240
	and r0, r0, r2
	cmp r0, #0
	beq _08072C9C
	lsr r0, r2, #4
	b _08072CA2
_08072C9C:
	mov r0, #15
	and r0, r0, r2
	neg r0, r0
_08072CA2:
	add r2, r0, #0
	lsl r4, r4, #2
	ldr r0, _08072CC0  @ =0x03000824
	ldr r0, [r0]
	cmp r0, #0
	beq _08072CFC
	cmp r3, #0
	beq _08072CCE
	cmp r1, r3
	bge _08072CC4
	add r1, r1, r4
	cmp r1, r3
	blt _08072CCE
	b _08072CCA
	.byte 0x00
	.byte 0x00
_08072CC0:
	.4byte 0x03000824
_08072CC4:
	sub r1, r1, r4
	cmp r1, r3
	bgt _08072CCE
_08072CCA:
	add r1, r3, #0
	mov r3, #0
_08072CCE:
	mov r0, r12
	strh r3, [r0, #42]
	strh r1, [r0, #38]
	strh r1, [r0, #40]
	mov r1, r12
	add r1, r1, #44
	ldrb r0, [r1]
	add r0, r0, r2
	strb r0, [r1]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _08072CEC
	mov r0, #0
	b _08072CF2
_08072CEC:
	cmp r0, #64
	ble _08072CF4
	mov r0, #64
_08072CF2:
	strb r0, [r1]
_08072CF4:
	ldrb r1, [r1]
	mov r0, r12
	add r0, r0, #36
	strb r1, [r0]
_08072CFC:
	mov r5, r12
	add r5, r5, #45
	mov r6, #0
	ldrsb r6, [r5, r6]
	ldr r0, _08072D44  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08072D16
	mov r0, #32
	strb r0, [r5]
_08072D16:
	ldr r0, _08072D48  @ =0x03001F28
	mov r1, r12
	str r1, [r0]
	ldr r4, _08072D4C  @ =0x03001EFC
	mov r3, #0
	ldr r0, _08072D50  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08072D2A
	mov r3, #1
_08072D2A:
	ldr r4, [r4]
	mov r0, r12
	add r1, r7, #0
	mov r2, r8
	bl _call_via_r4
	strb r6, [r5]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08072D44:
	.4byte 0x03001F10
_08072D48:
	.4byte 0x03001F28
_08072D4C:
	.4byte 0x03001EFC
_08072D50:
	.4byte 0x03000820
	THUMB_FUNC_END sub_08072C74

	THUMB_FUNC_START sub_08072D54
sub_08072D54: @ 0x08072D54
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	add r7, r1, #0
	mov r8, r2
	add r0, r0, #55
	ldrb r4, [r0]
	mov r0, r12
	mov r1, #40
	ldrsh r6, [r0, r1]
	ldrb r5, [r0, #26]
	add r0, r0, #68
	ldrb r0, [r0]
	lsl r0, r0, #8
	ldr r1, _08072D8C  @ =gUnknown_08B39C1C
	add r2, r0, r1
	mov r0, r12
	add r0, r0, #72
	mov r1, #0
	ldrsh r3, [r0, r1]
	mov r0, #240
	and r0, r0, r5
	cmp r0, #0
	beq _08072D90
	lsr r0, r5, #4
	b _08072D96
	.byte 0x00
	.byte 0x00
_08072D8C:
	.4byte gUnknown_08B39C1C
_08072D90:
	mov r0, #15
	and r0, r0, r5
	neg r0, r0
_08072D96:
	add r5, r0, #0
	mov r0, #15
	add r1, r4, #0
	and r1, r1, r0
	lsl r1, r1, #1
	asr r4, r4, #4
	and r4, r4, r0
	lsl r0, r3, #2
	add r0, r0, r2
	ldr r0, [r0]
	mul r0, r1, r0
	asr r0, r0, #16
	add r0, r6, r0
	mov r1, r12
	strh r0, [r1, #38]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #39
	bgt _08072DC2
	mov r0, #40
	strh r0, [r1, #38]
	b _08072DCE
_08072DC2:
	mov r1, #240
	lsl r1, r1, #5
	cmp r0, r1
	ble _08072DCE
	mov r0, r12
	strh r1, [r0, #38]
_08072DCE:
	add r3, r3, r4
	mov r0, #63
	and r3, r3, r0
	mov r0, r12
	add r0, r0, #72
	strh r3, [r0]
	ldr r0, _08072DF8  @ =0x03000824
	ldr r0, [r0]
	cmp r0, #0
	beq _08072E0C
	mov r1, r12
	add r1, r1, #44
	ldrb r0, [r1]
	add r0, r0, r5
	strb r0, [r1]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _08072DFC
	mov r0, #0
	b _08072E02
_08072DF8:
	.4byte 0x03000824
_08072DFC:
	cmp r0, #64
	ble _08072E04
	mov r0, #64
_08072E02:
	strb r0, [r1]
_08072E04:
	ldrb r1, [r1]
	mov r0, r12
	add r0, r0, #36
	strb r1, [r0]
_08072E0C:
	mov r5, r12
	add r5, r5, #45
	mov r6, #0
	ldrsb r6, [r5, r6]
	ldr r0, _08072E54  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08072E26
	mov r0, #32
	strb r0, [r5]
_08072E26:
	ldr r0, _08072E58  @ =0x03001F28
	mov r1, r12
	str r1, [r0]
	ldr r4, _08072E5C  @ =0x03001EFC
	mov r3, #0
	ldr r0, _08072E60  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08072E3A
	mov r3, #1
_08072E3A:
	ldr r4, [r4]
	mov r0, r12
	add r1, r7, #0
	mov r2, r8
	bl _call_via_r4
	strb r6, [r5]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08072E54:
	.4byte 0x03001F10
_08072E58:
	.4byte 0x03001F28
_08072E5C:
	.4byte 0x03001EFC
_08072E60:
	.4byte 0x03000820
	THUMB_FUNC_END sub_08072D54

	THUMB_FUNC_START sub_08072E64
sub_08072E64: @ 0x08072E64
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	add r7, r1, #0
	mov r8, r2
	ldrb r3, [r0, #26]
	add r0, r0, #36
	mov r2, #0
	ldrsb r2, [r0, r2]
	add r0, r0, #33
	ldrb r0, [r0]
	lsl r0, r0, #8
	ldr r1, _08072EBC  @ =gUnknown_08B39C1C
	add r5, r0, r1
	mov r0, r12
	add r0, r0, #74
	mov r1, #0
	ldrsh r4, [r0, r1]
	cmp r3, #0
	bne _08072E92
	sub r0, r0, #17
	ldrb r3, [r0]
_08072E92:
	mov r0, #15
	add r1, r3, #0
	and r1, r1, r0
	lsl r1, r1, #2
	asr r3, r3, #4
	and r3, r3, r0
	lsl r0, r4, #2
	add r0, r0, r5
	ldr r0, [r0]
	mul r0, r1, r0
	asr r0, r0, #16
	add r0, r2, r0
	mov r1, r12
	add r1, r1, #44
	strb r0, [r1]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _08072EC0
	mov r0, #0
	b _08072EC6
_08072EBC:
	.4byte gUnknown_08B39C1C
_08072EC0:
	cmp r0, #64
	ble _08072EC8
	mov r0, #64
_08072EC6:
	strb r0, [r1]
_08072EC8:
	add r4, r4, r3
	mov r0, #63
	and r4, r4, r0
	mov r0, r12
	add r0, r0, #74
	strh r4, [r0]
	mov r5, r12
	add r5, r5, #45
	mov r6, #0
	ldrsb r6, [r5, r6]
	ldr r0, _08072F1C  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08072EEE
	mov r0, #32
	strb r0, [r5]
_08072EEE:
	ldr r0, _08072F20  @ =0x03001F28
	mov r1, r12
	str r1, [r0]
	ldr r4, _08072F24  @ =0x03001EFC
	mov r3, #0
	ldr r0, _08072F28  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08072F02
	mov r3, #1
_08072F02:
	ldr r4, [r4]
	mov r0, r12
	add r1, r7, #0
	mov r2, r8
	bl _call_via_r4
	strb r6, [r5]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08072F1C:
	.4byte 0x03001F10
_08072F20:
	.4byte 0x03001F28
_08072F24:
	.4byte 0x03001EFC
_08072F28:
	.4byte 0x03000820
	THUMB_FUNC_END sub_08072E64

	THUMB_FUNC_START sub_08072F2C
sub_08072F2C: @ 0x08072F2C
	push {r4-r7,lr}
	add r6, r0, #0
	mov r12, r1
	ldrb r1, [r6, #26]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #0
	beq _08072F40
	lsr r3, r1, #4
	b _08072F46
_08072F40:
	mov r0, #15
	and r1, r1, r0
	neg r3, r1
_08072F46:
	ldr r0, _08072F64  @ =0x03000824
	ldr r0, [r0]
	cmp r0, #0
	beq _08072F78
	add r1, r6, #0
	add r1, r1, #44
	ldrb r0, [r1]
	add r0, r0, r3
	strb r0, [r1]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _08072F68
	mov r0, #0
	b _08072F6E
_08072F64:
	.4byte 0x03000824
_08072F68:
	cmp r0, #64
	ble _08072F70
	mov r0, #64
_08072F6E:
	strb r0, [r1]
_08072F70:
	ldrb r1, [r1]
	add r0, r6, #0
	add r0, r0, #36
	strb r1, [r0]
_08072F78:
	add r5, r6, #0
	add r5, r5, #45
	mov r7, #0
	ldrsb r7, [r5, r7]
	ldr r0, _08072FB8  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08072F92
	mov r0, #32
	strb r0, [r5]
_08072F92:
	ldr r0, _08072FBC  @ =0x03001F28
	str r6, [r0]
	ldr r4, _08072FC0  @ =0x03001EFC
	mov r3, #0
	ldr r0, _08072FC4  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08072FA4
	mov r3, #1
_08072FA4:
	ldr r4, [r4]
	add r0, r6, #0
	mov r1, r12
	bl _call_via_r4
	strb r7, [r5]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08072FB8:
	.4byte 0x03001F10
_08072FBC:
	.4byte 0x03001F28
_08072FC0:
	.4byte 0x03001EFC
_08072FC4:
	.4byte 0x03000820
	THUMB_FUNC_END sub_08072F2C

	THUMB_FUNC_START sub_08072FC8
sub_08072FC8: @ 0x08072FC8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	str r0, [sp]
	str r1, [sp, #4]
	mov r10, r2
	ldr r1, _0807307C  @ =0x000004FA
	add r0, r0, r1
	ldrb r0, [r0]
	mov r9, r0
	ldr r2, [sp]
	add r1, r1, #2
	add r0, r2, r1
	ldrb r0, [r0]
	str r0, [sp, #8]
	ldr r0, _08073080  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	beq _08073094
	mov r2, #0
	mov r8, r2
	cmp r8, r9
	bcc _08072FFE
	b _080731B0
_08072FFE:
	mov r0, #76
	mov r1, r8
	mul r1, r0, r1
	add r0, r1, #0
	add r0, r0, #4
	ldr r2, [sp]
	add r6, r2, r0
	ldr r0, [r6, #60]
	cmp r0, #0
	beq _08073072
	mov r1, #38
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _08073072
	ldr r0, [sp, #8]
	mov r2, r8
	asr r0, r0, r2
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08073038
	ldrb r7, [r6, #24]
	cmp r7, #38
	bne _08073038
	ldr r0, _08073084  @ =0x03000824
	ldr r0, [r0]
	ldrb r1, [r6, #26]
	cmp r0, r1
	bcc _08073072
_08073038:
	add r5, r6, #0
	add r5, r5, #45
	mov r7, #0
	ldrsb r7, [r5, r7]
	ldr r0, _08073088  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08073052
	mov r0, #32
	strb r0, [r5]
_08073052:
	ldr r0, _0807308C  @ =0x03001F28
	str r6, [r0]
	ldr r4, _08073090  @ =0x03001EFC
	mov r3, #0
	ldr r0, _08073080  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08073064
	mov r3, #1
_08073064:
	ldr r4, [r4]
	add r0, r6, #0
	ldr r1, [sp, #4]
	mov r2, r10
	bl _call_via_r4
	strb r7, [r5]
_08073072:
	mov r2, #1
	add r8, r8, r2
	cmp r8, r9
	bcc _08072FFE
	b _080731B0
_0807307C:
	.4byte 0x000004FA
_08073080:
	.4byte 0x03000820
_08073084:
	.4byte 0x03000824
_08073088:
	.4byte 0x03001F10
_0807308C:
	.4byte 0x03001F28
_08073090:
	.4byte 0x03001EFC
_08073094:
	mov r0, #0
	mov r8, r0
	cmp r8, r9
	bcc _0807309E
	b _080731B0
_0807309E:
	mov r0, #76
	mov r1, r8
	mul r1, r0, r1
	add r0, r1, #0
	add r0, r0, #4
	ldr r2, [sp]
	add r6, r2, r0
	ldr r0, [r6, #60]
	cmp r0, #0
	beq _080731A6
	mov r1, #38
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080731A6
	ldr r0, [sp, #8]
	mov r2, r8
	asr r0, r0, r2
	mov r4, #1
	and r0, r0, r4
	cmp r0, #0
	bne _08073174
	ldrh r0, [r6, #40]
	strh r0, [r6, #38]
	add r7, r6, #0
	add r7, r7, #36
	ldrb r0, [r7]
	add r5, r6, #0
	add r5, r5, #44
	strb r0, [r5]
	ldr r2, [r6, #60]
	add r0, r2, #0
	add r0, r0, #201
	ldrb r1, [r0]
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080730F8
	add r1, r2, #0
	add r1, r1, #148
	ldrh r0, [r6, #50]
	add r2, r4, #0
	and r2, r2, r0
	add r0, r6, #0
	bl sub_08072750
_080730F8:
	ldr r2, [r6, #60]
	ldr r1, _08073160  @ =0x00000119
	add r0, r2, r1
	ldrb r1, [r0]
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0807311A
	add r0, r6, #0
	add r0, r0, #8
	add r1, r2, #0
	add r1, r1, #228
	ldrh r3, [r6, #50]
	add r2, r4, #0
	and r2, r2, r3
	bl sub_08072750
_0807311A:
	ldrh r0, [r6, #38]
	strh r0, [r6, #40]
	ldrb r0, [r5]
	strb r0, [r7]
	add r5, r6, #0
	add r5, r5, #45
	mov r7, #0
	ldrsb r7, [r5, r7]
	ldr r0, _08073164  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _0807313C
	mov r0, #32
	strb r0, [r5]
_0807313C:
	ldr r0, _08073168  @ =0x03001F28
	str r6, [r0]
	ldr r4, _0807316C  @ =0x03001EFC
	mov r3, #0
	ldr r0, _08073170  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _0807314E
	mov r3, #1
_0807314E:
	ldr r4, [r4]
	add r0, r6, #0
	ldr r1, [sp, #4]
	mov r2, r10
	bl _call_via_r4
	strb r7, [r5]
	b _080731A6
	.byte 0x00
	.byte 0x00
_08073160:
	.4byte 0x00000119
_08073164:
	.4byte 0x03001F10
_08073168:
	.4byte 0x03001F28
_0807316C:
	.4byte 0x03001EFC
_08073170:
	.4byte 0x03000820
_08073174:
	ldrb r7, [r6, #24]
	ldrh r0, [r6, #40]
	strh r0, [r6, #38]
	add r5, r6, #0
	add r5, r5, #36
	ldrb r0, [r5]
	add r4, r6, #0
	add r4, r4, #44
	strb r0, [r4]
	add r0, r6, #0
	bl sub_0807282C
	ldrh r0, [r6, #38]
	strh r0, [r6, #40]
	ldrb r0, [r4]
	strb r0, [r5]
	ldr r1, _080731C0  @ =gUnknown_08B3A004
	lsl r0, r7, #2
	add r0, r0, r1
	ldr r3, [r0]
	add r0, r6, #0
	ldr r1, [sp, #4]
	mov r2, r10
	bl _call_via_r3
_080731A6:
	mov r2, #1
	add r8, r8, r2
	cmp r8, r9
	bcs _080731B0
	b _0807309E
_080731B0:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080731C0:
	.4byte gUnknown_08B3A004
	THUMB_FUNC_END sub_08072FC8

	THUMB_FUNC_START sub_080731C4
sub_080731C4: @ 0x080731C4
	push {r4-r6,lr}
	add r6, r0, #0
	add r3, r1, #0
	ldrb r0, [r3, #24]
	ldrb r2, [r3, #26]
	sub r0, r0, #8
	cmp r0, #28
	bls _080731D6
	b _08073454
_080731D6:
	lsl r0, r0, #2
	ldr r1, _080731E0  @ =0x080731E4
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_080731E0:
	.4byte _080731E4
_080731E4:
	.4byte _08073258
	.4byte _08073260
	.4byte _08073454
	.4byte _080733CC
	.4byte _08073266
	.4byte _08073408
	.4byte _08073454
	.4byte _0807331C
	.4byte _08073454
	.4byte _08073454
	.4byte _08073454
	.4byte _08073454
	.4byte _08073454
	.4byte _08073454
	.4byte _08073454
	.4byte _080732EE
	.4byte _08073304
	.4byte _08073454
	.4byte _08073270
	.4byte _08073278
	.4byte _08073454
	.4byte _08073280
	.4byte _08073454
	.4byte _08073454
	.4byte _0807329E
	.4byte _08073258
	.4byte _08073454
	.4byte _080732BC
	.4byte _080732D6
_08073258:
	add r0, r3, #0
	add r0, r0, #45
	strb r2, [r0]
	b _08073454
_08073260:
	lsl r0, r2, #22
	str r0, [r3, #32]
	b _08073454
_08073266:
	add r1, r3, #0
	add r1, r1, #36
	strb r2, [r1]
	lsl r0, r2, #24
	b _080732C8
_08073270:
	lsl r1, r2, #2
	ldrh r0, [r3, #40]
	sub r0, r0, r1
	b _080732F2
_08073278:
	lsl r0, r2, #2
	ldrh r1, [r3, #40]
	add r0, r0, r1
	b _08073308
_08073280:
	cmp r2, #3
	bgt _0807328C
	add r1, r3, #0
	add r1, r1, #72
	mov r0, #0
	strh r0, [r1]
_0807328C:
	mov r0, #3
	and r2, r2, r0
	cmp r2, #3
	bne _08073296
	mov r2, #0
_08073296:
	add r0, r3, #0
	add r0, r0, #68
	strb r2, [r0]
	b _08073454
_0807329E:
	cmp r2, #3
	bgt _080732AA
	add r1, r3, #0
	add r1, r1, #74
	mov r0, #0
	strh r0, [r1]
_080732AA:
	mov r0, #3
	and r2, r2, r0
	cmp r2, #3
	bne _080732B4
	mov r2, #0
_080732B4:
	add r0, r3, #0
	add r0, r0, #69
	strb r2, [r0]
	b _08073454
_080732BC:
	add r1, r3, #0
	add r1, r1, #36
	ldrb r0, [r1]
	add r0, r0, r2
	strb r0, [r1]
	lsl r0, r0, #24
_080732C8:
	asr r0, r0, #24
	cmp r0, #64
	bgt _080732D0
	b _08073454
_080732D0:
	mov r0, #64
	strb r0, [r1]
	b _08073454
_080732D6:
	add r1, r3, #0
	add r1, r1, #36
	ldrb r0, [r1]
	sub r0, r0, r2
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	blt _080732E8
	b _08073454
_080732E8:
	mov r0, #0
	strb r0, [r1]
	b _08073454
_080732EE:
	ldrh r0, [r3, #40]
	sub r0, r0, r2
_080732F2:
	strh r0, [r3, #40]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #39
	ble _080732FE
	b _08073454
_080732FE:
	mov r0, #40
	strh r0, [r3, #40]
	b _08073454
_08073304:
	ldrh r0, [r3, #40]
	add r0, r0, r2
_08073308:
	strh r0, [r3, #40]
	lsl r0, r0, #16
	asr r0, r0, #16
	mov r1, #240
	lsl r1, r1, #5
	cmp r0, r1
	bgt _08073318
	b _08073454
_08073318:
	strh r1, [r3, #40]
	b _08073454
_0807331C:
	cmp r2, #0
	beq _08073398
	cmp r2, #32
	bgt _08073360
	ldr r0, _08073354  @ =0x000004EC
	add r4, r6, r0
	strh r2, [r4]
	mov r1, #161
	lsl r1, r1, #3
	add r5, r6, r1
	mov r2, #0
	ldrsh r0, [r4, r2]
	lsl r0, r0, #14
	ldr r2, _08073358  @ =0x000004EA
	add r1, r6, r2
	mov r2, #0
	ldrsh r1, [r1, r2]
	bl __divsi3
	str r0, [r5]
	ldr r1, _0807335C  @ =0x0000050C
	add r5, r6, r1
	mov r2, #0
	ldrsh r1, [r4, r2]
	bl __divsi3
	str r0, [r5]
	b _08073398
_08073354:
	.4byte 0x000004EC
_08073358:
	.4byte 0x000004EA
_0807335C:
	.4byte 0x0000050C
_08073360:
	mov r0, #50
	mul r0, r2, r0
	mov r1, #125
	bl __divsi3
	ldr r2, _080733BC  @ =0x000004EA
	add r1, r6, r2
	strh r0, [r1]
	mov r0, #161
	lsl r0, r0, #3
	add r4, r6, r0
	add r2, r2, #2
	add r5, r6, r2
	mov r2, #0
	ldrsh r0, [r5, r2]
	lsl r0, r0, #14
	mov r2, #0
	ldrsh r1, [r1, r2]
	bl __divsi3
	str r0, [r4]
	ldr r1, _080733C0  @ =0x0000050C
	add r4, r6, r1
	mov r2, #0
	ldrsh r1, [r5, r2]
	bl __divsi3
	str r0, [r4]
_08073398:
	mov r0, #161
	lsl r0, r0, #3
	add r2, r6, r0
	ldr r1, [r2]
	ldr r0, _080733C4  @ =0x000003B1
	cmp r1, r0
	bne _08073454
	ldr r1, _080733C0  @ =0x0000050C
	add r0, r6, r1
	ldr r1, [r0]
	ldr r0, _080733C8  @ =0x0000013B
	cmp r1, r0
	bne _08073454
	mov r0, #236
	lsl r0, r0, #2
	str r0, [r2]
	b _08073454
	.byte 0x00
	.byte 0x00
_080733BC:
	.4byte 0x000004EA
_080733C0:
	.4byte 0x0000050C
_080733C4:
	.4byte 0x000003B1
_080733C8:
	.4byte 0x0000013B
_080733CC:
	ldr r1, _080733E4  @ =0x000004EE
	add r0, r6, r1
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080733EC
	ldr r1, _080733E8  @ =0x000004F2
	add r0, r6, r1
	strh r2, [r0]
	b _080733F4
	.byte 0x00
	.byte 0x00
_080733E4:
	.4byte 0x000004EE
_080733E8:
	.4byte 0x000004F2
_080733EC:
	ldr r2, _080733FC  @ =0x000004F2
	add r1, r6, r2
	ldr r0, _08073400  @ =0x0000FFFE
	strh r0, [r1]
_080733F4:
	ldr r0, _08073404  @ =0x000004F6
	add r1, r6, r0
	mov r0, #0
	b _08073452
_080733FC:
	.4byte 0x000004F2
_08073400:
	.4byte 0x0000FFFE
_08073404:
	.4byte 0x000004F6
_08073408:
	mov r1, #158
	lsl r1, r1, #3
	add r0, r6, r1
	ldrh r0, [r0]
	add r0, r0, #1
	add r1, r1, #2
	add r3, r6, r1
	strh r0, [r3]
	mov r1, #0
	ldrsh r0, [r3, r1]
	ldr r4, [r6]
	ldrh r1, [r4, #52]
	cmp r0, r1
	blt _08073440
	ldr r1, _08073438  @ =0x000004EE
	add r0, r6, r1
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0807343C
	ldrh r0, [r4, #54]
	b _0807343E
	.byte 0x00
	.byte 0x00
_08073438:
	.4byte 0x000004EE
_0807343C:
	ldr r0, _0807345C  @ =0x0000FFFE
_0807343E:
	strh r0, [r3]
_08073440:
	asr r1, r2, #4
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	mov r1, #15
	and r2, r2, r1
	add r0, r0, r2
	ldr r2, _08073460  @ =0x000004F6
	add r1, r6, r2
_08073452:
	strh r0, [r1]
_08073454:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0807345C:
	.4byte 0x0000FFFE
_08073460:
	.4byte 0x000004F6
	THUMB_FUNC_END sub_080731C4

	THUMB_FUNC_START sub_08073464
sub_08073464: @ 0x08073464
	push {r4,lr}
	add r2, r0, #0
	ldrb r1, [r2, #20]
	mov r0, #240
	and r0, r0, r1
	mov r4, #15
	add r3, r1, #0
	and r3, r3, r4
	cmp r0, #144
	beq _080734B4
	cmp r0, #144
	bhi _08073486
	cmp r0, #16
	beq _08073498
	cmp r0, #128
	beq _080734A8
	b _08073498
_08073486:
	cmp r0, #176
	beq _080734D0
	cmp r0, #176
	bhi _08073494
	cmp r0, #160
	beq _080734C0
	b _08073498
_08073494:
	cmp r0, #192
	beq _080734EC
_08073498:
	sub r0, r0, #16
	cmp r0, #63
	bhi _080734F2
	sub r1, r1, #16
	add r0, r2, #0
	add r0, r0, #36
	strb r1, [r0]
	b _080734F2
_080734A8:
	add r1, r2, #0
	add r1, r1, #36
	ldrb r0, [r1]
	sub r0, r0, r3
	strb r0, [r1]
	b _080734F2
_080734B4:
	add r1, r2, #0
	add r1, r1, #36
	ldrb r0, [r1]
	add r0, r0, r3
	strb r0, [r1]
	b _080734F2
_080734C0:
	add r2, r2, #55
	ldrb r1, [r2]
	add r0, r4, #0
	and r0, r0, r1
	lsl r1, r3, #4
	orr r0, r0, r1
	strb r0, [r2]
	b _080734F2
_080734D0:
	cmp r3, #3
	bhi _080734DC
	add r1, r2, #0
	add r1, r1, #72
	mov r0, #0
	strh r0, [r1]
_080734DC:
	mov r0, #3
	and r3, r3, r0
	cmp r3, #3
	bne _080734E6
	mov r3, #0
_080734E6:
	add r0, r2, #0
	add r0, r0, #68
	b _080734F0
_080734EC:
	add r0, r2, #0
	add r0, r0, #45
_080734F0:
	strb r3, [r0]
_080734F2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08073464

	THUMB_FUNC_START sub_080734F8
sub_080734F8: @ 0x080734F8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	ldr r0, _080735BC  @ =0x000004F2
	add r2, r6, r0
	ldr r0, _080735C0  @ =0x0000FFFF
	strh r0, [r2]
	str r1, [r6]
	mov r5, #0
	mov r1, #0
	mov r12, r1
	mov r2, #0
	mov r8, r2
_08073514:
	mov r0, #76
	add r3, r5, #0
	mul r3, r0, r3
	add r3, r3, r6
	add r3, r3, #4
	lsl r1, r5, #1
	ldr r0, [r6]
	add r1, r1, r0
	mov r7, #145
	lsl r7, r7, #2
	add r1, r1, r7
	add r4, r3, #0
	mov r2, #0
_0807352E:
	add r0, r4, r2
	mov r7, r12
	strb r7, [r0]
	add r2, r2, #1
	cmp r2, #75
	bls _0807352E
	ldrb r0, [r1]
	add r2, r3, #0
	add r2, r2, #46
	strb r0, [r2]
	ldrb r0, [r1, #1]
	sub r2, r2, #1
	strb r0, [r2]
	add r0, r3, #0
	add r0, r0, #68
	mov r1, r8
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r5, r5, #1
	cmp r5, #15
	ble _08073514
	mov r1, #0
	mov r5, #7
	mov r2, #156
	lsl r2, r2, #3
	add r0, r6, r2
_08073564:
	str r1, [r0]
	sub r0, r0, #4
	sub r5, r5, #1
	cmp r5, #0
	bge _08073564
	mov r5, #8
	ldr r7, _080735C4  @ =0x000004FB
	add r1, r6, r7
	ldrb r0, [r1]
	cmp r0, #7
	bls _0807357C
	strb r5, [r1]
_0807357C:
	ldr r0, [r6]
	ldrh r0, [r0, #56]
	ldr r2, _080735C8  @ =0x000004FA
	add r1, r6, r2
	mov r2, #0
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #15
	bls _08073594
	mov r0, #16
	strb r0, [r1]
_08073594:
	mov r7, #157
	lsl r7, r7, #3
	add r0, r6, r7
	strh r2, [r0]
	ldr r1, _080735CC  @ =0x000004EE
	add r0, r6, r1
	strh r2, [r0]
	add r0, r6, #0
	bl sub_080735D0
	ldr r2, _080735BC  @ =0x000004F2
	add r1, r6, r2
	ldr r0, _080735C0  @ =0x0000FFFF
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080735BC:
	.4byte 0x000004F2
_080735C0:
	.4byte 0x0000FFFF
_080735C4:
	.4byte 0x000004FB
_080735C8:
	.4byte 0x000004FA
_080735CC:
	.4byte 0x000004EE
	THUMB_FUNC_END sub_080734F8

	THUMB_FUNC_START sub_080735D0
sub_080735D0: @ 0x080735D0
	push {r4-r7,lr}
	add r7, r0, #0
	mov r1, #160
	lsl r1, r1, #3
	add r0, r7, r1
	mov r6, #0
	str r6, [r0]
	ldr r2, _08073680  @ =0x00000504
	add r0, r7, r2
	str r6, [r0]
	ldr r0, [r7]
	add r0, r0, #64
	ldrh r1, [r0]
	mov r0, #50
	mul r0, r1, r0
	mov r1, #125
	bl __divsi3
	ldr r2, _08073684  @ =0x000004EA
	add r1, r7, r2
	strh r0, [r1]
	ldr r0, [r7]
	ldrh r0, [r0, #62]
	add r2, r2, #2
	add r4, r7, r2
	strh r0, [r4]
	mov r0, #161
	lsl r0, r0, #3
	add r5, r7, r0
	mov r2, #0
	ldrsh r0, [r4, r2]
	lsl r0, r0, #14
	mov r2, #0
	ldrsh r1, [r1, r2]
	bl __divsi3
	str r0, [r5]
	ldr r1, _08073688  @ =0x0000050C
	add r5, r7, r1
	mov r2, #0
	ldrsh r1, [r4, r2]
	bl __divsi3
	str r0, [r5]
	ldr r1, _0807368C  @ =0x000004F6
	add r0, r7, r1
	strh r6, [r0]
	ldr r2, _08073690  @ =0x000004F4
	add r0, r7, r2
	strh r6, [r0]
	add r1, r1, #6
	add r0, r7, r1
	str r6, [r0]
	sub r2, r2, #4
	add r1, r7, r2
	ldr r0, _08073694  @ =0x0000FFFF
	strh r0, [r1]
	mov r0, #159
	lsl r0, r0, #3
	add r1, r7, r0
	mov r0, #1
	neg r0, r0
	strh r0, [r1]
	ldr r1, _08073698  @ =0x000004F2
	add r0, r7, r1
	strh r6, [r0]
	mov r2, #0
	add r1, r1, #9
	add r0, r7, r1
	ldrb r1, [r0]
	cmp r2, r1
	bge _0807367A
	mov r4, #0
	add r3, r0, #0
	ldr r0, _0807369C  @ =0x000004C4
	add r1, r7, r0
_08073668:
	ldr r0, [r1]
	cmp r0, #1
	beq _08073670
	str r4, [r1]
_08073670:
	add r1, r1, #4
	add r2, r2, #1
	ldrb r0, [r3]
	cmp r2, r0
	blt _08073668
_0807367A:
	pop {r4-r7}
	pop {r0}
	bx r0
_08073680:
	.4byte 0x00000504
_08073684:
	.4byte 0x000004EA
_08073688:
	.4byte 0x0000050C
_0807368C:
	.4byte 0x000004F6
_08073690:
	.4byte 0x000004F4
_08073694:
	.4byte 0x0000FFFF
_08073698:
	.4byte 0x000004F2
_0807369C:
	.4byte 0x000004C4
	THUMB_FUNC_END sub_080735D0

	THUMB_FUNC_START sub_080736A0
sub_080736A0: @ 0x080736A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	add r4, r0, #0
	mov r10, r1
	mov r9, r2
	ldr r3, [r4]
	ldr r0, _080736C4  @ =0x000004F2
	add r5, r4, r0
	mov r2, #0
	ldrsh r1, [r5, r2]
	cmp r1, #0
	bge _080736DC
	b _08073822
	.byte 0x00
	.byte 0x00
_080736C4:
	.4byte 0x000004F2
_080736C8:
	mov r5, #158
	lsl r5, r5, #3
	add r0, r4, r5
	ldr r1, _080736D8  @ =0x0000FFFF
	strh r1, [r0]
	ldrh r0, [r3, #54]
	b _080737AC
	.byte 0x00
	.byte 0x00
_080736D8:
	.4byte 0x0000FFFF
_080736DC:
	ldr r2, _0807376C  @ =0x00000504
	add r0, r4, r2
	ldr r6, [r0]
	sub r2, r2, #4
	add r0, r4, r2
	ldr r7, [r0]
	mov r0, #68
	add r0, r0, r3
	mov r8, r0
	cmp r6, #0
	bne _0807373C
	cmp r7, #0
	bne _0807373C
	sub r2, r2, #16
	add r2, r2, r4
	mov r12, r2
	mov r0, #0
	ldrsh r2, [r2, r0]
	cmp r2, r1
	beq _08073724
	ldr r1, _08073770  @ =0x000004E4
	add r1, r4, r1
	str r1, [sp, #4]
	mov r2, #0
	ldrsh r0, [r5, r2]
	add r0, r0, r8
	ldrb r1, [r0]
	lsl r1, r1, #3
	mov r2, #162
	lsl r2, r2, #2
	add r0, r3, r2
	add r0, r0, r1
	ldr r0, [r0]
	add r0, r3, r0
	ldr r1, [sp, #4]
	str r0, [r1]
_08073724:
	ldrh r0, [r5]
	mov r2, r12
	strh r0, [r2]
	ldr r5, _08073774  @ =0x000004F6
	add r1, r4, r5
	ldrh r2, [r1]
	sub r5, r5, #2
	add r0, r4, r5
	strh r2, [r0]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_0807373C:
	mov r1, #158
	lsl r1, r1, #3
	add r0, r4, r1
	mov r2, #0
	ldrsh r0, [r0, r2]
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #3
	mov r5, #161
	lsl r5, r5, #2
	add r0, r0, r5
	add r0, r3, r0
	add r1, r1, #6
	add r2, r4, r1
	mov r5, #0
	ldrsh r1, [r2, r5]
	ldr r0, [r0]
	ldr r5, _08073778  @ =0x03001F24
	mov r12, r5
	cmp r1, r0
	bcc _080737AE
	mov r0, #0
	strh r0, [r2]
	b _08073786
_0807376C:
	.4byte 0x00000504
_08073770:
	.4byte 0x000004E4
_08073774:
	.4byte 0x000004F6
_08073778:
	.4byte 0x03001F24
_0807377C:
	add r0, r0, r8
	ldrb r0, [r0]
	ldrh r1, [r3, #58]
	cmp r0, r1
	bcc _080737AE
_08073786:
	ldr r5, _08073834  @ =0x000004F2
	add r2, r4, r5
	ldrh r0, [r2]
	add r0, r0, #1
	mov r5, #0
	strh r0, [r2]
	mov r1, #0
	ldrsh r0, [r2, r1]
	ldrh r1, [r3, #52]
	cmp r0, r1
	blt _0807377C
	ldr r1, _08073838  @ =0x000004EE
	add r0, r4, r1
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080736C8
	ldr r0, _0807383C  @ =0x0000FFFE
_080737AC:
	strh r0, [r2]
_080737AE:
	mov r2, #157
	lsl r2, r2, #3
	add r0, r4, r2
	mov r5, #0
	ldrsh r0, [r0, r5]
	mov r1, r12
	str r0, [r1]
	cmp r6, #0
	bne _080737CA
	cmp r7, #0
	bne _080737CA
	add r0, r4, #0
	bl sub_08072368
_080737CA:
	mov r2, r9
	add r0, r6, r2
	ldr r1, _08073840  @ =0x0000050C
	add r5, r4, r1
	ldr r1, [r5]
	cmp r0, r1
	blt _080737DC
	sub r1, r1, r6
	mov r9, r1
_080737DC:
	ldr r0, _08073844  @ =0x03000824
	str r7, [r0]
	ldr r0, _08073848  @ =0x03000820
	str r6, [r0]
	add r0, r4, #0
	mov r1, r10
	mov r2, r9
	bl sub_08072FC8
	ldr r0, _0807384C  @ =0x03001F24
	ldr r1, [r0]
	mov r2, #157
	lsl r2, r2, #3
	add r0, r4, r2
	strh r1, [r0]
	add r6, r6, r9
	ldr r0, [r5]
	cmp r6, r0
	blt _08073814
	mov r6, #0
	add r7, r7, #1
	ldr r5, _08073850  @ =0x000004EC
	add r0, r4, r5
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r7, r0
	blt _08073814
	mov r7, #0
_08073814:
	ldr r2, _08073854  @ =0x00000504
	add r0, r4, r2
	str r6, [r0]
	mov r5, #160
	lsl r5, r5, #3
	add r0, r4, r5
	str r7, [r0]
_08073822:
	mov r0, r9
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
_08073834:
	.4byte 0x000004F2
_08073838:
	.4byte 0x000004EE
_0807383C:
	.4byte 0x0000FFFE
_08073840:
	.4byte 0x0000050C
_08073844:
	.4byte 0x03000824
_08073848:
	.4byte 0x03000820
_0807384C:
	.4byte 0x03001F24
_08073850:
	.4byte 0x000004EC
_08073854:
	.4byte 0x00000504
	THUMB_FUNC_END sub_080736A0

	THUMB_FUNC_START sub_08073858
sub_08073858: @ 0x08073858
	push {r4,r5,lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r4, #128
	lsl r4, r4, #18
	mov r1, #0
	str r1, [r5]
	add r1, r4, #0
	bl LZ77UnCompWram
	add r0, r5, #0
	add r1, r4, #0
	bl sub_080734F8
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08073858

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0807387C
sub_0807387C: @ 0x0807387C
	push {r4,r5,lr}
	add r5, r0, #0
	mov r4, #157
	lsl r4, r4, #3
	add r0, r5, r4
	strh r1, [r0]
	ldr r1, _080738AC  @ =0x000004EE
	add r0, r5, r1
	strh r2, [r0]
	cmp r3, #0
	beq _080738B0
	mov r2, #0
	mov r0, #162
	lsl r0, r0, #3
	add r4, r5, r0
_0807389A:
	add r0, r4, r2
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0807389A
	b _080738C2
	.byte 0x00
	.byte 0x00
_080738AC:
	.4byte 0x000004EE
_080738B0:
	mov r1, #0
	mov r2, #2
	ldr r3, _080738D0  @ =0x00000512
	add r0, r5, r3
_080738B8:
	strb r1, [r0]
	sub r0, r0, #1
	sub r2, r2, #1
	cmp r2, #0
	bge _080738B8
_080738C2:
	add r0, r5, #0
	bl sub_080735D0
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080738D0:
	.4byte 0x00000512
	THUMB_FUNC_END sub_0807387C

	THUMB_FUNC_START sub_080738D4
sub_080738D4: @ 0x080738D4
	push {lr}
	add r3, r0, #0
	mov r2, #162
	lsl r2, r2, #3
	add r0, r3, r2
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #0
	bne _080738EC
	mov r0, #7
	sub r1, r0, r1
	b _080738F0
_080738EC:
	ldrb r0, [r2]
	sub r1, r0, #1
_080738F0:
	lsl r1, r1, #2
	ldr r2, _08073910  @ =0x000004C4
	add r0, r3, r2
	add r3, r0, r1
	ldr r2, [r3]
	cmp r2, #1
	bls _08073906
	ldrb r1, [r2, #29]
	mov r0, #254
	and r0, r0, r1
	strb r0, [r2, #29]
_08073906:
	mov r0, #1
	str r0, [r3]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08073910:
	.4byte 0x000004C4
	THUMB_FUNC_END sub_080738D4

	THUMB_FUNC_START sub_08073914
sub_08073914: @ 0x08073914
	push {lr}
	add r3, r0, #0
	mov r2, #162
	lsl r2, r2, #3
	add r0, r3, r2
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #0
	bne _0807392C
	mov r0, #7
	sub r1, r0, r1
	b _08073930
_0807392C:
	ldrb r0, [r2]
	sub r1, r0, #1
_08073930:
	lsl r0, r1, #2
	ldr r2, _08073948  @ =0x000004C4
	add r1, r3, r2
	add r1, r1, r0
	ldr r0, [r1]
	cmp r0, #1
	bne _08073942
	mov r0, #0
	str r0, [r1]
_08073942:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08073948:
	.4byte 0x000004C4
	THUMB_FUNC_END sub_08073914

	THUMB_FUNC_START sub_0807394C
sub_0807394C: @ 0x0807394C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r3, r0, #0
	add r7, r1, #0
	add r5, r3, #0
	add r5, r5, #45
	mov r0, #0
	ldrsb r0, [r5, r0]
	mov r8, r0
	ldr r0, _080739A0  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08073972
	mov r0, #32
	strb r0, [r5]
_08073972:
	ldr r0, _080739A4  @ =0x03001F28
	str r3, [r0]
	ldr r4, _080739A8  @ =0x03001EFC
	mov r6, #0
	ldr r0, _080739AC  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08073984
	mov r6, #1
_08073984:
	ldr r4, [r4]
	add r0, r3, #0
	add r1, r7, #0
	add r3, r6, #0
	bl _call_via_r4
	mov r0, r8
	strb r0, [r5]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080739A0:
	.4byte 0x03001F10
_080739A4:
	.4byte 0x03001F28
_080739A8:
	.4byte 0x03001EFC
_080739AC:
	.4byte 0x03000820
	THUMB_FUNC_END sub_0807394C

	THUMB_FUNC_START sub_080739B0
sub_080739B0: @ 0x080739B0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r5, r0, #0
	mov r8, r1
	mov r9, r2
	ldrb r4, [r5, #26]
	cmp r4, #0
	bne _080739C8
	add r0, r0, #58
	ldrb r4, [r0]
_080739C8:
	ldr r0, _08073A20  @ =0x03000824
	add r1, r4, #1
	ldr r0, [r0]
	bl __modsi3
	cmp r0, r4
	bne _080739DA
	mov r0, #0
	str r0, [r5, #32]
_080739DA:
	add r6, r5, #0
	add r6, r6, #45
	mov r7, #0
	ldrsb r7, [r6, r7]
	ldr r0, _08073A24  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _080739F4
	mov r0, #32
	strb r0, [r6]
_080739F4:
	ldr r0, _08073A28  @ =0x03001F28
	str r5, [r0]
	ldr r4, _08073A2C  @ =0x03001EFC
	mov r3, #0
	ldr r0, _08073A30  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08073A06
	mov r3, #1
_08073A06:
	ldr r4, [r4]
	add r0, r5, #0
	mov r1, r8
	mov r2, r9
	bl _call_via_r4
	strb r7, [r6]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08073A20:
	.4byte 0x03000824
_08073A24:
	.4byte 0x03001F10
_08073A28:
	.4byte 0x03001F28
_08073A2C:
	.4byte 0x03001EFC
_08073A30:
	.4byte 0x03000820
	THUMB_FUNC_END sub_080739B0

	THUMB_FUNC_START sub_08073A34
sub_08073A34: @ 0x08073A34
	push {r4-r7,lr}
	mov r12, r0
	add r7, r1, #0
	ldrb r1, [r0, #26]
	cmp r1, #0
	bne _08073A44
	add r0, r0, #59
	ldrb r1, [r0]
_08073A44:
	ldr r0, _08073A98  @ =0x03000824
	ldr r0, [r0]
	cmp r0, r1
	bne _08073A58
	mov r0, r12
	add r0, r0, #44
	mov r1, #0
	strb r1, [r0]
	sub r0, r0, #8
	strb r1, [r0]
_08073A58:
	mov r5, r12
	add r5, r5, #45
	mov r6, #0
	ldrsb r6, [r5, r6]
	ldr r0, _08073A9C  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08073A72
	mov r0, #32
	strb r0, [r5]
_08073A72:
	ldr r0, _08073AA0  @ =0x03001F28
	mov r1, r12
	str r1, [r0]
	ldr r4, _08073AA4  @ =0x03001EFC
	mov r3, #0
	ldr r0, _08073AA8  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08073A86
	mov r3, #1
_08073A86:
	ldr r4, [r4]
	mov r0, r12
	add r1, r7, #0
	bl _call_via_r4
	strb r6, [r5]
	pop {r4-r7}
	pop {r0}
	bx r0
_08073A98:
	.4byte 0x03000824
_08073A9C:
	.4byte 0x03001F10
_08073AA0:
	.4byte 0x03001F28
_08073AA4:
	.4byte 0x03001EFC
_08073AA8:
	.4byte 0x03000820
	THUMB_FUNC_END sub_08073A34

	THUMB_FUNC_START sub_08073AAC
sub_08073AAC: @ 0x08073AAC
	push {r4-r7,lr}
	add r3, r0, #0
	mov r12, r1
	ldrb r1, [r3, #26]
	cmp r1, #0
	bne _08073ABC
	add r0, r0, #56
	ldrb r1, [r0]
_08073ABC:
	ldr r0, _08073B04  @ =0x03000824
	ldr r0, [r0]
	cmp r0, r1
	blt _08073AFE
	add r5, r3, #0
	add r5, r5, #45
	mov r7, #0
	ldrsb r7, [r5, r7]
	ldr r0, _08073B08  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08073ADE
	mov r0, #32
	strb r0, [r5]
_08073ADE:
	ldr r0, _08073B0C  @ =0x03001F28
	str r3, [r0]
	ldr r4, _08073B10  @ =0x03001EFC
	mov r6, #0
	ldr r0, _08073B14  @ =0x03000820
	ldr r0, [r0]
	cmp r0, #0
	bne _08073AF0
	mov r6, #1
_08073AF0:
	ldr r4, [r4]
	add r0, r3, #0
	mov r1, r12
	add r3, r6, #0
	bl _call_via_r4
	strb r7, [r5]
_08073AFE:
	pop {r4-r7}
	pop {r0}
	bx r0
_08073B04:
	.4byte 0x03000824
_08073B08:
	.4byte 0x03001F10
_08073B0C:
	.4byte 0x03001F28
_08073B10:
	.4byte 0x03001EFC
_08073B14:
	.4byte 0x03000820
	THUMB_FUNC_END sub_08073AAC

	THUMB_FUNC_START sub_08073B18
sub_08073B18: @ 0x08073B18
	push {r4,lr}
	ldr r2, _08073B78  @ =REG_SOUNDCNT_L
	ldrh r0, [r2]
	mov r3, #204
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #255
	lsl r0, r0, #8
	and r0, r0, r1
	strh r0, [r2]
	add r2, r2, #2
	ldrh r0, [r2]
	mov r1, #2
	orr r0, r0, r1
	strh r0, [r2]
	ldr r4, _08073B7C  @ =0x03000840
	mov r3, #0
	ldr r1, _08073B80  @ =gUnknown_08B3A4AC
	mov r2, #3
_08073B44:
	ldr r0, [r1]
	strh r3, [r0]
	ldr r0, [r1, #4]
	strh r3, [r0]
	add r1, r1, #12
	sub r2, r2, #1
	cmp r2, #0
	bge _08073B44
	mov r0, #0
	ldrb r1, [r4]
	strb r0, [r4]
	str r0, [r4, #60]
	str r0, [r4, #52]
	str r0, [r4, #56]
	ldr r1, _08073B84  @ =0x04000100
	ldr r0, _08073B88  @ =0x00C1FC00
	str r0, [r1]
	ldr r2, _08073B8C  @ =0x04000200
	ldrh r0, [r2]
	mov r1, #8
	orr r0, r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08073B78:
	.4byte REG_SOUNDCNT_L
_08073B7C:
	.4byte 0x03000840
_08073B80:
	.4byte gUnknown_08B3A4AC
_08073B84:
	.4byte 0x04000100
_08073B88:
	.4byte 0x00C1FC00
_08073B8C:
	.4byte 0x04000200
	THUMB_FUNC_END sub_08073B18
	
	THUMB_FUNC_START sub_08073B90
sub_08073B90: @ 0x08073B90
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, _08073BE0  @ =0x03000840
	ldrb r1, [r0]
	add r5, r0, #0
	cmp r1, #2
	beq _08073BA4
	b _08073CDA
_08073BA4:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08073BAC
	b _08073CDA
_08073BAC:
	ldr r1, [r5, #60]
	ldr r0, [r5, #52]
	ldrh r1, [r1, #38]
	cmp r0, r1
	bcc _08073BB8
	b _08073CDA
_08073BB8:
	ldrb r0, [r5, #1]
	mov r0, #1
	strb r0, [r5, #1]
	add r0, r5, #4
	mov r9, r0
	ldr r1, _08073BE4  @ =gUnknown_08B3A4AC
	mov r8, r1
	mov r0, #0
	mov r12, r0
	mov r6, #0
	mov r7, #2
_08073BCE:
	mov r1, r9
	add r4, r6, r1
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _08073BE8
	ldr r0, [r4, #8]
	str r0, [r4]
	b _08073C0C
	.byte 0x00
	.byte 0x00
_08073BE0:
	.4byte 0x03000840
_08073BE4:
	.4byte gUnknown_08B3A4AC
_08073BE8:
	cmp r1, #0
	ble _08073BFA
	ldr r0, [r4]
	add r0, r0, r1
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r0, r1
	blt _08073C0C
	b _08073C06
_08073BFA:
	ldr r0, [r4]
	add r0, r0, r1
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r0, r1
	bgt _08073C0C
_08073C06:
	mov r0, r12
	str r0, [r4, #4]
	str r1, [r4]
_08073C0C:
	mov r1, r8
	add r0, r6, r1
	ldr r3, [r0, #4]
	ldrh r2, [r3]
	ldrh r1, [r0, #8]
	and r1, r1, r2
	ldr r0, [r4]
	asr r0, r0, #9
	orr r1, r1, r0
	strh r1, [r3]
	add r6, r6, #12
	sub r7, r7, #1
	cmp r7, #0
	bge _08073BCE
	ldr r0, [r5, #56]
	cmp r0, #0
	beq _08073C32
	sub r0, r0, #1
	b _08073CD2
_08073C32:
	ldr r0, [r5, #52]
	lsl r0, r0, #3
	add r0, r0, #40
	ldr r1, [r5, #60]
	add r3, r1, r0
	ldrh r0, [r1, #38]
	lsl r0, r0, #3
	add r0, r0, #40
	add r4, r1, r0
	mov r9, r5
	add r7, r5, #4
	add r6, r5, #0
	add r6, r6, #8
	b _08073C54
_08073C4E:
	ldrh r0, [r3]
	cmp r0, #0
	bne _08073CB6
_08073C54:
	ldrb r0, [r3, #3]
	cmp r0, #0
	bne _08073C86
	ldrb r1, [r3, #2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	ldr r2, [r0, #4]
	ldrh r1, [r2]
	ldr r1, [r0]
	ldrh r0, [r3, #4]
	strh r0, [r1]
	ldrb r1, [r3, #2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r7
	ldr r0, [r0]
	lsl r0, r0, #7
	lsr r0, r0, #16
	ldrh r1, [r3, #6]
	orr r0, r0, r1
	strh r0, [r2]
	b _08073CB0
_08073C86:
	cmp r0, #1
	bne _08073CB0
	ldrb r0, [r3, #2]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #2
	mov r0, r9
	add r0, r0, #12
	add r1, r1, r0
	ldrh r0, [r3, #4]
	lsl r0, r0, #21
	lsr r0, r0, #12
	str r0, [r1]
	ldrb r0, [r3, #2]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r6
	ldr r0, [r3, #4]
	asr r0, r0, #11
	str r0, [r1]
_08073CB0:
	add r3, r3, #8
	cmp r3, r4
	bcc _08073C4E
_08073CB6:
	cmp r3, r4
	bcc _08073CC4
	ldrb r0, [r5]
	mov r0, #0
	strb r0, [r5]
	ldrb r1, [r5, #1]
	b _08073CD8
_08073CC4:
	add r0, r3, #0
	sub r0, r0, #40
	ldr r1, [r5, #60]
	sub r0, r0, r1
	asr r0, r0, #3
	str r0, [r5, #52]
	ldrh r0, [r3]
_08073CD2:
	str r0, [r5, #56]
	ldrb r0, [r5, #1]
	mov r0, #0
_08073CD8:
	strb r0, [r5, #1]
_08073CDA:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08073B90

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08073CE8
sub_08073CE8: @ 0x08073CE8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	add r4, r1, #0
	add r5, r2, #0
	bl sub_08073E1C
	ldr r1, _08073D1C  @ =0x03000840
	mov r0, #0
	str r0, [r1, #52]
	ldrh r0, [r6, #40]
	str r0, [r1, #56]
	str r6, [r1, #60]
	asr r4, r4, #4
	cmp r4, #7
	ble _08073D0C
	mov r4, #7
_08073D0C:
	add r1, r4, #0
	cmp r5, #63
	bgt _08073D20
	add r0, r1, #0
	mul r0, r5, r0
	asr r1, r0, #6
	b _08073D2C
	.byte 0x00
	.byte 0x00
_08073D1C:
	.4byte 0x03000840
_08073D20:
	cmp r5, #64
	ble _08073D2C
	mov r0, #128
	sub r0, r0, r5
	mul r0, r1, r0
	asr r4, r0, #6
_08073D2C:
	ldr r2, _08073DB4  @ =0x03000840
	lsl r0, r4, #4
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldr r1, _08073DB8  @ =REG_NR30
	mov r0, #96
	strh r0, [r1]
	mov r3, #0
	add r7, r2, #0
	mov r0, #32
	add r0, r0, r6
	mov r12, r0
	mov r8, r1
	mov r5, #32
_08073D48:
	ldr r1, _08073DBC  @ =REG_WAVE_RAM0
	add r4, r3, #0
	add r4, r4, #8
	cmp r3, r4
	bge _08073D68
	lsl r0, r3, #1
	add r2, r0, r6
	sub r3, r4, r3
_08073D58:
	ldrh r0, [r2]
	strh r0, [r1]
	add r1, r1, #2
	add r2, r2, #2
	sub r3, r3, #1
	cmp r3, #0
	bne _08073D58
	add r3, r4, #0
_08073D68:
	mov r0, r8
	strh r5, [r0]
	cmp r3, #15
	ble _08073D48
	ldr r0, _08073DB8  @ =REG_NR30
	mov r1, #160
	strh r1, [r0]
	ldr r0, _08073DB4  @ =0x03000840
	mov r2, r12
	add r1, r0, #4
	mov r3, #2
_08073D7E:
	ldrh r0, [r2]
	lsl r0, r0, #9
	str r0, [r1]
	str r0, [r1, #8]
	add r2, r2, #2
	add r1, r1, #12
	sub r3, r3, #1
	cmp r3, #0
	bge _08073D7E
	ldr r2, _08073DC0  @ =REG_SOUNDCNT_L
	ldrh r1, [r2]
	mov r0, #255
	lsl r0, r0, #8
	and r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	ldrh r1, [r7, #2]
	orr r0, r0, r1
	strh r0, [r2]
	ldrb r0, [r7]
	mov r0, #2
	strb r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08073DB4:
	.4byte 0x03000840
_08073DB8:
	.4byte REG_NR30
_08073DBC:
	.4byte REG_WAVE_RAM0
_08073DC0:
	.4byte REG_SOUNDCNT_L
	THUMB_FUNC_END sub_08073CE8

	THUMB_FUNC_START sub_08073DC4
sub_08073DC4: @ 0x08073DC4
	push {lr}
	ldr r1, _08073DE4  @ =0x03000840
	ldrb r0, [r1]
	cmp r0, #2
	bne _08073DE0
	ldrb r0, [r1]
	mov r0, #1
	strb r0, [r1]
	ldr r2, _08073DE8  @ =REG_SOUNDCNT_L
	ldrh r1, [r2]
	mov r0, #255
	lsl r0, r0, #8
	and r0, r0, r1
	strh r0, [r2]
_08073DE0:
	pop {r0}
	bx r0
_08073DE4:
	.4byte 0x03000840
_08073DE8:
	.4byte REG_SOUNDCNT_L
	THUMB_FUNC_END sub_08073DC4

	THUMB_FUNC_START sub_08073DEC
sub_08073DEC: @ 0x08073DEC
	push {lr}
	ldr r3, _08073E14  @ =0x03000840
	ldrb r0, [r3]
	cmp r0, #1
	bne _08073E10
	ldrb r0, [r3]
	mov r0, #2
	strb r0, [r3]
	ldr r2, _08073E18  @ =REG_SOUNDCNT_L
	ldrh r1, [r2]
	mov r0, #255
	lsl r0, r0, #8
	and r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	ldrh r1, [r3, #2]
	orr r0, r0, r1
	strh r0, [r2]
_08073E10:
	pop {r0}
	bx r0
_08073E14:
	.4byte 0x03000840
_08073E18:
	.4byte REG_SOUNDCNT_L
	THUMB_FUNC_END sub_08073DEC

	THUMB_FUNC_START sub_08073E1C
sub_08073E1C: @ 0x08073E1C
	ldr r1, _08073E34  @ =0x03000840
	ldrb r0, [r1]
	mov r0, #0
	strb r0, [r1]
	ldr r2, _08073E38  @ =REG_SOUNDCNT_L
	ldrh r1, [r2]
	mov r0, #255
	lsl r0, r0, #8
	and r0, r0, r1
	strh r0, [r2]
	bx lr
	.byte 0x00
	.byte 0x00
_08073E34:
	.4byte 0x03000840
_08073E38:
	.4byte REG_SOUNDCNT_L
	THUMB_FUNC_END sub_08073E1C
	