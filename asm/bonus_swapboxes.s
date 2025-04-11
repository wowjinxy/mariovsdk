	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_08021BA4
sub_08021BA4: @ 0x08021BA4
	push {r4,lr}
	ldr r2, _08021BDC  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #60
	bne _08021BD6
	mov r4, #0
	mov r0, #1
	strb r0, [r1, #1]
	ldr r3, _08021BE0  @ =0x030000DC
	ldr r1, _08021BE4  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08021BE8  @ =0x030000E0
	ldr r1, _08021BEC  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08021BD6:
	pop {r4}
	pop {r0}
	bx r0
_08021BDC:
	.4byte 0x030000D4
_08021BE0:
	.4byte 0x030000DC
_08021BE4:
	.4byte gUnknown_08079878
_08021BE8:
	.4byte 0x030000E0
_08021BEC:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021BA4

	THUMB_FUNC_START sub_08021BF0
sub_08021BF0: @ 0x08021BF0
	push {r4,lr}
	ldr r2, _08021C28  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #60
	bne _08021C22
	mov r4, #0
	mov r0, #2
	strb r0, [r1, #1]
	ldr r3, _08021C2C  @ =0x030000DC
	ldr r1, _08021C30  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08021C34  @ =0x030000E0
	ldr r1, _08021C38  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08021C22:
	pop {r4}
	pop {r0}
	bx r0
_08021C28:
	.4byte 0x030000D4
_08021C2C:
	.4byte 0x030000DC
_08021C30:
	.4byte gUnknown_08079878
_08021C34:
	.4byte 0x030000E0
_08021C38:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021BF0

	THUMB_FUNC_START sub_08021C3C
sub_08021C3C: @ 0x08021C3C
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
	bl sub_0801CBD8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801D748
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801D1F0
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021C3C

	THUMB_FUNC_START sub_08021C80
sub_08021C80: @ 0x08021C80
	push {lr}
	ldr r0, _08021CC0  @ =0x030000D0
	ldr r1, [r0]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r2, _08021CC4  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #80
	bne _08021CBC
	mov r0, #3
	strb r0, [r1, #1]
	ldr r3, _08021CC8  @ =0x030000DC
	ldr r1, _08021CCC  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08021CD0  @ =0x030000E0
	ldr r1, _08021CD4  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	mov r0, #0
	strh r0, [r2, #20]
_08021CBC:
	pop {r0}
	bx r0
_08021CC0:
	.4byte 0x030000D0
_08021CC4:
	.4byte 0x030000D4
_08021CC8:
	.4byte 0x030000DC
_08021CCC:
	.4byte gUnknown_08079878
_08021CD0:
	.4byte 0x030000E0
_08021CD4:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021C80

	THUMB_FUNC_START sub_08021CD8
sub_08021CD8: @ 0x08021CD8
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
	bl sub_0801CBD8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801D748
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021CD8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021D10
sub_08021D10: @ 0x08021D10
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
	bl sub_0801CBD8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F254
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021D10

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021D48
sub_08021D48: @ 0x08021D48
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
	bl sub_0801FB3C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F254
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801CBD8
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021D48

	THUMB_FUNC_START sub_08021D8C
sub_08021D8C: @ 0x08021D8C
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_0801F554
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021D8C

	THUMB_FUNC_START sub_08021DA0
sub_08021DA0: @ 0x08021DA0
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_0801F554
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021DA0

	THUMB_FUNC_START sub_08021DB4
sub_08021DB4: @ 0x08021DB4
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_0801F554
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021DB4

	THUMB_FUNC_START sub_08021DC8
sub_08021DC8: @ 0x08021DC8
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
	bl sub_080201EC
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021DC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021E1C
sub_08021E1C: @ 0x08021E1C
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
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E9C4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021E1C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021E70
sub_08021E70: @ 0x08021E70
	push {r4,lr}
	ldr r2, _08021EA8  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #59
	bls _08021EA2
	mov r4, #0
	mov r0, #11
	strb r0, [r1, #1]
	ldr r3, _08021EAC  @ =0x030000DC
	ldr r1, _08021EB0  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08021EB4  @ =0x030000E0
	ldr r1, _08021EB8  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08021EA2:
	pop {r4}
	pop {r0}
	bx r0
_08021EA8:
	.4byte 0x030000D4
_08021EAC:
	.4byte 0x030000DC
_08021EB0:
	.4byte gUnknown_08079878
_08021EB4:
	.4byte 0x030000E0
_08021EB8:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021E70

	THUMB_FUNC_START sub_08021EBC
sub_08021EBC: @ 0x08021EBC
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
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E9C4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021EBC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021F10
sub_08021F10: @ 0x08021F10
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
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E9C4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021F10

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021F64
sub_08021F64: @ 0x08021F64
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
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E3E8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021F64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021FB8
sub_08021FB8: @ 0x08021FB8
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
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E3E8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021FB8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802200C
sub_0802200C: @ 0x0802200C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	ldr r2, _08022308  @ =0x030000F8
	mov r10, r2
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08022112
	ldrb r0, [r1, #1]
	str r0, [r3]
	ldr r0, _0802230C  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	mov r3, r9
	str r0, [r3]
	ldr r4, _08022310  @ =REG_DMA3SAD
	ldr r0, _08022314  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022318  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802231C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022320  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022324  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022328  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0802232C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022330  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022334  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022338  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802233C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022112:
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08022200
	ldrb r0, [r1, #1]
	mov r3, r8
	str r0, [r3]
	ldr r0, _0802230C  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	mov r1, r9
	str r0, [r1]
	ldr r4, _08022310  @ =REG_DMA3SAD
	ldr r0, _08022314  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022318  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802231C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022320  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022324  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022328  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802232C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022330  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022334  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022338  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802233C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022200:
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080222F6
	ldrb r0, [r1, #1]
	mov r3, r8
	str r0, [r3]
	ldr r0, _0802230C  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	mov r1, r9
	str r0, [r1]
	ldr r4, _08022310  @ =REG_DMA3SAD
	ldr r0, _08022314  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022318  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802231C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022320  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022324  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022328  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802232C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022330  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08022334  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08022338  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802233C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080222F6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08022304:
	.4byte 0x030000E8
_08022308:
	.4byte 0x030000F8
_0802230C:
	.4byte 0x030000F4
_08022310:
	.4byte REG_DMA3SAD
_08022314:
	.4byte gUnknown_082AEF7C
_08022318:
	.4byte OBJ_VRAM0
_0802231C:
	.4byte 0x84000200
_08022320:
	.4byte gUnknown_082AEF74
_08022324:
	.4byte gOamBuffer
_08022328:
	.4byte 0x84000002
_0802232C:
	.4byte 0x000001FF
_08022330:
	.4byte 0xFFFFFE00
_08022334:
	.4byte 0x000003FF
_08022338:
	.4byte 0xFFFFFC00
_0802233C:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0802200C

	THUMB_FUNC_START sub_08022340
sub_08022340: @ 0x08022340
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	mov r0, #30
	str r0, [r3]
	ldr r2, _08022394  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	ldr r3, _08022398  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	mov r10, r2
	cmp r0, #1
	bne _080223B0
	ldr r4, _0802239C  @ =REG_DMA3SAD
	ldr r0, _080223A0  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080223A4  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080223A8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080223AC  @ =gUnknown_0811BCB0
	b _0802245A
	.byte 0x00
	.byte 0x00
_08022394:
	.4byte 0x030000E8
_08022398:
	.4byte 0x030000F8
_0802239C:
	.4byte REG_DMA3SAD
_080223A0:
	.4byte gUnknown_0811BCB8
_080223A4:
	.4byte OBJ_VRAM0
_080223A8:
	.4byte 0x84000020
_080223AC:
	.4byte gUnknown_0811BCB0
_080223B0:
	cmp r0, #2
	bne _080223E0
	ldr r4, _080223CC  @ =REG_DMA3SAD
	ldr r0, _080223D0  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080223D4  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080223D8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080223DC  @ =gUnknown_0811BD5C
	b _0802245A
_080223CC:
	.4byte REG_DMA3SAD
_080223D0:
	.4byte gUnknown_0811BD64
_080223D4:
	.4byte OBJ_VRAM0
_080223D8:
	.4byte 0x84000020
_080223DC:
	.4byte gUnknown_0811BD5C
_080223E0:
	cmp r0, #3
	bne _08022410
	ldr r4, _080223FC  @ =REG_DMA3SAD
	ldr r0, _08022400  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022404  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022408  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802240C  @ =gUnknown_0811BC04
	b _0802245A
_080223FC:
	.4byte REG_DMA3SAD
_08022400:
	.4byte gUnknown_0811BC0C
_08022404:
	.4byte OBJ_VRAM0
_08022408:
	.4byte 0x84000020
_0802240C:
	.4byte gUnknown_0811BC04
_08022410:
	cmp r0, #4
	bne _08022440
	ldr r4, _0802242C  @ =REG_DMA3SAD
	ldr r0, _08022430  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022434  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022438  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802243C  @ =gUnknown_081257D0
	b _0802245A
_0802242C:
	.4byte REG_DMA3SAD
_08022430:
	.4byte gUnknown_081257D8
_08022434:
	.4byte OBJ_VRAM0
_08022438:
	.4byte 0x84000020
_0802243C:
	.4byte gUnknown_081257D0
_08022440:
	cmp r0, #5
	bne _080224E8
	ldr r4, _08022524  @ =REG_DMA3SAD
	ldr r0, _08022528  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0802252C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022530  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022534  @ =gUnknown_08125928
_0802245A:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022538  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0802253C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08022540  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022544  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022548  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0802254C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #128
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08022550  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080224E8:
	mov r0, #102
	mov r2, r8
	str r0, [r2]
	mov r3, r10
	ldr r0, [r3]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r2, _08022554  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08022560
	ldr r4, _08022524  @ =REG_DMA3SAD
	ldr r0, _08022558  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0802252C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022530  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802255C  @ =gUnknown_0811BCB0
	b _0802260A
_08022524:
	.4byte REG_DMA3SAD
_08022528:
	.4byte gUnknown_08125930
_0802252C:
	.4byte OBJ_VRAM0
_08022530:
	.4byte 0x84000020
_08022534:
	.4byte gUnknown_08125928
_08022538:
	.4byte gOamBuffer
_0802253C:
	.4byte 0x84000002
_08022540:
	.4byte 0x000001FF
_08022544:
	.4byte 0xFFFFFE00
_08022548:
	.4byte 0x000003FF
_0802254C:
	.4byte 0xFFFFFC00
_08022550:
	.4byte 0x80000200
_08022554:
	.4byte 0x030000F8
_08022558:
	.4byte gUnknown_0811BCB8
_0802255C:
	.4byte gUnknown_0811BCB0
_08022560:
	cmp r0, #2
	bne _08022590
	ldr r4, _0802257C  @ =REG_DMA3SAD
	ldr r0, _08022580  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022584  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022588  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802258C  @ =gUnknown_0811BD5C
	b _0802260A
_0802257C:
	.4byte REG_DMA3SAD
_08022580:
	.4byte gUnknown_0811BD64
_08022584:
	.4byte OBJ_VRAM0
_08022588:
	.4byte 0x84000020
_0802258C:
	.4byte gUnknown_0811BD5C
_08022590:
	cmp r0, #3
	bne _080225C0
	ldr r4, _080225AC  @ =REG_DMA3SAD
	ldr r0, _080225B0  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080225B4  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080225B8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080225BC  @ =gUnknown_0811BC04
	b _0802260A
_080225AC:
	.4byte REG_DMA3SAD
_080225B0:
	.4byte gUnknown_0811BC0C
_080225B4:
	.4byte OBJ_VRAM0
_080225B8:
	.4byte 0x84000020
_080225BC:
	.4byte gUnknown_0811BC04
_080225C0:
	cmp r0, #4
	bne _080225F0
	ldr r4, _080225DC  @ =REG_DMA3SAD
	ldr r0, _080225E0  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080225E4  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080225E8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080225EC  @ =gUnknown_081257D0
	b _0802260A
_080225DC:
	.4byte REG_DMA3SAD
_080225E0:
	.4byte gUnknown_081257D8
_080225E4:
	.4byte OBJ_VRAM0
_080225E8:
	.4byte 0x84000020
_080225EC:
	.4byte gUnknown_081257D0
_080225F0:
	cmp r0, #5
	bne _08022698
	ldr r4, _080226D4  @ =REG_DMA3SAD
	ldr r0, _080226D8  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080226DC  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080226E0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080226E4  @ =gUnknown_08125928
_0802260A:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080226E8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080226EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _080226F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080226F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080226F8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080226FC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #128
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08022700  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022698:
	mov r0, #174
	mov r2, r8
	str r0, [r2]
	mov r3, r10
	ldr r0, [r3]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r2, _08022704  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08022710
	ldr r4, _080226D4  @ =REG_DMA3SAD
	ldr r0, _08022708  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080226DC  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080226E0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802270C  @ =gUnknown_0811BCB0
	b _080227BA
_080226D4:
	.4byte REG_DMA3SAD
_080226D8:
	.4byte gUnknown_08125930
_080226DC:
	.4byte OBJ_VRAM0
_080226E0:
	.4byte 0x84000020
_080226E4:
	.4byte gUnknown_08125928
_080226E8:
	.4byte gOamBuffer
_080226EC:
	.4byte 0x84000002
_080226F0:
	.4byte 0x000001FF
_080226F4:
	.4byte 0xFFFFFE00
_080226F8:
	.4byte 0x000003FF
_080226FC:
	.4byte 0xFFFFFC00
_08022700:
	.4byte 0x80000200
_08022704:
	.4byte 0x030000F8
_08022708:
	.4byte gUnknown_0811BCB8
_0802270C:
	.4byte gUnknown_0811BCB0
_08022710:
	cmp r0, #2
	bne _08022740
	ldr r4, _0802272C  @ =REG_DMA3SAD
	ldr r0, _08022730  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022734  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022738  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802273C  @ =gUnknown_0811BD5C
	b _080227BA
_0802272C:
	.4byte REG_DMA3SAD
_08022730:
	.4byte gUnknown_0811BD64
_08022734:
	.4byte OBJ_VRAM0
_08022738:
	.4byte 0x84000020
_0802273C:
	.4byte gUnknown_0811BD5C
_08022740:
	cmp r0, #3
	bne _08022770
	ldr r4, _0802275C  @ =REG_DMA3SAD
	ldr r0, _08022760  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022764  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022768  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802276C  @ =gUnknown_0811BC04
	b _080227BA
_0802275C:
	.4byte REG_DMA3SAD
_08022760:
	.4byte gUnknown_0811BC0C
_08022764:
	.4byte OBJ_VRAM0
_08022768:
	.4byte 0x84000020
_0802276C:
	.4byte gUnknown_0811BC04
_08022770:
	cmp r0, #4
	bne _080227A0
	ldr r4, _0802278C  @ =REG_DMA3SAD
	ldr r0, _08022790  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022794  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022798  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802279C  @ =gUnknown_081257D0
	b _080227BA
_0802278C:
	.4byte REG_DMA3SAD
_08022790:
	.4byte gUnknown_081257D8
_08022794:
	.4byte OBJ_VRAM0
_08022798:
	.4byte 0x84000020
_0802279C:
	.4byte gUnknown_081257D0
_080227A0:
	cmp r0, #5
	bne _08022850
	ldr r4, _08022860  @ =REG_DMA3SAD
	ldr r0, _08022864  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022868  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802286C  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022870  @ =gUnknown_08125928
_080227BA:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022874  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022878  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0802287C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022880  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08022884  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08022888  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #128
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802288C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022850:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08022860:
	.4byte REG_DMA3SAD
_08022864:
	.4byte gUnknown_08125930
_08022868:
	.4byte OBJ_VRAM0
_0802286C:
	.4byte 0x84000020
_08022870:
	.4byte gUnknown_08125928
_08022874:
	.4byte gOamBuffer
_08022878:
	.4byte 0x84000002
_0802287C:
	.4byte 0x000001FF
_08022880:
	.4byte 0xFFFFFE00
_08022884:
	.4byte 0x000003FF
_08022888:
	.4byte 0xFFFFFC00
_0802288C:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08022340

	THUMB_FUNC_START sub_08022890
sub_08022890: @ 0x08022890
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	mov r0, #16
	str r0, [r3]
	ldr r2, _0802296C  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0]
	mov r1, r9
	str r0, [r1]
	ldr r5, [r2]
	ldrb r0, [r5, #1]
	ldr r3, _08022970  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	mov r10, r2
	cmp r0, #1
	bne _080229A4
	ldr r4, _08022974  @ =REG_DMA3SAD
	ldr r2, _08022978  @ =gUnknown_0811C010
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0802297C  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022980  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022984  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022988  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0802298C  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022990  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08022994  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022998  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0802299C  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080229A0  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	b _08022CDE
_0802296C:
	.4byte 0x030000E8
_08022970:
	.4byte 0x030000F8
_08022974:
	.4byte REG_DMA3SAD
_08022978:
	.4byte gUnknown_0811C010
_0802297C:
	.4byte gUnknown_0811C1C8
_08022980:
	.4byte OBJ_VRAM0
_08022984:
	.4byte 0x84000200
_08022988:
	.4byte gUnknown_0811C1C0
_0802298C:
	.4byte gOamBuffer
_08022990:
	.4byte 0x84000002
_08022994:
	.4byte 0x000001FF
_08022998:
	.4byte 0xFFFFFE00
_0802299C:
	.4byte 0x000003FF
_080229A0:
	.4byte 0xFFFFFC00
_080229A4:
	cmp r0, #2
	bne _08022A7C
	ldr r4, _08022A4C  @ =REG_DMA3SAD
	ldr r2, _08022A50  @ =gUnknown_0811C010
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022A54  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022A58  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022A5C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022A60  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022A64  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022A68  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022A6C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022A70  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022A74  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022A78  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	b _08022CDE
_08022A4C:
	.4byte REG_DMA3SAD
_08022A50:
	.4byte gUnknown_0811C010
_08022A54:
	.4byte gUnknown_0811C1C8
_08022A58:
	.4byte OBJ_VRAM0
_08022A5C:
	.4byte 0x84000200
_08022A60:
	.4byte gUnknown_0811C1C0
_08022A64:
	.4byte gOamBuffer
_08022A68:
	.4byte 0x84000002
_08022A6C:
	.4byte 0x000001FF
_08022A70:
	.4byte 0xFFFFFE00
_08022A74:
	.4byte 0x000003FF
_08022A78:
	.4byte 0xFFFFFC00
_08022A7C:
	cmp r0, #3
	bne _08022B60
	ldr r4, _08022B30  @ =REG_DMA3SAD
	ldr r2, _08022B34  @ =gUnknown_0811F5F4
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _08022B38  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022B3C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022B40  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022B44  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022B48  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022B4C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022B50  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022B54  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022B58  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022B5C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	b _08022CFA
	.byte 0x00
	.byte 0x00
_08022B30:
	.4byte REG_DMA3SAD
_08022B34:
	.4byte gUnknown_0811F5F4
_08022B38:
	.4byte gUnknown_0811F7AC
_08022B3C:
	.4byte OBJ_VRAM0
_08022B40:
	.4byte 0x84000400
_08022B44:
	.4byte gUnknown_0811F7A4
_08022B48:
	.4byte gOamBuffer
_08022B4C:
	.4byte 0x84000002
_08022B50:
	.4byte 0x000001FF
_08022B54:
	.4byte 0xFFFFFE00
_08022B58:
	.4byte 0x000003FF
_08022B5C:
	.4byte 0xFFFFFC00
_08022B60:
	cmp r0, #4
	bne _08022C38
	ldr r4, _08022C08  @ =REG_DMA3SAD
	ldr r2, _08022C0C  @ =gUnknown_0811C010
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022C10  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022C14  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022C18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022C1C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022C20  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022C24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022C28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022C2C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022C30  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022C34  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	b _08022CDE
_08022C08:
	.4byte REG_DMA3SAD
_08022C0C:
	.4byte gUnknown_0811C010
_08022C10:
	.4byte gUnknown_0811C1C8
_08022C14:
	.4byte OBJ_VRAM0
_08022C18:
	.4byte 0x84000200
_08022C1C:
	.4byte gUnknown_0811C1C0
_08022C20:
	.4byte gOamBuffer
_08022C24:
	.4byte 0x84000002
_08022C28:
	.4byte 0x000001FF
_08022C2C:
	.4byte 0xFFFFFE00
_08022C30:
	.4byte 0x000003FF
_08022C34:
	.4byte 0xFFFFFC00
_08022C38:
	cmp r0, #5
	bne _08022D0A
	ldr r4, _08022DD0  @ =REG_DMA3SAD
	ldr r2, _08022DD4  @ =gUnknown_0811C010
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022DD8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022DDC  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022DE0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022DE4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022DE8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022DEC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022DF0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022DF4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022DF8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022DFC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
_08022CDE:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
_08022CFA:
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08022E00  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022D0A:
	mov r0, #88
	mov r1, r8
	str r0, [r1]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0]
	mov r3, r9
	str r0, [r3]
	ldr r3, [r2]
	ldrb r0, [r3, #2]
	ldr r2, _08022E04  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08022E08
	ldr r4, _08022DD0  @ =REG_DMA3SAD
	ldr r2, _08022DD4  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022DD8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022DDC  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022DE0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022DE4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022DE8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022DEC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08022DF0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022DF4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022DF8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022DFC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	b _08023142
_08022DD0:
	.4byte REG_DMA3SAD
_08022DD4:
	.4byte gUnknown_0811C010
_08022DD8:
	.4byte gUnknown_0811C1C8
_08022DDC:
	.4byte OBJ_VRAM0
_08022DE0:
	.4byte 0x84000200
_08022DE4:
	.4byte gUnknown_0811C1C0
_08022DE8:
	.4byte gOamBuffer
_08022DEC:
	.4byte 0x84000002
_08022DF0:
	.4byte 0x000001FF
_08022DF4:
	.4byte 0xFFFFFE00
_08022DF8:
	.4byte 0x000003FF
_08022DFC:
	.4byte 0xFFFFFC00
_08022E00:
	.4byte 0x80000200
_08022E04:
	.4byte 0x030000F8
_08022E08:
	cmp r0, #2
	bne _08022EE0
	ldr r4, _08022EB0  @ =REG_DMA3SAD
	ldr r2, _08022EB4  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022EB8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022EBC  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022EC0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022EC4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022EC8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022ECC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022ED0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022ED4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022ED8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022EDC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	b _08023142
_08022EB0:
	.4byte REG_DMA3SAD
_08022EB4:
	.4byte gUnknown_0811C010
_08022EB8:
	.4byte gUnknown_0811C1C8
_08022EBC:
	.4byte OBJ_VRAM0
_08022EC0:
	.4byte 0x84000200
_08022EC4:
	.4byte gUnknown_0811C1C0
_08022EC8:
	.4byte gOamBuffer
_08022ECC:
	.4byte 0x84000002
_08022ED0:
	.4byte 0x000001FF
_08022ED4:
	.4byte 0xFFFFFE00
_08022ED8:
	.4byte 0x000003FF
_08022EDC:
	.4byte 0xFFFFFC00
_08022EE0:
	cmp r0, #3
	bne _08022FC4
	ldr r4, _08022F94  @ =REG_DMA3SAD
	ldr r2, _08022F98  @ =gUnknown_0811F5F4
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _08022F9C  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022FA0  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022FA4  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022FA8  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022FAC  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022FB0  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022FB4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022FB8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022FBC  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022FC0  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	b _0802315E
	.byte 0x00
	.byte 0x00
_08022F94:
	.4byte REG_DMA3SAD
_08022F98:
	.4byte gUnknown_0811F5F4
_08022F9C:
	.4byte gUnknown_0811F7AC
_08022FA0:
	.4byte OBJ_VRAM0
_08022FA4:
	.4byte 0x84000400
_08022FA8:
	.4byte gUnknown_0811F7A4
_08022FAC:
	.4byte gOamBuffer
_08022FB0:
	.4byte 0x84000002
_08022FB4:
	.4byte 0x000001FF
_08022FB8:
	.4byte 0xFFFFFE00
_08022FBC:
	.4byte 0x000003FF
_08022FC0:
	.4byte 0xFFFFFC00
_08022FC4:
	cmp r0, #4
	bne _0802309C
	ldr r4, _0802306C  @ =REG_DMA3SAD
	ldr r2, _08023070  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023074  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023078  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802307C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023080  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023084  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023088  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0802308C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023090  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023094  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023098  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	b _08023142
_0802306C:
	.4byte REG_DMA3SAD
_08023070:
	.4byte gUnknown_0811C010
_08023074:
	.4byte gUnknown_0811C1C8
_08023078:
	.4byte OBJ_VRAM0
_0802307C:
	.4byte 0x84000200
_08023080:
	.4byte gUnknown_0811C1C0
_08023084:
	.4byte gOamBuffer
_08023088:
	.4byte 0x84000002
_0802308C:
	.4byte 0x000001FF
_08023090:
	.4byte 0xFFFFFE00
_08023094:
	.4byte 0x000003FF
_08023098:
	.4byte 0xFFFFFC00
_0802309C:
	cmp r0, #5
	bne _0802316E
	ldr r4, _0802323C  @ =REG_DMA3SAD
	ldr r2, _08023240  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023244  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023248  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802324C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023250  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023254  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023258  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0802325C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023260  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023264  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023268  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
_08023142:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
_0802315E:
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802326C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802316E:
	mov r0, #160
	mov r1, r8
	str r0, [r1]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0]
	mov r3, r9
	str r0, [r3]
	ldr r3, [r2]
	ldrb r0, [r3, #3]
	ldr r2, _08023270  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #1
	bne _08023274
	ldr r4, _0802323C  @ =REG_DMA3SAD
	ldr r2, _08023240  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023244  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023248  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802324C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023250  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023254  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023258  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0802325C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023260  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023264  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08023268  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	b _080235CE
_0802323C:
	.4byte REG_DMA3SAD
_08023240:
	.4byte gUnknown_0811C010
_08023244:
	.4byte gUnknown_0811C1C8
_08023248:
	.4byte OBJ_VRAM0
_0802324C:
	.4byte 0x84000200
_08023250:
	.4byte gUnknown_0811C1C0
_08023254:
	.4byte gOamBuffer
_08023258:
	.4byte 0x84000002
_0802325C:
	.4byte 0x000001FF
_08023260:
	.4byte 0xFFFFFE00
_08023264:
	.4byte 0x000003FF
_08023268:
	.4byte 0xFFFFFC00
_0802326C:
	.4byte 0x80000200
_08023270:
	.4byte 0x030000F8
_08023274:
	cmp r1, #2
	bne _08023354
	ldr r4, _08023324  @ =REG_DMA3SAD
	ldr r2, _08023328  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0802332C  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023330  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023334  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023338  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0802333C  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023340  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023344  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023348  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0802334C  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08023350  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	b _080235CE
_08023324:
	.4byte REG_DMA3SAD
_08023328:
	.4byte gUnknown_0811C010
_0802332C:
	.4byte gUnknown_0811C1C8
_08023330:
	.4byte OBJ_VRAM0
_08023334:
	.4byte 0x84000200
_08023338:
	.4byte gUnknown_0811C1C0
_0802333C:
	.4byte gOamBuffer
_08023340:
	.4byte 0x84000002
_08023344:
	.4byte 0x000001FF
_08023348:
	.4byte 0xFFFFFE00
_0802334C:
	.4byte 0x000003FF
_08023350:
	.4byte 0xFFFFFC00
_08023354:
	cmp r1, #3
	bne _08023440
	ldr r4, _08023410  @ =REG_DMA3SAD
	ldr r2, _08023414  @ =gUnknown_0811F5F4
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _08023418  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0802341C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023420  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023424  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023428  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0802342C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023430  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023434  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023438  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0802343C  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	b _080235EA
	.byte 0x00
	.byte 0x00
_08023410:
	.4byte REG_DMA3SAD
_08023414:
	.4byte gUnknown_0811F5F4
_08023418:
	.4byte gUnknown_0811F7AC
_0802341C:
	.4byte OBJ_VRAM0
_08023420:
	.4byte 0x84000400
_08023424:
	.4byte gUnknown_0811F7A4
_08023428:
	.4byte gOamBuffer
_0802342C:
	.4byte 0x84000002
_08023430:
	.4byte 0x000001FF
_08023434:
	.4byte 0xFFFFFE00
_08023438:
	.4byte 0x000003FF
_0802343C:
	.4byte 0xFFFFFC00
_08023440:
	cmp r1, #4
	bne _08023520
	ldr r4, _080234F0  @ =REG_DMA3SAD
	ldr r2, _080234F4  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _080234F8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080234FC  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023500  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023504  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023508  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0802350C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023510  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023514  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023518  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0802351C  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	b _080235CE
_080234F0:
	.4byte REG_DMA3SAD
_080234F4:
	.4byte gUnknown_0811C010
_080234F8:
	.4byte gUnknown_0811C1C8
_080234FC:
	.4byte OBJ_VRAM0
_08023500:
	.4byte 0x84000200
_08023504:
	.4byte gUnknown_0811C1C0
_08023508:
	.4byte gOamBuffer
_0802350C:
	.4byte 0x84000002
_08023510:
	.4byte 0x000001FF
_08023514:
	.4byte 0xFFFFFE00
_08023518:
	.4byte 0x000003FF
_0802351C:
	.4byte 0xFFFFFC00
_08023520:
	cmp r1, #5
	bne _080235FA
	ldr r4, _08023608  @ =REG_DMA3SAD
	ldr r2, _0802360C  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023610  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023614  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023618  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802361C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023620  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023624  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023628  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802362C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023630  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08023634  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
_080235CE:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
_080235EA:
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023638  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080235FA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08023608:
	.4byte REG_DMA3SAD
_0802360C:
	.4byte gUnknown_0811C010
_08023610:
	.4byte gUnknown_0811C1C8
_08023614:
	.4byte OBJ_VRAM0
_08023618:
	.4byte 0x84000200
_0802361C:
	.4byte gUnknown_0811C1C0
_08023620:
	.4byte gOamBuffer
_08023624:
	.4byte 0x84000002
_08023628:
	.4byte 0x000001FF
_0802362C:
	.4byte 0xFFFFFE00
_08023630:
	.4byte 0x000003FF
_08023634:
	.4byte 0xFFFFFC00
_08023638:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08022890

	THUMB_FUNC_START sub_0802363C
sub_0802363C: @ 0x0802363C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r9, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r1, _08023A30  @ =0x030000E8
	mov r8, r1
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023A34  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0802375A
	mov r0, #88
	str r0, [r3]
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08023A38  @ =gUnknown_0811C010
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023A3C  @ =REG_DMA3SAD
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023A40  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023A44  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023A48  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023A4C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023A50  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023A54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023A58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023A5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023A60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023A64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023A68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802375A:
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023A34  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _08023862
	mov r0, #88
	mov r3, r9
	str r0, [r3]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023A38  @ =gUnknown_0811C010
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023A3C  @ =REG_DMA3SAD
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023A40  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023A44  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023A48  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023A4C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023A50  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023A54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023A58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023A5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023A60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023A64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023A68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023862:
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023A34  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802396A
	mov r0, #88
	mov r3, r9
	str r0, [r3]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023A38  @ =gUnknown_0811C010
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023A3C  @ =REG_DMA3SAD
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023A40  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023A44  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023A48  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023A4C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023A50  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023A54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023A58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023A5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023A60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023A64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023A68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802396A:
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023A34  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _08023980
	b _08023AB2
_08023980:
	mov r0, #88
	mov r3, r9
	str r0, [r3]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023A6C  @ =gUnknown_0811F5F4
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023A3C  @ =REG_DMA3SAD
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _08023A70  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023A44  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023A74  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023A78  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023A50  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023A54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023A58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023A5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023A60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023A64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	b _08023A7C
	.byte 0x00
	.byte 0x00
_08023A30:
	.4byte 0x030000E8
_08023A34:
	.4byte 0x030000F8
_08023A38:
	.4byte gUnknown_0811C010
_08023A3C:
	.4byte REG_DMA3SAD
_08023A40:
	.4byte gUnknown_0811C1C8
_08023A44:
	.4byte OBJ_VRAM0
_08023A48:
	.4byte 0x84000200
_08023A4C:
	.4byte gUnknown_0811C1C0
_08023A50:
	.4byte gOamBuffer
_08023A54:
	.4byte 0x84000002
_08023A58:
	.4byte 0x000001FF
_08023A5C:
	.4byte 0xFFFFFE00
_08023A60:
	.4byte 0x000003FF
_08023A64:
	.4byte 0xFFFFFC00
_08023A68:
	.4byte 0x80000200
_08023A6C:
	.4byte gUnknown_0811F5F4
_08023A70:
	.4byte gUnknown_0811F7AC
_08023A74:
	.4byte 0x84000400
_08023A78:
	.4byte gUnknown_0811F7A4
_08023A7C:
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023BD0  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023AB2:
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023BD4  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08023BC2
	mov r0, #88
	mov r3, r9
	str r0, [r3]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023BD8  @ =gUnknown_0811C010
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023BDC  @ =REG_DMA3SAD
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023BE0  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023BE4  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023BE8  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023BEC  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023BF0  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023BF4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023BF8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023BFC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023C00  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08023C04  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023BD0  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023BC2:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08023BD0:
	.4byte 0x80000200
_08023BD4:
	.4byte 0x030000F8
_08023BD8:
	.4byte gUnknown_0811C010
_08023BDC:
	.4byte REG_DMA3SAD
_08023BE0:
	.4byte gUnknown_0811C1C8
_08023BE4:
	.4byte OBJ_VRAM0
_08023BE8:
	.4byte 0x84000200
_08023BEC:
	.4byte gUnknown_0811C1C0
_08023BF0:
	.4byte gOamBuffer
_08023BF4:
	.4byte 0x84000002
_08023BF8:
	.4byte 0x000001FF
_08023BFC:
	.4byte 0xFFFFFE00
_08023C00:
	.4byte 0x000003FF
_08023C04:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0802363C

	THUMB_FUNC_START sub_08023C08
sub_08023C08: @ 0x08023C08
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r1, _08023FF8  @ =0x030000E8
	mov r9, r1
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08023CFE
	mov r0, #88
	str r0, [r3]
	mov r3, r9
	ldr r0, [r3]
	ldrb r0, [r0]
	mov r1, r10
	str r0, [r1]
	ldr r4, _08024000  @ =REG_DMA3SAD
	ldr r0, _08024004  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802400C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024010  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024024  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024028  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802402C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023CFE:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _08023DDC
	mov r0, #88
	mov r3, r8
	str r0, [r3]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r4, _08024000  @ =REG_DMA3SAD
	ldr r0, _08024004  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802400C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024010  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024024  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024028  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802402C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023DDC:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08023EBA
	mov r0, #88
	mov r3, r8
	str r0, [r3]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r4, _08024000  @ =REG_DMA3SAD
	ldr r0, _08024004  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802400C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024010  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024024  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024028  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802402C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023EBA:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08023F86
	mov r0, #88
	mov r3, r8
	str r0, [r3]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r4, _08024000  @ =REG_DMA3SAD
	ldr r0, _08024030  @ =gUnknown_0811F7AC
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024034  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024038  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024024  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024028  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802402C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023F86:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08023F9C
	b _080240B6
_08023F9C:
	mov r0, #88
	mov r3, r8
	str r0, [r3]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r4, _08024000  @ =REG_DMA3SAD
	ldr r0, _08024004  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802400C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024010  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	b _0802403C
	.byte 0x00
	.byte 0x00
_08023FF8:
	.4byte 0x030000E8
_08023FFC:
	.4byte 0x030000F8
_08024000:
	.4byte REG_DMA3SAD
_08024004:
	.4byte gUnknown_0811C1C8
_08024008:
	.4byte OBJ_VRAM0
_0802400C:
	.4byte 0x84000200
_08024010:
	.4byte gUnknown_0811C1C0
_08024014:
	.4byte gOamBuffer
_08024018:
	.4byte 0x84000002
_0802401C:
	.4byte 0x000001FF
_08024020:
	.4byte 0xFFFFFE00
_08024024:
	.4byte 0x000003FF
_08024028:
	.4byte 0xFFFFFC00
_0802402C:
	.4byte 0x80000200
_08024030:
	.4byte gUnknown_0811F7AC
_08024034:
	.4byte 0x84000400
_08024038:
	.4byte gUnknown_0811F7A4
_0802403C:
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080240C4  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _080240C8  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080240CC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080240B6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080240C4:
	.4byte 0x000003FF
_080240C8:
	.4byte 0xFFFFFC00
_080240CC:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08023C08

	THUMB_FUNC_START sub_080240D0
sub_080240D0: @ 0x080240D0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	ldr r2, _080243CC  @ =0x030000F8
	mov r10, r2
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080241D6
	ldrb r0, [r1, #2]
	str r0, [r3]
	ldr r0, _080243D0  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	mov r3, r9
	str r0, [r3]
	ldr r4, _080243D4  @ =REG_DMA3SAD
	ldr r0, _080243D8  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080243DC  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080243E0  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080243E4  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080243E8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080243EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080243F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080243F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080243F8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080243FC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024400  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080241D6:
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080242C4
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _080243D0  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	mov r1, r9
	str r0, [r1]
	ldr r4, _080243D4  @ =REG_DMA3SAD
	ldr r0, _080243D8  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080243DC  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080243E0  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080243E4  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080243E8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080243EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _080243F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080243F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080243F8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080243FC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024400  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080242C4:
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080243BA
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _080243D0  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	mov r1, r9
	str r0, [r1]
	ldr r4, _080243D4  @ =REG_DMA3SAD
	ldr r0, _080243D8  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080243DC  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080243E0  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080243E4  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080243E8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080243EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _080243F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080243F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080243F8  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _080243FC  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024400  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080243BA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080243C8:
	.4byte 0x030000E8
_080243CC:
	.4byte 0x030000F8
_080243D0:
	.4byte 0x030000F4
_080243D4:
	.4byte REG_DMA3SAD
_080243D8:
	.4byte gUnknown_082B30B4
_080243DC:
	.4byte OBJ_VRAM0
_080243E0:
	.4byte 0x84000100
_080243E4:
	.4byte gUnknown_082B30AC
_080243E8:
	.4byte gOamBuffer
_080243EC:
	.4byte 0x84000002
_080243F0:
	.4byte 0x000001FF
_080243F4:
	.4byte 0xFFFFFE00
_080243F8:
	.4byte 0x000003FF
_080243FC:
	.4byte 0xFFFFFC00
_08024400:
	.4byte 0x80000200
	THUMB_FUNC_END sub_080240D0

	THUMB_FUNC_START sub_08024404
sub_08024404: @ 0x08024404
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r9, r3
	ldr r0, _08024530  @ =0x030000F0
	ldr r1, [r0]
	ldrb r1, [r1, #2]
	cmp r1, #0
	beq _08024422
	b _08024570
_08024422:
	ldr r0, _08024534  @ =0x030000E8
	mov r10, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _08024538  @ =0x030000F8
	mov r8, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	str r0, [r3]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r4, _0802453C  @ =REG_DMA3SAD
	ldr r2, _08024540  @ =gUnknown_082AFFA8
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08024544  @ =gfxBonusPresentSquish4bpp
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024548  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802454C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024550  @ =gfxBonusPresentSquishOAM
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08024554  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024558  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0802455C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024560  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024564  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024568  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802456C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _0802466A
_08024530:
	.4byte 0x030000F0
_08024534:
	.4byte 0x030000E8
_08024538:
	.4byte 0x030000F8
_0802453C:
	.4byte REG_DMA3SAD
_08024540:
	.4byte gUnknown_082AFFA8
_08024544:
	.4byte gfxBonusPresentSquish4bpp
_08024548:
	.4byte OBJ_VRAM0
_0802454C:
	.4byte 0x84000200
_08024550:
	.4byte gfxBonusPresentSquishOAM
_08024554:
	.4byte gOamBuffer
_08024558:
	.4byte 0x84000002
_0802455C:
	.4byte 0x000001FF
_08024560:
	.4byte 0xFFFFFE00
_08024564:
	.4byte 0x000003FF
_08024568:
	.4byte 0xFFFFFC00
_0802456C:
	.4byte 0x80000200
_08024570:
	ldr r0, _080246E0  @ =0x030000E8
	mov r8, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _080246E4  @ =0x030000F8
	mov r10, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	mov r3, r8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r3, [sp, #32]
	str r0, [r3]
	ldr r4, _080246E8  @ =REG_DMA3SAD
	ldr r0, _080246EC  @ =gfxBonusPresent4bpp
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080246F0  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080246F4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080246F8  @ =gfxBonusPresentOAM
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _080246FC  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024700  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _08024704  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024708  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0802470C  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024710  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024714  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r8, r10
_0802466A:
	ldr r1, _08024718  @ =0x030000F0
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08024728
	ldr r2, _080246E0  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r1, r9
	str r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _080246E8  @ =REG_DMA3SAD
	ldr r2, _0802471C  @ =gUnknown_082AFFA8
	ldr r3, _080246E0  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08024720  @ =gfxBonusPresentSquish4bpp
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080246F0  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080246F4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024724  @ =gfxBonusPresentSquishOAM
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024700  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	b _0802477C
_080246E0:
	.4byte 0x030000E8
_080246E4:
	.4byte 0x030000F8
_080246E8:
	.4byte REG_DMA3SAD
_080246EC:
	.4byte gfxBonusPresent4bpp
_080246F0:
	.4byte OBJ_VRAM0
_080246F4:
	.4byte 0x84000200
_080246F8:
	.4byte gfxBonusPresentOAM
_080246FC:
	.4byte gOamBuffer
_08024700:
	.4byte 0x84000002
_08024704:
	.4byte 0x000001FF
_08024708:
	.4byte 0xFFFFFE00
_0802470C:
	.4byte 0x000003FF
_08024710:
	.4byte 0xFFFFFC00
_08024714:
	.4byte 0x80000200
_08024718:
	.4byte 0x030000F0
_0802471C:
	.4byte gUnknown_082AFFA8
_08024720:
	.4byte gfxBonusPresentSquish4bpp
_08024724:
	.4byte gfxBonusPresentSquishOAM
_08024728:
	ldr r1, _08024890  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r1, _08024890  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08024894  @ =REG_DMA3SAD
	ldr r0, _08024898  @ =gfxBonusPresent4bpp
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0802489C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080248A0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080248A4  @ =gfxBonusPresentOAM
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080248A8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
_0802477C:
	ldr r3, _080248AC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080248B0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r10, r3
	mov r0, r10
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080248B4  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _080248B8  @ =0xFFFFFC00
	mov r3, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08024890  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080248BC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _080248C0  @ =0x030000F0
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _080248D0
	ldr r2, _08024890  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r1, r9
	str r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08024894  @ =REG_DMA3SAD
	ldr r2, _080248C4  @ =gUnknown_082AFFA8
	ldr r3, _08024890  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _080248C8  @ =gfxBonusPresentSquish4bpp
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0802489C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080248A0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080248CC  @ =gfxBonusPresentSquishOAM
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080248A8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	b _08024924
_08024890:
	.4byte 0x030000E8
_08024894:
	.4byte REG_DMA3SAD
_08024898:
	.4byte gfxBonusPresent4bpp
_0802489C:
	.4byte OBJ_VRAM0
_080248A0:
	.4byte 0x84000200
_080248A4:
	.4byte gfxBonusPresentOAM
_080248A8:
	.4byte 0x84000002
_080248AC:
	.4byte 0x000001FF
_080248B0:
	.4byte 0xFFFFFE00
_080248B4:
	.4byte 0x000003FF
_080248B8:
	.4byte 0xFFFFFC00
_080248BC:
	.4byte 0x80000200
_080248C0:
	.4byte 0x030000F0
_080248C4:
	.4byte gUnknown_082AFFA8
_080248C8:
	.4byte gfxBonusPresentSquish4bpp
_080248CC:
	.4byte gfxBonusPresentSquishOAM
_080248D0:
	ldr r1, _080249D4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r1, _080249D4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _080249D8  @ =REG_DMA3SAD
	ldr r0, _080249DC  @ =gfxBonusPresent4bpp
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080249E0  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080249E4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080249E8  @ =gfxBonusPresentOAM
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080249EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
_08024924:
	ldr r3, _080249F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080249F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080249F8  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _080249FC  @ =0xFFFFFC00
	mov r3, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080249D4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024A00  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080249D4:
	.4byte 0x030000E8
_080249D8:
	.4byte REG_DMA3SAD
_080249DC:
	.4byte gfxBonusPresent4bpp
_080249E0:
	.4byte OBJ_VRAM0
_080249E4:
	.4byte 0x84000200
_080249E8:
	.4byte gfxBonusPresentOAM
_080249EC:
	.4byte 0x84000002
_080249F0:
	.4byte 0x000001FF
_080249F4:
	.4byte 0xFFFFFE00
_080249F8:
	.4byte 0x000003FF
_080249FC:
	.4byte 0xFFFFFC00
_08024A00:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08024404

	THUMB_FUNC_START sub_08024A04
sub_08024A04: @ 0x08024A04
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r9, r3
	ldr r0, _08024B30  @ =0x030000F0
	ldr r1, [r0]
	ldrb r1, [r1, #2]
	cmp r1, #0
	beq _08024A22
	b _08024B70
_08024A22:
	ldr r0, _08024B34  @ =0x030000E8
	mov r10, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _08024B38  @ =0x030000F8
	mov r8, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	str r0, [r3]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r4, _08024B3C  @ =REG_DMA3SAD
	ldr r2, _08024B40  @ =gUnknown_082AFFA8
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08024B44  @ =gfxBonusPresentSquish4bpp
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024B48  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024B4C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024B50  @ =gfxBonusPresentSquishOAM
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08024B54  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024B58  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _08024B5C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024B60  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024B64  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024B68  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024B6C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _08024C6A
_08024B30:
	.4byte 0x030000F0
_08024B34:
	.4byte 0x030000E8
_08024B38:
	.4byte 0x030000F8
_08024B3C:
	.4byte REG_DMA3SAD
_08024B40:
	.4byte gUnknown_082AFFA8
_08024B44:
	.4byte gfxBonusPresentSquish4bpp
_08024B48:
	.4byte OBJ_VRAM0
_08024B4C:
	.4byte 0x84000200
_08024B50:
	.4byte gfxBonusPresentSquishOAM
_08024B54:
	.4byte gOamBuffer
_08024B58:
	.4byte 0x84000002
_08024B5C:
	.4byte 0x000001FF
_08024B60:
	.4byte 0xFFFFFE00
_08024B64:
	.4byte 0x000003FF
_08024B68:
	.4byte 0xFFFFFC00
_08024B6C:
	.4byte 0x80000200
_08024B70:
	ldr r0, _08024CE0  @ =0x030000E8
	mov r8, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _08024CE4  @ =0x030000F8
	mov r10, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	mov r3, r8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r3, [sp, #32]
	str r0, [r3]
	ldr r4, _08024CE8  @ =REG_DMA3SAD
	ldr r0, _08024CEC  @ =gfxBonusPresent4bpp
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024CF0  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024CF4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024CF8  @ =gfxBonusPresentOAM
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08024CFC  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024D00  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _08024D04  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024D08  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024D0C  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024D10  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024D14  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r8, r10
_08024C6A:
	ldr r1, _08024D18  @ =0x030000F0
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08024D28
	ldr r2, _08024CE0  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r1, r9
	str r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08024CE8  @ =REG_DMA3SAD
	ldr r2, _08024D1C  @ =gUnknown_082AFFA8
	ldr r3, _08024CE0  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08024D20  @ =gfxBonusPresentSquish4bpp
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024CF0  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024CF4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024D24  @ =gfxBonusPresentSquishOAM
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024D00  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	b _08024D7C
_08024CE0:
	.4byte 0x030000E8
_08024CE4:
	.4byte 0x030000F8
_08024CE8:
	.4byte REG_DMA3SAD
_08024CEC:
	.4byte gfxBonusPresent4bpp
_08024CF0:
	.4byte OBJ_VRAM0
_08024CF4:
	.4byte 0x84000200
_08024CF8:
	.4byte gfxBonusPresentOAM
_08024CFC:
	.4byte gOamBuffer
_08024D00:
	.4byte 0x84000002
_08024D04:
	.4byte 0x000001FF
_08024D08:
	.4byte 0xFFFFFE00
_08024D0C:
	.4byte 0x000003FF
_08024D10:
	.4byte 0xFFFFFC00
_08024D14:
	.4byte 0x80000200
_08024D18:
	.4byte 0x030000F0
_08024D1C:
	.4byte gUnknown_082AFFA8
_08024D20:
	.4byte gfxBonusPresentSquish4bpp
_08024D24:
	.4byte gfxBonusPresentSquishOAM
_08024D28:
	ldr r1, _08024E2C  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r1, _08024E2C  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08024E30  @ =REG_DMA3SAD
	ldr r0, _08024E34  @ =gfxBonusPresent4bpp
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024E38  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024E3C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024E40  @ =gfxBonusPresentOAM
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024E44  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
_08024D7C:
	ldr r3, _08024E48  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024E4C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08024E50  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _08024E54  @ =0xFFFFFC00
	mov r3, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08024E2C  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024E58  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08024E2C:
	.4byte 0x030000E8
_08024E30:
	.4byte REG_DMA3SAD
_08024E34:
	.4byte gfxBonusPresent4bpp
_08024E38:
	.4byte OBJ_VRAM0
_08024E3C:
	.4byte 0x84000200
_08024E40:
	.4byte gfxBonusPresentOAM
_08024E44:
	.4byte 0x84000002
_08024E48:
	.4byte 0x000001FF
_08024E4C:
	.4byte 0xFFFFFE00
_08024E50:
	.4byte 0x000003FF
_08024E54:
	.4byte 0xFFFFFC00
_08024E58:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08024A04

	THUMB_FUNC_START sub_08024E5C
sub_08024E5C: @ 0x08024E5C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, _08025168  @ =0x030000E8
	mov r10, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802516C  @ =0x030000F8
	mov r9, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08024F6A
	ldrb r0, [r1, #3]
	str r0, [r3]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r4, _08025170  @ =REG_DMA3SAD
	ldr r0, _08025174  @ =gfxBonusPresent4bpp
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025178  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802517C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025180  @ =gfxBonusPresentOAM
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08025184  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025188  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0802518C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025190  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08025194  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08025198  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802519C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08024F6A:
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r9
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08025060
	ldrb r0, [r1, #3]
	mov r3, r8
	str r0, [r3]
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08025170  @ =REG_DMA3SAD
	ldr r0, _08025174  @ =gfxBonusPresent4bpp
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025178  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802517C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025180  @ =gfxBonusPresentOAM
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08025184  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025188  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802518C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025190  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08025194  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08025198  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802519C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08025060:
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r9
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _0802515A
	ldrb r0, [r1, #3]
	mov r3, r8
	str r0, [r3]
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08025170  @ =REG_DMA3SAD
	ldr r0, _08025174  @ =gfxBonusPresent4bpp
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025178  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802517C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025180  @ =gfxBonusPresentOAM
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08025184  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025188  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802518C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025190  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08025194  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08025198  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802519C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802515A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08025168:
	.4byte 0x030000E8
_0802516C:
	.4byte 0x030000F8
_08025170:
	.4byte REG_DMA3SAD
_08025174:
	.4byte gfxBonusPresent4bpp
_08025178:
	.4byte OBJ_VRAM0
_0802517C:
	.4byte 0x84000200
_08025180:
	.4byte gfxBonusPresentOAM
_08025184:
	.4byte gOamBuffer
_08025188:
	.4byte 0x84000002
_0802518C:
	.4byte 0x000001FF
_08025190:
	.4byte 0xFFFFFE00
_08025194:
	.4byte 0x000003FF
_08025198:
	.4byte 0xFFFFFC00
_0802519C:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08024E5C

	THUMB_FUNC_START sub_080251A0
sub_080251A0: @ 0x080251A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r0, _08025590  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #8]
	cmp r1, #0
	bne _080251C2
	b _080254DC
_080251C2:
	ldrb r0, [r2, #1]
	ldr r1, _08025594  @ =0x030000F8
	mov r9, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080252C8
	ldrb r0, [r1, #1]
	add r0, r0, #15
	str r0, [r3]
	ldr r0, _08025598  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _0802559C  @ =REG_DMA3SAD
	ldr r2, _080255A0  @ =gUnknown_082B34B4
	ldr r3, _08025590  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080255A4  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080255A8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080255AC  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080255B0  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080255B4  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080255B8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080255BC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080255C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080255C4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080255C8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080255CC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080252C8:
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r9
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080253D2
	ldrb r0, [r1, #1]
	add r0, r0, #15
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025598  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	sub r0, r0, #16
	mov r1, r10
	str r0, [r1]
	ldr r4, _0802559C  @ =REG_DMA3SAD
	ldr r2, _080255A0  @ =gUnknown_082B34B4
	ldr r3, _08025590  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080255A4  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080255A8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080255AC  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080255B0  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080255B4  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080255B8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080255BC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080255C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080255C4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080255C8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080255CC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080253D2:
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r9
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080254DC
	ldrb r0, [r1, #1]
	add r0, r0, #15
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025598  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	sub r0, r0, #16
	mov r1, r10
	str r0, [r1]
	ldr r4, _0802559C  @ =REG_DMA3SAD
	ldr r2, _080255A0  @ =gUnknown_082B34B4
	ldr r3, _08025590  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080255A4  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080255A8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080255AC  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080255B0  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080255B4  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080255B8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080255BC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080255C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080255C4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080255C8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080255CC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080254DC:
	ldr r0, _08025590  @ =0x030000E8
	mov r9, r0
	ldr r1, [r0]
	ldrb r0, [r1, #7]
	cmp r0, #0
	bne _080254EA
	b _08025858
_080254EA:
	ldrb r0, [r1, #1]
	ldr r2, _08025594  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _080254FC
	b _08025640
_080254FC:
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025598  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	sub r0, r0, #10
	mov r1, r10
	str r0, [r1]
	ldr r4, _0802559C  @ =REG_DMA3SAD
	ldr r2, _080255D0  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080255D4  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080255A8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080255AC  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080255D8  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080255B4  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080255B8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080255BC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080255C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080255C4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080255C8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	b _080255DC
	.byte 0x00
	.byte 0x00
_08025590:
	.4byte 0x030000E8
_08025594:
	.4byte 0x030000F8
_08025598:
	.4byte 0x030000F4
_0802559C:
	.4byte REG_DMA3SAD
_080255A0:
	.4byte gUnknown_082B34B4
_080255A4:
	.4byte gUnknown_082B354C
_080255A8:
	.4byte OBJ_VRAM0
_080255AC:
	.4byte 0x84000100
_080255B0:
	.4byte gUnknown_082B3544
_080255B4:
	.4byte gOamBuffer
_080255B8:
	.4byte 0x84000002
_080255BC:
	.4byte 0x000001FF
_080255C0:
	.4byte 0xFFFFFE00
_080255C4:
	.4byte 0x000003FF
_080255C8:
	.4byte 0xFFFFFC00
_080255CC:
	.4byte 0x80000200
_080255D0:
	.4byte gUnknown_082B55E4
_080255D4:
	.4byte gUnknown_082B567C
_080255D8:
	.4byte gUnknown_082B5674
_080255DC:
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	ldr r3, _08025868  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802586C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08025640:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08025868  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08025748
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025870  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	sub r0, r0, #10
	mov r1, r10
	str r0, [r1]
	ldr r4, _08025874  @ =REG_DMA3SAD
	ldr r2, _08025878  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0802587C  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025880  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08025884  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025888  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0802588C  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025890  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08025894  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025898  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0802589C  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080258A0  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r3, _08025868  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802586C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08025748:
	ldr r1, _080258A4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r2, _08025868  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08025858
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025870  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	sub r0, r0, #10
	mov r1, r10
	str r0, [r1]
	ldr r4, _08025874  @ =REG_DMA3SAD
	ldr r2, _08025878  @ =gUnknown_082B55E4
	ldr r3, _080258A4  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0802587C  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025880  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08025884  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025888  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0802588C  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025890  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08025894  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025898  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0802589C  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _080258A0  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080258A4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r3, _08025868  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802586C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08025858:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08025868:
	.4byte 0x030000F8
_0802586C:
	.4byte 0x80000200
_08025870:
	.4byte 0x030000F4
_08025874:
	.4byte REG_DMA3SAD
_08025878:
	.4byte gUnknown_082B55E4
_0802587C:
	.4byte gUnknown_082B567C
_08025880:
	.4byte OBJ_VRAM0
_08025884:
	.4byte 0x84000100
_08025888:
	.4byte gUnknown_082B5674
_0802588C:
	.4byte gOamBuffer
_08025890:
	.4byte 0x84000002
_08025894:
	.4byte 0x000001FF
_08025898:
	.4byte 0xFFFFFE00
_0802589C:
	.4byte 0x000003FF
_080258A0:
	.4byte 0xFFFFFC00
_080258A4:
	.4byte 0x030000E8
	THUMB_FUNC_END sub_080251A0

	THUMB_FUNC_START sub_080258A8
sub_080258A8: @ 0x080258A8
	push {r4,lr}
	sub sp, sp, #12
	ldr r2, _08025900  @ =0x030000F4
	ldr r0, [r2]
	ldrb r1, [r0, #24]
	add r1, r1, #1
	mov r4, #0
	strb r1, [r0, #24]
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #43
	bne _080258F8
	mov r0, #4
	strb r0, [r1, #23]
	ldr r3, _08025904  @ =0x03000C10
	ldr r1, _08025908  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802590C  @ =0x03000C08
	ldr r1, _08025910  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #247
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080258F8:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_08025900:
	.4byte 0x030000F4
_08025904:
	.4byte 0x03000C10
_08025908:
	.4byte gUnknown_080798E8
_0802590C:
	.4byte 0x03000C08
_08025910:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_080258A8

	THUMB_FUNC_START sub_08025914
sub_08025914: @ 0x08025914
	push {r4,lr}
	ldr r0, _08025934  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	add r4, r0, #0
	cmp r1, #2
	bhi _0802593C
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _08025938
	add r0, r1, #1
	strb r0, [r2, #4]
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #6]
	b _0802593C
_08025934:
	.4byte 0x030000E8
_08025938:
	sub r0, r0, #1
	strb r0, [r2, #6]
_0802593C:
	ldr r0, _08025970  @ =0x030000F4
	ldr r1, [r0]
	ldrh r1, [r1, #40]
	add r2, r0, #0
	cmp r1, #8
	bne _0802594E
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #7]
_0802594E:
	ldr r0, [r2]
	ldrh r0, [r0, #40]
	cmp r0, #8
	bls _08025978
	ldr r1, [r4]
	ldrb r3, [r1, #5]
	cmp r3, #2
	bhi _08025978
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08025974
	add r0, r3, #1
	strb r0, [r1, #5]
	ldr r1, [r4]
	mov r0, #1
	b _08025976
	.byte 0x00
	.byte 0x00
_08025970:
	.4byte 0x030000F4
_08025974:
	sub r0, r0, #1
_08025976:
	strb r0, [r1, #6]
_08025978:
	ldr r0, [r2]
	ldrh r0, [r0, #40]
	cmp r0, #16
	bne _080259AE
	ldr r1, [r4]
	mov r4, #0
	mov r0, #1
	strb r0, [r1, #6]
	ldr r1, [r2]
	mov r0, #6
	strb r0, [r1, #23]
	ldr r3, _080259B4  @ =0x03000C10
	ldr r1, _080259B8  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080259BC  @ =0x03000C08
	ldr r1, _080259C0  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_080259AE:
	pop {r4}
	pop {r0}
	bx r0
_080259B4:
	.4byte 0x03000C10
_080259B8:
	.4byte gUnknown_080798E8
_080259BC:
	.4byte 0x03000C08
_080259C0:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08025914

	THUMB_FUNC_START sub_080259C4
sub_080259C4: @ 0x080259C4
	push {r4,r5,lr}
	sub sp, sp, #8
	ldr r0, _08025A40  @ =0x030000EC
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	str r0, [sp]
	mov r0, #13
	str r0, [sp, #4]
	ldr r5, _08025A44  @ =0x030000E4
	ldr r0, [r5]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r4, _08025A48  @ =gBonusSwapBoxesData
	ldr r2, [r4, #68]
	mov r0, sp
	mov r3, #5
	bl sub_080064D4
	mov r0, #8
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #146
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	mov r0, sp
	mov r3, #5
	bl sub_080064D4
	ldr r2, _08025A4C  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #119
	bls _08025A38
	mov r4, #0
	mov r0, #7
	strb r0, [r1, #23]
	ldr r3, _08025A50  @ =0x03000C10
	ldr r1, _08025A54  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08025A58  @ =0x03000C08
	ldr r1, _08025A5C  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08025A38:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_08025A40:
	.4byte 0x030000EC
_08025A44:
	.4byte 0x030000E4
_08025A48:
	.4byte gBonusSwapBoxesData
_08025A4C:
	.4byte 0x030000F4
_08025A50:
	.4byte 0x03000C10
_08025A54:
	.4byte gUnknown_080798E8
_08025A58:
	.4byte 0x03000C08
_08025A5C:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_080259C4

	THUMB_FUNC_START sub_08025A60
sub_08025A60: @ 0x08025A60
	push {r4,r5,lr}
	sub sp, sp, #16
	mov r4, #8
	str r4, [sp, #8]
	mov r0, #4
	str r0, [sp, #12]
	ldr r0, _08025AD4  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #146
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08025AD8  @ =gBonusSwapBoxesData
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r5, #0
	str r5, [sp, #4]
	add r0, sp, #8
	bl sub_080065F4
	ldr r0, _08025ADC  @ =0x030000F0
	ldr r1, [r0]
	mov r0, #1
	strb r0, [r1, #1]
	ldr r2, _08025AE0  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #0
	beq _08025ACC
	strb r4, [r1, #23]
	ldr r3, _08025AE4  @ =0x03000C10
	ldr r1, _08025AE8  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08025AEC  @ =0x03000C08
	ldr r1, _08025AF0  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r5, [r2, #40]
	mov r0, #42
	mov r1, #128
	mov r2, #1
	bl play_bgm
_08025ACC:
	add sp, sp, #16
	pop {r4,r5}
	pop {r0}
	bx r0
_08025AD4:
	.4byte 0x030000E4
_08025AD8:
	.4byte gBonusSwapBoxesData
_08025ADC:
	.4byte 0x030000F0
_08025AE0:
	.4byte 0x030000F4
_08025AE4:
	.4byte 0x03000C10
_08025AE8:
	.4byte gUnknown_080798E8
_08025AEC:
	.4byte 0x03000C08
_08025AF0:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08025A60

	THUMB_FUNC_START sub_08025AF4
sub_08025AF4: @ 0x08025AF4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	ldr r0, _08025BB0  @ =0x030000EC
	ldr r2, [r0]
	ldrb r4, [r2]
	mov r8, r0
	cmp r4, #0
	beq _08025B0E
	b _08025C5C
_08025B0E:
	ldr r0, _08025BB4  @ =0x030000F4
	ldr r0, [r0]
	ldrh r1, [r0, #40]
	ldrh r0, [r0]
	sub r0, r0, #6
	cmp r1, r0
	blt _08025B1E
	b _08025C5C
_08025B1E:
	ldrb r0, [r2, #3]
	str r0, [sp, #12]
	mov r0, #13
	mov r9, r0
	str r0, [sp, #16]
	ldr r6, _08025BB8  @ =0x030000E4
	ldr r0, [r6]
	mov r1, #160
	lsl r1, r1, #1
	mov r10, r1
	add r0, r0, r10
	ldr r1, [r0]
	ldr r7, _08025BBC  @ =gBonusSwapBoxesData
	ldr r2, [r7, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	ldr r0, _08025BC0  @ =gNewKeys
	ldrh r1, [r0]
	mov r5, #1
	and r5, r5, r1
	cmp r5, #0
	beq _08025BC4
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #159
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r2, r8
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #2]
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, r9
	str r0, [sp, #16]
	ldr r0, [r6]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r7, #68]
	mov r0, #5
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r7, #68]
	b _08025E2A
_08025BB0:
	.4byte 0x030000EC
_08025BB4:
	.4byte 0x030000F4
_08025BB8:
	.4byte 0x030000E4
_08025BBC:
	.4byte gBonusSwapBoxesData
_08025BC0:
	.4byte gNewKeys
_08025BC4:
	mov r0, #32
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08025C10
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08025BDC
	b _08025EA4
_08025BDC:
	str r0, [sp, #12]
	mov r1, r9
	str r1, [sp, #16]
	ldr r0, [r6]
	add r0, r0, r10
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r7, #68]
	mov r4, #5
	str r4, [sp]
	str r5, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r2, r8
	ldr r0, [r2]
	strb r4, [r0, #3]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	ldr r0, [r6]
	add r0, r0, r10
	ldr r1, [r0]
	ldr r2, [r7, #68]
	b _08025E2A
_08025C10:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08025C1A
	b _08025EA4
_08025C1A:
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	cmp r0, #14
	bne _08025C26
	b _08025EA4
_08025C26:
	str r0, [sp, #12]
	mov r1, r9
	str r1, [sp, #16]
	ldr r0, [r6]
	add r0, r0, r10
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r7, #68]
	mov r0, #5
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r2, r8
	ldr r1, [r2]
	mov r0, #14
	strb r0, [r1, #3]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	ldr r0, [r6]
	add r0, r0, r10
	ldr r1, [r0]
	ldr r2, [r7, #68]
	b _08025E2A
_08025C5C:
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08025C68
	b _08025EA4
_08025C68:
	ldrb r0, [r1, #2]
	sub r0, r0, #1
	mov r7, #0
	strb r0, [r1, #2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r6, [r0, #3]
	cmp r6, #5
	bne _08025D1C
	ldr r3, _08025D0C  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r2, _08025D10  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #88
	beq _08025C92
	add r0, r0, #24
	strb r0, [r1, #3]
_08025C92:
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #16
	bne _08025D48
	mov r2, r8
	ldr r0, [r2]
	strb r7, [r0]
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #2]
	ldr r0, [r2]
	strb r7, [r0, #1]
	ldr r0, [r3]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	strb r1, [r0, #1]
	ldr r0, [r3]
	strb r2, [r0, #2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _08025D14  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #14
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08025D18  @ =gBonusSwapBoxesData
	ldr r3, [r4, #68]
	str r6, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	b _08025DC0
	.byte 0x00
	.byte 0x00
_08025D0C:
	.4byte 0x030000E8
_08025D10:
	.4byte 0x030000F8
_08025D14:
	.4byte 0x030000E4
_08025D18:
	.4byte gBonusSwapBoxesData
_08025D1C:
	cmp r6, #14
	bne _08025DC0
	ldr r3, _08025D50  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r2, _08025D54  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #160
	beq _08025D38
	add r0, r0, #24
	strb r0, [r1, #3]
_08025D38:
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #88
	beq _08025D58
_08025D48:
	sub r0, r0, #24
	strb r0, [r1, #3]
	b _08025DC0
	.byte 0x00
	.byte 0x00
_08025D50:
	.4byte 0x030000E8
_08025D54:
	.4byte 0x030000F8
_08025D58:
	mov r2, r8
	ldr r0, [r2]
	strb r7, [r0]
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #2]
	ldr r0, [r2]
	strb r7, [r0, #1]
	ldr r0, [r3]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	strb r1, [r0, #2]
	ldr r0, [r3]
	strb r2, [r0, #3]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _08025E34  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #14
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08025E38  @ =gBonusSwapBoxesData
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
_08025DC0:
	ldr r0, _08025E3C  @ =0x030000EC
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	mov r8, r0
	cmp r1, #1
	bhi _08025E40
	ldrb r7, [r2, #2]
	cmp r7, #0
	bne _08025E40
	mov r0, #2
	strb r0, [r2, #2]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r6, _08025E34  @ =0x030000E4
	ldr r1, [r6]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	lsl r0, r0, #2
	mov r5, #132
	lsl r5, r5, #1
	add r1, r1, r5
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08025E38  @ =gBonusSwapBoxesData
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	add r0, r0, #1
	strb r0, [r1, #1]
	ldr r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	lsl r0, r0, #2
	add r1, r1, r5
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r4, #68]
_08025E2A:
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	b _08025EA4
_08025E34:
	.4byte 0x030000E4
_08025E38:
	.4byte gBonusSwapBoxesData
_08025E3C:
	.4byte 0x030000EC
_08025E40:
	mov r0, r8
	ldr r2, [r0]
	ldr r0, [r2]
	ldr r1, _08025EB4  @ =0x00FFFF00
	and r0, r0, r1
	mov r1, #128
	lsl r1, r1, #2
	cmp r0, r1
	bne _08025EA4
	mov r6, #0
	mov r0, #2
	strb r0, [r2, #2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _08025EB8  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #14
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08025EBC  @ =gBonusSwapBoxesData
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r6, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
_08025EA4:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08025EB4:
	.4byte 0x00FFFF00
_08025EB8:
	.4byte 0x030000E4
_08025EBC:
	.4byte gBonusSwapBoxesData
	THUMB_FUNC_END sub_08025AF4

	THUMB_FUNC_START sub_08025EC0
sub_08025EC0: @ 0x08025EC0
	push {r4,lr}
	ldr r1, _08025EE8  @ =0x030000F0
	ldr r3, [r1]
	ldrb r2, [r3, #1]
	add r4, r1, #0
	cmp r2, #0
	bne _08025F24
	ldr r0, _08025EEC  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #4
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025EE2
	cmp r0, #3
	bne _08025EF4
_08025EE2:
	ldr r1, _08025EF0  @ =gUnknown_03000C04
	mov r0, #72
	b _08025F18
_08025EE8:
	.4byte 0x030000F0
_08025EEC:
	.4byte 0x030000F4
_08025EF0:
	.4byte gUnknown_03000C04
_08025EF4:
	cmp r0, #1
	beq _08025EFC
	cmp r0, #4
	bne _08025F08
_08025EFC:
	ldr r0, _08025F04  @ =gUnknown_03000C04
	strh r2, [r0]
	b _08025F1A
	.byte 0x00
	.byte 0x00
_08025F04:
	.4byte gUnknown_03000C04
_08025F08:
	cmp r0, #2
	beq _08025F10
	cmp r0, #5
	bne _08025F1A
_08025F10:
	ldr r1, _08025F20  @ =gUnknown_03000C04
	mov r2, #70
	neg r2, r2
	add r0, r2, #0
_08025F18:
	strh r0, [r1]
_08025F1A:
	ldr r1, [r4]
	mov r0, #1
	b _08025F9A
_08025F20:
	.4byte gUnknown_03000C04
_08025F24:
	cmp r2, #1
	bne _08025F6E
	ldr r0, _08025F48  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #4
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bls _08025F50
	ldr r1, _08025F4C  @ =gUnknown_03000C0C
	ldrh r2, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #80
	bgt _08025F5C
	b _08025F68
	.byte 0x00
	.byte 0x00
_08025F48:
	.4byte 0x030000F4
_08025F4C:
	.4byte gUnknown_03000C0C
_08025F50:
	ldr r1, _08025F64  @ =gUnknown_03000C0C
	ldrh r2, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #42
	ble _08025F68
_08025F5C:
	sub r0, r2, #2
	strh r0, [r1]
	b _08025F9C
	.byte 0x00
	.byte 0x00
_08025F64:
	.4byte gUnknown_03000C0C
_08025F68:
	mov r0, #2
	strb r0, [r3, #1]
	b _08025F9C
_08025F6E:
	cmp r2, #2
	bne _08025F9C
	ldr r2, _08025F84  @ =gUnknown_03000C0C
	ldrh r3, [r2]
	mov r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #127
	bgt _08025F88
	add r0, r3, #2
	strh r0, [r2]
	b _08025F9C
_08025F84:
	.4byte gUnknown_03000C0C
_08025F88:
	ldr r0, _08025FA4  @ =0x030000F4
	ldr r2, [r0]
	ldrb r0, [r2, #22]
	cmp r0, #8
	bhi _08025F96
	add r0, r0, #1
	strb r0, [r2, #22]
_08025F96:
	ldr r1, [r1]
	mov r0, #0
_08025F9A:
	strb r0, [r1, #1]
_08025F9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08025FA4:
	.4byte 0x030000F4
	THUMB_FUNC_END sub_08025EC0

	THUMB_FUNC_START sub_08025FA8
sub_08025FA8: @ 0x08025FA8
	push {r4,r5,lr}
	sub sp, sp, #12
	bl sub_08025EC0
	bl sub_08025AF4
	ldr r0, _08025FD8  @ =0x030000F4
	ldr r1, [r0]
	ldrh r0, [r1, #40]
	ldrh r2, [r1]
	cmp r0, r2
	bcc _0802604C
	add r0, r1, #4
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025FD0
	cmp r0, #3
	bne _08025FE0
_08025FD0:
	ldr r2, _08025FDC  @ =0x030000F0
	ldr r1, [r2]
	mov r0, #0
	b _08026004
_08025FD8:
	.4byte 0x030000F4
_08025FDC:
	.4byte 0x030000F0
_08025FE0:
	cmp r0, #1
	beq _08025FE8
	cmp r0, #4
	bne _08025FF4
_08025FE8:
	ldr r2, _08025FF0  @ =0x030000F0
	ldr r1, [r2]
	mov r0, #1
	b _08026004
_08025FF0:
	.4byte 0x030000F0
_08025FF4:
	cmp r0, #2
	beq _08025FFE
	ldr r2, _08026054  @ =0x030000F0
	cmp r0, #5
	bne _08026006
_08025FFE:
	ldr r2, _08026054  @ =0x030000F0
	ldr r1, [r2]
	mov r0, #2
_08026004:
	strb r0, [r1, #2]
_08026006:
	ldr r0, [r2]
	mov r4, #0
	strb r4, [r0, #1]
	ldr r1, _08026058  @ =0x030000F4
	ldr r0, [r1]
	strb r4, [r0, #22]
	ldr r2, [r1]
	mov r0, #9
	strb r0, [r2, #23]
	ldr r5, _0802605C  @ =0x03000C10
	ldr r3, _08026060  @ =gUnknown_080798E8
	ldr r2, [r1]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r3
	ldr r0, [r0]
	str r0, [r5]
	ldr r3, _08026064  @ =0x03000C08
	ldr r1, _08026068  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802604C:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08026054:
	.4byte 0x030000F0
_08026058:
	.4byte 0x030000F4
_0802605C:
	.4byte 0x03000C10
_08026060:
	.4byte gUnknown_080798E8
_08026064:
	.4byte 0x03000C08
_08026068:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08025FA8

	THUMB_FUNC_START sub_0802606C
sub_0802606C: @ 0x0802606C
	push {r4-r6,lr}
	ldr r2, _08026080  @ =gUnknown_03000C0C
	ldrh r0, [r2]
	mov r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #42
	ble _08026084
	sub r0, r0, #2
	strh r0, [r2]
	b _08026158
_08026080:
	.4byte gUnknown_03000C0C
_08026084:
	cmp r1, #10
	ble _0802608C
	sub r0, r0, #2
	strh r0, [r2]
_0802608C:
	ldr r0, _080260AC  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #9]
	add r4, r0, #0
	cmp r1, #3
	bhi _080260B4
	ldrb r0, [r2, #11]
	cmp r0, #0
	bne _080260B0
	add r0, r1, #1
	strb r0, [r2, #9]
	ldr r1, [r4]
	mov r0, #5
	strb r0, [r1, #11]
	b _080260B4
	.byte 0x00
	.byte 0x00
_080260AC:
	.4byte 0x030000E8
_080260B0:
	sub r0, r0, #1
	strb r0, [r2, #11]
_080260B4:
	ldr r0, _08026104  @ =0x030000F4
	ldr r3, [r0]
	ldrh r1, [r3, #40]
	add r6, r0, #0
	cmp r1, #29
	bls _08026158
	mov r5, #0
	mov r0, #10
	strb r0, [r3, #23]
	ldr r3, _08026108  @ =0x03000C10
	ldr r1, _0802610C  @ =gUnknown_080798E8
	ldr r2, [r6]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026110  @ =0x03000C08
	ldr r1, _08026114  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, _08026118  @ =0x030000F0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08026120
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r1, _0802611C  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	strb r0, [r1, #1]
	b _08026152
_08026104:
	.4byte 0x030000F4
_08026108:
	.4byte 0x03000C10
_0802610C:
	.4byte gUnknown_080798E8
_08026110:
	.4byte 0x03000C08
_08026114:
	.4byte gUnknown_08079938
_08026118:
	.4byte 0x030000F0
_0802611C:
	.4byte 0x030000F8
_08026120:
	cmp r0, #2
	bne _08026140
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	ldr r1, _0802613C  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	strb r0, [r1, #3]
	b _08026152
	.byte 0x00
	.byte 0x00
_0802613C:
	.4byte 0x030000F8
_08026140:
	cmp r0, #1
	bne _08026152
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, _08026160  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
_08026152:
	ldr r1, [r6]
	mov r0, #0
	strh r0, [r1, #40]
_08026158:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08026160:
	.4byte 0x030000F8
	THUMB_FUNC_END sub_0802606C

	THUMB_FUNC_START sub_08026164
sub_08026164: @ 0x08026164
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #16
	ldr r1, _08026180  @ =gUnknown_03000C0C
	ldrh r2, [r1]
	mov r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #127
	bgt _08026184
	add r0, r2, #2
	strh r0, [r1]
	b _080262B4
_08026180:
	.4byte gUnknown_03000C0C
_08026184:
	ldr r0, _080261A8  @ =0x030000F0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _080261B4
	ldr r3, _080261AC  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r2, _080261B0  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #52
	beq _08026208
	sub r0, r0, #1
	b _08026206
	.byte 0x00
	.byte 0x00
_080261A8:
	.4byte 0x030000F0
_080261AC:
	.4byte 0x030000E8
_080261B0:
	.4byte 0x030000F8
_080261B4:
	cmp r0, #2
	bne _080261EC
	ldr r3, _080261E4  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r2, _080261E8  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #124
	beq _080261D0
	add r0, r0, #1
	strb r0, [r1, #3]
_080261D0:
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #52
	beq _0802621C
	add r0, r0, #1
	b _0802621A
_080261E4:
	.4byte 0x030000E8
_080261E8:
	.4byte 0x030000F8
_080261EC:
	cmp r0, #1
	bne _0802621C
	ldr r3, _080262C4  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r2, _080262C8  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #52
	beq _08026208
	add r0, r0, #1
_08026206:
	strb r0, [r1, #3]
_08026208:
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #124
	beq _0802621C
	sub r0, r0, #1
_0802621A:
	strb r0, [r1, #3]
_0802621C:
	ldr r7, _080262CC  @ =0x030000F4
	ldr r0, [r7]
	ldrh r0, [r0, #40]
	cmp r0, #99
	bls _080262B4
	ldr r4, _080262D0  @ =0x030000EC
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	str r0, [sp, #8]
	mov r0, #13
	str r0, [sp, #12]
	ldr r0, _080262D4  @ =0x030000E4
	mov r8, r0
	ldr r0, [r0]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r6, _080262D8  @ =gBonusSwapBoxesData
	ldr r3, [r6, #68]
	mov r0, #5
	mov r9, r0
	str r0, [sp]
	mov r5, #0
	str r5, [sp, #4]
	add r0, sp, #8
	bl sub_080065F4
	ldr r1, [r4]
	mov r0, #10
	strb r0, [r1, #3]
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	str r0, [sp, #8]
	mov r1, r8
	ldr r0, [r1]
	mov r3, #138
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r2, [r6, #68]
	add r0, sp, #8
	mov r3, #5
	bl sub_080064D4
	ldr r1, _080262C4  @ =0x030000E8
	ldr r0, [r1]
	strb r5, [r0, #9]
	ldr r0, [r1]
	mov r1, r9
	strb r1, [r0, #11]
	ldr r0, _080262DC  @ =0x030000F0
	ldr r1, [r0]
	mov r0, #3
	strb r0, [r1, #2]
	ldr r1, [r7]
	mov r0, #11
	strb r0, [r1, #23]
	ldr r3, _080262E0  @ =0x03000C10
	ldr r1, _080262E4  @ =gUnknown_080798E8
	ldr r2, [r7]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080262E8  @ =0x03000C08
	ldr r1, _080262EC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r5, [r2, #40]
_080262B4:
	add sp, sp, #16
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080262C4:
	.4byte 0x030000E8
_080262C8:
	.4byte 0x030000F8
_080262CC:
	.4byte 0x030000F4
_080262D0:
	.4byte 0x030000EC
_080262D4:
	.4byte 0x030000E4
_080262D8:
	.4byte gBonusSwapBoxesData
_080262DC:
	.4byte 0x030000F0
_080262E0:
	.4byte 0x03000C10
_080262E4:
	.4byte gUnknown_080798E8
_080262E8:
	.4byte 0x03000C08
_080262EC:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08026164

	THUMB_FUNC_START sub_080262F0
sub_080262F0: @ 0x080262F0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #20
	ldr r0, _080263A0  @ =0x030000EC
	ldr r2, [r0]
	ldrb r4, [r2]
	mov r8, r0
	cmp r4, #0
	bne _080263B4
	ldr r0, _080263A4  @ =0x030000F4
	ldr r0, [r0]
	ldrh r1, [r0, #40]
	ldrh r0, [r0, #2]
	sub r0, r0, #6
	cmp r1, r0
	bge _080263B4
	ldrb r0, [r2, #3]
	str r0, [sp, #12]
	mov r7, #13
	str r7, [sp, #16]
	ldr r5, _080263A8  @ =0x030000E4
	ldr r0, [r5]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r6, _080263AC  @ =gBonusSwapBoxesData
	ldr r2, [r6, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	ldr r0, _080263B0  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08026340
	b _08026550
_08026340:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #159
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r2, r8
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #2]
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	str r7, [sp, #16]
	ldr r0, [r5]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r6, #68]
	mov r0, #5
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #4
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r6, #68]
	b _080264D4
_080263A0:
	.4byte 0x030000EC
_080263A4:
	.4byte 0x030000F4
_080263A8:
	.4byte 0x030000E4
_080263AC:
	.4byte gBonusSwapBoxesData
_080263B0:
	.4byte gNewKeys
_080263B4:
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0
	bne _080263C0
	b _08026550
_080263C0:
	ldrb r0, [r1, #2]
	sub r0, r0, #1
	mov r6, #0
	strb r0, [r1, #2]
	ldr r3, _080263F8  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r2, _080263FC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #124
	beq _080263E0
	add r0, r0, #24
	strb r0, [r1, #3]
_080263E0:
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #52
	beq _08026400
	sub r0, r0, #24
	strb r0, [r1, #3]
	b _0802646A
	.byte 0x00
	.byte 0x00
_080263F8:
	.4byte 0x030000E8
_080263FC:
	.4byte 0x030000F8
_08026400:
	mov r1, r8
	ldr r0, [r1]
	strb r6, [r0]
	ldr r1, [r1]
	mov r0, #2
	strb r0, [r1, #2]
	mov r2, r8
	ldr r0, [r2]
	strb r6, [r0, #1]
	ldr r0, [r3]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #3]
	strb r1, [r0, #1]
	ldr r0, [r3]
	strb r2, [r0, #3]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _080264E0  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #3
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _080264E4  @ =gBonusSwapBoxesData
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r6, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
_0802646A:
	ldr r0, _080264E8  @ =0x030000EC
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	mov r8, r0
	cmp r1, #1
	bhi _080264EC
	ldrb r7, [r2, #2]
	cmp r7, #0
	bne _080264EC
	mov r0, #2
	strb r0, [r2, #2]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r6, _080264E0  @ =0x030000E4
	ldr r1, [r6]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #4
	lsl r0, r0, #2
	mov r5, #132
	lsl r5, r5, #1
	add r1, r1, r5
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _080264E4  @ =gBonusSwapBoxesData
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	add r0, r0, #1
	strb r0, [r1, #1]
	ldr r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #4
	lsl r0, r0, #2
	add r1, r1, r5
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r4, #68]
_080264D4:
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	b _08026550
	.byte 0x00
	.byte 0x00
_080264E0:
	.4byte 0x030000E4
_080264E4:
	.4byte gBonusSwapBoxesData
_080264E8:
	.4byte 0x030000EC
_080264EC:
	mov r0, r8
	ldr r2, [r0]
	ldr r0, [r2]
	ldr r1, _0802655C  @ =0x00FFFF00
	and r0, r0, r1
	mov r1, #128
	lsl r1, r1, #2
	cmp r0, r1
	bne _08026550
	mov r6, #0
	mov r0, #2
	strb r0, [r2, #2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _08026560  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #3
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08026564  @ =gBonusSwapBoxesData
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r6, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
_08026550:
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0802655C:
	.4byte 0x00FFFF00
_08026560:
	.4byte 0x030000E4
_08026564:
	.4byte gBonusSwapBoxesData
	THUMB_FUNC_END sub_080262F0

	THUMB_FUNC_START sub_08026568
sub_08026568: @ 0x08026568
	push {r4,lr}
	ldr r1, _08026594  @ =0x030000F0
	ldr r3, [r1]
	ldrb r0, [r3, #1]
	add r2, r1, #0
	cmp r0, #0
	bne _080265BC
	ldr r0, _08026598  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #13
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802658C
	cmp r0, #3
	bne _080265A0
_0802658C:
	ldr r1, _0802659C  @ =gUnknown_03000C04
	mov r0, #32
	b _080265B0
	.byte 0x00
	.byte 0x00
_08026594:
	.4byte 0x030000F0
_08026598:
	.4byte 0x030000F4
_0802659C:
	.4byte gUnknown_03000C04
_080265A0:
	cmp r0, #2
	beq _080265A8
	cmp r0, #5
	bne _080265B2
_080265A8:
	ldr r1, _080265B8  @ =gUnknown_03000C04
	mov r3, #32
	neg r3, r3
	add r0, r3, #0
_080265B0:
	strh r0, [r1]
_080265B2:
	ldr r1, [r2]
	mov r0, #1
	b _08026632
_080265B8:
	.4byte gUnknown_03000C04
_080265BC:
	cmp r0, #1
	bne _08026606
	ldr r0, _080265E0  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #13
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bls _080265E8
	ldr r1, _080265E4  @ =gUnknown_03000C0C
	ldrh r2, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #80
	bgt _080265F4
	b _08026600
_080265E0:
	.4byte 0x030000F4
_080265E4:
	.4byte gUnknown_03000C0C
_080265E8:
	ldr r1, _080265FC  @ =gUnknown_03000C0C
	ldrh r2, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #42
	ble _08026600
_080265F4:
	sub r0, r2, #6
	strh r0, [r1]
	b _08026634
	.byte 0x00
	.byte 0x00
_080265FC:
	.4byte gUnknown_03000C0C
_08026600:
	mov r0, #2
	strb r0, [r3, #1]
	b _08026634
_08026606:
	cmp r0, #2
	bne _08026634
	ldr r2, _0802661C  @ =gUnknown_03000C0C
	ldrh r3, [r2]
	mov r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #127
	bgt _08026620
	add r0, r3, #6
	strh r0, [r2]
	b _08026634
_0802661C:
	.4byte gUnknown_03000C0C
_08026620:
	ldr r0, _0802663C  @ =0x030000F4
	ldr r2, [r0]
	ldrb r0, [r2, #22]
	cmp r0, #8
	bhi _0802662E
	add r0, r0, #1
	strb r0, [r2, #22]
_0802662E:
	ldr r1, [r1]
	mov r0, #0
_08026632:
	strb r0, [r1, #1]
_08026634:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802663C:
	.4byte 0x030000F4
	THUMB_FUNC_END sub_08026568

	THUMB_FUNC_START sub_08026640
sub_08026640: @ 0x08026640
	push {r4,lr}
	sub sp, sp, #12
	bl sub_08026568
	bl sub_080262F0
	ldr r0, _08026674  @ =0x030000F4
	ldr r1, [r0]
	ldrh r0, [r1, #40]
	ldrh r2, [r1, #2]
	cmp r0, r2
	bcc _080266CA
	add r0, r1, #0
	add r0, r0, #13
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802666A
	cmp r0, #3
	bne _0802667C
_0802666A:
	ldr r0, _08026678  @ =0x030000F0
	ldr r1, [r0]
	mov r0, #0
	b _0802668A
	.byte 0x00
	.byte 0x00
_08026674:
	.4byte 0x030000F4
_08026678:
	.4byte 0x030000F0
_0802667C:
	cmp r0, #2
	beq _08026684
	cmp r0, #5
	bne _0802668C
_08026684:
	ldr r0, _080266D4  @ =0x030000F0
	ldr r1, [r0]
	mov r0, #1
_0802668A:
	strb r0, [r1, #2]
_0802668C:
	ldr r2, _080266D8  @ =0x030000F4
	ldr r1, [r2]
	mov r3, #0
	mov r0, #12
	strb r0, [r1, #23]
	ldr r4, _080266DC  @ =0x03000C10
	ldr r1, _080266E0  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r4, _080266E4  @ =0x03000C08
	ldr r1, _080266E8  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	strh r3, [r2, #40]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080266CA:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080266D4:
	.4byte 0x030000F0
_080266D8:
	.4byte 0x030000F4
_080266DC:
	.4byte 0x03000C10
_080266E0:
	.4byte gUnknown_080798E8
_080266E4:
	.4byte 0x03000C08
_080266E8:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08026640

	THUMB_FUNC_START sub_080266EC
sub_080266EC: @ 0x080266EC
	push {r4,r5,lr}
	ldr r2, _08026700  @ =gUnknown_03000C0C
	ldrh r0, [r2]
	mov r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #42
	ble _08026704
	sub r0, r0, #6
	strh r0, [r2]
	b _080267D8
_08026700:
	.4byte gUnknown_03000C0C
_08026704:
	cmp r1, #10
	ble _0802670C
	sub r0, r0, #6
	strh r0, [r2]
_0802670C:
	ldr r0, _0802672C  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #9]
	add r4, r0, #0
	cmp r1, #3
	bhi _08026734
	ldrb r0, [r2, #11]
	cmp r0, #0
	bne _08026730
	add r0, r1, #1
	strb r0, [r2, #9]
	ldr r1, [r4]
	mov r0, #5
	strb r0, [r1, #11]
	b _08026734
	.byte 0x00
	.byte 0x00
_0802672C:
	.4byte 0x030000E8
_08026730:
	sub r0, r0, #1
	strb r0, [r2, #11]
_08026734:
	ldr r0, _08026790  @ =0x030000F4
	ldr r3, [r0]
	ldrh r1, [r3, #40]
	add r5, r0, #0
	cmp r1, #29
	bls _080267D8
	mov r0, #13
	strb r0, [r3, #23]
	ldr r3, _08026794  @ =0x03000C10
	ldr r1, _08026798  @ =gUnknown_080798E8
	ldr r2, [r5]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802679C  @ =0x03000C08
	ldr r1, _080267A0  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, _080267A4  @ =0x030000F0
	ldr r0, [r0]
	ldrb r3, [r0, #2]
	cmp r3, #0
	bne _080267AC
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r2, _080267A8  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r3, [r0, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #3]
	strb r0, [r1, #2]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0, #5]
	b _080267D2
_08026790:
	.4byte 0x030000F4
_08026794:
	.4byte 0x03000C10
_08026798:
	.4byte gUnknown_080798E8
_0802679C:
	.4byte 0x03000C08
_080267A0:
	.4byte gUnknown_08079938
_080267A4:
	.4byte 0x030000F0
_080267A8:
	.4byte 0x030000F8
_080267AC:
	cmp r3, #1
	bne _080267D2
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	ldr r2, _080267E0  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r1, #2]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r3, [r0, #5]
_080267D2:
	ldr r1, [r5]
	mov r0, #0
	strh r0, [r1, #40]
_080267D8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080267E0:
	.4byte 0x030000F8
	THUMB_FUNC_END sub_080266EC

	THUMB_FUNC_START sub_080267E4
sub_080267E4: @ 0x080267E4
	push {r4-r6,lr}
	sub sp, sp, #12
	ldr r1, _080267FC  @ =gUnknown_03000C0C
	ldrh r2, [r1]
	mov r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #127
	bgt _08026800
	add r0, r2, #1
	strh r0, [r1]
	b _080268BA
	.byte 0x00
	.byte 0x00
_080267FC:
	.4byte gUnknown_03000C0C
_08026800:
	ldr r0, _08026824  @ =0x030000F0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08026830
	ldr r0, _08026828  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _0802682C  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #88
	beq _0802684C
	sub r0, r0, #1
	b _0802684A
	.byte 0x00
	.byte 0x00
_08026824:
	.4byte 0x030000F0
_08026828:
	.4byte 0x030000E8
_0802682C:
	.4byte 0x030000F8
_08026830:
	cmp r0, #1
	bne _0802684C
	ldr r0, _080268C4  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _080268C8  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #88
	beq _0802684C
	add r0, r0, #1
_0802684A:
	strb r0, [r1, #3]
_0802684C:
	ldr r6, _080268CC  @ =0x030000F4
	ldr r0, [r6]
	ldrh r0, [r0, #40]
	cmp r0, #99
	bls _080268BA
	ldr r4, _080268C4  @ =0x030000E8
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r3, _080268C8  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r5, #0
	mov r2, #88
	strb r2, [r0, #1]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r2, [r0, #2]
	ldr r1, [r6]
	mov r0, #14
	strb r0, [r1, #23]
	ldr r3, _080268D0  @ =0x03000C10
	ldr r1, _080268D4  @ =gUnknown_080798E8
	ldr r2, [r6]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080268D8  @ =0x03000C08
	ldr r1, _080268DC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r5, [r2, #40]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #247
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #69
	mov r1, #128
	mov r2, #0
	bl play_bgm
_080268BA:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080268C4:
	.4byte 0x030000E8
_080268C8:
	.4byte 0x030000F8
_080268CC:
	.4byte 0x030000F4
_080268D0:
	.4byte 0x03000C10
_080268D4:
	.4byte gUnknown_080798E8
_080268D8:
	.4byte 0x03000C08
_080268DC:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_080267E4

	THUMB_FUNC_START sub_080268E0
sub_080268E0: @ 0x080268E0
	push {r4,lr}
	ldr r0, _08026908  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	add r3, r0, #0
	cmp r1, #0
	beq _08026910
	ldrb r1, [r2, #5]
	cmp r1, #0
	beq _08026910
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0802690C
	sub r0, r1, #1
	strb r0, [r2, #5]
	ldr r1, [r3]
	mov r0, #1
	strb r0, [r1, #6]
	b _08026910
	.byte 0x00
	.byte 0x00
_08026908:
	.4byte 0x030000E8
_0802690C:
	sub r0, r0, #1
	strb r0, [r2, #6]
_08026910:
	ldr r0, _08026940  @ =0x030000F4
	ldr r1, [r0]
	ldrh r1, [r1, #40]
	add r2, r0, #0
	cmp r1, #8
	bne _08026922
	ldr r1, [r3]
	mov r0, #0
	strb r0, [r1, #7]
_08026922:
	ldr r0, [r2]
	ldrh r0, [r0, #40]
	cmp r0, #8
	bls _08026948
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08026944
	ldrb r0, [r1, #4]
	sub r0, r0, #1
	strb r0, [r1, #4]
	ldr r1, [r3]
	mov r0, #1
	b _08026946
	.byte 0x00
	.byte 0x00
_08026940:
	.4byte 0x030000F4
_08026944:
	sub r0, r0, #1
_08026946:
	strb r0, [r1, #6]
_08026948:
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #15
	bls _08026976
	mov r4, #0
	mov r0, #15
	strb r0, [r1, #23]
	ldr r3, _0802697C  @ =0x03000C10
	ldr r1, _08026980  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026984  @ =0x03000C08
	ldr r1, _08026988  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08026976:
	pop {r4}
	pop {r0}
	bx r0
_0802697C:
	.4byte 0x03000C10
_08026980:
	.4byte gUnknown_080798E8
_08026984:
	.4byte 0x03000C08
_08026988:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_080268E0

	THUMB_FUNC_START sub_0802698C
sub_0802698C: @ 0x0802698C
	push {r4,lr}
	ldr r2, _080269D0  @ =0x030000F4
	ldr r1, [r2]
	ldrb r0, [r1, #24]
	cmp r0, #0
	beq _0802699C
	sub r0, r0, #1
	strb r0, [r1, #24]
_0802699C:
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #59
	bls _080269CA
	mov r4, #0
	mov r0, #17
	strb r0, [r1, #23]
	ldr r3, _080269D4  @ =0x03000C10
	ldr r1, _080269D8  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080269DC  @ =0x03000C08
	ldr r1, _080269E0  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_080269CA:
	pop {r4}
	pop {r0}
	bx r0
_080269D0:
	.4byte 0x030000F4
_080269D4:
	.4byte 0x03000C10
_080269D8:
	.4byte gUnknown_080798E8
_080269DC:
	.4byte 0x03000C08
_080269E0:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_0802698C

	THUMB_FUNC_START sub_080269E4
sub_080269E4: @ 0x080269E4
	push {r4-r7,lr}
	ldr r0, _08026A50  @ =0x030000F4
	ldr r3, [r0]
	ldrh r1, [r3, #40]
	add r5, r0, #0
	cmp r1, #0
	beq _08026AD0
	mov r0, #18
	strb r0, [r3, #23]
	ldr r3, _08026A54  @ =0x03000C10
	ldr r1, _08026A58  @ =gUnknown_080798E8
	ldr r2, [r5]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026A5C  @ =0x03000C08
	ldr r1, _08026A60  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026A64  @ =0x030000E8
	ldr r4, [r3]
	ldrb r0, [r4, #2]
	ldr r2, _08026A68  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r6, r3, #0
	add r7, r2, #0
	cmp r0, #1
	bls _08026A3C
	add r0, r1, #0
	cmp r0, #4
	beq _08026A3C
	cmp r0, #5
	bne _08026A70
_08026A3C:
	ldr r3, [r6]
	ldr r2, _08026A6C  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r3, #11]
	b _08026A84
_08026A50:
	.4byte 0x030000F4
_08026A54:
	.4byte 0x03000C10
_08026A58:
	.4byte gUnknown_080798E8
_08026A5C:
	.4byte 0x03000C08
_08026A60:
	.4byte gUnknown_08079938
_08026A64:
	.4byte 0x030000E8
_08026A68:
	.4byte 0x030000F8
_08026A6C:
	.4byte gUnknown_0811C010
_08026A70:
	cmp r0, #3
	bne _08026A84
	ldr r2, _08026AA4  @ =gUnknown_0811F5F4
	ldrb r1, [r4, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r4, #11]
_08026A84:
	ldr r0, [r6]
	ldrb r0, [r0, #2]
	ldr r1, [r7]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08026A98
	cmp r0, #3
	bne _08026AA8
_08026A98:
	ldr r1, [r5]
	mov r0, #80
	strh r0, [r1, #36]
	strh r0, [r1, #38]
	b _08026ACA
	.byte 0x00
	.byte 0x00
_08026AA4:
	.4byte gUnknown_0811F5F4
_08026AA8:
	cmp r0, #2
	bne _08026AB2
	ldr r0, [r5]
	mov r1, #95
	b _08026AC4
_08026AB2:
	cmp r0, #4
	bne _08026ABC
	ldr r0, [r5]
	mov r1, #140
	b _08026AC4
_08026ABC:
	cmp r0, #5
	bne _08026ACA
	ldr r0, [r5]
	mov r1, #220
_08026AC4:
	strh r1, [r0, #36]
	mov r1, #50
	strh r1, [r0, #38]
_08026ACA:
	ldr r1, [r5]
	mov r0, #0
	strh r0, [r1, #40]
_08026AD0:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080269E4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08026AD8
sub_08026AD8: @ 0x08026AD8
	push {r4-r6,lr}
	sub sp, sp, #20
	ldr r3, _08026B1C  @ =0x030000E8
	ldr r4, [r3]
	ldrb r0, [r4, #2]
	ldr r2, _08026B20  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r3, #0
	add r6, r2, #0
	cmp r0, #1
	bls _08026B04
	add r0, r1, #0
	cmp r0, #4
	beq _08026B04
	cmp r0, #5
	bne _08026B2E
_08026B04:
	ldr r1, [r5]
	ldrb r2, [r1, #10]
	cmp r2, #10
	bhi _08026B60
	ldrb r0, [r1, #11]
	cmp r0, #0
	bne _08026B28
	add r0, r2, #1
	strb r0, [r1, #10]
	ldr r3, [r5]
	ldr r2, _08026B24  @ =gUnknown_0811C010
	b _08026B46
_08026B1C:
	.4byte 0x030000E8
_08026B20:
	.4byte 0x030000F8
_08026B24:
	.4byte gUnknown_0811C010
_08026B28:
	sub r0, r0, #1
	strb r0, [r1, #11]
	b _08026B60
_08026B2E:
	cmp r0, #3
	bne _08026B60
	ldrb r1, [r4, #10]
	cmp r1, #10
	bhi _08026B60
	ldrb r0, [r4, #11]
	cmp r0, #0
	bne _08026B5C
	add r0, r1, #1
	strb r0, [r4, #10]
	ldr r3, [r5]
	ldr r2, _08026B58  @ =gUnknown_0811F5F4
_08026B46:
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r3, #11]
	b _08026B60
	.byte 0x00
	.byte 0x00
_08026B58:
	.4byte gUnknown_0811F5F4
_08026B5C:
	sub r0, r0, #1
	strb r0, [r4, #11]
_08026B60:
	ldr r0, _08026BC4  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #10
	bne _08026C06
	ldr r0, [r5]
	ldrb r0, [r0, #2]
	ldr r1, [r6]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08026B8A
	add r0, r1, #0
	cmp r0, #4
	beq _08026B8A
	cmp r0, #5
	bne _08026BD0
_08026B8A:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026BC8  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #148
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026BCC  @ =gBonusSwapBoxesData
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08026C06
	.byte 0x00
	.byte 0x00
_08026BC4:
	.4byte 0x030000F4
_08026BC8:
	.4byte 0x030000E4
_08026BCC:
	.4byte gBonusSwapBoxesData
_08026BD0:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026C74  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #152
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _08026C78  @ =gBonusSwapBoxesData
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #80
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08026C06:
	ldr r0, _08026C7C  @ =0x030000F4
	ldr r1, [r0]
	ldrh r0, [r1, #40]
	ldrh r1, [r1, #38]
	cmp r0, r1
	bne _08026CB6
	ldr r0, _08026C80  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026C84  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08026C36
	add r0, r1, #0
	cmp r0, #4
	beq _08026C36
	cmp r0, #5
	bne _08026C8C
_08026C36:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026C74  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #148
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026C78  @ =gBonusSwapBoxesData
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026C88  @ =gLivesCount
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026CB6
	mov r0, #1
	bl sub_08014A58
	b _08026CB6
_08026C74:
	.4byte 0x030000E4
_08026C78:
	.4byte gBonusSwapBoxesData
_08026C7C:
	.4byte 0x030000F4
_08026C80:
	.4byte 0x030000E8
_08026C84:
	.4byte 0x030000F8
_08026C88:
	.4byte gLivesCount
_08026C8C:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #152
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gBonusSwapBoxesData
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
_08026CB6:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #55
	bne _08026D12
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08026CDC
	cmp r0, #4
	beq _08026CDC
	cmp r0, #5
	bne _08026D12
_08026CDC:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #150
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026FC4  @ =gBonusSwapBoxesData
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08026D12:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #82
	bne _08026D74
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08026D38
	cmp r0, #4
	beq _08026D38
	cmp r0, #5
	bne _08026D74
_08026D38:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #150
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gBonusSwapBoxesData
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026FD4  @ =gLivesCount
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026D74
	mov r0, #1
	bl sub_08014A58
_08026D74:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #100
	bne _08026DCE
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	sub r0, r0, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08026DCE
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #154
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026FC4  @ =gBonusSwapBoxesData
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08026DCE:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #127
	bne _08026E2E
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	sub r0, r0, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08026E2E
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #154
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gBonusSwapBoxesData
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026FD4  @ =gLivesCount
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026E2E
	mov r0, #1
	bl sub_08014A58
_08026E2E:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #145
	bne _08026E82
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08026E82
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #156
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026FC4  @ =gBonusSwapBoxesData
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08026E82:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #172
	bne _08026EDA
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #5
	bne _08026EDA
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #156
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gBonusSwapBoxesData
	ldr r3, [r0, #68]
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026FD4  @ =gLivesCount
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026EDA
	mov r0, #1
	bl sub_08014A58
_08026EDA:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #190
	bne _08026F2E
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08026F2E
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #158
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026FC4  @ =gBonusSwapBoxesData
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08026F2E:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #207
	bne _08026F86
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #5
	bne _08026F86
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #158
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gBonusSwapBoxesData
	ldr r3, [r0, #68]
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026FD4  @ =gLivesCount
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026F86
	mov r0, #1
	bl sub_08014A58
_08026F86:
	ldr r2, _08026FC8  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	ldrh r3, [r1, #36]
	cmp r0, r3
	bcc _08026FB8
	mov r4, #0
	mov r0, #19
	strb r0, [r1, #23]
	ldr r3, _08026FD8  @ =0x03000C10
	ldr r1, _08026FDC  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026FE0  @ =0x03000C08
	ldr r1, _08026FE4  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08026FB8:
	add sp, sp, #20
	pop {r4-r6}
	pop {r0}
	bx r0
_08026FC0:
	.4byte 0x030000E4
_08026FC4:
	.4byte gBonusSwapBoxesData
_08026FC8:
	.4byte 0x030000F4
_08026FCC:
	.4byte 0x030000E8
_08026FD0:
	.4byte 0x030000F8
_08026FD4:
	.4byte gLivesCount
_08026FD8:
	.4byte 0x03000C10
_08026FDC:
	.4byte gUnknown_080798E8
_08026FE0:
	.4byte 0x03000C08
_08026FE4:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08026AD8

	THUMB_FUNC_START sub_08026FE8
sub_08026FE8: @ 0x08026FE8
	push {r4,r5,lr}
	bl sub_0801488C
	ldr r0, _08027000  @ =gLevelType
	ldrb r1, [r0]
	sub r0, r1, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08027004
	mov r0, #9
	b _08027052
_08027000:
	.4byte gLevelType
_08027004:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0802705A
	ldr r4, _08027048  @ =gNextLevelInLevelTable
	ldr r0, [r4, #32]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08027050
	ldr r5, _0802704C  @ =gUnknown_080788C8
	mov r1, #18
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	bne _08027050
	mov r1, #18
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _08027052
	.byte 0x00
	.byte 0x00
_08027048:
	.4byte gNextLevelInLevelTable
_0802704C:
	.4byte gUnknown_080788C8
_08027050:
	mov r0, #8
_08027052:
	mov r1, #1
	bl change_main_state
	b _08027062
_0802705A:
	mov r0, #8
	mov r1, #1
	bl change_main_state
_08027062:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026FE8

	THUMB_FUNC_START bonus_swapboxes_init_callback
bonus_swapboxes_init_callback: @ 0x08027068
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	mov r0, #0
	bl arena_restore_head
	bl sound_stop_music
	mov r0, #68
	mov r1, #128
	mov r2, #0
	bl play_bgm
	ldr r7, _08027110  @ =0x030000E8
	mov r0, #16
	bl arena_allocate
	str r0, [r7]
	ldr r4, _08027114  @ =0x030000EC
	mov r0, #4
	bl arena_allocate
	str r0, [r4]
	ldr r4, _08027118  @ =0x030000F0
	mov r0, #4
	bl arena_allocate
	str r0, [r4]
	ldr r5, _0802711C  @ =0x030000F4
	mov r0, #44
	bl arena_allocate
	str r0, [r5]
	ldr r4, _08027120  @ =0x030000F8
	mov r0, #24
	bl arena_allocate
	str r0, [r4]
	ldr r0, [r5]
	mov r1, #0
	strh r1, [r0, #40]
	ldr r0, _08027124  @ =gCameraHorizontalOffset
	strh r1, [r0]
	ldr r0, _08027128  @ =gCameraVerticalOffset
	strh r1, [r0]
	ldr r0, _0802712C  @ =gVRAMCurrTileNum_03001930
	strh r1, [r0]
	ldr r0, _08027130  @ =gObjVRAMCopyOffset_0300192C
	strh r1, [r0]
	ldr r0, _08027134  @ =gUnknown_030009DC
	ldr r6, [r0]
	ldr r0, _08027138  @ =gGeneralTimer
	ldr r0, [r0]
	bl sub_0802F5C0
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #10
	bl __modsi3
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #10
	bl __modsi3
	add r2, r0, #0
	mov r0, #1
	and r4, r4, r0
	cmp r4, #0
	beq _08027142
	and r6, r6, r0
	cmp r6, #0
	beq _08027142
	cmp r2, #7
	beq _08027108
	cmp r5, #7
	bne _0802713C
_08027108:
	ldr r1, [r7]
	mov r0, #5
	b _08027148
	.byte 0x00
	.byte 0x00
_08027110:
	.4byte 0x030000E8
_08027114:
	.4byte 0x030000EC
_08027118:
	.4byte 0x030000F0
_0802711C:
	.4byte 0x030000F4
_08027120:
	.4byte 0x030000F8
_08027124:
	.4byte gCameraHorizontalOffset
_08027128:
	.4byte gCameraVerticalOffset
_0802712C:
	.4byte gVRAMCurrTileNum_03001930
_08027130:
	.4byte gObjVRAMCopyOffset_0300192C
_08027134:
	.4byte gUnknown_030009DC
_08027138:
	.4byte gGeneralTimer
_0802713C:
	ldr r1, [r7]
	mov r0, #4
	b _08027148
_08027142:
	ldr r0, _08027168  @ =0x030000E8
	ldr r1, [r0]
	mov r0, #2
_08027148:
	strb r0, [r1, #12]
	add r0, sp, #16
	mov r1, #0
	mov r3, #3
	strb r3, [r0]
	strb r3, [r0, #1]
	add r6, r0, #0
	cmp r5, #0
	bne _0802717C
	cmp r2, #1
	beq _080271C6
	cmp r2, #3
	bne _0802716C
	mov r0, #2
	b _080272AE
	.byte 0x00
	.byte 0x00
_08027168:
	.4byte 0x030000E8
_0802716C:
	cmp r2, #5
	bne _08027174
	mov r0, #1
	b _080271FA
_08027174:
	cmp r2, #7
	bne _080271F2
	strb r3, [r6]
	b _080272D6
_0802717C:
	cmp r5, #1
	bne _080271A0
	cmp r2, #1
	bne _0802718A
	strb r1, [r6]
	strb r2, [r6, #1]
	b _08027322
_0802718A:
	cmp r2, #3
	bne _08027192
	mov r0, #2
	b _080272F4
_08027192:
	cmp r2, #5
	beq _080271C6
	cmp r2, #7
	bne _080271F2
	strb r3, [r6]
	strb r3, [r6, #1]
	b _08027322
_080271A0:
	cmp r5, #2
	bne _080271CC
	cmp r2, #1
	beq _080271D4
	cmp r2, #3
	bne _080271B0
	strb r2, [r6]
	b _08027320
_080271B0:
	cmp r2, #5
	bne _080271B8
	mov r0, #1
	b _080271FA
_080271B8:
	cmp r2, #7
	bne _080271C0
	strb r1, [r6]
	b _08027320
_080271C0:
	cmp r2, #9
	beq _080271C6
	b _08027322
_080271C6:
	strb r5, [r6]
	strb r5, [r6, #1]
	b _08027322
_080271CC:
	cmp r5, #3
	bne _08027200
	cmp r2, #1
	bne _080271DA
_080271D4:
	strb r1, [r6]
	strb r5, [r6, #1]
	b _08027322
_080271DA:
	cmp r2, #3
	bne _080271E2
	strb r2, [r6]
	b _08027302
_080271E2:
	cmp r2, #5
	bne _080271EA
	mov r0, #1
	b _080271FA
_080271EA:
	cmp r2, #7
	bne _080271F2
	strb r1, [r6]
	b _08027302
_080271F2:
	cmp r2, #9
	beq _080271F8
	b _08027322
_080271F8:
	mov r0, #2
_080271FA:
	strb r0, [r6]
	strb r5, [r6, #1]
	b _08027322
_08027200:
	cmp r5, #4
	bne _0802722A
	cmp r2, #1
	bne _0802720C
	strb r2, [r6]
	b _08027320
_0802720C:
	cmp r2, #3
	bne _08027214
	strb r2, [r6]
	b _080272D6
_08027214:
	cmp r2, #5
	bne _0802721A
	b _0802731C
_0802721A:
	cmp r2, #7
	bne _08027222
	strb r1, [r6]
	b _080272D6
_08027222:
	cmp r2, #9
	bne _08027322
	strb r3, [r6]
	b _08027320
_0802722A:
	cmp r5, #5
	bne _08027254
	cmp r2, #1
	beq _08027236
	cmp r2, #3
	bne _0802723C
_08027236:
	strb r2, [r6]
	strb r2, [r6, #1]
	b _08027322
_0802723C:
	cmp r2, #5
	bne _08027244
	mov r0, #2
	b _08027300
_08027244:
	cmp r2, #7
	bne _0802724E
	strb r1, [r6]
	strb r3, [r6, #1]
	b _08027322
_0802724E:
	cmp r2, #9
	bne _08027322
	b _080272FE
_08027254:
	cmp r5, #6
	bne _08027282
	cmp r2, #1
	bne _08027260
	strb r2, [r6]
	b _080272D6
_08027260:
	cmp r2, #3
	bne _08027268
	strb r1, [r6]
	b _08027320
_08027268:
	cmp r2, #5
	bne _08027270
	mov r0, #2
	b _080272AE
_08027270:
	cmp r2, #7
	bne _0802727A
	mov r1, #0
	mov r0, #1
	b _0802731E
_0802727A:
	cmp r2, #9
	bne _08027322
	mov r0, #3
	b _080272D4
_08027282:
	cmp r5, #7
	bne _080272B4
	cmp r2, #1
	bne _08027290
	strb r2, [r6]
	strb r3, [r6, #1]
	b _08027322
_08027290:
	cmp r2, #3
	bne _08027298
	strb r1, [r6]
	b _08027302
_08027298:
	cmp r2, #5
	bne _080272A0
	mov r0, #2
	b _0802730E
_080272A0:
	cmp r2, #7
	bne _080272A8
	mov r0, #1
	b _080272AE
_080272A8:
	cmp r2, #9
	bne _08027322
	mov r0, #3
_080272AE:
	strb r0, [r6]
	strb r0, [r6, #1]
	b _08027322
_080272B4:
	cmp r5, #8
	bne _080272E2
	cmp r2, #1
	beq _0802731C
	cmp r2, #3
	bne _080272C4
	mov r0, #0
	b _080272D4
_080272C4:
	cmp r2, #5
	bne _080272CE
	mov r1, #0
	mov r0, #3
	b _0802731E
_080272CE:
	cmp r2, #7
	bne _080272DC
	mov r0, #1
_080272D4:
	strb r0, [r6]
_080272D6:
	mov r0, #2
	strb r0, [r6, #1]
	b _08027322
_080272DC:
	cmp r2, #9
	bne _08027322
	b _0802730C
_080272E2:
	cmp r5, #9
	bne _08027322
	cmp r2, #1
	bne _080272EE
	mov r0, #2
	b _080272F4
_080272EE:
	cmp r2, #3
	bne _080272FA
	mov r0, #0
_080272F4:
	strb r0, [r6]
	strb r2, [r6, #1]
	b _08027322
_080272FA:
	cmp r2, #5
	bne _08027308
_080272FE:
	mov r0, #3
_08027300:
	strb r0, [r6]
_08027302:
	mov r0, #1
	strb r0, [r6, #1]
	b _08027322
_08027308:
	cmp r2, #7
	bne _08027316
_0802730C:
	mov r0, #1
_0802730E:
	strb r0, [r6]
	mov r0, #3
	strb r0, [r6, #1]
	b _08027322
_08027316:
	cmp r2, #9
	bne _08027322
	mov r1, #0
_0802731C:
	mov r0, #2
_0802731E:
	strb r0, [r6]
_08027320:
	strb r1, [r6, #1]
_08027322:
	ldrb r5, [r6]
	cmp r5, #1
	beq _08027368
	cmp r5, #1
	bgt _08027338
	cmp r5, #0
	beq _08027348
	ldr r5, _08027334  @ =0x030000F4
	b _080273FC
_08027334:
	.4byte 0x030000F4
_08027338:
	cmp r5, #2
	beq _08027390
	cmp r5, #3
	beq _080273CC
	ldr r5, _08027344  @ =0x030000F4
	b _080273FC
_08027344:
	.4byte 0x030000F4
_08027348:
	ldr r2, _08027364  @ =0x030000F4
	ldr r1, [r2]
	mov r3, #0
	mov r0, #184
	strh r0, [r1]
	strb r3, [r1, #4]
	ldr r1, [r2]
	mov r0, #5
	strb r0, [r1, #5]
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1, #6]
	add r5, r2, #0
	b _080273FC
_08027364:
	.4byte 0x030000F4
_08027368:
	ldr r1, _0802738C  @ =0x030000F4
	ldr r2, [r1]
	mov r0, #160
	lsl r0, r0, #1
	strh r0, [r2]
	mov r0, #4
	strb r0, [r2, #4]
	ldr r2, [r1]
	mov r0, #3
	strb r0, [r2, #5]
	ldr r0, [r1]
	mov r2, #2
	strb r2, [r0, #6]
	ldr r0, [r1]
	strb r2, [r0, #7]
	ldr r0, [r1]
	strb r5, [r0, #8]
	b _080273EA
_0802738C:
	.4byte 0x030000F4
_08027390:
	ldr r1, _080273C8  @ =0x030000F4
	ldr r2, [r1]
	mov r4, #0
	mov r0, #205
	lsl r0, r0, #1
	strh r0, [r2]
	mov r3, #1
	strb r3, [r2, #4]
	ldr r2, [r1]
	mov r0, #5
	strb r0, [r2, #5]
	ldr r0, [r1]
	strb r5, [r0, #6]
	ldr r2, [r1]
	mov r0, #3
	strb r0, [r2, #7]
	ldr r0, [r1]
	strb r3, [r0, #8]
	ldr r0, [r1]
	strb r4, [r0, #9]
	ldr r0, [r1]
	strb r5, [r0, #10]
	ldr r0, [r1]
	strb r5, [r0, #11]
	ldr r0, [r1]
	strb r5, [r0, #12]
	b _080273FA
	.byte 0x00
	.byte 0x00
_080273C8:
	.4byte 0x030000F4
_080273CC:
	ldr r1, _0802740C  @ =0x030000F4
	ldr r3, [r1]
	mov r0, #232
	strh r0, [r3]
	mov r2, #2
	strb r2, [r3, #4]
	ldr r0, [r1]
	strb r5, [r0, #5]
	ldr r3, [r1]
	mov r0, #4
	strb r0, [r3, #6]
	ldr r0, [r1]
	strb r2, [r0, #7]
	ldr r0, [r1]
	strb r2, [r0, #8]
_080273EA:
	ldr r0, [r1]
	strb r2, [r0, #9]
	ldr r0, [r1]
	strb r2, [r0, #10]
	ldr r0, [r1]
	strb r2, [r0, #11]
	ldr r0, [r1]
	strb r2, [r0, #12]
_080273FA:
	add r5, r1, #0
_080273FC:
	ldrb r4, [r6, #1]
	cmp r4, #1
	beq _0802744A
	cmp r4, #1
	bgt _08027410
	cmp r4, #0
	beq _0802741A
	b _080274D4
_0802740C:
	.4byte 0x030000F4
_08027410:
	cmp r4, #2
	beq _08027478
	cmp r4, #3
	beq _080274A6
	b _080274D4
_0802741A:
	ldr r2, [r5]
	mov r3, #0
	mov r0, #138
	strh r0, [r2, #2]
	mov r1, #3
	strb r1, [r2, #13]
	ldr r0, [r5]
	mov r2, #2
	strb r2, [r0, #14]
	ldr r0, [r5]
	strb r1, [r0, #15]
	ldr r0, [r5]
	strb r1, [r0, #16]
	ldr r0, [r5]
	strb r2, [r0, #17]
	ldr r0, [r5]
	strb r3, [r0, #18]
	ldr r0, [r5]
	strb r3, [r0, #19]
	ldr r0, [r5]
	strb r3, [r0, #20]
	ldr r0, [r5]
	strb r3, [r0, #21]
	b _080274D4
_0802744A:
	ldr r2, [r5]
	mov r1, #0
	mov r0, #80
	strh r0, [r2, #2]
	strb r1, [r2, #13]
	ldr r0, [r5]
	mov r2, #2
	strb r2, [r0, #14]
	ldr r0, [r5]
	strb r2, [r0, #15]
	ldr r0, [r5]
	strb r1, [r0, #16]
	ldr r0, [r5]
	strb r1, [r0, #17]
	ldr r0, [r5]
	strb r1, [r0, #18]
	ldr r0, [r5]
	strb r1, [r0, #19]
	ldr r0, [r5]
	strb r1, [r0, #20]
	ldr r0, [r5]
	strb r1, [r0, #21]
	b _080274D4
_08027478:
	ldr r1, [r5]
	mov r2, #0
	mov r0, #120
	strh r0, [r1, #2]
	strb r4, [r1, #13]
	ldr r0, [r5]
	mov r1, #5
	strb r1, [r0, #14]
	ldr r0, [r5]
	strb r2, [r0, #15]
	ldr r0, [r5]
	strb r1, [r0, #16]
	ldr r0, [r5]
	strb r4, [r0, #17]
	ldr r0, [r5]
	strb r4, [r0, #18]
	ldr r0, [r5]
	strb r4, [r0, #19]
	ldr r0, [r5]
	strb r4, [r0, #20]
	ldr r0, [r5]
	strb r4, [r0, #21]
	b _080274D4
_080274A6:
	ldr r1, [r5]
	mov r2, #0
	mov r0, #172
	strh r0, [r1, #2]
	strb r2, [r1, #13]
	ldr r0, [r5]
	mov r3, #5
	strb r3, [r0, #14]
	ldr r1, [r5]
	mov r0, #2
	strb r0, [r1, #15]
	ldr r0, [r5]
	strb r2, [r0, #16]
	ldr r0, [r5]
	strb r4, [r0, #17]
	ldr r0, [r5]
	strb r3, [r0, #18]
	ldr r0, [r5]
	strb r2, [r0, #19]
	ldr r0, [r5]
	strb r2, [r0, #20]
	ldr r0, [r5]
	strb r2, [r0, #21]
_080274D4:
	ldr r0, [r5]
	mov r2, #0
	strb r2, [r0, #22]
	ldr r1, _08027508  @ =0x030000E8
	ldr r0, [r1]
	strb r2, [r0, #1]
	ldr r2, [r1]
	mov r0, #1
	strb r0, [r2, #2]
	ldr r1, [r1]
	mov r0, #2
	strb r0, [r1, #3]
	bl sub_0804A244
	mov r1, #6
	bl __modsi3
	cmp r0, #5
	bls _080274FC
	b _08027638
_080274FC:
	lsl r0, r0, #2
	ldr r1, _0802750C  @ =0x08027510
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_08027508:
	.4byte 0x030000E8
_0802750C:
	.4byte _08027510
_08027510:
	.4byte _08027528
	.4byte _08027558
	.4byte _08027590
	.4byte _080275C8
	.4byte _08027600
	.4byte _08027638
_08027528:
	ldr r4, _08027550  @ =0x030000E8
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r3, _08027554  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2, #12]
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	ldr r1, [r3]
	b _0802765E
_08027550:
	.4byte 0x030000E8
_08027554:
	.4byte 0x030000F8
_08027558:
	ldr r2, _08027588  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	ldr r3, _0802758C  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldr r2, [r2]
	ldrb r0, [r2, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2, #12]
	b _08027664
	.byte 0x00
	.byte 0x00
_08027588:
	.4byte 0x030000E8
_0802758C:
	.4byte 0x030000F8
_08027590:
	ldr r3, _080275C0  @ =0x030000E8
	ldr r4, [r3]
	ldrb r0, [r4, #1]
	ldr r2, _080275C4  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r4, #12]
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	b _08027664
	.byte 0x00
	.byte 0x00
_080275C0:
	.4byte 0x030000E8
_080275C4:
	.4byte 0x030000F8
_080275C8:
	ldr r2, _080275F8  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	ldr r3, _080275FC  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r2, [r2]
	ldrb r0, [r2, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2, #12]
	b _08027664
	.byte 0x00
	.byte 0x00
_080275F8:
	.4byte 0x030000E8
_080275FC:
	.4byte 0x030000F8
_08027600:
	ldr r4, _08027630  @ =0x030000E8
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r3, _08027634  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2, #12]
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	b _08027664
	.byte 0x00
	.byte 0x00
_08027630:
	.4byte 0x030000E8
_08027634:
	.4byte 0x030000F8
_08027638:
	ldr r3, _080278B0  @ =0x030000E8
	ldr r4, [r3]
	ldrb r0, [r4, #1]
	ldr r2, _080278B4  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r4, #12]
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
_0802765E:
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
_08027664:
	strb r1, [r0]
	ldr r0, _080278B8  @ =gBonusSwapBoxesBackgroundData
	str r0, [sp]
	ldr r4, _080278BC  @ =gBonusSwapBoxesData
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #2
	bl load_graphics_config_08032F24
	mov r1, #128
	lsl r1, r1, #19
	strh r0, [r1]
	add r0, r4, #0
	bl repoint_tile_objects_08006968
	ldr r1, _080278C0  @ =0x030000E4
	str r0, [r1]
	add r5, sp, #20
	mov r0, #160
	strh r0, [r5]
	ldr r1, _080278C4  @ =REG_DMA3SAD
	str r5, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _080278C8  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl save_blend_regs
	mov r8, r4
	mov r1, #0
	mov r6, r8
	add r6, r6, #64
_080276B2:
	lsl r2, r1, #2
	mov r0, r8
	add r0, r0, #12
	add r0, r0, r2
	ldr r0, [r0]
	add r4, r1, #1
	cmp r0, #0
	ble _080276E2
	mov r0, #0
	strh r0, [r5]
	add r0, r6, r2
	ldr r1, [r0]
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r2, [r0]
	sub r2, r2, r1
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r5, #0
	bl CpuSet
_080276E2:
	lsl r0, r4, #24
	lsr r1, r0, #24
	cmp r1, #1
	bls _080276B2
	ldr r5, _080278CC  @ =0x030000F4
	ldr r1, [r5]
	ldr r4, _080278D0  @ =gVRAMCurrTileNum_03001930
	ldrh r0, [r4]
	str r0, [r1, #28]
	ldr r0, _080278D4  @ =gUnknown_082EBE60
	ldr r6, _080278D8  @ =gObjVRAMCopyOffset_0300192C
	mov r3, #128
	lsl r3, r3, #2
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0800F0C4
	ldr r1, [r5]
	str r0, [r1, #32]
	ldr r0, _080278DC  @ =gUnknown_082ECB40
	mov r3, #160
	lsl r3, r3, #2
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0800F0C4
	ldr r0, [r5]
	mov r4, #0
	strb r4, [r0, #23]
	ldr r3, _080278E0  @ =0x03000C10
	ldr r1, _080278E4  @ =gUnknown_080798E8
	ldr r2, [r5]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080278E8  @ =0x03000C08
	ldr r1, _080278EC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080278B0  @ =0x030000E8
	ldr r1, [r3]
	mov r0, #4
	strb r0, [r1]
	ldr r1, [r5]
	mov r0, #20
	strb r0, [r1, #24]
	ldr r1, [r5]
	mov r0, #84
	strb r0, [r1, #25]
	ldr r1, _080278F0  @ =0x030000EC
	ldr r0, [r1]
	strb r4, [r0]
	ldr r0, [r1]
	strb r4, [r0, #1]
	ldr r2, [r1]
	mov r0, #2
	strb r0, [r2, #2]
	ldr r0, [r1]
	mov r1, #5
	mov r9, r1
	mov r1, r9
	strb r1, [r0, #3]
	ldr r0, _080278F4  @ =gUnknown_03000C04
	mov r1, #0
	mov r8, r1
	strh r4, [r0]
	ldr r1, _080278F8  @ =gUnknown_03000C0C
	mov r0, #128
	strh r0, [r1]
	ldr r0, _080278FC  @ =0x030000F0
	mov r10, r0
	ldr r0, [r0]
	mov r1, r8
	strb r1, [r0, #1]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r2, _080278B4  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r4, #16
	strb r4, [r0, #1]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #2]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #3]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r6, #69
	strb r6, [r0, #4]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r5, #1
	strb r5, [r0, #5]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #8
	strb r1, [r0, #6]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r4, #88
	strb r4, [r0, #1]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #2]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #3]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r6, [r0, #4]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #6
	strb r1, [r0, #6]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r4, #160
	strb r4, [r0, #1]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #2]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #3]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r6, [r0, #4]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #7
	strb r1, [r0, #6]
	ldr r0, [r3]
	mov r1, r8
	strb r1, [r0, #9]
	ldr r0, [r3]
	mov r1, r9
	strb r1, [r0, #11]
	ldr r0, [r3]
	mov r1, r8
	strb r1, [r0, #10]
	ldr r0, [r3]
	strb r1, [r0, #4]
	ldr r0, [r3]
	strb r1, [r0, #5]
	ldr r0, [r3]
	strb r5, [r0, #6]
	ldr r0, [r3]
	strb r1, [r0, #7]
	ldr r0, [r3]
	strb r5, [r0, #8]
	mov r0, r10
	ldr r1, [r0]
	mov r0, #3
	strb r0, [r1, #2]
	mov r0, #10
	mov r1, #3
	bl load_predefined_palette
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080278B0:
	.4byte 0x030000E8
_080278B4:
	.4byte 0x030000F8
_080278B8:
	.4byte gBonusSwapBoxesBackgroundData
_080278BC:
	.4byte gBonusSwapBoxesData
_080278C0:
	.4byte 0x030000E4
_080278C4:
	.4byte REG_DMA3SAD
_080278C8:
	.4byte 0x81000100
_080278CC:
	.4byte 0x030000F4
_080278D0:
	.4byte gVRAMCurrTileNum_03001930
_080278D4:
	.4byte gUnknown_082EBE60
_080278D8:
	.4byte gObjVRAMCopyOffset_0300192C
_080278DC:
	.4byte gUnknown_082ECB40
_080278E0:
	.4byte 0x03000C10
_080278E4:
	.4byte gUnknown_080798E8
_080278E8:
	.4byte 0x03000C08
_080278EC:
	.4byte gUnknown_08079938
_080278F0:
	.4byte 0x030000EC
_080278F4:
	.4byte gUnknown_03000C04
_080278F8:
	.4byte gUnknown_03000C0C
_080278FC:
	.4byte 0x030000F0
	THUMB_FUNC_END bonus_swapboxes_init_callback

	THUMB_FUNC_START bonus_swapboxes_main
bonus_swapboxes_main: @ 0x08027900
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r0, _0802797C  @ =gLivesCount
	ldrb r4, [r0]
	bl update_fade_from_black
	bl sub_080088C4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r5, _08027980  @ =0x030000F4
	ldr r1, [r5]
	add r1, r1, #42
	ldr r2, _08027984  @ =0x01000001
	mov r0, sp
	bl CpuSet
	ldr r1, [r5]
	lsl r4, r4, #24
	asr r4, r4, #24
	ldr r0, _08027988  @ =0x0000199A
	mul r0, r4, r0
	asr r3, r0, #16
	add r1, r1, #43
	strb r3, [r1]
	ldr r2, [r5]
	add r0, r2, #0
	add r0, r0, #43
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	sub r4, r4, r0
	add r2, r2, #42
	strb r4, [r2]
	ldr r0, [r5]
	add r1, r0, #0
	add r1, r1, #42
	ldrb r0, [r1]
	cmp r0, #9
	bls _08027958
	mov r0, #9
	strb r0, [r1]
_08027958:
	ldr r0, [r5]
	add r0, r0, #43
	strb r3, [r0]
	ldr r1, [r5]
	ldrh r0, [r1, #40]
	add r0, r0, #1
	strh r0, [r1, #40]
	ldr r0, _0802798C  @ =0x03000C10
	ldr r0, [r0]
	bl _call_via_r0
	bl process_input
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802797C:
	.4byte gLivesCount
_08027980:
	.4byte 0x030000F4
_08027984:
	.4byte 0x01000001
_08027988:
	.4byte 0x0000199A
_0802798C:
	.4byte 0x03000C10
	THUMB_FUNC_END bonus_swapboxes_main

	THUMB_FUNC_START bonus_swapboxes_loop
bonus_swapboxes_loop: @ 0x08027990
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #32
	add r5, sp, #8
	mov r1, #0
	strh r1, [r5]
	ldr r0, _08027B5C  @ =gVRAMCurrTileNum_03001930
	ldrh r0, [r0]
	mov r2, sp
	add r2, r2, #10
	str r2, [sp, #24]
	strh r0, [r2]
	ldr r0, _08027B60  @ =gObjVRAMCopyOffset_0300192C
	ldrh r0, [r0]
	add r2, r2, #2
	str r2, [sp, #28]
	strh r0, [r2]
	mov r0, #160
	str r0, [sp, #4]
	ldr r6, _08027B64  @ =REG_DMA3SAD
	add r0, sp, #4
	str r0, [r6]
	ldr r7, _08027B68  @ =gOamBuffer
	str r7, [r6, #4]
	ldr r0, _08027B6C  @ =0x85000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	mov r0, #8
	str r0, [sp, #16]
	str r1, [sp, #20]
	ldr r0, _08027B70  @ =gUnknown_082EBE58
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08027B74  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	add r0, sp, #16
	mov r8, r0
	ldrh r1, [r0]
	ldr r0, _08027B78  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08027B7C  @ =0xFFFFFE00
	mov r10, r0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	add r1, sp, #20
	mov r12, r1
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08027B80  @ =0x030000F4
	ldr r4, [r0]
	ldr r1, [r4, #28]
	ldr r0, _08027B84  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08027B88  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, #32
	str r0, [sp, #16]
	mov r0, #4
	str r0, [sp, #20]
	add r4, r4, #43
	ldrb r0, [r4]
	mov r1, r8
	mov r9, r12
	ldr r4, _08027B8C  @ =gUnknown_082ECB38
	cmp r0, #0
	beq _08027AB8
	str r4, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r2, _08027B74  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r1, [r1]
	ldr r0, _08027B78  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r2, r9
	ldrb r1, [r2]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08027B80  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #43
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r1, [r1, #32]
	add r1, r1, r0
	ldr r0, _08027B84  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08027B88  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
_08027AB8:
	str r4, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08027B74  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	mov r0, r8
	ldrh r1, [r0]
	ldr r0, _08027B78  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r2, r12
	ldrb r1, [r2]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08027B80  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #42
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r1, [r1, #32]
	add r1, r1, r0
	ldr r0, _08027B84  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08027B88  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, _08027B90  @ =0x03000C08
	mov r1, r12
	str r1, [sp]
	ldr r4, [r0]
	add r0, r5, #0
	ldr r1, [sp, #24]
	ldr r2, [sp, #28]
	mov r3, r8
	bl _call_via_r4
	str r7, [r6]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r6, #4]
	ldr r0, _08027B94  @ =0x80000200
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	add sp, sp, #32
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08027B5C:
	.4byte gVRAMCurrTileNum_03001930
_08027B60:
	.4byte gObjVRAMCopyOffset_0300192C
_08027B64:
	.4byte REG_DMA3SAD
_08027B68:
	.4byte gOamBuffer
_08027B6C:
	.4byte 0x85000100
_08027B70:
	.4byte gUnknown_082EBE58
_08027B74:
	.4byte 0x84000002
_08027B78:
	.4byte 0x000001FF
_08027B7C:
	.4byte 0xFFFFFE00
_08027B80:
	.4byte 0x030000F4
_08027B84:
	.4byte 0x000003FF
_08027B88:
	.4byte 0xFFFFFC00
_08027B8C:
	.4byte gUnknown_082ECB38
_08027B90:
	.4byte 0x03000C08
_08027B94:
	.4byte 0x80000200
	THUMB_FUNC_END bonus_swapboxes_loop

	THUMB_FUNC_START bonus_swapboxes_end
bonus_swapboxes_end: @ 0x08027B98
	bx lr
	THUMB_FUNC_END bonus_swapboxes_end

	.byte 0x00
	.byte 0x00
	