	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_08038600
sub_08038600: @ 0x08038600
	push {r4-r7,lr}
	ldr r6, _08038654  @ =gLevelType
	ldr r0, _08038658  @ =gUnknown_08706FC8
	add r4, r0, #4
	mov r5, #15
_0803860A:
	ldrb r3, [r4, #10]
	cmp r3, #0
	ble _0803863E
	ldrb r2, [r4, #11]
	sub r3, r3, #1
	sub r2, r2, #1
	cmp r2, #29
	bls _0803861C
	mov r2, #0
_0803861C:
	ldr r0, _0803865C  @ =gUnknown_03000924
	ldr r1, [r0]
	lsl r2, r2, #2
	lsl r0, r3, #4
	sub r0, r0, r3
	lsl r0, r0, #3
	add r0, r0, r1
	add r2, r2, r0
	ldr r0, [r2]
	cmp r0, #0
	bne _0803863E
	ldrh r0, [r4]
	add r0, r0, #1
	mov r1, #128
	lsl r1, r1, #8
	orr r0, r0, r1
	str r0, [r2]
_0803863E:
	add r4, r4, #36
	sub r5, r5, #1
	cmp r5, #0
	bge _0803860A
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #4
	bne _08038664
	ldr r6, _08038660  @ =gBossOneSpriteTableData
	b _08038680
	.byte 0x00
	.byte 0x00
_08038654:
	.4byte gLevelType
_08038658:
	.4byte gUnknown_08706FC8
_0803865C:
	.4byte gUnknown_03000924
_08038660:
	.4byte gBossOneSpriteTableData
_08038664:
	cmp r0, #5
	bne _08038670
	ldr r6, _0803866C  @ =gBossTwoSpriteTableData
	b _08038680
_0803866C:
	.4byte gBossTwoSpriteTableData
_08038670:
	ldr r0, _080386D0  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r1, [r0, r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, _080386D4  @ =gWorldSpriteTableData
	add r6, r0, r1
_08038680:
	mov r5, #0
	ldrh r0, [r6, #8]
	cmp r5, r0
	bge _080386CA
	ldr r0, [r6]
	ldr r7, _080386D8  @ =gUnknown_03000924
	add r4, r0, #4
_0803868E:
	ldrb r3, [r4, #10]
	cmp r3, #0
	ble _080386C0
	ldrb r2, [r4, #11]
	sub r3, r3, #1
	sub r2, r2, #1
	cmp r2, #29
	bls _080386A0
	mov r2, #0
_080386A0:
	ldr r1, [r7]
	lsl r2, r2, #2
	lsl r0, r3, #4
	sub r0, r0, r3
	lsl r0, r0, #3
	add r0, r0, r1
	add r2, r2, r0
	ldr r0, [r2]
	cmp r0, #0
	bne _080386C0
	ldrh r0, [r4]
	add r0, r0, #1
	mov r1, #128
	lsl r1, r1, #8
	orr r0, r0, r1
	str r0, [r2]
_080386C0:
	add r4, r4, #36
	add r5, r5, #1
	ldrh r2, [r6, #8]
	cmp r5, r2
	blt _0803868E
_080386CA:
	pop {r4-r7}
	pop {r0}
	bx r0
_080386D0:
	.4byte gNextLevelInLevelTable
_080386D4:
	.4byte gWorldSpriteTableData
_080386D8:
	.4byte gUnknown_03000924
	THUMB_FUNC_END sub_08038600

	THUMB_FUNC_START sub_080386DC
sub_080386DC: @ 0x080386DC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r0, _08038744  @ =gVRAMCurrTileNum_03001930
	mov r4, #0
	strh r4, [r0]
	ldr r0, _08038748  @ =gObjVRAMCopyOffset_0300192C
	strh r4, [r0]
	ldr r0, _0803874C  @ =0x03001C7C
	strb r4, [r0]
	ldr r0, _08038750  @ =0x0300197C
	strb r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r0, _08038754  @ =gUnknown_03001940
	ldr r1, [r0]
	ldr r2, _08038758  @ =0x010006E0
	mov r0, sp
	bl CpuSet
	mov r0, sp
	add r0, r0, #2
	strh r4, [r0]
	ldr r1, _0803875C  @ =0x03001A54
	ldr r1, [r1]
	ldr r2, _08038760  @ =0x01000028
	bl CpuSet
	ldr r1, _08038764  @ =0x03001924
	mov r2, #1
	neg r2, r2
	add r0, r2, #0
	strb r0, [r1]
	ldr r1, _08038768  @ =0x030019F0
	mov r0, #255
	strb r0, [r1]
	ldr r1, _0803876C  @ =0x03001970
	ldr r0, _08038770  @ =0x030019EC
	strb r4, [r0]
	strb r4, [r1]
	ldr r0, _08038774  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bne _0803877C
	ldr r1, _08038778  @ =0x03001988
	mov r0, #136
	b _08038780
_08038744:
	.4byte gVRAMCurrTileNum_03001930
_08038748:
	.4byte gObjVRAMCopyOffset_0300192C
_0803874C:
	.4byte 0x03001C7C
_08038750:
	.4byte 0x0300197C
_08038754:
	.4byte gUnknown_03001940
_08038758:
	.4byte 0x010006E0
_0803875C:
	.4byte 0x03001A54
_08038760:
	.4byte 0x01000028
_08038764:
	.4byte 0x03001924
_08038768:
	.4byte 0x030019F0
_0803876C:
	.4byte 0x03001970
_08038770:
	.4byte 0x030019EC
_08038774:
	.4byte gLevelType
_08038778:
	.4byte 0x03001988
_0803877C:
	ldr r1, _080387D8  @ =0x03001988
	mov r0, #90
_08038780:
	str r0, [r1]
	ldr r0, _080387DC  @ =0x03001958
	mov r1, #0
	str r1, [r0]
	ldr r2, _080387E0  @ =0x03001A58
	mov r0, #200
	lsl r0, r0, #7
	str r0, [r2]
	ldr r2, _080387E4  @ =0x03001950
	ldr r0, _080387E8  @ =0x0300198C
	strb r1, [r0]
	strb r1, [r2]
	ldr r0, _080387EC  @ =0x030019FC
	strb r1, [r0]
	ldr r0, _080387F0  @ =0x0300194C
	strb r1, [r0]
	ldr r0, _080387F4  @ =gMainState
	ldr r1, [r0]
	sub r0, r1, #5
	cmp r0, #1
	bhi _08038808
	ldr r4, _080387F8  @ =gUnknown_030012F8
	mov r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0803883A
	ldr r2, _080387FC  @ =gTutorialDemoInputTable
	ldr r0, _08038800  @ =gCurrentWorld
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r1, r0, #3
	sub r1, r1, r0
	ldr r0, _08038804  @ =gNextLevelID
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, #1
	asr r0, r0, #1
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	b _08038826
_080387D8:
	.4byte 0x03001988
_080387DC:
	.4byte 0x03001958
_080387E0:
	.4byte 0x03001A58
_080387E4:
	.4byte 0x03001950
_080387E8:
	.4byte 0x0300198C
_080387EC:
	.4byte 0x030019FC
_080387F0:
	.4byte 0x0300194C
_080387F4:
	.4byte gMainState
_080387F8:
	.4byte gUnknown_030012F8
_080387FC:
	.4byte gTutorialDemoInputTable
_08038800:
	.4byte gCurrentWorld
_08038804:
	.4byte gNextLevelID
_08038808:
	cmp r1, #2
	bne _0803883A
	ldr r4, _08038894  @ =gUnknown_030012F8
	mov r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0803883A
	ldr r1, _08038898  @ =gTitleDemoInputTable
	ldr r0, _0803889C  @ =gCurrentWorld
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
_08038826:
	ldr r0, [r1]
	cmp r0, #0
	bge _08038836
	add r0, r1, #4
	ldr r1, _080388A0  @ =0x02020000
	mov r2, #0
	bl load_compressed_data
_08038836:
	mov r0, #1
	strh r0, [r4]
_0803883A:
	ldr r0, _080388A4  @ =gUnknown_030019E8
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080388A8  @ =gUnknown_030019B0
	strb r1, [r0]
	ldr r0, _080388AC  @ =gUnknown_03001994
	strb r1, [r0]
	ldr r0, _080388B0  @ =gUnknown_0300199C
	strb r1, [r0]
	ldr r4, _080388B4  @ =gVRAMCurrTileNum_03001930
	ldr r5, _080388B8  @ =gObjVRAMCopyOffset_0300192C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08042FB0
	ldr r1, _080388BC  @ =gCurrentEnemyScore
	mov r0, #0
	str r0, [r1]
	ldr r0, _080388C0  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #10
	and r1, r1, r0
	cmp r1, #0
	bne _08038878
	ldr r0, _080388C4  @ =gCollectedLevelItems
	strb r1, [r0, #5]
	strb r1, [r0, #4]
	strb r1, [r0, #3]
	strb r1, [r0, #2]
	strb r1, [r0, #1]
	strb r1, [r0]
_08038878:
	bl sub_08057294
	ldr r0, _080388C8  @ =gMainState
	ldr r0, [r0]
	cmp r0, #10
	beq _080388F4
	sub r0, r0, #5
	cmp r0, #1
	bhi _080388CC
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0800ED18
	b _080388D4
_08038894:
	.4byte gUnknown_030012F8
_08038898:
	.4byte gTitleDemoInputTable
_0803889C:
	.4byte gCurrentWorld
_080388A0:
	.4byte 0x02020000
_080388A4:
	.4byte gUnknown_030019E8
_080388A8:
	.4byte gUnknown_030019B0
_080388AC:
	.4byte gUnknown_03001994
_080388B0:
	.4byte gUnknown_0300199C
_080388B4:
	.4byte gVRAMCurrTileNum_03001930
_080388B8:
	.4byte gObjVRAMCopyOffset_0300192C
_080388BC:
	.4byte gCurrentEnemyScore
_080388C0:
	.4byte gNextLevelInLevelTable
_080388C4:
	.4byte gCollectedLevelItems
_080388C8:
	.4byte gMainState
_080388CC:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_080091A8
_080388D4:
	ldr r0, _080389D0  @ =gVRAMCurrTileNum_03001930
	ldr r1, _080389D4  @ =gObjVRAMCopyOffset_0300192C
	bl sub_08042508
	ldr r1, _080389D8  @ =gSpriteHorizontalOffset
	ldr r0, _080389DC  @ =gCameraHorizontalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	strh r0, [r1]
	ldr r1, _080389E0  @ =gUnknown_030012F4
	ldr r0, _080389E4  @ =gCameraVerticalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	strh r0, [r1]
_080388F4:
	ldr r1, _080389E8  @ =0x03001A70
	mov r0, #0
	strb r0, [r1, #21]
	strb r0, [r1, #23]
	strb r0, [r1, #24]
	mov r3, #0
	ldr r7, _080389EC  @ =gUnknown_03001944
	ldr r0, _080389F0  @ =gUnknown_03001A4C
	mov r10, r0
	ldr r1, _080389F4  @ =gUnknown_03001A3C
	mov r12, r1
	ldr r2, _080389F8  @ =0x03001980
	mov r8, r2
	ldr r0, _080389FC  @ =gUnknown_03001938
	mov r9, r0
	ldr r5, _08038A00  @ =gUnknown_03001940
	mov r4, #0
	mov r6, #176
_08038918:
	ldr r0, [r5]
	add r1, r3, #0
	mul r1, r6, r1
	add r0, r1, r0
	add r0, r0, #152
	strb r4, [r0]
	ldr r0, [r5]
	add r0, r1, r0
	add r0, r0, #153
	strb r4, [r0]
	ldr r0, [r5]
	add r0, r1, r0
	add r0, r0, #53
	strb r4, [r0]
	ldr r0, [r5]
	add r1, r1, r0
	add r2, r1, #0
	add r2, r2, #156
	mov r0, #1
	neg r0, r0
	str r0, [r2]
	add r1, r1, #70
	strh r4, [r1]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #19
	bls _08038918
	mov r3, #0
	ldr r5, _08038A04  @ =gUnknown_03001A10
	ldr r4, _08038A08  @ =gUnknown_030019C0
	mov r2, #0
_08038958:
	add r1, r3, r5
	add r0, r3, r4
	strb r2, [r0]
	strb r2, [r1]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #9
	bls _08038958
	mov r0, #0
	strb r0, [r7]
	mov r5, #0
	mov r1, r12
	strh r5, [r1]
	mov r2, r10
	strb r5, [r2]
	mov r0, r8
	strb r5, [r0]
	mov r0, #0
	mov r1, r9
	str r0, [r1]
	ldr r2, _08038A0C  @ =gUnknown_030019A0
	str r0, [r2]
	ldr r0, _08038A10  @ =0x03001A60
	strb r5, [r0]
	ldr r1, _08038A14  @ =0x03001A40
	strb r5, [r1]
	ldr r2, _08038A18  @ =gUnknown_030019A4
	strb r5, [r2]
	mov r4, #1
	ldr r0, _08038A1C  @ =0x03001A50
	strb r4, [r0]
	ldr r1, _08038A20  @ =0x03001978
	strb r5, [r1]
	ldr r2, _08038A24  @ =0x03001A24
	strb r4, [r2]
	ldr r0, _08038A28  @ =gPreviousSwitchState
	strb r4, [r0]
	ldr r1, _08038A2C  @ =gCurrentSwitchState
	strb r4, [r1]
	mov r2, #1
	neg r2, r2
	add r0, r2, #0
	ldr r1, _08038A30  @ =0x03001934
	strb r0, [r1]
	bl sub_08041EF0
	ldr r0, _08038A34  @ =0x03000938
	strb r4, [r0]
	ldr r0, _08038A38  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _08038A40
	ldr r1, _08038A3C  @ =0x03001A20
	mov r0, #7
	strb r0, [r1]
	b _08038A44
	.byte 0x00
	.byte 0x00
_080389D0:
	.4byte gVRAMCurrTileNum_03001930
_080389D4:
	.4byte gObjVRAMCopyOffset_0300192C
_080389D8:
	.4byte gSpriteHorizontalOffset
_080389DC:
	.4byte gCameraHorizontalOffset
_080389E0:
	.4byte gUnknown_030012F4
_080389E4:
	.4byte gCameraVerticalOffset
_080389E8:
	.4byte 0x03001A70
_080389EC:
	.4byte gUnknown_03001944
_080389F0:
	.4byte gUnknown_03001A4C
_080389F4:
	.4byte gUnknown_03001A3C
_080389F8:
	.4byte 0x03001980
_080389FC:
	.4byte gUnknown_03001938
_08038A00:
	.4byte gUnknown_03001940
_08038A04:
	.4byte gUnknown_03001A10
_08038A08:
	.4byte gUnknown_030019C0
_08038A0C:
	.4byte gUnknown_030019A0
_08038A10:
	.4byte 0x03001A60
_08038A14:
	.4byte 0x03001A40
_08038A18:
	.4byte gUnknown_030019A4
_08038A1C:
	.4byte 0x03001A50
_08038A20:
	.4byte 0x03001978
_08038A24:
	.4byte 0x03001A24
_08038A28:
	.4byte gPreviousSwitchState
_08038A2C:
	.4byte gCurrentSwitchState
_08038A30:
	.4byte 0x03001934
_08038A34:
	.4byte 0x03000938
_08038A38:
	.4byte gLevelType
_08038A3C:
	.4byte 0x03001A20
_08038A40:
	ldr r0, _08038AA0  @ =0x03001A20
	strb r5, [r0]
_08038A44:
	ldr r0, _08038AA4  @ =gUnknown_030019D8
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08038AA8  @ =gUnknown_03001A38
	strb r1, [r0]
	ldr r0, _08038AAC  @ =0x03001B60
	strb r1, [r0]
	ldr r0, _08038AB0  @ =0x03001B68
	strb r1, [r0]
	ldr r0, _08038AB4  @ =0x03001B74
	strb r1, [r0]
	ldr r0, _08038AB8  @ =0x03001B5C
	strb r1, [r0]
	ldr r0, _08038ABC  @ =0x03001B64
	strb r1, [r0]
	ldr r0, _08038AC0  @ =0x03001B50
	strb r1, [r0]
	ldr r0, _08038AC4  @ =0x03001B70
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08038AC8  @ =0x03001B58
	strh r1, [r0]
	ldr r0, _08038ACC  @ =0x030019F8
	strb r1, [r0]
	ldr r0, _08038AD0  @ =0x03001A2C
	strb r1, [r0]
	ldr r0, _08038AD4  @ =0x03001920
	strb r1, [r0]
	ldr r2, _08038AD8  @ =0x03001960
	mov r0, #0
	str r0, [r2]
	ldr r0, _08038ADC  @ =0x030019A8
	strb r1, [r0]
	ldr r0, _08038AE0  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #8
	and r1, r1, r0
	cmp r1, #0
	beq _08038AEC
	ldr r2, _08038AE4  @ =gUnknown_03001A1C
	mov r0, #128
	lsl r0, r0, #15
	str r0, [r2]
	ldr r1, _08038AE8  @ =0x03001A48
	mov r0, #5
	b _08038AF4
_08038AA0:
	.4byte 0x03001A20
_08038AA4:
	.4byte gUnknown_030019D8
_08038AA8:
	.4byte gUnknown_03001A38
_08038AAC:
	.4byte 0x03001B60
_08038AB0:
	.4byte 0x03001B68
_08038AB4:
	.4byte 0x03001B74
_08038AB8:
	.4byte 0x03001B5C
_08038ABC:
	.4byte 0x03001B64
_08038AC0:
	.4byte 0x03001B50
_08038AC4:
	.4byte 0x03001B70
_08038AC8:
	.4byte 0x03001B58
_08038ACC:
	.4byte 0x030019F8
_08038AD0:
	.4byte 0x03001A2C
_08038AD4:
	.4byte 0x03001920
_08038AD8:
	.4byte 0x03001960
_08038ADC:
	.4byte 0x030019A8
_08038AE0:
	.4byte gNextLevelInLevelTable
_08038AE4:
	.4byte gUnknown_03001A1C
_08038AE8:
	.4byte 0x03001A48
_08038AEC:
	ldr r2, _08038B10  @ =gUnknown_03001A1C
	str r1, [r2]
	ldr r1, _08038B14  @ =0x03001A48
	mov r0, #18
_08038AF4:
	strb r0, [r1]
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #16
	orr r0, r0, r1
	str r0, [r2]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08038B10:
	.4byte gUnknown_03001A1C
_08038B14:
	.4byte 0x03001A48
	THUMB_FUNC_END sub_080386DC

	THUMB_FUNC_START sub_08038B18
sub_08038B18: @ 0x08038B18
	push {lr}
	ldr r0, _08038B2C  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bne _08038B38
	ldr r3, _08038B30  @ =gBossOneSpriteTableData
	ldr r2, _08038B34  @ =gNextLevelInLevelTable
	b _08038B5C
_08038B2C:
	.4byte gLevelType
_08038B30:
	.4byte gBossOneSpriteTableData
_08038B34:
	.4byte gNextLevelInLevelTable
_08038B38:
	cmp r0, #5
	bne _08038B4C
	ldr r3, _08038B44  @ =gBossTwoSpriteTableData
	ldr r2, _08038B48  @ =gNextLevelInLevelTable
	b _08038B5C
	.byte 0x00
	.byte 0x00
_08038B44:
	.4byte gBossTwoSpriteTableData
_08038B48:
	.4byte gNextLevelInLevelTable
_08038B4C:
	ldr r2, _08038B78  @ =gNextLevelInLevelTable
	mov r0, #18
	ldrsh r1, [r2, r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, _08038B7C  @ =gWorldSpriteTableData
	add r3, r0, r1
_08038B5C:
	ldr r0, [r2, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08038B96
	mov r0, #18
	ldrsh r2, [r2, r0]
	cmp r2, #3
	bne _08038B80
	mov r0, #52
	bl load_predefined_palette
	b _08038B9E
	.byte 0x00
	.byte 0x00
_08038B78:
	.4byte gNextLevelInLevelTable
_08038B7C:
	.4byte gWorldSpriteTableData
_08038B80:
	cmp r2, #4
	bne _08038B88
	mov r0, #53
	b _08038B8E
_08038B88:
	cmp r2, #5
	bne _08038B96
	mov r0, #54
_08038B8E:
	mov r1, #2
	bl load_predefined_palette
	b _08038B9E
_08038B96:
	ldr r0, [r3, #4]
	mov r1, #2
	bl load_predefined_palette
_08038B9E:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08038B18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08038BA4
sub_08038BA4: @ 0x08038BA4
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #49
	bhi _08038BD8
	mov r1, #0
	ldr r4, _08038BD4  @ =gUnknown_08706FC8
_08038BB2:
	lsl r0, r1, #16
	asr r1, r0, #16
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r4
	ldrh r0, [r2, #4]
	cmp r0, r3
	beq _08038BFC
	add r0, r1, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #15
	ble _08038BB2
	b _08038C3C
	.byte 0x00
	.byte 0x00
_08038BD4:
	.4byte gUnknown_08706FC8
_08038BD8:
	ldr r0, _08038BE8  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bne _08038BF0
	ldr r0, _08038BEC  @ =gBossOneSpriteTableData
	b _08038C10
_08038BE8:
	.4byte gLevelType
_08038BEC:
	.4byte gBossOneSpriteTableData
_08038BF0:
	cmp r0, #5
	bne _08038C00
	ldr r0, _08038BF8  @ =gBossTwoSpriteTableData
	b _08038C10
_08038BF8:
	.4byte gBossTwoSpriteTableData
_08038BFC:
	ldrb r0, [r2, #16]
	b _08038C3E
_08038C00:
	ldr r0, _08038C44  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r1, [r0, r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, _08038C48  @ =gWorldSpriteTableData
	add r0, r0, r1
_08038C10:
	mov r1, #0
	ldrh r2, [r0, #8]
	cmp r1, r2
	bge _08038C3C
	ldr r5, [r0]
	add r4, r3, #0
	add r3, r2, #0
_08038C1E:
	lsl r0, r1, #16
	asr r1, r0, #16
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r5
	ldrh r0, [r2, #4]
	cmp r0, r4
	beq _08038BFC
	add r0, r1, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, r3
	blt _08038C1E
_08038C3C:
	mov r0, #0
_08038C3E:
	pop {r4,r5}
	pop {r1}
	bx r1
_08038C44:
	.4byte gNextLevelInLevelTable
_08038C48:
	.4byte gWorldSpriteTableData
	THUMB_FUNC_END sub_08038BA4

	THUMB_FUNC_START sub_08038C4C
sub_08038C4C: @ 0x08038C4C
	push {lr}
	ldr r0, _08038C68  @ =gMainState
	ldr r0, [r0]
	cmp r0, #5
	beq _08038C5A
	cmp r0, #2
	bne _08038C70
_08038C5A:
	ldr r0, _08038C6C  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08038D18
	b _08038C7C
_08038C68:
	.4byte gMainState
_08038C6C:
	.4byte gNextLevelInLevelTable
_08038C70:
	ldr r3, _08038C8C  @ =gNextLevelInLevelTable
	ldr r1, [r3, #32]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08038C98
_08038C7C:
	ldr r0, _08038C90  @ =gVRAMCurrTileNum_03001930
	ldr r1, _08038C94  @ =gObjVRAMCopyOffset_0300192C
	bl sub_08042580
	bl sub_0804A794
	b _08038D18
	.byte 0x00
	.byte 0x00
_08038C8C:
	.4byte gNextLevelInLevelTable
_08038C90:
	.4byte gVRAMCurrTileNum_03001930
_08038C94:
	.4byte gObjVRAMCopyOffset_0300192C
_08038C98:
	ldr r0, _08038CB4  @ =gLevelType
	mov r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #1
	bne _08038CD2
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	bne _08038CC0
	ldr r0, _08038CB8  @ =gVRAMCurrTileNum_03001930
	ldr r1, _08038CBC  @ =gObjVRAMCopyOffset_0300192C
	bl sub_08042580
	b _08038D18
_08038CB4:
	.4byte gLevelType
_08038CB8:
	.4byte gVRAMCurrTileNum_03001930
_08038CBC:
	.4byte gObjVRAMCopyOffset_0300192C
_08038CC0:
	mov r1, #18
	ldrsh r0, [r3, r1]
	cmp r0, #2
	beq _08038CE2
	cmp r0, #1
	beq _08038CEC
	cmp r0, #4
	beq _08038CF6
	b _08038CFC
_08038CD2:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _08038D06
	mov r1, #18
	ldrsh r0, [r3, r1]
	cmp r0, #2
	bne _08038CE8
_08038CE2:
	bl sub_0805DCC4
	b _08038D18
_08038CE8:
	cmp r0, #1
	bne _08038CF2
_08038CEC:
	bl sub_0805B274
	b _08038D18
_08038CF2:
	cmp r0, #4
	bne _08038CFC
_08038CF6:
	bl sub_0806225C
	b _08038D18
_08038CFC:
	cmp r0, #5
	bne _08038D18
	bl sub_0806360C
	b _08038D18
_08038D06:
	cmp r2, #4
	bne _08038D10
	bl sub_08063A8C
	b _08038D18
_08038D10:
	cmp r2, #5
	bne _08038D18
	bl sub_08067254
_08038D18:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08038C4C

	THUMB_FUNC_START get_sprite_table_08038D1C
get_sprite_table_08038D1C: @ 0x08038D1C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r0, _08038D34  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bne _08038D3C
	ldr r3, _08038D38  @ =gBossOneSpriteTableData
	b _08038D58
	.byte 0x00
	.byte 0x00
_08038D34:
	.4byte gLevelType
_08038D38:
	.4byte gBossOneSpriteTableData
_08038D3C:
	cmp r0, #5
	bne _08038D48
	ldr r3, _08038D44  @ =gBossTwoSpriteTableData
	b _08038D58
_08038D44:
	.4byte gBossTwoSpriteTableData
_08038D48:
	ldr r0, _08038DB0  @ =gNextLevelInLevelTable
	mov r3, #18
	ldrsh r1, [r0, r3]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, _08038DB4  @ =gWorldSpriteTableData
	add r3, r0, r1
_08038D58:
	cmp r2, #49
	bhi _08038DC0
	mov r1, #0
	lsl r6, r2, #16
	ldr r5, _08038DB8  @ =gUnknown_08706FC8
	lsr r4, r6, #16
_08038D64:
	lsl r0, r1, #16
	asr r1, r0, #16
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r5
	ldrh r0, [r2, #4]
	cmp r0, r4
	beq _08038DBC
	add r0, r1, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #15
	ble _08038D64
	mov r1, #0
	ldrh r0, [r3, #8]
	cmp r1, r0
	bge _08038DEC
	ldr r5, [r3]
	lsr r4, r6, #16
	add r3, r0, #0
_08038D90:
	lsl r0, r1, #16
	asr r1, r0, #16
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r5
	ldrh r0, [r2, #4]
	cmp r0, r4
	beq _08038DBC
	add r0, r1, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, r3
	blt _08038D90
	b _08038DEC
_08038DB0:
	.4byte gNextLevelInLevelTable
_08038DB4:
	.4byte gWorldSpriteTableData
_08038DB8:
	.4byte gUnknown_08706FC8
_08038DBC:
	add r0, r2, #0
	b _08038DEE
_08038DC0:
	mov r1, #0
	ldrh r0, [r3, #8]
	cmp r1, r0
	bge _08038DEC
	ldr r5, [r3]
	add r4, r2, #0
	add r3, r0, #0
_08038DCE:
	lsl r0, r1, #16
	asr r1, r0, #16
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r5
	ldrh r0, [r2, #4]
	cmp r0, r4
	beq _08038DBC
	add r0, r1, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, r3
	blt _08038DCE
_08038DEC:
	mov r0, #0
_08038DEE:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END get_sprite_table_08038D1C

	THUMB_FUNC_START spawn_sprite_08038DF4
spawn_sprite_08038DF4: @ 0x08038DF4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #28
	ldr r4, [sp, #60]
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r6, r5, #0
	lsl r1, r1, #24
	lsr r7, r1, #24
	lsl r2, r2, #16
	lsr r2, r2, #16
	str r2, [sp, #8]
	lsl r3, r3, #16
	lsr r3, r3, #16
	str r3, [sp, #12]
	lsl r4, r4, #16
	lsr r4, r4, #16
	str r4, [sp, #16]
	cmp r7, #1
	beq _08038E3A
	cmp r7, #10
	bne _08038E44
	ldr r0, _08038E40  @ =0x03001D70
	ldr r1, [sp, #12]
	sub r1, r1, #16
	add r2, r0, #0
	add r2, r2, #154
	strh r1, [r2]
	add r0, r0, #156
	mov r1, sp
	ldrh r1, [r1, #16]
	strh r1, [r0]
_08038E3A:
	mov r0, #255
	b _08039498
	.byte 0x00
	.byte 0x00
_08038E40:
	.4byte 0x03001D70
_08038E44:
	cmp r7, #49
	bhi _08038E62
	ldr r3, [sp, #8]
	lsl r2, r3, #16
	asr r2, r2, #16
	ldr r4, [sp, #16]
	str r4, [sp]
	add r0, r5, #0
	add r1, r7, #0
	ldr r3, [sp, #12]
	bl sub_080394A8
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _08039498
_08038E62:
	add r0, r7, #0
	bl get_sprite_table_08038D1C
	mov r8, r0
	cmp r0, #0
	beq _08038E3A
	cmp r5, #19
	bls _08038EFC
	cmp r7, #170
	beq _08038E86
	cmp r7, #163
	beq _08038E86
	cmp r7, #184
	beq _08038E86
	cmp r7, #158
	beq _08038E86
	cmp r7, #159
	bne _08038EC0
_08038E86:
	mov r6, #19
	mov r9, r6
	ldr r0, _08038EB8  @ =gUnknown_03001940
	ldr r1, [r0]
	ldr r2, _08038EBC  @ =0x00000DA8
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038EFE
	mov r2, #176
_08038E9A:
	mov r0, r9
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	cmp r0, #0
	beq _08038EFE
	mov r0, r9
	mul r0, r2, r0
	add r0, r0, r1
	add r0, r0, #152
	ldrb r0, [r0]
	cmp r0, #0
	bne _08038E9A
	b _08038EFE
_08038EB8:
	.4byte gUnknown_03001940
_08038EBC:
	.4byte 0x00000DA8
_08038EC0:
	mov r3, #1
	mov r9, r3
	ldr r1, _08038EF8  @ =gUnknown_03001940
	ldr r0, [r1]
	mov r4, #164
	lsl r4, r4, #1
	add r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038EFE
	add r3, r1, #0
	mov r2, #176
_08038ED8:
	mov r0, r9
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	cmp r0, #19
	bhi _08038E3A
	ldr r0, [r3]
	mov r1, r9
	mul r1, r2, r1
	add r1, r1, r0
	add r1, r1, #152
	ldrb r0, [r1]
	cmp r0, #0
	bne _08038ED8
	b _08038EFE
_08038EF8:
	.4byte gUnknown_03001940
_08038EFC:
	mov r9, r6
_08038EFE:
	mov r6, r9
	cmp r6, #19
	bhi _08038E3A
	ldr r1, [sp, #8]
	lsl r0, r1, #16
	asr r1, r0, #16
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08038F1C
	mov r2, r8
	ldrh r0, [r2, #10]
	cmp r0, r1
	bgt _08038F2C
	b _08038E3A
_08038F1C:
	ldr r0, _08038FAC  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #20
	and r0, r0, r1
	neg r0, r0
	lsr r0, r0, #31
	str r0, [sp, #8]
_08038F2C:
	ldr r3, _08038FB0  @ =gUnknown_03001940
	mov r12, r3
	mov r4, #176
	mov r1, r9
	mul r1, r4, r1
	ldr r0, [r3]
	add r5, r0, r1
	add r1, r5, #0
	add r1, r1, #152
	mov r2, #0
	mov r0, #1
	strb r0, [r1]
	add r1, r1, #1
	strb r0, [r1]
	add r1, r1, #19
	mov r6, r8
	ldr r0, [r6, #32]
	str r0, [r1]
	ldr r0, [sp, #8]
	lsl r3, r0, #16
	asr r1, r3, #16
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r1, [r6]
	add r1, r1, r0
	mov r10, r1
	add r6, r5, #0
	add r0, r6, #0
	add r0, r0, #154
	strh r2, [r0]
	add r2, r6, #0
	add r2, r2, #61
	mov r1, r9
	strb r1, [r2]
	mov r0, r8
	add r0, r0, #20
	str r0, [r6, #100]
	mov r0, r8
	ldrh r1, [r0, #12]
	add r0, r6, #0
	add r0, r0, #68
	strh r1, [r0]
	ldr r1, [sp, #12]
	lsl r1, r1, #8
	str r1, [sp, #20]
	mov r0, r8
	mov r1, #28
	ldrsh r0, [r0, r1]
	ldr r1, [sp, #20]
	sub r0, r1, r0
	str r0, [r6, #32]
	ldrb r2, [r2]
	add r1, r2, #0
	mul r1, r4, r1
	mov r4, r12
	ldr r0, [r4]
	add r0, r0, r1
	mov r12, r3
	cmp r2, #19
	bls _08038FB4
	mov r2, #0
	b _08038FC6
	.byte 0x00
	.byte 0x00
_08038FAC:
	.4byte gUnknown_03001A1C
_08038FB0:
	.4byte gUnknown_03001940
_08038FB4:
	ldr r0, [r0, #100]
	mov r2, #2
	ldrsh r1, [r0, r2]
	mov r3, #0
	ldrsh r0, [r0, r3]
	sub r1, r1, r0
	asr r1, r1, #8
	add r1, r1, #7
	asr r2, r1, #3
_08038FC6:
	ldr r4, [sp, #16]
	lsl r0, r4, #8
	mov r3, r8
	mov r4, #30
	ldrsh r1, [r3, r4]
	sub r0, r0, r1
	lsl r1, r2, #11
	add r0, r0, r1
	str r0, [r6, #36]
	ldr r1, [r6, #32]
	str r1, [r6, #40]
	str r1, [r6, #16]
	str r0, [r6, #44]
	str r0, [r6, #20]
	mov r0, #0
	str r0, [r6, #92]
	str r0, [r6, #96]
	strb r0, [r6, #2]
	mov r1, #0
	strh r0, [r6, #8]
	strb r1, [r6, #12]
	cmp r7, #109
	bne _08038FFC
	ldr r2, _08038FF8  @ =0x030019F8
	b _0803900E
_08038FF8:
	.4byte 0x030019F8
_08038FFC:
	cmp r7, #116
	bne _08039008
	ldr r2, _08039004  @ =0x03001A2C
	b _0803900E
_08039004:
	.4byte 0x03001A2C
_08039008:
	cmp r7, #117
	bne _08039022
	ldr r2, _0803903C  @ =0x03001920
_0803900E:
	ldrb r1, [r2]
	lsl r0, r1, #4
	sub r0, r0, r1
	lsl r0, r0, #2
	add r1, r6, #0
	add r1, r1, #65
	strb r0, [r1]
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
_08039022:
	cmp r7, #184
	bne _08039040
	mov r0, r12
	asr r3, r0, #16
	mov r1, r8
	str r1, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #184
	bl sub_0806EDD0
	b _08039218
	.byte 0x00
	.byte 0x00
_0803903C:
	.4byte 0x03001920
_08039040:
	cmp r7, #155
	bne _0803907A
	ldr r0, _08039064  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _08039068
	mov r2, r8
	str r2, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #155
	mov r3, r9
	bl falling_brick_spawn_2
	b _08039218
	.byte 0x00
	.byte 0x00
_08039064:
	.4byte gLevelType
_08039068:
	mov r3, r8
	str r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #155
	mov r3, r9
	bl falling_brick_spawn
	b _08039218
_0803907A:
	cmp r7, #156
	bne _080390B2
	ldr r0, _0803909C  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _080390A0
	mov r4, r8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #156
	mov r3, r9
	bl falling_dumbell_spawn_2
	b _08039218
_0803909C:
	.4byte gLevelType
_080390A0:
	mov r0, r8
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #156
	mov r3, r9
	bl falling_dumbell_spawn
	b _08039218
_080390B2:
	cmp r7, #201
	bne _080390C8
	mov r1, r8
	str r1, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #201
	mov r3, r9
	bl falling_barrel_spawn
	b _08039218
_080390C8:
	cmp r7, #157
	bne _08039102
	ldr r0, _080390EC  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _080390F0
	mov r2, r8
	str r2, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #157
	mov r3, r9
	bl falling_barrel_spawn_2
	b _08039218
	.byte 0x00
	.byte 0x00
_080390EC:
	.4byte gLevelType
_080390F0:
	mov r3, r8
	str r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #157
	mov r3, r9
	bl sub_08058764
	b _08039218
_08039102:
	cmp r7, #160
	bne _08039118
	mov r4, r8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #160
	mov r3, r9
	bl sub_0805A87C
	b _08039218
_08039118:
	cmp r7, #174
	bne _0803913C
	mov r0, r8
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #174
	mov r3, r9
	bl sub_0805CAD4
	ldr r0, _08039138  @ =0x03001D00
	ldrb r1, [r0]
	mov r2, #1
	orr r1, r1, r2
	strb r1, [r0]
	b _08039218
_08039138:
	.4byte 0x03001D00
_0803913C:
	cmp r7, #202
	bne _08039160
	mov r1, r8
	str r1, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #202
	mov r3, r9
	bl sub_0805CDBC
	ldr r0, _0803915C  @ =0x03001D00
	ldrb r1, [r0]
	mov r2, #4
	orr r1, r1, r2
	strb r1, [r0]
	b _08039218
_0803915C:
	.4byte 0x03001D00
_08039160:
	cmp r7, #175
	bne _08039176
	mov r2, r8
	str r2, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #175
	mov r3, r9
	bl sub_0805CC48
	b _08039218
_08039176:
	cmp r7, #198
	bne _0803918C
	mov r3, r8
	str r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #198
	mov r3, r9
	bl sub_08064A14
	b _08039218
_0803918C:
	cmp r7, #199
	bne _080391A2
	mov r4, r8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #199
	mov r3, r9
	bl sub_08064E4C
	b _08039218
_080391A2:
	add r0, r7, #0
	add r0, r0, #121
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _080391C0
	mov r0, r8
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, r9
	bl sub_08068160
	b _08039218
_080391C0:
	cmp r7, #177
	bne _080391E0
	mov r1, r8
	str r1, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #177
	mov r3, r9
	bl sub_080604C8
	ldr r0, _080391DC  @ =0x03001D10
	str r6, [r0]
	b _08039218
	.byte 0x00
	.byte 0x00
_080391DC:
	.4byte 0x03001D10
_080391E0:
	cmp r7, #179
	bne _08039200
	mov r2, r8
	str r2, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #179
	mov r3, r9
	bl sub_0806062C
	ldr r0, _080391FC  @ =0x03001D10
	str r6, [r0, #4]
	b _08039218
	.byte 0x00
	.byte 0x00
_080391FC:
	.4byte 0x03001D10
_08039200:
	cmp r7, #181
	bne _08039224
	mov r3, r8
	str r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #181
	mov r3, r9
	bl sub_080607B0
	ldr r0, _08039220  @ =0x03001D10
	str r6, [r0, #8]
_08039218:
	add r4, r6, #0
	add r4, r4, #144
	b _08039346
	.byte 0x00
	.byte 0x00
_08039220:
	.4byte 0x03001D10
_08039224:
	cmp r7, #176
	bne _08039238
	ldr r0, _08039234  @ =0x03001D00
	ldrb r1, [r0]
	mov r2, #2
	orr r1, r1, r2
	strb r1, [r0]
	b _08039280
_08039234:
	.4byte 0x03001D00
_08039238:
	add r0, r7, #0
	add r0, r0, #98
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0803924C
	add r0, r6, #0
	bl sub_0805B2E4
	b _08039280
_0803924C:
	cmp r7, #178
	bne _08039258
	ldr r0, _08039254  @ =0x03001D10
	b _0803927E
_08039254:
	.4byte 0x03001D10
_08039258:
	cmp r7, #180
	bne _08039268
	ldr r0, _08039264  @ =0x03001D10
	str r6, [r0, #4]
	b _08039280
	.byte 0x00
	.byte 0x00
_08039264:
	.4byte 0x03001D10
_08039268:
	cmp r7, #182
	bne _08039278
	ldr r0, _08039274  @ =0x03001D10
	str r6, [r0, #8]
	b _08039280
	.byte 0x00
	.byte 0x00
_08039274:
	.4byte 0x03001D10
_08039278:
	cmp r7, #200
	bne _0803928C
	ldr r0, _08039288  @ =0x03001D50
_0803927E:
	str r6, [r0]
_08039280:
	add r4, r6, #0
	add r4, r4, #144
	b _080392AC
	.byte 0x00
	.byte 0x00
_08039288:
	.4byte 0x03001D50
_0803928C:
	cmp r7, #192
	bne _0803929C
	add r1, r6, #0
	add r1, r1, #144
	mov r0, #0
	strh r0, [r1]
	add r4, r1, #0
	b _080392AC
_0803929C:
	add r4, r6, #0
	add r4, r4, #144
	cmp r7, #193
	bne _080392AC
	ldrb r1, [r6, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r6, #12]
_080392AC:
	add r0, r5, #0
	add r0, r0, #164
	mov r1, #0
	str r1, [r0]
	add r0, r0, #4
	str r1, [r0]
	add r1, r5, #0
	add r1, r1, #160
	ldr r0, [sp, #64]
	str r0, [r1]
	strh r7, [r6]
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r6, #4]
	mov r1, r8
	ldrh r0, [r1, #10]
	strh r0, [r6, #6]
	add r3, r6, #0
	add r3, r3, #124
	mov r2, r10
	ldr r0, [r2, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r3]
	str r1, [r3, #4]
	add r5, r6, #0
	add r5, r5, #129
	mov r0, r8
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r2, [r5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r5]
	ldr r1, [r6, #32]
	sub r5, r5, #3
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r5]
	ldr r0, _080393BC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r5]
	ldr r0, [r6, #36]
	asr r0, r0, #8
	strb r0, [r3]
	add r1, r6, #0
	add r1, r1, #136
	mov r2, r10
	ldr r0, [r2, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r2, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r2, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r2]
	str r0, [r1]
	add r0, r6, #0
	mov r1, r10
	mov r2, #0
	bl sub_0803DD20
	mov r3, r10
	ldr r0, [r3]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #23
	and r0, r0, r1
	cmp r0, #0
	beq _08039346
	ldr r0, [r6, #92]
	orr r0, r0, r1
	str r0, [r6, #92]
_08039346:
	mov r3, #0
	mov r1, #0
	strh r1, [r6, #54]
	strh r1, [r6, #56]
	strh r1, [r6, #48]
	strh r1, [r6, #50]
	strh r1, [r4]
	add r0, r6, #0
	add r0, r0, #146
	strh r1, [r0]
	mov r0, #255
	strb r0, [r6, #11]
	add r2, r6, #0
	add r2, r2, #67
	mov r0, #1
	neg r0, r0
	strb r0, [r2]
	sub r2, r2, #15
	strb r3, [r2]
	str r1, [r6, #80]
	mov r0, #4
	strb r0, [r2]
	sub r0, r0, #5
	str r0, [r6, #76]
	str r0, [r6, #72]
	mov r0, #1
	strb r0, [r6, #13]
	ldr r1, _080393C0  @ =0x03001980
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080393C4  @ =gMainState
	ldr r0, [r0]
	cmp r0, #13
	beq _08039394
	cmp r0, #5
	beq _08039394
	cmp r0, #2
	bne _08039422
_08039394:
	ldrh r0, [r6]
	cmp r0, #108
	bne _080393C8
	mov r2, #1
	neg r2, r2
	ldr r3, [sp, #12]
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [sp, #16]
	add r0, r0, #40
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #115
	b _080393E4
	.byte 0x00
	.byte 0x00
_080393BC:
	.4byte 0xFFFFFE00
_080393C0:
	.4byte 0x03001980
_080393C4:
	.4byte gMainState
_080393C8:
	cmp r0, #196
	bne _08039408
	mov r2, #1
	neg r2, r2
	ldr r0, [sp, #16]
	add r0, r0, #40
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #197
	ldr r3, [sp, #12]
_080393E4:
	bl spawn_sprite_08038DF4
	.byte 0x00
	.byte 0x06
	.byte 0x00
	.byte 0x0E
	.byte 0xB0
	.byte 0x64
	.byte 0x05
	.byte 0x49
	.byte 0x0A
	.byte 0x68
	.byte 0xB0
	.byte 0x21
	.byte 0x48
	.byte 0x43
	.byte 0x80
	.byte 0x18
	.byte 0x31
	.byte 0x1C
	.byte 0x3D
	.byte 0x31
	.byte 0x09
	.byte 0x78
	.byte 0x81
	.byte 0x64
	.byte 0x0F
	.byte 0xE0
	.byte 0x00
	.byte 0x00
	.byte 0x40
	.byte 0x19
	.byte 0x00
	.byte 0x03
_08039408:
	cmp r0, #163
	bne _08039418
	ldr r0, _08039414  @ =0x0300195C
	str r6, [r0]
	b _08039422
	.byte 0x00
	.byte 0x00
_08039414:
	.4byte 0x0300195C
_08039418:
	cmp r0, #191
	bne _08039422
	add r0, r6, #0
	bl sub_0800249C
_08039422:
	ldrh r0, [r6]
	cmp r0, #163
	bne _08039458
	ldr r3, [r6, #104]
	mov r4, #4
	ldrsh r0, [r3, r4]
	ldr r1, [r6, #32]
	add r0, r1, r0
	mov r4, #48
	ldrsh r2, [r6, r4]
	add r0, r0, r2
	ldr r2, _08039454  @ =0xFFFFF400
	add r0, r0, r2
	str r0, [r6, #108]
	mov r4, #6
	ldrsh r0, [r3, r4]
	add r1, r1, r0
	mov r2, #48
	ldrsh r0, [r6, r2]
	add r1, r1, r0
	mov r4, #192
	lsl r4, r4, #4
	add r1, r1, r4
	str r1, [r6, #116]
	b _08039478
_08039454:
	.4byte 0xFFFFF400
_08039458:
	ldr r3, [r6, #104]
	mov r4, #4
	ldrsh r0, [r3, r4]
	ldr r2, [r6, #32]
	add r0, r2, r0
	mov r4, #48
	ldrsh r1, [r6, r4]
	add r0, r0, r1
	str r0, [r6, #108]
	mov r1, #6
	ldrsh r0, [r3, r1]
	add r2, r2, r0
	mov r4, #48
	ldrsh r0, [r6, r4]
	add r2, r2, r0
	str r2, [r6, #116]
_08039478:
	mov r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [r6, #36]
	add r0, r2, r0
	mov r4, #50
	ldrsh r1, [r6, r4]
	add r0, r0, r1
	str r0, [r6, #112]
	mov r1, #2
	ldrsh r0, [r3, r1]
	add r2, r2, r0
	mov r3, #50
	ldrsh r0, [r6, r3]
	add r2, r2, r0
	str r2, [r6, #120]
	mov r0, r9
_08039498:
	add sp, sp, #28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END spawn_sprite_08038DF4

	THUMB_FUNC_START sub_080394A8
sub_080394A8: @ 0x080394A8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	ldr r4, [sp, #56]
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r6, r5, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r10, r1
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r9, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	str r3, [sp, #8]
	lsl r4, r4, #16
	lsr r4, r4, #16
	str r4, [sp, #12]
	mov r0, r10
	bl get_sprite_table_08038D1C
	add r7, r0, #0
	cmp r7, #0
	bne _080394E2
	b _08039650
_080394E2:
	cmp r5, #19
	bls _0803957C
	ldr r0, _08039538  @ =gMainState
	ldr r0, [r0]
	cmp r0, #13
	beq _080394F6
	cmp r0, #5
	beq _080394F6
	cmp r0, #2
	bne _08039540
_080394F6:
	mov r8, r10
	mov r0, r8
	cmp r0, #0
	beq _0803957E
	mov r1, #1
	mov r8, r1
	ldr r1, _0803953C  @ =gUnknown_03001940
	ldr r0, [r1]
	mov r2, #164
	lsl r2, r2, #1
	add r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803957E
	add r3, r1, #0
	mov r2, #176
_08039516:
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	cmp r0, #19
	bls _08039526
	b _08039650
_08039526:
	ldr r0, [r3]
	mov r1, r8
	mul r1, r2, r1
	add r1, r1, r0
	add r1, r1, #152
	ldrb r0, [r1]
	cmp r0, #0
	bne _08039516
	b _0803957E
_08039538:
	.4byte gMainState
_0803953C:
	.4byte gUnknown_03001940
_08039540:
	mov r3, #0
	mov r8, r3
	ldr r1, _08039578  @ =gUnknown_03001940
	ldr r0, [r1]
	add r0, r0, #152
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803957E
	add r3, r1, #0
	mov r2, #176
_08039554:
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	cmp r0, #19
	bls _08039564
	b _08039650
_08039564:
	ldr r0, [r3]
	mov r1, r8
	mul r1, r2, r1
	add r1, r1, r0
	add r1, r1, #152
	ldrb r0, [r1]
	cmp r0, #0
	bne _08039554
	b _0803957E
	.byte 0x00
	.byte 0x00
_08039578:
	.4byte gUnknown_03001940
_0803957C:
	mov r8, r6
_0803957E:
	mov r0, r8
	cmp r0, #19
	bhi _08039650
	mov r1, r9
	lsl r0, r1, #16
	asr r1, r0, #16
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _0803964A
	mov r2, r10
	cmp r2, #0
	bne _08039628
	ldr r0, _080395B8  @ =gMainState
	ldr r0, [r0]
	cmp r0, #2
	bne _080395C0
	ldr r0, _080395BC  @ =gSpriteHorizontalOffset
	mov r3, #0
	ldrsh r0, [r0, r3]
	add r0, r0, #115
	mov r1, #225
	mov r9, r1
	ldr r2, [sp, #8]
	cmp r2, r0
	ble _08039654
	mov r3, #224
	mov r9, r3
	b _08039654
_080395B8:
	.4byte gMainState
_080395BC:
	.4byte gSpriteHorizontalOffset
_080395C0:
	cmp r0, #5
	bne _080395E0
	ldr r0, _080395DC  @ =gSpriteHorizontalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r0, r0, #115
	mov r2, #225
	mov r9, r2
	ldr r3, [sp, #8]
	cmp r3, r0
	ble _08039654
	mov r0, #224
	mov r9, r0
	b _08039654
_080395DC:
	.4byte gSpriteHorizontalOffset
_080395E0:
	ldr r0, _08039604  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803960C
	ldr r0, _08039608  @ =gSpriteHorizontalOffset
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r0, r0, #115
	mov r2, #2
	mov r9, r2
	ldr r3, [sp, #8]
	cmp r3, r0
	ble _08039654
	mov r0, #1
	mov r9, r0
	b _08039654
_08039604:
	.4byte gNextLevelInLevelTable
_08039608:
	.4byte gSpriteHorizontalOffset
_0803960C:
	ldr r0, _08039624  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #20
	and r0, r0, r1
	mov r1, #224
	mov r9, r1
	cmp r0, #0
	beq _08039654
	mov r2, #225
	mov r9, r2
	b _08039654
_08039624:
	.4byte gUnknown_03001A1C
_08039628:
	mov r3, r10
	cmp r3, #2
	bne _08039644
	ldr r0, _08039640  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	lsr r0, r0, #3
	mov r9, r0
	mov r0, #1
	mov r1, r9
	and r1, r1, r0
	mov r9, r1
	b _08039654
_08039640:
	.4byte gNextLevelInLevelTable
_08039644:
	ldrh r2, [r7, #8]
	mov r9, r2
	b _08039654
_0803964A:
	ldrh r0, [r7, #10]
	cmp r0, r1
	bgt _08039654
_08039650:
	mov r0, #255
	b _08039B54
_08039654:
	ldr r4, _080396C8  @ =gUnknown_03001940
	mov r3, #176
	mov r1, r8
	mul r1, r3, r1
	ldr r0, [r4]
	add r6, r0, r1
	add r1, r6, #0
	add r1, r1, #152
	mov r2, #0
	mov r0, #1
	strb r0, [r1]
	add r1, r1, #1
	strb r0, [r1]
	add r0, r6, #0
	add r0, r0, #154
	strh r2, [r0]
	add r1, r1, #19
	ldr r0, [r7, #32]
	str r0, [r1]
	mov r1, r9
	lsl r0, r1, #16
	asr r0, r0, #16
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r7]
	add r0, r0, r1
	str r0, [sp, #16]
	add r5, r6, #0
	add r2, r5, #0
	add r2, r2, #61
	mov r0, r8
	strb r0, [r2]
	add r0, r7, #0
	add r0, r0, #20
	str r0, [r5, #100]
	ldrh r1, [r7, #12]
	add r0, r5, #0
	add r0, r0, #68
	strh r1, [r0]
	ldr r1, [sp, #8]
	lsl r1, r1, #8
	str r1, [sp, #20]
	mov r1, #28
	ldrsh r0, [r7, r1]
	ldr r1, [sp, #20]
	sub r1, r1, r0
	str r1, [r5, #32]
	ldrb r2, [r2]
	add r1, r2, #0
	mul r1, r3, r1
	ldr r0, [r4]
	add r0, r0, r1
	cmp r2, #19
	bls _080396CC
	mov r2, #0
	b _080396DE
	.byte 0x00
	.byte 0x00
_080396C8:
	.4byte gUnknown_03001940
_080396CC:
	ldr r0, [r0, #100]
	mov r2, #2
	ldrsh r1, [r0, r2]
	mov r3, #0
	ldrsh r0, [r0, r3]
	sub r1, r1, r0
	asr r1, r1, #8
	add r1, r1, #7
	asr r2, r1, #3
_080396DE:
	ldr r1, [sp, #12]
	lsl r0, r1, #8
	mov r3, #30
	ldrsh r1, [r7, r3]
	sub r0, r0, r1
	lsl r1, r2, #11
	add r0, r0, r1
	str r0, [r5, #36]
	ldr r1, [r5, #32]
	str r1, [r5, #40]
	str r1, [r5, #16]
	str r0, [r5, #44]
	str r0, [r5, #20]
	mov r0, #0
	str r0, [r5, #92]
	str r0, [r5, #96]
	strb r0, [r5, #2]
	mov r1, #0
	strh r0, [r5, #8]
	strb r1, [r5, #12]
	ldr r0, _0803973C  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08039726
	ldr r0, _08039740  @ =gMainState
	ldr r0, [r0]
	cmp r0, #2
	beq _08039726
	add r0, r6, #0
	mov r1, #85
	mov r2, #0
	mov r3, #0
	bl sub_080382EC
_08039726:
	mov r0, r10
	cmp r0, #7
	bne _08039744
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #7
	mov r3, r8
	bl sub_0804ADB8
	b _080399A2
_0803973C:
	.4byte gNextLevelInLevelTable
_08039740:
	.4byte gMainState
_08039744:
	mov r1, r10
	cmp r1, #9
	bne _08039762
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #9
	mov r3, r8
	bl sub_0804FCBC
	b _080399A2
_08039762:
	mov r2, r10
	cmp r2, #39
	bne _08039780
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #39
	mov r3, r8
	bl sub_08069F0C
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	b _080399A2
_08039780:
	mov r3, r10
	cmp r3, #11
	bne _0803979E
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #11
	mov r3, r8
	bl sub_0805744C
	b _080399A2
_0803979E:
	mov r0, r10
	cmp r0, #12
	bne _080397BC
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #12
	mov r3, r8
	bl sub_0805949C
	b _080399A2
_080397BC:
	mov r1, r10
	cmp r1, #13
	bne _080397DA
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #13
	mov r3, r8
	bl sub_0805BA60
	b _080399A2
_080397DA:
	mov r2, r10
	cmp r2, #20
	bne _080397F8
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #20
	mov r3, r8
	bl sub_0805E360
	b _080399A2
_080397F8:
	mov r3, r10
	cmp r3, #21
	bne _08039816
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #21
	mov r3, r8
	bl sub_08061200
	b _080399A2
_08039816:
	mov r0, r10
	cmp r0, #22
	bne _08039834
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #22
	mov r3, r8
	bl sub_080625F0
	b _080399A2
_08039834:
	mov r1, r10
	cmp r1, #24
	bne _0803984A
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #24
	mov r3, r8
	bl sub_08063B20
	b _080399A2
_0803984A:
	mov r2, r10
	cmp r2, #25
	bne _08039860
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #25
	mov r3, r8
	bl sub_0806A22C
	b _080399A2
_08039860:
	mov r3, r10
	cmp r3, #26
	bne _0803987E
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #26
	mov r3, r8
	bl sub_08065240
	b _080399A2
_0803987E:
	mov r0, r10
	cmp r0, #27
	bne _0803989C
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #27
	mov r3, r8
	bl sub_080654AC
	b _080399A2
_0803989C:
	mov r1, r10
	cmp r1, #28
	bne _080398BA
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #28
	mov r3, r8
	bl sub_08065730
	b _080399A2
_080398BA:
	mov r2, r10
	cmp r2, #33
	bne _080398D0
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #33
	mov r3, r8
	bl sub_080662AC
	b _080399A2
_080398D0:
	mov r3, r10
	cmp r3, #34
	bne _080398E6
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #34
	mov r3, r8
	bl sub_08066444
	b _080399A2
_080398E6:
	mov r0, r10
	cmp r0, #35
	bne _080398FC
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #35
	mov r3, r8
	bl sub_080665DC
	b _080399A2
_080398FC:
	mov r1, r10
	cmp r1, #32
	bne _08039912
	str r7, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #32
	mov r3, r8
	bl sub_08066904
	b _080399A2
_08039912:
	ldr r0, _08039A24  @ =gMainState
	ldr r0, [r0]
	cmp r0, #10
	beq _08039926
	mov r2, r10
	cmp r2, #8
	bne _08039926
	add r0, r5, #0
	bl sub_0804EF98
_08039926:
	add r0, r6, #0
	add r0, r0, #164
	mov r1, #0
	str r1, [r0]
	add r0, r0, #4
	str r1, [r0]
	sub r0, r0, #8
	str r1, [r0]
	mov r3, r10
	strh r3, [r5]
	mov r0, r9
	strh r0, [r5, #4]
	ldrh r0, [r7, #10]
	strh r0, [r5, #6]
	add r3, r5, #0
	add r3, r3, #124
	ldr r1, [sp, #16]
	ldr r0, [r1, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r3]
	str r1, [r3, #4]
	add r4, r5, #0
	add r4, r4, #129
	ldrb r1, [r7, #6]
	lsl r1, r1, #4
	ldrb r2, [r4]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4]
	ldr r1, [r5, #32]
	sub r4, r4, #3
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08039A28  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r5, #36]
	asr r0, r0, #8
	strb r0, [r3]
	add r1, r5, #0
	add r1, r1, #136
	ldr r2, [sp, #16]
	ldr r0, [r2, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r2, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r2, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r2]
	str r0, [r1]
	add r0, r5, #0
	ldr r1, [sp, #16]
	mov r2, #0
	bl sub_0803DD20
_080399A2:
	mov r2, #0
	strh r2, [r5, #54]
	mov r0, #255
	strb r0, [r5, #11]
	add r1, r5, #0
	add r1, r1, #67
	mov r0, #1
	neg r0, r0
	strb r0, [r1]
	mov r3, r10
	cmp r3, #25
	beq _080399C0
	sub r1, r1, #15
	mov r0, #4
	strb r0, [r1]
_080399C0:
	str r2, [r5, #80]
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	str r0, [r5, #72]
	mov r0, #1
	strb r0, [r5, #13]
	ldr r1, [sp, #16]
	ldr r0, [r1]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #23
	and r0, r0, r1
	cmp r0, #0
	beq _080399E4
	ldr r0, [r5, #92]
	orr r0, r0, r1
	str r0, [r5, #92]
_080399E4:
	ldr r0, _08039A24  @ =gMainState
	ldr r1, [r0]
	add r3, r0, #0
	cmp r1, #13
	beq _080399F6
	cmp r1, #5
	beq _080399F6
	cmp r1, #2
	bne _08039A0C
_080399F6:
	ldrh r0, [r5]
	cmp r0, #2
	beq _08039A00
	cmp r0, #23
	bne _08039A0C
_08039A00:
	ldr r0, _08039A2C  @ =0x03001998
	str r5, [r0]
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
_08039A0C:
	ldr r1, _08039A30  @ =0x03001980
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldrh r0, [r5]
	cmp r0, #5
	bne _08039A34
	ldrb r0, [r5, #12]
	mov r1, #128
	orr r1, r1, r0
	strb r1, [r5, #12]
	b _08039A38
_08039A24:
	.4byte gMainState
_08039A28:
	.4byte 0xFFFFFE00
_08039A2C:
	.4byte 0x03001998
_08039A30:
	.4byte 0x03001980
_08039A34:
	cmp r0, #18
	bne _08039A44
_08039A38:
	ldr r0, _08039A40  @ =0x03001960
	str r5, [r0]
	b _08039AF8
	.byte 0x00
	.byte 0x00
_08039A40:
	.4byte 0x03001960
_08039A44:
	cmp r0, #17
	bne _08039A6C
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	ldr r0, _08039A68  @ =0x03001964
	str r5, [r0]
	mov r2, #1
	neg r2, r2
	ldr r3, [sp, #12]
	str r3, [sp]
	mov r0, #255
	mov r1, #9
	ldr r3, [sp, #8]
	bl sub_080394A8
	.byte 0x47
	.byte 0xE0
_08039A68:
	.4byte 0x03001964
_08039A6C:
	cmp r0, #0
	bne _08039AF8
	ldrb r1, [r5, #12]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r5, #12]
	ldr r2, _08039AA8  @ =gNextLevelInLevelTable
	ldr r0, [r2, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08039AC8
	ldr r0, _08039AAC  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08039AB4
	ldr r2, _08039AB0  @ =gMiniMariosRescued_03001BA0
	ldrb r0, [r2]
	mov r1, #4
	cmp r0, #0
	beq _08039A9C
	add r1, r0, #0
_08039A9C:
	add r0, r5, #0
	add r0, r0, #52
	strb r1, [r0]
	strb r1, [r2]
	b _08039AF0
	.byte 0x00
	.byte 0x00
_08039AA8:
	.4byte gNextLevelInLevelTable
_08039AAC:
	.4byte gLevelType
_08039AB0:
	.4byte gMiniMariosRescued_03001BA0
_08039AB4:
	ldr r2, _08039AC4  @ =gMiniMariosRescued_03001BA0
	add r1, r5, #0
	add r1, r1, #52
	mov r0, #6
	strb r0, [r1]
	strb r0, [r2]
	b _08039AF0
	.byte 0x00
	.byte 0x00
_08039AC4:
	.4byte gMiniMariosRescued_03001BA0
_08039AC8:
	add r0, r5, #0
	add r0, r0, #52
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r3]
	cmp r0, #2
	beq _08039AF0
	ldr r0, [r2, #32]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08039AF0
	ldr r0, [r5, #32]
	ldr r1, _08039B14  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r5, #32]
	ldr r0, [r5, #36]
	ldr r2, _08039B18  @ =0xFFFFE000
	add r0, r0, r2
	str r0, [r5, #36]
_08039AF0:
	bl sub_08038C4C
	bl sub_0804EF38
_08039AF8:
	ldr r0, _08039B1C  @ =0x03001D54
	ldr r0, [r0]
	cmp r0, #0
	bne _08039B52
	mov r3, r10
	cmp r3, #26
	bne _08039B20
	ldr r1, [sp, #12]
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #33
	b _08039B30
	.byte 0x00
	.byte 0x00
_08039B14:
	.4byte 0xFFFFF000
_08039B18:
	.4byte 0xFFFFE000
_08039B1C:
	.4byte 0x03001D54
_08039B20:
	mov r2, r10
	cmp r2, #27
	bne _08039B3A
	ldr r3, [sp, #12]
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #34
_08039B30:
	mov r2, #0
	ldr r3, [sp, #8]
	bl spawn_sprite_08038DF4
	b _08039B52
_08039B3A:
	mov r1, r10
	cmp r1, #28
	bne _08039B52
	ldr r2, [sp, #12]
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #35
	mov r2, #0
	ldr r3, [sp, #8]
	bl spawn_sprite_08038DF4
_08039B52:
	mov r0, r8
_08039B54:
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080394A8

	THUMB_FUNC_START sub_08039B64
sub_08039B64: @ 0x08039B64
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #19
	bhi _08039C32
	ldr r2, _08039BB8  @ =gUnknown_030019AC
	ldr r1, [r2]
	ldr r0, [r1, #76]
	cmp r3, r0
	bne _08039B7E
	mov r0, #1
	neg r0, r0
	str r0, [r1, #76]
_08039B7E:
	ldr r1, [r2]
	mov r0, #11
	ldrsb r0, [r1, r0]
	cmp r3, r0
	bne _08039B8C
	mov r0, #255
	strb r0, [r1, #11]
_08039B8C:
	ldr r0, [r2]
	add r1, r0, #0
	add r1, r1, #67
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r3, r0
	bne _08039B9E
	mov r0, #255
	strb r0, [r1]
_08039B9E:
	ldr r2, _08039BBC  @ =gUnknown_03001940
	ldr r1, [r2]
	mov r0, #176
	mul r0, r3, r0
	add r0, r0, r1
	ldrh r0, [r0]
	add r4, r2, #0
	cmp r0, #176
	bne _08039BC4
	ldr r2, _08039BC0  @ =0x03001D00
	ldrb r1, [r2]
	mov r0, #253
	b _08039BDE
_08039BB8:
	.4byte gUnknown_030019AC
_08039BBC:
	.4byte gUnknown_03001940
_08039BC0:
	.4byte 0x03001D00
_08039BC4:
	cmp r0, #174
	bne _08039BD4
	ldr r2, _08039BD0  @ =0x03001D00
	ldrb r1, [r2]
	mov r0, #254
	b _08039BDE
_08039BD0:
	.4byte 0x03001D00
_08039BD4:
	cmp r0, #202
	bne _08039BE8
	ldr r2, _08039BE4  @ =0x03001D00
	ldrb r1, [r2]
	mov r0, #251
_08039BDE:
	and r0, r0, r1
	strb r0, [r2]
	b _08039BF8
_08039BE4:
	.4byte 0x03001D00
_08039BE8:
	cmp r0, #200
	bne _08039BF8
	ldr r1, _08039C38  @ =0x03001D54
	mov r0, #0
	strb r0, [r1]
	ldr r1, _08039C3C  @ =0x03001D50
	mov r0, #0
	str r0, [r1]
_08039BF8:
	ldr r1, [r4]
	mov r0, #176
	add r2, r3, #0
	mul r2, r0, r2
	add r1, r2, r1
	add r0, r1, #0
	add r0, r0, #152
	ldrb r0, [r0]
	cmp r0, #1
	bne _08039C32
	add r1, r1, #160
	ldr r0, [r1]
	cmp r0, #0
	beq _08039C18
	mov r0, #0
	str r0, [r1]
_08039C18:
	ldr r0, [r4]
	add r0, r2, r0
	add r0, r0, #152
	mov r1, #0
	strb r1, [r0]
	ldr r0, [r4]
	add r0, r2, r0
	add r0, r0, #153
	strb r1, [r0]
	ldr r1, _08039C40  @ =0x03001980
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_08039C32:
	pop {r4}
	pop {r0}
	bx r0
_08039C38:
	.4byte 0x03001D54
_08039C3C:
	.4byte 0x03001D50
_08039C40:
	.4byte 0x03001980
	THUMB_FUNC_END sub_08039B64

	THUMB_FUNC_START update_level_08039C44
update_level_08039C44: @ 0x08039C44
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	ldr r0, _08039C90  @ =gUnknown_03001940
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _08039C94  @ =gHeldKeys
	ldrh r2, [r0]
	mov r1, #192
	lsl r1, r1, #2
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, r1
	bne _08039CA4
	ldr r0, _08039C98  @ =gMainState
	ldr r0, [r0]
	cmp r0, #5
	beq _08039CA4
	ldr r0, _08039C9C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _08039CA4
	ldr r1, _08039CA0  @ =gUnknown_03001A38
	mov r0, #1
	strb r0, [r1]
	mov r0, #33
	mov r1, #0
	bl change_main_state
	bl _0803A4FC
	.byte 0x00
	.byte 0x00
_08039C90:
	.4byte gUnknown_03001940
_08039C94:
	.4byte gHeldKeys
_08039C98:
	.4byte gMainState
_08039C9C:
	.4byte gUnknown_03001A1C
_08039CA0:
	.4byte gUnknown_03001A38
_08039CA4:
	ldr r0, _08039D6C  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _08039CB4
	bl sub_0806BC40
_08039CB4:
	bl sub_0804AB60
	ldr r0, _08039D70  @ =gUnknown_03001A00
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039CF0
	ldr r0, _08039D74  @ =gUnknown_030019E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039CCC
	bl sub_0805B674
_08039CCC:
	ldr r0, _08039D78  @ =gUnknown_030019B0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039CD8
	bl sub_0805B8B8
_08039CD8:
	ldr r0, _08039D7C  @ =gUnknown_03001994
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039CE4
	bl sub_080703D4
_08039CE4:
	ldr r0, _08039D80  @ =gUnknown_0300199C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039CF0
	bl sub_08070710
_08039CF0:
	ldr r1, _08039D84  @ =0x0300197C
	ldrb r0, [r1]
	cmp r0, #0
	beq _08039D0A
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08039D0A
	ldr r0, _08039D88  @ =0x030019EC
	ldrb r0, [r0]
	bl sub_08003EBC
_08039D0A:
	bl sub_0803AA74
	bl sub_08041688
	ldr r2, _08039D8C  @ =gUnknown_030019A0
	ldr r0, [r2]
	ldr r1, _08039D90  @ =0xFFFDFFFF
	and r0, r0, r1
	str r0, [r2]
	ldr r1, _08039D94  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r1, r2]
	cmp r0, #3
	bne _08039D34
	ldr r0, [r1, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08039D34
	bl sub_0805DFB0
_08039D34:
	ldr r5, _08039D98  @ =gMainState
	ldr r0, [r5]
	cmp r0, #10
	beq _08039DAC
	ldr r4, _08039D9C  @ =gUnknown_03001938
	ldr r0, [r4]
	mov r1, #128
	lsl r1, r1, #9
	and r0, r0, r1
	cmp r0, #0
	beq _08039D56
	bl sub_08055A34
	ldr r0, [r4]
	ldr r1, _08039DA0  @ =0xFFFEFFFF
	and r0, r0, r1
	str r0, [r4]
_08039D56:
	ldr r0, _08039DA4  @ =0x030009F4
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, [r5]
	cmp r0, #5
	bne _08039DA8
	bl sub_0800EE70
	b _08039DAC
	.byte 0x00
	.byte 0x00
_08039D6C:
	.4byte gLevelType
_08039D70:
	.4byte gUnknown_03001A00
_08039D74:
	.4byte gUnknown_030019E8
_08039D78:
	.4byte gUnknown_030019B0
_08039D7C:
	.4byte gUnknown_03001994
_08039D80:
	.4byte gUnknown_0300199C
_08039D84:
	.4byte 0x0300197C
_08039D88:
	.4byte 0x030019EC
_08039D8C:
	.4byte gUnknown_030019A0
_08039D90:
	.4byte 0xFFFDFFFF
_08039D94:
	.4byte gNextLevelInLevelTable
_08039D98:
	.4byte gMainState
_08039D9C:
	.4byte gUnknown_03001938
_08039DA0:
	.4byte 0xFFFEFFFF
_08039DA4:
	.4byte 0x030009F4
_08039DA8:
	bl sub_0800991C
_08039DAC:
	ldr r2, _08039DE0  @ =0x03001A60
	ldrb r3, [r2]
	cmp r3, #0
	beq _08039DF4
	ldr r4, _08039DE4  @ =gUnknown_03001A1C
	ldr r1, [r4]
	mov r0, #128
	lsl r0, r0, #13
	and r0, r0, r1
	cmp r0, #0
	bne _08039DC6
	sub r0, r3, #1
	strb r0, [r2]
_08039DC6:
	ldrb r0, [r2]
	cmp r0, #0
	bne _08039E0A
	ldr r0, _08039DE8  @ =0xFFFFEFFF
	and r1, r1, r0
	str r1, [r4]
	ldr r2, _08039DEC  @ =gUnknown_03001938
	ldr r0, [r2]
	ldr r1, _08039DF0  @ =0xFFFFDFFF
	and r0, r0, r1
	str r0, [r2]
	b _08039E0A
	.byte 0x00
	.byte 0x00
_08039DE0:
	.4byte 0x03001A60
_08039DE4:
	.4byte gUnknown_03001A1C
_08039DE8:
	.4byte 0xFFFFEFFF
_08039DEC:
	.4byte gUnknown_03001938
_08039DF0:
	.4byte 0xFFFFDFFF
_08039DF4:
	ldr r0, _08039E44  @ =gUnknown_03001938
	ldr r1, [r0]
	ldr r2, _08039E48  @ =0xFFFFDFFF
	and r1, r1, r2
	str r1, [r0]
	ldr r1, _08039E4C  @ =0x0300198C
	ldrb r0, [r1]
	cmp r0, #0
	beq _08039E0A
	sub r0, r0, #1
	strb r0, [r1]
_08039E0A:
	mov r3, #0
	mov r10, r3
	mov r4, r8
	add r4, r4, #156
	str r4, [sp, #16]
	mov r6, r8
	add r6, r6, #32
_08039E18:
	mov r0, r8
	add r0, r0, #152
	ldrb r1, [r0]
	cmp r1, #1
	beq _08039E24
	b _0803A192
_08039E24:
	add r0, r0, #2
	ldrh r0, [r0]
	and r1, r1, r0
	cmp r1, #0
	beq _08039E30
	b _0803A192
_08039E30:
	mov r0, r8
	add r0, r0, #164
	ldr r1, [r0]
	cmp r1, #0
	beq _08039E50
	mov r0, r8
	bl _call_via_r1
	b _0803A192
	.byte 0x00
	.byte 0x00
_08039E44:
	.4byte gUnknown_03001938
_08039E48:
	.4byte 0xFFFFDFFF
_08039E4C:
	.4byte 0x0300198C
_08039E50:
	mov r5, r8
	ldr r1, _08039E94  @ =gUnknown_03001A1C
	ldr r2, [r1]
	mov r0, #128
	lsl r0, r0, #12
	and r2, r2, r0
	add r3, r1, #0
	cmp r2, #0
	bne _08039EC4
	ldrh r0, [r5]
	cmp r0, #49
	bls _08039EC4
	strh r2, [r6, #18]
	strh r2, [r6, #16]
	cmp r0, #163
	bne _08039E9C
	ldr r2, [r6, #72]
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r1, [r6]
	add r0, r1, r0
	ldr r3, _08039E98  @ =0xFFFFF400
	add r0, r0, r3
	str r0, [r6, #76]
	mov r4, #6
	ldrsh r0, [r2, r4]
	add r1, r1, r0
	mov r0, #192
	lsl r0, r0, #4
	add r1, r1, r0
	str r1, [r6, #84]
	mov r1, #0
	ldrsh r0, [r2, r1]
	b _08039EB4
_08039E94:
	.4byte gUnknown_03001A1C
_08039E98:
	.4byte 0xFFFFF400
_08039E9C:
	ldr r2, [r6, #72]
	mov r4, #4
	ldrsh r0, [r2, r4]
	ldr r1, [r6]
	add r0, r1, r0
	str r0, [r6, #76]
	mov r3, #6
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [r6, #84]
	mov r4, #0
	ldrsh r0, [r2, r4]
_08039EB4:
	ldr r1, [r6, #4]
	add r0, r1, r0
	str r0, [r6, #80]
	mov r3, #2
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [r6, #88]
	b _0803A192
_08039EC4:
	ldrb r1, [r5, #12]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08039ED4
	mov r0, #64
	orr r0, r0, r1
	strb r0, [r5, #12]
_08039ED4:
	ldr r0, [r3]
	ldr r1, _08039F7C  @ =0x00105300
	and r0, r0, r1
	cmp r0, #0
	bne _08039EF2
	ldr r0, _08039F80  @ =0x03001A54
	ldr r1, [r0]
	mov r4, r10
	lsl r0, r4, #1
	add r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	beq _08039EF2
	sub r0, r0, #1
	strh r0, [r1]
_08039EF2:
	mov r0, r10
	cmp r0, #0
	bne _08039F1A
	ldr r2, [r3]
	mov r0, #1
	and r0, r0, r2
	cmp r0, #0
	beq _08039F1A
	ldr r0, _08039F84  @ =0x03001958
	ldr r1, [r0]
	ldr r0, _08039F80  @ =0x03001A54
	ldr r0, [r0]
	lsl r1, r1, #1
	add r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _08039F1A
	mov r0, #2
	orr r2, r2, r0
	str r2, [r3]
_08039F1A:
	ldr r4, [r5, #92]
	mov r0, #128
	lsl r0, r0, #19
	and r4, r4, r0
	cmp r4, #0
	beq _08039FB0
	ldrh r0, [r5]
	cmp r0, #4
	bne _08039FA8
	add r2, r5, #0
	add r2, r2, #126
	ldrh r0, [r2]
	lsl r0, r0, #23
	lsr r0, r0, #15
	ldr r3, [r5, #104]
	mov r4, #4
	ldrsh r1, [r3, r4]
	add r0, r0, r1
	str r0, [r5, #108]
	ldrh r0, [r2]
	lsl r0, r0, #23
	lsr r0, r0, #15
	mov r2, #6
	ldrsh r1, [r3, r2]
	add r0, r0, r1
	str r0, [r5, #116]
	ldrb r1, [r5, #2]
	add r0, r5, #0
	add r0, r0, #136
	ldr r2, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08039F88
	mov r4, #0
	ldrsh r0, [r3, r4]
	ldr r1, [r5, #36]
	add r0, r1, r0
	str r0, [r5, #112]
	mov r2, #2
	ldrsh r0, [r3, r2]
	add r1, r1, r0
	str r1, [r5, #120]
	b _0803A192
_08039F7C:
	.4byte 0x00105300
_08039F80:
	.4byte 0x03001A54
_08039F84:
	.4byte 0x03001958
_08039F88:
	mov r4, #0
	ldrsh r0, [r3, r4]
	ldr r1, [r5, #36]
	add r0, r1, r0
	ldr r2, _08039FA4  @ =0xFFFFF000
	add r0, r0, r2
	str r0, [r5, #112]
	mov r4, #2
	ldrsh r0, [r3, r4]
	add r1, r1, r0
	add r1, r1, r2
	str r1, [r5, #120]
	b _0803A192
	.byte 0x00
	.byte 0x00
_08039FA4:
	.4byte 0xFFFFF000
_08039FA8:
	ldr r3, [r5, #104]
	mov r0, #4
	ldrsh r1, [r3, r0]
	b _0803A15A
_08039FB0:
	ldr r0, _0803A03C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _08039FC4
	add r0, r5, #0
	bl sub_0803A884
_08039FC4:
	ldr r7, _0803A040  @ =gUnknown_03001A00
	ldrb r0, [r7]
	cmp r0, #0
	beq _08039FD4
	ldrh r0, [r5, #54]
	ldrh r1, [r5, #48]
	add r0, r0, r1
	strh r0, [r5, #48]
_08039FD4:
	add r0, r5, #0
	bl sub_08040C00
	mov r2, #70
	add r2, r2, r8
	mov r9, r2
	ldrh r0, [r6, #38]
	cmp r0, #0
	beq _0803A058
	ldrb r0, [r7]
	cmp r0, #0
	beq _0803A048
	ldr r0, [r6]
	asr r0, r0, #8
	ldr r1, _0803A044  @ =gSpriteHorizontalOffset
	mov r3, #0
	ldrsh r1, [r1, r3]
	sub r0, r0, r1
	cmp r0, #0
	bge _08039FFE
	mov r0, #0
_08039FFE:
	cmp r0, #240
	ble _0803A004
	mov r0, #240
_0803A004:
	add r0, r0, #8
	asr r7, r0, #1
	ldr r0, [r6, #124]
	bl sub_080721A8
	cmp r0, #0
	beq _0803A02E
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #1
	lsl r3, r7, #24
	lsr r3, r3, #24
	str r4, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r4, [sp, #8]
	mov r1, #20
	mov r2, #16
	bl play_sound_effect_08071990
	str r0, [r6, #124]
_0803A02E:
	ldr r2, [sp, #16]
	ldr r0, [r2]
	add r1, r7, #0
	mov r2, #0
	bl sub_08071D28
	b _0803A058
_0803A03C:
	.4byte gUnknown_03001A1C
_0803A040:
	.4byte gUnknown_03001A00
_0803A044:
	.4byte gSpriteHorizontalOffset
_0803A048:
	ldr r0, [r6, #124]
	mov r4, #1
	neg r4, r4
	cmp r0, r4
	beq _0803A058
	bl sub_08071D9C
	str r4, [r6, #124]
_0803A058:
	ldr r0, _0803A138  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	bne _0803A076
	add r0, r5, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0803A13C  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_0803A076:
	add r0, r5, #0
	bl sub_0803DBF0
	ldr r0, [r5, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _0803A08E
	add r0, r5, #0
	bl sub_0803F560
_0803A08E:
	ldrh r0, [r5]
	cmp r0, #108
	beq _0803A098
	cmp r0, #196
	bne _0803A0FA
_0803A098:
	ldr r0, _0803A140  @ =0x03001B68
	ldrb r0, [r0]
	ldr r3, _0803A144  @ =gUnknown_03001940
	ldr r4, [r5, #72]
	cmp r0, #0
	beq _0803A0D4
	ldr r1, _0803A148  @ =0x03001B64
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803A0D4
	ldr r0, _0803A14C  @ =0x03001B50
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A0D4
	ldrb r0, [r1]
	cmp r0, r4
	bne _0803A0D4
	ldr r1, [r5, #32]
	ldr r2, [r3]
	mov r0, #176
	mul r0, r4, r0
	add r0, r0, r2
	ldr r0, [r0, #32]
	sub r1, r1, r0
	mov r0, #192
	lsl r0, r0, #4
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	str r1, [sp, #12]
_0803A0D4:
	ldr r3, [r3]
	mov r2, #176
	add r1, r4, #0
	mul r1, r2, r1
	add r1, r1, r3
	ldr r0, [r5, #32]
	mov r4, #192
	lsl r4, r4, #4
	add r0, r0, r4
	str r0, [r1, #32]
	ldr r0, [r5, #72]
	add r1, r0, #0
	mul r1, r2, r1
	add r1, r1, r3
	ldr r0, [r5, #36]
	mov r2, #128
	lsl r2, r2, #6
	add r0, r0, r2
	str r0, [r1, #36]
_0803A0FA:
	mov r0, #255
	strb r0, [r5, #11]
	add r1, r5, #0
	add r1, r1, #66
	mov r0, #0
	strb r0, [r1]
	strb r0, [r5, #15]
	ldrh r0, [r5]
	cmp r0, #163
	bne _0803A154
	ldr r3, [r5, #104]
	mov r4, #4
	ldrsh r0, [r3, r4]
	ldr r2, [r5, #32]
	add r0, r2, r0
	mov r4, #48
	ldrsh r1, [r5, r4]
	add r0, r0, r1
	ldr r1, _0803A150  @ =0xFFFFF400
	add r0, r0, r1
	str r0, [r5, #108]
	mov r4, #6
	ldrsh r0, [r3, r4]
	add r2, r2, r0
	mov r1, #48
	ldrsh r0, [r5, r1]
	add r2, r2, r0
	mov r4, #192
	lsl r4, r4, #4
	add r2, r2, r4
	b _0803A172
_0803A138:
	.4byte gUnknown_03001A1C
_0803A13C:
	.4byte 0x00007FFF
_0803A140:
	.4byte 0x03001B68
_0803A144:
	.4byte gUnknown_03001940
_0803A148:
	.4byte 0x03001B64
_0803A14C:
	.4byte 0x03001B50
_0803A150:
	.4byte 0xFFFFF400
_0803A154:
	ldr r3, [r5, #104]
	mov r4, #4
	ldrsh r1, [r3, r4]
_0803A15A:
	ldr r2, [r5, #32]
	add r1, r2, r1
	mov r4, #48
	ldrsh r0, [r5, r4]
	add r1, r1, r0
	str r1, [r5, #108]
	mov r1, #6
	ldrsh r0, [r3, r1]
	add r2, r2, r0
	mov r4, #48
	ldrsh r0, [r5, r4]
	add r2, r2, r0
_0803A172:
	str r2, [r5, #116]
	mov r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, [r5, #36]
	add r1, r2, r1
	mov r4, #50
	ldrsh r0, [r5, r4]
	add r1, r1, r0
	str r1, [r5, #112]
	mov r1, #2
	ldrsh r0, [r3, r1]
	add r2, r2, r0
	mov r3, #50
	ldrsh r0, [r5, r3]
	add r2, r2, r0
	str r2, [r5, #120]
_0803A192:
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	ldr r4, [sp, #16]
	add r4, r4, #176
	str r4, [sp, #16]
	add r6, r6, #176
	mov r0, #176
	add r8, r8, r0
	mov r1, r10
	cmp r1, #19
	bhi _0803A1B0
	b _08039E18
_0803A1B0:
	ldr r4, _0803A280  @ =gUnknown_03001A1C
	ldr r2, [r4]
	mov r0, #128
	lsl r0, r0, #7
	and r0, r0, r2
	cmp r0, #0
	beq _0803A1CC
	ldr r0, _0803A284  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0803A1CC
	b _0803A4FC
_0803A1CC:
	mov r0, #128
	lsl r0, r0, #5
	and r2, r2, r0
	cmp r2, #0
	bne _0803A1DA
	bl sub_080415C8
_0803A1DA:
	ldr r1, _0803A288  @ =0x03001A58
	mov r0, #200
	lsl r0, r0, #7
	str r0, [r1]
	ldr r1, _0803A28C  @ =0x03001950
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	bne _0803A1F6
	b _0803A41C
_0803A1F6:
	mov r2, #0
	mov r10, r2
	ldr r0, _0803A290  @ =gUnknown_03001940
	ldr r0, [r0]
	mov r8, r0
	ldr r3, _0803A294  @ =0xFFFFFE00
	add r7, r3, #0
_0803A204:
	mov r0, r8
	add r0, r0, #152
	ldrb r0, [r0]
	mov r4, #1
	add r4, r4, r10
	mov r9, r4
	cmp r0, #1
	beq _0803A216
	b _0803A402
_0803A216:
	mov r5, r8
	ldr r0, _0803A298  @ =gUnknown_03000C2C
	mov r1, r9
	ldr r2, [r0]
	mov r0, r8
	bl _call_via_r2
	ldr r0, _0803A29C  @ =0x03001958
	mov r2, r8
	ldr r1, [r2, #76]
	ldr r0, [r0]
	cmp r1, r0
	bne _0803A254
	ldr r0, _0803A2A0  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r2, #32]
	ldr r0, [r0, #32]
	sub r2, r1, r0
	sub r1, r0, r1
	cmp r2, #0
	blt _0803A242
	add r1, r2, #0
_0803A242:
	ldr r0, _0803A288  @ =0x03001A58
	ldr r0, [r0]
	cmp r1, r0
	bcs _0803A254
	ldr r1, _0803A28C  @ =0x03001950
	mov r0, r8
	add r0, r0, #61
	ldrb r0, [r0]
	strb r0, [r1]
_0803A254:
	add r0, r5, #0
	add r0, r0, #127
	ldrb r0, [r0]
	lsl r0, r0, #27
	cmp r0, #0
	bge _0803A2A4
	ldr r1, [r5, #32]
	asr r1, r1, #8
	ldrb r2, [r5, #2]
	add r4, r5, #0
	add r4, r4, #136
	ldr r3, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _0803A2BE
	.byte 0x00
	.byte 0x00
_0803A280:
	.4byte gUnknown_03001A1C
_0803A284:
	.4byte gNextLevelInLevelTable
_0803A288:
	.4byte 0x03001A58
_0803A28C:
	.4byte 0x03001950
_0803A290:
	.4byte gUnknown_03001940
_0803A294:
	.4byte 0xFFFFFE00
_0803A298:
	.4byte gUnknown_03000C2C
_0803A29C:
	.4byte 0x03001958
_0803A2A0:
	.4byte gUnknown_030019AC
_0803A2A4:
	ldr r2, [r5, #32]
	asr r2, r2, #8
	ldrb r1, [r5, #2]
	add r4, r5, #0
	add r4, r4, #136
	ldr r3, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	mov r1, #2
	ldrsb r1, [r0, r1]
	add r1, r1, r2
_0803A2BE:
	add r2, r5, #0
	add r2, r2, #126
	lsl r1, r1, #23
	lsr r1, r1, #23
	ldrh r0, [r2]
	and r0, r0, r7
	orr r0, r0, r1
	strh r0, [r2]
	add r6, r2, #0
	ldr r2, [r5, #36]
	ldrb r1, [r5, #2]
	ldr r3, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	asr r2, r2, #8
	ldrb r0, [r0, #3]
	add r2, r2, r0
	add r3, r5, #0
	add r3, r3, #124
	strb r2, [r3]
	ldrh r0, [r5]
	cmp r0, #0
	bne _0803A324
	ldr r4, _0803A31C  @ =0xFFFFFE62
	add r0, r4, #0
	ldrh r1, [r5, #4]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0803A344
	ldrh r2, [r6]
	lsl r0, r2, #23
	lsr r0, r0, #23
	sub r0, r0, #16
	ldr r4, _0803A320  @ =0x000001FF
	add r1, r4, #0
	and r0, r0, r1
	and r2, r2, r7
	orr r2, r2, r0
	strh r2, [r6]
	ldrb r0, [r3]
	sub r0, r0, #32
	strb r0, [r3]
	b _0803A344
_0803A31C:
	.4byte 0xFFFFFE62
_0803A320:
	.4byte 0x000001FF
_0803A324:
	cmp r0, #8
	bne _0803A344
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #7
	bne _0803A344
	ldrh r0, [r6]
	lsl r1, r0, #23
	lsr r1, r1, #23
	sub r1, r1, #16
	ldr r3, _0803A394  @ =0x000001FF
	add r2, r3, #0
	and r1, r1, r2
	and r0, r0, r7
	orr r0, r0, r1
	strh r0, [r6]
_0803A344:
	ldr r0, _0803A398  @ =0x03001B68
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803A37A
	ldr r3, _0803A39C  @ =0x03001B64
	ldrb r1, [r3]
	cmp r1, #0
	beq _0803A37A
	ldr r0, _0803A3A0  @ =0x03001B50
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A37A
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r1, r0
	bne _0803A37A
	ldr r2, _0803A3A4  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldr r4, [sp, #12]
	lsl r1, r4, #16
	asr r1, r1, #16
	bl sub_0803FA50
_0803A37A:
	add r0, r5, #0
	add r0, r0, #132
	ldr r2, [r0]
	ldr r0, [r2, #12]
	mov r1, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0803A3A8
	add r0, r5, #0
	bl sub_08040144
	b _0803A3DC
	.byte 0x00
	.byte 0x00
_0803A394:
	.4byte 0x000001FF
_0803A398:
	.4byte 0x03001B68
_0803A39C:
	.4byte 0x03001B64
_0803A3A0:
	.4byte 0x03001B50
_0803A3A4:
	.4byte gUnknown_03001940
_0803A3A8:
	ldr r1, [r2, #8]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803A3BC
	add r0, r5, #0
	bl sub_0803FE08
	b _0803A3DC
_0803A3BC:
	mov r0, #128
	lsl r0, r0, #20
	and r0, r0, r1
	cmp r0, #0
	beq _0803A3CE
	add r0, r5, #0
	bl sub_0803FFFC
	b _0803A3DC
_0803A3CE:
	mov r0, #64
	and r1, r1, r0
	cmp r1, #0
	beq _0803A3DC
	add r0, r5, #0
	bl sub_080404D0
_0803A3DC:
	ldr r0, _0803A418  @ =gUnknown_03001A00
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803A3EC
	ldrh r0, [r5, #48]
	ldrh r1, [r5, #54]
	sub r0, r0, r1
	strh r0, [r5, #48]
_0803A3EC:
	mov r0, #0
	strh r0, [r5, #54]
	ldr r0, [r5, #92]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _0803A402
	add r0, r5, #0
	bl sub_0803FAFC
_0803A402:
	mov r1, r9
	lsl r0, r1, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r2, #176
	add r8, r8, r2
	cmp r0, #19
	bhi _0803A414
	b _0803A204
_0803A414:
	b _0803A4C8
	.byte 0x00
	.byte 0x00
_0803A418:
	.4byte gUnknown_03001A00
_0803A41C:
	mov r3, #0
	mov r10, r3
	ldr r0, _0803A460  @ =gUnknown_03001940
	ldr r0, [r0]
	mov r8, r0
	ldr r4, _0803A464  @ =0x000001FF
	add r7, r4, #0
	ldr r0, _0803A468  @ =0xFFFFFE00
	mov r9, r0
	mov r4, r8
	add r4, r4, #126
	mov r6, r8
	add r6, r6, #136
_0803A436:
	ldrb r0, [r4, #26]
	cmp r0, #1
	bne _0803A4B2
	mov r5, r8
	ldrb r0, [r4, #1]
	lsl r0, r0, #27
	cmp r0, #0
	bge _0803A46C
	ldr r1, [r5, #32]
	asr r1, r1, #8
	ldrb r2, [r5, #2]
	ldr r3, [r6]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _0803A484
_0803A460:
	.4byte gUnknown_03001940
_0803A464:
	.4byte 0x000001FF
_0803A468:
	.4byte 0xFFFFFE00
_0803A46C:
	mov r1, r8
	ldr r2, [r1, #32]
	asr r2, r2, #8
	ldrb r1, [r1, #2]
	ldr r3, [r6]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	mov r1, #2
	ldrsb r1, [r0, r1]
	add r1, r1, r2
_0803A484:
	lsl r1, r1, #16
	lsr r1, r1, #16
	and r1, r1, r7
	ldrh r2, [r4]
	mov r0, r9
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r1, [r5, #36]
	ldrb r2, [r5, #2]
	add r0, r5, #0
	add r0, r0, #136
	ldr r3, [r0]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	asr r1, r1, #8
	ldrb r0, [r0, #3]
	add r1, r1, r0
	add r0, r5, #0
	add r0, r0, #124
	strb r1, [r0]
_0803A4B2:
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	add r4, r4, #176
	add r6, r6, #176
	mov r2, #176
	add r8, r8, r2
	cmp r0, #19
	bls _0803A436
_0803A4C8:
	bl sub_08041F70
	ldr r0, _0803A4E0  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803A4E4
	bl sub_08042614
	b _0803A4FC
	.byte 0x00
	.byte 0x00
_0803A4E0:
	.4byte gNextLevelInLevelTable
_0803A4E4:
	ldr r0, _0803A50C  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0803A4FC
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	bne _0803A4FC
	bl sub_08042920
_0803A4FC:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0803A50C:
	.4byte gLevelType
	THUMB_FUNC_END update_level_08039C44

	THUMB_FUNC_START sub_0803A510
sub_0803A510: @ 0x0803A510
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	mov r12, r0
	ldr r0, _0803A59C  @ =0x03000324
	ldr r1, [r0]
	cmp r1, #0
	bne _0803A52E
	mov r1, r12
	ldr r0, [r1, #32]
	ldr r2, _0803A59C  @ =0x03000324
	str r0, [r2]
_0803A52E:
	ldr r0, _0803A5A0  @ =0x03000328
	ldr r1, [r0]
	mov r3, r12
	ldr r4, [r3, #36]
	cmp r1, #0
	bne _0803A53E
	add r5, r0, #0
	str r4, [r5]
_0803A53E:
	mov r7, r12
	ldr r2, [r7, #100]
	mov r0, #4
	ldrsh r3, [r2, r0]
	ldr r1, [r7, #32]
	add r1, r1, r3
	mov r5, #6
	ldrsh r0, [r2, r5]
	sub r0, r0, r3
	asr r0, r0, #1
	add r6, r1, r0
	mov r7, #0
	ldrsh r1, [r2, r7]
	add r3, r4, r1
	mov r4, #2
	ldrsh r0, [r2, r4]
	sub r0, r0, r1
	asr r0, r0, #1
	add r7, r3, r0
	ldr r0, _0803A5A4  @ =gUnknown_030019AC
	ldr r3, [r0]
	ldr r2, [r3, #100]
	mov r5, #4
	ldrsh r4, [r2, r5]
	ldr r1, [r3, #32]
	add r1, r1, r4
	mov r5, #6
	ldrsh r0, [r2, r5]
	sub r0, r0, r4
	asr r0, r0, #1
	add r5, r1, r0
	mov r0, #0
	ldrsh r4, [r2, r0]
	ldr r1, [r3, #36]
	add r1, r1, r4
	mov r3, #2
	ldrsh r0, [r2, r3]
	sub r0, r0, r4
	asr r0, r0, #1
	add r1, r1, r0
	cmp r6, r5
	bge _0803A5A8
	sub r5, r5, r6
	mov r8, r5
	mov r4, #1
	str r4, [sp]
	b _0803A5B2
_0803A59C:
	.4byte 0x03000324
_0803A5A0:
	.4byte 0x03000328
_0803A5A4:
	.4byte gUnknown_030019AC
_0803A5A8:
	sub r6, r6, r5
	mov r8, r6
	mov r5, #1
	neg r5, r5
	str r5, [sp]
_0803A5B2:
	cmp r7, r1
	bge _0803A5BE
	sub r6, r1, r7
	mov r7, #1
	str r7, [sp, #4]
	b _0803A5C6
_0803A5BE:
	sub r6, r7, r1
	mov r0, #1
	neg r0, r0
	str r0, [sp, #4]
_0803A5C6:
	ldr r1, _0803A600  @ =gUnknown_080B51F8
	mov r2, #0
	ldrsh r3, [r1, r2]
	mov r4, #32
	ldrsh r5, [r1, r4]
	mov r4, #0
	ldr r2, _0803A604  @ =gUnknown_080B51D8
	mov r7, #2
	ldrsh r0, [r2, r7]
	mov r7, r8
	mul r7, r0, r7
	add r0, r7, #0
	asr r0, r0, #8
	str r0, [sp, #8]
	mov r7, r12
	add r7, r7, #144
	mov r0, #146
	add r0, r0, r12
	mov r9, r0
	ldr r2, _0803A608  @ =0x0300031C
	mov r10, r2
	ldr r0, [sp, #8]
	cmp r6, r0
	bge _0803A60C
	add r3, r5, #0
	mov r2, #0
	ldrsh r5, [r1, r2]
	b _0803A642
	.byte 0x00
	.byte 0x00
_0803A600:
	.4byte gUnknown_080B51F8
_0803A604:
	.4byte gUnknown_080B51D8
_0803A608:
	.4byte 0x0300031C
_0803A60C:
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #14
	bhi _0803A642
	add r0, r4, #1
	lsl r0, r0, #1
	ldr r2, _0803A674  @ =gUnknown_080B51D8
	add r0, r0, r2
	mov r2, #0
	ldrsh r0, [r0, r2]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	asr r0, r0, #8
	cmp r6, r0
	bge _0803A60C
	mov r0, #16
	sub r0, r0, r4
	lsl r0, r0, #1
	add r0, r0, r1
	mov r5, #0
	ldrsh r3, [r0, r5]
	lsl r0, r4, #1
	add r0, r0, r1
	mov r1, #0
	ldrsh r5, [r0, r1]
_0803A642:
	ldr r2, [sp]
	mul r3, r2, r3
	ldr r4, [sp, #4]
	mul r5, r4, r5
	ldrh r0, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, r5
	strh r0, [r1]
	ldr r2, _0803A678  @ =0x03000314
	ldr r0, [r2]
	add r1, r0, r3
	str r1, [r2]
	ldr r3, _0803A67C  @ =0x03000318
	ldr r0, [r3]
	add r0, r0, r5
	str r0, [r3]
	cmp r1, #128
	ble _0803A680
	mov r0, #128
	str r0, [r2]
	b _0803A68C
	.byte 0x00
	.byte 0x00
_0803A674:
	.4byte gUnknown_080B51D8
_0803A678:
	.4byte 0x03000314
_0803A67C:
	.4byte 0x03000318
_0803A680:
	mov r0, #128
	neg r0, r0
	cmp r1, r0
	bge _0803A68C
	ldr r4, _0803A69C  @ =0x03000314
	str r0, [r4]
_0803A68C:
	ldr r5, _0803A6A0  @ =0x03000318
	ldr r0, [r5]
	cmp r0, #128
	ble _0803A6A4
	mov r0, #128
	str r0, [r5]
	b _0803A6B0
	.byte 0x00
	.byte 0x00
_0803A69C:
	.4byte 0x03000314
_0803A6A0:
	.4byte 0x03000318
_0803A6A4:
	mov r1, #128
	neg r1, r1
	cmp r0, r1
	bge _0803A6B0
	ldr r0, _0803A6C0  @ =0x03000318
	str r1, [r0]
_0803A6B0:
	mov r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #128
	ble _0803A6C4
	mov r0, #128
	strh r0, [r7]
	b _0803A6CE
	.byte 0x00
	.byte 0x00
_0803A6C0:
	.4byte 0x03000318
_0803A6C4:
	mov r1, #128
	neg r1, r1
	cmp r0, r1
	bge _0803A6CE
	strh r1, [r7]
_0803A6CE:
	mov r2, r9
	mov r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #128
	ble _0803A6DE
	mov r0, #128
	strh r0, [r2]
	b _0803A6EA
_0803A6DE:
	mov r1, #128
	neg r1, r1
	cmp r0, r1
	bge _0803A6EA
	mov r4, r9
	strh r1, [r4]
_0803A6EA:
	ldrh r2, [r7]
	lsl r2, r2, #16
	asr r2, r2, #21
	mov r5, r12
	ldrh r5, [r5, #48]
	add r2, r2, r5
	mov r0, r12
	strh r2, [r0, #48]
	mov r1, r9
	ldrh r0, [r1]
	lsl r0, r0, #16
	asr r0, r0, #21
	mov r3, r12
	ldrh r3, [r3, #50]
	add r0, r0, r3
	mov r4, r12
	strh r0, [r4, #50]
	ldr r5, _0803A738  @ =0x03000314
	ldr r1, [r5]
	asr r1, r1, #7
	mov r3, r10
	ldr r0, [r3]
	add r0, r0, r1
	str r0, [r3]
	ldr r4, _0803A73C  @ =0x03000318
	ldr r1, [r4]
	asr r1, r1, #7
	ldr r5, _0803A740  @ =0x03000320
	ldr r0, [r5]
	add r0, r0, r1
	str r0, [r5]
	lsl r2, r2, #16
	asr r2, r2, #16
	cmp r2, #128
	ble _0803A744
	mov r0, #128
	mov r1, r12
	strh r0, [r1, #48]
	b _0803A750
_0803A738:
	.4byte 0x03000314
_0803A73C:
	.4byte 0x03000318
_0803A740:
	.4byte 0x03000320
_0803A744:
	mov r0, #128
	neg r0, r0
	cmp r2, r0
	bge _0803A750
	mov r2, r12
	strh r0, [r2, #48]
_0803A750:
	mov r3, r12
	mov r4, #50
	ldrsh r0, [r3, r4]
	cmp r0, #128
	ble _0803A760
	mov r0, #128
	strh r0, [r3, #50]
	b _0803A76C
_0803A760:
	mov r1, #128
	neg r1, r1
	cmp r0, r1
	bge _0803A76C
	mov r5, r12
	strh r1, [r5, #50]
_0803A76C:
	mov r1, r10
	ldr r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	cmp r0, r1
	ble _0803A77E
	mov r2, r10
	str r1, [r2]
	b _0803A788
_0803A77E:
	ldr r1, _0803A798  @ =0xFFFFFF00
	cmp r0, r1
	bge _0803A788
	mov r3, r10
	str r1, [r3]
_0803A788:
	ldr r4, _0803A79C  @ =0x03000320
	ldr r0, [r4]
	mov r1, #128
	lsl r1, r1, #1
	cmp r0, r1
	ble _0803A7A0
	str r1, [r4]
	b _0803A7AA
_0803A798:
	.4byte 0xFFFFFF00
_0803A79C:
	.4byte 0x03000320
_0803A7A0:
	ldr r1, _0803A7E8  @ =0xFFFFFF00
	cmp r0, r1
	bge _0803A7AA
	ldr r5, _0803A7EC  @ =0x03000320
	str r1, [r5]
_0803A7AA:
	mov r2, r10
	ldr r1, _0803A7F0  @ =0x03000324
	ldr r0, [r1]
	ldr r1, [r2]
	add r0, r0, r1
	ldr r3, _0803A7F0  @ =0x03000324
	str r0, [r3]
	ldr r4, _0803A7F4  @ =0x03000328
	ldr r0, [r4]
	ldr r5, _0803A7EC  @ =0x03000320
	ldr r1, [r5]
	add r0, r0, r1
	str r0, [r4]
	ldr r1, _0803A7F8  @ =gCurrentLevelWidth
	mov r3, #0
	ldrsh r0, [r1, r3]
	sub r0, r0, #16
	lsl r0, r0, #8
	mov r4, r12
	ldr r1, [r4, #32]
	cmp r1, r0
	ble _0803A800
	str r0, [r4, #32]
	mov r0, #0
	strh r0, [r7]
	strh r0, [r4, #48]
	ldr r5, _0803A7FC  @ =0x03000314
	str r0, [r5]
	str r0, [r2]
	b _0803A816
	.byte 0x00
	.byte 0x00
_0803A7E8:
	.4byte 0xFFFFFF00
_0803A7EC:
	.4byte 0x03000320
_0803A7F0:
	.4byte 0x03000324
_0803A7F4:
	.4byte 0x03000328
_0803A7F8:
	.4byte gCurrentLevelWidth
_0803A7FC:
	.4byte 0x03000314
_0803A800:
	cmp r1, #0
	bge _0803A816
	mov r0, #0
	mov r1, r12
	str r0, [r1, #32]
	strh r0, [r7]
	strh r0, [r1, #48]
	ldr r2, _0803A83C  @ =0x03000314
	str r0, [r2]
	mov r3, r10
	str r0, [r3]
_0803A816:
	ldr r4, _0803A840  @ =gCurrentLevelHeight
	mov r5, #0
	ldrsh r0, [r4, r5]
	sub r0, r0, #16
	lsl r0, r0, #8
	mov r7, r12
	ldr r1, [r7, #36]
	cmp r1, r0
	ble _0803A84C
	str r0, [r7, #36]
	mov r0, #0
	mov r1, r9
	strh r0, [r1]
	strh r0, [r7, #50]
	ldr r2, _0803A844  @ =0x03000318
	str r0, [r2]
	ldr r3, _0803A848  @ =0x03000320
	str r0, [r3]
	b _0803A866
_0803A83C:
	.4byte 0x03000314
_0803A840:
	.4byte gCurrentLevelHeight
_0803A844:
	.4byte 0x03000318
_0803A848:
	.4byte 0x03000320
_0803A84C:
	ldr r0, _0803A878  @ =0xFFFFE000
	cmp r1, r0
	bge _0803A866
	mov r4, r12
	str r0, [r4, #36]
	mov r0, #0
	mov r5, r9
	strh r0, [r5]
	strh r0, [r4, #50]
	ldr r7, _0803A87C  @ =0x03000318
	str r0, [r7]
	ldr r1, _0803A880  @ =0x03000320
	str r0, [r1]
_0803A866:
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
_0803A878:
	.4byte 0xFFFFE000
_0803A87C:
	.4byte 0x03000318
_0803A880:
	.4byte 0x03000320
	THUMB_FUNC_END sub_0803A510

	THUMB_FUNC_START sub_0803A884
sub_0803A884: @ 0x0803A884
	push {r4,r5,lr}
	add r2, r0, #0
	ldrh r3, [r2]
	cmp r3, #0
	bne _0803A91C
	ldrb r1, [r2, #12]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0803A8A6
	ldr r0, _0803A8D4  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #136
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	beq _0803A8F0
_0803A8A6:
	ldr r0, _0803A8D8  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0803A8DC
	ldr r0, _0803A8D4  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803A8DC
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _0803A908
	b _0803A910
_0803A8D4:
	.4byte gUnknown_03001A1C
_0803A8D8:
	.4byte gLevelType
_0803A8DC:
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrh r0, [r0, #20]
	cmp r0, #0
	bne _0803A8EA
	b _0803AA6E
_0803A8EA:
	strh r3, [r2, #50]
	strh r3, [r2, #48]
	b _0803AA6E
_0803A8F0:
	add r0, r2, #0
	add r0, r0, #132
	ldr r1, [r0]
	ldrh r0, [r1, #20]
	cmp r0, #0
	beq _0803A918
	ldr r0, [r1, #8]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	beq _0803A910
_0803A908:
	add r0, r2, #0
	bl sub_0803D96C
	b _0803AA6E
_0803A910:
	add r0, r2, #0
	bl sub_0803D800
	b _0803AA6E
_0803A918:
	str r3, [r2, #80]
	b _0803AA6E
_0803A91C:
	cmp r3, #128
	bne _0803A9D4
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r1, [r0, #8]
	mov r0, #128
	lsl r0, r0, #9
	and r1, r1, r0
	cmp r1, #0
	beq _0803A9A4
	ldr r0, _0803A968  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r0, #136
	lsl r0, r0, #5
	and r1, r1, r0
	cmp r1, #0
	bne _0803A974
	ldr r3, _0803A96C  @ =0x0300032C
	ldrh r4, [r3]
	mov r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	beq _0803A950
	strh r4, [r2, #48]
	strh r1, [r3]
_0803A950:
	ldr r3, _0803A970  @ =0x0300032E
	ldrh r4, [r3]
	mov r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	beq _0803A960
	strh r4, [r2, #50]
	strh r1, [r3]
_0803A960:
	add r0, r2, #0
	bl sub_0803A510
	b _0803AA6E
_0803A968:
	.4byte gUnknown_03001A1C
_0803A96C:
	.4byte 0x0300032C
_0803A970:
	.4byte 0x0300032E
_0803A974:
	ldrh r1, [r2, #48]
	mov r3, #48
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0803A986
	ldr r0, _0803A99C  @ =0x0300032C
	strh r1, [r0]
	mov r0, #0
	strh r0, [r2, #48]
_0803A986:
	ldrh r1, [r2, #50]
	mov r5, #50
	ldrsh r0, [r2, r5]
	cmp r0, #0
	beq _0803AA6E
	ldr r0, _0803A9A0  @ =0x0300032E
	strh r1, [r0]
	mov r0, #0
	strh r0, [r2, #50]
	b _0803AA6E
	.byte 0x00
	.byte 0x00
_0803A99C:
	.4byte 0x0300032C
_0803A9A0:
	.4byte 0x0300032E
_0803A9A4:
	add r0, r2, #0
	add r0, r0, #144
	strh r1, [r0]
	add r0, r0, #2
	strh r1, [r0]
	ldr r0, _0803A9C4  @ =0x03000314
	str r1, [r0]
	ldr r0, _0803A9C8  @ =0x03000318
	str r1, [r0]
	strh r1, [r2, #48]
	strh r1, [r2, #50]
	ldr r0, _0803A9CC  @ =0x0300031C
	str r1, [r0]
	ldr r0, _0803A9D0  @ =0x03000320
	str r1, [r0]
	b _0803AA6E
_0803A9C4:
	.4byte 0x03000314
_0803A9C8:
	.4byte 0x03000318
_0803A9CC:
	.4byte 0x0300031C
_0803A9D0:
	.4byte 0x03000320
_0803A9D4:
	cmp r3, #170
	bne _0803AA16
	ldrb r1, [r2, #12]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0803AA2C
	ldr r0, _0803AA08  @ =gUnknown_03001A1C
	ldr r0, [r0]
	ldr r1, _0803AA0C  @ =0x00101908
	and r0, r0, r1
	cmp r0, #0
	bne _0803AA2C
	add r0, r2, #0
	add r0, r0, #132
	ldr r1, [r0]
	ldrh r0, [r1, #20]
	cmp r0, #0
	beq _0803AA10
	ldr r0, [r1, #8]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _0803AA54
	b _0803AA5C
_0803AA08:
	.4byte gUnknown_03001A1C
_0803AA0C:
	.4byte 0x00101908
_0803AA10:
	mov r0, #50
	ldrsh r1, [r2, r0]
	b _0803AA68
_0803AA16:
	ldrb r1, [r2, #12]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0803AA2C
	ldr r0, _0803AA34  @ =gUnknown_03001A1C
	ldr r0, [r0]
	ldr r1, _0803AA38  @ =0x00101900
	and r0, r0, r1
	cmp r0, #0
	beq _0803AA3C
_0803AA2C:
	mov r0, #0
	strh r0, [r2, #50]
	strh r0, [r2, #48]
	b _0803AA6E
_0803AA34:
	.4byte gUnknown_03001A1C
_0803AA38:
	.4byte 0x00101900
_0803AA3C:
	add r0, r2, #0
	add r0, r0, #132
	ldr r1, [r0]
	ldrh r0, [r1, #20]
	cmp r0, #0
	beq _0803AA64
	ldr r0, [r1, #8]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	beq _0803AA5C
_0803AA54:
	add r0, r2, #0
	bl sub_08041170
	b _0803AA6E
_0803AA5C:
	add r0, r2, #0
	bl sub_0803D910
	b _0803AA6E
_0803AA64:
	mov r3, #50
	ldrsh r1, [r2, r3]
_0803AA68:
	ldr r0, [r2, #80]
	add r0, r0, r1
	str r0, [r2, #80]
_0803AA6E:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803A884

	THUMB_FUNC_START sub_0803AA74
sub_0803AA74: @ 0x0803AA74
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #40
	ldr r0, _0803AAC4  @ =gUnknown_03001940
	ldr r4, [r0]
	mov r7, #0
	mov r0, #0
	mov r10, r0
_0803AA8A:
	add r0, r4, #0
	add r0, r0, #152
	ldrb r5, [r0]
	add r1, r7, #1
	mov r9, r1
	mov r0, #176
	add r0, r0, r4
	mov r8, r0
	cmp r5, #1
	beq _0803AAA0
	b _0803ACD8
_0803AAA0:
	add r0, r4, #0
	add r0, r0, #154
	ldrh r1, [r0]
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0803AAB0
	b _0803ACD8
_0803AAB0:
	add r0, r4, #0
	add r0, r0, #168
	ldr r1, [r0]
	cmp r1, #0
	beq _0803AAC8
	add r0, r4, #0
	bl _call_via_r1
	b _0803ACD8
	.byte 0x00
	.byte 0x00
_0803AAC4:
	.4byte gUnknown_03001940
_0803AAC8:
	add r6, r4, #0
	ldrb r1, [r4, #12]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803ABB0
	ldr r3, _0803AB24  @ =gUnknown_030019A4
	ldrb r0, [r3]
	cmp r0, #0
	bne _0803AB98
	ldr r0, _0803AB28  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r2, #16
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0803AB4A
	ldr r1, _0803AB2C  @ =0xFFFFFD80
	add r0, r1, #0
	ldrh r1, [r4, #4]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #8
	bhi _0803AB48
	mov r1, #0
	add r0, r4, #0
	add r0, r0, #132
	ldr r2, [r0]
	ldrb r3, [r2]
	cmp r1, r3
	bge _0803AB4A
	add r7, r0, #0
	add r5, r3, #0
	ldr r2, [r2, #36]
	mov r4, #0
_0803AB10:
	add r3, r4, #0
	ldrb r0, [r2]
	cmp r0, #222
	beq _0803AB30
	add r2, r2, #40
	add r4, r4, #40
	add r1, r1, #1
	cmp r1, r5
	blt _0803AB10
	b _0803AB4A
_0803AB24:
	.4byte gUnknown_030019A4
_0803AB28:
	.4byte gUnknown_03001990
_0803AB2C:
	.4byte 0xFFFFFD80
_0803AB30:
	add r0, r6, #0
	add r0, r0, #63
	strb r1, [r0]
	ldr r0, [r7]
	ldr r0, [r0, #36]
	add r0, r4, r0
	ldrh r0, [r0, #2]
	strh r0, [r6, #58]
	add r0, r6, #0
	bl sub_0803C9D4
	b _0803AB4A
_0803AB48:
	strb r2, [r3]
_0803AB4A:
	ldr r0, _0803AB8C  @ =gUnknown_030019A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AB98
	ldr r0, _0803AB90  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0803AB98
	ldr r1, _0803AB94  @ =0xFFFFFD80
	add r0, r1, #0
	ldrh r1, [r6, #4]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #8
	bls _0803AB70
	b _0803ACD0
_0803AB70:
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #171
	strh r0, [r4, #2]
	add r0, r6, #0
	mov r1, sp
	mov r2, #171
	bl update_mario_action_0803ED98
	b _0803ACD0
_0803AB8C:
	.4byte gUnknown_030019A4
_0803AB90:
	.4byte gUnknown_03001990
_0803AB94:
	.4byte 0xFFFFFD80
_0803AB98:
	ldrb r1, [r6, #12]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803ABA8
	add r0, r6, #0
	bl sub_0803C9D4
_0803ABA8:
	mov r0, r10
	strh r0, [r6, #50]
	strh r0, [r6, #48]
	b _0803ACD0
_0803ABB0:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0803AC38
	add r0, r4, #0
	add r1, r4, #0
	bl sub_0803C650
	lsl r0, r0, #24
	cmp r0, #0
	beq _0803ABC6
	b _0803ACD0
_0803ABC6:
	ldr r0, _0803AC14  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #136
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	beq _0803ABD6
	b _0803ACD0
_0803ABD6:
	add r1, r4, #0
	add r1, r1, #132
	ldr r2, [r1]
	ldrh r0, [r2, #20]
	cmp r0, #0
	beq _0803ACD0
	ldr r2, [r2, #12]
	mov r3, #128
	lsl r3, r3, #21
	and r3, r3, r2
	cmp r3, #0
	bne _0803ACD0
	mov r0, #128
	lsl r0, r0, #19
	and r2, r2, r0
	cmp r2, #0
	bne _0803AC18
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r1, [r1]
	ldrh r1, [r1, #20]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r1
	bcc _0803ACD0
	ldr r0, [r4, #96]
	and r0, r0, r5
	cmp r0, #0
	bne _0803ACBC
	b _0803ACB8
_0803AC14:
	.4byte gUnknown_03001A1C
_0803AC18:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0803AC28
	sub r0, r0, #1
	strh r0, [r4, #8]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0803ACD0
_0803AC28:
	ldr r0, [r4, #96]
	and r0, r0, r5
	cmp r0, #0
	bne _0803ACB8
	ldr r0, [r1]
	ldrh r0, [r0, #20]
	sub r0, r0, #1
	b _0803ACBE
_0803AC38:
	add r0, r4, #0
	add r1, r4, #0
	bl sub_0803C650
	lsl r0, r0, #24
	cmp r0, #0
	bne _0803ACD0
	ldr r0, _0803AC90  @ =0x03001A60
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803ACD0
	ldr r0, _0803AC94  @ =gUnknown_03001A1C
	ldr r3, [r0]
	ldr r0, _0803AC98  @ =0x00101100
	and r3, r3, r0
	cmp r3, #0
	bne _0803ACD0
	add r2, r4, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #0
	beq _0803ACD0
	ldr r0, [r1, #12]
	mov r1, #128
	lsl r1, r1, #19
	and r0, r0, r1
	cmp r0, #0
	bne _0803AC9C
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r1, [r2]
	ldrh r1, [r1, #20]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r1
	bcc _0803ACD0
	ldr r0, [r4, #96]
	and r0, r0, r5
	cmp r0, #0
	bne _0803ACBC
	b _0803ACB8
	.byte 0x00
	.byte 0x00
_0803AC90:
	.4byte 0x03001A60
_0803AC94:
	.4byte gUnknown_03001A1C
_0803AC98:
	.4byte 0x00101100
_0803AC9C:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0803ACA6
	sub r0, r0, #1
	strh r0, [r4, #8]
_0803ACA6:
	ldr r0, [r2]
	ldrh r1, [r0, #20]
	ldrh r0, [r4, #8]
	cmp r0, r1
	bcc _0803ACD0
	ldr r0, [r4, #96]
	and r0, r0, r5
	cmp r0, #0
	beq _0803ACBC
_0803ACB8:
	strh r3, [r4, #8]
	b _0803ACC0
_0803ACBC:
	sub r0, r1, #1
_0803ACBE:
	strh r0, [r4, #8]
_0803ACC0:
	ldrb r0, [r6, #12]
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r6, #12]
	add r7, r7, #1
	mov r9, r7
	add r4, r4, #176
	mov r8, r4
_0803ACD0:
	ldr r0, [r6, #92]
	ldr r1, _0803ACF8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r6, #92]
_0803ACD8:
	mov r1, r9
	lsl r0, r1, #24
	lsr r7, r0, #24
	mov r4, r8
	cmp r7, #19
	bhi _0803ACE6
	b _0803AA8A
_0803ACE6:
	add sp, sp, #40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803ACF8:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0803AA74

	THUMB_FUNC_START update_grabbed_object_0803ACFC
update_grabbed_object_0803ACFC: @ 0x0803ACFC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r7, r0, #0
	ldr r2, _0803AD50  @ =gUnknown_03001940
	add r0, r0, #61
	ldrb r1, [r0]
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [sp]
	add r1, r7, #0
	add r1, r1, #132
	ldr r3, [r1]
	ldr r0, _0803AD54  @ =0x0000FFFF
	mov r10, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0803AD9C
	ldrh r0, [r7]
	cmp r0, #7
	bne _0803AD60
	ldr r0, [r7, #92]
	mov r1, #192
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0803AD48
	ldr r0, [r7, #96]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0803AD58
_0803AD48:
	add r0, r7, #0
	bl sub_0804AF84
	b _0803AEE6
_0803AD50:
	.4byte gUnknown_03001940
_0803AD54:
	.4byte 0x0000FFFF
_0803AD58:
	add r0, r7, #0
	bl sub_0804EFBC
	b _0803AEE6
_0803AD60:
	cmp r0, #9
	beq _0803AD66
	b _0803AEE6
_0803AD66:
	ldr r0, [r7, #92]
	mov r1, #192
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0803AD7E
	ldr r0, [r7, #96]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0803AD86
_0803AD7E:
	add r0, r7, #0
	bl sub_0804FE6C
	b _0803AEE6
_0803AD86:
	add r0, r7, #0
	bl sub_08053144
	b _0803AEE6
_0803AD8E:
	lsr r6, r6, #16
	mov r10, r6
	ldr r0, [r3, #36]
	add r0, r5, r0
	ldrh r0, [r0, #2]
	str r0, [sp, #4]
	b _0803ADDE
_0803AD9C:
	mov r2, #0
	mov r9, r2
	mov r8, r1
	ldrb r0, [r3]
	cmp r9, r0
	bge _0803ADEE
_0803ADA8:
	mov r1, r9
	lsl r6, r1, #16
	asr r4, r6, #16
	ldr r1, [r3, #36]
	lsl r0, r4, #2
	add r0, r0, r4
	lsl r5, r0, #3
	add r1, r5, r1
	ldr r2, [r1, #36]
	add r0, r7, #0
	str r3, [sp, #8]
	bl _call_via_r2
	lsl r0, r0, #24
	ldr r3, [sp, #8]
	cmp r0, #0
	bne _0803AD8E
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	mov r9, r2
	asr r0, r0, #16
	mov r2, r8
	ldr r1, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	blt _0803ADA8
_0803ADDE:
	mov r1, r9
	lsl r0, r1, #16
	asr r0, r0, #16
	mov r2, r8
	ldr r1, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	blt _0803AE0C
_0803ADEE:
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r0]
	sub r1, r1, #1
	lsl r1, r1, #16
	lsr r2, r1, #16
	mov r10, r2
	asr r1, r1, #16
	ldr r2, [r3, #36]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	ldrh r0, [r0, #2]
	str r0, [sp, #4]
_0803AE0C:
	mov r1, r10
	lsl r0, r1, #16
	asr r1, r0, #16
	cmp r1, #0
	blt _0803AEE6
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r1, [r3, #36]
	add r4, r1, r0
	ldrb r1, [r4, #11]
	ldr r2, [r4, #28]
	ldrb r3, [r4, #1]
	ldr r0, [sp]
	bl sub_080382EC
	ldr r0, [r4, #28]
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803AE44
	mov r0, #4
	ldrsh r2, [r7, r0]
	add r0, r7, #0
	add r1, r4, #0
	bl update_level_object_0803E84C
	b _0803AE52
_0803AE44:
	ldr r1, [sp, #4]
	lsl r2, r1, #16
	asr r2, r2, #16
	add r0, r7, #0
	add r1, r4, #0
	bl update_level_object_0803E84C
_0803AE52:
	ldr r0, [r7, #92]
	ldr r1, _0803AEB8  @ =0xFFFFF3FF
	and r0, r0, r1
	str r0, [r7, #92]
	ldr r0, [r7, #96]
	ldr r1, _0803AEBC  @ =0xBFF0FFFF
	and r0, r0, r1
	str r0, [r7, #96]
	ldr r0, [r4, #28]
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803AED0
	add r0, r7, #0
	add r0, r0, #61
	ldrb r2, [r0]
	ldr r1, _0803AEC0  @ =0x03001958
	ldr r1, [r1]
	add r4, r0, #0
	cmp r2, r1
	bne _0803AE9C
	ldr r3, _0803AEC4  @ =gUnknown_03001A1C
	ldr r1, [r3]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803AE9C
	mov r0, #8
	neg r0, r0
	and r1, r1, r0
	str r1, [r3]
	ldr r0, _0803AEC8  @ =0x03001A54
	ldr r1, [r0]
	lsl r0, r2, #1
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0]
_0803AE9C:
	ldrh r0, [r7]
	cmp r0, #187
	bne _0803AEAE
	ldr r0, _0803AECC  @ =0x03001E40
	ldr r1, [r7, #72]
	add r1, r1, r0
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_0803AEAE:
	ldrb r0, [r4]
	bl sub_08039B64
	b _0803AEE6
	.byte 0x00
	.byte 0x00
_0803AEB8:
	.4byte 0xFFFFF3FF
_0803AEBC:
	.4byte 0xBFF0FFFF
_0803AEC0:
	.4byte 0x03001958
_0803AEC4:
	.4byte gUnknown_03001A1C
_0803AEC8:
	.4byte 0x03001A54
_0803AECC:
	.4byte 0x03001E40
_0803AED0:
	ldr r0, [r4, #32]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0803AEDE
	bl sub_080424F8
_0803AEDE:
	ldr r1, [sp]
	add r1, r1, #153
	mov r0, #1
	strb r0, [r1]
_0803AEE6:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END update_grabbed_object_0803ACFC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803AEF8
sub_0803AEF8: @ 0x0803AEF8
	push {r4,lr}
	add r4, r0, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r0, r1, #0
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldrh r3, [r4]
	cmp r3, #0
	beq _0803AF0E
	b _0803B184
_0803AF0E:
	lsl r0, r2, #16
	asr r2, r0, #16
	cmp r2, #27
	beq _0803AF1A
	cmp r2, #31
	bne _0803AF3A
_0803AF1A:
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	asr r2, r2, #8
	add r2, r2, #8
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #0
	bl sub_0804138C
	b _0803B2F4
_0803AF3A:
	mov r0, #240
	lsl r0, r0, #1
	cmp r2, r0
	beq _0803AF60
	sub r0, r0, #172
	cmp r2, r0
	beq _0803AF60
	add r0, r0, #162
	cmp r2, r0
	beq _0803AF60
	sub r0, r0, #204
	cmp r2, r0
	beq _0803AF60
	add r0, r0, #55
	cmp r2, r0
	beq _0803AF60
	add r0, r0, #4
	cmp r2, r0
	bne _0803AF74
_0803AF60:
	ldr r2, [r4, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	asr r3, r3, #8
	add r3, r3, #6
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #2
	b _0803B006
_0803AF74:
	ldr r0, _0803AFB0  @ =0x000001E1
	cmp r2, r0
	beq _0803AF98
	sub r0, r0, #171
	cmp r2, r0
	beq _0803AF98
	add r0, r0, #161
	cmp r2, r0
	beq _0803AF98
	sub r0, r0, #204
	cmp r2, r0
	beq _0803AF98
	add r0, r0, #56
	cmp r2, r0
	beq _0803AF98
	add r0, r0, #3
	cmp r2, r0
	bne _0803AFB4
_0803AF98:
	ldr r2, [r4, #32]
	asr r2, r2, #8
	add r2, r2, #24
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	asr r3, r3, #8
	add r3, r3, #6
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #2
	b _0803B024
_0803AFB0:
	.4byte 0x000001E1
_0803AFB4:
	mov r0, #234
	lsl r0, r0, #1
	cmp r2, r0
	bne _0803AFD0
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #22
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #6
	b _0803B006
_0803AFD0:
	ldr r0, _0803AFEC  @ =0x000001D5
	cmp r2, r0
	bne _0803AFF0
	ldr r2, [r4, #32]
	asr r2, r2, #8
	add r2, r2, #20
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #6
	b _0803B024
	.byte 0x00
	.byte 0x00
_0803AFEC:
	.4byte 0x000001D5
_0803AFF0:
	cmp r2, #25
	bne _0803B00E
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #8
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #9
_0803B006:
	mov r1, #0
	bl sub_0804138C
	b _0803B2F4
_0803B00E:
	cmp r2, #26
	bne _0803B02C
	ldr r2, [r4, #32]
	asr r2, r2, #8
	add r2, r2, #12
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #9
_0803B024:
	mov r1, #1
	bl sub_0804138C
	b _0803B2F4
_0803B02C:
	cmp r2, #246
	beq _0803B04A
	cmp r2, #244
	beq _0803B04A
	ldr r1, _0803B068  @ =0x000001CF
	cmp r2, r1
	beq _0803B04A
	cmp r2, #247
	beq _0803B04A
	cmp r2, #245
	beq _0803B04A
	mov r3, #233
	lsl r3, r3, #1
	cmp r2, r3
	bne _0803B06C
_0803B04A:
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	asr r2, r2, #8
	add r2, r2, #8
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #7
	bl sub_0804138C
	b _0803B2F4
	.byte 0x00
	.byte 0x00
_0803B068:
	.4byte 0x000001CF
_0803B06C:
	mov r0, #141
	lsl r0, r0, #1
	cmp r2, r0
	beq _0803B0CC
	mov r0, #139
	lsl r0, r0, #2
	cmp r2, r0
	beq _0803B0CC
	sub r0, r0, #94
	cmp r2, r0
	beq _0803B0CC
	cmp r2, r1
	beq _0803B0CC
	add r0, r0, #2
	cmp r2, r0
	beq _0803B0CC
	sub r0, r0, #150
	cmp r2, r0
	beq _0803B0CC
	add r0, r0, #214
	cmp r2, r0
	beq _0803B0CC
	sub r0, r0, #209
	cmp r2, r0
	beq _0803B0CC
	sub r0, r0, #36
	cmp r2, r0
	beq _0803B0CC
	ldr r0, _0803B0E4  @ =0x00000232
	cmp r2, r0
	beq _0803B0CC
	sub r0, r0, #97
	cmp r2, r0
	beq _0803B0CC
	cmp r2, r3
	beq _0803B0CC
	add r0, r0, #2
	cmp r2, r0
	beq _0803B0CC
	sub r0, r0, #152
	cmp r2, r0
	beq _0803B0CC
	add r0, r0, #227
	cmp r2, r0
	beq _0803B0CC
	sub r0, r0, #222
	cmp r2, r0
	bne _0803B0E8
_0803B0CC:
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #8
	bl sub_0804138C
	b _0803B2F4
_0803B0E4:
	.4byte 0x00000232
_0803B0E8:
	cmp r2, #25
	beq _0803B10E
	cmp r2, #252
	beq _0803B10E
	mov r0, #134
	lsl r0, r0, #1
	cmp r2, r0
	beq _0803B10E
	cmp r2, #29
	beq _0803B10E
	cmp r2, #26
	beq _0803B10E
	cmp r2, #253
	beq _0803B10E
	add r0, r0, #1
	cmp r2, r0
	beq _0803B10E
	cmp r2, #33
	bne _0803B11E
_0803B10E:
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	b _0803B2B8
_0803B11E:
	cmp r2, #68
	beq _0803B12A
	cmp r2, #70
	beq _0803B12A
	cmp r2, #66
	bne _0803B146
_0803B12A:
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #1
	bl sub_0804138C
	b _0803B2F4
_0803B146:
	cmp r2, #36
	beq _0803B158
	cmp r2, #39
	beq _0803B158
	cmp r2, #77
	beq _0803B158
	cmp r2, #78
	beq _0803B158
	b _0803B2F4
_0803B158:
	ldr r0, _0803B180  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803B168
	b _0803B2F4
_0803B168:
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #11
	bl sub_0804138C
	b _0803B2F4
_0803B180:
	.4byte gUnknown_03001A1C
_0803B184:
	cmp r3, #170
	bne _0803B19A
	cmp r2, #5
	beq _0803B18E
	b _0803B2F4
_0803B18E:
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #8
	b _0803B2AC
_0803B19A:
	cmp r3, #120
	bne _0803B1BE
	cmp r2, #5
	beq _0803B1A4
	b _0803B2F4
_0803B1A4:
	cmp r1, #6
	beq _0803B1AA
	b _0803B2F4
_0803B1AA:
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #2
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	b _0803B2B8
_0803B1BE:
	cmp r3, #129
	bne _0803B1E2
	cmp r2, #5
	beq _0803B1C8
	b _0803B2F4
_0803B1C8:
	cmp r1, #6
	beq _0803B1CE
	b _0803B2F4
_0803B1CE:
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #2
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	b _0803B2B8
_0803B1E2:
	cmp r3, #130
	bne _0803B206
	cmp r2, #5
	beq _0803B1EC
	b _0803B2F4
_0803B1EC:
	cmp r1, #6
	beq _0803B1F2
	b _0803B2F4
_0803B1F2:
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #2
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	b _0803B2B8
_0803B206:
	cmp r3, #131
	bne _0803B226
	cmp r2, #131
	bne _0803B2F4
	cmp r1, #131
	bne _0803B2F4
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #2
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	b _0803B2B8
_0803B226:
	cmp r3, #132
	bne _0803B246
	cmp r2, #132
	bne _0803B2F4
	cmp r1, #132
	bne _0803B2F4
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #2
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	b _0803B2B8
_0803B246:
	cmp r3, #133
	bne _0803B266
	cmp r2, #133
	bne _0803B2F4
	cmp r1, #133
	bne _0803B2F4
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #2
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	b _0803B2B8
_0803B266:
	cmp r3, #134
	bne _0803B286
	cmp r2, #134
	bne _0803B2F4
	cmp r1, #134
	bne _0803B2F4
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #2
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	b _0803B2B8
_0803B286:
	cmp r3, #121
	bne _0803B2CC
	lsl r0, r0, #16
	ldr r1, _0803B2C4  @ =0xFFFC0000
	add r0, r0, r1
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0803B2F4
	lsl r0, r2, #16
	ldr r1, _0803B2C8  @ =0xFFFE0000
	add r0, r0, r1
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0803B2F4
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #10
_0803B2AC:
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	asr r3, r3, #8
	sub r3, r3, #16
	lsl r3, r3, #16
_0803B2B8:
	lsr r3, r3, #16
	mov r0, #9
	bl sub_0804138C
	b _0803B2F4
	.byte 0x00
	.byte 0x00
_0803B2C4:
	.4byte 0xFFFC0000
_0803B2C8:
	.4byte 0xFFFE0000
_0803B2CC:
	ldrh r0, [r4]
	cmp r0, #122
	bne _0803B2F4
	lsl r0, r2, #16
	ldr r1, _0803B2FC  @ =0xFFED0000
	add r0, r0, r1
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0803B2F4
	mov r1, #1
	neg r1, r1
	ldr r2, [r4, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #17
	bl sub_0804138C
_0803B2F4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803B2FC:
	.4byte 0xFFED0000
	THUMB_FUNC_END sub_0803AEF8

	THUMB_FUNC_START sub_0803B300
sub_0803B300: @ 0x0803B300
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #160
	mov r8, r0
	add r7, r1, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803B354
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r0, #27
	strh r0, [r4, #2]
	mov r0, #128
	lsl r0, r0, #4
	str r0, [sp, #28]
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #30
	strh r0, [r4, #2]
	mov r0, r8
	mov r1, sp
	mov r2, #27
	bl update_mario_action_0803ED98
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #30
	b _0803B38C
_0803B354:
	add r5, sp, #80
	add r0, r5, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r5]
	mov r6, #31
	strh r6, [r5, #2]
	mov r0, #128
	lsl r0, r0, #4
	str r0, [r5, #28]
	add r4, sp, #120
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	strh r6, [r4, #2]
	mov r0, r8
	add r1, r5, #0
	mov r2, #31
	bl update_mario_action_0803ED98
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #31
_0803B38C:
	bl update_level_object_0803E84C
	ldr r0, [r7, #92]
	ldr r1, _0803B3AC  @ =0xFFFFF3FF
	and r0, r0, r1
	str r0, [r7, #92]
	ldr r0, [r7, #96]
	ldr r1, _0803B3B0  @ =0xBFF0FFFF
	and r0, r0, r1
	str r0, [r7, #96]
	add sp, sp, #160
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0803B3AC:
	.4byte 0xFFFFF3FF
_0803B3B0:
	.4byte 0xBFF0FFFF
	THUMB_FUNC_END sub_0803B300

	THUMB_FUNC_START sub_0803B3B4
sub_0803B3B4: @ 0x0803B3B4
	push {r4-r7,lr}
	sub sp, sp, #120
	add r7, r0, #0
	add r6, r1, #0
	ldrh r0, [r6]
	cmp r0, #176
	bne _0803B3CA
	add r0, r7, #0
	bl sub_0803B300
	b _0803B4A2
_0803B3CA:
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803B438
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r0, #27
	strh r0, [r4, #2]
	mov r0, #128
	lsl r0, r0, #4
	str r0, [sp, #28]
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #31
	strh r0, [r4, #2]
	add r0, r7, #0
	mov r1, sp
	mov r2, #27
	bl update_mario_action_0803ED98
	ldr r0, _0803B430  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	add r1, r4, #0
	cmp r0, #0
	bne _0803B42A
	ldr r0, _0803B434  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	beq _0803B42A
	cmp r0, #5
	bne _0803B4A2
_0803B42A:
	add r0, r6, #0
	mov r2, #31
	b _0803B48E
_0803B430:
	.4byte gNextLevelInLevelTable
_0803B434:
	.4byte gLevelType
_0803B438:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r0, #31
	strh r0, [r4, #2]
	mov r0, #128
	lsl r0, r0, #4
	str r0, [r4, #28]
	add r5, sp, #80
	add r0, r5, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #32
	strh r0, [r5, #2]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #31
	bl update_mario_action_0803ED98
	ldr r0, _0803B4AC  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	add r1, r5, #0
	cmp r0, #0
	bne _0803B48A
	ldr r0, _0803B4B0  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	beq _0803B48A
	cmp r0, #5
	bne _0803B4A2
_0803B48A:
	add r0, r6, #0
	mov r2, #32
_0803B48E:
	bl update_level_object_0803E84C
	ldr r0, [r6, #92]
	ldr r1, _0803B4B4  @ =0xFFFFF3FF
	and r0, r0, r1
	str r0, [r6, #92]
	ldr r0, [r6, #96]
	ldr r1, _0803B4B8  @ =0xBFF0FFFF
	and r0, r0, r1
	str r0, [r6, #96]
_0803B4A2:
	add sp, sp, #120
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803B4AC:
	.4byte gNextLevelInLevelTable
_0803B4B0:
	.4byte gLevelType
_0803B4B4:
	.4byte 0xFFFFF3FF
_0803B4B8:
	.4byte 0xBFF0FFFF
	THUMB_FUNC_END sub_0803B3B4

	THUMB_FUNC_START sub_0803B4BC
sub_0803B4BC: @ 0x0803B4BC
	push {r4-r6,lr}
	sub sp, sp, #108
	add r5, r1, #0
	add r6, r5, #0
	add r6, r6, #132
	ldr r0, [r6]
	ldr r2, [r0, #32]
	cmp r2, #0
	bne _0803B4D0
	ldr r2, [r5, #100]
_0803B4D0:
	ldr r4, _0803B530  @ =0x03001A5C
	ldr r0, [r4]
	mov r1, #15
	and r0, r0, r1
	strb r0, [r5, #14]
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r1, [r5, #32]
	add r0, r1, r0
	str r0, [sp, #12]
	mov r3, #6
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [sp, #20]
	mov r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r5, #36]
	add r0, r1, r0
	str r0, [sp, #16]
	mov r3, #2
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	ldr r0, _0803B534  @ =0xFFFFFF00
	and r1, r1, r0
	str r1, [sp, #24]
	mov r2, #128
	lsl r2, r2, #1
	add r0, sp, #12
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	add r2, r0, #0
	mov r1, #127
	and r1, r1, r2
	str r1, [r4]
	cmp r1, #0
	bne _0803B51E
	b _0803B63E
_0803B51E:
	ldr r0, _0803B538  @ =gUnknown_03001A38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803B528
	b _0803B63E
_0803B528:
	cmp r1, #1
	bne _0803B53C
	strb r1, [r5, #15]
	b _0803B5C8
_0803B530:
	.4byte 0x03001A5C
_0803B534:
	.4byte 0xFFFFFF00
_0803B538:
	.4byte gUnknown_03001A38
_0803B53C:
	cmp r1, #6
	bne _0803B544
	str r2, [r4]
	b _0803B5C8
_0803B544:
	cmp r1, #2
	bne _0803B5C8
	ldr r0, [r6]
	ldr r1, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r1, r1, r0
	cmp r1, #0
	bne _0803B5C8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #5
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803B59C
	add r4, sp, #28
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #72
	strh r0, [r4, #2]
	ldr r0, _0803B598  @ =0x00100800
	str r0, [r4, #28]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #72
	bl update_mario_action_0803ED98
	b _0803B5BA
_0803B598:
	.4byte 0x00100800
_0803B59C:
	add r4, sp, #68
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #74
	strh r0, [r4, #2]
	ldr r0, _0803B5C4  @ =0x00200800
	str r0, [r4, #28]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #74
	bl update_mario_action_0803ED98
_0803B5BA:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #72]
	mov r0, #1
	b _0803B640
_0803B5C4:
	.4byte 0x00200800
_0803B5C8:
	ldr r0, _0803B5F4  @ =0x0300194C
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0803B5F8  @ =0x03001A5C
	ldr r0, [r0]
	cmp r0, #12
	bne _0803B600
	mov r0, #192
	strh r0, [r5, #54]
	ldr r1, _0803B5FC  @ =0x030019FC
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803B610
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	beq _0803B62E
	b _0803B634
	.byte 0x00
	.byte 0x00
_0803B5F4:
	.4byte 0x0300194C
_0803B5F8:
	.4byte 0x03001A5C
_0803B5FC:
	.4byte 0x030019FC
_0803B600:
	cmp r0, #13
	bne _0803B63A
	ldr r0, _0803B618  @ =0x0000FF40
	strh r0, [r5, #54]
	ldr r1, _0803B61C  @ =0x030019FC
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803B620
_0803B610:
	sub r0, r0, #1
	strb r0, [r1]
	b _0803B63E
	.byte 0x00
	.byte 0x00
_0803B618:
	.4byte 0x0000FF40
_0803B61C:
	.4byte 0x030019FC
_0803B620:
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803B634
_0803B62E:
	mov r0, #0
	strb r0, [r1]
	b _0803B63E
_0803B634:
	mov r0, #8
	strb r0, [r1]
	b _0803B63E
_0803B63A:
	ldr r0, _0803B648  @ =0x030019FC
	strb r1, [r0]
_0803B63E:
	mov r0, #0
_0803B640:
	add sp, sp, #108
	pop {r4-r6}
	pop {r1}
	bx r1
_0803B648:
	.4byte 0x030019FC
	THUMB_FUNC_END sub_0803B4BC

	THUMB_FUNC_START sub_0803B64C
sub_0803B64C: @ 0x0803B64C
	push {r4-r6,lr}
	sub sp, sp, #80
	add r6, r0, #0
	ldr r1, [r6, #36]
	asr r1, r1, #8
	ldr r0, _0803B6E4  @ =0x03001998
	ldr r2, [r0]
	ldr r0, [r2, #20]
	asr r0, r0, #8
	cmp r1, r0
	bne _0803B72C
	mov r1, #11
	ldrsb r1, [r6, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _0803B72C
	add r0, r6, #0
	add r0, r0, #67
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, r1
	bne _0803B72C
	add r0, r6, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0803B72C
	ldr r1, [r6, #32]
	asr r1, r1, #8
	ldr r0, [r2, #32]
	asr r0, r0, #8
	add r0, r0, #16
	sub r3, r1, r0
	add r0, r3, #0
	cmp r3, #0
	bge _0803B6A2
	neg r0, r3
_0803B6A2:
	sub r0, r0, #3
	cmp r0, #20
	bhi _0803B72C
	ldr r2, _0803B6E8  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #1
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _0803B6EC  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #4
	orr r0, r0, r1
	str r0, [r2]
	cmp r3, #0
	ble _0803B6F4
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r5, #0
	mov r2, #142
	lsl r2, r2, #2
	strh r2, [r4, #2]
	ldr r0, _0803B6F0  @ =0x00100800
	str r0, [sp, #28]
	add r0, r6, #0
	mov r1, sp
	b _0803B70E
	.byte 0x00
	.byte 0x00
_0803B6E4:
	.4byte 0x03001998
_0803B6E8:
	.4byte gUnknown_03001A1C
_0803B6EC:
	.4byte gUnknown_030019A0
_0803B6F0:
	.4byte 0x00100800
_0803B6F4:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r5, #0
	ldr r2, _0803B724  @ =0x00000239
	strh r2, [r4, #2]
	ldr r0, _0803B728  @ =0x00100800
	str r0, [r4, #28]
	add r0, r6, #0
	add r1, r4, #0
_0803B70E:
	bl update_mario_action_0803ED98
	mov r0, #18
	bl sub_08071E14
	add r0, r6, #0
	add r0, r0, #70
	strh r5, [r0]
	mov r0, #1
	b _0803B72E
	.byte 0x00
	.byte 0x00
_0803B724:
	.4byte 0x00000239
_0803B728:
	.4byte 0x00100800
_0803B72C:
	mov r0, #0
_0803B72E:
	add sp, sp, #80
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803B64C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803B738
sub_0803B738: @ 0x0803B738
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #420
	str r0, [sp, #412]
	add r7, r1, #0
	mov r0, #132
	add r0, r0, r7
	mov r9, r0
	ldr r0, [r0]
	ldr r4, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r4, r4, r0
	cmp r4, #0
	beq _0803B75E
	b _0803BDE0
_0803B75E:
	add r0, r7, #0
	add r0, r0, #108
	bl sub_08031740
	mov r10, r0
	cmp r0, #0
	beq _0803B7DC
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #44
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0803B7B4
	add r4, sp, #12
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #62
	strh r0, [r4, #2]
	ldr r0, _0803B7B0  @ =0x00100800
	str r0, [sp, #40]
	add r0, r7, #0
	add r1, sp, #12
	mov r2, #62
	bl update_mario_action_0803ED98
	bl _0803C284
_0803B7B0:
	.4byte 0x00100800
_0803B7B4:
	add r4, sp, #52
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #64
	strh r0, [r4, #2]
	ldr r0, _0803B7D8  @ =0x00200800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #64
	bl update_mario_action_0803ED98
	bl _0803C284
	.byte 0x00
	.byte 0x00
_0803B7D8:
	.4byte 0x00200800
_0803B7DC:
	ldr r0, _0803B884  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #1
	and r1, r1, r2
	cmp r1, #0
	bne _0803B7EC
	b _0803B944
_0803B7EC:
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803B898
	add r4, sp, #12
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r1, #204
	lsl r1, r1, #1
	mov r8, r1
	mov r2, r8
	strh r2, [r4, #2]
	add r5, sp, #52
	add r0, r5, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #27
	strh r0, [r5, #2]
	ldr r2, _0803B888  @ =gUnknown_03001940
	ldr r1, [r7, #72]
	mov r0, #176
	mul r0, r1, r0
	ldr r4, [r2]
	add r4, r4, r0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #27
	bl update_level_object_0803E84C
	mov r5, #1
	neg r5, r5
	str r5, [r4, #76]
	ldr r0, [r4, #92]
	ldr r6, _0803B88C  @ =0xFFFFFF00
	and r0, r0, r6
	str r0, [r4, #92]
	ldr r0, [r7, #32]
	str r0, [r4, #32]
	ldr r0, [r7, #36]
	str r0, [r4, #36]
	str r5, [r7, #72]
	ldr r2, _0803B890  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #97
	neg r1, r1
	and r0, r0, r1
	str r0, [r2]
	add r0, r7, #0
	add r1, sp, #12
	mov r2, r8
	bl update_mario_action_0803ED98
	str r5, [r7, #76]
	ldr r0, [r7, #92]
	and r0, r0, r6
	str r0, [r7, #92]
	mov r0, #18
	bl sub_08071E14
	add r0, r7, #0
	add r0, r0, #70
	mov r1, r10
	strh r1, [r0]
	ldr r2, _0803B884  @ =gUnknown_03001938
	ldr r0, [r2]
	ldr r1, _0803B894  @ =0xFFFFFEFF
	and r0, r0, r1
	b _0803B924
_0803B884:
	.4byte gUnknown_03001938
_0803B888:
	.4byte gUnknown_03001940
_0803B88C:
	.4byte 0xFFFFFF00
_0803B890:
	.4byte gUnknown_03001A1C
_0803B894:
	.4byte 0xFFFFFEFF
_0803B898:
	add r6, sp, #92
	add r0, r6, #0
	mov r1, #0
	mov r2, #40
	bl memset
	ldr r0, _0803B92C  @ =0x00000199
	mov r9, r0
	mov r1, r9
	strh r1, [r6, #2]
	add r5, sp, #132
	add r0, r5, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #28
	strh r0, [r5, #2]
	ldr r2, _0803B930  @ =gUnknown_03001940
	ldr r1, [r7, #72]
	mov r0, #176
	mul r0, r1, r0
	ldr r4, [r2]
	add r4, r4, r0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #28
	bl update_level_object_0803E84C
	mov r5, #1
	neg r5, r5
	str r5, [r4, #76]
	ldr r0, [r4, #92]
	ldr r2, _0803B934  @ =0xFFFFFF00
	mov r8, r2
	and r0, r0, r2
	str r0, [r4, #92]
	ldr r0, [r7, #32]
	str r0, [r4, #32]
	ldr r0, [r7, #36]
	str r0, [r4, #36]
	str r5, [r7, #72]
	ldr r2, _0803B938  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #97
	neg r1, r1
	and r0, r0, r1
	str r0, [r2]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, r9
	bl update_mario_action_0803ED98
	str r5, [r7, #76]
	ldr r0, [r7, #92]
	mov r1, r8
	and r0, r0, r1
	str r0, [r7, #92]
	mov r0, #18
	bl sub_08071E14
	add r0, r7, #0
	add r0, r0, #70
	mov r2, r10
	strh r2, [r0]
	ldr r1, _0803B93C  @ =gUnknown_03001938
	ldr r0, [r1]
	ldr r1, _0803B940  @ =0xFFFFFEFF
	and r0, r0, r1
	ldr r2, _0803B93C  @ =gUnknown_03001938
_0803B924:
	str r0, [r2]
	bl _0803C284
	.byte 0x00
	.byte 0x00
_0803B92C:
	.4byte 0x00000199
_0803B930:
	.4byte gUnknown_03001940
_0803B934:
	.4byte 0xFFFFFF00
_0803B938:
	.4byte gUnknown_03001A1C
_0803B93C:
	.4byte gUnknown_03001938
_0803B940:
	.4byte 0xFFFFFEFF
_0803B944:
	ldr r0, _0803B988  @ =gUnknown_030019A0
	ldr r2, [r0]
	mov r0, #128
	lsl r0, r0, #6
	and r0, r0, r2
	cmp r0, #0
	beq _0803BA24
	ldr r0, _0803B98C  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r0, _0803B990  @ =0x03001998
	ldr r3, [r0]
	ldr r0, [r3, #20]
	asr r0, r0, #8
	cmp r1, r0
	bne _0803BA24
	mov r1, #4
	ldrsh r0, [r7, r1]
	ldr r1, _0803B994  @ =0x0000023A
	mov r8, r1
	cmp r0, r8
	beq _0803B97A
	mov r5, #143
	lsl r5, r5, #2
	cmp r0, r5
	bne _0803B998
_0803B97A:
	add r0, r7, #0
	bl sub_0803B64C
	lsl r0, r0, #24
	asr r0, r0, #24
	bl _0803C286
_0803B988:
	.4byte gUnknown_030019A0
_0803B98C:
	.4byte gUnknown_030019AC
_0803B990:
	.4byte 0x03001998
_0803B994:
	.4byte 0x0000023A
_0803B998:
	mov r6, #128
	lsl r6, r6, #4
	and r6, r6, r2
	cmp r6, #0
	bne _0803BA24
	mov r2, r9
	ldr r0, [r2]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0803BA24
	ldr r1, [r7, #32]
	asr r1, r1, #8
	ldr r0, [r3, #32]
	asr r0, r0, #8
	add r0, r0, #16
	sub r1, r1, r0
	cmp r1, #0
	blt _0803B9F4
	add r4, sp, #12
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, r8
	strh r0, [r4, #2]
	ldr r0, _0803B9F0  @ =0x00100800
	str r0, [sp, #40]
	add r0, r7, #0
	add r1, sp, #12
	mov r2, r8
	bl update_mario_action_0803ED98
	mov r0, #18
	bl sub_08071E14
	add r0, r7, #0
	add r0, r0, #70
	strh r6, [r0]
	bl _0803C284
_0803B9F0:
	.4byte 0x00100800
_0803B9F4:
	add r4, sp, #52
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	strh r5, [r4, #2]
	ldr r0, _0803BA20  @ =0x00100800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	bl update_mario_action_0803ED98
	mov r0, #18
	bl sub_08071E14
	add r0, r7, #0
	add r0, r0, #70
	strh r6, [r0]
	bl _0803C284
_0803BA20:
	.4byte 0x00100800
_0803BA24:
	ldr r1, _0803BB10  @ =gUnknown_03001938
	ldr r0, [r1]
	mov r1, #128
	lsl r1, r1, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0803BA34
	b _0803BC6E
_0803BA34:
	add r0, r7, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _0803BA48
	b _0803BC6E
_0803BA48:
	mov r2, #4
	ldrsh r1, [r7, r2]
	mov r0, #205
	lsl r0, r0, #1
	cmp r1, r0
	bne _0803BA58
	bl _0803C284
_0803BA58:
	add r0, r0, #3
	cmp r1, r0
	bne _0803BA62
	bl _0803C284
_0803BA62:
	mov r0, #18
	bl sub_08071E14
	mov r0, #14
	bl sub_08071E14
	add r1, r7, #0
	add r1, r1, #70
	mov r0, #0
	strh r0, [r1]
	mov r0, #11
	ldrsb r0, [r7, r0]
	mov r3, #1
	neg r3, r3
	cmp r0, r3
	bne _0803BA84
	b _0803BB82
_0803BA84:
	add r2, r0, #0
	ldr r0, _0803BB14  @ =gUnknown_03001940
	mov r8, r0
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldrh r5, [r0]
	cmp r5, #176
	bne _0803BB82
	ldr r0, [r7, #72]
	cmp r0, r3
	beq _0803BB2C
	add r4, sp, #12
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #171
	strh r0, [r4, #2]
	mov r4, #128
	lsl r4, r4, #4
	str r4, [sp, #40]
	add r6, sp, #52
	add r0, r6, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #203
	strh r0, [r6, #2]
	str r4, [r6, #28]
	ldr r0, [r7, #72]
	mul r0, r5, r0
	mov r1, r8
	ldr r4, [r1]
	add r4, r4, r0
	add r5, sp, #92
	add r0, r5, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #8
	strh r0, [r5, #2]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl update_level_object_0803E84C
	ldr r0, [r4, #92]
	ldr r1, _0803BB18  @ =0xFFFFF3FF
	and r0, r0, r1
	str r0, [r4, #92]
	ldr r0, [r4, #96]
	ldr r1, _0803BB1C  @ =0xBFF0FFFF
	and r0, r0, r1
	str r0, [r4, #96]
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803BB20
	add r0, r7, #0
	add r1, sp, #12
	b _0803BB6E
	.byte 0x00
	.byte 0x00
_0803BB10:
	.4byte gUnknown_03001938
_0803BB14:
	.4byte gUnknown_03001940
_0803BB18:
	.4byte 0xFFFFF3FF
_0803BB1C:
	.4byte 0xBFF0FFFF
_0803BB20:
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #203
	bl update_mario_action_0803ED98
	b _0803C284
_0803BB2C:
	mov r2, #4
	ldrsh r0, [r7, r2]
	cmp r0, #171
	bne _0803BB36
	b _0803C284
_0803BB36:
	cmp r0, #203
	bne _0803BB3C
	b _0803C284
_0803BB3C:
	add r5, sp, #132
	add r0, r5, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #171
	strh r0, [r5, #2]
	add r4, sp, #172
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #203
	strh r0, [r4, #2]
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803BB76
	add r0, r7, #0
	add r1, r5, #0
_0803BB6E:
	mov r2, #171
	bl update_mario_action_0803ED98
	b _0803C284
_0803BB76:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #203
	bl update_mario_action_0803ED98
	b _0803C284
_0803BB82:
	ldr r1, [r7, #72]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _0803BC18
	add r4, sp, #12
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #30
	strh r0, [r4, #2]
	mov r4, #128
	lsl r4, r4, #4
	str r4, [sp, #40]
	add r6, sp, #52
	add r0, r6, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #34
	strh r0, [r6, #2]
	str r4, [r6, #28]
	ldr r2, _0803BC00  @ =gUnknown_03001940
	ldr r1, [r7, #72]
	mov r0, #176
	mul r0, r1, r0
	ldr r4, [r2]
	add r4, r4, r0
	add r5, sp, #92
	add r0, r5, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #8
	strh r0, [r5, #2]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl update_level_object_0803E84C
	ldr r0, [r4, #92]
	ldr r1, _0803BC04  @ =0xFFFFF3FF
	and r0, r0, r1
	str r0, [r4, #92]
	ldr r0, [r4, #96]
	ldr r1, _0803BC08  @ =0xBFF0FFFF
	and r0, r0, r1
	str r0, [r4, #96]
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803BC0C
	add r0, r7, #0
	add r1, sp, #12
	b _0803BC5A
	.byte 0x00
	.byte 0x00
_0803BC00:
	.4byte gUnknown_03001940
_0803BC04:
	.4byte 0xFFFFF3FF
_0803BC08:
	.4byte 0xBFF0FFFF
_0803BC0C:
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #34
	bl update_mario_action_0803ED98
	b _0803C284
_0803BC18:
	mov r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #30
	bne _0803BC22
	b _0803C284
_0803BC22:
	cmp r0, #34
	bne _0803BC28
	b _0803C284
_0803BC28:
	add r5, sp, #132
	add r0, r5, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #30
	strh r0, [r5, #2]
	add r4, sp, #172
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #34
	strh r0, [r4, #2]
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803BC62
	add r0, r7, #0
	add r1, r5, #0
_0803BC5A:
	mov r2, #30
	bl update_mario_action_0803ED98
	b _0803C284
_0803BC62:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #34
	bl update_mario_action_0803ED98
	b _0803C284
_0803BC6E:
	ldr r0, _0803BCD8  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r0, r2]
	cmp r0, #2
	bne _0803BD1C
	ldr r0, _0803BCDC  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _0803BD1C
	ldr r0, [r7, #36]
	asr r0, r0, #8
	add r0, r0, #32
	ldr r1, _0803BCE0  @ =gUnknown_030009E0
	ldrh r1, [r1]
	cmp r0, r1
	ble _0803BD1C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #5
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803BCE8
	add r4, sp, #12
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #72
	strh r0, [r4, #2]
	ldr r0, _0803BCE4  @ =0x00100800
	str r0, [sp, #40]
	add r0, r7, #0
	add r1, sp, #12
	mov r2, #72
	bl update_mario_action_0803ED98
	b _0803BD06
_0803BCD8:
	.4byte gNextLevelInLevelTable
_0803BCDC:
	.4byte gUnknown_03001A1C
_0803BCE0:
	.4byte gUnknown_030009E0
_0803BCE4:
	.4byte 0x00100800
_0803BCE8:
	add r4, sp, #52
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #74
	strh r0, [r4, #2]
	ldr r0, _0803BD14  @ =0x00200800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #74
	bl update_mario_action_0803ED98
_0803BD06:
	ldr r2, _0803BD18  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	b _0803C27E
_0803BD14:
	.4byte 0x00200800
_0803BD18:
	.4byte gUnknown_030019A0
_0803BD1C:
	ldr r0, _0803BD90  @ =gUnknown_03000D84
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BDE0
	ldr r0, _0803BD94  @ =gUnknown_030019AC
	ldr r2, [r0]
	ldr r0, _0803BD98  @ =gUnknown_03000D7C
	ldr r3, [r0]
	ldr r0, [r2, #116]
	ldr r1, [r3, #32]
	cmp r0, r1
	ble _0803BDE0
	mov r0, #128
	lsl r0, r0, #6
	add r1, r1, r0
	ldr r0, [r2, #108]
	cmp r0, r1
	bge _0803BDE0
	ldr r0, [r3, #36]
	ldr r1, _0803BD9C  @ =0xFFFFF600
	add r0, r0, r1
	ldr r1, [r2, #36]
	cmp r1, r0
	ble _0803BDE0
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #5
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803BDA4
	add r4, sp, #92
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #72
	strh r0, [r4, #2]
	ldr r0, _0803BDA0  @ =0x00100800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #72
	bl update_mario_action_0803ED98
	b _0803BDC2
_0803BD90:
	.4byte gUnknown_03000D84
_0803BD94:
	.4byte gUnknown_030019AC
_0803BD98:
	.4byte gUnknown_03000D7C
_0803BD9C:
	.4byte 0xFFFFF600
_0803BDA0:
	.4byte 0x00100800
_0803BDA4:
	add r4, sp, #132
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #74
	strh r0, [r4, #2]
	ldr r0, _0803BDD8  @ =0x00200800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #74
	bl update_mario_action_0803ED98
_0803BDC2:
	mov r0, #1
	neg r0, r0
	str r0, [r7, #72]
	ldr r2, _0803BDDC  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	b _0803C284
	.byte 0x00
	.byte 0x00
_0803BDD8:
	.4byte 0x00200800
_0803BDDC:
	.4byte gUnknown_030019A0
_0803BDE0:
	ldr r5, _0803BE20  @ =gUnknown_030019A0
	ldr r1, [r5]
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803BE30
	add r4, sp, #12
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #145
	strh r0, [r4, #2]
	add r0, r7, #0
	add r1, sp, #12
	mov r2, #145
	bl update_mario_action_0803ED98
	ldr r0, [r5]
	ldr r1, _0803BE24  @ =0xFFFFFDFF
	and r0, r0, r1
	str r0, [r5]
	ldr r0, _0803BE28  @ =gUnknown_030019AC
	ldr r1, [r0]
	ldr r0, [r1, #32]
	ldr r2, _0803BE2C  @ =0xFFFFFC00
	add r0, r0, r2
	str r0, [r1, #32]
	b _0803C284
	.byte 0x00
	.byte 0x00
_0803BE20:
	.4byte gUnknown_030019A0
_0803BE24:
	.4byte 0xFFFFFDFF
_0803BE28:
	.4byte gUnknown_030019AC
_0803BE2C:
	.4byte 0xFFFFFC00
_0803BE30:
	mov r0, #128
	lsl r0, r0, #3
	and r1, r1, r0
	cmp r1, #0
	beq _0803BE74
	add r4, sp, #52
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #177
	strh r0, [r4, #2]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #177
	bl update_mario_action_0803ED98
	ldr r0, [r5]
	ldr r1, _0803BE6C  @ =0xFFFFFBFF
	and r0, r0, r1
	str r0, [r5]
	ldr r0, _0803BE70  @ =gUnknown_030019AC
	ldr r1, [r0]
	ldr r0, [r1, #32]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r0, r2
	str r0, [r1, #32]
	b _0803C284
_0803BE6C:
	.4byte 0xFFFFFBFF
_0803BE70:
	.4byte gUnknown_030019AC
_0803BE74:
	ldr r1, [r7, #72]
	mov r4, #1
	neg r4, r4
	cmp r1, r4
	beq _0803BF68
	ldr r0, _0803BED8  @ =gUnknown_03001940
	ldr r3, [r0]
	mov r5, #176
	add r0, r1, #0
	mul r0, r5, r0
	add r2, r0, r3
	ldrh r0, [r2]
	cmp r0, #193
	bne _0803BF68
	ldr r0, [r2, #92]
	ldr r1, _0803BEDC  @ =0xFBFFFFFF
	and r0, r0, r1
	str r0, [r2, #92]
	ldr r0, [r7, #72]
	mul r0, r5, r0
	add r0, r0, r3
	str r4, [r0, #72]
	str r4, [r7, #72]
	ldr r0, _0803BEE0  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803BF10
	ldr r1, _0803BEE4  @ =0x03001B54
	mov r0, #1
	strb r0, [r1]
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803BEEC
	add r4, sp, #92
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r2, #242
	lsl r2, r2, #1
	strh r2, [r4, #2]
	ldr r0, _0803BEE8  @ =0x00100800
	b _0803BF00
_0803BED8:
	.4byte gUnknown_03001940
_0803BEDC:
	.4byte 0xFBFFFFFF
_0803BEE0:
	.4byte gNextLevelInLevelTable
_0803BEE4:
	.4byte 0x03001B54
_0803BEE8:
	.4byte 0x00100800
_0803BEEC:
	add r4, sp, #132
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r2, #243
	lsl r2, r2, #1
	strh r2, [r4, #2]
	ldr r0, _0803BF0C  @ =0x00200800
_0803BF00:
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	bl update_mario_action_0803ED98
	b _0803C284
_0803BF0C:
	.4byte 0x00200800
_0803BF10:
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803BF44
	add r4, sp, #92
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #77
	strh r0, [r4, #2]
	ldr r0, _0803BF40  @ =0x00120800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #77
	bl update_mario_action_0803ED98
	b _0803C284
	.byte 0x00
	.byte 0x00
_0803BF40:
	.4byte 0x00120800
_0803BF44:
	add r4, sp, #132
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #78
	strh r0, [r4, #2]
	ldr r0, _0803BF64  @ =0x00220800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #78
	bl update_mario_action_0803ED98
	b _0803C284
_0803BF64:
	.4byte 0x00220800
_0803BF68:
	ldr r0, [sp, #412]
	add r1, r7, #0
	bl sub_0803B4BC
	lsl r0, r0, #24
	cmp r0, #0
	bne _0803BFDC
	ldr r0, _0803BFD0  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803BFDC
	ldr r5, _0803BFD4  @ =gUnknown_030019A0
	ldr r0, [r5]
	mov r1, #128
	lsl r1, r1, #12
	and r0, r0, r1
	cmp r0, #0
	beq _0803BFDC
	add r4, sp, #92
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	add r0, sp, #416
	ldrh r0, [r0]
	strh r0, [r4, #2]
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r1, #19
	str r1, [sp, #416]
	cmp r0, #0
	bne _0803BFB8
	mov r2, #20
	str r2, [sp, #416]
_0803BFB8:
	ldr r0, [r5]
	ldr r1, _0803BFD8  @ =0xFFF7FFFF
	and r0, r0, r1
	str r0, [r5]
	ldr r0, [sp, #416]
	lsl r2, r0, #16
	asr r2, r2, #16
	add r0, r7, #0
	add r1, r4, #0
	bl update_mario_action_0803ED98
	b _0803C284
_0803BFD0:
	.4byte gNextLevelInLevelTable
_0803BFD4:
	.4byte gUnknown_030019A0
_0803BFD8:
	.4byte 0xFFF7FFFF
_0803BFDC:
	ldr r6, _0803C030  @ =0x03001978
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0803BFE8
	b _0803C110
_0803BFE8:
	cmp r0, #1
	bne _0803C038
	ldr r2, _0803C034  @ =gUnknown_03001940
	ldr r1, [r7, #72]
	mov r0, #176
	mul r0, r1, r0
	ldr r4, [r2]
	add r4, r4, r0
	mov r5, #0
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #40
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0803B3B4
	strb r5, [r6]
	ldr r2, [r7, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r7, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #10
	mov r1, #0
	bl sub_0804138C
	b _0803C284
	.byte 0x00
	.byte 0x00
_0803C030:
	.4byte 0x03001978
_0803C034:
	.4byte gUnknown_03001940
_0803C038:
	cmp r0, #2
	bne _0803C058
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803C054
	mov r6, #27
	ldr r5, _0803C050  @ =0x00100800
	b _0803C074
_0803C050:
	.4byte 0x00100800
_0803C054:
	mov r6, #31
	b _0803C072
_0803C058:
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803C070
	mov r6, #36
	ldr r5, _0803C06C  @ =0x00100800
	b _0803C074
_0803C06C:
	.4byte 0x00100800
_0803C070:
	mov r6, #39
_0803C072:
	ldr r5, _0803C0B8  @ =0x00200800
_0803C074:
	ldr r0, [sp, #412]
	mov r1, #4
	mov r2, #0
	mov r3, #10
	bl sub_080382EC
	add r0, r7, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _0803C0BC
	add r4, sp, #92
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	strh r6, [r4, #2]
	str r5, [r4, #28]
	add r2, r6, #0
	add r0, r7, #0
	add r1, r4, #0
	bl update_mario_action_0803ED98
	mov r0, #1
	neg r0, r0
	str r0, [r7, #72]
	b _0803C0E2
_0803C0B8:
	.4byte 0x00200800
_0803C0BC:
	add r4, sp, #132
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	strh r6, [r4, #2]
	ldr r5, _0803C108  @ =gUnknown_030019AC
	ldr r0, [r5]
	add r2, r6, #0
	add r1, r4, #0
	bl update_mario_action_0803ED98
	ldr r1, [r5]
	mov r0, #1
	neg r0, r0
	str r0, [r1, #72]
_0803C0E2:
	ldr r1, [sp, #412]
	add r1, r1, #153
	mov r4, #0
	mov r0, #1
	strb r0, [r1]
	ldr r2, [r7, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r7, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #10
	mov r1, #0
	bl sub_0804138C
	ldr r0, _0803C10C  @ =0x03001978
	strb r4, [r0]
	b _0803C284
	.byte 0x00
	.byte 0x00
_0803C108:
	.4byte gUnknown_030019AC
_0803C10C:
	.4byte 0x03001978
_0803C110:
	add r0, r7, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r0, r0, r2
	cmp r0, #0
	beq _0803C124
	b _0803C23E
_0803C124:
	ldr r0, _0803C160  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #18
	and r0, r0, r1
	cmp r0, #0
	beq _0803C19C
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803C168
	add r4, sp, #172
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #36
	strh r0, [r4, #2]
	ldr r0, _0803C164  @ =0x00100800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #50
	bl update_mario_action_0803ED98
	b _0803C186
_0803C160:
	.4byte gUnknown_030019A0
_0803C164:
	.4byte 0x00100800
_0803C168:
	add r4, sp, #212
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #39
	strh r0, [r4, #2]
	ldr r0, _0803C198  @ =0x00200800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #52
	bl update_mario_action_0803ED98
_0803C186:
	ldr r0, [r7, #36]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r0, r1
	mov r1, #128
	neg r1, r1
	and r0, r0, r1
	str r0, [r7, #36]
	b _0803C27E
_0803C198:
	.4byte 0x00200800
_0803C19C:
	add r5, r1, #0
	and r5, r5, r2
	cmp r5, #0
	beq _0803C1FC
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803C1D8
	add r4, sp, #252
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #56
	strh r0, [r4, #2]
	ldr r0, _0803C1D4  @ =0x00100800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #56
	bl update_mario_action_0803ED98
	b _0803C27E
	.byte 0x00
	.byte 0x00
_0803C1D4:
	.4byte 0x00100800
_0803C1D8:
	add r4, sp, #292
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #58
	strh r0, [r4, #2]
	ldr r0, _0803C1F8  @ =0x00200800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #58
	bl update_mario_action_0803ED98
	b _0803C27E
_0803C1F8:
	.4byte 0x00200800
_0803C1FC:
	mov r6, #128
	lsl r6, r6, #15
	and r6, r6, r1
	cmp r6, #0
	beq _0803C234
	add r4, sp, #332
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #79
	strh r0, [r4, #2]
	ldr r0, _0803C230  @ =0x00100800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #79
	bl update_mario_action_0803ED98
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	b _0803C272
	.byte 0x00
	.byte 0x00
_0803C230:
	.4byte 0x00100800
_0803C234:
	mov r0, #128
	lsl r0, r0, #16
	and r1, r1, r0
	cmp r1, #0
	bne _0803C244
_0803C23E:
	mov r0, #1
	neg r0, r0
	b _0803C286
_0803C244:
	add r4, sp, #372
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #80
	strh r0, [r4, #2]
	ldr r0, _0803C298  @ =0x00100800
	str r0, [r4, #28]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #80
	bl update_mario_action_0803ED98
	ldr r0, [r7, #32]
	ldr r2, _0803C29C  @ =0xFFFFFE00
	add r0, r0, r2
	str r0, [r7, #32]
	str r6, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r6, [sp, #8]
_0803C272:
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0803C27E:
	mov r0, #1
	neg r0, r0
	str r0, [r7, #72]
_0803C284:
	mov r0, #1
_0803C286:
	add sp, sp, #420
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0803C298:
	.4byte 0x00100800
_0803C29C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0803B738

	THUMB_FUNC_START sub_0803C2A0
sub_0803C2A0: @ 0x0803C2A0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #28
	add r4, r0, #0
	add r0, r0, #144
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #120
	bgt _0803C2D4
	add r0, r4, #0
	add r0, r0, #146
	mov r2, #0
	ldrsh r1, [r0, r2]
	add r5, r0, #0
	cmp r1, #20
	bne _0803C398
_0803C2C4:
	add r2, r4, #0
	add r2, r2, #129
	ldrb r1, [r2]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #64
	beq _0803C36A
	b _0803C38A
_0803C2D4:
	cmp r0, #240
	bgt _0803C2E8
	add r0, r4, #0
	add r0, r0, #146
	mov r3, #0
	ldrsh r1, [r0, r3]
	add r5, r0, #0
	cmp r1, #10
	bne _0803C398
	b _0803C2C4
_0803C2E8:
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0803C34E
	ldr r0, _0803C334  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r1, r4, #0
	add r1, r1, #61
	ldrb r2, [r1]
	ldr r0, [r0, #72]
	cmp r0, r2
	beq _0803C34E
	mov r0, #4
	ldrsh r1, [r4, r0]
	cmp r1, #55
	beq _0803C34E
	cmp r1, #56
	beq _0803C34E
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803C338
	cmp r1, #41
	beq _0803C344
	add r0, r2, #0
	mov r1, #41
	bl sub_0803E128
	b _0803C344
	.byte 0x00
	.byte 0x00
_0803C334:
	.4byte gUnknown_030019AC
_0803C338:
	cmp r1, #42
	beq _0803C344
	add r0, r2, #0
	mov r1, #42
	bl sub_0803E128
_0803C344:
	ldr r0, [r4, #96]
	mov r1, #128
	lsl r1, r1, #7
	orr r0, r0, r1
	str r0, [r4, #96]
_0803C34E:
	add r0, r4, #0
	add r0, r0, #146
	mov r2, #0
	ldrsh r1, [r0, r2]
	add r5, r0, #0
	cmp r1, #4
	bne _0803C398
	add r2, r4, #0
	add r2, r2, #129
	ldrb r1, [r2]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #64
	bne _0803C38A
_0803C36A:
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r2]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0803C394
_0803C38A:
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2]
_0803C394:
	mov r0, #0
	strh r0, [r5]
_0803C398:
	ldrh r0, [r5]
	add r0, r0, #1
	mov r6, #0
	strh r0, [r5]
	add r2, r4, #0
	add r2, r2, #144
	ldrh r3, [r2]
	mov r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0803C3B8  @ =0x000001A3
	cmp r1, r0
	bgt _0803C3BC
	add r0, r3, #1
	strh r0, [r2]
	b _0803C4B6
	.byte 0x00
	.byte 0x00
_0803C3B8:
	.4byte 0x000001A3
_0803C3BC:
	ldr r1, [r4, #32]
	mov r8, r1
	ldr r2, [r4, #36]
	mov r9, r2
	ldr r7, _0803C3F8  @ =gUnknown_030019AC
	ldr r0, [r7]
	add r1, r4, #0
	add r1, r1, #61
	ldrb r2, [r1]
	ldr r0, [r0, #72]
	add r5, r1, #0
	cmp r0, r2
	bne _0803C3FC
	add r0, r2, #0
	bl sub_08039B64
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #255
	mov r1, #193
	mov r2, #0
	mov r3, #0
	bl spawn_sprite_08038DF4
	ldr r1, [r7]
	lsl r0, r0, #24
	lsr r4, r0, #24
	str r4, [r1, #72]
	b _0803C42A
	.byte 0x00
	.byte 0x00
_0803C3F8:
	.4byte gUnknown_030019AC
_0803C3FC:
	add r0, r2, #0
	bl sub_08039B64
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #255
	mov r1, #193
	mov r2, #0
	mov r3, #0
	bl spawn_sprite_08038DF4
	lsl r0, r0, #24
	lsr r4, r0, #24
	str r6, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #129
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0803C42A:
	ldr r0, _0803C488  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r4, r0
	add r0, r0, r1
	ldr r1, _0803C48C  @ =0xFFFFF800
	mov r3, r8
	add r2, r3, r1
	str r2, [r0, #32]
	add r1, r1, r9
	str r1, [r0, #36]
	ldr r3, [r0, #100]
	mov r4, #4
	ldrsh r0, [r3, r4]
	add r0, r2, r0
	str r0, [sp, #12]
	mov r4, #6
	ldrsh r0, [r3, r4]
	add r2, r2, r0
	str r2, [sp, #20]
	mov r2, #0
	ldrsh r0, [r3, r2]
	add r0, r1, r0
	str r0, [sp, #16]
	mov r4, #2
	ldrsh r0, [r3, r4]
	add r1, r1, r0
	str r1, [sp, #24]
	add r0, sp, #12
	bl sub_08030E30
	mov r2, #0
	ldr r0, _0803C490  @ =gUnknown_030019B0
	ldrb r0, [r0]
	cmp r2, r0
	bcs _0803C4B6
	ldr r0, _0803C494  @ =0x03001CF8
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r3, r0, #0
	ldrb r0, [r5]
	cmp r1, r0
	bne _0803C498
	mov r0, #255
	strb r0, [r3]
	b _0803C4B6
	.byte 0x00
	.byte 0x00
_0803C488:
	.4byte gUnknown_03001940
_0803C48C:
	.4byte 0xFFFFF800
_0803C490:
	.4byte gUnknown_030019B0
_0803C494:
	.4byte 0x03001CF8
_0803C498:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r0, _0803C4C4  @ =gUnknown_030019B0
	ldrb r0, [r0]
	cmp r2, r0
	bcs _0803C4B6
	add r1, r2, r3
	mov r0, #0
	ldrsb r0, [r1, r0]
	ldrb r4, [r5]
	cmp r0, r4
	bne _0803C498
	mov r0, #255
	strb r0, [r1]
_0803C4B6:
	add sp, sp, #28
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0803C4C4:
	.4byte gUnknown_030019B0
	THUMB_FUNC_END sub_0803C2A0

	THUMB_FUNC_START sub_0803C4C8
sub_0803C4C8: @ 0x0803C4C8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #28
	add r4, r0, #0
	add r0, r0, #144
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #120
	bgt _0803C4FA
	add r0, r4, #0
	add r0, r0, #146
	mov r2, #0
	ldrsh r1, [r0, r2]
	add r5, r0, #0
	cmp r1, #20
	bne _0803C558
_0803C4EA:
	add r2, r4, #0
	add r2, r2, #129
	ldrb r1, [r2]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #64
	beq _0803C52A
	b _0803C54A
_0803C4FA:
	cmp r0, #240
	bgt _0803C50E
	add r0, r4, #0
	add r0, r0, #146
	mov r2, #0
	ldrsh r1, [r0, r2]
	add r5, r0, #0
	cmp r1, #10
	bne _0803C558
	b _0803C4EA
_0803C50E:
	add r0, r4, #0
	add r0, r0, #146
	mov r2, #0
	ldrsh r1, [r0, r2]
	add r5, r0, #0
	cmp r1, #4
	bne _0803C558
	add r2, r4, #0
	add r2, r2, #129
	ldrb r1, [r2]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #64
	bne _0803C54A
_0803C52A:
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	orr r0, r0, r1
	strb r0, [r2]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0803C554
_0803C54A:
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2]
_0803C554:
	mov r0, #0
	strh r0, [r5]
_0803C558:
	ldrh r0, [r5]
	add r0, r0, #1
	mov r6, #0
	strh r0, [r5]
	add r2, r4, #0
	add r2, r2, #144
	ldrh r3, [r2]
	mov r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0803C578  @ =0x000001A3
	cmp r1, r0
	bgt _0803C57C
	add r0, r3, #1
	strh r0, [r2]
	b _0803C63A
	.byte 0x00
	.byte 0x00
_0803C578:
	.4byte 0x000001A3
_0803C57C:
	ldr r0, _0803C5C4  @ =gNextLevelInLevelTable
	mov r1, #18
	ldrsh r0, [r0, r1]
	cmp r0, #5
	bne _0803C58E
	ldr r1, _0803C5C8  @ =0x03001D48
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_0803C58E:
	ldr r7, [r4, #32]
	ldr r2, [r4, #36]
	mov r8, r2
	ldr r5, _0803C5CC  @ =gUnknown_030019AC
	ldr r0, [r5]
	add r1, r4, #0
	add r1, r1, #61
	ldrb r1, [r1]
	ldr r0, [r0, #72]
	cmp r0, r1
	bne _0803C5D0
	add r0, r1, #0
	bl sub_08039B64
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #255
	mov r1, #193
	mov r2, #0
	mov r3, #0
	bl spawn_sprite_08038DF4
	ldr r1, [r5]
	lsl r0, r0, #24
	lsr r4, r0, #24
	str r4, [r1, #72]
	b _0803C5FE
_0803C5C4:
	.4byte gNextLevelInLevelTable
_0803C5C8:
	.4byte 0x03001D48
_0803C5CC:
	.4byte gUnknown_030019AC
_0803C5D0:
	add r0, r1, #0
	bl sub_08039B64
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #255
	mov r1, #193
	mov r2, #0
	mov r3, #0
	bl spawn_sprite_08038DF4
	lsl r0, r0, #24
	lsr r4, r0, #24
	str r6, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #129
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0803C5FE:
	ldr r0, _0803C648  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r4, r0
	add r0, r0, r1
	ldr r1, _0803C64C  @ =0xFFFFF800
	add r2, r7, r1
	str r2, [r0, #32]
	add r1, r1, r8
	str r1, [r0, #36]
	ldr r3, [r0, #100]
	mov r4, #4
	ldrsh r0, [r3, r4]
	add r0, r2, r0
	str r0, [sp, #12]
	mov r4, #6
	ldrsh r0, [r3, r4]
	add r2, r2, r0
	str r2, [sp, #20]
	mov r2, #0
	ldrsh r0, [r3, r2]
	add r0, r1, r0
	str r0, [sp, #16]
	mov r4, #2
	ldrsh r0, [r3, r4]
	add r1, r1, r0
	str r1, [sp, #24]
	add r0, sp, #12
	bl sub_08030E30
_0803C63A:
	add sp, sp, #28
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803C648:
	.4byte gUnknown_03001940
_0803C64C:
	.4byte 0xFFFFF800
	THUMB_FUNC_END sub_0803C4C8

	THUMB_FUNC_START sub_0803C650
sub_0803C650: @ 0x0803C650
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	str r0, [sp]
	add r7, r1, #0
	add r4, r7, #0
	add r4, r4, #132
	ldr r0, [r4]
	mov r8, r0
	ldr r1, _0803C68C  @ =0x0000FFFF
	str r1, [sp, #4]
	ldrh r0, [r7]
	cmp r0, #0
	bne _0803C6D0
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_0803B738
	lsl r0, r0, #24
	asr r0, r0, #8
	lsr r2, r0, #16
	str r2, [sp, #4]
	cmp r0, #0
	blt _0803C690
_0803C686:
	mov r0, #1
	b _0803C9C2
	.byte 0x00
	.byte 0x00
_0803C68C:
	.4byte 0x0000FFFF
_0803C690:
	mov r2, #0
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r2, r0
	blt _0803C69C
	b _0803C7B4
_0803C69C:
	lsl r6, r2, #16
	asr r4, r6, #16
	mov r3, r8
	ldr r1, [r3, #36]
	lsl r0, r4, #2
	add r0, r0, r4
	lsl r5, r0, #3
	add r1, r5, r1
	ldr r2, [r1, #36]
	add r0, r7, #0
	bl _call_via_r2
	lsl r0, r0, #24
	cmp r0, #0
	bne _0803C73C
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	asr r0, r0, #16
	add r1, r7, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldrb r1, [r1]
	cmp r0, r1
	blt _0803C69C
	b _0803C7B4
_0803C6D0:
	cmp r0, #188
	bne _0803C6FC
	ldr r0, [r7, #96]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0803C760
	ldr r0, _0803C6F4  @ =gUnknown_03001A1C
	ldr r0, [r0]
	ldr r1, _0803C6F8  @ =0x00075F00
	and r0, r0, r1
	cmp r0, #0
	bne _0803C760
	add r0, r7, #0
	bl sub_0803C2A0
	b _0803C760
_0803C6F4:
	.4byte gUnknown_03001A1C
_0803C6F8:
	.4byte 0x00075F00
_0803C6FC:
	cmp r0, #192
	bne _0803C760
	ldr r0, _0803C730  @ =gUnknown_03001A1C
	ldr r0, [r0]
	ldr r1, _0803C734  @ =0x00075F00
	and r0, r0, r1
	cmp r0, #0
	bne _0803C760
	ldr r0, _0803C738  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	bne _0803C760
	ldr r0, [r7, #96]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0803C756
	add r0, r7, #0
	bl sub_0803C4C8
	b _0803C760
	.byte 0x00
	.byte 0x00
_0803C730:
	.4byte gUnknown_03001A1C
_0803C734:
	.4byte 0x00075F00
_0803C738:
	.4byte gUnknown_030019A0
_0803C73C:
	lsr r6, r6, #16
	str r6, [sp, #4]
	mov r1, r8
	ldr r0, [r1, #36]
	b _0803C74E
_0803C746:
	lsr r6, r6, #16
	str r6, [sp, #4]
	mov r2, r8
	ldr r0, [r2, #36]
_0803C74E:
	add r0, r5, r0
	ldrh r0, [r0, #2]
	mov r10, r0
	b _0803C7B4
_0803C756:
	add r1, r7, #0
	add r1, r1, #144
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_0803C760:
	ldr r0, _0803C7F4  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #144
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803C774
	ldrh r0, [r7]
	cmp r0, #99
	bhi _0803C7B4
_0803C774:
	mov r2, #0
	add r0, r7, #0
	add r0, r0, #132
	ldr r1, [r0]
	mov r9, r0
	ldrb r1, [r1]
	cmp r2, r1
	bge _0803C7B4
_0803C784:
	lsl r6, r2, #16
	asr r4, r6, #16
	mov r3, r8
	ldr r1, [r3, #36]
	lsl r0, r4, #2
	add r0, r0, r4
	lsl r5, r0, #3
	add r1, r5, r1
	ldr r2, [r1, #36]
	add r0, r7, #0
	bl _call_via_r2
	lsl r0, r0, #24
	cmp r0, #0
	bne _0803C746
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	asr r0, r0, #16
	mov r3, r9
	ldr r1, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	blt _0803C784
_0803C7B4:
	ldr r1, [sp, #4]
	lsl r0, r1, #16
	asr r1, r0, #16
	cmp r1, #0
	bge _0803C7C0
	b _0803C9C0
_0803C7C0:
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	mov r2, r8
	ldr r1, [r2, #36]
	add r6, r1, r0
	ldrh r3, [r7, #4]
	mov r8, r3
	ldr r2, [r6, #28]
	mov r0, #128
	lsl r0, r0, #17
	and r0, r0, r2
	cmp r0, #0
	beq _0803C7F8
	ldrb r0, [r7, #12]
	mov r1, #8
	orr r1, r1, r0
	strb r1, [r7, #12]
	mov r0, r10
	strh r0, [r7, #58]
	add r0, r7, #0
	add r0, r0, #63
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0]
	b _0803C9C0
_0803C7F4:
	.4byte gUnknown_03001A1C
_0803C7F8:
	ldrb r1, [r6, #11]
	ldrb r3, [r6, #1]
	ldr r0, [sp]
	bl sub_080382EC
	ldr r1, [r6, #32]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803C824
	ldr r0, _0803C81C  @ =gUnknown_03001A1C
	ldr r1, [r0]
	ldr r2, _0803C820  @ =0xFFDFFFFF
	and r1, r1, r2
	str r1, [r0]
	b _0803C850
	.byte 0x00
	.byte 0x00
_0803C81C:
	.4byte gUnknown_03001A1C
_0803C820:
	.4byte 0xFFDFFFFF
_0803C824:
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803C840
	ldr r0, _0803C83C  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #14
	orr r1, r1, r2
	str r1, [r0]
	b _0803C850
_0803C83C:
	.4byte gUnknown_03001A1C
_0803C840:
	mov r0, #64
	and r1, r1, r0
	cmp r1, #0
	beq _0803C850
	mov r0, #180
	lsl r0, r0, #2
	bl sub_080424D8
_0803C850:
	ldr r0, [r6, #32]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0803C85E
	bl sub_080424F8
_0803C85E:
	ldr r1, [r6, #32]
	mov r0, #128
	lsl r0, r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0803C8C4
	ldr r0, [r7, #76]
	cmp r0, #0
	ble _0803C8D6
	ldr r1, _0803C8BC  @ =gUnknown_03001940
	mov r2, #176
	mul r0, r2, r0
	ldr r1, [r1]
	add r5, r1, r0
	add r4, r5, #0
	add r0, r5, #0
	add r0, r0, #172
	ldr r0, [r0]
	cmp r0, #0
	bne _0803C890
	add r0, r7, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mul r0, r2, r0
	add r4, r1, r0
_0803C890:
	add r0, r4, #0
	add r0, r0, #172
	ldr r3, [r0]
	ldr r2, _0803C8C0  @ =gCurrentEnemyScore
	ldrb r0, [r5, #13]
	add r1, r3, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
	ldr r1, [r4, #32]
	asr r1, r1, #8
	ldr r2, [r4, #36]
	asr r2, r2, #8
	ldrb r0, [r5, #13]
	mul r0, r3, r0
	bl sub_08031A64
	ldrb r0, [r5, #13]
	lsl r0, r0, #1
	strb r0, [r5, #13]
	b _0803C8D6
_0803C8BC:
	.4byte gUnknown_03001940
_0803C8C0:
	.4byte gCurrentEnemyScore
_0803C8C4:
	mov r0, #128
	lsl r0, r0, #10
	and r1, r1, r0
	cmp r1, #0
	beq _0803C8D6
	ldr r1, _0803C8EC  @ =gCurrentEnemyScore
	ldr r0, [r1]
	sub r0, r0, #100
	str r0, [r1]
_0803C8D6:
	ldr r0, [r6, #28]
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803C8FE
	ldrh r0, [r7]
	cmp r0, #0
	bne _0803C8F0
	mov r3, #4
	ldrsh r2, [r7, r3]
	b _0803C90A
_0803C8EC:
	.4byte gCurrentEnemyScore
_0803C8F0:
	mov r0, #4
	ldrsh r2, [r7, r0]
	add r0, r7, #0
	add r1, r6, #0
	bl update_level_object_0803E84C
	b _0803C922
_0803C8FE:
	ldrh r0, [r7]
	cmp r0, #0
	bne _0803C914
	mov r1, r10
	lsl r2, r1, #16
	asr r2, r2, #16
_0803C90A:
	add r0, r7, #0
	add r1, r6, #0
	bl update_mario_action_0803ED98
	b _0803C922
_0803C914:
	mov r3, r10
	lsl r2, r3, #16
	asr r2, r2, #16
	add r0, r7, #0
	add r1, r6, #0
	bl update_level_object_0803E84C
_0803C922:
	ldr r0, [r7, #92]
	ldr r1, _0803C98C  @ =0xFFFFF3FF
	and r0, r0, r1
	str r0, [r7, #92]
	ldr r0, [r7, #96]
	ldr r1, _0803C990  @ =0xBFF0FFFF
	and r0, r0, r1
	str r0, [r7, #96]
	ldr r0, [r6, #28]
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803C9A4
	add r0, r7, #0
	add r0, r0, #61
	ldrb r2, [r0]
	ldr r1, _0803C994  @ =0x03001958
	ldr r1, [r1]
	add r4, r0, #0
	cmp r2, r1
	bne _0803C96C
	ldr r3, _0803C998  @ =gUnknown_03001A1C
	ldr r1, [r3]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803C96C
	mov r0, #8
	neg r0, r0
	and r1, r1, r0
	str r1, [r3]
	ldr r0, _0803C99C  @ =0x03001A54
	ldr r1, [r0]
	lsl r0, r2, #1
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0]
_0803C96C:
	ldrh r0, [r7]
	cmp r0, #5
	bne _0803C974
	b _0803C686
_0803C974:
	cmp r0, #187
	bne _0803C984
	ldr r0, _0803C9A0  @ =0x03001E40
	ldr r1, [r7, #72]
	add r1, r1, r0
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_0803C984:
	ldrb r0, [r4]
	bl sub_08039B64
	b _0803C686
_0803C98C:
	.4byte 0xFFFFF3FF
_0803C990:
	.4byte 0xBFF0FFFF
_0803C994:
	.4byte 0x03001958
_0803C998:
	.4byte gUnknown_03001A1C
_0803C99C:
	.4byte 0x03001A54
_0803C9A0:
	.4byte 0x03001E40
_0803C9A4:
	ldr r1, [sp]
	add r1, r1, #153
	mov r0, #1
	strb r0, [r1]
	mov r0, r8
	lsl r1, r0, #16
	asr r1, r1, #16
	mov r3, r10
	lsl r2, r3, #16
	asr r2, r2, #16
	add r0, r7, #0
	bl sub_0803AEF8
	b _0803C686
_0803C9C0:
	mov r0, #0
_0803C9C2:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803C650

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803C9D4
sub_0803C9D4: @ 0x0803C9D4
	push {r4-r7,lr}
	add r6, r0, #0
	add r0, r0, #132
	ldr r2, [r0]
	sub r0, r0, #69
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r5, [r2, #36]
	add r5, r5, r0
	ldr r2, _0803CA74  @ =gUnknown_03001940
	add r7, r6, #0
	add r7, r7, #61
	ldrb r1, [r7]
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldrb r1, [r5, #11]
	ldr r2, [r5, #28]
	ldrh r4, [r6]
	neg r3, r4
	orr r3, r3, r4
	lsr r3, r3, #31
	bl sub_080382EC
	ldrb r1, [r6, #12]
	mov r0, #177
	and r0, r0, r1
	strb r0, [r6, #12]
	mov r0, #58
	ldrsh r2, [r6, r0]
	add r0, r6, #0
	add r1, r5, #0
	bl update_mario_action_0803ED98
	ldr r0, [r5, #28]
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803CA6E
	ldrb r2, [r7]
	ldr r0, _0803CA78  @ =0x03001958
	ldr r0, [r0]
	cmp r2, r0
	bne _0803CA52
	ldr r3, _0803CA7C  @ =gUnknown_03001A1C
	ldr r1, [r3]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803CA52
	mov r0, #8
	neg r0, r0
	and r1, r1, r0
	str r1, [r3]
	ldr r0, _0803CA80  @ =0x03001A54
	ldr r1, [r0]
	lsl r0, r2, #1
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0]
_0803CA52:
	ldrh r0, [r6]
	cmp r0, #187
	bne _0803CA64
	ldr r0, _0803CA84  @ =0x03001E40
	ldr r1, [r6, #72]
	add r1, r1, r0
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_0803CA64:
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_0803CA6E:
	pop {r4-r7}
	pop {r0}
	bx r0
_0803CA74:
	.4byte gUnknown_03001940
_0803CA78:
	.4byte 0x03001958
_0803CA7C:
	.4byte gUnknown_03001A1C
_0803CA80:
	.4byte 0x03001A54
_0803CA84:
	.4byte 0x03001E40
	THUMB_FUNC_END sub_0803C9D4

	THUMB_FUNC_START sub_0803CA88
sub_0803CA88: @ 0x0803CA88
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r10, r0
	lsl r1, r1, #16
	asr r0, r1, #16
	cmp r0, #1
	ble _0803CB12
	sub r0, r0, #1
	lsl r0, r0, #16
	b _0803CB0A
_0803CAA2:
	mov r5, #1
	asr r1, r4, #16
	lsl r0, r0, #16
	mov r9, r0
	cmp r5, r1
	bgt _0803CB06
	ldr r7, _0803CB20  @ =0xFFFF0000
	mov r8, r1
_0803CAB2:
	lsl r0, r5, #16
	asr r6, r0, #16
	lsl r0, r6, #3
	mov r1, r10
	add r4, r0, r1
	mov r0, #8
	neg r0, r0
	add r0, r0, r4
	mov r12, r0
	ldrh r5, [r0, #2]
	ldrh r1, [r4, #2]
	cmp r5, r1
	bls _0803CAFA
	lsl r1, r1, #16
	ldr r0, _0803CB24  @ =0x0000FFFF
	and r0, r0, r2
	orr r0, r0, r1
	ldrh r1, [r4]
	and r0, r0, r7
	add r2, r0, #0
	orr r2, r2, r1
	ldrh r1, [r4, #4]
	add r0, r7, #0
	and r0, r0, r3
	add r3, r0, #0
	orr r3, r3, r1
	strh r5, [r4, #2]
	mov r1, r12
	ldrh r0, [r1]
	strh r0, [r4]
	ldrh r0, [r1, #4]
	strh r0, [r4, #4]
	lsr r0, r2, #16
	strh r0, [r1, #2]
	strh r2, [r1]
	strh r3, [r1, #4]
_0803CAFA:
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	asr r0, r0, #16
	cmp r0, r8
	ble _0803CAB2
_0803CB06:
	ldr r0, _0803CB20  @ =0xFFFF0000
	add r0, r0, r9
_0803CB0A:
	lsr r0, r0, #16
	lsl r4, r0, #16
	cmp r4, #0
	bge _0803CAA2
_0803CB12:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0803CB20:
	.4byte 0xFFFF0000
_0803CB24:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_0803CA88

	THUMB_FUNC_START sub_0803CB28
sub_0803CB28: @ 0x0803CB28
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r8, r0
	mov r9, r1
	mov r12, r3
	ldr r0, _0803CB88  @ =gUnknown_03001940
	ldr r3, [r0]
	mov r2, #0
	mov r7, #0
	add r4, r3, #0
	add r4, r4, #132
_0803CB42:
	ldrb r0, [r4, #20]
	cmp r0, #0
	beq _0803CBA6
	ldrb r0, [r4, #21]
	cmp r0, #0
	beq _0803CBA6
	ldr r0, [r3, #36]
	mov r1, r12
	sub r0, r0, r1
	mov r5, #128
	lsl r5, r5, #7
	add r0, r0, r5
	ldr r1, _0803CB8C  @ =0x000107FF
	cmp r0, r1
	bhi _0803CBA6
	lsl r0, r2, #16
	asr r1, r0, #13
	mov r5, r8
	add r2, r1, r5
	mov r6, #0
	strh r7, [r2]
	ldrh r1, [r3]
	strh r1, [r2, #4]
	ldrh r1, [r3]
	add r5, r0, #0
	cmp r1, #7
	beq _0803CB7C
	cmp r1, #9
	bne _0803CB94
_0803CB7C:
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #14
	bne _0803CB90
	strh r6, [r2, #2]
	b _0803CB9E
_0803CB88:
	.4byte gUnknown_03001940
_0803CB8C:
	.4byte 0x000107FF
_0803CB90:
	mov r0, #5
	b _0803CB9C
_0803CB94:
	ldr r0, [r4]
	ldrb r0, [r0, #19]
	lsl r0, r0, #24
	asr r0, r0, #24
_0803CB9C:
	strh r0, [r2, #2]
_0803CB9E:
	mov r1, #128
	lsl r1, r1, #9
	add r0, r5, r1
	lsr r2, r0, #16
_0803CBA6:
	lsl r0, r7, #16
	mov r5, #128
	lsl r5, r5, #9
	add r0, r0, r5
	add r4, r4, #176
	add r3, r3, #176
	lsr r7, r0, #16
	asr r0, r0, #16
	cmp r0, #19
	ble _0803CB42
	mov r0, r9
	strh r2, [r0]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803CB28

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803CBCC
sub_0803CBCC: @ 0x0803CBCC
	push {r4-r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r12, r2
	ldr r2, _0803CBF8  @ =0x03001970
	ldrb r1, [r2]
	cmp r1, #0
	bne _0803CC0C
	ldr r0, _0803CBFC  @ =gUnknown_03000D84
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803CBE6
	b _0803CD2C
_0803CBE6:
	mov r0, #1
	strb r0, [r2]
	ldr r0, _0803CC00  @ =0x03001A44
	strb r1, [r0]
	ldr r1, _0803CC04  @ =0x03001928
	ldr r0, _0803CC08  @ =gfxLavaGeyserAnim
	ldrb r0, [r0, #1]
	strb r0, [r1]
	b _0803CD2C
_0803CBF8:
	.4byte 0x03001970
_0803CBFC:
	.4byte gUnknown_03000D84
_0803CC00:
	.4byte 0x03001A44
_0803CC04:
	.4byte 0x03001928
_0803CC08:
	.4byte gfxLavaGeyserAnim
_0803CC0C:
	ldr r0, _0803CC1C  @ =gUnknown_03000D84
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803CC20
	mov r0, #0
	strb r0, [r2]
	b _0803CD2C
	.byte 0x00
	.byte 0x00
_0803CC1C:
	.4byte gUnknown_03000D84
_0803CC20:
	ldr r2, _0803CD34  @ =0x03001A44
	ldrb r1, [r2]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r4, _0803CD38  @ =gfxLavaGeyserAnim
	add r5, r0, r4
	ldr r0, _0803CD3C  @ =gUnknown_03001A00
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CC64
	ldr r3, _0803CD40  @ =0x03001928
	ldrb r0, [r3]
	sub r0, r0, #1
	strb r0, [r3]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _0803CC64
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bls _0803CC56
	strb r1, [r2]
_0803CC56:
	ldrb r0, [r2]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r4
	ldrb r0, [r1, #1]
	strb r0, [r3]
_0803CC64:
	ldr r2, _0803CD44  @ =REG_DMA3SAD
	ldr r0, _0803CD48  @ =gfxLavaGeyserOAM
	str r0, [r2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r4, _0803CD4C  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0803CD50  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r0, [r5]
	lsl r0, r0, #8
	ldr r1, _0803CD54  @ =gfxLavaGeyser
	add r0, r0, r1
	str r0, [r2]
	mov r1, r12
	ldrh r0, [r1]
	ldr r1, _0803CD58  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0803CD5C  @ =0x84000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r0, _0803CD60  @ =gUnknown_03000D7C
	ldr r5, [r0]
	ldr r1, [r5, #32]
	asr r1, r1, #8
	ldr r0, _0803CD64  @ =gSpriteHorizontalOffset
	mov r2, #0
	ldrsh r0, [r0, r2]
	sub r1, r1, r0
	ldr r2, _0803CD68  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803CD6C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, [r5, #36]
	asr r0, r0, #8
	ldr r1, _0803CD70  @ =gUnknown_030012F4
	ldrb r1, [r1]
	sub r0, r0, r1
	strb r0, [r2]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #112
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r5, [r7]
	add r1, r1, r5
	ldr r5, _0803CD74  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _0803CD78  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r4
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
	add r0, r0, #8
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	mov r2, r12
	ldrh r2, [r2]
	add r0, r0, r2
	mov r5, r12
	strh r0, [r5]
_0803CD2C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803CD34:
	.4byte 0x03001A44
_0803CD38:
	.4byte gfxLavaGeyserAnim
_0803CD3C:
	.4byte gUnknown_03001A00
_0803CD40:
	.4byte 0x03001928
_0803CD44:
	.4byte REG_DMA3SAD
_0803CD48:
	.4byte gfxLavaGeyserOAM
_0803CD4C:
	.4byte gOamBuffer
_0803CD50:
	.4byte 0x84000002
_0803CD54:
	.4byte gfxLavaGeyser
_0803CD58:
	.4byte OBJ_VRAM0
_0803CD5C:
	.4byte 0x84000040
_0803CD60:
	.4byte gUnknown_03000D7C
_0803CD64:
	.4byte gSpriteHorizontalOffset
_0803CD68:
	.4byte 0x000001FF
_0803CD6C:
	.4byte 0xFFFFFE00
_0803CD70:
	.4byte gUnknown_030012F4
_0803CD74:
	.4byte 0x000003FF
_0803CD78:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0803CBCC

	THUMB_FUNC_START sub_0803CD7C
sub_0803CD7C: @ 0x0803CD7C
	push {r4,lr}
	mov r12, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803CD8E
	cmp r0, #5
	beq _0803CD8E
	cmp r0, #8
	bne _0803CE0C
_0803CD8E:
	mov r0, r12
	add r0, r0, #127
	ldrb r0, [r0]
	lsl r0, r0, #27
	cmp r0, #0
	bge _0803CDBC
	mov r0, r12
	ldr r1, [r0, #32]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldrb r2, [r0, #2]
	mov r4, r12
	add r4, r4, #136
	ldr r3, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _0803CDDC
_0803CDBC:
	mov r0, r12
	ldr r1, [r0, #32]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldrb r2, [r0, #2]
	mov r4, r12
	add r4, r4, #136
	ldr r3, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r1, r0
_0803CDDC:
	mov r3, r12
	add r3, r3, #126
	ldr r2, _0803CE14  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3]
	ldr r0, _0803CE18  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3]
	mov r0, r12
	ldr r1, [r0, #36]
	ldrb r2, [r0, #2]
	ldr r3, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	asr r1, r1, #8
	ldrb r0, [r0, #3]
	add r1, r1, r0
	mov r0, r12
	add r0, r0, #124
	strb r1, [r0]
_0803CE0C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803CE14:
	.4byte 0x000001FF
_0803CE18:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0803CD7C

	THUMB_FUNC_START update_level_object_sprites_0803CE1C
update_level_object_sprites_0803CE1C: @ 0x0803CE1C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #36
	add r6, r0, #0
	mov r8, r1
	mov r9, r2
	mov r10, r3
	ldr r0, _0803CEA4  @ =gSpriteHorizontalOffset
	mov r2, #0
	ldrsh r1, [r0, r2]
	str r1, [sp, #16]
	ldr r0, _0803CEA8  @ =gUnknown_030012F4
	mov r4, #0
	ldrsh r3, [r0, r4]
	str r3, [sp, #20]
	ldr r0, _0803CEAC  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803CE5E
	ldr r0, [sp, #68]
	str r0, [sp]
	add r0, r6, #0
	mov r1, r8
	mov r2, r9
	mov r3, r10
	bl sub_0803CD7C
_0803CE5E:
	add r0, r6, #0
	add r0, r0, #136
	ldr r2, [r0]
	ldr r1, [r2, #8]
	str r0, [sp, #28]
	add r7, r6, #0
	add r7, r7, #124
	str r7, [sp, #24]
	cmp r1, #0
	blt _0803CE74
	b _0803D082
_0803CE74:
	mov r1, r8
	ldrh r0, [r1]
	lsl r0, r0, #3
	ldr r3, _0803CEB0  @ =gOamBuffer
	add r5, r0, r3
	add r7, r2, #0
	ldr r0, [r7, #12]
	ldr r1, [r0, #8]
	lsr r4, r1, #24
	str r4, [sp, #4]
	lsr r0, r1, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #8]
	add r2, r4, #0
	mul r2, r0, r2
	str r2, [sp, #12]
	mov r0, #64
	and r1, r1, r0
	cmp r1, #0
	beq _0803CEB4
	lsl r1, r2, #16
	asr r0, r1, #18
	b _0803CEBA
_0803CEA4:
	.4byte gSpriteHorizontalOffset
_0803CEA8:
	.4byte gUnknown_030012F4
_0803CEAC:
	.4byte gUnknown_03001A1C
_0803CEB0:
	.4byte gOamBuffer
_0803CEB4:
	ldr r3, [sp, #12]
	lsl r1, r3, #16
	asr r0, r1, #19
_0803CEBA:
	lsl r0, r0, #16
	lsr r4, r0, #16
	str r1, [sp, #32]
	ldr r3, _0803CF68  @ =REG_DMA3SAD
	add r2, r6, #0
	add r2, r2, #124
	str r2, [r3]
	str r5, [r3, #4]
	ldr r0, _0803CF6C  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrb r1, [r6, #2]
	ldr r0, [r7, #12]
	mov r12, r0
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r12
	ldrb r1, [r0]
	lsl r0, r4, #16
	asr r0, r0, #16
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r7, #20]
	add r0, r0, r1
	str r0, [r3]
	mov r1, r10
	ldrh r0, [r1]
	ldr r1, _0803CF70  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r3, #4]
	ldr r4, [sp, #32]
	asr r0, r4, #16
	str r2, [sp, #24]
	cmp r0, #0
	bge _0803CF04
	add r0, r0, #3
_0803CF04:
	asr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrb r1, [r6, #2]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r12
	ldr r0, [r0, #8]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0803CF3C
	mov r0, r8
	ldrh r2, [r0]
	lsl r2, r2, #3
	ldr r1, _0803CF74  @ =gOamBuffer
	add r2, r2, r1
	ldrb r1, [r2, #1]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
_0803CF3C:
	add r0, r6, #0
	add r0, r0, #127
	ldrb r0, [r0]
	lsl r0, r0, #27
	cmp r0, #0
	bge _0803CF78
	ldr r1, [r6, #32]
	asr r1, r1, #8
	ldr r2, [sp, #28]
	ldr r0, [r2]
	ldrb r2, [r6, #2]
	ldr r3, [r0, #12]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _0803CF92
	.byte 0x00
	.byte 0x00
_0803CF68:
	.4byte REG_DMA3SAD
_0803CF6C:
	.4byte 0x84000002
_0803CF70:
	.4byte OBJ_VRAM0
_0803CF74:
	.4byte gOamBuffer
_0803CF78:
	ldr r2, [r6, #32]
	asr r2, r2, #8
	ldr r3, [sp, #28]
	ldr r0, [r3]
	ldrb r1, [r6, #2]
	ldr r3, [r0, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	mov r1, #2
	ldrsb r1, [r0, r1]
	add r1, r1, r2
_0803CF92:
	lsl r1, r1, #23
	lsr r1, r1, #23
	ldrh r2, [r5, #2]
	ldr r0, _0803D19C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r5, #2]
	ldr r3, [r6, #36]
	ldr r4, [sp, #28]
	ldr r0, [r4]
	ldrb r1, [r6, #2]
	ldr r2, [r0, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	asr r3, r3, #8
	ldrb r0, [r0, #3]
	add r3, r3, r0
	strb r3, [r5]
	ldr r0, [r7, #16]
	ldrb r0, [r0, #1]
	mov r1, #32
	and r1, r1, r0
	ldrb r2, [r5, #1]
	mov r0, #33
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r5, #1]
	ldr r1, [r7, #16]
	ldrb r1, [r1, #1]
	lsr r1, r1, #6
	lsl r1, r1, #6
	mov r2, #63
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r5, #1]
	ldr r0, [r7, #16]
	ldrb r0, [r0, #3]
	lsr r0, r0, #6
	lsl r0, r0, #6
	ldrb r1, [r5, #3]
	and r2, r2, r1
	orr r2, r2, r0
	strb r2, [r5, #3]
	ldr r0, [r7, #16]
	ldrb r1, [r0, #5]
	lsr r1, r1, #4
	lsl r1, r1, #4
	ldrb r2, [r5, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r5, #5]
	ldrh r2, [r5, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	add r4, r6, #0
	add r4, r4, #132
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r7, [sp, #4]
	sub r0, r0, r7
	asr r0, r0, #1
	ldr r7, [sp, #16]
	sub r0, r7, r0
	sub r1, r1, r0
	ldr r7, _0803D1A0  @ =0x000001FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _0803D19C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r5, #2]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, [sp, #8]
	sub r0, r0, r1
	asr r0, r0, #1
	ldr r2, [sp, #20]
	sub r0, r2, r0
	sub r3, r3, r0
	strb r3, [r5]
	ldrh r2, [r5, #4]
	lsl r1, r2, #22
	lsr r1, r1, #22
	mov r3, r9
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r4, _0803D1A4  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _0803D1A8  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r5, #4]
	ldrb r1, [r5, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r5, #5]
	mov r7, r8
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, [sp, #32]
	asr r0, r1, #21
	mov r2, r9
	ldrh r2, [r2]
	add r0, r0, r2
	mov r3, r9
	strh r0, [r3]
	mov r4, r10
	ldrh r0, [r4]
	ldr r7, [sp, #12]
	add r0, r0, r7
	strh r0, [r4]
_0803D082:
	ldr r2, _0803D1AC  @ =REG_DMA3SAD
	ldr r0, [sp, #24]
	str r0, [r2]
	mov r1, r8
	ldrh r0, [r1]
	lsl r0, r0, #3
	ldr r5, _0803D1B0  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r2, #4]
	ldr r0, _0803D1B4  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add r4, r6, #0
	add r4, r4, #148
	ldrb r1, [r6, #2]
	ldr r7, [sp, #28]
	ldr r3, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, r0, #90
	ldrh r0, [r0]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r4]
	add r0, r0, r1
	str r0, [r2]
	mov r1, r10
	ldrh r0, [r1]
	ldr r1, _0803D1B8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	add r3, r6, #0
	add r3, r3, #86
	ldrh r0, [r3]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r1, [r6, #2]
	ldr r2, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r0, #8]
	mov r0, #128
	and r1, r1, r0
	mov r4, r8
	ldrh r2, [r4]
	cmp r1, #0
	beq _0803D104
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #1]
	sub r0, r0, #141
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
_0803D104:
	mov r7, r8
	ldrh r1, [r7]
	ldr r0, [sp, #72]
	strh r1, [r0, #6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _0803D1B0  @ =gOamBuffer
	add r5, r0, r1
	ldrh r2, [r5, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	ldr r4, [sp, #16]
	sub r1, r1, r4
	ldr r7, _0803D1A0  @ =0x000001FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _0803D19C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r5, #2]
	ldrb r0, [r5]
	ldr r1, [sp, #20]
	sub r0, r0, r1
	strb r0, [r5]
	ldrh r2, [r5, #4]
	lsl r1, r2, #22
	lsr r1, r1, #22
	mov r4, r9
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r7, _0803D1A4  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _0803D1A8  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r5, #4]
	ldrh r1, [r6]
	cmp r1, #11
	beq _0803D190
	cmp r1, #20
	beq _0803D190
	cmp r1, #21
	beq _0803D190
	cmp r1, #22
	beq _0803D190
	cmp r1, #115
	beq _0803D190
	cmp r1, #24
	bne _0803D170
	mov r2, #4
	ldrsh r0, [r6, r2]
	cmp r0, #12
	ble _0803D190
_0803D170:
	cmp r1, #135
	bne _0803D180
	ldrh r0, [r6, #4]
	sub r0, r0, #3
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #44
	bhi _0803D190
_0803D180:
	cmp r1, #136
	bne _0803D1BC
	ldrh r0, [r6, #4]
	sub r0, r0, #3
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #44
	bls _0803D1BC
_0803D190:
	ldrb r0, [r5, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r0
	mov r0, #8
	b _0803D20E
_0803D19C:
	.4byte 0xFFFFFE00
_0803D1A0:
	.4byte 0x000001FF
_0803D1A4:
	.4byte 0x000003FF
_0803D1A8:
	.4byte 0xFFFFFC00
_0803D1AC:
	.4byte REG_DMA3SAD
_0803D1B0:
	.4byte gOamBuffer
_0803D1B4:
	.4byte 0x84000002
_0803D1B8:
	.4byte OBJ_VRAM0
_0803D1BC:
	ldrh r4, [r6]
	add r2, r4, #0
	cmp r2, #25
	bne _0803D1D2
	ldr r0, _0803D1E0  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0803D1D6
_0803D1D2:
	cmp r2, #38
	bne _0803D1E4
_0803D1D6:
	ldrb r0, [r5, #5]
	mov r1, #12
	orr r0, r0, r1
	strb r0, [r5, #5]
	b _0803D212
_0803D1E0:
	.4byte gUnknown_030019A0
_0803D1E4:
	add r0, r4, #0
	sub r0, r0, #135
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0803D204
	mov r4, #4
	ldrsh r0, [r6, r4]
	cmp r0, #6
	bgt _0803D204
	ldrb r1, [r5, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	strb r0, [r5, #5]
	b _0803D212
_0803D204:
	ldrb r0, [r5, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r0
	mov r0, #4
_0803D20E:
	orr r1, r1, r0
	strb r1, [r5, #5]
_0803D212:
	mov r7, r8
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	add r0, r6, #0
	add r0, r0, #88
	ldrh r0, [r0]
	mov r1, r9
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r9
	strh r0, [r2]
	ldrh r0, [r3]
	mov r3, r10
	ldrh r3, [r3]
	add r0, r0, r3
	mov r4, r10
	strh r0, [r4]
	add sp, sp, #36
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END update_level_object_sprites_0803CE1C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803D248
sub_0803D248: @ 0x0803D248
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #180
	str r0, [sp, #176]
	add r5, r1, #0
	add r7, r2, #0
	mov r8, r3
	mov r2, sp
	add r2, r2, #174
	mov r0, #0
	strh r0, [r2]
	add r0, sp, #172
	mov r9, r0
	mov r0, #128
	lsl r0, r0, #8
	mov r1, r9
	strh r0, [r1]
	mov r6, sp
	add r6, r6, #170
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r6]
	ldr r0, _0803D2AC  @ =gSpriteHorizontalOffset
	mov r1, #0
	ldrsh r3, [r0, r1]
	mov r12, r3
	ldr r0, _0803D2B0  @ =gUnknown_030012F4
	mov r1, #0
	ldrsh r3, [r0, r1]
	ldr r0, _0803D2B4  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #14
	and r0, r0, r1
	cmp r0, #0
	bne _0803D2A0
	ldr r2, _0803D2B8  @ =gMainState
	mov r10, r2
	ldr r0, [r2]
	cmp r0, #14
	bne _0803D2BC
_0803D2A0:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_0802B674
	b _0803D626
_0803D2AC:
	.4byte gSpriteHorizontalOffset
_0803D2B0:
	.4byte gUnknown_030012F4
_0803D2B4:
	.4byte gUnknown_030019A0
_0803D2B8:
	.4byte gMainState
_0803D2BC:
	cmp r0, #17
	bne _0803D2CC
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl help_load_sprites
	b _0803D626
_0803D2CC:
	add r4, sp, #168
	mov r0, r12
	lsl r2, r0, #8
	lsl r3, r3, #8
	add r0, sp, #8
	add r1, r4, #0
	bl sub_0803CB28
	ldr r1, [sp, #176]
	cmp r1, #0
	bne _0803D2EE
	add r3, sp, #168
	mov r2, #0
	ldrsh r1, [r3, r2]
	add r0, sp, #8
	bl sub_0803CA88
_0803D2EE:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r9
	bl sub_0800CF44
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r9
	bl sub_08043750
	ldr r0, [sp, #176]
	cmp r0, #0
	bne _0803D30E
	add r0, r5, #0
	bl sub_08008EBC
_0803D30E:
	mov r1, r10
	ldr r0, [r1]
	cmp r0, #5
	bne _0803D322
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_0800F0A8
	b _0803D330
_0803D322:
	cmp r0, #13
	bne _0803D330
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl draw_hud_0800A810
_0803D330:
	ldr r6, _0803D388  @ =gMainState
	ldr r0, [r6]
	cmp r0, #2
	beq _0803D342
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_0800CE44
_0803D342:
	ldr r4, _0803D38C  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r4, r2]
	cmp r0, #2
	bne _0803D35A
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	mov r3, sp
	add r3, r3, #174
	bl sub_0803CBCC
_0803D35A:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	mov r3, sp
	add r3, r3, #174
	bl sub_0804170C
	ldr r0, _0803D390  @ =gUnknown_03001A38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D3C8
	add r0, r5, #0
	bl sub_08042188
	ldr r0, [r6]
	cmp r0, #5
	bne _0803D394
	ldr r0, [r4, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803D3C8
	b _0803D39E
_0803D388:
	.4byte gMainState
_0803D38C:
	.4byte gNextLevelInLevelTable
_0803D390:
	.4byte gUnknown_03001A38
_0803D394:
	ldr r1, [r4, #32]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803D3AA
_0803D39E:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_08042B50
	b _0803D3C8
_0803D3AA:
	ldr r0, _0803D3F4  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0803D3C8
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	bne _0803D3C8
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_08042B50
_0803D3C8:
	ldr r3, [sp, #176]
	cmp r3, #0
	bne _0803D4AC
	ldr r0, _0803D3F8  @ =gMainState
	ldr r0, [r0]
	cmp r0, #5
	beq _0803D48E
	ldr r2, _0803D3FC  @ =gNextLevelInLevelTable
	ldr r0, [r2, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803D464
	mov r1, #18
	ldrsh r0, [r2, r1]
	cmp r0, #5
	bhi _0803D48E
	lsl r0, r0, #2
	ldr r1, _0803D400  @ =0x0803D404
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0803D3F4:
	.4byte gLevelType
_0803D3F8:
	.4byte gMainState
_0803D3FC:
	.4byte gNextLevelInLevelTable
_0803D400:
	.4byte _0803D404
_0803D404:
	.4byte _0803D41C
	.4byte _0803D428
	.4byte _0803D434
	.4byte _0803D440
	.4byte _0803D44C
	.4byte _0803D458
_0803D41C:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl boss_1_player
	b _0803D48E
_0803D428:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl boss_2_player
	b _0803D48E
_0803D434:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl boss_3_player
	b _0803D48E
_0803D440:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl boss_4_player
	b _0803D48E
_0803D44C:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl boss_5_player
	b _0803D48E
_0803D458:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl boss_6_player
	b _0803D48E
_0803D464:
	ldr r0, _0803D47C  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bne _0803D480
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_08066DAC
	b _0803D48E
_0803D47C:
	.4byte gLevelType
_0803D480:
	cmp r0, #5
	bne _0803D49A
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_0806C2C0
_0803D48E:
	ldr r0, _0803D520  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	beq _0803D4AC
_0803D49A:
	ldr r0, _0803D524  @ =0x030009F8
	ldr r4, [r0]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	mov r3, sp
	add r3, r3, #174
	bl _call_via_r4
_0803D4AC:
	mov r6, #0
	add r3, sp, #168
	mov r2, #0
	ldrsh r0, [r3, r2]
	cmp r6, r0
	bge _0803D504
	ldr r0, _0803D528  @ =gUnknown_03001940
	mov r9, r0
_0803D4BC:
	lsl r0, r6, #16
	asr r4, r0, #16
	lsl r0, r4, #3
	mov r2, sp
	add r2, r2, r0
	add r2, r2, #8
	ldrh r1, [r2]
	mov r0, #176
	mul r1, r0, r1
	mov r3, r9
	ldr r0, [r3]
	add r1, r0, r1
	add r0, r1, #0
	add r0, r0, #153
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D4F2
	mov r0, #174
	add r0, sp, r0
	str r0, [sp]
	str r2, [sp, #4]
	add r0, r1, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, r8
	bl update_level_object_sprites_0803CE1C
_0803D4F2:
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	asr r0, r0, #16
	add r3, sp, #168
	mov r2, #0
	ldrsh r1, [r3, r2]
	cmp r0, r1
	blt _0803D4BC
_0803D504:
	ldr r0, _0803D52C  @ =gMainState
	ldr r0, [r0]
	cmp r0, #5
	beq _0803D510
	cmp r0, #2
	bne _0803D534
_0803D510:
	ldr r0, _0803D530  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803D57C
	b _0803D550
	.byte 0x00
	.byte 0x00
_0803D520:
	.4byte gLevelType
_0803D524:
	.4byte 0x030009F8
_0803D528:
	.4byte gUnknown_03001940
_0803D52C:
	.4byte gMainState
_0803D530:
	.4byte gNextLevelInLevelTable
_0803D534:
	ldr r0, _0803D55C  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #21
	and r0, r0, r1
	cmp r0, #0
	beq _0803D560
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	beq _0803D57C
	ldr r0, [sp, #176]
	cmp r0, #0
	bne _0803D57C
_0803D550:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_0804ED2C
	b _0803D57C
_0803D55C:
	.4byte gUnknown_030019A0
_0803D560:
	ldr r0, _0803D638  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803D57C
	ldr r1, [sp, #176]
	cmp r1, #0
	bne _0803D57C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_0804ED2C
_0803D57C:
	ldr r1, _0803D638  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r1, r2]
	cmp r0, #3
	bne _0803D59A
	ldr r0, [r1, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803D59A
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_0805E0D0
_0803D59A:
	mov r6, #0
	add r4, sp, #8
	add r1, sp, #168
	mov r3, #0
	ldrsh r0, [r1, r3]
	cmp r6, r0
	bge _0803D5E8
	ldr r2, _0803D63C  @ =0x000001FF
	mov r10, r2
	ldr r3, _0803D640  @ =gUnknown_03001940
	mov r9, r3
_0803D5B0:
	mov r1, #174
	add r1, sp, r1
	ldrh r0, [r1]
	cmp r0, r10
	bhi _0803D5D0
	ldrh r1, [r4]
	mov r0, #176
	mul r1, r0, r1
	mov r2, r9
	ldr r0, [r2]
	add r0, r0, r1
	ldrh r2, [r4, #6]
	mov r1, sp
	add r1, r1, #174
	bl sub_0803D64C
_0803D5D0:
	lsl r1, r6, #16
	mov r3, #128
	lsl r3, r3, #9
	add r1, r1, r3
	add r4, r4, #8
	lsr r6, r1, #16
	asr r1, r1, #16
	add r3, sp, #168
	mov r2, #0
	ldrsh r0, [r3, r2]
	cmp r1, r0
	blt _0803D5B0
_0803D5E8:
	ldr r0, [sp, #176]
	cmp r0, #1
	bgt _0803D5F4
	add r0, r5, #0
	bl sub_0800CAD4
_0803D5F4:
	ldr r0, _0803D644  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0803D626
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_0806C084
	ldr r0, _0803D648  @ =0x030009F8
	ldr r4, [r0]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	mov r3, sp
	add r3, r3, #174
	bl _call_via_r4
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_0806BF30
_0803D626:
	add sp, sp, #180
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803D638:
	.4byte gNextLevelInLevelTable
_0803D63C:
	.4byte 0x000001FF
_0803D640:
	.4byte gUnknown_03001940
_0803D644:
	.4byte gLevelType
_0803D648:
	.4byte 0x030009F8
	THUMB_FUNC_END sub_0803D248

	THUMB_FUNC_START sub_0803D64C
sub_0803D64C: @ 0x0803D64C
	push {r4-r7,lr}
	add r6, r1, #0
	lsl r2, r2, #16
	lsr r3, r2, #16
	add r2, r0, #0
	add r2, r2, #136
	ldrb r1, [r0, #2]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r2]
	add r5, r1, r0
	ldr r1, [r5, #8]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803D716
	ldr r7, _0803D6DC  @ =gOamBuffer
	lsl r3, r3, #3
	add r4, r3, r7
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	mov r0, #24
	ldrsb r0, [r5, r0]
	add r1, r1, r0
	ldr r0, _0803D6E0  @ =0x000001FF
	mov r12, r0
	mov r0, r12
	and r1, r1, r0
	ldr r0, _0803D6E4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	ldrb r0, [r5, #25]
	ldrb r1, [r4]
	add r0, r0, r1
	strb r0, [r4]
	ldrh r0, [r6]
	lsr r0, r0, #4
	mov r1, #7
	and r0, r0, r1
	lsl r0, r0, #1
	ldrb r1, [r4, #3]
	mov r2, #15
	neg r2, r2
	and r2, r2, r1
	orr r2, r2, r0
	strb r2, [r4, #3]
	ldrb r1, [r4, #1]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #1]
	lsl r0, r2, #27
	mov r12, r7
	cmp r0, #0
	blt _0803D6E8
	ldrh r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r1, [r5, #26]
	strh r1, [r0, #6]
	ldrh r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r1, [r5, #28]
	strh r1, [r0, #14]
	b _0803D708
	.byte 0x00
	.byte 0x00
_0803D6DC:
	.4byte gOamBuffer
_0803D6E0:
	.4byte 0x000001FF
_0803D6E4:
	.4byte 0xFFFFFE00
_0803D6E8:
	mov r0, #17
	neg r0, r0
	and r2, r2, r0
	strb r2, [r4, #3]
	ldrh r1, [r6]
	lsl r1, r1, #1
	add r1, r1, r12
	ldrh r0, [r5, #26]
	neg r0, r0
	strh r0, [r1, #6]
	ldrh r1, [r6]
	lsl r1, r1, #1
	add r1, r1, r12
	ldrh r0, [r5, #28]
	neg r0, r0
	strh r0, [r1, #14]
_0803D708:
	mov r0, r12
	add r2, r3, r0
	ldrb r1, [r2, #3]
	lsl r0, r1, #26
	cmp r0, #0
	bge _0803D7BC
	b _0803D7D2
_0803D716:
	mov r0, #32
	and r1, r1, r0
	cmp r1, #0
	beq _0803D7F8
	ldr r7, _0803D784  @ =gOamBuffer
	lsl r3, r3, #3
	add r4, r3, r7
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	mov r0, #24
	ldrsb r0, [r5, r0]
	add r1, r1, r0
	ldr r0, _0803D788  @ =0x000001FF
	mov r12, r0
	mov r0, r12
	and r1, r1, r0
	ldr r0, _0803D78C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	ldrb r0, [r5, #25]
	ldrb r1, [r4]
	add r0, r0, r1
	strb r0, [r4]
	ldrh r0, [r6]
	lsr r0, r0, #4
	mov r1, #7
	and r0, r0, r1
	lsl r0, r0, #1
	ldrb r1, [r4, #3]
	mov r2, #15
	neg r2, r2
	and r2, r2, r1
	orr r2, r2, r0
	strb r2, [r4, #3]
	ldrb r0, [r4, #1]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r4, #1]
	lsl r0, r2, #27
	mov r12, r7
	cmp r0, #0
	blt _0803D790
	ldrh r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r7
	ldrh r1, [r5, #26]
	strh r1, [r0, #6]
	ldrh r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r7
	ldrh r1, [r5, #28]
	strh r1, [r0, #14]
	b _0803D7B0
_0803D784:
	.4byte gOamBuffer
_0803D788:
	.4byte 0x000001FF
_0803D78C:
	.4byte 0xFFFFFE00
_0803D790:
	mov r0, #17
	neg r0, r0
	and r2, r2, r0
	strb r2, [r4, #3]
	ldrh r1, [r6]
	lsl r1, r1, #1
	add r1, r1, r7
	ldrh r0, [r5, #26]
	neg r0, r0
	strh r0, [r1, #6]
	ldrh r1, [r6]
	lsl r1, r1, #1
	add r1, r1, r7
	ldrh r0, [r5, #28]
	neg r0, r0
	strh r0, [r1, #14]
_0803D7B0:
	mov r0, r12
	add r2, r3, r0
	ldrb r1, [r2, #3]
	lsl r0, r1, #26
	cmp r0, #0
	blt _0803D7D2
_0803D7BC:
	ldrh r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r7
	ldrh r1, [r5, #30]
	strh r1, [r0, #22]
	ldrh r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r7
	ldrh r1, [r5, #32]
	strh r1, [r0, #30]
	b _0803D7F2
_0803D7D2:
	mov r0, #33
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2, #3]
	ldrh r1, [r6]
	lsl r1, r1, #1
	add r1, r1, r7
	ldrh r0, [r5, #30]
	neg r0, r0
	strh r0, [r1, #22]
	ldrh r1, [r6]
	lsl r1, r1, #1
	add r1, r1, r7
	ldrh r0, [r5, #32]
	neg r0, r0
	strh r0, [r1, #30]
_0803D7F2:
	ldrh r0, [r6]
	add r0, r0, #16
	strh r0, [r6]
_0803D7F8:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803D64C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803D800
sub_0803D800: @ 0x0803D800
	push {r4,lr}
	add r3, r0, #0
	ldr r0, [r3, #96]
	mov r1, #128
	lsl r1, r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803D838
	ldrb r2, [r3, #12]
	mov r0, #48
	and r0, r0, r2
	cmp r0, #0
	bne _0803D838
	add r0, r3, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #10
	ble _0803D838
	ldr r0, _0803D890  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803D838
	mov r0, #16
	orr r0, r0, r2
	strb r0, [r3, #12]
_0803D838:
	ldr r1, [r3, #96]
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	add r4, r1, #0
	cmp r0, #0
	beq _0803D86E
	ldrb r2, [r3, #12]
	mov r0, #48
	and r0, r0, r2
	cmp r0, #0
	bne _0803D86E
	add r0, r3, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #10
	ble _0803D86E
	ldr r0, _0803D890  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803D86E
	mov r0, #32
	orr r0, r0, r2
	strb r0, [r3, #12]
_0803D86E:
	ldrb r1, [r3, #12]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803D894
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #8
	neg r0, r0
	b _0803D8E8
	.byte 0x00
	.byte 0x00
_0803D890:
	.4byte gUnknown_03001990
_0803D894:
	mov r0, #32
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _0803D8D6
	mov r0, #192
	lsl r0, r0, #2
	and r0, r0, r4
	cmp r0, #0
	beq _0803D8B2
	strh r1, [r3, #48]
	add r0, r3, #0
	add r0, r0, #132
	b _0803D8EC
_0803D8B2:
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803D8D6
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #8
	neg r0, r0
	b _0803D8E8
_0803D8D6:
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #8
_0803D8E8:
	strh r0, [r3, #48]
	add r0, r2, #0
_0803D8EC:
	ldrh r2, [r3, #8]
	ldr r0, [r0]
	ldr r1, [r0, #28]
	lsl r0, r2, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #8
	neg r0, r0
	strh r0, [r3, #50]
	mov r0, #50
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #80]
	add r0, r0, r1
	str r0, [r3, #80]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803D800

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803D910
sub_0803D910: @ 0x0803D910
	push {r4,lr}
	add r3, r0, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803D936
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #8
	neg r0, r0
	b _0803D948
_0803D936:
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #8
_0803D948:
	strh r0, [r3, #48]
	ldrh r4, [r3, #8]
	ldr r0, [r2]
	ldr r1, [r0, #28]
	lsl r0, r4, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #8
	neg r0, r0
	strh r0, [r3, #50]
	mov r0, #50
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #80]
	add r0, r0, r1
	str r0, [r3, #80]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803D910

	THUMB_FUNC_START sub_0803D96C
sub_0803D96C: @ 0x0803D96C
	push {r4,lr}
	add r3, r0, #0
	ldrh r0, [r3]
	cmp r0, #0
	bne _0803D9E8
	mov r0, #4
	ldrsh r1, [r3, r0]
	ldr r0, _0803D9E0  @ =0x00000247
	cmp r1, r0
	ble _0803D9E8
	add r0, r0, #25
	cmp r1, r0
	bgt _0803D9E8
	ldr r1, [r3, #96]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	add r2, r1, #0
	cmp r0, #0
	beq _0803D9BC
	ldrb r4, [r3, #12]
	mov r0, #48
	and r0, r0, r4
	cmp r0, #0
	bne _0803D9BC
	add r0, r3, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #5
	ble _0803D9BC
	ldr r0, _0803D9E4  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803D9BC
	mov r0, #16
	orr r0, r0, r4
	strb r0, [r3, #12]
_0803D9BC:
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _0803DA50
	ldrb r4, [r3, #12]
	mov r0, #48
	and r0, r0, r4
	cmp r0, #0
	bne _0803DA50
	add r0, r3, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #5
	ble _0803DA50
	b _0803DA3E
	.byte 0x00
	.byte 0x00
_0803D9E0:
	.4byte 0x00000247
_0803D9E4:
	.4byte gUnknown_03001990
_0803D9E8:
	ldr r1, [r3, #96]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	add r2, r1, #0
	cmp r0, #0
	beq _0803DA1E
	ldrb r4, [r3, #12]
	mov r0, #48
	and r0, r0, r4
	cmp r0, #0
	bne _0803DA1E
	add r0, r3, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #10
	ble _0803DA1E
	ldr r0, _0803DA84  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803DA1E
	mov r0, #16
	orr r0, r0, r4
	strb r0, [r3, #12]
_0803DA1E:
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _0803DA50
	ldrb r4, [r3, #12]
	mov r0, #48
	and r0, r0, r4
	cmp r0, #0
	bne _0803DA50
	add r0, r3, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #10
	ble _0803DA50
_0803DA3E:
	ldr r0, _0803DA84  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803DA50
	mov r0, #32
	orr r0, r0, r4
	strb r0, [r3, #12]
_0803DA50:
	ldrb r1, [r3, #12]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803DAB8
	mov r0, #128
	lsl r0, r0, #22
	and r0, r0, r2
	cmp r0, #0
	beq _0803DAA4
	ldr r0, _0803DA88  @ =gUnknown_030019F4 
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803DA8C
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	b _0803DBB6
_0803DA84:
	.4byte gUnknown_03001990
_0803DA88:
	.4byte gUnknown_030019F4 
_0803DA8C:
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	neg r0, r0
	asr r0, r0, #1
	b _0803DBB6
_0803DAA4:
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	b _0803DBB6
_0803DAB8:
	mov r0, #32
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _0803DAF4
	mov r0, #128
	lsl r0, r0, #22
	and r0, r0, r2
	cmp r0, #0
	beq _0803DBA6
	ldr r0, _0803DAF0  @ =gUnknown_030019F4 
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0803DBA6
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	b _0803DBB6
_0803DAF0:
	.4byte gUnknown_030019F4 
_0803DAF4:
	mov r0, #192
	lsl r0, r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _0803DB06
	strh r1, [r3, #48]
	add r4, r3, #0
	add r4, r4, #132
	b _0803DBBA
_0803DB06:
	mov r0, #128
	lsl r0, r0, #22
	and r0, r0, r2
	cmp r0, #0
	beq _0803DB84
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803DB5C
	ldr r0, _0803DB40  @ =gUnknown_030019F4 
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803DB44
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	b _0803DBB6
	.byte 0x00
	.byte 0x00
_0803DB40:
	.4byte gUnknown_030019F4 
_0803DB44:
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	neg r0, r0
	asr r0, r0, #1
	b _0803DBB6
_0803DB5C:
	ldr r0, _0803DB80  @ =gUnknown_030019F4 
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0803DBA6
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	b _0803DBB6
	.byte 0x00
	.byte 0x00
_0803DB80:
	.4byte gUnknown_030019F4 
_0803DB84:
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803DBA6
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	b _0803DBB6
_0803DBA6:
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
_0803DBB6:
	strh r0, [r3, #48]
	add r4, r2, #0
_0803DBBA:
	ldrh r2, [r3, #8]
	ldrh r0, [r3]
	cmp r0, #0
	bne _0803DBCE
	mov r1, #48
	ldrsh r0, [r3, r1]
	ldr r1, _0803DBEC  @ =0x0300194C
	ldrb r1, [r1]
	asr r0, r0, r1
	strh r0, [r3, #48]
_0803DBCE:
	ldr r0, [r4]
	ldr r1, [r0, #28]
	lsl r0, r2, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	strh r0, [r3, #50]
	mov r0, #50
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #80]
	add r0, r0, r1
	str r0, [r3, #80]
	pop {r4}
	pop {r0}
	bx r0
_0803DBEC:
	.4byte 0x0300194C
	THUMB_FUNC_END sub_0803D96C

	THUMB_FUNC_START sub_0803DBF0
sub_0803DBF0: @ 0x0803DBF0
	push {r4-r6,lr}
	add r3, r0, #0
	ldr r0, _0803DC94  @ =gUnknown_03001A1C
	ldr r2, [r0]
	ldr r0, _0803DC98  @ =0x00000908
	and r0, r0, r2
	cmp r0, #0
	beq _0803DC0C
	ldrb r1, [r3, #12]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0803DC0C
	b _0803DD18
_0803DC0C:
	ldr r0, _0803DC9C  @ =0x00101000
	and r2, r2, r0
	cmp r2, #0
	beq _0803DCA8
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	ldr r1, _0803DCA0  @ =0x03001968
	ldr r1, [r1]
	cmp r0, r1
	beq _0803DC2C
	ldrb r1, [r3, #12]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0803DD18
_0803DC2C:
	ldrh r0, [r3]
	cmp r0, #0
	bne _0803DC40
	ldr r0, _0803DCA4  @ =gUnknown_03001938
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	bne _0803DD18
_0803DC40:
	add r1, r3, #0
	add r1, r1, #60
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r6, r1, #0
	cmp r5, #0
	bne _0803DD18
	ldr r0, [r3, #92]
	mov r1, #128
	lsl r1, r1, #23
	and r0, r0, r1
	cmp r0, #0
	bne _0803DC66
	ldrb r0, [r3, #2]
	add r0, r0, #1
	strb r0, [r3, #2]
_0803DC66:
	ldrb r0, [r3, #3]
	ldrb r1, [r3, #2]
	add r2, r0, #0
	add r4, r3, #0
	add r4, r4, #136
	cmp r1, r2
	bcc _0803DD08
	ldrb r1, [r3, #12]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803DC84
	mov r0, #4
	orr r0, r0, r1
	strb r0, [r3, #12]
_0803DC84:
	ldr r0, [r4]
	ldr r0, [r0, #8]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0803DCF8
	b _0803DCFC
	.byte 0x00
	.byte 0x00
_0803DC94:
	.4byte gUnknown_03001A1C
_0803DC98:
	.4byte 0x00000908
_0803DC9C:
	.4byte 0x00101000
_0803DCA0:
	.4byte 0x03001968
_0803DCA4:
	.4byte gUnknown_03001938
_0803DCA8:
	add r1, r3, #0
	add r1, r1, #60
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r6, r1, #0
	cmp r5, #0
	bne _0803DD18
	ldr r0, [r3, #92]
	mov r1, #128
	lsl r1, r1, #23
	and r0, r0, r1
	cmp r0, #0
	bne _0803DCCE
	ldrb r0, [r3, #2]
	add r0, r0, #1
	strb r0, [r3, #2]
_0803DCCE:
	ldrb r0, [r3, #3]
	ldrb r1, [r3, #2]
	add r2, r0, #0
	add r4, r3, #0
	add r4, r4, #136
	cmp r1, r2
	bcc _0803DD08
	ldrb r1, [r3, #12]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803DCEC
	mov r0, #4
	orr r0, r0, r1
	strb r0, [r3, #12]
_0803DCEC:
	ldr r0, [r4]
	ldr r0, [r0, #8]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803DCFC
_0803DCF8:
	strb r5, [r3, #2]
	b _0803DD00
_0803DCFC:
	sub r0, r2, #1
	strb r0, [r3, #2]
_0803DD00:
	ldrb r1, [r3, #12]
	mov r0, #1
	orr r0, r0, r1
	strb r0, [r3, #12]
_0803DD08:
	ldrb r1, [r3, #2]
	ldr r2, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r6]
_0803DD18:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803DBF0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803DD20
sub_0803DD20: @ 0x0803DD20
	push {r4-r7,lr}
	add r4, r0, #0
	add r3, r1, #0
	add r7, r2, #0
	ldrh r1, [r4]
	cmp r1, #0
	bne _0803DD32
	ldr r0, _0803DDF0  @ =gUnknown_03001A3C
	strh r1, [r0]
_0803DD32:
	add r1, r4, #0
	add r1, r1, #132
	ldr r0, [r1]
	ldr r0, [r0, #32]
	add r5, r1, #0
	cmp r0, #0
	bne _0803DD42
	ldr r0, [r4, #100]
_0803DD42:
	str r0, [r4, #104]
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #32]
	str r0, [r4, #24]
	ldr r0, [r4, #36]
	str r0, [r4, #28]
	ldr r0, [r5]
	ldrb r0, [r0, #3]
	strb r0, [r4, #3]
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	add r2, r4, #0
	add r2, r2, #86
	strh r0, [r2]
	lsl r0, r0, #16
	lsr r0, r0, #21
	add r1, r4, #0
	add r1, r1, #88
	strh r0, [r1]
	ldrh r0, [r2]
	lsr r0, r0, #2
	add r1, r1, #2
	strh r0, [r1]
	ldr r0, [r5]
	ldrb r1, [r0, #16]
	cmp r1, #3
	bhi _0803DD82
	add r0, r4, #0
	add r0, r0, #64
	strb r1, [r0]
_0803DD82:
	ldr r0, [r5]
	ldr r2, [r0, #8]
	mov r0, #128
	lsl r0, r0, #24
	and r2, r2, r0
	cmp r2, #0
	bne _0803DDA4
	cmp r7, #0
	beq _0803DD9E
	ldr r0, [r7, #32]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0803DDA4
_0803DD9E:
	add r0, r4, #0
	add r0, r0, #84
	strh r2, [r0]
_0803DDA4:
	ldr r0, [r5]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	add r6, r4, #0
	add r6, r6, #127
	cmp r0, #0
	beq _0803DDBE
	ldrb r0, [r6]
	mov r1, #32
	orr r0, r0, r1
	strb r0, [r6]
_0803DDBE:
	ldr r0, [r5]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	beq _0803DDD4
	ldrb r0, [r6]
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r6]
_0803DDD4:
	ldrb r1, [r4, #12]
	mov r0, #254
	and r0, r0, r1
	strb r0, [r4, #12]
	ldr r0, [r5]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #14
	and r0, r0, r1
	cmp r0, #0
	beq _0803DDF4
	ldr r0, [r4, #92]
	orr r0, r0, r1
	b _0803DDFA
_0803DDF0:
	.4byte gUnknown_03001A3C
_0803DDF4:
	ldr r0, [r4, #92]
	ldr r1, _0803DE14  @ =0xFFDFFFFF
	and r0, r0, r1
_0803DDFA:
	str r0, [r4, #92]
	ldr r1, [r3]
	ldr r0, [r1, #8]
	mov r3, #128
	lsl r3, r3, #13
	and r0, r0, r3
	add r2, r1, #0
	cmp r0, #0
	beq _0803DE18
	ldr r0, [r4, #92]
	orr r0, r0, r3
	b _0803DE1E
	.byte 0x00
	.byte 0x00
_0803DE14:
	.4byte 0xFFDFFFFF
_0803DE18:
	ldr r0, [r4, #92]
	ldr r1, _0803DE34  @ =0xFFEFFFFF
	and r0, r0, r1
_0803DE1E:
	str r0, [r4, #92]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #15
	and r0, r0, r1
	cmp r0, #0
	beq _0803DE38
	ldr r0, [r4, #92]
	orr r0, r0, r1
	b _0803DE3E
	.byte 0x00
	.byte 0x00
_0803DE34:
	.4byte 0xFFEFFFFF
_0803DE38:
	ldr r0, [r4, #92]
	ldr r1, _0803DE54  @ =0xFFBFFFFF
	and r0, r0, r1
_0803DE3E:
	str r0, [r4, #92]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #19
	and r0, r0, r1
	cmp r0, #0
	beq _0803DE58
	ldr r0, [r4, #92]
	orr r0, r0, r1
	b _0803DE5E
	.byte 0x00
	.byte 0x00
_0803DE54:
	.4byte 0xFFBFFFFF
_0803DE58:
	ldr r0, [r4, #92]
	ldr r1, _0803DE74  @ =0xFBFFFFFF
	and r0, r0, r1
_0803DE5E:
	str r0, [r4, #92]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _0803DE78
	ldr r0, [r4, #92]
	orr r0, r0, r1
	b _0803DE7E
	.byte 0x00
	.byte 0x00
_0803DE74:
	.4byte 0xFBFFFFFF
_0803DE78:
	ldr r0, [r4, #92]
	ldr r1, _0803DE94  @ =0xFFFFDFFF
	and r0, r0, r1
_0803DE7E:
	str r0, [r4, #92]
	ldr r0, [r2, #12]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _0803DE98
	ldr r0, [r4, #96]
	orr r0, r0, r1
	b _0803DE9E
	.byte 0x00
	.byte 0x00
_0803DE94:
	.4byte 0xFFFFDFFF
_0803DE98:
	ldr r0, [r4, #96]
	ldr r1, _0803DEB4  @ =0xFDFFFFFF
	and r0, r0, r1
_0803DE9E:
	str r0, [r4, #96]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0803DEB8
	ldr r0, [r4, #92]
	orr r0, r0, r1
	b _0803DEBE
	.byte 0x00
	.byte 0x00
_0803DEB4:
	.4byte 0xFDFFFFFF
_0803DEB8:
	ldr r0, [r4, #92]
	ldr r1, _0803DED8  @ =0xFFFBFFFF
	and r0, r0, r1
_0803DEBE:
	str r0, [r4, #92]
	ldrb r0, [r4, #12]
	mov r1, #177
	and r1, r1, r0
	strb r1, [r4, #12]
	ldr r0, [r2, #12]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803DEDC
	ldr r0, [r4, #96]
	orr r0, r0, r1
	b _0803DEE4
_0803DED8:
	.4byte 0xFFFBFFFF
_0803DEDC:
	ldr r0, [r4, #96]
	mov r1, #2
	neg r1, r1
	and r0, r0, r1
_0803DEE4:
	str r0, [r4, #96]
	ldr r0, [r2, #12]
	mov r1, #128
	lsl r1, r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803DEF8
	ldr r0, [r4, #96]
	orr r0, r0, r1
	b _0803DEFE
_0803DEF8:
	ldr r0, [r4, #96]
	ldr r1, _0803DF14  @ =0xFFFFFEFF
	and r0, r0, r1
_0803DEFE:
	str r0, [r4, #96]
	ldr r0, [r2, #12]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	beq _0803DF18
	ldr r0, [r4, #96]
	orr r0, r0, r1
	b _0803DF1E
	.byte 0x00
	.byte 0x00
_0803DF14:
	.4byte 0xFFFFFEFF
_0803DF18:
	ldr r0, [r4, #96]
	ldr r1, _0803DF34  @ =0xDFFFFFFF
	and r0, r0, r1
_0803DF1E:
	str r0, [r4, #96]
	ldr r0, [r2, #12]
	mov r1, #128
	lsl r1, r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803DF38
	ldr r0, [r4, #96]
	orr r0, r0, r1
	b _0803DF3E
	.byte 0x00
	.byte 0x00
_0803DF34:
	.4byte 0xDFFFFFFF
_0803DF38:
	ldr r0, [r4, #96]
	ldr r1, _0803DF54  @ =0xFFFFFDFF
	and r0, r0, r1
_0803DF3E:
	str r0, [r4, #96]
	ldr r0, [r2, #12]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	beq _0803DF58
	ldr r0, [r4, #96]
	orr r0, r0, r1
	b _0803DF5E
	.byte 0x00
	.byte 0x00
_0803DF54:
	.4byte 0xFFFFFDFF
_0803DF58:
	ldr r0, [r4, #96]
	ldr r1, _0803DF74  @ =0xFFFFEFFF
	and r0, r0, r1
_0803DF5E:
	str r0, [r4, #96]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803DF78
	ldr r0, [r4, #92]
	orr r0, r0, r1
	b _0803DF7E
	.byte 0x00
	.byte 0x00
_0803DF74:
	.4byte 0xFFFFEFFF
_0803DF78:
	ldr r0, [r4, #92]
	ldr r1, _0803DF94  @ =0xFF7FFFFF
	and r0, r0, r1
_0803DF7E:
	str r0, [r4, #92]
	ldr r0, [r2, #12]
	mov r1, #128
	lsl r1, r1, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0803DF98
	ldr r0, [r4, #96]
	orr r0, r0, r1
	b _0803DF9E
	.byte 0x00
	.byte 0x00
_0803DF94:
	.4byte 0xFF7FFFFF
_0803DF98:
	ldr r0, [r4, #96]
	ldr r1, _0803DFB4  @ =0xFFFEFFFF
	and r0, r0, r1
_0803DF9E:
	str r0, [r4, #96]
	ldr r0, [r2, #12]
	mov r1, #128
	lsl r1, r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803DFB8
	ldr r0, [r4, #96]
	orr r0, r0, r1
	b _0803DFBE
	.byte 0x00
	.byte 0x00
_0803DFB4:
	.4byte 0xFFFEFFFF
_0803DFB8:
	ldr r0, [r4, #96]
	ldr r1, _0803DFD0  @ =0xFFFF7FFF
	and r0, r0, r1
_0803DFBE:
	str r0, [r4, #96]
	ldr r2, [r5]
	ldrh r0, [r2, #20]
	cmp r0, #0
	bne _0803DFD4
	strh r0, [r4, #50]
	strh r0, [r4, #48]
	b _0803E07A
	.byte 0x00
	.byte 0x00
_0803DFD0:
	.4byte 0xFFFF7FFF
_0803DFD4:
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	beq _0803E05C
	ldrh r0, [r4]
	cmp r0, #0
	bne _0803DFEE
	add r0, r4, #0
	bl sub_0803D96C
	b _0803E030
_0803DFEE:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803E00A
	ldrh r0, [r4, #8]
	ldr r1, [r2, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	b _0803E014
_0803E00A:
	ldrh r0, [r4, #8]
	ldr r1, [r2, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
_0803E014:
	strh r0, [r4, #48]
	ldrh r2, [r4, #8]
	ldr r0, [r5]
	ldr r1, [r0, #28]
	lsl r0, r2, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	strh r0, [r4, #50]
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #80]
	add r0, r0, r1
	str r0, [r4, #80]
_0803E030:
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #80]
	sub r0, r0, r1
	str r0, [r4, #80]
	add r0, r4, #0
	add r0, r0, #61
	ldr r1, _0803E054  @ =0x030019F0
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0803E07A
	ldr r0, _0803E058  @ =gUnknown_030019AC
	ldr r1, [r0]
	ldrh r0, [r4, #48]
	strh r0, [r1, #54]
	b _0803E07A
	.byte 0x00
	.byte 0x00
_0803E054:
	.4byte 0x030019F0
_0803E058:
	.4byte gUnknown_030019AC
_0803E05C:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0803E06A
	add r0, r4, #0
	bl sub_0803D800
	b _0803E070
_0803E06A:
	add r0, r4, #0
	bl sub_0803D910
_0803E070:
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #80]
	sub r0, r0, r1
	str r0, [r4, #80]
_0803E07A:
	ldrh r1, [r4]
	cmp r1, #0
	bne _0803E084
	ldr r0, _0803E0D8  @ =gMarioIdleTimer
	strh r1, [r0]
_0803E084:
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #3]
	sub r0, r0, #1
	cmp r1, r0
	ble _0803E092
	mov r0, #0
	strb r0, [r4, #2]
_0803E092:
	ldr r0, [r7, #28]
	mov r1, #128
	lsl r1, r1, #2
	and r0, r0, r1
	add r5, r4, #0
	add r5, r5, #136
	cmp r0, #0
	bne _0803E0B6
	ldrb r1, [r4, #2]
	ldr r2, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r0, #1]
	add r0, r4, #0
	add r0, r0, #60
	strb r1, [r0]
_0803E0B6:
	ldrb r0, [r6]
	lsl r0, r0, #27
	cmp r0, #0
	bge _0803E0DC
	ldr r1, [r4, #32]
	asr r1, r1, #8
	ldrb r2, [r4, #2]
	ldr r3, [r5]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _0803E0F2
_0803E0D8:
	.4byte gMarioIdleTimer
_0803E0DC:
	ldr r2, [r4, #32]
	asr r2, r2, #8
	ldrb r1, [r4, #2]
	ldr r3, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	mov r1, #2
	ldrsb r1, [r0, r1]
	add r1, r1, r2
_0803E0F2:
	add r3, r4, #0
	add r3, r3, #126
	lsl r1, r1, #23
	lsr r1, r1, #23
	ldrh r2, [r3]
	ldr r0, _0803E124  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3]
	ldr r1, [r4, #36]
	ldrb r2, [r4, #2]
	ldr r3, [r5]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	asr r1, r1, #8
	ldrb r0, [r0, #3]
	add r1, r1, r0
	add r0, r4, #0
	add r0, r0, #124
	strb r1, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
_0803E124:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0803DD20

	THUMB_FUNC_START sub_0803E128
sub_0803E128: @ 0x0803E128
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r4, r0, #0
	lsl r1, r1, #16
	lsr r5, r1, #16
	ldr r2, _0803E1EC  @ =gUnknown_03001940
	lsl r4, r4, #16
	asr r4, r4, #16
	mov r0, #176
	add r1, r4, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r7, r0, r1
	ldrb r0, [r7]
	bl get_sprite_table_08038D1C
	add r6, r0, #0
	cmp r4, #19
	bgt _0803E1DE
	ldrh r1, [r6, #10]
	lsl r0, r5, #16
	asr r2, r0, #16
	cmp r1, r2
	ble _0803E1DE
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #3
	ldr r1, [r6]
	add r1, r1, r0
	mov r0, #0
	mov r9, r0
	mov r2, #0
	mov r8, r2
	strh r5, [r7, #4]
	add r4, r7, #0
	add r4, r4, #124
	ldr r0, [r1, #8]
	ldr r2, [r0]
	ldr r3, [r0, #4]
	str r2, [r4]
	str r3, [r4, #4]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	ldrb r2, [r6, #6]
	lsl r2, r2, #4
	ldrb r3, [r0]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	ldr r2, [r7, #32]
	mov r0, #126
	add r0, r0, r7
	mov r12, r0
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r3, [r0]
	ldr r0, _0803E1F0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	mov r2, r12
	strh r0, [r2]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	strb r0, [r4]
	add r2, r7, #0
	add r2, r2, #136
	ldr r0, [r1, #4]
	str r0, [r2]
	add r2, r2, #12
	ldr r0, [r1, #12]
	str r0, [r2]
	sub r2, r2, #8
	ldr r0, [r1, #8]
	str r0, [r2]
	sub r2, r2, #8
	ldr r0, [r1]
	str r0, [r2]
	mov r0, r8
	str r0, [r7, #92]
	mov r2, r9
	strb r2, [r7, #2]
	str r0, [r7, #96]
	add r0, r7, #0
	mov r2, #0
	bl sub_0803DD20
_0803E1DE:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803E1EC:
	.4byte gUnknown_03001940
_0803E1F0:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0803E128

	THUMB_FUNC_START sub_0803E1F4
sub_0803E1F4: @ 0x0803E1F4
	push {r4-r7,lr}
	sub sp, sp, #16
	add r4, r0, #0
	add r5, r1, #0
	ldr r1, [r5, #28]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0803E21A
	mov r0, #22
	ldrsh r1, [r5, r0]
	ldr r0, [r4, #16]
	add r0, r0, r1
	str r0, [r4, #32]
	mov r2, #24
	ldrsh r1, [r5, r2]
	ldr r0, [r4, #20]
	add r0, r0, r1
	b _0803E316
_0803E21A:
	mov r0, #128
	lsl r0, r0, #15
	and r1, r1, r0
	cmp r1, #0
	beq _0803E30C
	ldr r1, [r5, #32]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803E254
	mov r3, #16
	ldrsh r0, [r5, r3]
	cmp r0, #2
	bne _0803E318
	ldr r0, _0803E250  @ =0x03001998
	ldr r2, [r0]
	mov r7, #22
	ldrsh r1, [r5, r7]
	ldr r0, [r2, #32]
	add r0, r0, r1
	str r0, [r4, #32]
	mov r0, #24
	ldrsh r1, [r5, r0]
	ldr r0, [r2, #36]
	add r0, r0, r1
	b _0803E316
_0803E250:
	.4byte 0x03001998
_0803E254:
	mov r0, #128
	lsl r0, r0, #16
	and r1, r1, r0
	cmp r1, #0
	beq _0803E272
	mov r2, #22
	ldrsh r1, [r5, r2]
	ldr r0, [r4, #32]
	add r0, r0, r1
	str r0, [r4, #32]
	mov r3, #24
	ldrsh r1, [r5, r3]
	ldr r0, [r4, #36]
	add r0, r0, r1
	b _0803E316
_0803E272:
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r3, [r0, #32]
	cmp r3, #0
	bne _0803E280
	ldr r3, [r4, #100]
_0803E280:
	mov r7, #4
	ldrsh r0, [r3, r7]
	ldr r2, [r4, #32]
	add r0, r2, r0
	ldr r6, _0803E304  @ =0x03001B58
	mov r7, #0
	ldrsh r1, [r6, r7]
	add r0, r0, r1
	str r0, [sp]
	mov r1, #6
	ldrsh r0, [r3, r1]
	add r2, r2, r0
	mov r7, #0
	ldrsh r0, [r6, r7]
	add r2, r2, r0
	str r2, [sp, #8]
	mov r1, #0
	ldrsh r0, [r3, r1]
	ldr r1, [r4, #36]
	add r0, r1, r0
	str r0, [sp, #4]
	mov r2, #2
	ldrsh r0, [r3, r2]
	add r1, r1, r0
	str r1, [sp, #12]
	mov r3, #24
	ldrsh r2, [r5, r3]
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	mov r7, #127
	and r0, r0, r7
	sub r0, r0, #1
	cmp r0, #3
	bls _0803E2DA
	ldr r0, [r4, #36]
	ldr r2, _0803E308  @ =0xFFFFFF00
	and r0, r0, r2
	mov r3, #24
	ldrsh r1, [r5, r3]
	add r0, r0, r1
	and r0, r0, r2
	str r0, [r4, #36]
_0803E2DA:
	mov r0, #22
	ldrsh r1, [r5, r0]
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	and r0, r0, r7
	sub r0, r0, #1
	cmp r0, #3
	bls _0803E318
	mov r1, #22
	ldrsh r0, [r5, r1]
	ldr r1, [r4, #32]
	add r1, r1, r0
	mov r2, #0
	ldrsh r0, [r6, r2]
	add r1, r1, r0
	str r1, [r4, #32]
	b _0803E318
	.byte 0x00
	.byte 0x00
_0803E304:
	.4byte 0x03001B58
_0803E308:
	.4byte 0xFFFFFF00
_0803E30C:
	mov r3, #22
	ldrsh r0, [r5, r3]
	str r0, [r4, #32]
	mov r7, #24
	ldrsh r0, [r5, r7]
_0803E316:
	str r0, [r4, #36]
_0803E318:
	ldr r1, _0803E328  @ =0x03001B58
	mov r0, #0
	strh r0, [r1]
	add sp, sp, #16
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803E328:
	.4byte 0x03001B58
	THUMB_FUNC_END sub_0803E1F4

	THUMB_FUNC_START sub_0803E32C
sub_0803E32C: @ 0x0803E32C
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r1, #0
	ldr r0, _0803E394  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0803E3AC
	ldr r0, [r4, #72]
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrb r1, [r5, #10]
	bl sub_0803E128
	ldr r0, [r5, #28]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803E43E
	ldr r1, _0803E398  @ =0xFFFFFECE
	add r0, r1, #0
	ldrh r2, [r4, #4]
	add r0, r0, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0803E382
	ldr r2, _0803E39C  @ =gUnknown_03001940
	ldr r1, [r4, #72]
	mov r0, #176
	mul r0, r1, r0
	ldr r1, [r2]
	add r1, r1, r0
	ldr r0, [r1, #32]
	ldr r2, _0803E3A0  @ =0xFFFFF000
	add r0, r0, r2
	str r0, [r1, #32]
	ldr r0, [r1, #36]
	ldr r2, _0803E3A4  @ =0xFFFFE000
	add r0, r0, r2
	str r0, [r1, #36]
_0803E382:
	ldr r0, [r4, #92]
	ldr r1, _0803E3A8  @ =0xFDFFFFFF
	and r0, r0, r1
	str r0, [r4, #92]
	mov r0, #1
	neg r0, r0
	str r0, [r4, #72]
	b _0803E43E
	.byte 0x00
	.byte 0x00
_0803E394:
	.4byte gUnknown_03001A1C
_0803E398:
	.4byte 0xFFFFFECE
_0803E39C:
	.4byte gUnknown_03001940
_0803E3A0:
	.4byte 0xFFFFF000
_0803E3A4:
	.4byte 0xFFFFE000
_0803E3A8:
	.4byte 0xFDFFFFFF
_0803E3AC:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0803E414
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	beq _0803E3D2
	ldr r0, [r5, #28]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _0803E41C
	ldr r0, [r4, #76]
	b _0803E40C
_0803E3CA:
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	b _0803E408
_0803E3D2:
	ldrb r0, [r5]
	cmp r0, #56
	beq _0803E41C
	ldr r0, _0803E410  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r2, #0
	mov r0, #16
	ldrsh r3, [r5, r0]
_0803E3E2:
	add r0, r1, #0
	add r0, r0, #152
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E3F2
	ldrh r0, [r1]
	cmp r0, r3
	beq _0803E3CA
_0803E3F2:
	lsl r0, r2, #16
	mov r2, #128
	lsl r2, r2, #9
	add r0, r0, r2
	add r1, r1, #176
	lsr r2, r0, #16
	asr r0, r0, #16
	cmp r0, #19
	ble _0803E3E2
	mov r0, #1
	neg r0, r0
_0803E408:
	lsl r0, r0, #24
	asr r0, r0, #24
_0803E40C:
	str r0, [r4, #72]
	b _0803E41C
_0803E410:
	.4byte gUnknown_03001940
_0803E414:
	cmp r0, #108
	beq _0803E41C
	cmp r0, #196
	bne _0803E42E
_0803E41C:
	ldr r0, [r4, #72]
	cmp r0, #0
	ble _0803E43E
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrb r1, [r5, #10]
	bl sub_0803E128
	b _0803E43E
_0803E42E:
	ldr r0, [r4, #72]
	cmp r0, #0
	ble _0803E43E
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrb r1, [r5, #10]
	bl sub_0803E128
_0803E43E:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803E32C

	THUMB_FUNC_START sub_0803E444
sub_0803E444: @ 0x0803E444
	push {r4-r7,lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, [r5, #92]
	ldr r1, _0803E4D4  @ =0xFDFFFFFF
	and r0, r0, r1
	str r0, [r5, #92]
	ldr r0, [r5, #72]
	cmp r0, #0
	bge _0803E45C
	b _0803E684
_0803E45C:
	ldrh r0, [r5]
	cmp r0, #0
	bne _0803E486
	ldr r2, _0803E4D8  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803E474
	mov r0, #4
	orr r1, r1, r0
	str r1, [r2]
_0803E474:
	ldr r1, [r2]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803E486
	mov r0, #17
	neg r0, r0
	and r1, r1, r0
	str r1, [r2]
_0803E486:
	ldr r0, [r6, #28]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	beq _0803E49E
	ldr r0, [r5, #72]
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrb r1, [r6, #10]
	bl sub_0803E128
_0803E49E:
	ldr r2, _0803E4DC  @ =gUnknown_03001940
	ldr r1, [r5, #72]
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r4, r0, r1
	ldrh r0, [r4]
	cmp r0, #8
	bne _0803E4B2
	b _0803E684
_0803E4B2:
	ldr r0, [r4, #92]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0803E4E4
	mov r0, #0
	strh r0, [r4, #48]
	ldr r0, [r5, #32]
	str r0, [r4, #32]
	ldr r0, [r5, #36]
	ldr r1, _0803E4E0  @ =0xFFFFFC00
	add r0, r0, r1
	str r0, [r4, #36]
	mov r0, #255
	lsl r0, r0, #8
	b _0803E670
_0803E4D4:
	.4byte 0xFDFFFFFF
_0803E4D8:
	.4byte gUnknown_03001A1C
_0803E4DC:
	.4byte gUnknown_03001940
_0803E4E0:
	.4byte 0xFFFFFC00
_0803E4E4:
	ldrh r2, [r5]
	cmp r2, #0
	beq _0803E4EC
	b _0803E672
_0803E4EC:
	ldr r3, _0803E53C  @ =0x030019F0
	add r1, r4, #0
	add r1, r1, #61
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0803E504
	mov r0, #255
	strb r0, [r3]
	ldr r0, _0803E540  @ =gUnknown_030019AC
	ldr r0, [r0]
	strh r2, [r0, #54]
_0803E504:
	ldr r1, [r6, #28]
	mov r0, #128
	lsl r0, r0, #13
	and r0, r0, r1
	cmp r0, #0
	bne _0803E518
	mov r0, #48
	ldrsh r2, [r5, r0]
	cmp r2, #0
	bge _0803E594
_0803E518:
	ldr r0, [r4, #32]
	mov r1, #136
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, _0803E544  @ =0x00000165
	cmp r7, r0
	bne _0803E54C
	ldr r0, _0803E548  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0803E56E
	ldr r0, [r4, #96]
	mov r1, #128
	lsl r1, r1, #9
	b _0803E56A
_0803E53C:
	.4byte 0x030019F0
_0803E540:
	.4byte gUnknown_030019AC
_0803E544:
	.4byte 0x00000165
_0803E548:
	.4byte gUnknown_03001990
_0803E54C:
	mov r1, #50
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0803E56E
	mov r1, #48
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0803E564
	ldr r0, [r4, #96]
	mov r1, #128
	lsl r1, r1, #10
	b _0803E56A
_0803E564:
	ldr r0, [r4, #96]
	mov r1, #128
	lsl r1, r1, #12
_0803E56A:
	orr r0, r0, r1
	str r0, [r4, #96]
_0803E56E:
	ldr r0, [r4, #92]
	mov r1, #128
	lsl r1, r1, #3
	orr r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	bl update_grabbed_object_0803ACFC
	ldr r0, [r4, #32]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, _0803E590  @ =0x0000FE60
	strh r0, [r4, #48]
	strh r1, [r4, #50]
	b _0803E672
_0803E590:
	.4byte 0x0000FE60
_0803E594:
	mov r0, #128
	lsl r0, r0, #14
	and r1, r1, r0
	cmp r1, #0
	bne _0803E5A2
	cmp r2, #0
	ble _0803E618
_0803E5A2:
	ldr r0, [r4, #32]
	ldr r1, _0803E5C8  @ =0xFFFFFDE0
	add r0, r0, r1
	str r0, [r4, #32]
	mov r0, #179
	lsl r0, r0, #1
	cmp r7, r0
	bne _0803E5D0
	ldr r0, _0803E5CC  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0803E5F2
	ldr r0, [r4, #96]
	mov r1, #128
	lsl r1, r1, #9
	b _0803E5EE
	.byte 0x00
	.byte 0x00
_0803E5C8:
	.4byte 0xFFFFFDE0
_0803E5CC:
	.4byte gUnknown_03001990
_0803E5D0:
	mov r1, #50
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0803E5F2
	mov r1, #48
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0803E5E8
	ldr r0, [r4, #96]
	mov r1, #128
	lsl r1, r1, #10
	b _0803E5EE
_0803E5E8:
	ldr r0, [r4, #96]
	mov r1, #128
	lsl r1, r1, #12
_0803E5EE:
	orr r0, r0, r1
	str r0, [r4, #96]
_0803E5F2:
	ldr r0, [r4, #92]
	mov r1, #128
	lsl r1, r1, #4
	orr r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	bl update_grabbed_object_0803ACFC
	ldr r0, [r4, #32]
	ldr r1, _0803E614  @ =0xFFFFFF00
	add r0, r0, r1
	str r0, [r4, #32]
	mov r0, #208
	lsl r0, r0, #1
	strh r0, [r4, #48]
	sub r0, r0, #160
	b _0803E670
_0803E614:
	.4byte 0xFFFFFF00
_0803E618:
	mov r1, #128
	lsl r1, r1, #2
	add r0, r5, #0
	mov r2, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0803E632
	ldr r0, [r4, #32]
	mov r1, #128
	lsl r1, r1, #2
	b _0803E636
_0803E632:
	ldr r0, [r4, #32]
	ldr r1, _0803E68C  @ =0xFFFFFE00
_0803E636:
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, _0803E690  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0803E650
	ldr r0, [r4, #96]
	mov r1, #128
	lsl r1, r1, #9
	orr r0, r0, r1
	str r0, [r4, #96]
_0803E650:
	ldr r0, [r4, #96]
	mov r1, #128
	lsl r1, r1, #11
	orr r0, r0, r1
	str r0, [r4, #96]
	add r0, r4, #0
	bl update_grabbed_object_0803ACFC
	ldr r0, [r4, #36]
	ldr r1, _0803E694  @ =0xFFFFFF00
	add r0, r0, r1
	str r0, [r4, #36]
	mov r0, #0
	strh r0, [r4, #48]
	mov r0, #168
	lsl r0, r0, #1
_0803E670:
	strh r0, [r4, #50]
_0803E672:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #72]
	ldr r2, _0803E698  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #97
	neg r1, r1
	and r0, r0, r1
	str r0, [r2]
_0803E684:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803E68C:
	.4byte 0xFFFFFE00
_0803E690:
	.4byte gUnknown_03001990
_0803E694:
	.4byte 0xFFFFFF00
_0803E698:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_0803E444

	THUMB_FUNC_START sub_0803E69C
sub_0803E69C: @ 0x0803E69C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #8
	add r4, r0, #0
	mov r0, #1
	neg r0, r0
	mov r9, r0
	ldr r3, [r4, #32]
	asr r3, r3, #8
	sub r3, r3, #14
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #40
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	mov r8, r0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #155
	mov r2, r9
	bl spawn_sprite_08038DF4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r6, _0803E760  @ =gUnknown_03001940
	ldr r1, [r6]
	mov r5, #176
	mul r0, r5, r0
	add r0, r0, r1
	add r0, r0, #65
	mov r1, #12
	strb r1, [r0]
	ldr r3, [r4, #32]
	asr r3, r3, #8
	add r3, r3, #22
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #40
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #155
	mov r2, r9
	bl spawn_sprite_08038DF4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, [r6]
	mul r0, r5, r0
	add r0, r0, r1
	add r0, r0, #65
	mov r1, #5
	strb r1, [r0]
	ldr r3, [r4, #32]
	asr r3, r3, #8
	add r3, r3, #59
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #40
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #155
	mov r2, r9
	bl spawn_sprite_08038DF4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, [r6]
	mul r0, r5, r0
	add r0, r0, r1
	add r0, r0, #65
	mov r1, #20
	strb r1, [r0]
	add sp, sp, #8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803E760:
	.4byte gUnknown_03001940
	THUMB_FUNC_END sub_0803E69C

	THUMB_FUNC_START sub_0803E764
sub_0803E764: @ 0x0803E764
	push {r4-r7,lr}
	sub sp, sp, #40
	ldr r0, _0803E7A0  @ =gUnknown_03001940
	ldr r5, [r0]
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #1
	strh r0, [r4, #2]
	mov r0, #8
	str r0, [sp, #32]
	mov r7, #0
	ldr r0, _0803E7A4  @ =0x000001FF
	add r6, r0, #0
	add r4, r5, #0
	add r4, r4, #146
_0803E78A:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0803E82E
	ldrh r0, [r5]
	cmp r0, #184
	bne _0803E7A8
	add r0, r5, #0
	bl sub_0806F438
	b _0803E82E
	.byte 0x00
	.byte 0x00
_0803E7A0:
	.4byte gUnknown_03001940
_0803E7A4:
	.4byte 0x000001FF
_0803E7A8:
	cmp r0, #191
	bne _0803E82E
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #3
	beq _0803E7E2
	cmp r0, #3
	bgt _0803E7BE
	cmp r0, #2
	beq _0803E7C8
	b _0803E82E
_0803E7BE:
	cmp r0, #4
	beq _0803E7FC
	cmp r0, #5
	beq _0803E816
	b _0803E82E
_0803E7C8:
	ldr r1, [r5, #20]
	ldrh r0, [r4]
	and r0, r0, r6
	lsl r0, r0, #8
	str r0, [r5, #20]
	asr r1, r1, #8
	strh r1, [r4]
	add r0, r5, #0
	mov r1, sp
	mov r2, #3
	bl update_level_object_0803E84C
	b _0803E82E
_0803E7E2:
	ldr r1, [r5, #20]
	ldrh r0, [r4]
	and r0, r0, r6
	lsl r0, r0, #8
	str r0, [r5, #20]
	asr r1, r1, #8
	strh r1, [r4]
	add r0, r5, #0
	mov r1, sp
	mov r2, #2
	bl update_level_object_0803E84C
	b _0803E82E
_0803E7FC:
	ldr r1, [r5, #20]
	ldrh r0, [r4]
	and r0, r0, r6
	lsl r0, r0, #8
	str r0, [r5, #20]
	asr r1, r1, #8
	strh r1, [r4]
	add r0, r5, #0
	mov r1, sp
	mov r2, #5
	bl update_level_object_0803E84C
	b _0803E82E
_0803E816:
	ldr r1, [r5, #20]
	ldrh r0, [r4]
	and r0, r0, r6
	lsl r0, r0, #8
	str r0, [r5, #20]
	asr r1, r1, #8
	strh r1, [r4]
	add r0, r5, #0
	mov r1, sp
	mov r2, #4
	bl update_level_object_0803E84C
_0803E82E:
	lsl r0, r7, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	add r4, r4, #176
	add r5, r5, #176
	lsr r7, r0, #16
	asr r0, r0, #16
	cmp r0, #19
	ble _0803E78A
	add sp, sp, #40
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803E764

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START update_level_object_0803E84C
update_level_object_0803E84C: @ 0x0803E84C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	add r5, r0, #0
	add r7, r1, #0
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r9, r2
	ldrb r0, [r5]
	bl get_sprite_table_08038D1C
	mov r10, r0
	ldrh r1, [r0, #10]
	mov r2, r9
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r1, r0
	bgt _0803E878
	b _0803ED82
_0803E878:
	ldr r4, _0803E8A4  @ =0x03001934
	mov r0, #0
	ldrsb r0, [r4, r0]
	mov r6, #1
	neg r6, r6
	cmp r0, r6
	bne _0803E8A8
	ldr r0, [r7, #32]
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803E8BE
	ldr r0, [r5, #16]
	asr r0, r0, #8
	ldr r1, [r5, #20]
	asr r1, r1, #8
	mov r2, #18
	bl sub_0800EFD8
	mov r0, #1
	strb r0, [r4]
	b _0803E8BE
_0803E8A4:
	.4byte 0x03001934
_0803E8A8:
	ldr r0, [r7, #32]
	mov r1, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0803E8BE
	ldr r1, _0803E8F0  @ =0x03001B60
	mov r0, #0
	strb r0, [r1]
	bl sub_0800F000
	strb r6, [r4]
_0803E8BE:
	ldr r1, [r7, #32]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _0803E8F8
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	ldr r3, _0803E8F4  @ =gUnknown_030019AC
	ldr r1, [r3]
	add r2, r1, #0
	add r2, r2, #67
	mov r1, #0
	ldrsb r1, [r2, r1]
	cmp r0, r1
	bne _0803E932
	mov r0, #255
	strb r0, [r2]
	ldr r1, [r3]
	mov r0, #1
	neg r0, r0
	str r0, [r1, #76]
	b _0803E932
	.byte 0x00
	.byte 0x00
_0803E8F0:
	.4byte 0x03001B60
_0803E8F4:
	.4byte gUnknown_030019AC
_0803E8F8:
	mov r0, #128
	lsl r0, r0, #17
	and r1, r1, r0
	cmp r1, #0
	beq _0803E932
	ldr r1, _0803E91C  @ =gUnknown_030019AC
	ldr r0, [r1]
	ldr r0, [r0, #36]
	asr r3, r0, #8
	ldr r0, [r5, #36]
	asr r0, r0, #8
	sub r0, r0, #32
	sub r2, r3, r0
	cmp r2, #0
	blt _0803E920
	cmp r2, #2
	ble _0803E926
	b _0803E932
_0803E91C:
	.4byte gUnknown_030019AC
_0803E920:
	sub r0, r0, r3
	cmp r0, #2
	bgt _0803E932
_0803E926:
	ldr r0, [r1]
	add r1, r5, #0
	add r1, r1, #61
	ldrb r1, [r1]
	add r0, r0, #67
	strb r1, [r0]
_0803E932:
	ldr r0, [r7, #32]
	mov r1, #128
	lsl r1, r1, #19
	and r0, r0, r1
	cmp r0, #0
	beq _0803E964
	add r0, r5, #0
	add r0, r0, #61
	ldrb r3, [r0]
	ldr r0, _0803E978  @ =0x03001958
	ldr r0, [r0]
	cmp r3, r0
	bne _0803E964
	ldr r2, _0803E97C  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #8
	neg r1, r1
	and r0, r0, r1
	str r0, [r2]
	ldr r0, _0803E980  @ =0x03001A54
	ldr r1, [r0]
	lsl r0, r3, #1
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0]
_0803E964:
	ldr r1, [r7, #32]
	mov r0, #128
	lsl r0, r0, #21
	and r0, r0, r1
	cmp r0, #0
	beq _0803E984
	mov r0, #1
	bl sub_0804F920
	b _0803E994
_0803E978:
	.4byte 0x03001958
_0803E97C:
	.4byte gUnknown_03001A1C
_0803E980:
	.4byte 0x03001A54
_0803E984:
	mov r0, #128
	lsl r0, r0, #22
	and r1, r1, r0
	cmp r1, #0
	beq _0803E994
	mov r0, #0
	bl sub_0804F920
_0803E994:
	ldr r1, [r7, #28]
	mov r0, #128
	lsl r0, r0, #16
	and r1, r1, r0
	cmp r1, #0
	bne _0803E9A2
	str r1, [r5, #80]
_0803E9A2:
	add r0, r5, #0
	add r0, r0, #64
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bgt _0803E9B4
	strb r1, [r5, #10]
_0803E9B4:
	ldr r0, [r7, #28]
	mov r1, #128
	lsl r1, r1, #23
	and r0, r0, r1
	cmp r0, #0
	beq _0803E9CC
	ldr r0, _0803EA94  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #8
	orr r1, r1, r2
	str r1, [r0]
_0803E9CC:
	ldr r0, [r7, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803E9DA
	ldr r0, _0803EA98  @ =0x03001A50
	strb r1, [r0]
_0803E9DA:
	ldr r0, [r7, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803E9FC
	ldr r0, _0803EA9C  @ =0x03001B68
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E9FC
	ldr r0, _0803EAA0  @ =gUnknown_030019AC
	ldr r2, [r0]
	mov r3, #4
	ldrsh r1, [r7, r3]
	lsl r1, r1, #8
	ldr r0, [r2, #32]
	add r0, r0, r1
	str r0, [r2, #32]
_0803E9FC:
	mov r1, r9
	lsl r0, r1, #16
	asr r0, r0, #16
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	mov r2, r10
	ldr r0, [r2]
	add r0, r0, r1
	mov r8, r0
	mov r3, r9
	strh r3, [r5, #4]
	ldr r0, [r7, #32]
	mov r6, #4
	and r0, r0, r6
	cmp r0, #0
	beq _0803EA26
	ldr r0, [r5, #32]
	str r0, [r5, #16]
	ldr r0, [r5, #36]
	str r0, [r5, #20]
_0803EA26:
	ldr r0, [r7, #28]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803EA38
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0803E1F4
_0803EA38:
	ldr r0, [r7, #32]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _0803EA5E
	ldr r1, _0803EAA4  @ =0x03001D4C
	mov r0, #0
	strh r0, [r1]
	ldr r4, _0803EAA8  @ =0x030019EC
	ldrb r0, [r4]
	bl sub_08003B78
	ldrb r0, [r4]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r4]
	ldr r0, _0803EAAC  @ =0x0300197C
	strb r6, [r0]
_0803EA5E:
	add r2, r5, #0
	add r2, r2, #124
	mov r1, r8
	ldr r0, [r1, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	ldrh r0, [r5]
	add r4, r2, #0
	cmp r0, #188
	beq _0803EA7A
	cmp r0, #192
	bne _0803EABA
_0803EA7A:
	ldr r0, [r7, #32]
	mov r1, #128
	lsl r1, r1, #20
	and r0, r0, r1
	cmp r0, #0
	beq _0803EAB0
	ldr r0, [r5, #96]
	mov r1, #128
	lsl r1, r1, #7
	orr r0, r0, r1
	str r0, [r5, #96]
	b _0803EACE
	.byte 0x00
	.byte 0x00
_0803EA94:
	.4byte gUnknown_03001A1C
_0803EA98:
	.4byte 0x03001A50
_0803EA9C:
	.4byte 0x03001B68
_0803EAA0:
	.4byte gUnknown_030019AC
_0803EAA4:
	.4byte 0x03001D4C
_0803EAA8:
	.4byte 0x030019EC
_0803EAAC:
	.4byte 0x0300197C
_0803EAB0:
	add r3, r5, #0
	add r3, r3, #129
	mov r2, r10
	ldrb r0, [r2, #6]
	b _0803EAC2
_0803EABA:
	add r3, r5, #0
	add r3, r3, #129
	mov r1, r10
	ldrb r0, [r1, #6]
_0803EAC2:
	lsl r0, r0, #4
	ldrb r2, [r3]
	mov r1, #15
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r3]
_0803EACE:
	ldr r1, [r5, #32]
	add r3, r5, #0
	add r3, r3, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r3]
	ldr r0, _0803EB38  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3]
	ldr r0, [r5, #36]
	asr r0, r0, #8
	strb r0, [r4]
	add r1, r5, #0
	add r1, r1, #136
	mov r2, r8
	ldr r0, [r2, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r2, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r2, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r2]
	str r0, [r1]
	ldr r2, [r7, #28]
	mov r3, #128
	lsl r3, r3, #6
	add r0, r2, #0
	and r0, r0, r3
	mov r9, r1
	cmp r0, #0
	beq _0803EB4C
	ldr r2, _0803EB3C  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #5
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _0803EB40  @ =gUnknown_03001938
	ldr r0, [r1]
	orr r0, r0, r3
	str r0, [r1]
	ldr r1, _0803EB44  @ =0x03001968
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	str r0, [r1]
	ldr r1, _0803EB48  @ =0x03001A60
	mov r0, #50
	b _0803EB9E
_0803EB38:
	.4byte 0xFFFFFE00
_0803EB3C:
	.4byte gUnknown_03001A1C
_0803EB40:
	.4byte gUnknown_03001938
_0803EB44:
	.4byte 0x03001968
_0803EB48:
	.4byte 0x03001A60
_0803EB4C:
	mov r1, #128
	lsl r1, r1, #7
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0803EB68
	ldr r0, _0803EB64  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #134
	lsl r2, r2, #7
	b _0803EB78
	.byte 0x00
	.byte 0x00
_0803EB64:
	.4byte gUnknown_03001A1C
_0803EB68:
	ldr r0, [r7, #32]
	and r0, r0, r1
	cmp r0, #0
	beq _0803EB84
	ldr r0, _0803EB80  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #17
_0803EB78:
	orr r1, r1, r2
	str r1, [r0]
	b _0803EBA0
	.byte 0x00
	.byte 0x00
_0803EB80:
	.4byte gUnknown_03001A1C
_0803EB84:
	mov r0, #128
	lsl r0, r0, #8
	and r2, r2, r0
	cmp r2, #0
	beq _0803EBA0
	ldr r2, _0803EBC0  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #192
	lsl r1, r1, #5
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _0803EBC4  @ =0x03001A60
	mov r0, #250
_0803EB9E:
	strb r0, [r1]
_0803EBA0:
	ldr r1, [r7, #28]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0803EC30
	ldr r6, [r7, #32]
	mov r0, #128
	lsl r0, r0, #15
	and r6, r6, r0
	cmp r6, #0
	beq _0803EBC8
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0803E69C
	b _0803EC30
_0803EBC0:
	.4byte gUnknown_03001A1C
_0803EBC4:
	.4byte 0x03001A60
_0803EBC8:
	mov r4, #128
	and r4, r4, r1
	cmp r4, #0
	beq _0803EBF4
	ldrb r1, [r7, #16]
	mov r2, #1
	neg r2, r2
	mov r3, #18
	ldrsh r0, [r7, r3]
	ldr r3, [r5, #32]
	add r3, r3, r0
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #20
	ldrsh r4, [r7, r0]
	ldr r0, [r5, #36]
	add r0, r0, r4
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	str r6, [sp, #4]
	b _0803EC12
_0803EBF4:
	ldrb r1, [r7, #16]
	mov r2, #1
	neg r2, r2
	ldrh r3, [r7, #18]
	lsl r3, r3, #16
	asr r3, r3, #24
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r7, #20]
	lsl r0, r0, #16
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r4, [sp, #4]
_0803EC12:
	mov r0, #255
	bl spawn_sprite_08038DF4
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [r5, #72]
	ldr r1, _0803ECB4  @ =gUnknown_03001940
	ldr r2, [r1]
	mov r1, #176
	mul r0, r1, r0
	add r0, r0, r2
	add r1, r5, #0
	add r1, r1, #61
	ldrb r1, [r1]
	str r1, [r0, #72]
_0803EC30:
	ldr r0, [r7, #28]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	beq _0803EC44
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0803E32C
_0803EC44:
	ldr r0, [r7, #28]
	cmp r0, #0
	bge _0803EC8C
	ldr r0, [r5, #92]
	ldr r1, _0803ECB8  @ =0xFDFFFFFF
	and r0, r0, r1
	str r0, [r5, #92]
	ldrh r0, [r5]
	cmp r0, #0
	bne _0803EC7C
	ldr r2, _0803ECBC  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803EC6A
	mov r0, #4
	orr r1, r1, r0
	str r1, [r2]
_0803EC6A:
	ldr r1, [r2]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803EC7C
	mov r0, #17
	neg r0, r0
	and r1, r1, r0
	str r1, [r2]
_0803EC7C:
	ldr r0, [r5, #72]
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_08039B64
	mov r0, #1
	neg r0, r0
	str r0, [r5, #72]
_0803EC8C:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #8]
	mov r4, #128
	lsl r4, r4, #23
	and r0, r0, r4
	cmp r0, #0
	beq _0803ECC0
	ldr r0, [r5, #92]
	orr r0, r0, r4
	str r0, [r5, #92]
	ldr r0, [r7, #32]
	mov r1, #128
	lsl r1, r1, #14
	and r0, r0, r1
	ldr r6, [r7, #28]
	cmp r0, #0
	beq _0803ED30
	b _0803ECF0
	.byte 0x00
	.byte 0x00
_0803ECB4:
	.4byte gUnknown_03001940
_0803ECB8:
	.4byte 0xFDFFFFFF
_0803ECBC:
	.4byte gUnknown_03001A1C
_0803ECC0:
	ldr r1, [r7, #28]
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	add r6, r1, #0
	cmp r0, #0
	beq _0803ECDC
	ldr r0, [r5, #92]
	ldr r1, _0803ECD8  @ =0xBFFFFFFF
	and r0, r0, r1
	str r0, [r5, #92]
	b _0803ED30
_0803ECD8:
	.4byte 0xBFFFFFFF
_0803ECDC:
	ldr r3, [r7, #32]
	mov r0, #128
	lsl r0, r0, #14
	and r3, r3, r0
	cmp r3, #0
	beq _0803ED00
	ldr r0, [r5, #92]
	ldr r1, _0803ECFC  @ =0xBFFFFFFF
	and r0, r0, r1
	str r0, [r5, #92]
_0803ECF0:
	ldrb r0, [r5, #3]
	ldrb r1, [r5, #2]
	sub r0, r0, r1
	strb r0, [r5, #2]
	b _0803ED30
	.byte 0x00
	.byte 0x00
_0803ECFC:
	.4byte 0xBFFFFFFF
_0803ED00:
	ldr r2, [r5, #92]
	add r1, r2, #0
	and r1, r1, r4
	cmp r1, #0
	beq _0803ED28
	ldrb r0, [r5, #2]
	add r0, r0, #1
	strb r0, [r5, #2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r5, #3]
	cmp r0, r1
	bcc _0803ED1C
	strb r3, [r5, #2]
_0803ED1C:
	ldr r0, _0803ED24  @ =0xBFFFFFFF
	and r2, r2, r0
	str r2, [r5, #92]
	b _0803ED30
_0803ED24:
	.4byte 0xBFFFFFFF
_0803ED28:
	ldr r0, _0803ED94  @ =0xBFFFFFFF
	and r2, r2, r0
	str r2, [r5, #92]
	strb r1, [r5, #2]
_0803ED30:
	mov r0, #128
	lsl r0, r0, #18
	and r0, r0, r6
	cmp r0, #0
	beq _0803ED5E
	mov r2, r9
	ldr r0, [r2]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #19
	and r0, r0, r1
	cmp r0, #0
	bne _0803ED50
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
_0803ED50:
	mov r3, r9
	ldr r0, [r3]
	ldrh r1, [r0, #20]
	ldrh r0, [r5, #8]
	cmp r0, r1
	bcc _0803ED60
	sub r0, r1, #1
_0803ED5E:
	strh r0, [r5, #8]
_0803ED60:
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r6
	cmp r0, #0
	bne _0803ED78
	ldr r1, [r7, #32]
	mov r0, #128
	lsl r0, r0, #14
	and r1, r1, r0
	cmp r1, #0
	bne _0803ED78
	strb r1, [r5, #2]
_0803ED78:
	add r0, r5, #0
	mov r1, r8
	add r2, r7, #0
	bl sub_0803DD20
_0803ED82:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803ED94:
	.4byte 0xBFFFFFFF
	THUMB_FUNC_END update_level_object_0803E84C

	THUMB_FUNC_START update_mario_action_0803ED98
update_mario_action_0803ED98: @ 0x0803ED98
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	add r5, r0, #0
	add r7, r1, #0
	lsl r2, r2, #16
	lsr r4, r2, #16
	ldrb r0, [r5]
	bl get_sprite_table_08038D1C
	add r6, r0, #0
	ldrh r1, [r6, #10]
	lsl r0, r4, #16
	asr r0, r0, #16
	cmp r1, r0
	bgt _0803EDC0
	b _0803F4A0
_0803EDC0:
	ldr r0, [r7, #32]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _0803EDF6
	ldr r2, _0803EF2C  @ =gUnknown_030019AC
	ldr r1, [r2]
	add r0, r1, #0
	add r0, r0, #67
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0803EDE6
	ldr r0, [r1, #36]
	ldr r3, _0803EF30  @ =0xFFFFFC00
	add r0, r0, r3
	str r0, [r1, #36]
_0803EDE6:
	ldr r0, [r2]
	add r0, r0, #67
	mov r1, #255
	strb r1, [r0]
	ldr r1, [r2]
	mov r0, #1
	neg r0, r0
	str r0, [r1, #76]
_0803EDF6:
	ldr r1, [r7, #28]
	mov r0, #128
	lsl r0, r0, #16
	and r1, r1, r0
	cmp r1, #0
	bne _0803EE04
	str r1, [r5, #80]
_0803EE04:
	add r0, r5, #0
	add r0, r0, #64
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bgt _0803EE16
	strb r1, [r5, #10]
_0803EE16:
	ldr r0, [r7, #28]
	mov r1, #128
	lsl r1, r1, #23
	and r0, r0, r1
	cmp r0, #0
	beq _0803EE2E
	ldr r0, _0803EF34  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #8
	orr r1, r1, r2
	str r1, [r0]
_0803EE2E:
	ldr r0, [r7, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803EE3C
	ldr r0, _0803EF38  @ =0x03001A50
	strb r1, [r0]
_0803EE3C:
	lsl r0, r4, #16
	asr r0, r0, #16
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r6]
	add r0, r0, r1
	mov r9, r0
	mov r1, #4
	ldrsh r0, [r5, r1]
	mov r8, r0
	mov r2, #0
	mov r10, r2
	strh r4, [r5, #4]
	ldr r0, [r7, #32]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803EE6A
	ldr r0, [r5, #32]
	str r0, [r5, #16]
	ldr r0, [r5, #36]
	str r0, [r5, #20]
_0803EE6A:
	ldr r0, [r7, #28]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803EE7C
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0803E1F4
_0803EE7C:
	add r3, r5, #0
	add r3, r3, #124
	mov r1, r9
	ldr r0, [r1, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r3]
	str r1, [r3, #4]
	add r4, r5, #0
	add r4, r4, #129
	ldrb r1, [r6, #6]
	lsl r1, r1, #4
	ldrb r2, [r4]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4]
	ldr r1, [r5, #32]
	sub r4, r4, #3
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0803EF3C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r5, #36]
	asr r0, r0, #8
	strb r0, [r3]
	add r1, r5, #0
	add r1, r1, #136
	mov r2, r9
	ldr r0, [r2, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r2, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r2, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, [r7, #28]
	mov r4, #128
	lsl r4, r4, #9
	and r0, r0, r4
	str r1, [sp, #12]
	cmp r0, #0
	beq _0803EEF0
	ldr r0, _0803EF34  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #6
	orr r1, r1, r2
	str r1, [r0]
	bl sub_0804AB60
_0803EEF0:
	ldr r1, [r7, #28]
	mov r2, #128
	lsl r2, r2, #10
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0803EF44
	ldr r1, _0803EF34  @ =gUnknown_03001A1C
	ldr r0, [r1]
	orr r0, r0, r4
	str r0, [r1]
	ldr r2, _0803EF40  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	mov r3, r10
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #120
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0803EF7A
	.byte 0x00
	.byte 0x00
_0803EF2C:
	.4byte gUnknown_030019AC
_0803EF30:
	.4byte 0xFFFFFC00
_0803EF34:
	.4byte gUnknown_03001A1C
_0803EF38:
	.4byte 0x03001A50
_0803EF3C:
	.4byte 0xFFFFFE00
_0803EF40:
	.4byte gUnknown_030019A0
_0803EF44:
	mov r3, #128
	lsl r3, r3, #11
	add r0, r1, #0
	and r0, r0, r3
	cmp r0, #0
	beq _0803EF5C
	ldr r1, _0803EF58  @ =gUnknown_03001A1C
	ldr r0, [r1]
	orr r0, r0, r2
	b _0803EF6C
_0803EF58:
	.4byte gUnknown_03001A1C
_0803EF5C:
	mov r0, #128
	lsl r0, r0, #12
	and r1, r1, r0
	cmp r1, #0
	beq _0803EF7A
	ldr r1, _0803EFB0  @ =gUnknown_03001A1C
	ldr r0, [r1]
	orr r0, r0, r3
_0803EF6C:
	str r0, [r1]
	ldr r2, _0803EFB4  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
_0803EF7A:
	ldr r1, [r7, #28]
	mov r3, #128
	lsl r3, r3, #6
	add r0, r1, #0
	and r0, r0, r3
	cmp r0, #0
	beq _0803EFC4
	ldr r2, _0803EFB0  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #5
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _0803EFB8  @ =gUnknown_03001938
	ldr r0, [r1]
	orr r0, r0, r3
	str r0, [r1]
	ldr r1, _0803EFBC  @ =0x03001968
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	str r0, [r1]
	ldr r1, _0803EFC0  @ =0x03001A60
	mov r0, #50
	strb r0, [r1]
	b _0803F030
	.byte 0x00
	.byte 0x00
_0803EFB0:
	.4byte gUnknown_03001A1C
_0803EFB4:
	.4byte gUnknown_030019A0
_0803EFB8:
	.4byte gUnknown_03001938
_0803EFBC:
	.4byte 0x03001968
_0803EFC0:
	.4byte 0x03001A60
_0803EFC4:
	mov r2, #128
	lsl r2, r2, #7
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0803EFE0
	ldr r0, _0803EFDC  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #134
	lsl r2, r2, #7
	b _0803EFF0
	.byte 0x00
	.byte 0x00
_0803EFDC:
	.4byte gUnknown_03001A1C
_0803EFE0:
	ldr r0, [r7, #32]
	and r0, r0, r2
	cmp r0, #0
	beq _0803EFFC
	ldr r0, _0803EFF8  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #17
_0803EFF0:
	orr r1, r1, r2
	str r1, [r0]
	b _0803F030
	.byte 0x00
	.byte 0x00
_0803EFF8:
	.4byte gUnknown_03001A1C
_0803EFFC:
	mov r2, #128
	lsl r2, r2, #8
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0803F024
	ldr r2, _0803F01C  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #192
	lsl r1, r1, #5
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _0803F020  @ =0x03001A60
	mov r0, #250
	strb r0, [r1]
	b _0803F030
_0803F01C:
	.4byte gUnknown_03001A1C
_0803F020:
	.4byte 0x03001A60
_0803F024:
	cmp r1, #0
	bge _0803F030
	ldr r1, _0803F050  @ =gUnknown_030019A0
	ldr r0, [r1]
	orr r0, r0, r2
	str r0, [r1]
_0803F030:
	ldr r1, [r7, #28]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0803F0BC
	ldr r6, [r7, #32]
	mov r0, #128
	lsl r0, r0, #15
	and r6, r6, r0
	cmp r6, #0
	beq _0803F054
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0803E69C
	b _0803F0BC
_0803F050:
	.4byte gUnknown_030019A0
_0803F054:
	mov r4, #128
	and r4, r4, r1
	cmp r4, #0
	beq _0803F080
	ldrb r1, [r7, #16]
	mov r2, #1
	neg r2, r2
	mov r3, #18
	ldrsh r0, [r7, r3]
	ldr r3, [r5, #32]
	add r3, r3, r0
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #20
	ldrsh r4, [r7, r0]
	ldr r0, [r5, #36]
	add r0, r0, r4
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	str r6, [sp, #4]
	b _0803F09E
_0803F080:
	ldrb r1, [r7, #16]
	mov r2, #1
	neg r2, r2
	ldrh r3, [r7, #18]
	lsl r3, r3, #16
	asr r3, r3, #24
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r7, #20]
	lsl r0, r0, #16
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r4, [sp, #4]
_0803F09E:
	mov r0, #255
	bl spawn_sprite_08038DF4
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [r5, #72]
	ldr r1, _0803F0E8  @ =gUnknown_03001940
	ldr r2, [r1]
	mov r1, #176
	mul r0, r1, r0
	add r0, r0, r2
	add r1, r5, #0
	add r1, r1, #61
	ldrb r1, [r1]
	str r1, [r0, #72]
_0803F0BC:
	ldr r0, [r7, #28]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	beq _0803F0D0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0803E32C
_0803F0D0:
	ldr r1, [r7, #28]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _0803F0EC
	ldr r0, [r5, #92]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r5, #92]
	b _0803F150
_0803F0E8:
	.4byte gUnknown_03001940
_0803F0EC:
	cmp r1, #0
	bge _0803F13C
	ldr r0, [r5, #92]
	ldr r1, _0803F134  @ =0xFDFFFFFF
	and r0, r0, r1
	str r0, [r5, #92]
	ldrh r0, [r5]
	cmp r0, #0
	bne _0803F122
	ldr r2, _0803F138  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803F110
	mov r0, #4
	orr r1, r1, r0
	str r1, [r2]
_0803F110:
	ldr r1, [r2]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0803F122
	mov r0, #17
	neg r0, r0
	and r1, r1, r0
	str r1, [r2]
_0803F122:
	ldr r0, [r5, #72]
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_08039B64
	mov r0, #1
	neg r0, r0
	str r0, [r5, #72]
	b _0803F150
_0803F134:
	.4byte 0xFDFFFFFF
_0803F138:
	.4byte gUnknown_03001A1C
_0803F13C:
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	beq _0803F150
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_0803E444
_0803F150:
	ldrb r0, [r7]
	cmp r0, #147
	beq _0803F15E
	cmp r0, #150
	beq _0803F15E
	cmp r0, #151
	bne _0803F1A4
_0803F15E:
	ldr r1, _0803F1CC  @ =0x03001A40
	mov r0, #0
	strb r0, [r1]
	mov r3, #11
	ldrsb r3, [r5, r3]
	str r3, [r5, #72]
	ldr r0, [r5, #92]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r5, #92]
	ldr r2, _0803F1D0  @ =gUnknown_03001940
	mov r0, #176
	add r1, r3, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0803F19A
	ldr r0, _0803F1D4  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #16
	orr r1, r1, r2
	str r1, [r0]
_0803F19A:
	ldr r0, _0803F1D4  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #32
	orr r1, r1, r2
	str r1, [r0]
_0803F1A4:
	mov r1, r9
	ldr r0, [r1]
	ldr r0, [r0, #8]
	mov r4, #128
	lsl r4, r4, #23
	and r0, r0, r4
	cmp r0, #0
	beq _0803F1D8
	ldr r0, [r5, #92]
	orr r0, r0, r4
	str r0, [r5, #92]
	ldr r0, [r7, #32]
	mov r1, #128
	lsl r1, r1, #14
	and r0, r0, r1
	ldr r6, [r7, #28]
	cmp r0, #0
	beq _0803F248
	b _0803F208
	.byte 0x00
	.byte 0x00
_0803F1CC:
	.4byte 0x03001A40
_0803F1D0:
	.4byte gUnknown_03001940
_0803F1D4:
	.4byte gUnknown_03001A1C
_0803F1D8:
	ldr r1, [r7, #28]
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	add r6, r1, #0
	cmp r0, #0
	beq _0803F1F4
	ldr r0, [r5, #92]
	ldr r1, _0803F1F0  @ =0xBFFFFFFF
	and r0, r0, r1
	str r0, [r5, #92]
	b _0803F248
_0803F1F0:
	.4byte 0xBFFFFFFF
_0803F1F4:
	ldr r3, [r7, #32]
	mov r0, #128
	lsl r0, r0, #14
	and r3, r3, r0
	cmp r3, #0
	beq _0803F218
	ldr r0, [r5, #92]
	ldr r1, _0803F214  @ =0xBFFFFFFF
	and r0, r0, r1
	str r0, [r5, #92]
_0803F208:
	ldrb r0, [r5, #3]
	ldrb r1, [r5, #2]
	sub r0, r0, r1
	strb r0, [r5, #2]
	b _0803F248
	.byte 0x00
	.byte 0x00
_0803F214:
	.4byte 0xBFFFFFFF
_0803F218:
	ldr r2, [r5, #92]
	add r1, r2, #0
	and r1, r1, r4
	cmp r1, #0
	beq _0803F240
	ldrb r0, [r5, #2]
	add r0, r0, #1
	strb r0, [r5, #2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r5, #3]
	cmp r0, r1
	bcc _0803F234
	strb r3, [r5, #2]
_0803F234:
	ldr r0, _0803F23C  @ =0xBFFFFFFF
	and r2, r2, r0
	str r2, [r5, #92]
	b _0803F248
_0803F23C:
	.4byte 0xBFFFFFFF
_0803F240:
	ldr r0, _0803F268  @ =0xBFFFFFFF
	and r2, r2, r0
	str r2, [r5, #92]
	strb r1, [r5, #2]
_0803F248:
	mov r0, #128
	lsl r0, r0, #18
	and r0, r0, r6
	cmp r0, #0
	beq _0803F2FE
	ldr r0, _0803F26C  @ =0x0000016F
	ldrh r2, [r5, #4]
	cmp r8, r0
	bne _0803F270
	add r0, r0, #1
	cmp r2, r0
	bne _0803F270
	ldrh r0, [r5, #8]
	sub r0, r0, #1
	b _0803F2EE
	.byte 0x00
	.byte 0x00
_0803F268:
	.4byte 0xBFFFFFFF
_0803F26C:
	.4byte 0x0000016F
_0803F270:
	mov r0, #201
	lsl r0, r0, #1
	cmp r8, r0
	bne _0803F296
	lsl r0, r2, #16
	asr r1, r0, #16
	ldr r0, _0803F288  @ =0x00000193
	cmp r1, r0
	bne _0803F28C
	ldrh r0, [r5, #8]
	sub r0, r0, #1
	b _0803F2EE
_0803F288:
	.4byte 0x00000193
_0803F28C:
	cmp r1, r8
	bne _0803F296
	ldrh r0, [r5, #8]
	sub r0, r0, #1
	b _0803F2EE
_0803F296:
	ldr r0, _0803F2AC  @ =0x0000016F
	cmp r8, r0
	bne _0803F2B0
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r0, r8
	bne _0803F2B0
	ldrh r0, [r5, #8]
	sub r0, r0, #1
	b _0803F2EE
	.byte 0x00
	.byte 0x00
_0803F2AC:
	.4byte 0x0000016F
_0803F2B0:
	lsl r0, r2, #16
	asr r1, r0, #16
	ldr r0, _0803F34C  @ =0x00000193
	cmp r1, r0
	beq _0803F2F0
	sub r0, r0, #35
	cmp r1, r0
	beq _0803F2F0
	sub r0, r0, #1
	cmp r8, r0
	bne _0803F2CC
	sub r0, r0, #2
	cmp r1, r0
	beq _0803F2F0
_0803F2CC:
	mov r0, #201
	lsl r0, r0, #1
	cmp r8, r0
	bne _0803F2DA
	sub r0, r0, #1
	cmp r1, r0
	beq _0803F2F0
_0803F2DA:
	ldr r2, [sp, #12]
	ldr r0, [r2]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #19
	and r0, r0, r1
	cmp r0, #0
	bne _0803F2F0
	ldrh r0, [r5, #8]
	add r0, r0, #1
_0803F2EE:
	strh r0, [r5, #8]
_0803F2F0:
	ldr r3, [sp, #12]
	ldr r0, [r3]
	ldrh r1, [r0, #20]
	ldrh r0, [r5, #8]
	cmp r0, r1
	bcc _0803F300
	sub r0, r1, #1
_0803F2FE:
	strh r0, [r5, #8]
_0803F300:
	ldr r0, [r7, #28]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	beq _0803F3C4
	ldr r0, _0803F350  @ =0x03001B68
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0803F354  @ =0x03001B74
	strb r1, [r0]
	ldr r0, _0803F358  @ =0x03001B5C
	strb r1, [r0]
	ldr r1, _0803F35C  @ =0x03001B64
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803F372
	ldr r0, _0803F360  @ =gUnknown_03001940
	ldrb r2, [r1]
	ldr r3, [r0]
	mov r1, #176
	add r0, r2, #0
	mul r0, r1, r0
	add r0, r0, r3
	ldr r0, [r0, #72]
	mul r0, r1, r0
	add r0, r3, r0
	mov r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #13
	bne _0803F364
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _0803F372
	.byte 0x00
	.byte 0x00
_0803F34C:
	.4byte 0x00000193
_0803F350:
	.4byte 0x03001B68
_0803F354:
	.4byte 0x03001B74
_0803F358:
	.4byte 0x03001B5C
_0803F35C:
	.4byte 0x03001B64
_0803F360:
	.4byte gUnknown_03001940
_0803F364:
	cmp r1, #17
	bne _0803F372
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_0803F372:
	ldr r1, _0803F3A4  @ =0x03001B50
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803F3BA
	ldr r0, _0803F3A8  @ =gUnknown_03001940
	ldrb r2, [r1]
	ldr r3, [r0]
	mov r1, #176
	add r0, r2, #0
	mul r0, r1, r0
	add r0, r0, r3
	ldr r0, [r0, #72]
	mul r0, r1, r0
	add r0, r3, r0
	mov r3, #4
	ldrsh r1, [r0, r3]
	cmp r1, #13
	bne _0803F3AC
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _0803F3BA
	.byte 0x00
	.byte 0x00
_0803F3A4:
	.4byte 0x03001B50
_0803F3A8:
	.4byte gUnknown_03001940
_0803F3AC:
	cmp r1, #17
	bne _0803F3BA
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_0803F3BA:
	ldr r0, _0803F42C  @ =0x03001B64
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0803F430  @ =0x03001B50
	strb r1, [r0]
_0803F3C4:
	ldr r1, [sp, #12]
	ldr r0, [r1]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	beq _0803F3E0
	ldr r0, _0803F434  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #22
	orr r1, r1, r2
	str r1, [r0]
_0803F3E0:
	ldr r0, _0803F438  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _0803F3FE
	ldr r0, [r5, #72]
	cmp r0, #0
	ble _0803F3FE
	add r0, r5, #0
	add r1, r7, #0
	mov r2, r8
	bl sub_0803E444
_0803F3FE:
	ldr r1, [r7, #28]
	mov r0, #128
	lsl r0, r0, #19
	and r0, r0, r1
	add r6, r1, #0
	cmp r0, #0
	beq _0803F450
	ldrb r0, [r5, #12]
	mov r2, #207
	and r2, r2, r0
	mov r3, #0
	strb r2, [r5, #12]
	ldr r0, _0803F43C  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803F440
	mov r1, #16
	add r0, r2, #0
	orr r0, r0, r1
	b _0803F47C
	.byte 0x00
	.byte 0x00
_0803F42C:
	.4byte 0x03001B64
_0803F430:
	.4byte 0x03001B50
_0803F434:
	.4byte gUnknown_030019A0
_0803F438:
	.4byte gUnknown_03001A1C
_0803F43C:
	.4byte gUnknown_03001990
_0803F440:
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803F47E
	mov r1, #32
	add r0, r2, #0
	orr r0, r0, r1
	b _0803F47C
_0803F450:
	ldr r1, [r7, #32]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0803F464
	ldrb r1, [r5, #12]
	mov r0, #16
	orr r0, r0, r1
	b _0803F47C
_0803F464:
	mov r0, #128
	lsl r0, r0, #12
	and r1, r1, r0
	cmp r1, #0
	beq _0803F476
	ldrb r1, [r5, #12]
	mov r0, #32
	orr r0, r0, r1
	b _0803F47C
_0803F476:
	ldrb r1, [r5, #12]
	mov r0, #207
	and r0, r0, r1
_0803F47C:
	strb r0, [r5, #12]
_0803F47E:
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r6
	cmp r0, #0
	bne _0803F496
	ldr r1, [r7, #32]
	mov r0, #128
	lsl r0, r0, #14
	and r1, r1, r0
	cmp r1, #0
	bne _0803F496
	strb r1, [r5, #2]
_0803F496:
	add r0, r5, #0
	mov r1, r9
	add r2, r7, #0
	bl sub_0803DD20
_0803F4A0:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END update_mario_action_0803ED98

	THUMB_FUNC_START sub_0803F4B0
sub_0803F4B0: @ 0x0803F4B0
	push {r4,lr}
	mov r12, r1
	ldr r1, [r0, #32]
	mov r2, r12
	str r1, [r2, #32]
	ldr r1, [r0, #36]
	str r1, [r2, #36]
	ldrb r1, [r0, #2]
	strb r1, [r2, #2]
	add r0, r0, #127
	ldrb r1, [r0]
	lsl r1, r1, #27
	lsr r1, r1, #31
	mov r4, r12
	add r4, r4, #127
	lsl r3, r1, #4
	ldrb r2, [r4]
	mov r0, #17
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r4]
	cmp r1, #0
	beq _0803F500
	mov r0, r12
	ldr r1, [r0, #32]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldrb r2, [r0, #2]
	add r4, r4, #9
	ldr r3, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _0803F520
_0803F500:
	mov r0, r12
	ldr r1, [r0, #32]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldrb r2, [r0, #2]
	mov r4, r12
	add r4, r4, #136
	ldr r3, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r1, r0
_0803F520:
	mov r3, r12
	add r3, r3, #126
	ldr r2, _0803F558  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3]
	ldr r0, _0803F55C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3]
	mov r0, r12
	ldr r1, [r0, #36]
	ldrb r2, [r0, #2]
	ldr r3, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	asr r1, r1, #8
	ldrb r0, [r0, #3]
	add r1, r1, r0
	mov r0, r12
	add r0, r0, #124
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803F558:
	.4byte 0x000001FF
_0803F55C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0803F4B0

	THUMB_FUNC_START sub_0803F560
sub_0803F560: @ 0x0803F560
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r4, r0, #0
	ldr r3, _0803F5A0  @ =gUnknown_03001940
	ldr r2, [r4, #72]
	mov r0, #176
	add r1, r2, #0
	mul r1, r0, r1
	ldr r0, [r3]
	add r0, r0, r1
	mov r12, r0
	cmp r2, #0
	bgt _0803F57E
	b _0803F99C
_0803F57E:
	ldr r0, [r0, #32]
	mov r1, r12
	str r0, [r1, #40]
	ldr r0, [r1, #36]
	str r0, [r1, #44]
	ldr r0, [r1, #92]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0803F5A4
	add r0, r4, #0
	mov r1, r12
	bl sub_0803F4B0
	b _0803F99C
	.byte 0x00
	.byte 0x00
_0803F5A0:
	.4byte gUnknown_03001940
_0803F5A4:
	ldr r0, _0803F61C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #64
	and r0, r0, r1
	cmp r0, #0
	bne _0803F668
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r0, r12
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	sub r1, r1, r0
	lsl r1, r1, #7
	ldr r0, [r4, #32]
	add r0, r0, r1
	mov r2, r12
	str r0, [r2, #32]
	ldr r0, [r4, #36]
	str r0, [r2, #36]
	ldrb r0, [r4, #2]
	strb r0, [r2, #2]
	add r3, r4, #0
	add r3, r3, #127
	ldrb r0, [r3]
	mov r4, r12
	add r4, r4, #127
	mov r1, #16
	and r1, r1, r0
	ldrb r2, [r4]
	mov r0, #17
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4]
	ldrb r0, [r3]
	lsl r0, r0, #27
	cmp r0, #0
	bge _0803F620
	mov r3, r12
	ldrh r0, [r3]
	cmp r0, #5
	beq _0803F620
	ldr r1, [r3, #32]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldrb r2, [r3, #2]
	add r4, r4, #9
	ldr r3, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _0803F640
_0803F61C:
	.4byte gUnknown_03001A1C
_0803F620:
	mov r3, r12
	ldr r1, [r3, #32]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldrb r2, [r3, #2]
	mov r4, r12
	add r4, r4, #136
	ldr r3, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r1, r0
_0803F640:
	mov r3, r12
	add r3, r3, #126
	ldr r2, _0803F660  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3]
	ldr r0, _0803F664  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3]
	add r7, r4, #0
	mov r3, r12
	ldr r1, [r3, #36]
	ldrb r2, [r3, #2]
	b _0803F986
	.byte 0x00
	.byte 0x00
_0803F660:
	.4byte 0x000001FF
_0803F664:
	.4byte 0xFFFFFE00
_0803F668:
	mov r1, r12
	add r1, r1, #60
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r3, r0, #24
	mov r7, r12
	add r7, r7, #136
	add r5, r1, #0
	cmp r3, #0
	bne _0803F6CA
	mov r1, r12
	ldr r0, [r1, #92]
	mov r1, #128
	lsl r1, r1, #23
	and r0, r0, r1
	cmp r0, #0
	bne _0803F696
	mov r2, r12
	ldrb r0, [r2, #2]
	add r0, r0, #1
	strb r0, [r2, #2]
_0803F696:
	mov r0, r12
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #2]
	cmp r0, r2
	bcc _0803F6B8
	ldr r0, [r7]
	ldr r0, [r0, #8]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0803F6B2
	mov r1, r12
	strb r3, [r1, #2]
	b _0803F6B8
_0803F6B2:
	sub r0, r2, #1
	mov r2, r12
	strb r0, [r2, #2]
_0803F6B8:
	mov r3, r12
	ldrb r1, [r3, #2]
	ldr r2, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r5]
_0803F6CA:
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	mov r2, r12
	add r2, r2, #132
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	sub r1, r1, r0
	lsl r1, r1, #7
	ldr r0, [r4, #32]
	add r3, r0, r1
	mov r0, r12
	str r3, [r0, #32]
	add r1, r4, #0
	add r1, r1, #127
	ldrb r0, [r1]
	lsl r0, r0, #27
	add r5, r2, #0
	mov r8, r1
	cmp r0, #0
	bge _0803F712
	lsl r1, r3, #8
	lsr r1, r1, #16
	mov r3, r12
	ldrb r2, [r3, #2]
	ldr r3, [r7]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _0803F72C
_0803F712:
	lsl r1, r3, #8
	lsr r1, r1, #16
	mov r0, r12
	ldrb r2, [r0, #2]
	ldr r3, [r7]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r1, r0
_0803F72C:
	mov r2, r12
	add r2, r2, #126
	ldr r3, _0803F78C  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2]
	ldr r0, _0803F790  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2]
	add r6, r2, #0
	mov r1, r12
	ldrh r0, [r1]
	add r1, r0, #0
	add r2, r0, #0
	cmp r1, #5
	beq _0803F750
	b _0803F848
_0803F750:
	mov r2, r12
	mov r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #32
	bne _0803F7C0
	ldr r0, [r4, #36]
	str r0, [r2, #36]
	mov r1, r8
	ldrb r0, [r1]
	lsl r0, r0, #27
	cmp r0, #0
	bge _0803F794
	ldr r1, [r2, #32]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldrb r2, [r2, #2]
	ldr r3, [r7]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	add r1, r1, #16
	ldr r2, _0803F78C  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	b _0803F822
_0803F78C:
	.4byte 0x000001FF
_0803F790:
	.4byte 0xFFFFFE00
_0803F794:
	mov r3, r12
	ldr r1, [r3, #32]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldrb r2, [r3, #2]
	ldr r3, [r7]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r1, r0
	add r1, r1, #16
	ldr r2, _0803F7BC  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	b _0803F822
	.byte 0x00
	.byte 0x00
_0803F7BC:
	.4byte 0x000001FF
_0803F7C0:
	cmp r0, #21
	beq _0803F7C8
	cmp r0, #24
	bne _0803F834
_0803F7C8:
	ldr r0, [r4, #32]
	ldr r3, _0803F800  @ =0xFFFFF000
	add r1, r0, r3
	mov r0, r12
	str r1, [r0, #32]
	ldr r0, [r4, #36]
	ldr r2, _0803F804  @ =0xFFFFE000
	add r0, r0, r2
	mov r3, r12
	str r0, [r3, #36]
	mov r2, r8
	ldrb r0, [r2]
	lsl r0, r0, #27
	cmp r0, #0
	bge _0803F808
	asr r1, r1, #8
	ldrb r2, [r3, #2]
	ldr r3, [r7]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _0803F81E
	.byte 0x00
	.byte 0x00
_0803F800:
	.4byte 0xFFFFF000
_0803F804:
	.4byte 0xFFFFE000
_0803F808:
	asr r3, r1, #8
	mov r0, r12
	ldrb r1, [r0, #2]
	ldr r2, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	mov r1, #2
	ldrsb r1, [r0, r1]
	add r1, r1, r3
_0803F81E:
	lsl r1, r1, #23
	lsr r1, r1, #23
_0803F822:
	ldrh r2, [r6]
	ldr r0, _0803F830  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r6]
	b _0803F980
	.byte 0x00
	.byte 0x00
_0803F830:
	.4byte 0xFFFFFE00
_0803F834:
	ldr r0, [r5]
	ldrb r1, [r0, #2]
	lsl r1, r1, #7
	ldr r0, [r4, #36]
	sub r0, r0, r1
	ldr r1, _0803F844  @ =0xFFFFFA00
	b _0803F938
	.byte 0x00
	.byte 0x00
_0803F844:
	.4byte 0xFFFFFA00
_0803F848:
	cmp r1, #150
	beq _0803F85C
	cmp r1, #176
	beq _0803F85C
	add r0, r2, #0
	sub r0, r0, #14
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #2
	bhi _0803F870
_0803F85C:
	ldr r0, [r5]
	ldrb r1, [r0, #2]
	lsl r1, r1, #7
	ldr r0, [r4, #36]
	sub r0, r0, r1
	ldr r3, _0803F86C  @ =0xFFFFFA00
	b _0803F8B6
	.byte 0x00
	.byte 0x00
_0803F86C:
	.4byte 0xFFFFFA00
_0803F870:
	cmp r1, #7
	beq _0803F878
	cmp r1, #9
	bne _0803F888
_0803F878:
	ldr r0, [r5]
	ldrb r1, [r0, #2]
	lsl r1, r1, #7
	ldr r0, [r4, #36]
	sub r0, r0, r1
	mov r2, #128
	lsl r2, r2, #3
	b _0803F97A
_0803F888:
	cmp r1, #100
	beq _0803F890
	cmp r1, #186
	bne _0803F8A0
_0803F890:
	ldr r0, [r5]
	ldrb r1, [r0, #2]
	lsl r1, r1, #7
	ldr r0, [r4, #36]
	sub r0, r0, r1
	mov r1, #192
	lsl r1, r1, #2
	b _0803F938
_0803F8A0:
	cmp r1, #188
	beq _0803F8A8
	cmp r1, #192
	bne _0803F8BE
_0803F8A8:
	ldr r0, [r5]
	ldrb r1, [r0, #2]
	lsl r1, r1, #7
	ldr r0, [r4, #36]
	sub r0, r0, r1
	mov r3, #192
	lsl r3, r3, #2
_0803F8B6:
	add r0, r0, r3
	mov r1, r12
	str r0, [r1, #36]
	b _0803F980
_0803F8BE:
	add r0, r2, #0
	sub r0, r0, #125
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #2
	bhi _0803F8DA
	ldr r0, [r5]
	ldrb r1, [r0, #2]
	lsl r1, r1, #7
	ldr r0, [r4, #36]
	sub r0, r0, r1
	mov r2, #192
	lsl r2, r2, #2
	b _0803F97A
_0803F8DA:
	cmp r1, #111
	bne _0803F8EE
	ldr r0, [r5]
	ldrb r1, [r0, #2]
	lsl r1, r1, #7
	ldr r0, [r4, #36]
	sub r0, r0, r1
	mov r1, #192
	lsl r1, r1, #3
	b _0803F938
_0803F8EE:
	lsl r0, r2, #16
	lsr r0, r0, #16
	cmp r0, #18
	beq _0803F902
	cmp r0, #29
	beq _0803F902
	cmp r0, #30
	beq _0803F902
	cmp r0, #31
	bne _0803F924
_0803F902:
	ldr r0, [r5]
	ldrb r1, [r0, #2]
	lsl r1, r1, #7
	ldr r0, [r4, #36]
	sub r0, r0, r1
	mov r3, #128
	lsl r3, r3, #2
	add r0, r0, r3
	mov r1, r12
	str r0, [r1, #36]
	mov r2, r12
	add r2, r2, #127
	ldrb r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	strb r0, [r2]
	b _0803F980
_0803F924:
	cmp r0, #200
	beq _0803F96C
	cmp r0, #8
	bne _0803F944
	ldr r0, [r5]
	ldrb r1, [r0, #2]
	lsl r1, r1, #7
	ldr r0, [r4, #36]
	sub r0, r0, r1
	ldr r1, _0803F940  @ =0xFFFFFB00
_0803F938:
	add r0, r0, r1
	mov r2, r12
	str r0, [r2, #36]
	b _0803F980
_0803F940:
	.4byte 0xFFFFFB00
_0803F944:
	cmp r0, #193
	bne _0803F96C
	ldr r0, [r5]
	ldrb r1, [r0, #2]
	lsl r1, r1, #7
	ldr r0, [r4, #36]
	sub r0, r0, r1
	mov r3, #192
	lsl r3, r3, #3
	add r0, r0, r3
	mov r1, r12
	str r0, [r1, #36]
	mov r2, r12
	add r2, r2, #127
	ldrb r1, [r2]
	mov r0, #33
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	b _0803F980
_0803F96C:
	ldr r0, [r5]
	ldrb r1, [r0, #2]
	lsl r1, r1, #7
	ldr r0, [r4, #36]
	sub r0, r0, r1
	mov r2, #192
	lsl r2, r2, #3
_0803F97A:
	add r0, r0, r2
	mov r3, r12
	str r0, [r3, #36]
_0803F980:
	mov r0, r12
	ldr r1, [r0, #36]
	ldrb r2, [r0, #2]
_0803F986:
	ldr r3, [r7]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	asr r1, r1, #8
	ldrb r0, [r0, #3]
	add r1, r1, r0
	mov r0, r12
	add r0, r0, #124
	strb r1, [r0]
_0803F99C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803F560

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803F9A8
sub_0803F9A8: @ 0x0803F9A8
	push {r4-r7,lr}
	sub sp, sp, #16
	add r4, r0, #0
	add r7, r1, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r3, [r0, #32]
	cmp r3, #0
	bne _0803F9BC
	ldr r3, [r4, #100]
_0803F9BC:
	mov r1, #4
	ldrsh r0, [r3, r1]
	ldr r1, [r4, #32]
	add r6, r1, r0
	str r6, [sp]
	mov r5, #6
	ldrsh r0, [r3, r5]
	add r5, r1, r0
	str r5, [sp, #8]
	mov r1, #0
	ldrsh r0, [r3, r1]
	ldr r1, [r4, #36]
	add r0, r1, r0
	str r0, [sp, #4]
	mov r4, #2
	ldrsh r0, [r3, r4]
	add r1, r1, r0
	str r1, [sp, #12]
	cmp r7, #0
	bge _0803F9F8
	mov r5, #224
	lsl r5, r5, #3
	add r0, r6, r5
	ldr r1, _0803F9F4  @ =0xFFFFF800
	and r0, r0, r1
	str r0, [sp]
	b _0803FA16
	.byte 0x00
	.byte 0x00
_0803F9F4:
	.4byte 0xFFFFF800
_0803F9F8:
	cmp r7, #0
	ble _0803FA16
	mov r0, #224
	lsl r0, r0, #3
	add r1, r5, r0
	ldr r0, _0803FA20  @ =0xFFFFF800
	and r1, r1, r0
	str r1, [sp, #8]
	ldr r0, _0803FA24  @ =gCurrentLevelWidth
	mov r3, #0
	ldrsh r0, [r0, r3]
	lsl r0, r0, #8
	cmp r1, r0
	blt _0803FA16
	str r0, [sp, #8]
_0803FA16:
	cmp r2, #0
	bge _0803FA2C
	ldr r2, _0803FA28  @ =0xFFFFFF00
	b _0803FA34
	.byte 0x00
	.byte 0x00
_0803FA20:
	.4byte 0xFFFFF800
_0803FA24:
	.4byte gCurrentLevelWidth
_0803FA28:
	.4byte 0xFFFFFF00
_0803FA2C:
	cmp r2, #0
	ble _0803FA34
	mov r2, #128
	lsl r2, r2, #1
_0803FA34:
	mov r0, sp
	add r1, r7, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	beq _0803FA46
	mov r0, #0
	b _0803FA48
_0803FA46:
	mov r0, #1
_0803FA48:
	add sp, sp, #16
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803F9A8

	THUMB_FUNC_START sub_0803FA50
sub_0803FA50: @ 0x0803FA50
	push {r4-r6,lr}
	ldr r6, _0803FA9C  @ =gUnknown_030019AC
	ldr r3, [r6]
	ldr r2, [r0, #36]
	ldr r0, [r3, #36]
	sub r2, r2, r0
	lsl r5, r1, #16
	asr r4, r5, #16
	lsl r2, r2, #16
	asr r2, r2, #16
	add r0, r3, #0
	add r1, r4, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	asr r1, r0, #24
	cmp r1, #0
	beq _0803FAA8
	ldr r2, [r6]
	ldr r0, [r2, #32]
	add r0, r0, r4
	str r0, [r2, #32]
	add r2, r2, #126
	ldrh r3, [r2]
	lsl r1, r3, #23
	lsr r1, r1, #23
	asr r0, r5, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r1, r0
	ldr r4, _0803FAA0  @ =0x000001FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _0803FAA4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2]
	b _0803FAF0
_0803FA9C:
	.4byte gUnknown_030019AC
_0803FAA0:
	.4byte 0x000001FF
_0803FAA4:
	.4byte 0xFFFFFE00
_0803FAA8:
	ldr r0, _0803FACC  @ =0x03001B68
	strb r1, [r0]
	ldr r0, _0803FAD0  @ =0x03001B74
	strb r1, [r0]
	ldr r0, _0803FAD4  @ =0x03001B5C
	strb r1, [r0]
	ldr r0, _0803FAD8  @ =0x03001B64
	strb r1, [r0]
	ldr r0, _0803FADC  @ =0x03001B50
	strb r1, [r0]
	cmp r4, #0
	ble _0803FAE4
	ldr r0, _0803FAE0  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	b _0803FAEC
	.byte 0x00
	.byte 0x00
_0803FACC:
	.4byte 0x03001B68
_0803FAD0:
	.4byte 0x03001B74
_0803FAD4:
	.4byte 0x03001B5C
_0803FAD8:
	.4byte 0x03001B64
_0803FADC:
	.4byte 0x03001B50
_0803FAE0:
	.4byte gUnknown_030019A0
_0803FAE4:
	ldr r0, _0803FAF8  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #3
_0803FAEC:
	orr r1, r1, r2
	str r1, [r0]
_0803FAF0:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803FAF8:
	.4byte gUnknown_030019A0
	THUMB_FUNC_END sub_0803FA50

	THUMB_FUNC_START sub_0803FAFC
sub_0803FAFC: @ 0x0803FAFC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r5, r0, #0
	ldr r0, _0803FB60  @ =0x03001A40
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803FB12
	b _0803FD10
_0803FB12:
	add r6, r5, #0
	add r6, r6, #61
	ldr r1, _0803FB64  @ =0x030019F0
	mov r9, r1
	ldrb r0, [r6]
	ldrb r2, [r1]
	cmp r0, r2
	beq _0803FB24
	b _0803FD10
_0803FB24:
	ldr r7, _0803FB68  @ =gUnknown_030019AC
	ldr r3, [r7]
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r1, r1, r0
	mov r12, r7
	cmp r1, #0
	beq _0803FB6C
	mov r0, #48
	ldrsh r1, [r5, r0]
	mov r0, #50
	ldrsh r2, [r5, r0]
	add r0, r3, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0803FB54
	b _0803FC5A
_0803FB54:
	mov r1, r8
	strb r0, [r1]
	mov r3, #255
	mov r2, r9
	strb r3, [r2]
	b _0803FCF8
_0803FB60:
	.4byte 0x03001A40
_0803FB64:
	.4byte 0x030019F0
_0803FB68:
	.4byte gUnknown_030019AC
_0803FB6C:
	mov r4, #128
	lsl r4, r4, #16
	and r4, r4, r0
	cmp r4, #0
	beq _0803FBC4
	ldrh r0, [r3, #4]
	sub r0, r0, #25
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #10
	bls _0803FBA4
	mov r7, r8
	strb r1, [r7]
	mov r4, #255
	mov r0, r9
	strb r4, [r0]
	ldrb r1, [r6]
	add r2, r3, #0
	add r2, r2, #67
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	beq _0803FB9C
	b _0803FDF0
_0803FB9C:
	ldrb r0, [r2]
	orr r0, r0, r4
	strb r0, [r2]
	b _0803FDF0
_0803FBA4:
	mov r2, #48
	ldrsh r1, [r5, r2]
	mov r0, #50
	ldrsh r2, [r5, r0]
	add r0, r3, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0803FC5A
	mov r7, r8
	strb r0, [r7]
	mov r0, #255
	mov r1, r9
	b _0803FDEE
_0803FBC4:
	mov r0, #11
	ldrsb r0, [r3, r0]
	ldrb r2, [r6]
	cmp r0, r2
	beq _0803FC94
	add r1, r3, #0
	add r1, r1, #67
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r2
	beq _0803FC44
	mov r3, r8
	strb r4, [r3]
	mov r3, #255
	mov r0, r9
	strb r3, [r0]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bne _0803FBF2
	ldrb r0, [r1]
	orr r0, r0, r3
	strb r0, [r1]
_0803FBF2:
	ldr r2, [r7]
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _0803FC08
	b _0803FDF0
_0803FC08:
	mov r1, #48
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #48]
	cmp r0, #0
	ble _0803FC20
	mov r3, #48
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0803FC20
	mov r1, #128
	lsl r1, r1, #3
	b _0803FC38
_0803FC20:
	lsl r0, r1, #16
	cmp r0, #0
	blt _0803FC28
	b _0803FDF0
_0803FC28:
	mov r7, r12
	ldr r2, [r7]
	mov r1, #48
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _0803FC36
	b _0803FDF0
_0803FC36:
	ldr r1, _0803FC40  @ =0xFFFFFC00
_0803FC38:
	add r0, r2, #0
	bl sub_0804A264
	b _0803FDF0
_0803FC40:
	.4byte 0xFFFFFC00
_0803FC44:
	mov r2, #48
	ldrsh r1, [r5, r2]
	mov r0, #50
	ldrsh r2, [r5, r0]
	add r0, r3, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0803FC8A
_0803FC5A:
	ldr r2, [r7]
	ldrh r0, [r5, #48]
	ldrh r1, [r2, #54]
	add r0, r0, r1
	strh r0, [r2, #54]
	mov r3, #50
	ldrsh r0, [r5, r3]
	ldr r1, [r2, #36]
	add r1, r1, r0
	str r1, [r2, #36]
	ldrb r3, [r2, #2]
	add r0, r2, #0
	add r0, r0, #136
	ldr r4, [r0]
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #2
	add r0, r0, r4
	asr r1, r1, #8
	ldrb r0, [r0, #3]
	add r1, r1, r0
	add r2, r2, #124
	strb r1, [r2]
	b _0803FDF0
_0803FC8A:
	mov r7, r8
	strb r0, [r7]
	mov r0, #255
	mov r1, r9
	b _0803FDEE
_0803FC94:
	mov r2, #48
	ldrsh r1, [r5, r2]
	mov r0, #50
	ldrsh r2, [r5, r0]
	add r0, r3, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0803FCEE
	ldr r4, [r7]
	ldrh r0, [r5, #48]
	ldrh r1, [r4, #54]
	add r0, r0, r1
	strh r0, [r4, #54]
	add r0, r4, #0
	add r0, r0, #67
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r6, [r6]
	cmp r0, r6
	bne _0803FCC6
	b _0803FDF0
_0803FCC6:
	mov r2, #50
	ldrsh r0, [r5, r2]
	ldr r1, [r4, #36]
	add r1, r1, r0
	str r1, [r4, #36]
	ldrb r2, [r4, #2]
	add r0, r4, #0
	add r0, r0, #136
	ldr r3, [r0]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	asr r1, r1, #8
	ldrb r0, [r0, #3]
	add r1, r1, r0
	add r0, r4, #0
	add r0, r0, #124
	strb r1, [r0]
	b _0803FDF0
_0803FCEE:
	mov r3, r8
	strb r0, [r3]
	mov r3, #255
	mov r0, r9
	strb r3, [r0]
_0803FCF8:
	ldrb r0, [r6]
	ldr r1, [r7]
	add r2, r1, #0
	add r2, r2, #67
	mov r1, #0
	ldrsb r1, [r2, r1]
	cmp r0, r1
	bne _0803FDF0
	ldrb r0, [r2]
	orr r0, r0, r3
	strb r0, [r2]
	b _0803FDF0
_0803FD10:
	ldr r4, _0803FDA4  @ =gUnknown_030019AC
	ldr r3, [r4]
	mov r1, #50
	ldrsh r0, [r3, r1]
	cmp r0, #0
	blt _0803FDF0
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0803FDF0
	mov r1, #11
	ldrsb r1, [r3, r1]
	add r0, r5, #0
	add r0, r0, #61
	add r6, r0, #0
	ldrb r2, [r6]
	cmp r1, r2
	bne _0803FDF0
	ldr r0, [r3, #104]
	mov r7, #2
	ldrsh r0, [r0, r7]
	ldr r1, [r3, #36]
	add r1, r1, r0
	ldr r0, [r5, #104]
	mov r7, #2
	ldrsh r2, [r0, r7]
	ldr r0, [r5, #36]
	add r0, r0, r2
	cmp r1, r0
	bge _0803FDF0
	mov r0, #48
	ldrsh r1, [r5, r0]
	add r0, r3, #0
	mov r2, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0803FD7C
	ldr r1, [r4]
	ldrh r0, [r5, #48]
	ldrh r2, [r1, #54]
	add r0, r0, r2
	strh r0, [r1, #54]
	ldr r1, _0803FDA8  @ =0x03001A40
	mov r0, #1
	strb r0, [r1]
	ldr r1, _0803FDAC  @ =0x030019F0
	ldrb r0, [r6]
	strb r0, [r1]
_0803FD7C:
	ldr r0, [r4]
	mov r3, #50
	ldrsh r2, [r5, r3]
	mov r1, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0803FDF0
	ldrh r0, [r5]
	cmp r0, #151
	bne _0803FDB8
	ldr r0, [r4]
	ldr r1, [r5, #36]
	ldr r2, _0803FDB0  @ =0x8FFFFF00
	and r1, r1, r2
	ldr r7, _0803FDB4  @ =0xFFFFE300
	add r1, r1, r7
	str r1, [r0, #36]
	b _0803FDC4
_0803FDA4:
	.4byte gUnknown_030019AC
_0803FDA8:
	.4byte 0x03001A40
_0803FDAC:
	.4byte 0x030019F0
_0803FDB0:
	.4byte 0x8FFFFF00
_0803FDB4:
	.4byte 0xFFFFE300
_0803FDB8:
	ldr r2, [r4]
	mov r0, #50
	ldrsh r1, [r5, r0]
	ldr r0, [r2, #36]
	add r0, r0, r1
	str r0, [r2, #36]
_0803FDC4:
	ldr r0, _0803FDFC  @ =gUnknown_030019AC
	ldr r1, [r0]
	ldr r2, [r1, #36]
	ldrb r3, [r1, #2]
	add r0, r1, #0
	add r0, r0, #136
	ldr r4, [r0]
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #2
	add r0, r0, r4
	asr r2, r2, #8
	ldrb r0, [r0, #3]
	add r2, r2, r0
	add r1, r1, #124
	strb r2, [r1]
	ldr r1, _0803FE00  @ =0x03001A40
	mov r0, #1
	strb r0, [r1]
	ldr r1, _0803FE04  @ =0x030019F0
	ldrb r0, [r6]
_0803FDEE:
	strb r0, [r1]
_0803FDF0:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0803FDFC:
	.4byte gUnknown_030019AC
_0803FE00:
	.4byte 0x03001A40
_0803FE04:
	.4byte 0x030019F0
	THUMB_FUNC_END sub_0803FAFC

	THUMB_FUNC_START sub_0803FE08
sub_0803FE08: @ 0x0803FE08
	push {r4-r7,lr}
	add r6, r0, #0
	ldr r1, _0803FE5C  @ =gUnknown_030019AC
	ldr r3, [r1]
	add r2, r3, #0
	add r2, r2, #67
	ldrb r0, [r2]
	mov r12, r0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r7, r1, #0
	cmp r0, #0
	bgt _0803FE24
	b _0803FF60
_0803FE24:
	add r0, r6, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	beq _0803FE34
	b _0803FF60
_0803FE34:
	ldr r0, [r6, #36]
	ldr r1, _0803FE60  @ =0xFFFFE100
	add r5, r0, r1
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r4, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r4, r4, r0
	cmp r4, #0
	beq _0803FE64
	mov r0, #0
	str r0, [r3, #80]
	strh r0, [r3, #50]
	str r5, [r3, #36]
	asr r1, r5, #8
	add r0, r3, #0
	b _0803FEC8
	.byte 0x00
	.byte 0x00
_0803FE5C:
	.4byte gUnknown_030019AC
_0803FE60:
	.4byte 0xFFFFE100
_0803FE64:
	ldrh r1, [r3, #4]
	add r0, r1, #0
	sub r0, r0, #25
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #10
	bhi _0803FE94
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #28
	beq _0803FE7E
	cmp r0, #32
	bne _0803FE88
_0803FE7E:
	mov r0, #255
	mov r4, r12
	orr r0, r0, r4
	strb r0, [r2]
	b _0803FF54
_0803FE88:
	str r4, [r3, #80]
	strh r4, [r3, #50]
	str r5, [r3, #36]
	asr r1, r5, #8
	add r0, r3, #0
	b _0803FEC8
_0803FE94:
	mov r1, #50
	ldrsh r0, [r6, r1]
	mov r2, #128
	lsl r2, r2, #1
	cmp r0, #0
	bge _0803FEA2
	ldr r2, _0803FED0  @ =0xFFFFFF00
_0803FEA2:
	add r0, r3, #0
	mov r1, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0803FF14
	ldr r0, _0803FED4  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _0803FED8
	ldr r0, [r7]
	str r4, [r0, #80]
	strh r4, [r0, #50]
	str r5, [r0, #36]
	asr r1, r5, #8
_0803FEC8:
	add r0, r0, #124
	strb r1, [r0]
	b _0803FFEE
	.byte 0x00
	.byte 0x00
_0803FED0:
	.4byte 0xFFFFFF00
_0803FED4:
	.4byte gUnknown_030019A0
_0803FED8:
	mov r2, #50
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0803FEEC
	ldr r1, [r7]
	ldr r0, [r1, #36]
	mov r4, #160
	lsl r4, r4, #3
	add r0, r0, r4
	b _0803FEF4
_0803FEEC:
	ldr r1, [r7]
	ldr r0, [r1, #36]
	ldr r2, _0803FF0C  @ =0xFFFFFF00
	add r0, r0, r2
_0803FEF4:
	str r0, [r1, #36]
	ldr r2, _0803FF10  @ =gUnknown_030019AC
	ldr r0, [r2]
	add r0, r0, #67
	mov r1, #255
	strb r1, [r0]
	ldr r1, [r2]
	mov r0, #1
	neg r0, r0
	strb r0, [r1, #11]
	str r0, [r6, #76]
	b _0803FFEE
_0803FF0C:
	.4byte 0xFFFFFF00
_0803FF10:
	.4byte gUnknown_030019AC
_0803FF14:
	ldr r0, [r7]
	ldr r3, [r0, #104]
	mov r2, #4
	ldrsh r1, [r3, r2]
	ldr r2, [r0, #32]
	add r1, r1, r2
	mov r12, r1
	mov r1, #6
	ldrsh r3, [r3, r1]
	add r2, r2, r3
	str r4, [r0, #80]
	strh r4, [r0, #50]
	str r5, [r0, #36]
	asr r1, r5, #8
	add r0, r0, #124
	strb r1, [r0]
	ldr r0, _0803FF5C  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _0803FFEE
	ldr r0, [r6, #108]
	cmp r0, r2
	bgt _0803FF4C
	ldr r0, [r6, #116]
	cmp r0, r12
	bge _0803FFEE
_0803FF4C:
	ldr r0, [r7]
	add r0, r0, #67
	mov r1, #255
	strb r1, [r0]
_0803FF54:
	mov r0, #1
	neg r0, r0
	str r0, [r6, #76]
	b _0803FFEE
_0803FF5C:
	.4byte gUnknown_03001990
_0803FF60:
	ldr r0, _0803FF98  @ =gUnknown_030019A0
	ldr r2, [r0]
	mov r0, #192
	lsl r0, r0, #18
	and r2, r2, r0
	cmp r2, #0
	bne _0803FFEE
	ldr r0, [r6, #92]
	mov r1, #1
	and r0, r0, r1
	add r4, r6, #0
	add r4, r4, #61
	cmp r0, #0
	beq _0803FF9C
	ldr r1, [r7]
	ldr r3, [r1, #76]
	ldrb r0, [r4]
	cmp r3, r0
	bne _0803FF9C
	mov r4, #50
	ldrsh r0, [r1, r4]
	cmp r0, #0
	blt _0803FFEE
	add r0, r1, #0
	add r0, r0, #67
	strb r3, [r0]
	ldr r1, [r7]
	b _0803FFDE
_0803FF98:
	.4byte gUnknown_030019A0
_0803FF9C:
	ldr r2, [r7]
	mov r3, #11
	ldrsb r3, [r2, r3]
	ldrb r4, [r4]
	cmp r3, r4
	bne _0803FFEE
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0803FFEE
	ldr r4, _0803FFF4  @ =0xFFFFFE60
	add r0, r4, #0
	ldrh r1, [r2, #4]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #45
	bls _0803FFEE
	mov r4, #50
	ldrsh r0, [r2, r4]
	cmp r0, #0
	blt _0803FFEE
	add r0, r2, #0
	add r0, r0, #67
	mov r2, #0
	strb r3, [r0]
	ldr r1, [r7]
	str r2, [r1, #80]
_0803FFDE:
	strh r2, [r1, #50]
	ldr r0, [r6, #36]
	ldr r2, _0803FFF8  @ =0xFFFFE100
	add r0, r0, r2
	str r0, [r1, #36]
	asr r0, r0, #8
	add r1, r1, #124
	strb r0, [r1]
_0803FFEE:
	pop {r4-r7}
	pop {r0}
	bx r0
_0803FFF4:
	.4byte 0xFFFFFE60
_0803FFF8:
	.4byte 0xFFFFE100
	THUMB_FUNC_END sub_0803FE08

	THUMB_FUNC_START sub_0803FFFC
sub_0803FFFC: @ 0x0803FFFC
	push {r4-r6,lr}
	add r5, r0, #0
	ldr r0, [r5, #76]
	cmp r0, #0
	beq _08040008
	b _08040136
_08040008:
	ldr r1, _08040074  @ =gUnknown_030019AC
	ldr r4, [r1]
	ldr r3, [r5, #36]
	ldr r2, _08040078  @ =0xFFFFE300
	add r0, r3, r2
	ldr r2, [r4, #36]
	add r6, r1, #0
	cmp r2, r0
	bgt _0804001C
	b _08040136
_0804001C:
	ldr r1, _0804007C  @ =0xFFFFF000
	add r0, r3, r1
	cmp r2, r0
	ble _08040026
	b _08040136
_08040026:
	add r0, r5, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r2, r0, #0
	cmp r1, #0
	bne _080400B0
	ldr r1, [r4, #32]
	ldr r0, [r5, #32]
	cmp r1, r0
	bge _080400B0
	ldr r0, [r4, #92]
	mov r1, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08040088
	ldr r2, _08040080  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #15
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	ldr r1, _08040084  @ =0xFFFFFF00
	add r0, r4, #0
	mov r2, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	cmp r0, #0
	bne _08040136
	ldr r1, [r6]
	ldr r0, [r1, #32]
	mov r2, #128
	lsl r2, r2, #1
	b _080400F8
	.byte 0x00
	.byte 0x00
_08040074:
	.4byte gUnknown_030019AC
_08040078:
	.4byte 0xFFFFE300
_0804007C:
	.4byte 0xFFFFF000
_08040080:
	.4byte gUnknown_030019A0
_08040084:
	.4byte 0xFFFFFF00
_08040088:
	ldr r1, _080400A8  @ =0xFFFFFF00
	add r0, r4, #0
	mov r2, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	cmp r0, #0
	bne _08040136
	ldr r2, _080400AC  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #15
	orr r0, r0, r1
	str r0, [r2]
	b _08040130
	.byte 0x00
	.byte 0x00
_080400A8:
	.4byte 0xFFFFFF00
_080400AC:
	.4byte gUnknown_030019A0
_080400B0:
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #1
	bne _08040136
	add r4, r6, #0
	ldr r3, [r4]
	ldr r1, [r3, #32]
	ldr r0, [r5, #32]
	cmp r1, r0
	ble _08040136
	ldr r0, [r3, #92]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08040108
	ldr r2, _08040100  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #16
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r3, #0
	mov r2, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	cmp r0, #0
	bne _08040136
	ldr r1, [r4]
	ldr r0, [r1, #32]
	ldr r2, _08040104  @ =0xFFFFFF00
_080400F8:
	add r0, r0, r2
	str r0, [r1, #32]
	b _08040136
	.byte 0x00
	.byte 0x00
_08040100:
	.4byte gUnknown_030019A0
_08040104:
	.4byte 0xFFFFFF00
_08040108:
	mov r1, #128
	lsl r1, r1, #1
	add r0, r3, #0
	mov r2, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	cmp r0, #0
	bne _08040136
	ldr r2, _0804013C  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #16
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, [r6]
	ldr r0, [r1, #32]
	ldr r2, _08040140  @ =0xFFFFFF00
	add r0, r0, r2
	str r0, [r1, #32]
_08040130:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
_08040136:
	pop {r4-r6}
	pop {r0}
	bx r0
_0804013C:
	.4byte gUnknown_030019A0
_08040140:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0803FFFC

	THUMB_FUNC_START sub_08040144
sub_08040144: @ 0x08040144
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #28
	add r5, r0, #0
	ldr r1, _080401CC  @ =gUnknown_030019AC
	ldr r2, [r1]
	add r3, r2, #0
	add r3, r3, #67
	ldrb r4, [r3]
	mov r0, #0
	ldrsb r0, [r3, r0]
	add r7, r1, #0
	cmp r0, #0
	bgt _08040166
	b _08040410
_08040166:
	add r0, r5, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	beq _08040176
	b _08040410
_08040176:
	ldr r0, [r5, #36]
	ldr r1, _080401D0  @ =0xFFFFE100
	add r6, r0, r1
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08040196
	mov r0, #255
	strb r0, [r3]
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
_08040196:
	ldr r3, [r7]
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r4, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r4, r4, r0
	cmp r4, #0
	beq _080401E2
	ldr r2, [r3, #100]
	mov r7, #4
	ldrsh r1, [r2, r7]
	ldr r0, [r3, #32]
	add r4, r0, r1
	mov r7, #6
	ldrsh r1, [r2, r7]
	add r0, r0, r1
	ldr r1, [r5, #108]
	cmp r1, r0
	bgt _080401C6
	ldr r0, [r5, #116]
	cmp r0, r4
	bge _080401D4
_080401C6:
	add r0, r3, #0
	b _080403FA
	.byte 0x00
	.byte 0x00
_080401CC:
	.4byte gUnknown_030019AC
_080401D0:
	.4byte 0xFFFFE100
_080401D4:
	mov r0, #0
	str r0, [r3, #80]
	strh r0, [r3, #50]
	str r6, [r3, #36]
	asr r1, r6, #8
	add r0, r3, #0
	b _08040242
_080401E2:
	ldrh r1, [r3, #4]
	add r0, r1, #0
	sub r0, r0, #25
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #10
	bhi _0804020C
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #28
	beq _080401FC
	cmp r0, #32
	bne _08040200
_080401FC:
	add r0, r3, #0
	b _080403FA
_08040200:
	str r4, [r3, #80]
	strh r4, [r3, #50]
	str r6, [r3, #36]
	asr r1, r6, #8
	add r0, r3, #0
	b _08040242
_0804020C:
	mov r1, #50
	ldrsh r0, [r5, r1]
	mov r2, #128
	lsl r2, r2, #1
	cmp r0, #0
	bge _0804021A
	ldr r2, _08040248  @ =0xFFFFFF00
_0804021A:
	add r0, r3, #0
	mov r1, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	cmp r0, #0
	bne _08040294
	ldr r3, _0804024C  @ =gUnknown_030019A0
	ldr r1, [r3]
	mov r2, #128
	lsl r2, r2, #18
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08040250
	ldr r0, [r7]
	str r4, [r0, #80]
	strh r4, [r0, #50]
	str r6, [r0, #36]
	asr r1, r6, #8
_08040242:
	add r0, r0, #124
	strb r1, [r0]
	b _080404BE
_08040248:
	.4byte 0xFFFFFF00
_0804024C:
	.4byte gUnknown_030019A0
_08040250:
	mov r6, #50
	ldrsh r0, [r5, r6]
	cmp r0, #0
	bge _08040272
	orr r1, r1, r2
	str r1, [r3]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08040400
_08040272:
	ldr r1, [r7]
	ldr r0, [r1, #36]
	ldr r2, _08040290  @ =0xFFFFFF00
	add r0, r0, r2
	str r0, [r1, #36]
	add r1, r1, #67
	mov r0, #255
	strb r0, [r1]
	ldr r1, [r7]
	mov r0, #1
	neg r0, r0
	strb r0, [r1, #11]
	str r0, [r5, #76]
	b _080404BE
	.byte 0x00
	.byte 0x00
_08040290:
	.4byte 0xFFFFFF00
_08040294:
	ldr r2, [r7]
	ldr r3, [r2, #100]
	mov r1, #4
	ldrsh r0, [r3, r1]
	ldr r1, [r2, #32]
	add r0, r0, r1
	mov r9, r0
	mov r0, #6
	ldrsh r3, [r3, r0]
	add r1, r1, r3
	mov r8, r1
	ldr r0, [r2, #108]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r0, r1
	str r0, [sp, #12]
	ldr r0, [r2, #116]
	ldr r3, _080402F4  @ =0xFFFFFF00
	add r0, r0, r3
	str r0, [sp, #20]
	ldr r0, [r2, #112]
	str r0, [sp, #16]
	ldr r0, [r2, #120]
	str r0, [sp, #24]
	add r0, sp, #12
	bl sub_08006710
	lsl r0, r0, #24
	cmp r0, #0
	beq _080402FC
	ldr r2, _080402F8  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r2]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08040400
	.byte 0x00
	.byte 0x00
_080402F4:
	.4byte 0xFFFFFF00
_080402F8:
	.4byte gUnknown_030019A0
_080402FC:
	ldr r0, [r5, #76]
	cmp r0, #0
	bne _080403AC
	ldr r0, [r7]
	ldr r1, [r5, #36]
	ldr r0, [r0, #36]
	sub r3, r1, r0
	cmp r3, #0
	blt _08040318
	mov r0, #160
	lsl r0, r0, #6
	cmp r3, r0
	bgt _08040322
	b _0804032C
_08040318:
	sub r1, r0, r1
	mov r0, #160
	lsl r0, r0, #6
	cmp r1, r0
	ble _0804032C
_08040322:
	ldr r0, _08040328  @ =gUnknown_030019AC
	ldr r0, [r0]
	b _080403FA
_08040328:
	.4byte gUnknown_030019AC
_0804032C:
	mov r7, #50
	ldrsh r0, [r5, r7]
	cmp r0, #0
	bge _080403AC
	ldr r0, _08040368  @ =gUnknown_030019AC
	ldr r3, [r0]
	ldr r0, [r3, #92]
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08040370
	ldr r2, _0804036C  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r2]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08040400
	.byte 0x00
	.byte 0x00
_08040368:
	.4byte gUnknown_030019AC
_0804036C:
	.4byte gUnknown_030019A0
_08040370:
	ldr r2, _080403A4  @ =0xFFFFFF00
	add r0, r3, #0
	mov r1, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	asr r3, r0, #24
	cmp r3, #0
	bne _080403AC
	ldr r2, _080403A8  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r2]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08040400
_080403A4:
	.4byte 0xFFFFFF00
_080403A8:
	.4byte gUnknown_030019A0
_080403AC:
	ldr r7, _08040408  @ =gUnknown_030019AC
	ldr r2, [r7]
	mov r0, #0
	str r0, [r2, #80]
	strh r0, [r2, #50]
	str r6, [r2, #36]
	ldrh r0, [r5]
	sub r0, r0, #135
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _080403CE
	mov r0, #48
	ldrsh r1, [r5, r0]
	ldr r0, [r2, #32]
	add r0, r0, r1
	str r0, [r2, #32]
_080403CE:
	ldr r2, [r7]
	ldr r1, [r2, #32]
	add r4, r2, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r3, [r4]
	ldr r0, _0804040C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r2, #36]
	asr r0, r0, #8
	add r2, r2, #124
	strb r0, [r2]
	ldr r0, [r5, #108]
	cmp r0, r8
	bgt _080403F8
	ldr r0, [r5, #116]
	cmp r0, r9
	bge _080404BE
_080403F8:
	ldr r0, [r7]
_080403FA:
	add r0, r0, #67
	mov r1, #255
	strb r1, [r0]
_08040400:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	b _080404BE
_08040408:
	.4byte gUnknown_030019AC
_0804040C:
	.4byte 0xFFFFFE00
_08040410:
	ldr r1, [r7]
	add r0, r5, #0
	add r0, r0, #61
	ldr r6, [r1, #76]
	ldrb r0, [r0]
	cmp r6, r0
	bne _080404BE
	add r0, r1, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r3, [r0, #12]
	mov r0, #2
	and r0, r0, r3
	cmp r0, #0
	bne _080404BE
	ldr r2, [r1, #92]
	mov r4, #1
	and r2, r2, r4
	cmp r2, #0
	beq _08040494
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #12
	and r0, r0, r1
	cmp r0, #0
	beq _0804047C
	mov r0, #128
	lsl r0, r0, #7
	and r3, r3, r0
	cmp r3, #0
	beq _0804047C
	ldr r3, _0804048C  @ =gUnknown_030019A0
	ldr r0, [r3]
	mov r2, #128
	lsl r2, r2, #17
	add r1, r0, #0
	and r1, r1, r2
	cmp r1, #0
	bne _0804047C
	orr r0, r0, r2
	str r0, [r3]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0804047C:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	ldr r0, _08040490  @ =gUnknown_030019AC
	ldr r1, [r0]
	mov r0, #255
	strb r0, [r1, #11]
	b _080404BE
_0804048C:
	.4byte gUnknown_030019A0
_08040490:
	.4byte gUnknown_030019AC
_08040494:
	ldr r0, [r5, #92]
	and r0, r0, r4
	cmp r0, #0
	beq _080404BE
	mov r3, #50
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080404BE
	add r0, r1, #0
	add r0, r0, #67
	strb r6, [r0]
	ldr r1, [r7]
	str r2, [r1, #80]
	strh r2, [r1, #50]
	ldr r0, [r5, #36]
	ldr r6, _080404CC  @ =0xFFFFE100
	add r0, r0, r6
	str r0, [r1, #36]
	asr r0, r0, #8
	add r1, r1, #124
	strb r0, [r1]
_080404BE:
	add sp, sp, #28
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080404CC:
	.4byte 0xFFFFE100
	THUMB_FUNC_END sub_08040144

	THUMB_FUNC_START sub_080404D0
sub_080404D0: @ 0x080404D0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r1, _08040544  @ =gUnknown_030019AC
	ldr r3, [r1]
	mov r0, #67
	add r0, r0, r3
	mov r12, r0
	ldrb r2, [r0]
	mov r8, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r7, r1, #0
	cmp r0, #0
	bgt _080404F6
	b _080406AA
_080404F6:
	add r0, r5, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, r12
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	beq _08040508
	b _080406AA
_08040508:
	ldr r0, [r5, #36]
	ldr r1, _08040548  @ =0xFFFFE100
	add r6, r0, r1
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r4, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r4, r4, r0
	cmp r4, #0
	beq _0804055A
	ldr r2, [r3, #100]
	mov r7, #4
	ldrsh r1, [r2, r7]
	ldr r0, [r3, #32]
	add r4, r0, r1
	mov r7, #6
	ldrsh r1, [r2, r7]
	add r0, r0, r1
	ldr r1, [r5, #108]
	cmp r1, r0
	bgt _0804053C
	ldr r0, [r5, #116]
	cmp r0, r4
	bge _0804054C
_0804053C:
	mov r0, #255
	mov r1, r12
	strb r0, [r1]
	b _080406A2
_08040544:
	.4byte gUnknown_030019AC
_08040548:
	.4byte 0xFFFFE100
_0804054C:
	mov r0, #0
	str r0, [r3, #80]
	strh r0, [r3, #50]
	str r6, [r3, #36]
	asr r1, r6, #8
	add r0, r3, #0
	b _08040584
_0804055A:
	ldr r2, [r3, #36]
	sub r2, r6, r2
	add r0, r3, #0
	mov r1, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	cmp r0, #0
	bne _080405A8
	ldr r0, _0804058C  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _08040590
	ldr r0, [r7]
	str r4, [r0, #80]
	strh r4, [r0, #50]
	str r6, [r0, #36]
	asr r1, r6, #8
_08040584:
	add r0, r0, #124
	strb r1, [r0]
	b _080407B0
	.byte 0x00
	.byte 0x00
_0804058C:
	.4byte gUnknown_030019A0
_08040590:
	mov r2, #50
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _080405A4
	ldr r1, [r7]
	ldr r0, [r1, #36]
	mov r3, #160
	lsl r3, r3, #3
	add r0, r0, r3
	str r0, [r1, #36]
_080405A4:
	ldr r0, [r7]
	b _0804069C
_080405A8:
	ldr r2, [r7]
	ldr r1, [r2, #92]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #10
	bne _080405DC
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _080405C6
	ldr r0, [r2, #32]
	mov r7, #128
	lsl r7, r7, #2
	add r0, r0, r7
	b _080405CC
_080405C6:
	ldr r0, [r2, #32]
	ldr r1, _080405D4  @ =0xFFFFFE00
	add r0, r0, r1
_080405CC:
	str r0, [r2, #32]
	ldr r0, _080405D8  @ =gUnknown_030019AC
	ldr r0, [r0]
	b _0804069C
_080405D4:
	.4byte 0xFFFFFE00
_080405D8:
	.4byte gUnknown_030019AC
_080405DC:
	ldr r1, [r2, #100]
	mov r3, #4
	ldrsh r0, [r1, r3]
	ldr r3, [r2, #32]
	add r0, r0, r3
	mov r8, r0
	mov r0, #6
	ldrsh r1, [r1, r0]
	add r1, r1, r3
	mov r12, r1
	str r4, [r2, #80]
	strh r4, [r2, #50]
	str r6, [r2, #36]
	ldrh r0, [r5]
	sub r0, r0, #135
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0804060A
	mov r1, #48
	ldrsh r0, [r5, r1]
	add r0, r3, r0
	str r0, [r2, #32]
_0804060A:
	ldr r2, [r7]
	ldr r1, [r2, #32]
	add r4, r2, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r3, [r4]
	ldr r0, _0804065C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r2, #36]
	asr r0, r0, #8
	add r2, r2, #124
	strb r0, [r2]
	ldr r0, [r5, #108]
	cmp r0, r12
	bgt _08040634
	ldr r0, [r5, #116]
	cmp r0, r8
	bge _0804068C
_08040634:
	ldr r0, [r7]
	add r0, r0, #67
	mov r1, #255
	strb r1, [r0]
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	mov r2, #48
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08040660
	ldr r2, [r7]
	mov r3, #48
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _08040660
	mov r1, #192
	lsl r1, r1, #3
	b _0804067A
	.byte 0x00
	.byte 0x00
_0804065C:
	.4byte 0xFFFFFE00
_08040660:
	mov r7, #48
	ldrsh r0, [r5, r7]
	cmp r0, #0
	blt _0804066A
	b _080407B0
_0804066A:
	ldr r0, _08040684  @ =gUnknown_030019AC
	ldr r2, [r0]
	mov r1, #48
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _08040678
	b _080407B0
_08040678:
	ldr r1, _08040688  @ =0xFFFFFA00
_0804067A:
	add r0, r2, #0
	bl sub_0804A264
	b _080407B0
	.byte 0x00
	.byte 0x00
_08040684:
	.4byte gUnknown_030019AC
_08040688:
	.4byte 0xFFFFFA00
_0804068C:
	ldr r0, [r7]
	mov r2, #4
	ldrsh r3, [r0, r2]
	cmp r3, #28
	beq _0804069C
	cmp r3, #32
	beq _0804069C
	b _080407B0
_0804069C:
	add r0, r0, #67
	mov r1, #255
	strb r1, [r0]
_080406A2:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	b _080407B0
_080406AA:
	ldr r2, [r7]
	add r0, r5, #0
	add r0, r0, #61
	ldr r1, [r2, #76]
	add r4, r0, #0
	ldrb r3, [r4]
	cmp r1, r3
	bne _080407B0
	ldr r1, [r5, #92]
	mov r0, #4
	and r0, r0, r1
	add r3, r1, #0
	cmp r0, #0
	beq _08040778
	ldr r1, [r5, #36]
	ldr r0, [r2, #36]
	cmp r1, r0
	bge _08040778
	mov r1, #50
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _08040778
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #12
	and r0, r0, r1
	cmp r0, #0
	beq _08040760
	ldr r1, [r5, #120]
	ldr r0, [r2, #112]
	sub r1, r1, r0
	add r0, r2, #0
	bl sub_0804A2B8
	cmp r0, #0
	beq _08040738
	ldr r0, [r7]
	mov r2, #128
	lsl r2, r2, #1
	mov r1, #0
	bl sub_0803F9A8
	lsl r0, r0, #24
	cmp r0, #0
	bne _08040760
	ldr r3, _08040734  @ =gUnknown_030019A0
	ldr r0, [r3]
	mov r2, #128
	lsl r2, r2, #17
	add r1, r0, #0
	and r1, r1, r2
	cmp r1, #0
	bne _08040760
	orr r0, r0, r2
	str r0, [r3]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08040760
_08040734:
	.4byte gUnknown_030019A0
_08040738:
	ldr r3, _08040770  @ =gUnknown_030019A0
	ldr r0, [r3]
	mov r2, #128
	lsl r2, r2, #17
	add r1, r0, #0
	and r1, r1, r2
	cmp r1, #0
	bne _08040760
	orr r0, r0, r2
	str r0, [r3]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08040760:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	ldr r0, _08040774  @ =gUnknown_030019AC
	ldr r1, [r0]
	mov r0, #255
	strb r0, [r1, #11]
	b _080407B0
_08040770:
	.4byte gUnknown_030019A0
_08040774:
	.4byte gUnknown_030019AC
_08040778:
	mov r0, #1
	and r0, r0, r3
	cmp r0, #0
	beq _080407B0
	ldr r2, [r7]
	ldr r0, [r2, #100]
	mov r3, #2
	ldrsh r1, [r0, r3]
	ldr r0, [r2, #36]
	add r0, r0, r1
	ldr r1, [r5, #112]
	cmp r0, r1
	bgt _080407B0
	ldrb r1, [r4]
	add r0, r2, #0
	add r0, r0, #67
	mov r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	str r2, [r1, #80]
	strh r2, [r1, #50]
	ldr r0, [r5, #36]
	ldr r7, _080407BC  @ =0xFFFFE100
	add r0, r0, r7
	str r0, [r1, #36]
	asr r0, r0, #8
	add r1, r1, #124
	strb r0, [r1]
_080407B0:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080407BC:
	.4byte 0xFFFFE100
	THUMB_FUNC_END sub_080404D0

	THUMB_FUNC_START sub_080407C0
sub_080407C0: @ 0x080407C0
	push {r4-r6,lr}
	ldr r2, _08040854  @ =0x03001954
	ldr r0, [r2]
	cmp r0, #0
	bge _080407CE
	mov r0, #0
	str r0, [r2]
_080407CE:
	ldr r3, _08040858  @ =0x03001A04
	ldr r0, [r3]
	cmp r0, #0
	bge _080407DA
	mov r0, #0
	str r0, [r3]
_080407DA:
	ldr r0, [r2]
	asr r0, r0, #8
	add r0, r0, #240
	ldr r5, _0804085C  @ =gCurrentLevelWidth
	mov r4, #0
	ldrsh r1, [r5, r4]
	cmp r0, r1
	blt _080407F2
	add r0, r1, #0
	sub r0, r0, #240
	lsl r0, r0, #8
	str r0, [r2]
_080407F2:
	ldr r0, [r3]
	asr r0, r0, #8
	add r0, r0, #160
	ldr r4, _08040860  @ =gCurrentLevelHeight
	mov r6, #0
	ldrsh r1, [r4, r6]
	cmp r0, r1
	blt _0804080A
	add r0, r1, #0
	sub r0, r0, #160
	lsl r0, r0, #8
	str r0, [r3]
_0804080A:
	ldr r2, _08040864  @ =0x03001948
	ldr r0, [r2]
	cmp r0, #0
	bge _08040816
	mov r0, #0
	str r0, [r2]
_08040816:
	ldr r3, _08040868  @ =0x030019E0
	ldr r0, [r3]
	cmp r0, #0
	bge _08040822
	mov r0, #0
	str r0, [r3]
_08040822:
	ldr r0, [r2]
	asr r0, r0, #8
	add r0, r0, #240
	mov r6, #0
	ldrsh r1, [r5, r6]
	cmp r0, r1
	blt _08040838
	add r0, r1, #0
	sub r0, r0, #240
	lsl r0, r0, #8
	str r0, [r2]
_08040838:
	ldr r0, [r3]
	asr r0, r0, #8
	add r0, r0, #160
	mov r2, #0
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _0804084E
	add r0, r1, #0
	sub r0, r0, #160
	lsl r0, r0, #8
	str r0, [r3]
_0804084E:
	pop {r4-r6}
	pop {r0}
	bx r0
_08040854:
	.4byte 0x03001954
_08040858:
	.4byte 0x03001A04
_0804085C:
	.4byte gCurrentLevelWidth
_08040860:
	.4byte gCurrentLevelHeight
_08040864:
	.4byte 0x03001948
_08040868:
	.4byte 0x030019E0
	THUMB_FUNC_END sub_080407C0

	THUMB_FUNC_START sub_0804086C
sub_0804086C: @ 0x0804086C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	ldr r7, _080408E4  @ =gUnknown_03001A1C
	ldr r3, [r7]
	mov r0, #134
	lsl r0, r0, #7
	and r0, r0, r3
	cmp r0, #0
	beq _08040884
	b _08040B1E
_08040884:
	ldr r0, _080408E8  @ =0x03001A20
	mov r8, r0
	mov r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	beq _08040892
	b _08040A74
_08040892:
	ldrb r1, [r5, #2]
	add r0, r5, #0
	add r0, r0, #136
	ldr r2, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _080408EC  @ =0x03001988
	ldr r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #8
	ldr r1, [r5, #36]
	add r6, r1, r0
	ldr r1, _080408F0  @ =gUnknown_030019D8
	mov r8, r1
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080408FC
	bl sub_08034238
	ldr r0, [r5, #32]
	ldr r2, _080408F4  @ =0xFFFF9C00
	add r0, r0, r2
	ldr r1, _080408F8  @ =0xFFFFFF00
	and r6, r6, r1
	mov r2, #200
	lsl r2, r2, #6
	add r1, r6, r2
	mov r2, #128
	lsl r2, r2, #2
	bl sub_08033588
	mov r0, #1
	mov r1, r8
	strb r0, [r1]
	b _08040B1E
_080408E4:
	.4byte gUnknown_03001A1C
_080408E8:
	.4byte 0x03001A20
_080408EC:
	.4byte 0x03001988
_080408F0:
	.4byte gUnknown_030019D8
_080408F4:
	.4byte 0xFFFF9C00
_080408F8:
	.4byte 0xFFFFFF00
_080408FC:
	cmp r0, #1
	bne _0804092C
	bl sub_08033658
	cmp r0, #0
	bne _0804090A
	b _08040B1E
_0804090A:
	ldr r0, [r7]
	ldr r1, _08040924  @ =0xFF7FFFFF
	and r0, r0, r1
	mov r1, #4
	mov r2, r8
	strb r1, [r2]
	mov r1, #128
	lsl r1, r1, #12
	orr r0, r0, r1
	ldr r1, _08040928  @ =0xFFEFEFFF
	and r0, r0, r1
	str r0, [r7]
	b _080409A8
_08040924:
	.4byte 0xFF7FFFFF
_08040928:
	.4byte 0xFFEFEFFF
_0804092C:
	cmp r0, #2
	bne _08040954
	bl sub_08033658
	cmp r0, #0
	bne _0804093A
	b _08040B1E
_0804093A:
	mov r0, #4
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #12
	orr r0, r0, r1
	ldr r1, _08040950  @ =0xFFEFEFFF
	and r0, r0, r1
	str r0, [r7]
	b _080409A8
_08040950:
	.4byte 0xFFEFEFFF
_08040954:
	cmp r0, #3
	bne _080409EC
	ldr r2, _08040970  @ =0xFFFFFD80
	add r0, r2, #0
	ldrh r1, [r5, #4]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #8
	bhi _08040974
	mov r0, #4
	mov r2, r8
	strb r0, [r2]
	b _0804099C
_08040970:
	.4byte 0xFFFFFD80
_08040974:
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080409C0
	add r0, r5, #0
	add r0, r0, #67
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _080409C0
	mov r0, #4
	mov r1, r8
	strb r0, [r1]
_0804099C:
	mov r0, #128
	lsl r0, r0, #12
	orr r3, r3, r0
	ldr r0, _080409B4  @ =0xFFEFEFFF
	and r3, r3, r0
	str r3, [r7]
_080409A8:
	ldr r0, _080409B8  @ =0x03001A60
	strb r4, [r0]
	ldr r0, _080409BC  @ =0x03000BDC
	strb r4, [r0]
	b _08040B1E
	.byte 0x00
	.byte 0x00
_080409B4:
	.4byte 0xFFEFEFFF
_080409B8:
	.4byte 0x03001A60
_080409BC:
	.4byte 0x03000BDC
_080409C0:
	ldr r0, [r5, #32]
	ldr r2, _080409E4  @ =0xFFFF9C00
	add r0, r0, r2
	mov r1, #20
	bl sub_08034384
	ldr r0, _080409E8  @ =0xFFFFFF00
	and r6, r6, r0
	mov r1, #200
	lsl r1, r1, #6
	add r0, r6, r1
	mov r1, #128
	lsl r1, r1, #3
	bl sub_0803446C
	bl sub_08033658
	b _08040B1E
_080409E4:
	.4byte 0xFFFF9C00
_080409E8:
	.4byte 0xFFFFFF00
_080409EC:
	ldr r2, _08040A1C  @ =0xFFFFFD80
	add r0, r2, #0
	ldrh r1, [r5, #4]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #8
	bhi _080409FE
	b _08040B1E
_080409FE:
	mov r2, #48
	ldrsh r0, [r5, r2]
	ldr r1, [r5, #32]
	cmp r0, #0
	bne _08040A0E
	ldr r0, [r5, #40]
	cmp r1, r0
	beq _08040A24
_08040A0E:
	ldr r2, _08040A20  @ =0xFFFF9C00
	add r0, r1, r2
	mov r1, #10
	bl sub_08034384
	b _08040A2C
	.byte 0x00
	.byte 0x00
_08040A1C:
	.4byte 0xFFFFFD80
_08040A20:
	.4byte 0xFFFF9C00
_08040A24:
	bl sub_0803432C
	bl sub_0803430C
_08040A2C:
	bl sub_08033704
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08040A50
	add r0, r5, #0
	add r0, r0, #67
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _08040B1E
_08040A50:
	ldr r0, _08040A6C  @ =0xFFFFFF00
	and r6, r6, r0
	mov r1, #200
	lsl r1, r1, #6
	add r0, r6, r1
	mov r1, #128
	lsl r1, r1, #3
	bl sub_0803446C
	ldr r1, _08040A70  @ =gUnknown_030019D8
	mov r0, #3
	strb r0, [r1]
	b _08040B1E
	.byte 0x00
	.byte 0x00
_08040A6C:
	.4byte 0xFFFFFF00
_08040A70:
	.4byte gUnknown_030019D8
_08040A74:
	cmp r4, #5
	bne _08040B00
	ldr r0, _08040AE4  @ =gUnknown_03001BA4
	ldr r0, [r0]
	lsl r0, r0, #17
	ldr r2, _08040AE8  @ =0xFF100000
	add r0, r0, r2
	asr r0, r0, #16
	ldr r1, _08040AEC  @ =gUnknown_03001B88
	ldr r1, [r1]
	lsl r1, r1, #17
	ldr r2, _08040AF0  @ =0xFF600000
	add r1, r1, r2
	asr r1, r1, #16
	bl sub_08033FAC
	ldr r1, _08040AF4  @ =0x03001A28
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _08040B1E
	ldrb r1, [r5, #2]
	add r0, r5, #0
	add r0, r0, #136
	ldr r2, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r0, r0, #80
	lsl r0, r0, #8
	ldr r4, [r5, #36]
	add r4, r4, r0
	bl sub_08034238
	ldr r0, [r5, #32]
	ldr r1, _08040AF8  @ =0xFFFF9C00
	add r0, r0, r1
	mov r2, #192
	lsl r2, r2, #2
	add r1, r4, #0
	bl sub_08033588
	mov r2, r8
	strb r6, [r2]
	ldr r1, _08040AFC  @ =gUnknown_030019D8
	mov r0, #1
	strb r0, [r1]
	b _08040B1E
	.byte 0x00
	.byte 0x00
_08040AE4:
	.4byte gUnknown_03001BA4
_08040AE8:
	.4byte 0xFF100000
_08040AEC:
	.4byte gUnknown_03001B88
_08040AF0:
	.4byte 0xFF600000
_08040AF4:
	.4byte 0x03001A28
_08040AF8:
	.4byte 0xFFFF9C00
_08040AFC:
	.4byte gUnknown_030019D8
_08040B00:
	cmp r4, #6
	bne _08040B0A
	bl sub_08033658
	b _08040B1E
_08040B0A:
	cmp r4, #7
	bne _08040B1E
	mov r0, #128
	lsl r0, r0, #12
	orr r3, r3, r0
	str r3, [r7]
	mov r0, #0
	mov r1, #16
	bl sub_08033FAC
_08040B1E:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804086C

	THUMB_FUNC_START sub_08040B28
sub_08040B28: @ 0x08040B28
	push {r4,lr}
	ldr r0, _08040B64  @ =gLevelType
	ldrb r2, [r0]
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _08040B70
	ldr r2, _08040B68  @ =gNextLevelInLevelTable
	ldr r1, [r2, #32]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _08040BF0
	mov r0, #8
	and r1, r1, r0
	cmp r1, #0
	bne _08040BF0
	mov r1, #18
	ldrsh r0, [r2, r1]
	mov r3, #16
	ldrsh r1, [r2, r3]
	lsl r1, r1, #1
	ldr r4, _08040B6C  @ =gUnknown_03001BDC
	ldrb r2, [r4]
	bl sub_080559D0
	mov r0, #1
	strb r0, [r4]
	b _08040BF0
	.byte 0x00
	.byte 0x00
_08040B64:
	.4byte gLevelType
_08040B68:
	.4byte gNextLevelInLevelTable
_08040B6C:
	.4byte gUnknown_03001BDC
_08040B70:
	sub r0, r2, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08040BF0
	cmp r1, #1
	bne _08040B9C
	ldr r2, _08040B98  @ =gNextLevelInLevelTable
	ldr r0, [r2, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08040BEA
	mov r1, #18
	ldrsh r0, [r2, r1]
	mov r3, #16
	ldrsh r1, [r2, r3]
	lsl r1, r1, #2
	add r1, r1, #2
	b _08040BC4
_08040B98:
	.4byte gNextLevelInLevelTable
_08040B9C:
	cmp r1, #2
	bne _08040BB4
	ldr r1, _08040BB0  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r1, r2]
	mov r3, #16
	ldrsh r1, [r1, r3]
	add r1, r1, #3
	b _08040BC4
	.byte 0x00
	.byte 0x00
_08040BB0:
	.4byte gNextLevelInLevelTable
_08040BB4:
	cmp r1, #3
	bne _08040BD8
	ldr r1, _08040BD0  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r1, r2]
	mov r3, #16
	ldrsh r1, [r1, r3]
	add r1, r1, #7
_08040BC4:
	ldr r2, _08040BD4  @ =gUnknown_03001BDC
	ldrb r2, [r2]
	bl sub_080559D0
	b _08040BEA
	.byte 0x00
	.byte 0x00
_08040BD0:
	.4byte gNextLevelInLevelTable
_08040BD4:
	.4byte gUnknown_03001BDC
_08040BD8:
	ldr r1, _08040BF8  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r1, r2]
	mov r3, #16
	ldrsh r1, [r1, r3]
	ldr r2, _08040BFC  @ =gUnknown_03001BDC
	ldrb r2, [r2]
	bl sub_080559D0
_08040BEA:
	ldr r1, _08040BFC  @ =gUnknown_03001BDC
	mov r0, #1
	strb r0, [r1]
_08040BF0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08040BF8:
	.4byte gNextLevelInLevelTable
_08040BFC:
	.4byte gUnknown_03001BDC
	THUMB_FUNC_END sub_08040B28

	THUMB_FUNC_START sub_08040C00
sub_08040C00: @ 0x08040C00
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	ldrh r3, [r4]
	cmp r3, #0
	beq _08040C14
	b _08040D36
_08040C14:
	mov r0, #132
	add r0, r0, r4
	mov r10, r0
	ldr r0, [r0]
	ldr r2, [r0, #32]
	cmp r2, #0
	bne _08040C24
	ldr r2, [r4, #100]
_08040C24:
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #32]
	add r6, r1, r0
	mov r5, #6
	ldrsh r0, [r2, r5]
	add r1, r1, r0
	mov r8, r1
	mov r7, #0
	ldrsh r0, [r2, r7]
	ldr r1, [r4, #36]
	add r5, r1, r0
	mov r7, #2
	ldrsh r0, [r2, r7]
	add r7, r1, r0
	ldr r1, _08040C80  @ =0x03001A24
	ldrb r0, [r1]
	cmp r0, #0
	beq _08040CB8
	strb r3, [r1]
	ldr r1, _08040C84  @ =gCurrentSwitchState
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08040C88  @ =0x03000930
	mov r0, #64
	strb r0, [r1]
	ldr r0, _08040C8C  @ =gMainState
	ldr r0, [r0]
	cmp r0, #5
	beq _08040C64
	cmp r0, #2
	bne _08040C9E
_08040C64:
	ldr r0, _08040C90  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08040C98
	ldr r0, _08040C94  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #6
	orr r1, r1, r2
	str r1, [r0]
	b _08040CA2
	.byte 0x00
	.byte 0x00
_08040C80:
	.4byte 0x03001A24
_08040C84:
	.4byte gCurrentSwitchState
_08040C88:
	.4byte 0x03000930
_08040C8C:
	.4byte gMainState
_08040C90:
	.4byte gNextLevelInLevelTable
_08040C94:
	.4byte gUnknown_03001A1C
_08040C98:
	bl sub_0804AB60
	b _08040CA2
_08040C9E:
	bl sub_08040B28
_08040CA2:
	ldr r0, _08040CB0  @ =gCurrentSwitchState
	ldrb r0, [r0]
	ldr r1, _08040CB4  @ =gPreviousSwitchState
	ldrb r1, [r1]
	bl press_color_switch
	b _08040D36
_08040CB0:
	.4byte gCurrentSwitchState
_08040CB4:
	.4byte gPreviousSwitchState
_08040CB8:
	ldr r0, _08040D18  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _08040D36
	ldrb r1, [r4, #2]
	add r0, r4, #0
	add r0, r0, #136
	ldr r2, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	mov r9, r0
	add r0, r4, #0
	bl sub_0804086C
	add r0, r6, #0
	add r1, r5, #0
	mov r2, r8
	add r3, r7, #0
	bl sub_08003458
	mov r1, r10
	ldr r0, [r1]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08040D20
	ldr r2, _08040D1C  @ =0xFFFFFE00
	add r0, r6, r2
	mov r2, #128
	lsl r2, r2, #2
	add r2, r2, r8
	add r1, r5, #0
	add r3, r7, #0
	bl sub_08003040
	b _08040D36
	.byte 0x00
	.byte 0x00
_08040D18:
	.4byte gUnknown_03001A1C
_08040D1C:
	.4byte 0xFFFFFE00
_08040D20:
	ldr r1, _08040D4C  @ =0xFFFFFE00
	add r0, r6, r1
	mov r2, r9
	add r1, r5, r2
	mov r2, #128
	lsl r2, r2, #2
	add r2, r2, r8
	mov r5, r9
	add r3, r7, r5
	bl sub_08003040
_08040D36:
	ldr r0, [r4, #32]
	str r0, [r4, #40]
	ldr r0, [r4, #36]
	str r0, [r4, #44]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08040D4C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08040C00

	THUMB_FUNC_START sub_08040D50
sub_08040D50: @ 0x08040D50
	push {r4,r5,lr}
	ldr r5, _08040D84  @ =gUnknown_03001940
	mov r0, #220
	lsl r0, r0, #4
	bl arena_allocate
	str r0, [r5]
	ldr r4, _08040D88  @ =0x03001A54
	mov r0, #80
	bl arena_allocate
	str r0, [r4]
	bl sub_08041ED8
	mov r0, #1
	bl arena_save_head
	ldr r0, _08040D8C  @ =0x0300193C
	ldr r1, [r5]
	str r1, [r0]
	ldr r0, _08040D90  @ =gUnknown_030019AC
	str r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08040D84:
	.4byte gUnknown_03001940
_08040D88:
	.4byte 0x03001A54
_08040D8C:
	.4byte 0x0300193C
_08040D90:
	.4byte gUnknown_030019AC
	THUMB_FUNC_END sub_08040D50

	THUMB_FUNC_START sub_08040D94
sub_08040D94: @ 0x08040D94
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _08040DC0  @ =gUnknown_03001940
	mov r1, #176
	add r2, r0, #0
	mul r2, r1, r2
	ldr r1, [r3]
	add r1, r1, r2
	cmp r0, #19
	bhi _08040DC4
	ldr r0, [r1, #100]
	mov r2, #6
	ldrsh r1, [r0, r2]
	mov r2, #4
	ldrsh r0, [r0, r2]
	sub r0, r1, r0
	asr r0, r0, #8
	add r0, r0, #7
	asr r0, r0, #3
	b _08040DC6
	.byte 0x00
	.byte 0x00
_08040DC0:
	.4byte gUnknown_03001940
_08040DC4:
	mov r0, #0
_08040DC6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08040D94

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08040DCC
sub_08040DCC: @ 0x08040DCC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _08040DF8  @ =gUnknown_03001940
	mov r1, #176
	add r2, r0, #0
	mul r2, r1, r2
	ldr r1, [r3]
	add r1, r1, r2
	cmp r0, #19
	bhi _08040DFC
	ldr r0, [r1, #100]
	mov r2, #2
	ldrsh r1, [r0, r2]
	mov r2, #0
	ldrsh r0, [r0, r2]
	sub r0, r1, r0
	asr r0, r0, #8
	add r0, r0, #7
	asr r0, r0, #3
	b _08040DFE
	.byte 0x00
	.byte 0x00
_08040DF8:
	.4byte gUnknown_03001940
_08040DFC:
	mov r0, #0
_08040DFE:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08040DCC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08040E04
sub_08040E04: @ 0x08040E04
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _08040E18  @ =gUnknown_03001940
	ldr r2, [r1]
	mov r1, #176
	mul r0, r1, r0
	add r0, r0, r2
	ldrh r0, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_08040E18:
	.4byte gUnknown_03001940
	THUMB_FUNC_END sub_08040E04

	THUMB_FUNC_START sub_08040E1C
sub_08040E1C: @ 0x08040E1C
	ldr r2, [r0, #32]
	mov r1, #126
	add r1, r1, r0
	mov r12, r1
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r3, [r1]
	ldr r1, _08040E40  @ =0xFFFFFE00
	and r1, r1, r3
	orr r1, r1, r2
	mov r2, r12
	strh r1, [r2]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	add r0, r0, #124
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_08040E40:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08040E1C

	THUMB_FUNC_START sub_08040E44
sub_08040E44: @ 0x08040E44
	push {lr}
	add r3, r1, #0
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #19
	bhi _08040E5E
	ldr r0, _08040E64  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	add r0, r0, #164
	str r3, [r0]
_08040E5E:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08040E64:
	.4byte gUnknown_03001940
	THUMB_FUNC_END sub_08040E44

	THUMB_FUNC_START sub_08040E68
sub_08040E68: @ 0x08040E68
	push {lr}
	add r3, r1, #0
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #19
	bhi _08040E82
	ldr r0, _08040E88  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	add r0, r0, #168
	str r3, [r0]
_08040E82:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08040E88:
	.4byte gUnknown_03001940
	THUMB_FUNC_END sub_08040E68

	THUMB_FUNC_START sub_08040E8C
sub_08040E8C: @ 0x08040E8C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r1, r1, #16
	lsr r4, r1, #16
	cmp r3, #19
	bhi _08040EB0
	ldr r0, _08040EB8  @ =gUnknown_03001940
	ldr r2, [r0]
	mov r0, #176
	add r1, r3, #0
	mul r1, r0, r1
	add r1, r1, r2
	add r1, r1, #154
	ldrh r2, [r1]
	add r0, r4, #0
	orr r0, r0, r2
	strh r0, [r1]
_08040EB0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08040EB8:
	.4byte gUnknown_03001940
	THUMB_FUNC_END sub_08040E8C

	THUMB_FUNC_START sub_08040EBC
sub_08040EBC: @ 0x08040EBC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r1, r1, #16
	lsr r4, r1, #16
	cmp r3, #19
	bhi _08040EDE
	ldr r0, _08040EE4  @ =gUnknown_03001940
	ldr r2, [r0]
	mov r0, #176
	add r1, r3, #0
	mul r1, r0, r1
	add r1, r1, r2
	add r1, r1, #154
	ldrh r0, [r1]
	bic r0, r0, r4
	strh r0, [r1]
_08040EDE:
	pop {r4}
	pop {r0}
	bx r0
_08040EE4:
	.4byte gUnknown_03001940
	THUMB_FUNC_END sub_08040EBC

	THUMB_FUNC_START sub_08040EE8
sub_08040EE8: @ 0x08040EE8
	push {lr}
	ldr r1, _08040F10  @ =gUnknown_03001940
	ldr r1, [r1]
	mov r2, #0
	lsl r0, r0, #16
	asr r3, r0, #16
_08040EF4:
	add r0, r1, #0
	add r0, r0, #152
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040F14
	ldrh r0, [r1]
	cmp r0, r3
	bne _08040F14
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	b _08040F2A
_08040F10:
	.4byte gUnknown_03001940
_08040F14:
	lsl r0, r2, #16
	mov r2, #128
	lsl r2, r2, #9
	add r0, r0, r2
	add r1, r1, #176
	lsr r2, r0, #16
	asr r0, r0, #16
	cmp r0, #19
	ble _08040EF4
	mov r0, #1
	neg r0, r0
_08040F2A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08040EE8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08040F30
sub_08040F30: @ 0x08040F30
	push {lr}
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #19
	bhi _08040F4C
	ldr r2, _08040F48  @ =gUnknown_03001940
	asr r1, r1, #16
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	b _08040F4E
_08040F48:
	.4byte gUnknown_03001940
_08040F4C:
	mov r0, #0
_08040F4E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08040F30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08040F54
sub_08040F54: @ 0x08040F54
	push {r4,lr}
	ldr r1, _08040F8C  @ =0x030019D0
	ldr r2, _08040F90  @ =gCameraHorizontalOffset
	mov r3, #0
	ldrsh r0, [r2, r3]
	str r0, [r1]
	ldr r3, _08040F94  @ =gCameraVerticalOffset
	mov r4, #0
	ldrsh r0, [r3, r4]
	str r0, [r1, #4]
	ldr r1, _08040F98  @ =gUnknown_030008C8
	ldrh r0, [r2]
	lsl r0, r0, #16
	asr r0, r0, #17
	add r0, r0, #120
	asr r0, r0, #3
	str r0, [r1]
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	add r0, r0, #80
	asr r0, r0, #3
	str r0, [r1, #4]
	bl sub_0800EF1C
	pop {r4}
	pop {r0}
	bx r0
_08040F8C:
	.4byte 0x030019D0
_08040F90:
	.4byte gCameraHorizontalOffset
_08040F94:
	.4byte gCameraVerticalOffset
_08040F98:
	.4byte gUnknown_030008C8
	THUMB_FUNC_END sub_08040F54

	THUMB_FUNC_START sub_08040F9C
sub_08040F9C: @ 0x08040F9C
	push {lr}
	bl sub_08034238
	ldr r1, _08040FBC  @ =0x030019D0
	ldr r0, [r1]
	lsl r0, r0, #7
	ldr r1, [r1, #4]
	lsl r1, r1, #7
	mov r2, #192
	lsl r2, r2, #2
	bl sub_08033588
	bl sub_0800EEC0
	pop {r0}
	bx r0
_08040FBC:
	.4byte 0x030019D0
	THUMB_FUNC_END sub_08040F9C

	THUMB_FUNC_START sub_08040FC0
sub_08040FC0: @ 0x08040FC0
	push {lr}
	add r2, r0, #0
	mov r0, #1
	neg r0, r0
	cmp r2, r0
	beq _08040FF0
	asr r0, r1, #8
	ldr r1, _08040FF4  @ =gSpriteHorizontalOffset
	mov r3, #0
	ldrsh r1, [r1, r3]
	sub r1, r0, r1
	cmp r1, #0
	bge _08040FDC
	mov r1, #0
_08040FDC:
	cmp r1, #240
	ble _08040FE2
	mov r1, #240
_08040FE2:
	add r0, r1, #0
	add r0, r0, #8
	asr r1, r0, #1
	add r0, r2, #0
	mov r2, #0
	bl sub_08071D28
_08040FF0:
	pop {r0}
	bx r0
_08040FF4:
	.4byte gSpriteHorizontalOffset
	THUMB_FUNC_END sub_08040FC0

	THUMB_FUNC_START sub_08040FF8
sub_08040FF8: @ 0x08040FF8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r1, #0
	ldr r0, _08041050  @ =gNewKeys
	mov r9, r0
	ldr r0, _08041054  @ =gHeldKeys
	mov r8, r0
	ldr r0, _08041058  @ =gUnknown_03001944
	mov r12, r0
	ldr r7, _0804105C  @ =gUnknown_03001990
	ldr r6, _08041060  @ =gUnknown_030019F4 
	ldr r5, _08041064  @ =gUnknown_03001A10
	ldr r4, _08041068  @ =gUnknown_030019C0
	mov r3, #0
_08041018:
	lsl r0, r1, #16
	asr r0, r0, #16
	add r2, r0, r5
	add r1, r0, r4
	strb r3, [r1]
	strb r3, [r2]
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #9
	ble _08041018
	mov r0, #0
	strb r0, [r6]
	strb r0, [r7]
	mov r1, r12
	strb r0, [r1]
	mov r0, #0
	mov r1, r8
	strh r0, [r1]
	mov r1, r9
	strh r0, [r1]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08041050:
	.4byte gNewKeys
_08041054:
	.4byte gHeldKeys
_08041058:
	.4byte gUnknown_03001944
_0804105C:
	.4byte gUnknown_03001990
_08041060:
	.4byte gUnknown_030019F4 
_08041064:
	.4byte gUnknown_03001A10
_08041068:
	.4byte gUnknown_030019C0
	THUMB_FUNC_END sub_08040FF8

	THUMB_FUNC_START sub_0804106C
sub_0804106C: @ 0x0804106C
	push {r4,lr}
	sub sp, sp, #16
	ldr r2, _080410B0  @ =gUnknown_03001940
	mov r1, #176
	mul r0, r1, r0
	ldr r2, [r2]
	add r2, r2, r0
	ldr r3, [r2, #100]
	mov r1, #4
	ldrsh r0, [r3, r1]
	ldr r1, [r2, #32]
	add r0, r1, r0
	str r0, [sp]
	mov r4, #6
	ldrsh r0, [r3, r4]
	add r1, r1, r0
	str r1, [sp, #8]
	mov r1, #0
	ldrsh r0, [r3, r1]
	ldr r1, [r2, #36]
	add r0, r1, r0
	str r0, [sp, #4]
	mov r2, #2
	ldrsh r0, [r3, r2]
	add r1, r1, r0
	str r1, [sp, #12]
	mov r0, sp
	bl sub_08030E30
	add sp, sp, #16
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080410B0:
	.4byte gUnknown_03001940
	THUMB_FUNC_END sub_0804106C

	THUMB_FUNC_START sub_080410B4
sub_080410B4: @ 0x080410B4
	push {r4,lr}
	sub sp, sp, #12
	add r4, r1, #0
	add r3, r2, #0
	ldr r2, _08041104  @ =gUnknown_03001940
	mov r1, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldr r0, [r0, #32]
	asr r0, r0, #8
	ldr r1, _08041108  @ =gSpriteHorizontalOffset
	mov r2, #0
	ldrsh r1, [r1, r2]
	sub r0, r0, r1
	cmp r0, #0
	bge _080410D8
	mov r0, #0
_080410D8:
	cmp r0, #240
	ble _080410DE
	mov r0, #240
_080410DE:
	add r0, r0, #8
	asr r0, r0, #1
	lsl r1, r3, #24
	lsr r1, r1, #24
	lsl r3, r0, #24
	lsr r3, r3, #24
	mov r2, #0
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r0, r4, #0
	mov r2, #16
	bl play_sound_effect_08071990
	add sp, sp, #12
	pop {r4}
	pop {r1}
	bx r1
_08041104:
	.4byte gUnknown_03001940
_08041108:
	.4byte gSpriteHorizontalOffset
	THUMB_FUNC_END sub_080410B4

	THUMB_FUNC_START sub_0804110C
sub_0804110C: @ 0x0804110C
	push {lr}
	add r3, r1, #0
	ldr r2, _0804114C  @ =gUnknown_03001940
	mov r1, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldr r0, [r0, #32]
	asr r0, r0, #8
	ldr r1, _08041150  @ =gSpriteHorizontalOffset
	mov r2, #0
	ldrsh r1, [r1, r2]
	sub r1, r0, r1
	cmp r1, #0
	bge _0804112C
	mov r1, #0
_0804112C:
	cmp r1, #240
	ble _08041132
	mov r1, #240
_08041132:
	add r0, r1, #0
	add r0, r0, #8
	asr r1, r0, #1
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	beq _08041148
	add r0, r3, #0
	mov r2, #0
	bl sub_08071D28
_08041148:
	pop {r0}
	bx r0
_0804114C:
	.4byte gUnknown_03001940
_08041150:
	.4byte gSpriteHorizontalOffset
	THUMB_FUNC_END sub_0804110C

	THUMB_FUNC_START sub_08041154
sub_08041154: @ 0x08041154
	lsl r0, r0, #16
	ldr r1, _0804116C  @ =gOamBuffer
	lsr r0, r0, #13
	add r0, r0, r1
	ldrb r2, [r0, #1]
	mov r1, #13
	neg r1, r1
	and r1, r1, r2
	mov r2, #4
	orr r1, r1, r2
	strb r1, [r0, #1]
	bx lr
_0804116C:
	.4byte gOamBuffer
	THUMB_FUNC_END sub_08041154

	THUMB_FUNC_START sub_08041170
sub_08041170: @ 0x08041170
	push {lr}
	add r3, r0, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08041194
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	b _080411A4
_08041194:
	add r2, r3, #0
	add r2, r2, #132
	ldr r1, [r2]
	ldrh r0, [r3, #8]
	ldr r1, [r1, #24]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
_080411A4:
	strh r0, [r3, #48]
	add r0, r2, #0
	ldrh r2, [r3, #8]
	ldr r0, [r0]
	ldr r1, [r0, #28]
	lsl r0, r2, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	strh r0, [r3, #50]
	mov r0, #50
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #80]
	add r0, r0, r1
	str r0, [r3, #80]
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08041170

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080411C8
sub_080411C8: @ 0x080411C8
	push {lr}
	add r2, r0, #0
	ldr r0, [r2, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r1, r0, #4
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080411E4
	ldr r0, [r2, #36]
	mov r1, #128
	lsl r1, r1, #3
	b _080411F0
_080411E4:
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08041204
	ldr r0, [r2, #36]
	ldr r1, _080411FC  @ =0xFFFFFC00
_080411F0:
	add r0, r0, r1
	ldr r1, _08041200  @ =0xFFFFF800
	and r0, r0, r1
	str r0, [r2, #36]
	b _08041228
	.byte 0x00
	.byte 0x00
_080411FC:
	.4byte 0xFFFFFC00
_08041200:
	.4byte 0xFFFFF800
_08041204:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08041214
	ldr r0, [r2, #32]
	mov r1, #128
	lsl r1, r1, #3
	b _08041220
_08041214:
	mov r0, #8
	and r1, r1, r0
	cmp r1, #0
	beq _08041228
	ldr r0, [r2, #32]
	ldr r1, _0804122C  @ =0xFFFFFC00
_08041220:
	add r0, r0, r1
	ldr r1, _08041230  @ =0xFFFFF800
	and r0, r0, r1
	str r0, [r2, #32]
_08041228:
	pop {r0}
	bx r0
_0804122C:
	.4byte 0xFFFFFC00
_08041230:
	.4byte 0xFFFFF800
	THUMB_FUNC_END sub_080411C8

	THUMB_FUNC_START sub_08041234
sub_08041234: @ 0x08041234
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #92]
	ldr r1, _08041280  @ =0xFDFFFFFF
	and r0, r0, r1
	str r0, [r4, #92]
	ldrh r0, [r4]
	cmp r0, #0
	bne _0804126A
	ldr r2, _08041284  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08041258
	mov r0, #4
	orr r1, r1, r0
	str r1, [r2]
_08041258:
	ldr r1, [r2]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0804126A
	mov r0, #17
	neg r0, r0
	and r1, r1, r0
	str r1, [r2]
_0804126A:
	ldr r0, [r4, #72]
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_08039B64
	mov r0, #1
	neg r0, r0
	str r0, [r4, #72]
	pop {r4}
	pop {r0}
	bx r0
_08041280:
	.4byte 0xFDFFFFFF
_08041284:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_08041234

	THUMB_FUNC_START sub_08041288
sub_08041288: @ 0x08041288
	push {r4,r5,lr}
	add r2, r0, #0
	ldr r0, [r2, #76]
	cmp r0, #0
	ble _080412DC
	ldr r1, _080412E4  @ =gUnknown_03001940
	mov r3, #176
	mul r0, r3, r0
	ldr r1, [r1]
	add r5, r1, r0
	add r4, r5, #0
	add r0, r5, #0
	add r0, r0, #172
	ldr r0, [r0]
	cmp r0, #0
	bne _080412B2
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mul r0, r3, r0
	add r4, r1, r0
_080412B2:
	add r0, r4, #0
	add r0, r0, #172
	ldr r3, [r0]
	ldr r2, _080412E8  @ =gCurrentEnemyScore
	ldrb r0, [r5, #13]
	add r1, r3, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
	ldr r1, [r4, #32]
	asr r1, r1, #8
	ldr r2, [r4, #36]
	asr r2, r2, #8
	ldrb r0, [r5, #13]
	mul r0, r3, r0
	bl sub_08031A64
	ldrb r0, [r5, #13]
	lsl r0, r0, #1
	strb r0, [r5, #13]
_080412DC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080412E4:
	.4byte gUnknown_03001940
_080412E8:
	.4byte gCurrentEnemyScore
	THUMB_FUNC_END sub_08041288

	THUMB_FUNC_START sub_080412EC
sub_080412EC: @ 0x080412EC
	push {lr}
	ldr r1, _0804130C  @ =gUnknown_03001940
	ldr r1, [r1]
	mov r2, #0
	lsl r0, r0, #16
	asr r3, r0, #16
_080412F8:
	add r0, r1, #0
	add r0, r0, #152
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041310
	ldrh r0, [r1]
	cmp r0, r3
	bne _08041310
	add r0, r1, #0
	b _08041324
_0804130C:
	.4byte gUnknown_03001940
_08041310:
	lsl r0, r2, #16
	mov r2, #128
	lsl r2, r2, #9
	add r0, r0, r2
	add r1, r1, #176
	lsr r2, r0, #16
	asr r0, r0, #16
	cmp r0, #19
	ble _080412F8
	mov r0, #0
_08041324:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080412EC

	THUMB_FUNC_START sub_08041328
sub_08041328: @ 0x08041328
	push {r4-r6,lr}
	ldr r6, [sp, #16]
	lsl r0, r0, #16
	asr r0, r0, #16
	ldr r4, _0804134C  @ =gUnknown_03001940
	ldr r5, [r4]
	mov r4, #176
	mul r0, r4, r0
	add r0, r0, r5
	ldr r0, [r0, #100]
	strh r2, [r0, #2]
	strh r1, [r0]
	strh r3, [r0, #4]
	strh r6, [r0, #6]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804134C:
	.4byte gUnknown_03001940
	THUMB_FUNC_END sub_08041328

	THUMB_FUNC_START sub_08041350
sub_08041350: @ 0x08041350
	push {lr}
	sub sp, sp, #16
	ldr r1, [r0, #108]
	mov r2, #128
	lsl r2, r2, #1
	add r1, r1, r2
	str r1, [sp]
	ldr r1, [r0, #116]
	ldr r2, _08041380  @ =0xFFFFFF00
	add r1, r1, r2
	str r1, [sp, #8]
	ldr r1, [r0, #112]
	str r1, [sp, #4]
	ldr r0, [r0, #120]
	str r0, [sp, #12]
	mov r0, sp
	bl sub_08006710
	lsl r0, r0, #24
	asr r0, r0, #24
	add sp, sp, #16
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08041380:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08041350

	THUMB_FUNC_START sub_08041384
sub_08041384: @ 0x08041384
	mov r0, #1
	neg r0, r0
	bx lr
	THUMB_FUNC_END sub_08041384

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804138C
sub_0804138C: @ 0x0804138C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r1, r1, #16
	lsr r6, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r10, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	str r3, [sp]
	ldr r0, _08041410  @ =0x03000330
	ldr r1, [r0]
	mov r12, r1
	mov r9, r0
	cmp r7, #18
	bhi _08041464
	mov r2, #0
	mov r8, r2
	mov r0, r12
	add r0, r0, #88
	ldrb r0, [r0]
	lsl r3, r6, #16
	mov r12, r3
	ldr r3, _08041414  @ =gUnknown_08707E30
	lsl r5, r7, #16
	cmp r0, #0
	beq _080413F0
	mov r4, r9
	mov r2, #92
_080413D2:
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	cmp r0, #4
	bhi _080413F0
	ldr r0, [r4]
	mov r1, r8
	mul r1, r2, r1
	add r1, r1, r0
	add r1, r1, #88
	ldrb r0, [r1]
	cmp r0, #0
	bne _080413D2
_080413F0:
	mov r0, r12
	asr r1, r0, #16
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _0804143A
	add r4, r3, #0
	mov r2, #0
	ldrh r1, [r3, #4]
	lsr r0, r5, #16
	cmp r1, r0
	bne _08041418
	mov r7, #0
	ldrh r6, [r3, #8]
	b _08041460
	.byte 0x00
	.byte 0x00
_08041410:
	.4byte 0x03000330
_08041414:
	.4byte gUnknown_08707E30
_08041418:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r4, r4, #36
	cmp r2, #18
	bhi _08041460
	ldrh r1, [r4, #4]
	lsr r0, r5, #16
	cmp r1, r0
	bne _08041418
	add r7, r2, #0
	lsl r0, r7, #3
	add r0, r0, r7
	lsl r0, r0, #2
	add r0, r0, r3
	ldrh r6, [r0, #8]
	b _08041460
_0804143A:
	add r4, r3, #0
	mov r2, #0
	ldrh r1, [r3, #4]
	lsr r0, r5, #16
	cmp r1, r0
	bne _0804144A
	mov r7, #0
	b _08041460
_0804144A:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r4, r4, #36
	cmp r2, #18
	bhi _08041460
	ldrh r1, [r4, #4]
	lsr r0, r5, #16
	cmp r1, r0
	bne _0804144A
	add r7, r2, #0
_08041460:
	cmp r2, #19
	bne _08041468
_08041464:
	mov r0, #255
	b _08041538
_08041468:
	mov r0, #92
	mov r1, r8
	mul r1, r0, r1
	mov r2, r9
	ldr r0, [r2]
	add r0, r0, r1
	mov r12, r0
	mov r1, r12
	add r1, r1, #88
	mov r5, #0
	mov r0, #1
	strb r0, [r1]
	add r1, r1, #1
	strb r0, [r1]
	mov r0, r12
	add r0, r0, #90
	mov r1, #0
	mov r9, r1
	strh r5, [r0]
	lsl r4, r7, #3
	add r4, r4, r7
	lsl r4, r4, #2
	add r4, r4, r3
	lsl r0, r6, #16
	asr r0, r0, #16
	lsl r2, r0, #1
	add r2, r2, r0
	lsl r2, r2, #3
	ldr r1, [r4]
	add r1, r1, r2
	mov r0, r12
	add r0, r0, #45
	mov r2, r8
	strb r2, [r0]
	mov r3, r12
	strh r7, [r3]
	strh r6, [r3, #4]
	ldrh r0, [r4, #10]
	strh r0, [r3, #6]
	mov r2, r10
	lsl r0, r2, #8
	str r0, [r3, #24]
	ldr r3, [sp]
	lsl r2, r3, #8
	mov r3, r12
	str r2, [r3, #28]
	str r0, [r3, #32]
	str r0, [r3, #16]
	str r2, [r3, #36]
	str r2, [r3, #20]
	ldr r0, [r1, #8]
	ldr r2, [r0]
	ldr r3, [r0, #4]
	mov r0, r12
	str r2, [r0, #64]
	str r3, [r0, #68]
	mov r7, r12
	add r7, r7, #69
	ldrb r2, [r4, #6]
	lsl r2, r2, #4
	ldrb r3, [r7]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r2
	strb r0, [r7]
	mov r3, r12
	ldr r2, [r3, #24]
	mov r4, r12
	add r4, r4, #66
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r3, [r4]
	ldr r0, _08041548  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r4]
	mov r2, r12
	ldr r0, [r2, #28]
	asr r0, r0, #8
	add r2, r2, #64
	strb r0, [r2]
	ldr r0, [r1, #4]
	mov r3, r12
	str r0, [r3, #76]
	ldr r0, [r1, #12]
	str r0, [r3, #84]
	ldr r0, [r1, #8]
	str r0, [r3, #80]
	ldr r0, [r1]
	str r0, [r3, #72]
	str r5, [r3, #56]
	str r5, [r3, #60]
	mov r0, r9
	strb r0, [r3, #12]
	strb r0, [r3, #2]
	strh r5, [r3, #8]
	mov r0, r12
	bl sub_08041B28
	ldr r1, _0804154C  @ =0x03000334
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, r8
_08041538:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
_08041548:
	.4byte 0xFFFFFE00
_0804154C:
	.4byte 0x03000334
	THUMB_FUNC_END sub_0804138C

	THUMB_FUNC_START sub_08041550
sub_08041550: @ 0x08041550
	push {r4,r5,lr}
	add r3, r0, #0
	add r1, r3, #0
	add r1, r1, #44
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _080415C2
	ldr r0, [r3, #56]
	mov r1, #128
	lsl r1, r1, #23
	and r0, r0, r1
	cmp r0, #0
	bne _08041578
	ldrb r0, [r3, #2]
	add r0, r0, #1
	strb r0, [r3, #2]
_08041578:
	ldrb r4, [r3, #3]
	ldrb r0, [r3, #2]
	ldr r2, [r3, #76]
	cmp r0, r4
	bcc _080415B0
	ldrb r1, [r3, #12]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08041592
	mov r0, #4
	orr r0, r0, r1
	strb r0, [r3, #12]
_08041592:
	ldr r0, [r3, #76]
	ldr r1, [r0, #8]
	mov r2, #4
	and r1, r1, r2
	add r2, r0, #0
	cmp r1, #0
	beq _080415A4
	strb r5, [r3, #2]
	b _080415A8
_080415A4:
	sub r0, r4, #1
	strb r0, [r3, #2]
_080415A8:
	ldrb r1, [r3, #12]
	mov r0, #1
	orr r0, r0, r1
	strb r0, [r3, #12]
_080415B0:
	ldrb r1, [r3, #2]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r0, #1]
	add r0, r3, #0
	add r0, r0, #44
	strb r1, [r0]
_080415C2:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08041550

	THUMB_FUNC_START sub_080415C8
sub_080415C8: @ 0x080415C8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, _08041618  @ =0x03000330
	ldr r5, [r0]
	mov r0, #0
	mov r8, r0
	add r7, r5, #0
	add r7, r7, #66
	ldr r2, _0804161C  @ =0xFFFFFE00
	mov r9, r2
	add r4, r5, #0
	add r4, r4, #24
_080415E4:
	ldrb r0, [r7, #22]
	cmp r0, #1
	bne _08041664
	add r6, r5, #0
	add r0, r5, #0
	bl sub_08041550
	mov r0, #23
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08041620
	ldr r1, [r4]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldrb r2, [r5, #2]
	ldr r3, [r4, #52]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _0804163A
	.byte 0x00
	.byte 0x00
_08041618:
	.4byte 0x03000330
_0804161C:
	.4byte 0xFFFFFE00
_08041620:
	ldr r1, [r4]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldrb r2, [r5, #2]
	ldr r3, [r4, #52]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r1, r0
_0804163A:
	ldr r2, _08041684  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r0, [r4, #42]
	mov r2, r9
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #42]
	ldr r2, [r6, #28]
	ldrb r1, [r6, #2]
	ldr r3, [r6, #76]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	asr r2, r2, #8
	ldrb r0, [r0, #3]
	add r2, r2, r0
	add r0, r6, #0
	add r0, r0, #64
	strb r2, [r0]
_08041664:
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	add r7, r7, #92
	add r4, r4, #92
	add r5, r5, #92
	cmp r0, #4
	bls _080415E4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08041684:
	.4byte 0x000001FF
	THUMB_FUNC_END sub_080415C8

	THUMB_FUNC_START sub_08041688
sub_08041688: @ 0x08041688
	push {r4-r7,lr}
	ldr r0, _08041700  @ =0x03000330
	ldr r4, [r0]
	mov r7, #0
_08041690:
	add r0, r4, #0
	add r0, r0, #88
	ldrb r5, [r0]
	cmp r5, #1
	bne _080416EC
	add r6, r4, #0
	add r0, r4, #0
	add r1, r4, #0
	bl sub_08041BFC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080416EC
	ldr r0, _08041704  @ =0x03001A60
	ldrb r0, [r0]
	cmp r0, #0
	bne _080416EC
	ldr r0, _08041708  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #136
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	bne _080416EC
	ldr r1, [r4, #72]
	ldrh r0, [r1, #20]
	cmp r0, #0
	beq _080416EC
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldrh r1, [r1, #20]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r1
	bcc _080416EC
	ldr r0, [r4, #60]
	and r0, r0, r5
	cmp r0, #0
	beq _080416E2
	sub r0, r1, #1
_080416E2:
	strh r0, [r4, #8]
	ldrb r1, [r6, #12]
	mov r0, #2
	orr r0, r0, r1
	strb r0, [r6, #12]
_080416EC:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	add r4, r4, #92
	cmp r7, #4
	bls _08041690
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08041700:
	.4byte 0x03000330
_08041704:
	.4byte 0x03001A60
_08041708:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_08041688

	THUMB_FUNC_START sub_0804170C
sub_0804170C: @ 0x0804170C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	mov r8, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r0, _08041778  @ =0x03000330
	ldr r5, [r0]
	ldr r0, _0804177C  @ =0x03000334
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804172E
	b _0804193E
_0804172E:
	mov r0, #0
	str r0, [sp, #12]
	ldr r1, _08041780  @ =REG_DMA3SAD
	mov r10, r1
_08041736:
	add r0, r5, #0
	add r0, r0, #88
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041742
	b _080418E4
_08041742:
	add r4, r5, #0
	add r0, r5, #0
	add r0, r0, #47
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08041788
	ldr r1, [r5, #24]
	asr r1, r1, #8
	ldrb r2, [r5, #2]
	ldr r3, [r5, #76]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	ldr r0, _08041784  @ =gSpriteHorizontalOffset
	ldrh r0, [r0]
	sub r1, r1, r0
	lsl r1, r1, #16
	lsr r3, r1, #16
	b _080417AA
	.byte 0x00
	.byte 0x00
_08041778:
	.4byte 0x03000330
_0804177C:
	.4byte 0x03000334
_08041780:
	.4byte REG_DMA3SAD
_08041784:
	.4byte gSpriteHorizontalOffset
_08041788:
	ldr r2, [r5, #24]
	asr r2, r2, #8
	ldrb r1, [r5, #2]
	ldr r3, [r5, #76]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, r2
	ldr r1, _08041950  @ =gSpriteHorizontalOffset
	ldrh r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r3, r0, #16
_080417AA:
	ldr r2, [r4, #28]
	asr r2, r2, #8
	ldrb r1, [r4, #2]
	ldr r6, [r4, #76]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, r2
	ldr r1, _08041954  @ =gUnknown_030012F4
	ldrh r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r1, r0, #16
	str r1, [sp, #16]
	lsl r0, r3, #16
	asr r7, r0, #16
	ldr r2, [r4, #72]
	ldrb r0, [r2, #1]
	add r0, r7, r0
	cmp r0, #0
	bge _080417DE
	b _080418E4
_080417DE:
	cmp r7, #239
	ble _080417E4
	b _080418E4
_080417E4:
	lsl r0, r1, #16
	asr r1, r0, #16
	ldrb r0, [r2, #2]
	add r0, r1, r0
	cmp r0, #0
	blt _080418E4
	cmp r1, #159
	bgt _080418E4
	add r0, r4, #0
	add r0, r0, #64
	mov r2, r10
	str r0, [r2]
	mov r3, r8
	ldrh r0, [r3]
	lsl r0, r0, #3
	ldr r1, _08041958  @ =gOamBuffer
	mov r9, r1
	add r0, r0, r9
	str r0, [r2, #4]
	ldr r0, _0804195C  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r1, [r4, #2]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb r1, [r0]
	ldrh r0, [r4, #54]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r4, #84]
	add r0, r0, r1
	str r0, [r2]
	ldr r2, [sp, #4]
	ldrh r0, [r2]
	ldr r3, _08041960  @ =OBJ_VRAM0
	add r0, r0, r3
	mov r1, r10
	str r0, [r1, #4]
	ldrh r0, [r4, #50]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	mov r2, r10
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r1, [r4, #2]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r1, [r0, #8]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08041860
	mov r3, r8
	ldrh r0, [r3]
	bl sub_08041154
_08041860:
	mov r6, r8
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r9
	ldr r1, _08041964  @ =0x000001FF
	add r0, r1, #0
	add r2, r7, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r6, _08041968  @ =0xFFFFFE00
	add r1, r6, #0
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	mov r1, r8
	ldrh r0, [r1]
	lsl r0, r0, #3
	add r0, r0, r9
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r3, [r1]
	lsl r3, r3, #3
	add r3, r3, r9
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r6, [sp]
	ldrh r6, [r6]
	add r0, r0, r6
	ldr r6, _0804196C  @ =0x000003FF
	add r1, r6, #0
	and r0, r0, r1
	ldr r6, _08041970  @ =0xFFFFFC00
	add r1, r6, #0
	and r2, r2, r1
	orr r2, r2, r0
	strh r2, [r3, #4]
	mov r0, r8
	ldrh r2, [r0]
	lsl r2, r2, #3
	add r2, r2, r9
	ldrb r1, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r0, r3, #0
	and r1, r1, r0
	mov r0, #4
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r6, r8
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r4, #52]
	ldr r1, [sp]
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r2, [sp]
	strh r0, [r2]
	ldrh r0, [r4, #50]
	ldr r3, [sp, #4]
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r6, [sp, #4]
	strh r0, [r6]
_080418E4:
	ldr r1, [sp, #12]
	lsl r0, r1, #16
	mov r2, #128
	lsl r2, r2, #9
	add r0, r0, r2
	add r5, r5, #92
	lsr r3, r0, #16
	str r3, [sp, #12]
	asr r0, r0, #16
	cmp r0, #4
	bgt _080418FC
	b _08041736
_080418FC:
	mov r4, #0
	mov r6, #0
	str r6, [sp, #12]
	ldr r0, _08041974  @ =0x03000330
	ldr r5, [r0]
_08041906:
	add r0, r5, #0
	add r0, r0, #88
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804192A
	add r0, r5, #0
	add r0, r0, #89
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804192A
	add r0, r5, #0
	ldr r1, [sp, #8]
	add r2, r4, #0
	bl sub_08041978
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
_0804192A:
	ldr r1, [sp, #12]
	lsl r0, r1, #16
	mov r2, #128
	lsl r2, r2, #9
	add r0, r0, r2
	lsr r3, r0, #16
	str r3, [sp, #12]
	asr r0, r0, #16
	cmp r0, #4
	ble _08041906
_0804193E:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08041950:
	.4byte gSpriteHorizontalOffset
_08041954:
	.4byte gUnknown_030012F4
_08041958:
	.4byte gOamBuffer
_0804195C:
	.4byte 0x84000002
_08041960:
	.4byte OBJ_VRAM0
_08041964:
	.4byte 0x000001FF
_08041968:
	.4byte 0xFFFFFE00
_0804196C:
	.4byte 0x000003FF
_08041970:
	.4byte 0xFFFFFC00
_08041974:
	.4byte 0x03000330
	THUMB_FUNC_END sub_0804170C

	THUMB_FUNC_START sub_08041978
sub_08041978: @ 0x08041978
	push {r4-r7,lr}
	add r6, r1, #0
	lsl r2, r2, #16
	lsr r3, r2, #16
	ldrb r2, [r0, #2]
	lsl r1, r2, #3
	add r1, r1, r2
	lsl r1, r1, #2
	ldr r0, [r0, #76]
	add r5, r0, r1
	ldr r1, [r5, #8]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08041A3E
	ldr r7, _08041A04  @ =gOamBuffer
	lsl r3, r3, #3
	add r4, r3, r7
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	mov r0, #24
	ldrsb r0, [r5, r0]
	add r1, r1, r0
	ldr r0, _08041A08  @ =0x000001FF
	mov r12, r0
	mov r0, r12
	and r1, r1, r0
	ldr r0, _08041A0C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	ldrb r0, [r5, #25]
	ldrb r1, [r4]
	add r0, r0, r1
	strb r0, [r4]
	ldrh r0, [r6]
	lsr r0, r0, #4
	mov r1, #7
	and r0, r0, r1
	lsl r0, r0, #1
	ldrb r1, [r4, #3]
	mov r2, #15
	neg r2, r2
	and r2, r2, r1
	orr r2, r2, r0
	strb r2, [r4, #3]
	ldrb r1, [r4, #1]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #1]
	lsl r0, r2, #27
	mov r12, r7
	cmp r0, #0
	blt _08041A10
	ldrh r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r1, [r5, #26]
	strh r1, [r0, #6]
	ldrh r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r1, [r5, #28]
	strh r1, [r0, #14]
	b _08041A30
	.byte 0x00
	.byte 0x00
_08041A04:
	.4byte gOamBuffer
_08041A08:
	.4byte 0x000001FF
_08041A0C:
	.4byte 0xFFFFFE00
_08041A10:
	mov r0, #17
	neg r0, r0
	and r2, r2, r0
	strb r2, [r4, #3]
	ldrh r1, [r6]
	lsl r1, r1, #1
	add r1, r1, r12
	ldrh r0, [r5, #26]
	neg r0, r0
	strh r0, [r1, #6]
	ldrh r1, [r6]
	lsl r1, r1, #1
	add r1, r1, r12
	ldrh r0, [r5, #28]
	neg r0, r0
	strh r0, [r1, #14]
_08041A30:
	mov r0, r12
	add r2, r3, r0
	ldrb r1, [r2, #3]
	lsl r0, r1, #26
	cmp r0, #0
	bge _08041AE4
	b _08041AFA
_08041A3E:
	mov r0, #32
	and r1, r1, r0
	cmp r1, #0
	beq _08041B20
	ldr r7, _08041AAC  @ =gOamBuffer
	lsl r3, r3, #3
	add r4, r3, r7
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	mov r0, #24
	ldrsb r0, [r5, r0]
	add r1, r1, r0
	ldr r0, _08041AB0  @ =0x000001FF
	mov r12, r0
	mov r0, r12
	and r1, r1, r0
	ldr r0, _08041AB4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	ldrb r0, [r5, #25]
	ldrb r1, [r4]
	add r0, r0, r1
	strb r0, [r4]
	ldrh r0, [r6]
	lsr r0, r0, #4
	mov r1, #7
	and r0, r0, r1
	lsl r0, r0, #1
	ldrb r1, [r4, #3]
	mov r2, #15
	neg r2, r2
	and r2, r2, r1
	orr r2, r2, r0
	strb r2, [r4, #3]
	ldrb r0, [r4, #1]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r4, #1]
	lsl r0, r2, #27
	mov r12, r7
	cmp r0, #0
	blt _08041AB8
	ldrh r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r7
	ldrh r1, [r5, #26]
	strh r1, [r0, #6]
	ldrh r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r7
	ldrh r1, [r5, #28]
	strh r1, [r0, #14]
	b _08041AD8
_08041AAC:
	.4byte gOamBuffer
_08041AB0:
	.4byte 0x000001FF
_08041AB4:
	.4byte 0xFFFFFE00
_08041AB8:
	mov r0, #17
	neg r0, r0
	and r2, r2, r0
	strb r2, [r4, #3]
	ldrh r1, [r6]
	lsl r1, r1, #1
	add r1, r1, r7
	ldrh r0, [r5, #26]
	neg r0, r0
	strh r0, [r1, #6]
	ldrh r1, [r6]
	lsl r1, r1, #1
	add r1, r1, r7
	ldrh r0, [r5, #28]
	neg r0, r0
	strh r0, [r1, #14]
_08041AD8:
	mov r0, r12
	add r2, r3, r0
	ldrb r1, [r2, #3]
	lsl r0, r1, #26
	cmp r0, #0
	blt _08041AFA
_08041AE4:
	ldrh r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r7
	ldrh r1, [r5, #30]
	strh r1, [r0, #22]
	ldrh r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r7
	ldrh r1, [r5, #32]
	strh r1, [r0, #30]
	b _08041B1A
_08041AFA:
	mov r0, #33
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2, #3]
	ldrh r1, [r6]
	lsl r1, r1, #1
	add r1, r1, r7
	ldrh r0, [r5, #30]
	neg r0, r0
	strh r0, [r1, #22]
	ldrh r1, [r6]
	lsl r1, r1, #1
	add r1, r1, r7
	ldrh r0, [r5, #32]
	neg r0, r0
	strh r0, [r1, #30]
_08041B1A:
	ldrh r0, [r6]
	add r0, r0, #16
	strh r0, [r6]
_08041B20:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08041978

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08041B28
sub_08041B28: @ 0x08041B28
	push {r4,lr}
	mov r12, r0
	ldrb r1, [r0, #2]
	ldr r2, [r0, #76]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r0, #1]
	mov r0, r12
	add r0, r0, #44
	mov r3, #0
	strb r1, [r0]
	mov r0, r12
	ldr r2, [r0, #72]
	ldrb r0, [r2, #3]
	mov r1, r12
	strb r0, [r1, #3]
	ldrh r0, [r2, #4]
	strh r0, [r1, #50]
	lsl r0, r0, #16
	lsr r1, r0, #21
	mov r4, r12
	strh r1, [r4, #52]
	lsr r0, r0, #18
	strh r0, [r4, #54]
	ldrb r0, [r2, #16]
	mov r1, r12
	add r1, r1, #47
	strb r0, [r1]
	ldr r0, [r4, #72]
	ldr r0, [r0, #8]
	cmp r0, #0
	blt _08041B6E
	strh r3, [r4, #48]
_08041B6E:
	mov r1, r12
	ldr r0, [r1, #72]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	beq _08041B8A
	mov r2, r12
	add r2, r2, #67
	ldrb r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	strb r0, [r2]
_08041B8A:
	mov r2, r12
	ldr r0, [r2, #72]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	beq _08041BA4
	add r2, r2, #67
	ldrb r0, [r2]
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r2]
_08041BA4:
	mov r4, r12
	strh r3, [r4, #42]
	strh r3, [r4, #40]
	mov r0, #0
	strb r0, [r4, #2]
	ldr r1, [r4, #24]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldr r0, [r4, #76]
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r1, r0
	mov r3, r12
	add r3, r3, #66
	ldr r2, _08041BF4  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3]
	ldr r0, _08041BF8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3]
	ldr r1, [r4, #28]
	ldrb r2, [r4, #2]
	ldr r3, [r4, #76]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	asr r1, r1, #8
	ldrb r0, [r0, #3]
	add r1, r1, r0
	mov r0, r12
	add r0, r0, #64
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08041BF4:
	.4byte 0x000001FF
_08041BF8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08041B28

	THUMB_FUNC_START sub_08041BFC
sub_08041BFC: @ 0x08041BFC
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r3, [r5, #72]
	ldr r4, _08041C78  @ =0x0000FFFF
	ldrb r1, [r5, #12]
	mov r7, #1
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08041C18
	mov r4, #0
	ldr r0, [r3, #36]
	ldrh r2, [r0, #2]
_08041C18:
	lsl r0, r4, #16
	asr r1, r0, #16
	cmp r1, #0
	blt _08041C8E
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r4, [r3, #36]
	add r4, r4, r0
	lsl r2, r2, #16
	asr r2, r2, #16
	add r0, r5, #0
	add r1, r4, #0
	bl sub_08041C98
	ldr r0, [r4, #28]
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08041C84
	add r0, r5, #0
	add r0, r0, #45
	ldrb r2, [r0]
	cmp r2, #4
	bhi _08041C8A
	ldr r4, _08041C7C  @ =0x03000330
	ldr r0, [r4]
	mov r1, #92
	add r3, r2, #0
	mul r3, r1, r3
	add r0, r3, r0
	add r2, r0, #0
	add r2, r2, #88
	ldrb r0, [r2]
	cmp r0, #1
	bne _08041C8A
	mov r1, #0
	strb r1, [r2]
	ldr r0, [r4]
	add r0, r3, r0
	add r0, r0, #89
	strb r1, [r0]
	ldr r1, _08041C80  @ =0x03000334
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	b _08041C8A
	.byte 0x00
	.byte 0x00
_08041C78:
	.4byte 0x0000FFFF
_08041C7C:
	.4byte 0x03000330
_08041C80:
	.4byte 0x03000334
_08041C84:
	add r0, r6, #0
	add r0, r0, #89
	strb r7, [r0]
_08041C8A:
	mov r0, #1
	b _08041C90
_08041C8E:
	mov r0, #0
_08041C90:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08041BFC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08041C98
sub_08041C98: @ 0x08041C98
	push {r4-r7,lr}
	add r3, r0, #0
	add r5, r1, #0
	lsl r2, r2, #16
	lsr r2, r2, #16
	add r7, r2, #0
	ldr r6, _08041D04  @ =gUnknown_08707E30
	ldrh r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldrh r1, [r0, #10]
	lsl r0, r7, #16
	asr r4, r0, #16
	cmp r1, r4
	bgt _08041CBC
	b _08041ECC
_08041CBC:
	ldr r0, [r5, #28]
	mov r1, #128
	lsl r1, r1, #23
	and r0, r0, r1
	cmp r0, #0
	beq _08041CD4
	ldr r0, _08041D08  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #8
	orr r1, r1, r2
	str r1, [r0]
_08041CD4:
	ldrh r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	lsl r1, r4, #1
	add r1, r1, r4
	lsl r1, r1, #3
	ldr r0, [r0]
	add r6, r0, r1
	strh r7, [r3, #4]
	ldr r1, [r5, #28]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08041D40
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08041D0C
	ldr r0, [r3, #16]
	str r0, [r3, #24]
	ldr r0, [r3, #20]
	b _08041D3E
_08041D04:
	.4byte gUnknown_08707E30
_08041D08:
	.4byte gUnknown_03001A1C
_08041D0C:
	mov r0, #128
	lsl r0, r0, #15
	and r1, r1, r0
	cmp r1, #0
	beq _08041D34
	mov r0, #22
	ldrsh r1, [r5, r0]
	ldr r0, [r3, #24]
	add r0, r0, r1
	str r0, [r3, #24]
	mov r0, #24
	ldrsh r1, [r5, r0]
	ldr r0, [r3, #28]
	add r0, r0, r1
	ldr r1, _08041D30  @ =0xFFFFFF00
	and r0, r0, r1
	b _08041D3E
	.byte 0x00
	.byte 0x00
_08041D30:
	.4byte 0xFFFFFF00
_08041D34:
	mov r1, #22
	ldrsh r0, [r5, r1]
	str r0, [r3, #24]
	mov r1, #24
	ldrsh r0, [r5, r1]
_08041D3E:
	str r0, [r3, #28]
_08041D40:
	ldr r0, [r6, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r3, #64]
	str r1, [r3, #68]
	ldr r1, [r3, #24]
	add r4, r3, #0
	add r4, r4, #66
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08041DF8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r3, #28]
	asr r0, r0, #8
	add r1, r3, #0
	add r1, r1, #64
	strb r0, [r1]
	ldr r0, [r6, #4]
	str r0, [r3, #76]
	ldr r0, [r6, #12]
	str r0, [r3, #84]
	ldr r0, [r6, #8]
	str r0, [r3, #80]
	ldr r0, [r6]
	str r0, [r3, #72]
	ldr r0, [r5, #28]
	mov r4, #128
	lsl r4, r4, #9
	and r0, r0, r4
	cmp r0, #0
	beq _08041D90
	ldr r0, _08041DFC  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #6
	orr r1, r1, r2
	str r1, [r0]
_08041D90:
	ldr r0, [r5, #28]
	mov r2, #128
	lsl r2, r2, #10
	and r0, r0, r2
	cmp r0, #0
	beq _08041DA4
	ldr r1, _08041DFC  @ =gUnknown_03001A1C
	ldr r0, [r1]
	orr r0, r0, r4
	str r0, [r1]
_08041DA4:
	ldr r0, [r5, #28]
	mov r4, #128
	lsl r4, r4, #11
	and r0, r0, r4
	cmp r0, #0
	beq _08041DB8
	ldr r1, _08041DFC  @ =gUnknown_03001A1C
	ldr r0, [r1]
	orr r0, r0, r2
	str r0, [r1]
_08041DB8:
	ldr r0, [r5, #28]
	mov r1, #128
	lsl r1, r1, #12
	and r0, r0, r1
	cmp r0, #0
	beq _08041DCC
	ldr r1, _08041DFC  @ =gUnknown_03001A1C
	ldr r0, [r1]
	orr r0, r0, r4
	str r0, [r1]
_08041DCC:
	ldr r1, [r5, #28]
	mov r0, #128
	lsl r0, r0, #6
	and r0, r0, r1
	cmp r0, #0
	beq _08041E08
	ldr r2, _08041DFC  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #5
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _08041E00  @ =0x03001968
	add r0, r3, #0
	add r0, r0, #45
	ldrb r0, [r0]
	str r0, [r1]
	ldr r1, _08041E04  @ =0x03001A60
	mov r0, #50
	strb r0, [r1]
	b _08041E3A
	.byte 0x00
	.byte 0x00
_08041DF8:
	.4byte 0xFFFFFE00
_08041DFC:
	.4byte gUnknown_03001A1C
_08041E00:
	.4byte 0x03001968
_08041E04:
	.4byte 0x03001A60
_08041E08:
	mov r2, #128
	lsl r2, r2, #7
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08041E24
	ldr r1, _08041E20  @ =gUnknown_03001A1C
	ldr r0, [r1]
	orr r0, r0, r2
	str r0, [r1]
	b _08041E3A
	.byte 0x00
	.byte 0x00
_08041E20:
	.4byte gUnknown_03001A1C
_08041E24:
	mov r0, #128
	lsl r0, r0, #8
	and r1, r1, r0
	cmp r1, #0
	beq _08041E3A
	ldr r0, _08041E78  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #4
	orr r1, r1, r2
	str r1, [r0]
_08041E3A:
	ldr r0, [r5, #28]
	add r5, r0, #0
	cmp r5, #0
	bge _08041E4A
	ldr r0, [r3, #56]
	ldr r1, _08041E7C  @ =0xFDFFFFFF
	and r0, r0, r1
	str r0, [r3, #56]
_08041E4A:
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r5
	cmp r0, #0
	bne _08041E62
	ldr r0, [r6]
	ldr r4, [r0, #8]
	mov r0, #128
	lsl r0, r0, #23
	and r4, r4, r0
	cmp r4, #0
	beq _08041E80
_08041E62:
	mov r0, #128
	lsl r0, r0, #19
	and r0, r0, r5
	cmp r0, #0
	bne _08041EB0
	ldr r0, [r3, #56]
	mov r1, #128
	lsl r1, r1, #23
	orr r0, r0, r1
	str r0, [r3, #56]
	b _08041EB0
_08041E78:
	.4byte gUnknown_03001A1C
_08041E7C:
	.4byte 0xFDFFFFFF
_08041E80:
	ldr r2, [r3, #56]
	add r1, r2, #0
	and r1, r1, r0
	cmp r1, #0
	beq _08041EA8
	ldrb r0, [r3, #2]
	add r0, r0, #1
	strb r0, [r3, #2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r3, #3]
	cmp r0, r1
	bcc _08041E9C
	strb r4, [r3, #2]
_08041E9C:
	ldr r0, _08041EA4  @ =0xBFFFFFFF
	and r2, r2, r0
	str r2, [r3, #56]
	b _08041EB0
_08041EA4:
	.4byte 0xBFFFFFFF
_08041EA8:
	ldr r0, _08041ED4  @ =0xBFFFFFFF
	and r2, r2, r0
	str r2, [r3, #56]
	strb r1, [r3, #2]
_08041EB0:
	mov r0, #128
	lsl r0, r0, #18
	and r0, r0, r5
	cmp r0, #0
	beq _08041EBE
	ldrh r0, [r3, #8]
	add r0, r0, #1
_08041EBE:
	strh r0, [r3, #8]
	mov r0, #0
	str r0, [r3, #60]
	add r0, r3, #0
	add r1, r6, #0
	bl sub_08041B28
_08041ECC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08041ED4:
	.4byte 0xBFFFFFFF
	THUMB_FUNC_END sub_08041C98

	THUMB_FUNC_START sub_08041ED8
sub_08041ED8: @ 0x08041ED8
	push {r4,lr}
	ldr r4, _08041EEC  @ =0x03000330
	mov r0, #230
	lsl r0, r0, #1
	bl arena_allocate
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
_08041EEC:
	.4byte 0x03000330
	THUMB_FUNC_END sub_08041ED8

	THUMB_FUNC_START sub_08041EF0
sub_08041EF0: @ 0x08041EF0
	push {r4-r6,lr}
	mov r2, #0
	ldr r6, _08041F24  @ =0x03000334
	ldr r4, _08041F28  @ =0x03000330
	mov r5, #92
	mov r3, #0
_08041EFC:
	ldr r0, [r4]
	add r1, r2, #0
	mul r1, r5, r1
	add r0, r1, r0
	add r0, r0, #88
	strb r3, [r0]
	ldr r0, [r4]
	add r1, r1, r0
	add r1, r1, #89
	strb r3, [r1]
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #4
	bls _08041EFC
	mov r0, #0
	strb r0, [r6]
	pop {r4-r6}
	pop {r0}
	bx r0
_08041F24:
	.4byte 0x03000334
_08041F28:
	.4byte 0x03000330
	THUMB_FUNC_END sub_08041EF0

	THUMB_FUNC_START sub_08041F2C
sub_08041F2C: @ 0x08041F2C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #4
	bhi _08041F60
	ldr r4, _08041F68  @ =0x03000330
	ldr r0, [r4]
	mov r1, #92
	add r3, r2, #0
	mul r3, r1, r3
	add r0, r3, r0
	add r2, r0, #0
	add r2, r2, #88
	ldrb r0, [r2]
	cmp r0, #1
	bne _08041F60
	mov r1, #0
	strb r1, [r2]
	ldr r0, [r4]
	add r0, r3, r0
	add r0, r0, #89
	strb r1, [r0]
	ldr r1, _08041F6C  @ =0x03000334
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_08041F60:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08041F68:
	.4byte 0x03000330
_08041F6C:
	.4byte 0x03000334
	THUMB_FUNC_END sub_08041F2C

	THUMB_FUNC_START sub_08041F70
sub_08041F70: @ 0x08041F70
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	ldr r0, _08041F98  @ =0x03001A70
	mov r2, #21
	ldrsb r2, [r0, r2]
	add r7, r0, #0
	cmp r2, #1
	beq _08041F88
	b _0804217A
_08041F88:
	ldr r0, _08041F9C  @ =gUnknown_03001A00
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041FA0
	add r1, r7, #0
	add r1, r1, #42
	mov r0, #12
	b _08042178
_08041F98:
	.4byte 0x03001A70
_08041F9C:
	.4byte gUnknown_03001A00
_08041FA0:
	ldr r1, [r7, #16]
	cmp r1, #13
	ble _08041FE0
	cmp r1, #240
	bgt _08041FEE
	ldr r3, _08041FDC  @ =gUnknown_080B521C
	mov r0, #240
	sub r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041FE2
	strb r2, [r7, #24]
	mov r0, #239
	sub r0, r0, r1
	add r0, r0, r3
	ldrb r1, [r0]
	cmp r1, #0
	bne _08041FF0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08041FF0
_08041FDC:
	.4byte gUnknown_080B521C
_08041FE0:
	mov r0, #0
_08041FE2:
	strb r0, [r7, #24]
	add r1, r7, #0
	add r1, r1, #42
	mov r0, #12
	strb r0, [r1]
	b _08041FF0
_08041FEE:
	strb r2, [r7, #24]
_08041FF0:
	ldr r0, _08042058  @ =0x03001960
	ldr r4, [r0]
	ldr r0, [r4, #100]
	mov r1, #6
	ldrsh r3, [r0, r1]
	mov r6, #4
	ldrsh r5, [r0, r6]
	sub r3, r3, r5
	asr r3, r3, #8
	mov r1, #2
	ldrsh r2, [r0, r1]
	mov r6, #0
	ldrsh r1, [r0, r6]
	sub r2, r2, r1
	asr r2, r2, #8
	ldr r0, [r4, #36]
	add r0, r0, r1
	asr r0, r0, #8
	ldr r1, _0804205C  @ =gUnknown_030012F4
	mov r6, #0
	ldrsh r1, [r1, r6]
	sub r6, r0, r1
	ldr r0, [r4, #32]
	add r0, r0, r5
	asr r0, r0, #8
	ldr r1, _08042060  @ =gSpriteHorizontalOffset
	mov r4, #0
	ldrsh r1, [r1, r4]
	sub r5, r0, r1
	add r2, r2, r6
	mov r8, r2
	add r3, r3, r5
	mov r9, r3
	ldr r0, _08042064  @ =gUnknown_03001A38
	ldrb r0, [r0]
	ldr r7, _08042068  @ =0x03001A70
	cmp r0, #0
	bne _08042046
	ldr r0, _0804206C  @ =gUnknown_03001748
	ldrh r1, [r0]
	ldr r0, [r7, #16]
	sub r0, r0, r1
	str r0, [r7, #16]
_08042046:
	ldr r1, [r7, #16]
	cmp r1, #0
	bgt _08042070
	mov r0, #0
	strb r0, [r7, #21]
	strb r0, [r7, #23]
	strb r0, [r7, #24]
	b _0804217A
	.byte 0x00
	.byte 0x00
_08042058:
	.4byte 0x03001960
_0804205C:
	.4byte gUnknown_030012F4
_08042060:
	.4byte gSpriteHorizontalOffset
_08042064:
	.4byte gUnknown_03001A38
_08042068:
	.4byte 0x03001A70
_0804206C:
	.4byte gUnknown_03001748
_08042070:
	lsl r0, r1, #4
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r1
	lsl r0, r0, #2
	asr r0, r0, #16
	add r4, r0, #1
	mov r0, #20
	ldrsb r0, [r7, r0]
	cmp r4, r0
	beq _080420D6
	cmp r1, #240
	ble _080420A0
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080420A0:
	strb r4, [r7, #20]
	mov r1, #20
	ldrsb r1, [r7, r1]
	ldr r0, _08042100  @ =0x0000199A
	mul r0, r1, r0
	asr r3, r0, #16
	add r2, r7, #0
	add r2, r2, #41
	strb r3, [r2]
	ldrb r1, [r2]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	ldrb r1, [r7, #20]
	sub r1, r1, r0
	add r4, r7, #0
	add r4, r4, #40
	strb r1, [r4]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #9
	bls _080420D6
	add r0, r3, #1
	strb r0, [r2]
	add r0, r1, #0
	sub r0, r0, #10
	strb r0, [r4]
_080420D6:
	add r0, r5, #0
	add r0, r0, #16
	str r0, [r7, #8]
	add r1, r6, #0
	sub r1, r1, #8
	str r1, [r7, #12]
	sub r0, r0, #8
	str r0, [r7]
	str r1, [r7, #4]
	mov r2, #0
	strb r2, [r7, #23]
	cmp r1, #15
	bgt _0804210C
	mov r6, r8
	cmp r6, #0
	bge _08042104
	mov r0, #8
	strb r0, [r7, #23]
	str r2, [r7, #4]
	b _08042108
	.byte 0x00
	.byte 0x00
_08042100:
	.4byte 0x0000199A
_08042104:
	mov r0, #16
	str r0, [r7, #4]
_08042108:
	mov r0, #16
	b _08042122
_0804210C:
	cmp r1, #128
	ble _08042124
	cmp r6, #160
	ble _0804211C
	mov r0, #4
	strb r0, [r7, #23]
	mov r0, #144
	b _0804211E
_0804211C:
	mov r0, #128
_0804211E:
	str r0, [r7, #4]
	mov r0, #128
_08042122:
	str r0, [r7, #12]
_08042124:
	ldr r0, [r7, #8]
	cmp r0, #23
	bgt _08042146
	ldrb r1, [r7, #23]
	cmp r1, #0
	bne _0804213E
	mov r0, r9
	cmp r0, #0
	bge _0804213E
	mov r0, #1
	strb r0, [r7, #23]
	str r1, [r7]
	b _08042142
_0804213E:
	mov r0, #16
	str r0, [r7]
_08042142:
	mov r0, #24
	b _08042162
_08042146:
	cmp r0, #216
	ble _08042164
	ldrb r0, [r7, #23]
	cmp r0, #0
	bne _0804215C
	cmp r5, #240
	ble _0804215C
	mov r0, #2
	strb r0, [r7, #23]
	mov r0, #224
	b _0804215E
_0804215C:
	mov r0, #208
_0804215E:
	str r0, [r7]
	mov r0, #216
_08042162:
	str r0, [r7, #8]
_08042164:
	add r1, r7, #0
	add r1, r1, #42
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #31
	bls _0804217A
	mov r0, #0
_08042178:
	strb r0, [r1]
_0804217A:
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08041F70

	THUMB_FUNC_START sub_08042188
sub_08042188: @ 0x08042188
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	ldr r1, _080421C4  @ =0x03001A70
	ldrb r0, [r1, #24]
	mov r12, r1
	cmp r0, #1
	beq _080421A0
	b _080424A6
_080421A0:
	ldrb r0, [r1, #23]
	cmp r0, #0
	bne _080421A8
	b _080422FA
_080421A8:
	mov r0, r12
	add r0, r0, #42
	ldrb r0, [r0]
	cmp r0, #11
	bhi _080421B4
	b _080422FA
_080421B4:
	ldrb r0, [r1, #23]
	cmp r0, #2
	beq _08042204
	cmp r0, #2
	bgt _080421C8
	cmp r0, #1
	beq _080421D2
	b _080422B6
_080421C4:
	.4byte 0x03001A70
_080421C8:
	cmp r0, #4
	beq _08042288
	cmp r0, #8
	beq _08042238
	b _080422B6
_080421D2:
	ldr r1, _080421F4  @ =REG_DMA3SAD
	ldr r0, _080421F8  @ =gUnknown_082E6760
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _080421FC  @ =gOamBuffer
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _08042200  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r2
	mov r3, r12
	ldr r2, [r3, #36]
	b _080422A8
_080421F4:
	.4byte REG_DMA3SAD
_080421F8:
	.4byte gUnknown_082E6760
_080421FC:
	.4byte gOamBuffer
_08042200:
	.4byte 0x84000002
_08042204:
	ldr r1, _08042228  @ =REG_DMA3SAD
	ldr r0, _0804222C  @ =gUnknown_082E6760
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _08042230  @ =gOamBuffer
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _08042234  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _08042230  @ =gOamBuffer
	add r2, r2, r3
	mov r0, r12
	ldr r1, [r0, #36]
	b _0804225A
_08042228:
	.4byte REG_DMA3SAD
_0804222C:
	.4byte gUnknown_082E6760
_08042230:
	.4byte gOamBuffer
_08042234:
	.4byte 0x84000002
_08042238:
	ldr r1, _08042270  @ =REG_DMA3SAD
	ldr r0, _08042274  @ =gUnknown_082E8190
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _08042278  @ =gOamBuffer
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0804227C  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _08042278  @ =gOamBuffer
	add r2, r2, r3
	mov r0, r12
	ldr r1, [r0, #32]
_0804225A:
	add r1, r1, #4
	ldr r3, _08042280  @ =0x000003FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08042284  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	b _080422B6
	.byte 0x00
	.byte 0x00
_08042270:
	.4byte REG_DMA3SAD
_08042274:
	.4byte gUnknown_082E8190
_08042278:
	.4byte gOamBuffer
_0804227C:
	.4byte 0x84000002
_08042280:
	.4byte 0x000003FF
_08042284:
	.4byte 0xFFFFFC00
_08042288:
	ldr r1, _080423FC  @ =REG_DMA3SAD
	ldr r0, _08042400  @ =gUnknown_082E8190
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _08042404  @ =gOamBuffer
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _08042408  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r2
	mov r3, r12
	ldr r2, [r3, #32]
_080422A8:
	ldr r0, _0804240C  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _08042410  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
_080422B6:
	ldrh r1, [r7]
	lsl r1, r1, #3
	ldr r0, _08042404  @ =gOamBuffer
	add r1, r1, r0
	mov r3, r12
	ldr r2, [r3]
	ldr r3, _08042414  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08042418  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _08042404  @ =gOamBuffer
	add r0, r0, r1
	mov r2, r12
	ldr r1, [r2, #4]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _08042404  @ =gOamBuffer
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #144
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_080422FA:
	mov r3, r12
	add r3, r3, #41
	ldrb r0, [r3]
	cmp r0, #0
	bne _08042306
	b _08042424
_08042306:
	ldr r6, _080423FC  @ =REG_DMA3SAD
	ldr r0, _0804241C  @ =gUnknown_082EC748
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _08042404  @ =gOamBuffer
	add r0, r0, r1
	str r0, [r6, #4]
	ldr r2, _08042408  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r1
	ldr r0, _08042420  @ =gUnknown_03001B30
	mov r10, r0
	ldr r1, [r0, #4]
	ldrb r0, [r3]
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r3, _0804240C  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	ldr r5, _08042410  @ =0xFFFFFC00
	add r0, r5, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r0, _08042404  @ =gOamBuffer
	add r2, r2, r0
	mov r3, r12
	ldr r1, [r3, #8]
	sub r1, r1, #8
	ldr r0, _08042414  @ =0x000001FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r4, _08042418  @ =0xFFFFFE00
	add r0, r4, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _08042404  @ =gOamBuffer
	add r0, r0, r1
	mov r2, r12
	ldr r1, [r2, #12]
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	ldr r3, _08042404  @ =gOamBuffer
	add r1, r1, r3
	ldrb r2, [r1, #5]
	mov r3, #15
	add r0, r3, #0
	and r0, r0, r2
	mov r2, #96
	mov r8, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _0804241C  @ =gUnknown_082EC748
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _08042404  @ =gOamBuffer
	add r0, r0, r1
	str r0, [r6, #4]
	ldr r2, _08042408  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r1
	mov r0, r10
	ldr r1, [r0, #4]
	mov r0, r12
	add r0, r0, #40
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, _0804240C  @ =0x000003FF
	and r1, r1, r0
	ldrh r0, [r2, #4]
	and r5, r5, r0
	orr r5, r5, r1
	strh r5, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	ldr r2, _08042404  @ =gOamBuffer
	add r1, r1, r2
	mov r2, r12
	ldr r0, [r2, #8]
	mov r2, r9
	and r0, r0, r2
	ldrh r2, [r1, #2]
	and r4, r4, r2
	orr r4, r4, r0
	strh r4, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _08042404  @ =gOamBuffer
	add r0, r0, r1
	mov r2, r12
	ldr r1, [r2, #12]
	strb r1, [r0]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _08042404  @ =gOamBuffer
	add r0, r0, r1
	ldrb r1, [r0, #5]
	and r3, r3, r1
	mov r2, r8
	orr r3, r3, r2
	strb r3, [r0, #5]
	b _080424A0
_080423FC:
	.4byte REG_DMA3SAD
_08042400:
	.4byte gUnknown_082E8190
_08042404:
	.4byte gOamBuffer
_08042408:
	.4byte 0x84000002
_0804240C:
	.4byte 0x000003FF
_08042410:
	.4byte 0xFFFFFC00
_08042414:
	.4byte 0x000001FF
_08042418:
	.4byte 0xFFFFFE00
_0804241C:
	.4byte gUnknown_082EC748
_08042420:
	.4byte gUnknown_03001B30
_08042424:
	ldr r1, _080424B4  @ =REG_DMA3SAD
	ldr r0, _080424B8  @ =gUnknown_082EC748
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _080424BC  @ =gOamBuffer
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _080424C0  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r3, [r7]
	lsl r3, r3, #3
	ldr r0, _080424BC  @ =gOamBuffer
	add r3, r3, r0
	ldr r0, _080424C4  @ =gUnknown_03001B30
	ldr r1, [r0, #4]
	mov r0, r12
	add r0, r0, #40
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r2, _080424C8  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _080424CC  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _080424BC  @ =gOamBuffer
	add r2, r2, r3
	mov r0, r12
	ldr r1, [r0, #8]
	sub r1, r1, #4
	ldr r3, _080424D0  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _080424D4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _080424BC  @ =gOamBuffer
	add r0, r0, r1
	mov r2, r12
	ldr r1, [r2, #12]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _080424BC  @ =gOamBuffer
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
_080424A0:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_080424A6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080424B4:
	.4byte REG_DMA3SAD
_080424B8:
	.4byte gUnknown_082EC748
_080424BC:
	.4byte gOamBuffer
_080424C0:
	.4byte 0x84000002
_080424C4:
	.4byte gUnknown_03001B30
_080424C8:
	.4byte 0x000003FF
_080424CC:
	.4byte 0xFFFFFC00
_080424D0:
	.4byte 0x000001FF
_080424D4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08042188

	THUMB_FUNC_START sub_080424D8
sub_080424D8: @ 0x080424D8
	push {r4,r5,lr}
	ldr r4, _080424F4  @ =0x03001A70
	str r0, [r4, #16]
	mov r5, #0
	strb r5, [r4, #20]
	mov r0, #1
	strb r0, [r4, #21]
	bl sub_08041F70
	add r4, r4, #42
	strb r5, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
_080424F4:
	.4byte 0x03001A70
	THUMB_FUNC_END sub_080424D8

	THUMB_FUNC_START sub_080424F8
sub_080424F8: @ 0x080424F8
	ldr r1, _08042504  @ =0x03001A70
	mov r0, #0
	strb r0, [r1, #21]
	strb r0, [r1, #23]
	strb r0, [r1, #24]
	bx lr
_08042504:
	.4byte 0x03001A70
	THUMB_FUNC_END sub_080424F8

	THUMB_FUNC_START sub_08042508
sub_08042508: @ 0x08042508
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	ldr r5, _08042568  @ =0x03001A70
	ldrh r2, [r0]
	str r2, [r5, #36]
	ldr r3, _0804256C  @ =REG_DMA3SAD
	ldr r2, _08042570  @ =gUnknown_082E6768
	str r2, [r3]
	ldrh r2, [r1]
	ldr r4, _08042574  @ =OBJ_VRAM0
	mov r9, r4
	add r2, r2, r9
	str r2, [r3, #4]
	ldr r2, _08042578  @ =0x84000040
	mov r8, r2
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	ldrh r4, [r0]
	add r4, r4, #8
	lsl r2, r4, #16
	lsr r2, r2, #16
	str r2, [r5, #32]
	mov r2, #128
	lsl r2, r2, #1
	add r6, r2, #0
	ldrh r2, [r1]
	add r5, r6, r2
	strh r5, [r1]
	ldr r2, _0804257C  @ =gUnknown_082E8198
	str r2, [r3]
	ldrh r2, [r1]
	add r2, r2, r9
	str r2, [r3, #4]
	mov r2, r8
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	add r4, r4, #8
	strh r4, [r0]
	add r5, r5, r6
	strh r5, [r1]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
_08042568:
	.4byte 0x03001A70
_0804256C:
	.4byte REG_DMA3SAD
_08042570:
	.4byte gUnknown_082E6768
_08042574:
	.4byte OBJ_VRAM0
_08042578:
	.4byte 0x84000040
_0804257C:
	.4byte gUnknown_082E8198
	THUMB_FUNC_END sub_08042508

	THUMB_FUNC_START sub_08042580
sub_08042580: @ 0x08042580
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r7, r0, #0
	add r6, r1, #0
	ldr r2, _080425FC  @ =0x03001AA0
	add r0, r2, #0
	add r0, r0, #104
	mov r1, #0
	strb r1, [r0]
	sub r0, r0, #1
	strb r1, [r0]
	add r0, r0, #2
	strb r1, [r0]
	add r0, r0, #11
	strb r1, [r0]
	add r1, r2, #0
	add r1, r1, #118
	mov r0, #120
	strh r0, [r1]
	mov r12, r2
	ldr r2, _08042600  @ =gUnknown_082F0A68
	ldr r0, _08042604  @ =gUnknown_082F0B38
	mov r8, r0
	ldrh r0, [r7]
	mov r1, r12
	str r0, [r1, #112]
	ldr r1, _08042608  @ =REG_DMA3SAD
	str r2, [r1]
	ldrh r0, [r6]
	ldr r5, _0804260C  @ =OBJ_VRAM0
	add r0, r0, r5
	str r0, [r1, #4]
	ldr r4, _08042610  @ =0x84000020
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r3, [r7]
	add r3, r3, #4
	lsl r0, r3, #16
	lsr r0, r0, #16
	mov r2, r12
	str r0, [r2, #108]
	ldrh r2, [r6]
	add r2, r2, #128
	strh r2, [r6]
	mov r0, r8
	str r0, [r1]
	ldrh r0, [r6]
	add r0, r0, r5
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	add r3, r3, #4
	strh r3, [r7]
	add r2, r2, #128
	strh r2, [r6]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080425FC:
	.4byte 0x03001AA0
_08042600:
	.4byte gUnknown_082F0A68
_08042604:
	.4byte gUnknown_082F0B38
_08042608:
	.4byte REG_DMA3SAD
_0804260C:
	.4byte OBJ_VRAM0
_08042610:
	.4byte 0x84000020
	THUMB_FUNC_END sub_08042580

	THUMB_FUNC_START sub_08042614
sub_08042614: @ 0x08042614
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	ldr r1, _0804270C  @ =0x03001AA0
	ldr r0, _08042710  @ =gMiniMariosAliveInLevel_03001BC8
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, r2, #105
	strb r0, [r2]
	lsl r0, r0, #24
	mov r7, #0
	mov r8, r1
	ldr r5, _08042714  @ =gUnknown_03001B90
	cmp r0, #0
	beq _08042650
	mov r4, r8
	add r4, r4, #97
	mov r3, #0
	add r1, r2, #0
_08042640:
	add r0, r7, r4
	strb r3, [r0]
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldrb r0, [r1]
	cmp r7, r0
	bcc _08042640
_08042650:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08042658
	b _08042910
_08042658:
	mov r7, #0
	mov r0, r8
	add r0, r0, #105
	ldrb r0, [r0]
	cmp r7, r0
	bcc _08042666
	b _080427EC
_08042666:
	mov r1, #97
	add r1, r1, r8
	mov r10, r1
	mov r2, r8
	str r2, [sp, #16]
	mov r3, r8
	str r3, [sp, #12]
_08042674:
	lsl r0, r7, #2
	ldr r2, _08042718  @ =gUnknown_03001BB0
	add r1, r0, r2
	ldr r5, [r1]
	mov r3, #4
	ldrsh r1, [r5, r3]
	add r6, r0, #0
	cmp r1, #40
	bne _08042688
	b _080427DA
_08042688:
	ldr r0, [r5, #100]
	mov r1, #6
	ldrsh r3, [r0, r1]
	mov r2, #4
	ldrsh r4, [r0, r2]
	sub r3, r3, r4
	asr r3, r3, #8
	mov r9, r3
	mov r3, #2
	ldrsh r2, [r0, r3]
	mov r3, #0
	ldrsh r1, [r0, r3]
	sub r2, r2, r1
	asr r2, r2, #8
	str r2, [sp, #20]
	ldr r0, [r5, #36]
	add r0, r0, r1
	asr r0, r0, #8
	ldr r2, _0804271C  @ =gUnknown_030012F4
	mov r3, #0
	ldrsh r1, [r2, r3]
	sub r0, r0, r1
	mov r12, r0
	ldr r0, [r5, #32]
	add r0, r0, r4
	asr r0, r0, #8
	ldr r2, _08042720  @ =gSpriteHorizontalOffset
	mov r3, #0
	ldrsh r1, [r2, r3]
	sub r4, r0, r1
	ldr r5, [sp, #20]
	add r5, r5, r12
	add r9, r9, r4
	ldr r0, [sp, #12]
	add r2, r6, r0
	ldr r3, _08042724  @ =0x03001AD0
	add r1, r6, r3
	add r0, r4, #4
	str r0, [r1]
	str r0, [r2]
	ldr r0, _08042728  @ =0x03001AB8
	add r3, r6, r0
	ldr r0, _0804272C  @ =0x03001AE8
	add r1, r6, r0
	mov r0, r12
	add r0, r0, #2
	str r0, [r1]
	str r0, [r3]
	ldr r0, [r2]
	sub r0, r0, #8
	str r0, [r2]
	ldr r0, [r3]
	sub r0, r0, #4
	str r0, [r3]
	ldr r1, [r1]
	cmp r1, #7
	bgt _08042744
	cmp r5, #0
	bge _08042730
	mov r1, r10
	add r0, r7, r1
	mov r2, #8
	strb r2, [r0]
	mov r0, #0
	b _08042732
	.byte 0x00
	.byte 0x00
_0804270C:
	.4byte 0x03001AA0
_08042710:
	.4byte gMiniMariosAliveInLevel_03001BC8
_08042714:
	.4byte gUnknown_03001B90
_08042718:
	.4byte gUnknown_03001BB0
_0804271C:
	.4byte gUnknown_030012F4
_08042720:
	.4byte gSpriteHorizontalOffset
_08042724:
	.4byte 0x03001AD0
_08042728:
	.4byte 0x03001AB8
_0804272C:
	.4byte 0x03001AE8
_08042730:
	mov r0, #4
_08042732:
	str r0, [r3]
	ldr r1, _08042740  @ =0x03001AE8
	add r0, r6, r1
	mov r2, #8
	str r2, [r0]
	b _08042766
	.byte 0x00
	.byte 0x00
_08042740:
	.4byte 0x03001AE8
_08042744:
	cmp r1, #144
	ble _08042766
	mov r0, r12
	cmp r0, #160
	ble _0804275A
	mov r1, r10
	add r0, r7, r1
	mov r1, #4
	strb r1, [r0]
	mov r0, #152
	b _0804275C
_0804275A:
	mov r0, #140
_0804275C:
	str r0, [r3]
	ldr r2, _0804278C  @ =0x03001AE8
	add r1, r6, r2
	mov r0, #144
	str r0, [r1]
_08042766:
	ldr r3, _08042790  @ =0x03001AD0
	add r0, r6, r3
	ldr r0, [r0]
	cmp r0, #7
	bgt _080427AC
	mov r0, r10
	add r2, r7, r0
	ldrb r1, [r2]
	cmp r1, #0
	bne _08042794
	mov r3, r9
	cmp r3, #0
	bge _08042794
	mov r0, #1
	strb r0, [r2]
	mov r2, r8
	add r0, r6, r2
	b _0804279A
	.byte 0x00
	.byte 0x00
_0804278C:
	.4byte 0x03001AE8
_08042790:
	.4byte 0x03001AD0
_08042794:
	ldr r3, [sp, #16]
	add r0, r6, r3
	mov r1, #0
_0804279A:
	str r1, [r0]
	ldr r2, _080427A8  @ =0x03001AD0
	add r0, r6, r2
	mov r3, #8
	str r3, [r0]
	b _080427DA
	.byte 0x00
	.byte 0x00
_080427A8:
	.4byte 0x03001AD0
_080427AC:
	cmp r0, #232
	ble _080427DA
	mov r0, r10
	add r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080427CA
	cmp r4, #240
	ble _080427CA
	mov r0, #2
	strb r0, [r1]
	mov r2, r8
	add r1, r6, r2
	mov r0, #232
	b _080427D0
_080427CA:
	ldr r3, [sp, #16]
	add r1, r6, r3
	mov r0, #224
_080427D0:
	str r0, [r1]
	ldr r0, _08042868  @ =0x03001AD0
	add r1, r6, r0
	mov r0, #232
	str r0, [r1]
_080427DA:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r0, r8
	add r0, r0, #105
	ldrb r0, [r0]
	cmp r7, r0
	bcs _080427EC
	b _08042674
_080427EC:
	mov r1, r8
	add r1, r1, #104
	ldrb r0, [r1]
	add r0, r0, #1
	mov r2, #0
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #11
	bls _08042802
	strb r2, [r1]
_08042802:
	mov r1, r8
	add r1, r1, #103
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #31
	bls _08042816
	strb r2, [r1]
_08042816:
	mov r5, #0
	mov r1, r8
	add r1, r1, #118
	ldrh r0, [r1]
	cmp r0, #119
	bhi _08042826
	add r0, r0, #1
	strh r0, [r1]
_08042826:
	mov r7, #0
	mov r0, r8
	add r0, r0, #105
	ldrb r0, [r0]
	cmp r5, r0
	bcs _08042858
	mov r3, r8
	add r3, r3, #97
	add r2, r0, #0
_08042838:
	add r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804284E
	mov r5, #1
	mov r1, r8
	add r1, r1, #116
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804284E
	strb r5, [r1]
_0804284E:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, r2
	bcc _08042838
_08042858:
	cmp r5, #0
	bne _0804286C
	mov r0, r8
	add r0, r0, #120
	strh r5, [r0]
	add r0, r0, #2
	strh r5, [r0]
	b _080428C4
_08042868:
	.4byte 0x03001AD0
_0804286C:
	mov r4, r8
	add r4, r4, #122
	ldr r2, _08042898  @ =gUnknown_082E6868
	mov r3, r8
	add r3, r3, #120
	ldrh r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrh r1, [r4]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _080428C0
	mov r1, #0
	strh r1, [r4]
	ldrh r0, [r3]
	cmp r0, #4
	bhi _0804289C
	add r0, r0, #1
	strh r0, [r3]
	b _0804289E
_08042898:
	.4byte gUnknown_082E6868
_0804289C:
	strh r1, [r3]
_0804289E:
	mov r0, r8
	add r0, r0, #120
	ldrh r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080428BC  @ =gUnknown_082E6948
	add r0, r0, r1
	mov r1, r8
	str r0, [r1, #124]
	b _080428C4
	.byte 0x00
	.byte 0x00
_080428BC:
	.4byte gUnknown_082E6948
_080428C0:
	add r0, r1, #1
	strh r0, [r4]
_080428C4:
	cmp r5, #0
	bne _080428D4
	mov r1, r8
	add r1, r1, #116
	ldrb r0, [r1]
	cmp r0, #0
	beq _08042910
	strb r5, [r1]
_080428D4:
	mov r5, r8
	add r5, r5, #116
	ldrb r0, [r5]
	cmp r0, #0
	beq _08042910
	bl sub_0804F1A4
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	beq _080428F0
	mov r0, #0
	strb r0, [r5]
	b _08042910
_080428F0:
	mov r5, r8
	add r5, r5, #118
	ldrh r0, [r5]
	cmp r0, #120
	bne _08042910
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #88
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	strh r4, [r5]
_08042910:
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08042614

	THUMB_FUNC_START sub_08042920
sub_08042920: @ 0x08042920
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	ldr r2, _080429C4  @ =0x03001AA0
	add r3, r2, #0
	add r3, r3, #105
	mov r0, #0
	mov r1, #1
	strb r1, [r3]
	mov r1, #97
	add r1, r1, r2
	mov r8, r1
	strb r0, [r1]
	ldr r0, _080429C8  @ =0x03001BD4
	ldr r7, [r0]
	mov r4, #4
	ldrsh r1, [r7, r4]
	add r5, r2, #0
	cmp r1, #1
	bgt _0804294C
	b _08042B42
_0804294C:
	ldr r0, _080429CC  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r12, r0
	mov r0, #144
	lsl r0, r0, #4
	mov r6, r12
	and r6, r6, r0
	mov r12, r6
	cmp r6, #0
	beq _08042962
	b _08042B42
_08042962:
	cmp r1, #51
	bne _08042968
	b _08042B42
_08042968:
	ldr r0, [r7, #100]
	mov r1, #6
	ldrsh r3, [r0, r1]
	mov r2, #4
	ldrsh r4, [r0, r2]
	sub r3, r3, r4
	asr r3, r3, #8
	mov r6, #2
	ldrsh r2, [r0, r6]
	mov r6, #0
	ldrsh r1, [r0, r6]
	sub r2, r2, r1
	asr r2, r2, #8
	ldr r0, [r7, #36]
	add r0, r0, r1
	asr r0, r0, #8
	ldr r1, _080429D0  @ =gUnknown_030012F4
	mov r6, #0
	ldrsh r1, [r1, r6]
	sub r6, r0, r1
	ldr r0, [r7, #32]
	add r0, r0, r4
	asr r0, r0, #8
	ldr r1, _080429D4  @ =gSpriteHorizontalOffset
	mov r4, #0
	ldrsh r1, [r1, r4]
	sub r4, r0, r1
	add r2, r6, r2
	add r3, r4, r3
	add r0, r4, #4
	str r0, [r5, #48]
	add r1, r6, #2
	str r1, [r5, #72]
	sub r0, r4, #4
	str r0, [r5]
	sub r0, r6, #2
	str r0, [r5, #24]
	cmp r1, #7
	bgt _080429E0
	cmp r2, #0
	bge _080429D8
	mov r0, #8
	mov r6, r8
	strb r0, [r6]
	mov r0, r12
	b _080429DA
_080429C4:
	.4byte 0x03001AA0
_080429C8:
	.4byte 0x03001BD4
_080429CC:
	.4byte gUnknown_03001A1C
_080429D0:
	.4byte gUnknown_030012F4
_080429D4:
	.4byte gSpriteHorizontalOffset
_080429D8:
	mov r0, #4
_080429DA:
	str r0, [r5, #24]
	mov r0, #8
	b _080429F8
_080429E0:
	cmp r1, #144
	ble _080429FA
	cmp r6, #160
	ble _080429F2
	mov r0, #4
	mov r1, r8
	strb r0, [r1]
	mov r0, #152
	b _080429F4
_080429F2:
	mov r0, #140
_080429F4:
	str r0, [r5, #24]
	mov r0, #144
_080429F8:
	str r0, [r5, #72]
_080429FA:
	ldr r0, [r5, #48]
	cmp r0, #7
	bgt _08042A1E
	add r2, r5, #0
	add r2, r2, #97
	ldrb r1, [r2]
	cmp r1, #0
	bne _08042A16
	cmp r3, #0
	bge _08042A16
	mov r0, #1
	strb r0, [r2]
	str r1, [r5]
	b _08042A1A
_08042A16:
	mov r0, #0
	str r0, [r5]
_08042A1A:
	mov r0, #8
	b _08042A3E
_08042A1E:
	cmp r0, #232
	ble _08042A40
	add r1, r5, #0
	add r1, r1, #97
	ldrb r0, [r1]
	cmp r0, #0
	bne _08042A38
	cmp r4, #240
	ble _08042A38
	mov r0, #2
	strb r0, [r1]
	mov r0, #232
	b _08042A3A
_08042A38:
	mov r0, #224
_08042A3A:
	str r0, [r5]
	mov r0, #232
_08042A3E:
	str r0, [r5, #48]
_08042A40:
	add r1, r5, #0
	add r1, r1, #104
	ldrb r0, [r1]
	add r0, r0, #1
	mov r2, #0
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #11
	bls _08042A56
	strb r2, [r1]
_08042A56:
	add r1, r5, #0
	add r1, r1, #103
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #31
	bls _08042A6A
	strb r2, [r1]
_08042A6A:
	mov r6, #0
	add r1, r5, #0
	add r1, r1, #118
	ldrh r0, [r1]
	cmp r0, #119
	bhi _08042A7A
	add r0, r0, #1
	strh r0, [r1]
_08042A7A:
	add r0, r5, #0
	add r0, r0, #97
	ldrb r0, [r0]
	cmp r0, #0
	beq _08042A92
	mov r6, #1
	add r1, r5, #0
	add r1, r1, #116
	ldrb r0, [r1]
	cmp r0, #0
	bne _08042A92
	strb r6, [r1]
_08042A92:
	cmp r6, #0
	bne _08042AA2
	add r0, r5, #0
	add r0, r0, #120
	strh r6, [r0]
	add r0, r0, #2
	strh r6, [r0]
	b _08042AF8
_08042AA2:
	add r4, r5, #0
	add r4, r4, #122
	ldr r2, _08042AD0  @ =gUnknown_082E6868
	add r3, r5, #0
	add r3, r3, #120
	ldrh r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrh r1, [r4]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _08042AF4
	mov r1, #0
	strh r1, [r4]
	ldrh r0, [r3]
	cmp r0, #4
	bhi _08042AD4
	add r0, r0, #1
	strh r0, [r3]
	b _08042AD6
	.byte 0x00
	.byte 0x00
_08042AD0:
	.4byte gUnknown_082E6868
_08042AD4:
	strh r1, [r3]
_08042AD6:
	add r0, r5, #0
	add r0, r0, #120
	ldrh r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _08042AF0  @ =gUnknown_082E6948
	add r0, r0, r1
	str r0, [r5, #124]
	b _08042AF8
_08042AF0:
	.4byte gUnknown_082E6948
_08042AF4:
	add r0, r1, #1
	strh r0, [r4]
_08042AF8:
	cmp r6, #0
	bne _08042B08
	add r1, r5, #0
	add r1, r1, #116
	ldrb r0, [r1]
	cmp r0, #0
	beq _08042B42
	strb r6, [r1]
_08042B08:
	add r6, r5, #0
	add r6, r6, #116
	ldrb r0, [r6]
	cmp r0, #0
	beq _08042B42
	bl sub_0804F1A4
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	beq _08042B24
	mov r0, #0
	strb r0, [r6]
	b _08042B42
_08042B24:
	add r5, r5, #118
	ldrh r0, [r5]
	cmp r0, #120
	bne _08042B42
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #88
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	strh r4, [r5]
_08042B42:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08042920

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08042B50
sub_08042B50: @ 0x08042B50
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r5, r0, #0
	mov r8, r1
	mov r12, r2
	mov r0, #0
	mov r9, r0
	ldr r2, _08042BA4  @ =0x03001AA0
	add r0, r2, #0
	add r0, r0, #105
	mov r10, r2
	ldrb r0, [r0]
	cmp r9, r0
	bcc _08042B74
	b _08042F7E
_08042B74:
	ldr r6, _08042BA8  @ =REG_DMA3SAD
	ldr r7, _08042BAC  @ =gOamBuffer
_08042B78:
	ldr r0, _08042BA4  @ =0x03001AA0
	add r0, r0, #97
	mov r3, r9
	add r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _08042B88
	b _08042CAA
_08042B88:
	add r0, r2, #0
	add r0, r0, #103
	ldrb r0, [r0]
	cmp r0, #11
	bhi _08042B94
	b _08042CAA
_08042B94:
	ldrb r0, [r1]
	cmp r0, #2
	beq _08042BE4
	cmp r0, #2
	bgt _08042BB0
	cmp r0, #1
	beq _08042BBA
	b _08042C66
_08042BA4:
	.4byte 0x03001AA0
_08042BA8:
	.4byte REG_DMA3SAD
_08042BAC:
	.4byte gOamBuffer
_08042BB0:
	cmp r0, #4
	beq _08042C3C
	cmp r0, #8
	beq _08042C10
	b _08042C66
_08042BBA:
	ldr r4, _08042BD8  @ =gUnknown_082F0A60
	str r4, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r0, _08042BDC  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r3, _08042BE0  @ =0x03001AA0
	ldr r1, [r3, #112]
	b _08042C58
_08042BD8:
	.4byte gUnknown_082F0A60
_08042BDC:
	.4byte 0x84000002
_08042BE0:
	.4byte 0x03001AA0
_08042BE4:
	ldr r0, _08042C04  @ =gUnknown_082F0A60
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08042C08  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r3, _08042C0C  @ =0x03001AA0
	ldr r1, [r3, #112]
	add r1, r1, #2
	b _08042C58
_08042C04:
	.4byte gUnknown_082F0A60
_08042C08:
	.4byte 0x84000002
_08042C0C:
	.4byte 0x03001AA0
_08042C10:
	ldr r0, _08042C30  @ =gUnknown_082F0B30
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08042C34  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r3, _08042C38  @ =0x03001AA0
	ldr r1, [r3, #108]
	add r1, r1, #2
	b _08042C58
_08042C30:
	.4byte gUnknown_082F0B30
_08042C34:
	.4byte 0x84000002
_08042C38:
	.4byte 0x03001AA0
_08042C3C:
	ldr r0, _08042CC0  @ =gUnknown_082F0B30
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08042CC4  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r3, _08042CC8  @ =0x03001AA0
	ldr r1, [r3, #108]
_08042C58:
	ldr r4, _08042CCC  @ =0x000003FF
	and r1, r1, r4
	ldrh r3, [r2, #4]
	ldr r0, _08042CD0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
_08042C66:
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r0, r9
	lsl r4, r0, #2
	ldr r1, _08042CC8  @ =0x03001AA0
	add r0, r4, r1
	ldr r1, [r0]
	ldr r2, _08042CD4  @ =0x000001FF
	and r1, r1, r2
	ldrh r2, [r3, #2]
	ldr r0, _08042CD8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r3, _08042CDC  @ =0x03001AB8
	add r4, r4, r3
	ldr r0, [r4]
	strb r0, [r1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #144
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
_08042CAA:
	mov r0, r10
	add r0, r0, #97
	add r0, r0, r9
	ldrb r0, [r0]
	cmp r0, #2
	beq _08042D88
	cmp r0, #2
	bgt _08042CE0
	cmp r0, #1
	beq _08042CEE
	b _08042F66
_08042CC0:
	.4byte gUnknown_082F0B30
_08042CC4:
	.4byte 0x84000002
_08042CC8:
	.4byte 0x03001AA0
_08042CCC:
	.4byte 0x000003FF
_08042CD0:
	.4byte 0xFFFFFC00
_08042CD4:
	.4byte 0x000001FF
_08042CD8:
	.4byte 0xFFFFFE00
_08042CDC:
	.4byte 0x03001AB8
_08042CE0:
	cmp r0, #4
	bne _08042CE6
	b _08042EC0
_08042CE6:
	cmp r0, #8
	bne _08042CEC
	b _08042E24
_08042CEC:
	b _08042F66
_08042CEE:
	mov r4, r10
	ldr r0, [r4, #124]
	str r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	ldr r1, _08042D64  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _08042D68  @ =0x84000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r2, _08042D6C  @ =gUnknown_082E6940
	str r2, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r3, _08042D70  @ =0x84000002
	str r3, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r4, r8
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r0, _08042D74  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08042D78  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r1, r9
	lsl r4, r1, #2
	mov r2, r10
	add r0, r4, r2
	ldr r1, [r0]
	add r1, r1, #8
	ldr r0, _08042D7C  @ =0x000001FF
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08042D80  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r2, _08042D84  @ =0x03001AB8
	add r4, r4, r2
	ldr r0, [r4]
	sub r0, r0, #8
	b _08042F34
_08042D64:
	.4byte OBJ_VRAM0
_08042D68:
	.4byte 0x84000100
_08042D6C:
	.4byte gUnknown_082E6940
_08042D70:
	.4byte 0x84000002
_08042D74:
	.4byte 0x000003FF
_08042D78:
	.4byte 0xFFFFFC00
_08042D7C:
	.4byte 0x000001FF
_08042D80:
	.4byte 0xFFFFFE00
_08042D84:
	.4byte 0x03001AB8
_08042D88:
	mov r3, r10
	ldr r0, [r3, #124]
	str r0, [r6]
	mov r4, r12
	ldrh r0, [r4]
	ldr r1, _08042E00  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _08042E04  @ =0x84000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _08042E08  @ =gUnknown_082E6940
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08042E0C  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r4, r8
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r0, _08042E10  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08042E14  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r1, r9
	lsl r4, r1, #2
	mov r2, r10
	add r0, r4, r2
	ldr r1, [r0]
	sub r1, r1, #32
	ldr r0, _08042E18  @ =0x000001FF
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08042E1C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r2, _08042E20  @ =0x03001AB8
	add r4, r4, r2
	ldr r0, [r4]
	sub r0, r0, #8
	b _08042F34
	.byte 0x00
	.byte 0x00
_08042E00:
	.4byte OBJ_VRAM0
_08042E04:
	.4byte 0x84000100
_08042E08:
	.4byte gUnknown_082E6940
_08042E0C:
	.4byte 0x84000002
_08042E10:
	.4byte 0x000003FF
_08042E14:
	.4byte 0xFFFFFC00
_08042E18:
	.4byte 0x000001FF
_08042E1C:
	.4byte 0xFFFFFE00
_08042E20:
	.4byte 0x03001AB8
_08042E24:
	mov r3, r10
	ldr r0, [r3, #124]
	str r0, [r6]
	mov r4, r12
	ldrh r0, [r4]
	ldr r1, _08042E9C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _08042EA0  @ =0x84000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _08042EA4  @ =gUnknown_082E6940
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08042EA8  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r4, r8
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r0, _08042EAC  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08042EB0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r1, r9
	lsl r4, r1, #2
	mov r2, r10
	add r0, r4, r2
	ldr r1, [r0]
	sub r1, r1, #8
	ldr r0, _08042EB4  @ =0x000001FF
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08042EB8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r2, _08042EBC  @ =0x03001AB8
	add r4, r4, r2
	ldr r0, [r4]
	add r0, r0, #8
	b _08042F34
	.byte 0x00
	.byte 0x00
_08042E9C:
	.4byte OBJ_VRAM0
_08042EA0:
	.4byte 0x84000100
_08042EA4:
	.4byte gUnknown_082E6940
_08042EA8:
	.4byte 0x84000002
_08042EAC:
	.4byte 0x000003FF
_08042EB0:
	.4byte 0xFFFFFC00
_08042EB4:
	.4byte 0x000001FF
_08042EB8:
	.4byte 0xFFFFFE00
_08042EBC:
	.4byte 0x03001AB8
_08042EC0:
	mov r3, r10
	ldr r0, [r3, #124]
	str r0, [r6]
	mov r4, r12
	ldrh r0, [r4]
	ldr r1, _08042F8C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _08042F90  @ =0x84000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _08042F94  @ =gUnknown_082E6940
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08042F98  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r4, r8
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r0, _08042F9C  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08042FA0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r1, r9
	lsl r4, r1, #2
	mov r2, r10
	add r0, r4, r2
	ldr r1, [r0]
	sub r1, r1, #8
	ldr r0, _08042FA4  @ =0x000001FF
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08042FA8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r2, _08042FAC  @ =0x03001AB8
	add r4, r4, r2
	ldr r0, [r4]
	sub r0, r0, #32
_08042F34:
	strb r0, [r1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r3, #128
	lsl r3, r3, #3
	add r0, r3, #0
	mov r4, r12
	ldrh r4, [r4]
	add r0, r0, r4
	mov r1, r12
	strh r0, [r1]
	mov r2, r8
	ldrh r0, [r2]
	add r0, r0, #32
	strh r0, [r2]
_08042F66:
	mov r0, r9
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	mov r2, r10
	add r0, r2, #0
	add r0, r0, #105
	ldrb r0, [r0]
	cmp r9, r0
	bcs _08042F7E
	b _08042B78
_08042F7E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08042F8C:
	.4byte OBJ_VRAM0
_08042F90:
	.4byte 0x84000100
_08042F94:
	.4byte gUnknown_082E6940
_08042F98:
	.4byte 0x84000002
_08042F9C:
	.4byte 0x000003FF
_08042FA0:
	.4byte 0xFFFFFC00
_08042FA4:
	.4byte 0x000001FF
_08042FA8:
	.4byte 0xFFFFFE00
_08042FAC:
	.4byte 0x03001AB8
	THUMB_FUNC_END sub_08042B50

	THUMB_FUNC_START sub_08042FB0
sub_08042FB0: @ 0x08042FB0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r6, _080430A0  @ =gUnknown_03001B30
	ldrh r2, [r0]
	str r2, [r6]
	ldr r3, _080430A4  @ =REG_DMA3SAD
	ldr r4, _080430A8  @ =gUnknown_080C9B30
	str r4, [r3]
	ldrh r2, [r1]
	ldr r5, _080430AC  @ =OBJ_VRAM0
	mov r8, r5
	add r2, r2, r8
	str r2, [r3, #4]
	ldr r2, _080430B0  @ =0x84000140
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	ldrh r5, [r1]
	mov r7, #160
	lsl r7, r7, #3
	add r2, r5, r7
	strh r2, [r1]
	ldrh r2, [r0]
	mov r12, r2
	mov r2, r12
	add r2, r2, #40
	lsl r2, r2, #16
	lsr r2, r2, #16
	str r2, [r6, #4]
	ldr r2, _080430B4  @ =gUnknown_082EC750
	str r2, [r3]
	ldrh r2, [r1]
	add r2, r2, r8
	str r2, [r3, #4]
	ldr r2, _080430B8  @ =0x840000A0
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	mov r7, #240
	lsl r7, r7, #3
	add r2, r5, r7
	strh r2, [r1]
	mov r2, r12
	add r2, r2, #60
	lsl r2, r2, #16
	lsr r2, r2, #16
	str r2, [r6, #12]
	ldr r2, _080430BC  @ =gUnknown_082E830C
	str r2, [r3]
	ldrh r2, [r1]
	add r2, r2, r8
	str r2, [r3, #4]
	ldr r2, _080430C0  @ =0x84000060
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	mov r7, #144
	lsl r7, r7, #4
	add r2, r5, r7
	strh r2, [r1]
	mov r2, r12
	add r2, r2, #72
	lsl r2, r2, #16
	lsr r2, r2, #16
	str r2, [r6, #16]
	mov r2, #152
	lsl r2, r2, #4
	add r4, r4, r2
	str r4, [r3]
	ldrh r2, [r1]
	add r2, r2, r8
	str r2, [r3, #4]
	ldr r2, _080430C4  @ =0x84000020
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	mov r4, #152
	lsl r4, r4, #4
	add r2, r5, r4
	strh r2, [r1]
	mov r2, r12
	add r2, r2, #76
	lsl r2, r2, #16
	lsr r2, r2, #16
	str r2, [r6, #8]
	ldr r4, _080430C8  @ =gUnknown_080CABB0
	str r4, [r3]
	ldrh r2, [r1]
	add r2, r2, r8
	str r2, [r3, #4]
	ldr r2, _080430CC  @ =0x840000D0
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	mov r7, #204
	lsl r7, r7, #4
	add r2, r5, r7
	strh r2, [r1]
	mov r2, #152
	lsl r2, r2, #3
	add r4, r4, r2
	str r4, [r3]
	ldrh r2, [r1]
	add r2, r2, r8
	str r2, [r3, #4]
	ldr r2, _080430D0  @ =0x84000008
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	mov r4, #206
	lsl r4, r4, #4
	add r5, r5, r4
	strh r5, [r1]
	mov r1, r12
	add r1, r1, #103
	strh r1, [r0]
	mov r0, #0
	str r0, [r6, #20]
	str r0, [r6, #24]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080430A0:
	.4byte gUnknown_03001B30
_080430A4:
	.4byte REG_DMA3SAD
_080430A8:
	.4byte gUnknown_080C9B30
_080430AC:
	.4byte OBJ_VRAM0
_080430B0:
	.4byte 0x84000140
_080430B4:
	.4byte gUnknown_082EC750
_080430B8:
	.4byte 0x840000A0
_080430BC:
	.4byte gUnknown_082E830C
_080430C0:
	.4byte 0x84000060
_080430C4:
	.4byte 0x84000020
_080430C8:
	.4byte gUnknown_080CABB0
_080430CC:
	.4byte 0x840000D0
_080430D0:
	.4byte 0x84000008
	THUMB_FUNC_END sub_08042FB0

	THUMB_FUNC_START sub_080430D4
sub_080430D4: @ 0x080430D4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r6, r1, #0
	add r6, r6, #16
	ldr r0, _080434A8  @ =gOamBuffer
	mov r12, r0
	cmp r6, r2
	bge _080431D6
	ldr r1, _080434AC  @ =REG_DMA3SAD
	mov r8, r1
	mov r5, r12
	ldr r2, _080434B0  @ =0x000003FF
	mov r10, r2
	mov r0, #96
	mov r9, r0
_08043102:
	ldr r1, _080434B4  @ =gUnknown_082E8304
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r2, #4]
	ldr r0, _080434B8  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, _080434BC  @ =0x000001FF
	add r0, r2, #0
	add r4, r6, #0
	and r4, r4, r0
	ldrh r2, [r1, #2]
	ldr r0, _080434C0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r0, _080434C4  @ =gUnknown_03001B30
	ldr r1, [r0, #12]
	add r1, r1, #4
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _080434C8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r9
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _080434B4  @ =gUnknown_082E8304
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r1, #4]
	ldr r2, _080434B8  @ =0x84000002
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrh r2, [r1, #2]
	ldr r0, _080434C0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	add r1, sp, #52
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r0, _080434C4  @ =gUnknown_03001B30
	ldr r1, [r0, #12]
	add r1, r1, #4
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _080434C8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r9
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	add r6, r6, #16
	ldr r0, [sp, #4]
	cmp r6, r0
	blt _08043102
_080431D6:
	ldr r6, [sp, #8]
	add r6, r6, #16
	ldr r1, [sp, #52]
	cmp r6, r1
	bge _080432BC
	ldr r5, _080434AC  @ =REG_DMA3SAD
	ldr r4, _080434A8  @ =gOamBuffer
	ldr r2, [sp, #4]
	mov r8, r2
	mov r0, r8
	ldr r1, _080434BC  @ =0x000001FF
	and r0, r0, r1
	mov r8, r0
	mov r2, #15
	mov r10, r2
	mov r0, #96
	mov r9, r0
_080431F8:
	ldr r1, _080434B4  @ =gUnknown_082E8304
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r2, _080434B8  @ =0x84000002
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, [sp]
	ldr r0, _080434BC  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _080434C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	strb r6, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, _080434C4  @ =gUnknown_03001B30
	ldr r1, [r0, #12]
	ldr r0, _080434B0  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _080434C8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, r10
	and r0, r0, r2
	mov r2, r9
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _080434B4  @ =gUnknown_082E8304
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r1, _080434B8  @ =0x84000002
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrh r2, [r1, #2]
	ldr r0, _080434C0  @ =0xFFFFFE00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	strb r6, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, _080434C4  @ =gUnknown_03001B30
	ldr r1, [r0, #12]
	ldr r0, _080434B0  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _080434C8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, r10
	and r0, r0, r2
	mov r2, r9
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	add r6, r6, #16
	ldr r0, [sp, #52]
	cmp r6, r0
	blt _080431F8
_080432BC:
	ldr r4, _080434AC  @ =REG_DMA3SAD
	ldr r1, _080434B4  @ =gUnknown_082E8304
	str r1, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r2, _080434B8  @ =0x84000002
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r0, [sp]
	ldr r2, _080434BC  @ =0x000001FF
	and r0, r0, r2
	str r0, [sp, #12]
	ldrh r2, [r1, #2]
	ldr r0, _080434C0  @ =0xFFFFFE00
	mov r8, r0
	and r0, r0, r2
	ldr r2, [sp, #12]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r0, _080434C4  @ =gUnknown_03001B30
	ldr r1, [r0, #12]
	add r1, r1, #8
	ldr r0, _080434B0  @ =0x000003FF
	mov r10, r0
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r6, _080434C8  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r5, #15
	add r0, r5, #0
	and r0, r0, r2
	mov r2, #96
	mov r9, r2
	mov r2, r9
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _080434B4  @ =gUnknown_082E8304
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r1, _080434B8  @ =0x84000002
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #4]
	ldr r0, _080434BC  @ =0x000001FF
	and r2, r2, r0
	str r2, [sp, #16]
	ldrh r2, [r1, #2]
	mov r0, r8
	and r0, r0, r2
	ldr r2, [sp, #16]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r0, _080434C4  @ =gUnknown_03001B30
	ldr r1, [r0, #12]
	add r1, r1, #8
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	add r0, r5, #0
	and r0, r0, r2
	mov r2, r9
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _080434B4  @ =gUnknown_082E8304
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r1, _080434B8  @ =0x84000002
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	mov r0, r8
	and r0, r0, r2
	ldr r2, [sp, #12]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #52
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r0, _080434C4  @ =gUnknown_03001B30
	ldr r1, [r0, #12]
	add r1, r1, #8
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	add r0, r5, #0
	and r0, r0, r2
	mov r2, r9
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	mov r3, #32
	orr r0, r0, r3
	strb r0, [r1, #3]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _080434B4  @ =gUnknown_082E8304
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r1, _080434B8  @ =0x84000002
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrh r1, [r0, #2]
	mov r2, r8
	and r2, r2, r1
	ldr r1, [sp, #16]
	orr r2, r2, r1
	strh r2, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r2, sp, #52
	ldrb r2, [r2]
	strb r2, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, _080434C4  @ =gUnknown_03001B30
	ldr r0, [r2, #12]
	add r0, r0, #8
	mov r2, r10
	and r0, r0, r2
	ldrh r2, [r1, #4]
	and r6, r6, r2
	orr r6, r6, r0
	strh r6, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrb r1, [r0, #5]
	and r5, r5, r1
	mov r1, r9
	orr r5, r5, r1
	strb r5, [r0, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	orr r0, r0, r3
	strb r0, [r1, #3]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080434A8:
	.4byte gOamBuffer
_080434AC:
	.4byte REG_DMA3SAD
_080434B0:
	.4byte 0x000003FF
_080434B4:
	.4byte gUnknown_082E8304
_080434B8:
	.4byte 0x84000002
_080434BC:
	.4byte 0x000001FF
_080434C0:
	.4byte 0xFFFFFE00
_080434C4:
	.4byte gUnknown_03001B30
_080434C8:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_080430D4

	THUMB_FUNC_START draw_big_font
draw_big_font: @ 0x080434CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	mov r9, r0
	add r4, r3, #0
	ldr r0, [sp, #44]
	mov r10, r0
	ldr r0, [sp, #48]
	lsl r1, r1, #24
	lsr r6, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	str r2, [sp]
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #4]
	mov r0, r9
	bl strlen
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	mov r1, #0
	mov r12, r1
	cmp r12, r8
	bcs _080435BC
	ldr r5, _080435CC  @ =REG_DMA3SAD
	ldr r7, _080435D0  @ =gOamBuffer
_0804350A:
	mov r1, r9
	add r1, r1, r12
	ldrb r0, [r1]
	cmp r0, #32
	beq _080435A6
	ldr r2, [sp, #40]
	ldrh r0, [r2]
	sub r0, r0, #4
	strh r0, [r2]
	mov r3, r10
	ldrh r0, [r3]
	sub r0, r0, #128
	strh r0, [r3]
	ldrb r0, [r1]
	sub r0, r0, #65
	lsl r0, r0, #7
	ldr r1, _080435D4  @ =gUnknown_080C8E30
	add r0, r0, r1
	str r0, [r5]
	ldrh r0, [r3]
	ldr r1, _080435D8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _080435DC  @ =0x84000020
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _080435E0  @ =gUnknown_080C8E28
	str r2, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r5, #4]
	ldr r0, _080435E4  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	ldrh r2, [r1, #2]
	ldr r0, _080435E8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r6
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r3, sp
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r0, [r2, #4]
	lsl r1, r0, #22
	lsr r1, r1, #22
	ldr r3, [sp, #40]
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080435EC  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _080435F0  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r0, [sp, #4]
	lsl r3, r0, #4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r1, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_080435A6:
	add r0, r6, #0
	add r0, r0, #16
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, r12
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	cmp r12, r8
	bcc _0804350A
_080435BC:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080435CC:
	.4byte REG_DMA3SAD
_080435D0:
	.4byte gOamBuffer
_080435D4:
	.4byte gUnknown_080C8E30
_080435D8:
	.4byte OBJ_VRAM0
_080435DC:
	.4byte 0x84000020
_080435E0:
	.4byte gUnknown_080C8E28
_080435E4:
	.4byte 0x84000002
_080435E8:
	.4byte 0xFFFFFE00
_080435EC:
	.4byte 0x000003FF
_080435F0:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END draw_big_font

	THUMB_FUNC_START draw_small_font
draw_small_font: @ 0x080435F4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	str r0, [sp]
	add r4, r3, #0
	ldr r0, [sp, #44]
	lsl r1, r1, #24
	lsr r7, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	str r2, [sp, #4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #8]
	ldr r0, [sp]
	bl strlen
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	mov r0, #0
	mov r12, r0
	cmp r12, r9
	bcc _0804362C
	b _08043732
_0804362C:
	ldr r1, _08043694  @ =REG_DMA3SAD
	mov r8, r1
	ldr r2, _08043698  @ =0x000003FF
	mov r10, r2
_08043634:
	ldr r5, [sp]
	add r5, r5, r12
	ldrb r0, [r5]
	cmp r0, #32
	beq _0804371A
	ldr r0, _0804369C  @ =gUnknown_080CABA8
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r4]
	lsl r0, r0, #3
	ldr r3, _080436A0  @ =gOamBuffer
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _080436A4  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r3
	ldrh r2, [r1, #2]
	ldr r0, _080436A8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r7
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r3
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	ldrb r0, [r5]
	add r6, r3, #0
	cmp r0, #33
	bne _080436B4
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldr r0, _080436AC  @ =gUnknown_03001B30
	ldr r1, [r0, #8]
	add r1, r1, #26
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _080436B0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	b _08043700
_08043694:
	.4byte REG_DMA3SAD
_08043698:
	.4byte 0x000003FF
_0804369C:
	.4byte gUnknown_080CABA8
_080436A0:
	.4byte gOamBuffer
_080436A4:
	.4byte 0x84000002
_080436A8:
	.4byte 0xFFFFFE00
_080436AC:
	.4byte gUnknown_03001B30
_080436B0:
	.4byte 0xFFFFFC00
_080436B4:
	sub r0, r0, #97
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #25
	bhi _080436E0
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r2, _080436D8  @ =gUnknown_03001B30
	ldr r1, [r2, #8]
	ldr r0, _080436DC  @ =0x0000FF9F
	add r1, r1, r0
	ldrb r5, [r5]
	add r1, r1, r5
	mov r2, r10
	and r1, r1, r2
	b _080436F6
	.byte 0x00
	.byte 0x00
_080436D8:
	.4byte gUnknown_03001B30
_080436DC:
	.4byte 0x0000FF9F
_080436E0:
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, _08043744  @ =gUnknown_03001B30
	ldr r1, [r0, #8]
	ldr r2, _08043748  @ =0x0000FFBF
	add r1, r1, r2
	ldrb r5, [r5]
	add r1, r1, r5
	mov r0, r10
	and r1, r1, r0
_080436F6:
	ldrh r2, [r3, #4]
	ldr r0, _0804374C  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
_08043700:
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r2, [sp, #8]
	lsl r3, r2, #4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r1, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_0804371A:
	add r0, r7, #0
	add r0, r0, #8
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r0, r12
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	cmp r12, r9
	bcs _08043732
	b _08043634
_08043732:
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
_08043744:
	.4byte gUnknown_03001B30
_08043748:
	.4byte 0x0000FFBF
_0804374C:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END draw_small_font

	THUMB_FUNC_START sub_08043750
sub_08043750: @ 0x08043750
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	add r7, r0, #0
	mov r9, r1
	mov r10, r2
	ldr r1, _08043AF8  @ =gUnknown_03001B30
	ldr r0, [r1, #20]
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08043770
	b _080438E2
_08043770:
	ldr r4, _08043AFC  @ =REG_DMA3SAD
	ldr r2, _08043B00  @ =gUnknown_080C8E28
	str r2, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08043B04  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r3, _08043B08  @ =0x84000002
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrh r2, [r1, #2]
	ldr r0, _08043B0C  @ =0xFFFFFE00
	and r0, r0, r2
	mov r6, #56
	orr r0, r0, r6
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, #56
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r3, _08043AF8  @ =gUnknown_03001B30
	ldr r1, [r3]
	ldrb r0, [r3, #28]
	lsr r0, r0, #4
	lsl r0, r0, #2
	add r1, r1, r0
	ldr r6, _08043B10  @ =0x000003FF
	and r1, r1, r6
	ldrh r3, [r2, #4]
	ldr r0, _08043B14  @ =0xFFFFFC00
	mov r8, r0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r6, #15
	add r0, r6, #0
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _08043B00  @ =gUnknown_080C8E28
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08043B08  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r1, [r2, #2]
	ldr r0, _08043B0C  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #88
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, #56
	strb r1, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r5
	ldr r2, _08043AF8  @ =gUnknown_03001B30
	ldr r1, [r2]
	ldrb r0, [r2, #28]
	lsl r0, r0, #28
	lsr r0, r0, #28
	add r0, r0, #1
	asr r0, r0, #1
	lsl r0, r0, #2
	add r1, r1, r0
	ldr r0, _08043B10  @ =0x000003FF
	and r1, r1, r0
	ldrh r2, [r3, #4]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	add r0, r6, #0
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, r9
	ldrh r0, [r3]
	add r0, r0, #4
	strh r0, [r3]
	mov r1, r10
	ldrh r0, [r1]
	add r0, r0, #128
	strh r0, [r1]
	ldr r2, _08043AF8  @ =gUnknown_03001B30
	ldrb r0, [r2, #28]
	lsl r0, r0, #28
	lsr r0, r0, #28
	add r0, r0, #1
	mov r1, #1
	and r0, r0, r1
	lsl r0, r0, #7
	ldr r1, _08043B18  @ =gUnknown_080C8E30
	add r0, r0, r1
	str r0, [r4]
	mov r3, r10
	ldrh r0, [r3]
	ldr r1, _08043B1C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08043B20  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08043B00  @ =gUnknown_080C8E28
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r1, _08043B08  @ =0x84000002
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrh r0, [r1, #2]
	ldr r2, _08043B0C  @ =0xFFFFFE00
	and r2, r2, r0
	mov r0, #98
	orr r2, r2, r0
	strh r2, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r4, #56
	strb r4, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrh r2, [r1, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r3, r9
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r4, _08043B10  @ =0x000003FF
	and r0, r0, r4
	mov r3, r8
	and r3, r3, r2
	orr r3, r3, r0
	strh r3, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrb r1, [r0, #5]
	and r6, r6, r1
	mov r4, #96
	orr r6, r6, r4
	strb r6, [r0, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_080438E2:
	ldr r5, _08043AF8  @ =gUnknown_03001B30
	ldr r0, [r5, #20]
	mov r1, #32
	and r0, r0, r1
	cmp r0, #0
	bne _080438F0
	b _08043A0A
_080438F0:
	mov r6, r9
	ldrh r0, [r6]
	sub r0, r0, #32
	strh r0, [r6]
	ldr r2, _08043B14  @ =0xFFFFFC00
	mov r1, r10
	ldrh r1, [r1]
	add r0, r2, r1
	mov r2, r10
	strh r0, [r2]
	ldr r3, _08043AFC  @ =REG_DMA3SAD
	ldr r0, _08043B24  @ =gUnknown_082F0DA8
	str r0, [r3]
	ldrh r0, [r2]
	ldr r4, _08043B1C  @ =OBJ_VRAM0
	add r0, r0, r4
	str r0, [r3, #4]
	ldr r5, _08043B28  @ =0x84000100
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08043B2C  @ =gUnknown_082F0DA0
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r6, _08043B04  @ =gOamBuffer
	mov r8, r6
	add r0, r0, r8
	str r0, [r3, #4]
	ldr r0, _08043B08  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r1, [r2, #2]
	ldr r5, _08043B0C  @ =0xFFFFFE00
	add r0, r5, #0
	and r0, r0, r1
	mov r1, #56
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r8
	mov r1, #72
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	mov r6, r9
	ldrh r6, [r6]
	add r1, r1, r6
	ldr r0, _08043B10  @ =0x000003FF
	and r1, r1, r0
	ldr r6, _08043B14  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r2, [r1, #5]
	mov r4, #15
	add r0, r4, #0
	and r0, r0, r2
	mov r2, #128
	mov r12, r2
	mov r2, r12
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #32
	strh r0, [r1]
	mov r2, r10
	ldrh r0, [r2]
	add r0, r0, r6
	strh r0, [r2]
	ldr r0, _08043B30  @ =gUnknown_082F11D4
	str r0, [r3]
	ldrh r0, [r2]
	ldr r1, _08043B1C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r3, #4]
	ldr r2, _08043B28  @ =0x84000100
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08043B34  @ =gUnknown_082F11CC
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r3, #4]
	ldr r0, _08043B08  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrh r0, [r1, #2]
	and r5, r5, r0
	mov r0, #120
	orr r5, r5, r0
	strh r5, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r8
	mov r1, #72
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrh r2, [r1, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r3, r9
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r5, _08043B10  @ =0x000003FF
	and r0, r0, r5
	and r6, r6, r2
	orr r6, r6, r0
	strh r6, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r8
	ldrb r1, [r0, #5]
	and r4, r4, r1
	mov r6, r12
	orr r4, r4, r6
	strb r4, [r0, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_08043A0A:
	ldr r1, _08043AF8  @ =gUnknown_03001B30
	ldr r0, [r1, #20]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08043ACA
	ldr r0, _08043B38  @ =gTextLostAll
	mov r2, r9
	str r2, [sp]
	mov r3, r10
	str r3, [sp, #4]
	mov r4, #8
	str r4, [sp, #8]
	mov r1, #56
	mov r2, #64
	add r3, r7, #0
	bl draw_big_font
	ldr r0, _08043B3C  @ =gTextMiniMarios
	mov r5, r9
	str r5, [sp]
	mov r6, r10
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r1, #24
	mov r2, #80
	add r3, r7, #0
	bl draw_big_font
	ldrh r0, [r5]
	sub r0, r0, #4
	strh r0, [r5]
	ldrh r0, [r6]
	sub r0, r0, #128
	strh r0, [r6]
	ldr r2, _08043AFC  @ =REG_DMA3SAD
	ldr r0, _08043B40  @ =gUnknown_080CA130
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _08043B1C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08043B20  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08043B00  @ =gUnknown_080C8E28
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _08043B04  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _08043B08  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r1, [r2, #2]
	ldr r0, _08043B0C  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #200
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, #80
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r5]
	add r1, r1, r0
	ldr r5, _08043B10  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _08043B14  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_08043ACA:
	ldr r6, _08043AF8  @ =gUnknown_03001B30
	ldr r0, [r6, #20]
	mov r1, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08043AE6
	ldr r0, _08043B44  @ =gTextGetTOYCards
	mov r1, #6
	str r1, [sp]
	mov r1, #32
	mov r2, #40
	add r3, r7, #0
	bl draw_small_font
_08043AE6:
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
_08043AF8:
	.4byte gUnknown_03001B30
_08043AFC:
	.4byte REG_DMA3SAD
_08043B00:
	.4byte gUnknown_080C8E28
_08043B04:
	.4byte gOamBuffer
_08043B08:
	.4byte 0x84000002
_08043B0C:
	.4byte 0xFFFFFE00
_08043B10:
	.4byte 0x000003FF
_08043B14:
	.4byte 0xFFFFFC00
_08043B18:
	.4byte gUnknown_080C8E30
_08043B1C:
	.4byte OBJ_VRAM0
_08043B20:
	.4byte 0x84000020
_08043B24:
	.4byte gUnknown_082F0DA8
_08043B28:
	.4byte 0x84000100
_08043B2C:
	.4byte gUnknown_082F0DA0
_08043B30:
	.4byte gUnknown_082F11D4
_08043B34:
	.4byte gUnknown_082F11CC
_08043B38:
	.4byte gTextLostAll
_08043B3C:
	.4byte gTextMiniMarios
_08043B40:
	.4byte gUnknown_080CA130
_08043B44:
	.4byte gTextGetTOYCards
	THUMB_FUNC_END sub_08043750

	THUMB_FUNC_START sub_08043B48
sub_08043B48: @ 0x08043B48
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r8, r0
	ldr r0, _08043BD8  @ =gUnknown_03001940
	ldr r4, [r0]
	ldr r0, _08043BDC  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r0, [r0, #36]
	asr r0, r0, #8
	add r0, r0, #32
	str r0, [sp]
	mov r0, #1
	mov r10, r0
_08043B6A:
	add r1, r4, #0
	add r1, r1, #132
	ldrb r0, [r1, #20]
	cmp r0, #0
	beq _08043BF6
	mov r9, r4
	ldrh r3, [r4]
	cmp r3, #0
	beq _08043BF6
	ldr r2, [r1]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	beq _08043BF6
	mov r0, #17
	ldrsb r0, [r2, r0]
	cmp r0, #2
	beq _08043BF6
	cmp r3, #5
	beq _08043BF6
	ldr r0, [r4, #36]
	asr r0, r0, #8
	ldrb r2, [r2, #2]
	add r0, r0, r2
	ldr r1, [sp]
	cmp r1, r0
	bne _08043BF6
	mov r2, r8
	ldr r0, [r2, #108]
	mov r1, #128
	lsl r1, r1, #2
	add r7, r0, r1
	ldr r0, [r2, #116]
	ldr r2, _08043BE0  @ =0xFFFFFE00
	add r0, r0, r2
	mov r1, r8
	ldr r6, [r1, #112]
	ldr r2, [r1, #120]
	mov r12, r2
	ldr r1, [r4, #108]
	ldr r2, [r4, #116]
	ldr r5, [r4, #112]
	ldr r3, [r4, #120]
	cmp r0, r1
	ble _08043BE4
	cmp r7, r2
	bge _08043BE4
	cmp r6, r3
	bge _08043BE4
	cmp r12, r5
	ble _08043BE4
	mov r0, #1
	b _08043BE6
_08043BD8:
	.4byte gUnknown_03001940
_08043BDC:
	.4byte gUnknown_030019AC
_08043BE0:
	.4byte 0xFFFFFE00
_08043BE4:
	mov r0, #0
_08043BE6:
	cmp r0, #0
	beq _08043BF6
	mov r0, r9
	add r0, r0, #61
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	b _08043C04
_08043BF6:
	mov r0, #1
	add r10, r10, r0
	add r4, r4, #176
	mov r1, r10
	cmp r1, #19
	ble _08043B6A
	sub r0, r0, #2
_08043C04:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08043B48

	THUMB_FUNC_START sub_08043C14
sub_08043C14: @ 0x08043C14
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	ldr r0, _08043C78  @ =gUnknown_03001940
	ldr r2, [r0]
	mov r0, #1
	mov r10, r0
_08043C28:
	add r0, r2, #0
	add r0, r0, #152
	ldrb r0, [r0]
	cmp r0, #0
	beq _08043C92
	mov r9, r2
	ldrh r0, [r2]
	cmp r0, #0
	beq _08043C92
	cmp r0, #7
	beq _08043C92
	cmp r0, #9
	beq _08043C92
	mov r1, r8
	ldr r0, [r1, #108]
	mov r3, #128
	lsl r3, r3, #2
	add r7, r0, r3
	ldr r0, [r1, #116]
	ldr r1, _08043C7C  @ =0xFFFFFE00
	add r0, r0, r1
	mov r3, r8
	ldr r6, [r3, #112]
	ldr r1, [r3, #120]
	mov r12, r1
	ldr r1, [r2, #108]
	ldr r3, [r2, #116]
	ldr r5, [r2, #112]
	ldr r4, [r2, #120]
	cmp r0, r1
	ble _08043C80
	cmp r7, r3
	bge _08043C80
	cmp r6, r4
	bge _08043C80
	cmp r12, r5
	ble _08043C80
	mov r0, #1
	b _08043C82
	.byte 0x00
	.byte 0x00
_08043C78:
	.4byte gUnknown_03001940
_08043C7C:
	.4byte 0xFFFFFE00
_08043C80:
	mov r0, #0
_08043C82:
	cmp r0, #0
	beq _08043C92
	mov r0, r9
	add r0, r0, #61
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	b _08043CAC
_08043C92:
	mov r3, r10
	lsl r0, r3, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	add r2, r2, #176
	lsr r3, r0, #16
	mov r10, r3
	asr r0, r0, #16
	cmp r0, #19
	ble _08043C28
	mov r0, #1
	neg r0, r0
_08043CAC:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08043C14

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08043CBC
sub_08043CBC: @ 0x08043CBC
	push {r4,lr}
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, _08043D40  @ =gUnknown_030019A4
	mov r1, #0
	strb r1, [r0]
	mov r0, #4
	ldrsh r1, [r3, r0]
	ldr r0, _08043D44  @ =0x00000191
	cmp r1, r0
	beq _08043CDE
	add r0, r0, #2
	cmp r1, r0
	beq _08043CDE
	sub r0, r0, #36
	cmp r1, r0
	bne _08043CEA
_08043CDE:
	ldrb r1, [r3, #2]
	ldrb r0, [r3, #3]
	sub r0, r0, #10
	cmp r1, r0
	bgt _08043CEA
	b _08043E98
_08043CEA:
	mov r0, #4
	ldrsh r1, [r3, r0]
	mov r0, #201
	lsl r0, r0, #1
	ldrh r4, [r3, #4]
	cmp r1, r0
	beq _08043D04
	sub r0, r0, #37
	cmp r1, r0
	beq _08043D04
	add r0, r0, #3
	cmp r1, r0
	bne _08043D0C
_08043D04:
	ldrb r0, [r3, #2]
	cmp r0, #9
	bls _08043D0C
	b _08043E98
_08043D0C:
	ldr r0, _08043D48  @ =0x030019FC
	ldrb r0, [r0]
	cmp r0, #2
	bls _08043D22
	ldr r0, _08043D4C  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #48
	and r0, r0, r1
	cmp r0, #0
	bne _08043D22
	b _08043E98
_08043D22:
	ldr r1, [r2, #28]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08043D54
	ldr r0, _08043D50  @ =gUnknown_030019F4 
	ldrb r1, [r0]
	ldrb r0, [r2, #7]
	and r0, r0, r1
	cmp r0, #0
	beq _08043D3A
	b _08043E98
_08043D3A:
	mov r0, #1
	b _08043E9A
	.byte 0x00
	.byte 0x00
_08043D40:
	.4byte gUnknown_030019A4
_08043D44:
	.4byte 0x00000191
_08043D48:
	.4byte 0x030019FC
_08043D4C:
	.4byte gUnknown_03001990
_08043D50:
	.4byte gUnknown_030019F4 
_08043D54:
	mov r0, #4
	and r1, r1, r0
	cmp r1, #0
	beq _08043DF8
	ldr r0, _08043DB4  @ =gUnknown_03001990
	ldrb r1, [r0]
	ldrb r0, [r2, #7]
	and r0, r0, r1
	cmp r0, #0
	bne _08043D6A
	b _08043E98
_08043D6A:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08043D3A
	mov r0, #11
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08043D3A
	add r0, r4, #0
	sub r0, r0, #244
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #43
	bhi _08043DB8
	mov r1, #54
	ldrsh r0, [r3, r1]
	ldrh r2, [r3, #54]
	cmp r0, #0
	ble _08043D9C
	add r0, r3, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	beq _08043DEE
_08043D9C:
	lsl r0, r2, #16
	cmp r0, #0
	bge _08043D3A
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08043D3A
	b _08043DD0
	.byte 0x00
	.byte 0x00
_08043DB4:
	.4byte gUnknown_03001990
_08043DB8:
	mov r1, #54
	ldrsh r0, [r3, r1]
	ldrh r2, [r3, #54]
	cmp r0, #0
	ble _08043DDC
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08043DDC
_08043DD0:
	ldr r1, _08043DD8  @ =0x0300194C
	mov r0, #1
	strb r0, [r1]
	b _08043D3A
_08043DD8:
	.4byte 0x0300194C
_08043DDC:
	lsl r0, r2, #16
	cmp r0, #0
	bge _08043D3A
	add r0, r3, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	bne _08043D3A
_08043DEE:
	ldr r0, _08043DF4  @ =0x0300194C
	strb r1, [r0]
	b _08043D3A
_08043DF4:
	.4byte 0x0300194C
_08043DF8:
	ldr r0, _08043E50  @ =gUnknown_03001990
	ldrb r1, [r0]
	ldrb r2, [r2, #7]
	cmp r1, r2
	bne _08043E98
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08043D3A
	mov r0, #11
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08043D3A
	add r0, r4, #0
	sub r0, r0, #244
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #43
	bhi _08043E54
	mov r1, #54
	ldrsh r0, [r3, r1]
	ldrh r2, [r3, #54]
	cmp r0, #0
	ble _08043E34
	add r0, r3, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	beq _08043E8E
_08043E34:
	lsl r0, r2, #16
	cmp r0, #0
	blt _08043E3C
	b _08043D3A
_08043E3C:
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08043E4C
	b _08043D3A
_08043E4C:
	b _08043E6C
	.byte 0x00
	.byte 0x00
_08043E50:
	.4byte gUnknown_03001990
_08043E54:
	mov r1, #54
	ldrsh r0, [r3, r1]
	ldrh r2, [r3, #54]
	cmp r0, #0
	ble _08043E78
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08043E78
_08043E6C:
	ldr r1, _08043E74  @ =0x0300194C
	mov r0, #1
	strb r0, [r1]
	b _08043D3A
_08043E74:
	.4byte 0x0300194C
_08043E78:
	lsl r0, r2, #16
	cmp r0, #0
	blt _08043E80
	b _08043D3A
_08043E80:
	add r0, r3, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	beq _08043E8E
	b _08043D3A
_08043E8E:
	ldr r0, _08043E94  @ =0x0300194C
	strb r1, [r0]
	b _08043D3A
_08043E94:
	.4byte 0x0300194C
_08043E98:
	mov r0, #0
_08043E9A:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08043CBC

	THUMB_FUNC_START sub_08043EA0
sub_08043EA0: @ 0x08043EA0
	push {lr}
	add r3, r0, #0
	add r2, r1, #0
	ldr r1, _08043EE0  @ =gUnknown_030019A4
	mov r0, #0
	strb r0, [r1]
	ldr r0, _08043EE4  @ =0x030019FC
	ldrb r0, [r0]
	cmp r0, #2
	bls _08043EC2
	ldr r0, _08043EE8  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #48
	and r0, r0, r1
	cmp r0, #0
	bne _08043EC2
	b _08044034
_08043EC2:
	ldr r1, [r2, #28]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08043EF0
	ldr r0, _08043EEC  @ =gUnknown_030019F4 
	ldrb r1, [r0]
	ldrb r0, [r2, #7]
	and r0, r0, r1
	cmp r0, #0
	beq _08043EDA
	b _08044034
_08043EDA:
	mov r0, #1
	b _08044036
	.byte 0x00
	.byte 0x00
_08043EE0:
	.4byte gUnknown_030019A4
_08043EE4:
	.4byte 0x030019FC
_08043EE8:
	.4byte gUnknown_03001990
_08043EEC:
	.4byte gUnknown_030019F4 
_08043EF0:
	mov r0, #4
	and r1, r1, r0
	cmp r1, #0
	beq _08043F94
	ldr r0, _08043F50  @ =gUnknown_03001990
	ldrb r1, [r0]
	ldrb r0, [r2, #7]
	and r0, r0, r1
	cmp r0, #0
	bne _08043F06
	b _08044034
_08043F06:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08043EDA
	mov r0, #11
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08043EDA
	ldrh r0, [r3, #4]
	sub r0, r0, #244
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #43
	bhi _08043F54
	mov r1, #54
	ldrsh r0, [r3, r1]
	ldrh r2, [r3, #54]
	cmp r0, #0
	ble _08043F38
	add r0, r3, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	beq _08043F8A
_08043F38:
	lsl r0, r2, #16
	cmp r0, #0
	bge _08043EDA
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08043EDA
	b _08043F6C
	.byte 0x00
	.byte 0x00
_08043F50:
	.4byte gUnknown_03001990
_08043F54:
	mov r1, #54
	ldrsh r0, [r3, r1]
	ldrh r2, [r3, #54]
	cmp r0, #0
	ble _08043F78
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08043F78
_08043F6C:
	ldr r1, _08043F74  @ =0x0300194C
	mov r0, #1
	strb r0, [r1]
	b _08043EDA
_08043F74:
	.4byte 0x0300194C
_08043F78:
	lsl r0, r2, #16
	cmp r0, #0
	bge _08043EDA
	add r0, r3, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	bne _08043EDA
_08043F8A:
	ldr r0, _08043F90  @ =0x0300194C
	strb r1, [r0]
	b _08043EDA
_08043F90:
	.4byte 0x0300194C
_08043F94:
	ldr r0, _08043FEC  @ =gUnknown_03001990
	ldrb r1, [r0]
	ldrb r2, [r2, #7]
	cmp r1, r2
	bne _08044034
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08043EDA
	mov r0, #11
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08043EDA
	ldrh r0, [r3, #4]
	sub r0, r0, #244
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #43
	bhi _08043FF0
	mov r1, #54
	ldrsh r0, [r3, r1]
	ldrh r2, [r3, #54]
	cmp r0, #0
	ble _08043FD0
	add r0, r3, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	beq _0804402A
_08043FD0:
	lsl r0, r2, #16
	cmp r0, #0
	blt _08043FD8
	b _08043EDA
_08043FD8:
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08043FE8
	b _08043EDA
_08043FE8:
	b _08044008
	.byte 0x00
	.byte 0x00
_08043FEC:
	.4byte gUnknown_03001990
_08043FF0:
	mov r1, #54
	ldrsh r0, [r3, r1]
	ldrh r2, [r3, #54]
	cmp r0, #0
	ble _08044014
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08044014
_08044008:
	ldr r1, _08044010  @ =0x0300194C
	mov r0, #1
	strb r0, [r1]
	b _08043EDA
_08044010:
	.4byte 0x0300194C
_08044014:
	lsl r0, r2, #16
	cmp r0, #0
	blt _0804401C
	b _08043EDA
_0804401C:
	add r0, r3, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	beq _0804402A
	b _08043EDA
_0804402A:
	ldr r0, _08044030  @ =0x0300194C
	strb r1, [r0]
	b _08043EDA
_08044030:
	.4byte 0x0300194C
_08044034:
	mov r0, #0
_08044036:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08043EA0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804403C
sub_0804403C: @ 0x0804403C
	push {lr}
	sub sp, sp, #16
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _08044064  @ =0x03001B68
	ldrb r0, [r0]
	cmp r0, #0
	beq _080440A8
	ldr r0, [r3, #28]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0804406C
	ldr r0, _08044068  @ =gUnknown_03001990
	ldrb r1, [r0]
	ldrb r0, [r3, #7]
	and r0, r0, r1
	cmp r0, #0
	beq _080440A8
	b _08044076
_08044064:
	.4byte 0x03001B68
_08044068:
	.4byte gUnknown_03001990
_0804406C:
	ldr r0, _080440A4  @ =gUnknown_03001990
	ldrb r0, [r0]
	ldrb r1, [r3, #7]
	cmp r0, r1
	bne _080440A8
_08044076:
	ldr r0, [r2, #108]
	str r0, [sp]
	ldr r0, [r2, #116]
	str r0, [sp, #8]
	ldr r0, [r2, #112]
	str r0, [sp, #4]
	ldr r0, [r2, #120]
	str r0, [sp, #12]
	mov r0, #4
	ldrsh r1, [r3, r0]
	lsl r1, r1, #8
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	bne _080440A8
	mov r0, #1
	b _080440AA
	.byte 0x00
	.byte 0x00
_080440A4:
	.4byte gUnknown_03001990
_080440A8:
	mov r0, #0
_080440AA:
	add sp, sp, #16
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804403C

	THUMB_FUNC_START sub_080440B0
sub_080440B0: @ 0x080440B0
	push {lr}
	sub sp, sp, #16
	add r2, r0, #0
	add r3, r1, #0
	ldr r1, _080440D8  @ =gUnknown_030019A4
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r3, #28]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080440E0
	ldr r0, _080440DC  @ =gUnknown_03001990
	ldrb r1, [r0]
	ldrb r0, [r3, #7]
	and r0, r0, r1
	cmp r0, #0
	beq _0804411C
	b _080440EA
	.byte 0x00
	.byte 0x00
_080440D8:
	.4byte gUnknown_030019A4
_080440DC:
	.4byte gUnknown_03001990
_080440E0:
	ldr r0, _08044118  @ =gUnknown_03001990
	ldrb r0, [r0]
	ldrb r1, [r3, #7]
	cmp r0, r1
	bne _0804411C
_080440EA:
	ldr r0, [r2, #108]
	str r0, [sp]
	ldr r0, [r2, #116]
	str r0, [sp, #8]
	ldr r0, [r2, #112]
	str r0, [sp, #4]
	ldr r0, [r2, #120]
	str r0, [sp, #12]
	mov r0, #4
	ldrsh r1, [r3, r0]
	lsl r1, r1, #8
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	bne _0804411C
	mov r0, #1
	b _0804411E
	.byte 0x00
	.byte 0x00
_08044118:
	.4byte gUnknown_03001990
_0804411C:
	mov r0, #0
_0804411E:
	add sp, sp, #16
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080440B0

	THUMB_FUNC_START sub_08044124
sub_08044124: @ 0x08044124
	push {r4-r6,lr}
	add r3, r1, #0
	ldr r1, _0804416C  @ =gUnknown_030019A4
	mov r0, #0
	strb r0, [r1]
	ldr r0, _08044170  @ =gUnknown_03001944
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	mov r5, #0
	mov r1, #12
	ldrsh r0, [r3, r1]
	cmp r5, r0
	bge _080441B8
	ldr r4, _08044174  @ =gUnknown_03001A10
	add r6, r0, #0
_08044146:
	lsl r0, r2, #16
	cmp r0, #0
	bge _0804414E
	mov r2, #9
_0804414E:
	ldr r1, [r3, #28]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08044178
	lsl r2, r2, #16
	asr r0, r2, #16
	add r0, r0, r4
	ldrb r1, [r0]
	ldrb r0, [r3, #7]
	and r0, r0, r1
	cmp r0, #0
	bne _080441A2
_08044168:
	mov r0, #1
	b _080441BA
_0804416C:
	.4byte gUnknown_030019A4
_08044170:
	.4byte gUnknown_03001944
_08044174:
	.4byte gUnknown_03001A10
_08044178:
	mov r0, #4
	and r1, r1, r0
	cmp r1, #0
	beq _08044192
	lsl r2, r2, #16
	asr r0, r2, #16
	add r0, r0, r4
	ldrb r1, [r0]
	ldrb r0, [r3, #7]
	and r0, r0, r1
	cmp r0, #0
	beq _080441A2
	b _08044168
_08044192:
	lsl r0, r2, #16
	asr r1, r0, #16
	add r1, r1, r4
	ldrb r1, [r1]
	add r2, r0, #0
	ldrb r0, [r3, #7]
	cmp r1, r0
	beq _08044168
_080441A2:
	lsl r1, r5, #16
	mov r5, #128
	lsl r5, r5, #9
	add r1, r1, r5
	ldr r5, _080441C0  @ =0xFFFF0000
	add r0, r2, r5
	lsr r2, r0, #16
	lsr r5, r1, #16
	asr r1, r1, #16
	cmp r1, r6
	blt _08044146
_080441B8:
	mov r0, #0
_080441BA:
	pop {r4-r6}
	pop {r1}
	bx r1
_080441C0:
	.4byte 0xFFFF0000
	THUMB_FUNC_END sub_08044124

	THUMB_FUNC_START sub_080441C4
sub_080441C4: @ 0x080441C4
	push {r4-r6,lr}
	add r3, r1, #0
	ldr r0, _080441F4  @ =gUnknown_030019A4
	mov r1, #0
	strb r1, [r0]
	mov r2, #0
	ldr r0, [r3, #28]
	mov r6, #2
	and r6, r6, r0
	ldr r4, _080441F8  @ =gUnknown_03001A10
	mov r5, #4
	and r5, r5, r0
_080441DC:
	cmp r6, #0
	beq _080441FC
	lsl r2, r2, #16
	asr r0, r2, #16
	add r0, r0, r4
	ldrb r1, [r0]
	ldrb r0, [r3, #7]
	and r0, r0, r1
	cmp r0, #0
	bne _08044222
_080441F0:
	mov r0, #1
	b _08044232
_080441F4:
	.4byte gUnknown_030019A4
_080441F8:
	.4byte gUnknown_03001A10
_080441FC:
	cmp r5, #0
	beq _08044212
	lsl r2, r2, #16
	asr r0, r2, #16
	add r0, r0, r4
	ldrb r1, [r0]
	ldrb r0, [r3, #7]
	and r0, r0, r1
	cmp r0, #0
	beq _08044222
	b _080441F0
_08044212:
	lsl r0, r2, #16
	asr r1, r0, #16
	add r1, r1, r4
	ldrb r1, [r1]
	add r2, r0, #0
	ldrb r0, [r3, #7]
	cmp r1, r0
	beq _080441F0
_08044222:
	mov r1, #128
	lsl r1, r1, #9
	add r0, r2, r1
	lsr r2, r0, #16
	asr r0, r0, #16
	cmp r0, #9
	ble _080441DC
	mov r0, #0
_08044232:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080441C4

	THUMB_FUNC_START sub_08044238
sub_08044238: @ 0x08044238
	push {r4,lr}
	sub sp, sp, #16
	add r4, r0, #0
	ldr r0, [r4, #108]
	str r0, [sp]
	ldr r0, [r4, #116]
	str r0, [sp, #8]
	ldr r0, [r4, #112]
	str r0, [sp, #4]
	ldr r0, [r4, #120]
	str r0, [sp, #12]
	ldrh r0, [r4]
	mov r3, #2
	cmp r0, #102
	bne _08044258
	mov r3, #1
_08044258:
	mov r0, sp
	mov r1, #0
	mov r2, #128
	lsl r2, r2, #1
	bl sub_080066FC
	add r2, r0, #0
	cmp r2, #0
	bne _0804426E
	mov r0, #1
	b _0804433C
_0804426E:
	ldr r0, _08044284  @ =gUnknown_03001A38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804433A
	mov r1, #127
	and r1, r1, r2
	cmp r1, #1
	bne _08044288
	strb r1, [r4, #15]
	b _08044290
	.byte 0x00
	.byte 0x00
_08044284:
	.4byte gUnknown_03001A38
_08044288:
	cmp r1, #2
	bne _08044290
	mov r0, #1
	strb r0, [r4, #15]
_08044290:
	cmp r1, #12
	bne _080442E8
	mov r0, #192
	strh r0, [r4, #54]
	ldr r0, _080442E4  @ =gUnknown_030019AC
	ldr r3, [r0]
	mov r0, #11
	ldrsb r0, [r3, r0]
	add r1, r4, #0
	add r1, r1, #61
	ldrb r1, [r1]
	cmp r0, r1
	bne _0804433A
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0804433A
	ldr r2, [r3, #36]
	asr r2, r2, #8
	add r2, r2, #40
	ldr r0, [r4, #36]
	add r1, r4, #0
	add r1, r1, #132
	ldr r1, [r1]
	asr r0, r0, #8
	ldrb r1, [r1, #2]
	add r0, r0, r1
	cmp r2, r0
	bgt _0804433A
	ldr r0, [r4, #92]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0804433A
	ldrh r0, [r3, #54]
	add r0, r0, #192
	b _08044338
	.byte 0x00
	.byte 0x00
_080442E4:
	.4byte gUnknown_030019AC
_080442E8:
	cmp r1, #13
	bne _0804433A
	ldr r0, _08044344  @ =0x0000FF40
	strh r0, [r4, #54]
	ldr r0, _08044348  @ =gUnknown_030019AC
	ldr r3, [r0]
	mov r0, #11
	ldrsb r0, [r3, r0]
	add r1, r4, #0
	add r1, r1, #61
	ldrb r1, [r1]
	cmp r0, r1
	bne _0804433A
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0804433A
	ldr r2, [r3, #36]
	asr r2, r2, #8
	add r2, r2, #40
	ldr r0, [r4, #36]
	add r1, r4, #0
	add r1, r1, #132
	ldr r1, [r1]
	asr r0, r0, #8
	ldrb r1, [r1, #2]
	add r0, r0, r1
	cmp r2, r0
	bgt _0804433A
	ldr r0, [r4, #92]
	mov r1, #32
	and r0, r0, r1
	cmp r0, #0
	bne _0804433A
	ldrh r0, [r3, #54]
	sub r0, r0, #192
_08044338:
	strh r0, [r3, #54]
_0804433A:
	mov r0, #0
_0804433C:
	add sp, sp, #16
	pop {r4}
	pop {r1}
	bx r1
_08044344:
	.4byte 0x0000FF40
_08044348:
	.4byte gUnknown_030019AC
	THUMB_FUNC_END sub_08044238

	THUMB_FUNC_START sub_0804434C
sub_0804434C: @ 0x0804434C
	push {r4,r5,lr}
	add r2, r0, #0
	ldr r0, _080443B0  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _08044428
	ldr r4, _080443B4  @ =0x03001A5C
	ldr r3, [r4]
	cmp r3, #0
	bne _08044414
	ldr r0, _080443B8  @ =0x030019FC
	strb r3, [r0]
	add r4, r2, #0
	add r4, r4, #67
	ldrb r5, [r4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08044428
	mov r1, #11
	ldrsb r1, [r2, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _080443C8
	ldr r0, _080443BC  @ =0x03001A40
	strb r3, [r0]
	ldr r0, _080443C0  @ =0x030019F0
	strb r3, [r0]
	ldr r0, _080443C4  @ =gUnknown_030019AC
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	sub r0, r0, #25
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #10
	bls _080443FC
	add r0, r1, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _080443FC
	b _080443F6
_080443B0:
	.4byte gUnknown_03001A1C
_080443B4:
	.4byte 0x03001A5C
_080443B8:
	.4byte 0x030019FC
_080443BC:
	.4byte 0x03001A40
_080443C0:
	.4byte 0x030019F0
_080443C4:
	.4byte gUnknown_030019AC
_080443C8:
	ldrb r2, [r2, #11]
	lsl r2, r2, #24
	asr r2, r2, #24
	ldr r0, _08044400  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #122
	bne _08044428
	ldr r0, _08044404  @ =gUnknown_030019AC
	ldr r1, [r0]
	ldr r0, [r2, #36]
	ldr r2, _08044408  @ =0xFFFFF000
	add r0, r0, r2
	ldr r1, [r1, #36]
	cmp r1, r0
	blt _08044428
	ldr r0, _0804440C  @ =0x03001A40
	strb r3, [r0]
	ldr r0, _08044410  @ =0x030019F0
	strb r3, [r0]
_080443F6:
	mov r0, #255
	orr r0, r0, r5
	strb r0, [r4]
_080443FC:
	mov r0, #1
	b _0804442A
_08044400:
	.4byte gUnknown_03001940
_08044404:
	.4byte gUnknown_030019AC
_08044408:
	.4byte 0xFFFFF000
_0804440C:
	.4byte 0x03001A40
_08044410:
	.4byte 0x030019F0
_08044414:
	lsr r1, r3, #16
	mov r0, #127
	and r0, r0, r3
	str r0, [r4]
	cmp r0, #6
	bne _08044428
	add r0, r2, #0
	add r0, r0, #108
	bl sub_0802D140
_08044428:
	mov r0, #0
_0804442A:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804434C

	THUMB_FUNC_START sub_08044430
sub_08044430: @ 0x08044430
	push {r4,r5,lr}
	add r3, r0, #0
	ldr r4, [r3, #76]
	cmp r4, #0
	ble _080444A8
	ldr r2, _08044470  @ =gUnknown_03001940
	mov r0, #176
	add r1, r4, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r5, r0, r1
	ldr r0, [r5, #92]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _080444A8
	ldr r0, [r3, #92]
	mov r1, #15
	and r0, r0, r1
	cmp r0, #0
	beq _08044474
	ldr r2, [r3, #120]
	ldr r0, [r5, #36]
	sub r1, r2, r0
	cmp r1, #0
	bge _08044468
	sub r1, r0, r2
_08044468:
	cmp r1, #119
	bgt _0804448E
	b _08044488
	.byte 0x00
	.byte 0x00
_08044470:
	.4byte gUnknown_03001940
_08044474:
	mov r0, #11
	ldrsb r0, [r3, r0]
	cmp r0, r4
	bne _080444A8
	ldr r2, [r3, #120]
	ldr r0, [r5, #36]
	sub r1, r2, r0
	cmp r1, #0
	bge _08044488
	sub r1, r0, r2
_08044488:
	ldrh r0, [r5]
	cmp r0, #126
	beq _080444A8
_0804448E:
	ldr r0, _080444A4  @ =0x000007FF
	cmp r1, r0
	bgt _0804449E
	ldr r0, [r3, #36]
	mov r1, #160
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [r3, #36]
_0804449E:
	mov r0, #1
	b _080444AA
	.byte 0x00
	.byte 0x00
_080444A4:
	.4byte 0x000007FF
_080444A8:
	mov r0, #0
_080444AA:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08044430

	THUMB_FUNC_START sub_080444B0
sub_080444B0: @ 0x080444B0
	push {r4-r6,lr}
	add r3, r0, #0
	add r5, r1, #0
	ldr r4, [r3, #76]
	mov r6, #1
	neg r6, r6
	cmp r4, r6
	bne _080444C2
	b _080445D6
_080444C2:
	ldrb r0, [r5, #6]
	mov r1, #15
	and r0, r0, r1
	ldr r1, [r3, #92]
	and r1, r1, r0
	cmp r1, #0
	bne _080444D2
	b _080445D6
_080444D2:
	ldr r2, _080445A8  @ =gUnknown_03001940
	mov r0, #176
	add r1, r4, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r4, r0, r1
	ldrh r2, [r4]
	mov r1, #8
	ldrsh r0, [r5, r1]
	cmp r2, r0
	bne _080445D6
	add r1, r2, #0
	cmp r1, #4
	beq _080445AC
	cmp r1, #178
	bne _08044504
	ldrh r2, [r4, #4]
	add r0, r2, #0
	sub r0, r0, #29
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #5
	bls _080445D6
	cmp r2, #1
	bls _080445D6
_08044504:
	ldrh r5, [r3]
	cmp r5, #178
	bne _0804451C
	ldrh r2, [r3, #4]
	add r0, r2, #0
	sub r0, r0, #29
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #5
	bls _080445D6
	cmp r2, #1
	bls _080445D6
_0804451C:
	cmp r1, #180
	bne _08044532
	ldrh r2, [r4, #4]
	add r0, r2, #0
	sub r0, r0, #29
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #5
	bls _080445D6
	cmp r2, #1
	bls _080445D6
_08044532:
	cmp r5, #180
	bne _08044548
	ldrh r2, [r3, #4]
	add r0, r2, #0
	sub r0, r0, #29
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #5
	bls _080445D6
	cmp r2, #1
	bls _080445D6
_08044548:
	cmp r1, #182
	bne _0804455E
	ldrh r2, [r4, #4]
	add r0, r2, #0
	sub r0, r0, #29
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #5
	bls _080445D6
	cmp r2, #1
	bls _080445D6
_0804455E:
	cmp r5, #182
	bne _08044574
	ldrh r2, [r3, #4]
	add r0, r2, #0
	sub r0, r0, #29
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #5
	bls _080445D6
	cmp r2, #1
	bls _080445D6
_08044574:
	cmp r1, #178
	bne _08044584
	ldrh r0, [r4, #4]
	sub r0, r0, #49
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #7
	bls _080445D6
_08044584:
	cmp r1, #180
	bne _08044594
	ldrh r0, [r4, #4]
	sub r0, r0, #49
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #7
	bls _080445D6
_08044594:
	cmp r1, #182
	bne _080445C6
	ldrh r0, [r4, #4]
	sub r0, r0, #49
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #7
	bls _080445D6
	b _080445C6
	.byte 0x00
	.byte 0x00
_080445A8:
	.4byte gUnknown_03001940
_080445AC:
	add r0, r3, #0
	add r0, r0, #61
	ldr r1, _080445CC  @ =0x03001950
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080445D4
	ldr r1, _080445D0  @ =0x0300198C
	ldrb r0, [r1]
	cmp r0, #0
	bne _080445D6
	mov r0, #13
	strb r0, [r1]
_080445C6:
	mov r0, #1
	b _080445D8
	.byte 0x00
	.byte 0x00
_080445CC:
	.4byte 0x03001950
_080445D0:
	.4byte 0x0300198C
_080445D4:
	str r6, [r3, #76]
_080445D6:
	mov r0, #0
_080445D8:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080444B0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080445E0
sub_080445E0: @ 0x080445E0
	push {r4,r5,lr}
	sub sp, sp, #16
	add r3, r0, #0
	ldr r4, [r3, #92]
	mov r0, #240
	and r0, r0, r4
	lsr r0, r0, #4
	ldrb r1, [r1, #6]
	and r0, r0, r1
	cmp r0, #0
	beq _08044674
	ldrh r1, [r3]
	cmp r1, #0
	bne _0804465E
	ldr r2, [r3, #100]
	ldr r0, _08044664  @ =0x0300194C
	strb r1, [r0]
	str r1, [r3, #80]
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r1, [r3, #32]
	add r0, r1, r0
	str r0, [sp]
	mov r5, #6
	ldrsh r0, [r2, r5]
	add r1, r1, r0
	str r1, [sp, #8]
	mov r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r3, #36]
	add r0, r1, r0
	str r0, [sp, #4]
	mov r3, #2
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [sp, #12]
	mov r1, #15
	and r1, r1, r4
	cmp r1, #0
	bne _08044638
	ldr r0, _08044668  @ =0x03001A40
	strb r1, [r0]
	ldr r0, _0804466C  @ =0x030019F0
	strb r1, [r0]
_08044638:
	mov r2, #128
	lsl r2, r2, #1
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	add r1, r0, #0
	cmp r1, #0
	beq _0804465E
	mov r0, #127
	and r1, r1, r0
	cmp r1, #11
	beq _08044658
	cmp r1, #10
	bne _0804465E
_08044658:
	ldr r1, _08044670  @ =0x030019FC
	mov r0, #8
	strb r0, [r1]
_0804465E:
	mov r0, #1
	b _08044676
	.byte 0x00
	.byte 0x00
_08044664:
	.4byte 0x0300194C
_08044668:
	.4byte 0x03001A40
_0804466C:
	.4byte 0x030019F0
_08044670:
	.4byte 0x030019FC
_08044674:
	mov r0, #0
_08044676:
	add sp, sp, #16
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080445E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08044680
sub_08044680: @ 0x08044680
	push {r4,lr}
	add r3, r0, #0
	add r4, r1, #0
	ldrb r0, [r3, #14]
	cmp r0, #0
	bne _080446DC
	ldr r2, [r3, #36]
	ldr r1, [r3, #20]
	sub r0, r2, r1
	cmp r0, #0
	bge _08044698
	sub r0, r1, r2
_08044698:
	asr r0, r0, #8
	cmp r0, #3
	bgt _080446DC
	ldr r2, [r3, #32]
	ldr r1, [r3, #16]
	sub r0, r2, r1
	cmp r0, #0
	bge _080446AA
	sub r0, r1, r2
_080446AA:
	asr r0, r0, #8
	cmp r0, #5
	bgt _080446DC
	ldr r1, _080446D4  @ =gUnknown_030019A4
	mov r0, #0
	strb r0, [r1]
	add r0, r3, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r2, #12
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bge _080446DC
	ldr r0, _080446D8  @ =gUnknown_030019F4 
	ldrb r0, [r0]
	ldrb r4, [r4, #7]
	cmp r0, r4
	bne _080446DC
	mov r0, #1
	b _080446DE
_080446D4:
	.4byte gUnknown_030019A4
_080446D8:
	.4byte gUnknown_030019F4 
_080446DC:
	mov r0, #0
_080446DE:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08044680

	THUMB_FUNC_START sub_080446E4
sub_080446E4: @ 0x080446E4
	push {r4-r7,lr}
	sub sp, sp, #36
	add r5, r0, #0
	ldr r3, [r5, #100]
	mov r2, #4
	ldrsh r0, [r3, r2]
	ldr r4, [r5, #32]
	add r6, r4, r0
	str r6, [sp, #12]
	mov r7, #2
	ldrsh r0, [r3, r7]
	ldr r2, [r5, #36]
	add r0, r2, r0
	mov r7, #128
	lsl r7, r7, #4
	add r7, r7, r0
	mov r12, r7
	str r7, [sp, #16]
	mov r7, #6
	ldrsh r0, [r3, r7]
	add r4, r4, r0
	str r4, [sp, #20]
	mov r7, #2
	ldrsh r0, [r3, r7]
	add r2, r2, r0
	str r2, [sp, #24]
	ldr r0, _0804479C  @ =gUnknown_03001A3C
	ldrh r2, [r0]
	mov r3, #12
	ldrsh r0, [r1, r3]
	cmp r2, r0
	blt _080447AC
	ldr r0, _080447A0  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _080447AC
	ldr r0, [r5, #92]
	mov r1, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080447AC
	mov r1, #11
	ldrsb r1, [r5, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _080447AC
	sub r2, r4, r6
	mov r3, #128
	lsl r3, r3, #1
	add r0, sp, #28
	str r0, [sp]
	add r0, sp, #32
	str r0, [sp, #4]
	ldr r0, _080447A4  @ =gCurrentSwitchState
	ldrb r0, [r0]
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, r12
	bl sub_08002A04
	cmp r0, #0
	beq _080447AC
	ldr r0, [sp, #12]
	ldr r1, [sp, #28]
	add r0, r0, r1
	str r0, [sp, #12]
	ldr r2, [r5, #100]
	mov r7, #2
	ldrsh r1, [r2, r7]
	ldr r0, [sp, #16]
	add r0, r0, r1
	mov r3, #0
	ldrsh r1, [r2, r3]
	sub r0, r0, r1
	str r0, [sp, #24]
	ldr r2, _080447A8  @ =0xFFFFF800
	add r0, sp, #12
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _080447AC
	ldr r0, [r5, #32]
	ldr r1, [sp, #28]
	add r0, r0, r1
	str r0, [r5, #32]
	mov r0, #1
	b _080447AE
_0804479C:
	.4byte gUnknown_03001A3C
_080447A0:
	.4byte gUnknown_03001990
_080447A4:
	.4byte gCurrentSwitchState
_080447A8:
	.4byte 0xFFFFF800
_080447AC:
	mov r0, #0
_080447AE:
	add sp, sp, #36
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080446E4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080447B8
sub_080447B8: @ 0x080447B8
	push {r4-r7,lr}
	sub sp, sp, #36
	add r6, r0, #0
	ldr r2, _08044858  @ =0x03001718
	ldr r1, [r2]
	ldr r0, _0804485C  @ =0x41C64E6D
	mul r0, r1, r0
	ldr r1, _08044860  @ =0x00003039
	add r0, r0, r1
	str r0, [r2]
	lsl r0, r0, #1
	lsr r0, r0, #17
	mov r1, #255
	and r0, r0, r1
	cmp r0, #254
	ble _0804486C
	ldr r5, [r6, #100]
	mov r3, #4
	ldrsh r0, [r5, r3]
	ldr r2, [r6, #32]
	add r0, r2, r0
	str r0, [sp, #12]
	mov r7, #2
	ldrsh r1, [r5, r7]
	ldr r4, [r6, #36]
	add r1, r4, r1
	mov r3, #128
	lsl r3, r3, #4
	add r1, r1, r3
	str r1, [sp, #16]
	mov r7, #6
	ldrsh r3, [r5, r7]
	add r2, r2, r3
	str r2, [sp, #20]
	mov r7, #2
	ldrsh r3, [r5, r7]
	add r4, r4, r3
	str r4, [sp, #24]
	sub r2, r2, r0
	mov r3, #192
	lsl r3, r3, #2
	add r4, sp, #28
	str r4, [sp]
	add r4, sp, #32
	str r4, [sp, #4]
	ldr r4, _08044864  @ =gCurrentSwitchState
	ldrb r4, [r4]
	str r4, [sp, #8]
	bl sub_08002A04
	cmp r0, #0
	beq _0804486C
	ldr r0, [sp, #12]
	ldr r1, [sp, #28]
	add r0, r0, r1
	str r0, [sp, #12]
	ldr r2, [r6, #100]
	mov r0, #2
	ldrsh r1, [r2, r0]
	ldr r0, [sp, #16]
	add r0, r0, r1
	mov r3, #0
	ldrsh r1, [r2, r3]
	sub r0, r0, r1
	str r0, [sp, #24]
	ldr r2, _08044868  @ =0xFFFFF800
	add r0, sp, #12
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _0804486C
	ldr r0, [r6, #32]
	ldr r1, [sp, #28]
	add r0, r0, r1
	str r0, [r6, #32]
	mov r0, #1
	b _0804486E
	.byte 0x00
	.byte 0x00
_08044858:
	.4byte 0x03001718
_0804485C:
	.4byte 0x41C64E6D
_08044860:
	.4byte 0x00003039
_08044864:
	.4byte gCurrentSwitchState
_08044868:
	.4byte 0xFFFFF800
_0804486C:
	mov r0, #0
_0804486E:
	add sp, sp, #36
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080447B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08044878
sub_08044878: @ 0x08044878
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r1, _080448C0  @ =0x03001B74
	ldrb r0, [r1]
	cmp r0, #0
	bne _08044886
	b _080449B8
_08044886:
	add r1, r0, #0
	ldr r0, _080448C4  @ =gUnknown_03001940
	ldr r3, [r0]
	mov r4, #176
	add r0, r1, #0
	mul r0, r4, r0
	add r2, r0, r3
	ldr r0, [r2, #120]
	mov r1, #192
	lsl r1, r1, #5
	add r0, r0, r1
	ldr r1, [r5, #120]
	cmp r1, r0
	bgt _080448A4
	b _080449B8
_080448A4:
	ldr r0, [r2, #72]
	mul r0, r4, r0
	add r3, r3, r0
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #13
	bne _080448C8
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _080448D4
_080448C0:
	.4byte 0x03001B74
_080448C4:
	.4byte gUnknown_03001940
_080448C8:
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_080448D4:
	ldr r2, _08044914  @ =0x03001B64
	ldr r0, _08044918  @ =0x03001B74
	ldrb r1, [r2]
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r1, r0
	bne _0804495C
	ldr r3, _0804491C  @ =0x03001B50
	ldrb r1, [r3]
	cmp r1, #0
	beq _0804494C
	ldr r0, _08044920  @ =gUnknown_03001940
	add r2, r1, #0
	ldr r3, [r0]
	mov r1, #176
	add r0, r2, #0
	mul r0, r1, r0
	add r0, r0, r3
	ldr r0, [r0, #72]
	mul r0, r1, r0
	add r3, r3, r0
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #13
	bne _08044924
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _08044930
_08044914:
	.4byte 0x03001B64
_08044918:
	.4byte 0x03001B74
_0804491C:
	.4byte 0x03001B50
_08044920:
	.4byte gUnknown_03001940
_08044924:
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_08044930:
	ldr r2, _08044940  @ =0x03001B64
	ldr r1, _08044944  @ =0x03001B50
	ldrb r0, [r1]
	strb r0, [r2]
	mov r0, #0
	strb r0, [r1]
	ldr r4, _08044948  @ =0x03001B74
	b _08044952
_08044940:
	.4byte 0x03001B64
_08044944:
	.4byte 0x03001B50
_08044948:
	.4byte 0x03001B74
_0804494C:
	strb r1, [r2]
	ldr r0, _08044958  @ =0x03001B68
	strb r1, [r0]
_08044952:
	mov r1, #0
	strb r1, [r4]
	b _080449A2
_08044958:
	.4byte 0x03001B68
_0804495C:
	ldr r0, _08044988  @ =gUnknown_03001940
	ldrb r2, [r2]
	ldr r3, [r0]
	mov r1, #176
	add r0, r2, #0
	mul r0, r1, r0
	add r0, r0, r3
	ldr r0, [r0, #72]
	mul r0, r1, r0
	add r3, r3, r0
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #13
	bne _0804498C
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _08044998
	.byte 0x00
	.byte 0x00
_08044988:
	.4byte gUnknown_03001940
_0804498C:
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_08044998:
	ldr r0, _080449AC  @ =0x03001B50
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080449B0  @ =0x03001B74
	strb r1, [r0]
_080449A2:
	ldr r0, _080449B4  @ =0x03001B5C
	strb r1, [r0]
	mov r0, #1
	b _080449BA
	.byte 0x00
	.byte 0x00
_080449AC:
	.4byte 0x03001B50
_080449B0:
	.4byte 0x03001B74
_080449B4:
	.4byte 0x03001B5C
_080449B8:
	mov r0, #0
_080449BA:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08044878

	THUMB_FUNC_START sub_080449C0
sub_080449C0: @ 0x080449C0
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r1, _08044A08  @ =0x03001B5C
	ldrb r0, [r1]
	cmp r0, #0
	bne _080449CE
	b _08044B08
_080449CE:
	add r1, r0, #0
	ldr r0, _08044A0C  @ =gUnknown_03001940
	ldr r3, [r0]
	mov r4, #176
	add r0, r1, #0
	mul r0, r4, r0
	add r2, r0, r3
	ldr r0, [r2, #120]
	mov r1, #192
	lsl r1, r1, #5
	add r0, r0, r1
	ldr r1, [r5, #120]
	cmp r1, r0
	bgt _080449EC
	b _08044B08
_080449EC:
	ldr r0, [r2, #72]
	mul r0, r4, r0
	add r3, r3, r0
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #13
	bne _08044A10
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _08044A1C
_08044A08:
	.4byte 0x03001B5C
_08044A0C:
	.4byte gUnknown_03001940
_08044A10:
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_08044A1C:
	ldr r2, _08044A5C  @ =0x03001B64
	ldr r0, _08044A60  @ =0x03001B5C
	ldrb r1, [r2]
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r1, r0
	bne _08044AAC
	ldr r3, _08044A64  @ =0x03001B50
	ldrb r1, [r3]
	cmp r1, #0
	beq _08044A94
	ldr r0, _08044A68  @ =gUnknown_03001940
	add r2, r1, #0
	ldr r3, [r0]
	mov r1, #176
	add r0, r2, #0
	mul r0, r1, r0
	add r0, r0, r3
	ldr r0, [r0, #72]
	mul r0, r1, r0
	add r3, r3, r0
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #13
	bne _08044A6C
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _08044A78
_08044A5C:
	.4byte 0x03001B64
_08044A60:
	.4byte 0x03001B5C
_08044A64:
	.4byte 0x03001B50
_08044A68:
	.4byte gUnknown_03001940
_08044A6C:
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_08044A78:
	ldr r2, _08044A88  @ =0x03001B64
	ldr r1, _08044A8C  @ =0x03001B50
	ldrb r0, [r1]
	strb r0, [r2]
	mov r0, #0
	strb r0, [r1]
	ldr r4, _08044A90  @ =0x03001B5C
	b _08044A9A
_08044A88:
	.4byte 0x03001B64
_08044A8C:
	.4byte 0x03001B50
_08044A90:
	.4byte 0x03001B5C
_08044A94:
	strb r1, [r2]
	ldr r0, _08044AA4  @ =0x03001B68
	strb r1, [r0]
_08044A9A:
	ldr r1, _08044AA8  @ =0x03001B74
	mov r0, #0
	strb r0, [r1]
	strb r0, [r4]
	b _08044AF6
_08044AA4:
	.4byte 0x03001B68
_08044AA8:
	.4byte 0x03001B74
_08044AAC:
	ldr r0, _08044AD8  @ =gUnknown_03001940
	ldrb r2, [r2]
	ldr r3, [r0]
	mov r1, #176
	add r0, r2, #0
	mul r0, r1, r0
	add r0, r0, r3
	ldr r0, [r0, #72]
	mul r0, r1, r0
	add r3, r3, r0
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #13
	bne _08044ADC
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _08044AE8
	.byte 0x00
	.byte 0x00
_08044AD8:
	.4byte gUnknown_03001940
_08044ADC:
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_08044AE8:
	ldr r0, _08044AFC  @ =0x03001B50
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08044B00  @ =0x03001B74
	strb r1, [r0]
	ldr r0, _08044B04  @ =0x03001B5C
	strb r1, [r0]
_08044AF6:
	mov r0, #1
	b _08044B0A
	.byte 0x00
	.byte 0x00
_08044AFC:
	.4byte 0x03001B50
_08044B00:
	.4byte 0x03001B74
_08044B04:
	.4byte 0x03001B5C
_08044B08:
	mov r0, #0
_08044B0A:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080449C0

	THUMB_FUNC_START sub_08044B10
sub_08044B10: @ 0x08044B10
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r5, _08044B64  @ =0x03001B74
	ldrb r0, [r5]
	cmp r0, #0
	beq _08044BE4
	ldr r1, _08044B68  @ =0x03001B5C
	ldrb r0, [r1]
	cmp r0, #0
	beq _08044BE4
	add r1, r0, #0
	ldr r0, _08044B6C  @ =gUnknown_03001940
	ldr r2, [r0]
	mov r3, #176
	add r0, r1, #0
	mul r0, r3, r0
	add r0, r0, r2
	ldr r0, [r0, #120]
	mov r1, #192
	lsl r1, r1, #5
	add r0, r0, r1
	ldr r1, [r4, #120]
	cmp r1, r0
	ble _08044BE4
	ldrb r0, [r5]
	mul r0, r3, r0
	add r0, r0, r2
	ldr r0, [r0, #72]
	mul r0, r3, r0
	add r2, r2, r0
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #13
	bne _08044B70
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _08044B7C
	.byte 0x00
	.byte 0x00
_08044B64:
	.4byte 0x03001B74
_08044B68:
	.4byte 0x03001B5C
_08044B6C:
	.4byte gUnknown_03001940
_08044B70:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_08044B7C:
	ldr r1, _08044BA8  @ =gUnknown_03001940
	ldr r0, _08044BAC  @ =0x03001B5C
	ldrb r0, [r0]
	ldr r2, [r1]
	mov r1, #176
	mul r0, r1, r0
	add r0, r0, r2
	ldr r0, [r0, #72]
	mul r0, r1, r0
	add r2, r2, r0
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #13
	bne _08044BB0
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _08044BBC
	.byte 0x00
	.byte 0x00
_08044BA8:
	.4byte gUnknown_03001940
_08044BAC:
	.4byte 0x03001B5C
_08044BB0:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_08044BBC:
	ldr r0, _08044BD4  @ =0x03001B64
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08044BD8  @ =0x03001B50
	strb r1, [r0]
	ldr r0, _08044BDC  @ =0x03001B74
	strb r1, [r0]
	ldr r0, _08044BE0  @ =0x03001B5C
	strb r1, [r0]
	mov r0, #1
	b _08044BE6
	.byte 0x00
	.byte 0x00
_08044BD4:
	.4byte 0x03001B64
_08044BD8:
	.4byte 0x03001B50
_08044BDC:
	.4byte 0x03001B74
_08044BE0:
	.4byte 0x03001B5C
_08044BE4:
	mov r0, #0
_08044BE6:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08044B10

	THUMB_FUNC_START sub_08044BEC
sub_08044BEC: @ 0x08044BEC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #28
	add r5, r0, #0
	ldr r0, _08044C14  @ =0x03001B68
	ldrb r6, [r0]
	cmp r6, #0
	beq _08044C18
	add r0, r5, #0
	bl sub_08044B10
	lsl r0, r0, #24
	cmp r0, #0
	beq _08044CB4
	mov r0, #1
	b _08044CB6
	.byte 0x00
	.byte 0x00
_08044C14:
	.4byte 0x03001B68
_08044C18:
	ldr r3, [r5, #100]
	mov r0, #4
	ldrsh r4, [r3, r0]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #192
	lsl r1, r1, #4
	add r0, r0, r1
	mov r7, #2
	ldrsh r2, [r3, r7]
	ldr r1, [r5, #36]
	add r1, r1, r2
	ldr r2, _08044CA8  @ =0xFFFFF800
	add r1, r1, r2
	mov r7, #6
	ldrsh r2, [r3, r7]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	mov r9, r3
	add r7, sp, #16
	str r7, [sp]
	add r3, sp, #20
	mov r8, r3
	str r3, [sp, #4]
	add r7, sp, #24
	mov r10, r7
	str r7, [sp, #8]
	str r6, [sp, #12]
	mov r3, r9
	bl sub_08002580
	add r6, r0, #0
	cmp r6, #0
	bne _08044CB4
	ldr r3, [r5, #100]
	mov r0, #4
	ldrsh r4, [r3, r0]
	ldr r0, [r5, #32]
	add r0, r0, r4
	ldr r1, _08044CAC  @ =0xFFFFF400
	add r0, r0, r1
	mov r7, #2
	ldrsh r2, [r3, r7]
	ldr r1, [r5, #36]
	add r1, r1, r2
	ldr r2, _08044CA8  @ =0xFFFFF800
	add r1, r1, r2
	mov r7, #6
	ldrsh r2, [r3, r7]
	sub r2, r2, r4
	add r3, sp, #16
	str r3, [sp]
	mov r7, r8
	str r7, [sp, #4]
	mov r3, r10
	str r3, [sp, #8]
	str r6, [sp, #12]
	mov r3, r9
	bl sub_08002580
	add r2, r0, #0
	cmp r2, #0
	bne _08044CB4
	ldr r0, [r5, #36]
	ldr r1, _08044CB0  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #36]
	strh r2, [r5, #50]
	mov r0, #1
	b _08044CB6
	.byte 0x00
	.byte 0x00
_08044CA8:
	.4byte 0xFFFFF800
_08044CAC:
	.4byte 0xFFFFF400
_08044CB0:
	.4byte 0xFFFFFF00
_08044CB4:
	mov r0, #0
_08044CB6:
	add sp, sp, #28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08044BEC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08044CC8
sub_08044CC8: @ 0x08044CC8
	push {r4,r5,lr}
	sub sp, sp, #28
	add r5, r0, #0
	ldr r2, _08044D24  @ =0x03001718
	ldr r1, [r2]
	ldr r0, _08044D28  @ =0x41C64E6D
	mul r0, r1, r0
	ldr r1, _08044D2C  @ =0x00003039
	add r0, r0, r1
	str r0, [r2]
	lsl r0, r0, #1
	lsr r0, r0, #17
	mov r1, #255
	and r0, r0, r1
	cmp r0, #254
	ble _08044D20
	ldr r2, [r5, #104]
	mov r3, #4
	ldrsh r4, [r2, r3]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	ldr r3, _08044D30  @ =0xFFFFFF00
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #12]
	bl sub_08002580
	cmp r0, #0
	bne _08044D34
_08044D20:
	mov r0, #0
	b _08044D3E
_08044D24:
	.4byte 0x03001718
_08044D28:
	.4byte 0x41C64E6D
_08044D2C:
	.4byte 0x00003039
_08044D30:
	.4byte 0xFFFFFF00
_08044D34:
	ldr r0, [r5, #32]
	ldr r1, [sp, #16]
	add r0, r0, r1
	str r0, [r5, #32]
	mov r0, #1
_08044D3E:
	add sp, sp, #28
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08044CC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08044D48
sub_08044D48: @ 0x08044D48
	push {r4-r7,lr}
	sub sp, sp, #44
	add r6, r0, #0
	ldr r2, _08044DF0  @ =0x03001718
	ldr r1, [r2]
	ldr r0, _08044DF4  @ =0x41C64E6D
	mul r0, r1, r0
	ldr r1, _08044DF8  @ =0x00003039
	add r0, r0, r1
	str r0, [r2]
	lsl r0, r0, #1
	lsr r0, r0, #17
	mov r1, #255
	and r0, r0, r1
	cmp r0, #254
	ble _08044DFC
	ldr r5, [r6, #104]
	mov r3, #4
	ldrsh r0, [r5, r3]
	ldr r2, [r6, #32]
	add r0, r2, r0
	str r0, [sp, #16]
	mov r7, #2
	ldrsh r1, [r5, r7]
	ldr r4, [r6, #36]
	add r1, r4, r1
	mov r3, #128
	lsl r3, r3, #4
	add r1, r1, r3
	str r1, [sp, #20]
	mov r7, #6
	ldrsh r3, [r5, r7]
	add r2, r2, r3
	str r2, [sp, #24]
	mov r7, #2
	ldrsh r3, [r5, r7]
	add r4, r4, r3
	str r4, [sp, #28]
	sub r2, r2, r0
	mov r3, #192
	lsl r3, r3, #2
	add r4, sp, #32
	str r4, [sp]
	add r4, sp, #36
	str r4, [sp, #4]
	add r4, sp, #40
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #12]
	bl sub_08002580
	cmp r0, #0
	beq _08044DFC
	ldr r0, [sp, #16]
	ldr r1, [sp, #32]
	add r0, r0, r1
	str r0, [sp, #16]
	ldr r0, [sp, #24]
	add r0, r0, r1
	str r0, [sp, #24]
	ldr r0, [r6, #112]
	str r0, [sp, #20]
	ldr r0, [r6, #120]
	str r0, [sp, #28]
	mov r2, #128
	lsl r2, r2, #2
	add r0, sp, #16
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	add r1, r0, #0
	cmp r1, #0
	beq _08044DE4
	mov r0, #127
	and r0, r0, r1
	cmp r0, #1
	beq _08044DFC
_08044DE4:
	ldr r0, [r6, #32]
	ldr r1, [sp, #32]
	add r0, r0, r1
	str r0, [r6, #32]
	mov r0, #1
	b _08044DFE
_08044DF0:
	.4byte 0x03001718
_08044DF4:
	.4byte 0x41C64E6D
_08044DF8:
	.4byte 0x00003039
_08044DFC:
	mov r0, #0
_08044DFE:
	add sp, sp, #44
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08044D48

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08044E08
sub_08044E08: @ 0x08044E08
	push {r4-r7,lr}
	sub sp, sp, #44
	add r6, r0, #0
	ldr r5, [r6, #104]
	mov r1, #4
	ldrsh r0, [r5, r1]
	ldr r2, [r6, #32]
	add r0, r2, r0
	str r0, [sp, #16]
	mov r3, #2
	ldrsh r1, [r5, r3]
	ldr r4, [r6, #36]
	add r1, r4, r1
	mov r7, #128
	lsl r7, r7, #4
	add r1, r1, r7
	str r1, [sp, #20]
	mov r7, #6
	ldrsh r3, [r5, r7]
	add r2, r2, r3
	str r2, [sp, #24]
	mov r7, #2
	ldrsh r3, [r5, r7]
	add r4, r4, r3
	str r4, [sp, #28]
	sub r2, r2, r0
	mov r3, #192
	lsl r3, r3, #2
	add r4, sp, #32
	str r4, [sp]
	add r4, sp, #36
	str r4, [sp, #4]
	add r4, sp, #40
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #12]
	bl sub_08002580
	cmp r0, #0
	bne _08044E84
	ldr r0, [sp, #16]
	ldr r1, [sp, #32]
	add r0, r0, r1
	str r0, [sp, #16]
	ldr r0, [sp, #24]
	add r0, r0, r1
	str r0, [sp, #24]
	ldr r0, [r6, #112]
	str r0, [sp, #20]
	ldr r0, [r6, #120]
	str r0, [sp, #28]
	mov r2, #128
	lsl r2, r2, #2
	add r0, sp, #16
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _08044E84
	mov r0, #1
	b _08044E86
_08044E84:
	mov r0, #0
_08044E86:
	add sp, sp, #44
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08044E08

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08044E90
sub_08044E90: @ 0x08044E90
	push {r4-r7,lr}
	sub sp, sp, #44
	add r4, r0, #0
	ldr r2, [r4, #100]
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r3, [r4, #32]
	add r5, r3, r0
	str r5, [sp, #16]
	mov r7, #2
	ldrsh r0, [r2, r7]
	ldr r1, [r4, #36]
	add r0, r1, r0
	mov r7, #128
	lsl r7, r7, #4
	add r6, r0, r7
	str r6, [sp, #20]
	mov r7, #6
	ldrsh r0, [r2, r7]
	add r3, r3, r0
	str r3, [sp, #24]
	mov r7, #2
	ldrsh r0, [r2, r7]
	add r1, r1, r0
	str r1, [sp, #28]
	ldr r0, _08044F30  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08044F38
	sub r2, r3, r5
	mov r7, #128
	lsl r7, r7, #1
	add r0, sp, #32
	str r0, [sp]
	add r0, sp, #36
	str r0, [sp, #4]
	add r0, sp, #40
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #12]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl sub_08002580
	cmp r0, #0
	beq _08044F38
	ldr r0, [sp, #16]
	ldr r1, [sp, #32]
	add r0, r0, r1
	str r0, [sp, #16]
	ldr r2, [r4, #100]
	mov r0, #2
	ldrsh r1, [r2, r0]
	ldr r0, [sp, #20]
	add r0, r0, r1
	mov r3, #0
	ldrsh r1, [r2, r3]
	sub r0, r0, r1
	str r0, [sp, #28]
	ldr r2, _08044F34  @ =0xFFFFF800
	add r0, sp, #16
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _08044F38
	ldr r0, [r4, #32]
	ldr r1, [sp, #32]
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r7
	str r0, [r4, #36]
	mov r0, #1
	b _08044F3A
	.byte 0x00
	.byte 0x00
_08044F30:
	.4byte gUnknown_03001990
_08044F34:
	.4byte 0xFFFFF800
_08044F38:
	mov r0, #0
_08044F3A:
	add sp, sp, #44
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08044E90

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08044F44
sub_08044F44: @ 0x08044F44
	push {r4,r5,lr}
	sub sp, sp, #28
	add r5, r0, #0
	mov r0, #12
	ldrsh r1, [r1, r0]
	ldr r0, _08044FA4  @ =gUnknown_03001A3C
	ldrh r0, [r0]
	cmp r1, r0
	bge _08045034
	ldr r0, _08044FA8  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08045034
	ldr r2, [r5, #100]
	mov r1, #4
	ldrsh r4, [r2, r1]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	ldr r3, _08044FAC  @ =0xFFFFF800
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #12]
	bl sub_08002888
	add r4, r0, #0
	cmp r4, #0
	beq _08044FB0
	ldr r0, [sp, #24]
	str r0, [r5, #32]
	mov r0, #1
	b _08045044
_08044FA4:
	.4byte gUnknown_03001A3C
_08044FA8:
	.4byte gUnknown_03001990
_08044FAC:
	.4byte 0xFFFFF800
_08044FB0:
	ldr r2, [r5, #76]
	ldr r0, _08044FE8  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r3, r0, r1
	ldrh r0, [r3]
	cmp r0, #115
	beq _08044FC6
	cmp r0, #197
	bne _08045034
_08044FC6:
	ldr r0, [r3, #112]
	mov r1, #160
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [r5, #112]
	cmp r1, r0
	blt _08045042
	ldr r0, [r3, #120]
	mov r1, #192
	lsl r1, r1, #5
	add r0, r0, r1
	ldr r1, [r5, #120]
	cmp r1, r0
	ble _08044FF0
	ldr r0, _08044FEC  @ =0x03001B68
	strb r4, [r0]
	b _08045042
_08044FE8:
	.4byte gUnknown_03001940
_08044FEC:
	.4byte 0x03001B68
_08044FF0:
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804500C
	ldr r0, [r3, #32]
	ldr r3, _08045008  @ =0xFFFFF500
	add r0, r0, r3
	b _08045012
	.byte 0x00
	.byte 0x00
_08045008:
	.4byte 0xFFFFF500
_0804500C:
	ldr r0, [r3, #32]
	ldr r4, _08045028  @ =0xFFFFF500
	add r0, r0, r4
_08045012:
	str r0, [r5, #32]
	ldr r1, _0804502C  @ =0x03001B68
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08045030  @ =0x03001B64
	strb r2, [r0]
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	mov r0, #1
	b _08045044
_08045028:
	.4byte 0xFFFFF500
_0804502C:
	.4byte 0x03001B68
_08045030:
	.4byte 0x03001B64
_08045034:
	ldr r0, _0804504C  @ =0x03001B68
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08045050  @ =0x03001B64
	strb r1, [r0]
	ldr r0, _08045054  @ =0x03001B50
	strb r1, [r0]
_08045042:
	mov r0, #0
_08045044:
	add sp, sp, #28
	pop {r4,r5}
	pop {r1}
	bx r1
_0804504C:
	.4byte 0x03001B68
_08045050:
	.4byte 0x03001B64
_08045054:
	.4byte 0x03001B50
	THUMB_FUNC_END sub_08044F44

	THUMB_FUNC_START sub_08045058
sub_08045058: @ 0x08045058
	push {r4,r5,lr}
	sub sp, sp, #28
	add r5, r0, #0
	mov r0, #12
	ldrsh r1, [r1, r0]
	ldr r0, _080450B8  @ =gUnknown_03001A3C
	ldrh r0, [r0]
	cmp r1, r0
	bge _08045148
	ldr r0, _080450BC  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08045148
	ldr r2, [r5, #100]
	mov r1, #4
	ldrsh r4, [r2, r1]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	ldr r3, _080450C0  @ =0xFFFFF800
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #12]
	bl sub_08002580
	add r4, r0, #0
	cmp r4, #0
	beq _080450C4
	ldr r0, [sp, #24]
	str r0, [r5, #32]
	mov r0, #1
	b _08045158
_080450B8:
	.4byte gUnknown_03001A3C
_080450BC:
	.4byte gUnknown_03001990
_080450C0:
	.4byte 0xFFFFF800
_080450C4:
	ldr r2, [r5, #76]
	ldr r0, _080450FC  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r3, r0, r1
	ldrh r0, [r3]
	cmp r0, #115
	beq _080450DA
	cmp r0, #197
	bne _08045148
_080450DA:
	ldr r0, [r3, #112]
	mov r1, #160
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [r5, #112]
	cmp r1, r0
	blt _08045156
	ldr r0, [r3, #120]
	mov r1, #192
	lsl r1, r1, #5
	add r0, r0, r1
	ldr r1, [r5, #120]
	cmp r1, r0
	ble _08045104
	ldr r0, _08045100  @ =0x03001B68
	strb r4, [r0]
	b _08045156
_080450FC:
	.4byte gUnknown_03001940
_08045100:
	.4byte 0x03001B68
_08045104:
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08045120
	ldr r0, [r3, #32]
	ldr r3, _0804511C  @ =0xFFFFF500
	add r0, r0, r3
	b _08045126
	.byte 0x00
	.byte 0x00
_0804511C:
	.4byte 0xFFFFF500
_08045120:
	ldr r0, [r3, #32]
	ldr r4, _0804513C  @ =0xFFFFF500
	add r0, r0, r4
_08045126:
	str r0, [r5, #32]
	ldr r1, _08045140  @ =0x03001B68
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08045144  @ =0x03001B64
	strb r2, [r0]
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	mov r0, #1
	b _08045158
_0804513C:
	.4byte 0xFFFFF500
_08045140:
	.4byte 0x03001B68
_08045144:
	.4byte 0x03001B64
_08045148:
	ldr r0, _08045160  @ =0x03001B68
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08045164  @ =0x03001B64
	strb r1, [r0]
	ldr r0, _08045168  @ =0x03001B50
	strb r1, [r0]
_08045156:
	mov r0, #0
_08045158:
	add sp, sp, #28
	pop {r4,r5}
	pop {r1}
	bx r1
_08045160:
	.4byte 0x03001B68
_08045164:
	.4byte 0x03001B64
_08045168:
	.4byte 0x03001B50
	THUMB_FUNC_END sub_08045058

	THUMB_FUNC_START sub_0804516C
sub_0804516C: @ 0x0804516C
	push {r4,r5,lr}
	sub sp, sp, #28
	add r5, r0, #0
	mov r0, #12
	ldrsh r1, [r1, r0]
	ldr r0, _080451C0  @ =gUnknown_03001A3C
	ldrh r0, [r0]
	cmp r1, r0
	bge _0804524C
	ldr r2, [r5, #100]
	mov r1, #4
	ldrsh r4, [r2, r1]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	ldr r3, _080451C4  @ =0xFFFFF800
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #12]
	bl sub_08002888
	add r4, r0, #0
	cmp r4, #0
	beq _080451C8
	ldr r0, [sp, #24]
	str r0, [r5, #32]
	mov r0, #1
	b _0804525C
_080451C0:
	.4byte gUnknown_03001A3C
_080451C4:
	.4byte 0xFFFFF800
_080451C8:
	ldr r2, [r5, #76]
	ldr r0, _08045200  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r3, r0, r1
	ldrh r0, [r3]
	cmp r0, #115
	beq _080451DE
	cmp r0, #197
	bne _0804524C
_080451DE:
	ldr r0, [r3, #112]
	mov r1, #160
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [r5, #112]
	cmp r1, r0
	blt _0804525A
	ldr r0, [r3, #120]
	mov r1, #192
	lsl r1, r1, #5
	add r0, r0, r1
	ldr r1, [r5, #120]
	cmp r1, r0
	ble _08045208
	ldr r0, _08045204  @ =0x03001B68
	strb r4, [r0]
	b _0804525A
_08045200:
	.4byte gUnknown_03001940
_08045204:
	.4byte 0x03001B68
_08045208:
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08045224
	ldr r0, [r3, #32]
	ldr r3, _08045220  @ =0xFFFFF500
	add r0, r0, r3
	b _0804522A
	.byte 0x00
	.byte 0x00
_08045220:
	.4byte 0xFFFFF500
_08045224:
	ldr r0, [r3, #32]
	ldr r4, _08045240  @ =0xFFFFF500
	add r0, r0, r4
_0804522A:
	str r0, [r5, #32]
	ldr r1, _08045244  @ =0x03001B68
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08045248  @ =0x03001B64
	strb r2, [r0]
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	mov r0, #1
	b _0804525C
_08045240:
	.4byte 0xFFFFF500
_08045244:
	.4byte 0x03001B68
_08045248:
	.4byte 0x03001B64
_0804524C:
	ldr r0, _08045264  @ =0x03001B68
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08045268  @ =0x03001B64
	strb r1, [r0]
	ldr r0, _0804526C  @ =0x03001B50
	strb r1, [r0]
_0804525A:
	mov r0, #0
_0804525C:
	add sp, sp, #28
	pop {r4,r5}
	pop {r1}
	bx r1
_08045264:
	.4byte 0x03001B68
_08045268:
	.4byte 0x03001B64
_0804526C:
	.4byte 0x03001B50
	THUMB_FUNC_END sub_0804516C

	THUMB_FUNC_START sub_08045270
sub_08045270: @ 0x08045270
	push {r4,r5,lr}
	sub sp, sp, #28
	add r5, r0, #0
	mov r0, #12
	ldrsh r1, [r1, r0]
	ldr r0, _080452C4  @ =gUnknown_03001A3C
	ldrh r0, [r0]
	cmp r1, r0
	bge _08045350
	ldr r2, [r5, #100]
	mov r1, #4
	ldrsh r4, [r2, r1]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	ldr r3, _080452C8  @ =0xFFFFF800
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #12]
	bl sub_08002580
	add r4, r0, #0
	cmp r4, #0
	beq _080452CC
	ldr r0, [sp, #24]
	str r0, [r5, #32]
	mov r0, #1
	b _08045360
_080452C4:
	.4byte gUnknown_03001A3C
_080452C8:
	.4byte 0xFFFFF800
_080452CC:
	ldr r2, [r5, #76]
	ldr r0, _08045304  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r3, r0, r1
	ldrh r0, [r3]
	cmp r0, #115
	beq _080452E2
	cmp r0, #197
	bne _08045350
_080452E2:
	ldr r0, [r3, #112]
	mov r1, #160
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [r5, #112]
	cmp r1, r0
	blt _0804535E
	ldr r0, [r3, #120]
	mov r1, #192
	lsl r1, r1, #5
	add r0, r0, r1
	ldr r1, [r5, #120]
	cmp r1, r0
	ble _0804530C
	ldr r0, _08045308  @ =0x03001B68
	strb r4, [r0]
	b _0804535E
_08045304:
	.4byte gUnknown_03001940
_08045308:
	.4byte 0x03001B68
_0804530C:
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08045328
	ldr r0, [r3, #32]
	ldr r3, _08045324  @ =0xFFFFF500
	add r0, r0, r3
	b _0804532E
	.byte 0x00
	.byte 0x00
_08045324:
	.4byte 0xFFFFF500
_08045328:
	ldr r0, [r3, #32]
	ldr r4, _08045344  @ =0xFFFFF500
	add r0, r0, r4
_0804532E:
	str r0, [r5, #32]
	ldr r1, _08045348  @ =0x03001B68
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0804534C  @ =0x03001B64
	strb r2, [r0]
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	mov r0, #1
	b _08045360
_08045344:
	.4byte 0xFFFFF500
_08045348:
	.4byte 0x03001B68
_0804534C:
	.4byte 0x03001B64
_08045350:
	ldr r0, _08045368  @ =0x03001B68
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0804536C  @ =0x03001B64
	strb r1, [r0]
	ldr r0, _08045370  @ =0x03001B50
	strb r1, [r0]
_0804535E:
	mov r0, #0
_08045360:
	add sp, sp, #28
	pop {r4,r5}
	pop {r1}
	bx r1
_08045368:
	.4byte 0x03001B68
_0804536C:
	.4byte 0x03001B64
_08045370:
	.4byte 0x03001B50
	THUMB_FUNC_END sub_08045270

	THUMB_FUNC_START sub_08045374
sub_08045374: @ 0x08045374
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r2, r0, #0
	add r3, r1, #0
	ldr r6, [r2, #108]
	ldr r4, [r2, #116]
	ldr r0, [r2, #112]
	mov r8, r0
	ldr r0, [r2, #120]
	mov r9, r0
	ldr r7, [r3, #108]
	ldr r5, [r3, #116]
	ldr r0, [r3, #112]
	mov r10, r0
	ldr r0, [r3, #120]
	mov r12, r0
	mov r0, #192
	lsl r0, r0, #5
	add r0, r0, r12
	cmp r9, r0
	ble _080453A6
	b _080454B2
_080453A6:
	ldrh r0, [r3]
	cmp r0, #108
	bne _08045424
	mov r0, #4
	ldrsh r1, [r2, r0]
	ldr r0, _080453C8  @ =0x000001C7
	cmp r1, r0
	bne _080453CC
	cmp r6, r5
	blt _080453BC
	b _080454B2
_080453BC:
	add r0, r4, #0
	add r0, r0, #64
	cmp r0, r7
	ble _080454B2
	sub r0, r0, #128
	b _08045484
_080453C8:
	.4byte 0x000001C7
_080453CC:
	mov r0, #227
	lsl r0, r0, #1
	cmp r1, r0
	bne _080453E8
	cmp r4, r7
	ble _080454B2
	add r0, r6, #0
	add r0, r0, #64
	cmp r0, r5
	ble _080454B2
	sub r0, r0, #128
	cmp r0, r5
	bge _080454B2
	b _08045488
_080453E8:
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08045414
	ldr r0, _08045410  @ =0x000001C7
	cmp r1, r0
	beq _08045414
	cmp r4, r7
	ble _080454B2
	add r0, r6, #0
	add r0, r0, #64
	cmp r0, r5
	ble _080454B2
	sub r0, r0, #128
	cmp r0, r5
	bge _080454B2
	b _08045488
_08045410:
	.4byte 0x000001C7
_08045414:
	cmp r6, r5
	bge _080454B2
	add r0, r4, #0
	add r0, r0, #64
	cmp r0, r7
	ble _080454B2
	sub r0, r0, #128
	b _08045484
_08045424:
	mov r0, #4
	ldrsh r1, [r2, r0]
	ldr r0, _0804544C  @ =0x000001C7
	cmp r1, r0
	beq _08045474
	mov r0, #227
	lsl r0, r0, #1
	cmp r1, r0
	bne _08045450
	cmp r4, r7
	ble _080454B2
	add r0, r6, #0
	add r0, r0, #192
	cmp r0, r5
	ble _080454B2
	add r0, r6, #0
	sub r0, r0, #192
	cmp r0, r5
	bge _080454B2
	b _08045488
_0804544C:
	.4byte 0x000001C7
_08045450:
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08045474
	cmp r4, r7
	ble _080454B2
	add r0, r6, #0
	add r0, r0, #192
	cmp r0, r5
	ble _080454B2
	add r0, r6, #0
	sub r0, r0, #192
	cmp r0, r5
	bge _080454B2
	b _08045488
_08045474:
	cmp r6, r5
	bge _080454B2
	add r0, r4, #0
	add r0, r0, #192
	cmp r0, r7
	ble _080454B2
	add r0, r4, #0
	sub r0, r0, #192
_08045484:
	cmp r0, r7
	bge _080454B2
_08045488:
	cmp r8, r12
	bge _080454B2
	cmp r9, r10
	ble _080454B2
	ldr r0, [r2, #92]
	mov r1, #15
	orr r0, r0, r1
	str r0, [r2, #92]
	ldr r0, [r3, #92]
	orr r0, r0, r1
	str r0, [r3, #92]
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	str r0, [r2, #76]
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	str r0, [r3, #76]
	mov r0, #1
	b _080454B4
_080454B2:
	mov r0, #0
_080454B4:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08045374

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080454C4
sub_080454C4: @ 0x080454C4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r2, r0, #0
	add r3, r1, #0
	ldr r6, [r2, #108]
	ldr r5, [r2, #116]
	ldr r0, [r2, #112]
	mov r8, r0
	ldr r1, [r2, #120]
	mov r12, r1
	ldr r4, [r3, #108]
	ldr r1, [r3, #116]
	ldr r0, [r3, #112]
	mov r9, r0
	ldr r0, [r3, #120]
	mov r10, r0
	mov r0, #192
	lsl r0, r0, #5
	add r0, r0, r10
	cmp r12, r0
	bgt _08045564
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08045520
	cmp r5, r4
	ble _08045564
	mov r4, #128
	lsl r4, r4, #1
	add r0, r6, r4
	cmp r0, r1
	ble _08045564
	ldr r4, _0804551C  @ =0xFFFFFF00
	add r0, r6, r4
	cmp r0, r1
	bge _08045564
	b _08045536
	.byte 0x00
	.byte 0x00
_0804551C:
	.4byte 0xFFFFFF00
_08045520:
	cmp r6, r1
	bge _08045564
	mov r1, #128
	lsl r1, r1, #1
	add r0, r5, r1
	cmp r0, r4
	ble _08045564
	ldr r1, _08045560  @ =0xFFFFFF00
	add r0, r5, r1
	cmp r0, r4
	bge _08045564
_08045536:
	cmp r8, r10
	bge _08045564
	cmp r12, r9
	ble _08045564
	ldr r0, [r2, #92]
	mov r1, #15
	orr r0, r0, r1
	str r0, [r2, #92]
	ldr r0, [r3, #92]
	orr r0, r0, r1
	str r0, [r3, #92]
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	str r0, [r2, #76]
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	str r0, [r3, #76]
	mov r0, #1
	b _08045566
_08045560:
	.4byte 0xFFFFFF00
_08045564:
	mov r0, #0
_08045566:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080454C4

	THUMB_FUNC_START sub_08045574
sub_08045574: @ 0x08045574
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #8
	add r5, r0, #0
	mov r0, #4
	ldrsh r1, [r5, r0]
	mov r0, #225
	lsl r0, r0, #1
	cmp r1, r0
	bne _08045632
	ldr r0, _08045604  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	bne _08045598
	b _080456E4
_08045598:
	mov r1, #244
_0804559A:
	mov r3, #0
	ldr r0, _08045608  @ =gUnknown_03001940
	ldr r4, [r0]
	lsl r1, r1, #24
	mov r8, r1
	asr r7, r1, #16
_080455A6:
	ldrh r0, [r4]
	cmp r0, #115
	beq _080455B0
	cmp r0, #197
	bne _08045618
_080455B0:
	ldr r2, _0804560C  @ =0x03001B64
	add r6, r4, #0
	add r6, r6, #61
	ldrb r0, [r2]
	ldrb r1, [r6]
	cmp r0, r1
	beq _08045618
	ldr r0, [r5, #108]
	add r0, r0, r7
	str r0, [r5, #108]
	add r0, r5, #0
	add r1, r4, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_080454C4
	lsl r0, r0, #24
	ldr r1, [r5, #108]
	sub r1, r1, r7
	str r1, [r5, #108]
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r0, #0
	beq _08045618
	ldrb r0, [r2]
	cmp r0, #0
	bne _080455EC
	ldr r0, _08045610  @ =0x03001B68
	mov r1, #1
	strb r1, [r0]
_080455EC:
	ldrb r0, [r6]
	strb r0, [r2]
	ldr r2, [r5, #76]
	ldr r0, _08045608  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldr r0, [r0, #32]
	ldr r1, _08045614  @ =0xFFFFFC00
	b _080456AE
	.byte 0x00
	.byte 0x00
_08045604:
	.4byte gUnknown_03001990
_08045608:
	.4byte gUnknown_03001940
_0804560C:
	.4byte 0x03001B64
_08045610:
	.4byte 0x03001B68
_08045614:
	.4byte 0xFFFFFC00
_08045618:
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r4, r4, #176
	cmp r3, #19
	bls _080455A6
	mov r0, #128
	lsl r0, r0, #17
	add r0, r0, r8
	lsr r1, r0, #24
	cmp r0, #0
	blt _0804559A
	b _080456E4
_08045632:
	mov r0, #226
	lsl r0, r0, #1
	cmp r1, r0
	bne _080456E4
	ldr r0, _080456B8  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _080456E4
	mov r1, #12
_08045648:
	mov r3, #0
	ldr r0, _080456BC  @ =gUnknown_03001940
	ldr r4, [r0]
	lsl r1, r1, #24
	mov r8, r1
	asr r7, r1, #16
_08045654:
	ldrh r0, [r4]
	cmp r0, #115
	beq _0804565E
	cmp r0, #197
	bne _080456CC
_0804565E:
	ldr r2, _080456C0  @ =0x03001B64
	add r6, r4, #0
	add r6, r6, #61
	ldrb r0, [r2]
	ldrb r1, [r6]
	cmp r0, r1
	beq _080456CC
	ldr r0, [r5, #116]
	add r0, r0, r7
	str r0, [r5, #116]
	add r0, r5, #0
	add r1, r4, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_080454C4
	lsl r0, r0, #24
	ldr r1, [r5, #116]
	sub r1, r1, r7
	str r1, [r5, #116]
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r0, #0
	beq _080456CC
	ldrb r0, [r2]
	cmp r0, #0
	bne _0804569A
	ldr r0, _080456C4  @ =0x03001B68
	mov r1, #1
	strb r1, [r0]
_0804569A:
	ldrb r0, [r6]
	strb r0, [r2]
	ldr r2, [r5, #76]
	ldr r0, _080456BC  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldr r0, [r0, #32]
	ldr r1, _080456C8  @ =0xFFFFEC00
_080456AE:
	add r0, r0, r1
	str r0, [r5, #32]
	mov r0, #1
	b _080456E6
	.byte 0x00
	.byte 0x00
_080456B8:
	.4byte gUnknown_03001990
_080456BC:
	.4byte gUnknown_03001940
_080456C0:
	.4byte 0x03001B64
_080456C4:
	.4byte 0x03001B68
_080456C8:
	.4byte 0xFFFFEC00
_080456CC:
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r4, r4, #176
	cmp r3, #19
	bls _08045654
	mov r0, #255
	lsl r0, r0, #24
	add r0, r0, r8
	lsr r1, r0, #24
	cmp r0, #0
	bgt _08045648
_080456E4:
	mov r0, #0
_080456E6:
	add sp, sp, #8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08045574

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080456F4
sub_080456F4: @ 0x080456F4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r9, r0
	add r7, r1, #0
	mov r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _0804570E
	b _08045B9C
_0804570E:
	ldr r0, _08045770  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0804571C
	b _080459DA
_0804571C:
	ldr r0, _08045774  @ =gUnknown_03001940
	ldr r4, [r0]
	mov r2, #0
	mov r10, r2
	mov r0, #176
	mov r8, r0
_08045728:
	ldrh r0, [r4]
	cmp r0, #115
	beq _08045734
	cmp r0, #197
	beq _08045734
	b _080459C6
_08045734:
	mov r2, r9
	mov r0, #4
	ldrsh r1, [r2, r0]
	mov r0, #208
	lsl r0, r0, #1
	cmp r1, r0
	bne _080457EC
	ldr r0, _08045778  @ =0x03001B64
	ldrb r0, [r0]
	ldr r2, _08045774  @ =gUnknown_03001940
	ldr r1, [r2]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	add r0, r0, r1
	ldr r0, [r0, #72]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	add r0, r1, r0
	mov r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #13
	bne _0804577C
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _0804578C
_08045770:
	.4byte gUnknown_03001990
_08045774:
	.4byte gUnknown_03001940
_08045778:
	.4byte 0x03001B64
_0804577C:
	cmp r1, #17
	beq _08045782
	b _080459C6
_08045782:
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_0804578C:
	ldr r0, _080457C4  @ =0x03001B50
	ldrb r1, [r0]
	add r2, r0, #0
	cmp r1, #0
	bne _08045798
	b _08045C76
_08045798:
	ldrb r0, [r2]
	ldr r2, _080457C8  @ =gUnknown_03001940
	ldr r1, [r2]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	add r0, r0, r1
	ldr r0, [r0, #72]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	add r0, r1, r0
	mov r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #13
	bne _080457CC
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _080457DC
_080457C4:
	.4byte 0x03001B50
_080457C8:
	.4byte gUnknown_03001940
_080457CC:
	cmp r1, #17
	beq _080457D2
	b _080459C6
_080457D2:
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_080457DC:
	ldr r0, _080457E4  @ =0x03001B64
	ldr r1, _080457E8  @ =0x03001B74
	b _08045C70
	.byte 0x00
	.byte 0x00
_080457E4:
	.4byte 0x03001B64
_080457E8:
	.4byte 0x03001B74
_080457EC:
	ldr r6, _080458B0  @ =0x03001B64
	add r5, r4, #0
	add r5, r5, #61
	ldrb r0, [r6]
	ldrb r1, [r5]
	cmp r0, r1
	bne _080457FC
	b _080459C6
_080457FC:
	mov r2, #4
	ldrsh r1, [r7, r2]
	lsl r1, r1, #8
	ldr r0, [r4, #108]
	add r0, r0, r1
	str r0, [r4, #108]
	mov r0, r9
	add r1, r4, #0
	bl sub_08045374
	lsl r0, r0, #24
	mov r1, #4
	ldrsh r2, [r7, r1]
	lsl r2, r2, #8
	ldr r1, [r4, #108]
	sub r1, r1, r2
	str r1, [r4, #108]
	cmp r0, #0
	bne _08045824
	b _080459C6
_08045824:
	mov r7, #1
	ldrb r3, [r6]
	cmp r3, #0
	beq _0804590E
	ldr r2, _080458B4  @ =0x03001B50
	ldrb r1, [r5]
	strb r1, [r2]
	ldr r0, _080458B8  @ =0x03001B74
	strb r1, [r0]
	ldr r0, _080458BC  @ =0x03001B5C
	strb r3, [r0]
	ldrb r0, [r2]
	ldr r2, _080458C0  @ =gUnknown_03001940
	ldr r1, [r2]
	mov r3, #176
	mul r0, r3, r0
	add r0, r0, r1
	ldr r0, [r0, #72]
	mul r0, r3, r0
	add r2, r1, r0
	add r0, r2, #0
	add r0, r0, #64
	mov r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	bne _08045872
	ldrb r0, [r6]
	mul r0, r3, r0
	add r0, r0, r1
	ldr r0, [r0, #72]
	mul r0, r3, r0
	add r0, r0, r1
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	eor r1, r1, r7
	neg r0, r1
	orr r0, r0, r1
	lsr r7, r0, #31
_08045872:
	ldr r0, _080458C4  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r4, r0
	beq _080458D6
	cmp r7, #0
	beq _080458D6
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	beq _080458A2
	cmp r0, #12
	beq _080458A2
	cmp r0, #11
	beq _080458A2
	cmp r0, #2
	beq _080458A2
	cmp r0, #3
	beq _080458A2
	cmp r0, #4
	bne _080458C8
_080458A2:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #4
	bl sub_0803E128
	b _0804591A
_080458B0:
	.4byte 0x03001B64
_080458B4:
	.4byte 0x03001B50
_080458B8:
	.4byte 0x03001B74
_080458BC:
	.4byte 0x03001B5C
_080458C0:
	.4byte gUnknown_03001940
_080458C4:
	.4byte gUnknown_030019AC
_080458C8:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #7
	bl sub_0803E128
	b _0804591A
_080458D6:
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	beq _080458F2
	cmp r0, #12
	beq _080458F2
	cmp r0, #11
	beq _080458F2
	cmp r0, #2
	beq _080458F2
	cmp r0, #3
	beq _080458F2
	cmp r0, #4
	bne _08045900
_080458F2:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #13
	bl sub_0803E128
	b _0804591A
_08045900:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #17
	bl sub_0803E128
	b _0804591A
_0804590E:
	ldr r0, _08045984  @ =0x03001B68
	strb r7, [r0]
	ldrb r1, [r5]
	strb r1, [r6]
	ldr r0, _08045988  @ =0x03001B74
	strb r1, [r0]
_0804591A:
	ldr r0, _0804598C  @ =0x03001B64
	ldrb r0, [r0]
	ldr r2, _08045990  @ =gUnknown_03001940
	ldr r1, [r2]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	add r0, r0, r1
	ldr r0, [r0, #72]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	add r2, r1, r0
	add r1, r2, #0
	add r1, r1, #64
	ldr r0, _08045994  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bne _08045956
	ldr r0, _08045998  @ =0x03001B50
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804599C
_08045956:
	cmp r7, #0
	beq _0804599C
_0804595A:
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	bne _08045964
	b _08045FB4
_08045964:
	cmp r0, #12
	bne _0804596A
	b _08045FB4
_0804596A:
	cmp r0, #11
	bne _08045970
	b _08045FB4
_08045970:
	cmp r0, #2
	bne _08045976
	b _08045FB4
_08045976:
	cmp r0, #3
	bne _0804597C
	b _08045FB4
_0804597C:
	cmp r0, #4
	bne _08045982
	b _08045FB4
_08045982:
	b _08045FDC
_08045984:
	.4byte 0x03001B68
_08045988:
	.4byte 0x03001B74
_0804598C:
	.4byte 0x03001B64
_08045990:
	.4byte gUnknown_03001940
_08045994:
	.4byte gUnknown_030019AC
_08045998:
	.4byte 0x03001B50
_0804599C:
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	bne _080459A6
	b _08046006
_080459A6:
	cmp r0, #12
	bne _080459AC
	b _08046006
_080459AC:
	cmp r0, #11
	bne _080459B2
	b _08046006
_080459B2:
	cmp r0, #2
	bne _080459B8
	b _08046006
_080459B8:
	cmp r0, #3
	bne _080459BE
	b _08046006
_080459BE:
	cmp r0, #4
	bne _080459C4
	b _08046006
_080459C4:
	b _08046014
_080459C6:
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	add r4, r4, #176
	cmp r0, #19
	bhi _080459D8
	b _08045728
_080459D8:
	b _0804603A
_080459DA:
	mov r0, r9
	mov r2, #4
	ldrsh r1, [r0, r2]
	mov r0, #225
	lsl r0, r0, #1
	cmp r1, r0
	beq _080459EA
	b _0804603A
_080459EA:
	ldr r0, _08045AC8  @ =gUnknown_03001940
	ldr r4, [r0]
	mov r3, #0
_080459F0:
	ldrh r0, [r4]
	cmp r0, #115
	beq _080459FC
	cmp r0, #197
	beq _080459FC
	b _08045B8C
_080459FC:
	ldr r6, _08045ACC  @ =0x03001B64
	add r5, r4, #0
	add r5, r5, #61
	ldrb r0, [r6]
	ldrb r1, [r5]
	cmp r0, r1
	bne _08045A0C
	b _08045B8C
_08045A0C:
	mov r2, #4
	ldrsh r1, [r7, r2]
	lsl r1, r1, #8
	ldr r0, [r4, #108]
	add r0, r0, r1
	str r0, [r4, #108]
	mov r0, r9
	add r1, r4, #0
	str r3, [sp]
	bl sub_08045374
	lsl r0, r0, #24
	mov r1, #4
	ldrsh r2, [r7, r1]
	lsl r2, r2, #8
	ldr r1, [r4, #108]
	sub r1, r1, r2
	str r1, [r4, #108]
	ldr r3, [sp]
	cmp r0, #0
	bne _08045A38
	b _08045B8C
_08045A38:
	mov r7, #1
	ldrb r3, [r6]
	cmp r3, #0
	beq _08045B26
	ldr r2, _08045AD0  @ =0x03001B50
	ldrb r1, [r5]
	strb r1, [r2]
	ldr r0, _08045AD4  @ =0x03001B74
	strb r1, [r0]
	ldr r0, _08045AD8  @ =0x03001B5C
	strb r3, [r0]
	ldr r0, _08045AC8  @ =gUnknown_03001940
	ldrb r1, [r2]
	ldr r3, [r0]
	mov r4, #176
	add r0, r1, #0
	mul r0, r4, r0
	add r0, r0, r3
	ldr r0, [r0, #72]
	mul r0, r4, r0
	add r2, r3, r0
	add r0, r2, #0
	add r0, r0, #64
	mov r5, #0
	ldrsb r5, [r0, r5]
	cmp r5, #0
	bne _08045A88
	ldrb r0, [r6]
	mul r0, r4, r0
	add r0, r0, r3
	ldr r0, [r0, #72]
	mul r0, r4, r0
	add r0, r0, r3
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	eor r1, r1, r7
	neg r0, r1
	orr r0, r0, r1
	lsr r7, r0, #31
_08045A88:
	ldr r0, _08045ADC  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r5, r0
	beq _08045AEE
	cmp r7, #0
	beq _08045AEE
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	beq _08045AB8
	cmp r0, #12
	beq _08045AB8
	cmp r0, #11
	beq _08045AB8
	cmp r0, #2
	beq _08045AB8
	cmp r0, #3
	beq _08045AB8
	cmp r0, #4
	bne _08045AE0
_08045AB8:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #4
	bl sub_0803E128
	b _08045B32
	.byte 0x00
	.byte 0x00
_08045AC8:
	.4byte gUnknown_03001940
_08045ACC:
	.4byte 0x03001B64
_08045AD0:
	.4byte 0x03001B50
_08045AD4:
	.4byte 0x03001B74
_08045AD8:
	.4byte 0x03001B5C
_08045ADC:
	.4byte gUnknown_030019AC
_08045AE0:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #7
	bl sub_0803E128
	b _08045B32
_08045AEE:
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	beq _08045B0A
	cmp r0, #12
	beq _08045B0A
	cmp r0, #11
	beq _08045B0A
	cmp r0, #2
	beq _08045B0A
	cmp r0, #3
	beq _08045B0A
	cmp r0, #4
	bne _08045B18
_08045B0A:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #13
	bl sub_0803E128
	b _08045B32
_08045B18:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #17
	bl sub_0803E128
	b _08045B32
_08045B26:
	ldr r0, _08045B74  @ =0x03001B68
	strb r7, [r0]
	ldrb r1, [r5]
	strb r1, [r6]
	ldr r0, _08045B78  @ =0x03001B74
	strb r1, [r0]
_08045B32:
	ldr r1, _08045B7C  @ =gUnknown_03001940
	ldr r0, _08045B80  @ =0x03001B64
	ldrb r0, [r0]
	ldr r2, [r1]
	mov r1, #176
	mul r0, r1, r0
	add r0, r0, r2
	ldr r0, [r0, #72]
	mul r0, r1, r0
	add r2, r2, r0
_08045B46:
	add r1, r2, #0
	add r1, r1, #64
	ldr r0, _08045B84  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bne _08045B6A
	ldr r0, _08045B88  @ =0x03001B50
	ldrb r0, [r0]
	cmp r0, #0
	bne _08045B6A
	b _0804599C
_08045B6A:
	cmp r7, #0
	beq _08045B70
	b _0804595A
_08045B70:
	b _0804599C
	.byte 0x00
	.byte 0x00
_08045B74:
	.4byte 0x03001B68
_08045B78:
	.4byte 0x03001B74
_08045B7C:
	.4byte gUnknown_03001940
_08045B80:
	.4byte 0x03001B64
_08045B84:
	.4byte gUnknown_030019AC
_08045B88:
	.4byte 0x03001B50
_08045B8C:
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r4, r4, #176
	cmp r3, #19
	bhi _08045B9A
	b _080459F0
_08045B9A:
	b _0804603A
_08045B9C:
	ldr r0, _08045C00  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _08045BAA
	b _08045E08
_08045BAA:
	ldr r0, _08045C04  @ =gUnknown_03001940
	ldr r4, [r0]
	mov r1, #0
	mov r10, r1
	mov r2, #176
	mov r8, r2
_08045BB6:
	ldrh r0, [r4]
	cmp r0, #115
	beq _08045BC2
	cmp r0, #197
	beq _08045BC2
	b _08045DF4
_08045BC2:
	mov r0, r9
	mov r2, #4
	ldrsh r1, [r0, r2]
	mov r0, #208
	lsl r0, r0, #1
	cmp r1, r0
	bne _08045C98
	ldr r0, _08045C08  @ =0x03001B64
	ldrb r0, [r0]
	ldr r2, _08045C04  @ =gUnknown_03001940
	ldr r1, [r2]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	add r0, r0, r1
	ldr r0, [r0, #72]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	add r0, r1, r0
	mov r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #13
	bne _08045C0C
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _08045C1C
	.byte 0x00
	.byte 0x00
_08045C00:
	.4byte gUnknown_03001990
_08045C04:
	.4byte gUnknown_03001940
_08045C08:
	.4byte 0x03001B64
_08045C0C:
	cmp r1, #17
	beq _08045C12
	b _08045DF4
_08045C12:
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_08045C1C:
	ldr r0, _08045C54  @ =0x03001B50
	ldrb r1, [r0]
	add r2, r0, #0
	cmp r1, #0
	beq _08045C76
	ldrb r0, [r2]
	ldr r2, _08045C58  @ =gUnknown_03001940
	ldr r1, [r2]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	add r0, r0, r1
	ldr r0, [r0, #72]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	add r0, r1, r0
	mov r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #13
	bne _08045C5C
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _08045C6C
	.byte 0x00
	.byte 0x00
_08045C54:
	.4byte 0x03001B50
_08045C58:
	.4byte gUnknown_03001940
_08045C5C:
	cmp r1, #17
	beq _08045C62
	b _08045DF4
_08045C62:
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_08045C6C:
	ldr r0, _08045C88  @ =0x03001B64
	ldr r1, _08045C8C  @ =0x03001B5C
_08045C70:
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r2, _08045C90  @ =0x03001B50
_08045C76:
	mov r0, #0
	strb r0, [r2]
	ldr r1, _08045C94  @ =0x03001B74
	strb r0, [r1]
	ldr r1, _08045C8C  @ =0x03001B5C
	strb r0, [r1]
	mov r0, #1
	b _0804603C
	.byte 0x00
	.byte 0x00
_08045C88:
	.4byte 0x03001B64
_08045C8C:
	.4byte 0x03001B5C
_08045C90:
	.4byte 0x03001B50
_08045C94:
	.4byte 0x03001B74
_08045C98:
	ldr r6, _08045D5C  @ =0x03001B64
	add r5, r4, #0
	add r5, r5, #61
	ldrb r0, [r6]
	ldrb r1, [r5]
	cmp r0, r1
	bne _08045CA8
	b _08045DF4
_08045CA8:
	mov r2, #4
	ldrsh r1, [r7, r2]
	lsl r1, r1, #8
	ldr r0, [r4, #116]
	add r0, r0, r1
	str r0, [r4, #116]
	mov r0, r9
	add r1, r4, #0
	bl sub_08045374
	lsl r0, r0, #24
	mov r1, #4
	ldrsh r2, [r7, r1]
	lsl r2, r2, #8
	ldr r1, [r4, #116]
	sub r1, r1, r2
	str r1, [r4, #116]
	cmp r0, #0
	bne _08045CD0
	b _08045DF4
_08045CD0:
	mov r7, #1
	ldrb r3, [r6]
	cmp r3, #0
	beq _08045DBA
	ldr r2, _08045D60  @ =0x03001B50
	ldrb r1, [r5]
	strb r1, [r2]
	ldr r0, _08045D64  @ =0x03001B5C
	strb r1, [r0]
	ldr r0, _08045D68  @ =0x03001B74
	strb r3, [r0]
	ldrb r0, [r2]
	ldr r2, _08045D6C  @ =gUnknown_03001940
	ldr r1, [r2]
	mov r3, #176
	mul r0, r3, r0
	add r0, r0, r1
	ldr r0, [r0, #72]
	mul r0, r3, r0
	add r2, r1, r0
	add r0, r2, #0
	add r0, r0, #64
	mov r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #1
	bne _08045D1C
	ldrb r0, [r6]
	mul r0, r3, r0
	add r0, r0, r1
	ldr r0, [r0, #72]
	mul r0, r3, r0
	add r0, r0, r1
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	neg r0, r1
	orr r0, r0, r1
	lsr r7, r0, #31
_08045D1C:
	ldr r0, _08045D70  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r4, r0
	beq _08045D82
	cmp r7, #0
	beq _08045D82
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	beq _08045D4C
	cmp r0, #12
	beq _08045D4C
	cmp r0, #11
	beq _08045D4C
	cmp r0, #2
	beq _08045D4C
	cmp r0, #3
	beq _08045D4C
	cmp r0, #4
	bne _08045D74
_08045D4C:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #4
	bl sub_0803E128
	b _08045DC6
	.byte 0x00
	.byte 0x00
_08045D5C:
	.4byte 0x03001B64
_08045D60:
	.4byte 0x03001B50
_08045D64:
	.4byte 0x03001B5C
_08045D68:
	.4byte 0x03001B74
_08045D6C:
	.4byte gUnknown_03001940
_08045D70:
	.4byte gUnknown_030019AC
_08045D74:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #7
	bl sub_0803E128
	b _08045DC6
_08045D82:
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	beq _08045D9E
	cmp r0, #12
	beq _08045D9E
	cmp r0, #11
	beq _08045D9E
	cmp r0, #2
	beq _08045D9E
	cmp r0, #3
	beq _08045D9E
	cmp r0, #4
	bne _08045DAC
_08045D9E:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #13
	bl sub_0803E128
	b _08045DC6
_08045DAC:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #17
	bl sub_0803E128
	b _08045DC6
_08045DBA:
	ldr r0, _08045DE4  @ =0x03001B68
	strb r7, [r0]
	ldrb r1, [r5]
	strb r1, [r6]
	ldr r0, _08045DE8  @ =0x03001B5C
	strb r1, [r0]
_08045DC6:
	ldr r0, _08045DEC  @ =0x03001B64
	ldrb r0, [r0]
	ldr r2, _08045DF0  @ =gUnknown_03001940
	ldr r1, [r2]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	add r0, r0, r1
	ldr r0, [r0, #72]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	add r2, r1, r0
	b _08045B46
	.byte 0x00
	.byte 0x00
_08045DE4:
	.4byte 0x03001B68
_08045DE8:
	.4byte 0x03001B5C
_08045DEC:
	.4byte 0x03001B64
_08045DF0:
	.4byte gUnknown_03001940
_08045DF4:
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	add r4, r4, #176
	cmp r0, #19
	bhi _08045E06
	b _08045BB6
_08045E06:
	b _0804603A
_08045E08:
	mov r0, r9
	mov r2, #4
	ldrsh r1, [r0, r2]
	mov r0, #226
	lsl r0, r0, #1
	cmp r1, r0
	beq _08045E18
	b _0804603A
_08045E18:
	ldr r0, _08045EF4  @ =gUnknown_03001940
	ldr r4, [r0]
	mov r3, #0
_08045E1E:
	ldrh r0, [r4]
	cmp r0, #115
	beq _08045E2A
	cmp r0, #197
	beq _08045E2A
	b _0804602C
_08045E2A:
	ldr r6, _08045EF8  @ =0x03001B64
	add r5, r4, #0
	add r5, r5, #61
	ldrb r0, [r6]
	ldrb r1, [r5]
	cmp r0, r1
	bne _08045E3A
	b _0804602C
_08045E3A:
	mov r2, #4
	ldrsh r1, [r7, r2]
	lsl r1, r1, #8
	ldr r0, [r4, #116]
	add r0, r0, r1
	str r0, [r4, #116]
	mov r0, r9
	add r1, r4, #0
	str r3, [sp]
	bl sub_08045374
	lsl r0, r0, #24
	mov r1, #4
	ldrsh r2, [r7, r1]
	lsl r2, r2, #8
	ldr r1, [r4, #116]
	sub r1, r1, r2
	str r1, [r4, #116]
	ldr r3, [sp]
	cmp r0, #0
	bne _08045E66
	b _0804602C
_08045E66:
	mov r7, #1
	ldrb r3, [r6]
	cmp r3, #0
	beq _08045F52
	ldr r2, _08045EFC  @ =0x03001B50
	ldrb r1, [r5]
	strb r1, [r2]
	ldr r0, _08045F00  @ =0x03001B5C
	strb r1, [r0]
	ldr r0, _08045F04  @ =0x03001B74
	strb r3, [r0]
	ldr r0, _08045EF4  @ =gUnknown_03001940
	ldrb r1, [r2]
	ldr r3, [r0]
	mov r4, #176
	add r0, r1, #0
	mul r0, r4, r0
	add r0, r0, r3
	ldr r0, [r0, #72]
	mul r0, r4, r0
	add r2, r3, r0
	add r0, r2, #0
	add r0, r0, #64
	mov r5, #0
	ldrsb r5, [r0, r5]
	cmp r5, #1
	bne _08045EB4
	ldrb r0, [r6]
	mul r0, r4, r0
	add r0, r0, r3
	ldr r0, [r0, #72]
	mul r0, r4, r0
	add r0, r0, r3
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	neg r0, r1
	orr r0, r0, r1
	lsr r7, r0, #31
_08045EB4:
	ldr r0, _08045F08  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r5, r0
	beq _08045F1A
	cmp r7, #0
	beq _08045F1A
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	beq _08045EE4
	cmp r0, #12
	beq _08045EE4
	cmp r0, #11
	beq _08045EE4
	cmp r0, #2
	beq _08045EE4
	cmp r0, #3
	beq _08045EE4
	cmp r0, #4
	bne _08045F0C
_08045EE4:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #4
	bl sub_0803E128
	b _08045F5E
	.byte 0x00
	.byte 0x00
_08045EF4:
	.4byte gUnknown_03001940
_08045EF8:
	.4byte 0x03001B64
_08045EFC:
	.4byte 0x03001B50
_08045F00:
	.4byte 0x03001B5C
_08045F04:
	.4byte 0x03001B74
_08045F08:
	.4byte gUnknown_030019AC
_08045F0C:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #7
	bl sub_0803E128
	b _08045F5E
_08045F1A:
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	beq _08045F36
	cmp r0, #12
	beq _08045F36
	cmp r0, #11
	beq _08045F36
	cmp r0, #2
	beq _08045F36
	cmp r0, #3
	beq _08045F36
	cmp r0, #4
	bne _08045F44
_08045F36:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #13
	bl sub_0803E128
	b _08045F5E
_08045F44:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #17
	bl sub_0803E128
	b _08045F5E
_08045F52:
	ldr r0, _08045FC4  @ =0x03001B68
	strb r7, [r0]
	ldrb r1, [r5]
	strb r1, [r6]
	ldr r0, _08045FC8  @ =0x03001B5C
	strb r1, [r0]
_08045F5E:
	ldr r1, _08045FCC  @ =gUnknown_03001940
	ldr r0, _08045FD0  @ =0x03001B64
	ldrb r0, [r0]
	ldr r2, [r1]
	mov r1, #176
	mul r0, r1, r0
	add r0, r0, r2
	ldr r0, [r0, #72]
	mul r0, r1, r0
	add r2, r2, r0
	add r1, r2, #0
	add r1, r1, #64
	ldr r0, _08045FD4  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bne _08045F94
	ldr r0, _08045FD8  @ =0x03001B50
	ldrb r0, [r0]
	cmp r0, #0
	beq _08045FEA
_08045F94:
	cmp r7, #0
	beq _08045FEA
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	beq _08045FB4
	cmp r0, #12
	beq _08045FB4
	cmp r0, #11
	beq _08045FB4
	cmp r0, #2
	beq _08045FB4
	cmp r0, #3
	beq _08045FB4
	cmp r0, #4
	bne _08045FDC
_08045FB4:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #4
	bl sub_0803E128
	b _08046020
	.byte 0x00
	.byte 0x00
_08045FC4:
	.4byte 0x03001B68
_08045FC8:
	.4byte 0x03001B5C
_08045FCC:
	.4byte gUnknown_03001940
_08045FD0:
	.4byte 0x03001B64
_08045FD4:
	.4byte gUnknown_030019AC
_08045FD8:
	.4byte 0x03001B50
_08045FDC:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #7
	bl sub_0803E128
	b _08046020
_08045FEA:
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	beq _08046006
	cmp r0, #12
	beq _08046006
	cmp r0, #11
	beq _08046006
	cmp r0, #2
	beq _08046006
	cmp r0, #3
	beq _08046006
	cmp r0, #4
	bne _08046014
_08046006:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #13
	bl sub_0803E128
	b _08046020
_08046014:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #17
	bl sub_0803E128
_08046020:
	mov r0, #1
	neg r0, r0
	mov r2, r9
	str r0, [r2, #76]
	mov r0, #1
	b _0804603C
_0804602C:
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r4, r4, #176
	cmp r3, #19
	bhi _0804603A
	b _08045E1E
_0804603A:
	mov r0, #0
_0804603C:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080456F4

	THUMB_FUNC_START sub_0804604C
sub_0804604C: @ 0x0804604C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #68
	add r5, r0, #0
	ldr r2, _0804610C  @ =gUnknown_03001990
	ldrb r1, [r2]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0804614C
	mov r0, #4
	ldrsh r1, [r5, r0]
	mov r0, #225
	lsl r0, r0, #1
	cmp r1, r0
	bne _0804614C
	mov r1, #240
	lsl r1, r1, #24
	mov r2, sp
	add r2, r2, #48
	str r2, [sp, #60]
	add r3, sp, #52
	mov r10, r3
	add r7, sp, #56
	mov r9, r7
	ldr r0, _08046110  @ =0xFFFFF800
	mov r8, r0
_08046088:
	ldr r3, [r5, #104]
	mov r2, #4
	ldrsh r4, [r3, r2]
	ldr r0, [r5, #32]
	add r0, r0, r4
	asr r1, r1, #24
	str r1, [sp, #64]
	lsl r6, r1, #8
	add r0, r0, r6
	mov r7, #50
	ldrsh r2, [r5, r7]
	ldr r1, [r5, #36]
	add r1, r1, r2
	mov r7, #2
	ldrsh r2, [r3, r7]
	add r1, r1, r2
	add r1, r1, r8
	mov r7, #6
	ldrsh r2, [r3, r7]
	sub r2, r2, r4
	ldr r3, [sp, #60]
	str r3, [sp]
	mov r7, r10
	str r7, [sp, #4]
	mov r3, r9
	str r3, [sp, #8]
	mov r3, #8
	str r3, [sp, #12]
	add r3, r3, #248
	bl sub_08002580
	cmp r0, #0
	beq _080460F8
	ldr r0, [sp, #48]
	cmp r0, #0
	ble _080460D2
	b _080461F8
_080460D2:
	ldr r0, [r5, #108]
	str r0, [sp, #16]
	ldr r0, [r5, #116]
	str r0, [sp, #24]
	ldr r0, [r5, #112]
	str r0, [sp, #20]
	ldr r0, [r5, #120]
	str r0, [sp, #28]
	add r0, sp, #16
	add r1, r6, #0
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	add r2, r0, #0
	mov r0, #127
	and r2, r2, r0
	cmp r2, #0
	beq _08046114
_080460F8:
	ldr r0, [sp, #64]
	add r0, r0, #1
	lsl r1, r0, #24
	asr r0, r1, #24
	mov r7, #8
	neg r7, r7
	cmp r0, r7
	blt _08046088
	b _080461F8
	.byte 0x00
	.byte 0x00
_0804610C:
	.4byte gUnknown_03001990
_08046110:
	.4byte 0xFFFFF800
_08046114:
	ldr r0, [r5, #32]
	add r0, r0, r8
	b _08046122
_0804611A:
	ldr r0, [r5, #32]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r0, r1
_08046122:
	ldr r1, [sp, #48]
	add r0, r0, r1
	str r0, [r5, #32]
	ldr r0, _0804613C  @ =0x03001B68
	strb r2, [r0]
	ldr r0, _08046140  @ =0x03001B64
	strb r2, [r0]
	ldr r0, _08046144  @ =0x03001B74
	strb r2, [r0]
	ldr r0, _08046148  @ =0x03001B5C
	strb r2, [r0]
	mov r0, #1
	b _080461FA
_0804613C:
	.4byte 0x03001B68
_08046140:
	.4byte 0x03001B64
_08046144:
	.4byte 0x03001B74
_08046148:
	.4byte 0x03001B5C
_0804614C:
	ldrb r1, [r2]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _080461F8
	mov r2, #4
	ldrsh r1, [r5, r2]
	mov r0, #226
	lsl r0, r0, #1
	cmp r1, r0
	bne _080461F8
	mov r1, #16
	mov r3, sp
	add r3, r3, #48
	str r3, [sp, #60]
	add r7, sp, #52
	mov r10, r7
	add r0, sp, #56
	mov r9, r0
	add r6, sp, #32
_08046174:
	ldr r3, [r5, #104]
	mov r2, #4
	ldrsh r4, [r3, r2]
	ldr r0, [r5, #32]
	add r0, r0, r4
	lsl r1, r1, #24
	asr r1, r1, #24
	mov r8, r1
	mov r7, r8
	lsl r7, r7, #8
	str r7, [sp, #64]
	add r0, r0, r7
	mov r1, #50
	ldrsh r2, [r5, r1]
	ldr r1, [r5, #36]
	add r1, r1, r2
	mov r7, #2
	ldrsh r2, [r3, r7]
	add r1, r1, r2
	ldr r2, _0804620C  @ =0xFFFFF800
	add r1, r1, r2
	mov r7, #6
	ldrsh r2, [r3, r7]
	sub r2, r2, r4
	ldr r3, [sp, #60]
	str r3, [sp]
	mov r7, r10
	str r7, [sp, #4]
	mov r3, r9
	str r3, [sp, #8]
	mov r3, #8
	str r3, [sp, #12]
	add r3, r3, #248
	bl sub_08002580
	cmp r0, #0
	beq _080461EA
	ldr r0, [sp, #48]
	cmp r0, #0
	blt _080461F8
	ldr r0, [r5, #108]
	str r0, [sp, #32]
	ldr r0, [r5, #116]
	str r0, [r6, #8]
	ldr r0, [r5, #112]
	str r0, [r6, #4]
	ldr r0, [r5, #120]
	str r0, [r6, #12]
	add r0, r6, #0
	ldr r1, [sp, #64]
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	add r2, r0, #0
	mov r0, #127
	and r2, r2, r0
	cmp r2, #0
	beq _0804611A
_080461EA:
	mov r0, r8
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	asr r0, r0, #24
	cmp r0, #8
	bgt _08046174
_080461F8:
	mov r0, #0
_080461FA:
	add sp, sp, #68
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0804620C:
	.4byte 0xFFFFF800
	THUMB_FUNC_END sub_0804604C

	THUMB_FUNC_START sub_08046210
sub_08046210: @ 0x08046210
	push {r4-r7,lr}
	sub sp, sp, #44
	add r5, r0, #0
	add r6, r1, #0
	ldr r3, [r5, #100]
	mov r0, #4
	ldrsh r4, [r3, r0]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r2, #4
	ldrsh r1, [r6, r2]
	lsl r1, r1, #8
	add r0, r0, r1
	mov r7, #50
	ldrsh r2, [r5, r7]
	ldr r1, [r5, #36]
	add r1, r1, r2
	mov r7, #2
	ldrsh r2, [r3, r7]
	add r1, r1, r2
	ldr r2, _080462D4  @ =0xFFFFF800
	add r1, r1, r2
	mov r7, #6
	ldrsh r2, [r3, r7]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #32
	str r4, [sp]
	add r4, sp, #36
	str r4, [sp, #4]
	add r4, sp, #40
	str r4, [sp, #8]
	ldrb r4, [r6, #12]
	str r4, [sp, #12]
	bl sub_08002580
	cmp r0, #0
	bne _08046260
	b _080463DC
_08046260:
	mov r0, #4
	ldrsh r1, [r5, r0]
	mov r0, #208
	lsl r0, r0, #1
	cmp r1, r0
	beq _08046274
	ldr r0, [sp, #32]
	cmp r0, #0
	beq _08046274
	b _080463DC
_08046274:
	ldr r0, [r5, #108]
	str r0, [sp, #16]
	ldr r0, [r5, #116]
	str r0, [sp, #24]
	ldr r0, [r5, #112]
	str r0, [sp, #20]
	ldr r0, [r5, #120]
	str r0, [sp, #28]
	mov r2, #4
	ldrsh r1, [r6, r2]
	lsl r1, r1, #8
	add r0, sp, #16
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	beq _0804629E
	b _080463DC
_0804629E:
	mov r7, #4
	ldrsh r1, [r5, r7]
	mov r0, #208
	lsl r0, r0, #1
	cmp r1, r0
	bne _08046310
	ldr r1, _080462D8  @ =gUnknown_03001940
	ldr r0, _080462DC  @ =0x03001B64
	ldrb r0, [r0]
	ldr r2, [r1]
	mov r1, #176
	mul r0, r1, r0
	add r0, r0, r2
	ldr r0, [r0, #72]
	mul r0, r1, r0
	add r2, r2, r0
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #13
	bne _080462E0
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #12
	bl sub_0803E128
	b _080462EC
_080462D4:
	.4byte 0xFFFFF800
_080462D8:
	.4byte gUnknown_03001940
_080462DC:
	.4byte 0x03001B64
_080462E0:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	bl sub_0803E128
_080462EC:
	ldr r0, _08046300  @ =0x03001B68
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08046304  @ =0x03001B64
	strb r1, [r0]
	ldr r0, _08046308  @ =0x03001B74
	strb r1, [r0]
	ldr r0, _0804630C  @ =0x03001B5C
	b _080463CE
	.byte 0x00
	.byte 0x00
_08046300:
	.4byte 0x03001B68
_08046304:
	.4byte 0x03001B64
_08046308:
	.4byte 0x03001B74
_0804630C:
	.4byte 0x03001B5C
_08046310:
	ldr r1, _08046368  @ =gUnknown_03001940
	ldr r0, _0804636C  @ =0x03001B64
	ldrb r0, [r0]
	ldr r2, [r1]
	mov r1, #176
	mul r0, r1, r0
	add r0, r0, r2
	ldr r0, [r0, #72]
	mul r0, r1, r0
	add r2, r2, r0
	add r1, r2, #0
	add r1, r1, #64
	ldr r0, _08046370  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bne _08046382
	mov r7, #4
	ldrsh r0, [r2, r7]
	cmp r0, #10
	beq _0804635A
	cmp r0, #12
	beq _0804635A
	cmp r0, #11
	beq _0804635A
	cmp r0, #2
	beq _0804635A
	cmp r0, #3
	beq _0804635A
	cmp r0, #4
	bne _08046374
_0804635A:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #4
	bl sub_0803E128
	b _080463B8
_08046368:
	.4byte gUnknown_03001940
_0804636C:
	.4byte 0x03001B64
_08046370:
	.4byte gUnknown_030019AC
_08046374:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #7
	bl sub_0803E128
	b _080463B8
_08046382:
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #10
	beq _0804639E
	cmp r0, #12
	beq _0804639E
	cmp r0, #11
	beq _0804639E
	cmp r0, #2
	beq _0804639E
	cmp r0, #3
	beq _0804639E
	cmp r0, #4
	bne _080463AC
_0804639E:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #13
	bl sub_0803E128
	b _080463B8
_080463AC:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #17
	bl sub_0803E128
_080463B8:
	mov r2, #4
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _080463C8
	ldr r0, _080463C4  @ =0x03001B5C
	b _080463CA
_080463C4:
	.4byte 0x03001B5C
_080463C8:
	ldr r0, _080463D4  @ =0x03001B74
_080463CA:
	ldr r1, _080463D8  @ =0x03001B64
	ldrb r1, [r1]
_080463CE:
	strb r1, [r0]
	mov r0, #1
	b _080463DE
_080463D4:
	.4byte 0x03001B74
_080463D8:
	.4byte 0x03001B64
_080463DC:
	mov r0, #0
_080463DE:
	add sp, sp, #44
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08046210

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080463E8
sub_080463E8: @ 0x080463E8
	push {lr}
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _08046430  @ =0x03001B68
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046464
	ldr r0, _08046434  @ =0x03001B64
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046406
	ldr r0, _08046438  @ =0x03001B50
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046464
_08046406:
	ldr r0, _0804643C  @ =0x030019FC
	mov r1, #0
	strb r1, [r0]
	mov r0, #4
	ldrsh r1, [r2, r0]
	mov r0, #226
	lsl r0, r0, #1
	cmp r1, r0
	beq _08046450
	sub r0, r0, #2
	cmp r1, r0
	beq _08046450
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08046444
	ldr r0, _08046440  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #4
	b _0804644A
	.byte 0x00
	.byte 0x00
_08046430:
	.4byte 0x03001B68
_08046434:
	.4byte 0x03001B64
_08046438:
	.4byte 0x03001B50
_0804643C:
	.4byte 0x030019FC
_08046440:
	.4byte gUnknown_03001990
_08046444:
	ldr r0, _08046460  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #8
_0804644A:
	and r0, r0, r1
	cmp r0, #0
	beq _08046464
_08046450:
	add r0, r2, #0
	add r1, r3, #0
	bl sub_08046210
	lsl r0, r0, #24
	asr r0, r0, #24
	b _08046466
	.byte 0x00
	.byte 0x00
_08046460:
	.4byte gUnknown_03001990
_08046464:
	mov r0, #0
_08046466:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080463E8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804646C
sub_0804646C: @ 0x0804646C
	push {r4-r7,lr}
	sub sp, sp, #56
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, _080464E4  @ =0x03001B68
	ldrb r1, [r0]
	cmp r1, #0
	beq _0804647E
	b _08046580
_0804647E:
	ldr r0, _080464E8  @ =0x030019FC
	strb r1, [r0]
	mov r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _080464F4
	ldr r0, _080464EC  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08046580
	ldr r3, [r5, #100]
	mov r2, #4
	ldrsh r4, [r3, r2]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r7, #4
	ldrsh r1, [r6, r7]
	lsl r1, r1, #8
	add r0, r0, r1
	mov r1, #50
	ldrsh r2, [r5, r1]
	ldr r1, [r5, #36]
	add r1, r1, r2
	mov r7, #2
	ldrsh r2, [r3, r7]
	add r1, r1, r2
	ldr r2, _080464F0  @ =0xFFFFF800
	add r1, r1, r2
	mov r7, #6
	ldrsh r2, [r3, r7]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #32
	str r4, [sp]
	add r4, sp, #36
	str r4, [sp, #4]
	add r4, sp, #40
	str r4, [sp, #8]
	ldrb r4, [r6, #12]
	str r4, [sp, #12]
	bl sub_08002580
	cmp r0, #0
	beq _08046580
	ldr r0, [sp, #32]
	cmp r0, #0
	bgt _08046580
	b _0804654C
_080464E4:
	.4byte 0x03001B68
_080464E8:
	.4byte 0x030019FC
_080464EC:
	.4byte gUnknown_03001990
_080464F0:
	.4byte 0xFFFFF800
_080464F4:
	ldr r0, _08046578  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08046580
	ldr r3, [r5, #100]
	mov r1, #4
	ldrsh r4, [r3, r1]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r2, #4
	ldrsh r1, [r6, r2]
	lsl r1, r1, #8
	add r0, r0, r1
	mov r7, #50
	ldrsh r2, [r5, r7]
	ldr r1, [r5, #36]
	add r1, r1, r2
	mov r7, #2
	ldrsh r2, [r3, r7]
	add r1, r1, r2
	ldr r2, _0804657C  @ =0xFFFFF800
	add r1, r1, r2
	mov r7, #6
	ldrsh r2, [r3, r7]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #44
	str r4, [sp]
	add r4, sp, #48
	str r4, [sp, #4]
	add r4, sp, #52
	str r4, [sp, #8]
	ldrb r4, [r6, #12]
	str r4, [sp, #12]
	bl sub_08002580
	cmp r0, #0
	beq _08046580
	ldr r0, [sp, #44]
	cmp r0, #0
	blt _08046580
_0804654C:
	ldr r0, [r5, #108]
	str r0, [sp, #16]
	ldr r0, [r5, #116]
	str r0, [sp, #24]
	ldr r0, [r5, #112]
	str r0, [sp, #20]
	ldr r0, [r5, #120]
	str r0, [sp, #28]
	mov r0, #4
	ldrsh r1, [r6, r0]
	lsl r1, r1, #8
	add r0, sp, #16
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	bne _08046580
	mov r0, #1
	b _08046582
_08046578:
	.4byte gUnknown_03001990
_0804657C:
	.4byte 0xFFFFF800
_08046580:
	mov r0, #0
_08046582:
	add sp, sp, #56
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804646C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804658C
sub_0804658C: @ 0x0804658C
	push {r4,lr}
	add r1, r0, #0
	ldr r3, [r1, #76]
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	beq _0804661C
	ldr r0, [r1, #92]
	mov r1, #15
	and r0, r0, r1
	cmp r0, #0
	beq _0804661C
	ldr r2, _0804660C  @ =gUnknown_03001940
	mov r0, #176
	add r1, r3, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r3, r0, r1
	ldr r0, [r3, #92]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0804661C
	ldr r1, _08046610  @ =gUnknown_03001A1C
	ldr r2, [r1]
	mov r0, #80
	and r0, r0, r2
	add r4, r1, #0
	cmp r0, #0
	bne _0804661C
	mov r0, #5
	and r2, r2, r0
	cmp r2, #1
	beq _0804661C
	add r0, r3, #0
	add r0, r0, #61
	ldrb r2, [r0]
	ldr r1, _08046614  @ =0x03001958
	ldr r0, [r1]
	cmp r2, r0
	beq _080465F8
	str r2, [r1]
	ldr r0, _08046618  @ =0x03001A54
	ldr r1, [r0]
	lsl r0, r2, #1
	add r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	bne _080465F8
	mov r2, #240
	lsl r2, r2, #1
	add r0, r2, #0
	strh r0, [r1]
_080465F8:
	ldr r0, [r4]
	mov r1, #8
	neg r1, r1
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	str r0, [r4]
	mov r0, #1
	b _0804661E
	.byte 0x00
	.byte 0x00
_0804660C:
	.4byte gUnknown_03001940
_08046610:
	.4byte gUnknown_03001A1C
_08046614:
	.4byte 0x03001958
_08046618:
	.4byte 0x03001A54
_0804661C:
	mov r0, #0
_0804661E:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804658C

	THUMB_FUNC_START sub_08046624
sub_08046624: @ 0x08046624
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	ldr r0, _08046698  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	bne _0804663E
	b _08046788
_0804663E:
	mov r0, r8
	mov r1, #11
	ldrsb r1, [r0, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _080466A8
	ldr r2, _0804669C  @ =gUnknown_03001940
	mov r3, r8
	mov r1, #11
	ldrsb r1, [r3, r1]
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #5
	beq _08046664
	b _08046788
_08046664:
	add r0, r2, #0
	add r0, r0, #132
	ldr r3, [r0]
	ldr r0, [r3, #8]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	bne _08046678
	b _08046788
_08046678:
	ldr r0, [r3, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08046686
	b _08046788
_08046686:
	ldr r0, [r2, #92]
	mov r1, #128
	lsl r1, r1, #1
	orr r0, r0, r1
	str r0, [r2, #92]
	add r0, r2, #0
	bl update_grabbed_object_0803ACFC
	b _08046766
_08046698:
	.4byte gUnknown_03001990
_0804669C:
	.4byte gUnknown_03001940
_080466A0:
	mov r0, r10
	add r0, r0, #61
	ldrb r0, [r0]
	b _08046720
_080466A8:
	ldr r0, _080466F8  @ =gUnknown_03001940
	ldr r2, [r0]
	mov r1, #1
	mov r9, r1
_080466B0:
	add r0, r2, #0
	add r0, r0, #152
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046706
	mov r10, r2
	ldrh r0, [r2]
	cmp r0, #5
	bne _08046706
	mov r3, r8
	ldr r0, [r3, #108]
	mov r1, #128
	lsl r1, r1, #2
	add r7, r0, r1
	ldr r0, [r3, #116]
	ldr r3, _080466FC  @ =0xFFFFFE00
	add r0, r0, r3
	mov r1, r8
	ldr r6, [r1, #112]
	ldr r3, [r1, #120]
	mov r12, r3
	ldr r1, [r2, #108]
	ldr r3, [r2, #116]
	ldr r5, [r2, #112]
	ldr r4, [r2, #120]
	cmp r0, r1
	ble _08046700
	cmp r7, r3
	bge _08046700
	cmp r6, r4
	bge _08046700
	cmp r12, r5
	ble _08046700
	mov r0, #1
	b _08046702
	.byte 0x00
	.byte 0x00
_080466F8:
	.4byte gUnknown_03001940
_080466FC:
	.4byte 0xFFFFFE00
_08046700:
	mov r0, #0
_08046702:
	cmp r0, #0
	bne _080466A0
_08046706:
	mov r1, r9
	lsl r0, r1, #16
	mov r3, #128
	lsl r3, r3, #9
	add r0, r0, r3
	add r2, r2, #176
	lsr r1, r0, #16
	mov r9, r1
	asr r0, r0, #16
	cmp r0, #19
	ble _080466B0
	mov r0, #1
	neg r0, r0
_08046720:
	lsl r0, r0, #24
	lsr r4, r0, #24
	asr r1, r0, #24
	cmp r1, #0
	ble _08046788
	mov r0, #176
	mul r1, r0, r1
	ldr r2, _0804677C  @ =gUnknown_03001940
	ldr r0, [r2]
	add r2, r0, r1
	add r0, r2, #0
	add r0, r0, #132
	ldr r3, [r0]
	ldr r0, [r3, #8]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	beq _08046788
	ldr r0, [r3, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08046788
	ldr r0, [r2, #92]
	mov r1, #128
	lsl r1, r1, #1
	orr r0, r0, r1
	str r0, [r2, #92]
	add r0, r2, #0
	bl update_grabbed_object_0803ACFC
	mov r3, r8
	strb r4, [r3, #11]
_08046766:
	ldr r2, _08046780  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #13
	orr r0, r0, r1
	ldr r1, _08046784  @ =0xFFBFFFFF
	and r0, r0, r1
	str r0, [r2]
	mov r0, #1
	b _0804678A
	.byte 0x00
	.byte 0x00
_0804677C:
	.4byte gUnknown_03001940
_08046780:
	.4byte gUnknown_03001A1C
_08046784:
	.4byte 0xFFBFFFFF
_08046788:
	mov r0, #0
_0804678A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08046624

	THUMB_FUNC_START sub_08046798
sub_08046798: @ 0x08046798
	push {r4-r6,lr}
	add r5, r0, #0
	ldr r0, _080467FC  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0804684C
	mov r1, #11
	ldrsb r1, [r5, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08046804
	ldr r2, _08046800  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r4, r0, r1
	ldrh r2, [r4]
	cmp r2, #8
	beq _0804684C
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	beq _0804684C
	cmp r2, #18
	bne _080467E8
	ldr r0, [r4, #16]
	asr r0, r0, #8
	ldr r1, [r4, #20]
	asr r1, r1, #8
	mov r2, #18
	bl sub_0800EFD8
_080467E8:
	ldr r0, [r4, #92]
	mov r1, #128
	lsl r1, r1, #1
	orr r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	bl update_grabbed_object_0803ACFC
	mov r0, #1
	b _0804684E
_080467FC:
	.4byte gUnknown_03001990
_08046800:
	.4byte gUnknown_03001940
_08046804:
	add r0, r5, #0
	bl sub_08043B48
	lsl r0, r0, #24
	lsr r6, r0, #24
	asr r1, r0, #24
	cmp r1, #0
	ble _0804684C
	ldr r2, _08046848  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r4, r0, r1
	ldrh r0, [r4]
	cmp r0, #18
	bne _08046832
	ldr r0, [r4, #16]
	asr r0, r0, #8
	ldr r1, [r4, #20]
	asr r1, r1, #8
	mov r2, #18
	bl sub_0800EFD8
_08046832:
	ldr r0, [r4, #92]
	mov r1, #128
	lsl r1, r1, #1
	orr r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	bl update_grabbed_object_0803ACFC
	strb r6, [r5, #11]
	mov r0, #1
	b _0804684E
_08046848:
	.4byte gUnknown_03001940
_0804684C:
	mov r0, #0
_0804684E:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08046798

	THUMB_FUNC_START sub_08046854
sub_08046854: @ 0x08046854
	push {r4,lr}
	add r3, r0, #0
	ldrh r0, [r3]
	cmp r0, #100
	bne _080468CC
	add r0, r3, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #119
	bgt _0804686C
	b _08046AA8
_0804686C:
	ldr r1, _08046888  @ =gUnknown_030019AC
	ldr r0, [r1]
	ldr r2, [r3, #36]
	ldr r0, [r0, #36]
	add r4, r1, #0
	cmp r2, r0
	ble _0804688C
	sub r1, r2, r0
_0804687C:
	mov r0, #128
	lsl r0, r0, #5
	cmp r1, r0
	ble _08046890
	b _08046AA8
	.byte 0x00
	.byte 0x00
_08046888:
	.4byte gUnknown_030019AC
_0804688C:
	sub r1, r0, r2
	b _0804687C
_08046890:
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _080468AA
	ldr r0, [r4]
	ldr r0, [r0, #32]
	ldr r1, [r3, #32]
	sub r0, r0, r1
	sub r0, r0, #1
	b _080468B6
_080468AA:
	ldr r1, [r4]
	ldr r0, [r3, #32]
	ldr r1, [r1, #32]
	sub r0, r0, r1
	ldr r2, _080468C4  @ =0xFFFFEFFF
	add r0, r0, r2
_080468B6:
	ldr r1, _080468C8  @ =0x000013FE
	cmp r0, r1
	bls _080468BE
	b _08046AA8
_080468BE:
	mov r0, #1
	b _08046AAA
	.byte 0x00
	.byte 0x00
_080468C4:
	.4byte 0xFFFFEFFF
_080468C8:
	.4byte 0x000013FE
_080468CC:
	cmp r0, #117
	bne _0804693C
	ldr r1, _080468EC  @ =gUnknown_030019AC
	ldr r0, [r1]
	ldr r2, [r3, #36]
	ldr r0, [r0, #36]
	add r4, r1, #0
	cmp r2, r0
	ble _080468F0
	sub r1, r2, r0
_080468E0:
	mov r0, #128
	lsl r0, r0, #5
	cmp r1, r0
	ble _080468F4
	b _08046AA8
	.byte 0x00
	.byte 0x00
_080468EC:
	.4byte gUnknown_030019AC
_080468F0:
	sub r1, r0, r2
	b _080468E0
_080468F4:
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08046928
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08046914
	b _08046AA8
_08046914:
	ldr r1, [r1, #32]
	ldr r0, [r3, #32]
	sub r1, r1, r0
	cmp r1, #0
	bgt _08046920
	b _08046AA8
_08046920:
	ldr r0, _08046924  @ =0x00003BFF
	b _08046AA2
_08046924:
	.4byte 0x00003BFF
_08046928:
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	beq _0804693A
	b _08046AA8
_0804693A:
	b _08046A92
_0804693C:
	cmp r0, #188
	bne _0804697E
	ldr r1, _0804695C  @ =gUnknown_030019AC
	ldr r0, [r1]
	ldr r2, [r3, #36]
	ldr r0, [r0, #36]
	add r4, r1, #0
	cmp r2, r0
	ble _08046960
	sub r1, r2, r0
	mov r0, #128
	lsl r0, r0, #5
_08046954:
	cmp r1, r0
	ble _08046968
	b _08046AA8
	.byte 0x00
	.byte 0x00
_0804695C:
	.4byte gUnknown_030019AC
_08046960:
	sub r1, r0, r2
	mov r0, #128
	lsl r0, r0, #4
	b _08046954
_08046968:
	ldr r0, [r4]
	ldr r1, [r3, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	ble _0804697A
	sub r1, r1, r0
_08046974:
	mov r0, #128
	lsl r0, r0, #7
	b _08046AA2
_0804697A:
	sub r1, r0, r1
	b _08046974
_0804697E:
	cmp r0, #192
	bne _080469EC
	ldr r0, _080469A4  @ =gCurrentWorld
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bne _080469A8
	add r1, r3, #0
	add r1, r1, #144
	mov r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #180
	bgt _0804699C
	b _08046AA8
_0804699C:
	mov r0, #0
	strh r0, [r1]
	b _080468BE
	.byte 0x00
	.byte 0x00
_080469A4:
	.4byte gCurrentWorld
_080469A8:
	ldr r0, _080469C4  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _080469C8
	add r2, r3, #0
	add r2, r2, #144
	mov r0, #0
	ldrsh r1, [r2, r0]
	mov r0, #150
	lsl r0, r0, #1
	b _080469D4
	.byte 0x00
	.byte 0x00
_080469C4:
	.4byte gLevelType
_080469C8:
	add r2, r3, #0
	add r2, r2, #144
	mov r0, #0
	ldrsh r1, [r2, r0]
	mov r0, #225
	lsl r0, r0, #2
_080469D4:
	cmp r1, r0
	bgt _080469E0
	ldr r1, [r3, #32]
	ldr r0, _080469E8  @ =0x00006FFF
	cmp r1, r0
	bgt _08046AA8
_080469E0:
	mov r0, #0
	strh r0, [r2]
	b _080468BE
	.byte 0x00
	.byte 0x00
_080469E8:
	.4byte 0x00006FFF
_080469EC:
	cmp r0, #120
	beq _08046A08
	cmp r0, #129
	beq _08046A08
	cmp r0, #130
	beq _08046A08
	cmp r0, #131
	beq _08046A08
	cmp r0, #132
	beq _08046A08
	cmp r0, #133
	beq _08046A08
	cmp r0, #134
	bne _08046A44
_08046A08:
	ldr r1, _08046A30  @ =gUnknown_030019AC
	ldr r0, [r1]
	ldr r2, [r3, #36]
	ldr r0, [r0, #36]
	add r4, r1, #0
	cmp r2, r0
	ble _08046A1E
	sub r1, r2, r0
	ldr r0, _08046A34  @ =0x00001FFF
	cmp r1, r0
	ble _08046AA8
_08046A1E:
	ldr r0, [r4]
	ldr r1, [r3, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	blt _08046A38
	sub r1, r1, r0
	ldr r0, _08046A34  @ =0x00001FFF
	b _08046AA2
	.byte 0x00
	.byte 0x00
_08046A30:
	.4byte gUnknown_030019AC
_08046A34:
	.4byte 0x00001FFF
_08046A38:
	sub r1, r0, r1
	ldr r0, _08046A40  @ =0x00001FFF
	b _08046AA2
	.byte 0x00
	.byte 0x00
_08046A40:
	.4byte 0x00001FFF
_08046A44:
	cmp r0, #128
	bne _08046AA8
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08046A80
	ldr r0, _08046A78  @ =gUnknown_030019AC
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08046AA8
	ldr r1, [r1, #32]
	ldr r0, [r3, #32]
	sub r1, r1, r0
	cmp r1, #0
	ble _08046AA8
	ldr r0, _08046A7C  @ =0x00003BFF
	b _08046AA2
	.byte 0x00
	.byte 0x00
_08046A78:
	.4byte gUnknown_030019AC
_08046A7C:
	.4byte 0x00003BFF
_08046A80:
	ldr r0, _08046AB0  @ =gUnknown_030019AC
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08046AA8
_08046A92:
	ldr r0, [r3, #32]
	ldr r1, [r1, #32]
	sub r1, r0, r1
	mov r0, #128
	lsl r0, r0, #5
	cmp r1, r0
	ble _08046AA8
	ldr r0, _08046AB4  @ =0x00004BFF
_08046AA2:
	cmp r1, r0
	bgt _08046AA8
	b _080468BE
_08046AA8:
	mov r0, #0
_08046AAA:
	pop {r4}
	pop {r1}
	bx r1
_08046AB0:
	.4byte gUnknown_030019AC
_08046AB4:
	.4byte 0x00004BFF
	THUMB_FUNC_END sub_08046854

	THUMB_FUNC_START sub_08046AB8
sub_08046AB8: @ 0x08046AB8
	push {r4,r5,lr}
	mov r12, r0
	ldr r0, _08046B40  @ =0x03001B70
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldr r1, _08046B44  @ =gMainState
	ldr r1, [r1]
	add r4, r0, #0
	cmp r1, #5
	beq _08046AD2
	cmp r1, #2
	bne _08046AD8
_08046AD2:
	ldr r1, _08046B48  @ =0x0000012D
	add r0, r1, #0
	strh r0, [r4]
_08046AD8:
	ldr r0, _08046B4C  @ =gUnknown_030019AC
	ldr r1, [r0]
	ldr r3, [r1, #36]
	ldr r2, _08046B50  @ =0xFFFFE800
	add r1, r3, r2
	mov r5, r12
	ldr r2, [r5, #36]
	add r5, r0, #0
	cmp r1, r2
	bge _08046AEE
	b _08046CBE
_08046AEE:
	cmp r3, r2
	bge _08046AFE
	sub r1, r2, r3
	mov r0, #128
	lsl r0, r0, #8
	cmp r1, r0
	ble _08046AFE
	b _08046CBE
_08046AFE:
	ldr r2, [r5]
	ldrh r3, [r2, #4]
	mov r0, #4
	ldrsh r1, [r2, r0]
	mov r0, #227
	lsl r0, r0, #1
	cmp r1, r0
	beq _08046B1A
	add r0, r0, #6
	cmp r1, r0
	beq _08046B1A
	sub r0, r0, #12
	cmp r1, r0
	bne _08046B7C
_08046B1A:
	mov r0, r12
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08046B5C
	ldr r0, [r5]
	ldr r2, [r0, #32]
	ldr r1, _08046B54  @ =0xFFFFF900
	add r0, r2, r1
	mov r3, r12
	ldr r1, [r3, #32]
	cmp r0, r1
	blt _08046B3A
	b _08046CBE
_08046B3A:
	ldr r5, _08046B58  @ =0xFFFFFC00
	add r0, r2, r5
	b _08046CA8
_08046B40:
	.4byte 0x03001B70
_08046B44:
	.4byte gMainState
_08046B48:
	.4byte 0x0000012D
_08046B4C:
	.4byte gUnknown_030019AC
_08046B50:
	.4byte 0xFFFFE800
_08046B54:
	.4byte 0xFFFFF900
_08046B58:
	.4byte 0xFFFFFC00
_08046B5C:
	ldr r0, [r5]
	ldr r2, [r0, #32]
	ldr r1, _08046B74  @ =0xFFFFF780
	add r0, r2, r1
	mov r3, r12
	ldr r1, [r3, #32]
	cmp r0, r1
	blt _08046B6E
	b _08046CBE
_08046B6E:
	ldr r5, _08046B78  @ =0xFFFFF880
	add r0, r2, r5
	b _08046CA8
_08046B74:
	.4byte 0xFFFFF780
_08046B78:
	.4byte 0xFFFFF880
_08046B7C:
	ldr r0, _08046BC4  @ =0x000001C7
	cmp r1, r0
	beq _08046B8E
	add r0, r0, #6
	cmp r1, r0
	beq _08046B8E
	sub r0, r0, #12
	cmp r1, r0
	bne _08046BE8
_08046B8E:
	mov r0, r12
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08046BD0
	ldr r1, _08046BC8  @ =0x03000338
	ldr r0, [r5]
	ldr r2, [r0, #32]
	mov r3, #136
	lsl r3, r3, #3
	add r0, r2, r3
	strh r0, [r1]
	ldr r1, _08046BCC  @ =0x0300033A
	mov r5, #128
	lsl r5, r5, #4
	add r0, r2, r5
	strh r0, [r1]
	add r0, r2, r3
	mov r3, r12
	ldr r1, [r3, #32]
	cmp r0, r1
	blt _08046BC0
	b _08046CBE
_08046BC0:
	add r0, r2, r5
	b _08046CA8
_08046BC4:
	.4byte 0x000001C7
_08046BC8:
	.4byte 0x03000338
_08046BCC:
	.4byte 0x0300033A
_08046BD0:
	ldr r0, [r5]
	ldr r2, [r0, #32]
	add r0, r2, #0
	add r0, r0, #128
	mov r5, r12
	ldr r1, [r5, #32]
	cmp r0, r1
	bge _08046CBE
	mov r3, #128
	lsl r3, r3, #3
	add r0, r2, r3
	b _08046CA8
_08046BE8:
	ldr r5, _08046C18  @ =0xFFFFFE60
	add r0, r3, r5
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #5
	bhi _08046C38
	mov r0, r12
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08046C20
	ldr r2, [r2, #32]
	ldr r1, _08046C1C  @ =0xFFFFFC00
	add r0, r2, r1
	mov r3, r12
	ldr r1, [r3, #32]
	cmp r0, r1
	bge _08046CBE
	cmp r1, r2
	bge _08046CBE
	b _08046CAC
	.byte 0x00
	.byte 0x00
_08046C18:
	.4byte 0xFFFFFE60
_08046C1C:
	.4byte 0xFFFFFC00
_08046C20:
	ldr r2, [r2, #32]
	mov r5, #224
	lsl r5, r5, #2
	add r0, r2, r5
	mov r3, r12
	ldr r1, [r3, #32]
	cmp r0, r1
	bge _08046CBE
	mov r5, #144
	lsl r5, r5, #3
	add r0, r2, r5
	b _08046CA8
_08046C38:
	mov r0, r12
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08046C70
	add r0, r2, #0
	add r0, r0, #67
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _08046C96
	ldr r2, [r2, #32]
	ldr r1, _08046C68  @ =0xFFFFF380
	add r0, r2, r1
	mov r3, r12
	ldr r1, [r3, #32]
	cmp r0, r1
	bge _08046CBE
	ldr r5, _08046C6C  @ =0xFFFFF480
	add r0, r2, r5
	b _08046CA8
_08046C68:
	.4byte 0xFFFFF380
_08046C6C:
	.4byte 0xFFFFF480
_08046C70:
	add r0, r2, #0
	add r0, r0, #67
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _08046C96
	ldr r2, [r2, #32]
	mov r5, #184
	lsl r5, r5, #4
	add r0, r2, r5
	mov r3, r12
	ldr r1, [r3, #32]
	cmp r0, r1
	bge _08046CBE
	mov r5, #200
	lsl r5, r5, #4
	add r0, r2, r5
	b _08046CA8
_08046C96:
	ldr r2, [r2, #32]
	add r0, r2, #0
	sub r0, r0, #128
	mov r3, r12
	ldr r1, [r3, #32]
	cmp r0, r1
	bge _08046CBE
	add r0, r2, #0
	add r0, r0, #128
_08046CA8:
	cmp r1, r0
	bge _08046CBE
_08046CAC:
	ldrh r1, [r4]
	mov r0, #150
	lsl r0, r0, #1
	cmp r1, r0
	bls _08046CBE
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	b _08046CC0
_08046CBE:
	mov r0, #0
_08046CC0:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08046AB8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08046CC8
sub_08046CC8: @ 0x08046CC8
	push {r4-r7,lr}
	add r3, r0, #0
	ldr r7, _08046D60  @ =gUnknown_03001A1C
	ldr r5, [r7]
	mov r0, #16
	and r0, r0, r5
	cmp r0, #0
	beq _08046D70
	ldr r0, _08046D64  @ =gUnknown_030019AC
	ldr r4, [r0]
	ldrh r2, [r4, #4]
	mov r0, #4
	ldrsh r1, [r4, r0]
	mov r0, #170
	lsl r0, r0, #1
	cmp r1, r0
	ble _08046D70
	mov r0, #180
	lsl r0, r0, #1
	cmp r1, r0
	bgt _08046D70
	ldr r1, _08046D68  @ =0xFFFFFEA9
	add r0, r2, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #13
	bls _08046D70
	ldr r1, [r3, #32]
	asr r1, r1, #8
	add r0, r3, #0
	add r0, r0, #132
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	ldr r0, [r3, #36]
	asr r0, r0, #8
	ldrb r2, [r2, #2]
	add r6, r0, r2
	ldr r2, [r4, #32]
	asr r2, r2, #8
	add r0, r4, #0
	add r0, r0, #132
	ldr r3, [r0]
	ldrb r0, [r3, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r0, [r4, #36]
	asr r0, r0, #8
	ldrb r3, [r3, #2]
	add r3, r0, r3
	sub r1, r1, r2
	add r2, r1, #0
	mul r2, r1, r2
	add r1, r2, #0
	sub r0, r6, r3
	add r2, r0, #0
	mul r2, r0, r2
	add r0, r2, #0
	add r1, r1, r0
	cmp r1, #5
	bgt _08046D70
	cmp r6, r3
	bne _08046D70
	mov r0, #128
	lsl r0, r0, #1
	orr r5, r5, r0
	str r5, [r7]
	ldr r2, _08046D6C  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #1
	b _08046D72
_08046D60:
	.4byte gUnknown_03001A1C
_08046D64:
	.4byte gUnknown_030019AC
_08046D68:
	.4byte 0xFFFFFEA9
_08046D6C:
	.4byte gUnknown_030019A0
_08046D70:
	mov r0, #0
_08046D72:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08046CC8

	THUMB_FUNC_START sub_08046D78
sub_08046D78: @ 0x08046D78
	push {r4,r5,lr}
	ldr r2, [r0, #32]
	asr r2, r2, #8
	add r1, r0, #0
	add r1, r1, #132
	ldr r3, [r1]
	ldrb r1, [r3, #1]
	lsr r1, r1, #1
	add r5, r2, r1
	ldr r0, [r0, #36]
	asr r0, r0, #8
	ldrb r3, [r3, #2]
	add r4, r0, r3
	ldr r0, _08046DEC  @ =0x03001BD4
	ldr r0, [r0]
	ldr r1, [r0, #32]
	asr r1, r1, #8
	add r1, r1, #8
	ldr r0, [r0, #36]
	asr r0, r0, #8
	add r3, r0, #0
	add r3, r3, #16
	sub r1, r5, r1
	add r0, r1, #0
	mul r0, r1, r0
	add r1, r0, #0
	sub r0, r4, r3
	add r2, r0, #0
	mul r2, r0, r2
	add r0, r2, #0
	add r1, r1, r0
	cmp r1, #2
	bgt _08046E10
	cmp r4, r3
	bne _08046E10
	ldr r0, _08046DF0  @ =gUnknown_030019AC
	ldr r3, [r0]
	ldr r0, [r3, #36]
	add r1, r3, #0
	add r1, r1, #132
	ldr r2, [r1]
	asr r0, r0, #8
	ldrb r1, [r2, #2]
	add r0, r0, r1
	cmp r0, r4
	bne _08046E10
	ldr r1, [r3, #32]
	asr r1, r1, #8
	ldrb r0, [r2, #1]
	lsr r0, r0, #1
	add r0, r1, r0
	sub r3, r0, r5
	cmp r3, #0
	blt _08046DF4
	cmp r3, #39
	ble _08046DFA
	b _08046E10
	.byte 0x00
	.byte 0x00
_08046DEC:
	.4byte 0x03001BD4
_08046DF0:
	.4byte gUnknown_030019AC
_08046DF4:
	sub r0, r5, r0
	cmp r0, #39
	bgt _08046E10
_08046DFA:
	ldr r0, _08046E0C  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #6
	orr r1, r1, r2
	str r1, [r0]
	mov r0, #1
	b _08046E12
	.byte 0x00
	.byte 0x00
_08046E0C:
	.4byte gUnknown_030019A0
_08046E10:
	mov r0, #0
_08046E12:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08046D78

	THUMB_FUNC_START sub_08046E18
sub_08046E18: @ 0x08046E18
	push {r4,r5,lr}
	sub sp, sp, #16
	add r5, r0, #0
	ldr r3, [r5, #100]
	mov r1, #4
	ldrsh r0, [r3, r1]
	ldr r2, [r5, #32]
	add r0, r2, r0
	str r0, [sp]
	mov r4, #0
	ldrsh r0, [r3, r4]
	ldr r1, [r5, #36]
	add r0, r1, r0
	str r0, [sp, #4]
	mov r4, #6
	ldrsh r0, [r3, r4]
	add r2, r2, r0
	str r2, [sp, #8]
	mov r2, #2
	ldrsh r0, [r3, r2]
	add r1, r1, r0
	str r1, [sp, #12]
	mov r4, #48
	ldrsh r0, [r5, r4]
	cmp r0, #0
	blt _08046E58
	mov r1, #0
	cmp r0, #0
	ble _08046E5A
	mov r1, #192
	lsl r1, r1, #2
	b _08046E5A
_08046E58:
	ldr r1, _08046E9C  @ =0xFFFFFD00
_08046E5A:
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _08046EBC
	ldr r4, _08046EA0  @ =gUnknown_03001940
	add r2, r5, #0
	add r2, r2, #66
	ldrb r3, [r2]
	mov r0, #176
	add r1, r3, #0
	mul r1, r0, r1
	ldr r0, [r4]
	add r0, r0, r1
	cmp r3, #0
	beq _08046EC0
	ldr r4, [r0, #32]
	ldr r3, [r5, #32]
	sub r1, r4, r3
	cmp r1, #0
	bge _08046E8A
	sub r1, r3, r4
_08046E8A:
	ldr r4, [r0, #40]
	ldr r0, [r5, #40]
	sub r3, r4, r0
	cmp r3, #0
	blt _08046EA4
	cmp r1, r3
	bgt _08046EC0
	b _08046EAA
	.byte 0x00
	.byte 0x00
_08046E9C:
	.4byte 0xFFFFFD00
_08046EA0:
	.4byte gUnknown_03001940
_08046EA4:
	sub r0, r0, r4
	cmp r1, r0
	bgt _08046EC0
_08046EAA:
	add r0, r5, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #5
	ble _08046EC0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08046EC0
_08046EBC:
	mov r0, #1
	b _08046EC2
_08046EC0:
	mov r0, #0
_08046EC2:
	add sp, sp, #16
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08046E18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08046ECC
sub_08046ECC: @ 0x08046ECC
	push {r4,r5,lr}
	sub sp, sp, #16
	add r4, r0, #0
	ldr r0, [r4, #48]
	cmp r0, #0
	bne _08046EDA
	b _08047098
_08046EDA:
	ldrb r1, [r1, #6]
	cmp r1, #2
	beq _08046FCC
	cmp r1, #2
	bgt _08046EEA
	cmp r1, #1
	beq _08046F60
	b _08047098
_08046EEA:
	cmp r1, #4
	beq _08046EF6
	cmp r1, #8
	bne _08046EF4
	b _08047028
_08046EF4:
	b _08047098
_08046EF6:
	mov r1, #48
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08046F0A
	mov r2, #0
	cmp r0, #0
	ble _08046F0C
	mov r2, #128
	lsl r2, r2, #1
	b _08046F0C
_08046F0A:
	ldr r2, _08046F58  @ =0xFFFFFF00
_08046F0C:
	mov r3, #128
	lsl r3, r3, #3
	add r0, r2, r3
	ldr r1, [r4, #32]
	add r0, r1, r0
	str r0, [sp]
	mov r5, #192
	lsl r5, r5, #4
	add r0, r2, r5
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #36]
	mov r2, #128
	lsl r2, r2, #1
	add r1, r0, r2
	str r1, [sp, #4]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r0, r1
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #0
	mov r3, #1
	bl sub_080066FC
	cmp r0, #0
	beq _08046F44
	b _08047098
_08046F44:
	ldr r0, [r4, #32]
	ldr r1, _08046F5C  @ =0x7FFFF800
	and r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r0, r2
	b _0804708A
	.byte 0x00
	.byte 0x00
_08046F58:
	.4byte 0xFFFFFF00
_08046F5C:
	.4byte 0x7FFFF800
_08046F60:
	mov r3, #48
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _08046F74
	mov r2, #0
	cmp r0, #0
	ble _08046F76
	mov r2, #128
	lsl r2, r2, #1
	b _08046F76
_08046F74:
	ldr r2, _08046FC0  @ =0xFFFFFF00
_08046F76:
	mov r5, #128
	lsl r5, r5, #3
	add r0, r2, r5
	ldr r1, [r4, #32]
	add r0, r1, r0
	str r0, [sp]
	mov r3, #192
	lsl r3, r3, #4
	add r0, r2, r3
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #36]
	str r0, [sp, #4]
	mov r5, #240
	lsl r5, r5, #4
	add r0, r0, r5
	str r0, [sp, #12]
	ldr r2, _08046FC0  @ =0xFFFFFF00
	mov r0, sp
	mov r1, #0
	mov r3, #1
	bl sub_080066FC
	cmp r0, #0
	bne _08047098
	ldr r0, [r4, #32]
	mov r1, #224
	lsl r1, r1, #3
	add r0, r0, r1
	ldr r1, _08046FC4  @ =0x7FFFF800
	and r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	ldr r2, _08046FC8  @ =0xFFFFFC00
	add r0, r0, r2
	b _0804708A
	.byte 0x00
	.byte 0x00
_08046FC0:
	.4byte 0xFFFFFF00
_08046FC4:
	.4byte 0x7FFFF800
_08046FC8:
	.4byte 0xFFFFFC00
_08046FCC:
	mov r3, #50
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _08046FE0
	mov r3, #0
	cmp r0, #0
	ble _08046FE2
	mov r3, #128
	lsl r3, r3, #1
	b _08046FE2
_08046FE0:
	ldr r3, _08047020  @ =0xFFFFFF00
_08046FE2:
	ldr r0, [r4, #32]
	str r0, [sp]
	mov r5, #240
	lsl r5, r5, #4
	add r0, r0, r5
	str r0, [sp, #8]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r3, r1
	ldr r1, [r4, #36]
	add r0, r1, r0
	str r0, [sp, #4]
	mov r2, #192
	lsl r2, r2, #4
	add r0, r3, r2
	add r1, r1, r0
	str r1, [sp, #12]
	ldr r1, _08047020  @ =0xFFFFFF00
	mov r0, sp
	mov r2, #0
	mov r3, #1
	bl sub_080066FC
	cmp r0, #0
	bne _08047098
	ldr r0, [r4, #32]
	ldr r3, _08047024  @ =0xFFFFFC00
	add r0, r0, r3
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	b _08047086
_08047020:
	.4byte 0xFFFFFF00
_08047024:
	.4byte 0xFFFFFC00
_08047028:
	mov r5, #50
	ldrsh r0, [r4, r5]
	cmp r0, #0
	blt _0804703C
	mov r3, #0
	cmp r0, #0
	ble _0804703E
	mov r3, #128
	lsl r3, r3, #1
	b _0804703E
_0804703C:
	ldr r3, _08047090  @ =0xFFFFFF00
_0804703E:
	ldr r0, [r4, #32]
	mov r1, #128
	lsl r1, r1, #1
	add r2, r0, r1
	str r2, [sp]
	mov r2, #128
	lsl r2, r2, #5
	add r0, r0, r2
	str r0, [sp, #8]
	mov r5, #128
	lsl r5, r5, #3
	add r0, r3, r5
	ldr r2, [r4, #36]
	add r0, r2, r0
	str r0, [sp, #4]
	mov r5, #192
	lsl r5, r5, #4
	add r0, r3, r5
	add r2, r2, r0
	str r2, [sp, #12]
	mov r0, sp
	mov r2, #0
	mov r3, #1
	bl sub_080066FC
	cmp r0, #0
	bne _08047098
	ldr r0, [r4, #32]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r2, #224
	lsl r2, r2, #3
	add r0, r0, r2
_08047086:
	ldr r1, _08047094  @ =0x7FFFF800
	and r0, r0, r1
_0804708A:
	str r0, [r4, #36]
	mov r0, #1
	b _0804709A
_08047090:
	.4byte 0xFFFFFF00
_08047094:
	.4byte 0x7FFFF800
_08047098:
	mov r0, #0
_0804709A:
	add sp, sp, #16
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08046ECC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080470A4
sub_080470A4: @ 0x080470A4
	push {r4-r6,lr}
	sub sp, sp, #12
	add r5, r0, #0
	mov r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _080470F0
	ldr r3, [r5, #100]
	mov r4, #4
	ldrsh r0, [r3, r4]
	ldr r1, [r5, #32]
	add r0, r1, r0
	asr r6, r0, #8
	mov r0, #0
	ldrsh r2, [r3, r0]
	ldr r0, [r5, #36]
	add r0, r0, r2
	asr r2, r0, #8
	mov r4, #6
	ldrsh r0, [r3, r4]
	add r1, r1, r0
	asr r4, r1, #8
	add r3, r2, #3
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	add r1, r2, #0
	add r2, r4, #0
	bl sub_08002B04
	add r1, r0, #0
	ldr r0, _080470EC  @ =0xFFFFEC78
	cmp r1, r0
	beq _080471C0
	b _080471B4
	.byte 0x00
	.byte 0x00
_080470EC:
	.4byte 0xFFFFEC78
_080470F0:
	cmp r0, #0
	bge _08047154
	ldr r0, _0804714C  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080471C0
	ldr r3, [r5, #100]
	mov r1, #4
	ldrsh r0, [r3, r1]
	ldr r1, [r5, #32]
	add r0, r1, r0
	lsl r0, r0, #8
	asr r6, r0, #16
	mov r4, #0
	ldrsh r2, [r3, r4]
	ldr r0, [r5, #36]
	add r0, r0, r2
	asr r2, r0, #8
	mov r4, #6
	ldrsh r0, [r3, r4]
	add r1, r1, r0
	lsl r1, r1, #8
	asr r4, r1, #16
	add r3, r2, #0
	add r3, r3, #8
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	add r1, r2, #0
	add r2, r4, #0
	bl sub_08002B04
	add r1, r0, #0
	ldr r0, _08047150  @ =0xFFFFEC78
	cmp r1, r0
	beq _080471C0
	ldr r0, [sp, #4]
	sub r0, r0, #12
	lsl r1, r0, #8
	ldr r0, [r5, #32]
	cmp r1, r0
	bgt _080471C0
	b _080471AC
	.byte 0x00
	.byte 0x00
_0804714C:
	.4byte gUnknown_03001990
_08047150:
	.4byte 0xFFFFEC78
_08047154:
	ldr r0, _080471B8  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _080471C0
	ldr r3, [r5, #100]
	mov r1, #4
	ldrsh r0, [r3, r1]
	ldr r1, [r5, #32]
	add r0, r1, r0
	lsl r0, r0, #8
	asr r0, r0, #16
	add r6, r0, #4
	mov r4, #0
	ldrsh r2, [r3, r4]
	ldr r0, [r5, #36]
	add r0, r0, r2
	asr r2, r0, #8
	mov r4, #6
	ldrsh r0, [r3, r4]
	add r1, r1, r0
	lsl r1, r1, #8
	asr r1, r1, #16
	add r4, r1, #4
	add r3, r2, #0
	add r3, r3, #8
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	add r1, r2, #0
	add r2, r4, #0
	bl sub_08002B04
	add r1, r0, #0
	ldr r0, _080471BC  @ =0xFFFFEC78
	cmp r1, r0
	beq _080471C0
	ldr r0, [sp, #4]
	sub r0, r0, #12
	lsl r1, r0, #8
	ldr r0, [r5, #32]
	cmp r1, r0
	blt _080471C0
_080471AC:
	ldr r0, [sp, #8]
	lsl r0, r0, #8
	str r0, [r5, #36]
	str r1, [r5, #32]
_080471B4:
	mov r0, #1
	b _080471C2
_080471B8:
	.4byte gUnknown_03001990
_080471BC:
	.4byte 0xFFFFEC78
_080471C0:
	mov r0, #0
_080471C2:
	add sp, sp, #12
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080470A4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080471CC
sub_080471CC: @ 0x080471CC
	push {r4-r7,lr}
	sub sp, sp, #12
	add r6, r0, #0
	add r2, r1, #0
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08047240
	ldr r0, _08047238  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080472A4
	ldr r4, [r6, #100]
	mov r5, #4
	ldrsh r0, [r4, r5]
	ldr r1, [r6, #32]
	add r0, r1, r0
	lsl r0, r0, #8
	asr r0, r0, #16
	mov r5, #4
	ldrsh r3, [r2, r5]
	add r7, r0, r3
	mov r0, #0
	ldrsh r2, [r4, r0]
	ldr r0, [r6, #36]
	add r0, r0, r2
	asr r5, r0, #8
	mov r2, #6
	ldrsh r0, [r4, r2]
	add r1, r1, r0
	lsl r1, r1, #8
	asr r1, r1, #16
	add r2, r1, r3
	add r3, r5, #0
	add r3, r3, #8
	add r0, sp, #4
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_08002F14
	add r1, r0, #0
	ldr r0, _0804723C  @ =0xFFFFEC78
	cmp r1, r0
	beq _080472A4
	ldr r0, [sp, #8]
	lsl r0, r0, #8
	str r0, [r6, #36]
	ldr r0, [sp, #4]
	sub r0, r0, #4
	b _08047294
	.byte 0x00
	.byte 0x00
_08047238:
	.4byte gUnknown_03001990
_0804723C:
	.4byte 0xFFFFEC78
_08047240:
	ldr r0, _0804729C  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _080472A4
	ldr r4, [r6, #100]
	mov r1, #4
	ldrsh r0, [r4, r1]
	ldr r1, [r6, #32]
	add r0, r1, r0
	lsl r0, r0, #8
	asr r0, r0, #16
	add r7, r0, #4
	mov r5, #0
	ldrsh r2, [r4, r5]
	ldr r0, [r6, #36]
	add r0, r0, r2
	asr r5, r0, #8
	mov r2, #6
	ldrsh r0, [r4, r2]
	add r1, r1, r0
	lsl r1, r1, #8
	asr r1, r1, #16
	add r2, r1, #4
	add r3, r5, #0
	add r3, r3, #8
	add r0, sp, #4
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_08002F14
	add r1, r0, #0
	ldr r0, _080472A0  @ =0xFFFFEC78
	cmp r1, r0
	beq _080472A4
	ldr r0, [sp, #8]
	lsl r0, r0, #8
	str r0, [r6, #36]
	ldr r0, [sp, #4]
	sub r0, r0, #12
_08047294:
	lsl r0, r0, #8
	str r0, [r6, #32]
	mov r0, #1
	b _080472A6
_0804729C:
	.4byte gUnknown_03001990
_080472A0:
	.4byte 0xFFFFEC78
_080472A4:
	mov r0, #0
_080472A6:
	add sp, sp, #12
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080471CC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080472B0
sub_080472B0: @ 0x080472B0
	push {r4-r7,lr}
	sub sp, sp, #4
	add r2, r0, #0
	ldr r0, _080472C8  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #9
	and r0, r0, r1
	cmp r0, #0
	beq _080472CC
_080472C4:
	mov r0, #1
	b _0804733A
_080472C8:
	.4byte gUnknown_030019A0
_080472CC:
	ldr r1, [r2, #76]
	mov r6, #1
	neg r6, r6
	cmp r1, r6
	beq _08047338
	ldr r2, _08047344  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r5, r0, r1
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #13
	and r0, r0, r1
	cmp r0, #0
	beq _08047338
	ldr r7, _08047348  @ =gUnknown_030019AC
	ldr r4, [r7]
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080472C4
	ldr r1, [r4, #108]
	ldr r2, [r4, #116]
	ldr r3, [r4, #112]
	ldr r0, [r4, #120]
	mov r4, #128
	lsl r4, r4, #5
	add r0, r0, r4
	str r0, [sp]
	add r0, r5, #0
	bl sub_0804A218
	lsl r0, r0, #24
	cmp r0, #0
	beq _080472C4
	ldr r0, [r5, #92]
	mov r2, #16
	neg r2, r2
	and r0, r0, r2
	str r0, [r5, #92]
	str r6, [r5, #76]
	ldr r1, [r7]
	ldr r0, [r1, #92]
	and r0, r0, r2
	str r0, [r1, #92]
	str r6, [r1, #76]
_08047338:
	mov r0, #0
_0804733A:
	add sp, sp, #4
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08047344:
	.4byte gUnknown_03001940
_08047348:
	.4byte gUnknown_030019AC
	THUMB_FUNC_END sub_080472B0

	THUMB_FUNC_START sub_0804734C
sub_0804734C: @ 0x0804734C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	add r7, r0, #0
	mov r9, r1
	ldr r0, _080473E8  @ =0x030019A8
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0804736A
	b _08047466
_0804736A:
	ldr r1, [r7, #76]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08047376
	b _0804789C
_08047376:
	ldr r2, _080473EC  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	mov r12, r0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #14
	and r0, r0, r1
	cmp r0, #0
	bne _08047394
	b _0804789C
_08047394:
	ldr r2, _080473F0  @ =gUnknown_030019AC
	ldr r3, [r2]
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08047424
	ldr r0, _080473F4  @ =gUnknown_080B5328
	mov r2, r12
	ldrh r1, [r2]
	add r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08047424
	ldr r4, [r3, #108]
	mov r10, r4
	ldr r0, [r3, #116]
	ldr r5, [r3, #112]
	mov r8, r5
	ldr r1, [r3, #120]
	mov r6, #128
	lsl r6, r6, #5
	add r2, r1, r6
	mov r3, r12
	ldr r1, [r3, #108]
	ldr r3, [r3, #116]
	mov r4, r12
	ldr r5, [r4, #112]
	ldr r4, [r4, #120]
	cmp r0, r1
	ble _080473F8
	cmp r10, r3
	bge _080473F8
	cmp r8, r4
	bge _080473F8
	cmp r2, r5
	ble _080473F8
	mov r0, #1
	b _080473FA
_080473E8:
	.4byte 0x030019A8
_080473EC:
	.4byte gUnknown_03001940
_080473F0:
	.4byte gUnknown_030019AC
_080473F4:
	.4byte gUnknown_080B5328
_080473F8:
	mov r0, #0
_080473FA:
	cmp r0, #0
	beq _08047424
	mov r5, r12
	ldr r0, [r5, #92]
	mov r3, #16
	neg r3, r3
	and r0, r0, r3
	str r0, [r5, #92]
	mov r2, #1
	neg r2, r2
	str r2, [r5, #76]
	ldr r6, _08047420  @ =gUnknown_030019AC
	ldr r1, [r6]
	ldr r0, [r1, #92]
	and r0, r0, r3
	str r0, [r1, #92]
	str r2, [r1, #76]
	b _0804789C
	.byte 0x00
	.byte 0x00
_08047420:
	.4byte gUnknown_030019AC
_08047424:
	mov r1, r12
	ldrh r0, [r1]
	add r6, r0, #0
	mov r2, sp
	strh r0, [r2, #20]
	cmp r6, #110
	beq _08047466
	cmp r6, #199
	beq _08047466
	cmp r6, #198
	beq _08047466
	cmp r6, #117
	beq _08047442
	cmp r6, #123
	bne _08047448
_08047442:
	ldr r0, [r7, #92]
	mov r1, #1
	b _0804745E
_08047448:
	mov r3, sp
	ldrh r0, [r3, #20]
	sub r0, r0, #125
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #2
	bls _0804745A
	cmp r6, #186
	bne _0804746A
_0804745A:
	ldr r0, [r7, #92]
	mov r1, #15
_0804745E:
	and r0, r0, r1
	cmp r0, #0
	bne _08047466
	b _0804789C
_08047466:
	mov r0, #1
	b _0804789E
_0804746A:
	cmp r6, #114
	bne _0804747E
	ldrh r0, [r7, #4]
	sub r0, r0, #244
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #43
	bhi _0804747C
	b _0804789C
_0804747C:
	b _08047466
_0804747E:
	mov r4, r9
	ldrb r0, [r4, #6]
	mov r1, #15
	and r0, r0, r1
	ldr r1, [r7, #92]
	and r1, r1, r0
	cmp r1, #0
	bne _08047490
	b _0804789C
_08047490:
	mov r4, r12
	add r4, r4, #132
	ldr r5, [r4]
	mov r9, r5
	mov r1, r12
	ldr r1, [r1, #36]
	asr r0, r1, #8
	ldrb r2, [r5, #2]
	add r2, r2, r0
	mov r10, r2
	ldr r3, [r7, #36]
	asr r5, r3, #8
	str r5, [sp, #16]
	sub r1, r2, r5
	add r2, r7, #0
	add r2, r2, #132
	ldr r0, [r2]
	mov r8, r0
	ldrb r0, [r0, #2]
	sub r1, r1, r0
	mov r0, r12
	ldr r5, [r0, #36]
	cmp r1, #9
	bgt _080474F8
	cmp r6, #178
	bne _080474CC
	ldr r1, _080474C8  @ =0x03001D40
	b _080477B2
_080474C8:
	.4byte 0x03001D40
_080474CC:
	cmp r6, #180
	bne _080474D8
	ldr r1, _080474D4  @ =0x03001D3C
	b _080477B2
_080474D4:
	.4byte 0x03001D3C
_080474D8:
	cmp r6, #182
	bne _080474DE
	b _080477B0
_080474DE:
	ldr r0, _080474F0  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08047466
	ldr r1, _080474F4  @ =0x03001B54
	b _080477B2
	.byte 0x00
	.byte 0x00
_080474F0:
	.4byte gNextLevelInLevelTable
_080474F4:
	.4byte 0x03001B54
_080474F8:
	cmp r6, #105
	bne _080475A6
	ldr r1, [r7, #32]
	asr r1, r1, #8
	mov r2, r8
	ldrb r0, [r2, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	mov r3, r12
	ldr r0, [r3, #32]
	asr r0, r0, #8
	sub r1, r1, r0
	mov r4, r9
	ldrb r0, [r4, #1]
	lsr r0, r0, #1
	sub r3, r1, r0
	cmp r3, #0
	bge _0804751E
	sub r3, r0, r1
_0804751E:
	mov r0, r10
	sub r0, r0, #32
	ldr r5, [sp, #16]
	cmp r5, r0
	beq _08047466
	cmp r3, #7
	bgt _0804752E
	b _0804789C
_0804752E:
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08047574
	ldr r0, [r7, #108]
	str r0, [sp]
	ldr r0, [r7, #116]
	str r0, [sp, #8]
	ldr r0, [r7, #112]
	str r0, [sp, #4]
	ldr r0, [r7, #120]
	str r0, [sp, #12]
	ldr r1, _0804756C  @ =0xFFFFF900
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	beq _08047562
	b _0804783E
_08047562:
	ldr r0, [r7, #32]
	ldr r6, _08047570  @ =0xFFFFFC00
	add r0, r0, r6
	b _08047832
	.byte 0x00
	.byte 0x00
_0804756C:
	.4byte 0xFFFFF900
_08047570:
	.4byte 0xFFFFFC00
_08047574:
	ldr r0, [r7, #108]
	str r0, [sp]
	ldr r0, [r7, #116]
	str r0, [sp, #8]
	ldr r0, [r7, #112]
	str r0, [sp, #4]
	ldr r0, [r7, #120]
	str r0, [sp, #12]
	mov r1, #224
	lsl r1, r1, #3
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	beq _0804759C
	b _0804783E
_0804759C:
	ldr r0, [r7, #32]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r0, r1
	b _08047832
_080475A6:
	cmp r6, #111
	bne _08047672
	ldr r1, [r7, #32]
	asr r1, r1, #8
	mov r2, r8
	ldrb r0, [r2, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	mov r3, r12
	ldr r0, [r3, #32]
	asr r0, r0, #8
	sub r1, r1, r0
	mov r4, r9
	ldrb r0, [r4, #1]
	lsr r0, r0, #1
	sub r3, r1, r0
	cmp r3, #0
	bge _080475CC
	sub r3, r0, r1
_080475CC:
	mov r0, r10
	sub r0, r0, #32
	ldr r5, [sp, #16]
	cmp r5, r0
	bne _080475D8
	b _08047466
_080475D8:
	cmp r3, #11
	bgt _080475DE
	b _0804789C
_080475DE:
	ldr r6, _08047630  @ =gUnknown_030019AC
	ldr r1, [r6]
	ldr r2, _08047634  @ =0xFFFFFE60
	add r0, r2, #0
	ldrh r1, [r1, #4]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #45
	bhi _080475F4
	b _0804789C
_080475F4:
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08047640
	ldr r0, [r7, #108]
	str r0, [sp]
	ldr r0, [r7, #116]
	str r0, [sp, #8]
	ldr r0, [r7, #112]
	str r0, [sp, #4]
	ldr r0, [r7, #120]
	str r0, [sp, #12]
	ldr r1, _08047638  @ =0xFFFFF900
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	beq _08047628
	b _0804783E
_08047628:
	ldr r0, [r7, #32]
	ldr r3, _0804763C  @ =0xFFFFFC00
	add r0, r0, r3
	b _08047832
_08047630:
	.4byte gUnknown_030019AC
_08047634:
	.4byte 0xFFFFFE60
_08047638:
	.4byte 0xFFFFF900
_0804763C:
	.4byte 0xFFFFFC00
_08047640:
	ldr r0, [r7, #108]
	str r0, [sp]
	ldr r0, [r7, #116]
	str r0, [sp, #8]
	ldr r0, [r7, #112]
	str r0, [sp, #4]
	ldr r0, [r7, #120]
	str r0, [sp, #12]
	mov r1, #224
	lsl r1, r1, #3
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	beq _08047668
	b _0804783E
_08047668:
	ldr r0, [r7, #32]
	mov r4, #128
	lsl r4, r4, #3
	add r0, r0, r4
	b _08047832
_08047672:
	cmp r6, #100
	beq _08047696
	cmp r6, #108
	beq _08047696
	cmp r6, #196
	beq _08047696
	cmp r6, #125
	beq _08047696
	cmp r6, #126
	beq _08047696
	cmp r6, #127
	beq _08047696
	cmp r6, #188
	beq _08047696
	cmp r6, #192
	beq _08047696
	cmp r6, #186
	bne _08047746
_08047696:
	ldr r1, [r7, #32]
	asr r1, r1, #8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	mov r6, r12
	ldr r0, [r6, #32]
	asr r0, r0, #8
	sub r1, r1, r0
	ldr r4, [r4]
	ldrb r0, [r4, #1]
	lsr r0, r0, #1
	sub r6, r1, r0
	cmp r6, #0
	bge _080476B8
	sub r6, r0, r1
_080476B8:
	asr r1, r3, #8
	asr r0, r5, #8
	ldrb r4, [r4, #2]
	add r0, r0, r4
	sub r0, r0, #32
	cmp r1, r0
	bne _080476C8
	b _08047466
_080476C8:
	cmp r6, #7
	bgt _080476CE
	b _0804789C
_080476CE:
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08047714
	ldr r0, [r7, #108]
	str r0, [sp]
	ldr r0, [r7, #116]
	str r0, [sp, #8]
	ldr r0, [r7, #112]
	str r0, [sp, #4]
	ldr r0, [r7, #120]
	str r0, [sp, #12]
	ldr r1, _0804770C  @ =0xFFFFF900
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	beq _08047702
	b _0804783E
_08047702:
	ldr r0, [r7, #32]
	ldr r1, _08047710  @ =0xFFFFFC00
	add r0, r0, r1
	b _08047832
	.byte 0x00
	.byte 0x00
_0804770C:
	.4byte 0xFFFFF900
_08047710:
	.4byte 0xFFFFFC00
_08047714:
	ldr r0, [r7, #108]
	str r0, [sp]
	ldr r0, [r7, #116]
	str r0, [sp, #8]
	ldr r0, [r7, #112]
	str r0, [sp, #4]
	ldr r0, [r7, #120]
	str r0, [sp, #12]
	mov r1, #224
	lsl r1, r1, #3
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	beq _0804773C
	b _0804783E
_0804773C:
	ldr r0, [r7, #32]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r0, r2
	b _08047832
_08047746:
	mov r6, sp
	ldrh r6, [r6, #20]
	lsl r0, r6, #16
	lsr r6, r0, #16
	cmp r6, #178
	beq _0804775A
	cmp r6, #180
	beq _0804775A
	cmp r6, #182
	bne _08047846
_0804775A:
	ldr r1, [r7, #32]
	asr r1, r1, #8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	mov r2, r12
	ldr r0, [r2, #32]
	asr r0, r0, #8
	sub r1, r1, r0
	ldr r4, [r4]
	ldrb r0, [r4, #1]
	lsr r0, r0, #1
	sub r6, r1, r0
	cmp r6, #0
	bge _0804777C
	sub r6, r0, r1
_0804777C:
	asr r1, r3, #8
	asr r0, r5, #8
	ldrb r4, [r4, #2]
	add r0, r0, r4
	sub r0, r0, #32
	cmp r1, r0
	bne _080477BC
	mov r3, sp
	ldrh r3, [r3, #20]
	lsl r0, r3, #16
	lsr r0, r0, #16
	cmp r0, #178
	bne _080477A0
	ldr r1, _0804779C  @ =0x03001D40
	b _080477B2
	.byte 0x00
	.byte 0x00
_0804779C:
	.4byte 0x03001D40
_080477A0:
	cmp r0, #180
	bne _080477AC
	ldr r1, _080477A8  @ =0x03001D3C
	b _080477B2
_080477A8:
	.4byte 0x03001D3C
_080477AC:
	cmp r0, #182
	bne _0804789C
_080477B0:
	ldr r1, _080477B8  @ =0x03001D44
_080477B2:
	mov r0, #1
	strb r0, [r1]
	b _0804789C
_080477B8:
	.4byte 0x03001D44
_080477BC:
	cmp r6, #7
	ble _0804789C
	add r0, r7, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08047804
	ldr r0, [r7, #108]
	str r0, [sp]
	ldr r0, [r7, #116]
	str r0, [sp, #8]
	ldr r0, [r7, #112]
	str r0, [sp, #4]
	ldr r0, [r7, #120]
	str r0, [sp, #12]
	ldr r1, _080477FC  @ =0xFFFFF900
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	bne _0804783E
	ldr r0, [r7, #32]
	ldr r4, _08047800  @ =0xFFFFFC00
	add r0, r0, r4
	b _08047832
	.byte 0x00
	.byte 0x00
_080477FC:
	.4byte 0xFFFFF900
_08047800:
	.4byte 0xFFFFFC00
_08047804:
	ldr r0, [r7, #108]
	str r0, [sp]
	ldr r0, [r7, #116]
	str r0, [sp, #8]
	ldr r0, [r7, #112]
	str r0, [sp, #4]
	ldr r0, [r7, #120]
	str r0, [sp, #12]
	mov r1, #224
	lsl r1, r1, #3
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	bne _0804783E
	ldr r0, [r7, #32]
	mov r5, #128
	lsl r5, r5, #3
	add r0, r0, r5
_08047832:
	str r0, [r7, #32]
	ldr r0, [r7, #92]
	mov r1, #241
	neg r1, r1
	and r0, r0, r1
	str r0, [r7, #92]
_0804783E:
	mov r0, #0
	lsl r0, r0, #24
	asr r0, r0, #24
	b _0804789E
_08047846:
	ldr r0, _08047880  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08047854
	b _08047466
_08047854:
	ldr r1, [r7, #32]
	asr r1, r1, #8
	mov r2, r8
	ldrb r0, [r2, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	mov r3, r12
	ldr r0, [r3, #32]
	asr r0, r0, #8
	sub r1, r1, r0
	mov r4, r9
	ldrb r0, [r4, #1]
	lsr r0, r0, #1
	sub r3, r1, r0
	cmp r3, #0
	bge _08047876
	sub r3, r0, r1
_08047876:
	cmp r6, #193
	bne _08047888
	ldr r1, _08047884  @ =0x03001B54
	b _080477B2
	.byte 0x00
	.byte 0x00
_08047880:
	.4byte gNextLevelInLevelTable
_08047884:
	.4byte 0x03001B54
_08047888:
	mov r0, r10
	sub r0, r0, #32
	ldr r5, [sp, #16]
	cmp r5, r0
	bne _0804789C
	ldr r1, _08047898  @ =0x03001B54
	b _080477B2
	.byte 0x00
	.byte 0x00
_08047898:
	.4byte 0x03001B54
_0804789C:
	mov r0, #0
_0804789E:
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804734C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080478B0
sub_080478B0: @ 0x080478B0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r1, [r0, #76]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08047950
	ldr r2, _08047920  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r4, r0, r1
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #15
	and r0, r0, r1
	cmp r0, #0
	beq _08047950
	ldr r2, _08047924  @ =gUnknown_030019AC
	ldr r3, [r2]
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #4
	and r0, r0, r1
	mov r8, r2
	cmp r0, #0
	beq _0804794C
	ldr r7, [r3, #108]
	ldr r0, [r3, #116]
	ldr r1, [r3, #112]
	mov r12, r1
	ldr r1, [r3, #120]
	mov r2, #128
	lsl r2, r2, #5
	add r6, r1, r2
	ldr r1, [r4, #108]
	ldr r3, [r4, #116]
	ldr r5, [r4, #112]
	ldr r2, [r4, #120]
	cmp r0, r1
	ble _08047928
	cmp r7, r3
	bge _08047928
	cmp r12, r2
	bge _08047928
	cmp r6, r5
	ble _08047928
	mov r0, #1
	b _0804792A
	.byte 0x00
	.byte 0x00
_08047920:
	.4byte gUnknown_03001940
_08047924:
	.4byte gUnknown_030019AC
_08047928:
	mov r0, #0
_0804792A:
	cmp r0, #0
	beq _0804794C
	ldr r0, [r4, #92]
	mov r3, #16
	neg r3, r3
	and r0, r0, r3
	str r0, [r4, #92]
	mov r2, #1
	neg r2, r2
	str r2, [r4, #76]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, [r1, #92]
	and r0, r0, r3
	str r0, [r1, #92]
	str r2, [r1, #76]
	b _08047950
_0804794C:
	mov r0, #1
	b _08047952
_08047950:
	mov r0, #0
_08047952:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080478B0

	THUMB_FUNC_START sub_0804795C
sub_0804795C: @ 0x0804795C
	push {r4-r7,lr}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, _08047988  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _08047984
	ldr r0, _0804798C  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08047990
	bl sub_0804F1DC
	cmp r0, #0
	beq _08047990
_08047984:
	mov r0, #0
	b _08047A2A
_08047988:
	.4byte gUnknown_03001A1C
_0804798C:
	.4byte gNextLevelInLevelTable
_08047990:
	ldr r1, [r4, #32]
	asr r1, r1, #8
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	ldr r2, [r4, #36]
	add r5, r1, r0
	asr r6, r2, #8
	mov r0, #12
	ldrsh r4, [r7, r0]
	mov r0, #4
	ldrsh r1, [r7, r0]
	mov r12, r1
	ldr r0, _080479F4  @ =gUnknown_030019AC
	ldr r2, [r0]
	ldr r1, [r2, #32]
	asr r1, r1, #8
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r3, r1, r0
	ldr r0, [r2, #36]
	asr r1, r0, #8
	mov r7, #48
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _080479D0
	neg r0, r0
_080479D0:
	cmp r0, #255
	ble _080479D8
	lsl r0, r4, #17
	lsr r4, r0, #16
_080479D8:
	cmp r1, r6
	ble _08047A02
	sub r0, r1, r6
	cmp r0, r12
	bge _08047A02
	lsl r0, r4, #16
	asr r2, r0, #16
	sub r0, r3, r5
	cmp r0, #0
	blt _080479F8
	cmp r0, r2
	blt _080479FE
	b _08047A02
	.byte 0x00
	.byte 0x00
_080479F4:
	.4byte gUnknown_030019AC
_080479F8:
	sub r0, r5, r3
	cmp r0, r2
	bge _08047A02
_080479FE:
	mov r0, #1
	b _08047A26
_08047A02:
	ldr r0, _08047A20  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08047A24
	lsl r2, r4, #16
	asr r2, r2, #16
	mov r3, r12
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0804F038
	b _08047A26
	.byte 0x00
	.byte 0x00
_08047A20:
	.4byte gNextLevelInLevelTable
_08047A24:
	mov r0, #0
_08047A26:
	lsl r0, r0, #24
	asr r0, r0, #24
_08047A2A:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804795C

	THUMB_FUNC_START sub_08047A30
sub_08047A30: @ 0x08047A30
	push {r4-r6,lr}
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r2, r0, #0
	add r2, r2, #132
	ldr r2, [r2]
	ldrb r2, [r2, #1]
	lsr r2, r2, #1
	ldr r0, [r0, #36]
	add r4, r3, r2
	asr r5, r0, #8
	mov r0, #12
	ldrsh r3, [r1, r0]
	mov r0, #4
	ldrsh r6, [r1, r0]
	ldr r0, _08047A80  @ =gUnknown_030019AC
	ldr r2, [r0]
	ldr r1, [r2, #32]
	asr r1, r1, #8
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	ldr r0, [r2, #36]
	asr r0, r0, #8
	cmp r0, r5
	ble _08047A8A
	sub r0, r0, r5
	cmp r0, r6
	bge _08047A8E
	add r2, r3, #0
	sub r0, r1, r4
	cmp r0, #0
	blt _08047A84
	cmp r0, r2
	blt _08047A8A
	b _08047A8E
	.byte 0x00
	.byte 0x00
_08047A80:
	.4byte gUnknown_030019AC
_08047A84:
	sub r0, r4, r1
	cmp r0, r2
	bge _08047A8E
_08047A8A:
	mov r0, #0
	b _08047AAE
_08047A8E:
	ldr r0, _08047AA8  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08047AAC
	add r2, r3, #0
	add r3, r6, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0804F0C4
	b _08047AAE
_08047AA8:
	.4byte gNextLevelInLevelTable
_08047AAC:
	mov r0, #1
_08047AAE:
	lsl r0, r0, #24
	asr r0, r0, #24
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047A30

	THUMB_FUNC_START sub_08047AB8
sub_08047AB8: @ 0x08047AB8
	push {r4-r7,lr}
	sub sp, sp, #16
	add r5, r0, #0
	add r6, r1, #0
	mov r1, #48
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08047AD8
	mov r2, #0
	cmp r0, #0
	ble _08047ADA
	ldr r2, _08047AD4  @ =0x000009F6
	b _08047ADA
	.byte 0x00
	.byte 0x00
_08047AD4:
	.4byte 0x000009F6
_08047AD8:
	ldr r2, _08047B64  @ =0xFFFFF60A
_08047ADA:
	ldr r4, [r5, #100]
	mov r3, #4
	ldrsh r0, [r4, r3]
	ldr r1, [r5, #32]
	add r1, r1, r0
	add r1, r1, r2
	str r1, [sp]
	mov r7, #0
	ldrsh r0, [r4, r7]
	ldr r3, [r5, #36]
	add r3, r3, r0
	str r3, [sp, #4]
	mov r2, #6
	ldrsh r0, [r4, r2]
	mov r7, #4
	ldrsh r2, [r4, r7]
	sub r0, r0, r2
	add r1, r1, r0
	str r1, [sp, #8]
	mov r1, #2
	ldrsh r0, [r4, r1]
	mov r2, #0
	ldrsh r1, [r4, r2]
	sub r0, r0, r1
	add r3, r3, r0
	str r3, [sp, #12]
	mov r2, #128
	lsl r2, r2, #1
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _08047BA0
	mov r3, #0
	ldrsh r0, [r4, r3]
	ldr r1, [r5, #36]
	add r0, r1, r0
	str r0, [sp, #4]
	mov r7, #2
	ldrsh r0, [r4, r7]
	add r1, r1, r0
	str r1, [sp, #12]
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08047B68
	mov r0, #4
	ldrsh r1, [r4, r0]
	ldr r2, [r5, #32]
	add r1, r2, r1
	mov r3, #4
	ldrsh r0, [r6, r3]
	lsl r0, r0, #8
	sub r1, r1, r0
	str r1, [sp]
	mov r7, #6
	ldrsh r0, [r4, r7]
	add r2, r2, r0
	mov r1, #4
	ldrsh r0, [r6, r1]
	lsl r0, r0, #8
	sub r2, r2, r0
	b _08047B88
	.byte 0x00
	.byte 0x00
_08047B64:
	.4byte 0xFFFFF60A
_08047B68:
	mov r2, #4
	ldrsh r1, [r4, r2]
	ldr r2, [r5, #32]
	add r1, r2, r1
	mov r3, #4
	ldrsh r0, [r6, r3]
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [sp]
	mov r7, #6
	ldrsh r0, [r4, r7]
	add r2, r2, r0
	mov r1, #4
	ldrsh r0, [r6, r1]
	lsl r0, r0, #8
	add r2, r2, r0
_08047B88:
	str r2, [sp, #8]
	mov r2, #128
	lsl r2, r2, #1
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _08047BA0
	mov r0, #1
	b _08047BA2
_08047BA0:
	mov r0, #0
_08047BA2:
	add sp, sp, #16
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047AB8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08047BAC
sub_08047BAC: @ 0x08047BAC
	push {r4,r5,lr}
	add r3, r0, #0
	add r4, r3, #0
	add r4, r4, #53
	ldrb r2, [r4]
	cmp r2, #0
	beq _08047C0C
	ldr r0, _08047BCC  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08047BEA
	sub r0, r2, #1
	b _08047BD8
	.byte 0x00
	.byte 0x00
_08047BCC:
	.4byte gUnknown_03001990
_08047BD0:
	add r4, r3, #0
	add r4, r4, #53
	ldrb r0, [r4]
	sub r0, r0, #1
_08047BD8:
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	mov r0, #0
	strb r0, [r4]
	mov r0, #1
	b _08047C0E
_08047BEA:
	mov r1, #0
	ldr r4, _08047C14  @ =gUnknown_030019C0
	mov r5, #16
_08047BF0:
	lsl r0, r1, #16
	asr r2, r0, #16
	add r0, r2, r4
	ldrb r1, [r0]
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _08047BD0
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #9
	ble _08047BF0
_08047C0C:
	mov r0, #0
_08047C0E:
	pop {r4,r5}
	pop {r1}
	bx r1
_08047C14:
	.4byte gUnknown_030019C0
	THUMB_FUNC_END sub_08047BAC

	THUMB_FUNC_START sub_08047C18
sub_08047C18: @ 0x08047C18
	push {r4-r7,lr}
	sub sp, sp, #16
	add r4, r0, #0
	add r6, r1, #0
	ldr r1, _08047C58  @ =gUnknown_030019A4
	mov r0, #0
	strb r0, [r1]
	ldr r0, _08047C5C  @ =gUnknown_03001990
	ldrb r1, [r0]
	ldrb r0, [r6, #7]
	and r0, r0, r1
	cmp r0, #0
	beq _08047C64
	ldr r0, [r4, #108]
	str r0, [sp]
	ldr r0, [r4, #116]
	str r0, [sp, #8]
	ldr r0, [r4, #112]
	str r0, [sp, #4]
	ldr r0, [r4, #120]
	str r0, [sp, #12]
	ldr r2, _08047C60  @ =0xFFFFFB00
	mov r0, sp
	mov r1, #0
	mov r3, #2
	bl sub_080066FC
	cmp r0, #0
	bne _08047C64
_08047C52:
	mov r0, #1
	b _08047CA6
	.byte 0x00
	.byte 0x00
_08047C58:
	.4byte gUnknown_030019A4
_08047C5C:
	.4byte gUnknown_03001990
_08047C60:
	.4byte 0xFFFFFB00
_08047C64:
	mov r1, #0
	ldr r7, _08047CB0  @ =gUnknown_03001A10
_08047C68:
	lsl r0, r1, #16
	asr r5, r0, #16
	add r0, r5, r7
	ldrb r1, [r0]
	ldrb r0, [r6, #7]
	and r0, r0, r1
	cmp r0, #0
	beq _08047C98
	ldr r0, [r4, #108]
	str r0, [sp]
	ldr r0, [r4, #116]
	str r0, [sp, #8]
	ldr r0, [r4, #112]
	str r0, [sp, #4]
	ldr r0, [r4, #120]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #0
	ldr r2, _08047CB4  @ =0xFFFFFB00
	mov r3, #2
	bl sub_080066FC
	cmp r0, #0
	beq _08047C52
_08047C98:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #9
	ble _08047C68
	mov r0, #0
_08047CA6:
	add sp, sp, #16
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08047CB0:
	.4byte gUnknown_03001A10
_08047CB4:
	.4byte 0xFFFFFB00
	THUMB_FUNC_END sub_08047C18

	THUMB_FUNC_START sub_08047CB8
sub_08047CB8: @ 0x08047CB8
	push {lr}
	sub sp, sp, #16
	ldr r1, [r0, #108]
	str r1, [sp]
	ldr r1, [r0, #116]
	str r1, [sp, #8]
	ldr r1, [r0, #112]
	str r1, [sp, #4]
	ldr r0, [r0, #120]
	str r0, [sp, #12]
	mov r0, sp
	bl sub_08006710
	lsl r0, r0, #24
	asr r0, r0, #24
	add sp, sp, #16
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047CB8

	THUMB_FUNC_START sub_08047CDC
sub_08047CDC: @ 0x08047CDC
	push {lr}
	ldr r0, _08047CEC  @ =0x03001A70
	ldr r0, [r0, #16]
	cmp r0, #0
	beq _08047CF0
	mov r0, #0
	b _08047CF2
	.byte 0x00
	.byte 0x00
_08047CEC:
	.4byte 0x03001A70
_08047CF0:
	mov r0, #1
_08047CF2:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047CDC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08047CF8
sub_08047CF8: @ 0x08047CF8
	push {lr}
	ldr r0, _08047D08  @ =0x03001A70
	ldr r0, [r0, #16]
	cmp r0, #228
	ble _08047D0C
	mov r0, #0
	b _08047D0E
	.byte 0x00
	.byte 0x00
_08047D08:
	.4byte 0x03001A70
_08047D0C:
	mov r0, #1
_08047D0E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047CF8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08047D14
sub_08047D14: @ 0x08047D14
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08047D14

	THUMB_FUNC_START sub_08047D18
sub_08047D18: @ 0x08047D18
	push {lr}
	ldrb r1, [r0, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08047D28
	mov r0, #0
	b _08047D2A
_08047D28:
	mov r0, #1
_08047D2A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047D18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08047D30
sub_08047D30: @ 0x08047D30
	push {lr}
	ldr r2, _08047D6C  @ =gUnknown_030019A4
	mov r0, #0
	strb r0, [r2]
	ldr r0, _08047D70  @ =gMarioIdleTimer
	ldrh r2, [r0]
	mov r3, #12
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bge _08047D60
	ldr r0, _08047D74  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #12
	and r0, r0, r1
	cmp r0, #0
	beq _08047D60
	ldr r0, _08047D78  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	beq _08047D80
_08047D60:
	ldr r0, _08047D7C  @ =gUnknown_03001990
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047D80
	mov r0, #1
	b _08047D82
_08047D6C:
	.4byte gUnknown_030019A4
_08047D70:
	.4byte gMarioIdleTimer
_08047D74:
	.4byte gUnknown_03001A1C
_08047D78:
	.4byte gUnknown_030019A0
_08047D7C:
	.4byte gUnknown_03001990
_08047D80:
	mov r0, #0
_08047D82:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047D30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08047D88
sub_08047D88: @ 0x08047D88
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08047D88

	THUMB_FUNC_START sub_08047D8C
sub_08047D8C: @ 0x08047D8C
	push {r4,r5,lr}
	add r4, r1, #0
	ldr r1, _08047DBC  @ =gUnknown_030019A4
	mov r0, #0
	strb r0, [r1]
	mov r1, #0
	ldr r0, _08047DC0  @ =gUnknown_03001990
	ldrb r0, [r0]
	mov r3, #1
	and r3, r3, r0
	ldr r5, _08047DC4  @ =gUnknown_03001A10
_08047DA2:
	cmp r3, #0
	bne _08047DD4
	lsl r0, r1, #16
	asr r2, r0, #16
	add r0, r2, r5
	ldrb r1, [r0]
	ldrb r0, [r4, #7]
	and r0, r0, r1
	cmp r0, #0
	beq _08047DC8
	mov r0, #1
	b _08047DD6
	.byte 0x00
	.byte 0x00
_08047DBC:
	.4byte gUnknown_030019A4
_08047DC0:
	.4byte gUnknown_03001990
_08047DC4:
	.4byte gUnknown_03001A10
_08047DC8:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #9
	ble _08047DA2
_08047DD4:
	mov r0, #0
_08047DD6:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047D8C

	THUMB_FUNC_START sub_08047DDC
sub_08047DDC: @ 0x08047DDC
	push {r4,lr}
	add r4, r0, #0
	ldr r3, [r4, #92]
	mov r0, #15
	and r0, r0, r3
	cmp r0, #2
	bne _08047E20
	ldr r2, [r4, #76]
	cmp r2, #0
	ble _08047E20
	ldr r0, _08047E1C  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldr r2, [r4, #120]
	ldr r0, [r0, #36]
	sub r1, r2, r0
	cmp r1, #0
	bge _08047E06
	sub r1, r0, r2
_08047E06:
	mov r0, #128
	lsl r0, r0, #4
	cmp r1, r0
	ble _08047E20
	mov r0, #16
	neg r0, r0
	and r3, r3, r0
	str r3, [r4, #92]
	mov r0, #1
	b _08047E22
	.byte 0x00
	.byte 0x00
_08047E1C:
	.4byte gUnknown_03001940
_08047E20:
	mov r0, #0
_08047E22:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047DDC

	THUMB_FUNC_START sub_08047E28
sub_08047E28: @ 0x08047E28
	push {r4,lr}
	add r4, r0, #0
	ldr r3, [r4, #92]
	mov r0, #15
	and r0, r0, r3
	cmp r0, #8
	bne _08047E6C
	ldr r2, [r4, #76]
	cmp r2, #0
	ble _08047E6C
	ldr r0, _08047E68  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldr r2, [r4, #120]
	ldr r0, [r0, #36]
	sub r1, r2, r0
	cmp r1, #0
	bge _08047E52
	sub r1, r0, r2
_08047E52:
	mov r0, #128
	lsl r0, r0, #4
	cmp r1, r0
	ble _08047E6C
	mov r0, #16
	neg r0, r0
	and r3, r3, r0
	str r3, [r4, #92]
	mov r0, #1
	b _08047E6E
	.byte 0x00
	.byte 0x00
_08047E68:
	.4byte gUnknown_03001940
_08047E6C:
	mov r0, #0
_08047E6E:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047E28

	THUMB_FUNC_START sub_08047E74
sub_08047E74: @ 0x08047E74
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08047E74

	THUMB_FUNC_START sub_08047E78
sub_08047E78: @ 0x08047E78
	push {r4,r5,lr}
	add r3, r0, #0
	add r4, r1, #0
	ldr r2, [r3, #76]
	mov r5, #1
	neg r5, r5
	cmp r2, r5
	beq _08047E9C
	ldr r0, _08047EA0  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldrh r1, [r0]
	mov r2, #8
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _08047EA4
_08047E9C:
	mov r0, #1
	b _08047EA8
_08047EA0:
	.4byte gUnknown_03001940
_08047EA4:
	str r5, [r3, #76]
	mov r0, #0
_08047EA8:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047E78

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08047EB0
sub_08047EB0: @ 0x08047EB0
	push {r4-r6,lr}
	add r3, r0, #0
	add r5, r1, #0
	ldr r4, [r3, #76]
	mov r6, #1
	neg r6, r6
	cmp r4, r6
	beq _08047F1A
	ldrb r0, [r5, #6]
	mov r1, #15
	and r0, r0, r1
	ldr r1, [r3, #92]
	and r1, r1, r0
	cmp r1, #0
	beq _08047F1A
	ldr r2, _08047EEC  @ =gUnknown_03001940
	mov r0, #176
	add r1, r4, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldrh r1, [r0]
	mov r2, #8
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _08047F1A
	cmp r1, #4
	beq _08047EF0
	mov r0, #1
	b _08047F1C
_08047EEC:
	.4byte gUnknown_03001940
_08047EF0:
	add r0, r3, #0
	add r0, r0, #61
	ldr r1, _08047F10  @ =0x03001950
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08047F18
	ldr r1, _08047F14  @ =0x0300198C
	ldrb r0, [r1]
	cmp r0, #0
	bne _08047F1A
	mov r0, #13
	strb r0, [r1]
	mov r0, #1
	b _08047F1C
	.byte 0x00
	.byte 0x00
_08047F10:
	.4byte 0x03001950
_08047F14:
	.4byte 0x0300198C
_08047F18:
	str r6, [r3, #76]
_08047F1A:
	mov r0, #0
_08047F1C:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047EB0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08047F24
sub_08047F24: @ 0x08047F24
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r3, [r2, #76]
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	beq _08047F60
	ldrb r0, [r4, #6]
	mov r1, #15
	and r0, r0, r1
	ldr r1, [r2, #92]
	and r1, r1, r0
	cmp r1, #0
	beq _08047F60
	ldr r0, _08047F5C  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r3, r0
	add r0, r0, r1
	ldrh r1, [r0]
	mov r2, #8
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _08047F60
	mov r0, #1
	b _08047F62
	.byte 0x00
	.byte 0x00
_08047F5C:
	.4byte gUnknown_03001940
_08047F60:
	mov r0, #0
_08047F62:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047F24

	THUMB_FUNC_START sub_08047F68
sub_08047F68: @ 0x08047F68
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r3, [r2, #76]
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	beq _08047FA0
	ldr r0, [r2, #92]
	mov r1, #15
	and r0, r0, r1
	ldrb r1, [r4, #6]
	cmp r0, r1
	bne _08047FA0
	ldr r0, _08047F9C  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r3, r0
	add r0, r0, r1
	ldrh r1, [r0]
	mov r2, #8
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _08047FA0
	mov r0, #1
	b _08047FA2
_08047F9C:
	.4byte gUnknown_03001940
_08047FA0:
	mov r0, #0
_08047FA2:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047F68

	THUMB_FUNC_START sub_08047FA8
sub_08047FA8: @ 0x08047FA8
	push {lr}
	add r3, r0, #0
	ldr r2, [r3, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	ldrb r1, [r1, #6]
	and r0, r0, r1
	cmp r0, #0
	beq _08047FCC
	mov r0, #15
	and r2, r2, r0
	cmp r2, #0
	beq _08047FC8
	mov r0, #0
	str r0, [r3, #80]
_08047FC8:
	mov r0, #1
	b _08047FCE
_08047FCC:
	mov r0, #0
_08047FCE:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047FA8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08047FD4
sub_08047FD4: @ 0x08047FD4
	push {r4-r6,lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r1, #8
	ldrsh r0, [r6, r1]
	bl sub_08040EE8
	lsl r0, r0, #24
	asr r2, r0, #24
	cmp r2, #0
	blt _0804803C
	ldr r1, _08048040  @ =gUnknown_03001940
	mov r0, #176
	mul r0, r2, r0
	ldr r4, [r1]
	add r4, r4, r0
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r3, [r5, #32]
	asr r3, r3, #8
	ldrb r2, [r0, #1]
	add r3, r3, r2
	ldr r2, [r5, #36]
	asr r2, r2, #8
	ldrb r0, [r0, #2]
	add r2, r2, r0
	add r0, r4, #0
	add r0, r0, #132
	ldr r5, [r0]
	ldr r1, [r4, #32]
	asr r1, r1, #8
	ldrb r0, [r5, #1]
	add r1, r1, r0
	ldr r0, [r4, #36]
	asr r0, r0, #8
	ldrb r5, [r5, #2]
	add r0, r0, r5
	sub r3, r3, r1
	add r1, r3, #0
	mul r1, r3, r1
	sub r2, r2, r0
	add r0, r2, #0
	mul r0, r2, r0
	add r1, r1, r0
	mov r2, #4
	ldrsh r0, [r6, r2]
	add r2, r0, #0
	mul r2, r0, r2
	add r0, r2, #0
	cmp r1, r0
	ble _08048044
_0804803C:
	mov r0, #0
	b _08048046
_08048040:
	.4byte gUnknown_03001940
_08048044:
	mov r0, #1
_08048046:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047FD4

	THUMB_FUNC_START sub_0804804C
sub_0804804C: @ 0x0804804C
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_0804804C

	THUMB_FUNC_START sub_08048050
sub_08048050: @ 0x08048050
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08048050

	THUMB_FUNC_START sub_08048054
sub_08048054: @ 0x08048054
	push {lr}
	ldr r0, [r0, #36]
	asr r0, r0, #8
	ldr r1, _08048068  @ =gUnknown_030012E4
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bge _0804806C
	mov r0, #0
	b _0804806E
_08048068:
	.4byte gUnknown_030012E4
_0804806C:
	mov r0, #1
_0804806E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048054

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048074
sub_08048074: @ 0x08048074
	push {lr}
	ldr r0, [r0, #32]
	cmp r0, #0
	ble _08048080
	mov r0, #0
	b _08048082
_08048080:
	mov r0, #1
_08048082:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048074

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048088
sub_08048088: @ 0x08048088
	push {lr}
	ldr r1, [r0, #32]
	add r0, r0, #132
	ldr r0, [r0]
	asr r1, r1, #8
	ldrb r0, [r0, #1]
	add r1, r1, r0
	ldr r0, _080480A4  @ =gCurrentLevelWidth
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _080480A8
	mov r0, #0
	b _080480AA
_080480A4:
	.4byte gCurrentLevelWidth
_080480A8:
	mov r0, #1
_080480AA:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048088

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080480B0
sub_080480B0: @ 0x080480B0
	push {lr}
	add r0, r0, #84
	mov r3, #0
	ldrsh r2, [r0, r3]
	mov r3, #12
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bge _080480C4
	mov r0, #0
	b _080480C6
_080480C4:
	mov r0, #1
_080480C6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080480B0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080480CC
sub_080480CC: @ 0x080480CC
	push {lr}
	add r2, r0, #0
	add r2, r2, #84
	mov r3, #0
	ldrsh r2, [r2, r3]
	add r0, r0, #65
	mov r3, #12
	ldrsh r1, [r1, r3]
	ldrb r0, [r0]
	add r1, r1, r0
	cmp r2, r1
	bge _080480E8
	mov r0, #0
	b _080480EA
_080480E8:
	mov r0, #1
_080480EA:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080480CC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080480F0
sub_080480F0: @ 0x080480F0
	push {lr}
	add r3, r1, #0
	ldr r2, _08048120  @ =gUnknown_030019A4
	mov r1, #0
	strb r1, [r2]
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r2, #12
	ldrsh r0, [r3, r2]
	cmp r1, r0
	blt _0804813C
	ldr r0, [r3, #28]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08048128
	ldr r0, _08048124  @ =gUnknown_030019F4 
	ldrb r0, [r0]
	ldrb r3, [r3, #7]
	cmp r0, r3
	beq _0804813C
	mov r0, #1
	b _0804813E
_08048120:
	.4byte gUnknown_030019A4
_08048124:
	.4byte gUnknown_030019F4 
_08048128:
	ldr r0, _08048138  @ =gUnknown_030019F4 
	ldrb r1, [r0]
	ldrb r0, [r3, #7]
	and r0, r0, r1
	cmp r0, #0
	beq _0804813C
	mov r0, #1
	b _0804813E
_08048138:
	.4byte gUnknown_030019F4 
_0804813C:
	mov r0, #0
_0804813E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080480F0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048144
sub_08048144: @ 0x08048144
	push {r4,r5,lr}
	sub sp, sp, #20
	add r5, r0, #0
	ldr r0, _080481AC  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080481B8
	ldr r2, [r5, #100]
	mov r0, #4
	ldrsh r4, [r2, r0]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	ldr r3, _080481B0  @ =0xFFFFFF00
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #12
	str r4, [sp]
	add r4, sp, #16
	str r4, [sp, #4]
	ldr r4, _080481B4  @ =gCurrentSwitchState
	ldrb r4, [r4]
	str r4, [sp, #8]
	bl sub_08002A04
	cmp r0, #0
	beq _080481B8
	add r0, r5, #0
	bl sub_08043C14
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r1, #1
	neg r1, r1
	cmp r0, r1
	bne _080481B8
	ldr r0, [r5, #32]
	ldr r1, [sp, #12]
	add r0, r0, r1
	str r0, [r5, #32]
	mov r0, #1
	b _080481BA
	.byte 0x00
	.byte 0x00
_080481AC:
	.4byte gUnknown_03001990
_080481B0:
	.4byte 0xFFFFFF00
_080481B4:
	.4byte gCurrentSwitchState
_080481B8:
	mov r0, #0
_080481BA:
	add sp, sp, #20
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048144

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080481C4
sub_080481C4: @ 0x080481C4
	push {r4,r5,lr}
	sub sp, sp, #20
	add r5, r0, #0
	ldr r0, _08048218  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08048238
	ldr r2, [r5, #100]
	mov r0, #4
	ldrsh r4, [r2, r0]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #12
	str r4, [sp]
	add r4, sp, #16
	str r4, [sp, #4]
	ldr r4, _0804821C  @ =gCurrentSwitchState
	ldrb r4, [r4]
	str r4, [sp, #8]
	bl sub_08002A04
	add r2, r0, #0
	cmp r2, #0
	bne _08048224
	ldr r0, [r5, #36]
	ldr r1, _08048220  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #36]
	strh r2, [r5, #50]
	mov r0, #1
	b _0804823A
_08048218:
	.4byte gUnknown_03001990
_0804821C:
	.4byte gCurrentSwitchState
_08048220:
	.4byte 0xFFFFFF00
_08048224:
	ldr r0, [r5, #76]
	cmp r0, #0
	ble _08048238
	ldr r0, [r5, #92]
	mov r1, #15
	and r0, r0, r1
	cmp r0, #4
	bne _08048238
	mov r0, #1
	b _0804823A
_08048238:
	mov r0, #0
_0804823A:
	add sp, sp, #20
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080481C4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048244
sub_08048244: @ 0x08048244
	push {r4-r6,lr}
	sub sp, sp, #16
	add r4, r0, #0
	ldr r3, [r4, #100]
	mov r1, #4
	ldrsh r0, [r3, r1]
	ldr r2, [r4, #32]
	add r0, r2, r0
	str r0, [sp]
	mov r6, #2
	ldrsh r1, [r3, r6]
	ldr r0, [r4, #36]
	add r0, r0, r1
	ldr r1, _0804828C  @ =0xFFFFEC00
	add r0, r0, r1
	ldr r5, _08048290  @ =0xFFFFFF00
	and r0, r0, r5
	str r0, [sp, #4]
	mov r6, #6
	ldrsh r1, [r3, r6]
	add r2, r2, r1
	str r2, [sp, #8]
	mov r2, #128
	lsl r2, r2, #1
	add r0, r0, r2
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _08048294
	mov r0, #0
	b _0804829C
	.byte 0x00
	.byte 0x00
_0804828C:
	.4byte 0xFFFFEC00
_08048290:
	.4byte 0xFFFFFF00
_08048294:
	ldr r0, [r4, #36]
	and r0, r0, r5
	str r0, [r4, #36]
	mov r0, #1
_0804829C:
	add sp, sp, #16
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048244

	THUMB_FUNC_START sub_080482A4
sub_080482A4: @ 0x080482A4
	push {r4-r6,lr}
	sub sp, sp, #20
	add r5, r0, #0
	mov r1, #50
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080482EA
	ldr r3, [r5, #100]
	mov r6, #4
	ldrsh r4, [r3, r6]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #50
	ldrsh r2, [r5, r1]
	ldr r1, [r5, #36]
	add r1, r1, r2
	mov r6, #2
	ldrsh r2, [r3, r6]
	add r1, r1, r2
	mov r6, #6
	ldrsh r2, [r3, r6]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #12
	str r4, [sp]
	add r4, sp, #16
	str r4, [sp, #4]
	ldr r4, _080482F0  @ =gCurrentSwitchState
	ldrb r4, [r4]
	str r4, [sp, #8]
	bl sub_08002A04
	cmp r0, #0
	beq _080482F4
_080482EA:
	mov r0, #0
	b _08048300
	.byte 0x00
	.byte 0x00
_080482F0:
	.4byte gCurrentSwitchState
_080482F4:
	mov r6, #50
	ldrsh r1, [r5, r6]
	ldr r0, [r5, #36]
	sub r0, r0, r1
	str r0, [r5, #36]
	mov r0, #1
_08048300:
	add sp, sp, #20
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080482A4

	THUMB_FUNC_START sub_08048308
sub_08048308: @ 0x08048308
	push {r4,r5,lr}
	sub sp, sp, #20
	add r5, r0, #0
	mov r0, #12
	ldrsh r1, [r1, r0]
	ldr r0, _08048368  @ =gUnknown_03001A3C
	ldrh r0, [r0]
	cmp r1, r0
	bgt _08048378
	ldr r0, _0804836C  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08048378
	ldr r2, [r5, #100]
	mov r1, #4
	ldrsh r4, [r2, r1]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	ldr r3, _08048370  @ =0xFFFFFF00
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #12
	str r4, [sp]
	add r4, sp, #16
	str r4, [sp, #4]
	ldr r4, _08048374  @ =gCurrentSwitchState
	ldrb r4, [r4]
	str r4, [sp, #8]
	bl sub_08006B34
	cmp r0, #0
	beq _08048378
	ldr r0, [r5, #32]
	ldr r1, [sp, #12]
	add r0, r0, r1
	str r0, [r5, #32]
	mov r0, #1
	b _0804837A
_08048368:
	.4byte gUnknown_03001A3C
_0804836C:
	.4byte gUnknown_03001990
_08048370:
	.4byte 0xFFFFFF00
_08048374:
	.4byte gCurrentSwitchState
_08048378:
	mov r0, #0
_0804837A:
	add sp, sp, #20
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048308

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048384
sub_08048384: @ 0x08048384
	push {r4,r5,lr}
	sub sp, sp, #20
	add r5, r0, #0
	mov r0, #12
	ldrsh r1, [r1, r0]
	ldr r0, _080483E4  @ =gUnknown_03001A3C
	ldrh r0, [r0]
	cmp r1, r0
	bgt _080483F4
	ldr r0, _080483E8  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080483F4
	ldr r2, [r5, #100]
	mov r1, #4
	ldrsh r4, [r2, r1]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	ldr r3, _080483EC  @ =0xFFFFFF00
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #12
	str r4, [sp]
	add r4, sp, #16
	str r4, [sp, #4]
	ldr r4, _080483F0  @ =gCurrentSwitchState
	ldrb r4, [r4]
	str r4, [sp, #8]
	bl sub_08006B34
	cmp r0, #0
	beq _080483F4
	ldr r0, [r5, #32]
	ldr r1, [sp, #12]
	add r0, r0, r1
	str r0, [r5, #32]
	mov r0, #1
	b _080483F6
_080483E4:
	.4byte gUnknown_03001A3C
_080483E8:
	.4byte gUnknown_03001990
_080483EC:
	.4byte 0xFFFFFF00
_080483F0:
	.4byte gCurrentSwitchState
_080483F4:
	mov r0, #0
_080483F6:
	add sp, sp, #20
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048384

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048400
sub_08048400: @ 0x08048400
	push {r4,r5,lr}
	sub sp, sp, #20
	add r5, r0, #0
	ldr r0, _08048448  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08048450
	ldr r2, [r5, #100]
	mov r0, #4
	ldrsh r4, [r2, r0]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #12
	str r4, [sp]
	add r4, sp, #16
	str r4, [sp, #4]
	ldr r4, _0804844C  @ =gCurrentSwitchState
	ldrb r4, [r4]
	str r4, [sp, #8]
	bl sub_0800686C
	cmp r0, #0
	beq _08048450
	mov r0, #1
	b _08048452
_08048448:
	.4byte gUnknown_03001990
_0804844C:
	.4byte gCurrentSwitchState
_08048450:
	mov r0, #0
_08048452:
	add sp, sp, #20
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048400

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804845C
sub_0804845C: @ 0x0804845C
	push {r4,r5,lr}
	sub sp, sp, #20
	add r5, r0, #0
	ldr r2, _080484B8  @ =0x03001718
	ldr r1, [r2]
	ldr r0, _080484BC  @ =0x41C64E6D
	mul r0, r1, r0
	ldr r1, _080484C0  @ =0x00003039
	add r0, r0, r1
	str r0, [r2]
	lsl r0, r0, #1
	lsr r0, r0, #17
	mov r1, #255
	and r0, r0, r1
	cmp r0, #254
	ble _080484B2
	ldr r2, [r5, #100]
	mov r3, #4
	ldrsh r4, [r2, r3]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	ldr r3, _080484C4  @ =0xFFFFFF00
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #12
	str r4, [sp]
	add r4, sp, #16
	str r4, [sp, #4]
	ldr r4, _080484C8  @ =gCurrentSwitchState
	ldrb r4, [r4]
	str r4, [sp, #8]
	bl sub_08002A04
	cmp r0, #0
	bne _080484CC
_080484B2:
	mov r0, #0
	b _080484D6
	.byte 0x00
	.byte 0x00
_080484B8:
	.4byte 0x03001718
_080484BC:
	.4byte 0x41C64E6D
_080484C0:
	.4byte 0x00003039
_080484C4:
	.4byte 0xFFFFFF00
_080484C8:
	.4byte gCurrentSwitchState
_080484CC:
	ldr r0, [r5, #32]
	ldr r1, [sp, #12]
	add r0, r0, r1
	str r0, [r5, #32]
	mov r0, #1
_080484D6:
	add sp, sp, #20
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804845C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080484E0
sub_080484E0: @ 0x080484E0
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_080484E0

	THUMB_FUNC_START sub_080484E4
sub_080484E4: @ 0x080484E4
	push {r4,r5,lr}
	sub sp, sp, #20
	add r5, r0, #0
	ldr r2, [r5, #100]
	mov r0, #4
	ldrsh r4, [r2, r0]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #12
	str r4, [sp]
	add r4, sp, #16
	str r4, [sp, #4]
	ldr r4, _08048524  @ =gCurrentSwitchState
	ldrb r4, [r4]
	str r4, [sp, #8]
	bl sub_08002A04
	add r2, r0, #0
	cmp r2, #0
	beq _08048528
	mov r0, #0
	b _08048534
	.byte 0x00
	.byte 0x00
_08048524:
	.4byte gCurrentSwitchState
_08048528:
	ldr r0, [r5, #36]
	ldr r1, _0804853C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #36]
	strh r2, [r5, #50]
	mov r0, #1
_08048534:
	add sp, sp, #20
	pop {r4,r5}
	pop {r1}
	bx r1
_0804853C:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_080484E4

	THUMB_FUNC_START sub_08048540
sub_08048540: @ 0x08048540
	push {lr}
	ldr r2, _08048560  @ =0x03001718
	ldr r1, [r2]
	ldr r0, _08048564  @ =0x41C64E6D
	mul r0, r1, r0
	ldr r1, _08048568  @ =0x00003039
	add r0, r0, r1
	str r0, [r2]
	lsl r0, r0, #6
	lsr r0, r0, #22
	ldr r1, _0804856C  @ =0x000003FD
	cmp r0, r1
	ble _08048570
	mov r0, #1
	b _08048572
	.byte 0x00
	.byte 0x00
_08048560:
	.4byte 0x03001718
_08048564:
	.4byte 0x41C64E6D
_08048568:
	.4byte 0x00003039
_0804856C:
	.4byte 0x000003FD
_08048570:
	mov r0, #0
_08048572:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048540

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048578
sub_08048578: @ 0x08048578
	push {lr}
	ldr r2, _08048598  @ =0x03001718
	ldr r1, [r2]
	ldr r0, _0804859C  @ =0x41C64E6D
	mul r0, r1, r0
	ldr r1, _080485A0  @ =0x00003039
	add r0, r0, r1
	str r0, [r2]
	lsl r0, r0, #7
	lsr r0, r0, #23
	ldr r1, _080485A4  @ =0x000001FD
	cmp r0, r1
	ble _080485A8
	mov r0, #1
	b _080485AA
	.byte 0x00
	.byte 0x00
_08048598:
	.4byte 0x03001718
_0804859C:
	.4byte 0x41C64E6D
_080485A0:
	.4byte 0x00003039
_080485A4:
	.4byte 0x000001FD
_080485A8:
	mov r0, #0
_080485AA:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048578

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080485B0
sub_080485B0: @ 0x080485B0
	push {r4,r5,lr}
	sub sp, sp, #28
	add r5, r0, #0
	ldr r0, _08048608  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08048610
	ldr r2, [r5, #100]
	mov r0, #4
	ldrsh r4, [r2, r0]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	ldr r3, _0804860C  @ =0xFFFFFF00
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	mov r4, #7
	str r4, [sp, #12]
	bl sub_08002580
	cmp r0, #0
	beq _08048610
	ldr r0, [r5, #32]
	ldr r1, [sp, #16]
	add r0, r0, r1
	str r0, [r5, #32]
	mov r0, #1
	b _08048612
	.byte 0x00
	.byte 0x00
_08048608:
	.4byte gUnknown_03001990
_0804860C:
	.4byte 0xFFFFFF00
_08048610:
	mov r0, #0
_08048612:
	add sp, sp, #28
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080485B0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804861C
sub_0804861C: @ 0x0804861C
	push {r4-r6,lr}
	sub sp, sp, #28
	add r5, r0, #0
	ldr r3, _08048650  @ =0x03001B68
	ldrb r6, [r3]
	cmp r6, #0
	beq _0804865C
	ldr r0, _08048654  @ =0x03001B64
	ldrb r2, [r0]
	ldr r0, _08048658  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldr r0, [r0, #120]
	mov r1, #192
	lsl r1, r1, #5
	add r0, r0, r1
	ldr r1, [r5, #120]
	cmp r1, r0
	ble _080486AC
	mov r0, #0
	strb r0, [r3]
	mov r0, #1
	b _080486AE
	.byte 0x00
	.byte 0x00
_08048650:
	.4byte 0x03001B68
_08048654:
	.4byte 0x03001B64
_08048658:
	.4byte gUnknown_03001940
_0804865C:
	ldr r2, [r5, #100]
	mov r3, #4
	ldrsh r4, [r2, r3]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	ldr r3, _080486A4  @ =0xFFFFF800
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	str r6, [sp, #12]
	bl sub_08002580
	add r2, r0, #0
	cmp r2, #0
	bne _080486AC
	ldr r0, [r5, #36]
	ldr r1, _080486A8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #36]
	strh r2, [r5, #50]
	mov r0, #1
	b _080486AE
	.byte 0x00
	.byte 0x00
_080486A4:
	.4byte 0xFFFFF800
_080486A8:
	.4byte 0xFFFFFF00
_080486AC:
	mov r0, #0
_080486AE:
	add sp, sp, #28
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804861C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080486B8
sub_080486B8: @ 0x080486B8
	push {r4-r7,lr}
	sub sp, sp, #28
	add r5, r0, #0
	ldr r0, _080486D4  @ =0x03001B68
	ldrb r6, [r0]
	cmp r6, #0
	beq _080486D8
	add r0, r5, #0
	bl sub_08044878
	lsl r0, r0, #24
	asr r0, r0, #24
	b _0804872C
	.byte 0x00
	.byte 0x00
_080486D4:
	.4byte 0x03001B68
_080486D8:
	ldr r3, [r5, #100]
	mov r0, #4
	ldrsh r4, [r3, r0]
	ldr r0, [r5, #32]
	add r0, r0, r4
	ldr r1, _08048718  @ =0xFFFFF400
	add r0, r0, r1
	mov r7, #2
	ldrsh r2, [r3, r7]
	ldr r1, [r5, #36]
	add r1, r1, r2
	ldr r2, _0804871C  @ =0xFFFFF800
	add r1, r1, r2
	mov r7, #6
	ldrsh r2, [r3, r7]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	str r6, [sp, #12]
	bl sub_08002580
	add r2, r0, #0
	cmp r2, #0
	beq _08048720
	mov r0, #0
	b _0804872C
_08048718:
	.4byte 0xFFFFF400
_0804871C:
	.4byte 0xFFFFF800
_08048720:
	ldr r0, [r5, #36]
	ldr r1, _08048734  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #36]
	strh r2, [r5, #50]
	mov r0, #1
_0804872C:
	add sp, sp, #28
	pop {r4-r7}
	pop {r1}
	bx r1
_08048734:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_080486B8

	THUMB_FUNC_START sub_08048738
sub_08048738: @ 0x08048738
	push {r4-r7,lr}
	sub sp, sp, #28
	add r5, r0, #0
	ldr r0, _08048754  @ =0x03001B68
	ldrb r6, [r0]
	cmp r6, #0
	beq _08048758
	add r0, r5, #0
	bl sub_080449C0
	lsl r0, r0, #24
	asr r0, r0, #24
	b _080487AC
	.byte 0x00
	.byte 0x00
_08048754:
	.4byte 0x03001B68
_08048758:
	ldr r3, [r5, #100]
	mov r0, #4
	ldrsh r4, [r3, r0]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #192
	lsl r1, r1, #4
	add r0, r0, r1
	mov r7, #2
	ldrsh r2, [r3, r7]
	ldr r1, [r5, #36]
	add r1, r1, r2
	ldr r2, _0804879C  @ =0xFFFFF800
	add r1, r1, r2
	mov r7, #6
	ldrsh r2, [r3, r7]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	str r6, [sp, #12]
	bl sub_08002580
	add r2, r0, #0
	cmp r2, #0
	beq _080487A0
	mov r0, #0
	b _080487AC
	.byte 0x00
	.byte 0x00
_0804879C:
	.4byte 0xFFFFF800
_080487A0:
	ldr r0, [r5, #36]
	ldr r1, _080487B4  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #36]
	strh r2, [r5, #50]
	mov r0, #1
_080487AC:
	add sp, sp, #28
	pop {r4-r7}
	pop {r1}
	bx r1
_080487B4:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08048738

	THUMB_FUNC_START sub_080487B8
sub_080487B8: @ 0x080487B8
	push {r4-r6,lr}
	sub sp, sp, #16
	add r4, r0, #0
	ldr r3, [r4, #100]
	mov r1, #4
	ldrsh r0, [r3, r1]
	ldr r2, [r4, #32]
	add r0, r2, r0
	str r0, [sp]
	mov r6, #2
	ldrsh r1, [r3, r6]
	ldr r0, [r4, #36]
	add r0, r0, r1
	ldr r1, _08048800  @ =0xFFFFEC00
	add r0, r0, r1
	ldr r5, _08048804  @ =0xFFFFFF00
	and r0, r0, r5
	str r0, [sp, #4]
	mov r6, #6
	ldrsh r1, [r3, r6]
	add r2, r2, r1
	str r2, [sp, #8]
	mov r2, #128
	lsl r2, r2, #1
	add r0, r0, r2
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _08048808
	mov r0, #0
	b _08048810
	.byte 0x00
	.byte 0x00
_08048800:
	.4byte 0xFFFFEC00
_08048804:
	.4byte 0xFFFFFF00
_08048808:
	ldr r0, [r4, #36]
	and r0, r0, r5
	str r0, [r4, #36]
	mov r0, #1
_08048810:
	add sp, sp, #16
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080487B8

	THUMB_FUNC_START sub_08048818
sub_08048818: @ 0x08048818
	push {r4,r5,lr}
	sub sp, sp, #28
	add r4, r0, #0
	ldr r0, _08048844  @ =0x03001B68
	ldrb r5, [r0]
	cmp r5, #0
	beq _08048854
	ldr r0, _08048848  @ =0x03001B50
	ldrb r0, [r0]
	ldr r0, _0804884C  @ =0x03001B64
	ldrb r2, [r0]
	ldr r0, _08048850  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldr r1, [r4, #112]
	ldr r0, [r0, #112]
	cmp r1, r0
	bge _08048886
_08048840:
	mov r0, #1
	b _08048888
_08048844:
	.4byte 0x03001B68
_08048848:
	.4byte 0x03001B50
_0804884C:
	.4byte 0x03001B64
_08048850:
	.4byte gUnknown_03001940
_08048854:
	ldr r2, [r4, #100]
	mov r0, #4
	ldrsh r3, [r2, r0]
	ldr r0, [r4, #32]
	add r0, r0, r3
	ldr r1, [r4, #36]
	mov r4, #192
	lsl r4, r4, #3
	add r1, r1, r4
	mov r4, #6
	ldrsh r2, [r2, r4]
	sub r2, r2, r3
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	str r5, [sp, #12]
	bl sub_08002580
	cmp r0, #0
	beq _08048840
_08048886:
	mov r0, #0
_08048888:
	add sp, sp, #28
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048818

	THUMB_FUNC_START sub_08048890
sub_08048890: @ 0x08048890
	push {r4-r6,lr}
	sub sp, sp, #28
	add r5, r0, #0
	mov r1, #50
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080488DC
	ldr r3, [r5, #100]
	mov r6, #4
	ldrsh r4, [r3, r6]
	ldr r0, [r5, #32]
	add r0, r0, r4
	ldr r1, _080488E0  @ =0xFFFFFF00
	add r0, r0, r1
	mov r6, #50
	ldrsh r2, [r5, r6]
	ldr r1, [r5, #36]
	add r1, r1, r2
	mov r6, #2
	ldrsh r2, [r3, r6]
	add r1, r1, r2
	mov r6, #6
	ldrsh r2, [r3, r6]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	mov r4, #8
	str r4, [sp, #12]
	bl sub_08002580
	cmp r0, #0
	beq _080488E4
_080488DC:
	mov r0, #0
	b _080488F0
_080488E0:
	.4byte 0xFFFFFF00
_080488E4:
	mov r6, #50
	ldrsh r1, [r5, r6]
	ldr r0, [r5, #36]
	sub r0, r0, r1
	str r0, [r5, #36]
	mov r0, #1
_080488F0:
	add sp, sp, #28
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048890

	THUMB_FUNC_START sub_080488F8
sub_080488F8: @ 0x080488F8
	push {lr}
	add r2, r0, #0
	ldr r0, _08048910  @ =0x03001B68
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048914
	add r0, r2, #0
	bl sub_0804604C
	lsl r0, r0, #24
	asr r0, r0, #24
	b _08048916
_08048910:
	.4byte 0x03001B68
_08048914:
	mov r0, #0
_08048916:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080488F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804891C
sub_0804891C: @ 0x0804891C
	push {r4-r6,lr}
	sub sp, sp, #16
	add r4, r0, #0
	ldr r3, [r4, #100]
	mov r1, #4
	ldrsh r0, [r3, r1]
	ldr r2, [r4, #32]
	add r0, r2, r0
	str r0, [sp]
	mov r6, #2
	ldrsh r1, [r3, r6]
	ldr r0, [r4, #36]
	add r0, r0, r1
	ldr r5, _08048960  @ =0xFFFFFF00
	and r0, r0, r5
	str r0, [sp, #4]
	mov r6, #6
	ldrsh r1, [r3, r6]
	add r2, r2, r1
	str r2, [sp, #8]
	mov r2, #128
	lsl r2, r2, #1
	add r0, r0, r2
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _08048964
	mov r0, #0
	b _0804896C
	.byte 0x00
	.byte 0x00
_08048960:
	.4byte 0xFFFFFF00
_08048964:
	ldr r0, [r4, #36]
	and r0, r0, r5
	str r0, [r4, #36]
	mov r0, #1
_0804896C:
	add sp, sp, #16
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804891C

	THUMB_FUNC_START sub_08048974
sub_08048974: @ 0x08048974
	push {r4,r5,lr}
	sub sp, sp, #28
	add r5, r0, #0
	ldr r2, [r5, #100]
	mov r0, #4
	ldrsh r4, [r2, r0]
	ldr r0, [r5, #32]
	add r0, r0, r4
	mov r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	mov r3, #6
	ldrsh r2, [r2, r3]
	sub r2, r2, r4
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #12]
	bl sub_08002580
	add r2, r0, #0
	cmp r2, #0
	beq _080489B4
	mov r0, #0
	b _080489C0
_080489B4:
	ldr r0, [r5, #36]
	ldr r1, _080489C8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #36]
	strh r2, [r5, #50]
	mov r0, #1
_080489C0:
	add sp, sp, #28
	pop {r4,r5}
	pop {r1}
	bx r1
_080489C8:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08048974

	THUMB_FUNC_START sub_080489CC
sub_080489CC: @ 0x080489CC
	push {r4,r5,lr}
	sub sp, sp, #44
	ldr r3, [r0, #104]
	mov r1, #4
	ldrsh r5, [r3, r1]
	ldr r4, [r0, #32]
	add r4, r4, r5
	mov r1, #2
	ldrsh r2, [r3, r1]
	ldr r1, [r0, #36]
	add r1, r1, r2
	mov r0, #192
	lsl r0, r0, #4
	add r1, r1, r0
	ldr r0, _08048A14  @ =0xFFFFFF00
	and r1, r1, r0
	mov r0, #6
	ldrsh r2, [r3, r0]
	sub r2, r2, r5
	mov r3, #128
	lsl r3, r3, #1
	add r0, sp, #32
	str r0, [sp]
	add r0, sp, #36
	str r0, [sp, #4]
	add r0, sp, #40
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #12]
	add r0, r4, #0
	bl sub_08002704
	cmp r0, #0
	beq _08048A18
	mov r0, #0
	b _08048A1A
_08048A14:
	.4byte 0xFFFFFF00
_08048A18:
	mov r0, #1
_08048A1A:
	add sp, sp, #44
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080489CC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048A24
sub_08048A24: @ 0x08048A24
	push {r4,lr}
	add r2, r0, #0
	add r3, r1, #0
	add r0, r0, #84
	mov r4, #0
	ldrsh r1, [r0, r4]
	mov r4, #12
	ldrsh r0, [r3, r4]
	cmp r1, r0
	blt _08048A4C
	ldr r0, [r2, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	ldrb r1, [r3, #6]
	and r0, r0, r1
	cmp r0, #0
	beq _08048A4C
	mov r0, #1
	b _08048A4E
_08048A4C:
	mov r0, #0
_08048A4E:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048A24

	THUMB_FUNC_START sub_08048A54
sub_08048A54: @ 0x08048A54
	push {lr}
	ldr r2, _08048A68  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08048A6C
	mov r0, #0
	b _08048A76
	.byte 0x00
	.byte 0x00
_08048A68:
	.4byte gUnknown_03001A1C
_08048A6C:
	mov r0, #8
	neg r0, r0
	and r1, r1, r0
	str r1, [r2]
	mov r0, #1
_08048A76:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048A54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048A7C
sub_08048A7C: @ 0x08048A7C
	push {lr}
	add r0, r0, #61
	ldrb r2, [r0]
	ldr r0, _08048AA8  @ =0x03001A54
	ldr r1, [r0]
	lsl r0, r2, #1
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08048AB4
	ldr r0, _08048AAC  @ =0x03001958
	ldr r0, [r0]
	cmp r2, r0
	bne _08048AA4
	ldr r0, _08048AB0  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #8
	neg r2, r2
	and r1, r1, r2
	str r1, [r0]
_08048AA4:
	mov r0, #1
	b _08048AB6
_08048AA8:
	.4byte 0x03001A54
_08048AAC:
	.4byte 0x03001958
_08048AB0:
	.4byte gUnknown_03001A1C
_08048AB4:
	mov r0, #0
_08048AB6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048A7C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048ABC
sub_08048ABC: @ 0x08048ABC
	push {r4,lr}
	sub sp, sp, #12
	add r3, r0, #0
	ldr r0, _08048B40  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08048B48
	mov r1, #11
	ldrsb r1, [r3, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08048B48
	ldr r2, _08048B44  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r4, r0, r1
	ldrh r0, [r4]
	cmp r0, #8
	bne _08048B48
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	beq _08048B48
	bl sub_0804F214
	cmp r0, #0
	beq _08048B48
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #137
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #2
	mov r1, #128
	mov r2, #0
	bl play_bgm
	mov r0, #0
	bl sub_0804F1E8
	ldr r0, [r4, #92]
	mov r1, #128
	lsl r1, r1, #1
	orr r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	bl update_grabbed_object_0803ACFC
	mov r0, #1
	b _08048B4A
	.byte 0x00
	.byte 0x00
_08048B40:
	.4byte gUnknown_03001990
_08048B44:
	.4byte gUnknown_03001940
_08048B48:
	mov r0, #0
_08048B4A:
	add sp, sp, #12
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048ABC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048B54
sub_08048B54: @ 0x08048B54
	push {lr}
	ldr r3, [r0, #72]
	cmp r3, #0
	ble _08048BA0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	sub r0, r0, #1
	cmp r1, r0
	bne _08048BA0
	ldr r2, _08048B98  @ =gUnknown_03001940
	mov r0, #176
	add r1, r3, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r2, r0, r1
	ldr r0, [r2, #92]
	mov r1, #128
	lsl r1, r1, #2
	orr r0, r0, r1
	str r0, [r2, #92]
	ldrh r0, [r2]
	cmp r0, #5
	beq _08048B88
	add r0, r2, #0
	bl update_grabbed_object_0803ACFC
_08048B88:
	ldr r0, _08048B9C  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #64
	orr r1, r1, r2
	str r1, [r0]
	mov r0, #1
	b _08048BA2
	.byte 0x00
	.byte 0x00
_08048B98:
	.4byte gUnknown_03001940
_08048B9C:
	.4byte gUnknown_03001A1C
_08048BA0:
	mov r0, #0
_08048BA2:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048B54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048BA8
sub_08048BA8: @ 0x08048BA8
	push {lr}
	ldr r0, _08048BBC  @ =0x03001BD4
	ldr r0, [r0]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08048BC0
	mov r0, #0
	b _08048BC2
	.byte 0x00
	.byte 0x00
_08048BBC:
	.4byte 0x03001BD4
_08048BC0:
	mov r0, #1
_08048BC2:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048BA8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048BC8
sub_08048BC8: @ 0x08048BC8
	push {lr}
	ldr r0, _08048BE8  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08048BF0
	ldr r0, _08048BEC  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08048BF0
	mov r0, #1
	b _08048BF2
_08048BE8:
	.4byte gLevelType
_08048BEC:
	.4byte gUnknown_030019A0
_08048BF0:
	mov r0, #0
_08048BF2:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048BC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048BF8
sub_08048BF8: @ 0x08048BF8
	push {lr}
	ldr r0, _08048C18  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08048C20
	ldr r0, _08048C1C  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08048C20
	mov r0, #1
	b _08048C22
_08048C18:
	.4byte gLevelType
_08048C1C:
	.4byte gUnknown_030019A0
_08048C20:
	mov r0, #0
_08048C22:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048BF8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048C28
sub_08048C28: @ 0x08048C28
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r0, _08048C84  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08048C94
	ldr r6, [r4, #36]
	asr r1, r6, #8
	ldr r0, _08048C88  @ =0x03001998
	ldr r3, [r0]
	ldr r0, [r3, #20]
	asr r0, r0, #8
	cmp r1, r0
	bne _08048C94
	ldr r5, [r4, #32]
	asr r2, r5, #8
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r1, [r3, #32]
	asr r1, r1, #8
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	sub r0, r2, r1
	cmp r0, #0
	bge _08048C70
	neg r0, r0
_08048C70:
	cmp r0, #1
	bgt _08048C94
	ldr r1, _08048C8C  @ =0xFFFFF000
	add r0, r5, r1
	str r0, [r4, #32]
	ldr r1, _08048C90  @ =0xFFFFE000
	add r0, r6, r1
	str r0, [r4, #36]
	mov r0, #1
	b _08048C96
_08048C84:
	.4byte gLevelType
_08048C88:
	.4byte 0x03001998
_08048C8C:
	.4byte 0xFFFFF000
_08048C90:
	.4byte 0xFFFFE000
_08048C94:
	mov r0, #0
_08048C96:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048C28

	THUMB_FUNC_START sub_08048C9C
sub_08048C9C: @ 0x08048C9C
	push {lr}
	ldr r0, _08048CB0  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #8
	and r0, r0, r1
	cmp r0, #0
	bne _08048CB4
	mov r0, #0
	b _08048CB6
_08048CB0:
	.4byte gUnknown_030019A0
_08048CB4:
	mov r0, #1
_08048CB6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048C9C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048CBC
sub_08048CBC: @ 0x08048CBC
	push {lr}
	ldr r0, _08048CD0  @ =gUnknown_03001938
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #8
	and r0, r0, r1
	cmp r0, #0
	bne _08048CD4
	mov r0, #0
	b _08048CD6
_08048CD0:
	.4byte gUnknown_03001938
_08048CD4:
	mov r0, #1
_08048CD6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048CBC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048CDC
sub_08048CDC: @ 0x08048CDC
	push {lr}
	ldr r0, _08048CFC  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08048CF8
	ldr r0, _08048D00  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08048D04
_08048CF8:
	mov r0, #0
	b _08048D06
_08048CFC:
	.4byte gNextLevelInLevelTable
_08048D00:
	.4byte gUnknown_03001A1C
_08048D04:
	mov r0, #1
_08048D06:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048CDC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048D0C
sub_08048D0C: @ 0x08048D0C
	push {lr}
	sub sp, sp, #16
	add r1, r0, #0
	mov r2, #48
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _08048D26
	mov r2, #0
	cmp r0, #0
	ble _08048D28
	mov r2, #224
	lsl r2, r2, #4
	b _08048D28
_08048D26:
	ldr r2, _08048D54  @ =0xFFFFF200
_08048D28:
	ldr r0, [r1, #108]
	add r0, r0, r2
	str r0, [sp]
	ldr r0, [r1, #112]
	str r0, [sp, #4]
	ldr r0, [r1, #116]
	add r0, r0, r2
	str r0, [sp, #8]
	ldr r0, [r1, #120]
	str r0, [sp, #12]
	mov r2, #128
	lsl r2, r2, #1
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	beq _08048D58
	mov r0, #0
	b _08048D5A
	.byte 0x00
	.byte 0x00
_08048D54:
	.4byte 0xFFFFF200
_08048D58:
	mov r0, #1
_08048D5A:
	add sp, sp, #16
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048D0C

	THUMB_FUNC_START sub_08048D60
sub_08048D60: @ 0x08048D60
	push {lr}
	ldr r0, _08048D74  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #5
	and r0, r0, r1
	cmp r0, #1
	beq _08048D78
	mov r0, #0
	b _08048D7A
	.byte 0x00
	.byte 0x00
_08048D74:
	.4byte gUnknown_03001A1C
_08048D78:
	mov r0, #1
_08048D7A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048D60

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048D80
sub_08048D80: @ 0x08048D80
	push {lr}
	ldr r0, _08048D94  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #5
	and r0, r0, r1
	cmp r0, #1
	bne _08048D98
	mov r0, #0
	b _08048D9A
	.byte 0x00
	.byte 0x00
_08048D94:
	.4byte gUnknown_03001A1C
_08048D98:
	mov r0, #1
_08048D9A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048D80

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048DA0
sub_08048DA0: @ 0x08048DA0
	push {lr}
	add r2, r1, #0
	mov r0, #12
	ldrsh r1, [r2, r0]
	ldr r0, _08048DD0  @ =gUnknown_03001A3C
	ldrh r0, [r0]
	cmp r1, r0
	bgt _08048E02
	ldr r1, _08048DD4  @ =gUnknown_030019A4
	mov r0, #0
	strb r0, [r1]
	ldr r1, [r2, #28]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08048DDC
	ldr r0, _08048DD8  @ =gUnknown_030019F4 
	ldrb r1, [r0]
	ldrb r0, [r2, #7]
	and r0, r0, r1
	cmp r0, #0
	bne _08048E02
_08048DCC:
	mov r0, #1
	b _08048E04
_08048DD0:
	.4byte gUnknown_03001A3C
_08048DD4:
	.4byte gUnknown_030019A4
_08048DD8:
	.4byte gUnknown_030019F4 
_08048DDC:
	mov r0, #4
	and r1, r1, r0
	cmp r1, #0
	beq _08048DF8
	ldr r0, _08048DF4  @ =gUnknown_03001990
	ldrb r1, [r0]
	ldrb r0, [r2, #7]
	and r0, r0, r1
	cmp r0, #0
	beq _08048E02
	b _08048DCC
	.byte 0x00
	.byte 0x00
_08048DF4:
	.4byte gUnknown_03001990
_08048DF8:
	ldr r0, _08048E08  @ =gUnknown_03001990
	ldrb r0, [r0]
	ldrb r2, [r2, #7]
	cmp r0, r2
	beq _08048DCC
_08048E02:
	mov r0, #0
_08048E04:
	pop {r1}
	bx r1
_08048E08:
	.4byte gUnknown_03001990
	THUMB_FUNC_END sub_08048DA0

	THUMB_FUNC_START sub_08048E0C
sub_08048E0C: @ 0x08048E0C
	push {lr}
	ldr r0, _08048E38  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #6
	and r0, r0, r1
	cmp r0, #0
	beq _08048E40
	ldr r0, _08048E3C  @ =gMainState
	ldr r0, [r0]
	cmp r0, #5
	beq _08048E32
	cmp r0, #2
	beq _08048E32
	mov r0, #128
	lsl r0, r0, #12
	and r1, r1, r0
	cmp r1, #0
	beq _08048E40
_08048E32:
	mov r0, #1
	b _08048E42
	.byte 0x00
	.byte 0x00
_08048E38:
	.4byte gUnknown_03001A1C
_08048E3C:
	.4byte gMainState
_08048E40:
	mov r0, #0
_08048E42:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048E0C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048E48
sub_08048E48: @ 0x08048E48
	push {lr}
	ldr r0, _08048E5C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08048E60
	mov r0, #0
	b _08048E62
_08048E5C:
	.4byte gUnknown_03001A1C
_08048E60:
	mov r0, #1
_08048E62:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048E48

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048E68
sub_08048E68: @ 0x08048E68
	push {lr}
	ldr r0, _08048E7C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _08048E80
	mov r0, #0
	b _08048E82
_08048E7C:
	.4byte gUnknown_03001A1C
_08048E80:
	mov r0, #1
_08048E82:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048E68

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048E88
sub_08048E88: @ 0x08048E88
	push {lr}
	bl sub_0804F908
	cmp r0, #0
	bne _08048E96
	mov r0, #0
	b _08048E98
_08048E96:
	mov r0, #1
_08048E98:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048E88

	THUMB_FUNC_START sub_08048E9C
sub_08048E9C: @ 0x08048E9C
	push {lr}
	bl sub_0804F95C
	cmp r0, #0
	bne _08048EAA
	mov r0, #0
	b _08048EAC
_08048EAA:
	mov r0, #1
_08048EAC:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048E9C

	THUMB_FUNC_START sub_08048EB0
sub_08048EB0: @ 0x08048EB0
	push {lr}
	ldr r0, _08048EC0  @ =gUnknown_03001A38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048EC4
	mov r0, #0
	b _08048EC6
	.byte 0x00
	.byte 0x00
_08048EC0:
	.4byte gUnknown_03001A38
_08048EC4:
	mov r0, #1
_08048EC6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048EB0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048ECC
sub_08048ECC: @ 0x08048ECC
	push {lr}
	ldr r0, _08048EDC  @ =gUnknown_03001A38
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048EE0
	mov r0, #0
	b _08048EE2
	.byte 0x00
	.byte 0x00
_08048EDC:
	.4byte gUnknown_03001A38
_08048EE0:
	mov r0, #1
_08048EE2:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048ECC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048EE8
sub_08048EE8: @ 0x08048EE8
	push {lr}
	ldr r0, _08048F28  @ =gUnknown_03001A1C
	ldr r2, [r0]
	mov r0, #225
	lsl r0, r0, #11
	and r0, r0, r2
	cmp r0, #0
	beq _08048F34
	ldr r0, _08048F2C  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _08048F22
	ldr r0, _08048F30  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08048F34
	mov r0, #128
	lsl r0, r0, #18
	and r2, r2, r0
	cmp r2, #0
	beq _08048F34
_08048F22:
	mov r0, #1
	b _08048F36
	.byte 0x00
	.byte 0x00
_08048F28:
	.4byte gUnknown_03001A1C
_08048F2C:
	.4byte gUnknown_030019AC
_08048F30:
	.4byte gLevelType
_08048F34:
	mov r0, #0
_08048F36:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048EE8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048F3C
sub_08048F3C: @ 0x08048F3C
	push {lr}
	ldr r0, _08048F5C  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08048F64
	ldr r0, _08048F60  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08048F64
	mov r0, #1
	b _08048F66
_08048F5C:
	.4byte gLevelType
_08048F60:
	.4byte gUnknown_03001A1C
_08048F64:
	mov r0, #0
_08048F66:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048F3C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048F6C
sub_08048F6C: @ 0x08048F6C
	push {lr}
	ldr r0, _08048F80  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	bne _08048F84
	mov r0, #0
	b _08048F86
_08048F80:
	.4byte gUnknown_03001A1C
_08048F84:
	mov r0, #1
_08048F86:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048F6C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048F8C
sub_08048F8C: @ 0x08048F8C
	push {lr}
	ldr r0, _08048FA0  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	bne _08048FA4
	mov r0, #0
	b _08048FA6
_08048FA0:
	.4byte gUnknown_030019A0
_08048FA4:
	mov r0, #1
_08048FA6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048F8C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048FAC
sub_08048FAC: @ 0x08048FAC
	push {lr}
	mov r1, #0
	ldr r0, _08048FC8  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08048FC2
	mov r1, #1
_08048FC2:
	add r0, r1, #0
	pop {r1}
	bx r1
_08048FC8:
	.4byte gUnknown_030019AC
	THUMB_FUNC_END sub_08048FAC

	THUMB_FUNC_START sub_08048FCC
sub_08048FCC: @ 0x08048FCC
	push {lr}
	mov r1, #0
	ldr r0, _08048FE8  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08048FE2
	mov r1, #1
_08048FE2:
	add r0, r1, #0
	pop {r1}
	bx r1
_08048FE8:
	.4byte gUnknown_030019AC
	THUMB_FUNC_END sub_08048FCC

	THUMB_FUNC_START sub_08048FEC
sub_08048FEC: @ 0x08048FEC
	push {lr}
	add r2, r0, #0
	ldr r0, _08049010  @ =gUnknown_030019AC
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08049014
	ldr r1, [r1, #32]
	ldr r0, [r2, #32]
	cmp r1, r0
	bge _08049014
	mov r0, #1
	b _08049016
	.byte 0x00
	.byte 0x00
_08049010:
	.4byte gUnknown_030019AC
_08049014:
	mov r0, #0
_08049016:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048FEC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804901C
sub_0804901C: @ 0x0804901C
	push {lr}
	add r2, r0, #0
	ldr r0, _08049040  @ =gUnknown_030019AC
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08049044
	ldr r1, [r1, #32]
	ldr r0, [r2, #32]
	cmp r1, r0
	ble _08049044
	mov r0, #1
	b _08049046
	.byte 0x00
	.byte 0x00
_08049040:
	.4byte gUnknown_030019AC
_08049044:
	mov r0, #0
_08049046:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804901C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804904C
sub_0804904C: @ 0x0804904C
	push {lr}
	add r2, r0, #0
	ldr r0, _08049070  @ =gUnknown_030019AC
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08049074
	ldr r1, [r1, #32]
	ldr r0, [r2, #32]
	cmp r1, r0
	bge _08049074
	mov r0, #1
	b _08049076
	.byte 0x00
	.byte 0x00
_08049070:
	.4byte gUnknown_030019AC
_08049074:
	mov r0, #0
_08049076:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804904C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804907C
sub_0804907C: @ 0x0804907C
	push {lr}
	add r2, r0, #0
	ldr r0, _080490A0  @ =gUnknown_030019AC
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _080490A4
	ldr r1, [r1, #32]
	ldr r0, [r2, #32]
	cmp r1, r0
	ble _080490A4
	mov r0, #1
	b _080490A6
	.byte 0x00
	.byte 0x00
_080490A0:
	.4byte gUnknown_030019AC
_080490A4:
	mov r0, #0
_080490A6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804907C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080490AC
sub_080490AC: @ 0x080490AC
	push {lr}
	add r2, r0, #0
	ldr r1, [r2, #92]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080490C0
	mov r0, #0
	b _080490C8
_080490C0:
	ldr r0, _080490CC  @ =0xFFFFFEFF
	and r1, r1, r0
	str r1, [r2, #92]
	mov r0, #1
_080490C8:
	pop {r1}
	bx r1
_080490CC:
	.4byte 0xFFFFFEFF
	THUMB_FUNC_END sub_080490AC

	THUMB_FUNC_START sub_080490D0
sub_080490D0: @ 0x080490D0
	push {lr}
	add r3, r0, #0
	ldr r0, _08049104  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #15
	and r0, r0, r1
	cmp r0, #0
	beq _08049110
	ldr r1, [r3, #92]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08049110
	ldr r2, _08049108  @ =0x03001B60
	ldrb r0, [r2]
	cmp r0, #0
	bne _08049110
	mov r0, #1
	strb r0, [r2]
	ldr r0, _0804910C  @ =0xFFFFFEFF
	and r1, r1, r0
	str r1, [r3, #92]
	mov r0, #1
	b _08049112
_08049104:
	.4byte gUnknown_03001A1C
_08049108:
	.4byte 0x03001B60
_0804910C:
	.4byte 0xFFFFFEFF
_08049110:
	mov r0, #0
_08049112:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080490D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049118
sub_08049118: @ 0x08049118
	push {lr}
	add r2, r0, #0
	ldr r1, [r2, #92]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0804912C
	mov r0, #0
	b _08049134
_0804912C:
	ldr r0, _08049138  @ =0xFFFFFEFF
	and r1, r1, r0
	str r1, [r2, #92]
	mov r0, #1
_08049134:
	pop {r1}
	bx r1
_08049138:
	.4byte 0xFFFFFEFF
	THUMB_FUNC_END sub_08049118

	THUMB_FUNC_START sub_0804913C
sub_0804913C: @ 0x0804913C
	push {lr}
	add r2, r0, #0
	ldr r1, [r2, #92]
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08049150
	mov r0, #0
	b _08049158
_08049150:
	ldr r0, _0804915C  @ =0xFFFFFDFF
	and r1, r1, r0
	str r1, [r2, #92]
	mov r0, #1
_08049158:
	pop {r1}
	bx r1
_0804915C:
	.4byte 0xFFFFFDFF
	THUMB_FUNC_END sub_0804913C

	THUMB_FUNC_START sub_08049160
sub_08049160: @ 0x08049160
	push {lr}
	add r3, r0, #0
	ldr r2, [r3, #92]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r2
	cmp r0, #0
	beq _0804918C
	ldr r0, [r3, #96]
	mov r1, #128
	lsl r1, r1, #23
	and r0, r0, r1
	cmp r0, #0
	bne _0804918C
	ldr r0, _08049188  @ =0xFFFFFBFF
	and r2, r2, r0
	str r2, [r3, #92]
	mov r0, #1
	b _0804918E
	.byte 0x00
	.byte 0x00
_08049188:
	.4byte 0xFFFFFBFF
_0804918C:
	mov r0, #0
_0804918E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049160

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049194
sub_08049194: @ 0x08049194
	push {lr}
	add r3, r0, #0
	ldr r2, [r3, #92]
	mov r0, #128
	lsl r0, r0, #4
	and r0, r0, r2
	cmp r0, #0
	beq _080491C0
	ldr r0, [r3, #96]
	mov r1, #128
	lsl r1, r1, #23
	and r0, r0, r1
	cmp r0, #0
	bne _080491C0
	ldr r0, _080491BC  @ =0xFFFFF7FF
	and r2, r2, r0
	str r2, [r3, #92]
	mov r0, #1
	b _080491C2
	.byte 0x00
	.byte 0x00
_080491BC:
	.4byte 0xFFFFF7FF
_080491C0:
	mov r0, #0
_080491C2:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049194

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080491C8
sub_080491C8: @ 0x080491C8
	push {lr}
	add r2, r0, #0
	ldr r1, [r2, #96]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r1
	cmp r0, #0
	bne _080491DC
	mov r0, #0
	b _080491E4
_080491DC:
	ldr r0, _080491E8  @ =0xFFFBFFFF
	and r1, r1, r0
	str r1, [r2, #96]
	mov r0, #1
_080491E4:
	pop {r1}
	bx r1
_080491E8:
	.4byte 0xFFFBFFFF
	THUMB_FUNC_END sub_080491C8

	THUMB_FUNC_START sub_080491EC
sub_080491EC: @ 0x080491EC
	push {lr}
	add r3, r0, #0
	ldr r2, [r3, #92]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r2
	cmp r0, #0
	beq _08049220
	ldr r1, [r3, #96]
	mov r0, #128
	lsl r0, r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _08049220
	ldr r0, _08049218  @ =0xFFFFFBFF
	and r2, r2, r0
	str r2, [r3, #92]
	ldr r0, _0804921C  @ =0xFFFEFFFF
	and r1, r1, r0
	str r1, [r3, #96]
	mov r0, #1
	b _08049222
_08049218:
	.4byte 0xFFFFFBFF
_0804921C:
	.4byte 0xFFFEFFFF
_08049220:
	mov r0, #0
_08049222:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080491EC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049228
sub_08049228: @ 0x08049228
	push {lr}
	add r3, r0, #0
	ldr r2, [r3, #92]
	mov r0, #128
	lsl r0, r0, #4
	and r0, r0, r2
	cmp r0, #0
	beq _0804925C
	ldr r1, [r3, #96]
	mov r0, #128
	lsl r0, r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0804925C
	ldr r0, _08049254  @ =0xFFFFF7FF
	and r2, r2, r0
	str r2, [r3, #92]
	ldr r0, _08049258  @ =0xFFFEFFFF
	and r1, r1, r0
	str r1, [r3, #96]
	mov r0, #1
	b _0804925E
_08049254:
	.4byte 0xFFFFF7FF
_08049258:
	.4byte 0xFFFEFFFF
_0804925C:
	mov r0, #0
_0804925E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049228

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049264
sub_08049264: @ 0x08049264
	push {lr}
	add r3, r0, #0
	ldr r2, [r3, #96]
	mov r1, #160
	lsl r1, r1, #11
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, r1
	beq _0804927A
	mov r0, #0
	b _08049286
_0804927A:
	ldr r0, _0804928C  @ =0xFFFBFFFF
	and r2, r2, r0
	ldr r0, _08049290  @ =0xFFFEFFFF
	and r2, r2, r0
	str r2, [r3, #96]
	mov r0, #1
_08049286:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0804928C:
	.4byte 0xFFFBFFFF
_08049290:
	.4byte 0xFFFEFFFF
	THUMB_FUNC_END sub_08049264

	THUMB_FUNC_START sub_08049294
sub_08049294: @ 0x08049294
	push {lr}
	add r3, r0, #0
	ldr r2, [r3, #92]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r2
	cmp r0, #0
	beq _080492C8
	ldr r1, [r3, #96]
	mov r0, #128
	lsl r0, r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _080492C8
	ldr r0, _080492C0  @ =0xFFFFFBFF
	and r2, r2, r0
	str r2, [r3, #92]
	ldr r0, _080492C4  @ =0xFFFDFFFF
	and r1, r1, r0
	str r1, [r3, #96]
	mov r0, #1
	b _080492CA
_080492C0:
	.4byte 0xFFFFFBFF
_080492C4:
	.4byte 0xFFFDFFFF
_080492C8:
	mov r0, #0
_080492CA:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049294

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080492D0
sub_080492D0: @ 0x080492D0
	push {lr}
	add r3, r0, #0
	ldr r2, [r3, #92]
	mov r0, #128
	lsl r0, r0, #4
	and r0, r0, r2
	cmp r0, #0
	beq _08049304
	ldr r1, [r3, #96]
	mov r0, #128
	lsl r0, r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _08049304
	ldr r0, _080492FC  @ =0xFFFFF7FF
	and r2, r2, r0
	str r2, [r3, #92]
	ldr r0, _08049300  @ =0xFFFDFFFF
	and r1, r1, r0
	str r1, [r3, #96]
	mov r0, #1
	b _08049306
_080492FC:
	.4byte 0xFFFFF7FF
_08049300:
	.4byte 0xFFFDFFFF
_08049304:
	mov r0, #0
_08049306:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080492D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804930C
sub_0804930C: @ 0x0804930C
	push {lr}
	add r3, r0, #0
	ldr r2, [r3, #96]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r2
	cmp r0, #0
	beq _08049340
	ldr r1, [r3, #92]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _08049340
	ldr r0, _08049338  @ =0xFFFBFFFF
	and r2, r2, r0
	str r2, [r3, #96]
	ldr r0, _0804933C  @ =0xFFFFFBFF
	and r1, r1, r0
	str r1, [r3, #92]
	mov r0, #1
	b _08049342
_08049338:
	.4byte 0xFFFBFFFF
_0804933C:
	.4byte 0xFFFFFBFF
_08049340:
	mov r0, #0
_08049342:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804930C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049348
sub_08049348: @ 0x08049348
	push {lr}
	add r3, r0, #0
	ldr r2, [r3, #96]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r2
	cmp r0, #0
	beq _0804937C
	ldr r1, [r3, #92]
	mov r0, #128
	lsl r0, r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0804937C
	ldr r0, _08049374  @ =0xFFFBFFFF
	and r2, r2, r0
	str r2, [r3, #96]
	ldr r0, _08049378  @ =0xFFFFF7FF
	and r1, r1, r0
	str r1, [r3, #92]
	mov r0, #1
	b _0804937E
_08049374:
	.4byte 0xFFFBFFFF
_08049378:
	.4byte 0xFFFFF7FF
_0804937C:
	mov r0, #0
_0804937E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049348

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049384
sub_08049384: @ 0x08049384
	push {lr}
	ldrb r1, [r0, #12]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08049394
	mov r0, #0
	b _08049396
_08049394:
	mov r0, #1
_08049396:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049384

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804939C
sub_0804939C: @ 0x0804939C
	push {lr}
	add r2, r1, #0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	sub r0, r0, #1
	cmp r1, r0
	blt _080493C0
	ldr r0, _080493BC  @ =gUnknown_03001990
	ldrb r1, [r0]
	ldrb r0, [r2, #7]
	and r0, r0, r1
	cmp r0, #0
	beq _080493C0
	mov r0, #1
	b _080493C2
	.byte 0x00
	.byte 0x00
_080493BC:
	.4byte gUnknown_03001990
_080493C0:
	mov r0, #0
_080493C2:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804939C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080493C8
sub_080493C8: @ 0x080493C8
	push {lr}
	add r2, r0, #0
	mov r3, #12
	ldrsh r0, [r1, r3]
	lsl r0, r0, #8
	ldr r1, [r2, #80]
	cmp r1, r0
	blt _080493E6
	ldr r0, [r2, #92]
	mov r1, #64
	and r0, r0, r1
	cmp r0, #0
	beq _080493E6
	mov r0, #1
	b _080493E8
_080493E6:
	mov r0, #0
_080493E8:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080493C8

	THUMB_FUNC_START sub_080493EC
sub_080493EC: @ 0x080493EC
	push {r4-r6,lr}
	sub sp, sp, #12
	add r5, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _08049464
	ldr r0, _08049454  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r2, #1
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	bne _08049416
	ldr r0, _08049458  @ =gUnknown_030019F4 
	ldrb r1, [r0]
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08049464
_08049416:
	ldr r4, [r5, #100]
	mov r6, #4
	ldrsh r0, [r4, r6]
	ldr r2, [r5, #32]
	add r0, r2, r0
	asr r0, r0, #8
	mov r1, #0
	ldrsh r3, [r4, r1]
	ldr r1, [r5, #36]
	add r1, r1, r3
	asr r1, r1, #8
	mov r6, #6
	ldrsh r3, [r4, r6]
	add r2, r2, r3
	asr r2, r2, #8
	add r3, r1, #4
	add r4, sp, #4
	str r4, [sp]
	bl sub_08002C3C
	ldr r1, _0804945C  @ =0xFFFFEC78
	cmp r0, r1
	beq _08049464
	ldr r0, [sp, #8]
	lsl r0, r0, #8
	str r0, [r5, #36]
	ldr r1, _08049460  @ =0x030019FC
	mov r0, #0
	strb r0, [r1]
	mov r0, #1
	b _08049466
_08049454:
	.4byte gUnknown_03001990
_08049458:
	.4byte gUnknown_030019F4 
_0804945C:
	.4byte 0xFFFFEC78
_08049460:
	.4byte 0x030019FC
_08049464:
	mov r0, #0
_08049466:
	add sp, sp, #12
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080493EC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049470
sub_08049470: @ 0x08049470
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	ldr r3, [r0, #100]
	mov r2, #4
	ldrsh r1, [r3, r2]
	ldr r2, [r0, #32]
	add r1, r2, r1
	asr r7, r1, #8
	mov r4, #6
	ldrsh r1, [r3, r4]
	add r2, r2, r1
	asr r6, r2, #8
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r0, #36]
	add r0, r0, r1
	asr r4, r0, #8
	add r5, r4, #0
	add r5, r5, #8
	add r0, sp, #4
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_08002F14
	ldr r1, _080494CC  @ =0xFFFFEC78
	mov r8, r1
	cmp r0, r8
	bne _080494D0
	add r2, sp, #4
	str r2, [sp]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_08002B04
	cmp r0, r8
	bne _080494D0
	mov r0, #1
	b _080494D2
	.byte 0x00
	.byte 0x00
_080494CC:
	.4byte 0xFFFFEC78
_080494D0:
	mov r0, #0
_080494D2:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049470

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080494E0
sub_080494E0: @ 0x080494E0
	push {r4-r6,lr}
	ldr r4, [r0, #100]
	mov r2, #4
	ldrsh r1, [r4, r2]
	ldr r2, [r0, #32]
	add r1, r2, r1
	asr r5, r1, #8
	mov r6, #0
	ldrsh r3, [r4, r6]
	ldr r1, [r0, #36]
	add r1, r1, r3
	asr r3, r1, #8
	mov r6, #6
	ldrsh r1, [r4, r6]
	add r2, r2, r1
	asr r2, r2, #8
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #20
	ble _0804952C
	add r0, r5, #0
	add r1, r3, #0
	bl sub_080067F0
	cmp r0, #0
	beq _0804952C
	ldr r0, _08049528  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0804952C
	mov r0, #1
	b _0804952E
	.byte 0x00
	.byte 0x00
_08049528:
	.4byte gUnknown_03001990
_0804952C:
	mov r0, #0
_0804952E:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080494E0

	THUMB_FUNC_START sub_08049534
sub_08049534: @ 0x08049534
	push {lr}
	mov r2, #12
	ldrsh r1, [r1, r2]
	lsl r1, r1, #8
	ldr r0, [r0, #80]
	cmp r0, r1
	bge _08049546
	mov r0, #0
	b _08049548
_08049546:
	mov r0, #1
_08049548:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049534

	THUMB_FUNC_START sub_0804954C
sub_0804954C: @ 0x0804954C
	push {lr}
	ldr r0, [r0, #80]
	asr r0, r0, #8
	mov r2, #12
	ldrsh r1, [r1, r2]
	cmn r0, r1
	ble _0804955E
	mov r0, #0
	b _08049560
_0804955E:
	mov r0, #1
_08049560:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804954C

	THUMB_FUNC_START sub_08049564
sub_08049564: @ 0x08049564
	push {lr}
	ldrb r1, [r0, #12]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _08049574
	mov r0, #0
	b _08049576
_08049574:
	mov r0, #1
_08049576:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049564

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804957C
sub_0804957C: @ 0x0804957C
	push {lr}
	ldr r0, [r0, #32]
	asr r0, r0, #8
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _0804958E
	mov r0, #0
	b _08049590
_0804958E:
	mov r0, #1
_08049590:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804957C

	THUMB_FUNC_START sub_08049594
sub_08049594: @ 0x08049594
	push {lr}
	ldr r0, [r0, #32]
	asr r0, r0, #8
	mov r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080495A6
	mov r0, #0
	b _080495A8
_080495A6:
	mov r0, #1
_080495A8:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049594

	THUMB_FUNC_START sub_080495AC
sub_080495AC: @ 0x080495AC
	push {r4,r5,lr}
	sub sp, sp, #12
	add r1, r0, #0
	ldr r3, [r1, #100]
	mov r2, #4
	ldrsh r0, [r3, r2]
	ldr r2, [r1, #32]
	add r0, r2, r0
	mov r5, #48
	ldrsh r4, [r1, r5]
	lsl r4, r4, #4
	add r0, r0, r4
	asr r0, r0, #8
	ldr r1, [r1, #36]
	asr r1, r1, #8
	mov r5, #6
	ldrsh r3, [r3, r5]
	add r2, r2, r3
	add r2, r2, r4
	asr r2, r2, #8
	add r3, r1, #0
	add r3, r3, #24
	add r4, sp, #4
	str r4, [sp]
	bl sub_08002F14
	ldr r1, _080495EC  @ =0xFFFFEC78
	cmp r0, r1
	beq _080495F0
	mov r0, #0
	b _080495F2
	.byte 0x00
	.byte 0x00
_080495EC:
	.4byte 0xFFFFEC78
_080495F0:
	mov r0, #1
_080495F2:
	add sp, sp, #12
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080495AC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080495FC
sub_080495FC: @ 0x080495FC
	push {lr}
	add r3, r0, #0
	ldr r0, _0804963C  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08049644
	ldr r2, _08049640  @ =gUnknown_03001940
	mov r1, #11
	ldrsb r1, [r3, r1]
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r2, r0, r1
	mov r1, #11
	ldrsb r1, [r3, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08049638
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #8]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	bne _08049644
_08049638:
	mov r0, #1
	b _08049646
_0804963C:
	.4byte gUnknown_03001990
_08049640:
	.4byte gUnknown_03001940
_08049644:
	mov r0, #0
_08049646:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080495FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804964C
sub_0804964C: @ 0x0804964C
	push {lr}
	ldr r0, _08049660  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08049664
	mov r0, #0
	b _08049666
	.byte 0x00
	.byte 0x00
_08049660:
	.4byte gUnknown_03001990
_08049664:
	mov r0, #1
_08049666:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804964C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804966C
sub_0804966C: @ 0x0804966C
	push {lr}
	ldrb r0, [r0, #10]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0804967C
	mov r0, #0
	b _0804967E
_0804967C:
	mov r0, #1
_0804967E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804966C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049684
sub_08049684: @ 0x08049684
	push {lr}
	ldrb r0, [r0, #10]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	beq _08049694
	mov r0, #0
	b _08049696
_08049694:
	mov r0, #1
_08049696:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049684

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804969C
sub_0804969C: @ 0x0804969C
	push {lr}
	add r2, r0, #0
	ldr r3, [r2, #76]
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	beq _080496DC
	ldrb r0, [r1, #6]
	mov r1, #15
	and r0, r0, r1
	ldr r1, [r2, #92]
	and r1, r1, r0
	cmp r1, #0
	beq _080496DC
	ldr r2, _080496D8  @ =gUnknown_03001940
	mov r0, #176
	add r1, r3, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _080496DC
	mov r0, #1
	b _080496DE
_080496D8:
	.4byte gUnknown_03001940
_080496DC:
	mov r0, #0
_080496DE:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804969C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080496E4
sub_080496E4: @ 0x080496E4
	push {lr}
	ldr r1, _08049710  @ =gUnknown_030019AC
	ldr r3, [r1]
	ldr r2, [r3, #32]
	ldr r1, [r0, #32]
	sub r2, r2, r1
	ldr r1, [r3, #40]
	ldr r0, [r0, #40]
	sub r1, r1, r0
	asr r1, r1, #8
	asr r2, r2, #8
	cmp r2, #0
	bge _08049700
	neg r2, r2
_08049700:
	cmp r1, #0
	bge _08049706
	neg r1, r1
_08049706:
	cmp r2, r1
	bgt _08049714
	mov r0, #0
	b _08049716
	.byte 0x00
	.byte 0x00
_08049710:
	.4byte gUnknown_030019AC
_08049714:
	mov r0, #1
_08049716:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080496E4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804971C
sub_0804971C: @ 0x0804971C
	push {lr}
	ldr r0, _08049730  @ =gUnknown_03001938
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08049734
	mov r0, #0
	b _08049736
_08049730:
	.4byte gUnknown_03001938
_08049734:
	mov r0, #1
_08049736:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804971C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804973C
sub_0804973C: @ 0x0804973C
	push {lr}
	ldr r0, _08049750  @ =gUnknown_03001938
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08049754
	mov r0, #0
	b _08049756
_08049750:
	.4byte gUnknown_03001938
_08049754:
	mov r0, #1
_08049756:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804973C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804975C
sub_0804975C: @ 0x0804975C
	push {lr}
	add r1, r0, #0
	ldr r3, [r1, #76]
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	beq _08049798
	ldr r0, [r1, #92]
	mov r1, #15
	and r0, r0, r1
	cmp r0, #1
	bne _08049798
	ldr r2, _08049794  @ =gUnknown_03001940
	mov r0, #176
	add r1, r3, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	bne _08049798
	mov r2, #50
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _08049798
	mov r0, #1
	b _0804979A
	.byte 0x00
	.byte 0x00
_08049794:
	.4byte gUnknown_03001940
_08049798:
	mov r0, #0
_0804979A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804975C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080497A0
sub_080497A0: @ 0x080497A0
	push {r4,lr}
	add r4, r0, #0
	add r4, r4, #53
	ldrb r0, [r4]
	cmp r0, #0
	bne _080497B0
	mov r0, #0
	b _080497C2
_080497B0:
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #1
	bl sub_0802BC64
	mov r0, #0
	strb r0, [r4]
	mov r0, #1
_080497C2:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080497A0

	THUMB_FUNC_START sub_080497C8
sub_080497C8: @ 0x080497C8
	push {lr}
	ldr r0, _080497D8  @ =0x03000938
	ldrb r0, [r0]
	cmp r0, #2
	bne _080497DC
	mov r0, #0
	b _080497EA
	.byte 0x00
	.byte 0x00
_080497D8:
	.4byte 0x03000938
_080497DC:
	mov r1, #0
	ldr r0, _080497F0  @ =gCurrentSwitchState
	ldrb r0, [r0]
	cmp r0, #1
	bne _080497E8
	mov r1, #1
_080497E8:
	add r0, r1, #0
_080497EA:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080497F0:
	.4byte gCurrentSwitchState
	THUMB_FUNC_END sub_080497C8

	THUMB_FUNC_START sub_080497F4
sub_080497F4: @ 0x080497F4
	push {lr}
	ldr r0, _08049804  @ =0x03000938
	ldrb r0, [r0]
	cmp r0, #2
	bne _08049808
	mov r0, #0
	b _08049816
	.byte 0x00
	.byte 0x00
_08049804:
	.4byte 0x03000938
_08049808:
	mov r1, #0
	ldr r0, _0804981C  @ =gCurrentSwitchState
	ldrb r0, [r0]
	cmp r0, #2
	bne _08049814
	mov r1, #1
_08049814:
	add r0, r1, #0
_08049816:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0804981C:
	.4byte gCurrentSwitchState
	THUMB_FUNC_END sub_080497F4

	THUMB_FUNC_START sub_08049820
sub_08049820: @ 0x08049820
	push {lr}
	ldr r0, _08049830  @ =0x03000938
	ldrb r0, [r0]
	cmp r0, #2
	bne _08049834
	mov r0, #0
	b _08049842
	.byte 0x00
	.byte 0x00
_08049830:
	.4byte 0x03000938
_08049834:
	mov r1, #0
	ldr r0, _08049848  @ =gCurrentSwitchState
	ldrb r0, [r0]
	cmp r0, #3
	bne _08049840
	mov r1, #1
_08049840:
	add r0, r1, #0
_08049842:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08049848:
	.4byte gCurrentSwitchState
	THUMB_FUNC_END sub_08049820

	THUMB_FUNC_START sub_0804984C
sub_0804984C: @ 0x0804984C
	ldr r0, _0804985C  @ =gCurrentSwitchState
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r1, r0
	neg r0, r1
	orr r0, r0, r1
	lsr r0, r0, #31
	bx lr
_0804985C:
	.4byte gCurrentSwitchState
	THUMB_FUNC_END sub_0804984C

	THUMB_FUNC_START sub_08049860
sub_08049860: @ 0x08049860
	ldr r0, _08049870  @ =gCurrentSwitchState
	ldrb r1, [r0]
	mov r0, #2
	eor r1, r1, r0
	neg r0, r1
	orr r0, r0, r1
	lsr r0, r0, #31
	bx lr
_08049870:
	.4byte gCurrentSwitchState
	THUMB_FUNC_END sub_08049860

	THUMB_FUNC_START sub_08049874
sub_08049874: @ 0x08049874
	ldr r0, _08049884  @ =gCurrentSwitchState
	ldrb r1, [r0]
	mov r0, #3
	eor r1, r1, r0
	neg r0, r1
	orr r0, r0, r1
	lsr r0, r0, #31
	bx lr
_08049884:
	.4byte gCurrentSwitchState
	THUMB_FUNC_END sub_08049874

	THUMB_FUNC_START sub_08049888
sub_08049888: @ 0x08049888
	push {lr}
	ldr r0, _080498A4  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #10
	and r0, r0, r1
	cmp r0, #0
	beq _080498AC
	ldr r0, _080498A8  @ =gCurrentSwitchState
	ldrb r0, [r0]
	cmp r0, #1
	bne _080498AC
	mov r0, #1
	b _080498AE
_080498A4:
	.4byte gUnknown_030019A0
_080498A8:
	.4byte gCurrentSwitchState
_080498AC:
	mov r0, #0
_080498AE:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049888

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080498B4
sub_080498B4: @ 0x080498B4
	push {lr}
	ldr r0, _080498D0  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #10
	and r0, r0, r1
	cmp r0, #0
	beq _080498D8
	ldr r0, _080498D4  @ =gCurrentSwitchState
	ldrb r0, [r0]
	cmp r0, #2
	bne _080498D8
	mov r0, #1
	b _080498DA
_080498D0:
	.4byte gUnknown_030019A0
_080498D4:
	.4byte gCurrentSwitchState
_080498D8:
	mov r0, #0
_080498DA:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080498B4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080498E0
sub_080498E0: @ 0x080498E0
	push {lr}
	ldr r0, _080498FC  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #10
	and r0, r0, r1
	cmp r0, #0
	beq _08049904
	ldr r0, _08049900  @ =gCurrentSwitchState
	ldrb r0, [r0]
	cmp r0, #3
	bne _08049904
	mov r0, #1
	b _08049906
_080498FC:
	.4byte gUnknown_030019A0
_08049900:
	.4byte gCurrentSwitchState
_08049904:
	mov r0, #0
_08049906:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080498E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804990C
sub_0804990C: @ 0x0804990C
	push {lr}
	ldr r2, _08049920  @ =gUnknown_030019A0
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #5
	and r0, r0, r1
	cmp r0, #0
	bne _08049924
	mov r0, #0
	b _0804992C
_08049920:
	.4byte gUnknown_030019A0
_08049924:
	ldr r0, _08049930  @ =0xFFFFEFFF
	and r1, r1, r0
	str r1, [r2]
	mov r0, #1
_0804992C:
	pop {r1}
	bx r1
_08049930:
	.4byte 0xFFFFEFFF
	THUMB_FUNC_END sub_0804990C

	THUMB_FUNC_START sub_08049934
sub_08049934: @ 0x08049934
	push {lr}
	add r3, r0, #0
	ldr r2, [r3, #92]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r2
	cmp r0, #0
	beq _08049968
	ldr r1, [r3, #96]
	mov r0, #128
	lsl r0, r0, #12
	and r0, r0, r1
	cmp r0, #0
	beq _08049968
	ldr r0, _08049960  @ =0xFFFFFBFF
	and r2, r2, r0
	str r2, [r3, #92]
	ldr r0, _08049964  @ =0xFFFDFFFF
	and r1, r1, r0
	str r1, [r3, #96]
	mov r0, #1
	b _0804996A
_08049960:
	.4byte 0xFFFFFBFF
_08049964:
	.4byte 0xFFFDFFFF
_08049968:
	mov r0, #0
_0804996A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049934

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049970
sub_08049970: @ 0x08049970
	push {lr}
	add r3, r0, #0
	ldr r2, [r3, #92]
	mov r0, #128
	lsl r0, r0, #4
	and r0, r0, r2
	cmp r0, #0
	beq _080499A4
	ldr r1, [r3, #96]
	mov r0, #128
	lsl r0, r0, #12
	and r0, r0, r1
	cmp r0, #0
	beq _080499A4
	ldr r0, _0804999C  @ =0xFFFFF7FF
	and r2, r2, r0
	str r2, [r3, #92]
	ldr r0, _080499A0  @ =0xFFFDFFFF
	and r1, r1, r0
	str r1, [r3, #96]
	mov r0, #1
	b _080499A6
_0804999C:
	.4byte 0xFFFFF7FF
_080499A0:
	.4byte 0xFFFDFFFF
_080499A4:
	mov r0, #0
_080499A6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049970

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080499AC
sub_080499AC: @ 0x080499AC
	push {lr}
	ldr r1, _080499D0  @ =0x03001924
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r0, r0, #61
	ldrb r2, [r0]
	cmp r1, r2
	beq _080499D8
	ldr r0, _080499D4  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldrb r0, [r0, #11]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, r2
	beq _080499D8
	mov r0, #0
	b _080499DA
_080499D0:
	.4byte 0x03001924
_080499D4:
	.4byte gUnknown_030019AC
_080499D8:
	mov r0, #1
_080499DA:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080499AC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080499E0
sub_080499E0: @ 0x080499E0
	push {lr}
	ldr r1, _08049A04  @ =gUnknown_030019AC
	ldr r1, [r1]
	ldrb r1, [r1, #11]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r0, r0, #61
	ldrb r2, [r0]
	cmp r1, r2
	beq _08049A0C
	ldr r0, _08049A08  @ =0x03001924
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, r2
	beq _08049A0C
	mov r0, #1
	b _08049A0E
_08049A04:
	.4byte gUnknown_030019AC
_08049A08:
	.4byte 0x03001924
_08049A0C:
	mov r0, #0
_08049A0E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080499E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049A14
sub_08049A14: @ 0x08049A14
	push {r4,lr}
	add r3, r0, #0
	ldr r1, _08049A44  @ =gUnknown_030019AC
	ldr r0, [r1]
	ldr r2, [r3, #36]
	ldr r0, [r0, #36]
	add r4, r1, #0
	cmp r2, r0
	ble _08049A2E
	sub r1, r2, r0
	ldr r0, _08049A48  @ =0x00001FFF
	cmp r1, r0
	ble _08049A50
_08049A2E:
	ldr r0, [r4]
	ldr r1, [r3, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	blt _08049A50
	sub r1, r1, r0
	ldr r0, _08049A4C  @ =0x00003FFF
	cmp r1, r0
	bgt _08049A50
	mov r0, #1
	b _08049A52
_08049A44:
	.4byte gUnknown_030019AC
_08049A48:
	.4byte 0x00001FFF
_08049A4C:
	.4byte 0x00003FFF
_08049A50:
	mov r0, #0
_08049A52:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049A14

	THUMB_FUNC_START sub_08049A58
sub_08049A58: @ 0x08049A58
	push {r4,lr}
	add r3, r0, #0
	ldr r1, _08049A88  @ =gUnknown_030019AC
	ldr r0, [r1]
	ldr r2, [r3, #36]
	ldr r0, [r0, #36]
	add r4, r1, #0
	cmp r2, r0
	ble _08049A72
	sub r1, r2, r0
	ldr r0, _08049A8C  @ =0x00001FFF
	cmp r1, r0
	ble _08049A94
_08049A72:
	ldr r0, [r4]
	ldr r1, [r3, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _08049A94
	sub r1, r0, r1
	ldr r0, _08049A90  @ =0x00003FFF
	cmp r1, r0
	bgt _08049A94
	mov r0, #1
	b _08049A96
_08049A88:
	.4byte gUnknown_030019AC
_08049A8C:
	.4byte 0x00001FFF
_08049A90:
	.4byte 0x00003FFF
_08049A94:
	mov r0, #0
_08049A96:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049A58

	THUMB_FUNC_START sub_08049A9C
sub_08049A9C: @ 0x08049A9C
	push {r4,lr}
	add r3, r0, #0
	ldr r1, _08049AD0  @ =gUnknown_030019AC
	ldr r0, [r1]
	ldr r2, [r3, #36]
	ldr r0, [r0, #36]
	add r4, r1, #0
	cmp r2, r0
	ble _08049AB6
	sub r1, r2, r0
	ldr r0, _08049AD4  @ =0x00001FFF
	cmp r1, r0
	ble _08049AD8
_08049AB6:
	ldr r0, [r4]
	ldr r1, [r3, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	blt _08049AD8
	sub r1, r1, r0
	mov r0, #128
	lsl r0, r0, #7
	cmp r1, r0
	ble _08049AD8
	mov r0, #1
	b _08049ADA
	.byte 0x00
	.byte 0x00
_08049AD0:
	.4byte gUnknown_030019AC
_08049AD4:
	.4byte 0x00001FFF
_08049AD8:
	mov r0, #0
_08049ADA:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049A9C

	THUMB_FUNC_START sub_08049AE0
sub_08049AE0: @ 0x08049AE0
	push {r4,lr}
	add r3, r0, #0
	ldr r1, _08049B14  @ =gUnknown_030019AC
	ldr r0, [r1]
	ldr r2, [r3, #36]
	ldr r0, [r0, #36]
	add r4, r1, #0
	cmp r2, r0
	ble _08049AFA
	sub r1, r2, r0
	ldr r0, _08049B18  @ =0x00001FFF
	cmp r1, r0
	ble _08049B1C
_08049AFA:
	ldr r0, [r4]
	ldr r1, [r3, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _08049B1C
	sub r1, r0, r1
	mov r0, #128
	lsl r0, r0, #7
	cmp r1, r0
	ble _08049B1C
	mov r0, #1
	b _08049B1E
	.byte 0x00
	.byte 0x00
_08049B14:
	.4byte gUnknown_030019AC
_08049B18:
	.4byte 0x00001FFF
_08049B1C:
	mov r0, #0
_08049B1E:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049AE0

	THUMB_FUNC_START sub_08049B24
sub_08049B24: @ 0x08049B24
	push {lr}
	add r3, r0, #0
	ldr r0, _08049B58  @ =gUnknown_030019AC
	ldr r2, [r0]
	ldr r1, [r2, #32]
	ldr r0, [r3, #32]
	cmp r1, r0
	ble _08049B60
	ldr r0, [r3, #36]
	ldr r1, _08049B5C  @ =0xFFFFF000
	add r0, r0, r1
	ldr r1, [r2, #36]
	cmp r1, r0
	bne _08049B60
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08049B60
	mov r0, #1
	b _08049B62
	.byte 0x00
	.byte 0x00
_08049B58:
	.4byte gUnknown_030019AC
_08049B5C:
	.4byte 0xFFFFF000
_08049B60:
	mov r0, #0
_08049B62:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049B24

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049B68
sub_08049B68: @ 0x08049B68
	push {lr}
	add r3, r0, #0
	ldr r0, _08049B9C  @ =gUnknown_030019AC
	ldr r2, [r0]
	ldr r1, [r3, #32]
	ldr r0, [r2, #32]
	cmp r1, r0
	blt _08049BA4
	ldr r0, [r3, #36]
	ldr r1, _08049BA0  @ =0xFFFFF000
	add r0, r0, r1
	ldr r1, [r2, #36]
	cmp r1, r0
	bne _08049BA4
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08049BA4
	mov r0, #1
	b _08049BA6
	.byte 0x00
	.byte 0x00
_08049B9C:
	.4byte gUnknown_030019AC
_08049BA0:
	.4byte 0xFFFFF000
_08049BA4:
	mov r0, #0
_08049BA6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049B68

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049BAC
sub_08049BAC: @ 0x08049BAC
	push {lr}
	bl sub_080044CC
	lsl r0, r0, #24
	cmp r0, #0
	beq _08049BBC
	mov r0, #0
	b _08049BBE
_08049BBC:
	mov r0, #1
_08049BBE:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049BAC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049BC4
sub_08049BC4: @ 0x08049BC4
	push {r4,lr}
	add r4, r0, #0
	mov r2, #8
	ldrsh r0, [r1, r2]
	bl sub_08040EE8
	lsl r0, r0, #24
	asr r1, r0, #24
	cmp r1, #0
	blt _08049C10
	ldr r2, _08049C04  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldr r0, [r0, #32]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	asr r0, r0, #8
	add r1, r0, #0
	add r1, r1, #8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08049C08
	cmp r1, #4
	ble _08049C10
_08049C00:
	mov r0, #1
	b _08049C12
_08049C04:
	.4byte gUnknown_03001940
_08049C08:
	mov r0, #4
	neg r0, r0
	cmp r1, r0
	blt _08049C00
_08049C10:
	mov r0, #0
_08049C12:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049BC4

	THUMB_FUNC_START sub_08049C18
sub_08049C18: @ 0x08049C18
	push {lr}
	ldr r0, _08049C2C  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08049C30
	mov r0, #0
	b _08049C32
	.byte 0x00
	.byte 0x00
_08049C2C:
	.4byte gUnknown_03001990
_08049C30:
	mov r0, #1
_08049C32:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049C18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049C38
sub_08049C38: @ 0x08049C38
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08049C38

	THUMB_FUNC_START sub_08049C3C
sub_08049C3C: @ 0x08049C3C
	push {r4,r5,lr}
	sub sp, sp, #28
	add r4, r0, #0
	ldr r0, _08049C70  @ =gUnknown_03001990
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08049CB2
	ldr r0, _08049C74  @ =0x03001B68
	ldrb r5, [r0]
	cmp r5, #0
	beq _08049C80
	ldr r0, _08049C78  @ =0x03001B64
	ldrb r2, [r0]
	ldr r0, _08049C7C  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldr r1, [r4, #112]
	ldr r0, [r0, #112]
	cmp r1, r0
	ble _08049CB2
_08049C6C:
	mov r0, #1
	b _08049CB4
_08049C70:
	.4byte gUnknown_03001990
_08049C74:
	.4byte 0x03001B68
_08049C78:
	.4byte 0x03001B64
_08049C7C:
	.4byte gUnknown_03001940
_08049C80:
	ldr r2, [r4, #100]
	mov r0, #4
	ldrsh r3, [r2, r0]
	ldr r0, [r4, #32]
	add r0, r0, r3
	ldr r1, [r4, #36]
	mov r4, #192
	lsl r4, r4, #3
	add r1, r1, r4
	mov r4, #6
	ldrsh r2, [r2, r4]
	sub r2, r2, r3
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	str r5, [sp, #12]
	bl sub_08002580
	cmp r0, #0
	bne _08049C6C
_08049CB2:
	mov r0, #0
_08049CB4:
	add sp, sp, #28
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049C3C

	THUMB_FUNC_START sub_08049CBC
sub_08049CBC: @ 0x08049CBC
	push {r4,r5,lr}
	sub sp, sp, #28
	add r4, r0, #0
	ldr r0, _08049CEC  @ =gUnknown_03001990
	ldrb r0, [r0]
	cmp r0, #1
	bne _08049D2E
	ldr r0, _08049CF0  @ =0x03001B68
	ldrb r5, [r0]
	cmp r5, #0
	beq _08049CFC
	ldr r0, _08049CF4  @ =0x03001B64
	ldrb r2, [r0]
	ldr r0, _08049CF8  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldr r1, [r4, #112]
	ldr r0, [r0, #112]
	cmp r1, r0
	ble _08049D2E
_08049CE8:
	mov r0, #1
	b _08049D30
_08049CEC:
	.4byte gUnknown_03001990
_08049CF0:
	.4byte 0x03001B68
_08049CF4:
	.4byte 0x03001B64
_08049CF8:
	.4byte gUnknown_03001940
_08049CFC:
	ldr r2, [r4, #100]
	mov r0, #4
	ldrsh r3, [r2, r0]
	ldr r0, [r4, #32]
	add r0, r0, r3
	ldr r1, [r4, #36]
	mov r4, #128
	lsl r4, r4, #4
	add r1, r1, r4
	mov r4, #6
	ldrsh r2, [r2, r4]
	sub r2, r2, r3
	mov r3, #128
	lsl r3, r3, #1
	add r4, sp, #16
	str r4, [sp]
	add r4, sp, #20
	str r4, [sp, #4]
	add r4, sp, #24
	str r4, [sp, #8]
	str r5, [sp, #12]
	bl sub_08002580
	cmp r0, #0
	bne _08049CE8
_08049D2E:
	mov r0, #0
_08049D30:
	add sp, sp, #28
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049CBC

	THUMB_FUNC_START sub_08049D38
sub_08049D38: @ 0x08049D38
	push {lr}
	add r3, r1, #0
	ldr r2, _08049D60  @ =gUnknown_030019A4
	mov r1, #0
	strb r1, [r2]
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r2, #12
	ldrsh r0, [r3, r2]
	cmp r1, r0
	bge _08049D84
	ldr r0, _08049D64  @ =gUnknown_030019F4 
	ldrb r0, [r0]
	ldrb r1, [r3, #7]
	cmp r0, r1
	bne _08049D68
_08049D5A:
	mov r0, #1
	b _08049D86
	.byte 0x00
	.byte 0x00
_08049D60:
	.4byte gUnknown_030019A4
_08049D64:
	.4byte gUnknown_030019F4 
_08049D68:
	mov r2, #0
	ldr r3, _08049D8C  @ =gUnknown_03001A10
_08049D6C:
	lsl r0, r2, #16
	asr r2, r0, #16
	add r0, r2, r3
	ldrb r0, [r0]
	cmp r0, r1
	beq _08049D5A
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	asr r0, r0, #16
	cmp r0, #9
	ble _08049D6C
_08049D84:
	mov r0, #0
_08049D86:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08049D8C:
	.4byte gUnknown_03001A10
	THUMB_FUNC_END sub_08049D38

	THUMB_FUNC_START sub_08049D90
sub_08049D90: @ 0x08049D90
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08049D90

	THUMB_FUNC_START sub_08049D94
sub_08049D94: @ 0x08049D94
	ldr r0, _08049DA4  @ =0x03001934
	mov r1, #0
	ldrsb r1, [r0, r1]
	mvn r1, r1
	neg r0, r1
	orr r0, r0, r1
	lsr r0, r0, #31
	bx lr
_08049DA4:
	.4byte 0x03001934
	THUMB_FUNC_END sub_08049D94

	THUMB_FUNC_START sub_08049DA8
sub_08049DA8: @ 0x08049DA8
	push {lr}
	mov r2, #0
	ldr r0, _08049DC4  @ =0x03001934
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08049DBC
	mov r2, #1
_08049DBC:
	add r0, r2, #0
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08049DC4:
	.4byte 0x03001934
	THUMB_FUNC_END sub_08049DA8

	THUMB_FUNC_START sub_08049DC8
sub_08049DC8: @ 0x08049DC8
	push {lr}
	sub sp, sp, #16
	add r2, r0, #0
	ldr r0, _08049E18  @ =gUnknown_030019F4 
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08049E28
	ldr r0, [r2, #108]
	str r0, [sp]
	ldr r0, [r2, #116]
	str r0, [sp, #8]
	ldr r0, [r2, #112]
	ldr r1, _08049E1C  @ =0xFFFFFF00
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r2, #120]
	str r0, [sp, #12]
	ldr r2, _08049E20  @ =0xFFFFF900
	mov r0, sp
	mov r1, #0
	mov r3, #2
	bl sub_080066FC
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _08049E28
	cmp r0, #1
	bne _08049E12
	ldr r0, _08049E24  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #18
	orr r1, r1, r2
	str r1, [r0]
_08049E12:
	mov r0, #1
	b _08049E2A
	.byte 0x00
	.byte 0x00
_08049E18:
	.4byte gUnknown_030019F4 
_08049E1C:
	.4byte 0xFFFFFF00
_08049E20:
	.4byte 0xFFFFF900
_08049E24:
	.4byte gUnknown_030019A0
_08049E28:
	mov r0, #0
_08049E2A:
	add sp, sp, #16
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049DC8

	THUMB_FUNC_START sub_08049E30
sub_08049E30: @ 0x08049E30
	push {r4,lr}
	sub sp, sp, #16
	add r3, r0, #0
	ldr r0, _08049E7C  @ =gUnknown_030019F4 
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08049E88
	ldr r2, [r3, #104]
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r1, [r3, #32]
	add r0, r1, r0
	str r0, [sp]
	mov r4, #6
	ldrsh r0, [r2, r4]
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r3, #112]
	ldr r1, _08049E80  @ =0xFFFFFF00
	add r0, r0, r1
	str r0, [sp, #4]
	mov r4, #2
	ldrsh r1, [r2, r4]
	ldr r0, [r3, #36]
	add r0, r0, r1
	str r0, [sp, #12]
	ldr r2, _08049E84  @ =0xFFFFF900
	mov r0, sp
	mov r1, #0
	mov r3, #2
	bl sub_080066FC
	cmp r0, #0
	bne _08049E88
	mov r0, #1
	b _08049E8A
_08049E7C:
	.4byte gUnknown_030019F4 
_08049E80:
	.4byte 0xFFFFFF00
_08049E84:
	.4byte 0xFFFFF900
_08049E88:
	mov r0, #0
_08049E8A:
	add sp, sp, #16
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049E30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049E94
sub_08049E94: @ 0x08049E94
	push {lr}
	sub sp, sp, #16
	ldr r1, [r0, #108]
	str r1, [sp]
	ldr r1, [r0, #116]
	str r1, [sp, #8]
	ldr r1, [r0, #112]
	str r1, [sp, #4]
	ldr r0, [r0, #120]
	str r0, [sp, #12]
	ldr r2, _08049EBC  @ =0xFFFFFB00
	mov r0, sp
	mov r1, #0
	mov r3, #2
	bl sub_080066FC
	cmp r0, #0
	bne _08049EC0
	mov r0, #0
	b _08049EC2
_08049EBC:
	.4byte 0xFFFFFB00
_08049EC0:
	mov r0, #1
_08049EC2:
	add sp, sp, #16
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049E94

	THUMB_FUNC_START sub_08049EC8
sub_08049EC8: @ 0x08049EC8
	push {lr}
	sub sp, sp, #12
	ldr r1, [r0, #76]
	cmp r1, #0
	bne _08049F00
	ldr r0, _08049EFC  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	sub r0, r0, #244
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #43
	bhi _08049F00
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #117
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #1
	b _08049F02
	.byte 0x00
	.byte 0x00
_08049EFC:
	.4byte gUnknown_030019AC
_08049F00:
	mov r0, #0
_08049F02:
	add sp, sp, #12
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049EC8

	THUMB_FUNC_START sub_08049F08
sub_08049F08: @ 0x08049F08
	push {lr}
	add r1, r0, #0
	mov r0, #15
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08049F18
	mov r0, #0
	b _08049F1E
_08049F18:
	mov r0, #0
	strb r0, [r1, #15]
	mov r0, #1
_08049F1E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049F08

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049F24
sub_08049F24: @ 0x08049F24
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08049F24

	THUMB_FUNC_START sub_08049F28
sub_08049F28: @ 0x08049F28
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08049F28

	THUMB_FUNC_START sub_08049F2C
sub_08049F2C: @ 0x08049F2C
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08049F2C

	THUMB_FUNC_START sub_08049F30
sub_08049F30: @ 0x08049F30
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08049F30

	THUMB_FUNC_START sub_08049F34
sub_08049F34: @ 0x08049F34
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08049F34

	THUMB_FUNC_START sub_08049F38
sub_08049F38: @ 0x08049F38
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08049F38

	THUMB_FUNC_START sub_08049F3C
sub_08049F3C: @ 0x08049F3C
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08049F3C

	THUMB_FUNC_START sub_08049F40
sub_08049F40: @ 0x08049F40
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08049F40

	THUMB_FUNC_START sub_08049F44
sub_08049F44: @ 0x08049F44
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08049F44

	THUMB_FUNC_START sub_08049F48
sub_08049F48: @ 0x08049F48
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08049F48

	THUMB_FUNC_START sub_08049F4C
sub_08049F4C: @ 0x08049F4C
	push {lr}
	ldr r1, _08049F5C  @ =0x03001978
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08049F60
	mov r0, #0
	b _08049F66
_08049F5C:
	.4byte 0x03001978
_08049F60:
	mov r0, #0
	strb r0, [r1]
	mov r0, #1
_08049F66:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049F4C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049F6C
sub_08049F6C: @ 0x08049F6C
	push {r4,lr}
	add r2, r0, #0
	ldr r0, _08049FAC  @ =0x03001C90
	add r1, r2, #0
	add r1, r1, #61
	ldrb r1, [r1]
	add r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08049FB8
	mov r4, #0
	strb r4, [r1]
	ldr r1, _08049FB0  @ =gUnknown_080B5300
	ldr r3, _08049FB4  @ =0x03001B6C
	ldrb r0, [r3]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #36]
	ldr r0, [r2, #16]
	str r0, [r2, #32]
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #9
	bls _08049FA6
	strb r4, [r3]
_08049FA6:
	mov r0, #1
	b _08049FBA
	.byte 0x00
	.byte 0x00
_08049FAC:
	.4byte 0x03001C90
_08049FB0:
	.4byte gUnknown_080B5300
_08049FB4:
	.4byte 0x03001B6C
_08049FB8:
	mov r0, #0
_08049FBA:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049F6C

	THUMB_FUNC_START sub_08049FC0
sub_08049FC0: @ 0x08049FC0
	push {lr}
	ldr r0, _08049FD0  @ =0x03001A50
	ldrb r0, [r0]
	cmp r0, #1
	bne _08049FD4
	mov r0, #0
	b _08049FD6
	.byte 0x00
	.byte 0x00
_08049FD0:
	.4byte 0x03001A50
_08049FD4:
	mov r0, #1
_08049FD6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049FC0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08049FDC
sub_08049FDC: @ 0x08049FDC
	push {lr}
	ldrh r0, [r0]
	cmp r0, #161
	bne _08049FF4
	ldr r0, _08049FF0  @ =0x03001A50
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A004
	mov r0, #1
	b _0804A006
_08049FF0:
	.4byte 0x03001A50
_08049FF4:
	ldr r0, _0804A000  @ =0x03001A50
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804A004
	mov r0, #1
	b _0804A006
_0804A000:
	.4byte 0x03001A50
_0804A004:
	mov r0, #0
_0804A006:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08049FDC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A00C
sub_0804A00C: @ 0x0804A00C
	push {lr}
	add r2, r0, #0
	ldr r0, _0804A03C  @ =0x03001A50
	ldrb r0, [r0]
	cmp r0, #4
	bne _0804A048
	mov r1, #50
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0804A02A
	ldr r0, [r2, #36]
	mov r1, #224
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [r2, #36]
_0804A02A:
	ldr r0, [r2, #36]
	ldr r1, _0804A040  @ =0xFFFFF800
	and r0, r0, r1
	ldr r1, _0804A044  @ =0xFFFFFF00
	add r0, r0, r1
	str r0, [r2, #36]
	mov r0, #1
	b _0804A04A
	.byte 0x00
	.byte 0x00
_0804A03C:
	.4byte 0x03001A50
_0804A040:
	.4byte 0xFFFFF800
_0804A044:
	.4byte 0xFFFFFF00
_0804A048:
	mov r0, #0
_0804A04A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A00C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A050
sub_0804A050: @ 0x0804A050
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #36]
	bl sub_0804F1C0
	cmp r0, #0
	bne _0804A062
	mov r0, #0
	b _0804A070
_0804A062:
	ldr r0, [r4, #36]
	ldr r1, _0804A078  @ =0xFFFFF800
	and r0, r0, r1
	ldr r1, _0804A07C  @ =0xFFFFFF00
	add r0, r0, r1
	str r0, [r4, #36]
	mov r0, #1
_0804A070:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0804A078:
	.4byte 0xFFFFF800
_0804A07C:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0804A050

	THUMB_FUNC_START sub_0804A080
sub_0804A080: @ 0x0804A080
	push {lr}
	ldr r1, _0804A094  @ =0xFFFFF600
	mov r2, #0
	bl sub_0800456C
	cmp r0, #0
	beq _0804A098
	mov r0, #0
	b _0804A09A
	.byte 0x00
	.byte 0x00
_0804A094:
	.4byte 0xFFFFF600
_0804A098:
	mov r0, #1
_0804A09A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A080

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A0A0
sub_0804A0A0: @ 0x0804A0A0
	push {lr}
	mov r1, #208
	lsl r1, r1, #4
	mov r2, #0
	bl sub_0800456C
	cmp r0, #0
	beq _0804A0B4
	mov r0, #0
	b _0804A0B6
_0804A0B4:
	mov r0, #1
_0804A0B6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A0A0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A0BC
sub_0804A0BC: @ 0x0804A0BC
	push {lr}
	add r2, r0, #0
	ldr r0, _0804A0F4  @ =gNextLevelInLevelTable
	mov r1, #18
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bne _0804A100
	ldr r0, _0804A0F8  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _0804A100
	ldr r0, [r2, #36]
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	asr r0, r0, #8
	ldrb r1, [r1, #2]
	add r0, r0, r1
	ldr r1, _0804A0FC  @ =gUnknown_030009E0
	ldrh r1, [r1]
	cmp r0, r1
	ble _0804A100
	mov r0, #1
	b _0804A102
	.byte 0x00
	.byte 0x00
_0804A0F4:
	.4byte gNextLevelInLevelTable
_0804A0F8:
	.4byte gUnknown_03001A1C
_0804A0FC:
	.4byte gUnknown_030009E0
_0804A100:
	mov r0, #0
_0804A102:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A0BC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A108
sub_0804A108: @ 0x0804A108
	push {lr}
	add r1, r0, #0
	ldr r0, _0804A128  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r0, r2]
	cmp r0, #2
	bne _0804A122
	add r0, r1, #0
	bl sub_0802CD34
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804A12C
_0804A122:
	mov r0, #0
	b _0804A12E
	.byte 0x00
	.byte 0x00
_0804A128:
	.4byte gNextLevelInLevelTable
_0804A12C:
	mov r0, #1
_0804A12E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A108

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A134
sub_0804A134: @ 0x0804A134
	push {lr}
	add r1, r0, #0
	ldr r0, _0804A154  @ =gNextLevelInLevelTable
	mov r2, #18
	ldrsh r0, [r0, r2]
	cmp r0, #2
	bne _0804A14E
	add r0, r1, #0
	bl sub_0802CF20
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804A158
_0804A14E:
	mov r0, #0
	b _0804A15A
	.byte 0x00
	.byte 0x00
_0804A154:
	.4byte gNextLevelInLevelTable
_0804A158:
	mov r0, #1
_0804A15A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A134

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A160
sub_0804A160: @ 0x0804A160
	push {lr}
	ldr r0, _0804A174  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	bne _0804A178
	mov r0, #0
	b _0804A17A
_0804A174:
	.4byte gUnknown_030019A0
_0804A178:
	mov r0, #1
_0804A17A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A160

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A180
sub_0804A180: @ 0x0804A180
	push {lr}
	ldr r2, _0804A194  @ =gUnknown_030019A0
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #20
	and r0, r0, r1
	cmp r0, #0
	bne _0804A198
	mov r0, #0
	b _0804A1A0
_0804A194:
	.4byte gUnknown_030019A0
_0804A198:
	ldr r0, _0804A1A4  @ =0xF7FFFFFF
	and r1, r1, r0
	str r1, [r2]
	mov r0, #1
_0804A1A0:
	pop {r1}
	bx r1
_0804A1A4:
	.4byte 0xF7FFFFFF
	THUMB_FUNC_END sub_0804A180

	THUMB_FUNC_START sub_0804A1A8
sub_0804A1A8: @ 0x0804A1A8
	push {lr}
	ldr r2, _0804A1BC  @ =gUnknown_030019A0
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #19
	and r0, r0, r1
	cmp r0, #0
	bne _0804A1C0
	mov r0, #0
	b _0804A1C8
_0804A1BC:
	.4byte gUnknown_030019A0
_0804A1C0:
	ldr r0, _0804A1CC  @ =0xFBFFFFFF
	and r1, r1, r0
	str r1, [r2]
	mov r0, #1
_0804A1C8:
	pop {r1}
	bx r1
_0804A1CC:
	.4byte 0xFBFFFFFF
	THUMB_FUNC_END sub_0804A1A8

	THUMB_FUNC_START sub_0804A1D0
sub_0804A1D0: @ 0x0804A1D0
	push {lr}
	ldr r1, [r0, #32]
	asr r1, r1, #8
	ldr r0, _0804A1E8  @ =gSpriteHorizontalOffset
	mov r2, #0
	ldrsh r0, [r0, r2]
	add r0, r0, #115
	cmp r1, r0
	bgt _0804A1EC
	mov r0, #0
	b _0804A1EE
	.byte 0x00
	.byte 0x00
_0804A1E8:
	.4byte gSpriteHorizontalOffset
_0804A1EC:
	mov r0, #1
_0804A1EE:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A1D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A1F4
sub_0804A1F4: @ 0x0804A1F4
	push {lr}
	ldr r1, [r0, #32]
	asr r1, r1, #8
	ldr r0, _0804A20C  @ =gSpriteHorizontalOffset
	mov r2, #0
	ldrsh r0, [r0, r2]
	add r0, r0, #115
	cmp r1, r0
	blt _0804A210
	mov r0, #0
	b _0804A212
	.byte 0x00
	.byte 0x00
_0804A20C:
	.4byte gSpriteHorizontalOffset
_0804A210:
	mov r0, #1
_0804A212:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A1F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A218
sub_0804A218: @ 0x0804A218
	push {r4-r6,lr}
	add r5, r1, #0
	add r6, r3, #0
	ldr r1, [r0, #108]
	ldr r3, [r0, #116]
	ldr r4, [r0, #112]
	ldr r0, [r0, #120]
	cmp r2, r1
	ble _0804A23C
	cmp r5, r3
	bge _0804A23C
	cmp r6, r0
	bge _0804A23C
	ldr r0, [sp, #16]
	cmp r0, r4
	ble _0804A23C
	mov r0, #1
	b _0804A23E
_0804A23C:
	mov r0, #0
_0804A23E:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A218

	THUMB_FUNC_START sub_0804A244
sub_0804A244: @ 0x0804A244
	ldr r2, _0804A258  @ =0x03001718
	ldr r1, [r2]
	ldr r0, _0804A25C  @ =0x41C64E6D
	mul r0, r1, r0
	ldr r1, _0804A260  @ =0x00003039
	add r0, r0, r1
	str r0, [r2]
	lsl r0, r0, #1
	lsr r0, r0, #17
	bx lr
_0804A258:
	.4byte 0x03001718
_0804A25C:
	.4byte 0x41C64E6D
_0804A260:
	.4byte 0x00003039
	THUMB_FUNC_END sub_0804A244

	THUMB_FUNC_START sub_0804A264
sub_0804A264: @ 0x0804A264
	push {r4,r5,lr}
	sub sp, sp, #16
	add r4, r0, #0
	add r5, r1, #0
	ldr r0, [r4, #108]
	str r0, [sp]
	ldr r0, [r4, #116]
	str r0, [sp, #8]
	ldr r0, [r4, #112]
	str r0, [sp, #4]
	ldr r0, [r4, #120]
	str r0, [sp, #12]
	mov r1, #224
	lsl r1, r1, #3
	cmp r5, #0
	bge _0804A286
	ldr r1, _0804A2B4  @ =0xFFFFF900
_0804A286:
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	bne _0804A2A8
	ldr r0, [r4, #32]
	add r0, r0, r5
	str r0, [r4, #32]
	ldr r0, [r4, #92]
	mov r1, #241
	neg r1, r1
	and r0, r0, r1
	str r0, [r4, #92]
_0804A2A8:
	mov r0, #0
	add sp, sp, #16
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0804A2B4:
	.4byte 0xFFFFF900
	THUMB_FUNC_END sub_0804A264

	THUMB_FUNC_START sub_0804A2B8
sub_0804A2B8: @ 0x0804A2B8
	push {r4,r5,lr}
	sub sp, sp, #16
	add r4, r0, #0
	add r5, r1, #0
	ldr r0, [r4, #108]
	str r0, [sp]
	ldr r0, [r4, #116]
	str r0, [sp, #8]
	ldr r0, [r4, #112]
	str r0, [sp, #4]
	ldr r0, [r4, #120]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #0
	add r2, r5, #0
	mov r3, #0
	bl sub_080066FC
	mov r1, #127
	and r1, r1, r0
	cmp r1, #0
	beq _0804A2E8
	mov r0, #0
	b _0804A2FA
_0804A2E8:
	ldr r0, [r4, #36]
	add r0, r0, r5
	str r0, [r4, #36]
	ldr r0, [r4, #92]
	mov r1, #241
	neg r1, r1
	and r0, r0, r1
	str r0, [r4, #92]
	mov r0, #1
_0804A2FA:
	add sp, sp, #16
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A2B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A304
sub_0804A304: @ 0x0804A304
	push {r4-r7,lr}
	add r5, r0, #0
	add r6, r1, #0
	lsl r2, r2, #16
	lsr r4, r2, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r12, r3
	ldr r0, _0804A360  @ =gUnknown_030019AC
	ldr r2, [r0]
	ldr r1, [r2, #32]
	asr r1, r1, #8
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r3, r1, r0
	ldr r0, [r2, #36]
	asr r1, r0, #8
	mov r7, #48
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _0804A336
	neg r0, r0
_0804A336:
	cmp r0, #255
	ble _0804A33E
	lsl r0, r4, #17
	lsr r4, r0, #16
_0804A33E:
	cmp r1, r6
	ble _0804A36E
	sub r1, r1, r6
	mov r2, r12
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r1, r0
	bge _0804A36E
	lsl r0, r4, #16
	asr r1, r0, #16
	sub r0, r3, r5
	cmp r0, #0
	blt _0804A364
	cmp r0, r1
	blt _0804A36A
	b _0804A36E
	.byte 0x00
	.byte 0x00
_0804A360:
	.4byte gUnknown_030019AC
_0804A364:
	sub r0, r5, r3
	cmp r0, r1
	bge _0804A36E
_0804A36A:
	mov r0, #1
	b _0804A39A
_0804A36E:
	ldr r0, _0804A380  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0804A384
	mov r0, #0
	b _0804A39A
	.byte 0x00
	.byte 0x00
_0804A380:
	.4byte gNextLevelInLevelTable
_0804A384:
	lsl r2, r4, #16
	asr r2, r2, #16
	mov r7, r12
	lsl r3, r7, #16
	asr r3, r3, #16
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0804F038
	lsl r0, r0, #24
	lsr r0, r0, #24
_0804A39A:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A304

	THUMB_FUNC_START sub_0804A3A0
sub_0804A3A0: @ 0x0804A3A0
	push {r4-r7,lr}
	add r4, r0, #0
	add r5, r1, #0
	lsl r2, r2, #16
	lsr r7, r2, #16
	lsl r3, r3, #16
	lsr r6, r3, #16
	ldr r0, _0804A3E8  @ =gUnknown_030019AC
	ldr r2, [r0]
	ldr r1, [r2, #32]
	asr r1, r1, #8
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r3, r1, r0
	ldr r0, [r2, #36]
	asr r0, r0, #8
	cmp r0, r5
	ble _0804A3F2
	sub r0, r0, r5
	lsl r1, r6, #16
	asr r2, r1, #16
	add r6, r1, #0
	cmp r0, r2
	bge _0804A3F6
	lsl r0, r7, #16
	asr r1, r0, #16
	sub r0, r3, r4
	cmp r0, #0
	blt _0804A3EC
	cmp r0, r1
	blt _0804A3F2
	b _0804A3F6
	.byte 0x00
	.byte 0x00
_0804A3E8:
	.4byte gUnknown_030019AC
_0804A3EC:
	sub r0, r4, r3
	cmp r0, r1
	bge _0804A3F6
_0804A3F2:
	mov r0, #0
	b _0804A41E
_0804A3F6:
	ldr r0, _0804A408  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0804A40C
	mov r0, #1
	b _0804A41E
	.byte 0x00
	.byte 0x00
_0804A408:
	.4byte gNextLevelInLevelTable
_0804A40C:
	lsl r2, r7, #16
	asr r2, r2, #16
	asr r3, r6, #16
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0804F0C4
	lsl r0, r0, #24
	lsr r0, r0, #24
_0804A41E:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804A3A0

	THUMB_FUNC_START sub_0804A424
sub_0804A424: @ 0x0804A424
	push {lr}
	mov r12, r0
	ldr r0, [r0, #32]
	mov r1, r12
	str r0, [r1, #24]
	ldr r0, [r1, #36]
	str r0, [r1, #28]
	mov r0, #0
	mov r1, #0
	mov r2, r12
	strh r1, [r2, #50]
	strh r1, [r2, #48]
	strb r0, [r2, #2]
	strh r1, [r2, #8]
	mov r0, r12
	add r0, r0, #84
	strh r1, [r0]
	str r1, [r2, #80]
	ldrb r1, [r2, #12]
	mov r0, #254
	and r0, r0, r1
	strb r0, [r2, #12]
	ldrb r1, [r2, #2]
	mov r3, r12
	add r3, r3, #136
	ldr r2, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r0, #1]
	mov r0, r12
	add r0, r0, #60
	strb r1, [r0]
	add r0, r0, #67
	ldrb r0, [r0]
	lsl r0, r0, #27
	cmp r0, #0
	bge _0804A48E
	mov r0, r12
	ldr r1, [r0, #32]
	asr r1, r1, #8
	ldrb r2, [r0, #2]
	ldr r3, [r3]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _0804A4A6
_0804A48E:
	mov r1, r12
	ldr r2, [r1, #32]
	asr r2, r2, #8
	ldrb r1, [r1, #2]
	ldr r3, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	mov r1, #2
	ldrsb r1, [r0, r1]
	add r1, r1, r2
_0804A4A6:
	mov r3, r12
	add r3, r3, #126
	lsl r1, r1, #23
	lsr r1, r1, #23
	ldrh r2, [r3]
	ldr r0, _0804A4DC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3]
	mov r2, r12
	ldr r1, [r2, #36]
	ldrb r2, [r2, #2]
	mov r0, r12
	add r0, r0, #136
	ldr r3, [r0]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	asr r1, r1, #8
	ldrb r0, [r0, #3]
	add r1, r1, r0
	mov r0, r12
	add r0, r0, #124
	strb r1, [r0]
	pop {r0}
	bx r0
_0804A4DC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0804A424

	THUMB_FUNC_START sub_0804A4E0
sub_0804A4E0: @ 0x0804A4E0
	push {r4-r6,lr}
	add r3, r0, #0
	ldr r0, _0804A554  @ =gUnknown_03001A00
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A500
	ldr r0, _0804A558  @ =0x03001968
	ldr r0, [r0]
	ldrh r1, [r3]
	cmp r0, r1
	beq _0804A500
	ldrb r1, [r3, #12]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0804A578
_0804A500:
	add r1, r3, #0
	add r1, r1, #60
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r6, r1, #0
	cmp r5, #0
	bne _0804A578
	ldr r0, [r3, #92]
	mov r1, #128
	lsl r1, r1, #23
	and r0, r0, r1
	cmp r0, #0
	bne _0804A526
	ldrb r0, [r3, #2]
	add r0, r0, #1
	strb r0, [r3, #2]
_0804A526:
	ldrb r2, [r3, #3]
	ldrb r0, [r3, #2]
	add r4, r3, #0
	add r4, r4, #136
	cmp r0, r2
	bcc _0804A568
	ldrb r1, [r3, #12]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0804A542
	mov r0, #4
	orr r0, r0, r1
	strb r0, [r3, #12]
_0804A542:
	ldr r0, [r4]
	ldr r0, [r0, #8]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0804A55C
	strb r5, [r3, #2]
	b _0804A560
	.byte 0x00
	.byte 0x00
_0804A554:
	.4byte gUnknown_03001A00
_0804A558:
	.4byte 0x03001968
_0804A55C:
	sub r0, r2, #1
	strb r0, [r3, #2]
_0804A560:
	ldrb r1, [r3, #12]
	mov r0, #1
	orr r0, r0, r1
	strb r0, [r3, #12]
_0804A568:
	ldrb r1, [r3, #2]
	ldr r2, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r6]
_0804A578:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804A4E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A580
sub_0804A580: @ 0x0804A580
	push {r4,lr}
	add r2, r0, #0
	add r0, r0, #160
	ldr r3, [r0]
	ldr r0, [r2, #32]
	str r0, [r2, #40]
	ldr r0, [r2, #36]
	str r0, [r2, #44]
	mov r1, #26
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _0804A5D2
	ldr r0, _0804A5C8  @ =gUnknown_03001A1C
	ldr r0, [r0]
	ldr r1, _0804A5CC  @ =0x00101000
	and r0, r0, r1
	cmp r0, #0
	beq _0804A5D8
	ldrh r0, [r2]
	cmp r0, #49
	bhi _0804A5D0
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804A5F4
	ldrh r0, [r2, #8]
	ldr r1, [r3, #28]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	b _0804A5FE
	.byte 0x00
	.byte 0x00
_0804A5C8:
	.4byte gUnknown_03001A1C
_0804A5CC:
	.4byte 0x00101000
_0804A5D0:
	mov r0, #0
_0804A5D2:
	strh r0, [r2, #50]
	strh r0, [r2, #48]
	b _0804A62C
_0804A5D8:
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804A5F4
	ldrh r0, [r2, #8]
	ldr r1, [r3, #28]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	b _0804A5FE
_0804A5F4:
	ldrh r0, [r2, #8]
	ldr r1, [r3, #28]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
_0804A5FE:
	strh r0, [r2, #48]
	ldrh r0, [r2, #8]
	ldr r1, [r3, #32]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	strh r0, [r2, #50]
	ldrh r0, [r2, #8]
	add r0, r0, #1
	strh r0, [r2, #8]
	ldrh r1, [r2, #8]
	mov r4, #26
	ldrsh r0, [r3, r4]
	cmp r1, r0
	blt _0804A62C
	ldrb r0, [r2, #12]
	mov r1, #2
	orr r1, r1, r0
	strb r1, [r2, #12]
	ldrh r0, [r3, #26]
	sub r0, r0, #1
	strh r0, [r2, #8]
_0804A62C:
	ldrh r0, [r2, #54]
	ldrh r1, [r2, #48]
	add r0, r0, r1
	strh r0, [r2, #48]
	mov r4, #50
	ldrsh r1, [r2, r4]
	ldr r0, [r2, #80]
	add r0, r0, r1
	str r0, [r2, #80]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804A580

	THUMB_FUNC_START sub_0804A644
sub_0804A644: @ 0x0804A644
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r7, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r5, r3, #0
	lsl r4, r4, #16
	lsr r4, r4, #16
	lsl r6, r6, #24
	lsr r6, r6, #24
	lsl r5, r5, #24
	lsr r5, r5, #24
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08040F30
	mov r8, r0
	strh r4, [r7, #4]
	mov r0, #4
	ldrsh r1, [r7, r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #3
	ldr r1, [sp, #24]
	add r3, r1, r0
	mov r0, r8
	add r0, r0, #160
	str r3, [r0]
	add r2, r7, #0
	add r2, r2, #124
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	add r2, r2, #5
	lsl r5, r5, #4
	ldrb r1, [r2]
	mov r0, #15
	and r0, r0, r1
	orr r0, r0, r5
	strb r0, [r2]
	cmp r6, #0
	bne _0804A6B2
	add r1, r7, #0
	add r1, r1, #64
	mov r0, #0
	strb r0, [r1]
	sub r2, r2, #2
	ldrb r1, [r2]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	b _0804A6C4
_0804A6B2:
	add r1, r7, #0
	add r1, r1, #64
	mov r0, #1
	strb r0, [r1]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r0, [r2]
	mov r1, #16
	orr r0, r0, r1
_0804A6C4:
	strb r0, [r2]
	add r5, r7, #0
	add r5, r5, #136
	ldr r4, [r3, #4]
	str r4, [r5]
	add r1, r7, #0
	add r1, r1, #148
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r2, [r3]
	str r2, [r1]
	ldrh r0, [r7]
	cmp r0, #12
	beq _0804A6EC
	cmp r0, #22
	bne _0804A6FC
_0804A6EC:
	ldr r0, [r4, #12]
	ldrb r0, [r0, #11]
	strb r0, [r2, #1]
	ldr r1, [r1]
	ldr r0, [r5]
	ldr r0, [r0, #12]
	ldrh r0, [r0, #10]
	strb r0, [r1, #2]
_0804A6FC:
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r1, [r3]
	ldrb r0, [r3, #24]
	strb r0, [r1, #17]
	ldr r1, [r3]
	ldrb r0, [r3, #25]
	strb r0, [r1, #18]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, r8
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #44]
	cmp r1, #0
	beq _0804A73C
	add r0, r7, #0
	bl _call_via_r1
_0804A73C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804A644

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804A748
sub_0804A748: @ 0x0804A748
	push {r4-r6,lr}
	sub sp, sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #20]
	ldr r6, [sp, #24]
	lsl r2, r2, #24
	lsr r2, r2, #24
	lsl r3, r3, #24
	lsr r3, r3, #24
	lsl r1, r1, #16
	asr r1, r1, #16
	str r6, [sp]
	add r0, r4, #0
	bl sub_0804A644
	cmp r5, #0
	beq _0804A78C
	mov r0, #4
	ldrsh r1, [r4, r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #3
	add r0, r6, r0
	add r2, r4, #0
	add r2, r2, #132
	ldr r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r5, r0
	str r0, [r2]
_0804A78C:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804A748

	THUMB_FUNC_START sub_0804A794
sub_0804A794: @ 0x0804A794
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r0, #0
	ldr r1, _0804A804  @ =gUnknown_03001B84
	mov r8, r1
	ldr r2, _0804A808  @ =gUnknown_0300038B
	mov r9, r2
	ldr r1, _0804A80C  @ =gMainState
	mov r10, r1
	ldr r2, _0804A810  @ =gUnknown_03001B90
	mov r12, r2
	ldr r3, _0804A814  @ =gUnknown_03000368
	ldr r7, _0804A818  @ =gUnknown_03001BB0
	mov r6, #0
	ldr r5, _0804A81C  @ =gUnknown_03000380
	mov r4, #255
_0804A7BA:
	lsl r1, r0, #16
	asr r1, r1, #16
	lsl r0, r1, #2
	add r0, r0, r7
	str r6, [r0]
	add r2, r1, r5
	ldrb r0, [r2]
	orr r0, r0, r4
	strb r0, [r2]
	add r1, r1, #1
	lsl r1, r1, #16
	lsr r0, r1, #16
	asr r1, r1, #16
	cmp r1, #5
	ble _0804A7BA
	mov r1, #0
	mov r0, r8
	strb r1, [r0]
	ldr r2, _0804A820  @ =gUnknown_03001B8C
	strb r1, [r2]
	mov r0, r9
	strb r1, [r0]
	mov r2, r10
	ldr r0, [r2]
	cmp r0, #5
	beq _0804A7F2
	cmp r0, #2
	bne _0804A828
_0804A7F2:
	mov r0, r12
	strb r1, [r0]
	ldr r0, _0804A824  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #6
	orr r1, r1, r2
	str r1, [r0]
	b _0804A82E
_0804A804:
	.4byte gUnknown_03001B84
_0804A808:
	.4byte gUnknown_0300038B
_0804A80C:
	.4byte gMainState
_0804A810:
	.4byte gUnknown_03001B90
_0804A814:
	.4byte gUnknown_03000368
_0804A818:
	.4byte gUnknown_03001BB0
_0804A81C:
	.4byte gUnknown_03000380
_0804A820:
	.4byte gUnknown_03001B8C
_0804A824:
	.4byte gUnknown_03001A1C
_0804A828:
	mov r0, #1
	mov r1, r12
	strb r0, [r1]
_0804A82E:
	ldr r2, _0804A888  @ =gNextLevelInLevelTable
	mov r1, #18
	ldrsh r0, [r2, r1]
	lsl r0, r0, #3
	ldr r2, _0804A88C  @ =gMiniMarioActionMapMainLevelTable_080B53F4
	add r0, r0, r2
	ldr r1, _0804A890  @ =gUnknown_03000374
	str r0, [r1]
	mov r0, #0
	ldr r2, _0804A894  @ =gMiniMariosRescued_03001BA0
	strb r0, [r2]
	ldr r1, _0804A898  @ =gMiniMariosLost_03001BCC
	strb r0, [r1]
	ldr r2, _0804A89C  @ =gMiniMariosAliveInLevel_03001BC8
	strb r0, [r2]
	ldr r1, _0804A8A0  @ =gUnknown_03000396
	strb r0, [r1]
	ldr r2, _0804A8A4  @ =gUnknown_03000387
	strb r0, [r2]
	ldr r1, _0804A8A8  @ =gUnknown_03000394
	strb r0, [r1]
	mov r0, #1
	ldr r2, _0804A8AC  @ =gUnknown_03000395
	strb r0, [r2]
	mov r1, #0
	mov r0, #1
	strb r0, [r3, #8]
	strb r1, [r3, #9]
	strb r1, [r3, #10]
	strb r1, [r3, #11]
	ldr r0, _0804A8B0  @ =gUnknown_030019AC
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804A8B4
	ldr r0, [r1, #32]
	mov r1, #192
	lsl r1, r1, #4
	add r0, r0, r1
	b _0804A8BC
	.byte 0x00
	.byte 0x00
_0804A888:
	.4byte gNextLevelInLevelTable
_0804A88C:
	.4byte gMiniMarioActionMapMainLevelTable_080B53F4
_0804A890:
	.4byte gUnknown_03000374
_0804A894:
	.4byte gMiniMariosRescued_03001BA0
_0804A898:
	.4byte gMiniMariosLost_03001BCC
_0804A89C:
	.4byte gMiniMariosAliveInLevel_03001BC8
_0804A8A0:
	.4byte gUnknown_03000396
_0804A8A4:
	.4byte gUnknown_03000387
_0804A8A8:
	.4byte gUnknown_03000394
_0804A8AC:
	.4byte gUnknown_03000395
_0804A8B0:
	.4byte gUnknown_030019AC
_0804A8B4:
	ldr r0, [r1, #32]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r0, r2
_0804A8BC:
	str r0, [r3]
	ldr r1, _0804A8E0  @ =gUnknown_030019AC
	ldr r0, [r1]
	ldr r0, [r0, #36]
	str r0, [r3, #4]
	mov r2, #1
	neg r2, r2
	add r0, r2, #0
	ldr r1, _0804A8E4  @ =gUnknown_03000378
	strh r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804A8E0:
	.4byte gUnknown_030019AC
_0804A8E4:
	.4byte gUnknown_03000378
	THUMB_FUNC_END sub_0804A794
