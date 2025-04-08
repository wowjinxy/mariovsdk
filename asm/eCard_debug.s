	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START e_world_debug_main
e_world_debug_main: @ 0x0802F1EC
	push {r4-r7,lr}
	sub sp, sp, #12
	bl process_input
	bl level_callback_08008238
	ldr r7, _0802F228  @ =0x030001C8
	ldrb r1, [r7]
	cmp r1, #0
	beq _0802F202
	b _0802F306
_0802F202:
	ldr r0, _0802F22C  @ =gCurrentInput
	ldrh r2, [r0]
	mov r0, #64
	and r0, r0, r2
	cmp r0, #0
	beq _0802F234
	ldr r2, _0802F230  @ =0x030001C9
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802F218
	b _0802F432
_0802F218:
	sub r0, r0, #1
	strb r0, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _0802F404
_0802F228:
	.4byte 0x030001C8
_0802F22C:
	.4byte gCurrentInput
_0802F230:
	.4byte 0x030001C9
_0802F234:
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _0802F260
	ldr r2, _0802F25C  @ =0x030001C9
	ldrb r0, [r2]
	add r1, r0, #0
	cmp r1, #0
	beq _0802F24E
	b _0802F432
_0802F24E:
	add r0, r0, #1
	strb r0, [r2]
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _0802F404
_0802F25C:
	.4byte 0x030001C9
_0802F260:
	ldr r0, _0802F2A8  @ =gNewKeys
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _0802F2E0
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r6, _0802F2AC  @ =0x030001C9
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802F2BC
	ldr r0, _0802F2B0  @ =gEWorldLevelCountPtr
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #11
	bhi _0802F2B4
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #26
	b _0802F2FE
	.byte 0x00
	.byte 0x00
_0802F2A8:
	.4byte gNewKeys
_0802F2AC:
	.4byte 0x030001C9
_0802F2B0:
	.4byte gEWorldLevelCountPtr
_0802F2B4:
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	b _0802F402
_0802F2BC:
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _0802F2DC  @ =0x030001CA
	strb r4, [r6]
	strb r4, [r0]
	mov r0, #1
	strb r0, [r7]
	b _0802F432
	.byte 0x00
	.byte 0x00
_0802F2DC:
	.4byte 0x030001CA
_0802F2E0:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	bne _0802F2EA
	b _0802F432
_0802F2EA:
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #25
_0802F2FE:
	mov r1, #0
	bl change_main_state
	b _0802F432
_0802F306:
	ldr r0, _0802F340  @ =gCurrentInput
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _0802F34C
	ldr r2, _0802F344  @ =0x030001C9
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802F320
	b _0802F432
_0802F320:
	sub r1, r0, #1
	strb r1, [r2]
	ldr r2, _0802F348  @ =0x030001CA
	lsl r0, r1, #24
	lsr r0, r0, #24
	ldrb r3, [r2]
	cmp r0, r3
	bcs _0802F332
	strb r1, [r2]
_0802F332:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _0802F404
_0802F340:
	.4byte gCurrentInput
_0802F344:
	.4byte 0x030001C9
_0802F348:
	.4byte 0x030001CA
_0802F34C:
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _0802F3B0
	ldr r3, _0802F378  @ =0x030001C9
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	ldr r1, _0802F37C  @ =gPreloadedCardETable
	ldrb r2, [r3]
	lsl r0, r2, #3
	add r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0802F380
	sub r0, r2, #1
	strb r0, [r3]
	b _0802F392
	.byte 0x00
	.byte 0x00
_0802F378:
	.4byte 0x030001C9
_0802F37C:
	.4byte  gPreloadedCardETable
_0802F380:
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802F392:
	ldr r0, _0802F3A8  @ =0x030001C9
	ldrb r1, [r0]
	ldr r3, _0802F3AC  @ =0x030001CA
	ldrb r2, [r3]
	add r0, r2, #6
	cmp r1, r0
	blt _0802F432
	add r0, r2, #1
	strb r0, [r3]
	b _0802F432
	.byte 0x00
	.byte 0x00
_0802F3A8:
	.4byte 0x030001C9
_0802F3AC:
	.4byte 0x030001CA
_0802F3B0:
	ldr r0, _0802F3EC  @ =gNewKeys
	ldrh r2, [r0]
	mov r4, #9
	and r4, r4, r2
	cmp r4, #0
	beq _0802F410
	ldr r0, _0802F3F0  @ =gEWorldLevelCountPtr
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #11
	bhi _0802F3FC
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0802F3F4  @ =gPreloadedCardETable
	ldr r0, _0802F3F8  @ =0x030001C9
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r1, #4
	add r0, r0, r1
	ldr r0, [r0]
	bl load_debug_card_e_0802D614
	b _0802F432
_0802F3EC:
	.4byte gNewKeys
_0802F3F0:
	.4byte gEWorldLevelCountPtr
_0802F3F4:
	.4byte gPreloadedCardETable
_0802F3F8:
	.4byte 0x030001C9
_0802F3FC:
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
_0802F402:
	mov r0, #27
_0802F404:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0802F432
_0802F410:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _0802F432
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	strb r4, [r7]
	ldr r1, _0802F43C  @ =0x030001C9
	mov r0, #1
	strb r0, [r1]
_0802F432:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F43C:
	.4byte 0x030001C9
	THUMB_FUNC_END e_world_debug_main

	THUMB_FUNC_START e_world_debug_loop
e_world_debug_loop: @ 0x0802F440
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #20
	ldr r0, _0802F494  @ =gUnknown_08076994
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #12]
	str r1, [sp, #16]
	add r4, sp, #8
	mov r0, #0
	strh r0, [r4]
	mov r0, #160
	str r0, [sp, #4]
	ldr r1, _0802F498  @ =REG_DMA3SAD
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _0802F49C  @ =gOamBuffer
	str r0, [r1, #4]
	ldr r0, _0802F4A0  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_080351E0
	ldr r0, _0802F4A4  @ =0x030001C8
	ldrb r0, [r0]
	mov r8, r4
	cmp r0, #0
	bne _0802F4F4
	mov r4, #0
	mov r6, #20
	mov r7, #1
	neg r7, r7
	add r5, sp, #12
_0802F484:
	ldr r1, [r5]
	ldr r0, _0802F4A8  @ =0x030001C9
	ldrb r0, [r0]
	cmp r4, r0
	bne _0802F4AC
	mov r0, #2
	b _0802F4AE
	.byte 0x00
	.byte 0x00
_0802F494:
	.4byte gUnknown_08076994
_0802F498:
	.4byte REG_DMA3SAD
_0802F49C:
	.4byte gOamBuffer
_0802F4A0:
	.4byte 0x85000100
_0802F4A4:
	.4byte 0x030001C8
_0802F4A8:
	.4byte 0x030001C9
_0802F4AC:
	mov r0, #3
_0802F4AE:
	str r0, [sp]
	add r0, r1, #0
	mov r1, #20
	add r2, r6, #0
	add r3, r7, #0
	bl draw_text_font
	add r5, r5, #4
	add r4, r4, #1
	add r6, r6, #20
	cmp r4, #1
	ble _0802F484
	ldr r1, _0802F4D4  @ =gTextPressBToReturn
	ldr r0, _0802F4D8  @ =0x030001C9
	ldrb r0, [r0]
	cmp r4, r0
	bne _0802F4DC
	mov r0, #2
	b _0802F4DE
_0802F4D4:
	.4byte gTextPressBToReturn
_0802F4D8:
	.4byte 0x030001C9
_0802F4DC:
	mov r0, #3
_0802F4DE:
	str r0, [sp]
	add r0, r1, #0
	ldr r1, _0802F4F0  @ =0xFFFF8001
	mov r2, #104
	mov r3, #1
	neg r3, r3
	bl draw_text_font
	b _0802F556
_0802F4F0:
	.4byte 0xFFFF8001
_0802F4F4:
	ldr r0, _0802F520  @ =0x030001CA
	ldrb r4, [r0]
	mov r6, #20
	ldr r2, _0802F524  @ =gPreloadedCardETable
	lsl r1, r4, #3
	add r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0802F556
	add r0, r4, #6
	cmp r4, r0
	bge _0802F556
	mov r5, #1
	neg r5, r5
_0802F510:
	add r0, r1, r2
	ldr r1, [r0]
	ldr r0, _0802F528  @ =0x030001C9
	ldrb r0, [r0]
	cmp r4, r0
	bne _0802F52C
	mov r0, #2
	b _0802F52E
_0802F520:
	.4byte 0x030001CA
_0802F524:
	.4byte gPreloadedCardETable
_0802F528:
	.4byte 0x030001C9
_0802F52C:
	mov r0, #3
_0802F52E:
	str r0, [sp]
	add r0, r1, #0
	mov r1, #20
	add r2, r6, #0
	add r3, r5, #0
	bl draw_text_font
	add r4, r4, #1
	add r6, r6, #20
	ldr r2, _0802F57C  @ =gPreloadedCardETable
	lsl r1, r4, #3
	add r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0802F556
	ldr r0, _0802F580  @ =0x030001CA
	ldrb r0, [r0]
	add r0, r0, #6
	cmp r4, r0
	blt _0802F510
_0802F556:
	mov r0, r8
	bl sub_08035108
	ldr r1, _0802F584  @ =REG_DMA3SAD
	ldr r0, _0802F588  @ =gOamBuffer
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0802F58C  @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F57C:
	.4byte gPreloadedCardETable
_0802F580:
	.4byte 0x030001CA
_0802F584:
	.4byte REG_DMA3SAD
_0802F588:
	.4byte gOamBuffer
_0802F58C:
	.4byte 0x80000200
	THUMB_FUNC_END e_world_debug_loop

	THUMB_FUNC_START e_world_debug_init_callback
e_world_debug_init_callback: @ 0x0802F590
	ldr r3, _0802F5AC  @ =0x030001C8
	ldr r2, _0802F5B0  @ =0x030001C9
	ldr r1, _0802F5B4  @ =0x030001CA
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	strb r0, [r3]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802F5B8  @ =0x0000FDFF
	and r0, r0, r1
	strh r0, [r2]
	bx lr
_0802F5AC:
	.4byte 0x030001C8
_0802F5B0:
	.4byte 0x030001C9
_0802F5B4:
	.4byte 0x030001CA
_0802F5B8:
	.4byte 0x0000FDFF
	THUMB_FUNC_END e_world_debug_init_callback

	THUMB_FUNC_START e_world_debug_end
e_world_debug_end: @ 0x0802F5BC
	bx lr
	THUMB_FUNC_END e_world_debug_end

	.byte 0x00
	.byte 0x00
