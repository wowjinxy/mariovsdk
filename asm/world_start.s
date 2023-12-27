	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"
	
	THUMB_FUNC_START world_start_init_callback
world_start_init_callback: @ 0x08037050
	push {r4,r5,lr}
	sub sp, sp, #32
	mov r0, #0
	bl sub_08034898
	bl sub_08071FE4
	cmp r0, #11
	beq _0803706C
	mov r0, #11
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_0803706C:
	ldr r4, _08037094  @ =0x030002FC
	mov r0, #16
	bl sub_08034854
	str r0, [r4]
	ldr r1, _08037098  @ =gUnknown_03000BE0
	mov r0, #0
	str r0, [r1]
	str r0, [sp, #12]
	str r0, [sp, #16]
	ldr r0, _0803709C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08037090
	cmp r0, #4
	bne _080370A4
_08037090:
	ldr r2, _080370A0  @ =gUnknown_080A86A4
	b _080370A6
_08037094:
	.4byte 0x030002FC
_08037098:
	.4byte gUnknown_03000BE0
_0803709C:
	.4byte gUnknown_03000B80
_080370A0:
	.4byte gUnknown_080A86A4
_080370A4:
	ldr r2, _08037114  @ =gUnknown_080A86BC
_080370A6:
	ldr r1, _08037118  @ =gAfterTutorialWorld
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #20]
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #24]
	add r0, sp, #12
	mov r1, #3
	bl sub_08032F24
	bl sub_08037230
	mov r0, #128
	lsl r0, r0, #19
	mov r2, #194
	lsl r2, r2, #5
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _0803711C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080370E8
	cmp r0, #4
	bne _0803712C
_080370E8:
	ldr r1, _08037120  @ =gUnknown_080A86A4
	ldr r4, _08037118  @ =gAfterTutorialWorld
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl sub_08006968
	ldr r1, _08037124  @ =0x030002F0
	str r0, [r1]
	ldr r1, _08037128  @ =gUnknown_080A8674
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #3
	bl sub_08032788
	b _08037166
	.byte 0x00
	.byte 0x00
_08037114:
	.4byte gUnknown_080A86BC
_08037118:
	.4byte gAfterTutorialWorld
_0803711C:
	.4byte gUnknown_03000B80
_08037120:
	.4byte gUnknown_080A86A4
_08037124:
	.4byte 0x030002F0
_08037128:
	.4byte gUnknown_080A8674
_0803712C:
	ldr r1, _080371B4  @ =gUnknown_080A86BC
	ldr r4, _080371B8  @ =gAfterTutorialWorld
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl sub_08006968
	ldr r1, _080371BC  @ =0x030002F0
	str r0, [r1]
	ldr r1, _080371C0  @ =gUnknown_080A868C
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #1
	bl sub_08032788
	ldr r1, _080371C4  @ =gUnknown_080A8674
	mov r0, #0
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #2
	bl sub_08032788
_08037166:
	ldr r0, _080371B8  @ =gAfterTutorialWorld
	mov r5, #0
	ldrsb r5, [r0, r5]
	cmp r5, #0
	bne _080371D0
	ldr r1, _080371C8  @ =0x030002F4
	mov r0, #1
	strb r0, [r1]
	str r5, [sp]
	mov r4, #128
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r0, #234
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _080371CC  @ =0x03000300
	ldr r1, [r1]
	str r0, [r1, #16]
	ldr r1, [r1]
	bl sub_08040FC0
	str r5, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r0, #168
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #1
	mov r1, #0
	bl sub_080379BC
	b _080371E6
	.byte 0x00
	.byte 0x00
_080371B4:
	.4byte gUnknown_080A86BC
_080371B8:
	.4byte gAfterTutorialWorld
_080371BC:
	.4byte 0x030002F0
_080371C0:
	.4byte gUnknown_080A868C
_080371C4:
	.4byte gUnknown_080A8674
_080371C8:
	.4byte 0x030002F4
_080371CC:
	.4byte 0x03000300
_080371D0:
	ldr r1, _08037218  @ =0x030002F4
	mov r0, #0
	strb r0, [r1]
	mov r0, #1
	mov r1, #0
	bl sub_080379BC
	mov r0, #0
	mov r1, #22
	bl sub_080379BC
_080371E6:
	ldr r2, _0803721C  @ =gWorldStartData
	ldrh r0, [r2, #48]
	ldrh r1, [r2, #50]
	ldrh r2, [r2, #52]
	bl sub_08029CDC
	add r0, sp, #28
	mov r1, #0
	strh r1, [r0]
	ldr r4, _08037220  @ =gBGLayerOffsets 
	ldr r2, _08037224  @ =0x01000008
	add r1, r4, #0
	bl CpuSet
	ldr r1, _08037228  @ =0x030002F8
	ldr r2, _0803722C  @ =0xFFFFCE00
	add r0, r2, #0
	strh r0, [r1]
	lsl r0, r0, #16
	asr r0, r0, #24
	strh r0, [r4, #10]
	add sp, sp, #32
	pop {r4,r5}
	pop {r0}
	bx r0
_08037218:
	.4byte 0x030002F4
_0803721C:
	.4byte gWorldStartData
_08037220:
	.4byte gBGLayerOffsets 
_08037224:
	.4byte 0x01000008
_08037228:
	.4byte 0x030002F8
_0803722C:
	.4byte 0xFFFFCE00
	THUMB_FUNC_END world_start_init_callback

	THUMB_FUNC_START sub_08037230
sub_08037230: @ 0x08037230
	push {r4,r5,lr}
	ldr r4, _08037284  @ =0x03000300
	mov r0, #20
	bl sub_08034854
	str r0, [r4]
	mov r5, #0
	strh r5, [r0, #12]
	ldr r1, _08037288  @ =gUnknown_08251EC0
	ldrb r1, [r1, #1]
	strh r1, [r0, #14]
	ldr r1, _0803728C  @ =0xFFFFC100
	str r1, [r0]
	mov r1, #56
	str r1, [r0, #4]
	mov r1, #241
	strh r1, [r0, #8]
	mov r1, #128
	lsl r1, r1, #2
	strh r1, [r0, #10]
	ldr r4, _08037290  @ =0x03000304
	mov r0, #20
	bl sub_08034854
	str r0, [r4]
	strh r5, [r0, #12]
	ldr r1, _08037294  @ =gUnknown_0854301C
	ldrb r1, [r1, #1]
	strh r1, [r0, #14]
	ldr r1, _08037298  @ =0xFFFFE000
	str r1, [r0]
	mov r1, #88
	str r1, [r0, #4]
	ldr r1, _0803729C  @ =0x000002E1
	strh r1, [r0, #8]
	mov r1, #168
	lsl r1, r1, #1
	strh r1, [r0, #10]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08037284:
	.4byte 0x03000300
_08037288:
	.4byte gUnknown_08251EC0
_0803728C:
	.4byte 0xFFFFC100
_08037290:
	.4byte 0x03000304
_08037294:
	.4byte gUnknown_0854301C
_08037298:
	.4byte 0xFFFFE000
_0803729C:
	.4byte 0x000002E1
	THUMB_FUNC_END sub_08037230

	THUMB_FUNC_START sub_080372A0
sub_080372A0: @ 0x080372A0
	push {r4-r6,lr}
	sub sp, sp, #12
	ldr r6, _080372B8  @ =0x030002F4
	ldrb r0, [r6]
	cmp r0, #1
	beq _08037330
	cmp r0, #1
	bgt _080372BC
	cmp r0, #0
	beq _080372CA
	b _080374D0
	.byte 0x00
	.byte 0x00
_080372B8:
	.4byte 0x030002F4
_080372BC:
	cmp r0, #2
	bne _080372C2
	b _080373FA
_080372C2:
	cmp r0, #3
	bne _080372C8
	b _080374B0
_080372C8:
	b _080374D0
_080372CA:
	ldr r0, _080372EC  @ =0x030002FC
	ldr r4, [r0]
	ldrb r0, [r4, #1]
	sub r0, r0, #1
	strb r0, [r4, #1]
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	beq _080372DE
	b _080374D0
_080372DE:
	ldrb r1, [r4]
	ldrb r0, [r4, #5]
	sub r0, r0, #1
	cmp r1, r0
	bge _080372F0
	add r0, r1, #1
	b _080373CC
_080372EC:
	.4byte 0x030002FC
_080372F0:
	mov r1, #1
	mov r0, #1
	strh r0, [r4, #6]
	strb r1, [r6]
	str r5, [sp]
	mov r4, #128
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r0, #234
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _0803732C  @ =0x03000300
	ldr r1, [r1]
	str r0, [r1, #16]
	ldr r1, [r1]
	bl sub_08040FC0
	str r5, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r0, #168
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _080374D0
_0803732C:
	.4byte 0x03000300
_08037330:
	ldr r0, _08037354  @ =0x030002FC
	ldr r0, [r0]
	add r4, r0, #0
	add r4, r4, #8
	ldr r0, _08037358  @ =0x03000300
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _0803735C  @ =0x0000EFFF
	cmp r3, r0
	bgt _08037360
	mov r0, #10
	ldrsh r1, [r2, r0]
	add r1, r3, r1
	str r1, [r2]
	ldr r0, [r2, #16]
	bl sub_08040FC0
	b _0803738C
_08037354:
	.4byte 0x030002FC
_08037358:
	.4byte 0x03000300
_0803735C:
	.4byte 0x0000EFFF
_08037360:
	mov r0, #2
	strb r0, [r6]
	mov r0, #234
	bl sub_08071E14
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #18
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _080373EC  @ =0x03000304
	ldr r1, [r1]
	str r0, [r1, #16]
	ldr r1, [r1]
	bl sub_08040FC0
_0803738C:
	ldrb r0, [r4, #1]
	sub r0, r0, #1
	strb r0, [r4, #1]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0803739A
	b _080374D0
_0803739A:
	ldrb r1, [r4]
	ldrb r0, [r4, #5]
	sub r0, r0, #1
	cmp r1, r0
	bge _080373F4
	add r0, r1, #0
	cmp r0, #0
	beq _080373B2
	cmp r0, #8
	beq _080373B2
	cmp r0, #16
	bne _080373C8
_080373B2:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #177
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_080373C8:
	ldrb r0, [r4]
	add r0, r0, #1
_080373CC:
	strb r0, [r4]
	ldr r0, _080373F0  @ =0x030002F0
	ldr r2, [r0]
	ldrb r0, [r4]
	ldrb r1, [r4, #4]
	add r0, r0, r1
	lsl r0, r0, #2
	mov r1, #132
	lsl r1, r1, #1
	add r2, r2, r1
	add r2, r2, r0
	ldr r0, [r2]
	ldrb r0, [r0, #11]
	strb r0, [r4, #1]
	b _080374D0
	.byte 0x00
	.byte 0x00
_080373EC:
	.4byte 0x03000304
_080373F0:
	.4byte 0x030002F0
_080373F4:
	mov r0, #1
	strh r0, [r4, #6]
	b _080374D0
_080373FA:
	ldr r0, _08037418  @ =0x03000304
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _0803741C  @ =0x000063FF
	cmp r3, r0
	bgt _08037420
	mov r0, #10
	ldrsh r1, [r2, r0]
	add r1, r3, r1
	str r1, [r2]
	ldr r0, [r2, #16]
	bl sub_08040FC0
	b _080374D0
	.byte 0x00
	.byte 0x00
_08037418:
	.4byte 0x03000304
_0803741C:
	.4byte 0x000063FF
_08037420:
	ldr r0, _08037454  @ =0x000002D7
	strh r0, [r2, #8]
	ldr r1, _08037458  @ =0x030002F8
	ldr r2, _0803745C  @ =0xFFFFCE00
	add r0, r2, #0
	strh r0, [r1]
	ldr r1, _08037460  @ =gBGLayerOffsets 
	lsl r0, r0, #16
	asr r0, r0, #24
	strh r0, [r1, #10]
	mov r0, #3
	strb r0, [r6]
	mov r0, #18
	bl sub_08071E14
	ldr r0, _08037464  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0803744E
	cmp r0, #4
	bne _08037468
_0803744E:
	mov r1, #0
	b _0803746A
	.byte 0x00
	.byte 0x00
_08037454:
	.4byte 0x000002D7
_08037458:
	.4byte 0x030002F8
_0803745C:
	.4byte 0xFFFFCE00
_08037460:
	.4byte gBGLayerOffsets 
_08037464:
	.4byte gUnknown_03000B80
_08037468:
	mov r1, #1
_0803746A:
	ldr r2, _080374A8  @ =gUnknown_080A86D4
	lsl r1, r1, #1
	ldr r0, _080374AC  @ =gAfterTutorialWorld
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #2
	add r1, r1, r0
	add r1, r1, r2
	mov r3, #0
	ldrsh r0, [r1, r3]
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #3
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	b _080374D0
	.byte 0x00
	.byte 0x00
_080374A8:
	.4byte gUnknown_080A86D4
_080374AC:
	.4byte gAfterTutorialWorld
_080374B0:
	ldr r2, _080374D8  @ =0x030002F8
	ldrh r0, [r2]
	add r0, r0, #128
	strh r0, [r2]
	lsl r0, r0, #16
	cmp r0, #0
	blt _080374C6
	mov r0, #0
	strh r0, [r2]
	mov r0, #4
	strb r0, [r6]
_080374C6:
	ldr r1, _080374DC  @ =gBGLayerOffsets 
	ldrh r0, [r2]
	lsl r0, r0, #16
	asr r0, r0, #24
	strh r0, [r1, #10]
_080374D0:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
_080374D8:
	.4byte 0x030002F8
_080374DC:
	.4byte gBGLayerOffsets 
	THUMB_FUNC_END sub_080372A0

	THUMB_FUNC_START world_start_main
world_start_main: @ 0x080374E0
	push {r4,lr}
	sub sp, sp, #12
	bl sub_08029C20
	bl sub_080331FC
	ldr r0, _0803753C  @ =0x030002F4
	ldrb r0, [r0]
	cmp r0, #4
	bne _08037550
	ldr r0, _08037540  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _08037550
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _08037544  @ =gPreviousMainState
	ldr r0, [r0]
	cmp r0, #3
	bne _08037548
	mov r0, #3
	mov r1, #41
	mov r2, #8
	mov r3, #1
	bl movie_player_setup_data
	mov r0, #30
	mov r1, #1
	bl sub_080070E8
	mov r0, #1
	mov r1, #1
	bl sub_080148A4
	b _08037550
_0803753C:
	.4byte 0x030002F4
_08037540:
	.4byte gUnknown_030012E8
_08037544:
	.4byte gPreviousMainState
_08037548:
	mov r0, #8
	mov r1, #1
	bl sub_080070E8
_08037550:
	ldr r0, _080375E0  @ =0x03000304
	ldr r3, [r0]
	mov r0, #8
	ldrsh r1, [r3, r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r1, _080375E4  @ =gUncompressedGraphicsTable
	add r2, r0, r1
	ldrh r0, [r3, #14]
	sub r0, r0, #1
	strh r0, [r3, #14]
	lsl r0, r0, #16
	add r4, r1, #0
	cmp r0, #0
	bgt _08037596
	ldrh r0, [r3, #12]
	add r0, r0, #1
	strh r0, [r3, #12]
	mov r1, #12
	ldrsh r0, [r3, r1]
	ldrh r1, [r2]
	cmp r0, r1
	blt _08037584
	mov r0, #0
	strh r0, [r3, #12]
_08037584:
	mov r0, #12
	ldrsh r1, [r3, r0]
	ldr r2, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r3, #14]
_08037596:
	ldr r0, _080375E8  @ =0x03000300
	ldr r3, [r0]
	mov r0, #8
	ldrsh r1, [r3, r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r2, r0, r4
	ldrh r0, [r3, #14]
	sub r0, r0, #1
	strh r0, [r3, #14]
	lsl r0, r0, #16
	cmp r0, #0
	bgt _080375D8
	ldrh r0, [r3, #12]
	add r0, r0, #1
	strh r0, [r3, #12]
	mov r1, #12
	ldrsh r0, [r3, r1]
	ldrh r1, [r2]
	cmp r0, r1
	blt _080375C6
	mov r0, #0
	strh r0, [r3, #12]
_080375C6:
	mov r0, #12
	ldrsh r1, [r3, r0]
	ldr r2, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r3, #14]
_080375D8:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_080375E0:
	.4byte 0x03000304
_080375E4:
	.4byte gUncompressedGraphicsTable
_080375E8:
	.4byte 0x03000300
	THUMB_FUNC_END world_start_main

	THUMB_FUNC_START sub_080375EC
sub_080375EC: @ 0x080375EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r12, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	mov r2, #8
	ldrsh r1, [r0, r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r1, _08037644  @ =gUncompressedGraphicsTable
	add r7, r0, r1
	ldr r1, [r7, #12]
	ldr r0, [r1, #8]
	ldr r3, _08037648  @ =gUnknown_0300192C
	mov r10, r3
	ldr r4, _0803764C  @ =0x030002F6
	ldr r5, _08037650  @ =gOamData
	ldr r6, _08037654  @ =gUnknown_03001930
	cmp r0, #0
	blt _08037622
	b _08037740
_08037622:
	add r5, r1, #0
	ldr r0, [r5, #12]
	ldr r1, [r0, #8]
	lsr r2, r1, #24
	lsr r0, r1, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r3, r2, #0
	mul r3, r0, r3
	mov r9, r3
	mov r0, #64
	and r1, r1, r0
	cmp r1, #0
	beq _08037658
	lsl r1, r3, #16
	asr r0, r1, #18
	b _0803765E
_08037644:
	.4byte gUncompressedGraphicsTable
_08037648:
	.4byte gUnknown_0300192C
_0803764C:
	.4byte 0x030002F6
_08037650:
	.4byte gOamData
_08037654:
	.4byte gUnknown_03001930
_08037658:
	mov r0, r9
	lsl r1, r0, #16
	asr r0, r1, #19
_0803765E:
	lsl r0, r0, #16
	lsr r4, r0, #16
	mov r8, r1
	ldr r3, _08037820  @ =REG_DMA3SAD
	mov r2, r12
	mov r0, #12
	ldrsh r1, [r2, r0]
	ldr r2, [r5, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r0]
	lsl r0, r4, #16
	asr r0, r0, #16
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r5, #20]
	add r0, r0, r1
	str r0, [r3]
	ldr r2, _08037824  @ =gUnknown_0300192C
	ldrh r0, [r2]
	ldr r1, _08037828  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r3, #4]
	mov r1, r8
	asr r0, r1, #16
	mov r10, r2
	cmp r0, #0
	bge _0803769C
	add r0, r0, #3
_0803769C:
	asr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r5, #16]
	str r0, [r3]
	ldr r4, _0803782C  @ =0x030002F6
	ldrh r0, [r4]
	lsl r0, r0, #3
	ldr r5, _08037830  @ =gOamData
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _08037834  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r6, _08037838  @ =gUnknown_03001930
	lsr r1, r1, #22
	ldrh r0, [r6]
	add r1, r1, r0
	ldr r0, _0803783C  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08037840  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r3, r12
	ldr r1, [r3]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r3, [r2, #2]
	ldr r0, _08037844  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r12
	ldr r1, [r2, #4]
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r0, #1
	ldr r1, [sp]
	and r1, r1, r0
	lsl r1, r1, #4
	ldrb r3, [r2, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #3]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r0, [r1, #5]
	mov r2, #12
	orr r0, r0, r2
	strb r0, [r1, #5]
	mov r3, r8
	asr r0, r3, #21
	ldrh r1, [r6]
	add r0, r0, r1
	strh r0, [r6]
	mov r2, r10
	ldrh r0, [r2]
	add r0, r0, r9
	strh r0, [r2]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_08037740:
	ldr r2, _08037820  @ =REG_DMA3SAD
	mov r3, r12
	mov r0, #12
	ldrsh r1, [r3, r0]
	ldr r3, [r7, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r1, [r0]
	ldrh r0, [r7, #6]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r7, #20]
	add r0, r0, r1
	str r0, [r2]
	mov r1, r10
	ldrh r0, [r1]
	ldr r1, _08037828  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r7, #2]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r7, #16]
	str r0, [r2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r2, #4]
	ldr r0, _08037834  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r6]
	add r1, r1, r0
	ldr r0, _0803783C  @ =0x000003FF
	mov r8, r0
	mov r0, r8
	and r1, r1, r0
	ldr r0, _08037840  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r3, r12
	ldr r1, [r3]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r3, [r2, #2]
	ldr r0, _08037844  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r12
	ldr r1, [r2, #4]
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r0, #1
	ldr r1, [sp]
	and r1, r1, r0
	lsl r1, r1, #4
	ldrb r3, [r2, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #3]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r0, [r1, #5]
	mov r2, #12
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7, #4]
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	ldrh r0, [r7, #2]
	mov r1, r10
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r10
	strh r0, [r2]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08037820:
	.4byte REG_DMA3SAD
_08037824:
	.4byte gUnknown_0300192C
_08037828:
	.4byte OBJ_VRAM0
_0803782C:
	.4byte 0x030002F6
_08037830:
	.4byte gOamData
_08037834:
	.4byte 0x84000002
_08037838:
	.4byte gUnknown_03001930
_0803783C:
	.4byte 0x000003FF
_08037840:
	.4byte 0xFFFFFC00
_08037844:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080375EC

	THUMB_FUNC_START world_start_loop
world_start_loop: @ 0x08037848
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r4, _080378A0  @ =0xFFFFF470
	add sp, sp, r4
	add r1, sp, #4
	mov r0, #160
	strh r0, [r1]
	ldr r1, _080378A4  @ =REG_DMA3SAD
	add r0, sp, #4
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _080378A8  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, #160
	str r0, [sp, #8]
	add r0, sp, #8
	str r0, [r1]
	ldr r0, _080378AC  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _080378B0  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _080378B4  @ =gUnknown_03001930
	ldr r2, _080378B8  @ =gUnknown_0300192C
	ldr r1, _080378BC  @ =0x030002F6
	mov r0, #0
	strh r0, [r1]
	strh r0, [r2]
	strh r0, [r3]
	ldr r0, _080378C0  @ =0x030002F4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080378C8
	cmp r0, #1
	beq _08037930
	ldr r0, _080378C4  @ =0x03000304
	ldr r0, [r0]
	mov r1, #1
	b _08037964
_080378A0:
	.4byte 0xFFFFF470
_080378A4:
	.4byte REG_DMA3SAD
_080378A8:
	.4byte 0x81000100
_080378AC:
	.4byte gOamData
_080378B0:
	.4byte 0x85000100
_080378B4:
	.4byte gUnknown_03001930
_080378B8:
	.4byte gUnknown_0300192C
_080378BC:
	.4byte 0x030002F6
_080378C0:
	.4byte 0x030002F4
_080378C4:
	.4byte 0x03000304
_080378C8:
	ldr r2, _08037924  @ =0x030002FC
	mov r8, r2
	ldr r3, [r2]
	ldrb r0, [r3, #2]
	ldrb r1, [r3, #3]
	ldr r7, _08037928  @ =0x030002F0
	mov r9, r7
	mov r2, r9
	ldr r4, [r2]
	ldrb r2, [r3]
	ldrb r3, [r3, #4]
	add r2, r2, r3
	lsl r2, r2, #2
	mov r3, #132
	lsl r3, r3, #1
	add r4, r4, r3
	add r4, r4, r2
	ldr r2, [r4]
	ldr r6, _0803792C  @ =gWorldStartData
	ldr r3, [r6, #76]
	mov r5, #5
	str r5, [sp]
	bl sub_08006548
	mov r7, r8
	ldr r2, [r7]
	add r3, r2, #0
	add r3, r3, #8
	ldrb r0, [r3, #2]
	ldrb r1, [r3, #3]
	mov r7, r9
	ldr r4, [r7]
	ldrb r2, [r2, #8]
	ldrb r3, [r3, #4]
	add r2, r2, r3
	lsl r2, r2, #2
	mov r3, #132
	lsl r3, r3, #1
	add r4, r4, r3
	add r4, r4, r2
	ldr r2, [r4]
	ldr r3, [r6, #76]
	str r5, [sp]
	bl sub_08006548
	b _08037968
_08037924:
	.4byte 0x030002FC
_08037928:
	.4byte 0x030002F0
_0803792C:
	.4byte gWorldStartData
_08037930:
	ldr r0, _08037998  @ =0x030002FC
	ldr r5, [r0]
	add r3, r5, #0
	add r3, r3, #8
	ldrb r0, [r3, #2]
	ldrb r1, [r3, #3]
	ldr r2, _0803799C  @ =0x030002F0
	ldr r4, [r2]
	ldrb r2, [r5, #8]
	ldrb r3, [r3, #4]
	add r2, r2, r3
	lsl r2, r2, #2
	mov r7, #132
	lsl r7, r7, #1
	add r4, r4, r7
	add r4, r4, r2
	ldr r2, [r4]
	ldr r3, _080379A0  @ =gWorldStartData
	ldr r3, [r3, #76]
	mov r4, #5
	str r4, [sp]
	bl sub_08006548
	ldr r0, _080379A4  @ =0x03000300
	ldr r0, [r0]
	mov r1, #0
_08037964:
	bl sub_080375EC
_08037968:
	ldr r1, _080379A8  @ =REG_DMA3SAD
	ldr r0, _080379AC  @ =gOamData
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _080379B0  @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080379B4  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _08037986
	bl sub_080372A0
_08037986:
	mov r3, #185
	lsl r3, r3, #4
	add sp, sp, r3
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08037998:
	.4byte 0x030002FC
_0803799C:
	.4byte 0x030002F0
_080379A0:
	.4byte gWorldStartData
_080379A4:
	.4byte 0x03000300
_080379A8:
	.4byte REG_DMA3SAD
_080379AC:
	.4byte gOamData
_080379B0:
	.4byte 0x84000100
_080379B4:
	.4byte gUnknown_03000C28
	THUMB_FUNC_END world_start_loop

	THUMB_FUNC_START world_start_end
world_start_end: @ 0x080379B8
	bx lr
	THUMB_FUNC_END world_start_end
	.byte 0x00
	.byte 0x00
	