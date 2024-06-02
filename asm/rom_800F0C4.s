	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"


	THUMB_FUNC_START sub_0800F0C4
sub_0800F0C4: @ 0x0800F0C4
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r0, r3, #16
	ldr r5, _0800F0FC  @ =REG_DMA3SAD
	str r4, [r5]
	ldrh r3, [r2]
	ldr r4, _0800F100  @ =OBJ_VRAM0
	add r3, r3, r4
	str r3, [r5, #4]
	lsr r3, r0, #18
	mov r4, #132
	lsl r4, r4, #24
	orr r3, r3, r4
	str r3, [r5, #8]
	ldr r3, [r5, #8]
	lsr r3, r0, #16
	ldrh r4, [r2]
	add r3, r3, r4
	strh r3, [r2]
	lsr r0, r0, #21
	ldrh r2, [r1]
	add r0, r0, r2
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	pop {r4,r5}
	pop {r1}
	bx r1
_0800F0FC:
	.4byte REG_DMA3SAD
_0800F100:
	.4byte OBJ_VRAM0
	THUMB_FUNC_END sub_0800F0C4

	THUMB_FUNC_START sub_0800F104
sub_0800F104: @ 0x0800F104
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r10, r0
	add r4, r3, #0
	ldr r0, [sp, #40]
	lsl r1, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r8, r2
	lsl r0, r0, #24
	mov r2, #160
	lsl r2, r2, #22
	add r1, r1, r2
	lsr r1, r1, #24
	mov r9, r1
	mov r6, #0
	ldr r7, _0800F1C0  @ =REG_DMA3SAD
	ldr r5, _0800F1C4  @ =gOamData
	lsr r0, r0, #20
	mov r12, r0
_0800F132:
	ldr r0, _0800F1C8  @ =gUnknown_082EC748
	str r0, [r7]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r7, #4]
	ldr r0, _0800F1CC  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r5
	lsl r1, r6, #3
	mov r2, r9
	sub r1, r2, r1
	ldr r2, _0800F1D0  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800F1D4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r8
	strb r1, [r0]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r5
	mov r2, r10
	add r0, r2, r6
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r2, _0800F1D8  @ =gUnknown_03001B30
	ldr r1, [r2, #4]
	add r1, r1, r0
	ldr r2, _0800F1DC  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800F1E0  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
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
	bls _0800F132
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F1C0:
	.4byte REG_DMA3SAD
_0800F1C4:
	.4byte gOamData
_0800F1C8:
	.4byte gUnknown_082EC748
_0800F1CC:
	.4byte 0x84000002
_0800F1D0:
	.4byte 0x000001FF
_0800F1D4:
	.4byte 0xFFFFFE00
_0800F1D8:
	.4byte gUnknown_03001B30
_0800F1DC:
	.4byte 0x000003FF
_0800F1E0:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0800F104

	