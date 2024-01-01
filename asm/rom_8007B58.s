	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"


	THUMB_FUNC_START level_demo_main
level_demo_main: @ 0x080080F8
	push {r4,r5,lr}
	bl sub_08029C20
	bl sub_080331FC
	ldr r0, _08008174  @ =gUnknown_03001938
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0800812A
	ldr r0, _08008178  @ =gUnknown_030012E8
	ldrh r0, [r0]
	ldr r1, _0800817C  @ =gUnknown_030012E0
	ldrh r1, [r1]
	bl sub_08038414
	bl sub_08039C44
	ldr r0, _08008180  @ =gNextMainState
	ldr r0, [r0]
	cmp r0, #33
	bne _0800812A
	b _08008230
_0800812A:
	mov r5, #0
	ldr r0, _08008184  @ =gUnknown_03001A1C
	ldr r4, [r0]
	mov r0, #216
	lsl r0, r0, #5
	and r0, r0, r4
	cmp r0, #0
	bne _0800813C
	mov r5, #1
_0800813C:
	ldr r0, _08008188  @ =gUnknown_03001A00
	strb r5, [r0]
	ldr r2, _0800818C  @ =gUnknown_03000038
	ldr r0, _08008190  @ =gUnknown_03000034
	ldr r3, [r0]
	add r0, r3, #0
	eor r0, r0, r4
	add r1, r0, #0
	and r1, r1, r4
	str r1, [r2]
	ldr r2, _08008194  @ =gUnknown_0300003C
	and r0, r0, r3
	str r0, [r2]
	mov r0, #128
	lsl r0, r0, #23
	and r1, r1, r0
	cmp r1, #0
	beq _080081A0
	ldr r2, _08008198  @ =gCurrentWorld
	ldr r1, _0800819C  @ =gNextLevelID
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r0, #7
	mov r1, #1
	bl change_main_state
	b _080081C6
_08008174:
	.4byte gUnknown_03001938
_08008178:
	.4byte gUnknown_030012E8
_0800817C:
	.4byte gUnknown_030012E0
_08008180:
	.4byte gNextMainState
_08008184:
	.4byte gUnknown_03001A1C
_08008188:
	.4byte gUnknown_03001A00
_0800818C:
	.4byte gUnknown_03000038
_08008190:
	.4byte gUnknown_03000034
_08008194:
	.4byte gUnknown_0300003C
_08008198:
	.4byte gCurrentWorld
_0800819C:
	.4byte gNextLevelID
_080081A0:
	ldr r1, _080081B0  @ =gLevelEndTimer
	ldr r0, [r1]
	cmp r0, #0
	bge _080081B4
	bl sub_08007544
	b _080081C6
	.byte 0x00
	.byte 0x00
_080081B0:
	.4byte gLevelEndTimer
_080081B4:
	cmp r0, #0
	ble _080081BE
	sub r0, r0, #1
	str r0, [r1]
	b _080081C6
_080081BE:
	mov r0, #7
	mov r1, #1
	bl change_main_state
_080081C6:
	ldr r1, _08008210  @ =gUnknown_03000034
	ldr r0, _08008214  @ =gUnknown_03001A1C
	ldr r0, [r0]
	str r0, [r1]
	bl sub_0802BAA0
	bl sub_0802CF78
	bl sub_08030F50
	bl sub_08031C1C
	bl sub_080315A4
	bl sub_0802C540
	ldr r0, _08008218  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #24
	and r0, r0, r1
	cmp r0, #0
	beq _080081F6
	bl sub_0802C9D8
_080081F6:
	ldr r4, _0800821C  @ =gNextLevelInLevelTable
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _08008224
	ldr r0, _08008220  @ =gUnknown_03001A00
	ldrb r0, [r0]
	bl sub_0802BEA4
	b _0800822C
_08008210:
	.4byte gUnknown_03000034
_08008214:
	.4byte gUnknown_03001A1C
_08008218:
	.4byte gUnknown_030009D0
_0800821C:
	.4byte gNextLevelInLevelTable
_08008220:
	.4byte gUnknown_03001A00
_08008224:
	cmp r5, #0
	beq _0800822C
	bl sub_0802BE50
_0800822C:
	bl sub_0801B310
_08008230:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END level_demo_main

	.byte 0x00
	.byte 0x00
