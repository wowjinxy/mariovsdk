	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START level_retry_init_callback
level_retry_init_callback: @ 0x0802AAE8
	push {r4-r7,lr}
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _0802AB18  @ =gMainState
	ldr r0, [r0]
	cmp r0, #14
	bne _0802AB24
	ldr r1, _0802AB1C  @ =0x03000154
	mov r0, #4
	strb r0, [r1]
	ldr r1, _0802AB20  @ =0x03000155
	mov r0, #2
	strb r0, [r1]
	mov r0, #4
	mov r1, #2
	bl sub_08032788
	b _0802AC82
_0802AB18:
	.4byte gMainState
_0802AB1C:
	.4byte 0x03000154
_0802AB20:
	.4byte 0x03000155
_0802AB24:
	cmp r0, #2
	bne _0802AB2C
	bl sub_080720AC
_0802AB2C:
	ldr r7, _0802AB58  @ =gUnknown_0807A974
	ldr r0, _0802AB5C  @ =gNextLevelID
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r5, r0, #25
	ldr r6, _0802AB60  @ =gCurrentWorld
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r3, [r0]
	cmp r3, #1
	beq _0802ABA8
	cmp r3, #1
	bgt _0802AB64
	cmp r3, #0
	beq _0802AB6E
	b _0802AC82
	.byte 0x00
	.byte 0x00
_0802AB58:
	.4byte gUnknown_0807A974
_0802AB5C:
	.4byte gNextLevelID
_0802AB60:
	.4byte gCurrentWorld
_0802AB64:
	cmp r3, #2
	beq _0802ABF8
	cmp r3, #3
	beq _0802AC40
	b _0802AC82
_0802AB6E:
	ldr r2, _0802AB90  @ =0x03000156
	ldr r1, _0802AB94  @ =0x03000152
	ldrb r0, [r0, #1]
	strb r0, [r1]
	strb r0, [r2]
	ldr r0, _0802AB98  @ =0x03000157
	mov r2, #20
	strb r2, [r0]
	ldr r0, _0802AB9C  @ =0x03000153
	strb r3, [r0]
	ldr r1, _0802ABA0  @ =0x03000154
	mov r0, #30
	strb r0, [r1]
	ldr r0, _0802ABA4  @ =0x03000155
	strb r2, [r0]
	b _0802AC82
	.byte 0x00
	.byte 0x00
_0802AB90:
	.4byte 0x03000156
_0802AB94:
	.4byte 0x03000152
_0802AB98:
	.4byte 0x03000157
_0802AB9C:
	.4byte 0x03000153
_0802ABA0:
	.4byte 0x03000154
_0802ABA4:
	.4byte 0x03000155
_0802ABA8:
	ldr r1, _0802ABE0  @ =0x03000156
	ldrb r0, [r0, #1]
	mov r2, #30
	sub r0, r2, r0
	strb r0, [r1]
	ldr r0, _0802ABE4  @ =0x03000157
	mov r4, #20
	strb r4, [r0]
	ldr r0, _0802ABE8  @ =0x03000152
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0802ABEC  @ =0x03000153
	strb r1, [r0]
	ldr r3, _0802ABF0  @ =0x03000154
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	sub r2, r2, r0
	strb r2, [r3]
	ldr r0, _0802ABF4  @ =0x03000155
	strb r4, [r0]
	b _0802AC82
	.byte 0x00
	.byte 0x00
_0802ABE0:
	.4byte 0x03000156
_0802ABE4:
	.4byte 0x03000157
_0802ABE8:
	.4byte 0x03000152
_0802ABEC:
	.4byte 0x03000153
_0802ABF0:
	.4byte 0x03000154
_0802ABF4:
	.4byte 0x03000155
_0802ABF8:
	ldr r0, _0802AC28  @ =0x03000156
	mov r4, #30
	strb r4, [r0]
	ldr r3, _0802AC2C  @ =0x03000157
	ldr r2, _0802AC30  @ =0x03000153
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	strb r0, [r2]
	strb r0, [r3]
	ldr r1, _0802AC34  @ =0x03000152
	mov r0, #0
	strb r0, [r1]
	ldr r0, _0802AC38  @ =0x03000154
	strb r4, [r0]
	ldr r1, _0802AC3C  @ =0x03000155
	mov r0, #20
	strb r0, [r1]
	b _0802AC82
_0802AC28:
	.4byte 0x03000156
_0802AC2C:
	.4byte 0x03000157
_0802AC30:
	.4byte 0x03000153
_0802AC34:
	.4byte 0x03000152
_0802AC38:
	.4byte 0x03000154
_0802AC3C:
	.4byte 0x03000155
_0802AC40:
	ldr r0, _0802AC90  @ =0x03000156
	mov r4, #30
	strb r4, [r0]
	ldr r3, _0802AC94  @ =0x03000157
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	mov r2, #20
	sub r0, r2, r0
	strb r0, [r3]
	ldr r0, _0802AC98  @ =0x03000152
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0802AC9C  @ =0x03000153
	strb r1, [r0]
	ldr r0, _0802ACA0  @ =0x03000154
	strb r4, [r0]
	ldr r3, _0802ACA4  @ =0x03000155
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	sub r2, r2, r0
	strb r2, [r3]
_0802AC82:
	ldr r1, _0802ACA8  @ =0x03000150
	mov r0, #1
	strb r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AC90:
	.4byte 0x03000156
_0802AC94:
	.4byte 0x03000157
_0802AC98:
	.4byte 0x03000152
_0802AC9C:
	.4byte 0x03000153
_0802ACA0:
	.4byte 0x03000154
_0802ACA4:
	.4byte 0x03000155
_0802ACA8:
	.4byte 0x03000150
	THUMB_FUNC_END level_retry_init_callback

	THUMB_FUNC_START level_retry_main
level_retry_main: @ 0x0802ACAC
	push {r4,lr}
	ldr r2, _0802ACF4  @ =0x03000150
	ldrb r0, [r2]
	cmp r0, #2
	bne _0802AD38
	ldr r1, _0802ACF8  @ =0x03000151
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #30
	bne _0802ADA4
	mov r0, #3
	strb r0, [r2]
	ldr r0, _0802ACFC  @ =gMainState
	ldr r0, [r0]
	cmp r0, #14
	bne _0802AD0A
	bl sub_080072A4
	bl sub_08040B28
	ldr r4, _0802AD00  @ =gNextLevelInLevelTable
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _0802AD04
	mov r0, #0
	bl sub_0802BEA4
	b _0802AD16
	.byte 0x00
	.byte 0x00
_0802ACF4:
	.4byte 0x03000150
_0802ACF8:
	.4byte 0x03000151
_0802ACFC:
	.4byte gMainState
_0802AD00:
	.4byte gNextLevelInLevelTable
_0802AD04:
	bl sub_0802BE50
	b _0802AD16
_0802AD0A:
	bl sub_0802C71C
	ldr r0, _0802AD2C  @ =gNextLevelInLevelTable
	ldr r0, [r0, #12]
	bl _call_via_r0
_0802AD16:
	ldr r2, _0802AD30  @ =gCurrentSwitchState
	ldr r1, _0802AD34  @ =gPreviousSwitchState
	mov r0, #1
	strb r0, [r1]
	strb r0, [r2]
	mov r0, #1
	mov r1, #1
	bl sub_080035C0
	b _0802ADA4
	.byte 0x00
	.byte 0x00
_0802AD2C:
	.4byte gNextLevelInLevelTable
_0802AD30:
	.4byte gCurrentSwitchState
_0802AD34:
	.4byte gPreviousSwitchState
_0802AD38:
	cmp r0, #0
	bne _0802AD72
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802AD5C  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	ldr r1, _0802AD60  @ =gUnknown_03001B98 
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0802AD64  @ =gMainState
	ldr r0, [r0]
	cmp r0, #14
	bne _0802AD68
	mov r0, #15
	b _0802AD6A
	.byte 0x00
	.byte 0x00
_0802AD5C:
	.4byte 0x00007FFF
_0802AD60:
	.4byte gUnknown_03001B98 
_0802AD64:
	.4byte gMainState
_0802AD68:
	mov r0, #6
_0802AD6A:
	mov r1, #0
	bl change_main_state
	b _0802ADA4
_0802AD72:
	cmp r0, #3
	bne _0802ADA4
	ldr r0, _0802AD98  @ =gMainState
	ldr r0, [r0]
	cmp r0, #14
	bne _0802ADA4
	ldr r4, _0802AD9C  @ =gNextLevelInLevelTable
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _0802ADA0
	mov r0, #0
	bl sub_0802BEA4
	b _0802ADA4
	.byte 0x00
	.byte 0x00
_0802AD98:
	.4byte gMainState
_0802AD9C:
	.4byte gNextLevelInLevelTable
_0802ADA0:
	bl sub_0802BE50
_0802ADA4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END level_retry_main

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802ADAC
sub_0802ADAC: @ 0x0802ADAC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r0, #0
	ldr r4, _0802ADE0  @ =0x03000150
	ldrb r1, [r4]
	cmp r1, #1
	bne _0802AE14
	ldr r3, _0802ADE4  @ =0x03000156
	ldrb r1, [r3]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r0, r1
	strb r1, [r3]
	cmp r0, #0
	ble _0802ADEC
	ldr r0, _0802ADE8  @ =0x03000154
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	blt _0802AE5C
	b _0802ADFE
_0802ADE0:
	.4byte 0x03000150
_0802ADE4:
	.4byte 0x03000156
_0802ADE8:
	.4byte 0x03000154
_0802ADEC:
	ldr r0, _0802AE0C  @ =0x03000152
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bgt _0802AE5C
_0802ADFE:
	strb r2, [r3]
	mov r0, #2
	strb r0, [r4]
	ldr r1, _0802AE10  @ =0x03000151
	mov r0, #0
	strb r0, [r1]
	b _0802AE5C
_0802AE0C:
	.4byte 0x03000152
_0802AE10:
	.4byte 0x03000151
_0802AE14:
	cmp r1, #3
	bne _0802AE5C
	ldr r3, _0802AE3C  @ =0x03000156
	ldrb r1, [r3]
	lsl r0, r2, #24
	asr r0, r0, #24
	sub r1, r1, r0
	strb r1, [r3]
	cmp r0, #0
	ble _0802AE44
	ldr r0, _0802AE40  @ =0x03000152
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bgt _0802AE5C
	b _0802AE56
_0802AE3C:
	.4byte 0x03000156
_0802AE40:
	.4byte 0x03000152
_0802AE44:
	ldr r0, _0802AE64  @ =0x03000154
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	blt _0802AE5C
_0802AE56:
	strb r2, [r3]
	mov r0, #0
	strb r0, [r4]
_0802AE5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AE64:
	.4byte 0x03000154
	THUMB_FUNC_END sub_0802ADAC

	THUMB_FUNC_START sub_0802AE68
sub_0802AE68: @ 0x0802AE68
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r0, #0
	ldr r4, _0802AE9C  @ =0x03000150
	ldrb r1, [r4]
	cmp r1, #1
	bne _0802AED0
	ldr r3, _0802AEA0  @ =0x03000157
	ldrb r1, [r3]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r0, r1
	strb r1, [r3]
	cmp r0, #0
	ble _0802AEA8
	ldr r0, _0802AEA4  @ =0x03000155
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	blt _0802AF18
	b _0802AEBA
_0802AE9C:
	.4byte 0x03000150
_0802AEA0:
	.4byte 0x03000157
_0802AEA4:
	.4byte 0x03000155
_0802AEA8:
	ldr r0, _0802AEC8  @ =0x03000153
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bgt _0802AF18
_0802AEBA:
	strb r2, [r3]
	mov r0, #2
	strb r0, [r4]
	ldr r1, _0802AECC  @ =0x03000151
	mov r0, #0
	strb r0, [r1]
	b _0802AF18
_0802AEC8:
	.4byte 0x03000153
_0802AECC:
	.4byte 0x03000151
_0802AED0:
	cmp r1, #3
	bne _0802AF18
	ldr r3, _0802AEF8  @ =0x03000157
	ldrb r1, [r3]
	lsl r0, r2, #24
	asr r0, r0, #24
	sub r1, r1, r0
	strb r1, [r3]
	cmp r0, #0
	ble _0802AF00
	ldr r0, _0802AEFC  @ =0x03000153
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bgt _0802AF18
	b _0802AF12
_0802AEF8:
	.4byte 0x03000157
_0802AEFC:
	.4byte 0x03000153
_0802AF00:
	ldr r0, _0802AF20  @ =0x03000155
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	blt _0802AF18
_0802AF12:
	strb r2, [r3]
	mov r0, #0
	strb r0, [r4]
_0802AF18:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AF20:
	.4byte 0x03000155
	THUMB_FUNC_END sub_0802AE68

	THUMB_FUNC_START sub_0802AF24
sub_0802AF24: @ 0x0802AF24
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r4, _0802B03C  @ =REG_DMA3SAD
	ldr r0, _0802B040  @ =gUnknown_08342EB4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B044  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B048  @ =0x84000040
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #8
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r0, _0802B04C  @ =0x03000153
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r0, _0802B050  @ =0x03000155
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r7, r1
	bge _0802B02A
_0802AF70:
	ldr r1, _0802B054  @ =0x03000152
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r2, _0802B058  @ =0x03000156
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r7, #2
	mov r10, r3
	cmp r4, r0
	bge _0802B01A
	ldr r0, _0802B03C  @ =REG_DMA3SAD
	mov r12, r0
	ldr r6, _0802B05C  @ =gOamData
	ldr r1, _0802B060  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r1
	mov r8, r2
	ldr r3, _0802B064  @ =gUnknown_08342EAC
	mov r9, r3
_0802AF9A:
	mov r0, r9
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0802B068  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r2, [r1, #4]
	ldr r0, _0802B06C  @ =0xFFFFFC00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	lsl r2, r4, #3
	ldr r3, _0802B070  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802B074  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	lsl r1, r7, #3
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r1, _0802B058  @ =0x03000156
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _0802AF9A
_0802B01A:
	mov r2, r10
	lsl r0, r2, #16
	lsr r7, r0, #16
	ldr r3, _0802B050  @ =0x03000155
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r7, r0
	blt _0802AF70
_0802B02A:
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
_0802B03C:
	.4byte REG_DMA3SAD
_0802B040:
	.4byte gUnknown_08342EB4
_0802B044:
	.4byte OBJ_VRAM0
_0802B048:
	.4byte 0x84000040
_0802B04C:
	.4byte 0x03000153
_0802B050:
	.4byte 0x03000155
_0802B054:
	.4byte 0x03000152
_0802B058:
	.4byte 0x03000156
_0802B05C:
	.4byte gOamData
_0802B060:
	.4byte 0x000003FF
_0802B064:
	.4byte gUnknown_08342EAC
_0802B068:
	.4byte 0x84000002
_0802B06C:
	.4byte 0xFFFFFC00
_0802B070:
	.4byte 0x000001FF
_0802B074:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802AF24

	THUMB_FUNC_START sub_0802B078
sub_0802B078: @ 0x0802B078
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r4, _0802B190  @ =REG_DMA3SAD
	ldr r0, _0802B194  @ =gUnknown_08342EB4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B198  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B19C  @ =0x84000040
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #8
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r0, _0802B1A0  @ =0x03000153
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r0, _0802B1A4  @ =0x03000155
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r7, r1
	bge _0802B17E
_0802B0C4:
	ldr r1, _0802B1A8  @ =0x03000156
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r2, _0802B1AC  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r7, #2
	mov r10, r3
	cmp r4, r0
	bge _0802B16E
	ldr r0, _0802B190  @ =REG_DMA3SAD
	mov r12, r0
	ldr r6, _0802B1B0  @ =gOamData
	ldr r1, _0802B1B4  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r1
	mov r8, r2
	ldr r3, _0802B1B8  @ =gUnknown_08342EAC
	mov r9, r3
_0802B0EE:
	mov r0, r9
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0802B1BC  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r2, [r1, #4]
	ldr r0, _0802B1C0  @ =0xFFFFFC00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	lsl r2, r4, #3
	ldr r3, _0802B1C4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802B1C8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	lsl r1, r7, #3
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r1, _0802B1AC  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _0802B0EE
_0802B16E:
	mov r2, r10
	lsl r0, r2, #16
	lsr r7, r0, #16
	ldr r3, _0802B1A4  @ =0x03000155
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r7, r0
	blt _0802B0C4
_0802B17E:
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
_0802B190:
	.4byte REG_DMA3SAD
_0802B194:
	.4byte gUnknown_08342EB4
_0802B198:
	.4byte OBJ_VRAM0
_0802B19C:
	.4byte 0x84000040
_0802B1A0:
	.4byte 0x03000153
_0802B1A4:
	.4byte 0x03000155
_0802B1A8:
	.4byte 0x03000156
_0802B1AC:
	.4byte 0x03000154
_0802B1B0:
	.4byte gOamData
_0802B1B4:
	.4byte 0x000003FF
_0802B1B8:
	.4byte gUnknown_08342EAC
_0802B1BC:
	.4byte 0x84000002
_0802B1C0:
	.4byte 0xFFFFFC00
_0802B1C4:
	.4byte 0x000001FF
_0802B1C8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802B078

	THUMB_FUNC_START sub_0802B1CC
sub_0802B1CC: @ 0x0802B1CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r4, _0802B2E0  @ =REG_DMA3SAD
	ldr r0, _0802B2E4  @ =gUnknown_08342EB4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B2E8  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B2EC  @ =0x84000040
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #8
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r0, _0802B2F0  @ =0x03000153
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r0, _0802B2F4  @ =0x03000157
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r7, r1
	bge _0802B2CE
_0802B218:
	ldr r1, _0802B2F8  @ =0x03000152
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r2, _0802B2FC  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r7, #2
	mov r10, r3
	cmp r4, r0
	bge _0802B2BE
	ldr r0, _0802B2E0  @ =REG_DMA3SAD
	mov r12, r0
	ldr r6, _0802B300  @ =gOamData
	ldr r1, _0802B304  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r1
	mov r8, r2
	ldr r3, _0802B308  @ =gUnknown_08342EAC
	mov r9, r3
_0802B242:
	mov r0, r9
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0802B30C  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r2, [r1, #4]
	ldr r0, _0802B310  @ =0xFFFFFC00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	lsl r2, r4, #3
	ldr r3, _0802B314  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802B318  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	lsl r1, r7, #3
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r1, _0802B2FC  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _0802B242
_0802B2BE:
	mov r2, r10
	lsl r0, r2, #16
	lsr r7, r0, #16
	ldr r3, _0802B2F4  @ =0x03000157
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r7, r0
	blt _0802B218
_0802B2CE:
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
_0802B2E0:
	.4byte REG_DMA3SAD
_0802B2E4:
	.4byte gUnknown_08342EB4
_0802B2E8:
	.4byte OBJ_VRAM0
_0802B2EC:
	.4byte 0x84000040
_0802B2F0:
	.4byte 0x03000153
_0802B2F4:
	.4byte 0x03000157
_0802B2F8:
	.4byte 0x03000152
_0802B2FC:
	.4byte 0x03000154
_0802B300:
	.4byte gOamData
_0802B304:
	.4byte 0x000003FF
_0802B308:
	.4byte gUnknown_08342EAC
_0802B30C:
	.4byte 0x84000002
_0802B310:
	.4byte 0xFFFFFC00
_0802B314:
	.4byte 0x000001FF
_0802B318:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802B1CC

	THUMB_FUNC_START sub_0802B31C
sub_0802B31C: @ 0x0802B31C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r4, _0802B434  @ =REG_DMA3SAD
	ldr r0, _0802B438  @ =gUnknown_08342EB4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B43C  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B440  @ =0x84000040
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #8
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r0, _0802B444  @ =0x03000157
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r0, _0802B448  @ =0x03000155
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r7, r1
	bge _0802B422
_0802B368:
	ldr r1, _0802B44C  @ =0x03000152
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r2, _0802B450  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r7, #2
	mov r10, r3
	cmp r4, r0
	bge _0802B412
	ldr r0, _0802B434  @ =REG_DMA3SAD
	mov r12, r0
	ldr r6, _0802B454  @ =gOamData
	ldr r1, _0802B458  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r1
	mov r8, r2
	ldr r3, _0802B45C  @ =gUnknown_08342EAC
	mov r9, r3
_0802B392:
	mov r0, r9
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0802B460  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r2, [r1, #4]
	ldr r0, _0802B464  @ =0xFFFFFC00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	lsl r2, r4, #3
	ldr r3, _0802B468  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802B46C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	lsl r1, r7, #3
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r1, _0802B450  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _0802B392
_0802B412:
	mov r2, r10
	lsl r0, r2, #16
	lsr r7, r0, #16
	ldr r3, _0802B448  @ =0x03000155
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r7, r0
	blt _0802B368
_0802B422:
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
_0802B434:
	.4byte REG_DMA3SAD
_0802B438:
	.4byte gUnknown_08342EB4
_0802B43C:
	.4byte OBJ_VRAM0
_0802B440:
	.4byte 0x84000040
_0802B444:
	.4byte 0x03000157
_0802B448:
	.4byte 0x03000155
_0802B44C:
	.4byte 0x03000152
_0802B450:
	.4byte 0x03000154
_0802B454:
	.4byte gOamData
_0802B458:
	.4byte 0x000003FF
_0802B45C:
	.4byte gUnknown_08342EAC
_0802B460:
	.4byte 0x84000002
_0802B464:
	.4byte 0xFFFFFC00
_0802B468:
	.4byte 0x000001FF
_0802B46C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802B31C

	THUMB_FUNC_START sub_0802B470
sub_0802B470: @ 0x0802B470
	push {r4,r5,lr}
	mov r3, #0
	ldr r5, _0802B4BC  @ =0x03000150
	ldrb r0, [r5]
	cmp r0, #1
	bne _0802B4CC
	ldr r2, _0802B4C0  @ =0x03000154
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r4, _0802B4C4  @ =0x03000155
	ldrb r1, [r4]
	add r1, r1, #1
	strb r1, [r4]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #8
	ble _0802B49A
	mov r0, #8
	strb r0, [r2]
	mov r3, #1
_0802B49A:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #5
	ble _0802B4AC
	mov r0, #5
	strb r0, [r4]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802B4AC:
	cmp r3, #2
	bne _0802B508
	strb r3, [r5]
	ldr r1, _0802B4C8  @ =0x03000151
	mov r0, #0
	strb r0, [r1]
	b _0802B508
	.byte 0x00
	.byte 0x00
_0802B4BC:
	.4byte 0x03000150
_0802B4C0:
	.4byte 0x03000154
_0802B4C4:
	.4byte 0x03000155
_0802B4C8:
	.4byte 0x03000151
_0802B4CC:
	cmp r0, #3
	bne _0802B508
	ldr r2, _0802B510  @ =0x03000154
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	ldr r4, _0802B514  @ =0x03000155
	ldrb r1, [r4]
	sub r1, r1, #1
	strb r1, [r4]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #3
	bgt _0802B4EE
	mov r0, #4
	strb r0, [r2]
	mov r3, #1
_0802B4EE:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #1
	bgt _0802B500
	mov r0, #2
	strb r0, [r4]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802B500:
	cmp r3, #2
	bne _0802B508
	mov r0, #0
	strb r0, [r5]
_0802B508:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802B510:
	.4byte 0x03000154
_0802B514:
	.4byte 0x03000155
	THUMB_FUNC_END sub_0802B470

	THUMB_FUNC_START sub_0802B518
sub_0802B518: @ 0x0802B518
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r4, _0802B640  @ =REG_DMA3SAD
	ldr r0, _0802B644  @ =gUnknown_082E29F4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B648  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B64C  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #32
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r4, _0802B650  @ =0x03000154
	mov r1, #0
	ldrsb r1, [r4, r1]
	lsl r1, r1, #5
	mov r0, #240
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r0, r0, #16
	str r0, [sp, #4]
	ldr r2, _0802B654  @ =0x03000155
	mov r3, #0
	ldrsb r3, [r2, r3]
	lsl r1, r3, #5
	mov r0, #160
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r0, r0, #16
	str r0, [sp, #8]
	mov r1, #0
	cmp r1, r3
	bge _0802B62E
_0802B578:
	mov r6, #0
	ldr r2, _0802B650  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r1, #1
	mov r10, r3
	cmp r6, r0
	bge _0802B61E
	ldr r7, _0802B640  @ =REG_DMA3SAD
	ldr r4, _0802B658  @ =gOamData
	ldr r0, _0802B65C  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r0
	mov r12, r2
	ldr r3, _0802B660  @ =gUnknown_082E29EC
	mov r9, r3
	lsl r0, r1, #5
	ldr r1, [sp, #8]
	add r0, r0, r1
	mov r8, r0
_0802B5A0:
	mov r2, r9
	str r2, [r7]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r7, #4]
	ldr r0, _0802B664  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrh r2, [r1, #4]
	ldr r0, _0802B668  @ =0xFFFFFC00
	and r0, r0, r2
	mov r3, r12
	orr r0, r0, r3
	strh r0, [r1, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	lsl r1, r6, #5
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r3, _0802B66C  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0802B670  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, r8
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r2, _0802B650  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r6, r0
	blt _0802B5A0
_0802B61E:
	mov r3, r10
	lsl r0, r3, #16
	lsr r1, r0, #16
	ldr r2, _0802B654  @ =0x03000155
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	blt _0802B578
_0802B62E:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802B640:
	.4byte REG_DMA3SAD
_0802B644:
	.4byte gUnknown_082E29F4
_0802B648:
	.4byte OBJ_VRAM0
_0802B64C:
	.4byte 0x84000100
_0802B650:
	.4byte 0x03000154
_0802B654:
	.4byte 0x03000155
_0802B658:
	.4byte gOamData
_0802B65C:
	.4byte 0x000003FF
_0802B660:
	.4byte gUnknown_082E29EC
_0802B664:
	.4byte 0x84000002
_0802B668:
	.4byte 0xFFFFFC00
_0802B66C:
	.4byte 0x000001FF
_0802B670:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802B518

	THUMB_FUNC_START sub_0802B674
sub_0802B674: @ 0x0802B674
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r7, _0802B6A4  @ =gMainState
	ldr r0, [r7]
	cmp r0, #14
	bne _0802B6AC
	ldr r0, _0802B6A8  @ =0x03000150
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B778
	cmp r0, #2
	beq _0802B696
	bl sub_0802B470
_0802B696:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802B518
	b _0802B778
	.byte 0x00
	.byte 0x00
_0802B6A4:
	.4byte gMainState
_0802B6A8:
	.4byte 0x03000150
_0802B6AC:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0806E594
	str r6, [sp]
	mov r0, #8
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0800A2B8
	ldr r0, [r7]
	cmp r0, #18
	bne _0802B778
	ldr r7, _0802B6FC  @ =0x03000150
	ldrb r0, [r7]
	cmp r0, #0
	beq _0802B778
	ldr r3, _0802B700  @ =gUnknown_0807A974
	ldr r0, _0802B704  @ =gNextLevelID
	ldrb r1, [r0]
	lsl r1, r1, #24
	asr r1, r1, #25
	ldr r0, _0802B708  @ =gCurrentWorld
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1]
	cmp r0, #1
	beq _0802B72E
	cmp r0, #1
	bgt _0802B70C
	cmp r0, #0
	beq _0802B716
	b _0802B778
_0802B6FC:
	.4byte 0x03000150
_0802B700:
	.4byte gUnknown_0807A974
_0802B704:
	.4byte gNextLevelID
_0802B708:
	.4byte gCurrentWorld
_0802B70C:
	cmp r0, #2
	beq _0802B748
	cmp r0, #3
	beq _0802B760
	b _0802B778
_0802B716:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802AF24
	ldrb r0, [r7]
	cmp r0, #2
	beq _0802B778
	mov r0, #2
	bl sub_0802ADAC
	b _0802B778
_0802B72E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802B078
	ldrb r0, [r7]
	cmp r0, #2
	beq _0802B778
	mov r0, #2
	neg r0, r0
	bl sub_0802ADAC
	b _0802B778
_0802B748:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802B1CC
	ldrb r0, [r7]
	cmp r0, #2
	beq _0802B778
	mov r0, #2
	bl sub_0802AE68
	b _0802B778
_0802B760:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802B31C
	ldrb r0, [r7]
	cmp r0, #2
	beq _0802B778
	mov r0, #2
	neg r0, r0
	bl sub_0802AE68
_0802B778:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802B674

	THUMB_FUNC_START level_retry_end
level_retry_end: @ 0x0802B780
	push {lr}
	bl sub_08038B18
	pop {r0}
	bx r0
	THUMB_FUNC_END level_retry_end

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START level_retry_loop
level_retry_loop: @ 0x0802B78C
	push {lr}
	bl level_play_loop
	pop {r0}
	bx r0
	THUMB_FUNC_END level_retry_loop

	.byte 0x00
	.byte 0x00
	