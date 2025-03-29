	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START load_theme_card_data_08031804
load_theme_card_data_08031804: @ 0x08031804
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	mov r9, r0
	str r2, [sp]
	ldr r0, _0803185C  @ =gThemeCardPtr
	ldr r2, [r0]
	lsl r1, r1, #1
	add r0, r2, #0
	add r0, r0, #28
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08031828
	b _08031934
_08031828:
	add r2, r2, r0
	str r2, [sp, #4]
	ldr r0, [sp]
	lsl r2, r0, #2
	mov r3, r9
	add r3, r3, #80
	add r1, r3, r2
	mov r4, r9
	ldrh r0, [r4, #44]
	lsl r0, r0, #6
	ldr r1, [r1]
	add r0, r0, r1
	mov r8, r0
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	ldrh r7, [r1, #2]
	add r4, r1, #0
	add r4, r4, #4
	str r2, [sp, #12]
	str r3, [sp, #8]
	cmp r0, #0
	bne _08031860
	mov r2, #64
	add r2, r2, r9
	mov r10, r2
	b _080318A2
_0803185C:
	.4byte gThemeCardPtr
_08031860:
	add r6, r4, r0
	mov r0, r8
	cmp r0, #0
	bne _08031872
	add r4, r6, #0
	mov r1, #64
	add r1, r1, r9
	mov r10, r1
	b _080318A2
_08031872:
	mov r2, #64
	add r2, r2, r9
	mov r10, r2
	cmp r4, r6
	bcs _080318A0
_0803187C:
	ldrh r5, [r4]
	mul r5, r7, r5
	add r4, r4, #2
	ldrh r0, [r4]
	add r4, r4, #2
	mul r0, r7, r0
	cmp r5, #0
	beq _0803189A
	mov r2, r8
	add r1, r2, r0
	lsl r2, r5, #10
	lsr r2, r2, #11
	add r0, r4, #0
	bl CpuSet
_0803189A:
	add r4, r4, r5
	cmp r4, r6
	bcc _0803187C
_080318A0:
	add r4, r6, #0
_080318A2:
	mov r1, #0
_080318A4:
	lsl r0, r1, #2
	add r0, r0, r10
	ldr r0, [r0]
	mov r8, r0
	ldrh r0, [r4]
	ldrh r3, [r4, #2]
	add r4, r4, #4
	cmp r0, #0
	bne _080318BA
	add r7, r1, #1
	b _080318F8
_080318BA:
	add r6, r4, r0
	mov r0, r8
	cmp r0, #0
	bne _080318C8
	add r4, r6, #0
	add r7, r1, #1
	b _080318F8
_080318C8:
	add r7, r1, #1
	cmp r4, r6
	bcs _080318F6
_080318CE:
	ldrh r5, [r4]
	mul r5, r3, r5
	add r4, r4, #2
	ldrh r0, [r4]
	add r4, r4, #2
	mul r0, r3, r0
	cmp r5, #0
	beq _080318F0
	mov r2, r8
	add r1, r2, r0
	lsl r2, r5, #10
	lsr r2, r2, #11
	add r0, r4, #0
	str r3, [sp, #16]
	bl CpuSet
	ldr r3, [sp, #16]
_080318F0:
	add r4, r4, r5
	cmp r4, r6
	bcc _080318CE
_080318F6:
	add r4, r6, #0
_080318F8:
	add r1, r7, #0
	cmp r1, #3
	bls _080318A4
	ldrh r0, [r4]
	cmp r0, #0
	beq _08031934
	mov r3, #64
	ldr r0, [sp]
	lsl r1, r0, #1
	mov r0, r9
	add r0, r0, #56
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0803191C
	mov r3, #32
_0803191C:
	add r0, r4, #4
	ldr r1, [sp, #8]
	ldr r4, [sp, #12]
	add r2, r1, r4
	mov r4, r9
	ldrh r1, [r4, #44]
	lsl r1, r1, #6
	ldr r2, [r2]
	add r2, r2, r1
	ldr r1, [sp, #4]
	bl sub_0801B430
_08031934:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END load_theme_card_data_08031804

	THUMB_FUNC_START check_if_theme_card_exists_08031944
check_if_theme_card_exists_08031944: @ 0x08031944
	push {lr}
	add r2, r0, #0
	ldr r0, _08031954  @ =gThemeCardExists_03000280
	ldr r0, [r0]
	cmp r0, #0
	bne _08031958
	mov r0, #0
	b _08031972
_08031954:
	.4byte gThemeCardExists_03000280
_08031958:
	cmp r2, #0
	beq _08031970
	ldr r0, _0803196C  @ =gThemeCardPtr
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bne _08031970
	mov r0, #2
	b _08031972
_0803196C:
	.4byte gThemeCardPtr
_08031970:
	mov r0, #1
_08031972:
	pop {r1}
	bx r1
	THUMB_FUNC_END check_if_theme_card_exists_08031944

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START load_theme_card_08031978
load_theme_card_08031978: @ 0x08031978
	push {r4,r5,lr}
	add r5, r0, #0
	cmp r5, #0
	bne _0803198C
	ldr r0, _08031988  @ =gThemeCardExists_03000280
	str r5, [r0]
	b _080319AC
	.byte 0x00
	.byte 0x00
_08031988:
	.4byte gThemeCardExists_03000280
_0803198C:
	ldr r1, _080319B4  @ =gThemeCardExists_03000280
	mov r0, #1
	str r0, [r1]
	ldr r4, _080319B8  @ =gThemeCardPtr
	ldr r1, [r4]
	add r0, r5, #0
	mov r2, #20
	bl CpuSet
	add r0, r5, #0
	add r0, r0, #40
	ldr r1, [r4]
	add r1, r1, #40
	mov r2, #0
	bl load_compressed_data
_080319AC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080319B4:
	.4byte gThemeCardExists_03000280
_080319B8:
	.4byte gThemeCardPtr
	THUMB_FUNC_END load_theme_card_08031978

	THUMB_FUNC_START load_level_with_theme_card_080319BC
load_level_with_theme_card_080319BC: @ 0x080319BC
	push {r4-r7,lr}
	add r3, r0, #0
	add r4, r1, #0
	ldr r0, _08031A30  @ =gThemeCardExists_03000280
	ldr r0, [r0]
	cmp r0, #0
	beq _08031A28
	ldr r5, _08031A34  @ =gThemeCardPtr
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r2, r0
	bne _08031A28
	add r0, r3, #0
	mov r1, #0
	mov r2, #1
	bl load_theme_card_data_08031804
	ldr r0, [r4]
	ldrb r1, [r4, #11]
	mov r2, #2
	bl load_theme_card_data_08031804
	ldr r0, [r5]
	ldrh r1, [r0, #38]
	cmp r1, #0
	beq _08031A28
	add r0, r0, r1
	ldrh r1, [r0]
	ldrh r6, [r0, #2]
	add r4, r0, #4
	cmp r1, #0
	beq _08031A28
	add r7, r4, r1
	cmp r4, r7
	bcs _08031A28
_08031A02:
	ldrh r5, [r4]
	mul r5, r6, r5
	add r4, r4, #2
	ldrh r1, [r4]
	add r4, r4, #2
	mul r1, r6, r1
	cmp r5, #0
	beq _08031A22
	mov r0, #160
	lsl r0, r0, #19
	add r1, r1, r0
	lsl r2, r5, #10
	lsr r2, r2, #11
	add r0, r4, #0
	bl CpuSet
_08031A22:
	add r4, r4, r5
	cmp r4, r7
	bcc _08031A02
_08031A28:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031A30:
	.4byte gThemeCardExists_03000280
_08031A34:
	.4byte gThemeCardPtr
	THUMB_FUNC_END load_level_with_theme_card_080319BC

	THUMB_FUNC_START get_theme_card_name_08031A38
get_theme_card_name_08031A38: @ 0x08031A38
	push {lr}
	cmp r0, #0
	bne _08031A58
	ldr r0, _08031A4C  @ =gThemeCardExists_03000280
	ldr r0, [r0]
	cmp r0, #0
	bne _08031A54
	ldr r0, _08031A50  @ =gTextBlank2
	b _08031A5A
	.byte 0x00
	.byte 0x00
_08031A4C:
	.4byte gThemeCardExists_03000280
_08031A50:
	.4byte gTextBlank2
_08031A54:
	ldr r0, _08031A60  @ =gThemeCardPtr
	ldr r0, [r0]
_08031A58:
	add r0, r0, #12
_08031A5A:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08031A60:
	.4byte gThemeCardPtr
	THUMB_FUNC_END get_theme_card_name_08031A38
