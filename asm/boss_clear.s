	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START boss_clear_init_callback
boss_clear_init_callback: @ 0x0801BF14
	push {r4-r6,lr}
	sub sp, sp, #36
	mov r0, #0
	bl arena_restore_head
	ldr r0, _0801BFAC  @ =gCameraHorizontalOffset
	mov r5, #0
	strh r5, [r0]
	ldr r0, _0801BFB0  @ =gCameraVerticalOffset
	strh r5, [r0]
	ldr r1, _0801BFB4  @ =gUnknown_030009D8
	ldr r0, _0801BFB8  @ =0x030000C6
	strb r5, [r0]
	strh r5, [r1]
	ldr r6, _0801BFBC  @ =0x030000C4
	ldr r0, _0801BFC0  @ =0x030000C5
	strb r5, [r0]
	strb r5, [r6]
	ldr r4, _0801BFC4  @ =gLivesCount
	bl sub_08014A34
	strb r0, [r4]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _0801BFE0
	mov r0, #15
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	mov r0, #1
	strb r0, [r6]
	ldr r0, _0801BFC8  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801BF64
	bl sub_0801C1F0
_0801BF64:
	ldr r1, _0801BFCC  @ =0x030000C0
	mov r0, #50
	strb r0, [r1]
	ldr r0, _0801BFD0  @ =0x030000C2
	strb r5, [r0]
	ldr r1, _0801BFD4  @ =0x030000C3
	ldr r0, _0801BFD8  @ =gUnknown_085DED1C
	ldrb r0, [r0, #1]
	strb r0, [r1]
	add r0, sp, #16
	mov r1, #0
	str r1, [sp, #16]
	str r1, [r0, #4]
	ldr r4, _0801BFDC  @ =gGameOverData
	str r4, [r0, #8]
	str r4, [r0, #12]
	mov r1, #3
	bl load_graphics_config_08032F24
	mov r0, #6
	mov r1, #3
	bl load_predefined_palette
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #194
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl set_blend_regs_08029CDC
	b _0801C1B4
	.byte 0x00
	.byte 0x00
_0801BFAC:
	.4byte gCameraHorizontalOffset
_0801BFB0:
	.4byte gCameraVerticalOffset
_0801BFB4:
	.4byte gUnknown_030009D8
_0801BFB8:
	.4byte 0x030000C6
_0801BFBC:
	.4byte 0x030000C4
_0801BFC0:
	.4byte 0x030000C5
_0801BFC4:
	.4byte gLivesCount
_0801BFC8:
	.4byte gLevelEWorldFlag
_0801BFCC:
	.4byte 0x030000C0
_0801BFD0:
	.4byte 0x030000C2
_0801BFD4:
	.4byte 0x030000C3
_0801BFD8:
	.4byte gUnknown_085DED1C
_0801BFDC:
	.4byte gGameOverData
_0801BFE0:
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
	ldr r0, _0801C014  @ =0x030000C7
	strb r5, [r0]
	ldr r1, _0801C018  @ =0x030000C8
	mov r0, #30
	strb r0, [r1]
	ldr r0, _0801C01C  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801C0B0
	ldr r0, _0801C020  @ =gNextLevelInLevelTable
	mov r1, #18
	ldrsh r0, [r0, r1]
	cmp r0, #5
	bhi _0801C0A0
	lsl r0, r0, #2
	ldr r1, _0801C024  @ =0x0801C028
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0801C014:
	.4byte 0x030000C7
_0801C018:
	.4byte 0x030000C8
_0801C01C:
	.4byte gLevelType
_0801C020:
	.4byte gNextLevelInLevelTable
_0801C024:
	.4byte _0801C028
_0801C028:
	.4byte _0801C040
	.4byte _0801C050
	.4byte _0801C060
	.4byte _0801C070
	.4byte _0801C080
	.4byte _0801C090
_0801C040:
	ldr r0, _0801C048  @ =gWorldOneBossClearData1
	str r0, [sp]
	ldr r0, _0801C04C  @ =gWorldOneBossClearData2
	b _0801C13E
_0801C048:
	.4byte gWorldOneBossClearData1
_0801C04C:
	.4byte gWorldOneBossClearData2
_0801C050:
	ldr r0, _0801C058  @ =gWorldTwoBossClearData1
	str r0, [sp]
	ldr r0, _0801C05C  @ =gWorldTwoBossClearData2
	b _0801C13E
_0801C058:
	.4byte gWorldTwoBossClearData1
_0801C05C:
	.4byte gWorldTwoBossClearData2
_0801C060:
	ldr r0, _0801C068  @ =gWorldThreeBossClearData1
	str r0, [sp]
	ldr r0, _0801C06C  @ =gWorldThreeBossClearData2
	b _0801C13E
_0801C068:
	.4byte gWorldThreeBossClearData1
_0801C06C:
	.4byte gWorldThreeBossClearData2
_0801C070:
	ldr r0, _0801C078  @ =gWorldFourBossClearData1
	str r0, [sp]
	ldr r0, _0801C07C  @ =gWorldFourBossClearData2
	b _0801C13E
_0801C078:
	.4byte gWorldFourBossClearData1
_0801C07C:
	.4byte gWorldFourBossClearData2
_0801C080:
	ldr r0, _0801C088  @ =gWorldFiveBossClearData1
	str r0, [sp]
	ldr r0, _0801C08C  @ =gWorldFiveBossClearData2
	b _0801C13E
_0801C088:
	.4byte gWorldFiveBossClearData1
_0801C08C:
	.4byte gWorldFiveBossClearData2
_0801C090:
	ldr r0, _0801C098  @ =gWorldSixBossClearData1
	str r0, [sp]
	ldr r0, _0801C09C  @ =gWorldSixBossClearData2
	b _0801C13E
_0801C098:
	.4byte gWorldSixBossClearData1
_0801C09C:
	.4byte gWorldSixBossClearData2
_0801C0A0:
	ldr r0, _0801C0A8  @ =gWorldSixBossClearData1
	str r0, [sp]
	ldr r0, _0801C0AC  @ =gWorldSixBossClearData2
	b _0801C13E
_0801C0A8:
	.4byte gWorldSixBossClearData1
_0801C0AC:
	.4byte gWorldSixBossClearData2
_0801C0B0:
	cmp r0, #1
	bne _0801C140
	ldr r0, _0801C0C8  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r0, r2]
	cmp r0, #5
	bhi _0801C138
	lsl r0, r0, #2
	ldr r1, _0801C0CC  @ =0x0801C0D0
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0801C0C8:
	.4byte gNextLevelInLevelTable
_0801C0CC:
	.4byte _0801C0D0
_0801C0D0:
	.4byte _0801C0E8
	.4byte _0801C0F8
	.4byte _0801C108
	.4byte _0801C118
	.4byte _0801C128
	.4byte _0801C138
_0801C0E8:
	ldr r0, _0801C0F0  @ =gWorldOnePlusBossClearData1
	str r0, [sp]
	ldr r0, _0801C0F4  @ =gWorldOnePlusBossClearData2
	b _0801C13E
_0801C0F0:
	.4byte gWorldOnePlusBossClearData1
_0801C0F4:
	.4byte gWorldOnePlusBossClearData2
_0801C0F8:
	ldr r0, _0801C100  @ =gWorldTwoPlusBossClearData1
	str r0, [sp]
	ldr r0, _0801C104  @ =gWorldTwoPlusBossClearData2
	b _0801C13E
_0801C100:
	.4byte gWorldTwoPlusBossClearData1
_0801C104:
	.4byte gWorldTwoPlusBossClearData2
_0801C108:
	ldr r0, _0801C110  @ =gWorldThreePlusBossClearData1
	str r0, [sp]
	ldr r0, _0801C114  @ =gWorldThreePlusBossClearData2
	b _0801C13E
_0801C110:
	.4byte gWorldThreePlusBossClearData1
_0801C114:
	.4byte gWorldThreePlusBossClearData2
_0801C118:
	ldr r0, _0801C120  @ =gWorldFourPlusBossClearData1
	str r0, [sp]
	ldr r0, _0801C124  @ =gWorldFourPlusBossClearData2
	b _0801C13E
_0801C120:
	.4byte gWorldFourPlusBossClearData1
_0801C124:
	.4byte gWorldFourPlusBossClearData2
_0801C128:
	ldr r0, _0801C130  @ =gWorldFivePlusBossClearData1
	str r0, [sp]
	ldr r0, _0801C134  @ =gWorldFivePlusBossClearData2
	b _0801C13E
_0801C130:
	.4byte gWorldFivePlusBossClearData1
_0801C134:
	.4byte gWorldFivePlusBossClearData2
_0801C138:
	ldr r0, _0801C170  @ =gWorldSixPlusBossClearData1
	str r0, [sp]
	ldr r0, _0801C174  @ =gWorldSixPlusBossClearData2
_0801C13E:
	str r0, [sp, #4]
_0801C140:
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #0
	bl load_graphics_config_08032F24
	ldr r0, _0801C178  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801C184
	ldr r1, _0801C17C  @ =gUnknown_08079778
	ldr r0, _0801C180  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r0, r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #1
	bl load_predefined_palette
	b _0801C19C
_0801C170:
	.4byte gWorldSixPlusBossClearData1
_0801C174:
	.4byte gWorldSixPlusBossClearData2
_0801C178:
	.4byte gLevelType
_0801C17C:
	.4byte gUnknown_08079778
_0801C180:
	.4byte gNextLevelInLevelTable
_0801C184:
	cmp r0, #1
	bne _0801C19C
	ldr r1, _0801C1D8  @ =gUnknown_08079790
	ldr r0, _0801C1DC  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r0, r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #1
	bl load_predefined_palette
_0801C19C:
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #154
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldr r2, _0801C1E0  @ =gWorldOneBossClearData1
	ldrh r0, [r2, #48]
	ldrh r1, [r2, #50]
	ldrh r2, [r2, #52]
	bl set_blend_regs_08029CDC
_0801C1B4:
	add r2, sp, #32
	mov r0, #160
	strh r0, [r2]
	ldr r1, _0801C1E4  @ =REG_DMA3SAD
	str r2, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801C1E8  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0801C1EC  @ =0x030000C1
	mov r0, #0
	strb r0, [r1]
	add sp, sp, #36
	pop {r4-r6}
	pop {r0}
	bx r0
_0801C1D8:
	.4byte gUnknown_08079790
_0801C1DC:
	.4byte gNextLevelInLevelTable
_0801C1E0:
	.4byte gWorldOneBossClearData1
_0801C1E4:
	.4byte REG_DMA3SAD
_0801C1E8:
	.4byte 0x81000100
_0801C1EC:
	.4byte 0x030000C1
	THUMB_FUNC_END boss_clear_init_callback

	THUMB_FUNC_START sub_0801C1F0
sub_0801C1F0: @ 0x0801C1F0
	push {r4,r5,lr}
	ldr r1, _0801C264  @ =gLivesCount
	mov r0, #5
	strb r0, [r1]
	mov r0, #5
	bl sub_080149F8
	ldr r5, _0801C268  @ =gLevelType
	mov r0, #0
	ldrsb r0, [r5, r0]
	ldr r1, _0801C26C  @ =gCurrentWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	mov r2, #0
	bl sub_080103C8
	cmp r0, #0
	bne _0801C25E
	ldr r4, _0801C270  @ =gNextLevelInLevelTable
	ldr r0, [r4, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0801C250
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0801C23C
	ldr r2, _0801C274  @ =gNextLevelID
	ldrb r1, [r2]
	mov r0, #2
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	lsl r0, r0, #24
	asr r0, r0, #24
	strh r0, [r4, #16]
_0801C23C:
	mov r1, #18
	ldrsh r0, [r4, r1]
	mov r2, #16
	ldrsh r1, [r4, r2]
	bl sub_0800F6EC
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl sub_08004428
_0801C250:
	ldr r1, _0801C270  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r1, r2]
	mov r2, #16
	ldrsh r1, [r1, r2]
	bl sub_08010A3C
_0801C25E:
	pop {r4,r5}
	pop {r0}
	bx r0
_0801C264:
	.4byte gLivesCount
_0801C268:
	.4byte gLevelType
_0801C26C:
	.4byte gCurrentWorld
_0801C270:
	.4byte gNextLevelInLevelTable
_0801C274:
	.4byte gNextLevelID
	THUMB_FUNC_END sub_0801C1F0

	THUMB_FUNC_START boss_clear_main
boss_clear_main: @ 0x0801C278
	push {r4,r5,lr}
	sub sp, sp, #12
	bl sub_08029C20
	bl sub_080331FC
	ldr r0, _0801C328  @ =0x030000C6
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldr r0, _0801C32C  @ =0x030000C4
	ldrb r4, [r0]
	cmp r4, #0
	bne _0801C296
	b _0801C3A8
_0801C296:
	ldr r4, _0801C330  @ =gUnknown_030009D8
	ldrh r1, [r4]
	ldr r0, _0801C334  @ =0x0000270F
	cmp r1, r0
	bhi _0801C2A4
	add r0, r1, #1
	strh r0, [r4]
_0801C2A4:
	ldr r5, _0801C338  @ =gUnknown_030012E8
	ldrh r1, [r5]
	mov r0, #48
	and r0, r0, r1
	cmp r0, #0
	beq _0801C2D0
	ldr r2, _0801C33C  @ =0x030000C1
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0801C2D0:
	ldrh r3, [r4]
	cmp r3, #120
	bne _0801C2E6
	mov r0, #128
	lsl r0, r0, #19
	ldrh r1, [r0]
	mov r4, #128
	lsl r4, r4, #3
	add r2, r4, #0
	orr r1, r1, r2
	strh r1, [r0]
_0801C2E6:
	ldrh r1, [r5]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0801C358
	cmp r3, #120
	bls _0801C358
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _0801C33C  @ =0x030000C1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801C378
	bl sub_080720AC
	ldr r0, _0801C340  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0801C344
	mov r0, #24
	b _0801C38A
	.byte 0x00
	.byte 0x00
_0801C328:
	.4byte 0x030000C6
_0801C32C:
	.4byte 0x030000C4
_0801C330:
	.4byte gUnknown_030009D8
_0801C334:
	.4byte 0x0000270F
_0801C338:
	.4byte gUnknown_030012E8
_0801C33C:
	.4byte 0x030000C1
_0801C340:
	.4byte gLevelEWorldFlag
_0801C344:
	ldr r0, _0801C350  @ =0x030000C5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C354
	mov r0, #8
	b _0801C38A
_0801C350:
	.4byte 0x030000C5
_0801C354:
	mov r0, #13
	b _0801C38A
_0801C358:
	ldr r0, _0801C394  @ =gUnknown_030009D8
	ldrh r1, [r0]
	ldr r0, _0801C398  @ =0x0000270F
	cmp r1, r0
	bls _0801C408
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0801C378:
	bl sub_080720AC
	ldr r0, _0801C39C  @ =gCurrentWorld
	strb r4, [r0]
	ldr r0, _0801C3A0  @ =gNextLevelID
	strb r4, [r0]
	ldr r0, _0801C3A4  @ =gLevelType
	strb r4, [r0]
	mov r0, #7
_0801C38A:
	mov r1, #1
	bl change_main_state
	b _0801C408
	.byte 0x00
	.byte 0x00
_0801C394:
	.4byte gUnknown_030009D8
_0801C398:
	.4byte 0x0000270F
_0801C39C:
	.4byte gCurrentWorld
_0801C3A0:
	.4byte gNextLevelID
_0801C3A4:
	.4byte gLevelType
_0801C3A8:
	ldr r2, _0801C414  @ =gUnknown_030009D8
	ldrh r1, [r2]
	mov r0, #250
	lsl r0, r0, #2
	cmp r1, r0
	bhi _0801C3B8
	add r0, r1, #1
	strh r0, [r2]
_0801C3B8:
	ldr r0, _0801C418  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0801C408
	ldr r0, _0801C41C  @ =0x030000C7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C408
	ldr r0, _0801C420  @ =0x030000C8
	ldrb r0, [r0]
	cmp r0, #40
	bne _0801C408
	bl sub_080720AC
	ldr r1, _0801C424  @ =gUnknown_0807976C
	ldr r0, _0801C428  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r0, r2]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08071E14
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #21
	mov r1, #1
	bl change_main_state
_0801C408:
	bl sub_08008238
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_0801C414:
	.4byte gUnknown_030009D8
_0801C418:
	.4byte gUnknown_030012E8
_0801C41C:
	.4byte 0x030000C7
_0801C420:
	.4byte 0x030000C8
_0801C424:
	.4byte gUnknown_0807976C
_0801C428:
	.4byte gNextLevelInLevelTable
	THUMB_FUNC_END boss_clear_main

	THUMB_FUNC_START sub_0801C42C
sub_0801C42C: @ 0x0801C42C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, _0801C4E8  @ =REG_DMA3SAD
	ldr r2, _0801C4EC  @ =gUnknown_085DED1C
	ldr r7, _0801C4F0  @ =0x030000C2
	ldrb r1, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0801C4F4  @ =gUnknown_085DEFAC
	add r0, r0, r1
	str r0, [r4]
	ldr r5, _0801C4F8  @ =gUnknown_0300192C
	ldrh r0, [r5]
	ldr r1, _0801C4FC  @ =OBJ_VRAM0
	mov r12, r1
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r0, _0801C500  @ =0x84000020
	mov r10, r0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0801C504  @ =0x030000B8
	mov r9, r1
	ldr r0, _0801C508  @ =gUnknown_03001930
	mov r8, r0
	ldrh r2, [r0]
	strh r2, [r1]
	add r2, r2, #4
	strh r2, [r0]
	ldrh r3, [r5]
	add r3, r3, #128
	strh r3, [r5]
	ldr r6, _0801C50C  @ =gUnknown_085DF3AC
	ldrb r1, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0801C510  @ =gUnknown_085DF63C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r5]
	add r0, r0, r12
	str r0, [r4, #4]
	mov r1, r10
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, r9
	strh r2, [r0, #2]
	add r2, r2, #4
	mov r1, r8
	strh r2, [r1]
	add r3, r3, #128
	strh r3, [r5]
	ldr r6, _0801C514  @ =gUnknown_085DFA3C
	ldrb r1, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0801C518  @ =gUnknown_085DFCCC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r5]
	add r0, r0, r12
	str r0, [r4, #4]
	mov r0, r10
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r1, r9
	strh r2, [r1, #4]
	add r2, r2, #4
	mov r0, r8
	strh r2, [r0]
	add r3, r3, #128
	strh r3, [r5]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801C4E8:
	.4byte REG_DMA3SAD
_0801C4EC:
	.4byte gUnknown_085DED1C
_0801C4F0:
	.4byte 0x030000C2
_0801C4F4:
	.4byte gUnknown_085DEFAC
_0801C4F8:
	.4byte gUnknown_0300192C
_0801C4FC:
	.4byte OBJ_VRAM0
_0801C500:
	.4byte 0x84000020
_0801C504:
	.4byte 0x030000B8
_0801C508:
	.4byte gUnknown_03001930
_0801C50C:
	.4byte gUnknown_085DF3AC
_0801C510:
	.4byte gUnknown_085DF63C
_0801C514:
	.4byte gUnknown_085DFA3C
_0801C518:
	.4byte gUnknown_085DFCCC
	THUMB_FUNC_END sub_0801C42C

	THUMB_FUNC_START sub_0801C51C
sub_0801C51C: @ 0x0801C51C
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	mov r1, #0
	ldrsh r2, [r0, r1]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r2, _0801C5BC  @ =gUncompressedGraphicsTable
	add r1, r1, r2
	ldr r2, _0801C5C0  @ =REG_DMA3SAD
	ldr r1, [r1, #16]
	str r1, [r2]
	ldr r6, _0801C5C4  @ =0x030000BE
	ldrh r1, [r6]
	lsl r1, r1, #3
	ldr r3, _0801C5C8  @ =gOamData
	mov r8, r3
	add r1, r1, r8
	str r1, [r2, #4]
	ldr r1, _0801C5CC  @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r8
	ldr r2, _0801C5D0  @ =0x030000B8
	ldrh r1, [r0, #2]
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _0801C5D4  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _0801C5D8  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r8
	ldrb r2, [r3, #1]
	mov r4, #13
	neg r4, r4
	add r1, r4, #0
	and r1, r1, r2
	mov r2, #4
	orr r1, r1, r2
	strb r1, [r3, #1]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r5, [r0, #4]
	ldrh r3, [r2, #2]
	ldr r1, _0801C5DC  @ =0xFFFFFE00
	and r1, r1, r3
	orr r1, r1, r5
	strh r1, [r2, #2]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r0, #5]
	strb r0, [r1]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r1, #5]
	and r4, r4, r0
	mov r0, #8
	orr r4, r4, r0
	strb r4, [r1, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801C5BC:
	.4byte gUncompressedGraphicsTable
_0801C5C0:
	.4byte REG_DMA3SAD
_0801C5C4:
	.4byte 0x030000BE
_0801C5C8:
	.4byte gOamData
_0801C5CC:
	.4byte 0x84000002
_0801C5D0:
	.4byte 0x030000B8
_0801C5D4:
	.4byte 0x000003FF
_0801C5D8:
	.4byte 0xFFFFFC00
_0801C5DC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0801C51C

	THUMB_FUNC_START sub_0801C5E0
sub_0801C5E0: @ 0x0801C5E0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r12, r2
	ldr r2, _0801C6CC  @ =0x030000C6
	ldrb r3, [r2]
	lsr r3, r3, #2
	lsl r2, r3, #8
	sub r2, r2, r3
	add r2, r0, r2
	lsl r2, r2, #5
	str r2, [sp]
	mov r2, #255
	ldr r3, [sp]
	and r3, r3, r2
	str r3, [sp]
	ldr r4, _0801C6D0  @ =REG_DMA3SAD
	ldr r3, _0801C6D4  @ =gUnknown_085F61B4
	lsl r2, r0, #3
	add r2, r2, r0
	lsl r2, r2, #2
	add r2, r2, r3
	ldrb r2, [r2]
	lsl r2, r2, #7
	ldr r3, _0801C6D8  @ =gUnknown_085F6390
	add r2, r2, r3
	str r2, [r4]
	ldr r7, _0801C6DC  @ =gUnknown_0300192C
	mov r10, r7
	mov r3, r10
	ldrh r2, [r3]
	ldr r3, _0801C6E0  @ =OBJ_VRAM0
	add r2, r2, r3
	str r2, [r4, #4]
	ldr r2, _0801C6E4  @ =0x84000020
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	ldr r2, _0801C6E8  @ =gUnknown_085F6388
	str r2, [r4]
	ldr r7, _0801C6EC  @ =0x030000BE
	mov r8, r7
	mov r3, r8
	ldrh r2, [r3]
	lsl r2, r2, #3
	ldr r6, _0801C6F0  @ =gOamData
	add r2, r2, r6
	str r2, [r4, #4]
	ldr r2, _0801C6F4  @ =0x84000002
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	ldrh r4, [r3]
	lsl r4, r4, #3
	add r4, r4, r6
	ldrh r5, [r4, #4]
	lsl r3, r5, #22
	ldr r7, _0801C6F8  @ =gUnknown_03001930
	mov r9, r7
	lsr r3, r3, #22
	mov r2, r9
	ldrh r2, [r2]
	add r3, r3, r2
	ldr r7, _0801C6FC  @ =0x000003FF
	and r3, r3, r7
	ldr r2, _0801C700  @ =0xFFFFFC00
	and r2, r2, r5
	orr r2, r2, r3
	strh r2, [r4, #4]
	mov r2, r8
	ldrh r3, [r2]
	lsl r3, r3, #3
	add r3, r3, r6
	lsl r1, r1, #16
	ldr r2, _0801C704  @ =gUnknown_080797B8
	add r0, r0, r2
	asr r1, r1, #16
	ldrb r0, [r0]
	add r1, r1, r0
	ldr r7, _0801C708  @ =0x000001FF
	add r0, r7, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0801C70C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldr r0, _0801C710  @ =0x030000C7
	ldrb r0, [r0]
	mov r5, r10
	mov r3, r8
	mov r4, r9
	cmp r0, #0
	beq _0801C71C
	ldr r0, _0801C714  @ =0x030000C8
	ldrb r0, [r0]
	cmp r0, #29
	bls _0801C71C
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r2, _0801C718  @ =gUnknown_08076AD8
	ldr r7, [sp]
	lsl r0, r7, #1
	add r0, r0, r2
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #23
	mov r2, r12
	sub r0, r2, r0
	strb r0, [r1]
	b _0801C726
	.byte 0x00
	.byte 0x00
_0801C6CC:
	.4byte 0x030000C6
_0801C6D0:
	.4byte REG_DMA3SAD
_0801C6D4:
	.4byte gUnknown_085F61B4
_0801C6D8:
	.4byte gUnknown_085F6390
_0801C6DC:
	.4byte gUnknown_0300192C
_0801C6E0:
	.4byte OBJ_VRAM0
_0801C6E4:
	.4byte 0x84000020
_0801C6E8:
	.4byte gUnknown_085F6388
_0801C6EC:
	.4byte 0x030000BE
_0801C6F0:
	.4byte gOamData
_0801C6F4:
	.4byte 0x84000002
_0801C6F8:
	.4byte gUnknown_03001930
_0801C6FC:
	.4byte 0x000003FF
_0801C700:
	.4byte 0xFFFFFC00
_0801C704:
	.4byte gUnknown_080797B8
_0801C708:
	.4byte 0x000001FF
_0801C70C:
	.4byte 0xFFFFFE00
_0801C710:
	.4byte 0x030000C7
_0801C714:
	.4byte 0x030000C8
_0801C718:
	.4byte gUnknown_08076AD8
_0801C71C:
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r7, r12
	strb r7, [r0]
_0801C726:
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4]
	add r0, r0, #4
	strh r0, [r4]
	ldrh r0, [r5]
	add r0, r0, #128
	strh r0, [r5]
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C5E0

	THUMB_FUNC_START sub_0801C758
sub_0801C758: @ 0x0801C758
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _0801C814  @ =0x030000C6
	ldrb r3, [r2]
	lsr r3, r3, #2
	lsl r2, r3, #8
	sub r2, r2, r3
	add r2, r1, r2
	lsl r2, r2, #6
	mov r12, r2
	mov r2, #255
	mov r3, r12
	and r3, r3, r2
	mov r12, r3
	ldr r3, _0801C818  @ =REG_DMA3SAD
	ldr r4, _0801C81C  @ =gUnknown_080C87B0
	lsl r2, r0, #3
	add r2, r2, r0
	lsl r2, r2, #2
	add r2, r2, r4
	ldrb r0, [r2]
	lsl r0, r0, #7
	ldr r2, _0801C820  @ =gUnknown_080C8E30
	add r0, r0, r2
	str r0, [r3]
	ldr r7, _0801C824  @ =gUnknown_0300192C
	mov r9, r7
	mov r2, r9
	ldrh r0, [r2]
	ldr r2, _0801C828  @ =OBJ_VRAM0
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0801C82C  @ =0x84000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0801C830  @ =gUnknown_080C8E28
	str r0, [r3]
	ldr r6, _0801C834  @ =0x030000BE
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801C838  @ =gOamData
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _0801C83C  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r5
	ldrh r4, [r3, #4]
	lsl r2, r4, #22
	ldr r7, _0801C840  @ =gUnknown_03001930
	mov r8, r7
	lsr r2, r2, #22
	mov r0, r8
	ldrh r0, [r0]
	add r2, r2, r0
	ldr r7, _0801C844  @ =0x000003FF
	add r0, r7, #0
	and r2, r2, r0
	ldr r0, _0801C848  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r2
	strh r0, [r3, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r0, _0801C84C  @ =gUnknown_080797A8
	add r1, r1, r0
	ldrb r3, [r1]
	ldrh r1, [r2, #2]
	ldr r0, _0801C850  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #2]
	ldr r0, _0801C854  @ =0x030000C0
	ldrb r2, [r0]
	mov r4, r9
	mov r3, r8
	cmp r2, #0
	beq _0801C858
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, #33
	sub r0, r0, r2
	strb r0, [r1]
	b _0801C872
_0801C814:
	.4byte 0x030000C6
_0801C818:
	.4byte REG_DMA3SAD
_0801C81C:
	.4byte gUnknown_080C87B0
_0801C820:
	.4byte gUnknown_080C8E30
_0801C824:
	.4byte gUnknown_0300192C
_0801C828:
	.4byte OBJ_VRAM0
_0801C82C:
	.4byte 0x84000020
_0801C830:
	.4byte gUnknown_080C8E28
_0801C834:
	.4byte 0x030000BE
_0801C838:
	.4byte gOamData
_0801C83C:
	.4byte 0x84000002
_0801C840:
	.4byte gUnknown_03001930
_0801C844:
	.4byte 0x000003FF
_0801C848:
	.4byte 0xFFFFFC00
_0801C84C:
	.4byte gUnknown_080797A8
_0801C850:
	.4byte 0xFFFFFE00
_0801C854:
	.4byte 0x030000C0
_0801C858:
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _0801C8B4  @ =gUnknown_08076AD8
	mov r7, r12
	lsl r0, r7, #1
	add r0, r0, r1
	ldrh r1, [r0]
	lsl r1, r1, #16
	asr r1, r1, #23
	mov r0, #33
	sub r0, r0, r1
	strb r0, [r2]
_0801C872:
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #144
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r3]
	add r0, r0, #4
	strh r0, [r3]
	ldrh r0, [r4]
	add r0, r0, #128
	strh r0, [r4]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801C8B4:
	.4byte gUnknown_08076AD8
	THUMB_FUNC_END sub_0801C758

	THUMB_FUNC_START sub_0801C8B8
sub_0801C8B8: @ 0x0801C8B8
	push {r4-r7,lr}
	sub sp, sp, #12
	ldr r0, _0801C8CC  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801C8D4
	ldr r0, _0801C8D0  @ =gUnknown_080797C8
	b _0801C8D6
_0801C8CC:
	.4byte gLevelType
_0801C8D0:
	.4byte gUnknown_080797C8
_0801C8D4:
	ldr r0, _0801C900  @ =gUnknown_080797E0
_0801C8D6:
	ldr r2, _0801C904  @ =gNextLevelInLevelTable
	mov r3, #18
	ldrsh r1, [r2, r3]
	lsl r1, r1, #2
	add r1, r1, r0
	ldrh r5, [r1]
	ldrh r7, [r1, #2]
	ldr r4, _0801C908  @ =0x030000C7
	ldrb r3, [r4]
	cmp r3, #0
	bne _0801C910
	ldr r1, _0801C90C  @ =0x030000C8
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801C946
	add r0, r3, #1
	strb r0, [r4]
	b _0801C946
_0801C900:
	.4byte gUnknown_080797E0
_0801C904:
	.4byte gNextLevelInLevelTable
_0801C908:
	.4byte 0x030000C7
_0801C90C:
	.4byte 0x030000C8
_0801C910:
	ldr r1, _0801C974  @ =0x030000C8
	ldrb r0, [r1]
	cmp r0, #39
	bhi _0801C946
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #40
	bne _0801C946
	ldr r1, _0801C978  @ =gUnknown_0807976C
	mov r3, #18
	ldrsh r0, [r2, r3]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0801C946:
	ldr r0, _0801C97C  @ =0x030000C7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C980
	mov r4, #0
	lsl r6, r5, #16
	lsl r5, r7, #16
_0801C954:
	lsl r0, r4, #24
	lsr r0, r0, #24
	asr r1, r6, #16
	asr r2, r5, #16
	bl sub_0801C5E0
	lsl r0, r4, #16
	mov r3, #128
	lsl r3, r3, #9
	add r0, r0, r3
	lsr r4, r0, #16
	asr r0, r0, #16
	cmp r0, #12
	ble _0801C954
	b _0801C9A2
	.byte 0x00
	.byte 0x00
_0801C974:
	.4byte 0x030000C8
_0801C978:
	.4byte gUnknown_0807976C
_0801C97C:
	.4byte 0x030000C7
_0801C980:
	mov r4, #0
	lsl r6, r5, #16
	lsl r5, r7, #16
_0801C986:
	lsl r0, r4, #24
	lsr r0, r0, #24
	asr r1, r6, #16
	asr r2, r5, #16
	bl sub_0801C5E0
	lsl r0, r4, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r4, r0, #16
	asr r0, r0, #16
	cmp r0, #5
	ble _0801C986
_0801C9A2:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C8B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START boss_clear_loop
boss_clear_loop: @ 0x0801C9AC
	push {r4-r6,lr}
	sub sp, sp, #20
	ldr r0, _0801CAC0  @ =0x030000C4
	ldrb r3, [r0]
	cmp r3, #0
	bne _0801C9BA
	b _0801CB00
_0801C9BA:
	add r1, sp, #12
	mov r0, #160
	strh r0, [r1]
	ldr r1, _0801CAC4  @ =REG_DMA3SAD
	add r0, sp, #12
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801CAC8  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, #160
	str r0, [sp, #16]
	add r0, sp, #16
	str r0, [r1]
	ldr r0, _0801CACC  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _0801CAD0  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _0801CAD4  @ =gUnknown_03001930
	ldr r2, _0801CAD8  @ =gUnknown_0300192C
	ldr r1, _0801CADC  @ =0x030000BE
	mov r0, #0
	strh r0, [r1]
	strh r0, [r2]
	strh r0, [r3]
	ldr r0, _0801CAE0  @ =gUnknown_030009D8
	ldrh r1, [r0]
	add r2, r0, #0
	cmp r1, #59
	bls _0801CA2A
	mov r1, #0
	ldr r5, _0801CAE4  @ =gUnknown_080797B0
_0801CA00:
	lsl r4, r1, #16
	asr r4, r4, #16
	add r0, r4, r5
	ldrb r0, [r0]
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_0801C758
	add r4, r4, #1
	lsl r4, r4, #16
	lsr r1, r4, #16
	asr r4, r4, #16
	cmp r4, #7
	ble _0801CA00
	ldr r1, _0801CAE8  @ =0x030000C0
	ldrb r0, [r1]
	ldr r2, _0801CAE0  @ =gUnknown_030009D8
	cmp r0, #0
	beq _0801CA2A
	sub r0, r0, #5
	strb r0, [r1]
_0801CA2A:
	ldrh r0, [r2]
	cmp r0, #119
	bhi _0801CA32
	b _0801CB5A
_0801CA32:
	ldr r5, _0801CAEC  @ =gUnknown_08079868
	ldr r4, _0801CAF0  @ =0x030000C1
	ldrb r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r6, [r0]
	bl sub_0801C42C
	ldr r2, _0801CAF4  @ =gUnknown_085DED1C
	ldr r0, _0801CAF8  @ =0x030000C2
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r2, #8
	add r0, r0, r2
	ldr r0, [r0]
	bl sub_0801B2CC
	mov r1, #0
	ldrb r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r0, [r0, #4]
	cmp r1, r0
	bge _0801CA88
_0801CA66:
	lsl r4, r1, #16
	asr r4, r4, #16
	lsl r0, r4, #3
	add r0, r6, r0
	bl sub_0801C51C
	add r4, r4, #1
	lsl r4, r4, #16
	lsr r1, r4, #16
	asr r4, r4, #16
	ldr r0, _0801CAF0  @ =0x030000C1
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r0, [r0, #4]
	cmp r4, r0
	blt _0801CA66
_0801CA88:
	ldr r1, _0801CAF8  @ =0x030000C2
	ldr r2, _0801CAFC  @ =0x030000C3
	ldr r3, _0801CAF4  @ =gUnknown_085DED1C
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _0801CB5A
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #18
	blt _0801CAAC
	mov r0, #0
	strb r0, [r1]
_0801CAAC:
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1, #1]
	strb r0, [r2]
	b _0801CB5A
	.byte 0x00
	.byte 0x00
_0801CAC0:
	.4byte 0x030000C4
_0801CAC4:
	.4byte REG_DMA3SAD
_0801CAC8:
	.4byte 0x81000100
_0801CACC:
	.4byte gOamData
_0801CAD0:
	.4byte 0x85000100
_0801CAD4:
	.4byte gUnknown_03001930
_0801CAD8:
	.4byte gUnknown_0300192C
_0801CADC:
	.4byte 0x030000BE
_0801CAE0:
	.4byte gUnknown_030009D8
_0801CAE4:
	.4byte gUnknown_080797B0
_0801CAE8:
	.4byte 0x030000C0
_0801CAEC:
	.4byte gUnknown_08079868
_0801CAF0:
	.4byte 0x030000C1
_0801CAF4:
	.4byte gUnknown_085DED1C
_0801CAF8:
	.4byte 0x030000C2
_0801CAFC:
	.4byte 0x030000C3
_0801CB00:
	add r1, sp, #12
	mov r0, #160
	strh r0, [r1]
	ldr r1, _0801CB74  @ =REG_DMA3SAD
	add r0, sp, #12
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801CB78  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, #160
	str r0, [sp, #16]
	add r0, sp, #16
	str r0, [r1]
	ldr r0, _0801CB7C  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _0801CB80  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801CB84  @ =gUnknown_030009D8
	ldrh r4, [r0]
	cmp r4, #119
	bls _0801CB5A
	ldr r2, _0801CB88  @ =gUnknown_03001930
	ldr r1, _0801CB8C  @ =gUnknown_0300192C
	ldr r0, _0801CB90  @ =0x030000BE
	strh r3, [r0]
	strh r3, [r1]
	strh r3, [r2]
	cmp r4, #120
	bne _0801CB56
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #248
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0801CB56:
	bl sub_0801C8B8
_0801CB5A:
	ldr r1, _0801CB74  @ =REG_DMA3SAD
	ldr r0, _0801CB7C  @ =gOamData
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801CB94  @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #20
	pop {r4-r6}
	pop {r0}
	bx r0
_0801CB74:
	.4byte REG_DMA3SAD
_0801CB78:
	.4byte 0x81000100
_0801CB7C:
	.4byte gOamData
_0801CB80:
	.4byte 0x85000100
_0801CB84:
	.4byte gUnknown_030009D8
_0801CB88:
	.4byte gUnknown_03001930
_0801CB8C:
	.4byte gUnknown_0300192C
_0801CB90:
	.4byte 0x030000BE
_0801CB94:
	.4byte 0x84000100
	THUMB_FUNC_END boss_clear_loop

	THUMB_FUNC_START boss_clear_end
boss_clear_end: @ 0x0801CB98
	bx lr
	THUMB_FUNC_END boss_clear_end
	.byte 0x00
	.byte 0x00
