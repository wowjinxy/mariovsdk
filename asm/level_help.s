	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START help_init_callback
help_init_callback: @ 0x0802A4B4
	push {r4,lr}
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _0802A4F8  @ =0x03000130
	mov r4, #1
	strb r4, [r0]
	ldr r1, _0802A4FC  @ =0x03000131
	mov r0, #4
	strb r0, [r1]
	ldr r1, _0802A500  @ =0x03000132
	mov r0, #2
	strb r0, [r1]
	mov r0, #5
	mov r1, #2
	bl load_predefined_palette
	ldr r0, _0802A504  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r2, #2
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0802A50C
	ldr r1, _0802A508  @ =0x03000133
	mov r0, #0
	strb r0, [r1]
	b _0802A5A2
	.byte 0x00
	.byte 0x00
_0802A4F8:
	.4byte 0x03000130
_0802A4FC:
	.4byte 0x03000131
_0802A500:
	.4byte 0x03000132
_0802A504:
	.4byte gUnknown_03001938
_0802A508:
	.4byte 0x03000133
_0802A50C:
	mov r3, #4
	add r0, r1, #0
	and r0, r0, r3
	cmp r0, #0
	bne _0802A59E
	mov r4, #8
	add r0, r1, #0
	and r0, r0, r4
	cmp r0, #0
	beq _0802A52C
	ldr r0, _0802A528  @ =0x03000133
	strb r2, [r0]
	b _0802A5A2
	.byte 0x00
	.byte 0x00
_0802A528:
	.4byte 0x03000133
_0802A52C:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0802A540
	ldr r1, _0802A53C  @ =0x03000133
	mov r0, #3
	strb r0, [r1]
	b _0802A5A2
_0802A53C:
	.4byte 0x03000133
_0802A540:
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0802A554
	ldr r0, _0802A550  @ =0x03000133
	strb r3, [r0]
	b _0802A5A2
	.byte 0x00
	.byte 0x00
_0802A550:
	.4byte 0x03000133
_0802A554:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0802A568
	ldr r1, _0802A564  @ =0x03000133
	mov r0, #5
	strb r0, [r1]
	b _0802A5A2
_0802A564:
	.4byte 0x03000133
_0802A568:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0802A57C
	ldr r1, _0802A578  @ =0x03000133
	mov r0, #6
	strb r0, [r1]
	b _0802A5A2
_0802A578:
	.4byte 0x03000133
_0802A57C:
	mov r0, #128
	lsl r0, r0, #5
	and r0, r0, r1
	cmp r0, #0
	beq _0802A594
	ldr r1, _0802A590  @ =0x03000133
	mov r0, #7
	strb r0, [r1]
	b _0802A5A2
	.byte 0x00
	.byte 0x00
_0802A590:
	.4byte 0x03000133
_0802A594:
	mov r0, #128
	lsl r0, r0, #7
	and r1, r1, r0
	cmp r1, #0
	beq _0802A5A2
_0802A59E:
	ldr r0, _0802A5A8  @ =0x03000133
	strb r4, [r0]
_0802A5A2:
	pop {r4}
	pop {r0}
	bx r0
_0802A5A8:
	.4byte 0x03000133
	THUMB_FUNC_END help_init_callback

	THUMB_FUNC_START sub_0802A5AC
sub_0802A5AC: @ 0x0802A5AC
	push {r4,r5,lr}
	mov r3, #0
	ldr r5, _0802A5F0  @ =0x03000130
	ldrb r0, [r5]
	cmp r0, #1
	bne _0802A5FC
	ldr r2, _0802A5F4  @ =0x03000131
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r4, _0802A5F8  @ =0x03000132
	ldrb r1, [r4]
	add r1, r1, #1
	strb r1, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #8
	bls _0802A5D6
	mov r0, #8
	strb r0, [r2]
	mov r3, #1
_0802A5D6:
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _0802A5E8
	mov r0, #5
	strb r0, [r4]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802A5E8:
	cmp r3, #2
	bne _0802A638
	strb r3, [r5]
	b _0802A638
_0802A5F0:
	.4byte 0x03000130
_0802A5F4:
	.4byte 0x03000131
_0802A5F8:
	.4byte 0x03000132
_0802A5FC:
	cmp r0, #3
	bne _0802A638
	ldr r2, _0802A640  @ =0x03000131
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	ldr r4, _0802A644  @ =0x03000132
	ldrb r1, [r4]
	sub r1, r1, #1
	strb r1, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bhi _0802A61E
	mov r0, #4
	strb r0, [r2]
	mov r3, #1
_0802A61E:
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0802A630
	mov r0, #2
	strb r0, [r4]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802A630:
	cmp r3, #2
	bne _0802A638
	mov r0, #0
	strb r0, [r5]
_0802A638:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802A640:
	.4byte 0x03000131
_0802A644:
	.4byte 0x03000132
	THUMB_FUNC_END sub_0802A5AC

	THUMB_FUNC_START sub_0802A648
sub_0802A648: @ 0x0802A648
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r4, _0802A76C  @ =REG_DMA3SAD
	ldr r0, _0802A770  @ =gUnknown_082E4C4C
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802A774  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802A778  @ =0x84000080
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #16
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #2
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r4, _0802A77C  @ =0x03000131
	ldrb r1, [r4]
	lsl r1, r1, #5
	mov r0, #240
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r0, r0, #16
	str r0, [sp, #4]
	ldr r2, _0802A780  @ =0x03000132
	ldrb r3, [r2]
	lsl r1, r3, #5
	mov r0, #160
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r0, r0, #16
	str r0, [sp, #8]
	mov r0, #0
	mov r8, r0
	cmp r8, r3
	bcs _0802A75C
_0802A6A6:
	mov r6, #0
	mov r1, #1
	add r1, r1, r8
	mov r10, r1
	ldr r2, _0802A77C  @ =0x03000131
	ldrb r2, [r2]
	cmp r6, r2
	bcs _0802A74C
	ldr r7, _0802A76C  @ =REG_DMA3SAD
	ldr r4, _0802A784  @ =gOamBuffer
	ldr r3, _0802A788  @ =0x000003FF
	ldr r0, [sp]
	and r0, r0, r3
	mov r12, r0
	ldr r1, _0802A78C  @ =gUnknown_082E4C44
	mov r9, r1
_0802A6C6:
	mov r2, r9
	str r2, [r7]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r7, #4]
	ldr r0, _0802A790  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrh r2, [r1, #4]
	ldr r0, _0802A794  @ =0xFFFFFC00
	and r0, r0, r2
	mov r3, r12
	orr r0, r0, r3
	strh r0, [r1, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	lsl r1, r6, #5
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r3, _0802A798  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0802A79C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	mov r2, r8
	lsl r0, r2, #5
	ldr r3, [sp, #8]
	add r0, r0, r3
	strb r0, [r1]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r0, _0802A77C  @ =0x03000131
	ldrb r0, [r0]
	cmp r6, r0
	bcc _0802A6C6
_0802A74C:
	mov r1, r10
	lsl r0, r1, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r2, _0802A780  @ =0x03000132
	ldrb r2, [r2]
	cmp r8, r2
	bcc _0802A6A6
_0802A75C:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802A76C:
	.4byte REG_DMA3SAD
_0802A770:
	.4byte gUnknown_082E4C4C
_0802A774:
	.4byte OBJ_VRAM0
_0802A778:
	.4byte 0x84000080
_0802A77C:
	.4byte 0x03000131
_0802A780:
	.4byte 0x03000132
_0802A784:
	.4byte gOamBuffer
_0802A788:
	.4byte 0x000003FF
_0802A78C:
	.4byte gUnknown_082E4C44
_0802A790:
	.4byte 0x84000002
_0802A794:
	.4byte 0xFFFFFC00
_0802A798:
	.4byte 0x000001FF
_0802A79C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802A648

	THUMB_FUNC_START sub_0802A7A0
sub_0802A7A0: @ 0x0802A7A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r4, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	ldr r0, _0802A8C4  @ =gUnknown_08079F00
	mov r8, r0
	ldr r0, _0802A8C8  @ =gUnknown_08079ED0
	ldr r3, [r0]
	mov r1, #0
	mov r12, r1
	ldr r5, _0802A8CC  @ =REG_DMA3SAD
	ldr r2, _0802A8D0  @ =0x03000138
	mov r9, r2
_0802A7C4:
	ldr r0, [r3, #20]
	str r0, [r5]
	ldrh r0, [r6]
	ldr r1, _0802A8D4  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r5, #4]
	ldrh r0, [r3, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	mov r0, r12
	lsl r2, r0, #16
	asr r2, r2, #16
	lsl r0, r2, #1
	add r0, r0, r9
	ldrh r1, [r7]
	strh r1, [r0]
	ldrh r0, [r3, #6]
	ldrh r1, [r7]
	add r0, r0, r1
	strh r0, [r7]
	ldrh r0, [r3, #8]
	ldrh r1, [r6]
	add r0, r0, r1
	strh r0, [r6]
	add r2, r2, #1
	lsl r2, r2, #16
	add r3, r3, #24
	lsr r0, r2, #16
	mov r12, r0
	asr r2, r2, #16
	cmp r2, #11
	ble _0802A7C4
	mov r1, #0
	str r1, [sp]
	ldr r6, _0802A8CC  @ =REG_DMA3SAD
	ldr r5, _0802A8D8  @ =gOamBuffer
	ldr r2, _0802A8D0  @ =0x03000138
	mov r12, r2
	ldr r3, _0802A8DC  @ =0xFFFFFE00
	mov r10, r3
	mov r7, #13
	neg r7, r7
	mov r9, r7
_0802A822:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #16]
	str r0, [r6]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r6, #4]
	ldr r0, _0802A8E0  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	mov r7, r8
	ldr r0, [r7, #4]
	lsl r0, r0, #1
	add r0, r0, r12
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r7, _0802A8E4  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _0802A8E8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	mov r3, #8
	ldrsh r2, [r0, r3]
	ldr r7, _0802A8EC  @ =0x000001FF
	add r0, r7, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r8
	ldrh r1, [r2, #10]
	strb r1, [r0]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, r9
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldr r3, [sp]
	lsl r0, r3, #16
	mov r7, #128
	lsl r7, r7, #9
	add r0, r0, r7
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #12
	add r8, r8, r0
	ldr r1, [sp]
	cmp r1, #42
	bls _0802A822
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
_0802A8C4:
	.4byte gUnknown_08079F00
_0802A8C8:
	.4byte gUnknown_08079ED0
_0802A8CC:
	.4byte REG_DMA3SAD
_0802A8D0:
	.4byte 0x03000138
_0802A8D4:
	.4byte OBJ_VRAM0
_0802A8D8:
	.4byte gOamBuffer
_0802A8DC:
	.4byte 0xFFFFFE00
_0802A8E0:
	.4byte 0x84000002
_0802A8E4:
	.4byte 0x000003FF
_0802A8E8:
	.4byte 0xFFFFFC00
_0802A8EC:
	.4byte 0x000001FF
	THUMB_FUNC_END sub_0802A7A0

	THUMB_FUNC_START sub_0802A8F0
sub_0802A8F0: @ 0x0802A8F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r9, r1
	mov r8, r2
	mov r2, #0
	ldr r1, _0802A9F4  @ =gUnknown_0807A92C
	ldr r3, _0802A9F8  @ =0x03000133
	ldrb r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r4, #4
	ldrsh r0, [r0, r4]
	cmp r2, r0
	bge _0802A9E6
	mov r10, r3
	ldr r7, _0802A9FC  @ =REG_DMA3SAD
	ldr r0, _0802AA00  @ =gOamBuffer
	mov r12, r0
_0802A91C:
	mov r3, r10
	ldrb r1, [r3]
	lsl r1, r1, #3
	ldr r4, _0802A9F4  @ =gUnknown_0807A92C
	add r1, r1, r4
	lsl r5, r2, #16
	asr r5, r5, #16
	lsl r0, r5, #1
	add r0, r0, r5
	lsl r0, r0, #3
	ldr r4, [r1]
	add r4, r4, r0
	ldr r0, [r4, #20]
	str r0, [r7]
	mov r1, r8
	ldrh r0, [r1]
	ldr r1, _0802AA04  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r4, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r0, [r4, #16]
	str r0, [r7]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r7, #4]
	ldr r0, _0802AA08  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r3, r9
	ldrh r0, [r3]
	ldr r1, _0802AA0C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0802AA10  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r12
	mov r0, #0
	ldrsh r2, [r4, r0]
	ldr r3, _0802AA14  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802AA18  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrh r1, [r4, #2]
	strb r1, [r0]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4, #6]
	mov r1, r9
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r9
	strh r0, [r2]
	ldrh r0, [r4, #8]
	mov r3, r8
	ldrh r3, [r3]
	add r0, r0, r3
	mov r4, r8
	strh r0, [r4]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	add r5, r5, #1
	lsl r5, r5, #16
	mov r1, r10
	ldrb r0, [r1]
	lsl r0, r0, #3
	ldr r2, _0802A9F4  @ =gUnknown_0807A92C
	add r0, r0, r2
	lsr r2, r5, #16
	asr r5, r5, #16
	mov r3, #4
	ldrsh r0, [r0, r3]
	cmp r5, r0
	blt _0802A91C
_0802A9E6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802A9F4:
	.4byte gUnknown_0807A92C
_0802A9F8:
	.4byte 0x03000133
_0802A9FC:
	.4byte REG_DMA3SAD
_0802AA00:
	.4byte gOamBuffer
_0802AA04:
	.4byte OBJ_VRAM0
_0802AA08:
	.4byte 0x84000002
_0802AA0C:
	.4byte 0x000003FF
_0802AA10:
	.4byte 0xFFFFFC00
_0802AA14:
	.4byte 0x000001FF
_0802AA18:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802A8F0

	THUMB_FUNC_START help_end
help_end: @ 0x0802AA1C
	push {lr}
	bl sub_08038B18
	pop {r0}
	bx r0
	THUMB_FUNC_END help_end

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START help_main
help_main: @ 0x0802AA28
	push {lr}
	sub sp, sp, #12
	bl process_input
	ldr r2, _0802AA4C  @ =0x03000130
	ldrb r3, [r2]
	cmp r3, #2
	bne _0802AA54
	ldr r0, _0802AA50  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802AA84
	mov r0, #3
	strb r0, [r2]
	b _0802AA84
	.byte 0x00
	.byte 0x00
_0802AA4C:
	.4byte 0x03000130
_0802AA50:
	.4byte gSomeKeys_030012E8
_0802AA54:
	cmp r3, #0
	bne _0802AA84
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802AA8C  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #19
	mov r1, #0
	bl change_main_state
	bl sub_08072118
_0802AA84:
	add sp, sp, #12
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AA8C:
	.4byte 0x00007FFF
	THUMB_FUNC_END help_main

	THUMB_FUNC_START help_loop
help_loop: @ 0x0802AA90
	push {lr}
	bl level_play_loop
	pop {r0}
	bx r0
	THUMB_FUNC_END help_loop

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802AA9C
sub_0802AA9C: @ 0x0802AA9C
	push {r4-r6,lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r0, _0802AACC  @ =gMainState
	ldr r0, [r0]
	cmp r0, #17
	bne _0802AAE2
	ldr r0, _0802AAD0  @ =0x03000130
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AAE2
	cmp r0, #2
	bne _0802AAD4
	add r0, r4, #0
	bl sub_0802A8F0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802A7A0
	b _0802AAE2
	.byte 0x00
	.byte 0x00
_0802AACC:
	.4byte gMainState
_0802AAD0:
	.4byte 0x03000130
_0802AAD4:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802A648
	bl sub_0802A5AC
_0802AAE2:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802AA9C
	