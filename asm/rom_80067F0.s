	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_080067F0
sub_080067F0: @ 0x080067F0
	push {r4-r7,lr}
	sub sp, sp, #28
	add r6, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	add r5, r3, #0
	str r1, [sp, #4]
	cmp r1, r5
	bge _08006836
	mov r3, sp
_08006804:
	str r6, [sp]
	cmp r6, r4
	bge _0800682C
_0800680A:
	mov r0, sp
	add r1, sp, #8
	add r2, sp, #16
	str r3, [sp, #24]
	bl sub_08002390
	ldr r3, [sp, #24]
	cmp r0, #0
	beq _08006852
	ldrb r0, [r0, #4]
	cmp r0, #8
	bne _08006852
	ldr r0, [sp]
	add r0, r0, #8
	str r0, [sp]
	cmp r0, r4
	blt _0800680A
_0800682C:
	ldr r0, [r3, #4]
	add r0, r0, #8
	str r0, [r3, #4]
	cmp r0, r5
	blt _08006804
_08006836:
	str r5, [sp, #4]
	str r6, [sp]
	cmp r6, r4
	bge _08006860
_0800683E:
	mov r0, sp
	add r1, sp, #8
	add r2, sp, #20
	bl sub_08002390
	cmp r0, #0
	beq _08006852
	ldrb r0, [r0, #4]
	cmp r0, #8
	beq _08006856
_08006852:
	mov r0, #0
	b _08006862
_08006856:
	ldr r0, [sp]
	add r0, r0, #8
	str r0, [sp]
	cmp r0, r4
	blt _0800683E
_08006860:
	mov r0, #1
_08006862:
	add sp, sp, #28
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080067F0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800686C
sub_0800686C: @ 0x0800686C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #52
	mov r8, r0
	ldr r0, [sp, #92]
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #40]
	ldr r0, _08006940  @ =0x7FFFFFFF
	str r0, [sp, #48]
	mov r0, #0
	ldr r4, [sp, #88]
	str r0, [r4]
	ldr r4, [sp, #84]
	str r0, [r4]
	add r3, r1, r3
	add r2, r2, r8
	mov r0, r8
	asr r0, r0, #8
	mov r8, r0
	asr r2, r2, #8
	asr r3, r3, #8
	asr r1, r1, #8
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #12]
	sub r2, r2, r0
	sub r3, r3, r1
	add r2, r2, #7
	mov r0, #8
	neg r0, r0
	and r2, r2, r0
	add r2, r2, r8
	mov r9, r2
	add r3, r3, #7
	and r3, r3, r0
	add r3, r1, r3
	str r3, [sp, #44]
	add r6, r1, #0
	cmp r6, r3
	bgt _08006934
_080068C6:
	mov r5, r8
	mov r1, #8
	add r1, r1, r6
	mov r10, r1
	cmp r5, r9
	bgt _0800692C
	add r7, sp, #24
_080068D4:
	str r5, [sp, #16]
	add r0, sp, #16
	str r6, [r0, #4]
	add r1, r7, #0
	mov r2, #0
	bl sub_08002390
	add r2, r0, #0
	cmp r2, #0
	beq _08006926
	ldrb r0, [r2, #4]
	cmp r0, #18
	bne _08006926
	ldrb r0, [r2, #15]
	cmp r0, #0
	beq _080068FA
	ldr r4, [sp, #40]
	cmp r0, r4
	bne _08006926
_080068FA:
	add r4, sp, #32
	mov r0, sp
	add r1, r7, #0
	add r3, r4, #0
	bl sub_080022AC
	ldr r1, [sp, #48]
	cmp r0, r1
	bge _08006926
	ldr r2, [sp, #32]
	add r1, r2, #0
	cmp r2, #0
	bge _08006916
	neg r1, r2
_08006916:
	cmp r1, #7
	bgt _08006926
	str r0, [sp, #48]
	ldr r0, [sp, #84]
	str r2, [r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #88]
	str r0, [r1]
_08006926:
	add r5, r5, #8
	cmp r5, r9
	ble _080068D4
_0800692C:
	mov r6, r10
	ldr r4, [sp, #44]
	cmp r6, r4
	ble _080068C6
_08006934:
	ldr r0, _08006940  @ =0x7FFFFFFF
	ldr r1, [sp, #48]
	cmp r1, r0
	bne _08006944
	mov r0, #0
	b _08006956
_08006940:
	.4byte 0x7FFFFFFF
_08006944:
	ldr r4, [sp, #84]
	ldr r0, [r4]
	lsl r0, r0, #8
	str r0, [r4]
	ldr r1, [sp, #88]
	ldr r0, [r1]
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #1
_08006956:
	add sp, sp, #52
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800686C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START repoint_tile_objects_08006968
repoint_tile_objects_08006968: @ 0x08006968
	push {r4-r6,lr}
	ldr r1, [r0, #112]
	add r0, r0, r1
	ldr r5, _080069B8  @ =gObjectTileDataRAMPtr
	ldr r1, [r5]
	mov r2, #0
	bl load_compressed_data
	mov r4, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	cmp r4, r0
	bcs _080069AC
	add r6, r5, #0
	mov r5, #132
	lsl r5, r5, #1
_08006988:
	ldr r2, [r6]
	lsl r3, r4, #2
	mov r1, #132
	lsl r1, r1, #1
	add r0, r2, r1
	add r0, r0, r3
	ldr r1, [r0]
	mov r0, #132
	lsl r0, r0, #1
	add r1, r1, r0
	add r0, r2, r5
	add r0, r0, r3
	add r1, r2, r1
	str r1, [r0]
	add r4, r4, #1
	ldr r0, [r2, #4]
	cmp r4, r0
	bcc _08006988
_080069AC:
	ldr r0, _080069B8  @ =gObjectTileDataRAMPtr
	ldr r0, [r0]
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080069B8:
	.4byte gObjectTileDataRAMPtr
	THUMB_FUNC_END repoint_tile_objects_08006968

	THUMB_FUNC_START load_arm_code_2_080069BC
load_arm_code_2_080069BC: @ 0x080069BC
	push {r4,lr}
	mov r0, #175
	lsl r0, r0, #2
	bl arena_allocate
	add r4, r0, #0
	ldr r0, _080069E0  @ =0x08000430
	mov r2, #175
	lsl r2, r2, #1
	add r1, r4, #0
	bl CpuSet
	ldr r0, _080069E4  @ =gUnknown_03000964
	str r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080069E0:
	.4byte sub_08000430
_080069E4:
	.4byte gUnknown_03000964
	THUMB_FUNC_END load_arm_code_2_080069BC
