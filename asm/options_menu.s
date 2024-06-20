	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"
	
	THUMB_FUNC_START sub_08027B9C
sub_08027B9C: @ 0x08027B9C
	push {r4,lr}
	ldr r2, _08027BD4  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #60
	bne _08027BCE
	mov r4, #0
	mov r0, #1
	strb r0, [r1, #23]
	ldr r3, _08027BD8  @ =0x03000C10
	ldr r1, _08027BDC  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027BE0  @ =0x03000C08
	ldr r1, _08027BE4  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08027BCE:
	pop {r4}
	pop {r0}
	bx r0
_08027BD4:
	.4byte 0x030000F4
_08027BD8:
	.4byte 0x03000C10
_08027BDC:
	.4byte gUnknown_080798E8
_08027BE0:
	.4byte 0x03000C08
_08027BE4:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027B9C

	THUMB_FUNC_START sub_08027BE8
sub_08027BE8: @ 0x08027BE8
	push {r4,lr}
	ldr r2, _08027C20  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #60
	bne _08027C1A
	mov r4, #0
	mov r0, #2
	strb r0, [r1, #23]
	ldr r3, _08027C24  @ =0x03000C10
	ldr r1, _08027C28  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027C2C  @ =0x03000C08
	ldr r1, _08027C30  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08027C1A:
	pop {r4}
	pop {r0}
	bx r0
_08027C20:
	.4byte 0x030000F4
_08027C24:
	.4byte 0x03000C10
_08027C28:
	.4byte gUnknown_080798E8
_08027C2C:
	.4byte 0x03000C08
_08027C30:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027BE8

	THUMB_FUNC_START sub_08027C34
sub_08027C34: @ 0x08027C34
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08022890
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08022340
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027C34

	THUMB_FUNC_START sub_08027C78
sub_08027C78: @ 0x08027C78
	push {lr}
	ldr r0, _08027CB8  @ =0x030000E8
	ldr r1, [r0]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r2, _08027CBC  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #80
	bne _08027CB4
	mov r0, #3
	strb r0, [r1, #23]
	ldr r3, _08027CC0  @ =0x03000C10
	ldr r1, _08027CC4  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027CC8  @ =0x03000C08
	ldr r1, _08027CCC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	mov r0, #0
	strh r0, [r2, #40]
_08027CB4:
	pop {r0}
	bx r0
_08027CB8:
	.4byte 0x030000E8
_08027CBC:
	.4byte 0x030000F4
_08027CC0:
	.4byte 0x03000C10
_08027CC4:
	.4byte gUnknown_080798E8
_08027CC8:
	.4byte 0x03000C08
_08027CCC:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027C78

	THUMB_FUNC_START sub_08027CD0
sub_08027CD0: @ 0x08027CD0
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08022890
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027CD0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08027D08
sub_08027D08: @ 0x08027D08
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027D08

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08027D40
sub_08027D40: @ 0x08027D40
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080251A0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027D40

	THUMB_FUNC_START sub_08027D84
sub_08027D84: @ 0x08027D84
	push {r4,lr}
	ldr r2, _08027DBC  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #52
	bne _08027DB6
	mov r4, #0
	mov r0, #6
	strb r0, [r1, #23]
	ldr r3, _08027DC0  @ =0x03000C10
	ldr r1, _08027DC4  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027DC8  @ =0x03000C08
	ldr r1, _08027DCC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08027DB6:
	pop {r4}
	pop {r0}
	bx r0
_08027DBC:
	.4byte 0x030000F4
_08027DC0:
	.4byte 0x03000C10
_08027DC4:
	.4byte gUnknown_080798E8
_08027DC8:
	.4byte 0x03000C08
_08027DCC:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027D84

	THUMB_FUNC_START sub_08027DD0
sub_08027DD0: @ 0x08027DD0
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027DD0

	THUMB_FUNC_START sub_08027DE4
sub_08027DE4: @ 0x08027DE4
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027DE4

	THUMB_FUNC_START sub_08027DF8
sub_08027DF8: @ 0x08027DF8
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027DF8

	THUMB_FUNC_START sub_08027E0C
sub_08027E0C: @ 0x08027E0C
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E0C

	THUMB_FUNC_START sub_08027E20
sub_08027E20: @ 0x08027E20
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024404
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E20

	THUMB_FUNC_START sub_08027E34
sub_08027E34: @ 0x08027E34
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E34

	THUMB_FUNC_START sub_08027E48
sub_08027E48: @ 0x08027E48
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E48

	THUMB_FUNC_START sub_08027E5C
sub_08027E5C: @ 0x08027E5C
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024A04
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E5C

	THUMB_FUNC_START sub_08027E70
sub_08027E70: @ 0x08027E70
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E70

	THUMB_FUNC_START sub_08027E84
sub_08027E84: @ 0x08027E84
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080251A0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E84

	THUMB_FUNC_START sub_08027EC8
sub_08027EC8: @ 0x08027EC8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08023C08
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027EC8

	THUMB_FUNC_START sub_08027F0C
sub_08027F0C: @ 0x08027F0C
	push {r4,lr}
	ldr r2, _08027F44  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #59
	bls _08027F3E
	mov r4, #0
	mov r0, #17
	strb r0, [r1, #23]
	ldr r3, _08027F48  @ =0x03000C10
	ldr r1, _08027F4C  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027F50  @ =0x03000C08
	ldr r1, _08027F54  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08027F3E:
	pop {r4}
	pop {r0}
	bx r0
_08027F44:
	.4byte 0x030000F4
_08027F48:
	.4byte 0x03000C10
_08027F4C:
	.4byte gUnknown_080798E8
_08027F50:
	.4byte 0x03000C08
_08027F54:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027F0C

	THUMB_FUNC_START sub_08027F58
sub_08027F58: @ 0x08027F58
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08023C08
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027F58

	THUMB_FUNC_START sub_08027F9C
sub_08027F9C: @ 0x08027F9C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08023C08
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027F9C

	THUMB_FUNC_START sub_08027FE0
sub_08027FE0: @ 0x08027FE0
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802363C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027FE0

	THUMB_FUNC_START sub_08028024
sub_08028024: @ 0x08028024
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802363C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028024

	THUMB_FUNC_START sub_08028068
sub_08028068: @ 0x08028068
	push {r4-r7,lr}
	lsl r2, r1, #1
	add r2, r2, r1
	lsl r2, r2, #3
	ldr r1, _080280AC  @ =gUncompressedGraphicsTable
	add r2, r2, r1
	str r2, [r0]
	mov r1, #0
	strh r1, [r0, #10]
	ldr r1, [r2, #12]
	ldrb r1, [r1, #1]
	strh r1, [r0, #8]
	ldr r5, _080280B0  @ =gUnknown_03001930
	ldrh r3, [r5]
	strh r3, [r0, #6]
	ldr r6, _080280B4  @ =gUnknown_0300192C
	ldrh r4, [r6]
	strh r4, [r0, #4]
	ldrb r0, [r0, #13]
	cmp r0, #0
	beq _080280B8
	ldrh r0, [r2, #4]
	ldrh r1, [r2]
	add r7, r0, #0
	mul r7, r1, r7
	add r0, r7, #0
	add r0, r3, r0
	strh r0, [r5]
	ldrh r0, [r2, #2]
	add r2, r0, #0
	mul r2, r1, r2
	add r0, r2, #0
	b _080280C0
	.byte 0x00
	.byte 0x00
_080280AC:
	.4byte gUncompressedGraphicsTable
_080280B0:
	.4byte gUnknown_03001930
_080280B4:
	.4byte gUnknown_0300192C
_080280B8:
	ldrh r0, [r2, #4]
	add r0, r3, r0
	strh r0, [r5]
	ldrh r0, [r2, #2]
_080280C0:
	add r0, r4, r0
	strh r0, [r6]
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028068

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080280CC
sub_080280CC: @ 0x080280CC
	push {r4,lr}
	add r3, r0, #0
	add r2, r1, #0
	ldrb r0, [r3, #13]
	cmp r0, #0
	bne _08028120
	ldrh r0, [r3, #8]
	sub r0, r0, #1
	strh r0, [r3, #8]
	lsl r0, r0, #16
	cmp r0, #0
	bgt _08028120
	ldr r4, [r3]
	cmp r2, #0
	bge _080280EC
	ldrh r2, [r4]
_080280EC:
	mov r0, #10
	ldrsh r1, [r3, r0]
	sub r0, r2, #1
	cmp r1, r0
	blt _08028108
	ldrh r1, [r3, #14]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802810C
	mov r0, #2
	orr r0, r0, r1
	strh r0, [r3, #14]
	b _0802810E
_08028108:
	ldrh r0, [r3, #10]
	add r0, r0, #1
_0802810C:
	strh r0, [r3, #10]
_0802810E:
	mov r0, #10
	ldrsh r1, [r3, r0]
	ldr r2, [r4, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r3, #8]
_08028120:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080280CC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08028128
sub_08028128: @ 0x08028128
	push {r4-r6,lr}
	add r5, r0, #0
	ldrb r0, [r5, #13]
	cmp r0, #0
	bne _08028174
	ldr r4, _0802816C  @ =REG_DMA3SAD
	ldr r2, [r5]
	mov r0, #10
	ldrsh r1, [r5, r0]
	ldr r3, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r1, [r0]
	ldrh r0, [r2, #6]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r5, #4]
	ldr r1, _08028170  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldrh r0, [r2, #2]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _080281BA
	.byte 0x00
	.byte 0x00
_0802816C:
	.4byte REG_DMA3SAD
_08028170:
	.4byte OBJ_VRAM0
_08028174:
	mov r4, #0
	ldr r2, [r5]
	ldrh r1, [r2]
	cmp r4, r1
	bge _080281BA
	ldr r3, _080281C0  @ =REG_DMA3SAD
	mov r6, #0
_08028182:
	ldr r0, [r2, #12]
	add r0, r6, r0
	ldrb r1, [r0]
	ldrh r0, [r2, #6]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r3]
	ldrh r0, [r2, #2]
	mul r0, r4, r0
	ldr r1, _080281C4  @ =OBJ_VRAM0
	add r0, r0, r1
	ldrh r1, [r5, #4]
	add r0, r0, r1
	str r0, [r3, #4]
	ldrh r0, [r2, #2]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	add r6, r6, #36
	add r4, r4, #1
	ldrh r0, [r2]
	cmp r4, r0
	blt _08028182
_080281BA:
	pop {r4-r6}
	pop {r0}
	bx r0
_080281C0:
	.4byte REG_DMA3SAD
_080281C4:
	.4byte OBJ_VRAM0
	THUMB_FUNC_END sub_08028128

	THUMB_FUNC_START sub_080281C8
sub_080281C8: @ 0x080281C8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r5, r1, #0
	mov r8, r2
	mov r12, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldrh r0, [r3]
	lsl r0, r0, #3
	ldr r1, _08028290  @ =gOamBuffer
	add r3, r0, r1
	ldrb r0, [r4, #13]
	cmp r0, #0
	beq _080282AC
	mov r6, #0
	ldr r1, [r4]
	ldrh r2, [r1]
	cmp r6, r2
	blt _080281F8
	b _08028324
_080281F8:
	ldr r7, _08028294  @ =REG_DMA3SAD
	mov r0, #13
	neg r0, r0
	mov r9, r0
_08028200:
	ldr r0, [r1, #16]
	str r0, [r7]
	str r3, [r7, #4]
	ldr r0, _08028298  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, r8
	strb r1, [r3]
	ldr r2, _0802829C  @ =0x000001FF
	add r0, r2, #0
	add r1, r5, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080282A0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	add r1, r6, #0
	mul r1, r0, r1
	ldrh r0, [r4, #6]
	add r1, r1, r0
	ldr r2, _080282A4  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _080282A8  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r4, #12]
	cmp r0, #0
	beq _08028252
	sub r0, r0, #1
	lsl r0, r0, #4
	ldrb r2, [r3, #5]
	mov r1, #15
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r3, #5]
_08028252:
	mov r0, r10
	cmp r0, #0
	beq _08028264
	ldrb r0, [r3, #1]
	mov r1, r9
	and r1, r1, r0
	mov r0, #4
	orr r1, r1, r0
	strb r1, [r3, #1]
_08028264:
	mov r0, #3
	ldrb r1, [r4, #16]
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r2, [r3, #5]
	mov r0, r9
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #5]
	add r6, r6, #1
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	add r5, r5, r0
	add r3, r3, #8
	mov r2, r12
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	ldrh r0, [r1]
	cmp r6, r0
	blt _08028200
	b _08028324
_08028290:
	.4byte gOamBuffer
_08028294:
	.4byte REG_DMA3SAD
_08028298:
	.4byte 0x84000002
_0802829C:
	.4byte 0x000001FF
_080282A0:
	.4byte 0xFFFFFE00
_080282A4:
	.4byte 0x000003FF
_080282A8:
	.4byte 0xFFFFFC00
_080282AC:
	ldr r1, _08028334  @ =REG_DMA3SAD
	ldr r0, [r4]
	ldr r0, [r0, #16]
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08028338  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r1, r8
	strb r1, [r3]
	ldr r2, _0802833C  @ =0x000001FF
	add r0, r2, #0
	and r5, r5, r0
	ldrh r1, [r3, #2]
	ldr r0, _08028340  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r5
	strh r0, [r3, #2]
	ldrh r0, [r4, #6]
	ldr r1, _08028344  @ =0x000003FF
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08028348  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r4, #12]
	cmp r0, #0
	beq _080282F4
	sub r0, r0, #1
	lsl r0, r0, #4
	ldrb r2, [r3, #5]
	mov r1, #15
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r3, #5]
_080282F4:
	mov r0, r10
	cmp r0, #0
	beq _08028308
	ldrb r0, [r3, #1]
	mov r1, #13
	neg r1, r1
	and r1, r1, r0
	mov r0, #4
	orr r1, r1, r0
	strb r1, [r3, #1]
_08028308:
	mov r0, #3
	ldrb r1, [r4, #16]
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r2, [r3, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #5]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_08028324:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08028334:
	.4byte REG_DMA3SAD
_08028338:
	.4byte 0x84000002
_0802833C:
	.4byte 0x000001FF
_08028340:
	.4byte 0xFFFFFE00
_08028344:
	.4byte 0x000003FF
_08028348:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_080281C8

	THUMB_FUNC_START sub_0802834C
sub_0802834C: @ 0x0802834C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #24
	add r7, r0, #0
	mov r8, r1
	mov r6, #0
	ldrb r0, [r7]
	cmp r6, r0
	bge _080283B0
	add r4, r7, #4
_08028364:
	ldr r1, [r4]
	mov r5, #0
	cmp r6, r8
	bne _0802836E
	mov r5, #1
_0802836E:
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #5]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _080283A6
	str r2, [sp, #8]
	str r3, [sp, #12]
	cmp r5, #0
	bne _08028384
	add r1, r1, #25
_08028384:
	ldr r0, _0802846C  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r2, #132
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08028470  @ =0x030000FC
	ldr r2, [r0]
	mov r0, #146
	lsl r0, r0, #4
	add r2, r2, r0
	add r0, sp, #8
	mov r3, #5
	bl sub_080064D4
_080283A6:
	add r4, r4, #20
	add r6, r6, #1
	ldrb r1, [r7]
	cmp r6, r1
	blt _08028364
_080283B0:
	ldrb r2, [r7, #1]
	mov r9, r2
	mov r4, r8
	lsl r0, r4, #2
	add r0, r0, r8
	lsl r0, r0, #2
	add r1, r7, r0
	mov r2, #20
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _080283CA
	add r4, r0, #0
	mov r9, r4
_080283CA:
	mov r6, #0
	cmp r6, r9
	bge _08028416
	add r5, sp, #16
	add r4, r7, #0
	add r4, r4, #64
	mov r6, r9
_080283D8:
	ldr r1, [r4]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #5]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _0802840C
	str r2, [sp, #16]
	str r3, [r5, #4]
	ldr r0, _0802846C  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r2, #132
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08028470  @ =0x030000FC
	ldr r2, [r0]
	mov r0, #146
	lsl r0, r0, #4
	add r2, r2, r0
	add r0, r5, #0
	mov r3, #5
	bl sub_080064D4
_0802840C:
	add r4, r4, #20
	sub r6, r6, #1
	cmp r6, #0
	bne _080283D8
	mov r6, r9
_08028416:
	ldrb r1, [r7, #1]
	cmp r6, r1
	bge _0802845C
	lsl r0, r6, #2
	add r0, r0, r6
	lsl r0, r0, #2
	add r0, r0, #64
	add r5, r0, r7
_08028426:
	ldr r0, _0802846C  @ =gUnknown_08078210
	ldr r1, [r0]
	ldr r0, [r5]
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r2, [r1]
	ldrb r0, [r5, #4]
	ldrb r1, [r5, #5]
	ldr r3, _08028470  @ =0x030000FC
	ldr r3, [r3]
	mov r4, #146
	lsl r4, r4, #4
	add r3, r3, r4
	mov r4, #5
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	bl sub_080065B4
	add r5, r5, #20
	add r6, r6, #1
	ldrb r0, [r7, #1]
	cmp r6, r0
	blt _08028426
_0802845C:
	add sp, sp, #24
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802846C:
	.4byte gUnknown_08078210
_08028470:
	.4byte 0x030000FC
	THUMB_FUNC_END sub_0802834C

	THUMB_FUNC_START sub_08028474
sub_08028474: @ 0x08028474
	push {r4,lr}
	ldr r2, _08028494  @ =0x030000FC
	ldr r3, [r2]
	mov r4, #137
	lsl r4, r4, #5
	add r1, r3, r4
	str r0, [r1]
	ldr r1, _08028498  @ =0x00001128
	add r0, r3, r1
	ldr r1, [r0]
	cmp r1, #0
	bne _0802849C
	add r4, r4, #4
	add r0, r3, r4
	b _080284A4
	.byte 0x00
	.byte 0x00
_08028494:
	.4byte 0x030000FC
_08028498:
	.4byte 0x00001128
_0802849C:
	ldr r4, _080284D4  @ =0x00001124
	add r0, r3, r4
	add r1, r1, #188
	ldr r1, [r1]
_080284A4:
	str r1, [r0]
	ldr r2, [r2]
	ldr r0, _080284D8  @ =0x00001128
	add r3, r2, r0
	mov r1, #137
	lsl r1, r1, #5
	add r0, r2, r1
	ldr r1, [r0]
	mov r0, #204
	mul r0, r1, r0
	ldr r1, _080284DC  @ =gUnknown_080799F0
	add r0, r0, r1
	str r0, [r3]
	ldr r4, _080284E0  @ =0x0000112C
	add r0, r2, r4
	mov r1, #1
	strh r1, [r0]
	ldr r0, _080284E4  @ =0x0000112E
	add r2, r2, r0
	strh r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080284D4:
	.4byte 0x00001124
_080284D8:
	.4byte 0x00001128
_080284DC:
	.4byte gUnknown_080799F0
_080284E0:
	.4byte 0x0000112C
_080284E4:
	.4byte 0x0000112E
	THUMB_FUNC_END sub_08028474

	THUMB_FUNC_START sub_080284E8
sub_080284E8: @ 0x080284E8
	push {r4-r6,lr}
	sub sp, sp, #12
	mov r5, #0
	ldr r0, _08028500  @ =gUnknown_03001708
	ldrh r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08028504
	sub r5, r5, #1
	b _0802850E
	.byte 0x00
	.byte 0x00
_08028500:
	.4byte gUnknown_03001708
_08028504:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0802850E
	mov r5, #1
_0802850E:
	ldr r0, _08028540  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08028522
	bl sub_080720AC
	bl sub_08071C24
_08028522:
	cmp r5, #0
	beq _080285EC
	ldr r1, _08028544  @ =0x030000FC
	ldr r3, [r1]
	ldr r2, _08028548  @ =0x00001124
	add r0, r3, r2
	ldr r0, [r0]
	cmp r0, #1
	beq _0802855C
	cmp r0, #1
	bgt _0802854C
	cmp r0, #0
	beq _08028552
	b _08028576
	.byte 0x00
	.byte 0x00
_08028540:
	.4byte gSomeKeys_030012E8
_08028544:
	.4byte 0x030000FC
_08028548:
	.4byte 0x00001124
_0802854C:
	cmp r0, #2
	beq _0802856C
	b _08028576
_08028552:
	mov r6, #2
	ldr r0, _08028558  @ =0x00001138
	b _08028574
_08028558:
	.4byte 0x00001138
_0802855C:
	mov r2, #138
	lsl r2, r2, #5
	add r0, r3, r2
	ldrh r6, [r0]
	ldr r0, _08028568  @ =0x00001130
	b _08028574
_08028568:
	.4byte 0x00001130
_0802856C:
	ldr r2, _0802858C  @ =0x0000113E
	add r0, r3, r2
	ldrh r6, [r0]
	ldr r0, _08028590  @ =0x00001132
_08028574:
	add r4, r3, r0
_08028576:
	ldrh r0, [r4]
	add r0, r0, r5
	strh r0, [r4]
	lsl r0, r0, #16
	asr r3, r0, #16
	cmp r3, #0
	bge _08028594
	lsl r0, r6, #16
	asr r0, r0, #16
	sub r0, r0, #1
	b _0802859E
_0802858C:
	.4byte 0x0000113E
_08028590:
	.4byte 0x00001132
_08028594:
	lsl r0, r6, #16
	asr r0, r0, #16
	cmp r3, r0
	blt _080285A0
	mov r0, #0
_0802859E:
	strh r0, [r4]
_080285A0:
	ldr r2, [r1]
	ldr r1, _080285F4  @ =0x0000112E
	add r0, r2, r1
	mov r5, #0
	mov r1, #1
	strh r1, [r0]
	ldr r3, _080285F8  @ =0x0000112C
	add r0, r2, r3
	strh r1, [r0]
	ldr r4, _080285FC  @ =gUnknown_080788FC
	ldr r3, [r4]
	ldr r0, _08028600  @ =0x00001138
	add r2, r2, r0
	ldrb r0, [r2]
	and r1, r1, r0
	lsl r1, r1, #5
	ldrb r2, [r3]
	mov r0, #33
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3]
	ldr r0, [r4]
	ldr r0, [r0]
	lsl r0, r0, #26
	lsr r0, r0, #31
	bl sub_0807220C
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080285EC:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
_080285F4:
	.4byte 0x0000112E
_080285F8:
	.4byte 0x0000112C
_080285FC:
	.4byte gUnknown_080788FC
_08028600:
	.4byte 0x00001138
	THUMB_FUNC_END sub_080284E8

	THUMB_FUNC_START sub_08028604
sub_08028604: @ 0x08028604
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #24
	ldr r1, _08028724  @ =gUnknown_08079D20
	ldr r0, _08028728  @ =0x030000FC
	ldr r2, [r0]
	ldr r3, _0802872C  @ =0x00001138
	add r0, r2, r3
	mov r4, #0
	ldrsh r0, [r0, r4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	mov r3, #0
	ldr r4, _08028730  @ =0x00001124
	add r0, r2, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0802862E
	mov r3, #1
_0802862E:
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08028662
	mov r0, #18
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	cmp r3, #0
	bne _08028644
	add r1, r1, #25
_08028644:
	ldr r0, _08028734  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r1
	ldr r1, [r0]
	mov r4, #146
	lsl r4, r4, #4
	add r2, r2, r4
	mov r0, sp
	mov r3, #5
	bl sub_080064D4
_08028662:
	ldr r0, _08028728  @ =0x030000FC
	ldr r0, [r0]
	ldr r1, _08028738  @ =0x00001130
	add r0, r0, r1
	mov r1, #23
	mov r2, #9
	mov r3, #0
	ldrsh r4, [r0, r3]
	mov r0, #5
	mov r8, r0
	str r1, [sp, #8]
	add r0, sp, #8
	str r2, [r0, #4]
	add r7, r0, #0
	add r6, sp, #16
_08028680:
	add r0, r4, #0
	mov r1, #10
	bl __modsi3
	add r0, r0, r8
	ldr r1, _08028734  @ =gUnknown_08078210
	ldr r1, [r1]
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r1, [r1]
	ldrh r2, [r1]
	ldr r0, [sp, #8]
	sub r0, r0, r2
	str r0, [sp, #8]
	ldr r5, _08028728  @ =0x030000FC
	ldr r2, [r5]
	mov r3, #144
	lsl r3, r3, #1
	add r2, r2, r3
	add r0, r7, #0
	mov r3, #5
	bl sub_080064D4
	add r0, r4, #0
	mov r1, #10
	bl __divsi3
	add r4, r0, #0
	cmp r4, #0
	bgt _08028680
	ldr r0, [r5]
	ldr r4, _0802873C  @ =0x00001132
	add r0, r0, r4
	mov r1, #23
	mov r2, #13
	mov r3, #0
	ldrsh r4, [r0, r3]
	mov r5, #5
	str r1, [sp, #16]
	str r2, [r6, #4]
_080286D6:
	add r0, r4, #0
	mov r1, #10
	bl __modsi3
	add r0, r5, r0
	ldr r1, _08028734  @ =gUnknown_08078210
	ldr r1, [r1]
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r1, [r1]
	ldrh r2, [r1]
	ldr r0, [sp, #16]
	sub r0, r0, r2
	str r0, [sp, #16]
	ldr r0, _08028728  @ =0x030000FC
	ldr r2, [r0]
	mov r3, #144
	lsl r3, r3, #1
	add r2, r2, r3
	add r0, r6, #0
	mov r3, #5
	bl sub_080064D4
	add r0, r4, #0
	mov r1, #10
	bl __divsi3
	add r4, r0, #0
	cmp r4, #0
	bgt _080286D6
	add sp, sp, #24
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08028724:
	.4byte gUnknown_08079D20
_08028728:
	.4byte 0x030000FC
_0802872C:
	.4byte 0x00001138
_08028730:
	.4byte 0x00001124
_08028734:
	.4byte gUnknown_08078210
_08028738:
	.4byte 0x00001130
_0802873C:
	.4byte 0x00001132
	THUMB_FUNC_END sub_08028604

	THUMB_FUNC_START sub_08028740
sub_08028740: @ 0x08028740
	push {r4-r6,lr}
	sub sp, sp, #12
	mov r4, #0
	ldr r0, _08028758  @ =gUnknown_03001708
	ldrh r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0802875C
	sub r4, r4, #1
	b _0802876A
	.byte 0x00
	.byte 0x00
_08028758:
	.4byte gUnknown_03001708
_0802875C:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08028766
	mov r4, #1
_08028766:
	cmp r4, #0
	beq _0802880A
_0802876A:
	ldr r1, _08028780  @ =0x030000FC
	ldr r2, [r1]
	ldr r6, _08028784  @ =0x00001124
	add r0, r2, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _08028788
	cmp r0, #1
	beq _08028794
	b _0802879E
	.byte 0x00
	.byte 0x00
_08028780:
	.4byte 0x030000FC
_08028784:
	.4byte 0x00001124
_08028788:
	mov r5, #2
	ldr r0, _08028790  @ =0x00001136
	add r3, r2, r0
	b _0802879E
_08028790:
	.4byte 0x00001136
_08028794:
	ldr r3, _080287B4  @ =0x0000113A
	add r0, r2, r3
	ldrh r5, [r0]
	ldr r6, _080287B8  @ =0x00001134
	add r3, r2, r6
_0802879E:
	ldrh r0, [r3]
	add r0, r0, r4
	strh r0, [r3]
	lsl r0, r0, #16
	asr r2, r0, #16
	cmp r2, #0
	bge _080287BC
	lsl r0, r5, #16
	asr r0, r0, #16
	sub r0, r0, #1
	b _080287C6
_080287B4:
	.4byte 0x0000113A
_080287B8:
	.4byte 0x00001134
_080287BC:
	lsl r0, r5, #16
	asr r0, r0, #16
	cmp r2, r0
	blt _080287C8
	mov r0, #0
_080287C6:
	strh r0, [r3]
_080287C8:
	ldr r1, [r1]
	ldr r2, _08028814  @ =0x0000112E
	add r0, r1, r2
	mov r4, #0
	mov r2, #1
	strh r2, [r0]
	ldr r3, _08028818  @ =0x0000112C
	add r0, r1, r3
	strh r2, [r0]
	ldr r0, _0802881C  @ =gUnknown_080788FC
	ldr r3, [r0]
	ldr r6, _08028820  @ =0x00001136
	add r1, r1, r6
	ldrb r0, [r1]
	mov r1, #3
	and r1, r1, r0
	lsl r1, r1, #3
	ldrb r2, [r3]
	mov r0, #25
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802880A:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08028814:
	.4byte 0x0000112E
_08028818:
	.4byte 0x0000112C
_0802881C:
	.4byte gUnknown_080788FC
_08028820:
	.4byte 0x00001136
	THUMB_FUNC_END sub_08028740

	THUMB_FUNC_START sub_08028824
sub_08028824: @ 0x08028824
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #20
	mov r9, r0
	ldr r1, _08028940  @ =gUnknown_08079D28
	ldr r0, _08028944  @ =0x030000FC
	ldr r2, [r0]
	ldr r3, _08028948  @ =0x00001136
	add r0, r2, r3
	mov r4, #0
	ldrsh r0, [r0, r4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	mov r3, #0
	ldr r5, _0802894C  @ =0x00001124
	add r0, r2, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08028852
	mov r3, #1
_08028852:
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08028886
	mov r0, #12
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	cmp r3, #0
	bne _08028868
	add r1, r1, #25
_08028868:
	ldr r0, _08028950  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r1
	ldr r1, [r0]
	mov r4, #146
	lsl r4, r4, #4
	add r2, r2, r4
	add r0, sp, #4
	mov r3, #5
	bl sub_080064D4
_08028886:
	ldr r1, _08028944  @ =0x030000FC
	ldr r0, [r1]
	ldr r5, _08028954  @ =0x0000113A
	add r0, r0, r5
	mov r2, #0
	ldrsh r4, [r0, r2]
	lsl r0, r4, #1
	add r6, r0, #0
	add r6, r6, #10
	cmp r4, #7
	bgt _080288E6
	mov r8, r1
	mov r7, #9
_080288A0:
	mov r5, #0
	mov r3, r8
	ldr r2, [r3]
	ldr r1, _0802894C  @ =0x00001124
	add r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _080288B2
	mov r5, #1
_080288B2:
	mov r1, #24
	str r6, [sp, #12]
	add r3, sp, #12
	str r7, [r3, #4]
	cmp r5, #0
	bne _080288C0
	mov r1, #49
_080288C0:
	ldr r0, _08028950  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r5, #132
	lsl r5, r5, #1
	add r0, r0, r5
	add r0, r0, r1
	ldr r1, [r0]
	mov r0, #146
	lsl r0, r0, #4
	add r2, r2, r0
	add r0, r3, #0
	mov r3, #5
	bl sub_080064D4
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #7
	ble _080288A0
_080288E6:
	ldr r4, _08028944  @ =0x030000FC
	ldr r2, [r4]
	ldr r1, _0802894C  @ =0x00001124
	add r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08028910
	ldr r3, _08028958  @ =0x00001134
	add r0, r2, r3
	mov r5, #0
	ldrsh r1, [r0, r5]
	lsl r1, r1, #4
	add r0, r2, #0
	add r0, r0, #60
	add r1, r1, #72
	mov r2, #0
	str r2, [sp]
	mov r2, #64
	mov r3, r9
	bl sub_080281C8
_08028910:
	ldr r0, [r4]
	ldr r2, _08028958  @ =0x00001134
	add r1, r0, r2
	mov r3, #0
	ldrsh r2, [r1, r3]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, #100
	add r0, r0, r1
	mov r1, #0
	str r1, [sp]
	mov r1, #88
	mov r2, #96
	mov r3, r9
	bl sub_080281C8
	add sp, sp, #20
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08028940:
	.4byte gUnknown_08079D28
_08028944:
	.4byte 0x030000FC
_08028948:
	.4byte 0x00001136
_0802894C:
	.4byte 0x00001124
_08028950:
	.4byte gUnknown_08078210
_08028954:
	.4byte 0x0000113A
_08028958:
	.4byte 0x00001134
	THUMB_FUNC_END sub_08028824

	THUMB_FUNC_START options_init_callback
options_init_callback: @ 0x0802895C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r0, #0
	bl arena_restore_head
	ldr r0, _080289D0  @ =gCameraHorizontalOffset
	mov r5, #0
	strh r5, [r0]
	ldr r0, _080289D4  @ =gCameraVerticalOffset
	strh r5, [r0]
	ldr r4, _080289D8  @ =gOptionsMenuData
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl set_blend_regs_08029CDC
	add r0, r4, #0
	bl load_graphics_config_bg2_08032EB8
	mov r2, #128
	lsl r2, r2, #19
	mov r3, #192
	lsl r3, r3, #2
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	add r0, r4, #0
	bl sub_08006968
	ldr r4, _080289DC  @ =0x030000FC
	ldr r0, _080289E0  @ =0x00001150
	bl arena_allocate
	add r1, r0, #0
	str r1, [r4]
	mov r0, sp
	strh r5, [r0]
	ldr r2, _080289E4  @ =0x010008A8
	bl CpuSet
	ldr r0, _080289E8  @ =gPreviousMainState
	ldr r0, [r0]
	cmp r0, #30
	bne _080289F4
	ldr r1, [r4]
	mov r5, #137
	lsl r5, r5, #5
	add r2, r1, r5
	mov r0, #2
	str r0, [r2]
	ldr r0, _080289EC  @ =gPreviousMovieOption
	ldrh r0, [r0]
	ldr r2, _080289F0  @ =0x00001134
	add r1, r1, r2
	strh r0, [r1]
	b _080289F8
_080289D0:
	.4byte gCameraHorizontalOffset
_080289D4:
	.4byte gCameraVerticalOffset
_080289D8:
	.4byte gOptionsMenuData
_080289DC:
	.4byte 0x030000FC
_080289E0:
	.4byte 0x00001150
_080289E4:
	.4byte 0x010008A8
_080289E8:
	.4byte gPreviousMainState
_080289EC:
	.4byte gPreviousMovieOption
_080289F0:
	.4byte 0x00001134
_080289F4:
	ldr r0, _08028BAC  @ =gPreviousMovieOption
	strh r5, [r0]
_080289F8:
	ldr r4, _08028BB0  @ =0x030000FC
	ldr r0, [r4]
	mov r3, #137
	lsl r3, r3, #5
	add r0, r0, r3
	ldr r0, [r0]
	bl sub_08028474
	ldr r0, _08028BB4  @ =gPreviousMainState
	ldr r0, [r0]
	cmp r0, #30
	bne _08028A1A
	ldr r0, [r4]
	ldr r5, _08028BB8  @ =0x00001124
	add r0, r0, r5
	mov r1, #1
	str r1, [r0]
_08028A1A:
	ldr r3, [r4]
	mov r0, #140
	lsl r0, r0, #1
	add r1, r3, r0
	ldr r2, _08028BBC  @ =gOptionsMenuData
	ldr r0, [r2, #64]
	str r0, [r1]
	mov r5, #142
	lsl r5, r5, #1
	add r1, r3, r5
	ldr r0, [r2, #68]
	str r0, [r1]
	ldr r0, _08028BC0  @ =gUnknown_0300192C
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08028BC4  @ =gUnknown_03001930
	strh r1, [r0]
	mov r5, #0
	mov r0, #2
	add r0, sp, r0
	mov r8, r0
	add r6, r4, #0
	mov r4, #0
_08028A48:
	lsl r2, r5, #2
	ldr r0, [r6]
	add r0, r0, r4
	ldr r1, _08028BC8  @ =gUnknown_08079998
	add r2, r2, r1
	ldr r1, [r2]
	bl sub_08028068
	add r4, r4, #20
	add r5, r5, #1
	cmp r5, #13
	ble _08028A48
	ldr r7, _08028BB0  @ =0x030000FC
	ldr r0, [r7]
	add r0, r0, #92
	mov r4, #0
	mov r1, #14
	strb r1, [r0]
	ldr r2, [r7]
	ldr r0, _08028BCC  @ =gUnknown_080788FC
	ldr r3, [r0]
	ldr r0, [r3]
	lsl r0, r0, #27
	lsr r0, r0, #30
	ldr r5, _08028BD0  @ =0x00001136
	add r1, r2, r5
	strh r0, [r1]
	ldr r0, [r3]
	lsl r0, r0, #26
	lsr r0, r0, #31
	ldr r1, _08028BD4  @ =0x00001138
	add r2, r2, r1
	strh r0, [r2]
	mov r0, #3
	mov r1, #3
	bl load_predefined_palette
	ldr r6, _08028BD8  @ =gUnknown_08B3A4DC
	ldrh r0, [r6]
	lsl r0, r0, #1
	bl arena_allocate
	ldr r1, [r7]
	ldr r3, _08028BDC  @ =0x00001144
	add r2, r1, r3
	str r0, [r2]
	add r5, r5, #8
	add r1, r1, r5
	strh r4, [r1]
	mov r5, #0
	ldrh r0, [r6]
	cmp r5, r0
	bge _08028ADE
	ldr r4, _08028BE0  @ =gUnknown_08B3A4E0
_08028AB4:
	ldrb r0, [r4, #19]
	cmp r0, #0
	bne _08028AD4
	ldr r2, [r7]
	ldr r1, _08028BE4  @ =0x0000113E
	add r3, r2, r1
	ldrh r0, [r3]
	add r1, r0, #1
	strh r1, [r3]
	lsl r0, r0, #16
	ldr r3, _08028BDC  @ =0x00001144
	add r2, r2, r3
	ldr r1, [r2]
	asr r0, r0, #15
	add r0, r0, r1
	strh r5, [r0]
_08028AD4:
	add r4, r4, #28
	add r5, r5, #1
	ldrh r0, [r6]
	cmp r5, r0
	blt _08028AB4
_08028ADE:
	ldr r4, _08028BE8  @ =gUnknown_08D7B10C
	ldrh r0, [r4]
	lsl r0, r0, #1
	bl arena_allocate
	ldr r3, _08028BB0  @ =0x030000FC
	ldr r1, [r3]
	ldr r5, _08028BEC  @ =0x00001148
	add r2, r1, r5
	str r0, [r2]
	mov r0, #138
	lsl r0, r0, #5
	add r1, r1, r0
	mov r0, #0
	strh r0, [r1]
	mov r5, #0
	ldrh r1, [r4]
	cmp r5, r1
	bge _08028B36
	add r7, r3, #0
	add r6, r4, #0
	ldr r4, _08028BF0  @ =gUnknown_08D7B110
_08028B0A:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _08028B2C
	ldr r2, [r7]
	mov r0, #138
	lsl r0, r0, #5
	add r3, r2, r0
	ldrh r0, [r3]
	add r1, r0, #1
	strh r1, [r3]
	lsl r0, r0, #16
	ldr r1, _08028BEC  @ =0x00001148
	add r2, r2, r1
	ldr r1, [r2]
	asr r0, r0, #15
	add r0, r0, r1
	strh r5, [r0]
_08028B2C:
	add r4, r4, #12
	add r5, r5, #1
	ldrh r2, [r6]
	cmp r5, r2
	blt _08028B0A
_08028B36:
	bl sub_08071FE4
	cmp r0, #10
	beq _08028B48
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_08028B48:
	mov r5, #7
_08028B4A:
	ldr r1, _08028BF4  @ =gUnknown_080799D0
	lsl r0, r5, #2
	add r4, r0, r1
	ldr r1, [r4]
	mov r0, #0
	bl sub_08014950
	cmp r0, #1
	beq _08028B7A
	ldr r1, [r4]
	mov r0, #1
	bl sub_08014950
	cmp r0, #1
	beq _08028B7A
	ldr r1, [r4]
	mov r0, #2
	bl sub_08014950
	cmp r0, #1
	beq _08028B7A
	sub r5, r5, #1
	cmp r5, #0
	bgt _08028B4A
_08028B7A:
	ldr r0, _08028BB0  @ =0x030000FC
	ldr r1, [r0]
	add r2, r5, #1
	ldr r3, _08028BF8  @ =0x0000113A
	add r0, r1, r3
	mov r3, #0
	strh r2, [r0]
	ldr r5, _08028BFC  @ =0x0000114C
	add r1, r1, r5
	ldr r0, _08028BCC  @ =gUnknown_080788FC
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r1]
	mov r0, r8
	strh r3, [r0]
	ldr r1, _08028C00  @ =gBGLayerOffsets 
	ldr r2, _08028C04  @ =0x01000008
	bl CpuSet
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08028BAC:
	.4byte gPreviousMovieOption
_08028BB0:
	.4byte 0x030000FC
_08028BB4:
	.4byte gPreviousMainState
_08028BB8:
	.4byte 0x00001124
_08028BBC:
	.4byte gOptionsMenuData
_08028BC0:
	.4byte gUnknown_0300192C
_08028BC4:
	.4byte gUnknown_03001930
_08028BC8:
	.4byte gUnknown_08079998
_08028BCC:
	.4byte gUnknown_080788FC
_08028BD0:
	.4byte 0x00001136
_08028BD4:
	.4byte 0x00001138
_08028BD8:
	.4byte gUnknown_08B3A4DC
_08028BDC:
	.4byte 0x00001144
_08028BE0:
	.4byte gUnknown_08B3A4E0
_08028BE4:
	.4byte 0x0000113E
_08028BE8:
	.4byte gUnknown_08D7B10C
_08028BEC:
	.4byte 0x00001148
_08028BF0:
	.4byte gUnknown_08D7B110
_08028BF4:
	.4byte gUnknown_080799D0
_08028BF8:
	.4byte 0x0000113A
_08028BFC:
	.4byte 0x0000114C
_08028C00:
	.4byte gBGLayerOffsets 
_08028C04:
	.4byte 0x01000008
	THUMB_FUNC_END options_init_callback

	THUMB_FUNC_START options_main
options_main: @ 0x08028C08
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	mov r0, #178
	mov r9, r0
	mov r5, #64
	mov r1, #128
	mov r8, r1
	bl process_input
	ldr r2, _08028C78  @ =0x030000FC
	ldr r1, [r2]
	ldr r0, _08028C7C  @ =0x00001128
	mov r10, r0
	add r4, r1, r0
	ldr r6, [r4]
	add r0, r6, #0
	add r0, r0, #192
	ldr r0, [r0]
	mov r2, #1
	mov r12, r2
	and r0, r0, r2
	cmp r0, #0
	beq _08028C48
	mov r5, #32
	mov r0, #16
	mov r8, r0
	mov r2, #23
	mov r9, r2
_08028C48:
	ldr r0, _08028C80  @ =0x00001124
	add r2, r1, r0
	ldr r7, [r2]
	ldr r0, _08028C84  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	add r0, r1, #0
	and r5, r5, r0
	cmp r5, #0
	beq _08028C8E
	sub r0, r7, #1
	str r0, [r2]
	cmp r0, #0
	bge _08028CB8
	ldr r3, [r4]
	add r0, r3, #0
	add r0, r0, #192
	ldr r0, [r0]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08028C88
	mov r0, #0
	b _08028CB2
	.byte 0x00
	.byte 0x00
_08028C78:
	.4byte 0x030000FC
_08028C7C:
	.4byte 0x00001128
_08028C80:
	.4byte 0x00001124
_08028C84:
	.4byte gSomeKeys_030012E8
_08028C88:
	ldrb r0, [r3]
	sub r0, r0, #1
	b _08028CB2
_08028C8E:
	mov r3, r8
	and r3, r3, r0
	cmp r3, #0
	beq _08028CF4
	add r0, r7, #1
	str r0, [r2]
	ldr r1, [r4]
	ldrb r3, [r1]
	cmp r0, r3
	blt _08028CB8
	add r0, r1, #0
	add r0, r0, #192
	ldr r1, [r0]
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _08028CB6
	sub r0, r3, #1
_08028CB2:
	str r0, [r2]
	b _08028CB8
_08028CB6:
	str r1, [r2]
_08028CB8:
	ldr r0, _08028CE8  @ =0x030000FC
	ldr r1, [r0]
	ldr r0, _08028CEC  @ =0x0000112E
	add r2, r1, r0
	mov r3, #0
	mov r0, #1
	strh r0, [r2]
	ldr r2, _08028CF0  @ =0x00001124
	add r1, r1, r2
	ldr r0, [r1]
	cmp r0, r7
	beq _08028D92
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, r9
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08028D92
	.byte 0x00
	.byte 0x00
_08028CE8:
	.4byte 0x030000FC
_08028CEC:
	.4byte 0x0000112E
_08028CF0:
	.4byte 0x00001124
_08028CF4:
	mov r0, r12
	and r0, r0, r1
	cmp r0, #0
	beq _08028D36
	lsl r0, r7, #2
	add r0, r0, r7
	lsl r0, r0, #2
	add r0, r0, #4
	add r4, r6, r0
	ldr r1, [r4, #8]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08028D2A
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r4, #8]
	bl sub_08028474
_08028D2A:
	ldr r0, [r4, #12]
	cmp r0, #0
	beq _08028D92
	bl _call_via_r0
	b _08028D92
_08028D36:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08028D92
	add r0, r6, #0
	add r0, r0, #184
	ldr r1, [r0]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08028D56
	mov r0, #3
	mov r1, #1
	bl change_main_state
	b _08028D7C
_08028D56:
	bl sub_08071C24
	ldr r1, _08028E2C  @ =0x030000FC
	ldr r0, [r1]
	add r0, r0, r10
	ldr r0, [r0]
	add r0, r0, #184
	ldr r0, [r0]
	bl sub_08028474
	bl sub_08071FE4
	cmp r0, #10
	beq _08028D7C
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_08028D7C:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08028D92:
	ldr r6, _08028E2C  @ =0x030000FC
	mov r5, #0
	mov r4, #13
_08028D98:
	ldr r0, [r6]
	add r0, r0, r5
	mov r1, #1
	neg r1, r1
	bl sub_080280CC
	add r5, r5, #20
	sub r4, r4, #1
	cmp r4, #0
	bge _08028D98
	ldr r5, _08028E2C  @ =0x030000FC
	ldr r0, [r5]
	ldr r2, _08028E30  @ =0x00001128
	add r0, r0, r2
	ldr r0, [r0]
	add r0, r0, #196
	ldr r0, [r0]
	cmp r0, #0
	beq _08028DC2
	bl _call_via_r0
_08028DC2:
	ldr r1, [r5]
	ldr r0, _08028E34  @ =0x0000113C
	add r1, r1, r0
	ldrh r0, [r1]
	add r0, r0, #80
	mov r6, #0
	strh r0, [r1]
	ldr r1, _08028E38  @ =gBGLayerOffsets 
	lsl r0, r0, #16
	lsr r0, r0, #24
	strh r0, [r1, #12]
	bl sub_0801B310
	ldr r1, [r5]
	ldr r2, _08028E3C  @ =0x0000112C
	add r0, r1, r2
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08028E1A
	add r0, sp, #12
	strh r6, [r0]
	mov r0, #144
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r4, _08028E40  @ =0x01000400
	add r0, sp, #12
	add r2, r4, #0
	bl CpuSet
	mov r0, sp
	add r0, r0, #14
	strh r6, [r0]
	ldr r1, [r5]
	mov r2, #146
	lsl r2, r2, #4
	add r1, r1, r2
	add r2, r4, #0
	bl CpuSet
	ldr r0, [r5]
	ldr r1, _08028E3C  @ =0x0000112C
	add r0, r0, r1
	strh r6, [r0]
_08028E1A:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08028E2C:
	.4byte 0x030000FC
_08028E30:
	.4byte 0x00001128
_08028E34:
	.4byte 0x0000113C
_08028E38:
	.4byte gBGLayerOffsets 
_08028E3C:
	.4byte 0x0000112C
_08028E40:
	.4byte 0x01000400
	THUMB_FUNC_END options_main

	THUMB_FUNC_START options_loop
options_loop: @ 0x08028E44
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r4, sp, #8
	mov r0, #0
	strh r0, [r4]
	ldr r6, _08028FE0  @ =0x030000FC
	ldr r2, [r6]
	ldr r0, _08028FE4  @ =0x00001128
	add r3, r2, r0
	ldr r1, _08028FE8  @ =0x00001124
	add r0, r2, r1
	ldr r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, #4
	ldr r1, [r3]
	add r1, r1, r0
	mov r8, r1
	ldr r1, [r1]
	mov r0, #1
	neg r0, r0
	add r5, r2, #0
	cmp r1, r0
	bne _08028E80
	add r5, r5, #80
_08028E80:
	bl sub_08029C20
	cmp r0, #0
	bne _08028E9E
	ldr r0, [r5]
	mov r2, #10
	ldrsh r1, [r5, r2]
	ldr r2, [r0, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0, #8]
	bl sub_0801B2CC
_08028E9E:
	mov r0, #160
	str r0, [sp, #4]
	ldr r1, _08028FEC  @ =REG_DMA3SAD
	add r3, sp, #4
	str r3, [r1]
	ldr r0, _08028FF0  @ =gOamBuffer
	str r0, [r1, #4]
	ldr r0, _08028FF4  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r7, r6, #0
	mov r6, #0
	mov r5, #13
_08028EB8:
	ldr r0, [r7]
	add r0, r0, r6
	bl sub_08028128
	add r6, r6, #20
	sub r5, r5, #1
	cmp r5, #0
	bge _08028EB8
	ldr r5, _08028FE0  @ =0x030000FC
	ldr r1, [r5]
	ldr r6, _08028FF8  @ =0x0000112E
	add r0, r1, r6
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08028EE8
	ldr r3, _08028FE4  @ =0x00001128
	add r0, r1, r3
	ldr r0, [r0]
	ldr r2, _08028FE8  @ =0x00001124
	add r1, r1, r2
	ldr r1, [r1]
	bl sub_0802834C
_08028EE8:
	ldr r0, [r5]
	ldr r3, _08028FE4  @ =0x00001128
	add r0, r0, r3
	ldr r0, [r0]
	add r0, r0, #200
	ldr r1, [r0]
	cmp r1, #0
	beq _08028EFE
	add r0, sp, #8
	bl _call_via_r1
_08028EFE:
	ldr r3, [r5]
	add r1, r3, r6
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r10, r5
	cmp r0, #0
	beq _08028F6A
	mov r0, #0
	strh r0, [r1]
	mov r5, #0
	ldr r2, _08028FEC  @ =REG_DMA3SAD
	add r7, r3, #0
	mov r3, #140
	lsl r3, r3, #1
	add r0, r7, r3
	mov r1, #128
	lsl r1, r1, #3
	mov r12, r1
	ldr r3, _08028FFC  @ =0x80000400
	mov r9, r3
	ldr r4, [r0]
	mov r1, #142
	lsl r1, r1, #1
	add r0, r7, r1
	ldr r6, [r0]
	mov r0, #144
	lsl r0, r0, #1
	add r3, r7, r0
_08028F36:
	lsl r0, r5, #1
	str r3, [r2]
	str r4, [r2, #4]
	mov r1, r9
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	mov r1, #146
	lsl r1, r1, #4
	add r0, r0, r1
	add r0, r7, r0
	str r0, [r2]
	str r6, [r2, #4]
	mov r0, r9
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #4
	add r4, r4, r1
	mov r1, r12
	lsl r0, r1, #1
	add r6, r6, r0
	add r3, r3, r0
	add r5, r5, r12
	ldr r0, _08029000  @ =0x000003FF
	cmp r5, r0
	ble _08028F36
_08028F6A:
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	blt _08029004
	ldrb r0, [r1, #4]
	ldrb r1, [r1, #5]
	mov r3, r8
	ldrb r2, [r3, #6]
	lsl r6, r0, #3
	lsl r7, r1, #3
	lsl r4, r2, #3
	mov r1, r10
	ldr r0, [r1]
	mov r5, #1
	str r5, [sp]
	add r1, r6, #0
	add r2, r7, #0
	add r3, sp, #8
	bl sub_080281C8
	mov r2, r10
	ldr r0, [r2]
	ldr r1, [r0, #20]
	ldrb r1, [r1, #8]
	sub r4, r4, r1
	add r0, r0, #20
	add r4, r6, r4
	str r5, [sp]
	add r1, r4, #0
	add r2, r7, #0
	add r3, sp, #8
	bl sub_080281C8
	mov r3, r10
	ldr r1, [r3]
	ldr r0, [r1, #40]
	ldrb r5, [r0, #8]
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	add r6, r6, r0
	cmp r6, r4
	bge _0802901A
	mov r9, r10
	mov r0, #1
	mov r8, r0
_08028FC4:
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, #40
	mov r2, r8
	str r2, [sp]
	add r1, r6, #0
	add r2, r7, #0
	add r3, sp, #8
	bl sub_080281C8
	add r6, r6, r5
	cmp r6, r4
	blt _08028FC4
	b _0802901A
_08028FE0:
	.4byte 0x030000FC
_08028FE4:
	.4byte 0x00001128
_08028FE8:
	.4byte 0x00001124
_08028FEC:
	.4byte REG_DMA3SAD
_08028FF0:
	.4byte gOamBuffer
_08028FF4:
	.4byte 0x85000100
_08028FF8:
	.4byte 0x0000112E
_08028FFC:
	.4byte 0x80000400
_08029000:
	.4byte 0x000003FF
_08029004:
	mov r3, r10
	ldr r0, [r3]
	add r0, r0, #80
	mov r2, r8
	ldrb r1, [r2, #4]
	ldrb r2, [r2, #5]
	mov r3, #1
	str r3, [sp]
	add r3, sp, #8
	bl sub_080281C8
_0802901A:
	bl sub_0801B4BC
	ldr r1, _08029040  @ =REG_DMA3SAD
	ldr r0, _08029044  @ =gOamBuffer
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _08029048  @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08029040:
	.4byte REG_DMA3SAD
_08029044:
	.4byte gOamBuffer
_08029048:
	.4byte 0x84000100
	THUMB_FUNC_END options_loop

	THUMB_FUNC_START options_end
options_end: @ 0x0802904C
	push {lr}
	ldr r0, _08029074  @ =0x030000FC
	ldr r0, [r0]
	ldr r1, _08029078  @ =0x0000114C
	add r0, r0, r1
	ldrb r3, [r0]
	mov r1, #63
	ldr r0, _0802907C  @ =gUnknown_080788FC
	ldr r0, [r0]
	ldrb r2, [r0]
	add r0, r1, #0
	and r0, r0, r3
	and r1, r1, r2
	cmp r0, r1
	beq _0802906E
	bl sub_0802A164
_0802906E:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08029074:
	.4byte 0x030000FC
_08029078:
	.4byte 0x0000114C
_0802907C:
	.4byte gUnknown_080788FC
	THUMB_FUNC_END options_end

	THUMB_FUNC_START sub_08029080
sub_08029080: @ 0x08029080
	ldr r3, _080290A8  @ =gUnknown_080788FC
	ldr r2, [r3]
	ldrb r1, [r2]
	mov r0, #8
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	ldr r2, [r3]
	ldrb r1, [r2]
	mov r0, #25
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	ldr r2, [r3]
	ldrb r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	strb r0, [r2]
	bx lr
	.byte 0x00
	.byte 0x00
_080290A8:
	.4byte gUnknown_080788FC
	THUMB_FUNC_END sub_08029080

	THUMB_FUNC_START options_menu_play_music
options_menu_play_music: @ 0x080290AC
	push {lr}
	ldr r0, _080290D4  @ =0x030000FC
	ldr r0, [r0]
	ldr r2, _080290D8  @ =0x00001130
	add r1, r0, r2
	mov r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _080290DC  @ =0x00001148
	add r0, r0, r2
	ldr r0, [r0]
	lsl r1, r1, #1
	add r1, r1, r0
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
	pop {r0}
	bx r0
_080290D4:
	.4byte 0x030000FC
_080290D8:
	.4byte 0x00001130
_080290DC:
	.4byte 0x00001148
	THUMB_FUNC_END options_menu_play_music

	THUMB_FUNC_START options_menu_play_sound_effect
options_menu_play_sound_effect: @ 0x080290E0
	push {lr}
	sub sp, sp, #12
	bl sub_08071C24
	ldr r0, _0802911C  @ =0x030000FC
	ldr r0, [r0]
	ldr r2, _08029120  @ =0x00001132
	add r1, r0, r2
	mov r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _08029124  @ =0x00001144
	add r0, r0, r2
	ldr r0, [r0]
	lsl r1, r1, #1
	add r1, r1, r0
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add sp, sp, #12
	pop {r0}
	bx r0
_0802911C:
	.4byte 0x030000FC
_08029120:
	.4byte 0x00001132
_08029124:
	.4byte 0x00001144
	THUMB_FUNC_END options_menu_play_sound_effect

	THUMB_FUNC_START options_menu_play_movie
options_menu_play_movie: @ 0x08029128
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r1, _0802917C  @ =gUnknown_08079990
	ldr r5, _08029180  @ =0x030000FC
	ldr r0, [r5]
	ldr r4, _08029184  @ =0x00001134
	add r0, r0, r4
	mov r2, #0
	ldrsh r0, [r0, r2]
	add r1, r0, r1
	ldrb r1, [r1]
	ldr r2, _08029188  @ =gOptionsMenuMovieIDTable
	add r0, r0, r2
	ldrb r3, [r0]
	mov r0, #3
	mov r2, #4
	bl movie_player_setup_data
	mov r0, #30
	mov r1, #1
	bl change_main_state
	ldr r1, _0802918C  @ =gPreviousMovieOption
	ldr r0, [r5]
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_0802917C:
	.4byte gUnknown_08079990
_08029180:
	.4byte 0x030000FC
_08029184:
	.4byte 0x00001134
_08029188:
	.4byte gOptionsMenuMovieIDTable
_0802918C:
	.4byte gPreviousMovieOption
	THUMB_FUNC_END options_menu_play_movie

	THUMB_FUNC_START sub_08029190
sub_08029190: @ 0x08029190
	push {lr}
	mov r0, #0
	bl sub_08011428
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08029190
