	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START setup_tutorial_button_display_0806CFB0
setup_tutorial_button_display_0806CFB0: @ 0x0806CFB0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r7, r0, #0
	add r5, r1, #0
	ldr r3, _0806D150  @ =0x03001D70
	add r0, r3, #0
	add r0, r0, #144
	mov r1, #0
	str r1, [r0]
	add r0, r0, #4
	mov r2, #0
	strh r1, [r0]
	strh r1, [r3, #42]
	add r0, r0, #2
	strh r1, [r0]
	add r0, r0, #2
	strh r1, [r0]
	add r0, r0, #8
	strb r2, [r0]
	mov r2, #0
	add r6, r3, #0
	ldr r4, _0806D154  @ =gUnknown_030019AC
	ldr r0, _0806D158  @ =gUnknown_082F241C
	mov r9, r0
	mov r8, r6
	mov r12, r4
_0806CFE8:
	lsl r1, r2, #1
	add r1, r1, r8
	mov r3, r12
	ldr r0, [r3]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
	strh r0, [r1]
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #20
	bls _0806CFE8
	ldr r0, [r4]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
	add r1, r6, #0
	add r1, r1, #134
	mov r2, #0
	mov r8, r2
	strh r0, [r1]
	ldr r0, [r4]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
	add r1, r1, #4
	strh r0, [r1]
	ldr r0, [r4]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
	add r1, r1, #2
	strh r0, [r1]
	add r1, r1, #16
	ldr r0, _0806D15C  @ =0x0000FFFF
	strh r0, [r1]
	ldrh r0, [r7]
	str r0, [r6, #44]
	mov r4, #128
	lsl r4, r4, #2
	mov r0, r9
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #48]
	ldr r0, _0806D160  @ =gUnknown_082F3350
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #52]
	ldr r0, _0806D164  @ =gUnknown_082F2648
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #56]
	ldr r0, _0806D168  @ =gUnknown_082F2AA0
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #60]
	ldr r0, _0806D16C  @ =gUnknown_082F2EF8
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #64]
	ldr r0, _0806D170  @ =gUnknown_082F357C
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #68]
	ldr r0, _0806D174  @ =gUnknown_082F2874
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #72]
	ldr r0, _0806D178  @ =gUnknown_082F2CCC
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #76]
	ldr r0, _0806D17C  @ =gUnknown_082F3124
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #80]
	ldr r0, _0806D180  @ =gUnknown_082F2014
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #128
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #84]
	ldr r0, _0806D184  @ =gUnknown_082F20C0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #128
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #88]
	ldr r0, _0806D188  @ =gUnknown_082F216C
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #128
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #92]
	ldr r0, _0806D18C  @ =gUnknown_082F2218
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #128
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #96]
	ldr r0, _0806D190  @ =gUnknown_082F22C4
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #128
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #100]
	ldr r0, _0806D194  @ =gUnknown_082F2370
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #128
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	str r0, [r6, #104]
	ldr r0, _0806D198  @ =gUnknown_082F37A8
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #32
	bl setup_sprite_gfx_tiles_vram_0800F0C4
	ldr r0, [r6, #44]
	str r0, [r6, #108]
	ldr r0, _0806D19C  @ =gUnknown_082F2414
	str r0, [r6, #112]
	ldr r0, [r6, #80]
	str r0, [r6, #116]
	ldr r0, _0806D1A0  @ =gUnknown_082F200C
	str r0, [r6, #120]
	ldr r0, [r6, #92]
	str r0, [r6, #124]
	add r1, r6, #0
	add r1, r1, #128
	ldr r0, _0806D1A4  @ =gUnknown_082F2210
	str r0, [r1]
	ldr r0, _0806D1A8  @ =0x03001E20
	mov r3, r8
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #12]
	str r3, [r0, #16]
	str r3, [r0, #20]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0806D150:
	.4byte 0x03001D70
_0806D154:
	.4byte gUnknown_030019AC
_0806D158:
	.4byte gUnknown_082F241C
_0806D15C:
	.4byte 0x0000FFFF
_0806D160:
	.4byte gUnknown_082F3350
_0806D164:
	.4byte gUnknown_082F2648
_0806D168:
	.4byte gUnknown_082F2AA0
_0806D16C:
	.4byte gUnknown_082F2EF8
_0806D170:
	.4byte gUnknown_082F357C
_0806D174:
	.4byte gUnknown_082F2874
_0806D178:
	.4byte gUnknown_082F2CCC
_0806D17C:
	.4byte gUnknown_082F3124
_0806D180:
	.4byte gUnknown_082F2014
_0806D184:
	.4byte gUnknown_082F20C0
_0806D188:
	.4byte gUnknown_082F216C
_0806D18C:
	.4byte gUnknown_082F2218
_0806D190:
	.4byte gUnknown_082F22C4
_0806D194:
	.4byte gUnknown_082F2370
_0806D198:
	.4byte gUnknown_082F37A8
_0806D19C:
	.4byte gUnknown_082F2414
_0806D1A0:
	.4byte gUnknown_082F200C
_0806D1A4:
	.4byte gUnknown_082F2210
_0806D1A8:
	.4byte 0x03001E20
	THUMB_FUNC_END setup_tutorial_button_display_0806CFB0

	THUMB_FUNC_START update_tutorial_button_display_0806D1AC
update_tutorial_button_display_0806D1AC: @ 0x0806D1AC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	lsl r0, r0, #16
	lsr r7, r0, #16
	lsl r1, r1, #16
	lsr r6, r1, #16
	ldr r4, _0806D1E4  @ =0x03001D70
	add r0, r4, #0
	add r0, r0, #156
	ldrh r1, [r0]
	ldr r0, _0806D1E8  @ =0x0000FFFF
	mov r9, r4
	cmp r1, r0
	bne _0806D1D0
	b _0806D77A
_0806D1D0:
	ldr r0, _0806D1EC  @ =0x03001E20
	ldr r3, [r0]
	mov r8, r0
	cmp r3, #1
	bne _0806D1F4
	ldr r0, [r4, #72]
	str r0, [r4, #108]
	ldr r0, _0806D1F0  @ =gUnknown_082F2CC4
	str r0, [r4, #112]
	b _0806D576
_0806D1E4:
	.4byte 0x03001D70
_0806D1E8:
	.4byte 0x0000FFFF
_0806D1EC:
	.4byte 0x03001E20
_0806D1F0:
	.4byte gUnknown_082F2CC4
_0806D1F4:
	mov r0, r8
	ldr r2, [r0, #4]
	cmp r2, #1
	bne _0806D20C
	mov r1, r9
	ldr r0, [r1, #76]
	str r0, [r1, #108]
	ldr r0, _0806D208  @ =gUnknown_082F311C
	b _0806D574
	.byte 0x00
	.byte 0x00
_0806D208:
	.4byte gUnknown_082F311C
_0806D20C:
	mov r5, r8
	ldr r1, [r5, #8]
	cmp r1, #1
	bne _0806D224
	mov r1, r9
	ldr r0, [r1, #64]
	str r0, [r1, #108]
	ldr r0, _0806D220  @ =gUnknown_082F3574
	b _0806D574
	.byte 0x00
	.byte 0x00
_0806D220:
	.4byte gUnknown_082F3574
_0806D224:
	mov r5, r8
	ldr r0, [r5, #12]
	cmp r0, #1
	bne _0806D23C
	mov r1, r9
	ldr r0, [r1, #68]
	str r0, [r1, #108]
	ldr r0, _0806D238  @ =gUnknown_082F286C
	b _0806D574
	.byte 0x00
	.byte 0x00
_0806D238:
	.4byte gUnknown_082F286C
_0806D23C:
	cmp r3, #2
	bne _0806D25C
	mov r0, r9
	add r0, r0, #158
	ldrh r0, [r0]
	cmp r0, #4
	bhi _0806D2C8
	mov r2, r9
	ldr r0, [r2, #72]
	str r0, [r2, #108]
	ldr r0, _0806D258  @ =gUnknown_082F2CC4
	str r0, [r2, #112]
	b _0806D576
	.byte 0x00
	.byte 0x00
_0806D258:
	.4byte gUnknown_082F2CC4
_0806D25C:
	cmp r2, #2
	bne _0806D288
	mov r0, r9
	add r0, r0, #158
	ldrh r0, [r0]
	cmp r0, #4
	bhi _0806D278
	mov r1, r9
	ldr r0, [r1, #76]
	str r0, [r1, #108]
	ldr r0, _0806D274  @ =gUnknown_082F311C
	b _0806D574
_0806D274:
	.4byte gUnknown_082F311C
_0806D278:
	mov r2, r9
	ldr r0, [r2, #44]
	str r0, [r2, #108]
	ldr r0, _0806D284  @ =gUnknown_082F2414
	str r0, [r2, #112]
	b _0806D576
_0806D284:
	.4byte gUnknown_082F2414
_0806D288:
	cmp r1, #2
	bne _0806D2A8
	mov r0, r9
	add r0, r0, #158
	ldrh r0, [r0]
	cmp r0, #4
	bls _0806D298
	b _0806D56C
_0806D298:
	mov r5, r9
	ldr r0, [r5, #64]
	str r0, [r5, #108]
	ldr r0, _0806D2A4  @ =gUnknown_082F3574
	str r0, [r5, #112]
	b _0806D576
_0806D2A4:
	.4byte gUnknown_082F3574
_0806D2A8:
	cmp r0, #2
	bne _0806D2D8
	mov r0, r9
	add r0, r0, #158
	ldrh r0, [r0]
	cmp r0, #4
	bhi _0806D2C8
	mov r2, r9
	ldr r0, [r2, #68]
	str r0, [r2, #108]
	ldr r0, _0806D2C4  @ =gUnknown_082F286C
	str r0, [r2, #112]
	b _0806D576
	.byte 0x00
	.byte 0x00
_0806D2C4:
	.4byte gUnknown_082F286C
_0806D2C8:
	mov r5, r9
	ldr r0, [r5, #44]
	str r0, [r5, #108]
	ldr r0, _0806D2D4  @ =gUnknown_082F2414
	str r0, [r5, #112]
	b _0806D576
_0806D2D4:
	.4byte gUnknown_082F2414
_0806D2D8:
	mov r2, #64
	add r0, r6, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D388
	cmp r1, #3
	beq _0806D388
	mov r0, r9
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D33C
	mov r5, r9
	add r5, r5, #158
	ldrh r1, [r5]
	cmp r1, #0
	bne _0806D30E
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D30E:
	ldrh r0, [r5]
	cmp r0, #4
	bhi _0806D324
	ldr r0, [r4, #48]
	str r0, [r4, #108]
	ldr r0, _0806D320  @ =gUnknown_082F3348
	str r0, [r4, #112]
	b _0806D410
	.byte 0x00
	.byte 0x00
_0806D320:
	.4byte gUnknown_082F3348
_0806D324:
	ldr r0, [r4, #44]
	str r0, [r4, #108]
	ldr r0, _0806D334  @ =gUnknown_082F2414
	str r0, [r4, #112]
	ldr r1, _0806D338  @ =0x03001E20
	mov r8, r1
	b _0806D576
	.byte 0x00
	.byte 0x00
_0806D334:
	.4byte gUnknown_082F2414
_0806D338:
	.4byte 0x03001E20
_0806D33C:
	add r0, r7, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D366
	ldr r0, _0806D378  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	bne _0806D366
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D366:
	ldr r0, _0806D37C  @ =0x03001D70
	ldr r1, [r0, #48]
	str r1, [r0, #108]
	ldr r1, _0806D380  @ =gUnknown_082F3348
	str r1, [r0, #112]
	mov r9, r0
	ldr r2, _0806D384  @ =0x03001E20
	mov r8, r2
	b _0806D576
_0806D378:
	.4byte gUnknown_03001938
_0806D37C:
	.4byte 0x03001D70
_0806D380:
	.4byte gUnknown_082F3348
_0806D384:
	.4byte 0x03001E20
_0806D388:
	mov r2, #128
	add r0, r6, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D428
	mov r5, r8
	ldr r0, [r5, #12]
	cmp r0, #3
	beq _0806D428
	ldr r4, _0806D3D4  @ =0x03001D70
	add r0, r4, #0
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D3DC
	add r5, r4, #0
	add r5, r5, #158
	ldrh r0, [r5]
	cmp r0, #0
	bne _0806D3C2
	str r0, [sp]
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D3C2:
	ldrh r0, [r5]
	cmp r0, #4
	bls _0806D3CA
	b _0806D510
_0806D3CA:
	ldr r0, [r4, #52]
	str r0, [r4, #108]
	ldr r0, _0806D3D8  @ =gUnknown_082F2640
	b _0806D516
	.byte 0x00
	.byte 0x00
_0806D3D4:
	.4byte 0x03001D70
_0806D3D8:
	.4byte gUnknown_082F2640
_0806D3DC:
	add r0, r7, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D404
	ldr r0, _0806D418  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	bne _0806D404
	str r1, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D404:
	ldr r0, _0806D41C  @ =0x03001D70
	ldr r1, [r0, #52]
	str r1, [r0, #108]
	ldr r1, _0806D420  @ =gUnknown_082F2640
	str r1, [r0, #112]
	mov r9, r0
_0806D410:
	ldr r0, _0806D424  @ =0x03001E20
	mov r8, r0
	b _0806D576
	.byte 0x00
	.byte 0x00
_0806D418:
	.4byte gUnknown_03001938
_0806D41C:
	.4byte 0x03001D70
_0806D420:
	.4byte gUnknown_082F2640
_0806D424:
	.4byte 0x03001E20
_0806D428:
	mov r1, #32
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0806D4BC
	mov r2, r8
	ldr r0, [r2]
	cmp r0, #3
	beq _0806D4BC
	ldr r4, _0806D474  @ =0x03001D70
	add r0, r4, #0
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D47C
	add r5, r4, #0
	add r5, r5, #158
	ldrh r1, [r5]
	cmp r1, #0
	bne _0806D464
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D464:
	ldrh r0, [r5]
	cmp r0, #4
	bhi _0806D510
	ldr r0, [r4, #56]
	str r0, [r4, #108]
	ldr r0, _0806D478  @ =gUnknown_082F2A98
	b _0806D516
	.byte 0x00
	.byte 0x00
_0806D474:
	.4byte 0x03001D70
_0806D478:
	.4byte gUnknown_082F2A98
_0806D47C:
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0806D4A6
	ldr r0, _0806D4B0  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	bne _0806D4A6
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D4A6:
	ldr r0, _0806D4B4  @ =0x03001D70
	ldr r1, [r0, #56]
	str r1, [r0, #108]
	ldr r1, _0806D4B8  @ =gUnknown_082F2A98
	b _0806D552
_0806D4B0:
	.4byte gUnknown_03001938
_0806D4B4:
	.4byte 0x03001D70
_0806D4B8:
	.4byte gUnknown_082F2A98
_0806D4BC:
	mov r1, #16
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0806D56C
	mov r2, r8
	ldr r0, [r2, #4]
	cmp r0, #3
	beq _0806D56C
	ldr r4, _0806D508  @ =0x03001D70
	add r0, r4, #0
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D520
	add r5, r4, #0
	add r5, r5, #158
	ldrh r1, [r5]
	cmp r1, #0
	bne _0806D4F8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D4F8:
	ldrh r0, [r5]
	cmp r0, #4
	bhi _0806D510
	ldr r0, [r4, #60]
	str r0, [r4, #108]
	ldr r0, _0806D50C  @ =gUnknown_082F2EF0
	b _0806D516
	.byte 0x00
	.byte 0x00
_0806D508:
	.4byte 0x03001D70
_0806D50C:
	.4byte gUnknown_082F2EF0
_0806D510:
	ldr r0, [r4, #44]
	str r0, [r4, #108]
	ldr r0, _0806D51C  @ =gUnknown_082F2414
_0806D516:
	str r0, [r4, #112]
	mov r9, r4
	b _0806D576
_0806D51C:
	.4byte gUnknown_082F2414
_0806D520:
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0806D54A
	ldr r0, _0806D55C  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	bne _0806D54A
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D54A:
	ldr r0, _0806D560  @ =0x03001D70
	ldr r1, [r0, #60]
	str r1, [r0, #108]
	ldr r1, _0806D564  @ =gUnknown_082F2EF0
_0806D552:
	str r1, [r0, #112]
	mov r9, r0
	ldr r5, _0806D568  @ =0x03001E20
	mov r8, r5
	b _0806D576
_0806D55C:
	.4byte gUnknown_03001938
_0806D560:
	.4byte 0x03001D70
_0806D564:
	.4byte gUnknown_082F2EF0
_0806D568:
	.4byte 0x03001E20
_0806D56C:
	mov r1, r9
	ldr r0, [r1, #44]
	str r0, [r1, #108]
	ldr r0, _0806D58C  @ =gUnknown_082F2414
_0806D574:
	str r0, [r1, #112]
_0806D576:
	mov r2, r8
	ldr r1, [r2, #16]
	cmp r1, #1
	bne _0806D594
	mov r5, r9
	ldr r0, [r5, #88]
	str r0, [r5, #116]
	ldr r0, _0806D590  @ =gUnknown_082F2164
	str r0, [r5, #120]
	b _0806D676
	.byte 0x00
	.byte 0x00
_0806D58C:
	.4byte gUnknown_082F2414
_0806D590:
	.4byte gUnknown_082F2164
_0806D594:
	cmp r1, #2
	bne _0806D5C0
	mov r0, r9
	add r0, r0, #158
	ldrh r0, [r0]
	cmp r0, #4
	bhi _0806D5B0
	mov r1, r9
	ldr r0, [r1, #88]
	str r0, [r1, #116]
	ldr r0, _0806D5AC  @ =gUnknown_082F2164
	b _0806D674
_0806D5AC:
	.4byte gUnknown_082F2164
_0806D5B0:
	mov r2, r9
	ldr r0, [r2, #80]
	str r0, [r2, #116]
	ldr r0, _0806D5BC  @ =gUnknown_082F200C
	str r0, [r2, #120]
	b _0806D676
_0806D5BC:
	.4byte gUnknown_082F200C
_0806D5C0:
	mov r2, #1
	add r0, r6, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D66C
	cmp r1, #3
	beq _0806D66C
	ldr r4, _0806D608  @ =0x03001D70
	add r0, r4, #0
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D620
	add r5, r4, #0
	add r5, r5, #158
	ldrh r1, [r5]
	cmp r1, #0
	bne _0806D5F8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D5F8:
	ldrh r0, [r5]
	cmp r0, #4
	bhi _0806D610
	ldr r0, [r4, #84]
	str r0, [r4, #116]
	ldr r0, _0806D60C  @ =gUnknown_082F20B8
	b _0806D616
	.byte 0x00
	.byte 0x00
_0806D608:
	.4byte 0x03001D70
_0806D60C:
	.4byte gUnknown_082F20B8
_0806D610:
	ldr r0, [r4, #80]
	str r0, [r4, #116]
	ldr r0, _0806D61C  @ =gUnknown_082F200C
_0806D616:
	str r0, [r4, #120]
	mov r9, r4
	b _0806D676
_0806D61C:
	.4byte gUnknown_082F200C
_0806D620:
	add r0, r7, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D64A
	ldr r0, _0806D65C  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	bne _0806D64A
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D64A:
	ldr r0, _0806D660  @ =0x03001D70
	ldr r1, [r0, #84]
	str r1, [r0, #116]
	ldr r1, _0806D664  @ =gUnknown_082F20B8
	str r1, [r0, #120]
	mov r9, r0
	ldr r5, _0806D668  @ =0x03001E20
	mov r8, r5
	b _0806D676
_0806D65C:
	.4byte gUnknown_03001938
_0806D660:
	.4byte 0x03001D70
_0806D664:
	.4byte gUnknown_082F20B8
_0806D668:
	.4byte 0x03001E20
_0806D66C:
	mov r1, r9
	ldr r0, [r1, #80]
	str r0, [r1, #116]
	ldr r0, _0806D68C  @ =gUnknown_082F200C
_0806D674:
	str r0, [r1, #120]
_0806D676:
	mov r2, r8
	ldr r1, [r2, #20]
	cmp r1, #1
	bne _0806D694
	mov r5, r9
	ldr r0, [r5, #100]
	str r0, [r5, #124]
	mov r1, r9
	add r1, r1, #128
	ldr r0, _0806D690  @ =gUnknown_082F2368
	b _0806D778
_0806D68C:
	.4byte gUnknown_082F200C
_0806D690:
	.4byte gUnknown_082F2368
_0806D694:
	cmp r1, #2
	bne _0806D6BC
	mov r0, r9
	add r0, r0, #158
	ldrh r0, [r0]
	cmp r0, #4
	bhi _0806D6B4
	mov r1, r9
	ldr r0, [r1, #100]
	str r0, [r1, #124]
	add r1, r1, #128
	ldr r0, _0806D6B0  @ =gUnknown_082F2368
	b _0806D778
	.byte 0x00
	.byte 0x00
_0806D6B0:
	.4byte gUnknown_082F2368
_0806D6B4:
	mov r2, r9
	ldr r0, [r2, #92]
	str r0, [r2, #124]
	b _0806D772
_0806D6BC:
	mov r2, #2
	add r0, r6, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D76C
	cmp r1, #3
	beq _0806D76C
	ldr r4, _0806D708  @ =0x03001D70
	add r0, r4, #0
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D724
	add r5, r4, #0
	add r5, r5, #158
	ldrh r1, [r5]
	cmp r1, #0
	bne _0806D6F4
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D6F4:
	ldrh r0, [r5]
	cmp r0, #4
	bhi _0806D710
	ldr r0, [r4, #96]
	str r0, [r4, #124]
	add r1, r4, #0
	add r1, r1, #128
	ldr r0, _0806D70C  @ =gUnknown_082F22BC
	b _0806D71A
	.byte 0x00
	.byte 0x00
_0806D708:
	.4byte 0x03001D70
_0806D70C:
	.4byte gUnknown_082F22BC
_0806D710:
	ldr r0, [r4, #92]
	str r0, [r4, #124]
	add r1, r4, #0
	add r1, r1, #128
	ldr r0, _0806D720  @ =gUnknown_082F2210
_0806D71A:
	str r0, [r1]
	mov r9, r4
	b _0806D77A
_0806D720:
	.4byte gUnknown_082F2210
_0806D724:
	add r0, r7, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D74E
	ldr r0, _0806D760  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	bne _0806D74E
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D74E:
	ldr r1, _0806D764  @ =0x03001D70
	ldr r0, [r1, #96]
	str r0, [r1, #124]
	add r2, r1, #0
	add r2, r2, #128
	ldr r0, _0806D768  @ =gUnknown_082F22BC
	str r0, [r2]
	mov r9, r1
	b _0806D77A
_0806D760:
	.4byte gUnknown_03001938
_0806D764:
	.4byte 0x03001D70
_0806D768:
	.4byte gUnknown_082F22BC
_0806D76C:
	mov r5, r9
	ldr r0, [r5, #92]
	str r0, [r5, #124]
_0806D772:
	mov r1, r9
	add r1, r1, #128
	ldr r0, _0806D7E4  @ =gUnknown_082F2210
_0806D778:
	str r0, [r1]
_0806D77A:
	mov r0, r9
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806D7A4
	ldr r1, _0806D7E8  @ =0x03001E20
	ldr r0, [r1, #8]
	cmp r0, #2
	beq _0806D7A4
	ldr r0, [r1, #12]
	cmp r0, #2
	beq _0806D7A4
	ldr r0, [r1]
	cmp r0, #2
	beq _0806D7A4
	ldr r0, [r1, #16]
	cmp r0, #2
	beq _0806D7A4
	ldr r0, [r1, #20]
	cmp r0, #2
	bne _0806D7D4
_0806D7A4:
	mov r4, r9
	add r4, r4, #158
	ldrh r1, [r4]
	cmp r1, #0
	bne _0806D7C2
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D7C2:
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #9
	bls _0806D7D4
	mov r0, #0
	strh r0, [r4]
_0806D7D4:
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806D7E4:
	.4byte gUnknown_082F2210
_0806D7E8:
	.4byte 0x03001E20
	THUMB_FUNC_END update_tutorial_button_display_0806D1AC