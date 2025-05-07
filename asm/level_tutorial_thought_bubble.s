	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START update_level_tutorial_thought_bubble_0806D7EC
update_level_tutorial_thought_bubble_0806D7EC: @ 0x0806D7EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	ldr r4, _0806D8C4  @ =0x030006E8
	ldrb r0, [r4]
	cmp r0, #0
	beq _0806D808
	bl sub_08071CD4
	mov r0, #0
	strb r0, [r4]
_0806D808:
	ldr r0, _0806D8C8  @ =0x03001D70
	mov r12, r0
	mov r1, r12
	add r1, r1, #132
	mov r0, #0
	strh r0, [r1]
	mov r7, #0
	mov r6, #0
	ldr r4, _0806D8CC  @ =gUnknown_08B2D574
	ldr r5, _0806D8D0  @ =gNextLevelID
	mov r1, #0
	ldrsb r1, [r5, r1]
	add r1, r1, #1
	asr r1, r1, #1
	ldr r3, _0806D8D4  @ =gCurrentWorld
	mov r2, #0
	ldrsb r2, [r3, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r1, r0, #3
	add r0, r1, r4
	mov r8, r4
	mov r9, r5
	mov r10, r3
	ldrb r0, [r0]
	cmp r6, r0
	bcs _0806D89A
	mov r0, r8
	add r0, r0, #4
	mov r5, r12
	add r5, r5, #142
	add r4, r1, r0
	mov r0, r12
	add r0, r0, #144
	ldr r3, [r0]
_0806D850:
	ldr r0, [r4]
	lsl r1, r6, #2
	add r1, r1, r6
	lsl r1, r1, #2
	add r2, r1, r0
	ldr r0, [r2, #12]
	cmp r0, r3
	bhi _0806D874
	ldr r0, [r2, #8]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0806D870
	ldr r0, [r2, #16]
	cmp r0, r3
	bls _0806D874
_0806D870:
	strh r6, [r5]
	mov r7, #1
_0806D874:
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	mov r2, r9
	mov r1, #0
	ldrsb r1, [r2, r1]
	add r1, r1, #1
	asr r1, r1, #1
	mov r0, r10
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	bcc _0806D850
_0806D89A:
	cmp r7, #0
	bne _0806D8A0
	b _0806DA74
_0806D8A0:
	mov r6, #0
	ldr r0, _0806D8D0  @ =gNextLevelID
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r1, r1, #1
	asr r1, r1, #1
	ldr r0, _0806D8D4  @ =gCurrentWorld
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldr r3, _0806D8D8  @ =gUnknown_08B2D578
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	add r3, r0, r3
	ldr r0, _0806D8DC  @ =0x03001DFE
	ldrh r2, [r0]
	b _0806D8F0
_0806D8C4:
	.4byte 0x030006E8
_0806D8C8:
	.4byte 0x03001D70
_0806D8CC:
	.4byte gUnknown_08B2D574
_0806D8D0:
	.4byte gNextLevelID
_0806D8D4:
	.4byte gCurrentWorld
_0806D8D8:
	.4byte gUnknown_08B2D578
_0806D8DC:
	.4byte 0x03001DFE
_0806D8E0:
	mov r1, r12
	add r1, r1, #132
	ldrh r0, [r1]
	add r0, r0, #16
	strh r0, [r1]
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
_0806D8F0:
	ldr r1, [r3]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	bcc _0806D8E0
	mov r0, r12
	add r0, r0, #132
	ldrh r0, [r0]
	cmp r0, #0
	bne _0806D90C
	b _0806DA74
_0806D90C:
	mov r2, r9
	mov r1, #0
	ldrsb r1, [r2, r1]
	add r1, r1, #1
	asr r1, r1, #1
	mov r3, r10
	mov r2, #0
	ldrsb r2, [r3, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	mov r1, r8
	add r1, r1, #4
	add r0, r0, r1
	mov r1, r12
	add r1, r1, #142
	ldrh r1, [r1]
	ldr r2, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r2
	ldr r0, [r2, #8]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806D9B8
	mov r0, r12
	add r0, r0, #144
	ldr r1, [r2, #12]
	ldr r2, [r0]
	cmp r1, r2
	bne _0806D95A
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	mov r0, #1
	b _0806D9AC
_0806D95A:
	add r0, r1, #5
	cmp r0, r2
	bne _0806D96A
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	mov r0, #2
	b _0806D9AC
_0806D96A:
	add r0, r1, #0
	add r0, r0, #10
	cmp r0, r2
	bne _0806D97C
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	mov r0, #4
	b _0806D9AC
_0806D97C:
	add r0, r1, #0
	add r0, r0, #15
	cmp r0, r2
	bne _0806D998
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	ldr r0, _0806D994  @ =0x0000FFFB
	and r0, r0, r1
	mov r1, #8
	b _0806D9AC
	.byte 0x00
	.byte 0x00
_0806D994:
	.4byte 0x0000FFFB
_0806D998:
	add r0, r1, #0
	add r0, r0, #20
	cmp r0, r2
	bne _0806D9C0
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	ldr r0, _0806D9B4  @ =0x0000FFF7
	and r0, r0, r1
	mov r1, #16
_0806D9AC:
	orr r0, r0, r1
	strh r0, [r2]
	b _0806D9C0
	.byte 0x00
	.byte 0x00
_0806D9B4:
	.4byte 0x0000FFF7
_0806D9B8:
	mov r1, r12
	add r1, r1, #148
	mov r0, #19
	strh r0, [r1]
_0806D9C0:
	mov r0, r9
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r1, r1, #1
	asr r1, r1, #1
	mov r3, r10
	mov r2, #0
	ldrsb r2, [r3, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	mov r1, r8
	add r1, r1, #4
	add r0, r0, r1
	mov r1, r12
	add r1, r1, #142
	ldrh r1, [r1]
	ldr r2, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r4, r0, r2
	ldr r0, [r4, #8]
	mov r1, #6
	and r0, r0, r1
	cmp r0, #2
	bne _0806DA74
	mov r0, r12
	add r0, r0, #144
	ldr r1, [r4, #16]
	ldr r2, [r0]
	cmp r1, r2
	bne _0806DA14
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	ldr r0, _0806DA10  @ =0x0000FFFE
	b _0806DA70
	.byte 0x00
	.byte 0x00
_0806DA10:
	.4byte 0x0000FFFE
_0806DA14:
	sub r0, r1, #5
	cmp r0, r2
	bne _0806DA28
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	ldr r0, _0806DA24  @ =0x0000FFFD
	b _0806DA70
_0806DA24:
	.4byte 0x0000FFFD
_0806DA28:
	add r0, r1, #0
	sub r0, r0, #10
	cmp r0, r2
	bne _0806DA40
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	ldr r0, _0806DA3C  @ =0x0000FFFB
	b _0806DA70
	.byte 0x00
	.byte 0x00
_0806DA3C:
	.4byte 0x0000FFFB
_0806DA40:
	add r0, r1, #0
	sub r0, r0, #15
	cmp r0, r2
	bne _0806DA5C
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	mov r0, #4
	orr r0, r0, r1
	ldr r1, _0806DA58  @ =0x0000FFF7
	b _0806DA70
	.byte 0x00
	.byte 0x00
_0806DA58:
	.4byte 0x0000FFF7
_0806DA5C:
	add r0, r1, #0
	sub r0, r0, #20
	cmp r0, r2
	bne _0806DA74
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	mov r0, #8
	orr r0, r0, r1
	ldr r1, _0806DAA4  @ =0x0000FFEF
_0806DA70:
	and r0, r0, r1
	strh r0, [r2]
_0806DA74:
	mov r0, r12
	ldrh r1, [r0, #42]
	lsl r1, r1, #1
	add r1, r1, r12
	ldr r3, _0806DAA8  @ =gUnknown_030019AC
	ldr r2, [r3]
	ldr r0, [r2, #32]
	asr r0, r0, #8
	add r0, r0, #16
	strh r0, [r1]
	mov r0, r12
	add r0, r0, #144
	ldr r0, [r0]
	cmp r0, #5
	bls _0806DABA
	mov r1, r12
	ldrh r0, [r1, #42]
	cmp r0, #4
	bhi _0806DAAC
	add r0, r0, #16
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r0, [r0]
	b _0806DAC2
_0806DAA4:
	.4byte 0x0000FFEF
_0806DAA8:
	.4byte gUnknown_030019AC
_0806DAAC:
	mov r2, r12
	ldrh r0, [r2, #42]
	sub r0, r0, #5
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r0, [r0]
	b _0806DAC0
_0806DABA:
	ldr r0, [r2, #32]
	asr r0, r0, #8
	add r0, r0, #16
_0806DAC0:
	mov r1, r12
_0806DAC2:
	add r1, r1, #138
	strh r0, [r1]
	mov r0, r12
	add r0, r0, #144
	ldr r0, [r0]
	cmp r0, #10
	bls _0806DAF0
	mov r3, r12
	ldrh r0, [r3, #42]
	cmp r0, #9
	bhi _0806DADC
	add r0, r0, #11
	b _0806DAE2
_0806DADC:
	mov r1, r12
	ldrh r0, [r1, #42]
	sub r0, r0, #10
_0806DAE2:
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r1, [r0]
	mov r0, r12
	add r0, r0, #140
	strh r1, [r0]
	b _0806DB00
_0806DAF0:
	ldr r2, _0806DB1C  @ =gUnknown_030019AC
	ldr r0, [r2]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
	mov r1, r12
	add r1, r1, #140
	strh r0, [r1]
_0806DB00:
	mov r0, r12
	add r0, r0, #144
	ldr r0, [r0]
	cmp r0, #20
	bls _0806DB2E
	mov r3, r12
	ldrh r0, [r3, #42]
	cmp r0, #19
	bhi _0806DB20
	add r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r0, [r0]
	b _0806DB38
_0806DB1C:
	.4byte gUnknown_030019AC
_0806DB20:
	mov r1, r12
	ldrh r0, [r1, #42]
	sub r0, r0, #20
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r0, [r0]
	b _0806DB3A
_0806DB2E:
	ldr r2, _0806DB54  @ =gUnknown_030019AC
	ldr r0, [r2]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
_0806DB38:
	mov r1, r12
_0806DB3A:
	add r1, r1, #134
	strh r0, [r1]
	mov r2, r12
	add r2, r2, #140
	mov r1, r12
	add r1, r1, #138
	ldrh r0, [r2]
	ldrh r3, [r1]
	cmp r0, r3
	bls _0806DB58
	ldrh r1, [r1]
	b _0806DB5C
	.byte 0x00
	.byte 0x00
_0806DB54:
	.4byte gUnknown_030019AC
_0806DB58:
	ldrh r0, [r1]
	ldrh r1, [r2]
_0806DB5C:
	sub r0, r0, r1
	asr r0, r0, #1
	mov r1, r12
	add r1, r1, #150
	strh r0, [r1]
	mov r2, r12
	add r2, r2, #134
	mov r1, r12
	add r1, r1, #140
	ldrh r0, [r2]
	ldrh r3, [r1]
	cmp r0, r3
	bls _0806DB7A
	ldrh r1, [r1]
	b _0806DB7E
_0806DB7A:
	ldrh r0, [r1]
	ldrh r1, [r2]
_0806DB7E:
	sub r0, r0, r1
	asr r0, r0, #1
	mov r1, r12
	add r1, r1, #152
	strh r0, [r1]
	mov r1, r12
	ldrh r0, [r1, #42]
	add r0, r0, #1
	strh r0, [r1, #42]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #20
	bls _0806DB9C
	mov r0, #0
	strh r0, [r1, #42]
_0806DB9C:
	ldr r2, _0806DBCC  @ =gUnknown_030019AC
	ldr r0, [r2]
	ldr r0, [r0, #36]
	asr r0, r0, #8
	sub r0, r0, #46
	mov r1, r12
	add r1, r1, #136
	strh r0, [r1]
	mov r6, #0
	ldr r4, _0806DBD0  @ =gUnknown_08B2DC74
	mov r5, r9
	mov r1, #0
	ldrsb r1, [r5, r1]
	add r1, r1, #1
	asr r1, r1, #1
	mov r3, r10
	mov r2, #0
	ldrsb r2, [r3, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	b _0806DFEC
_0806DBCC:
	.4byte gUnknown_030019AC
_0806DBD0:
	.4byte gUnknown_08B2DC74
_0806DBD4:
	mov r1, #0
	ldrsb r1, [r5, r1]
	add r1, r1, #1
	asr r1, r1, #1
	mov r2, #0
	ldrsb r2, [r3, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	add r1, r4, #4
	add r0, r0, r1
	ldr r1, [r0]
	lsl r0, r6, #3
	add r3, r0, r1
	mov r0, r12
	add r0, r0, #144
	ldr r1, [r3, #4]
	ldr r0, [r0]
	cmp r1, r0
	beq _0806DC00
	b _0806DFC6
_0806DC00:
	ldr r0, [r3]
	cmp r0, #29
	bls _0806DC08
	b _0806DFC6
_0806DC08:
	lsl r0, r0, #2
	ldr r1, _0806DC14  @ =0x0806DC18
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0806DC14:
	.4byte _0806DC18
_0806DC18:
	.4byte _0806DC90
	.4byte _0806DC9C
	.4byte _0806DCA8
	.4byte _0806DCB4
	.4byte _0806DCC0
	.4byte _0806DCCC
	.4byte _0806DCD8
	.4byte _0806DCEC
	.4byte _0806DD24
	.4byte _0806DD5C
	.4byte _0806DDA0
	.4byte _0806DDE0
	.4byte _0806DE04
	.4byte _0806DED8
	.4byte _0806DF04
	.4byte _0806DF30
	.4byte _0806DF68
	.4byte _0806DFA0
	.4byte _0806DFB8
	.4byte _0806DEB0
	.4byte _0806DEC8
	.4byte _0806DE24
	.4byte _0806DE30
	.4byte _0806DE3C
	.4byte _0806DE48
	.4byte _0806DE54
	.4byte _0806DE60
	.4byte _0806DE6C
	.4byte _0806DE80
	.4byte _0806DE9C
_0806DC90:
	ldr r1, _0806DC98  @ =0x03001E20
	mov r0, #0
	str r0, [r1]
	b _0806DFC6
_0806DC98:
	.4byte 0x03001E20
_0806DC9C:
	ldr r1, _0806DCA4  @ =0x03001E20
	mov r0, #0
	str r0, [r1, #4]
	b _0806DFC6
_0806DCA4:
	.4byte 0x03001E20
_0806DCA8:
	ldr r1, _0806DCB0  @ =0x03001E20
	mov r0, #0
	str r0, [r1, #8]
	b _0806DFC6
_0806DCB0:
	.4byte 0x03001E20
_0806DCB4:
	ldr r1, _0806DCBC  @ =0x03001E20
	mov r0, #0
	str r0, [r1, #12]
	b _0806DFC6
_0806DCBC:
	.4byte 0x03001E20
_0806DCC0:
	ldr r1, _0806DCC8  @ =0x03001E20
	mov r0, #0
	str r0, [r1, #16]
	b _0806DFC6
_0806DCC8:
	.4byte 0x03001E20
_0806DCCC:
	ldr r1, _0806DCD4  @ =0x03001E20
	mov r0, #0
	b _0806DFC4
	.byte 0x00
	.byte 0x00
_0806DCD4:
	.4byte 0x03001E20
_0806DCD8:
	ldr r1, _0806DCE8  @ =0x03001E20
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	b _0806DFC4
_0806DCE8:
	.4byte 0x03001E20
_0806DCEC:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0806DD20  @ =0x03001E20
	mov r0, #1
	str r0, [r1]
	ldr r0, [r1, #4]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DD12
	str r4, [r1, #4]
_0806DD12:
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DD8C
	str r4, [r1, #8]
	b _0806DD8C
	.byte 0x00
	.byte 0x00
_0806DD20:
	.4byte 0x03001E20
_0806DD24:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0806DD58  @ =0x03001E20
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DD46
	str r4, [r1]
_0806DD46:
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DD8C
	str r4, [r1, #8]
	b _0806DD8C
	.byte 0x00
	.byte 0x00
_0806DD58:
	.4byte 0x03001E20
_0806DD5C:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0806DD9C  @ =0x03001E20
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DD7E
	str r4, [r1]
_0806DD7E:
	ldr r0, [r1, #4]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DD88
	str r4, [r1, #4]
_0806DD88:
	mov r0, #1
	str r0, [r1, #8]
_0806DD8C:
	ldr r0, [r1, #12]
	sub r0, r0, #1
	cmp r0, #1
	bls _0806DD96
	b _0806DFC6
_0806DD96:
	str r4, [r1, #12]
	b _0806DFC6
	.byte 0x00
	.byte 0x00
_0806DD9C:
	.4byte 0x03001E20
_0806DDA0:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0806DDDC  @ =0x03001E20
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DDC2
	str r4, [r1]
_0806DDC2:
	ldr r0, [r1, #4]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DDCC
	str r4, [r1, #4]
_0806DDCC:
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DDD6
	str r4, [r1, #8]
_0806DDD6:
	mov r0, #1
	str r0, [r1, #12]
	b _0806DFC6
_0806DDDC:
	.4byte 0x03001E20
_0806DDE0:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0806DE00  @ =0x03001E20
	mov r0, #1
	str r0, [r1, #16]
	b _0806DFC6
	.byte 0x00
	.byte 0x00
_0806DE00:
	.4byte 0x03001E20
_0806DE04:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0806DE20  @ =0x03001E20
	mov r0, #1
	b _0806DFC4
_0806DE20:
	.4byte 0x03001E20
_0806DE24:
	ldr r1, _0806DE2C  @ =0x03001E20
	mov r0, #3
	str r0, [r1]
	b _0806DFC6
_0806DE2C:
	.4byte 0x03001E20
_0806DE30:
	ldr r1, _0806DE38  @ =0x03001E20
	mov r0, #3
	str r0, [r1, #4]
	b _0806DFC6
_0806DE38:
	.4byte 0x03001E20
_0806DE3C:
	ldr r1, _0806DE44  @ =0x03001E20
	mov r0, #3
	str r0, [r1, #8]
	b _0806DFC6
_0806DE44:
	.4byte 0x03001E20
_0806DE48:
	ldr r1, _0806DE50  @ =0x03001E20
	mov r0, #3
	str r0, [r1, #12]
	b _0806DFC6
_0806DE50:
	.4byte 0x03001E20
_0806DE54:
	ldr r1, _0806DE5C  @ =0x03001E20
	mov r0, #3
	str r0, [r1, #16]
	b _0806DFC6
_0806DE5C:
	.4byte 0x03001E20
_0806DE60:
	ldr r1, _0806DE68  @ =0x03001E20
	mov r0, #3
	b _0806DFC4
	.byte 0x00
	.byte 0x00
_0806DE68:
	.4byte 0x03001E20
_0806DE6C:
	ldr r1, _0806DE7C  @ =0x03001E20
	mov r0, #3
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	b _0806DFC4
_0806DE7C:
	.4byte 0x03001E20
_0806DE80:
	ldr r2, _0806DE94  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #4
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _0806DE98  @ =0x030006E8
	mov r0, #1
	strb r0, [r1]
	b _0806DFC6
_0806DE94:
	.4byte gUnknown_03001938
_0806DE98:
	.4byte 0x030006E8
_0806DE9C:
	ldr r0, _0806DEA8  @ =gUnknown_03001938
	ldr r1, [r0]
	ldr r2, _0806DEAC  @ =0xFFFFF7FF
	and r1, r1, r2
	str r1, [r0]
	b _0806DFC6
_0806DEA8:
	.4byte gUnknown_03001938
_0806DEAC:
	.4byte 0xFFFFF7FF
_0806DEB0:
	ldr r0, _0806DEC4  @ =0x03001D70
	add r2, r0, #0
	add r2, r2, #158
	mov r1, #0
	strh r1, [r2]
	add r0, r0, #160
	mov r1, #1
	strb r1, [r0]
	b _0806DFC6
	.byte 0x00
	.byte 0x00
_0806DEC4:
	.4byte 0x03001D70
_0806DEC8:
	ldr r0, _0806DED4  @ =0x03001D70
	add r0, r0, #160
	mov r1, #0
	strb r1, [r0]
	b _0806DFC6
	.byte 0x00
	.byte 0x00
_0806DED4:
	.4byte 0x03001D70
_0806DED8:
	ldr r0, _0806DEFC  @ =0x03001D70
	add r0, r0, #158
	mov r2, #0
	strh r2, [r0]
	ldr r1, _0806DF00  @ =0x03001E20
	mov r0, #2
	str r0, [r1]
	ldr r0, [r1, #4]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DEF0
	str r2, [r1, #4]
_0806DEF0:
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF52
	str r2, [r1, #8]
	b _0806DF52
_0806DEFC:
	.4byte 0x03001D70
_0806DF00:
	.4byte 0x03001E20
_0806DF04:
	ldr r0, _0806DF28  @ =0x03001D70
	add r0, r0, #158
	mov r2, #0
	strh r2, [r0]
	ldr r1, _0806DF2C  @ =0x03001E20
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF18
	str r2, [r1]
_0806DF18:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF52
	str r2, [r1, #8]
	b _0806DF52
_0806DF28:
	.4byte 0x03001D70
_0806DF2C:
	.4byte 0x03001E20
_0806DF30:
	ldr r0, _0806DF60  @ =0x03001D70
	add r0, r0, #158
	mov r2, #0
	strh r2, [r0]
	ldr r1, _0806DF64  @ =0x03001E20
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF44
	str r2, [r1]
_0806DF44:
	ldr r0, [r1, #4]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF4E
	str r2, [r1, #4]
_0806DF4E:
	mov r0, #2
	str r0, [r1, #8]
_0806DF52:
	ldr r0, [r1, #12]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DFC6
	str r2, [r1, #12]
	b _0806DFC6
	.byte 0x00
	.byte 0x00
_0806DF60:
	.4byte 0x03001D70
_0806DF64:
	.4byte 0x03001E20
_0806DF68:
	ldr r0, _0806DF98  @ =0x03001D70
	add r0, r0, #158
	mov r2, #0
	strh r2, [r0]
	ldr r1, _0806DF9C  @ =0x03001E20
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF7C
	str r2, [r1]
_0806DF7C:
	ldr r0, [r1, #4]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF86
	str r2, [r1, #4]
_0806DF86:
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF90
	str r2, [r1, #8]
_0806DF90:
	mov r0, #2
	str r0, [r1, #12]
	b _0806DFC6
	.byte 0x00
	.byte 0x00
_0806DF98:
	.4byte 0x03001D70
_0806DF9C:
	.4byte 0x03001E20
_0806DFA0:
	ldr r0, _0806DFB0  @ =0x03001D70
	add r0, r0, #158
	mov r1, #0
	strh r1, [r0]
	ldr r1, _0806DFB4  @ =0x03001E20
	mov r0, #2
	str r0, [r1, #16]
	b _0806DFC6
_0806DFB0:
	.4byte 0x03001D70
_0806DFB4:
	.4byte 0x03001E20
_0806DFB8:
	ldr r0, _0806E010  @ =0x03001D70
	add r0, r0, #158
	mov r1, #0
	strh r1, [r0]
	ldr r1, _0806E014  @ =0x03001E20
	mov r0, #2
_0806DFC4:
	str r0, [r1, #20]
_0806DFC6:
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r4, _0806E018  @ =gUnknown_08B2DC74
	ldr r5, _0806E01C  @ =gNextLevelID
	mov r2, #0
	ldrsb r2, [r5, r2]
	add r2, r2, #1
	asr r2, r2, #1
	ldr r3, _0806E020  @ =gCurrentWorld
	mov r1, #0
	ldrsb r1, [r3, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r1, _0806E010  @ =0x03001D70
	mov r12, r1
_0806DFEC:
	ldrb r0, [r0]
	cmp r6, r0
	bcs _0806DFF4
	b _0806DBD4
_0806DFF4:
	mov r1, r12
	add r1, r1, #144
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
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
_0806E010:
	.4byte 0x03001D70
_0806E014:
	.4byte 0x03001E20
_0806E018:
	.4byte gUnknown_08B2DC74
_0806E01C:
	.4byte gNextLevelID
_0806E020:
	.4byte gCurrentWorld
	THUMB_FUNC_END update_level_tutorial_thought_bubble_0806D7EC

	THUMB_FUNC_START update_level_tutorial_thought_bubble_icon_OAM_0806E024
update_level_tutorial_thought_bubble_icon_OAM_0806E024: @ 0x0806E024
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r5, r3, #0
	ldr r7, [sp, #28]
	ldr r6, [sp, #32]
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r12, r1
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r8, r2
	cmp r0, #19
	bls _0806E044
	b _0806E55C
_0806E044:
	lsl r0, r0, #2
	ldr r1, _0806E050  @ =0x0806E054
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0806E050:
	.4byte _0806E054
_0806E054:
	.4byte _0806E0A4
	.4byte _0806E0D0
	.4byte _0806E0FC
	.4byte _0806E128
	.4byte _0806E154
	.4byte _0806E180
	.4byte _0806E228
	.4byte _0806E254
	.4byte _0806E2FC
	.4byte _0806E328
	.4byte _0806E354
	.4byte _0806E380
	.4byte _0806E3AC
	.4byte _0806E3D8
	.4byte _0806E404
	.4byte _0806E430
	.4byte _0806E45C
	.4byte _0806E488
	.4byte _0806E4B4
	.4byte _0806E4E0
_0806E0A4:
	ldr r2, _0806E0BC  @ =REG_DMA3SAD
	ldr r0, _0806E0C0  @ =gUnknown_0812D208
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E0C4  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E0C8  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E0CC  @ =gUnknown_0812D200
	b _0806E4F6
_0806E0BC:
	.4byte REG_DMA3SAD
_0806E0C0:
	.4byte gUnknown_0812D208
_0806E0C4:
	.4byte OBJ_VRAM0
_0806E0C8:
	.4byte 0x84000020
_0806E0CC:
	.4byte gUnknown_0812D200
_0806E0D0:
	ldr r2, _0806E0E8  @ =REG_DMA3SAD
	ldr r0, _0806E0EC  @ =gUnknown_0812D2B4
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E0F0  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E0F4  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E0F8  @ =gUnknown_0812D2AC
	b _0806E4F6
_0806E0E8:
	.4byte REG_DMA3SAD
_0806E0EC:
	.4byte gUnknown_0812D2B4
_0806E0F0:
	.4byte OBJ_VRAM0
_0806E0F4:
	.4byte 0x84000020
_0806E0F8:
	.4byte gUnknown_0812D2AC
_0806E0FC:
	ldr r2, _0806E114  @ =REG_DMA3SAD
	ldr r0, _0806E118  @ =gUnknown_0812D360
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E11C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E120  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E124  @ =gUnknown_0812D358
	b _0806E4F6
_0806E114:
	.4byte REG_DMA3SAD
_0806E118:
	.4byte gUnknown_0812D360
_0806E11C:
	.4byte OBJ_VRAM0
_0806E120:
	.4byte 0x84000020
_0806E124:
	.4byte gUnknown_0812D358
_0806E128:
	ldr r2, _0806E140  @ =REG_DMA3SAD
	ldr r0, _0806E144  @ =gUnknown_0812D40C
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E148  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E14C  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E150  @ =gUnknown_0812D404
	b _0806E4F6
_0806E140:
	.4byte REG_DMA3SAD
_0806E144:
	.4byte gUnknown_0812D40C
_0806E148:
	.4byte OBJ_VRAM0
_0806E14C:
	.4byte 0x84000020
_0806E150:
	.4byte gUnknown_0812D404
_0806E154:
	ldr r2, _0806E16C  @ =REG_DMA3SAD
	ldr r0, _0806E170  @ =gUnknown_0812CA9C
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E174  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E178  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E17C  @ =gUnknown_0812CA94
	b _0806E4F6
_0806E16C:
	.4byte REG_DMA3SAD
_0806E170:
	.4byte gUnknown_0812CA9C
_0806E174:
	.4byte OBJ_VRAM0
_0806E178:
	.4byte 0x84000020
_0806E17C:
	.4byte gUnknown_0812CA94
_0806E180:
	ldr r2, _0806E1FC  @ =REG_DMA3SAD
	ldr r0, _0806E200  @ =gUnknown_0812CA9C
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E204  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E208  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E20C  @ =gUnknown_0812CA94
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0806E210  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806E214  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r0, _0806E218  @ =0x000003FF
	mov r9, r0
	mov r0, r9
	and r1, r1, r0
	ldr r0, _0806E21C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0806E220  @ =0x000001FF
	add r0, r1, #0
	mov r1, r12
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806E224  @ =0xFFFFFE00
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
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	b _0806E54A
	.byte 0x00
	.byte 0x00
_0806E1FC:
	.4byte REG_DMA3SAD
_0806E200:
	.4byte gUnknown_0812CA9C
_0806E204:
	.4byte OBJ_VRAM0
_0806E208:
	.4byte 0x84000020
_0806E20C:
	.4byte gUnknown_0812CA94
_0806E210:
	.4byte gOamBuffer
_0806E214:
	.4byte 0x84000002
_0806E218:
	.4byte 0x000003FF
_0806E21C:
	.4byte 0xFFFFFC00
_0806E220:
	.4byte 0x000001FF
_0806E224:
	.4byte 0xFFFFFE00
_0806E228:
	ldr r2, _0806E240  @ =REG_DMA3SAD
	ldr r0, _0806E244  @ =gUnknown_0812CB48
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E248  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E24C  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E250  @ =gUnknown_0812CB40
	b _0806E4F6
_0806E240:
	.4byte REG_DMA3SAD
_0806E244:
	.4byte gUnknown_0812CB48
_0806E248:
	.4byte OBJ_VRAM0
_0806E24C:
	.4byte 0x84000020
_0806E250:
	.4byte gUnknown_0812CB40
_0806E254:
	ldr r2, _0806E2D0  @ =REG_DMA3SAD
	ldr r0, _0806E2D4  @ =gUnknown_0812CB48
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E2D8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E2DC  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E2E0  @ =gUnknown_0812CB40
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0806E2E4  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806E2E8  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r0, _0806E2EC  @ =0x000003FF
	mov r9, r0
	mov r0, r9
	and r1, r1, r0
	ldr r0, _0806E2F0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0806E2F4  @ =0x000001FF
	add r0, r1, #0
	mov r1, r12
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806E2F8  @ =0xFFFFFE00
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
	ldrb r0, [r1, #3]
	mov r2, #32
	orr r0, r0, r2
	strb r0, [r1, #3]
	b _0806E54A
	.byte 0x00
	.byte 0x00
_0806E2D0:
	.4byte REG_DMA3SAD
_0806E2D4:
	.4byte gUnknown_0812CB48
_0806E2D8:
	.4byte OBJ_VRAM0
_0806E2DC:
	.4byte 0x84000020
_0806E2E0:
	.4byte gUnknown_0812CB40
_0806E2E4:
	.4byte gOamBuffer
_0806E2E8:
	.4byte 0x84000002
_0806E2EC:
	.4byte 0x000003FF
_0806E2F0:
	.4byte 0xFFFFFC00
_0806E2F4:
	.4byte 0x000001FF
_0806E2F8:
	.4byte 0xFFFFFE00
_0806E2FC:
	ldr r2, _0806E314  @ =REG_DMA3SAD
	ldr r0, _0806E318  @ =gUnknown_0812D768
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E31C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E320  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E324  @ =gUnknown_0812D760
	b _0806E4F6
_0806E314:
	.4byte REG_DMA3SAD
_0806E318:
	.4byte gUnknown_0812D768
_0806E31C:
	.4byte OBJ_VRAM0
_0806E320:
	.4byte 0x84000020
_0806E324:
	.4byte gUnknown_0812D760
_0806E328:
	ldr r2, _0806E340  @ =REG_DMA3SAD
	ldr r0, _0806E344  @ =gUnknown_0812D4B8
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E348  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E34C  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E350  @ =gUnknown_0812D4B0
	b _0806E4F6
_0806E340:
	.4byte REG_DMA3SAD
_0806E344:
	.4byte gUnknown_0812D4B8
_0806E348:
	.4byte OBJ_VRAM0
_0806E34C:
	.4byte 0x84000020
_0806E350:
	.4byte gUnknown_0812D4B0
_0806E354:
	ldr r2, _0806E36C  @ =REG_DMA3SAD
	ldr r0, _0806E370  @ =gUnknown_0812DA18
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E374  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E378  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E37C  @ =gUnknown_0812DA10
	b _0806E4F6
_0806E36C:
	.4byte REG_DMA3SAD
_0806E370:
	.4byte gUnknown_0812DA18
_0806E374:
	.4byte OBJ_VRAM0
_0806E378:
	.4byte 0x84000020
_0806E37C:
	.4byte gUnknown_0812DA10
_0806E380:
	ldr r2, _0806E398  @ =REG_DMA3SAD
	ldr r0, _0806E39C  @ =gUnknown_0812D8C0
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E3A0  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E3A4  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E3A8  @ =gUnknown_0812D8B8
	b _0806E4F6
_0806E398:
	.4byte REG_DMA3SAD
_0806E39C:
	.4byte gUnknown_0812D8C0
_0806E3A0:
	.4byte OBJ_VRAM0
_0806E3A4:
	.4byte 0x84000020
_0806E3A8:
	.4byte gUnknown_0812D8B8
_0806E3AC:
	ldr r2, _0806E3C4  @ =REG_DMA3SAD
	ldr r0, _0806E3C8  @ =gUnknown_0812DB70
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E3CC  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E3D0  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E3D4  @ =gUnknown_0812DB68
	b _0806E4F6
_0806E3C4:
	.4byte REG_DMA3SAD
_0806E3C8:
	.4byte gUnknown_0812DB70
_0806E3CC:
	.4byte OBJ_VRAM0
_0806E3D0:
	.4byte 0x84000020
_0806E3D4:
	.4byte gUnknown_0812DB68
_0806E3D8:
	ldr r2, _0806E3F0  @ =REG_DMA3SAD
	ldr r0, _0806E3F4  @ =gUnknown_0812D814
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E3F8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E3FC  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E400  @ =gUnknown_0812D80C
	b _0806E4F6
_0806E3F0:
	.4byte REG_DMA3SAD
_0806E3F4:
	.4byte gUnknown_0812D814
_0806E3F8:
	.4byte OBJ_VRAM0
_0806E3FC:
	.4byte 0x84000020
_0806E400:
	.4byte gUnknown_0812D80C
_0806E404:
	ldr r2, _0806E41C  @ =REG_DMA3SAD
	ldr r0, _0806E420  @ =gUnknown_0812D610
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E424  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E428  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E42C  @ =gUnknown_0812D608
	b _0806E4F6
_0806E41C:
	.4byte REG_DMA3SAD
_0806E420:
	.4byte gUnknown_0812D610
_0806E424:
	.4byte OBJ_VRAM0
_0806E428:
	.4byte 0x84000020
_0806E42C:
	.4byte gUnknown_0812D608
_0806E430:
	ldr r2, _0806E448  @ =REG_DMA3SAD
	ldr r0, _0806E44C  @ =gUnknown_0812CBF4
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E450  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E454  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E458  @ =gUnknown_0812CBEC
	b _0806E4F6
_0806E448:
	.4byte REG_DMA3SAD
_0806E44C:
	.4byte gUnknown_0812CBF4
_0806E450:
	.4byte OBJ_VRAM0
_0806E454:
	.4byte 0x84000020
_0806E458:
	.4byte gUnknown_0812CBEC
_0806E45C:
	ldr r2, _0806E474  @ =REG_DMA3SAD
	ldr r0, _0806E478  @ =gUnknown_0812D6BC
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E47C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E480  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E484  @ =gUnknown_0812D6B4
	b _0806E4F6
_0806E474:
	.4byte REG_DMA3SAD
_0806E478:
	.4byte gUnknown_0812D6BC
_0806E47C:
	.4byte OBJ_VRAM0
_0806E480:
	.4byte 0x84000020
_0806E484:
	.4byte gUnknown_0812D6B4
_0806E488:
	ldr r2, _0806E4A0  @ =REG_DMA3SAD
	ldr r0, _0806E4A4  @ =gUnknown_0812DC1C
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E4A8  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E4AC  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E4B0  @ =gUnknown_0812DC14
	b _0806E4F6
_0806E4A0:
	.4byte REG_DMA3SAD
_0806E4A4:
	.4byte gUnknown_0812DC1C
_0806E4A8:
	.4byte OBJ_VRAM0
_0806E4AC:
	.4byte 0x84000020
_0806E4B0:
	.4byte gUnknown_0812DC14
_0806E4B4:
	ldr r2, _0806E4CC  @ =REG_DMA3SAD
	ldr r0, _0806E4D0  @ =gUnknown_0812DAC4
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E4D4  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E4D8  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E4DC  @ =gUnknown_0812DABC
	b _0806E4F6
_0806E4CC:
	.4byte REG_DMA3SAD
_0806E4D0:
	.4byte gUnknown_0812DAC4
_0806E4D4:
	.4byte OBJ_VRAM0
_0806E4D8:
	.4byte 0x84000020
_0806E4DC:
	.4byte gUnknown_0812DABC
_0806E4E0:
	ldr r2, _0806E568  @ =REG_DMA3SAD
	ldr r0, _0806E56C  @ =gUnknown_0812D564
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E570  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E574  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E578  @ =gUnknown_0812D55C
_0806E4F6:
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0806E57C  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806E580  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r0, _0806E584  @ =0x000003FF
	mov r9, r0
	mov r0, r9
	and r1, r1, r0
	ldr r0, _0806E588  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0806E58C  @ =0x000001FF
	add r0, r1, #0
	mov r1, r12
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806E590  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, r8
	strb r1, [r0]
_0806E54A:
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldrh r0, [r6]
	add r0, r0, #128
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #4
	strh r0, [r7]
_0806E55C:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0806E568:
	.4byte REG_DMA3SAD
_0806E56C:
	.4byte gUnknown_0812D564
_0806E570:
	.4byte OBJ_VRAM0
_0806E574:
	.4byte 0x84000020
_0806E578:
	.4byte gUnknown_0812D55C
_0806E57C:
	.4byte gOamBuffer
_0806E580:
	.4byte 0x84000002
_0806E584:
	.4byte 0x000003FF
_0806E588:
	.4byte 0xFFFFFC00
_0806E58C:
	.4byte 0x000001FF
_0806E590:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END update_level_tutorial_thought_bubble_icon_OAM_0806E024

	THUMB_FUNC_START update_level_tutorial_thought_bubble_OAM_0806E594
update_level_tutorial_thought_bubble_OAM_0806E594: @ 0x0806E594
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	add r7, r0, #0
	str r1, [sp, #8]
	mov r10, r2
	ldr r1, _0806E920  @ =0x03001D70
	ldr r2, _0806E924  @ =0x03001DF4
	ldrh r0, [r2]
	str r1, [sp, #12]
	cmp r0, #0
	bne _0806E5B4
	b _0806EC24
_0806E5B4:
	add r0, r1, #0
	add r0, r0, #144
	ldr r0, [r0]
	cmp r0, #0
	bne _0806E5C0
	b _0806EC24
_0806E5C0:
	add r0, r1, #0
	add r0, r0, #148
	ldrh r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _0806E5D0
	b _0806E978
_0806E5D0:
	ldr r3, _0806E928  @ =REG_DMA3SAD
	mov r9, r3
	ldr r4, _0806E92C  @ =gUnknown_0812D030
	mov r8, r4
	str r4, [r3]
	mov r5, r10
	ldrh r0, [r5]
	ldr r6, _0806E930  @ =OBJ_VRAM0
	add r0, r0, r6
	str r0, [r3, #4]
	ldr r6, _0806E934  @ =0x84000040
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	ldr r5, _0806E938  @ =gUnknown_0812D028
	str r5, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _0806E93C  @ =gOamBuffer
	mov r12, r1
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r2, _0806E940  @ =0x84000002
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r4, [sp, #8]
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r0, _0806E944  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0806E948  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _0806E94C  @ =0x03001DF6
	ldrh r1, [r3]
	ldr r4, _0806E924  @ =0x03001DF4
	ldrh r0, [r4]
	lsr r0, r0, #1
	sub r1, r1, r0
	sub r1, r1, #16
	ldr r0, _0806E950  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806E954  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, _0806E958  @ =0x03001E08
	ldrb r0, [r2]
	ldr r3, _0806E95C  @ =0x03001DF8
	ldrb r3, [r3]
	add r0, r0, r3
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r0, #128
	lsl r0, r0, #1
	add r4, r0, #0
	mov r1, r10
	ldrh r1, [r1]
	add r0, r4, r1
	mov r2, r10
	strh r0, [r2]
	ldr r3, [sp, #8]
	ldrh r1, [r3]
	add r1, r1, #8
	strh r1, [r3]
	mov r0, r8
	mov r2, r9
	str r0, [r2]
	mov r3, r10
	ldrh r0, [r3]
	ldr r2, _0806E930  @ =OBJ_VRAM0
	add r0, r0, r2
	mov r3, r9
	str r0, [r3, #4]
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	str r5, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r5, _0806E940  @ =0x84000002
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	add r0, r0, r1
	ldr r6, _0806E944  @ =0x000003FF
	and r0, r0, r6
	ldr r1, _0806E948  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r0, _0806E924  @ =0x03001DF4
	ldrh r1, [r0]
	lsr r1, r1, #1
	ldr r3, _0806E94C  @ =0x03001DF6
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r5, _0806E950  @ =0x000001FF
	and r1, r1, r5
	ldrh r3, [r2, #2]
	ldr r0, _0806E954  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r6, _0806E958  @ =0x03001E08
	ldrb r0, [r6]
	ldr r2, _0806E95C  @ =0x03001DF8
	ldrb r2, [r2]
	add r0, r0, r2
	strb r0, [r1]
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
	mov r3, r10
	ldrh r3, [r3]
	add r4, r4, r3
	mov r5, r10
	strh r4, [r5]
	ldr r6, [sp, #8]
	ldrh r0, [r6]
	add r0, r0, #8
	strh r0, [r6]
	mov r0, #0
	mov r8, r0
	ldr r1, _0806E924  @ =0x03001DF4
	ldrh r1, [r1]
	cmp r8, r1
	bcc _0806E716
	b _0806E85E
_0806E716:
	mov r5, r9
	mov r6, r12
	ldr r2, _0806E924  @ =0x03001DF4
	mov r9, r2
	ldr r3, _0806E958  @ =0x03001E08
	mov r12, r3
_0806E722:
	ldr r4, _0806E960  @ =gUnknown_0812CCA0
	str r4, [r5]
	mov r1, r10
	ldrh r0, [r1]
	ldr r2, _0806E930  @ =OBJ_VRAM0
	add r0, r0, r2
	str r0, [r5, #4]
	ldr r3, _0806E964  @ =0x84000010
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	ldr r4, _0806E968  @ =gUnknown_0812CC98
	str r4, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0806E940  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r4, [sp, #8]
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r0, _0806E944  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0806E948  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r2, _0806E94C  @ =0x03001DF6
	ldrh r1, [r2]
	mov r4, r9
	ldrh r0, [r4]
	lsr r0, r0, #1
	sub r1, r1, r0
	add r1, r1, r8
	ldr r0, _0806E950  @ =0x000001FF
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0806E954  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	mov r2, r12
	ldrb r0, [r2]
	ldr r3, _0806E95C  @ =0x03001DF8
	ldrb r3, [r3]
	add r0, r0, r3
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, r10
	ldrh r0, [r4]
	add r0, r0, #64
	strh r0, [r4]
	ldr r0, [sp, #8]
	ldrh r4, [r0]
	add r4, r4, #2
	strh r4, [r0]
	ldr r1, _0806E960  @ =gUnknown_0812CCA0
	str r1, [r5]
	mov r2, r10
	ldrh r0, [r2]
	ldr r3, _0806E930  @ =OBJ_VRAM0
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _0806E964  @ =0x84000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r1, _0806E968  @ =gUnknown_0812CC98
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r2, _0806E940  @ =0x84000002
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	add r1, r1, r4
	ldr r4, _0806E944  @ =0x000003FF
	and r1, r1, r4
	ldr r0, _0806E948  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, _0806E94C  @ =0x03001DF6
	ldrh r1, [r0]
	mov r2, r9
	ldrh r0, [r2]
	lsr r0, r0, #1
	sub r1, r1, r0
	add r1, r1, r8
	ldr r4, _0806E950  @ =0x000001FF
	and r1, r1, r4
	ldrh r2, [r3, #2]
	ldr r0, _0806E954  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	mov r2, r12
	ldrb r0, [r2]
	add r0, r0, #24
	ldr r3, _0806E95C  @ =0x03001DF8
	ldrb r3, [r3]
	add r0, r0, r3
	strb r0, [r1]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r0, [r2, #3]
	mov r1, #32
	orr r0, r0, r1
	strb r0, [r2, #3]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, r10
	ldrh r0, [r4]
	add r0, r0, #64
	strh r0, [r4]
	ldr r1, [sp, #8]
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	mov r0, r8
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	mov r2, r9
	ldrh r2, [r2]
	cmp r8, r2
	bcs _0806E85E
	b _0806E722
_0806E85E:
	ldr r2, _0806E920  @ =0x03001D70
	add r3, r2, #0
	add r3, r3, #134
	add r0, r2, #0
	add r0, r0, #132
	ldrh r1, [r0]
	lsr r1, r1, #1
	ldrh r0, [r3]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	add r1, r2, #0
	add r1, r1, #136
	add r0, r2, #0
	add r0, r0, #152
	ldrh r0, [r0]
	add r0, r0, #8
	ldrh r1, [r1]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	mov r3, #0
	mov r8, r3
	ldr r6, _0806E96C  @ =gUnknown_08B2D578
	str r2, [sp, #12]
	add r5, r2, #0
	add r5, r5, #142
	ldr r0, _0806E970  @ =gNextLevelID
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r1, r1, #1
	asr r1, r1, #1
	ldr r0, _0806E974  @ =gCurrentWorld
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r6
	ldrh r1, [r5]
	ldr r2, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r0]
	cmp r8, r1
	bcc _0806E8C4
	b _0806EAE8
_0806E8C4:
	ldr r1, [r0, #4]
	mov r2, r8
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r3, [sp, #8]
	str r3, [sp]
	mov r1, r10
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, r9
	add r3, r7, #0
	bl update_level_tutorial_thought_bubble_icon_OAM_0806E024
	add r0, r4, #0
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r4, r0, #16
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r0, _0806E970  @ =gNextLevelID
	mov r2, #0
	ldrsb r2, [r0, r2]
	add r2, r2, #1
	asr r2, r2, #1
	ldr r0, _0806E974  @ =gCurrentWorld
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r6
	ldrh r1, [r5]
	ldr r2, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r2, [r0]
	cmp r8, r2
	bcc _0806E8C4
	b _0806EAE8
_0806E920:
	.4byte 0x03001D70
_0806E924:
	.4byte 0x03001DF4
_0806E928:
	.4byte REG_DMA3SAD
_0806E92C:
	.4byte gUnknown_0812D030
_0806E930:
	.4byte OBJ_VRAM0
_0806E934:
	.4byte 0x84000040
_0806E938:
	.4byte gUnknown_0812D028
_0806E93C:
	.4byte gOamBuffer
_0806E940:
	.4byte 0x84000002
_0806E944:
	.4byte 0x000003FF
_0806E948:
	.4byte 0xFFFFFC00
_0806E94C:
	.4byte 0x03001DF6
_0806E950:
	.4byte 0x000001FF
_0806E954:
	.4byte 0xFFFFFE00
_0806E958:
	.4byte 0x03001E08
_0806E95C:
	.4byte 0x03001DF8
_0806E960:
	.4byte gUnknown_0812CCA0
_0806E964:
	.4byte 0x84000010
_0806E968:
	.4byte gUnknown_0812CC98
_0806E96C:
	.4byte gUnknown_08B2D578
_0806E970:
	.4byte gNextLevelID
_0806E974:
	.4byte gCurrentWorld
_0806E978:
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0806EA44
	ldr r2, _0806EA18  @ =REG_DMA3SAD
	ldr r0, _0806EA1C  @ =gUnknown_0812CD58
	str r0, [r2]
	mov r3, r10
	ldrh r0, [r3]
	ldr r1, _0806EA20  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806EA24  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806EA28  @ =gUnknown_0812CD50
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0806EA2C  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806EA30  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r5, [sp, #8]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r6, _0806EA34  @ =0x000003FF
	add r0, r6, #0
	and r1, r1, r0
	ldr r0, _0806EA38  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, [sp, #12]
	add r0, r0, #134
	ldrh r1, [r0]
	sub r1, r1, #8
	ldr r3, _0806EA3C  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806EA40  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldr r2, [sp, #12]
	add r2, r2, #136
	ldr r0, [sp, #12]
	add r0, r0, #152
	ldrb r0, [r0]
	add r0, r0, #16
	ldrb r2, [r2]
	add r0, r0, r2
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, r10
	ldrh r0, [r4]
	add r0, r0, #128
	strh r0, [r4]
	ldr r5, [sp, #8]
	ldrh r0, [r5]
	add r0, r0, #4
	strh r0, [r5]
	b _0806EAE8
_0806EA18:
	.4byte REG_DMA3SAD
_0806EA1C:
	.4byte gUnknown_0812CD58
_0806EA20:
	.4byte OBJ_VRAM0
_0806EA24:
	.4byte 0x84000020
_0806EA28:
	.4byte gUnknown_0812CD50
_0806EA2C:
	.4byte gOamBuffer
_0806EA30:
	.4byte 0x84000002
_0806EA34:
	.4byte 0x000003FF
_0806EA38:
	.4byte 0xFFFFFC00
_0806EA3C:
	.4byte 0x000001FF
_0806EA40:
	.4byte 0xFFFFFE00
_0806EA44:
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0806EAE8
	ldr r2, _0806ED84  @ =REG_DMA3SAD
	ldr r0, _0806ED88  @ =gUnknown_0812CE04
	str r0, [r2]
	mov r6, r10
	ldrh r0, [r6]
	ldr r1, _0806ED8C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806ED90  @ =0x84000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806ED94  @ =gUnknown_0812CDFC
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0806ED98  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806ED9C  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r5, _0806EDA0  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _0806EDA4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, [sp, #12]
	add r0, r0, #134
	ldrh r1, [r0]
	sub r1, r1, #16
	ldr r6, _0806EDA8  @ =0x000001FF
	add r0, r6, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806EDAC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldr r2, [sp, #12]
	add r2, r2, #136
	ldr r0, [sp, #12]
	add r0, r0, #152
	ldrb r0, [r0]
	ldrb r2, [r2]
	add r0, r0, r2
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #2
	add r0, r1, #0
	mov r2, r10
	ldrh r2, [r2]
	add r0, r0, r2
	mov r3, r10
	strh r0, [r3]
	ldr r4, [sp, #8]
	ldrh r0, [r4]
	add r0, r0, #16
	strh r0, [r4]
_0806EAE8:
	ldr r5, [sp, #12]
	add r5, r5, #148
	ldrh r1, [r5]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0806EB8C
	ldr r2, _0806ED84  @ =REG_DMA3SAD
	ldr r0, _0806EDB0  @ =gUnknown_0812CD0C
	str r0, [r2]
	mov r6, r10
	ldrh r0, [r6]
	ldr r1, _0806ED8C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806EDB4  @ =0x84000008
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806EDB8  @ =gUnknown_0812CD04
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0806ED98  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806ED9C  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r6, _0806EDA0  @ =0x000003FF
	add r0, r6, #0
	and r1, r1, r0
	ldr r0, _0806EDA4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, [sp, #12]
	add r0, r0, #140
	ldrh r1, [r0]
	sub r1, r1, #4
	ldr r3, _0806EDA8  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806EDAC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldr r2, [sp, #12]
	add r2, r2, #136
	ldr r0, [sp, #12]
	add r0, r0, #150
	ldrb r0, [r0]
	add r0, r0, #34
	ldrb r2, [r2]
	add r0, r0, r2
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, r10
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
	ldr r6, [sp, #8]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
_0806EB8C:
	ldrh r1, [r5]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806EC24
	ldr r2, _0806ED84  @ =REG_DMA3SAD
	ldr r0, _0806EDB0  @ =gUnknown_0812CD0C
	str r0, [r2]
	mov r1, r10
	ldrh r0, [r1]
	ldr r1, _0806ED8C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806EDB4  @ =0x84000008
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806EDB8  @ =gUnknown_0812CD04
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0806ED98  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806ED9C  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r5, [sp, #8]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r6, _0806EDA0  @ =0x000003FF
	add r0, r6, #0
	and r1, r1, r0
	ldr r0, _0806EDA4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, [sp, #12]
	add r0, r0, #138
	ldrh r1, [r0]
	sub r1, r1, #4
	ldr r3, _0806EDA8  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806EDAC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldr r0, [sp, #12]
	add r0, r0, #136
	ldrb r0, [r0]
	add r0, r0, #44
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, r10
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
	ldr r5, [sp, #8]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
_0806EC24:
	ldr r6, _0806EDBC  @ =0x03001E0C
	ldrh r1, [r6]
	ldr r0, _0806EDC0  @ =0x0000FFFF
	cmp r1, r0
	bne _0806EC30
	b _0806ED74
_0806EC30:
	ldr r4, _0806ED84  @ =REG_DMA3SAD
	ldr r1, [sp, #12]
	ldr r0, [r1, #112]
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _0806ED98  @ =gOamBuffer
	mov r8, r2
	add r0, r0, r8
	str r0, [r4, #4]
	ldr r3, _0806ED9C  @ =0x84000002
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldr r5, [sp, #12]
	ldr r2, [r5, #108]
	ldr r6, _0806EDA0  @ =0x000003FF
	and r2, r2, r6
	ldrh r3, [r1, #4]
	ldr r6, _0806EDA4  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldr r0, _0806EDC4  @ =0x03001E0A
	ldrh r1, [r0]
	ldr r3, _0806EDC8  @ =gSpriteHorizontalOffset
	mov r10, r3
	mov r5, #0
	ldrsh r0, [r3, r5]
	sub r1, r1, r0
	ldr r0, _0806EDA8  @ =0x000001FF
	mov r12, r0
	mov r3, r12
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r5, _0806EDAC  @ =0xFFFFFE00
	add r0, r5, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldr r1, _0806EDBC  @ =0x03001E0C
	ldrb r0, [r1]
	ldr r3, _0806EDCC  @ =gUnknown_030012F4
	mov r9, r3
	ldrb r1, [r3]
	sub r0, r0, r1
	strb r0, [r2]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, [sp, #12]
	ldr r0, [r1, #120]
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r4, #4]
	ldr r2, _0806ED9C  @ =0x84000002
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldr r1, [r1, #116]
	ldr r3, _0806EDA0  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldr r0, _0806EDC4  @ =0x03001E0A
	ldrh r0, [r0]
	str r0, [sp, #16]
	mov r1, r10
	mov r3, #0
	ldrsh r0, [r1, r3]
	sub r0, r0, #56
	ldr r3, [sp, #16]
	sub r1, r3, r0
	mov r0, r12
	and r1, r1, r0
	ldrh r3, [r2, #2]
	add r0, r5, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldr r2, _0806EDBC  @ =0x03001E0C
	ldrb r0, [r2]
	mov r3, r9
	ldrb r2, [r3]
	sub r0, r0, r2
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, [sp, #12]
	add r0, r0, #128
	ldr r0, [r0]
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r4, #4]
	ldr r0, _0806ED9C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldr r2, [sp, #12]
	ldr r0, [r2, #124]
	ldr r3, _0806EDA0  @ =0x000003FF
	and r0, r0, r3
	ldrh r2, [r1, #4]
	and r6, r6, r2
	orr r6, r6, r0
	strh r6, [r1, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldr r4, _0806EDC4  @ =0x03001E0A
	ldrh r1, [r4]
	mov r6, r10
	mov r3, #0
	ldrsh r0, [r6, r3]
	sub r0, r0, #40
	sub r1, r1, r0
	mov r4, r12
	and r1, r1, r4
	ldrh r0, [r2, #2]
	and r5, r5, r0
	orr r5, r5, r1
	strh r5, [r2, #2]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldr r5, _0806EDBC  @ =0x03001E0C
	ldrb r1, [r5]
	mov r6, r9
	ldrb r0, [r6]
	sub r0, r0, #16
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0806ED74:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0806ED84:
	.4byte REG_DMA3SAD
_0806ED88:
	.4byte gUnknown_0812CE04
_0806ED8C:
	.4byte OBJ_VRAM0
_0806ED90:
	.4byte 0x84000080
_0806ED94:
	.4byte gUnknown_0812CDFC
_0806ED98:
	.4byte gOamBuffer
_0806ED9C:
	.4byte 0x84000002
_0806EDA0:
	.4byte 0x000003FF
_0806EDA4:
	.4byte 0xFFFFFC00
_0806EDA8:
	.4byte 0x000001FF
_0806EDAC:
	.4byte 0xFFFFFE00
_0806EDB0:
	.4byte gUnknown_0812CD0C
_0806EDB4:
	.4byte 0x84000008
_0806EDB8:
	.4byte gUnknown_0812CD04
_0806EDBC:
	.4byte 0x03001E0C
_0806EDC0:
	.4byte 0x0000FFFF
_0806EDC4:
	.4byte 0x03001E0A
_0806EDC8:
	.4byte gSpriteHorizontalOffset
_0806EDCC:
	.4byte gUnknown_030012F4
	THUMB_FUNC_END update_level_tutorial_thought_bubble_OAM_0806E594
