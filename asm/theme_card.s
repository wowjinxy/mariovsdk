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
