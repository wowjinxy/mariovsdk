	.INCLUDE "macro.inc"

	THUMB_FUNC_START level_view_main
level_view_main: @ 0x08032210
	push {r4,lr}
	bl sub_080331FC
	ldr r0, _0803224C  @ =gUnknown_030012E0
	ldrh r2, [r0]
	mov r1, #192
	lsl r1, r1, #2
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, r1
	beq _08032232
	ldr r0, _08032250  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #23
	orr r1, r1, r2
	str r1, [r0]
_08032232:
	bl sub_0800CC6C
	bl sub_08041F70
	ldr r4, _08032254  @ =gUnknown_03001A38
	ldrb r0, [r4]
	cmp r0, #1
	bne _08032258
	bl sub_0800C5A4
	strb r0, [r4]
	b _08032280
	.byte 0x00
	.byte 0x00
_0803224C:
	.4byte gUnknown_030012E0
_08032250:
	.4byte gUnknown_030019A0
_08032254:
	.4byte gUnknown_03001A38
_08032258:
	cmp r0, #2
	bne _08032264
	bl sub_0800EF30
	strb r0, [r4]
	b _08032280
_08032264:
	cmp r0, #3
	bne _08032280
	bl sub_0800EF8C
	strb r0, [r4]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08032280
	bl sub_08072118
	mov r0, #19
	mov r1, #0
	bl sub_080070E8
_08032280:
	ldr r4, _08032298  @ =gNextLevelInLevelTable
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _0803229C
	mov r0, #0
	bl sub_0802BEA4
	b _080322A0
_08032298:
	.4byte gNextLevelInLevelTable
_0803229C:
	bl sub_0802BE50
_080322A0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END level_view_main

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080322A8
sub_080322A8: @ 0x080322A8
	push {r4-r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r12, r2
	ldr r1, _08032344  @ =0x03000B78
	ldrb r1, [r1]
	cmp r1, #0
	beq _0803233E
	ldr r3, _08032348  @ =0x040000D4
	ldr r1, _0803234C  @ =gUnknown_082E8908
	str r1, [r3]
	ldrh r1, [r2]
	ldr r2, _08032350  @ =0x06010000
	add r1, r1, r2
	str r1, [r3, #4]
	ldr r1, _08032354  @ =0x84000040
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r1, _08032358  @ =gUnknown_082E8900
	str r1, [r3]
	ldrh r1, [r6]
	lsl r1, r1, #3
	ldr r5, _0803235C  @ =gOamData
	add r1, r1, r5
	str r1, [r3, #4]
	ldr r1, _08032360  @ =0x84000002
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r5
	ldrh r1, [r7]
	ldr r2, _08032364  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _08032368  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r5
	ldrh r2, [r3, #2]
	ldr r1, _0803236C  @ =0xFFFFFE00
	and r1, r1, r2
	mov r2, #200
	orr r1, r1, r2
	strh r1, [r3, #2]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r2, #140
	strb r2, [r1]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r3, [r2, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r3
	strb r1, [r2, #5]
	ldrh r1, [r7]
	add r1, r1, #8
	strh r1, [r7]
	mov r2, #128
	lsl r2, r2, #1
	add r1, r2, #0
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	mov r2, r12
	strh r1, [r2]
	ldrh r1, [r6]
	add r1, r1, #1
	strh r1, [r6]
_0803233E:
	pop {r4-r7}
	pop {r1}
	bx r1
_08032344:
	.4byte 0x03000B78
_08032348:
	.4byte 0x040000D4
_0803234C:
	.4byte gUnknown_082E8908
_08032350:
	.4byte 0x06010000
_08032354:
	.4byte 0x84000040
_08032358:
	.4byte gUnknown_082E8900
_0803235C:
	.4byte gOamData
_08032360:
	.4byte 0x84000002
_08032364:
	.4byte 0x000003FF
_08032368:
	.4byte 0xFFFFFC00
_0803236C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080322A8

	THUMB_FUNC_START level_view_init_callback
level_view_init_callback: @ 0x08032370
	push {r4,r5,lr}
	sub sp, sp, #12
	bl sub_080720E4
	bl sub_08040F54
	ldr r0, _080323B8  @ =gUnknown_03001A38
	mov r5, #1
	strb r5, [r0]
	bl sub_08071C24
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #26
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _080323BC  @ =gUnknown_030019A0
	ldr r0, [r2]
	ldr r1, _080323C0  @ =0xBFFFFFFF
	and r0, r0, r1
	str r0, [r2]
	ldr r0, _080323C4  @ =0x03000B78
	strb r5, [r0]
	ldr r0, _080323C8  @ =0x03001A00
	strb r4, [r0]
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080323B8:
	.4byte gUnknown_03001A38
_080323BC:
	.4byte gUnknown_030019A0
_080323C0:
	.4byte 0xBFFFFFFF
_080323C4:
	.4byte 0x03000B78
_080323C8:
	.4byte 0x03001A00
	THUMB_FUNC_END level_view_init_callback

	THUMB_FUNC_START level_view_loop
level_view_loop: @ 0x080323CC
	push {r4,r5,lr}
	ldr r4, _080323E4  @ =gMainState
	ldr r5, [r4]
	mov r0, #13
	str r0, [r4]
	bl level_play_loop
	str r5, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080323E4:
	.4byte gMainState
	THUMB_FUNC_END level_view_loop

	THUMB_FUNC_START level_view_end
level_view_end: @ 0x080323E8
	push {lr}
	ldr r1, _08032400  @ =0x03000B78
	mov r0, #0
	strb r0, [r1]
	ldr r1, _08032404  @ =0x03001A00
	mov r0, #1
	strb r0, [r1]
	bl sub_0800F060
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08032400:
	.4byte 0x03000B78
_08032404:
	.4byte 0x03001A00
	THUMB_FUNC_END level_view_end
