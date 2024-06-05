	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_0801827C
sub_0801827C: @ 0x0801827C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	ldr r4, _0801831C  @ =REG_DMA3SAD
	ldr r3, [r0, #16]
	str r3, [r4]
	ldr r3, _08018320  @ =0x03000094
	mov r9, r3
	ldr r6, [r3]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	ldr r5, _08018324  @ =gOamData
	mov r8, r5
	add r3, r3, r8
	str r3, [r4, #4]
	ldr r3, _08018328  @ =0x84000002
	str r3, [r4, #8]
	ldr r3, [r4, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	lsl r1, r1, #22
	lsr r1, r1, #22
	ldrh r5, [r4, #4]
	ldr r3, _0801832C  @ =0xFFFFFC00
	and r3, r3, r5
	orr r3, r3, r1
	strh r3, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r1, #0
	ldrsh r4, [r0, r1]
	ldr r5, _08018330  @ =0x000001FF
	add r1, r5, #0
	and r4, r4, r1
	ldrh r5, [r3, #2]
	ldr r1, _08018334  @ =0xFFFFFE00
	and r1, r1, r5
	orr r1, r1, r4
	strh r1, [r3, #2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrh r0, [r0, #2]
	strb r0, [r1]
	mov r1, r9
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	lsl r2, r2, #4
	ldrb r3, [r1, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r2
	strb r0, [r1, #5]
	mov r3, r9
	ldr r0, [r3]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
_0801831C:
	.4byte REG_DMA3SAD
_08018320:
	.4byte 0x03000094
_08018324:
	.4byte gOamData
_08018328:
	.4byte 0x84000002
_0801832C:
	.4byte 0xFFFFFC00
_08018330:
	.4byte 0x000001FF
_08018334:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0801827C

	THUMB_FUNC_START sub_08018338
sub_08018338: @ 0x08018338
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	ldr r4, [sp, #28]
	mov r8, r4
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r6, r8
	lsl r6, r6, #16
	mov r8, r6
	ldr r5, _080183FC  @ =REG_DMA3SAD
	ldr r4, [r0, #16]
	str r4, [r5]
	ldr r4, _08018400  @ =0x03000094
	mov r12, r4
	ldr r6, [r4]
	mov r9, r6
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	ldr r6, _08018404  @ =gOamData
	mov r10, r6
	add r4, r4, r10
	str r4, [r5, #4]
	ldr r4, _08018408  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	mov r4, r9
	ldrh r5, [r4, #2]
	lsl r5, r5, #3
	add r5, r5, r10
	lsl r2, r2, #22
	lsr r2, r2, #22
	ldrh r6, [r5, #4]
	ldr r4, _0801840C  @ =0xFFFFFC00
	and r4, r4, r6
	orr r4, r4, r2
	strh r4, [r5, #4]
	mov r6, r9
	ldrh r5, [r6, #2]
	lsl r5, r5, #3
	add r5, r5, r10
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r2, [r0, #12]
	lsl r4, r1, #3
	add r4, r4, r1
	lsl r4, r4, #2
	add r2, r4, r2
	mov r1, #2
	ldrsb r1, [r2, r1]
	add r3, r3, r1
	ldr r2, _08018410  @ =0x000001FF
	add r1, r2, #0
	and r3, r3, r1
	ldrh r2, [r5, #2]
	ldr r1, _08018414  @ =0xFFFFFE00
	and r1, r1, r2
	orr r1, r1, r3
	strh r1, [r5, #2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	add r1, r1, r10
	ldr r0, [r0, #12]
	add r4, r4, r0
	mov r6, r8
	lsr r6, r6, #16
	mov r8, r6
	ldrb r4, [r4, #3]
	add r8, r8, r4
	mov r0, r8
	strb r0, [r1]
	mov r1, r12
	ldr r0, [r1]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r10
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r2, r12
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080183FC:
	.4byte REG_DMA3SAD
_08018400:
	.4byte 0x03000094
_08018404:
	.4byte gOamData
_08018408:
	.4byte 0x84000002
_0801840C:
	.4byte 0xFFFFFC00
_08018410:
	.4byte 0x000001FF
_08018414:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018338

	THUMB_FUNC_START sub_08018418
sub_08018418: @ 0x08018418
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	ldr r4, _080184FC  @ =REG_DMA3SAD
	ldr r2, [r0, #20]
	str r2, [r4]
	ldr r2, _08018500  @ =gUnknown_0300192C
	mov r12, r2
	ldrh r2, [r2]
	ldr r3, _08018504  @ =OBJ_VRAM0
	add r2, r2, r3
	str r2, [r4, #4]
	ldrh r2, [r0, #8]
	lsr r2, r2, #2
	mov r3, #132
	lsl r3, r3, #24
	orr r2, r2, r3
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	ldr r2, [r0, #16]
	str r2, [r4]
	ldr r3, _08018508  @ =0x03000094
	mov r10, r3
	ldr r6, [r3]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	ldr r5, _0801850C  @ =gOamData
	mov r8, r5
	add r2, r2, r8
	str r2, [r4, #4]
	ldr r2, _08018510  @ =0x84000002
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	ldr r2, _08018514  @ =gUnknown_03001930
	mov r9, r2
	ldrh r2, [r2]
	ldr r3, _08018518  @ =0x000003FF
	and r3, r3, r2
	ldrh r5, [r4, #4]
	ldr r2, _0801851C  @ =0xFFFFFC00
	and r2, r2, r5
	orr r2, r2, r3
	strh r2, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r5, #0
	ldrsh r4, [r0, r5]
	ldr r5, _08018520  @ =0x000001FF
	add r2, r5, #0
	and r4, r4, r2
	ldrh r5, [r3, #2]
	ldr r2, _08018524  @ =0xFFFFFE00
	and r2, r2, r5
	orr r2, r2, r4
	strh r2, [r3, #2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r3, [r0, #2]
	strb r3, [r2]
	mov r3, r10
	ldr r2, [r3]
	ldrh r3, [r2, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	lsl r1, r1, #4
	ldrb r4, [r3, #5]
	mov r2, #15
	and r2, r2, r4
	orr r2, r2, r1
	strb r2, [r3, #5]
	mov r5, r10
	ldr r1, [r5]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r2, r9
	ldrh r2, [r2]
	add r1, r1, r2
	mov r3, r9
	strh r1, [r3]
	ldrh r0, [r0, #8]
	mov r5, r12
	ldrh r5, [r5]
	add r0, r0, r5
	mov r1, r12
	strh r0, [r1]
	mov r2, r10
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080184FC:
	.4byte REG_DMA3SAD
_08018500:
	.4byte gUnknown_0300192C
_08018504:
	.4byte OBJ_VRAM0
_08018508:
	.4byte 0x03000094
_0801850C:
	.4byte gOamData
_08018510:
	.4byte 0x84000002
_08018514:
	.4byte gUnknown_03001930
_08018518:
	.4byte 0x000003FF
_0801851C:
	.4byte 0xFFFFFC00
_08018520:
	.4byte 0x000001FF
_08018524:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018418

	THUMB_FUNC_START sub_08018528
sub_08018528: @ 0x08018528
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	ldr r3, _080185CC  @ =REG_DMA3SAD
	ldr r2, [r0, #16]
	str r2, [r3]
	ldr r2, _080185D0  @ =0x03000094
	mov r9, r2
	ldr r6, [r2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	ldr r4, _080185D4  @ =gOamData
	mov r8, r4
	add r2, r2, r8
	str r2, [r3, #4]
	ldr r2, _080185D8  @ =0x84000002
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	ldrh r2, [r6, #18]
	ldr r3, _080185DC  @ =0x000003FF
	and r3, r3, r2
	ldrh r5, [r4, #4]
	ldr r2, _080185E0  @ =0xFFFFFC00
	and r2, r2, r5
	orr r2, r2, r3
	strh r2, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r5, #0
	ldrsh r4, [r0, r5]
	ldr r5, _080185E4  @ =0x000001FF
	add r2, r5, #0
	and r4, r4, r2
	ldrh r5, [r3, #2]
	ldr r2, _080185E8  @ =0xFFFFFE00
	and r2, r2, r5
	orr r2, r2, r4
	strh r2, [r3, #2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r0, [r0, #2]
	strb r0, [r2]
	mov r2, r9
	ldr r0, [r2]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r4, r9
	ldr r0, [r4]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080185CC:
	.4byte REG_DMA3SAD
_080185D0:
	.4byte 0x03000094
_080185D4:
	.4byte gOamData
_080185D8:
	.4byte 0x84000002
_080185DC:
	.4byte 0x000003FF
_080185E0:
	.4byte 0xFFFFFC00
_080185E4:
	.4byte 0x000001FF
_080185E8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018528

	THUMB_FUNC_START sub_080185EC
sub_080185EC: @ 0x080185EC
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	ldr r3, _08018690  @ =REG_DMA3SAD
	ldr r2, [r0, #16]
	str r2, [r3]
	ldr r2, _08018694  @ =0x03000094
	mov r9, r2
	ldr r6, [r2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	ldr r4, _08018698  @ =gOamData
	mov r8, r4
	add r2, r2, r8
	str r2, [r3, #4]
	ldr r2, _0801869C  @ =0x84000002
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	ldrh r2, [r6, #16]
	ldr r3, _080186A0  @ =0x000003FF
	and r3, r3, r2
	ldrh r5, [r4, #4]
	ldr r2, _080186A4  @ =0xFFFFFC00
	and r2, r2, r5
	orr r2, r2, r3
	strh r2, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r5, #0
	ldrsh r4, [r0, r5]
	ldr r5, _080186A8  @ =0x000001FF
	add r2, r5, #0
	and r4, r4, r2
	ldrh r5, [r3, #2]
	ldr r2, _080186AC  @ =0xFFFFFE00
	and r2, r2, r5
	orr r2, r2, r4
	strh r2, [r3, #2]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r0, [r0, #2]
	strb r0, [r2]
	mov r2, r9
	ldr r0, [r2]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r4, r9
	ldr r0, [r4]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018690:
	.4byte REG_DMA3SAD
_08018694:
	.4byte 0x03000094
_08018698:
	.4byte gOamData
_0801869C:
	.4byte 0x84000002
_080186A0:
	.4byte 0x000003FF
_080186A4:
	.4byte 0xFFFFFC00
_080186A8:
	.4byte 0x000001FF
_080186AC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080185EC

	THUMB_FUNC_START sub_080186B0
sub_080186B0: @ 0x080186B0
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r3, _08018794  @ =REG_DMA3SAD
	ldr r4, [r0, #12]
	lsl r2, r1, #3
	add r2, r2, r1
	lsl r2, r2, #2
	add r2, r2, r4
	ldrb r2, [r2]
	ldrh r1, [r0, #4]
	mul r2, r1, r2
	lsl r2, r2, #2
	ldr r1, [r0, #20]
	add r1, r1, r2
	str r1, [r3]
	ldr r1, _08018798  @ =gUnknown_0300192C
	mov r10, r1
	ldrh r1, [r1]
	ldr r2, _0801879C  @ =OBJ_VRAM0
	add r1, r1, r2
	str r1, [r3, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r2, #132
	lsl r2, r2, #24
	orr r1, r1, r2
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r1, [r0, #16]
	str r1, [r3]
	ldr r2, _080187A0  @ =0x03000094
	mov r9, r2
	ldr r6, [r2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	ldr r5, _080187A4  @ =gOamData
	add r1, r1, r5
	str r1, [r3, #4]
	ldr r1, _080187A8  @ =0x84000002
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r5
	ldr r4, _080187AC  @ =gUnknown_03001930
	mov r8, r4
	ldrh r1, [r4]
	ldr r2, _080187B0  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _080187B4  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, #0
	ldrsh r3, [r0, r1]
	ldr r4, _080187B8  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r2, #2]
	ldr r1, _080187BC  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r2, #2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrh r2, [r0, #2]
	strb r2, [r1]
	mov r2, r9
	ldr r1, [r2]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r5
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r3, r8
	ldrh r3, [r3]
	add r1, r1, r3
	mov r4, r8
	strh r1, [r4]
	ldrh r0, [r0, #8]
	mov r1, r10
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r10
	strh r0, [r2]
	mov r3, r9
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018794:
	.4byte REG_DMA3SAD
_08018798:
	.4byte gUnknown_0300192C
_0801879C:
	.4byte OBJ_VRAM0
_080187A0:
	.4byte 0x03000094
_080187A4:
	.4byte gOamData
_080187A8:
	.4byte 0x84000002
_080187AC:
	.4byte gUnknown_03001930
_080187B0:
	.4byte 0x000003FF
_080187B4:
	.4byte 0xFFFFFC00
_080187B8:
	.4byte 0x000001FF
_080187BC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080186B0

	THUMB_FUNC_START sub_080187C0
sub_080187C0: @ 0x080187C0
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r2, r2, #24
	ldr r4, _080188BC  @ =REG_DMA3SAD
	ldr r5, [r0, #12]
	lsl r3, r1, #3
	add r3, r3, r1
	lsl r3, r3, #2
	add r3, r3, r5
	ldrb r3, [r3]
	ldrh r1, [r0, #4]
	mul r3, r1, r3
	lsl r3, r3, #2
	ldr r1, [r0, #20]
	add r1, r1, r3
	str r1, [r4]
	ldr r1, _080188C0  @ =gUnknown_0300192C
	mov r12, r1
	ldrh r1, [r1]
	ldr r3, _080188C4  @ =OBJ_VRAM0
	add r1, r1, r3
	str r1, [r4, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r3, #132
	lsl r3, r3, #24
	orr r1, r1, r3
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldr r1, [r0, #16]
	str r1, [r4]
	ldr r3, _080188C8  @ =0x03000094
	mov r10, r3
	ldr r6, [r3]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	ldr r5, _080188CC  @ =gOamData
	mov r8, r5
	add r1, r1, r8
	str r1, [r4, #4]
	ldr r1, _080188D0  @ =0x84000002
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldrh r4, [r6, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	ldr r1, _080188D4  @ =gUnknown_03001930
	mov r9, r1
	ldrh r1, [r1]
	ldr r3, _080188D8  @ =0x000003FF
	and r3, r3, r1
	ldrh r5, [r4, #4]
	ldr r1, _080188DC  @ =0xFFFFFC00
	and r1, r1, r5
	orr r1, r1, r3
	strh r1, [r4, #4]
	ldrh r3, [r6, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r5, #0
	ldrsh r4, [r0, r5]
	ldr r5, _080188E0  @ =0x000001FF
	add r1, r5, #0
	and r4, r4, r1
	ldrh r5, [r3, #2]
	ldr r1, _080188E4  @ =0xFFFFFE00
	and r1, r1, r5
	orr r1, r1, r4
	strh r1, [r3, #2]
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrh r3, [r0, #2]
	strb r3, [r1]
	mov r3, r10
	ldr r1, [r3]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	lsr r2, r2, #20
	ldrb r4, [r3, #5]
	mov r1, #15
	and r1, r1, r4
	orr r1, r1, r2
	strb r1, [r3, #5]
	mov r5, r10
	ldr r1, [r5]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r2, r9
	ldrh r2, [r2]
	add r1, r1, r2
	mov r3, r9
	strh r1, [r3]
	ldrh r0, [r0, #8]
	mov r5, r12
	ldrh r5, [r5]
	add r0, r0, r5
	mov r1, r12
	strh r0, [r1]
	mov r2, r10
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
_080188BC:
	.4byte REG_DMA3SAD
_080188C0:
	.4byte gUnknown_0300192C
_080188C4:
	.4byte OBJ_VRAM0
_080188C8:
	.4byte 0x03000094
_080188CC:
	.4byte gOamData
_080188D0:
	.4byte 0x84000002
_080188D4:
	.4byte gUnknown_03001930
_080188D8:
	.4byte 0x000003FF
_080188DC:
	.4byte 0xFFFFFC00
_080188E0:
	.4byte 0x000001FF
_080188E4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080187C0

	THUMB_FUNC_START sub_080188E8
sub_080188E8: @ 0x080188E8
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	lsl r1, r1, #24
	ldr r3, _08018978  @ =REG_DMA3SAD
	ldr r2, [r0, #16]
	str r2, [r3]
	ldr r2, _0801897C  @ =0x03000094
	mov r8, r2
	ldr r5, [r2]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	ldr r6, _08018980  @ =gOamData
	add r2, r2, r6
	str r2, [r3, #4]
	ldr r2, _08018984  @ =0x84000002
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	ldrh r3, [r5, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	lsr r1, r1, #23
	add r2, r5, #0
	add r2, r2, #42
	add r2, r2, r1
	ldrh r1, [r2]
	ldr r2, _08018988  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _0801898C  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r4, #0
	ldrsh r3, [r0, r4]
	ldr r4, _08018990  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r2, #2]
	ldr r1, _08018994  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r2, #2]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r0, [r0, #2]
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	mov r2, r8
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018978:
	.4byte REG_DMA3SAD
_0801897C:
	.4byte 0x03000094
_08018980:
	.4byte gOamData
_08018984:
	.4byte 0x84000002
_08018988:
	.4byte 0x000003FF
_0801898C:
	.4byte 0xFFFFFC00
_08018990:
	.4byte 0x000001FF
_08018994:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080188E8

	THUMB_FUNC_START sub_08018998
sub_08018998: @ 0x08018998
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r2, _08018A1C  @ =REG_DMA3SAD
	ldr r1, [r0, #16]
	str r1, [r2]
	ldr r1, _08018A20  @ =0x03000094
	mov r8, r1
	ldr r5, [r1]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	ldr r6, _08018A24  @ =gOamData
	add r1, r1, r6
	str r1, [r2, #4]
	ldr r1, _08018A28  @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldrh r3, [r5, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r1, [r5, #22]
	ldr r2, _08018A2C  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _08018A30  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r4, #0
	ldrsh r3, [r0, r4]
	ldr r4, _08018A34  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r2, #2]
	ldr r1, _08018A38  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r2, #2]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r0, [r0, #2]
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	mov r4, r8
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
_08018A1C:
	.4byte REG_DMA3SAD
_08018A20:
	.4byte 0x03000094
_08018A24:
	.4byte gOamData
_08018A28:
	.4byte 0x84000002
_08018A2C:
	.4byte 0x000003FF
_08018A30:
	.4byte 0xFFFFFC00
_08018A34:
	.4byte 0x000001FF
_08018A38:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018998

	THUMB_FUNC_START sub_08018A3C
sub_08018A3C: @ 0x08018A3C
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r2, _08018AC0  @ =REG_DMA3SAD
	ldr r1, [r0, #16]
	str r1, [r2]
	ldr r1, _08018AC4  @ =0x03000094
	mov r8, r1
	ldr r5, [r1]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	ldr r6, _08018AC8  @ =gOamData
	add r1, r1, r6
	str r1, [r2, #4]
	ldr r1, _08018ACC  @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldrh r3, [r5, #2]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r1, [r5, #24]
	ldr r2, _08018AD0  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _08018AD4  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r2, [r5, #2]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r4, #0
	ldrsh r3, [r0, r4]
	ldr r4, _08018AD8  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r2, #2]
	ldr r1, _08018ADC  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r2, #2]
	ldrh r1, [r5, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r0, [r0, #2]
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	mov r4, r8
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
_08018AC0:
	.4byte REG_DMA3SAD
_08018AC4:
	.4byte 0x03000094
_08018AC8:
	.4byte gOamData
_08018ACC:
	.4byte 0x84000002
_08018AD0:
	.4byte 0x000003FF
_08018AD4:
	.4byte 0xFFFFFC00
_08018AD8:
	.4byte 0x000001FF
_08018ADC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018A3C

	THUMB_FUNC_START sub_08018AE0
sub_08018AE0: @ 0x08018AE0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _08018BC0  @ =REG_DMA3SAD
	ldr r6, [r0, #12]
	lsl r4, r1, #3
	add r4, r4, r1
	lsl r4, r4, #2
	add r4, r4, r6
	ldrb r4, [r4]
	ldrh r1, [r0, #4]
	mul r4, r1, r4
	lsl r4, r4, #2
	ldr r1, [r0, #20]
	add r1, r1, r4
	str r1, [r5]
	ldr r7, _08018BC4  @ =gUnknown_0300192C
	ldrh r1, [r7]
	ldr r4, _08018BC8  @ =OBJ_VRAM0
	add r1, r1, r4
	str r1, [r5, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r4, #132
	lsl r4, r4, #24
	orr r1, r1, r4
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldr r1, [r0, #16]
	str r1, [r5]
	ldr r1, _08018BCC  @ =0x03000094
	mov r12, r1
	ldr r4, [r1]
	mov r9, r4
	ldrh r1, [r4, #2]
	lsl r1, r1, #3
	ldr r4, _08018BD0  @ =gOamData
	mov r8, r4
	add r1, r1, r8
	str r1, [r5, #4]
	ldr r1, _08018BD4  @ =0x84000002
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	mov r1, r9
	ldrh r5, [r1, #2]
	lsl r5, r5, #3
	add r5, r5, r8
	ldr r4, _08018BD8  @ =gUnknown_03001930
	mov r10, r4
	ldrh r1, [r4]
	ldr r4, _08018BDC  @ =0x000003FF
	and r4, r4, r1
	ldrh r6, [r5, #4]
	ldr r1, _08018BE0  @ =0xFFFFFC00
	and r1, r1, r6
	orr r1, r1, r4
	strh r1, [r5, #4]
	mov r1, r9
	ldrh r4, [r1, #2]
	lsl r4, r4, #3
	add r4, r4, r8
	lsl r2, r2, #23
	lsr r2, r2, #23
	ldrh r5, [r4, #2]
	ldr r1, _08018BE4  @ =0xFFFFFE00
	and r1, r1, r5
	orr r1, r1, r2
	strh r1, [r4, #2]
	mov r2, r9
	ldrh r1, [r2, #2]
	lsl r1, r1, #3
	add r1, r1, r8
	strb r3, [r1]
	mov r3, r12
	ldr r1, [r3]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r8
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r4, r10
	ldrh r4, [r4]
	add r1, r1, r4
	mov r2, r10
	strh r1, [r2]
	ldrh r0, [r0, #8]
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r4, r12
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018BC0:
	.4byte REG_DMA3SAD
_08018BC4:
	.4byte gUnknown_0300192C
_08018BC8:
	.4byte OBJ_VRAM0
_08018BCC:
	.4byte 0x03000094
_08018BD0:
	.4byte gOamData
_08018BD4:
	.4byte 0x84000002
_08018BD8:
	.4byte gUnknown_03001930
_08018BDC:
	.4byte 0x000003FF
_08018BE0:
	.4byte 0xFFFFFC00
_08018BE4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018AE0

	THUMB_FUNC_START sub_08018BE8
sub_08018BE8: @ 0x08018BE8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r7, [sp, #32]
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _08018CE4  @ =REG_DMA3SAD
	ldr r6, [r0, #12]
	lsl r4, r1, #3
	add r4, r4, r1
	lsl r4, r4, #2
	add r4, r4, r6
	ldrb r4, [r4]
	ldrh r1, [r0, #4]
	mul r4, r1, r4
	lsl r4, r4, #2
	ldr r1, [r0, #20]
	add r1, r1, r4
	str r1, [r5]
	ldr r4, _08018CE8  @ =gUnknown_0300192C
	ldrh r1, [r4]
	ldr r4, _08018CEC  @ =OBJ_VRAM0
	add r1, r1, r4
	str r1, [r5, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r4, #132
	lsl r4, r4, #24
	orr r1, r1, r4
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldr r1, [r0, #16]
	str r1, [r5]
	ldr r1, _08018CF0  @ =0x03000094
	mov r12, r1
	ldr r4, [r1]
	mov r8, r4
	ldrh r1, [r4, #2]
	lsl r1, r1, #3
	ldr r4, _08018CF4  @ =gOamData
	mov r9, r4
	add r1, r1, r9
	str r1, [r5, #4]
	ldr r1, _08018CF8  @ =0x84000002
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	mov r1, r8
	ldrh r5, [r1, #2]
	lsl r5, r5, #3
	add r5, r5, r9
	ldr r4, _08018CFC  @ =gUnknown_03001930
	mov r10, r4
	ldrh r1, [r4]
	ldr r4, _08018D00  @ =0x000003FF
	and r4, r4, r1
	ldrh r6, [r5, #4]
	ldr r1, _08018D04  @ =0xFFFFFC00
	and r1, r1, r6
	orr r1, r1, r4
	strh r1, [r5, #4]
	mov r1, r8
	ldrh r4, [r1, #2]
	lsl r4, r4, #3
	add r4, r4, r9
	lsl r3, r3, #23
	lsr r3, r3, #23
	ldrh r5, [r4, #2]
	ldr r1, _08018D08  @ =0xFFFFFE00
	and r1, r1, r5
	orr r1, r1, r3
	strh r1, [r4, #2]
	mov r3, r8
	ldrh r1, [r3, #2]
	lsl r1, r1, #3
	add r1, r1, r9
	strb r7, [r1]
	mov r4, r12
	ldr r1, [r4]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r9
	lsl r2, r2, #4
	ldrb r4, [r3, #5]
	mov r1, #15
	and r1, r1, r4
	orr r1, r1, r2
	strb r1, [r3, #5]
	mov r2, r12
	ldr r1, [r2]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r9
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r3, r10
	ldrh r3, [r3]
	add r1, r1, r3
	mov r4, r10
	strh r1, [r4]
	ldrh r0, [r0, #8]
	ldr r1, _08018CE8  @ =gUnknown_0300192C
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r2, _08018CE8  @ =gUnknown_0300192C
	strh r0, [r2]
	mov r3, r12
	ldr r1, [r3]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018CE4:
	.4byte REG_DMA3SAD
_08018CE8:
	.4byte gUnknown_0300192C
_08018CEC:
	.4byte OBJ_VRAM0
_08018CF0:
	.4byte 0x03000094
_08018CF4:
	.4byte gOamData
_08018CF8:
	.4byte 0x84000002
_08018CFC:
	.4byte gUnknown_03001930
_08018D00:
	.4byte 0x000003FF
_08018D04:
	.4byte 0xFFFFFC00
_08018D08:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018BE8

	THUMB_FUNC_START sub_08018D0C
sub_08018D0C: @ 0x08018D0C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r3, r3, #16
	ldr r5, _08018E0C  @ =REG_DMA3SAD
	ldr r4, [r0, #12]
	lsl r6, r1, #3
	mov r8, r6
	add r8, r8, r1
	mov r1, r8
	lsl r1, r1, #2
	mov r8, r1
	add r4, r4, r8
	ldrb r4, [r4]
	ldrh r1, [r0, #4]
	mul r4, r1, r4
	lsl r4, r4, #2
	ldr r1, [r0, #20]
	add r1, r1, r4
	str r1, [r5]
	ldr r4, _08018E10  @ =gUnknown_0300192C
	ldrh r1, [r4]
	ldr r4, _08018E14  @ =OBJ_VRAM0
	add r1, r1, r4
	str r1, [r5, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r4, #132
	lsl r4, r4, #24
	orr r1, r1, r4
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldr r1, [r0, #16]
	str r1, [r5]
	ldr r7, _08018E18  @ =0x03000094
	ldr r6, [r7]
	mov r9, r6
	ldrh r1, [r6, #2]
	lsl r1, r1, #3
	ldr r4, _08018E1C  @ =gOamData
	mov r10, r4
	add r1, r1, r10
	str r1, [r5, #4]
	ldr r1, _08018E20  @ =0x84000002
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldrh r5, [r6, #2]
	lsl r5, r5, #3
	add r5, r5, r10
	ldr r6, _08018E24  @ =gUnknown_03001930
	mov r12, r6
	ldrh r1, [r6]
	ldr r4, _08018E28  @ =0x000003FF
	and r4, r4, r1
	ldrh r6, [r5, #4]
	ldr r1, _08018E2C  @ =0xFFFFFC00
	and r1, r1, r6
	orr r1, r1, r4
	strh r1, [r5, #4]
	mov r1, r9
	ldrh r5, [r1, #2]
	lsl r5, r5, #3
	add r5, r5, r10
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, [r0, #12]
	add r1, r1, r8
	ldrb r1, [r1, #2]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r2, r2, r1
	ldr r4, _08018E30  @ =0x000001FF
	add r1, r4, #0
	and r2, r2, r1
	ldrh r4, [r5, #2]
	ldr r1, _08018E34  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r5, #2]
	mov r6, r9
	ldrh r2, [r6, #2]
	lsl r2, r2, #3
	add r2, r2, r10
	ldr r1, [r0, #12]
	add r8, r8, r1
	lsr r3, r3, #16
	mov r1, r8
	ldrb r1, [r1, #3]
	add r3, r3, r1
	strb r3, [r2]
	ldr r1, [r7]
	ldrh r3, [r1, #2]
	lsl r3, r3, #3
	add r3, r3, r10
	ldrb r2, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	mov r2, r12
	ldrh r2, [r2]
	add r1, r1, r2
	mov r3, r12
	strh r1, [r3]
	ldrh r0, [r0, #8]
	ldr r4, _08018E10  @ =gUnknown_0300192C
	ldrh r4, [r4]
	add r0, r0, r4
	ldr r6, _08018E10  @ =gUnknown_0300192C
	strh r0, [r6]
	ldr r1, [r7]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08018E0C:
	.4byte REG_DMA3SAD
_08018E10:
	.4byte gUnknown_0300192C
_08018E14:
	.4byte OBJ_VRAM0
_08018E18:
	.4byte 0x03000094
_08018E1C:
	.4byte gOamData
_08018E20:
	.4byte 0x84000002
_08018E24:
	.4byte gUnknown_03001930
_08018E28:
	.4byte 0x000003FF
_08018E2C:
	.4byte 0xFFFFFC00
_08018E30:
	.4byte 0x000001FF
_08018E34:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018D0C

	THUMB_FUNC_START sub_08018E38
sub_08018E38: @ 0x08018E38
	push {r4-r7,lr}
	add r3, r0, #0
	lsl r1, r1, #16
	lsr r7, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r12, r2
	ldr r0, _08018EC0  @ =gLevelSelect_03000083
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08018EBA
	ldr r1, _08018EC4  @ =REG_DMA3SAD
	ldr r0, [r3, #16]
	str r0, [r1]
	ldr r6, _08018EC8  @ =0x03000094
	ldr r4, [r6]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _08018ECC  @ =gOamData
	add r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _08018ED0  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r0, [r4, #26]
	ldr r1, _08018ED4  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08018ED8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	lsl r1, r7, #23
	lsr r1, r1, #23
	ldrh r3, [r2, #2]
	ldr r0, _08018EDC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r12
	strb r1, [r0]
	ldr r0, [r6]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r6]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
_08018EBA:
	pop {r4-r7}
	pop {r0}
	bx r0
_08018EC0:
	.4byte gLevelSelect_03000083
_08018EC4:
	.4byte REG_DMA3SAD
_08018EC8:
	.4byte 0x03000094
_08018ECC:
	.4byte gOamData
_08018ED0:
	.4byte 0x84000002
_08018ED4:
	.4byte 0x000003FF
_08018ED8:
	.4byte 0xFFFFFC00
_08018EDC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018E38

	THUMB_FUNC_START sub_08018EE0
sub_08018EE0: @ 0x08018EE0
	push {r4-r7,lr}
	add r3, r0, #0
	lsl r1, r1, #16
	lsr r7, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r12, r2
	ldr r0, _08018F68  @ =gLevelSelect_03000083
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08018F62
	ldr r1, _08018F6C  @ =REG_DMA3SAD
	ldr r0, [r3, #16]
	str r0, [r1]
	ldr r6, _08018F70  @ =0x03000094
	ldr r4, [r6]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _08018F74  @ =gOamData
	add r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _08018F78  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r0, [r4, #28]
	ldr r1, _08018F7C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08018F80  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	lsl r1, r7, #23
	lsr r1, r1, #23
	ldrh r3, [r2, #2]
	ldr r0, _08018F84  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r12
	strb r1, [r0]
	ldr r0, [r6]
	ldrh r1, [r0, #2]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldr r1, [r6]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
_08018F62:
	pop {r4-r7}
	pop {r0}
	bx r0
_08018F68:
	.4byte gLevelSelect_03000083
_08018F6C:
	.4byte REG_DMA3SAD
_08018F70:
	.4byte 0x03000094
_08018F74:
	.4byte gOamData
_08018F78:
	.4byte 0x84000002
_08018F7C:
	.4byte 0x000003FF
_08018F80:
	.4byte 0xFFFFFC00
_08018F84:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08018EE0

	THUMB_FUNC_START sub_08018F88
sub_08018F88: @ 0x08018F88
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r9, r7
	lsl r1, r1, #24
	lsl r2, r2, #24
	lsr r6, r2, #24
	mov r8, r6
	cmp r1, #0
	bne _08018FA6
	b _080190E8
_08018FA6:
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _08019044
	ldr r0, _08019028  @ =gUnknown_080793B4
	ldr r1, _0801902C  @ =0x03000086
	mov r9, r1
	ldrb r1, [r1]
	ldr r2, _08019030  @ =0x03000094
	mov r8, r2
	ldr r2, [r2]
	ldrh r2, [r2, #30]
	ldr r4, _08019034  @ =gUnknown_0807897C
	lsl r5, r7, #24
	asr r5, r5, #21
	add r6, r5, r4
	ldr r3, [r6]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r4, r4, #4
	add r5, r5, r4
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	ldr r0, _08019038  @ =gUnknown_08079414
	ldr r1, _0801903C  @ =0x03000087
	ldrb r1, [r1]
	mov r3, r8
	ldr r2, [r3]
	ldrh r2, [r2, #32]
	ldr r3, [r6]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	ldr r0, _08019040  @ =gUnknown_08079474
	mov r2, r9
	ldrb r1, [r2]
	mov r3, r8
	ldr r2, [r3]
	ldrh r2, [r2, #34]
	ldr r3, [r6]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	b _08019210
	.byte 0x00
	.byte 0x00
_08019028:
	.4byte gUnknown_080793B4
_0801902C:
	.4byte 0x03000086
_08019030:
	.4byte 0x03000094
_08019034:
	.4byte gUnknown_0807897C
_08019038:
	.4byte gUnknown_08079414
_0801903C:
	.4byte 0x03000087
_08019040:
	.4byte gUnknown_08079474
_08019044:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _08019078
	ldr r0, _080190D4  @ =gUnknown_08079384
	ldr r1, _080190D8  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #36]
	ldr r5, _080190DC  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019078:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _080190AC
	ldr r0, _080190E0  @ =gUnknown_080793E4
	ldr r1, _080190D8  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #38]
	ldr r5, _080190DC  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_080190AC:
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	bne _080190B6
	b _08019210
_080190B6:
	ldr r0, _080190E4  @ =gUnknown_08079444
	ldr r1, _080190D8  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #40]
	ldr r5, _080190DC  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	b _08019148
_080190D4:
	.4byte gUnknown_08079384
_080190D8:
	.4byte 0x03000094
_080190DC:
	.4byte gUnknown_0807897C
_080190E0:
	.4byte gUnknown_080793E4
_080190E4:
	.4byte gUnknown_08079444
_080190E8:
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _08019170
	ldr r0, _0801915C  @ =gUnknown_080793CC
	ldr r6, _08019160  @ =0x03000094
	ldr r1, [r6]
	ldrh r2, [r1, #36]
	ldr r1, _08019164  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r5, r4, r1
	ldr r3, [r5]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r1, r1, #4
	add r4, r4, r1
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	ldr r0, _08019168  @ =gUnknown_0807942C
	ldr r1, [r6]
	ldrh r2, [r1, #38]
	ldr r3, [r5]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	ldr r0, _0801916C  @ =gUnknown_0807948C
	ldr r1, [r6]
	ldrh r2, [r1, #40]
	ldr r3, [r5]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
_08019148:
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	b _08019210
	.byte 0x00
	.byte 0x00
_0801915C:
	.4byte gUnknown_080793CC
_08019160:
	.4byte 0x03000094
_08019164:
	.4byte gUnknown_0807897C
_08019168:
	.4byte gUnknown_0807942C
_0801916C:
	.4byte gUnknown_0807948C
_08019170:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _080191A4
	ldr r0, _08019220  @ =gUnknown_0807939C
	ldr r1, _08019224  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #36]
	ldr r5, _08019228  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_080191A4:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _080191D8
	ldr r0, _0801922C  @ =gUnknown_080793FC
	ldr r1, _08019224  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #38]
	ldr r5, _08019228  @ =gUnknown_0807897C
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_080191D8:
	mov r0, #4
	mov r1, r8
	and r1, r1, r0
	cmp r1, #0
	beq _08019210
	ldr r0, _08019230  @ =gUnknown_0807945C
	ldr r1, _08019224  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #40]
	ldr r5, _08019228  @ =gUnknown_0807897C
	mov r3, r9
	lsl r4, r3, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019210:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08019220:
	.4byte gUnknown_0807939C
_08019224:
	.4byte 0x03000094
_08019228:
	.4byte gUnknown_0807897C
_0801922C:
	.4byte gUnknown_080793FC
_08019230:
	.4byte gUnknown_0807945C
	THUMB_FUNC_END sub_08018F88

	THUMB_FUNC_START sub_08019234
sub_08019234: @ 0x08019234
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r9, r7
	lsl r1, r1, #24
	lsl r2, r2, #24
	lsr r6, r2, #24
	mov r8, r6
	cmp r1, #0
	bne _08019252
	b _08019394
_08019252:
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _080192F0
	ldr r0, _080192D4  @ =gUnknown_080793B4
	ldr r1, _080192D8  @ =0x03000086
	mov r9, r1
	ldrb r1, [r1]
	ldr r2, _080192DC  @ =0x03000094
	mov r8, r2
	ldr r2, [r2]
	ldrh r2, [r2, #30]
	ldr r4, _080192E0  @ =gUnknown_080789BC
	lsl r5, r7, #24
	asr r5, r5, #21
	add r6, r5, r4
	ldr r3, [r6]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r4, r4, #4
	add r5, r5, r4
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	ldr r0, _080192E4  @ =gUnknown_08079414
	ldr r1, _080192E8  @ =0x03000087
	ldrb r1, [r1]
	mov r3, r8
	ldr r2, [r3]
	ldrh r2, [r2, #32]
	ldr r3, [r6]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	ldr r0, _080192EC  @ =gUnknown_08079474
	mov r2, r9
	ldrb r1, [r2]
	mov r3, r8
	ldr r2, [r3]
	ldrh r2, [r2, #34]
	ldr r3, [r6]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r4, [r5]
	add r4, r4, #23
	lsl r4, r4, #16
	asr r4, r4, #16
	str r4, [sp]
	bl sub_08018338
	b _080194BE
	.byte 0x00
	.byte 0x00
_080192D4:
	.4byte gUnknown_080793B4
_080192D8:
	.4byte 0x03000086
_080192DC:
	.4byte 0x03000094
_080192E0:
	.4byte gUnknown_080789BC
_080192E4:
	.4byte gUnknown_08079414
_080192E8:
	.4byte 0x03000087
_080192EC:
	.4byte gUnknown_08079474
_080192F0:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _08019324
	ldr r0, _08019380  @ =gUnknown_08079384
	ldr r1, _08019384  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #36]
	ldr r5, _08019388  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019324:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _08019358
	ldr r0, _0801938C  @ =gUnknown_080793E4
	ldr r1, _08019384  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #38]
	ldr r5, _08019388  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019358:
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	bne _08019362
	b _080194BE
_08019362:
	ldr r0, _08019390  @ =gUnknown_08079444
	ldr r1, _08019384  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #40]
	ldr r5, _08019388  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	b _080193F4
_08019380:
	.4byte gUnknown_08079384
_08019384:
	.4byte 0x03000094
_08019388:
	.4byte gUnknown_080789BC
_0801938C:
	.4byte gUnknown_080793E4
_08019390:
	.4byte gUnknown_08079444
_08019394:
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _0801941C
	ldr r0, _08019408  @ =gUnknown_080793CC
	ldr r6, _0801940C  @ =0x03000094
	ldr r1, [r6]
	ldrh r2, [r1, #36]
	ldr r1, _08019410  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r5, r4, r1
	ldr r3, [r5]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r1, r1, #4
	add r4, r4, r1
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	ldr r0, _08019414  @ =gUnknown_0807942C
	ldr r1, [r6]
	ldrh r2, [r1, #38]
	ldr r3, [r5]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	ldr r0, _08019418  @ =gUnknown_0807948C
	ldr r1, [r6]
	ldrh r2, [r1, #40]
	ldr r3, [r5]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
_080193F4:
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
	b _080194BE
	.byte 0x00
	.byte 0x00
_08019408:
	.4byte gUnknown_080793CC
_0801940C:
	.4byte 0x03000094
_08019410:
	.4byte gUnknown_080789BC
_08019414:
	.4byte gUnknown_0807942C
_08019418:
	.4byte gUnknown_0807948C
_0801941C:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _08019450
	ldr r0, _080194CC  @ =gUnknown_0807939C
	ldr r1, _080194D0  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #36]
	ldr r5, _080194D4  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #3
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019450:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _08019484
	ldr r0, _080194D8  @ =gUnknown_080793FC
	ldr r1, _080194D0  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #38]
	ldr r5, _080194D4  @ =gUnknown_080789BC
	lsl r4, r7, #24
	asr r4, r4, #21
	add r1, r4, r5
	ldr r3, [r1]
	add r3, r3, #15
	lsl r3, r3, #16
	asr r3, r3, #16
	add r5, r5, #4
	add r4, r4, r5
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_08019484:
	mov r0, #4
	mov r1, r8
	and r1, r1, r0
	cmp r1, #0
	beq _080194BE
	ldr r0, _080194DC  @ =gUnknown_0807945C
	ldr r1, _080194D0  @ =0x03000094
	ldr r1, [r1]
	ldrh r2, [r1, #40]
	ldr r1, _080194D4  @ =gUnknown_080789BC
	mov r3, r9
	lsl r4, r3, #24
	asr r4, r4, #21
	add r1, r4, r1
	ldr r3, [r1]
	add r3, r3, #27
	lsl r3, r3, #16
	asr r3, r3, #16
	ldr r1, _080194E0  @ =gUnknown_0807897C
	add r1, r1, #4
	add r4, r4, r1
	ldr r1, [r4]
	add r1, r1, #23
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [sp]
	mov r1, #0
	bl sub_08018338
_080194BE:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080194CC:
	.4byte gUnknown_0807939C
_080194D0:
	.4byte 0x03000094
_080194D4:
	.4byte gUnknown_080789BC
_080194D8:
	.4byte gUnknown_080793FC
_080194DC:
	.4byte gUnknown_0807945C
_080194E0:
	.4byte gUnknown_0807897C
	THUMB_FUNC_END sub_08019234

	THUMB_FUNC_START sub_080194E4
sub_080194E4: @ 0x080194E4
	push {r4,r5,lr}
	ldr r1, [sp, #12]
	lsl r0, r0, #24
	lsl r3, r3, #24
	lsr r4, r3, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r5, #0
	lsr r3, r0, #24
	lsl r2, r2, #24
	cmp r0, r2
	bne _0801950A
	ldr r0, _08019538  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801950A
	mov r5, #1
_0801950A:
	lsl r0, r3, #24
	asr r3, r0, #24
	cmp r3, #6
	bne _08019564
	cmp r1, #0
	bne _08019518
	b _08019620
_08019518:
	cmp r5, #0
	beq _08019544
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	beq _08019526
	b _08019620
_08019526:
	ldr r0, _0801953C  @ =gUnknown_08079354
	ldr r2, _08019540  @ =gUnknown_0807897C
	ldr r1, [r2, #48]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	ldr r2, [r2, #52]
	b _080195E2
	.byte 0x00
	.byte 0x00
_08019538:
	.4byte gLevelSelectMode
_0801953C:
	.4byte gUnknown_08079354
_08019540:
	.4byte gUnknown_0807897C
_08019544:
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _0801955C  @ =gUnknown_0807936C
	ldr r2, _08019560  @ =gUnknown_0807897C
	ldr r1, [r2, #48]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	ldr r2, [r2, #52]
	b _080195A6
_0801955C:
	.4byte gUnknown_0807936C
_08019560:
	.4byte gUnknown_0807897C
_08019564:
	cmp r3, #7
	bne _080195BC
	cmp r1, #0
	beq _08019620
	cmp r5, #0
	beq _08019590
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _08019588  @ =gUnknown_08079354
	ldr r2, _0801958C  @ =gUnknown_0807897C
	ldr r1, [r2, #56]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	ldr r2, [r2, #60]
	b _080195E2
_08019588:
	.4byte gUnknown_08079354
_0801958C:
	.4byte gUnknown_0807897C
_08019590:
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _080195B4  @ =gUnknown_0807936C
	ldr r2, _080195B8  @ =gUnknown_0807897C
	ldr r1, [r2, #56]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	ldr r2, [r2, #60]
_080195A6:
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018EE0
	b _08019620
	.byte 0x00
	.byte 0x00
_080195B4:
	.4byte gUnknown_0807936C
_080195B8:
	.4byte gUnknown_0807897C
_080195BC:
	cmp r1, #0
	beq _08019620
	cmp r5, #0
	beq _080195F8
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _080195F0  @ =gUnknown_08079354
	ldr r2, _080195F4  @ =gUnknown_0807897C
	lsl r3, r3, #3
	add r1, r3, r2
	ldr r1, [r1]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, #4
	add r3, r3, r2
	ldr r2, [r3]
_080195E2:
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018E38
	b _08019620
	.byte 0x00
	.byte 0x00
_080195F0:
	.4byte gUnknown_08079354
_080195F4:
	.4byte gUnknown_0807897C
_080195F8:
	mov r0, #192
	and r0, r0, r4
	cmp r0, #192
	bne _08019620
	ldr r0, _08019628  @ =gUnknown_0807936C
	ldr r2, _0801962C  @ =gUnknown_0807897C
	lsl r3, r3, #3
	add r1, r3, r2
	ldr r1, [r1]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, #4
	add r3, r3, r2
	ldr r2, [r3]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018EE0
_08019620:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08019628:
	.4byte gUnknown_0807936C
_0801962C:
	.4byte gUnknown_0807897C
	THUMB_FUNC_END sub_080194E4

	THUMB_FUNC_START sub_08019630
sub_08019630: @ 0x08019630
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r1, r1, #24
	asr r0, r1, #24
	cmp r0, #5
	bgt _080196BA
	lsl r6, r4, #24
	mov r5, #0
	add r7, r1, #0
	mov r8, r6
	cmp r6, #0
	ble _08019676
_08019650:
	lsl r0, r5, #24
	asr r0, r0, #24
	asr r4, r6, #24
	ldr r1, _08019690  @ =0x0300007C
	ldr r2, [r1]
	lsl r1, r5, #2
	add r1, r1, r2
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	asr r1, r7, #24
	add r2, r4, #0
	bl sub_080194E4
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, r4
	blt _08019650
_08019676:
	lsl r0, r5, #24
	asr r0, r0, #24
	asr r1, r7, #24
	mov r3, r8
	asr r2, r3, #24
	ldr r3, _08019690  @ =0x0300007C
	ldr r3, [r3]
	lsl r4, r5, #2
	add r4, r4, r3
	ldrb r3, [r4, #1]
	ldrb r4, [r4]
	str r4, [sp]
	b _080196AC
_08019690:
	.4byte 0x0300007C
_08019694:
	lsl r0, r5, #24
	asr r0, r0, #24
	ldr r1, _080196C8  @ =0x0300007C
	ldr r2, [r1]
	lsl r1, r5, #2
	add r1, r1, r2
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	asr r1, r7, #24
	mov r4, r8
	asr r2, r4, #24
_080196AC:
	bl sub_080194E4
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #7
	bls _08019694
_080196BA:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080196C8:
	.4byte 0x0300007C
	THUMB_FUNC_END sub_08019630

	THUMB_FUNC_START sub_080196CC
sub_080196CC: @ 0x080196CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, [sp, #32]
	lsl r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r8, r3
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r3, #0
	lsr r5, r0, #24
	lsl r2, r2, #24
	cmp r0, r2
	bne _08019700
	ldr r0, _08019768  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08019700
	mov r3, #1
_08019700:
	mov r9, r3
	lsl r0, r5, #24
	asr r7, r0, #24
	mov r10, r0
	cmp r7, #6
	beq _0801970E
	b _080198CC
_0801970E:
	cmp r4, #0
	bne _08019714
	b _0801988C
_08019714:
	cmp r3, #0
	beq _080197D4
	mov r0, #192
	mov r1, r8
	and r0, r0, r1
	cmp r0, #192
	bne _0801977C
	ldr r0, _0801976C  @ =gUnknown_0807930C
	ldr r4, _08019770  @ =gUnknown_0807897C
	ldr r2, [r4, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #52
	ldrsh r3, [r4, r1]
	mov r1, #3
	bl sub_08018D0C
	ldr r0, _08019774  @ =gUnknown_080792C4
	mov r1, #7
	mov r2, r8
	and r1, r1, r2
	add r1, r1, #21
	ldr r2, [r4, #48]
	add r2, r2, #26
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r3, [r4, #52]
	add r3, r3, #26
	lsl r3, r3, #16
	asr r3, r3, #16
	bl sub_08018D0C
	ldr r0, _08019778  @ =gUnknown_080794D4
	mov r3, #48
	ldrsh r2, [r4, r3]
	ldr r3, [r4, #52]
	add r3, r3, #20
	lsl r3, r3, #16
	asr r3, r3, #16
	b _08019942
	.byte 0x00
	.byte 0x00
_08019768:
	.4byte gLevelSelectMode
_0801976C:
	.4byte gUnknown_0807930C
_08019770:
	.4byte gUnknown_0807897C
_08019774:
	.4byte gUnknown_080792C4
_08019778:
	.4byte gUnknown_080794D4
_0801977C:
	ldr r0, _080197C4  @ =gUnknown_0807930C
	ldr r4, _080197C8  @ =gUnknown_0807897C
	ldr r2, [r4, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #52
	ldrsh r3, [r4, r1]
	mov r1, #0
	bl sub_08018D0C
	mov r1, #7
	mov r2, r8
	and r1, r1, r2
	cmp r1, #0
	bne _0801979E
	b _08019ADE
_0801979E:
	ldr r0, _080197CC  @ =gUnknown_080792C4
	ldr r2, [r4, #48]
	add r2, r2, #26
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r3, [r4, #52]
	add r3, r3, #26
	lsl r3, r3, #16
	asr r3, r3, #16
	bl sub_08018D0C
	ldr r0, _080197D0  @ =gUnknown_080794D4
	mov r3, #48
	ldrsh r2, [r4, r3]
	ldr r3, [r4, #52]
	add r3, r3, #20
	lsl r3, r3, #16
	asr r3, r3, #16
	b _08019942
_080197C4:
	.4byte gUnknown_0807930C
_080197C8:
	.4byte gUnknown_0807897C
_080197CC:
	.4byte gUnknown_080792C4
_080197D0:
	.4byte gUnknown_080794D4
_080197D4:
	mov r0, #192
	mov r4, r8
	and r0, r0, r4
	cmp r0, #192
	bne _08019834
	ldr r0, _08019824  @ =gUnknown_0807930C
	ldr r4, _08019828  @ =gUnknown_0807897C
	ldr r2, [r4, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #52
	ldrsh r3, [r4, r1]
	mov r1, #4
	bl sub_08018D0C
	ldr r0, _0801982C  @ =gUnknown_080792C4
	mov r1, #7
	mov r2, r8
	and r1, r1, r2
	add r1, r1, #28
	ldr r2, [r4, #48]
	add r2, r2, #26
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r3, [r4, #52]
	add r3, r3, #26
	lsl r3, r3, #16
	asr r3, r3, #16
	bl sub_08018D0C
	ldr r0, _08019830  @ =gUnknown_080794D4
	mov r3, #48
	ldrsh r2, [r4, r3]
	ldr r3, [r4, #52]
	add r3, r3, #20
	lsl r3, r3, #16
	asr r3, r3, #16
	b _080198BC
	.byte 0x00
	.byte 0x00
_08019824:
	.4byte gUnknown_0807930C
_08019828:
	.4byte gUnknown_0807897C
_0801982C:
	.4byte gUnknown_080792C4
_08019830:
	.4byte gUnknown_080794D4
_08019834:
	ldr r0, _0801987C  @ =gUnknown_0807930C
	ldr r4, _08019880  @ =gUnknown_0807897C
	ldr r2, [r4, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #52
	ldrsh r3, [r4, r1]
	mov r1, #0
	bl sub_08018D0C
	mov r1, #7
	mov r2, r8
	and r1, r1, r2
	cmp r1, #0
	bne _08019856
	b _08019ADE
_08019856:
	ldr r0, _08019884  @ =gUnknown_080792C4
	ldr r2, [r4, #48]
	add r2, r2, #26
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r3, [r4, #52]
	add r3, r3, #26
	lsl r3, r3, #16
	asr r3, r3, #16
	bl sub_08018D0C
	ldr r0, _08019888  @ =gUnknown_080794D4
	mov r3, #48
	ldrsh r2, [r4, r3]
	ldr r3, [r4, #52]
	add r3, r3, #20
	lsl r3, r3, #16
	asr r3, r3, #16
	b _080198BC
_0801987C:
	.4byte gUnknown_0807930C
_08019880:
	.4byte gUnknown_0807897C
_08019884:
	.4byte gUnknown_080792C4
_08019888:
	.4byte gUnknown_080794D4
_0801988C:
	mov r4, r9
	cmp r4, #0
	beq _080198AC
	ldr r0, _080198A4  @ =gUnknown_0807930C
	ldr r1, _080198A8  @ =gUnknown_0807897C
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #52
	ldrsh r3, [r1, r4]
	b _08019942
_080198A4:
	.4byte gUnknown_0807930C
_080198A8:
	.4byte gUnknown_0807897C
_080198AC:
	ldr r0, _080198C4  @ =gUnknown_0807930C
	ldr r1, _080198C8  @ =gUnknown_0807897C
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #52
	ldrsh r3, [r1, r4]
_080198BC:
	mov r1, #1
	bl sub_08018D0C
	b _08019ADE
_080198C4:
	.4byte gUnknown_0807930C
_080198C8:
	.4byte gUnknown_0807897C
_080198CC:
	cmp r7, #7
	bne _08019954
	cmp r4, #0
	beq _08019930
	mov r0, r9
	cmp r0, #0
	beq _08019904
	mov r0, #192
	mov r1, r8
	and r0, r0, r1
	cmp r0, #192
	bne _08019932
	ldr r0, _080198FC  @ =gUnknown_08079324
	ldr r1, _08019900  @ =gUnknown_0807897C
	ldr r2, [r1, #56]
	add r2, r2, #2
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #60
	ldrsh r3, [r1, r4]
	mov r1, #3
	bl sub_08018D0C
	b _08019ADE
_080198FC:
	.4byte gUnknown_08079324
_08019900:
	.4byte gUnknown_0807897C
_08019904:
	mov r0, #192
	mov r1, r8
	and r0, r0, r1
	cmp r0, #192
	bne _08019932
	ldr r0, _08019928  @ =gUnknown_08079324
	ldr r1, _0801992C  @ =gUnknown_0807897C
	ldr r2, [r1, #56]
	add r2, r2, #2
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #60
	ldrsh r3, [r1, r4]
	mov r1, #4
	bl sub_08018D0C
	b _08019ADE
	.byte 0x00
	.byte 0x00
_08019928:
	.4byte gUnknown_08079324
_0801992C:
	.4byte gUnknown_0807897C
_08019930:
	mov r0, r9
_08019932:
	ldr r0, _0801994C  @ =gUnknown_08079324
	ldr r1, _08019950  @ =gUnknown_0807897C
	ldr r2, [r1, #56]
	add r2, r2, #2
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r4, #60
	ldrsh r3, [r1, r4]
_08019942:
	mov r1, #0
	bl sub_08018D0C
	b _08019ADE
	.byte 0x00
	.byte 0x00
_0801994C:
	.4byte gUnknown_08079324
_08019950:
	.4byte gUnknown_0807897C
_08019954:
	cmp r4, #0
	beq _08019A20
	mov r0, r9
	cmp r0, #0
	beq _080199C0
	mov r0, #192
	mov r2, r8
	and r0, r0, r2
	cmp r0, #192
	bne _080199B0
	ldr r6, _080199A8  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r3, #176
	lsl r3, r3, #21
	add r1, r1, r3
	lsr r1, r1, #24
	ldr r0, _080199AC  @ =gUnknown_0807897C
	lsl r4, r7, #3
	add r5, r4, r0
	mov r3, #0
	ldrsh r2, [r5, r3]
	add r0, r0, #4
	add r4, r4, r0
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	ldr r2, [r5]
	add r2, r2, #6
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #0
	ldrsh r3, [r4, r1]
	add r0, r6, #0
	mov r1, #21
	bl sub_08018D0C
	add r1, r7, #0
	add r1, r1, #22
	b _08019A60
	.byte 0x00
	.byte 0x00
_080199A8:
	.4byte gUnknown_080792C4
_080199AC:
	.4byte gUnknown_0807897C
_080199B0:
	ldr r6, _080199BC  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r2, #128
	lsl r2, r2, #17
	add r1, r1, r2
	b _08019A30
_080199BC:
	.4byte gUnknown_080792C4
_080199C0:
	mov r0, #192
	mov r2, r8
	and r0, r0, r2
	cmp r0, #192
	bne _08019A10
	ldr r6, _08019A08  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r3, #232
	lsl r3, r3, #21
	add r1, r1, r3
	lsr r1, r1, #24
	ldr r0, _08019A0C  @ =gUnknown_0807897C
	lsl r4, r7, #3
	add r5, r4, r0
	mov r3, #0
	ldrsh r2, [r5, r3]
	add r0, r0, #4
	add r4, r4, r0
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	ldr r2, [r5]
	add r2, r2, #6
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #0
	ldrsh r3, [r4, r1]
	add r0, r6, #0
	mov r1, #28
	bl sub_08018D0C
	add r1, r7, #0
	add r1, r1, #29
	b _08019A60
_08019A08:
	.4byte gUnknown_080792C4
_08019A0C:
	.4byte gUnknown_0807897C
_08019A10:
	ldr r6, _08019A1C  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r2, #128
	lsl r2, r2, #17
	add r1, r1, r2
	b _08019A30
_08019A1C:
	.4byte gUnknown_080792C4
_08019A20:
	mov r2, r9
	cmp r2, #0
	beq _08019A80
	ldr r6, _08019A78  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r3, #128
	lsl r3, r3, #17
	add r1, r1, r3
_08019A30:
	lsr r1, r1, #24
	ldr r0, _08019A7C  @ =gUnknown_0807897C
	lsl r4, r7, #3
	add r5, r4, r0
	mov r3, #0
	ldrsh r2, [r5, r3]
	add r0, r0, #4
	add r4, r4, r0
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	ldr r2, [r5]
	add r2, r2, #6
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #0
	ldrsh r3, [r4, r1]
	add r0, r6, #0
	mov r1, #0
	bl sub_08018D0C
	add r1, r7, #1
_08019A60:
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, [r5]
	add r2, r2, #12
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	b _08019AD2
_08019A78:
	.4byte gUnknown_080792C4
_08019A7C:
	.4byte gUnknown_0807897C
_08019A80:
	ldr r6, _08019AEC  @ =gUnknown_080792C4
	lsl r1, r1, #24
	mov r2, #128
	lsl r2, r2, #20
	add r1, r1, r2
	lsr r1, r1, #24
	ldr r0, _08019AF0  @ =gUnknown_0807897C
	lsl r4, r7, #3
	add r5, r4, r0
	mov r3, #0
	ldrsh r2, [r5, r3]
	add r0, r0, #4
	add r4, r4, r0
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
	ldr r2, [r5]
	add r2, r2, #6
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r1, #0
	ldrsh r3, [r4, r1]
	add r0, r6, #0
	mov r1, #7
	bl sub_08018D0C
	add r1, r7, #0
	add r1, r1, #8
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, [r5]
	add r2, r2, #12
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r6, #0
	bl sub_08018D0C
_08019AD2:
	mov r1, r10
	asr r0, r1, #24
	mov r1, r9
	mov r2, r8
	bl sub_08018F88
_08019ADE:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08019AEC:
	.4byte gUnknown_080792C4
_08019AF0:
	.4byte gUnknown_0807897C
	THUMB_FUNC_END sub_080196CC

	THUMB_FUNC_START sub_08019AF4
sub_08019AF4: @ 0x08019AF4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	blt _08019B10
	cmp r1, #5
	ble _08019B10
	b _08019CFA
_08019B10:
	lsl r3, r0, #24
	mov r5, #0
	mov r8, r3
	cmp r3, #0
	ble _08019BBC
	ldr r0, _08019B78  @ =gUnknown_080789BC
	mov r9, r0
	mov r1, #4
	add r1, r1, r9
	mov r10, r1
_08019B24:
	lsl r2, r5, #24
	ldr r0, _08019B7C  @ =0x0300007C
	ldr r1, [r0]
	lsl r0, r5, #2
	add r0, r0, r1
	ldrb r1, [r0, #1]
	ldrb r4, [r0]
	mov r6, #0
	asr r7, r2, #24
	cmp r2, r3
	bne _08019B48
	ldr r0, _08019B80  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08019B48
	mov r6, #1
_08019B48:
	cmp r4, #0
	beq _08019BAE
	cmp r6, #0
	beq _08019B88
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019BAE
	lsl r2, r7, #3
	mov r1, r9
	add r0, r2, r1
	ldr r1, [r0]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, r10
	ldr r2, [r2]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _08019B84  @ =gUnknown_08079354
	bl sub_08018E38
	b _08019BAE
_08019B78:
	.4byte gUnknown_080789BC
_08019B7C:
	.4byte 0x0300007C
_08019B80:
	.4byte gLevelSelectMode
_08019B84:
	.4byte gUnknown_08079354
_08019B88:
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019BAE
	lsl r2, r7, #3
	mov r1, r9
	add r0, r2, r1
	ldr r1, [r0]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, r10
	ldr r2, [r2]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _08019C14  @ =gUnknown_0807936C
	bl sub_08018EE0
_08019BAE:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r3, r8
	asr r0, r3, #24
	cmp r5, r0
	blt _08019B24
_08019BBC:
	lsl r2, r5, #24
	ldr r0, _08019C18  @ =0x0300007C
	ldr r1, [r0]
	lsl r0, r5, #2
	add r0, r0, r1
	ldrb r1, [r0, #1]
	ldrb r4, [r0]
	mov r6, #0
	asr r3, r2, #24
	cmp r2, r8
	bne _08019BE0
	ldr r0, _08019C1C  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08019BE0
	mov r6, #1
_08019BE0:
	cmp r4, #0
	beq _08019C50
	cmp r6, #0
	beq _08019C28
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019C50
	ldr r0, _08019C20  @ =gUnknown_08079354
	ldr r2, _08019C24  @ =gUnknown_080789BC
	lsl r3, r3, #3
	add r1, r3, r2
	ldr r1, [r1]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, #4
	add r3, r3, r2
	ldr r2, [r3]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018E38
	b _08019C50
	.byte 0x00
	.byte 0x00
_08019C14:
	.4byte gUnknown_0807936C
_08019C18:
	.4byte 0x0300007C
_08019C1C:
	.4byte gLevelSelectMode
_08019C20:
	.4byte gUnknown_08079354
_08019C24:
	.4byte gUnknown_080789BC
_08019C28:
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019C50
	ldr r0, _08019CB8  @ =gUnknown_0807936C
	ldr r2, _08019CBC  @ =gUnknown_080789BC
	lsl r3, r3, #3
	add r1, r3, r2
	ldr r1, [r1]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, #4
	add r3, r3, r2
	ldr r2, [r3]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	bl sub_08018EE0
_08019C50:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #6
	bhi _08019CFA
	mov r0, r8
	asr r0, r0, #24
	mov r8, r0
	ldr r6, _08019CBC  @ =gUnknown_080789BC
	add r7, r6, #4
_08019C64:
	lsl r2, r5, #24
	ldr r0, _08019CC0  @ =0x0300007C
	ldr r1, [r0]
	lsl r0, r5, #2
	add r0, r0, r1
	asr r2, r2, #24
	ldrb r1, [r0, #1]
	ldrb r3, [r0]
	mov r4, #0
	cmp r2, r8
	bne _08019C88
	ldr r0, _08019CC4  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08019C88
	mov r4, #1
_08019C88:
	cmp r3, #0
	beq _08019CF0
	cmp r4, #0
	beq _08019CCC
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019CF0
	lsl r2, r2, #3
	add r0, r2, r6
	ldr r1, [r0]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, r7
	ldr r2, [r2]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _08019CC8  @ =gUnknown_08079354
	bl sub_08018E38
	b _08019CF0
	.byte 0x00
	.byte 0x00
_08019CB8:
	.4byte gUnknown_0807936C
_08019CBC:
	.4byte gUnknown_080789BC
_08019CC0:
	.4byte 0x0300007C
_08019CC4:
	.4byte gLevelSelectMode
_08019CC8:
	.4byte gUnknown_08079354
_08019CCC:
	mov r0, #192
	and r1, r1, r0
	cmp r1, #192
	bne _08019CF0
	lsl r2, r2, #3
	add r0, r2, r6
	ldr r1, [r0]
	add r1, r1, #34
	lsl r1, r1, #16
	asr r1, r1, #16
	add r2, r2, r7
	ldr r2, [r2]
	sub r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _08019D08  @ =gUnknown_0807936C
	bl sub_08018EE0
_08019CF0:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #6
	bls _08019C64
_08019CFA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08019D08:
	.4byte gUnknown_0807936C
	THUMB_FUNC_END sub_08019AF4

	THUMB_FUNC_START sub_08019D0C
sub_08019D0C: @ 0x08019D0C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r4, [sp, #36]
	lsl r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r8, r3
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r3, #0
	lsr r5, r0, #24
	lsl r2, r2, #24
	cmp r0, r2
	bne _08019D42
	ldr r0, _08019D70  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08019D42
	mov r3, #1
_08019D42:
	add r7, r3, #0
	lsl r0, r5, #24
	asr r6, r0, #24
	mov r9, r0
	cmp r6, #6
	bne _08019E38
	cmp r4, #0
	beq _08019DEC
	cmp r7, #0
	beq _08019D9C
	mov r0, #192
	mov r1, r8
	and r0, r0, r1
	cmp r0, #192
	bne _08019D7C
	ldr r0, _08019D74  @ =gUnknown_0807933C
	ldr r1, _08019D78  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	b _08019DB4
	.byte 0x00
	.byte 0x00
_08019D70:
	.4byte gLevelSelectMode
_08019D74:
	.4byte gUnknown_0807933C
_08019D78:
	.4byte gUnknown_080789BC
_08019D7C:
	ldr r0, _08019D90  @ =gUnknown_0807933C
	ldr r1, _08019D94  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019D98  @ =gUnknown_0807897C
	mov r5, #52
	ldrsh r3, [r1, r5]
	b _08019E22
_08019D90:
	.4byte gUnknown_0807933C
_08019D94:
	.4byte gUnknown_080789BC
_08019D98:
	.4byte gUnknown_0807897C
_08019D9C:
	mov r0, #192
	mov r6, r8
	and r0, r0, r6
	cmp r0, #192
	bne _08019DCC
	ldr r0, _08019DC0  @ =gUnknown_0807933C
	ldr r1, _08019DC4  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019DC8  @ =gUnknown_0807897C
_08019DB4:
	mov r4, #52
	ldrsh r3, [r1, r4]
	mov r1, #3
	bl sub_08018D0C
	b _08019F6E
_08019DC0:
	.4byte gUnknown_0807933C
_08019DC4:
	.4byte gUnknown_080789BC
_08019DC8:
	.4byte gUnknown_0807897C
_08019DCC:
	ldr r0, _08019DE0  @ =gUnknown_0807933C
	ldr r1, _08019DE4  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019DE8  @ =gUnknown_0807897C
	mov r5, #52
	ldrsh r3, [r1, r5]
	b _08019E22
_08019DE0:
	.4byte gUnknown_0807933C
_08019DE4:
	.4byte gUnknown_080789BC
_08019DE8:
	.4byte gUnknown_0807897C
_08019DEC:
	cmp r7, #0
	beq _08019E10
	ldr r0, _08019E04  @ =gUnknown_0807933C
	ldr r1, _08019E08  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019E0C  @ =gUnknown_0807897C
	mov r6, #52
	ldrsh r3, [r1, r6]
	b _08019E22
_08019E04:
	.4byte gUnknown_0807933C
_08019E08:
	.4byte gUnknown_080789BC
_08019E0C:
	.4byte gUnknown_0807897C
_08019E10:
	ldr r0, _08019E2C  @ =gUnknown_0807933C
	ldr r1, _08019E30  @ =gUnknown_080789BC
	ldr r2, [r1, #48]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, _08019E34  @ =gUnknown_0807897C
	mov r4, #52
	ldrsh r3, [r1, r4]
_08019E22:
	mov r1, #0
	bl sub_08018D0C
	b _08019F6E
	.byte 0x00
	.byte 0x00
_08019E2C:
	.4byte gUnknown_0807933C
_08019E30:
	.4byte gUnknown_080789BC
_08019E34:
	.4byte gUnknown_0807897C
_08019E38:
	cmp r4, #0
	beq _08019EE0
	cmp r7, #0
	beq _08019E90
	mov r0, #192
	mov r5, r8
	and r0, r0, r5
	cmp r0, #192
	bne _08019EE4
	ldr r0, _08019E84  @ =gUnknown_080792DC
	lsl r1, r1, #24
	mov r2, #144
	lsl r2, r2, #21
	add r1, r1, r2
	lsr r1, r1, #24
	ldr r3, _08019E88  @ =gUnknown_080789BC
	lsl r4, r6, #3
	add r5, r4, r3
	str r5, [sp]
	mov r2, #0
	ldrsh r5, [r5, r2]
	mov r12, r5
	add r3, r3, #4
	add r4, r4, r3
	mov r5, #0
	ldrsh r3, [r4, r5]
	mov r2, r12
	bl sub_08018D0C
	ldr r0, _08019E8C  @ =gUnknown_080792F4
	add r1, r6, #0
	add r1, r1, #18
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r6, [sp]
	ldr r2, [r6]
	b _08019F04
	.byte 0x00
	.byte 0x00
_08019E84:
	.4byte gUnknown_080792DC
_08019E88:
	.4byte gUnknown_080789BC
_08019E8C:
	.4byte gUnknown_080792F4
_08019E90:
	mov r0, #192
	mov r2, r8
	and r0, r0, r2
	cmp r0, #192
	bne _08019EE4
	ldr r0, _08019ED4  @ =gUnknown_080792DC
	lsl r1, r1, #24
	mov r3, #192
	lsl r3, r3, #21
	add r1, r1, r3
	lsr r1, r1, #24
	ldr r3, _08019ED8  @ =gUnknown_080789BC
	lsl r4, r6, #3
	add r5, r4, r3
	str r5, [sp]
	mov r2, #0
	ldrsh r5, [r5, r2]
	mov r10, r5
	add r3, r3, #4
	add r4, r4, r3
	mov r5, #0
	ldrsh r3, [r4, r5]
	mov r2, r10
	bl sub_08018D0C
	ldr r0, _08019EDC  @ =gUnknown_080792F4
	add r1, r6, #0
	add r1, r1, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r6, [sp]
	ldr r2, [r6]
	b _08019F04
	.byte 0x00
	.byte 0x00
_08019ED4:
	.4byte gUnknown_080792DC
_08019ED8:
	.4byte gUnknown_080789BC
_08019EDC:
	.4byte gUnknown_080792F4
_08019EE0:
	cmp r7, #0
	beq _08019F20
_08019EE4:
	ldr r0, _08019F14  @ =gUnknown_080792DC
	ldr r3, _08019F18  @ =gUnknown_080789BC
	lsl r4, r6, #3
	add r5, r4, r3
	mov r6, #0
	ldrsh r2, [r5, r6]
	add r3, r3, #4
	add r4, r4, r3
	mov r6, #0
	ldrsh r3, [r4, r6]
	bl sub_08018D0C
	ldr r0, _08019F1C  @ =gUnknown_080792F4
	mov r2, r9
	lsr r1, r2, #24
	ldr r2, [r5]
_08019F04:
	add r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r5, #0
	ldrsh r3, [r4, r5]
	bl sub_08018D0C
	b _08019F62
_08019F14:
	.4byte gUnknown_080792DC
_08019F18:
	.4byte gUnknown_080789BC
_08019F1C:
	.4byte gUnknown_080792F4
_08019F20:
	ldr r0, _08019F80  @ =gUnknown_080792DC
	lsl r1, r1, #24
	mov r2, #192
	lsl r2, r2, #19
	add r1, r1, r2
	lsr r1, r1, #24
	ldr r3, _08019F84  @ =gUnknown_080789BC
	lsl r4, r6, #3
	add r5, r4, r3
	str r5, [sp]
	mov r2, #0
	ldrsh r5, [r5, r2]
	mov r10, r5
	add r3, r3, #4
	add r4, r4, r3
	mov r5, #0
	ldrsh r3, [r4, r5]
	mov r2, r10
	bl sub_08018D0C
	ldr r0, _08019F88  @ =gUnknown_080792F4
	add r1, r6, #6
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r6, [sp]
	ldr r2, [r6]
	add r2, r2, #8
	lsl r2, r2, #16
	asr r2, r2, #16
	mov r5, #0
	ldrsh r3, [r4, r5]
	bl sub_08018D0C
_08019F62:
	mov r6, r9
	asr r0, r6, #24
	add r1, r7, #0
	mov r2, r8
	bl sub_08019234
_08019F6E:
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
_08019F80:
	.4byte gUnknown_080792DC
_08019F84:
	.4byte gUnknown_080789BC
_08019F88:
	.4byte gUnknown_080792F4
	THUMB_FUNC_END sub_08019D0C

	THUMB_FUNC_START sub_08019F8C
sub_08019F8C: @ 0x08019F8C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r2, r0, #24
	lsl r1, r1, #24
	asr r0, r1, #24
	cmp r0, #5
	ble _08019FA6
	b _0801A2A8
_08019FA6:
	lsl r2, r2, #24
	mov r6, #0
	mov r9, r1
	str r2, [sp, #4]
	cmp r2, #0
	ble _0801A042
	add r5, r0, #0
	ldr r7, _0801A004  @ =0x0300007C
	add r0, r5, #1
	lsl r0, r0, #24
	mov r8, r0
_08019FBC:
	lsl r0, r6, #24
	asr r0, r0, #24
	asr r2, r2, #24
	ldr r1, [r7]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r5, #0
	bl sub_080196CC
	ldr r0, [r7]
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A010
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	ldr r0, _0801A008  @ =gUnknown_0807915C
	add r0, r4, r0
	mov r2, r8
	asr r1, r2, #24
	bl sub_080185EC
	ldr r0, _0801A00C  @ =gLevelSelectLevelArtSpriteLayout
	add r4, r4, r0
	lsl r1, r5, #3
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080186B0
	b _0801A034
_0801A004:
	.4byte 0x0300007C
_0801A008:
	.4byte gUnknown_0807915C
_0801A00C:
	.4byte gLevelSelectLevelArtSpriteLayout
_0801A010:
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	ldr r0, _0801A098  @ =gUnknown_0807915C
	add r0, r4, r0
	mov r1, #0
	bl sub_080185EC
	ldr r0, _0801A09C  @ =gLevelSelectLevelArtSpriteLayout
	add r4, r4, r0
	lsl r1, r5, #3
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	mov r2, #14
	bl sub_080187C0
_0801A034:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r2, [sp, #4]
	asr r0, r2, #24
	cmp r6, r0
	blt _08019FBC
_0801A042:
	lsl r0, r6, #24
	asr r0, r0, #24
	mov r3, r9
	asr r7, r3, #24
	ldr r1, [sp, #4]
	asr r1, r1, #24
	mov r8, r1
	ldr r5, _0801A0A0  @ =0x0300007C
	ldr r1, [r5]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r7, #0
	mov r2, r8
	bl sub_080196CC
	ldr r0, [r5]
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A12C
	ldr r0, _0801A0A4  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801A0D8
	cmp r6, #6
	bhi _0801A0AC
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A0A8  @ =gUnknown_08078FF4
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018528
	b _0801A0C0
	.byte 0x00
	.byte 0x00
_0801A098:
	.4byte gUnknown_0807915C
_0801A09C:
	.4byte gLevelSelectLevelArtSpriteLayout
_0801A0A0:
	.4byte 0x0300007C
_0801A0A4:
	.4byte gLevelSelectMode
_0801A0A8:
	.4byte gUnknown_08078FF4
_0801A0AC:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A0D0  @ =gUnknown_08078FF4
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
_0801A0C0:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A0D4  @ =gLevelSelectLevelArtSpriteLayout
	add r0, r0, r1
	mov r2, r9
	asr r1, r2, #21
	b _0801A118
	.byte 0x00
	.byte 0x00
_0801A0D0:
	.4byte gUnknown_08078FF4
_0801A0D4:
	.4byte gLevelSelectLevelArtSpriteLayout
_0801A0D8:
	cmp r6, #6
	bhi _0801A0F8
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A0F4  @ =gUnknown_0807915C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080185EC
	b _0801A10C
	.byte 0x00
	.byte 0x00
_0801A0F4:
	.4byte gUnknown_0807915C
_0801A0F8:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A124  @ =gUnknown_0807915C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
_0801A10C:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A128  @ =gLevelSelectLevelArtSpriteLayout
	add r0, r0, r1
	mov r3, r9
	asr r1, r3, #21
_0801A118:
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	b _0801A1C0
_0801A124:
	.4byte gUnknown_0807915C
_0801A128:
	.4byte gLevelSelectLevelArtSpriteLayout
_0801A12C:
	cmp r8, r6
	bne _0801A17C
	ldr r0, _0801A158  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801A17C
	cmp r6, #6
	bhi _0801A160
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A15C  @ =gUnknown_0807915C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080185EC
	b _0801A1A8
	.byte 0x00
	.byte 0x00
_0801A158:
	.4byte gLevelSelectMode
_0801A15C:
	.4byte gUnknown_0807915C
_0801A160:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A178  @ =gUnknown_0807915C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
	b _0801A1A8
	.byte 0x00
	.byte 0x00
_0801A178:
	.4byte gUnknown_0807915C
_0801A17C:
	cmp r6, #6
	bhi _0801A198
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A194  @ =gUnknown_0807915C
	add r0, r0, r1
	mov r1, #0
	bl sub_080185EC
	b _0801A1A8
	.byte 0x00
	.byte 0x00
_0801A194:
	.4byte gUnknown_0807915C
_0801A198:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A214  @ =gUnknown_0807915C
	add r0, r0, r1
	mov r1, #0
	bl sub_08018418
_0801A1A8:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A218  @ =gLevelSelectLevelArtSpriteLayout
	add r0, r0, r1
	mov r2, r9
	asr r1, r2, #21
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #13
	bl sub_080187C0
_0801A1C0:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #7
	bhi _0801A2A8
	ldr r3, _0801A214  @ =gUnknown_0807915C
	mov r8, r3
	mov r0, r9
	asr r0, r0, #24
	mov r10, r0
	mov r5, #128
	lsl r5, r5, #17
	add r5, r5, r9
	lsl r7, r0, #3
	ldr r1, _0801A218  @ =gLevelSelectLevelArtSpriteLayout
	mov r9, r1
_0801A1E0:
	lsl r0, r6, #24
	asr r0, r0, #24
	ldr r2, _0801A21C  @ =0x0300007C
	ldr r1, [r2]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	mov r12, r3
	ldrb r1, [r1]
	str r1, [sp]
	mov r1, r10
	ldr r3, [sp, #4]
	asr r2, r3, #24
	mov r3, r12
	bl sub_080196CC
	ldr r1, _0801A21C  @ =0x0300007C
	ldr r0, [r1]
	add r4, r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0801A220
	cmp r6, #6
	bls _0801A22A
	b _0801A23A
	.byte 0x00
	.byte 0x00
_0801A214:
	.4byte gUnknown_0807915C
_0801A218:
	.4byte gLevelSelectLevelArtSpriteLayout
_0801A21C:
	.4byte 0x0300007C
_0801A220:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A25A
	cmp r6, #6
	bhi _0801A23A
_0801A22A:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r8
	asr r1, r5, #24
	bl sub_080185EC
	b _0801A248
_0801A23A:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r8
	asr r1, r5, #24
	bl sub_08018418
_0801A248:
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r9
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	b _0801A29E
_0801A25A:
	cmp r6, #6
	bhi _0801A280
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	mov r2, r9
	add r0, r4, r2
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #14
	bl sub_080187C0
	add r4, r4, r8
	add r0, r4, #0
	mov r1, #0
	bl sub_080185EC
	b _0801A29E
_0801A280:
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	mov r3, r9
	add r0, r4, r3
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	add r4, r4, r8
	add r0, r4, #0
	asr r1, r5, #24
	bl sub_08018418
_0801A29E:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #7
	bls _0801A1E0
_0801A2A8:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019F8C

	THUMB_FUNC_START sub_0801A2B8
sub_0801A2B8: @ 0x0801A2B8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r3, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	bge _0801A2D6
	mov r3, #0
	b _0801A2DC
_0801A2D6:
	cmp r1, #5
	ble _0801A2DC
	b _0801A5EC
_0801A2DC:
	lsl r2, r0, #24
	mov r6, #0
	lsl r3, r3, #24
	mov r9, r3
	str r2, [sp, #4]
	cmp r2, #0
	ble _0801A380
	asr r5, r3, #24
	ldr r0, _0801A344  @ =0x0300007C
	mov r8, r0
	lsl r0, r5, #3
	sub r7, r0, r5
	add r0, r5, #1
	lsl r0, r0, #24
	mov r10, r0
_0801A2FA:
	lsl r0, r6, #24
	asr r0, r0, #24
	asr r2, r2, #24
	mov r3, r8
	ldr r1, [r3]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r5, #0
	bl sub_08019D0C
	mov r1, r8
	ldr r0, [r1]
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A350
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	ldr r0, _0801A348  @ =gUnknown_0807921C
	add r0, r4, r0
	mov r2, r10
	asr r1, r2, #24
	bl sub_080185EC
	ldr r0, _0801A34C  @ =gUnknown_08078F4C
	add r4, r4, r0
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080186B0
	b _0801A372
_0801A344:
	.4byte 0x0300007C
_0801A348:
	.4byte gUnknown_0807921C
_0801A34C:
	.4byte gUnknown_08078F4C
_0801A350:
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	ldr r0, _0801A3D4  @ =gUnknown_0807921C
	add r0, r4, r0
	mov r1, #0
	bl sub_080185EC
	ldr r0, _0801A3D8  @ =gUnknown_08078F4C
	add r4, r4, r0
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	mov r2, #14
	bl sub_080187C0
_0801A372:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r2, [sp, #4]
	asr r0, r2, #24
	cmp r6, r0
	blt _0801A2FA
_0801A380:
	lsl r0, r6, #24
	asr r0, r0, #24
	mov r3, r9
	asr r7, r3, #24
	ldr r1, [sp, #4]
	asr r1, r1, #24
	mov r8, r1
	ldr r5, _0801A3DC  @ =0x0300007C
	ldr r1, [r5]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r3, [r1, #1]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r7, #0
	mov r2, r8
	bl sub_08019D0C
	ldr r0, [r5]
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A46C
	ldr r0, _0801A3E0  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _0801A414
	cmp r6, #5
	bhi _0801A3E8
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A3E4  @ =gUnknown_080790B4
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018528
	b _0801A3FC
_0801A3D4:
	.4byte gUnknown_0807921C
_0801A3D8:
	.4byte gUnknown_08078F4C
_0801A3DC:
	.4byte 0x0300007C
_0801A3E0:
	.4byte gLevelSelectMode
_0801A3E4:
	.4byte gUnknown_080790B4
_0801A3E8:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A40C  @ =gUnknown_080790B4
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
_0801A3FC:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A410  @ =gUnknown_08078F4C
	add r0, r0, r1
	mov r3, r9
	asr r2, r3, #24
	b _0801A454
	.byte 0x00
	.byte 0x00
_0801A40C:
	.4byte gUnknown_080790B4
_0801A410:
	.4byte gUnknown_08078F4C
_0801A414:
	cmp r6, #5
	bhi _0801A434
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A430  @ =gUnknown_0807921C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080185EC
	b _0801A448
	.byte 0x00
	.byte 0x00
_0801A430:
	.4byte gUnknown_0807921C
_0801A434:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A464  @ =gUnknown_0807921C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
_0801A448:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A468  @ =gUnknown_08078F4C
	add r0, r0, r1
	mov r1, r9
	asr r2, r1, #24
_0801A454:
	lsl r1, r2, #3
	sub r1, r1, r2
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	b _0801A504
_0801A464:
	.4byte gUnknown_0807921C
_0801A468:
	.4byte gUnknown_08078F4C
_0801A46C:
	cmp r8, r6
	bne _0801A4BC
	ldr r0, _0801A498  @ =gLevelSelectMode
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _0801A4BC
	cmp r6, #5
	bhi _0801A4A0
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A49C  @ =gUnknown_0807921C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080185EC
	b _0801A4E8
	.byte 0x00
	.byte 0x00
_0801A498:
	.4byte gLevelSelectMode
_0801A49C:
	.4byte gUnknown_0807921C
_0801A4A0:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A4B8  @ =gUnknown_0807921C
	add r0, r0, r1
	add r1, r7, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08018418
	b _0801A4E8
	.byte 0x00
	.byte 0x00
_0801A4B8:
	.4byte gUnknown_0807921C
_0801A4BC:
	cmp r6, #5
	bhi _0801A4D8
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A4D4  @ =gUnknown_0807921C
	add r0, r0, r1
	mov r1, #0
	bl sub_080185EC
	b _0801A4E8
	.byte 0x00
	.byte 0x00
_0801A4D4:
	.4byte gUnknown_0807921C
_0801A4D8:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A558  @ =gUnknown_0807921C
	add r0, r0, r1
	mov r1, #0
	bl sub_08018418
_0801A4E8:
	add r0, r4, r6
	lsl r0, r0, #3
	ldr r1, _0801A55C  @ =gUnknown_08078F4C
	add r0, r0, r1
	mov r3, r9
	asr r2, r3, #24
	lsl r1, r2, #3
	sub r1, r1, r2
	add r1, r6, r1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #14
	bl sub_080187C0
_0801A504:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #6
	bhi _0801A5EC
	ldr r0, _0801A558  @ =gUnknown_0807921C
	mov r8, r0
	mov r1, r9
	asr r1, r1, #24
	mov r10, r1
	mov r5, #128
	lsl r5, r5, #17
	add r5, r5, r9
	ldr r2, _0801A55C  @ =gUnknown_08078F4C
	mov r9, r2
	lsl r0, r1, #3
	sub r7, r0, r1
_0801A526:
	lsl r0, r6, #24
	asr r0, r0, #24
	ldr r3, _0801A560  @ =0x0300007C
	ldr r1, [r3]
	lsl r4, r6, #2
	add r1, r4, r1
	ldrb r2, [r1, #1]
	mov r12, r2
	ldrb r1, [r1]
	str r1, [sp]
	mov r1, r10
	ldr r3, [sp, #4]
	asr r2, r3, #24
	mov r3, r12
	bl sub_08019D0C
	ldr r1, _0801A560  @ =0x0300007C
	ldr r0, [r1]
	add r4, r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0801A564
	cmp r6, #5
	bls _0801A56E
	b _0801A57E
_0801A558:
	.4byte gUnknown_0807921C
_0801A55C:
	.4byte gUnknown_08078F4C
_0801A560:
	.4byte 0x0300007C
_0801A564:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801A59E
	cmp r6, #5
	bhi _0801A57E
_0801A56E:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r8
	asr r1, r5, #24
	bl sub_080185EC
	b _0801A58C
_0801A57E:
	lsl r4, r6, #1
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r8
	asr r1, r5, #24
	bl sub_08018418
_0801A58C:
	add r0, r4, r6
	lsl r0, r0, #3
	add r0, r0, r9
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080186B0
	b _0801A5E2
_0801A59E:
	cmp r6, #5
	bhi _0801A5C4
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	mov r2, r8
	add r0, r4, r2
	mov r1, #0
	bl sub_080185EC
	add r4, r4, r9
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	mov r2, #14
	bl sub_080187C0
	b _0801A5E2
_0801A5C4:
	lsl r4, r6, #1
	add r4, r4, r6
	lsl r4, r4, #3
	mov r3, r8
	add r0, r4, r3
	asr r1, r5, #24
	bl sub_08018418
	add r4, r4, r9
	add r1, r6, r7
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080186B0
_0801A5E2:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #6
	bls _0801A526
_0801A5EC:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A2B8

	THUMB_FUNC_START sub_0801A5FC
sub_0801A5FC: @ 0x0801A5FC
	push {r4,lr}
	sub sp, sp, #4
	ldr r0, _0801A640  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bgt _0801A690
	mov r4, #0
_0801A60E:
	cmp r4, #7
	bhi _0801A648
	ldr r0, _0801A640  @ =gLevelSelectWorldCursor
	ldrb r1, [r0]
	mov r0, #0
	add r2, r4, #0
	mov r3, sp
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801A648
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801A644  @ =gUnknown_08078D24
	add r0, r0, r1
	mov r1, #11
	bl sub_08018418
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	b _0801A60E
	.byte 0x00
	.byte 0x00
_0801A640:
	.4byte gLevelSelectWorldCursor
_0801A644:
	.4byte gUnknown_08078D24
_0801A648:
	cmp r4, #3
	bls _0801A690
	cmp r4, #7
	bne _0801A680
	ldr r0, _0801A674  @ =gLevelType
	ldrb r0, [r0]
	ldr r1, _0801A678  @ =gLevelSelectWorldCursor
	ldrb r1, [r1]
	mov r3, sp
	add r3, r3, #1
	mov r2, #7
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801A690
	ldr r0, _0801A67C  @ =gUnknown_08078D24
	add r0, r0, #168
	mov r1, #11
	bl sub_08018418
	b _0801A690
_0801A674:
	.4byte gLevelType
_0801A678:
	.4byte gLevelSelectWorldCursor
_0801A67C:
	.4byte gUnknown_08078D24
_0801A680:
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801A698  @ =gUnknown_08078D24
	add r0, r0, r1
	mov r1, #11
	bl sub_08018418
_0801A690:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0801A698:
	.4byte gUnknown_08078D24
	THUMB_FUNC_END sub_0801A5FC

	THUMB_FUNC_START sub_0801A69C
sub_0801A69C: @ 0x0801A69C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, _0801A798  @ =REG_DMA3SAD
	ldr r0, _0801A79C  @ =0x0300008B
	mov r9, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #10
	ldr r1, _0801A7A0  @ =gUnknown_085E3820
	add r0, r0, r1
	str r0, [r2]
	ldr r1, _0801A7A4  @ =gUnknown_0300192C
	mov r12, r1
	ldrh r0, [r1]
	ldr r1, _0801A7A8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0801A7AC  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801A7B0  @ =gUnknown_085E3818
	str r0, [r2]
	ldr r7, _0801A7B4  @ =0x03000094
	mov r10, r7
	mov r0, r10
	ldr r4, [r0]
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	ldr r5, _0801A7B8  @ =gOamData
	add r0, r0, r5
	str r0, [r2, #4]
	ldr r0, _0801A7BC  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r6, _0801A7C0  @ =gUnknown_03001930
	lsr r1, r1, #22
	ldrh r7, [r6]
	add r1, r1, r7
	ldr r7, _0801A7C4  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _0801A7C8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r3, [r4, #2]
	lsl r3, r3, #3
	add r3, r3, r5
	ldr r0, _0801A7CC  @ =gUnknown_085E3590
	mov r8, r0
	mov r2, r9
	mov r1, #0
	ldrsb r1, [r2, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	mov r1, #3
	ldrsb r1, [r0, r1]
	add r1, r1, #172
	ldr r7, _0801A7D0  @ =0x000001FF
	add r0, r7, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0801A7D4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r4, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r0, r9
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	ldrb r0, [r0, #3]
	add r0, r0, #48
	strb r0, [r2]
	mov r1, r10
	ldr r0, [r1]
	ldrh r2, [r0, #2]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #32
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	mov r7, r12
	ldrh r7, [r7]
	add r0, r0, r7
	mov r1, r12
	strh r0, [r1]
	mov r2, r10
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	add r0, r0, #1
	strh r0, [r1, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801A798:
	.4byte REG_DMA3SAD
_0801A79C:
	.4byte 0x0300008B
_0801A7A0:
	.4byte gUnknown_085E3820
_0801A7A4:
	.4byte gUnknown_0300192C
_0801A7A8:
	.4byte OBJ_VRAM0
_0801A7AC:
	.4byte 0x84000100
_0801A7B0:
	.4byte gUnknown_085E3818
_0801A7B4:
	.4byte 0x03000094
_0801A7B8:
	.4byte gOamData
_0801A7BC:
	.4byte 0x84000002
_0801A7C0:
	.4byte gUnknown_03001930
_0801A7C4:
	.4byte 0x000003FF
_0801A7C8:
	.4byte 0xFFFFFC00
_0801A7CC:
	.4byte gUnknown_085E3590
_0801A7D0:
	.4byte 0x000001FF
_0801A7D4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0801A69C

	THUMB_FUNC_START sub_0801A7D8
sub_0801A7D8: @ 0x0801A7D8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r7, _0801ABBC  @ =REG_DMA3SAD
	ldr r0, _0801ABC0  @ =gUnknown_085CD848
	str r0, [r7]
	ldr r3, _0801ABC4  @ =gUnknown_0300192C
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r2, _0801ABCC  @ =0x84000200
	str r2, [r7, #8]
	ldr r0, [r7, #8]
	ldr r4, _0801ABD0  @ =0x03000094
	ldr r6, [r4]
	ldr r0, _0801ABD4  @ =gUnknown_03001930
	mov r10, r0
	ldrh r1, [r0]
	mov r12, r1
	strh r1, [r6, #16]
	mov r4, r12
	add r4, r4, #64
	strh r4, [r0]
	ldrh r2, [r3]
	mov r9, r2
	mov r0, #128
	lsl r0, r0, #4
	mov r8, r0
	mov r2, r9
	add r2, r2, r8
	strh r2, [r3]
	ldr r0, _0801ABD8  @ =gUnknown_085CE074
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r0, _0801ABCC  @ =0x84000200
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #18]
	add r4, r4, #64
	mov r1, r10
	strh r4, [r1]
	add r2, r2, r8
	strh r2, [r3]
	ldr r5, _0801ABDC  @ =gUnknown_085C7A78
	ldr r0, _0801ABE0  @ =0x0300008A
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801ABE4  @ =gUnknown_085C7D08
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r0, _0801ABCC  @ =0x84000200
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #20]
	add r4, r4, #64
	mov r1, r10
	strh r4, [r1]
	add r2, r2, r8
	strh r2, [r3]
	ldr r2, _0801ABE8  @ =gUnknown_085E2870
	ldr r5, _0801ABEC  @ =0x03000088
	mov r1, #0
	ldrsb r1, [r5, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	ldr r1, _0801ABF0  @ =gUnknown_085E2B00
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r2, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r2
	str r0, [r7, #4]
	ldr r0, _0801ABF4  @ =0x84000040
	mov r8, r0
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #8]
	mov r4, r12
	add r4, r4, #200
	mov r1, r10
	strh r4, [r1]
	mov r0, #200
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r2, _0801ABF8  @ =gUnknown_085E2F00
	mov r1, #0
	ldrsb r1, [r5, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	ldr r1, _0801ABFC  @ =gUnknown_085E3190
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r2, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r2
	str r0, [r7, #4]
	mov r0, r8
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #10]
	add r4, r4, #8
	mov r1, r10
	strh r4, [r1]
	mov r0, #208
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r2, _0801AC00  @ =gUnknown_085E90D0
	mov r1, #0
	ldrsb r1, [r5, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0801AC04  @ =gUnknown_085E9360
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r2, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r2
	str r0, [r7, #4]
	ldr r0, _0801AC08  @ =0x84000100
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r6, #12]
	mov r1, r12
	add r1, r1, #240
	mov r4, r10
	strh r1, [r4]
	mov r0, #240
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r0, _0801AC0C  @ =gUnknown_085C2588
	str r0, [r7]
	ldrh r0, [r3]
	add r0, r0, r2
	str r0, [r7, #4]
	ldr r4, _0801AC10  @ =0x84000020
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	strh r1, [r6, #22]
	add r1, r1, #4
	mov r0, r10
	strh r1, [r0]
	mov r0, #244
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r0, _0801AC14  @ =gUnknown_085C2634
	str r0, [r7]
	ldrh r0, [r3]
	add r0, r0, r2
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	strh r1, [r6, #24]
	mov r5, r12
	add r5, r5, #248
	mov r1, r10
	strh r5, [r1]
	mov r0, #248
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r2, _0801AC18  @ =gUnknown_085E1F2C
	ldr r0, _0801AC1C  @ =0x03000085
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0801AC20  @ =gUnknown_085E200C
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r2, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r2
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	strh r5, [r6, #26]
	mov r1, r12
	add r1, r1, #252
	mov r0, r10
	strh r1, [r0]
	mov r0, #252
	lsl r0, r0, #5
	add r0, r0, r9
	strh r0, [r3]
	ldr r0, _0801AC24  @ =gUnknown_085E1C2C
	str r0, [r7]
	ldrh r0, [r3]
	add r0, r0, r2
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	strh r1, [r6, #28]
	mov r5, #128
	lsl r5, r5, #1
	add r5, r5, r12
	mov r1, r10
	strh r5, [r1]
	mov r2, #128
	lsl r2, r2, #6
	add r9, r9, r2
	mov r4, r9
	strh r4, [r3]
	ldr r0, _0801AC28  @ =0x03000086
	mov r12, r0
	ldrb r1, [r0]
	ldr r2, _0801AC2C  @ =gUnknown_080793B4
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r4, #132
	lsl r4, r4, #24
	mov r8, r4
	orr r0, r0, r4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r5, [r6, #30]
	ldrh r5, [r2, #6]
	mov r0, r10
	ldrh r0, [r0]
	add r5, r5, r0
	mov r1, r10
	strh r5, [r1]
	ldrh r0, [r2, #8]
	ldrh r2, [r3]
	add r0, r0, r2
	strh r0, [r3]
	ldr r0, _0801AC30  @ =0x03000087
	ldrb r1, [r0]
	ldr r2, _0801AC34  @ =gUnknown_08079414
	ldr r4, _0801ABD0  @ =0x03000094
	ldr r4, [r4]
	mov r9, r4
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r4, r8
	orr r0, r0, r4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r0, r9
	strh r5, [r0, #32]
	ldrh r5, [r2, #6]
	mov r1, r10
	ldrh r1, [r1]
	add r5, r5, r1
	mov r4, r10
	strh r5, [r4]
	ldrh r0, [r2, #8]
	ldrh r1, [r3]
	add r0, r0, r1
	strh r0, [r3]
	mov r2, r12
	ldrb r1, [r2]
	ldr r2, _0801AC38  @ =gUnknown_08079474
	ldr r4, _0801ABD0  @ =0x03000094
	ldr r4, [r4]
	mov r9, r4
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r4, r8
	orr r0, r0, r4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r0, r9
	strh r5, [r0, #34]
	ldrh r4, [r2, #6]
	mov r1, r10
	ldrh r1, [r1]
	add r4, r4, r1
	mov r0, r10
	strh r4, [r0]
	ldrh r0, [r2, #8]
	ldrh r1, [r3]
	add r0, r0, r1
	strh r0, [r3]
	ldr r2, _0801AC3C  @ =gUnknown_08079384
	ldr r0, _0801ABD0  @ =0x03000094
	ldr r5, [r0]
	ldr r0, [r2, #12]
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, r8
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r5, #36]
	ldrh r4, [r2, #6]
	mov r0, r10
	ldrh r0, [r0]
	add r4, r4, r0
	mov r1, r10
	strh r4, [r1]
	ldrh r0, [r2, #8]
	ldrh r2, [r3]
	add r0, r0, r2
	strh r0, [r3]
	ldr r2, _0801AC40  @ =gUnknown_080793E4
	ldr r0, _0801ABD0  @ =0x03000094
	ldr r5, [r0]
	ldr r0, [r2, #12]
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, r8
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r5, #38]
	ldrh r4, [r2, #6]
	mov r0, r10
	ldrh r0, [r0]
	add r4, r4, r0
	mov r1, r10
	strh r4, [r1]
	ldrh r0, [r2, #8]
	ldrh r2, [r3]
	add r0, r0, r2
	strh r0, [r3]
	ldr r2, _0801AC44  @ =gUnknown_08079444
	ldr r0, _0801ABD0  @ =0x03000094
	ldr r5, [r0]
	ldr r0, [r2, #12]
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	ldrh r0, [r3]
	ldr r1, _0801ABC8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, r8
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	strh r4, [r5, #40]
	ldrh r0, [r2, #6]
	mov r4, r10
	ldrh r4, [r4]
	add r0, r0, r4
	mov r1, r10
	strh r0, [r1]
	ldrh r0, [r2, #8]
	ldrh r2, [r3]
	add r0, r0, r2
	strh r0, [r3]
	ldr r0, _0801AC48  @ =gLevelSelectMode
	ldrb r1, [r0]
	sub r0, r1, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r3
	cmp r0, #1
	bls _0801AB7A
	cmp r1, #5
	beq _0801AB7A
	b _0801ACB4
_0801AB7A:
	mov r1, #0
	ldr r0, _0801AC4C  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0801AB8A
	mov r1, #1
_0801AB8A:
	str r1, [sp]
	mov r1, #0
	mov r8, r12
	mov r6, r10
_0801AB92:
	lsl r3, r1, #16
	asr r3, r3, #16
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r5, r3, #1
	add r2, r5, r3
	lsl r2, r2, #3
	ldr r4, _0801AC50  @ =gUnknown_08078C1C
	add r2, r2, r4
	ldr r4, _0801ABD0  @ =0x03000094
	ldr r0, [r4]
	add r5, r5, r0
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	b _0801AC54
	.byte 0x00
	.byte 0x00
_0801ABBC:
	.4byte REG_DMA3SAD
_0801ABC0:
	.4byte gUnknown_085CD848
_0801ABC4:
	.4byte gUnknown_0300192C
_0801ABC8:
	.4byte OBJ_VRAM0
_0801ABCC:
	.4byte 0x84000200
_0801ABD0:
	.4byte 0x03000094
_0801ABD4:
	.4byte gUnknown_03001930
_0801ABD8:
	.4byte gUnknown_085CE074
_0801ABDC:
	.4byte gUnknown_085C7A78
_0801ABE0:
	.4byte 0x0300008A
_0801ABE4:
	.4byte gUnknown_085C7D08
_0801ABE8:
	.4byte gUnknown_085E2870
_0801ABEC:
	.4byte 0x03000088
_0801ABF0:
	.4byte gUnknown_085E2B00
_0801ABF4:
	.4byte 0x84000040
_0801ABF8:
	.4byte gUnknown_085E2F00
_0801ABFC:
	.4byte gUnknown_085E3190
_0801AC00:
	.4byte gUnknown_085E90D0
_0801AC04:
	.4byte gUnknown_085E9360
_0801AC08:
	.4byte 0x84000100
_0801AC0C:
	.4byte gUnknown_085C2588
_0801AC10:
	.4byte 0x84000020
_0801AC14:
	.4byte gUnknown_085C2634
_0801AC18:
	.4byte gUnknown_085E1F2C
_0801AC1C:
	.4byte 0x03000085
_0801AC20:
	.4byte gUnknown_085E200C
_0801AC24:
	.4byte gUnknown_085E1C2C
_0801AC28:
	.4byte 0x03000086
_0801AC2C:
	.4byte gUnknown_080793B4
_0801AC30:
	.4byte 0x03000087
_0801AC34:
	.4byte gUnknown_08079414
_0801AC38:
	.4byte gUnknown_08079474
_0801AC3C:
	.4byte gUnknown_08079384
_0801AC40:
	.4byte gUnknown_080793E4
_0801AC44:
	.4byte gUnknown_08079444
_0801AC48:
	.4byte gLevelSelectMode
_0801AC4C:
	.4byte gLevelSelectWorldCursor
_0801AC50:
	.4byte gUnknown_08078C1C
_0801AC54:
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	mov r1, r8
	ldrh r0, [r1]
	ldr r4, _0801ACAC  @ =OBJ_VRAM0
	add r0, r0, r4
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	mov r9, r1
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r0, [r6]
	strh r0, [r5, #42]
	ldrh r0, [r2, #6]
	ldrh r4, [r6]
	add r0, r0, r4
	strh r0, [r6]
	ldrh r0, [r2, #8]
	mov r1, r8
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r8
	strh r0, [r2]
	add r3, r3, #1
	lsl r3, r3, #16
	lsr r1, r3, #16
	asr r3, r3, #16
	cmp r3, #6
	bgt _0801AC9E
	b _0801AB92
_0801AC9E:
	ldr r1, [sp]
	lsl r2, r1, #1
	add r2, r2, r1
	lsl r2, r2, #3
	ldr r3, _0801ACB0  @ =gUnknown_08078CF4
	b _0801AD44
	.byte 0x00
	.byte 0x00
_0801ACAC:
	.4byte OBJ_VRAM0
_0801ACB0:
	.4byte gUnknown_08078CF4
_0801ACB4:
	mov r1, #0
	ldr r0, _0801ADA4  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bne _0801ACC4
	mov r1, #1
_0801ACC4:
	str r1, [sp, #4]
	mov r1, #0
	mov r8, r12
	mov r6, r10
_0801ACCC:
	lsl r3, r1, #16
	asr r3, r3, #16
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r5, r3, #1
	add r2, r5, r3
	lsl r2, r2, #3
	ldr r4, _0801ADA8  @ =gUnknown_08078B74
	add r2, r2, r4
	ldr r4, _0801ADAC  @ =0x03000094
	ldr r0, [r4]
	add r5, r5, r0
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r7]
	mov r1, r8
	ldrh r0, [r1]
	ldr r4, _0801ADB0  @ =OBJ_VRAM0
	add r0, r0, r4
	str r0, [r7, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	mov r9, r1
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r0, [r6]
	strh r0, [r5, #42]
	ldrh r0, [r2, #6]
	ldrh r4, [r6]
	add r0, r0, r4
	strh r0, [r6]
	ldrh r0, [r2, #8]
	mov r1, r8
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r8
	strh r0, [r2]
	add r3, r3, #1
	lsl r3, r3, #16
	lsr r1, r3, #16
	asr r3, r3, #16
	cmp r3, #6
	ble _0801ACCC
	ldr r1, [sp, #4]
	lsl r2, r1, #1
	add r2, r2, r1
	lsl r2, r2, #3
	ldr r3, _0801ADB4  @ =gUnknown_08078CC4
_0801AD44:
	add r2, r2, r3
	ldr r4, _0801ADAC  @ =0x03000094
	ldr r5, [r4]
	ldr r3, _0801ADB8  @ =REG_DMA3SAD
	ldr r4, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r2, #4]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r3]
	mov r1, r12
	ldrh r0, [r1]
	ldr r4, _0801ADB0  @ =OBJ_VRAM0
	add r0, r0, r4
	str r0, [r3, #4]
	ldrh r0, [r2, #8]
	lsr r0, r0, #2
	mov r1, r9
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r3, r10
	ldrh r0, [r3]
	strh r0, [r5, #14]
	ldrh r0, [r2, #6]
	ldrh r4, [r3]
	add r0, r0, r4
	strh r0, [r3]
	ldrh r0, [r2, #8]
	mov r1, r12
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r12
	strh r0, [r2]
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801ADA4:
	.4byte gLevelSelectWorldCursor
_0801ADA8:
	.4byte gUnknown_08078B74
_0801ADAC:
	.4byte 0x03000094
_0801ADB0:
	.4byte OBJ_VRAM0
_0801ADB4:
	.4byte gUnknown_08078CC4
_0801ADB8:
	.4byte REG_DMA3SAD
	THUMB_FUNC_END sub_0801A7D8

	THUMB_FUNC_START level_select_loop
level_select_loop: @ 0x0801ADBC
	push {r4,r5,lr}
	sub sp, sp, #8
	mov r0, #160
	str r0, [sp]
	ldr r1, _0801AE08  @ =REG_DMA3SAD
	mov r0, sp
	str r0, [r1]
	ldr r0, _0801AE0C  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _0801AE10  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801AE14  @ =0x03000094
	ldr r3, [r0]
	ldr r2, _0801AE18  @ =gUnknown_03001930
	ldr r0, _0801AE1C  @ =gUnknown_0300192C
	mov r1, #0
	strh r1, [r0]
	strh r1, [r2]
	mov r0, #0
	strh r0, [r3, #2]
	ldr r0, _0801AE20  @ =0x03000084
	strb r1, [r0]
	ldr r0, _0801AE24  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801AE30
	ldr r1, _0801AE28  @ =gLevelSelectLevelCursor
	ldr r0, _0801AE2C  @ =gLevelSelectLevel
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, #1
	asr r0, r0, #1
	strb r0, [r1]
	b _0801AE38
_0801AE08:
	.4byte REG_DMA3SAD
_0801AE0C:
	.4byte gOamData
_0801AE10:
	.4byte 0x85000100
_0801AE14:
	.4byte 0x03000094
_0801AE18:
	.4byte gUnknown_03001930
_0801AE1C:
	.4byte gUnknown_0300192C
_0801AE20:
	.4byte 0x03000084
_0801AE24:
	.4byte gLevelType
_0801AE28:
	.4byte gLevelSelectLevelCursor
_0801AE2C:
	.4byte gLevelSelectLevel
_0801AE30:
	ldr r0, _0801AE80  @ =gLevelSelectLevelCursor
	ldr r1, _0801AE84  @ =gLevelSelectLevel
	ldrb r1, [r1]
	strb r1, [r0]
_0801AE38:
	bl sub_0801A7D8
	bl sub_08017FB8
	bl sub_080180BC
	ldr r0, _0801AE88  @ =gLevelSelectMode
	ldrb r1, [r0]
	sub r0, r1, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0801AE56
	cmp r1, #5
	bne _0801AE94
_0801AE56:
	ldr r4, _0801AE80  @ =gLevelSelectLevelCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0801AE8C  @ =gLevelSelectWorld
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08019AF4
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0801AE90  @ =gLevelSelectWorldCursor
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08017600
	b _0801AEB6
	.byte 0x00
	.byte 0x00
_0801AE80:
	.4byte gLevelSelectLevelCursor
_0801AE84:
	.4byte gLevelSelectLevel
_0801AE88:
	.4byte gLevelSelectMode
_0801AE8C:
	.4byte gLevelSelectWorld
_0801AE90:
	.4byte gLevelSelectWorldCursor
_0801AE94:
	ldr r4, _0801AEE0  @ =gLevelSelectLevelCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0801AEE4  @ =gLevelSelectWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08019630
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0801AEE8  @ =gLevelSelectWorldCursor
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080171C8
_0801AEB6:
	ldr r0, _0801AEEC  @ =gLevelSelectMode
	ldrb r2, [r0]
	add r1, r0, #0
	cmp r2, #1
	bhi _0801AEF0
	ldr r1, _0801AEE4  @ =gLevelSelectWorld
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #6
	beq _0801AF1A
	ldr r0, _0801AEE0  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08019F8C
	b _0801AF1A
	.byte 0x00
	.byte 0x00
_0801AEE0:
	.4byte gLevelSelectLevelCursor
_0801AEE4:
	.4byte gLevelSelectWorld
_0801AEE8:
	.4byte gLevelSelectWorldCursor
_0801AEEC:
	.4byte gLevelSelectMode
_0801AEF0:
	sub r0, r2, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0801AF28
	ldr r0, _0801AF90  @ =gLevelSelectWorld
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #7
	beq _0801AF1A
	ldr r0, _0801AF94  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, #1
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_0801A2B8
_0801AF1A:
	ldr r1, _0801AF98  @ =gLevelSelectMode
	ldrb r0, [r1]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0801AF32
_0801AF28:
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	beq _0801AF32
	b _0801B068
_0801AF32:
	bl sub_08017944
	ldr r0, _0801AF94  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _0801AF90  @ =gLevelSelectWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08017ABC
	ldr r0, _0801AF9C  @ =gLevelSelectWorldCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bgt _0801AFBE
	mov r4, #0
_0801AF58:
	cmp r4, #6
	bhi _0801AFA4
	ldr r0, _0801AF9C  @ =gLevelSelectWorldCursor
	ldrb r1, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #1
	add r2, r4, #0
	add r3, sp, #4
	bl sub_0800FE2C
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801AFA4
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801AFA0  @ =gUnknown_08078DE4
	add r0, r0, r1
	mov r1, #11
	bl sub_08018418
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	b _0801AF58
	.byte 0x00
	.byte 0x00
_0801AF90:
	.4byte gLevelSelectWorld
_0801AF94:
	.4byte gLevelSelectLevelCursor
_0801AF98:
	.4byte gLevelSelectMode
_0801AF9C:
	.4byte gLevelSelectWorldCursor
_0801AFA0:
	.4byte gUnknown_08078DE4
_0801AFA4:
	sub r0, r4, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	bhi _0801AFBE
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801B04C  @ =gUnknown_08078DE4
	add r0, r0, r1
	mov r1, #11
	bl sub_08018418
_0801AFBE:
	mov r1, #1
_0801AFC0:
	lsl r0, r1, #24
	asr r4, r0, #24
	ldr r1, _0801B050  @ =gLevelSelectWorldCursor
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	sub r1, r1, #1
	add r5, r0, #0
	cmp r4, r1
	beq _0801AFF6
	sub r1, r4, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #1
	bl sub_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801AFF6
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801B054  @ =gUnknown_08078C1C
	add r0, r0, r1
	lsr r1, r5, #24
	bl sub_080188E8
_0801AFF6:
	mov r1, #128
	lsl r1, r1, #17
	add r0, r5, r1
	lsr r1, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	ble _0801AFC0
	ldr r4, _0801B050  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0801B014
	ldr r0, _0801B058  @ =gUnknown_080794A4
	bl sub_08018998
_0801B014:
	ldrb r1, [r4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #5
	bgt _0801B038
	ldr r0, _0801B05C  @ =gLevelType
	ldrb r0, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801B038
	ldr r0, _0801B060  @ =gUnknown_080794BC
	bl sub_08018A3C
_0801B038:
	ldr r0, _0801B064  @ =gLevelSelectWorld
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	bgt _0801B11A
	bl sub_0801A69C
	b _0801B11A
	.byte 0x00
	.byte 0x00
_0801B04C:
	.4byte gUnknown_08078DE4
_0801B050:
	.4byte gLevelSelectWorldCursor
_0801B054:
	.4byte gUnknown_08078C1C
_0801B058:
	.4byte gUnknown_080794A4
_0801B05C:
	.4byte gLevelType
_0801B060:
	.4byte gUnknown_080794BC
_0801B064:
	.4byte gLevelSelectWorld
_0801B068:
	bl sub_080179F8
	ldr r0, _0801B0F8  @ =gLevelSelectLevelCursor
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _0801B0FC  @ =gLevelSelectWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_080174FC
	bl sub_0801A5FC
	mov r1, #1
_0801B086:
	ldr r0, _0801B100  @ =gLevelSelectWorldCursor
	lsl r1, r1, #24
	asr r4, r1, #24
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r5, r1, #0
	cmp r4, r0
	beq _0801B0BA
	sub r1, r4, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #0
	bl sub_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801B0BA
	lsl r0, r4, #1
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0801B104  @ =gUnknown_08078B74
	add r0, r0, r1
	lsr r1, r5, #24
	bl sub_080188E8
_0801B0BA:
	mov r1, #128
	lsl r1, r1, #17
	add r0, r5, r1
	lsr r1, r0, #24
	asr r0, r0, #24
	cmp r0, #6
	ble _0801B086
	ldr r4, _0801B100  @ =gLevelSelectWorldCursor
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0801B0D8
	ldr r0, _0801B108  @ =gUnknown_080794A4
	bl sub_08018998
_0801B0D8:
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bgt _0801B114
	ldr r0, _0801B10C  @ =gLevelType
	ldrb r0, [r0]
	ldrb r1, [r4]
	bl sub_080103C8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801B11A
	ldr r0, _0801B110  @ =gUnknown_080794BC
	bl sub_08018A3C
	b _0801B11A
_0801B0F8:
	.4byte gLevelSelectLevelCursor
_0801B0FC:
	.4byte gLevelSelectWorld
_0801B100:
	.4byte gLevelSelectWorldCursor
_0801B104:
	.4byte gUnknown_08078B74
_0801B108:
	.4byte gUnknown_080794A4
_0801B10C:
	.4byte gLevelType
_0801B110:
	.4byte gUnknown_080794BC
_0801B114:
	ldr r0, _0801B158  @ =gUnknown_080794BC
	bl sub_08018A3C
_0801B11A:
	bl sub_080181BC
	bl sub_0801B174
	ldr r2, _0801B15C  @ =REG_DMA3SAD
	ldr r0, _0801B160  @ =gOamData
	str r0, [r2]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r2, #4]
	ldr r0, _0801B164  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801B168  @ =0x03000074
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0801B16C  @ =gLevelSelectData
	ldr r0, [r0, #64]
	str r0, [r2, #4]
	ldr r0, _0801B170  @ =0x03000078
	ldrh r0, [r0]
	lsr r0, r0, #1
	mov r1, #128
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_0801B158:
	.4byte gUnknown_080794BC
_0801B15C:
	.4byte REG_DMA3SAD
_0801B160:
	.4byte gOamData
_0801B164:
	.4byte 0x84000100
_0801B168:
	.4byte 0x03000074
_0801B16C:
	.4byte gLevelSelectData
_0801B170:
	.4byte 0x03000078
	THUMB_FUNC_END level_select_loop

	THUMB_FUNC_START sub_0801B174
sub_0801B174: @ 0x0801B174
	push {r4-r7,lr}
	ldr r0, _0801B1C0  @ =0x0300008A
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, _0801B1C4  @ =gUnknown_085CD18C
	add r4, r0, r1
	mov r7, #0
	ldr r5, _0801B1C8  @ =gOamData
	ldr r1, _0801B1CC  @ =0x03000084
	mov r0, #0
	ldrsb r0, [r1, r0]
	mov r12, r5
	cmp r0, #0
	beq _0801B218
	lsl r0, r0, #16
	lsr r6, r0, #16
	lsl r0, r6, #3
	add r2, r0, r5
	ldrb r0, [r2, #3]
	mov r3, #15
	neg r3, r3
	and r3, r3, r0
	strb r3, [r2, #3]
	ldrb r0, [r2, #1]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2, #1]
	lsl r0, r3, #27
	cmp r0, #0
	blt _0801B1D0
	ldrh r0, [r4, #26]
	strh r0, [r5, #6]
	ldrh r0, [r4, #28]
	b _0801B1E2
	.byte 0x00
	.byte 0x00
_0801B1C0:
	.4byte 0x0300008A
_0801B1C4:
	.4byte gUnknown_085CD18C
_0801B1C8:
	.4byte gOamData
_0801B1CC:
	.4byte 0x03000084
_0801B1D0:
	mov r0, #17
	neg r0, r0
	and r0, r0, r3
	strb r0, [r2, #3]
	ldrh r0, [r4, #26]
	neg r0, r0
	strh r0, [r5, #6]
	ldrh r0, [r4, #28]
	neg r0, r0
_0801B1E2:
	strh r0, [r5, #14]
	lsl r0, r6, #3
	mov r1, r12
	add r2, r0, r1
	ldrb r1, [r2, #3]
	lsl r0, r1, #26
	cmp r0, #0
	blt _0801B200
	lsl r0, r7, #1
	add r0, r0, r5
	ldrh r1, [r4, #30]
	strh r1, [r0, #22]
	ldrh r1, [r4, #32]
	strh r1, [r0, #30]
	b _0801B218
_0801B200:
	mov r0, #33
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2, #3]
	lsl r1, r7, #1
	add r1, r1, r5
	ldrh r0, [r4, #30]
	neg r0, r0
	strh r0, [r1, #22]
	ldrh r0, [r4, #32]
	neg r0, r0
	strh r0, [r1, #30]
_0801B218:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B174

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START level_select_end
level_select_end: @ 0x0801B220
	bx lr
	THUMB_FUNC_END level_select_end

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801B224
sub_0801B224: @ 0x0801B224
	push {lr}
	ldr r0, _0801B23C  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #136
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0801B240
	bl sub_08016260
	b _0801B252
	.byte 0x00
	.byte 0x00
_0801B23C:
	.4byte gUnknown_030012E8
_0801B240:
	mov r0, #136
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0801B24E
	mov r0, #0
	b _0801B254
_0801B24E:
	bl sub_080161AC
_0801B252:
	mov r0, #1
_0801B254:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801B224

	THUMB_FUNC_START sub_0801B258
sub_0801B258: @ 0x0801B258
	push {lr}
	ldr r1, _0801B270  @ =gUnknown_030012E8
	ldrh r2, [r1]
	mov r1, #136
	lsl r1, r1, #1
	and r1, r1, r2
	cmp r1, #0
	beq _0801B274
	bl sub_08016654
	mov r0, #1
	b _0801B284
_0801B270:
	.4byte gUnknown_030012E8
_0801B274:
	mov r1, #136
	lsl r1, r1, #2
	and r1, r1, r2
	cmp r1, #0
	beq _0801B284
	bl sub_080163F4
	mov r0, #1
_0801B284:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801B258

	THUMB_FUNC_START sub_0801B288
sub_0801B288: @ 0x0801B288
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r1, #0
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldrb r0, [r5]
	sub r0, r0, #1
	strb r0, [r5]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _0801B2C4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r1, #0
	ldrsb r1, [r4, r1]
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r1, r0
	blt _0801B2B4
	mov r0, #0
	strb r0, [r4]
_0801B2B4:
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1, #1]
	strb r0, [r5]
_0801B2C4:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B288

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801B2CC
sub_0801B2CC: @ 0x0801B2CC
	push {r4,lr}
	mov r1, #240
	lsl r1, r1, #4
	and r1, r1, r0
	lsr r3, r1, #8
	mov r1, #240
	lsl r1, r1, #8
	and r1, r1, r0
	lsr r2, r1, #12
	cmp r3, #15
	bne _0801B2EA
	cmp r2, #0
	bne _0801B2EA
	mov r3, #16
	b _0801B2F4
_0801B2EA:
	cmp r3, #0
	bne _0801B2F4
	cmp r2, #15
	bne _0801B2F4
	mov r2, #16
_0801B2F4:
	ldr r1, _0801B30C  @ =REG_BLDCNT
	mov r4, #253
	lsl r4, r4, #6
	add r0, r4, #0
	strh r0, [r1]
	add r1, r1, #2
	lsl r0, r3, #8
	orr r2, r2, r0
	strh r2, [r1]
	pop {r4}
	pop {r0}
	bx r0
_0801B30C:
	.4byte REG_BLDCNT
	THUMB_FUNC_END sub_0801B2CC

	THUMB_FUNC_START sub_0801B310
sub_0801B310: @ 0x0801B310
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r6, #0
	ldr r0, _0801B354  @ =0x0300009C
	ldr r1, [r0]
	mov r9, r0
	cmp r6, r1
	bge _0801B3B4
	ldr r2, _0801B358  @ =0x03000098
	ldr r3, [r2]
	ldr r0, _0801B35C  @ =0x03000BDC
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0801B3B4
	mov r12, r2
	ldr r7, _0801B360  @ =0x03000D3C
	mov r5, #0
_0801B338:
	ldrh r0, [r3, #10]
	add r4, r0, #0
	cmp r4, #0
	bne _0801B396
	ldrb r2, [r3, #8]
	ldr r1, [r3, #12]
	ldrh r0, [r1]
	sub r0, r0, #1
	cmp r2, r0
	bge _0801B364
	add r0, r2, #1
	strb r0, [r3, #8]
	b _0801B38A
	.byte 0x00
	.byte 0x00
_0801B354:
	.4byte 0x0300009C
_0801B358:
	.4byte 0x03000098
_0801B35C:
	.4byte 0x03000BDC
_0801B360:
	.4byte 0x03000D3C
_0801B364:
	ldrb r1, [r1, #3]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801B372
	strb r4, [r3, #8]
	b _0801B38A
_0801B372:
	ldrb r0, [r7]
	cmp r0, #1
	bne _0801B38A
	mov r1, r12
	ldr r0, [r1]
	add r0, r5, r0
	ldr r0, [r0, #12]
	ldrb r0, [r0, #2]
	cmp r0, #40
	bne _0801B38A
	mov r0, #2
	strb r0, [r7]
_0801B38A:
	ldr r0, [r3, #12]
	ldrb r1, [r3, #8]
	lsl r1, r1, #2
	add r0, r0, r1
	ldrb r0, [r0, #11]
	b _0801B398
_0801B396:
	sub r0, r0, #1
_0801B398:
	strh r0, [r3, #10]
	add r5, r5, #16
	add r6, r6, #1
	mov r1, r9
	ldr r0, [r1]
	cmp r6, r0
	bge _0801B3B4
	mov r1, r12
	ldr r0, [r1]
	add r3, r0, r5
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801B338
_0801B3B4:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B310

	THUMB_FUNC_START sub_0801B3C0
sub_0801B3C0: @ 0x0801B3C0
	ldr r0, _0801B3D0  @ =0x03000098
	mov r1, #0
	str r1, [r0]
	ldr r0, _0801B3D4  @ =0x03000BDC
	strb r1, [r0]
	ldr r0, _0801B3D8  @ =0x0300009C
	str r1, [r0]
	bx lr
_0801B3D0:
	.4byte 0x03000098
_0801B3D4:
	.4byte 0x03000BDC
_0801B3D8:
	.4byte 0x0300009C
	THUMB_FUNC_END sub_0801B3C0

	THUMB_FUNC_START sub_0801B3DC
sub_0801B3DC: @ 0x0801B3DC
	push {r4-r6,lr}
	add r3, r0, #0
	add r5, r1, #0
	ldr r0, _0801B428  @ =0x030000A0
	add r0, r2, r0
	ldr r1, _0801B42C  @ =0x0300009C
	ldr r1, [r1]
	strb r1, [r0]
	ldr r0, [r3, #8]
	cmp r0, #96
	bls _0801B422
	ldr r0, [r3, #96]
	cmp r0, #0
	beq _0801B422
	add r1, r3, r0
	ldr r0, [r1]
	add r0, r0, #4
	add r4, r1, r0
	mov r6, #64
	cmp r5, #0
	beq _0801B408
	mov r6, #32
_0801B408:
	add r1, r1, #4
	lsl r0, r2, #2
	add r2, r3, #0
	add r2, r2, #80
	add r2, r2, r0
	ldrh r0, [r3, #44]
	lsl r0, r0, #6
	ldr r2, [r2]
	add r2, r2, r0
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0801B430
_0801B422:
	pop {r4-r6}
	pop {r0}
	bx r0
_0801B428:
	.4byte 0x030000A0
_0801B42C:
	.4byte 0x0300009C
	THUMB_FUNC_END sub_0801B3DC

	THUMB_FUNC_START sub_0801B430
sub_0801B430: @ 0x0801B430
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r9, r1
	mov r8, r2
	mov r10, r3
	ldr r0, [r6]
	cmp r0, #0
	beq _0801B4A4
	ldr r4, _0801B4B4  @ =0x03000098
	ldr r0, [r4]
	cmp r0, #0
	bne _0801B45A
	mov r0, #200
	lsl r0, r0, #3
	bl sub_08034854
	str r0, [r4]
_0801B45A:
	add r2, r6, #4
	mov r3, #0
	ldr r0, [r6]
	cmp r3, r0
	bcs _0801B4A4
	ldr r5, _0801B4B8  @ =0x0300009C
	mov r12, r4
	mov r4, #0
_0801B46A:
	ldr r0, [r5]
	cmp r0, #99
	bgt _0801B494
	lsl r0, r0, #4
	mov r7, r12
	ldr r1, [r7]
	add r1, r1, r0
	str r2, [r1, #12]
	mov r0, r9
	str r0, [r1]
	mov r7, r10
	strb r7, [r1, #9]
	ldrb r0, [r2, #11]
	strh r0, [r1, #10]
	strb r4, [r1, #8]
	ldr r0, [r2, #4]
	add r0, r0, r8
	str r0, [r1, #4]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_0801B494:
	ldrh r0, [r2]
	lsl r0, r0, #2
	add r0, r0, #8
	add r2, r2, r0
	add r3, r3, #1
	ldr r0, [r6]
	cmp r3, r0
	bcc _0801B46A
_0801B4A4:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801B4B4:
	.4byte 0x03000098
_0801B4B8:
	.4byte 0x0300009C
	THUMB_FUNC_END sub_0801B430

	THUMB_FUNC_START sub_0801B4BC
sub_0801B4BC: @ 0x0801B4BC
	push {r4-r6,lr}
	mov r4, #0
	ldr r5, _0801B500  @ =0x0300009C
	ldr r0, [r5]
	cmp r4, r0
	bge _0801B4FA
	ldr r0, _0801B504  @ =0x03000098
	ldr r3, _0801B508  @ =REG_DMA3SAD
	ldr r2, [r0]
	mov r6, #128
	lsl r6, r6, #24
_0801B4D2:
	ldr r1, [r2, #12]
	ldrb r0, [r2, #8]
	lsl r0, r0, #2
	add r1, r1, r0
	ldrh r1, [r1, #8]
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r3]
	ldr r0, [r2, #4]
	str r0, [r3, #4]
	ldrb r0, [r2, #9]
	lsr r0, r0, #1
	orr r0, r0, r6
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	add r2, r2, #16
	add r4, r4, #1
	ldr r0, [r5]
	cmp r4, r0
	blt _0801B4D2
_0801B4FA:
	pop {r4-r6}
	pop {r0}
	bx r0
_0801B500:
	.4byte 0x0300009C
_0801B504:
	.4byte 0x03000098
_0801B508:
	.4byte REG_DMA3SAD
	THUMB_FUNC_END sub_0801B4BC

	THUMB_FUNC_START sub_0801B50C
sub_0801B50C: @ 0x0801B50C
	push {r4-r7,lr}
	lsl r0, r0, #16
	lsr r1, r0, #16
	mov r3, #0
	ldr r2, _0801B544  @ =0x0300009C
	ldr r0, [r2]
	cmp r3, r0
	bge _0801B554
	ldr r0, _0801B548  @ =0x03000098
	mov r12, r0
	lsl r0, r1, #16
	asr r5, r0, #16
	mov r4, #0
	mov r7, #2
	add r6, r2, #0
_0801B52A:
	mov r1, r12
	ldr r0, [r1]
	lsl r1, r3, #4
	add r1, r1, r0
	ldr r2, [r1, #12]
	ldrb r0, [r2, #2]
	cmp r0, r5
	bne _0801B54C
	strb r4, [r1, #8]
	strh r7, [r1, #10]
	strb r4, [r2, #3]
	b _0801B554
	.byte 0x00
	.byte 0x00
_0801B544:
	.4byte 0x0300009C
_0801B548:
	.4byte 0x03000098
_0801B54C:
	add r3, r3, #1
	ldr r0, [r6]
	cmp r3, r0
	blt _0801B52A
_0801B554:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B50C

	.ALIGN 2, 0
