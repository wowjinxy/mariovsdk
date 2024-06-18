	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_08029C20
sub_08029C20: @ 0x08029C20
	push {r4,lr}
	ldr r4, _08029C40  @ =gUnknown_03000C28
	ldrb r0, [r4]
	cmp r0, #0
	beq _08029C84
	ldr r1, _08029C44  @ =gUnknown_03000111
	ldrb r0, [r1]
	mov r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _08029C48
	sub r0, r0, #1
	strb r0, [r1]
	mov r0, #1
	b _08029C86
	.byte 0x00
	.byte 0x00
_08029C40:
	.4byte gUnknown_03000C28
_08029C44:
	.4byte gUnknown_03000111
_08029C48:
	ldr r3, _08029C64  @ =gUnknown_03000110
	ldrb r0, [r3]
	sub r0, r0, #1
	strb r0, [r3]
	lsl r0, r0, #24
	cmp r0, #0
	ble _08029C6C
	ldr r1, _08029C68  @ =REG_BLDY
	mov r0, #0
	ldrsb r0, [r3, r0]
	strh r0, [r1]
	mov r0, #1
	b _08029C86
	.byte 0x00
	.byte 0x00
_08029C64:
	.4byte gUnknown_03000110
_08029C68:
	.4byte REG_BLDY
_08029C6C:
	strb r2, [r4]
	strb r2, [r3]
	ldr r1, _08029C8C  @ =REG_BLDCNT
	ldr r0, _08029C90  @ =gUnknown_03000112
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _08029C94  @ =gUnknown_03000114
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08029C98  @ =REG_BLDY
	strh r2, [r0]
_08029C84:
	mov r0, #0
_08029C86:
	pop {r4}
	pop {r1}
	bx r1
_08029C8C:
	.4byte REG_BLDCNT
_08029C90:
	.4byte gUnknown_03000112
_08029C94:
	.4byte gUnknown_03000114
_08029C98:
	.4byte REG_BLDY
	THUMB_FUNC_END sub_08029C20

	THUMB_FUNC_START sub_08029C9C
sub_08029C9C: @ 0x08029C9C
	push {lr}
	ldrh r3, [r0, #48]
	ldrh r1, [r0, #50]
	ldrh r2, [r0, #52]
	add r0, r3, #0
	bl sub_08029CDC
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08029C9C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08029CB0
sub_08029CB0: @ 0x08029CB0
	ldr r1, _08029CD0  @ =gUnknown_03000110
	mov r0, #31
	strb r0, [r1]
	ldr r1, _08029CD4  @ =gUnknown_03000C28
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08029CD8  @ =REG_BLDCNT
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #31
	strh r0, [r1]
	bx lr
_08029CD0:
	.4byte gUnknown_03000110
_08029CD4:
	.4byte gUnknown_03000C28
_08029CD8:
	.4byte REG_BLDCNT
	THUMB_FUNC_END sub_08029CB0

	THUMB_FUNC_START sub_08029CDC
sub_08029CDC: @ 0x08029CDC
	push {r4,r5,lr}
	ldr r4, _08029D24  @ =REG_WININ 
	ldr r5, _08029D28  @ =0x00001010
	add r3, r5, #0
	strh r3, [r4]
	add r4, r4, #2
	add r5, r5, #47
	add r3, r5, #0
	strh r3, [r4]
	ldr r4, _08029D2C  @ =gUnknown_03000110
	mov r3, #31
	strb r3, [r4]
	ldr r4, _08029D30  @ =gUnknown_03000C28
	mov r3, #1
	strb r3, [r4]
	ldr r4, _08029D34  @ =gUnknown_03000111
	mov r3, #5
	strb r3, [r4]
	ldr r3, _08029D38  @ =gUnknown_03000112
	strh r0, [r3]
	ldr r0, _08029D3C  @ =gUnknown_03000114
	strh r1, [r0]
	ldr r0, _08029D40  @ =0x03000116
	strh r2, [r0]
	ldr r1, _08029D44  @ =REG_BLDCNT
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #31
	strh r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
_08029D24:
	.4byte REG_WININ 
_08029D28:
	.4byte 0x00001010
_08029D2C:
	.4byte gUnknown_03000110
_08029D30:
	.4byte gUnknown_03000C28
_08029D34:
	.4byte gUnknown_03000111
_08029D38:
	.4byte gUnknown_03000112
_08029D3C:
	.4byte gUnknown_03000114
_08029D40:
	.4byte 0x03000116
_08029D44:
	.4byte REG_BLDCNT
	THUMB_FUNC_END sub_08029CDC

	THUMB_FUNC_START fade_transition_init_callback
fade_transition_init_callback: @ 0x08029D48
	ldr r1, _08029D70  @ =gUnknown_03000110
	mov r0, #0
	strb r0, [r1]
	ldr r1, _08029D74  @ =gUnknown_03000111
	mov r0, #4
	strb r0, [r1]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _08029D78  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	ldr r1, _08029D7C  @ =REG_BLDCNT
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #4
	mov r0, #0
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029D70:
	.4byte gUnknown_03000110
_08029D74:
	.4byte gUnknown_03000111
_08029D78:
	.4byte 0x00007FFF
_08029D7C:
	.4byte REG_BLDCNT
	THUMB_FUNC_END fade_transition_init_callback

	THUMB_FUNC_START sub_08029D80
sub_08029D80: @ 0x08029D80
	ldr r1, _08029DA8  @ =gUnknown_03000110
	mov r0, #31
	strb r0, [r1]
	ldr r1, _08029DAC  @ =gUnknown_03000111
	mov r0, #0
	strb r0, [r1]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _08029DB0  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	ldr r1, _08029DB4  @ =REG_BLDCNT
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #4
	mov r0, #31
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029DA8:
	.4byte gUnknown_03000110
_08029DAC:
	.4byte gUnknown_03000111
_08029DB0:
	.4byte 0x00007FFF
_08029DB4:
	.4byte REG_BLDCNT
	THUMB_FUNC_END sub_08029D80

	THUMB_FUNC_START sub_08029DB8
sub_08029DB8: @ 0x08029DB8
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _08029DF8  @ =REG_WININ 
	ldr r2, _08029DFC  @ =0x00001010
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #2
	ldr r3, _08029E00  @ =0x0000103F
	add r0, r3, #0
	strh r0, [r1]
	add r1, r1, #6
	mov r0, #255
	strh r0, [r1]
	ldr r0, _08029E04  @ =REG_BLDALPHA
	mov r2, #0
	strh r2, [r0]
	ldr r1, _08029E08  @ =gUnknown_03000110
	mov r0, #31
	strb r0, [r1]
	ldr r1, _08029E0C  @ =REG_BLDY
	mov r0, #31
	strh r0, [r1]
	ldr r0, _08029E10  @ =gUnknown_03000C28
	strb r2, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_08029DF8:
	.4byte REG_WININ 
_08029DFC:
	.4byte 0x00001010
_08029E00:
	.4byte 0x0000103F
_08029E04:
	.4byte REG_BLDALPHA
_08029E08:
	.4byte gUnknown_03000110
_08029E0C:
	.4byte REG_BLDY
_08029E10:
	.4byte gUnknown_03000C28
	THUMB_FUNC_END sub_08029DB8

	THUMB_FUNC_START sub_08029E14
sub_08029E14: @ 0x08029E14
	ldr r1, _08029E3C  @ =gUnknown_03000110
	mov r0, #31
	strb r0, [r1]
	ldr r1, _08029E40  @ =gUnknown_03000C28
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08029E44  @ =gUnknown_03000111
	mov r0, #5
	strb r0, [r1]
	ldr r1, _08029E48  @ =REG_BLDCNT
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #31
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029E3C:
	.4byte gUnknown_03000110
_08029E40:
	.4byte gUnknown_03000C28
_08029E44:
	.4byte gUnknown_03000111
_08029E48:
	.4byte REG_BLDCNT
	THUMB_FUNC_END sub_08029E14

	THUMB_FUNC_START sub_08029E4C
sub_08029E4C: @ 0x08029E4C
	ldr r1, _08029E64  @ =gUnknown_03000110
	mov r0, #0
	strb r0, [r1]
	ldr r1, _08029E68  @ =REG_BLDY
	mov r0, #0
	strh r0, [r1]
	sub r1, r1, #4
	ldr r0, _08029E6C  @ =gUnknown_03000112
	ldrh r0, [r0]
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029E64:
	.4byte gUnknown_03000110
_08029E68:
	.4byte REG_BLDY
_08029E6C:
	.4byte gUnknown_03000112
	THUMB_FUNC_END sub_08029E4C

	THUMB_FUNC_START fade_transition_end
fade_transition_end: @ 0x08029E70
	ldr r1, _08029E78  @ =gUnknown_03000110
	mov r0, #31
	strb r0, [r1]
	bx lr
_08029E78:
	.4byte gUnknown_03000110
	THUMB_FUNC_END fade_transition_end

	THUMB_FUNC_START sub_08029E7C
sub_08029E7C: @ 0x08029E7C
	ldr r0, _08029EA0  @ =gUnknown_03000C28
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08029EA4  @ =gUnknown_03000110
	strb r1, [r0]
	ldr r1, _08029EA8  @ =REG_BLDCNT
	ldr r0, _08029EAC  @ =gUnknown_03000112
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _08029EB0  @ =gUnknown_03000114
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029EA0:
	.4byte gUnknown_03000C28
_08029EA4:
	.4byte gUnknown_03000110
_08029EA8:
	.4byte REG_BLDCNT
_08029EAC:
	.4byte gUnknown_03000112
_08029EB0:
	.4byte gUnknown_03000114
	THUMB_FUNC_END sub_08029E7C
