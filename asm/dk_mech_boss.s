	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_0806A22C
sub_0806A22C: @ 0x0806A22C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r6, [sp, #32]
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _0806A394  @ =0x0806A3A9
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0806A398  @ =0x0806CCF1
	str r0, [r1]
	ldr r5, _0806A39C  @ =0x030006E4
	ldr r0, [r5]
	mov r9, r0
	str r7, [r0]
	mov r1, #0
	mov r10, r1
	strh r2, [r7]
	mov r2, r10
	strh r2, [r7, #4]
	mov r0, #12
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0806A3A0  @ =gUnknown_086691BC
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r2, #124
	add r2, r2, r7
	mov r8, r2
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	ldrb r2, [r6, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	ldrh r0, [r6, #6]
	and r1, r1, r0
	mov r0, r9
	strb r1, [r0, #16]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0806A3A4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, #0
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #24
	ldr r1, [r5]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	mov r0, #0
	strb r0, [r7, #10]
	ldr r0, [r5]
	mov r1, #0
	strb r1, [r0, #24]
	ldr r1, [r5]
	ldrb r0, [r3, #22]
	strb r0, [r1, #25]
	ldr r1, [r5]
	ldrb r0, [r3, #23]
	strb r0, [r1, #26]
	ldr r0, [r5]
	add r0, r0, #40
	mov r2, #0
	strb r2, [r0]
	ldr r0, [r5]
	mov r1, r10
	str r1, [r0, #32]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0, #36]
	add r0, r0, #43
	mov r1, #18
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r0, #41
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r0, #42
	strb r2, [r0]
	ldr r0, [r5]
	mov r2, r10
	str r2, [r0, #56]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	add r0, r7, #0
	add r0, r0, #64
	mov r1, #0
	strb r1, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r1, [r2]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	mov r0, #128
	lsl r0, r0, #16
	str r0, [r7, #92]
	str r4, [r7, #96]
	mov r0, #168
	lsl r0, r0, #8
	str r0, [r7, #36]
	add r1, r7, #0
	add r1, r1, #52
	mov r0, #7
	strb r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0806A394:
	.4byte sub_0806A3A8
_0806A398:
	.4byte sub_0806CCF0
_0806A39C:
	.4byte 0x030006E4
_0806A3A0:
	.4byte gUnknown_086691BC
_0806A3A4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0806A22C

	THUMB_FUNC_START sub_0806A3A8
sub_0806A3A8: @ 0x0806A3A8
	push {r4-r7,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r6, _0806A3F0  @ =gUnknown_03001A1C
	ldr r0, [r6]
	mov r5, #128
	lsl r5, r5, #5
	and r0, r0, r5
	cmp r0, #0
	bne _0806A3D6
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0806A3F4  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_0806A3D6:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, [r6]
	and r1, r1, r5
	cmp r1, #0
	bne _0806A3F8
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _0806A3FE
	.byte 0x00
	.byte 0x00
_0806A3F0:
	.4byte gUnknown_03001A1C
_0806A3F4:
	.4byte 0x00007FFF
_0806A3F8:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_0806A3FE:
	ldr r2, _0806A424  @ =0x030006E4
	ldr r1, [r2]
	mov r3, #142
	lsl r3, r3, #1
	add r5, r1, r3
	ldrh r6, [r5]
	add r7, r2, #0
	cmp r6, #9
	bhi _0806A430
	ldr r3, _0806A428  @ =gUnknown_03001D60
	ldr r2, _0806A42C  @ =gUnknown_0866508C
	ldrh r1, [r5]
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r3]
	add r1, r6, #1
	strh r1, [r5]
	b _0806A436
_0806A424:
	.4byte 0x030006E4
_0806A428:
	.4byte gUnknown_03001D60
_0806A42C:
	.4byte gUnknown_0866508C
_0806A430:
	ldr r2, _0806A47C  @ =gUnknown_03001D60
	mov r1, #0
	strh r1, [r2]
_0806A436:
	ldr r1, [r7]
	mov r5, #142
	lsl r5, r5, #1
	add r1, r1, r5
	ldrh r1, [r1]
	cmp r1, #10
	bne _0806A44E
	ldr r1, _0806A480  @ =gUnknown_03001938
	ldr r2, [r1]
	ldr r3, _0806A484  @ =0xFFFFFDFF
	and r2, r2, r3
	str r2, [r1]
_0806A44E:
	ldr r3, [r4, #104]
	mov r2, #4
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0806A47C:
	.4byte gUnknown_03001D60
_0806A480:
	.4byte gUnknown_03001938
_0806A484:
	.4byte 0xFFFFFDFF
	THUMB_FUNC_END sub_0806A3A8

	THUMB_FUNC_START sub_0806A488
sub_0806A488: @ 0x0806A488
	push {r4-r6,lr}
	sub sp, sp, #8
	add r5, r0, #0
	ldr r6, _0806A4FC  @ =0x030006E4
	ldr r2, [r6]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806A500  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #1
	bl sub_0804A748
	ldr r4, _0806A504  @ =gUnknown_03001A1C
	ldr r3, [r4]
	mov r0, #128
	lsl r0, r0, #6
	orr r3, r3, r0
	str r3, [r4]
	ldr r0, [r6]
	ldr r1, [r0, #4]
	ldr r0, [r5, #36]
	mov r2, #192
	lsl r2, r2, #6
	add r0, r0, r2
	str r0, [r1, #36]
	ldr r0, _0806A508  @ =gUnknown_030019AC
	ldr r1, [r0]
	ldr r0, _0806A50C  @ =0xFFFFF000
	str r0, [r1, #32]
	ldr r2, _0806A510  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #3
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #128
	lsl r0, r0, #16
	orr r3, r3, r0
	str r3, [r4]
	bl sound_stop_music
	ldr r0, _0806A514  @ =gUnknown_03001B98 
	ldrb r5, [r0]
	cmp r5, #0
	beq _0806A518
	mov r0, #64
	mov r1, #128
	mov r2, #0
	bl play_bgm
	b _0806A584
	.byte 0x00
	.byte 0x00
_0806A4FC:
	.4byte 0x030006E4
_0806A500:
	.4byte gUnknown_086691BC
_0806A504:
	.4byte gUnknown_03001A1C
_0806A508:
	.4byte gUnknown_030019AC
_0806A50C:
	.4byte 0xFFFFF000
_0806A510:
	.4byte gUnknown_03001938
_0806A514:
	.4byte gUnknown_03001B98 
_0806A518:
	mov r4, #144
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #44
	bl spawn_sprite_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #52
	bl spawn_sprite_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #60
	bl spawn_sprite_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #196
	bl spawn_sprite_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #188
	bl spawn_sprite_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #180
	bl spawn_sprite_08038DF4
	mov r0, #60
	mov r1, #128
	mov r2, #0
	bl play_bgm
_0806A584:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806A488

	THUMB_FUNC_START sub_0806A58C
sub_0806A58C: @ 0x0806A58C
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	ldr r0, _0806A5E0  @ =gUnknown_03001B98 
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806A5B6
	ldr r0, _0806A5E4  @ =gUnknown_030019AC
	ldr r1, [r0]
	mov r0, #208
	lsl r0, r0, #7
	str r0, [r1, #32]
	add r2, r4, #0
	add r2, r2, #84
	mov r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0806A5E8  @ =0x000001A3
	cmp r1, r0
	bgt _0806A5B6
	add r0, r0, #1
	strh r0, [r2]
_0806A5B6:
	add r0, r4, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r0, #239
	lsl r0, r0, #1
	cmp r1, r0
	bne _0806A5EC
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #176
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0806A626
	.byte 0x00
	.byte 0x00
_0806A5E0:
	.4byte gUnknown_03001B98 
_0806A5E4:
	.4byte gUnknown_030019AC
_0806A5E8:
	.4byte 0x000001A3
_0806A5EC:
	ldr r0, _0806A630  @ =0x000001FD
	cmp r1, r0
	ble _0806A626
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #182
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _0806A634  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806A638  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #2
	bl sub_0804A748
_0806A626:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806A630:
	.4byte 0x000001FD
_0806A634:
	.4byte 0x030006E4
_0806A638:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806A58C

	THUMB_FUNC_START sub_0806A63C
sub_0806A63C: @ 0x0806A63C
	push {r4-r6,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r5, _0806A6CC  @ =0x030006E4
	ldr r2, [r5]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #50]
	mov r3, #0
	strh r0, [r1, #50]
	ldr r0, [r2, #4]
	ldr r2, [r0, #36]
	mov r0, #160
	lsl r0, r0, #8
	cmp r2, r0
	bgt _0806A664
	ldr r0, _0806A6D0  @ =gUnknown_030019AC
	ldr r1, [r0]
	ldr r6, _0806A6D4  @ =0xFFFFE000
	add r0, r2, r6
	str r0, [r1, #36]
_0806A664:
	ldr r0, [r4, #36]
	mov r2, #192
	lsl r2, r2, #7
	cmp r0, r2
	bgt _0806A6C2
	ldr r1, [r5]
	ldr r0, [r1, #4]
	strh r3, [r4, #50]
	strh r3, [r0, #50]
	str r2, [r4, #36]
	ldr r1, [r1, #4]
	mov r0, #144
	lsl r0, r0, #8
	str r0, [r1, #36]
	ldr r2, _0806A6D8  @ =gUnknown_03001938
	ldr r0, [r2]
	ldr r1, _0806A6DC  @ =0xFFFFFBFF
	and r0, r0, r1
	str r0, [r2]
	ldr r2, _0806A6E0  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _0806A6E4  @ =0xFF7FFFFF
	and r0, r0, r1
	str r0, [r2]
	bl sound_stop_music
	ldr r3, _0806A6E8  @ =gNextLevelInLevelTable
	ldr r0, [r3, #20]
	ldr r1, [r3, #24]
	add r3, r3, #29
	mov r2, #1
	bl sub_08071FA0
	ldr r2, [r5]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806A6EC  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #3
	bl sub_0804A748
_0806A6C2:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806A6CC:
	.4byte 0x030006E4
_0806A6D0:
	.4byte gUnknown_030019AC
_0806A6D4:
	.4byte 0xFFFFE000
_0806A6D8:
	.4byte gUnknown_03001938
_0806A6DC:
	.4byte 0xFFFFFBFF
_0806A6E0:
	.4byte gUnknown_03001A1C
_0806A6E4:
	.4byte 0xFF7FFFFF
_0806A6E8:
	.4byte gNextLevelInLevelTable
_0806A6EC:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806A63C

	THUMB_FUNC_START sub_0806A6F0
sub_0806A6F0: @ 0x0806A6F0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	add r7, r0, #0
	bl sub_0806AD94
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _0806A798
	ldr r0, _0806A7A4  @ =0x030006E4
	mov r8, r0
	ldr r1, [r0]
	mov r12, r1
	ldr r0, [r1, #8]
	mov r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #7
	bne _0806A798
	ldr r0, [r1, #12]
	mov r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #7
	bne _0806A798
	mov r5, #218
	lsl r5, r5, #1
	add r5, r5, r12
	ldrh r3, [r5]
	add r3, r3, #1
	strh r3, [r5]
	ldr r4, _0806A7A8  @ =gUnknown_086651C4
	mov r2, r12
	ldr r0, [r2]
	add r0, r0, #52
	mov r2, #0
	ldrsb r2, [r0, r2]
	sub r2, r1, r2
	mov r0, #219
	lsl r0, r0, #1
	add r0, r0, r12
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r1, _0806A7AC  @ =0x000001B3
	add r1, r1, r12
	ldrb r1, [r1]
	ldr r0, [r0]
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r1, [r1, #2]
	cmp r3, r1
	bls _0806A798
	strh r6, [r5]
	str r6, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #176
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, r8
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r7, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806A7B0  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r7, #0
	mov r2, #4
	bl sub_0804A748
_0806A798:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0806A7A4:
	.4byte 0x030006E4
_0806A7A8:
	.4byte gUnknown_086651C4
_0806A7AC:
	.4byte 0x000001B3
_0806A7B0:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806A6F0

	THUMB_FUNC_START sub_0806A7B4
sub_0806A7B4: @ 0x0806A7B4
	push {r4-r7,lr}
	sub sp, sp, #12
	add r5, r0, #0
	bl sub_0806AD94
	lsl r0, r0, #24
	cmp r0, #0
	beq _0806A7C6
	b _0806ACC6
_0806A7C6:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0806A7D2
	b _0806ACC6
_0806A7D2:
	ldr r4, _0806A834  @ =0x030006E4
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806A838  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	bl sub_0804A748
	ldr r3, _0806A83C  @ =gUnknown_086651C4
	ldr r4, [r4]
	ldr r0, [r4]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r2, #7
	sub r2, r2, r0
	mov r1, #219
	lsl r1, r1, #1
	add r0, r4, r1
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r3
	ldr r2, _0806A840  @ =0x000001B3
	add r1, r4, r2
	ldrb r1, [r1]
	ldr r0, [r0]
	lsl r1, r1, #2
	add r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #10
	bls _0806A828
	b _0806AC86
_0806A828:
	lsl r0, r0, #2
	ldr r1, _0806A844  @ =0x0806A848
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0806A834:
	.4byte 0x030006E4
_0806A838:
	.4byte gUnknown_086691BC
_0806A83C:
	.4byte gUnknown_086651C4
_0806A840:
	.4byte 0x000001B3
_0806A844:
	.4byte _0806A848
_0806A848:
	.4byte _0806A874
	.4byte _0806A8B8
	.4byte _0806A900
	.4byte _0806A95C
	.4byte _0806A9C8
	.4byte _0806AA24
	.4byte _0806AA68
	.4byte _0806AAB0
	.4byte _0806AB1C
	.4byte _0806AB88
	.4byte _0806AC00
_0806A874:
	ldr r0, _0806A8B0  @ =0x030006E4
	ldr r4, [r0]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806A8B4  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #8
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
_0806A8B0:
	.4byte 0x030006E4
_0806A8B4:
	.4byte gUnknown_086660E0
_0806A8B8:
	ldr r0, _0806A8F4  @ =0x030006E4
	ldr r4, [r0]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r7, _0806A8F8  @ =0x000001AD
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806A8FC  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #8
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
	.byte 0x00
	.byte 0x00
_0806A8F4:
	.4byte 0x030006E4
_0806A8F8:
	.4byte 0x000001AD
_0806A8FC:
	.4byte gUnknown_086660E0
_0806A900:
	ldr r6, _0806A950  @ =0x030006E4
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806A954  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #16
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r7, _0806A958  @ =0x000001AD
	add r2, r6, r7
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #16
	b _0806ABD6
_0806A950:
	.4byte 0x030006E4
_0806A954:
	.4byte gUnknown_086660E0
_0806A958:
	.4byte 0x000001AD
_0806A95C:
	ldr r6, _0806A9BC  @ =0x030006E4
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806A9C0  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #8
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r7, _0806A9C4  @ =0x000001AD
	add r2, r6, r7
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #8
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
_0806A9BC:
	.4byte 0x030006E4
_0806A9C0:
	.4byte gUnknown_086660E0
_0806A9C4:
	.4byte 0x000001AD
_0806A9C8:
	ldr r6, _0806AA18  @ =0x030006E4
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806AA1C  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #28
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r7, _0806AA20  @ =0x000001AD
	add r2, r6, r7
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #28
	b _0806ABD6
_0806AA18:
	.4byte 0x030006E4
_0806AA1C:
	.4byte gUnknown_086660E0
_0806AA20:
	.4byte 0x000001AD
_0806AA24:
	ldr r0, _0806AA60  @ =0x030006E4
	ldr r4, [r0]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806AA64  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #19
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
_0806AA60:
	.4byte 0x030006E4
_0806AA64:
	.4byte gUnknown_086660E0
_0806AA68:
	ldr r0, _0806AAA4  @ =0x030006E4
	ldr r4, [r0]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r7, _0806AAA8  @ =0x000001AD
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806AAAC  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #19
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
	.byte 0x00
	.byte 0x00
_0806AAA4:
	.4byte 0x030006E4
_0806AAA8:
	.4byte 0x000001AD
_0806AAAC:
	.4byte gUnknown_086660E0
_0806AAB0:
	ldr r6, _0806AB10  @ =0x030006E4
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806AB14  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #21
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r7, _0806AB18  @ =0x000001AD
	add r2, r6, r7
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #21
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
_0806AB10:
	.4byte 0x030006E4
_0806AB14:
	.4byte gUnknown_086660E0
_0806AB18:
	.4byte 0x000001AD
_0806AB1C:
	ldr r6, _0806AB7C  @ =0x030006E4
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806AB80  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #24
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r7, _0806AB84  @ =0x000001AD
	add r2, r6, r7
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #24
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
_0806AB7C:
	.4byte 0x030006E4
_0806AB80:
	.4byte gUnknown_086660E0
_0806AB84:
	.4byte 0x000001AD
_0806AB88:
	ldr r6, _0806ABF4  @ =0x030006E4
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806ABF8  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #29
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r7, _0806ABFC  @ =0x000001AD
	add r2, r6, r7
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #29
_0806ABD6:
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #174
_0806ABE6:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0806AC86
	.byte 0x00
	.byte 0x00
_0806ABF4:
	.4byte 0x030006E4
_0806ABF8:
	.4byte gUnknown_086660E0
_0806ABFC:
	.4byte 0x000001AD
_0806AC00:
	ldr r6, _0806ACD0  @ =0x030006E4
	ldr r1, [r6]
	mov r2, #217
	lsl r2, r2, #1
	add r1, r1, r2
	ldrb r0, [r1]
	add r0, r0, #1
	mov r7, #0
	strb r0, [r1]
	ldr r0, [r6]
	add r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #9
	bls _0806AC1E
	strb r7, [r1]
_0806AC1E:
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806ACD4  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #35
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r2, [r2]
	mov r12, r2
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r3, _0806ACD8  @ =0x000001AD
	add r2, r6, r3
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #35
	mov r3, r12
	bl sub_0804A748
	str r7, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #174
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806AC86:
	ldr r3, _0806ACD0  @ =0x030006E4
	ldr r1, [r3]
	ldr r2, _0806ACDC  @ =0x000001B3
	add r1, r1, r2
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, [r3]
	add r4, r1, r2
	ldr r3, _0806ACE0  @ =gUnknown_086651C4
	ldr r0, [r1]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r2, #7
	sub r2, r2, r0
	mov r5, #219
	lsl r5, r5, #1
	add r0, r1, r5
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r3
	ldrb r1, [r4]
	ldrb r0, [r0, #4]
	cmp r1, r0
	bcc _0806ACC6
	mov r0, #0
	strb r0, [r4]
_0806ACC6:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806ACD0:
	.4byte 0x030006E4
_0806ACD4:
	.4byte gUnknown_086660E0
_0806ACD8:
	.4byte 0x000001AD
_0806ACDC:
	.4byte 0x000001B3
_0806ACE0:
	.4byte gUnknown_086651C4
	THUMB_FUNC_END sub_0806A7B4

	THUMB_FUNC_START sub_0806ACE4
sub_0806ACE4: @ 0x0806ACE4
	push {r4-r7,lr}
	sub sp, sp, #12
	add r5, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #179
	ble _0806AD7C
	bl sub_0806CF2C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #179
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r4, _0806AD84  @ =0x030006E4
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806AD88  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	bl sub_0804A748
	ldr r5, [r4]
	add r0, r5, #0
	add r0, r0, #24
	ldr r1, [r5, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r5, #17]
	str r2, [sp]
	mov r6, #214
	lsl r6, r6, #1
	add r2, r5, r6
	ldrb r2, [r2]
	mov r6, #175
	lsl r6, r6, #4
	mul r2, r6, r2
	ldr r5, _0806AD8C  @ =gUnknown_086660E0
	add r2, r2, r5
	str r2, [sp, #4]
	mov r2, #48
	bl sub_0804A748
	ldr r4, [r4]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r7, _0806AD90  @ =0x000001AD
	add r2, r4, r7
	ldrb r2, [r2]
	mul r2, r6, r2
	add r2, r2, r5
	str r2, [sp, #4]
	mov r2, #49
	bl sub_0804A748
_0806AD7C:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_0806AD84:
	.4byte 0x030006E4
_0806AD88:
	.4byte gUnknown_086691BC
_0806AD8C:
	.4byte gUnknown_086660E0
_0806AD90:
	.4byte 0x000001AD
	THUMB_FUNC_END sub_0806ACE4

	THUMB_FUNC_START sub_0806AD94
sub_0806AD94: @ 0x0806AD94
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #52
	mov r8, r0
	ldr r1, [r0, #76]
	cmp r1, #0
	bge _0806ADA6
	b _0806B2D4
_0806ADA6:
	ldr r2, _0806AE70  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #176
	beq _0806ADB8
	b _0806B2C4
_0806ADB8:
	add r0, r1, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r2, #128
	lsl r2, r2, #16
	and r0, r0, r2
	cmp r0, #0
	bne _0806ADCC
	b _0806B2C4
_0806ADCC:
	mov r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #5
	bne _0806ADD6
	b _0806B2C4
_0806ADD6:
	cmp r0, #6
	bne _0806ADDC
	b _0806B2C4
_0806ADDC:
	cmp r0, #7
	bne _0806ADE2
	b _0806B2C4
_0806ADE2:
	cmp r0, #8
	bne _0806ADE8
	b _0806B2C4
_0806ADE8:
	mov r1, r8
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	mov r7, #0
	strb r0, [r1]
	lsl r0, r0, #24
	add r6, r1, #0
	cmp r0, #0
	bgt _0806ADFE
	b _0806B1A4
_0806ADFE:
	add r4, sp, #12
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r5, #0
	mov r0, #2
	strh r0, [r4, #2]
	str r7, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #238
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r4, _0806AE74  @ =0x030006E4
	ldr r0, [r4]
	ldr r0, [r0, #4]
	add r1, sp, #12
	mov r2, #2
	bl update_mario_action_0803ED98
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #24
	mov r1, r8
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806AE78  @ =gUnknown_086691BC
	str r1, [sp, #4]
	mov r1, r8
	mov r2, #5
	bl sub_0804A748
	ldr r0, [r4]
	ldr r7, _0806AE7C  @ =0x000001B3
	add r0, r0, r7
	strb r5, [r0]
	ldrb r0, [r6]
	sub r0, r0, #1
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bls _0806AE64
	b _0806B088
_0806AE64:
	lsl r0, r0, #2
	ldr r1, _0806AE80  @ =0x0806AE84
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0806AE70:
	.4byte gUnknown_03001940
_0806AE74:
	.4byte 0x030006E4
_0806AE78:
	.4byte gUnknown_086691BC
_0806AE7C:
	.4byte 0x000001B3
_0806AE80:
	.4byte _0806AE84
_0806AE84:
	.4byte _0806B030
	.4byte _0806AFD0
	.4byte _0806AF80
	.4byte _0806AF34
	.4byte _0806AEE8
	.4byte _0806AE9C
_0806AE9C:
	ldr r5, _0806AEE0  @ =0x030006E4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r7, #214
	lsl r7, r7, #1
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806AEE4  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #46
	bl sub_0804A748
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r0, #36]
	lsl r0, r0, #8
	b _0806B014
	.byte 0x00
	.byte 0x00
_0806AEE0:
	.4byte 0x030006E4
_0806AEE4:
	.4byte gUnknown_086660E0
_0806AEE8:
	ldr r5, _0806AF28  @ =0x030006E4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r7, _0806AF2C  @ =0x000001AD
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806AF30  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #46
	bl sub_0804A748
	ldr r0, [r5]
	ldr r0, [r0, #12]
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r0, #36]
	lsl r0, r0, #8
	b _0806B014
_0806AF28:
	.4byte 0x030006E4
_0806AF2C:
	.4byte 0x000001AD
_0806AF30:
	.4byte gUnknown_086660E0
_0806AF34:
	ldr r5, _0806AF78  @ =0x030006E4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r7, #214
	lsl r7, r7, #1
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806AF7C  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #46
	bl sub_0804A748
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r0, #36]
	asr r0, r0, #8
	add r0, r0, #8
	b _0806B012
_0806AF78:
	.4byte 0x030006E4
_0806AF7C:
	.4byte gUnknown_086660E0
_0806AF80:
	ldr r5, _0806AFC4  @ =0x030006E4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r7, _0806AFC8  @ =0x000001AD
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806AFCC  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #46
	bl sub_0804A748
	ldr r0, [r5]
	ldr r0, [r0, #12]
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r0, #36]
	asr r0, r0, #8
	add r0, r0, #8
	b _0806B012
	.byte 0x00
	.byte 0x00
_0806AFC4:
	.4byte 0x030006E4
_0806AFC8:
	.4byte 0x000001AD
_0806AFCC:
	.4byte gUnknown_086660E0
_0806AFD0:
	ldr r5, _0806B028  @ =0x030006E4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r7, #214
	lsl r7, r7, #1
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806B02C  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #46
	bl sub_0804A748
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r0, #36]
	asr r0, r0, #8
	add r0, r0, #16
_0806B012:
	lsl r0, r0, #16
_0806B014:
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	bl spawn_sprite_08038DF4
	b _0806B088
_0806B028:
	.4byte 0x030006E4
_0806B02C:
	.4byte gUnknown_086660E0
_0806B030:
	ldr r5, _0806B0F4  @ =0x030006E4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r7, _0806B0F8  @ =0x000001AD
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806B0FC  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #46
	bl sub_0804A748
	ldr r0, [r5]
	ldr r0, [r0, #12]
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r0, #36]
	asr r0, r0, #8
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	bl spawn_sprite_08038DF4
	bl sub_0806C7CC
_0806B088:
	ldrb r1, [r6]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806B108
	ldr r2, _0806B100  @ =0x03001D64
	ldr r0, _0806B0F4  @ =0x030006E4
	ldr r4, [r0]
	mov r1, #132
	lsl r1, r1, #1
	add r0, r4, r1
	mov r3, #0
	ldrsh r0, [r0, r3]
	lsl r0, r0, #8
	ldr r1, [r4, #8]
	ldr r1, [r1, #32]
	sub r0, r0, r1
	asr r0, r0, #5
	strh r0, [r2]
	ldr r2, _0806B104  @ =0x03001D68
	mov r5, #133
	lsl r5, r5, #1
	add r0, r4, r5
	mov r6, #0
	ldrsh r0, [r0, r6]
	lsl r0, r0, #8
	ldr r1, [r4, #8]
	ldr r1, [r1, #36]
	sub r0, r0, r1
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r2]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r7, #214
	lsl r7, r7, #1
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806B0FC  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #14
	bl sub_0804A748
	b _0806B166
_0806B0F4:
	.4byte 0x030006E4
_0806B0F8:
	.4byte 0x000001AD
_0806B0FC:
	.4byte gUnknown_086660E0
_0806B100:
	.4byte 0x03001D64
_0806B104:
	.4byte 0x03001D68
_0806B108:
	ldr r3, _0806B18C  @ =0x03001D58
	ldr r0, _0806B190  @ =0x030006E4
	ldr r4, [r0]
	ldr r2, [r4, #12]
	mov r1, #134
	lsl r1, r1, #1
	add r0, r4, r1
	mov r5, #0
	ldrsh r1, [r0, r5]
	lsl r1, r1, #8
	ldr r0, [r2, #32]
	sub r0, r0, r1
	asr r0, r0, #5
	strh r0, [r3]
	ldr r2, _0806B194  @ =0x03001D5C
	mov r6, #135
	lsl r6, r6, #1
	add r0, r4, r6
	mov r7, #0
	ldrsh r0, [r0, r7]
	lsl r0, r0, #8
	ldr r1, [r4, #12]
	ldr r1, [r1, #36]
	sub r0, r0, r1
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r2]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r5, _0806B198  @ =0x000001AD
	add r2, r4, r5
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806B19C  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #15
	bl sub_0804A748
_0806B166:
	ldr r2, _0806B1A0  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	mov r6, r8
	ldr r2, [r6, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r6, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #18
	mov r1, #0
	bl sub_0804138C
	b _0806B27E
	.byte 0x00
	.byte 0x00
_0806B18C:
	.4byte 0x03001D58
_0806B190:
	.4byte 0x030006E4
_0806B194:
	.4byte 0x03001D5C
_0806B198:
	.4byte 0x000001AD
_0806B19C:
	.4byte gUnknown_086660E0
_0806B1A0:
	.4byte gUnknown_03001A1C
_0806B1A4:
	ldr r1, _0806B294  @ =gUnknown_03001A1C
	ldr r0, [r1]
	orr r0, r0, r2
	str r0, [r1]
	ldr r4, _0806B298  @ =0x030006E4
	ldr r0, [r4]
	ldr r2, _0806B29C  @ =0x00000119
	add r1, r0, r2
	mov r0, #1
	strb r0, [r1]
	bl sound_stop_music
	str r7, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #242
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r4]
	ldr r0, [r0, #4]
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #24
	mov r1, r8
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806B2A0  @ =gUnknown_086691BC
	str r1, [sp, #4]
	mov r1, r8
	mov r2, #6
	bl sub_0804A748
	ldr r5, [r4]
	add r0, r5, #0
	add r0, r0, #24
	ldr r1, [r5, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r5, #17]
	str r2, [sp]
	mov r6, #214
	lsl r6, r6, #1
	add r2, r5, r6
	ldrb r2, [r2]
	mov r6, #175
	lsl r6, r6, #4
	mul r2, r6, r2
	ldr r5, _0806B2A4  @ =gUnknown_086660E0
	add r2, r2, r5
	str r2, [sp, #4]
	mov r2, #47
	bl sub_0804A748
	ldr r4, [r4]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r2, [r2]
	mov r12, r2
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r3, _0806B2A8  @ =0x000001AD
	add r2, r4, r3
	ldrb r2, [r2]
	mul r2, r6, r2
	add r2, r2, r5
	str r2, [sp, #4]
	mov r2, #47
	mov r3, r12
	bl sub_0804A748
	ldr r0, _0806B2AC  @ =0x03001D64
	strh r7, [r0]
	ldr r0, _0806B2B0  @ =0x03001D68
	strh r7, [r0]
	ldr r0, _0806B2B4  @ =0x03001D58
	strh r7, [r0]
	ldr r0, _0806B2B8  @ =0x03001D5C
	strh r7, [r0]
	ldr r2, _0806B2BC  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #11
	orr r0, r0, r1
	str r0, [r2]
	mov r5, r8
	ldr r2, [r5, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r5, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #18
	mov r1, #0
	bl sub_0804138C
_0806B27E:
	mov r0, #1
	neg r0, r0
	mov r6, r8
	str r0, [r6, #76]
	ldr r0, [r6, #92]
	ldr r1, _0806B2C0  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r6, #92]
	mov r0, #1
	b _0806B2D6
	.byte 0x00
	.byte 0x00
_0806B294:
	.4byte gUnknown_03001A1C
_0806B298:
	.4byte 0x030006E4
_0806B29C:
	.4byte 0x00000119
_0806B2A0:
	.4byte gUnknown_086691BC
_0806B2A4:
	.4byte gUnknown_086660E0
_0806B2A8:
	.4byte 0x000001AD
_0806B2AC:
	.4byte 0x03001D64
_0806B2B0:
	.4byte 0x03001D68
_0806B2B4:
	.4byte 0x03001D58
_0806B2B8:
	.4byte 0x03001D5C
_0806B2BC:
	.4byte gUnknown_030019A0
_0806B2C0:
	.4byte 0xFFFFFF00
_0806B2C4:
	mov r0, #1
	neg r0, r0
	mov r7, r8
	str r0, [r7, #76]
	ldr r0, [r7, #92]
	ldr r1, _0806B2E4  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r7, #92]
_0806B2D4:
	mov r0, #0
_0806B2D6:
	add sp, sp, #52
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0806B2E4:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0806AD94

	THUMB_FUNC_START sub_0806B2E8
sub_0806B2E8: @ 0x0806B2E8
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r3, _0806B31C  @ =0x030006E4
	ldr r0, [r3]
	mov r1, #140
	lsl r1, r1, #1
	add r4, r0, r1
	ldrb r5, [r4]
	ldr r2, _0806B320  @ =gUnknown_08665844
	ldr r0, [r0]
	add r0, r0, #52
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #7
	sub r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	ldrb r0, [r0]
	sub r0, r0, #1
	mov r12, r3
	add r7, r2, #0
	cmp r5, r0
	blt _0806B324
	mov r0, #0
	b _0806B326
	.byte 0x00
	.byte 0x00
_0806B31C:
	.4byte 0x030006E4
_0806B320:
	.4byte gUnknown_08665844
_0806B324:
	add r0, r5, #1
_0806B326:
	strb r0, [r4]
	mov r0, r12
	ldr r2, [r0]
	mov r6, #138
	lsl r6, r6, #1
	add r3, r2, r6
	ldr r0, [r2]
	add r0, r0, #52
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #7
	sub r0, r0, r1
	lsl r0, r0, #3
	add r1, r7, #4
	add r0, r0, r1
	mov r1, #140
	lsl r1, r1, #1
	add r2, r2, r1
	ldrb r1, [r2]
	lsl r1, r1, #3
	ldr r0, [r0]
	add r0, r0, r1
	str r0, [r3]
	mov r4, #0
	ldrb r0, [r0]
	cmp r4, r0
	bcs _0806B398
	mov r5, r12
	mov r7, #0
_0806B360:
	ldr r0, [r5]
	ldr r1, _0806B3A0  @ =0x00000113
	add r0, r0, r1
	strb r4, [r0]
	ldr r0, [r5]
	add r0, r0, r6
	ldr r0, [r0]
	ldr r1, [r0, #4]
	lsl r0, r4, #3
	add r0, r0, r1
	ldrb r1, [r0]
	ldrh r3, [r0, #2]
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, #255
	mov r2, #1
	neg r2, r2
	bl spawn_sprite_08038DF4
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, [r5]
	add r0, r0, r6
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r4, r0
	bcc _0806B360
_0806B398:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
_0806B3A0:
	.4byte 0x00000113
	THUMB_FUNC_END sub_0806B2E8

	THUMB_FUNC_START sub_0806B3A4
sub_0806B3A4: @ 0x0806B3A4
	push {r4,lr}
	mov r3, #0
	ldr r0, _0806B3D8  @ =gUnknown_03001B98 
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806B3E8
	ldr r0, _0806B3DC  @ =0x030006E4
	ldr r0, [r0]
	ldr r0, [r0]
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _0806B3E0  @ =0x000001D1
	cmp r1, r0
	beq _0806B3D2
	mov r0, #240
	lsl r0, r0, #1
	cmp r1, r0
	beq _0806B428
	ldr r0, _0806B3E4  @ =0x000001EF
	cmp r1, r0
	beq _0806B3D2
	b _0806B4EE
_0806B3D2:
	mov r3, #16
	b _0806B4EE
	.byte 0x00
	.byte 0x00
_0806B3D8:
	.4byte gUnknown_03001B98 
_0806B3DC:
	.4byte 0x030006E4
_0806B3E0:
	.4byte 0x000001D1
_0806B3E4:
	.4byte 0x000001EF
_0806B3E8:
	ldr r0, _0806B408  @ =0x030006E4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	mov r2, #4
	ldrsh r1, [r1, r2]
	add r2, r0, #0
	cmp r1, #5
	bgt _0806B414
	ldr r0, _0806B40C  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r0, #32]
	ldr r0, _0806B410  @ =0x000043FF
	cmp r1, r0
	bgt _0806B4EE
	b _0806B3D2
	.byte 0x00
	.byte 0x00
_0806B408:
	.4byte 0x030006E4
_0806B40C:
	.4byte gUnknown_030019AC
_0806B410:
	.4byte 0x000043FF
_0806B414:
	cmp r1, #6
	bne _0806B430
	ldr r0, _0806B42C  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0806B430
_0806B428:
	mov r3, #32
	b _0806B4EE
_0806B42C:
	.4byte gUnknown_030019AC
_0806B430:
	ldr r1, [r2]
	ldr r0, [r1, #8]
	mov r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #6
	ble _0806B4EE
	ldr r1, [r1]
	mov r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #1
	bne _0806B4EE
	add r0, r1, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r0, #232
	lsl r0, r0, #1
	cmp r1, r0
	bgt _0806B4C8
	ldr r1, _0806B48C  @ =gUnknown_030019AC
	ldr r2, [r1]
	ldr r4, [r2, #32]
	ldr r0, _0806B490  @ =0x000063FF
	cmp r4, r0
	bgt _0806B470
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0806B484
_0806B470:
	ldr r0, _0806B494  @ =0x0000A3FF
	cmp r4, r0
	bgt _0806B498
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0806B4AA
_0806B484:
	mov r0, #16
	orr r3, r3, r0
	b _0806B4EE
	.byte 0x00
	.byte 0x00
_0806B48C:
	.4byte gUnknown_030019AC
_0806B490:
	.4byte 0x000063FF
_0806B494:
	.4byte 0x0000A3FF
_0806B498:
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0806B4AA
	mov r0, #32
	b _0806B4E8
_0806B4AA:
	ldr r2, [r1]
	ldr r1, [r2, #32]
	mov r0, #224
	lsl r0, r0, #7
	cmp r1, r0
	ble _0806B4EE
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0806B4EE
	mov r0, #32
	b _0806B4E8
_0806B4C8:
	ldr r0, _0806B4DC  @ =0x000001D1
	cmp r1, r0
	beq _0806B4E6
	mov r0, #240
	lsl r0, r0, #1
	cmp r1, r0
	bne _0806B4E0
	mov r0, #32
	b _0806B4E8
	.byte 0x00
	.byte 0x00
_0806B4DC:
	.4byte 0x000001D1
_0806B4E0:
	ldr r0, _0806B4F8  @ =0x000001EF
	cmp r1, r0
	bne _0806B4EE
_0806B4E6:
	mov r0, #16
_0806B4E8:
	orr r3, r3, r0
	lsl r0, r3, #16
	lsr r3, r0, #16
_0806B4EE:
	add r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0806B4F8:
	.4byte 0x000001EF
	THUMB_FUNC_END sub_0806B3A4

	THUMB_FUNC_START sub_0806B4FC
sub_0806B4FC: @ 0x0806B4FC
	push {r4,r5,lr}
	sub sp, sp, #12
	mov r5, #0
	ldr r0, _0806B53C  @ =0x030006E4
	ldr r2, [r0]
	ldr r0, [r2]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #7
	ble _0806B5F6
	mov r0, #216
	lsl r0, r0, #1
	add r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0806B548
	ldr r0, _0806B540  @ =gUnknown_030019AC
	ldr r0, [r0]
	mov r3, #4
	ldrsh r1, [r0, r3]
	mov r0, #242
	lsl r0, r0, #1
	cmp r1, r0
	beq _0806B572
	ldr r1, _0806B544  @ =0x000001B1
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806B5F6
	mov r5, #64
	b _0806B5F6
	.byte 0x00
	.byte 0x00
_0806B53C:
	.4byte 0x030006E4
_0806B540:
	.4byte gUnknown_030019AC
_0806B544:
	.4byte 0x000001B1
_0806B548:
	ldr r0, _0806B564  @ =gUnknown_030019AC
	ldr r2, [r0]
	ldr r1, [r2, #36]
	ldr r0, _0806B568  @ =0x00007FFF
	cmp r1, r0
	ble _0806B55E
	ldr r1, [r2, #32]
	mov r0, #132
	lsl r0, r0, #6
	cmp r1, r0
	ble _0806B56C
_0806B55E:
	mov r5, #32
	b _0806B5F6
	.byte 0x00
	.byte 0x00
_0806B564:
	.4byte gUnknown_030019AC
_0806B568:
	.4byte 0x00007FFF
_0806B56C:
	ldr r0, _0806B578  @ =0x00001EFF
	cmp r1, r0
	bgt _0806B57C
_0806B572:
	mov r5, #16
	b _0806B5F6
	.byte 0x00
	.byte 0x00
_0806B578:
	.4byte 0x00001EFF
_0806B57C:
	mov r0, #1
	strb r0, [r3]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #245
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r4, #144
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #16
	bl spawn_sprite_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #24
	bl spawn_sprite_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #32
	bl spawn_sprite_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #40
	bl spawn_sprite_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #48
	bl spawn_sprite_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #56
	bl spawn_sprite_08038DF4
_0806B5F6:
	add r0, r5, #0
	add sp, sp, #12
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806B4FC

	THUMB_FUNC_START sub_0806B600
sub_0806B600: @ 0x0806B600
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r6, _0806B690  @ =0x030006E4
	ldr r0, [r6]
	mov r1, #200
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r4, _0806B694  @ =gVRAMCurrTileNum_03001930
	ldrh r1, [r4]
	str r1, [r0]
	ldr r0, _0806B698  @ =gUnknown_081C1A20
	ldr r5, _0806B69C  @ =gObjVRAMCopyOffset_0300192C
	mov r3, #128
	lsl r3, r3, #2
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0800F0C4
	ldr r1, [r6]
	mov r2, #202
	lsl r2, r2, #1
	add r1, r1, r2
	str r0, [r1]
	ldr r0, _0806B6A0  @ =gUnknown_081C209C
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #128
	bl sub_0800F0C4
	ldr r1, [r6]
	mov r2, #204
	lsl r2, r2, #1
	add r1, r1, r2
	str r0, [r1]
	ldr r0, _0806B6A4  @ =gUnknown_081C1C70
	mov r1, #128
	lsl r1, r1, #3
	mov r8, r1
	add r1, r4, #0
	add r2, r5, #0
	mov r3, r8
	bl sub_0800F0C4
	ldr r1, [r6]
	mov r2, #206
	lsl r2, r2, #1
	add r1, r1, r2
	str r0, [r1]
	ldr r0, _0806B6A8  @ =gUnknown_081C216C
	mov r3, #128
	lsl r3, r3, #1
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0800F0C4
	ldr r1, [r6]
	mov r2, #208
	lsl r2, r2, #1
	add r1, r1, r2
	str r0, [r1]
	ldr r0, _0806B6AC  @ =gUnknown_08208514
	add r1, r4, #0
	add r2, r5, #0
	mov r3, r8
	bl sub_0800F0C4
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
_0806B690:
	.4byte 0x030006E4
_0806B694:
	.4byte gVRAMCurrTileNum_03001930
_0806B698:
	.4byte gUnknown_081C1A20
_0806B69C:
	.4byte gObjVRAMCopyOffset_0300192C
_0806B6A0:
	.4byte gUnknown_081C209C
_0806B6A4:
	.4byte gUnknown_081C1C70
_0806B6A8:
	.4byte gUnknown_081C216C
_0806B6AC:
	.4byte gUnknown_08208514
	THUMB_FUNC_END sub_0806B600

	THUMB_FUNC_START sub_0806B6B0
sub_0806B6B0: @ 0x0806B6B0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #176
	mov r1, #0
	ldr r0, _0806B91C  @ =gUnknown_081E3378
	str r0, [sp]
	ldr r2, _0806B920  @ =gUnknown_081E3380
	str r2, [sp, #4]
	ldr r0, _0806B924  @ =gUnknown_081E327C
	str r0, [sp, #8]
	mov r0, sp
	mov r4, #0
	strh r1, [r0, #12]
	ldr r1, _0806B928  @ =0x030006E4
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	ldr r2, _0806B92C  @ =0xFFFFE000
	add r0, r0, r2
	str r0, [sp, #16]
	ldr r0, [r1, #32]
	add r0, r0, r2
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #20]
	ldr r0, [r1, #36]
	str r0, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	mov r0, sp
	mov r5, #64
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	add r7, sp, #56
	mov r2, #48
	strb r2, [r7]
	mov r1, #7
	strh r1, [r0, #58]
	ldr r0, _0806B930  @ =0x00000481
	str r0, [sp, #60]
	mov r0, sp
	strh r4, [r0, #40]
	str r4, [sp, #44]
	str r4, [sp, #48]
	add r2, sp, #64
	mov r10, r2
	strh r5, [r2]
	mov r0, #66
	add r0, sp, r0
	mov r9, r0
	mov r1, #128
	lsl r1, r1, #4
	strh r1, [r0]
	add r6, sp, #68
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	str r4, [sp, #72]
	mov r0, #14
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r1, _0806B91C  @ =gUnknown_081E3378
	str r1, [sp]
	ldr r2, _0806B920  @ =gUnknown_081E3380
	str r2, [sp, #4]
	ldr r0, _0806B924  @ =gUnknown_081E327C
	str r0, [sp, #8]
	mov r0, sp
	mov r1, #1
	strh r1, [r0, #12]
	ldr r2, _0806B928  @ =0x030006E4
	ldr r0, [r2]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	mov r2, #128
	lsl r2, r2, #6
	mov r8, r2
	add r0, r0, r8
	str r0, [sp, #16]
	ldr r0, [r1, #32]
	add r0, r0, r8
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #20]
	ldr r0, [r1, #36]
	str r0, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	mov r0, sp
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #48
	strb r0, [r7]
	mov r0, sp
	mov r1, #7
	strh r1, [r0, #58]
	mov r0, #144
	lsl r0, r0, #3
	str r0, [sp, #60]
	mov r0, sp
	strh r4, [r0, #40]
	str r4, [sp, #44]
	str r4, [sp, #48]
	mov r2, r10
	strh r5, [r2]
	mov r1, #128
	lsl r1, r1, #4
	mov r0, r9
	strh r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	str r4, [sp, #72]
	mov r0, #14
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r1, _0806B934  @ =gUnknown_081E0274
	str r1, [sp]
	ldr r2, _0806B938  @ =gUnknown_081E027C
	str r2, [sp, #4]
	ldr r0, _0806B93C  @ =gUnknown_081E019C
	str r0, [sp, #8]
	mov r0, sp
	mov r1, #2
	strh r1, [r0, #12]
	ldr r2, _0806B928  @ =0x030006E4
	ldr r0, [r2]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	ldr r2, _0806B92C  @ =0xFFFFE000
	add r0, r0, r2
	str r0, [sp, #16]
	ldr r0, [r1, #32]
	add r0, r0, r2
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #20]
	ldr r0, [r1, #36]
	str r0, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	mov r0, sp
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #48
	strb r0, [r7]
	mov r0, sp
	mov r1, #6
	strh r1, [r0, #58]
	ldr r0, _0806B940  @ =0x00000681
	str r0, [sp, #60]
	mov r0, sp
	mov r2, #16
	strh r2, [r0, #40]
	ldr r0, _0806B944  @ =gDKMechFallingXVelAnim_0866954C
	str r0, [sp, #44]
	ldr r1, _0806B948  @ =gDKMechFallingYVelAnim_0866958C
	str r1, [sp, #48]
	mov r2, r10
	strh r5, [r2]
	mov r1, #128
	lsl r1, r1, #4
	mov r0, r9
	strh r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	mov r0, #14
	str r0, [sp, #72]
	mov r1, #165
	lsl r1, r1, #1
	str r1, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r2, _0806B934  @ =gUnknown_081E0274
	str r2, [sp]
	ldr r0, _0806B938  @ =gUnknown_081E027C
	str r0, [sp, #4]
	ldr r1, _0806B93C  @ =gUnknown_081E019C
	str r1, [sp, #8]
	mov r0, sp
	mov r2, #3
	strh r2, [r0, #12]
	ldr r1, _0806B928  @ =0x030006E4
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	add r0, r0, r8
	str r0, [sp, #16]
	ldr r0, [r1, #32]
	add r0, r0, r8
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #20]
	ldr r0, [r1, #36]
	str r0, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	mov r0, sp
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r2, #48
	strb r2, [r7]
	mov r1, #6
	strh r1, [r0, #58]
	mov r0, #208
	lsl r0, r0, #3
	str r0, [sp, #60]
	mov r0, sp
	mov r2, #16
	strh r2, [r0, #40]
	ldr r0, _0806B944  @ =gDKMechFallingXVelAnim_0866954C
	str r0, [sp, #44]
	ldr r1, _0806B948  @ =gDKMechFallingYVelAnim_0866958C
	str r1, [sp, #48]
	mov r2, r10
	strh r5, [r2]
	mov r1, #128
	lsl r1, r1, #4
	mov r0, r9
	strh r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	mov r0, #14
	str r0, [sp, #72]
	mov r1, #165
	lsl r1, r1, #1
	str r1, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _0806B94C  @ =gUnknown_082034E0
	str r0, [sp]
	ldr r0, _0806B950  @ =gUnknown_082034E8
	str r0, [sp, #4]
	ldr r0, _0806B954  @ =gUnknown_082031EC
	str r0, [sp, #8]
	mov r0, sp
	mov r2, #4
	strh r2, [r0, #12]
	ldr r1, _0806B928  @ =0x030006E4
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	str r0, [sp, #16]
	ldr r0, [r1, #32]
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #20]
	ldr r0, [r1, #36]
	str r0, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	mov r0, sp
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r2, #0
	strb r2, [r7]
	mov r1, sp
	mov r0, #21
	strh r0, [r1, #58]
	mov r0, #160
	lsl r0, r0, #2
	str r0, [sp, #60]
	mov r0, #30
	strh r0, [r1, #40]
	ldr r0, _0806B958  @ =gDKFlyOutMechXVelAnim_0866945C
	str r0, [sp, #44]
	ldr r0, _0806B95C  @ =gDKFlyOutMechYVelAnim_086694D4
	str r0, [sp, #48]
	mov r0, #128
	mov r1, r10
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #5
	mov r2, r9
	strh r0, [r2]
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r6]
	str r4, [sp, #72]
	mov r0, #60
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	add r0, sp, #124
	mov r1, #165
	lsl r1, r1, #1
	str r1, [sp, #124]
	bl sub_080572B8
	add sp, sp, #176
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806B91C:
	.4byte gUnknown_081E3378
_0806B920:
	.4byte gUnknown_081E3380
_0806B924:
	.4byte gUnknown_081E327C
_0806B928:
	.4byte 0x030006E4
_0806B92C:
	.4byte 0xFFFFE000
_0806B930:
	.4byte 0x00000481
_0806B934:
	.4byte gUnknown_081E0274
_0806B938:
	.4byte gUnknown_081E027C
_0806B93C:
	.4byte gUnknown_081E019C
_0806B940:
	.4byte 0x00000681
_0806B944:
	.4byte gDKMechFallingXVelAnim_0866954C
_0806B948:
	.4byte gDKMechFallingYVelAnim_0866958C
_0806B94C:
	.4byte gUnknown_082034E0
_0806B950:
	.4byte gUnknown_082034E8
_0806B954:
	.4byte gUnknown_082031EC
_0806B958:
	.4byte gDKFlyOutMechXVelAnim_0866945C
_0806B95C:
	.4byte gDKFlyOutMechYVelAnim_086694D4
	THUMB_FUNC_END sub_0806B6B0

	THUMB_FUNC_START sub_0806B960
sub_0806B960: @ 0x0806B960
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #100
	str r0, [sp, #84]
	str r1, [sp, #88]
	str r2, [sp, #92]
	str r3, [sp, #96]
	mov r1, #0
	ldr r0, _0806BBFC  @ =gUnknown_081E3378
	str r0, [sp, #4]
	ldr r2, _0806BC00  @ =gUnknown_081E3380
	str r2, [sp, #8]
	ldr r0, _0806BC04  @ =gUnknown_081E327C
	str r0, [sp, #12]
	add r0, sp, #4
	mov r4, #0
	strh r1, [r0, #12]
	ldr r1, _0806BC08  @ =0x030006E4
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	ldr r2, _0806BC0C  @ =0xFFFFE000
	add r0, r0, r2
	str r0, [sp, #20]
	ldr r0, [r1, #32]
	add r0, r0, r2
	str r0, [sp, #28]
	ldr r0, [r1, #36]
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	add r0, sp, #4
	mov r5, #64
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	add r7, sp, #60
	mov r2, #48
	strb r2, [r7]
	mov r1, #7
	strh r1, [r0, #58]
	ldr r0, _0806BC10  @ =0x00000481
	str r0, [sp, #64]
	add r0, sp, #4
	strh r4, [r0, #40]
	str r4, [sp, #48]
	str r4, [sp, #52]
	add r2, sp, #68
	mov r10, r2
	strh r5, [r2]
	mov r0, #70
	add r0, sp, r0
	mov r9, r0
	mov r1, #128
	lsl r1, r1, #4
	strh r1, [r0]
	add r6, sp, #72
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	str r4, [sp, #76]
	mov r0, #14
	str r0, [sp, #80]
	add r1, sp, #4
	str r1, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r2, _0806BBFC  @ =gUnknown_081E3378
	str r2, [sp, #4]
	ldr r0, _0806BC00  @ =gUnknown_081E3380
	str r0, [sp, #8]
	ldr r1, _0806BC04  @ =gUnknown_081E327C
	str r1, [sp, #12]
	add r0, sp, #4
	mov r2, #1
	strh r2, [r0, #12]
	ldr r1, _0806BC08  @ =0x030006E4
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	mov r2, #128
	lsl r2, r2, #6
	mov r8, r2
	add r0, r0, r8
	str r0, [sp, #20]
	ldr r0, [r1, #32]
	add r0, r0, r8
	str r0, [sp, #28]
	ldr r0, [r1, #36]
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	add r0, sp, #4
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #48
	strb r0, [r7]
	add r0, sp, #4
	mov r1, #7
	strh r1, [r0, #58]
	mov r0, #144
	lsl r0, r0, #3
	str r0, [sp, #64]
	add r0, sp, #4
	strh r4, [r0, #40]
	str r4, [sp, #48]
	str r4, [sp, #52]
	mov r2, r10
	strh r5, [r2]
	mov r1, #128
	lsl r1, r1, #4
	mov r0, r9
	strh r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	str r4, [sp, #76]
	mov r0, #14
	str r0, [sp, #80]
	add r1, sp, #4
	str r1, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r2, _0806BC14  @ =gUnknown_081E0274
	str r2, [sp, #4]
	ldr r0, _0806BC18  @ =gUnknown_081E027C
	str r0, [sp, #8]
	ldr r1, _0806BC1C  @ =gUnknown_081E019C
	str r1, [sp, #12]
	add r0, sp, #4
	mov r2, #2
	strh r2, [r0, #12]
	ldr r1, _0806BC08  @ =0x030006E4
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	ldr r2, _0806BC0C  @ =0xFFFFE000
	add r0, r0, r2
	str r0, [sp, #20]
	ldr r0, [r1, #32]
	add r0, r0, r2
	str r0, [sp, #28]
	ldr r0, [r1, #36]
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	add r0, sp, #4
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #48
	strb r0, [r7]
	add r0, sp, #4
	mov r1, #6
	strh r1, [r0, #58]
	ldr r0, _0806BC20  @ =0x00000681
	str r0, [sp, #64]
	add r0, sp, #4
	mov r2, #16
	strh r2, [r0, #40]
	ldr r0, _0806BC24  @ =gDKMechFallingXVelAnim_0866954C
	str r0, [sp, #48]
	ldr r1, _0806BC28  @ =gDKMechFallingYVelAnim_0866958C
	str r1, [sp, #52]
	mov r2, r10
	strh r5, [r2]
	mov r1, #128
	lsl r1, r1, #4
	mov r0, r9
	strh r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	mov r0, #14
	str r0, [sp, #76]
	mov r1, #165
	lsl r1, r1, #1
	str r1, [sp, #80]
	add r2, sp, #4
	str r2, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _0806BC14  @ =gUnknown_081E0274
	str r0, [sp, #4]
	ldr r1, _0806BC18  @ =gUnknown_081E027C
	str r1, [sp, #8]
	ldr r2, _0806BC1C  @ =gUnknown_081E019C
	str r2, [sp, #12]
	add r0, sp, #4
	mov r1, #3
	strh r1, [r0, #12]
	ldr r2, _0806BC08  @ =0x030006E4
	ldr r0, [r2]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	add r0, r0, r8
	str r0, [sp, #20]
	ldr r0, [r1, #32]
	add r0, r0, r8
	str r0, [sp, #28]
	ldr r0, [r1, #36]
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	add r0, sp, #4
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #48
	strb r0, [r7]
	add r0, sp, #4
	mov r1, #6
	strh r1, [r0, #58]
	mov r0, #208
	lsl r0, r0, #3
	str r0, [sp, #64]
	add r0, sp, #4
	mov r2, #16
	strh r2, [r0, #40]
	ldr r0, _0806BC24  @ =gDKMechFallingXVelAnim_0866954C
	str r0, [sp, #48]
	ldr r1, _0806BC28  @ =gDKMechFallingYVelAnim_0866958C
	str r1, [sp, #52]
	mov r2, r10
	strh r5, [r2]
	mov r1, #128
	lsl r1, r1, #4
	mov r0, r9
	strh r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	mov r0, #14
	str r0, [sp, #76]
	mov r1, #165
	lsl r1, r1, #1
	str r1, [sp, #80]
	add r2, sp, #4
	str r2, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _0806BC2C  @ =gUnknown_082034E0
	str r0, [sp, #4]
	ldr r0, _0806BC30  @ =gUnknown_082034E8
	str r0, [sp, #8]
	ldr r0, _0806BC34  @ =gUnknown_082031EC
	str r0, [sp, #12]
	add r0, sp, #4
	mov r1, #4
	strh r1, [r0, #12]
	ldr r2, _0806BC08  @ =0x030006E4
	ldr r0, [r2]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	str r0, [sp, #20]
	ldr r0, [r1, #32]
	str r0, [sp, #28]
	ldr r0, [r1, #36]
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	add r0, sp, #4
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #0
	strb r0, [r7]
	add r1, sp, #4
	mov r0, #21
	strh r0, [r1, #58]
	mov r0, #160
	lsl r0, r0, #2
	str r0, [sp, #64]
	mov r0, #30
	strh r0, [r1, #40]
	ldr r0, _0806BC38  @ =gDKFlyOutMechXVelAnim_0866945C
	str r0, [sp, #48]
	ldr r0, _0806BC3C  @ =gDKFlyOutMechYVelAnim_086694D4
	str r0, [sp, #52]
	mov r0, #128
	mov r1, r10
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #5
	mov r2, r9
	strh r0, [r2]
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r6]
	str r4, [sp, #76]
	mov r0, #60
	str r0, [sp, #80]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	add sp, sp, #100
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806BBFC:
	.4byte gUnknown_081E3378
_0806BC00:
	.4byte gUnknown_081E3380
_0806BC04:
	.4byte gUnknown_081E327C
_0806BC08:
	.4byte 0x030006E4
_0806BC0C:
	.4byte 0xFFFFE000
_0806BC10:
	.4byte 0x00000481
_0806BC14:
	.4byte gUnknown_081E0274
_0806BC18:
	.4byte gUnknown_081E027C
_0806BC1C:
	.4byte gUnknown_081E019C
_0806BC20:
	.4byte 0x00000681
_0806BC24:
	.4byte gDKMechFallingXVelAnim_0866954C
_0806BC28:
	.4byte gDKMechFallingYVelAnim_0866958C
_0806BC2C:
	.4byte gUnknown_082034E0
_0806BC30:
	.4byte gUnknown_082034E8
_0806BC34:
	.4byte gUnknown_082031EC
_0806BC38:
	.4byte gDKFlyOutMechXVelAnim_0866945C
_0806BC3C:
	.4byte gDKFlyOutMechYVelAnim_086694D4
	THUMB_FUNC_END sub_0806B960

	THUMB_FUNC_START sub_0806BC40
sub_0806BC40: @ 0x0806BC40
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r0, _0806BEFC  @ =0x030006E4
	ldr r7, [r0]
	ldr r1, [r7, #8]
	ldr r2, [r7]
	ldr r3, [r1, #32]
	ldr r0, [r2, #32]
	sub r3, r3, r0
	mov r4, #128
	lsl r4, r4, #4
	add r3, r3, r4
	ldr r4, [r1, #36]
	ldr r5, [r2, #36]
	mov r10, r5
	sub r4, r4, r5
	ldr r5, _0806BF00  @ =0xFFFFE000
	add r4, r4, r5
	ldr r1, [r7, #12]
	ldr r6, [r1, #32]
	sub r6, r6, r0
	mov r9, r6
	ldr r6, _0806BF04  @ =0xFFFFD800
	add r9, r9, r6
	ldr r1, [r1, #36]
	mov r8, r1
	mov r6, r10
	sub r1, r1, r6
	mov r8, r1
	add r8, r8, r5
	mov r5, #144
	lsl r5, r5, #1
	add r1, r7, r5
	asr r6, r3, #1
	add r0, r0, r6
	asr r5, r3, #2
	mov r10, r5
	add r0, r0, r10
	ldr r5, _0806BF08  @ =0xFFFFF000
	add r0, r0, r5
	str r0, [r1]
	mov r0, #168
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp]
	asr r5, r4, #1
	ldr r0, [r2, #36]
	add r0, r0, r5
	asr r1, r4, #2
	mov r12, r1
	add r0, r0, r12
	mov r1, #192
	lsl r1, r1, #5
	add r0, r0, r1
	ldr r1, [sp]
	str r0, [r1]
	mov r0, #146
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp]
	ldr r0, [r2, #32]
	add r0, r0, r6
	asr r3, r3, #3
	add r0, r0, r3
	ldr r1, _0806BF0C  @ =0xFFFFF800
	add r0, r0, r1
	ldr r1, [sp]
	str r0, [r1]
	mov r0, #170
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp]
	ldr r0, [r2, #36]
	add r0, r0, r5
	asr r4, r4, #3
	add r0, r0, r4
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [sp]
	str r0, [r1]
	mov r0, #148
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #32]
	add r0, r0, r6
	ldr r6, _0806BF08  @ =0xFFFFF000
	add r0, r0, r6
	str r0, [r1]
	mov r0, #172
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #36]
	add r0, r0, r5
	mov r5, #192
	lsl r5, r5, #5
	add r0, r0, r5
	str r0, [r1]
	mov r6, #150
	lsl r6, r6, #1
	add r1, r7, r6
	ldr r0, [r2, #32]
	add r0, r0, r10
	add r0, r0, r3
	ldr r5, _0806BF0C  @ =0xFFFFF800
	add r0, r0, r5
	str r0, [r1]
	add r6, r6, #48
	add r1, r7, r6
	ldr r0, [r2, #36]
	add r0, r0, r12
	add r0, r0, r4
	mov r5, #128
	lsl r5, r5, #6
	add r0, r0, r5
	str r0, [r1]
	sub r6, r6, #44
	add r1, r7, r6
	ldr r0, [r2, #32]
	add r0, r0, r10
	ldr r5, _0806BF08  @ =0xFFFFF000
	add r0, r0, r5
	str r0, [r1]
	add r6, r6, #48
	add r1, r7, r6
	ldr r0, [r2, #36]
	add r0, r0, r12
	mov r5, #192
	lsl r5, r5, #5
	add r0, r0, r5
	str r0, [r1]
	sub r6, r6, #44
	add r1, r7, r6
	ldr r0, [r2, #32]
	add r0, r0, r3
	ldr r3, _0806BF0C  @ =0xFFFFF800
	add r0, r0, r3
	str r0, [r1]
	mov r5, #178
	lsl r5, r5, #1
	add r1, r7, r5
	ldr r0, [r2, #36]
	add r0, r0, r4
	mov r6, #128
	lsl r6, r6, #6
	add r0, r0, r6
	str r0, [r1]
	mov r0, #192
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #32]
	ldr r3, _0806BF08  @ =0xFFFFF000
	add r0, r0, r3
	str r0, [r1]
	add r5, r5, #32
	add r1, r7, r5
	ldr r0, [r2, #36]
	add r0, r0, r4
	mov r6, #192
	lsl r6, r6, #5
	add r0, r0, r6
	str r0, [r1]
	mov r0, #156
	lsl r0, r0, #1
	add r1, r7, r0
	mov r3, r9
	asr r4, r3, #1
	ldr r0, [r2, #32]
	add r0, r0, r4
	asr r3, r3, #2
	mov r12, r3
	add r0, r0, r12
	mov r5, #192
	lsl r5, r5, #6
	add r0, r0, r5
	str r0, [r1]
	mov r6, #180
	lsl r6, r6, #1
	add r1, r7, r6
	mov r0, r8
	asr r3, r0, #1
	ldr r0, [r2, #36]
	add r0, r0, r3
	mov r5, r8
	asr r6, r5, #2
	add r0, r0, r6
	mov r5, #192
	lsl r5, r5, #5
	add r0, r0, r5
	str r0, [r1]
	mov r0, #158
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #32]
	add r0, r0, r4
	mov r5, r9
	asr r5, r5, #3
	mov r9, r5
	add r0, r0, r9
	mov r5, #224
	lsl r5, r5, #6
	add r0, r0, r5
	str r0, [r1]
	mov r0, #182
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp]
	ldr r0, [r2, #36]
	add r0, r0, r3
	mov r1, r8
	asr r1, r1, #3
	mov r8, r1
	add r0, r0, r8
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [sp]
	str r0, [r1]
	mov r0, #160
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #32]
	add r0, r0, r4
	mov r4, #192
	lsl r4, r4, #6
	add r0, r0, r4
	str r0, [r1]
	mov r0, #184
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #36]
	add r0, r0, r3
	mov r3, #192
	lsl r3, r3, #5
	add r0, r0, r3
	str r0, [r1]
	mov r4, #162
	lsl r4, r4, #1
	add r1, r7, r4
	ldr r0, [r2, #32]
	add r0, r0, r12
	add r0, r0, r9
	add r0, r0, r5
	str r0, [r1]
	mov r0, #186
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #36]
	add r0, r0, r6
	add r0, r0, r8
	mov r3, #128
	lsl r3, r3, #6
	add r0, r0, r3
	str r0, [r1]
	add r4, r4, #4
	add r1, r7, r4
	ldr r0, [r2, #32]
	add r0, r0, r12
	mov r3, #192
	lsl r3, r3, #6
	add r0, r0, r3
	str r0, [r1]
	add r4, r4, #48
	add r1, r7, r4
	ldr r0, [r2, #36]
	add r0, r0, r6
	mov r6, #192
	lsl r6, r6, #5
	add r0, r0, r6
	str r0, [r1]
	mov r0, #166
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #32]
	add r0, r0, r9
	add r0, r0, r5
	str r0, [r1]
	mov r3, #190
	lsl r3, r3, #1
	add r1, r7, r3
	ldr r0, [r2, #36]
	add r0, r0, r8
	mov r4, #128
	lsl r4, r4, #6
	add r0, r0, r4
	str r0, [r1]
	mov r5, #196
	lsl r5, r5, #1
	add r1, r7, r5
	ldr r0, [r2, #32]
	mov r6, #192
	lsl r6, r6, #6
	add r0, r0, r6
	str r0, [r1]
	mov r0, #198
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #36]
	add r0, r0, r8
	mov r2, #192
	lsl r2, r2, #5
	add r0, r0, r2
	str r0, [r1]
	ldr r0, _0806BF10  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	bne _0806BEC2
	ldr r0, _0806BF14  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0806BF20
_0806BEC2:
	mov r5, #212
	lsl r5, r5, #1
	add r4, r7, r5
	ldr r1, _0806BF18  @ =gUnknown_081C1C20
	mov r3, #210
	lsl r3, r3, #1
	add r2, r7, r3
	ldr r3, [r2]
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r4]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bcc _0806BF1C
	add r0, r3, #1
	str r0, [r2]
	cmp r0, #1
	bls _0806BEEE
	mov r0, #0
	str r0, [r2]
_0806BEEE:
	ldr r4, _0806BEFC  @ =0x030006E4
	ldr r0, [r4]
	add r0, r0, r5
	mov r1, #0
	str r1, [r0]
	b _0806BF20
	.byte 0x00
	.byte 0x00
_0806BEFC:
	.4byte 0x030006E4
_0806BF00:
	.4byte 0xFFFFE000
_0806BF04:
	.4byte 0xFFFFD800
_0806BF08:
	.4byte 0xFFFFF000
_0806BF0C:
	.4byte 0xFFFFF800
_0806BF10:
	.4byte gUnknown_03001A1C
_0806BF14:
	.4byte gUnknown_030019A0
_0806BF18:
	.4byte gUnknown_081C1C20
_0806BF1C:
	add r0, r1, #1
	str r0, [r4]
_0806BF20:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806BC40

	THUMB_FUNC_START sub_0806BF30
sub_0806BF30: @ 0x0806BF30
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	ldr r0, _0806C060  @ =0x030006E4
	ldr r6, [r0]
	ldr r0, [r6]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #8
	ble _0806BF4C
	b _0806C050
_0806BF4C:
	ldr r2, _0806C064  @ =REG_DMA3SAD
	mov r12, r2
	ldr r0, _0806C068  @ =gUnknown_0820850C
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _0806C06C  @ =gOamBuffer
	mov r8, r1
	add r0, r0, r8
	str r0, [r2, #4]
	ldr r0, _0806C070  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	mov r1, #208
	lsl r1, r1, #1
	mov r9, r1
	add r0, r6, r1
	ldr r1, [r0]
	ldr r0, _0806C074  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r5, _0806C078  @ =0xFFFFFC00
	add r0, r5, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	mov r1, #192
	lsl r1, r1, #1
	add r0, r6, r1
	ldr r1, [r0]
	asr r1, r1, #8
	ldr r0, _0806C07C  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r4, _0806C080  @ =0xFFFFFE00
	add r0, r4, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	mov r2, #194
	lsl r2, r2, #1
	add r0, r6, r2
	ldr r0, [r0]
	asr r0, r0, #8
	strb r0, [r1]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r1, #5]
	mov r2, #12
	mov r10, r2
	mov r2, r10
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _0806C068  @ =gUnknown_0820850C
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r1, #4]
	ldr r2, _0806C070  @ =0x84000002
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldr r0, _0806C060  @ =0x030006E4
	ldr r3, [r0]
	add r9, r9, r3
	mov r2, r9
	ldr r0, [r2]
	ldr r2, _0806C074  @ =0x000003FF
	and r0, r0, r2
	ldrh r2, [r1, #4]
	and r5, r5, r2
	orr r5, r5, r0
	strh r5, [r1, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	mov r2, #196
	lsl r2, r2, #1
	add r0, r3, r2
	ldr r0, [r0]
	asr r0, r0, #8
	add r2, r2, #119
	and r0, r0, r2
	ldrh r2, [r1, #2]
	and r4, r4, r2
	orr r4, r4, r0
	strh r4, [r1, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	mov r0, #198
	lsl r0, r0, #1
	add r3, r3, r0
	ldr r0, [r3]
	asr r0, r0, #8
	strb r0, [r1]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r1, #5]
	mov r2, r10
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0806C050:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C060:
	.4byte 0x030006E4
_0806C064:
	.4byte REG_DMA3SAD
_0806C068:
	.4byte gUnknown_0820850C
_0806C06C:
	.4byte gOamBuffer
_0806C070:
	.4byte 0x84000002
_0806C074:
	.4byte 0x000003FF
_0806C078:
	.4byte 0xFFFFFC00
_0806C07C:
	.4byte 0x000001FF
_0806C080:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0806BF30

	THUMB_FUNC_START sub_0806C084
sub_0806C084: @ 0x0806C084
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r5, r0, #0
	ldr r1, _0806C0E8  @ =0x030006E4
	ldr r0, [r1]
	ldr r0, [r0]
	mov r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #8
	ble _0806C0A0
	b _0806C2A0
_0806C0A0:
	mov r4, #0
	mov r8, r4
	mov r9, r1
	ldr r6, _0806C0EC  @ =REG_DMA3SAD
	ldr r7, _0806C0F0  @ =gOamBuffer
	ldr r0, _0806C0F4  @ =0x84000002
	mov r10, r0
_0806C0AE:
	ldr r1, _0806C0F8  @ =gUnknown_03001A1C
	ldr r0, [r1]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	bne _0806C0CC
	ldr r2, _0806C0FC  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	bne _0806C0CC
	b _0806C1CC
_0806C0CC:
	mov r4, r9
	ldr r0, [r4]
	ldr r0, [r0]
	add r0, r0, #52
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806C100
	mov r0, r8
	cmp r0, #5
	bhi _0806C114
	b _0806C106
	.byte 0x00
	.byte 0x00
_0806C0E8:
	.4byte 0x030006E4
_0806C0EC:
	.4byte REG_DMA3SAD
_0806C0F0:
	.4byte gOamBuffer
_0806C0F4:
	.4byte 0x84000002
_0806C0F8:
	.4byte gUnknown_03001A1C
_0806C0FC:
	.4byte gUnknown_030019A0
_0806C100:
	mov r1, r8
	cmp r1, #5
	bls _0806C114
_0806C106:
	ldr r2, _0806C150  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0806C190
_0806C114:
	mov r0, r8
	mov r4, #1
	and r0, r0, r4
	cmp r0, #0
	beq _0806C158
	ldr r0, _0806C154  @ =gUnknown_081C2164
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	mov r1, r10
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r4, r9
	ldr r2, [r4]
	mov r1, #206
	lsl r1, r1, #1
	add r0, r2, r1
	ldr r1, [r0]
	mov r4, #210
	lsl r4, r4, #1
	add r0, r2, r4
	ldr r0, [r0]
	lsl r0, r0, #2
	add r1, r1, r0
	b _0806C22C
_0806C150:
	.4byte gUnknown_030019A0
_0806C154:
	.4byte gUnknown_081C2164
_0806C158:
	ldr r1, _0806C18C  @ =gUnknown_081C1C68
	str r1, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	mov r2, r10
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r4, r9
	ldr r2, [r4]
	mov r1, #204
	lsl r1, r1, #1
	add r0, r2, r1
	ldr r1, [r0]
	mov r4, #210
	lsl r4, r4, #1
	add r0, r2, r4
	ldr r0, [r0]
	lsl r0, r0, #4
	add r1, r1, r0
	b _0806C22C
	.byte 0x00
	.byte 0x00
_0806C18C:
	.4byte gUnknown_081C1C68
_0806C190:
	mov r0, r8
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806C208
	ldr r2, _0806C1C4  @ =gUnknown_081C2094
	str r2, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	mov r4, r10
	str r4, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r1, r9
	ldr r0, [r1]
	mov r2, #202
	lsl r2, r2, #1
	add r0, r0, r2
	ldr r1, [r0]
	ldr r4, _0806C1C8  @ =0x000003FF
	and r1, r1, r4
	b _0806C230
_0806C1C4:
	.4byte gUnknown_081C2094
_0806C1C8:
	.4byte 0x000003FF
_0806C1CC:
	mov r0, r8
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806C208
	ldr r2, _0806C200  @ =gUnknown_081C2094
	str r2, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	mov r4, r10
	str r4, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r1, r9
	ldr r0, [r1]
	mov r2, #202
	lsl r2, r2, #1
	add r0, r0, r2
	ldr r1, [r0]
	ldr r4, _0806C204  @ =0x000003FF
	and r1, r1, r4
	b _0806C230
_0806C200:
	.4byte gUnknown_081C2094
_0806C204:
	.4byte 0x000003FF
_0806C208:
	ldr r0, _0806C2B0  @ =gUnknown_081C1A18
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	mov r1, r10
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r2, r9
	ldr r0, [r2]
	mov r4, #200
	lsl r4, r4, #1
	add r0, r0, r4
	ldr r1, [r0]
_0806C22C:
	ldr r0, _0806C2B4  @ =0x000003FF
	and r1, r1, r0
_0806C230:
	ldrh r2, [r3, #4]
	ldr r0, _0806C2B8  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r1, r9
	ldr r1, [r1]
	mov r12, r1
	mov r2, r8
	lsl r4, r2, #2
	mov r0, #144
	lsl r0, r0, #1
	add r0, r0, r12
	add r0, r0, r4
	ldr r1, [r0]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r3, #2]
	ldr r0, _0806C2BC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r7
	mov r0, #168
	lsl r0, r0, #1
	add r0, r0, r12
	add r0, r0, r4
	ldr r0, [r0]
	asr r0, r0, #8
	strb r0, [r1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	cmp r0, #11
	bhi _0806C2A0
	b _0806C0AE
_0806C2A0:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C2B0:
	.4byte gUnknown_081C1A18
_0806C2B4:
	.4byte 0x000003FF
_0806C2B8:
	.4byte 0xFFFFFC00
_0806C2BC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0806C084

	THUMB_FUNC_START sub_0806C2C0
sub_0806C2C0: @ 0x0806C2C0
	bx lr
	THUMB_FUNC_END sub_0806C2C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806C2C4
sub_0806C2C4: @ 0x0806C2C4
	push {lr}
	ldr r0, _0806C2DC  @ =0x030006E4
	ldr r0, [r0]
	ldr r0, [r0]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bgt _0806C2E0
	bl sub_0806B3A4
	b _0806C2EC
	.byte 0x00
	.byte 0x00
_0806C2DC:
	.4byte 0x030006E4
_0806C2E0:
	cmp r0, #5
	bgt _0806C2E8
	mov r0, #0
	b _0806C2F0
_0806C2E8:
	bl sub_0806B4FC
_0806C2EC:
	lsl r0, r0, #16
	lsr r0, r0, #16
_0806C2F0:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806C2C4

	THUMB_FUNC_START sub_0806C2F4
sub_0806C2F4: @ 0x0806C2F4
	bx lr
	THUMB_FUNC_END sub_0806C2F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806C2F8
sub_0806C2F8: @ 0x0806C2F8
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806C2F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START dk_mech_fall_objects_hit_0806C30C
dk_mech_fall_objects_hit_0806C30C: @ 0x0806C30C
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #199
	bgt _0806C32A
	ldr r0, [r4, #36]
	asr r0, r0, #8
	ldr r1, _0806C338  @ =gUnknown_030012E4
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _0806C33C
_0806C32A:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _0806C384
	.byte 0x00
	.byte 0x00
_0806C338:
	.4byte gUnknown_030012E4
_0806C33C:
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0806C384
	add r5, r4, #0
	add r5, r5, #61
	ldrb r0, [r5]
	mov r1, #184
	mov r2, #0
	bl sub_080410B4
	ldr r3, [r4, #32]
	asr r3, r3, #8
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #176
	mov r2, #0
	bl spawn_sprite_08038DF4
	ldrb r0, [r5]
	bl sub_08039B64
_0806C384:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END dk_mech_fall_objects_hit_0806C30C

	THUMB_FUNC_START sub_0806C38C
sub_0806C38C: @ 0x0806C38C
	push {r4-r7,lr}
	sub sp, sp, #8
	add r7, r0, #0
	ldrb r1, [r7, #12]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0806C3CA
	add r4, r7, #0
	add r4, r4, #60
	ldrb r6, [r4]
	ldrb r5, [r7, #2]
	mov r0, #0
	strb r0, [r7, #12]
	ldr r0, _0806C3D4  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r7, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #19]
	str r1, [sp]
	ldr r1, _0806C3D8  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r7, #0
	mov r2, #4
	bl sub_0804A748
	strb r5, [r7, #2]
	strb r6, [r4]
_0806C3CA:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C3D4:
	.4byte 0x030006E4
_0806C3D8:
	.4byte gUnknown_08665968
	THUMB_FUNC_END sub_0806C38C

	THUMB_FUNC_START sub_0806C3DC
sub_0806C3DC: @ 0x0806C3DC
	push {lr}
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806C3F4
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_0806C3F4:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806C3DC

	THUMB_FUNC_START sub_0806C3F8
sub_0806C3F8: @ 0x0806C3F8
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806C3F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806C40C
sub_0806C40C: @ 0x0806C40C
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806C45C  @ =0x030006E4
	ldr r2, [r0]
	mov r1, #133
	lsl r1, r1, #1
	add r0, r2, r1
	mov r5, #0
	ldrsh r0, [r0, r5]
	lsl r1, r0, #8
	ldr r0, [r4, #36]
	cmp r0, r1
	bgt _0806C454
	str r1, [r4, #36]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C460  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #3
	bl sub_0804A748
_0806C454:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_0806C45C:
	.4byte 0x030006E4
_0806C460:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806C40C

	THUMB_FUNC_START sub_0806C464
sub_0806C464: @ 0x0806C464
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #30
	ble _0806C4E2
	ldrh r0, [r4]
	cmp r0, #135
	bne _0806C4B4
	ldr r0, _0806C4AC  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C4B0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #4
	bl sub_0804A748
	b _0806C4E2
	.byte 0x00
	.byte 0x00
_0806C4AC:
	.4byte 0x030006E4
_0806C4B0:
	.4byte gUnknown_086660E0
_0806C4B4:
	ldr r0, _0806C4EC  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C4F0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #5
	bl sub_0804A748
_0806C4E2:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C4EC:
	.4byte 0x030006E4
_0806C4F0:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806C464

	THUMB_FUNC_START sub_0806C4F4
sub_0806C4F4: @ 0x0806C4F4
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806C532
	ldr r0, _0806C53C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C540  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #7
	bl sub_0804A748
_0806C532:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C53C:
	.4byte 0x030006E4
_0806C540:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806C4F4

	THUMB_FUNC_START sub_0806C544
sub_0806C544: @ 0x0806C544
	push {lr}
	add r1, r0, #0
	ldrh r0, [r1]
	cmp r0, #135
	bne _0806C56C
	ldr r0, _0806C568  @ =0x030006E4
	ldr r2, [r0]
	mov r3, #132
	lsl r3, r3, #1
	add r0, r2, r3
	mov r3, #0
	ldrsh r0, [r0, r3]
	lsl r0, r0, #8
	str r0, [r1, #32]
	mov r3, #133
	lsl r3, r3, #1
	b _0806C582
	.byte 0x00
	.byte 0x00
_0806C568:
	.4byte 0x030006E4
_0806C56C:
	ldr r0, _0806C590  @ =0x030006E4
	ldr r2, [r0]
	mov r3, #134
	lsl r3, r3, #1
	add r0, r2, r3
	mov r3, #0
	ldrsh r0, [r0, r3]
	lsl r0, r0, #8
	str r0, [r1, #32]
	mov r3, #135
	lsl r3, r3, #1
_0806C582:
	add r0, r2, r3
	mov r2, #0
	ldrsh r0, [r0, r2]
	lsl r0, r0, #8
	str r0, [r1, #36]
	pop {r0}
	bx r0
_0806C590:
	.4byte 0x030006E4
	THUMB_FUNC_END sub_0806C544

	THUMB_FUNC_START sub_0806C594
sub_0806C594: @ 0x0806C594
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #40
	bne _0806C610
	ldrh r0, [r4]
	cmp r0, #135
	bne _0806C5E4
	ldr r0, _0806C5DC  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C5E0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #36
	bl sub_0804A748
	b _0806C610
	.byte 0x00
	.byte 0x00
_0806C5DC:
	.4byte 0x030006E4
_0806C5E0:
	.4byte gUnknown_086660E0
_0806C5E4:
	ldr r0, _0806C618  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _0806C61C  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C620  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #36
	bl sub_0804A748
_0806C610:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_0806C618:
	.4byte 0x030006E4
_0806C61C:
	.4byte 0x000001AD
_0806C620:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806C594

	THUMB_FUNC_START sub_0806C624
sub_0806C624: @ 0x0806C624
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #40
	bne _0806C6A0
	ldrh r0, [r4]
	cmp r0, #135
	bne _0806C674
	ldr r0, _0806C66C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C670  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #40
	bl sub_0804A748
	b _0806C6A0
	.byte 0x00
	.byte 0x00
_0806C66C:
	.4byte 0x030006E4
_0806C670:
	.4byte gUnknown_086660E0
_0806C674:
	ldr r0, _0806C6A8  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _0806C6AC  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C6B0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #40
	bl sub_0804A748
_0806C6A0:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_0806C6A8:
	.4byte 0x030006E4
_0806C6AC:
	.4byte 0x000001AD
_0806C6B0:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806C624

	THUMB_FUNC_START sub_0806C6B4
sub_0806C6B4: @ 0x0806C6B4
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #40
	bne _0806C730
	ldrh r0, [r4]
	cmp r0, #135
	bne _0806C704
	ldr r0, _0806C6FC  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C700  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #43
	bl sub_0804A748
	b _0806C730
	.byte 0x00
	.byte 0x00
_0806C6FC:
	.4byte 0x030006E4
_0806C700:
	.4byte gUnknown_086660E0
_0806C704:
	ldr r0, _0806C738  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _0806C73C  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C740  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #43
	bl sub_0804A748
_0806C730:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_0806C738:
	.4byte 0x030006E4
_0806C73C:
	.4byte 0x000001AD
_0806C740:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806C6B4

	THUMB_FUNC_START sub_0806C744
sub_0806C744: @ 0x0806C744
	push {r4,lr}
	ldr r1, _0806C774  @ =gUnknown_030019AC
	ldr r1, [r1]
	add r1, r1, #67
	mov r2, #255
	strb r2, [r1]
	ldr r3, _0806C778  @ =0x030006E4
	ldr r1, [r3]
	add r1, r1, #81
	mov r4, #0
	mov r2, #2
	strb r2, [r1]
	ldr r1, [r3]
	add r1, r1, #82
	strb r2, [r1]
	mov r1, #224
	lsl r1, r1, #15
	str r1, [r0, #92]
	add r0, r0, #132
	ldr r0, [r0]
	str r4, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
_0806C774:
	.4byte gUnknown_030019AC
_0806C778:
	.4byte 0x030006E4
	THUMB_FUNC_END sub_0806C744

	THUMB_FUNC_START sub_0806C77C
sub_0806C77C: @ 0x0806C77C
	push {lr}
	add r3, r0, #0
	ldrh r0, [r3]
	cmp r0, #135
	bne _0806C7A0
	ldr r2, _0806C798  @ =0x03001D64
	ldr r1, [r3, #32]
	mov r0, #128
	lsl r0, r0, #7
	sub r0, r0, r1
	asr r0, r0, #6
	strh r0, [r2]
	ldr r2, _0806C79C  @ =0x03001D68
	b _0806C7AE
_0806C798:
	.4byte 0x03001D64
_0806C79C:
	.4byte 0x03001D68
_0806C7A0:
	ldr r1, _0806C7C0  @ =0x03001D58
	ldr r0, [r3, #32]
	ldr r2, _0806C7C4  @ =0xFFFF7000
	add r0, r0, r2
	asr r0, r0, #6
	strh r0, [r1]
	ldr r2, _0806C7C8  @ =0x03001D5C
_0806C7AE:
	ldr r1, [r3, #36]
	mov r0, #196
	lsl r0, r0, #8
	sub r0, r0, r1
	asr r0, r0, #6
	neg r0, r0
	strh r0, [r2]
	pop {r0}
	bx r0
_0806C7C0:
	.4byte 0x03001D58
_0806C7C4:
	.4byte 0xFFFF7000
_0806C7C8:
	.4byte 0x03001D5C
	THUMB_FUNC_END sub_0806C77C

	THUMB_FUNC_START sub_0806C7CC
sub_0806C7CC: @ 0x0806C7CC
	push {r4-r6,lr}
	sub sp, sp, #8
	mov r4, #0
	mov r5, #0
	ldr r6, _0806C80C  @ =gUnknown_086656FC
_0806C7D6:
	ldr r0, _0806C810  @ =0x030006E4
	ldr r0, [r0]
	add r1, r4, #0
	add r1, r1, #32
	ldr r2, _0806C814  @ =0x00000113
	add r0, r0, r2
	strb r1, [r0]
	lsl r0, r4, #3
	add r0, r0, r6
	ldrb r1, [r0]
	ldrh r3, [r0, #2]
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r2, #1
	neg r2, r2
	bl spawn_sprite_08038DF4
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #5
	bls _0806C7D6
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
_0806C80C:
	.4byte gUnknown_086656FC
_0806C810:
	.4byte 0x030006E4
_0806C814:
	.4byte 0x00000113
	THUMB_FUNC_END sub_0806C7CC

	THUMB_FUNC_START sub_0806C818
sub_0806C818: @ 0x0806C818
	push {r4,lr}
	sub sp, sp, #8
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #201
	mov r2, #0
	mov r3, #8
	bl spawn_sprite_08038DF4
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #201
	mov r2, #0
	mov r3, #232
	bl spawn_sprite_08038DF4
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806C818

	.byte 0x00
	.byte 0x00


	THUMB_FUNC_START sub_0806C848
sub_0806C848: @ 0x0806C848
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806C848

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806C85C
sub_0806C85C: @ 0x0806C85C
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806C88A
	ldr r0, _0806C894  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806C898  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #2
	bl sub_0804A748
_0806C88A:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C894:
	.4byte 0x030006E4
_0806C898:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806C85C

	THUMB_FUNC_START sub_0806C89C
sub_0806C89C: @ 0x0806C89C
	push {lr}
	add r2, r0, #0
	ldr r1, [r2, #32]
	ldr r0, _0806C8C4  @ =0x000077FF
	ldr r3, _0806C8C8  @ =0x030006E4
	cmp r1, r0
	bgt _0806C8CC
	ldr r0, [r3]
	ldr r0, [r0, #8]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #6
	bne _0806C8CC
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _0806C8E2
	.byte 0x00
	.byte 0x00
_0806C8C4:
	.4byte 0x000077FF
_0806C8C8:
	.4byte 0x030006E4
_0806C8CC:
	ldr r0, [r3]
	ldr r0, [r0, #12]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #6
	bne _0806C8E2
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_0806C8E2:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806C89C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806C8E8
sub_0806C8E8: @ 0x0806C8E8
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806C924  @ =gUnknown_030019AC
	ldr r0, [r0]
	mov r2, #4
	ldrsh r1, [r0, r2]
	ldr r0, _0806C928  @ =0x0000023F
	cmp r1, r0
	bne _0806C91A
	ldr r0, _0806C92C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806C930  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #4
	bl sub_0804A748
_0806C91A:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C924:
	.4byte gUnknown_030019AC
_0806C928:
	.4byte 0x0000023F
_0806C92C:
	.4byte 0x030006E4
_0806C930:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806C8E8

	THUMB_FUNC_START sub_0806C934
sub_0806C934: @ 0x0806C934
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806C97C  @ =gUnknown_030019AC
	ldr r0, [r0]
	mov r2, #4
	ldrsh r1, [r0, r2]
	mov r0, #243
	lsl r0, r0, #1
	cmp r1, r0
	bne _0806C974
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #30
	ble _0806C974
	ldr r0, _0806C980  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806C984  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #5
	bl sub_0804A748
_0806C974:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0806C97C:
	.4byte gUnknown_030019AC
_0806C980:
	.4byte 0x030006E4
_0806C984:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806C934

	THUMB_FUNC_START sub_0806C988
sub_0806C988: @ 0x0806C988
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806C9B8  @ =0x030006E4
	ldr r2, [r0]
	ldr r1, [r2, #8]
	mov r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #6
	bne _0806C9D6
	ldr r0, [r1, #32]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r0, r1
	ldr r1, [r4, #32]
	cmp r1, r0
	bge _0806C9BC
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _0806C9D6
	.byte 0x00
	.byte 0x00
_0806C9B8:
	.4byte 0x030006E4
_0806C9BC:
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806C9E0  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #6
	bl sub_0804A748
_0806C9D6:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C9E0:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806C988

	THUMB_FUNC_START sub_0806C9E4
sub_0806C9E4: @ 0x0806C9E4
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806CA16
	ldr r0, _0806CA20  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r1, [r1]
	mov r3, #1
	eor r3, r3, r1
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CA24  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #7
	bl sub_0804A748
_0806CA16:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CA20:
	.4byte 0x030006E4
_0806CA24:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806C9E4

	THUMB_FUNC_START sub_0806CA28
sub_0806CA28: @ 0x0806CA28
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806CA64  @ =gUnknown_030019AC
	ldr r0, [r0]
	mov r2, #4
	ldrsh r1, [r0, r2]
	ldr r0, _0806CA68  @ =0x0000023F
	cmp r1, r0
	bne _0806CA5A
	ldr r0, _0806CA6C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CA70  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #8
	bl sub_0804A748
_0806CA5A:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CA64:
	.4byte gUnknown_030019AC
_0806CA68:
	.4byte 0x0000023F
_0806CA6C:
	.4byte 0x030006E4
_0806CA70:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CA28

	THUMB_FUNC_START sub_0806CA74
sub_0806CA74: @ 0x0806CA74
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806CAA6
	ldr r0, _0806CAB0  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r1, [r1]
	mov r3, #1
	eor r3, r3, r1
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CAB4  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #9
	bl sub_0804A748
_0806CAA6:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CAB0:
	.4byte 0x030006E4
_0806CAB4:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CA74

	THUMB_FUNC_START sub_0806CAB8
sub_0806CAB8: @ 0x0806CAB8
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r1, [r4, #32]
	ldr r0, _0806CAEC  @ =0x0000C1FF
	cmp r1, r0
	ble _0806CAE4
	ldr r0, _0806CAF0  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CAF4  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #10
	bl sub_0804A748
_0806CAE4:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0806CAEC:
	.4byte 0x0000C1FF
_0806CAF0:
	.4byte 0x030006E4
_0806CAF4:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CAB8

	THUMB_FUNC_START sub_0806CAF8
sub_0806CAF8: @ 0x0806CAF8
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806CB2A
	ldr r0, _0806CB34  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r1, [r1]
	mov r3, #1
	eor r3, r3, r1
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CB38  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #11
	bl sub_0804A748
_0806CB2A:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CB34:
	.4byte 0x030006E4
_0806CB38:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CAF8

	THUMB_FUNC_START sub_0806CB3C
sub_0806CB3C: @ 0x0806CB3C
	push {lr}
	add r1, r0, #0
	ldr r0, _0806CB5C  @ =0x030006E4
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #6
	bne _0806CB58
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_0806CB58:
	pop {r0}
	bx r0
_0806CB5C:
	.4byte 0x030006E4
	THUMB_FUNC_END sub_0806CB3C

	THUMB_FUNC_START sub_0806CB60
sub_0806CB60: @ 0x0806CB60
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0806CB9E
	ldr r0, _0806CBA8  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CBAC  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #13
	bl sub_0804A748
	ldr r0, [r4, #92]
	mov r1, #128
	lsl r1, r1, #13
	orr r0, r0, r1
	str r0, [r4, #92]
_0806CB9E:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CBA8:
	.4byte 0x030006E4
_0806CBAC:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CB60

	THUMB_FUNC_START sub_0806CBB0
sub_0806CBB0: @ 0x0806CBB0
	push {lr}
	add r2, r0, #0
	ldr r0, [r2, #32]
	asr r0, r0, #8
	add r0, r0, #16
	mov r1, #128
	lsl r1, r1, #1
	cmp r0, r1
	bls _0806CBCC
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_0806CBCC:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806CBB0

	THUMB_FUNC_START sub_0806CBD0
sub_0806CBD0: @ 0x0806CBD0
	push {r4,r5,lr}
	sub sp, sp, #8
	add r5, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #48
	ble _0806CC18
	ldr r0, _0806CC0C  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r5, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _0806CC18
	ldr r0, _0806CC10  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CC14  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #15
	bl sub_0804A748
	b _0806CC52
_0806CC0C:
	.4byte gUnknown_030019AC
_0806CC10:
	.4byte 0x030006E4
_0806CC14:
	.4byte gUnknown_08668D38
_0806CC18:
	add r0, r5, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #63
	ble _0806CC52
	ldr r4, _0806CC5C  @ =0x030006E4
	ldr r0, [r4]
	ldr r2, _0806CC60  @ =0x000001B1
	add r1, r0, r2
	mov r0, #1
	strb r0, [r1]
	mov r0, #245
	bl sub_08071E14
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CC64  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #15
	bl sub_0804A748
_0806CC52:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CC5C:
	.4byte 0x030006E4
_0806CC60:
	.4byte 0x000001B1
_0806CC64:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CBD0

	THUMB_FUNC_START sub_0806CC68
sub_0806CC68: @ 0x0806CC68
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806CCA0  @ =0x030006E4
	ldr r2, [r0]
	ldr r1, _0806CCA4  @ =0x000001B1
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806CC96
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CCA8  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #16
	bl sub_0804A748
_0806CC96:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CCA0:
	.4byte 0x030006E4
_0806CCA4:
	.4byte 0x000001B1
_0806CCA8:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CC68

	THUMB_FUNC_START sub_0806CCAC
sub_0806CCAC: @ 0x0806CCAC
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806CCE4  @ =0x030006E4
	ldr r2, [r0]
	ldr r1, _0806CCE8  @ =0x000001B1
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806CCDA
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CCEC  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #15
	bl sub_0804A748
_0806CCDA:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CCE4:
	.4byte 0x030006E4
_0806CCE8:
	.4byte 0x000001B1
_0806CCEC:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CCAC

	THUMB_FUNC_START sub_0806CCF0
sub_0806CCF0: @ 0x0806CCF0
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	ldr r1, _0806CD18  @ =gUnknown_030019AC
	ldr r3, [r1]
	ldr r2, [r3, #36]
	mov r1, #128
	lsl r1, r1, #8
	cmp r2, r1
	ble _0806CD12
	mov r1, #254
	lsl r1, r1, #7
	str r1, [r3, #36]
_0806CD12:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0806CD18:
	.4byte gUnknown_030019AC
	THUMB_FUNC_END sub_0806CCF0

	THUMB_FUNC_START sub_0806CD1C
sub_0806CD1C: @ 0x0806CD1C
	push {r4,r5,lr}
	sub sp, sp, #48
	add r5, r0, #0
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806CD6A
	add r0, sp, #8
	mov r1, #0
	mov r2, #40
	bl memset
	ldr r4, _0806CD74  @ =0x030006E4
	ldr r0, [r4]
	ldr r0, [r0, #4]
	add r1, sp, #8
	mov r2, #0
	bl update_mario_action_0803ED98
	ldr r2, _0806CD78  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _0806CD7C  @ =0xDFFFFFFF
	and r0, r0, r1
	str r0, [r2]
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806CD80  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	bl sub_0804A748
_0806CD6A:
	add sp, sp, #48
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CD74:
	.4byte 0x030006E4
_0806CD78:
	.4byte gUnknown_03001A1C
_0806CD7C:
	.4byte 0xDFFFFFFF
_0806CD80:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806CD1C

	THUMB_FUNC_START sub_0806CD84
sub_0806CD84: @ 0x0806CD84
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, [r4, #92]
	mov r1, #144
	lsl r1, r1, #16
	orr r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0806CDAC
	ldr r0, _0806CDDC  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #3
	orr r1, r1, r2
	str r1, [r0]
_0806CDAC:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806CDD4
	ldr r0, _0806CDE0  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806CDE4  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #7
	bl sub_0804A748
_0806CDD4:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0806CDDC:
	.4byte gUnknown_03001938
_0806CDE0:
	.4byte 0x030006E4
_0806CDE4:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806CD84

	THUMB_FUNC_START sub_0806CDE8
sub_0806CDE8: @ 0x0806CDE8
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	ldr r5, _0806CE3C  @ =0x030006E4
	ldr r0, [r5]
	ldr r1, _0806CE40  @ =0x000001B1
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806CE32
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #180
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, [r5]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806CE44  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #9
	bl sub_0804A748
	ldr r0, _0806CE48  @ =0xFFFFE000
	str r0, [r4, #36]
_0806CE32:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CE3C:
	.4byte 0x030006E4
_0806CE40:
	.4byte 0x000001B1
_0806CE44:
	.4byte gUnknown_086691BC
_0806CE48:
	.4byte 0xFFFFE000
	THUMB_FUNC_END sub_0806CDE8

	THUMB_FUNC_START sub_0806CE4C
sub_0806CE4C: @ 0x0806CE4C
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #30
	ble _0806CEA0
	ldr r0, [r4, #92]
	ldr r1, _0806CEA8  @ =0xFF6FFFFF
	and r0, r0, r1
	str r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0806CEA0
	ldr r2, _0806CEAC  @ =0x030006E4
	ldr r0, [r2]
	ldr r3, _0806CEB0  @ =0x000001B1
	add r0, r0, r3
	mov r1, #0
	strb r1, [r0]
	ldr r2, [r2]
	sub r3, r3, #149
	add r0, r2, r3
	strh r1, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806CEB4  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #10
	bl sub_0804A748
_0806CEA0:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0806CEA8:
	.4byte 0xFF6FFFFF
_0806CEAC:
	.4byte 0x030006E4
_0806CEB0:
	.4byte 0x000001B1
_0806CEB4:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806CE4C

	THUMB_FUNC_START sub_0806CEB8
sub_0806CEB8: @ 0x0806CEB8
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806CEF8
	ldr r2, _0806CF00  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #192
	lsl r1, r1, #2
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _0806CF04  @ =0x03001968
	ldrh r0, [r4]
	str r0, [r1]
	ldr r0, _0806CF08  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806CF0C  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #11
	bl sub_0804A748
_0806CEF8:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0806CF00:
	.4byte gUnknown_03001A1C
_0806CF04:
	.4byte 0x03001968
_0806CF08:
	.4byte 0x030006E4
_0806CF0C:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806CEB8

	THUMB_FUNC_START sub_0806CF10
sub_0806CF10: @ 0x0806CF10
	push {lr}
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r0, #182
	lsl r0, r0, #1
	cmp r1, r0
	bne _0806CF26
	mov r0, #180
	bl sub_08071E14
_0806CF26:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806CF10
	
	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806CF2C
sub_0806CF2C: @ 0x0806CF2C
	push {lr}
	bl sub_08055AE4
	ldr r0, _0806CF4C  @ =0x030009F4
	ldr r2, _0806CF50  @ =0x0806B6B1
	str r2, [r0]
	ldr r1, _0806CF54  @ =0x030009F8
	ldr r0, _0806CF58  @ =0x0806B961
	str r0, [r1]
	ldr r1, _0806CF5C  @ =0x03000A00
	ldr r0, _0806CF60  @ =0x0806CF65
	str r0, [r1]
	bl _call_via_r2
	pop {r0}
	bx r0
_0806CF4C:
	.4byte 0x030009F4
_0806CF50:
	.4byte sub_0806B6B0
_0806CF54:
	.4byte 0x030009F8
_0806CF58:
	.4byte sub_0806B960
_0806CF5C:
	.4byte 0x03000A00
_0806CF60:
	.4byte sub_0806CF64
	THUMB_FUNC_END sub_0806CF2C

	THUMB_FUNC_START sub_0806CF64
sub_0806CF64: @ 0x0806CF64
	push {lr}
	ldr r1, _0806CF94  @ =0x030009F4
	ldr r0, _0806CF98  @ =0x080572B5
	str r0, [r1]
	ldr r1, _0806CF9C  @ =0x030009F8
	ldr r0, _0806CFA0  @ =0x08057325
	str r0, [r1]
	ldr r2, _0806CFA4  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #134
	lsl r1, r1, #7
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #18
	bl sub_08071E14
	ldr r2, _0806CFA8  @ =gUnknown_03001938
	ldr r0, [r2]
	ldr r1, _0806CFAC  @ =0xFFFFFBFF
	and r0, r0, r1
	str r0, [r2]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CF94:
	.4byte 0x030009F4
_0806CF98:
	.4byte sub_080572B4
_0806CF9C:
	.4byte 0x030009F8
_0806CFA0:
	.4byte sub_08057324
_0806CFA4:
	.4byte gUnknown_03001A1C
_0806CFA8:
	.4byte gUnknown_03001938
_0806CFAC:
	.4byte 0xFFFFFBFF
	THUMB_FUNC_END sub_0806CF64
