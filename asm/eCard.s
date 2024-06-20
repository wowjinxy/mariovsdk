	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START e_card_scan_main
e_card_scan_main: @ 0x0802D6DC
	push {r4,r5,lr}
	sub sp, sp, #12
	bl sub_080331FC
	bl sub_08029C20
	mov r1, #0
	ldr r4, _0802D710  @ =gUnknown_030001A8
	ldr r0, [r4]
	sub r0, r0, #1
	cmp r0, #2
	bhi _0802D6F6
	mov r1, #1
_0802D6F6:
	add r0, r1, #0
	bl sub_08038130
	ldr r0, [r4]
	cmp r0, #14
	bls _0802D704
	b _0802DBD4
_0802D704:
	lsl r0, r0, #2
	ldr r1, _0802D714  @ =0x0802D718
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0802D710:
	.4byte gUnknown_030001A8
_0802D714:
	.4byte _0802D718
_0802D718:
	.4byte _0802D754
	.4byte _0802D7A6
	.4byte _0802D854
	.4byte _0802D8EE
	.4byte _0802DAA8
	.4byte _0802DADC
	.4byte _0802DBC0
	.4byte _0802DAF4
	.4byte _0802DAF0
	.4byte _0802DB3C
	.4byte _0802DB58
	.4byte _0802DBA0
	.4byte _0802DBA0
	.4byte _0802DB80
	.4byte _0802DB8C
_0802D754:
	ldr r0, _0802D784  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _0802D790
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0802D788  @ =gUnknown_030001A8
	mov r0, #1
	str r0, [r1]
	ldr r0, _0802D78C  @ =gUnknown_030001B8
	str r4, [r0]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802D784:
	.4byte gSomeKeys_030012E8
_0802D788:
	.4byte gUnknown_030001A8
_0802D78C:
	.4byte gUnknown_030001B8
_0802D790:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	bne _0802D79A
	b _0802DBD4
_0802D79A:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	b _0802DBAC
_0802D7A6:
	ldr r0, _0802D7D8  @ =gUnknown_030001B4
	ldr r4, [r0]
	cmp r4, #0
	beq _0802D7B0
	b _0802DBB6
_0802D7B0:
	mov r0, #1
	bl sub_08038228
	add r2, r0, #0
	cmp r2, #0
	beq _0802D7E0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0802D7DC  @ =gUnknown_030001A8
	mov r0, #2
	str r0, [r1]
	b _0802DBD4
_0802D7D8:
	.4byte gUnknown_030001B4
_0802D7DC:
	.4byte gUnknown_030001A8
_0802D7E0:
	ldr r0, _0802D7FC  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _0802D800
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	b _0802DBAC
_0802D7FC:
	.4byte gSomeKeys_030012E8
_0802D800:
	ldr r5, _0802D814  @ =gUnknown_030001B8
	ldr r1, [r5]
	ldr r0, _0802D818  @ =0x00000707
	cmp r1, r0
	bgt _0802D820
	ldr r0, _0802D81C  @ =gUnknown_03001748
	ldrh r0, [r0]
	add r0, r1, r0
	str r0, [r5]
	b _0802DBD4
_0802D814:
	.4byte gUnknown_030001B8
_0802D818:
	.4byte 0x00000707
_0802D81C:
	.4byte gUnknown_03001748
_0802D820:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r4, [r5]
	ldr r1, _0802D848  @ =gUnknown_030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802D84C  @ =gUnknown_030001AC
	ldr r0, _0802D850  @ =gUnknown_0807C850
	add r0, r0, #40
	str r0, [r1]
	b _0802DA90
	.byte 0x00
	.byte 0x00
_0802D848:
	.4byte gUnknown_030001A8
_0802D84C:
	.4byte gUnknown_030001AC
_0802D850:
	.4byte gUnknown_0807C850
_0802D854:
	mov r0, #1
	bl sub_08038228
	add r4, r0, #0
	cmp r4, #0
	bne _0802D898
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _0802D888  @ =gUnknown_030001B8
	str r4, [r0]
	ldr r1, _0802D88C  @ =gUnknown_030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802D890  @ =gUnknown_030001AC
	ldr r0, _0802D894  @ =gUnknown_0807C850
	add r0, r0, #80
	str r0, [r1]
	b _0802DA90
_0802D888:
	.4byte gUnknown_030001B8
_0802D88C:
	.4byte gUnknown_030001A8
_0802D890:
	.4byte gUnknown_030001AC
_0802D894:
	.4byte gUnknown_0807C850
_0802D898:
	ldr r0, _0802D8CC  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _0802D8D8
	ldr r0, _0802D8D0  @ =gUnknown_030001B8
	mov r1, #0
	str r1, [r0]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0802D8D4  @ =gUnknown_030001A8
	mov r0, #3
	str r0, [r1]
	bl sub_08038280
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802D8CC:
	.4byte gSomeKeys_030012E8
_0802D8D0:
	.4byte gUnknown_030001B8
_0802D8D4:
	.4byte gUnknown_030001A8
_0802D8D8:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	bne _0802D8E2
	b _0802DBD4
_0802D8E2:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	b _0802DBAC
_0802D8EE:
	ldr r0, _0802D90C  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _0802D910
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	b _0802DBAC
_0802D90C:
	.4byte gSomeKeys_030012E8
_0802D910:
	mov r0, #1
	bl sub_08038228
	cmp r0, #0
	bne _0802D954
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _0802D944  @ =gUnknown_030001B8
	str r4, [r0]
	ldr r1, _0802D948  @ =gUnknown_030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802D94C  @ =gUnknown_030001AC
	ldr r0, _0802D950  @ =gUnknown_0807C850
	add r0, r0, #80
	str r0, [r1]
	b _0802DA90
	.byte 0x00
	.byte 0x00
_0802D944:
	.4byte gUnknown_030001B8
_0802D948:
	.4byte gUnknown_030001A8
_0802D94C:
	.4byte gUnknown_030001AC
_0802D950:
	.4byte gUnknown_0807C850
_0802D954:
	mov r0, #2
	bl sub_08038228
	cmp r0, #0
	bne _0802D9B4
	ldr r5, _0802D974  @ =gUnknown_030001B8
	ldr r1, [r5]
	ldr r0, _0802D978  @ =0x00000707
	cmp r1, r0
	bgt _0802D980
	ldr r0, _0802D97C  @ =gUnknown_03001748
	ldrh r0, [r0]
	add r0, r1, r0
	str r0, [r5]
	b _0802D9B8
	.byte 0x00
	.byte 0x00
_0802D974:
	.4byte gUnknown_030001B8
_0802D978:
	.4byte 0x00000707
_0802D97C:
	.4byte gUnknown_03001748
_0802D980:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r4, [r5]
	ldr r1, _0802D9A8  @ =gUnknown_030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802D9AC  @ =gUnknown_030001AC
	ldr r0, _0802D9B0  @ =gUnknown_0807C850
	add r0, r0, #40
	str r0, [r1]
	b _0802DA90
	.byte 0x00
	.byte 0x00
_0802D9A8:
	.4byte gUnknown_030001A8
_0802D9AC:
	.4byte gUnknown_030001AC
_0802D9B0:
	.4byte gUnknown_0807C850
_0802D9B4:
	ldr r0, _0802D9F0  @ =gUnknown_030001B8
	str r4, [r0]
_0802D9B8:
	bl sub_08038264
	cmp r0, #0
	bne _0802D9C2
	b _0802DBD4
_0802D9C2:
	ldr r0, _0802D9F4  @ =gUnknown_030001BC
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1]
	ldr r4, _0802D9F8  @ =gUnknown_030001C0
	ldr r0, [r4]
	bl sub_0802F12C
	add r2, r0, #0
	cmp r2, #0
	bne _0802DA0C
	ldr r0, _0802D9F0  @ =gUnknown_030001B8
	str r2, [r0]
	ldr r1, _0802D9FC  @ =gUnknown_030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802DA00  @ =gUnknown_030001AC
	ldr r0, _0802DA04  @ =gUnknown_0807C850
	str r0, [r1]
	ldr r0, _0802DA08  @ =gUnknown_030001B0
	str r2, [r0]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802D9F0:
	.4byte gUnknown_030001B8
_0802D9F4:
	.4byte gUnknown_030001BC
_0802D9F8:
	.4byte gUnknown_030001C0
_0802D9FC:
	.4byte gUnknown_030001A8
_0802DA00:
	.4byte gUnknown_030001AC
_0802DA04:
	.4byte gUnknown_0807C850
_0802DA08:
	.4byte gUnknown_030001B0
_0802DA0C:
	ldr r4, [r4]
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0802DA3A
	add r0, r4, #0
	bl sub_08031944
	cmp r0, #2
	bne _0802DA22
	mov r3, #6
	b _0802DA4C
_0802DA22:
	add r0, r4, #0
	bl sub_08031944
	cmp r0, #1
	bne _0802DA30
	mov r3, #7
	b _0802DA4C
_0802DA30:
	add r0, r4, #0
	bl sub_08031978
	mov r3, #5
	b _0802DA4C
_0802DA3A:
	add r0, r4, #0
	add r0, r0, #16
	bl sub_0802F090
	mov r3, #1
	neg r3, r3
	cmp r0, #0
	beq _0802DA4C
	mov r3, #3
_0802DA4C:
	ldr r0, _0802DA64  @ =gUnknown_030001B8
	mov r4, #0
	str r4, [r0]
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	bne _0802DA6C
	ldr r1, _0802DA68  @ =gUnknown_030001A8
	mov r0, #4
	str r0, [r1]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802DA64:
	.4byte gUnknown_030001B8
_0802DA68:
	.4byte gUnknown_030001A8
_0802DA6C:
	cmp r3, #3
	bne _0802DA7C
	ldr r1, _0802DA78  @ =gUnknown_030001A8
	mov r0, #5
	str r0, [r1]
	b _0802DBD4
_0802DA78:
	.4byte gUnknown_030001A8
_0802DA7C:
	ldr r1, _0802DA98  @ =gUnknown_030001A8
	mov r0, #6
	str r0, [r1]
	ldr r2, _0802DA9C  @ =gUnknown_030001AC
	lsl r0, r3, #2
	add r0, r0, r3
	lsl r0, r0, #3
	ldr r1, _0802DAA0  @ =gUnknown_0807C850
	add r0, r0, r1
	str r0, [r2]
_0802DA90:
	ldr r0, _0802DAA4  @ =gUnknown_030001B0
	str r4, [r0]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802DA98:
	.4byte gUnknown_030001A8
_0802DA9C:
	.4byte gUnknown_030001AC
_0802DAA0:
	.4byte gUnknown_0807C850
_0802DAA4:
	.4byte gUnknown_030001B0
_0802DAA8:
	ldr r0, _0802DAD4  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	bne _0802DAB6
	b _0802DBD4
_0802DAB6:
	ldr r1, _0802DAD8  @ =gUnknown_030001A8
	mov r0, #7
	str r0, [r1]
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
	b _0802DBD4
_0802DAD4:
	.4byte gSomeKeys_030012E8
_0802DAD8:
	.4byte gUnknown_030001A8
_0802DADC:
	ldr r0, _0802DAEC  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0802DBD4
	b _0802DBA0
	.byte 0x00
	.byte 0x00
_0802DAEC:
	.4byte gSomeKeys_030012E8
_0802DAF0:
	bl sub_0802F06C
_0802DAF4:
	ldr r0, _0802DB30  @ =gUnknown_030001C0
	ldr r0, [r0]
	bl sub_0802EF70
	add r1, r0, #1
	ldr r0, _0802DB34  @ =gUnknown_030001BC
	ldr r4, [r0]
	mov r0, #101
	strb r0, [r4]
	add r4, r4, #1
	mov r0, #45
	strb r0, [r4]
	add r4, r4, #1
	cmp r1, #9
	ble _0802DB18
	mov r0, #49
	strb r0, [r4]
	add r4, r4, #1
_0802DB18:
	add r0, r1, #0
	mov r1, #10
	bl __modsi3
	add r0, r0, #48
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #1]
	ldr r1, _0802DB38  @ =gUnknown_030001A8
	mov r0, #9
	str r0, [r1]
	b _0802DBD4
_0802DB30:
	.4byte gUnknown_030001C0
_0802DB34:
	.4byte gUnknown_030001BC
_0802DB38:
	.4byte gUnknown_030001A8
_0802DB3C:
	ldr r0, _0802DB50  @ =gUnknown_0807CA94
	ldr r1, [r0]
	mov r0, #2
	mov r2, #104
	bl sub_0802A370
	ldr r1, _0802DB54  @ =gUnknown_030001A8
	mov r0, #10
	str r0, [r1]
	b _0802DBD4
_0802DB50:
	.4byte gUnknown_0807CA94
_0802DB54:
	.4byte gUnknown_030001A8
_0802DB58:
	ldr r0, _0802DB7C  @ =gUnknown_0807CA94
	ldr r1, [r0]
	ldr r0, [r1]
	add r0, r1, r0
	add r0, r0, #87
	ldrb r3, [r0]
	add r0, r3, #3
	lsl r2, r3, #1
	add r2, r2, r3
	lsl r2, r2, #10
	add r2, r2, #104
	add r1, r1, r2
	mov r2, #192
	lsl r2, r2, #4
	bl sub_0802A370
	b _0802DB92
	.byte 0x00
	.byte 0x00
_0802DB7C:
	.4byte gUnknown_0807CA94
_0802DB80:
	ldr r0, _0802DB88  @ =gUnknown_030001C0
	ldr r0, [r0]
	b _0802DB8E
	.byte 0x00
	.byte 0x00
_0802DB88:
	.4byte gUnknown_030001C0
_0802DB8C:
	mov r0, #0
_0802DB8E:
	bl sub_08031978
_0802DB92:
	ldr r1, _0802DB9C  @ =gUnknown_030001A8
	mov r0, #11
	str r0, [r1]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802DB9C:
	.4byte gUnknown_030001A8
_0802DBA0:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
_0802DBAC:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802DBB6:
	mov r0, #25
	mov r1, #0
	bl change_main_state
	b _0802DBD4
_0802DBC0:
	ldr r0, _0802DBE0  @ =gUnknown_030001B0
	ldr r1, _0802DBE4  @ =gUnknown_030001AC
	ldr r1, [r1]
	bl sub_08031C54
	add r1, r0, #0
	cmp r1, #0
	blt _0802DBD4
	ldr r0, _0802DBE8  @ =gUnknown_030001A8
	str r1, [r0]
_0802DBD4:
	bl sub_0802ECC8
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_0802DBE0:
	.4byte gUnknown_030001B0
_0802DBE4:
	.4byte gUnknown_030001AC
_0802DBE8:
	.4byte gUnknown_030001A8
	THUMB_FUNC_END e_card_scan_main

	THUMB_FUNC_START e_card_scan_loop
e_card_scan_loop: @ 0x0802DBEC
	push {r4-r7,lr}
	sub sp, sp, #12
	add r4, sp, #8
	mov r0, #0
	strh r0, [r4]
	mov r0, #160
	str r0, [sp, #4]
	ldr r1, _0802DCD0  @ =REG_DMA3SAD
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _0802DCD4  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _0802DCD8  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_080351E0
	mov r6, #26
	ldr r1, _0802DCDC  @ =gUnknown_0807C9CC
	ldr r5, _0802DCE0  @ =gUnknown_030001A8
	ldr r0, [r5]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r2, [r0]
	add r7, r4, #0
	cmp r2, #0
	beq _0802DC34
	ldr r1, _0802DCE4  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r0, #82
	str r0, [sp]
	add r0, r2, #0
	mov r2, #138
	bl sub_08034CCC
_0802DC34:
	ldr r2, [r5]
	cmp r2, #6
	bne _0802DC46
	ldr r0, _0802DCE8  @ =gUnknown_030001AC
	ldr r0, [r0]
	add r0, r0, #36
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802DC60
_0802DC46:
	ldr r1, _0802DCEC  @ =gUnknown_0807C990
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802DCE4  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #18
	str r2, [sp]
	mov r2, #26
	bl sub_08034CCC
	add r6, r0, #0
_0802DC60:
	ldr r4, _0802DCE0  @ =gUnknown_030001A8
	ldr r0, [r4]
	cmp r0, #6
	bne _0802DC7A
	ldr r0, _0802DCF0  @ =gUnknown_030001B0
	ldr r0, [r0]
	ldr r1, _0802DCE8  @ =gUnknown_030001AC
	ldr r1, [r1]
	ldr r2, _0802DCF4  @ =gUnknown_030001C0
	ldr r3, [r2]
	add r2, r6, #0
	bl sub_08031D44
_0802DC7A:
	ldr r1, [r4]
	sub r0, r1, #4
	cmp r0, #1
	bhi _0802DCFC
	ldr r0, _0802DCF8  @ =gUnknown_030001BC
	ldr r3, [r0]
	ldrb r1, [r3]
	add r5, r0, #0
	cmp r1, #0
	bne _0802DCBA
	ldr r0, _0802DCF4  @ =gUnknown_030001C0
	ldr r1, [r0]
	add r2, r1, #0
	add r2, r2, #16
	mov r0, #34
	strb r0, [r3]
	ldr r0, [r5]
	add r3, r0, #1
	ldrb r0, [r1, #16]
	cmp r0, #0
	beq _0802DCB2
_0802DCA4:
	ldrb r0, [r2]
	strb r0, [r3]
	add r2, r2, #1
	add r3, r3, #1
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802DCA4
_0802DCB2:
	mov r0, #34
	strb r0, [r3]
	mov r0, #0
	strb r0, [r3, #1]
_0802DCBA:
	ldr r0, [r5]
	ldr r1, _0802DCE4  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #18
	str r2, [sp]
	add r2, r6, #0
	bl sub_08034CCC
	b _0802DD18
	.byte 0x00
	.byte 0x00
_0802DCD0:
	.4byte REG_DMA3SAD
_0802DCD4:
	.4byte gOamData
_0802DCD8:
	.4byte 0x85000100
_0802DCDC:
	.4byte gUnknown_0807C9CC
_0802DCE0:
	.4byte gUnknown_030001A8
_0802DCE4:
	.4byte 0xFFFF8001
_0802DCE8:
	.4byte gUnknown_030001AC
_0802DCEC:
	.4byte gUnknown_0807C990
_0802DCF0:
	.4byte gUnknown_030001B0
_0802DCF4:
	.4byte gUnknown_030001C0
_0802DCF8:
	.4byte gUnknown_030001BC
_0802DCFC:
	add r0, r1, #0
	sub r0, r0, #9
	cmp r0, #1
	bhi _0802DD18
	ldr r0, _0802DD38  @ =gUnknown_030001BC
	ldr r0, [r0]
	ldr r1, _0802DD3C  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #18
	str r2, [sp]
	add r2, r6, #0
	bl sub_08034CCC
_0802DD18:
	add r0, r7, #0
	bl sub_08035108
	ldr r1, _0802DD40  @ =REG_DMA3SAD
	ldr r0, _0802DD44  @ =gOamData
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0802DD48  @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_0802DD38:
	.4byte gUnknown_030001BC
_0802DD3C:
	.4byte 0xFFFF8001
_0802DD40:
	.4byte REG_DMA3SAD
_0802DD44:
	.4byte gOamData
_0802DD48:
	.4byte 0x80000200
	THUMB_FUNC_END e_card_scan_loop

	THUMB_FUNC_START e_card_scan_init_callback
e_card_scan_init_callback: @ 0x0802DD4C
	push {r4,lr}
	sub sp, sp, #4
	ldr r0, _0802DDC0  @ =gUnknown_030001B4
	ldr r2, [r0]
	cmp r2, #0
	bne _0802DD68
	ldr r0, _0802DDC4  @ =gUnknown_030001A8
	str r2, [r0]
	ldr r1, _0802DDC8  @ =gUnknown_030001C0
	mov r0, #128
	lsl r0, r0, #18
	str r0, [r1]
	ldr r0, _0802DDCC  @ =gUnknown_030001AC
	str r2, [r0]
_0802DD68:
	mov r0, #3
	bl arena_save_head
	ldr r4, _0802DDD0  @ =gUnknown_030001BC
	mov r0, #64
	bl arena_allocate
	str r0, [r4]
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0802DDC8  @ =gUnknown_030001C0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #5
	bl sub_080381E4
	mov r0, #160
	str r0, [sp]
	ldr r0, _0802DDD4  @ =REG_DMA3SAD
	mov r1, sp
	str r1, [r0]
	ldr r2, _0802DDD8  @ =gOamData
	str r2, [r0, #4]
	ldr r1, _0802DDDC  @ =0x85000100
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [r0]
	mov r1, #224
	lsl r1, r1, #19
	str r1, [r0, #4]
	ldr r1, _0802DDE0  @ =0x80000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802DDE4  @ =0x0000FDFF
	and r0, r0, r1
	strh r0, [r2]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802DDC0:
	.4byte gUnknown_030001B4
_0802DDC4:
	.4byte gUnknown_030001A8
_0802DDC8:
	.4byte gUnknown_030001C0
_0802DDCC:
	.4byte gUnknown_030001AC
_0802DDD0:
	.4byte gUnknown_030001BC
_0802DDD4:
	.4byte REG_DMA3SAD
_0802DDD8:
	.4byte gOamData
_0802DDDC:
	.4byte 0x85000100
_0802DDE0:
	.4byte 0x80000200
_0802DDE4:
	.4byte 0x0000FDFF
	THUMB_FUNC_END e_card_scan_init_callback

	THUMB_FUNC_START e_card_scan_end
e_card_scan_end: @ 0x0802DDE8
	push {lr}
	bl sub_080382A8
	mov r0, #3
	bl arena_restore_head
	ldr r1, _0802DE04  @ =gUnknown_030001B4
	mov r0, #0
	str r0, [r1]
	bl sub_0802EE54
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802DE04:
	.4byte gUnknown_030001B4
	THUMB_FUNC_END e_card_scan_end

	THUMB_FUNC_START e_world_return_init_callback
e_world_return_init_callback: @ 0x0802DE08
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r6, _0802DF14  @ =gUnknown_030001C4
	ldr r1, [r6]
	add r0, r1, #0
	add r0, r0, #200
	ldrh r5, [r0]
	ldr r4, _0802DF18  @ =gEWorldMenuData1
	ldr r3, _0802DF1C  @ =gCameraHorizontalOffset
	ldr r2, _0802DF20  @ =gCameraVerticalOffset
	mov r0, #0
	strh r0, [r2]
	strh r0, [r3]
	mov r2, sp
	strh r0, [r2]
	ldr r2, _0802DF24  @ =0x0100047E
	mov r0, sp
	bl CpuSet
	add r0, r4, #0
	bl sub_08006968
	ldr r3, [r6]
	ldr r2, _0802DF28  @ =0x000008F8
	add r1, r3, r2
	str r0, [r1]
	ldr r1, _0802DF2C  @ =0x000008F4
	add r0, r3, r1
	ldr r2, [r4, #72]
	str r2, [r0]
	ldr r1, _0802DF30  @ =REG_DMA3SAD
	str r2, [r1]
	add r0, r3, #0
	add r0, r0, #244
	str r0, [r1, #4]
	ldr r0, _0802DF34  @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, r3, #0
	add r0, r0, #200
	mov r4, #0
	strh r5, [r0]
	add r1, r3, #0
	add r1, r1, #192
	mov r0, #1
	neg r0, r0
	str r0, [r1]
	add r2, r3, #0
	add r2, r2, #188
	add r1, r1, #4
	mov r0, #1
	str r0, [r1]
	str r0, [r2]
	sub r2, r2, #4
	mov r1, #3
	str r1, [r2]
	ldr r1, _0802DF38  @ =gUnknown_0807CA98
	ldr r1, [r1]
	ldrh r1, [r1, #50]
	and r0, r0, r1
	cmp r0, #0
	bne _0802DE8C
	mov r0, #2
	str r0, [r2]
_0802DE8C:
	ldr r1, _0802DF3C  @ =gUnknown_03001930
	ldr r0, _0802DF40  @ =gUnknown_0300192C
	strh r4, [r0]
	strh r4, [r1]
	mov r5, #0
	mov r7, sp
	add r7, r7, #2
	mov r8, r6
	mov r6, #0
_0802DE9E:
	lsl r1, r5, #2
	mov r2, r8
	ldr r0, [r2]
	add r4, r0, r6
	cmp r5, #2
	bne _0802DEAE
	mov r0, #1
	strb r0, [r4, #13]
_0802DEAE:
	ldr r0, _0802DF44  @ =gUnknown_0807CA08
	add r0, r1, r0
	ldr r1, [r0]
	add r0, r4, #0
	bl sub_08028068
	cmp r5, #6
	beq _0802DEC2
	cmp r5, #8
	bne _0802DECE
_0802DEC2:
	ldr r0, [r4]
	ldr r1, [r0, #12]
	ldrh r0, [r4, #8]
	ldrb r1, [r1, #1]
	add r0, r0, r1
	strh r0, [r4, #8]
_0802DECE:
	sub r0, r5, #3
	cmp r0, #5
	bhi _0802DED8
	mov r0, #2
	strh r0, [r4, #16]
_0802DED8:
	add r6, r6, #20
	add r5, r5, #1
	cmp r5, #8
	ble _0802DE9E
	mov r4, #0
	mov r0, #8
	mov r1, #3
	bl load_predefined_palette
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r3, #224
	lsl r3, r3, #4
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	strh r4, [r7]
	ldr r1, _0802DF48  @ =gBGLayerOffsets 
	ldr r2, _0802DF4C  @ =0x01000008
	add r0, r7, #0
	bl CpuSet
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802DF14:
	.4byte gUnknown_030001C4
_0802DF18:
	.4byte gEWorldMenuData1
_0802DF1C:
	.4byte gCameraHorizontalOffset
_0802DF20:
	.4byte gCameraVerticalOffset
_0802DF24:
	.4byte 0x0100047E
_0802DF28:
	.4byte 0x000008F8
_0802DF2C:
	.4byte 0x000008F4
_0802DF30:
	.4byte REG_DMA3SAD
_0802DF34:
	.4byte 0x80000400
_0802DF38:
	.4byte gUnknown_0807CA98
_0802DF3C:
	.4byte gUnknown_03001930
_0802DF40:
	.4byte gUnknown_0300192C
_0802DF44:
	.4byte gUnknown_0807CA08
_0802DF48:
	.4byte gBGLayerOffsets 
_0802DF4C:
	.4byte 0x01000008
	THUMB_FUNC_END e_world_return_init_callback

	THUMB_FUNC_START e_world_main
e_world_main: @ 0x0802DF50
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	bl sub_080331FC
	bl sub_08029C20
	ldr r6, _0802DFA0  @ =gUnknown_030001C4
	mov r5, #0
	mov r4, #8
_0802DF6A:
	ldr r0, [r6]
	add r0, r0, r5
	mov r1, #1
	neg r1, r1
	bl sub_080280CC
	add r5, r5, #20
	sub r4, r4, #1
	cmp r4, #0
	bge _0802DF6A
	ldr r2, _0802DFA0  @ =gUnknown_030001C4
	ldr r4, [r2]
	add r0, r4, #0
	add r0, r0, #188
	add r1, r4, #0
	add r1, r1, #196
	ldr r3, [r0]
	ldr r0, [r1]
	mov r9, r2
	cmp r3, r0
	beq _0802E04E
	cmp r3, #6
	bne _0802DFA4
	mov r0, #8
	bl sub_0802ED28
	b _0802DFC2
_0802DFA0:
	.4byte gUnknown_030001C4
_0802DFA4:
	cmp r3, #3
	bne _0802DFC2
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802E000  @ =0x0000FEFF
	and r0, r0, r1
	strh r0, [r2]
	add r1, r4, #0
	add r1, r1, #208
	mov r0, #0
	str r0, [r1]
	mov r0, #7
	bl sub_0802ED28
_0802DFC2:
	ldr r0, _0802E004  @ =gUnknown_030001C4
	ldr r3, [r0]
	add r0, r3, #0
	add r0, r0, #196
	ldr r0, [r0]
	cmp r0, #2
	bne _0802E018
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r4, #128
	lsl r4, r4, #1
	add r1, r4, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0802E008  @ =REG_BLDCNT
	ldr r2, _0802E00C  @ =0x00002A41
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #2
	ldr r4, _0802E010  @ =0x00000A0A
	add r0, r4, #0
	strh r0, [r1]
	ldr r1, _0802E014  @ =gBGLayerOffsets 
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	add r1, r3, #0
	add r1, r1, #208
	mov r0, #1
	b _0802E03C
_0802E000:
	.4byte 0x0000FEFF
_0802E004:
	.4byte gUnknown_030001C4
_0802E008:
	.4byte REG_BLDCNT
_0802E00C:
	.4byte 0x00002A41
_0802E010:
	.4byte 0x00000A0A
_0802E014:
	.4byte gBGLayerOffsets 
_0802E018:
	cmp r0, #6
	bne _0802E024
	mov r0, #8
	bl sub_0802ED74
	b _0802E03E
_0802E024:
	cmp r0, #3
	bne _0802E030
	mov r0, #7
	bl sub_0802ED74
	b _0802E03E
_0802E030:
	cmp r0, #1
	bne _0802E03E
	add r1, r3, #0
	add r1, r1, #192
	mov r0, #1
	neg r0, r0
_0802E03C:
	str r0, [r1]
_0802E03E:
	ldr r2, _0802E068  @ =gUnknown_030001C4
	ldr r0, [r2]
	add r1, r0, #0
	add r1, r1, #188
	add r0, r0, #196
	ldr r0, [r0]
	str r0, [r1]
	mov r9, r2
_0802E04E:
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #6
	bls _0802E05C
	b _0802E762
_0802E05C:
	lsl r0, r0, #2
	ldr r1, _0802E06C  @ =0x0802E070
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0802E068:
	.4byte gUnknown_030001C4
_0802E06C:
	.4byte _0802E070
_0802E070:
	.4byte _0802E35C
	.4byte _0802E08C
	.4byte _0802E35C
	.4byte _0802E294
	.4byte _0802E6E4
	.4byte _0802E6FE
	.4byte _0802E710
_0802E08C:
	mov r2, r9
	ldr r4, [r2]
	ldr r0, _0802E0C4  @ =gUnknown_0807CA2C
	ldrb r0, [r0, #1]
	add r1, r4, #0
	add r1, r1, #202
	mov r3, #0
	strh r0, [r1]
	ldr r0, _0802E0C8  @ =gUnknown_03001708
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	beq _0802E0CC
	add r2, r4, #0
	add r2, r2, #180
	ldr r0, [r2]
	cmp r0, #0
	ble _0802E162
	sub r0, r0, #1
	str r0, [r2]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	b _0802E0F2
_0802E0C4:
	.4byte gUnknown_0807CA2C
_0802E0C8:
	.4byte gUnknown_03001708
_0802E0CC:
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0802E100
	add r3, r4, #0
	add r3, r3, #180
	add r0, r4, #0
	add r0, r0, #184
	ldr r0, [r0]
	sub r0, r0, #1
	ldr r1, [r3]
	cmp r1, r0
	bge _0802E162
	add r0, r1, #1
	str r0, [r3]
	str r2, [sp]
	str r5, [sp, #4]
	str r2, [sp, #8]
_0802E0F2:
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0802E162
_0802E100:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0802E162
	ldr r0, _0802E120  @ =gUnknown_0807CA98
	ldr r0, [r0]
	mov r1, #48
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0802E162
	mov r5, #0
	add r0, r4, #0
	add r0, r0, #180
	ldr r0, [r0]
	lsl r4, r0, #2
	b _0802E128
_0802E120:
	.4byte gUnknown_0807CA98
_0802E124:
	add r5, r5, #1
	add r4, r4, #1
_0802E128:
	cmp r5, #11
	bgt _0802E144
	cmp r4, #11
	ble _0802E132
	mov r4, #0
_0802E132:
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	beq _0802E124
	ldr r0, _0802E188  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r0, r0, #192
	str r4, [r0]
_0802E144:
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
	ldr r0, _0802E188  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r0, r0, #196
	str r4, [r0]
_0802E162:
	ldr r0, _0802E18C  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r4, #9
	and r4, r4, r1
	cmp r4, #0
	bne _0802E170
	b _0802E26C
_0802E170:
	ldr r5, _0802E188  @ =gUnknown_030001C4
	ldr r0, [r5]
	add r0, r0, #180
	ldr r1, [r0]
	cmp r1, #1
	beq _0802E1CC
	cmp r1, #1
	bgt _0802E190
	cmp r1, #0
	beq _0802E196
	b _0802E762
	.byte 0x00
	.byte 0x00
_0802E188:
	.4byte gUnknown_030001C4
_0802E18C:
	.4byte gSomeKeys_030012E8
_0802E190:
	cmp r1, #2
	beq _0802E236
	b _0802E762
_0802E196:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _0802E1C0  @ =gUnknown_0807CA98
	ldr r0, [r0]
	mov r2, #48
	ldrsh r0, [r0, r2]
	cmp r0, #11
	bgt _0802E1C4
	mov r0, #26
	mov r1, #0
	bl change_main_state
	b _0802E762
_0802E1C0:
	.4byte gUnknown_0807CA98
_0802E1C4:
	ldr r0, [r5]
	add r0, r0, #196
	mov r1, #6
	b _0802E760
_0802E1CC:
	ldr r4, _0802E220  @ =gUnknown_0807CA98
	ldr r0, [r4]
	mov r1, #48
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0802E228
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
	ldr r0, [r5]
	add r0, r0, #196
	mov r1, #2
	str r1, [r0]
	mov r2, #0
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	bne _0802E214
	add r3, r4, #0
_0802E202:
	add r2, r2, #1
	cmp r2, #10
	bgt _0802E214
	ldr r0, [r3]
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0802E202
_0802E214:
	ldr r0, _0802E224  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r0, r0, #192
	str r2, [r0]
	b _0802E762
	.byte 0x00
	.byte 0x00
_0802E220:
	.4byte gUnknown_0807CA98
_0802E224:
	.4byte gUnknown_030001C4
_0802E228:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _0802E420
_0802E236:
	ldr r1, _0802E264  @ =gLivesCount
	mov r0, #5
	strb r0, [r1]
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _0802E268  @ =gNextLevelID
	strb r4, [r0]
	mov r0, #12
	mov r1, #1
	bl change_main_state
	ldr r0, [r5]
	add r0, r0, #204
	b _0802E75E
_0802E264:
	.4byte gLivesCount
_0802E268:
	.4byte gNextLevelID
_0802E26C:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0802E276
	b _0802E762
_0802E276:
	ldr r0, _0802E290  @ =gLevelEWorldFlag
	strb r4, [r0]
	mov r0, #3
	mov r1, #1
	bl change_main_state
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	b _0802E420
	.byte 0x00
	.byte 0x00
_0802E290:
	.4byte gLevelEWorldFlag
_0802E294:
	ldr r0, _0802E2C0  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0802E2C4
	mov r2, r9
	ldr r0, [r2]
	add r2, r0, #0
	add r2, r2, #180
	ldr r0, [r2]
	cmp r0, #1
	beq _0802E2B0
	b _0802E762
_0802E2B0:
	mov r1, #0
	str r1, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _0802E420
_0802E2C0:
	.4byte gSomeKeys_030012E8
_0802E2C4:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0802E2EC
	mov r4, r9
	ldr r0, [r4]
	add r2, r0, #0
	add r2, r2, #180
	ldr r1, [r2]
	cmp r1, #0
	beq _0802E2DC
	b _0802E762
_0802E2DC:
	mov r0, #1
	str r0, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _0802E420
_0802E2EC:
	mov r0, #11
	and r0, r0, r1
	cmp r0, #0
	bne _0802E2F6
	b _0802E762
_0802E2F6:
	ldr r4, _0802E32C  @ =gUnknown_030001C4
	ldr r0, [r4]
	add r0, r0, #180
	ldr r0, [r0]
	cmp r0, #1
	bne _0802E330
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	bne _0802E330
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r4]
	add r0, r0, #196
	mov r1, #4
	b _0802E34E
	.byte 0x00
	.byte 0x00
_0802E32C:
	.4byte gUnknown_030001C4
_0802E330:
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
	ldr r0, _0802E358  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r0, r0, #196
	mov r1, #1
_0802E34E:
	str r1, [r0]
	ldr r0, _0802E358  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r0, r0, #180
	b _0802E75E
_0802E358:
	.4byte gUnknown_030001C4
_0802E35C:
	mov r0, r9
	ldr r4, [r0]
	mov r1, #192
	add r1, r1, r4
	mov r12, r1
	ldr r1, [r1]
	mov r7, #4
	neg r7, r7
	and r7, r7, r1
	mov r2, #3
	mov r10, r2
	add r6, r1, #0
	and r6, r6, r2
	ldr r0, _0802E3AC  @ =gUnknown_03001708
	ldrh r3, [r0]
	mov r0, #64
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _0802E3EE
	sub r4, r1, #4
	cmp r4, #0
	blt _0802E3B0
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	beq _0802E3B0
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, #192
	str r4, [r0]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	b _0802E41E
	.byte 0x00
	.byte 0x00
_0802E3AC:
	.4byte gUnknown_03001708
_0802E3B0:
	sub r4, r7, #1
	mov r5, #0
	b _0802E3B8
_0802E3B6:
	sub r4, r4, #1
_0802E3B8:
	cmp r4, #0
	blt _0802E3E0
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	beq _0802E3B6
	ldr r0, _0802E3DC  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r0, r0, #192
	str r4, [r0]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #178
	b _0802E5F6
	.byte 0x00
	.byte 0x00
_0802E3DC:
	.4byte gUnknown_030001C4
_0802E3E0:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _0802E5F6
_0802E3EE:
	mov r2, #128
	mov r8, r2
	mov r0, r8
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	beq _0802E46A
	add r4, r1, #4
	cmp r4, #11
	bgt _0802E42C
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	beq _0802E42C
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, #192
	str r4, [r0]
	str r5, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r5, [sp, #8]
_0802E41E:
	mov r0, #178
_0802E420:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0802E762
_0802E42C:
	add r4, r7, #4
	mov r5, #0
	b _0802E434
_0802E432:
	add r4, r4, #1
_0802E434:
	cmp r4, #11
	bgt _0802E45C
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	beq _0802E432
	ldr r0, _0802E458  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r0, r0, #192
	str r4, [r0]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #178
	b _0802E5F6
	.byte 0x00
	.byte 0x00
_0802E458:
	.4byte gUnknown_030001C4
_0802E45C:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _0802E5F6
_0802E46A:
	mov r0, #16
	and r0, r0, r3
	cmp r0, #0
	beq _0802E4C6
	cmp r6, #2
	bgt _0802E4BA
	add r5, r7, #4
	add r4, r1, #1
	b _0802E47E
_0802E47C:
	add r4, r4, #1
_0802E47E:
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	bne _0802E48C
	cmp r4, r5
	blt _0802E47C
_0802E48C:
	cmp r4, r5
	bge _0802E4AC
	ldr r0, _0802E4A8  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r0, r0, #192
	str r4, [r0]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _0802E5F6
	.byte 0x00
	.byte 0x00
_0802E4A8:
	.4byte gUnknown_030001C4
_0802E4AC:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _0802E5F6
_0802E4BA:
	str r2, [sp]
	mov r4, r8
	str r4, [sp, #4]
	str r2, [sp, #8]
	mov r0, #27
	b _0802E5F6
_0802E4C6:
	mov r0, #32
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	cmp r0, #0
	beq _0802E55A
	add r5, r7, #0
	sub r4, r1, #1
	b _0802E4DC
_0802E4DA:
	sub r4, r4, #1
_0802E4DC:
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	bne _0802E4EA
	cmp r4, r5
	bge _0802E4DA
_0802E4EA:
	cmp r4, r5
	blt _0802E508
	ldr r0, _0802E504  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r0, r0, #192
	str r4, [r0]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _0802E5F6
_0802E504:
	.4byte gUnknown_030001C4
_0802E508:
	ldr r0, _0802E548  @ =gUnknown_030001C4
	ldr r3, [r0]
	add r0, r3, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #2
	beq _0802E54C
	add r0, r3, #0
	add r0, r0, #192
	ldr r1, [r0]
	asr r1, r1, #2
	add r2, r3, #0
	add r2, r2, #196
	mov r0, #1
	str r0, [r2]
	sub r2, r2, #16
	str r1, [r2]
	add r0, r3, #0
	add r0, r0, #184
	ldr r0, [r0]
	cmp r1, r0
	blt _0802E538
	sub r0, r0, #1
	str r0, [r2]
_0802E538:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _0802E5F6
	.byte 0x00
	.byte 0x00
_0802E548:
	.4byte gUnknown_030001C4
_0802E54C:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _0802E5F6
_0802E55A:
	ldr r0, _0802E5C4  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r3, #9
	and r3, r3, r2
	cmp r3, #0
	beq _0802E614
	add r0, r4, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #2
	bne _0802E5CC
	add r0, r4, #0
	add r0, r0, #180
	mov r1, r8
	str r1, [r0]
	add r0, r0, #16
	mov r2, r10
	str r2, [r0]
	mov r1, r12
	ldr r0, [r1]
	add r5, r0, #1
	ldr r0, _0802E5C8  @ =gTextEraseLevelE
	add r1, r4, #0
	add r1, r1, #212
	mov r2, #7
	bl CpuSet
	mov r2, r9
	ldr r6, [r2]
	add r4, r6, #0
	add r4, r4, #226
	cmp r5, #9
	ble _0802E5AA
	add r0, r5, #0
	mov r1, #10
	bl __divsi3
	add r0, r0, #48
	strb r0, [r4]
	add r4, r4, #1
_0802E5AA:
	add r0, r5, #0
	mov r1, #10
	bl __modsi3
	add r0, r0, #48
	strb r0, [r4]
	add r4, r4, #1
	mov r0, #63
	strb r0, [r4]
	mov r0, r8
	strb r0, [r4, #1]
	b _0802E5EA
	.byte 0x00
	.byte 0x00
_0802E5C4:
	.4byte gSomeKeys_030012E8
_0802E5C8:
	.4byte gTextEraseLevelE
_0802E5CC:
	ldr r0, _0802E604  @ =gNextLevelID
	strb r1, [r0]
	ldr r1, _0802E608  @ =gLevelEWorldFlag
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0802E60C  @ =gLevelType
	mov r1, r8
	strb r1, [r0]
	ldr r1, _0802E610  @ =gLivesCount
	mov r0, #5
	strb r0, [r1]
	mov r0, #12
	mov r1, #1
	bl change_main_state
_0802E5EA:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
_0802E5F6:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0802E67E
	.byte 0x00
	.byte 0x00
_0802E604:
	.4byte gNextLevelID
_0802E608:
	.4byte gLevelEWorldFlag
_0802E60C:
	.4byte gLevelType
_0802E610:
	.4byte gLivesCount
_0802E614:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _0802E67E
	add r0, r4, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #2
	bne _0802E648
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802E644  @ =0x0000FEFF
	and r0, r0, r1
	strh r0, [r2]
	add r0, r4, #0
	add r0, r0, #208
	str r3, [r0]
	add r1, r4, #0
	add r1, r1, #180
	mov r0, #1
	str r0, [r1]
	b _0802E65E
	.byte 0x00
	.byte 0x00
_0802E644:
	.4byte 0x0000FEFF
_0802E648:
	add r2, r4, #0
	add r2, r2, #180
	asr r1, r1, #2
	str r1, [r2]
	add r0, r4, #0
	add r0, r0, #184
	ldr r0, [r0]
	cmp r1, r0
	blt _0802E65E
	sub r0, r0, #1
	str r0, [r2]
_0802E65E:
	ldr r0, _0802E6D4  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r0, r0, #196
	mov r1, #1
	str r1, [r0]
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
_0802E67E:
	ldr r4, _0802E6D4  @ =gUnknown_030001C4
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #2
	bne _0802E6AE
	add r0, r1, #0
	add r0, r0, #192
	ldr r1, [r0]
	asr r7, r1, #2
	mov r0, #3
	and r1, r1, r0
	ldr r3, _0802E6D8  @ =gBGLayerOffsets 
	neg r2, r7
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #3
	strh r0, [r3, #2]
	neg r1, r1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	strh r0, [r3]
_0802E6AE:
	ldr r3, [r4]
	ldr r2, _0802E6DC  @ =gUnknown_0807CA2C
	ldr r0, _0802E6E0  @ =gUnknown_0807CA98
	ldr r1, [r0]
	add r0, r3, #0
	add r0, r0, #192
	ldr r0, [r0]
	lsl r0, r0, #2
	add r1, r1, r0
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	add r0, r0, #2
	lsl r0, r0, #1
	add r2, r2, #1
	add r0, r0, r2
	ldrb r0, [r0]
	add r3, r3, #202
	strh r0, [r3]
	b _0802E762
_0802E6D4:
	.4byte gUnknown_030001C4
_0802E6D8:
	.4byte gBGLayerOffsets 
_0802E6DC:
	.4byte gUnknown_0807CA2C
_0802E6E0:
	.4byte gUnknown_0807CA98
_0802E6E4:
	mov r2, r9
	ldr r0, [r2]
	add r0, r0, #192
	ldr r0, [r0]
	bl sub_0802EEC8
	bl sub_0802EE54
	mov r4, r9
	ldr r0, [r4]
	add r0, r0, #196
	mov r1, #5
	b _0802E760
_0802E6FE:
	ldr r0, _0802E70C  @ =gUnknown_0807CA94
	ldr r1, [r0]
	mov r0, #2
	mov r2, #104
	bl sub_0802A370
	b _0802E758
_0802E70C:
	.4byte gUnknown_0807CA94
_0802E710:
	ldr r0, _0802E740  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0802E762
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _0802E744
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
	b _0802E758
_0802E740:
	.4byte gSomeKeys_030012E8
_0802E744:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802E758:
	ldr r0, _0802E77C  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r0, r0, #196
_0802E75E:
	mov r1, #1
_0802E760:
	str r1, [r0]
_0802E762:
	bl sub_0802ECC8
	bl sub_0801B310
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
_0802E77C:
	.4byte gUnknown_030001C4
	THUMB_FUNC_END e_world_main

	THUMB_FUNC_START sub_0802E780
sub_0802E780: @ 0x0802E780
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r2, r0, #0
	cmp r1, #0
	beq _0802E7DC
	ldr r5, _0802E7D0  @ =gUnknown_030001C4
	ldr r2, [r5]
	ldr r1, _0802E7D4  @ =0x000008F8
	add r0, r2, r1
	ldr r0, [r0]
	mov r3, #142
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r4, _0802E7D8  @ =gUnknown_0807CA40
	add r0, r4, #0
	add r0, r0, #40
	add r2, r2, #244
	mov r3, #5
	bl sub_080064D4
	ldr r2, [r5]
	ldr r1, _0802E7D4  @ =0x000008F8
	add r0, r2, r1
	ldr r0, [r0]
	mov r3, #144
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	add r4, r4, #48
	add r2, r2, #244
	add r0, r4, #0
	mov r3, #5
	bl sub_080064D4
	b _0802E86A
	.byte 0x00
	.byte 0x00
_0802E7D0:
	.4byte gUnknown_030001C4
_0802E7D4:
	.4byte 0x000008F8
_0802E7D8:
	.4byte gUnknown_0807CA40
_0802E7DC:
	ldr r0, _0802E878  @ =gUnknown_0807CA98
	mov r9, r0
	ldr r0, [r0]
	lsl r2, r2, #2
	mov r8, r2
	add r0, r0, r8
	ldr r0, [r0]
	ldr r4, [r0, #48]
	mov r0, #240
	and r4, r4, r0
	lsr r4, r4, #4
	ldr r5, _0802E87C  @ =gUnknown_030001C4
	ldr r2, [r5]
	ldr r1, _0802E880  @ =0x000008F8
	add r0, r2, r1
	ldr r0, [r0]
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r6, _0802E884  @ =gUnknown_0807CA40
	add r2, r2, #244
	add r0, r6, #0
	mov r3, #5
	bl sub_080064D4
	ldr r2, [r5]
	ldr r1, _0802E880  @ =0x000008F8
	add r0, r2, r1
	ldr r0, [r0]
	mov r3, #134
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	add r0, r6, #0
	add r0, r0, #8
	add r2, r2, #244
	mov r3, #5
	bl sub_080064D4
	add r4, r4, #2
	ldr r2, [r5]
	ldr r1, _0802E880  @ =0x000008F8
	add r0, r2, r1
	ldr r0, [r0]
	lsl r1, r4, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r1
	ldr r1, [r0]
	lsl r4, r4, #3
	add r4, r4, r6
	add r2, r2, #244
	add r0, r4, #0
	mov r3, #5
	bl sub_080064D4
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, r8
	ldr r0, [r0]
	add r0, r0, #16
	mov r3, #1
	neg r3, r3
	mov r1, #3
	str r1, [sp]
	mov r1, #44
	mov r2, #141
	bl sub_08034CCC
_0802E86A:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
_0802E878:
	.4byte gUnknown_0807CA98
_0802E87C:
	.4byte gUnknown_030001C4
_0802E880:
	.4byte 0x000008F8
_0802E884:
	.4byte gUnknown_0807CA40
	THUMB_FUNC_END sub_0802E780

	THUMB_FUNC_START e_world_loop
e_world_loop: @ 0x0802E888
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	add r4, sp, #8
	mov r0, #0
	strh r0, [r4]
	mov r0, #160
	str r0, [sp, #4]
	ldr r1, _0802E8DC  @ =REG_DMA3SAD
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _0802E8E0  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _0802E8E4  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0802E8E8  @ =gUnknown_030001C4
	mov r8, r1
	ldr r5, [r1]
	add r0, r5, #0
	add r0, r0, #202
	ldrb r0, [r0]
	add r0, r0, #1
	strb r0, [r5, #12]
	bl sub_08029C20
	cmp r0, #0
	bne _0802E926
	mov r2, r8
	ldr r1, [r2]
	add r0, r1, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #1
	bhi _0802E8EC
	ldr r0, [r5]
	mov r2, #10
	ldrsh r1, [r5, r2]
	b _0802E8FA
_0802E8DC:
	.4byte REG_DMA3SAD
_0802E8E0:
	.4byte gOamData
_0802E8E4:
	.4byte 0x85000100
_0802E8E8:
	.4byte gUnknown_030001C4
_0802E8EC:
	cmp r0, #2
	beq _0802E926
	cmp r0, #3
	bne _0802E90C
	ldr r0, [r1, #20]
	mov r2, #30
	ldrsh r1, [r1, r2]
_0802E8FA:
	ldr r2, [r0, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0, #8]
	bl sub_0801B2CC
	b _0802E926
_0802E90C:
	cmp r0, #6
	bne _0802E926
	ldr r0, [r1, #20]
	mov r2, #30
	ldrsh r1, [r1, r2]
	ldr r2, [r0, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0, #8]
	bl sub_0801B2CC
_0802E926:
	ldr r0, _0802E964  @ =gEWorldMenuData1
	ldr r0, [r0, #68]
	str r0, [sp, #12]
	bl sub_080351E0
	ldr r0, _0802E968  @ =gUnknown_030001C4
	mov r8, r0
	mov r5, #0
	mov r4, #8
_0802E938:
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, r5
	bl sub_08028128
	add r5, r5, #20
	sub r4, r4, #1
	cmp r4, #0
	bge _0802E938
	ldr r5, _0802E968  @ =gUnknown_030001C4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #0
	beq _0802E96C
	cmp r0, #2
	beq _0802E996
	cmp r0, #3
	bne _0802E9AC
	b _0802E996
	.byte 0x00
	.byte 0x00
_0802E964:
	.4byte gEWorldMenuData1
_0802E968:
	.4byte gUnknown_030001C4
_0802E96C:
	add r0, r4, #0
	add r0, r0, #192
	ldr r3, [r0]
	mov r0, #3
	and r0, r0, r3
	lsl r1, r0, #2
	add r1, r1, r0
	add r1, r1, #8
	asr r3, r3, #2
	lsl r2, r3, #2
	add r2, r2, r3
	add r2, r2, #1
	add r7, r2, #0
	lsl r1, r1, #3
	lsl r2, r2, #3
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	add r3, sp, #8
	bl sub_080281C8
_0802E996:
	ldr r0, _0802E9A8  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r0, r0, #192
	ldr r0, [r0]
	mov r1, #0
	bl sub_0802E780
	b _0802E9FC
	.byte 0x00
	.byte 0x00
_0802E9A8:
	.4byte gUnknown_030001C4
_0802E9AC:
	mov r0, #0
	mov r1, #1
	bl sub_0802E780
	ldr r1, [r5]
	add r0, r1, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #1
	bne _0802E9FC
	mov r6, #1
	add r0, r1, #0
	add r0, r0, #180
	ldr r0, [r0]
	lsl r2, r0, #2
	add r2, r2, r0
	add r2, r2, #4
	add r7, r2, #0
	lsl r2, r2, #3
	str r6, [sp]
	add r0, r1, #0
	mov r1, #8
	add r3, sp, #8
	bl sub_080281C8
	ldr r1, _0802EA14  @ =gUnknown_0807CA88
	ldr r0, [r5]
	add r0, r0, #180
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802EA18  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #3
	str r2, [sp]
	mov r2, #141
	bl sub_08034CCC
_0802E9FC:
	ldr r4, _0802EA1C  @ =gUnknown_030001C4
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #5
	bgt _0802EA20
	cmp r0, #4
	bge _0802EA9C
	cmp r0, #3
	beq _0802EA26
	b _0802EA9C
_0802EA14:
	.4byte gUnknown_0807CA88
_0802EA18:
	.4byte 0xFFFF8001
_0802EA1C:
	.4byte gUnknown_030001C4
_0802EA20:
	cmp r0, #6
	beq _0802EA64
	b _0802EA9C
_0802EA26:
	add r0, r1, #0
	add r0, r0, #20
	ldr r2, _0802EA5C  @ =gUnknown_0807CA90
	add r1, r1, #180
	ldr r1, [r1]
	lsl r1, r1, #1
	add r1, r1, r2
	mov r2, #0
	ldrsh r1, [r1, r2]
	mov r2, #1
	str r2, [sp]
	mov r2, #80
	add r3, sp, #8
	bl sub_080281C8
	ldr r0, [r4]
	add r0, r0, #212
	ldr r1, _0802EA60  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #18
	str r2, [sp]
	mov r2, #58
	bl sub_08034CCC
	b _0802EA9C
	.byte 0x00
	.byte 0x00
_0802EA5C:
	.4byte gUnknown_0807CA90
_0802EA60:
	.4byte 0xFFFF8001
_0802EA64:
	add r0, r1, #0
	add r0, r0, #20
	mov r1, #1
	str r1, [sp]
	mov r1, #92
	mov r2, #96
	add r3, sp, #8
	bl sub_080281C8
	ldr r0, _0802EAD8  @ =gTextNoSpaceForNewELevels
	ldr r4, _0802EADC  @ =0xFFFF8001
	mov r5, #1
	neg r5, r5
	mov r1, #18
	str r1, [sp]
	add r1, r4, #0
	mov r2, #32
	add r3, r5, #0
	bl sub_08034CCC
	ldr r0, _0802EAE0  @ =gTextOK
	mov r1, #2
	str r1, [sp]
	add r1, r4, #0
	mov r2, #109
	add r3, r5, #0
	bl sub_08034CCC
_0802EA9C:
	add r0, sp, #8
	bl sub_08035108
	mov r4, #0
_0802EAA4:
	mov r1, #3
	and r1, r1, r4
	lsl r0, r1, #2
	add r0, r0, r1
	add r6, r0, #0
	add r6, r6, #9
	asr r1, r4, #2
	lsl r0, r1, #2
	add r0, r0, r1
	add r7, r0, #2
	lsl r0, r7, #5
	add r0, r0, r6
	lsl r0, r0, #1
	ldr r1, [sp, #12]
	add r1, r1, r0
	mov r10, r1
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	bne _0802EAE8
	ldr r0, _0802EAE4  @ =gUnknown_0807CA2C
	ldrb r2, [r0, #2]
	add r4, r4, #1
	mov r8, r4
	b _0802EB98
_0802EAD8:
	.4byte gTextNoSpaceForNewELevels
_0802EADC:
	.4byte 0xFFFF8001
_0802EAE0:
	.4byte gTextOK
_0802EAE4:
	.4byte gUnknown_0807CA2C
_0802EAE8:
	ldr r1, _0802EB08  @ =gUnknown_030001C4
	ldr r2, [r1]
	add r0, r2, #0
	add r0, r0, #208
	ldr r0, [r0]
	str r0, [sp, #16]
	add r0, r2, #0
	add r0, r0, #192
	ldr r0, [r0]
	add r5, r1, #0
	cmp r4, r0
	bne _0802EB0C
	mov r1, #0
	str r1, [sp, #16]
	b _0802EB1A
	.byte 0x00
	.byte 0x00
_0802EB08:
	.4byte gUnknown_030001C4
_0802EB0C:
	add r0, r2, #0
	add r0, r0, #188
	ldr r0, [r0]
	add r2, r4, #1
	mov r8, r2
	cmp r0, #3
	beq _0802EBC6
_0802EB1A:
	mov r3, #3
	lsl r6, r6, #3
	lsl r7, r7, #3
	add r6, r6, #3
	add r7, r7, #17
	ldr r0, _0802EC0C  @ =gUnknown_0807CA94
	ldr r0, [r0]
	lsl r2, r4, #2
	add r0, r0, #28
	add r0, r0, r2
	ldr r1, [r0]
	mov r0, #7
	and r1, r1, r0
	mov r9, r2
	cmp r1, #7
	bne _0802EB46
	ldr r0, [r5]
	add r0, r0, #192
	ldr r0, [r0]
	cmp r4, r0
	bne _0802EB46
	mov r3, #6
_0802EB46:
	mov r5, #0
	add r4, r4, #1
	mov r8, r4
	lsl r0, r3, #2
	add r0, r0, r3
	lsl r4, r0, #2
_0802EB52:
	ldr r0, _0802EC0C  @ =gUnknown_0807CA94
	ldr r0, [r0]
	add r0, r0, #28
	add r0, r0, r9
	mov r1, #1
	lsl r1, r1, r5
	ldr r0, [r0]
	and r0, r0, r1
	cmp r0, #0
	beq _0802EB7A
	ldr r1, _0802EC10  @ =gUnknown_030001C4
	ldr r0, [r1]
	add r0, r0, r4
	ldr r2, [sp, #16]
	str r2, [sp]
	add r1, r6, #0
	add r2, r7, #0
	add r3, sp, #8
	bl sub_080281C8
_0802EB7A:
	add r5, r5, #1
	add r4, r4, #20
	add r6, r6, #9
	cmp r5, #2
	ble _0802EB52
	ldr r0, _0802EC14  @ =gUnknown_0807CA98
	ldr r0, [r0]
	add r0, r0, r9
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	add r0, r0, #2
	lsl r0, r0, #1
	ldr r1, _0802EC18  @ =gUnknown_0807CA2C
	add r0, r0, r1
	ldrb r2, [r0]
_0802EB98:
	lsl r2, r2, #12
	mov r0, #0
	ldr r1, _0802EC1C  @ =0x00000FFF
	mov r9, r1
_0802EBA0:
	mov r3, r10
	add r0, r0, #1
	mov r12, r0
	add r5, r3, #0
	add r5, r5, #64
	mov r4, #3
_0802EBAC:
	ldrh r1, [r3]
	mov r0, r9
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3]
	sub r4, r4, #1
	add r3, r3, #2
	cmp r4, #0
	bge _0802EBAC
	mov r0, r12
	mov r10, r5
	cmp r0, #3
	ble _0802EBA0
_0802EBC6:
	mov r4, r8
	cmp r4, #11
	bgt _0802EBCE
	b _0802EAA4
_0802EBCE:
	bl sub_0801B4BC
	ldr r2, _0802EC20  @ =REG_DMA3SAD
	ldr r0, _0802EC24  @ =gOamData
	str r0, [r2]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r2, #4]
	ldr r0, _0802EC28  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0802EC10  @ =gUnknown_030001C4
	ldr r0, [r0]
	add r1, r0, #0
	add r1, r1, #244
	str r1, [r2]
	ldr r1, _0802EC2C  @ =0x000008F4
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _0802EC30  @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802EC0C:
	.4byte gUnknown_0807CA94
_0802EC10:
	.4byte gUnknown_030001C4
_0802EC14:
	.4byte gUnknown_0807CA98
_0802EC18:
	.4byte gUnknown_0807CA2C
_0802EC1C:
	.4byte 0x00000FFF
_0802EC20:
	.4byte REG_DMA3SAD
_0802EC24:
	.4byte gOamData
_0802EC28:
	.4byte 0x84000100
_0802EC2C:
	.4byte 0x000008F4
_0802EC30:
	.4byte 0x80000400
	THUMB_FUNC_END e_world_loop

	THUMB_FUNC_START e_world_init_callback
e_world_init_callback: @ 0x0802EC34
	push {r4,r5,lr}
	mov r0, #0
	bl arena_restore_head
	bl sub_08038B18
	ldr r4, _0802ECAC  @ =gEWorldMenuData1
	add r0, r4, #0
	bl load_graphics_config_bg2_08032EB8
	mov r2, #128
	lsl r2, r2, #19
	ldr r1, _0802ECB0  @ =0x0000FEFF
	and r1, r1, r0
	strh r1, [r2]
	mov r0, #8
	mov r1, #3
	bl load_predefined_palette
	add r0, r4, #0
	bl sub_08029C9C
	ldr r5, _0802ECB4  @ =gLevelEWorldFlag
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0802EC6E
	bl sub_0802EE54
_0802EC6E:
	ldr r0, _0802ECB8  @ =gUnknown_08B2AD88
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_080348C8
	ldr r4, _0802ECBC  @ =gUnknown_030001C4
	ldr r0, _0802ECC0  @ =0x000008FC
	bl arena_allocate
	str r0, [r4]
	bl e_world_return_init_callback
	bl sub_08071FE4
	cmp r0, #10
	beq _0802EC9A
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_0802EC9A:
	mov r0, #1
	strb r0, [r5]
	ldr r1, _0802ECC4  @ =gCurrentWorld
	mov r0, #0
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802ECAC:
	.4byte gEWorldMenuData1
_0802ECB0:
	.4byte 0x0000FEFF
_0802ECB4:
	.4byte gLevelEWorldFlag
_0802ECB8:
	.4byte gUnknown_08B2AD88
_0802ECBC:
	.4byte gUnknown_030001C4
_0802ECC0:
	.4byte 0x000008FC
_0802ECC4:
	.4byte gCurrentWorld
	THUMB_FUNC_END e_world_init_callback

	THUMB_FUNC_START sub_0802ECC8
sub_0802ECC8: @ 0x0802ECC8
	push {lr}
	ldr r0, _0802ECE8  @ =gUnknown_030001C4
	ldr r1, [r0]
	add r1, r1, #200
	ldrh r0, [r1]
	add r0, r0, #80
	strh r0, [r1]
	ldr r1, _0802ECEC  @ =gBGLayerOffsets 
	lsl r0, r0, #16
	lsr r0, r0, #24
	strh r0, [r1, #12]
	bl sub_0801B310
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802ECE8:
	.4byte gUnknown_030001C4
_0802ECEC:
	.4byte gBGLayerOffsets 
	THUMB_FUNC_END sub_0802ECC8

	THUMB_FUNC_START e_world_end
e_world_end: @ 0x0802ECF0
	push {r4,lr}
	ldr r4, _0802ED20  @ =gUnknown_030001C4
	ldr r0, [r4]
	add r0, r0, #204
	ldr r0, [r0]
	cmp r0, #0
	beq _0802ED04
	mov r0, #0
	bl arena_restore_head
_0802ED04:
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802ED24  @ =0x0000FEFF
	and r0, r0, r1
	strh r0, [r2]
	ldr r0, [r4]
	add r0, r0, #208
	mov r1, #0
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802ED20:
	.4byte gUnknown_030001C4
_0802ED24:
	.4byte 0x0000FEFF
	THUMB_FUNC_END e_world_end

	THUMB_FUNC_START sub_0802ED28
sub_0802ED28: @ 0x0802ED28
	push {r4,lr}
	sub sp, sp, #8
	ldr r1, _0802ED68  @ =gUnknown_030001C4
	ldr r3, [r1]
	ldr r2, _0802ED6C  @ =0x000008F8
	add r1, r3, r2
	ldr r1, [r1]
	lsl r2, r0, #2
	mov r4, #132
	lsl r4, r4, #1
	add r1, r1, r4
	add r1, r1, r2
	ldr r2, [r1]
	ldr r1, _0802ED70  @ =gUnknown_0807CA40
	lsl r0, r0, #3
	add r4, r0, r1
	ldr r4, [r4]
	add r1, r1, #4
	add r0, r0, r1
	ldr r1, [r0]
	add r3, r3, #244
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_080065B4
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0802ED68:
	.4byte gUnknown_030001C4
_0802ED6C:
	.4byte 0x000008F8
_0802ED70:
	.4byte gUnknown_0807CA40
	THUMB_FUNC_END sub_0802ED28

	THUMB_FUNC_START sub_0802ED74
sub_0802ED74: @ 0x0802ED74
	push {r4,lr}
	ldr r1, _0802EDA0  @ =gUnknown_030001C4
	ldr r2, [r1]
	ldr r3, _0802EDA4  @ =0x000008F8
	add r1, r2, r3
	ldr r1, [r1]
	lsl r3, r0, #2
	mov r4, #132
	lsl r4, r4, #1
	add r1, r1, r4
	add r1, r1, r3
	ldr r1, [r1]
	lsl r0, r0, #3
	ldr r3, _0802EDA8  @ =gUnknown_0807CA40
	add r0, r0, r3
	add r2, r2, #244
	mov r3, #5
	bl sub_080064D4
	pop {r4}
	pop {r0}
	bx r0
_0802EDA0:
	.4byte gUnknown_030001C4
_0802EDA4:
	.4byte 0x000008F8
_0802EDA8:
	.4byte gUnknown_0807CA40
	THUMB_FUNC_END sub_0802ED74

	THUMB_FUNC_START sub_0802EDAC
sub_0802EDAC: @ 0x0802EDAC
	push {r4-r7,lr}
	ldr r7, _0802EE0C  @ =gUnknown_0807CA98
	ldr r1, [r7]
	lsl r0, r0, #2
	add r1, r1, r0
	ldr r5, [r1]
	ldrb r0, [r5, #8]
	ldrb r1, [r5, #9]
	bl sub_0800F6EC
	ldr r6, _0802EE10  @ =gNextLevelInLevelTable
	ldr r0, [r6]
	ldr r1, [r7]
	add r1, r1, #52
	mov r2, #10
	bl CpuSet
	ldr r2, [r7]
	add r1, r2, #0
	add r1, r1, #52
	str r1, [r6]
	add r0, r5, #0
	add r0, r0, #52
	str r0, [r1, #4]
	mov r0, #224
	str r0, [r1, #12]
	mov r0, #0
	str r0, [r6, #32]
	ldrb r4, [r5, #11]
	cmp r4, #0
	bne _0802EE14
	ldrh r0, [r5, #12]
	add r0, r0, #52
	add r0, r5, r0
	add r1, r1, #20
	mov r2, #0
	bl load_compressed_data
	ldr r0, [r7]
	add r0, r0, #72
	str r0, [r6, #20]
	strb r4, [r6, #29]
	strb r4, [r6, #30]
	strb r4, [r6, #31]
	mov r0, #127
	str r0, [r6, #24]
	b _0802EE48
	.byte 0x00
	.byte 0x00
_0802EE0C:
	.4byte gUnknown_0807CA98
_0802EE10:
	.4byte gNextLevelInLevelTable
_0802EE14:
	ldrb r0, [r5, #11]
	sub r0, r0, #1
	bl sub_08071F8C
	add r4, r0, #0
	ldrb r0, [r5, #11]
	sub r0, r0, #1
	bl sub_08071F78
	str r0, [r6, #20]
	mov r2, #0
	add r3, r6, #0
	add r3, r3, #29
_0802EE2E:
	add r0, r2, r3
	add r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0802EE2E
	ldrb r0, [r5, #11]
	sub r0, r0, #1
	bl sub_08071F64
	ldr r1, _0802EE50  @ =gNextLevelInLevelTable
	str r0, [r1, #24]
_0802EE48:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802EE50:
	.4byte gNextLevelInLevelTable
	THUMB_FUNC_END sub_0802EDAC

	THUMB_FUNC_START sub_0802EE54
sub_0802EE54: @ 0x0802EE54
	push {r4-r7,lr}
	sub sp, sp, #4
	ldr r7, _0802EEBC  @ =gUnknown_0807CA98
	ldr r1, [r7]
	ldr r6, _0802EEC0  @ =gUnknown_0807CA94
	ldr r0, [r6]
	ldr r0, [r0]
	mov r2, #0
	strh r0, [r1, #48]
	lsl r0, r0, #16
	asr r5, r0, #16
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0802EEC4  @ =0x01000018
	bl CpuSet
	mov r4, #0
	cmp r4, r5
	bge _0802EEAA
	mov r12, r6
	add r6, r7, #0
_0802EE7E:
	mov r0, r12
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #88
	add r0, r0, r4
	ldrb r3, [r0]
	add r0, r2, #0
	add r0, r0, #76
	add r0, r0, r4
	ldrb r0, [r0]
	ldr r1, [r6]
	lsl r0, r0, #2
	add r1, r1, r0
	lsl r0, r3, #1
	add r0, r0, r3
	lsl r0, r0, #10
	add r0, r0, #104
	add r2, r2, r0
	str r2, [r1]
	add r4, r4, #1
	cmp r4, r5
	blt _0802EE7E
_0802EEAA:
	ldr r0, _0802EEBC  @ =gUnknown_0807CA98
	ldr r1, [r0]
	mov r0, #0
	strh r0, [r1, #50]
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802EEBC:
	.4byte gUnknown_0807CA98
_0802EEC0:
	.4byte gUnknown_0807CA94
_0802EEC4:
	.4byte 0x01000018
	THUMB_FUNC_END sub_0802EE54

	THUMB_FUNC_START sub_0802EEC8
sub_0802EEC8: @ 0x0802EEC8
	push {r4-r7,lr}
	add r6, r0, #0
	ldr r3, _0802EF6C  @ =gUnknown_0807CA94
	ldr r5, [r3]
	add r0, r5, #0
	ldm r0!, {r7}
	lsl r1, r6, #1
	add r0, r0, r1
	mov r2, #0
	strh r2, [r0]
	lsl r1, r6, #2
	add r0, r5, #0
	add r0, r0, #28
	add r0, r0, r1
	str r2, [r0]
	mov r4, #0
	sub r1, r7, #1
	mov r12, r3
	cmp r4, r1
	bge _0802EF0E
	add r0, r5, #0
	add r0, r0, #76
	ldrb r0, [r0]
	cmp r0, r6
	beq _0802EF0E
	mov r2, r12
_0802EEFC:
	add r4, r4, #1
	cmp r4, r1
	bge _0802EF0E
	ldr r0, [r2]
	add r0, r0, #76
	add r0, r0, r4
	ldrb r0, [r0]
	cmp r0, r6
	bne _0802EEFC
_0802EF0E:
	mov r0, r12
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #88
	add r0, r0, r4
	add r2, r2, #102
	mov r1, #1
	ldrb r0, [r0]
	lsl r1, r1, r0
	ldrh r0, [r2]
	bic r0, r0, r1
	strh r0, [r2]
	add r3, r4, #1
	cmp r3, r7
	bge _0802EF4E
	mov r4, r12
_0802EF2E:
	ldr r0, [r4]
	sub r1, r3, #1
	add r0, r0, #76
	add r2, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, [r4]
	add r0, r0, #88
	add r1, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	add r3, r3, #1
	cmp r3, r7
	blt _0802EF2E
_0802EF4E:
	mov r0, r12
	ldr r2, [r0]
	add r3, r2, #0
	add r3, r3, #100
	mov r1, #1
	lsl r1, r1, r6
	ldrh r0, [r3]
	bic r0, r0, r1
	strh r0, [r3]
	ldr r0, [r2]
	sub r0, r0, #1
	str r0, [r2]
	pop {r4-r7}
	pop {r0}
	bx r0
_0802EF6C:
	.4byte gUnknown_0807CA94
	THUMB_FUNC_END sub_0802EEC8

	THUMB_FUNC_START sub_0802EF70
sub_0802EF70: @ 0x0802EF70
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r8, r0
	mov r3, #0
	ldr r2, _0802F058  @ =gUnknown_0807CA94
	ldr r0, [r2]
	add r0, r0, #100
	ldrh r0, [r0]
	mov r1, #1
	and r0, r0, r1
	add r7, r2, #0
	cmp r0, #0
	beq _0802EFA2
_0802EF8E:
	add r3, r3, #1
	cmp r3, #10
	bgt _0802EFA2
	ldr r0, [r2]
	add r0, r0, #100
	ldrh r0, [r0]
	asr r0, r0, r3
	and r0, r0, r1
	cmp r0, #0
	bne _0802EF8E
_0802EFA2:
	add r6, r3, #0
	ldr r0, [r7]
	mov r12, r0
	mov r2, r12
	add r2, r2, #100
	mov r4, #1
	add r0, r4, #0
	lsl r0, r0, r6
	ldrh r1, [r2]
	orr r0, r0, r1
	mov r3, #0
	strh r0, [r2]
	lsl r1, r6, #1
	mov r0, r12
	add r0, r0, #4
	add r0, r0, r1
	strh r3, [r0]
	lsl r1, r6, #2
	mov r0, r12
	add r0, r0, #28
	add r0, r0, r1
	str r3, [r0]
	mov r0, r12
	add r0, r0, #76
	mov r2, r12
	ldr r1, [r2]
	add r0, r0, r1
	strb r6, [r0]
	mov r5, #0
	ldr r0, [r7]
	add r0, r0, #102
	ldrh r0, [r0]
	and r0, r0, r4
	cmp r0, #0
	beq _0802F000
	add r2, r7, #0
	mov r1, #1
_0802EFEC:
	add r5, r5, #1
	cmp r5, #10
	bgt _0802F000
	ldr r0, [r2]
	add r0, r0, #102
	ldrh r0, [r0]
	asr r0, r0, r5
	and r0, r0, r1
	cmp r0, #0
	bne _0802EFEC
_0802F000:
	ldr r3, [r7]
	add r4, r3, #0
	add r4, r4, #102
	mov r0, #1
	lsl r0, r0, r5
	ldrh r1, [r4]
	orr r0, r0, r1
	mov r2, #0
	strh r0, [r4]
	add r0, r3, #0
	add r0, r0, #88
	ldr r1, [r3]
	add r0, r0, r1
	strb r5, [r0]
	lsl r0, r5, #1
	add r0, r0, r5
	lsl r0, r0, #10
	add r0, r0, #104
	ldr r4, [r7]
	add r4, r4, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0802F05C  @ =0x01000600
	add r1, r4, #0
	bl CpuSet
	mov r0, r8
	ldrh r2, [r0, #4]
	add r2, r2, #52
	lsr r2, r2, #1
	add r1, r4, #0
	bl CpuSet
	ldr r1, [r7]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	add r0, r6, #0
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
_0802F058:
	.4byte gUnknown_0807CA94
_0802F05C:
	.4byte 0x01000600
	THUMB_FUNC_END sub_0802EF70

	THUMB_FUNC_START sub_0802F060
sub_0802F060: @ 0x0802F060
	push {lr}
	bl sub_0802F06C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802F060

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802F06C
sub_0802F06C: @ 0x0802F06C
	push {lr}
	sub sp, sp, #4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r0, _0802F088  @ =gUnknown_0807CA94
	ldr r1, [r0]
	ldr r2, _0802F08C  @ =0x01000034
	mov r0, sp
	bl CpuSet
	add sp, sp, #4
	pop {r0}
	bx r0
_0802F088:
	.4byte gUnknown_0807CA94
_0802F08C:
	.4byte 0x01000034
	THUMB_FUNC_END sub_0802F06C

	THUMB_FUNC_START sub_0802F090
sub_0802F090: @ 0x0802F090
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	mov r4, #0
	ldr r2, _0802F0F0  @ =gUnknown_0807CA94
	ldr r0, [r2]
	ldr r1, [r0]
	cmp r4, r1
	bcs _0802F0FA
	mov r8, r2
	add r5, r0, #0
	ldrb r0, [r6]
	mov r12, r0
	add r7, r1, #0
_0802F0AE:
	add r0, r5, #0
	add r0, r0, #88
	add r0, r0, r4
	ldrb r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #10
	add r0, r0, #104
	add r1, r5, r0
	mov r2, #0
	ldrb r0, [r1, #16]
	cmp r0, r12
	bne _0802F0DE
	add r3, r1, #0
	add r3, r3, #16
_0802F0CC:
	add r2, r2, #1
	cmp r2, #31
	bgt _0802F0E2
	add r0, r3, r2
	add r1, r6, r2
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0802F0CC
_0802F0DE:
	cmp r2, #31
	ble _0802F0F4
_0802F0E2:
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, #76
	add r0, r0, r4
	ldrb r0, [r0]
	add r0, r0, #1
	b _0802F0FC
_0802F0F0:
	.4byte gUnknown_0807CA94
_0802F0F4:
	add r4, r4, #1
	cmp r4, r7
	bcc _0802F0AE
_0802F0FA:
	mov r0, #0
_0802F0FC:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802F090

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802F108
sub_0802F108: @ 0x0802F108
	push {lr}
	ldr r1, _0802F120  @ =gUnknown_0807CA94
	ldr r1, [r1]
	add r1, r1, #100
	ldrh r1, [r1]
	asr r1, r1, r0
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	bne _0802F124
	mov r0, #0
	b _0802F126
_0802F120:
	.4byte gUnknown_0807CA94
_0802F124:
	mov r0, #1
_0802F126:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802F108

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802F12C
sub_0802F12C: @ 0x0802F12C
	push {r4,lr}
	add r2, r0, #0
	add r1, r2, #4
	ldrh r0, [r2, #6]
	add r3, r1, #0
	cmp r0, #0
	bne _0802F13E
	add r3, r2, #0
	add r3, r3, #52
_0802F13E:
	ldrh r0, [r2, #4]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r3, r3, r0
	mov r4, #1
	ldr r2, [r2]
	cmp r1, r3
	bcs _0802F158
_0802F14E:
	ldrh r0, [r1]
	add r4, r4, r0
	add r1, r1, #2
	cmp r1, r3
	bcc _0802F14E
_0802F158:
	cmp r2, r4
	bne _0802F160
	mov r0, #1
	b _0802F162
_0802F160:
	mov r0, #0
_0802F162:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802F12C

	THUMB_FUNC_START sub_0802F168
sub_0802F168: @ 0x0802F168
	push {r4-r7,lr}
	add r5, r1, #0
	lsl r0, r0, #24
	ldr r3, _0802F1A8  @ =gUnknown_0807CA94
	ldr r1, [r3]
	lsr r0, r0, #22
	add r1, r1, #28
	add r1, r1, r0
	mov r2, #8
	str r2, [r1]
	mov r4, #0
	add r7, r3, #0
	add r3, r0, #0
	mov r6, #1
_0802F184:
	add r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802F19C
	ldr r2, [r7]
	add r2, r2, #28
	add r2, r2, r3
	add r1, r6, #0
	lsl r1, r1, r4
	ldr r0, [r2]
	orr r0, r0, r1
	str r0, [r2]
_0802F19C:
	add r4, r4, #1
	cmp r4, #2
	ble _0802F184
	pop {r4-r7}
	pop {r0}
	bx r0
_0802F1A8:
	.4byte gUnknown_0807CA94
	THUMB_FUNC_END sub_0802F168

	THUMB_FUNC_START sub_0802F1AC
sub_0802F1AC: @ 0x0802F1AC
	lsl r0, r0, #24
	ldr r2, _0802F1BC  @ =gUnknown_0807CA94
	ldr r2, [r2]
	lsr r0, r0, #23
	add r2, r2, #4
	add r2, r2, r0
	strh r1, [r2]
	bx lr
_0802F1BC:
	.4byte gUnknown_0807CA94
	THUMB_FUNC_END sub_0802F1AC

	THUMB_FUNC_START sub_0802F1C0
sub_0802F1C0: @ 0x0802F1C0
	lsl r0, r0, #24
	ldr r1, _0802F1D0  @ =gUnknown_0807CA94
	ldr r1, [r1]
	lsr r0, r0, #23
	add r1, r1, #4
	add r1, r1, r0
	ldrh r0, [r1]
	bx lr
_0802F1D0:
	.4byte gUnknown_0807CA94
	THUMB_FUNC_END sub_0802F1C0

	THUMB_FUNC_START sub_0802F1D4
sub_0802F1D4: @ 0x0802F1D4
	push {lr}
	ldr r0, _0802F1E8  @ =gUnknown_0807CA94
	ldr r1, [r0]
	mov r0, #2
	mov r2, #104
	bl sub_0802A370
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F1E8:
	.4byte gUnknown_0807CA94
	THUMB_FUNC_END sub_0802F1D4

	THUMB_FUNC_START e_world_debug_main
e_world_debug_main: @ 0x0802F1EC
	push {r4-r7,lr}
	sub sp, sp, #12
	bl sub_080331FC
	bl sub_08008238
	ldr r7, _0802F228  @ =0x030001C8
	ldrb r1, [r7]
	cmp r1, #0
	beq _0802F202
	b _0802F306
_0802F202:
	ldr r0, _0802F22C  @ =gUnknown_03001708
	ldrh r2, [r0]
	mov r0, #64
	and r0, r0, r2
	cmp r0, #0
	beq _0802F234
	ldr r2, _0802F230  @ =0x030001C9
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802F218
	b _0802F432
_0802F218:
	sub r0, r0, #1
	strb r0, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _0802F404
_0802F228:
	.4byte 0x030001C8
_0802F22C:
	.4byte gUnknown_03001708
_0802F230:
	.4byte 0x030001C9
_0802F234:
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _0802F260
	ldr r2, _0802F25C  @ =0x030001C9
	ldrb r0, [r2]
	add r1, r0, #0
	cmp r1, #0
	beq _0802F24E
	b _0802F432
_0802F24E:
	add r0, r0, #1
	strb r0, [r2]
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _0802F404
_0802F25C:
	.4byte 0x030001C9
_0802F260:
	ldr r0, _0802F2A8  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _0802F2E0
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r6, _0802F2AC  @ =0x030001C9
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802F2BC
	ldr r0, _0802F2B0  @ =gUnknown_0807CA94
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #11
	bhi _0802F2B4
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #26
	b _0802F2FE
	.byte 0x00
	.byte 0x00
_0802F2A8:
	.4byte gSomeKeys_030012E8
_0802F2AC:
	.4byte 0x030001C9
_0802F2B0:
	.4byte gUnknown_0807CA94
_0802F2B4:
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	b _0802F402
_0802F2BC:
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _0802F2DC  @ =0x030001CA
	strb r4, [r6]
	strb r4, [r0]
	mov r0, #1
	strb r0, [r7]
	b _0802F432
	.byte 0x00
	.byte 0x00
_0802F2DC:
	.4byte 0x030001CA
_0802F2E0:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	bne _0802F2EA
	b _0802F432
_0802F2EA:
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #25
_0802F2FE:
	mov r1, #0
	bl change_main_state
	b _0802F432
_0802F306:
	ldr r0, _0802F340  @ =gUnknown_03001708
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _0802F34C
	ldr r2, _0802F344  @ =0x030001C9
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802F320
	b _0802F432
_0802F320:
	sub r1, r0, #1
	strb r1, [r2]
	ldr r2, _0802F348  @ =0x030001CA
	lsl r0, r1, #24
	lsr r0, r0, #24
	ldrb r3, [r2]
	cmp r0, r3
	bcs _0802F332
	strb r1, [r2]
_0802F332:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _0802F404
_0802F340:
	.4byte gUnknown_03001708
_0802F344:
	.4byte 0x030001C9
_0802F348:
	.4byte 0x030001CA
_0802F34C:
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _0802F3B0
	ldr r3, _0802F378  @ =0x030001C9
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	ldr r1, _0802F37C  @ =gPreloadedCardETable
	ldrb r2, [r3]
	lsl r0, r2, #3
	add r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0802F380
	sub r0, r2, #1
	strb r0, [r3]
	b _0802F392
	.byte 0x00
	.byte 0x00
_0802F378:
	.4byte 0x030001C9
_0802F37C:
	.4byte  gPreloadedCardETable
_0802F380:
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802F392:
	ldr r0, _0802F3A8  @ =0x030001C9
	ldrb r1, [r0]
	ldr r3, _0802F3AC  @ =0x030001CA
	ldrb r2, [r3]
	add r0, r2, #6
	cmp r1, r0
	blt _0802F432
	add r0, r2, #1
	strb r0, [r3]
	b _0802F432
	.byte 0x00
	.byte 0x00
_0802F3A8:
	.4byte 0x030001C9
_0802F3AC:
	.4byte 0x030001CA
_0802F3B0:
	ldr r0, _0802F3EC  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r4, #9
	and r4, r4, r2
	cmp r4, #0
	beq _0802F410
	ldr r0, _0802F3F0  @ =gUnknown_0807CA94
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #11
	bhi _0802F3FC
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0802F3F4  @ =gPreloadedCardETable
	ldr r0, _0802F3F8  @ =0x030001C9
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r1, #4
	add r0, r0, r1
	ldr r0, [r0]
	bl sub_0802D614
	b _0802F432
_0802F3EC:
	.4byte gSomeKeys_030012E8
_0802F3F0:
	.4byte gUnknown_0807CA94
_0802F3F4:
	.4byte gPreloadedCardETable
_0802F3F8:
	.4byte 0x030001C9
_0802F3FC:
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
_0802F402:
	mov r0, #27
_0802F404:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0802F432
_0802F410:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _0802F432
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	strb r4, [r7]
	ldr r1, _0802F43C  @ =0x030001C9
	mov r0, #1
	strb r0, [r1]
_0802F432:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F43C:
	.4byte 0x030001C9
	THUMB_FUNC_END e_world_debug_main

	THUMB_FUNC_START e_world_debug_loop
e_world_debug_loop: @ 0x0802F440
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #20
	ldr r0, _0802F494  @ =gUnknown_08076994
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #12]
	str r1, [sp, #16]
	add r4, sp, #8
	mov r0, #0
	strh r0, [r4]
	mov r0, #160
	str r0, [sp, #4]
	ldr r1, _0802F498  @ =REG_DMA3SAD
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _0802F49C  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _0802F4A0  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_080351E0
	ldr r0, _0802F4A4  @ =0x030001C8
	ldrb r0, [r0]
	mov r8, r4
	cmp r0, #0
	bne _0802F4F4
	mov r4, #0
	mov r6, #20
	mov r7, #1
	neg r7, r7
	add r5, sp, #12
_0802F484:
	ldr r1, [r5]
	ldr r0, _0802F4A8  @ =0x030001C9
	ldrb r0, [r0]
	cmp r4, r0
	bne _0802F4AC
	mov r0, #2
	b _0802F4AE
	.byte 0x00
	.byte 0x00
_0802F494:
	.4byte gUnknown_08076994
_0802F498:
	.4byte REG_DMA3SAD
_0802F49C:
	.4byte gOamData
_0802F4A0:
	.4byte 0x85000100
_0802F4A4:
	.4byte 0x030001C8
_0802F4A8:
	.4byte 0x030001C9
_0802F4AC:
	mov r0, #3
_0802F4AE:
	str r0, [sp]
	add r0, r1, #0
	mov r1, #20
	add r2, r6, #0
	add r3, r7, #0
	bl sub_08034CCC
	add r5, r5, #4
	add r4, r4, #1
	add r6, r6, #20
	cmp r4, #1
	ble _0802F484
	ldr r1, _0802F4D4  @ =gTextPressBToReturn
	ldr r0, _0802F4D8  @ =0x030001C9
	ldrb r0, [r0]
	cmp r4, r0
	bne _0802F4DC
	mov r0, #2
	b _0802F4DE
_0802F4D4:
	.4byte gTextPressBToReturn
_0802F4D8:
	.4byte 0x030001C9
_0802F4DC:
	mov r0, #3
_0802F4DE:
	str r0, [sp]
	add r0, r1, #0
	ldr r1, _0802F4F0  @ =0xFFFF8001
	mov r2, #104
	mov r3, #1
	neg r3, r3
	bl sub_08034CCC
	b _0802F556
_0802F4F0:
	.4byte 0xFFFF8001
_0802F4F4:
	ldr r0, _0802F520  @ =0x030001CA
	ldrb r4, [r0]
	mov r6, #20
	ldr r2, _0802F524  @ =gPreloadedCardETable
	lsl r1, r4, #3
	add r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0802F556
	add r0, r4, #6
	cmp r4, r0
	bge _0802F556
	mov r5, #1
	neg r5, r5
_0802F510:
	add r0, r1, r2
	ldr r1, [r0]
	ldr r0, _0802F528  @ =0x030001C9
	ldrb r0, [r0]
	cmp r4, r0
	bne _0802F52C
	mov r0, #2
	b _0802F52E
_0802F520:
	.4byte 0x030001CA
_0802F524:
	.4byte gPreloadedCardETable
_0802F528:
	.4byte 0x030001C9
_0802F52C:
	mov r0, #3
_0802F52E:
	str r0, [sp]
	add r0, r1, #0
	mov r1, #20
	add r2, r6, #0
	add r3, r5, #0
	bl sub_08034CCC
	add r4, r4, #1
	add r6, r6, #20
	ldr r2, _0802F57C  @ =gPreloadedCardETable
	lsl r1, r4, #3
	add r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0802F556
	ldr r0, _0802F580  @ =0x030001CA
	ldrb r0, [r0]
	add r0, r0, #6
	cmp r4, r0
	blt _0802F510
_0802F556:
	mov r0, r8
	bl sub_08035108
	ldr r1, _0802F584  @ =REG_DMA3SAD
	ldr r0, _0802F588  @ =gOamData
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0802F58C  @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F57C:
	.4byte gPreloadedCardETable
_0802F580:
	.4byte 0x030001CA
_0802F584:
	.4byte REG_DMA3SAD
_0802F588:
	.4byte gOamData
_0802F58C:
	.4byte 0x80000200
	THUMB_FUNC_END e_world_debug_loop

	THUMB_FUNC_START e_world_debug_init_callback
e_world_debug_init_callback: @ 0x0802F590
	ldr r3, _0802F5AC  @ =0x030001C8
	ldr r2, _0802F5B0  @ =0x030001C9
	ldr r1, _0802F5B4  @ =0x030001CA
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	strb r0, [r3]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802F5B8  @ =0x0000FDFF
	and r0, r0, r1
	strh r0, [r2]
	bx lr
_0802F5AC:
	.4byte 0x030001C8
_0802F5B0:
	.4byte 0x030001C9
_0802F5B4:
	.4byte 0x030001CA
_0802F5B8:
	.4byte 0x0000FDFF
	THUMB_FUNC_END e_world_debug_init_callback

	THUMB_FUNC_START e_world_debug_end
e_world_debug_end: @ 0x0802F5BC
	bx lr
	THUMB_FUNC_END e_world_debug_end

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802F5C0
sub_0802F5C0: @ 0x0802F5C0
	push {lr}
	sub sp, sp, #12
	add r2, r0, #0
	lsl r0, r2, #4
	add r0, r0, r2
	lsl r0, r0, #4
	add r0, r0, r2
	lsl r0, r0, #2
	asr r2, r0, #16
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r2
	lsl r0, r0, #4
	asr r1, r0, #16
	str r1, [sp, #8]
	mov r0, #100
	mul r0, r1, r0
	sub r2, r2, r0
	cmp r2, #99
	ble _0802F5FE
	sub r2, r2, #100
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	ble _0802F5FE
	mov r0, #0
	str r0, [sp, #4]
	add r0, r1, #1
	str r0, [sp, #8]
_0802F5FE:
	ldr r0, _0802F644  @ =0x0000199A
	mul r0, r2, r0
	asr r1, r0, #16
	str r1, [sp, #4]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	sub r2, r2, r0
	cmp r2, #9
	ble _0802F626
	sub r2, r2, #10
	add r0, r1, #1
	str r0, [sp, #4]
	cmp r0, #5
	ble _0802F626
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0802F626:
	str r2, [sp]
	ldr r1, [sp, #4]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r2, r0
	ldr r2, [sp, #8]
	mov r1, #100
	mul r1, r2, r1
	add r2, r0, r1
	add r0, r2, #0
	add sp, sp, #12
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0802F644:
	.4byte 0x0000199A
	THUMB_FUNC_END sub_0802F5C0

	THUMB_FUNC_START sub_0802F648
sub_0802F648: @ 0x0802F648
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	add r6, r0, #0
	add r4, r1, #0
	mov r5, #0
	mov r9, r5
	ldr r0, _0802F6B4  @ =0x03000DE8
	str r6, [r0]
	ldr r0, _0802F6B8  @ =0x03000DDC
	strb r5, [r0]
	ldr r0, _0802F6BC  @ =0x03000DE4
	strb r5, [r0]
	ldr r1, _0802F6C0  @ =0x03000DE0
	ldr r0, _0802F6C4  @ =0x03000DF0
	strb r5, [r0]
	strb r5, [r1]
	ldr r1, _0802F6C8  @ =0x03000DEC
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0802F6CC  @ =0x03000DD4
	strb r5, [r0]
	mov r0, sp
	strh r5, [r0]
	ldr r2, _0802F6D0  @ =0x0100002A
	add r1, r6, #0
	bl CpuSet
	str r4, [r6, #80]
	mov r7, #0
	ldr r0, [r4]
	cmp r5, r0
	blt _0802F690
	b _0802F78E
_0802F690:
	lsl r0, r7, #3
	add r0, r0, #4
	ldr r1, [r6, #80]
	add r1, r1, r0
	mov r8, r1
	lsl r0, r7, #2
	add r0, r0, r7
	lsl r0, r0, #2
	add r4, r6, r0
	ldrb r0, [r1, #7]
	cmp r0, #4
	bhi _0802F766
	lsl r0, r0, #2
	ldr r1, _0802F6D4  @ =0x0802F6D8
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0802F6B4:
	.4byte 0x03000DE8
_0802F6B8:
	.4byte 0x03000DDC
_0802F6BC:
	.4byte 0x03000DE4
_0802F6C0:
	.4byte 0x03000DE0
_0802F6C4:
	.4byte 0x03000DF0
_0802F6C8:
	.4byte 0x03000DEC
_0802F6CC:
	.4byte 0x03000DD4
_0802F6D0:
	.4byte 0x0100002A
_0802F6D4:
	.4byte _0802F6D8
_0802F6D8:
	.4byte _0802F6EC
	.4byte _0802F718
	.4byte _0802F700
	.4byte _0802F72C
	.4byte _0802F74C
_0802F6EC:
	ldr r0, _0802F6FC  @ =gGeneralTimer
	ldr r0, [r0]
	bl sub_0802F5C0
	mov r1, #100
	mul r0, r1, r0
	b _0802F764
	.byte 0x00
	.byte 0x00
_0802F6FC:
	.4byte gGeneralTimer
_0802F700:
	ldr r0, _0802F714  @ =gUnknown_03000B44
	ldr r0, [r0]
	bl sub_0802F5C0
	mov r1, #100
	mul r1, r0, r1
	ldr r0, [r4]
	add r0, r0, r1
	b _0802F764
	.byte 0x00
	.byte 0x00
_0802F714:
	.4byte gUnknown_03000B44
_0802F718:
	ldr r0, _0802F728  @ =gMiniMariosRescued_03001BA0
	ldrb r1, [r0]
	mov r0, #100
	mul r1, r0, r1
	ldr r0, [r4]
	add r0, r0, r1
	b _0802F764
	.byte 0x00
	.byte 0x00
_0802F728:
	.4byte gMiniMariosRescued_03001BA0
_0802F72C:
	ldr r0, _0802F740  @ =0x03000DD8
	add r5, r4, #0
	str r5, [r0]
	ldr r0, _0802F744  @ =gCurrentPresentScore
	ldr r1, _0802F748  @ =gCurrentEnemyScore
	ldr r0, [r0]
	ldr r1, [r1]
	add r0, r0, r1
	str r0, [r5]
	b _0802F766
_0802F740:
	.4byte 0x03000DD8
_0802F744:
	.4byte gCurrentPresentScore
_0802F748:
	.4byte gCurrentEnemyScore
_0802F74C:
	ldr r0, _0802F7A8  @ =0x03000E54
	str r4, [r0]
	ldr r0, _0802F7AC  @ =0x03000DD0
	ldrb r0, [r0]
	ldr r1, _0802F7B0  @ =0x03000DF8
	ldrb r1, [r1]
	ldr r2, _0802F7B4  @ =gLevelType
	ldrb r2, [r2]
	bl get_level_highscore_0801095C
	lsl r0, r0, #16
	lsr r0, r0, #16
_0802F764:
	str r0, [r4]
_0802F766:
	mov r1, r8
	ldrb r0, [r1, #7]
	sub r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, [r4]
	cmp r0, #1
	bls _0802F778
	add r9, r9, r1
_0802F778:
	str r1, [r4, #4]
	add r0, r4, #0
	add r0, r0, #12
	bl sub_0802FB18
	add r7, r7, #1
	ldr r0, [r6, #80]
	ldr r0, [r0]
	cmp r7, r0
	bge _0802F78E
	b _0802F690
_0802F78E:
	cmp r5, #0
	beq _0802F79A
	ldr r0, [r5, #4]
	add r0, r0, r9
	str r0, [r5, #4]
	str r0, [r5, #8]
_0802F79A:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0802F7A8:
	.4byte 0x03000E54
_0802F7AC:
	.4byte 0x03000DD0
_0802F7B0:
	.4byte 0x03000DF8
_0802F7B4:
	.4byte gLevelType
	THUMB_FUNC_END sub_0802F648

	THUMB_FUNC_START sub_0802F7B8
sub_0802F7B8: @ 0x0802F7B8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #8
	add r2, r0, #0
	mov r8, r1
	ldr r0, [r2, #80]
	ldr r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	sub r0, r0, #40
	add r6, r2, r0
	mov r7, #0
	mov r3, #0
	sub r1, r1, #2
	cmp r7, r1
	bge _0802F81E
	add r4, r2, #4
	mov r0, #12
	add r0, r0, r2
	mov r9, r0
_0802F7E6:
	ldr r1, [r4]
	mov r5, r8
	sub r0, r1, r5
	cmp r0, #0
	bge _0802F7F8
	add r7, r7, r1
	mov r0, #0
	str r0, [r4]
	b _0802F7FC
_0802F7F8:
	str r0, [r4]
	add r7, r7, r8
_0802F7FC:
	ldr r1, [r4]
	mov r0, r9
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_0802FB18
	add r4, r4, #20
	mov r0, #20
	add r9, r9, r0
	ldr r3, [sp, #4]
	add r3, r3, #1
	ldr r2, [sp]
	ldr r0, [r2, #80]
	ldr r0, [r0]
	sub r0, r0, #2
	cmp r3, r0
	blt _0802F7E6
_0802F81E:
	ldr r0, [r6]
	add r2, r0, r7
	str r2, [r6]
	ldr r0, _0802F884  @ =0x03000DDC
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r3, r0, #0
	cmp r1, #0
	bne _0802F83E
	ldr r0, [r6, #20]
	cmp r2, r0
	ble _0802F83E
	str r2, [r6, #20]
	ldr r1, _0802F888  @ =0x03000DE4
	mov r0, #1
	strb r0, [r1]
_0802F83E:
	ldr r0, [r6]
	ldr r1, [r6, #4]
	cmp r0, r1
	blt _0802F860
	mov r5, #0
	mov r8, r5
	str r1, [r6]
	mov r1, #1
	strb r1, [r3]
	ldr r0, _0802F888  @ =0x03000DE4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0802F860
	ldr r0, _0802F88C  @ =0x03000DD4
	strb r1, [r0]
_0802F860:
	add r0, r6, #0
	add r0, r0, #12
	ldr r1, [r6]
	bl sub_0802FB18
	add r0, r6, #0
	add r0, r0, #32
	ldr r1, [r6, #20]
	bl sub_0802FB18
	mov r0, r8
	add sp, sp, #8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
_0802F884:
	.4byte 0x03000DDC
_0802F888:
	.4byte 0x03000DE4
_0802F88C:
	.4byte 0x03000DD4
	THUMB_FUNC_END sub_0802F7B8

	THUMB_FUNC_START sub_0802F890
sub_0802F890: @ 0x0802F890
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	str r0, [sp, #12]
	str r1, [sp, #16]
	mov r10, r2
	mov r9, r3
	ldr r0, _0802F8C4  @ =0x03000DE4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0802F936
	ldr r2, _0802F8C8  @ =0x03000DE0
	ldrb r1, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #4
	bgt _0802F8CC
	add r0, r1, #1
	strb r0, [r2]
	b _0802F936
	.byte 0x00
	.byte 0x00
_0802F8C4:
	.4byte 0x03000DE4
_0802F8C8:
	.4byte 0x03000DE0
_0802F8CC:
	ldr r1, _0802F910  @ =0x03000DF0
	ldrb r3, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #11
	bgt _0802F928
	mov r0, #0
	strb r0, [r2]
	add r0, r3, #1
	strb r0, [r1]
	ldr r2, _0802F914  @ =0x03000DEC
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	cmp r0, #1
	bne _0802F91C
	ldr r1, _0802F918  @ =gBGLayerOffsets 
	mov r2, #0
	mov r0, #128
	lsl r0, r0, #1
	strh r0, [r1, #4]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #25
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0802F936
	.byte 0x00
	.byte 0x00
_0802F910:
	.4byte 0x03000DF0
_0802F914:
	.4byte 0x03000DEC
_0802F918:
	.4byte gBGLayerOffsets 
_0802F91C:
	ldr r1, _0802F924  @ =gBGLayerOffsets 
	mov r0, #0
	strh r0, [r1, #4]
	b _0802F936
_0802F924:
	.4byte gBGLayerOffsets 
_0802F928:
	ldr r0, _0802F9C8  @ =0x03000DDC
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	bne _0802F936
	ldr r0, _0802F9CC  @ =0x03000DD4
	strb r1, [r0]
_0802F936:
	mov r7, #0
	ldr r0, [sp, #12]
	ldr r1, [r0, #80]
	ldr r0, [r1]
	cmp r7, r0
	bge _0802F9B8
	ldr r6, [sp, #12]
	add r6, r6, #12
	mov r3, #4
	mov r8, r3
_0802F94A:
	mov r5, #6
	mov r0, r8
	add r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0802F96A
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	mov r3, r10
	str r3, [sp]
	mov r3, r9
	str r3, [sp, #4]
	str r5, [sp, #8]
	ldr r3, [sp, #16]
	bl sub_0802F9D8
_0802F96A:
	ldr r0, _0802F9D0  @ =0x03000DE4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0802F990
	ldr r0, _0802F9D4  @ =0x03000DEC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0802F990
	ldrb r0, [r4, #7]
	sub r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0802F990
	mov r5, #8
_0802F990:
	ldrb r1, [r4, #6]
	ldrb r2, [r4, #5]
	mov r0, r10
	str r0, [sp]
	mov r3, r9
	str r3, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	ldr r3, [sp, #16]
	bl sub_0802FB60
	add r6, r6, #20
	mov r0, #8
	add r8, r8, r0
	add r7, r7, #1
	ldr r3, [sp, #12]
	ldr r1, [r3, #80]
	ldr r0, [r1]
	cmp r7, r0
	blt _0802F94A
_0802F9B8:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802F9C8:
	.4byte 0x03000DDC
_0802F9CC:
	.4byte 0x03000DD4
_0802F9D0:
	.4byte 0x03000DE4
_0802F9D4:
	.4byte 0x03000DEC
	THUMB_FUNC_END sub_0802F890

	THUMB_FUNC_START sub_0802F9D8
sub_0802F9D8: @ 0x0802F9D8
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
	bcs _0802FADE
	ldr r5, _0802FAF0  @ =REG_DMA3SAD
	ldr r7, _0802FAF4  @ =gOamData
_0802FA16:
	mov r1, r9
	add r1, r1, r12
	ldrb r0, [r1]
	cmp r0, #32
	beq _0802FAC8
	ldrb r0, [r1]
	sub r0, r0, #65
	lsl r0, r0, #5
	ldr r2, _0802FAF8  @ =gUnknown_080CB7F0
	add r0, r0, r2
	str r0, [r5]
	mov r3, r10
	ldrh r0, [r3]
	ldr r1, _0802FAFC  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0802FB00  @ =0x84000008
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0802FB04  @ =gUnknown_080CB7E8
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r5, #4]
	ldr r0, _0802FB08  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	ldrh r2, [r1, #2]
	ldr r0, _0802FB0C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r6
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #40]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0802FB10  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0802FB14  @ =0xFFFFFC00
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
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldr r1, [sp, #40]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	mov r2, r10
	ldrh r0, [r2]
	add r0, r0, #32
	strh r0, [r2]
_0802FAC8:
	add r0, r6, #0
	add r0, r0, #8
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, r12
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	cmp r12, r8
	bcc _0802FA16
_0802FADE:
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
_0802FAF0:
	.4byte REG_DMA3SAD
_0802FAF4:
	.4byte gOamData
_0802FAF8:
	.4byte gUnknown_080CB7F0
_0802FAFC:
	.4byte OBJ_VRAM0
_0802FB00:
	.4byte 0x84000008
_0802FB04:
	.4byte gUnknown_080CB7E8
_0802FB08:
	.4byte 0x84000002
_0802FB0C:
	.4byte 0xFFFFFE00
_0802FB10:
	.4byte 0x000003FF
_0802FB14:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0802F9D8

	THUMB_FUNC_START sub_0802FB18
sub_0802FB18: @ 0x0802FB18
	push {r4-r7,lr}
	add r7, r0, #0
	add r6, r1, #0
	mov r5, #0
	mov r1, #0
_0802FB22:
	add r0, r7, r5
	strb r1, [r0]
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #5
	bls _0802FB22
	mov r5, #0
	cmp r6, #0
	beq _0802FB5A
_0802FB36:
	add r4, r7, r5
	add r0, r6, #0
	mov r1, #10
	bl __umodsi3
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #10
	bl __udivsi3
	add r6, r0, #0
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #5
	bhi _0802FB5A
	cmp r6, #0
	bne _0802FB36
_0802FB5A:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802FB18

	THUMB_FUNC_START sub_0802FB60
sub_0802FB60: @ 0x0802FB60
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r10, r0
	add r4, r3, #0
	ldr r0, [sp, #40]
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r9, r1
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r8, r2
	lsl r0, r0, #24
	mov r6, #0
	ldr r7, _0802FC08  @ =REG_DMA3SAD
	ldr r5, _0802FC0C  @ =gOamData
	lsr r0, r0, #20
	mov r12, r0
_0802FB88:
	ldr r0, _0802FC10  @ =gUnknown_082EC748
	str r0, [r7]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r7, #4]
	ldr r0, _0802FC14  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r5
	lsl r1, r6, #3
	mov r2, r9
	sub r1, r2, r1
	ldr r2, _0802FC18  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0802FC1C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r8
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	add r0, r1, r6
	ldrb r1, [r0]
	lsl r1, r1, #1
	ldrh r3, [r2, #4]
	ldr r0, _0802FC20  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r12
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #5
	bls _0802FB88
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802FC08:
	.4byte REG_DMA3SAD
_0802FC0C:
	.4byte gOamData
_0802FC10:
	.4byte gUnknown_082EC748
_0802FC14:
	.4byte 0x84000002
_0802FC18:
	.4byte 0x000001FF
_0802FC1C:
	.4byte 0xFFFFFE00
_0802FC20:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0802FB60

	THUMB_FUNC_START sub_0802FC24
sub_0802FC24: @ 0x0802FC24
	push {r4,lr}
	add r2, r0, #0
	cmp r1, #0
	beq _0802FC3C
	ldr r0, _0802FC38  @ =0x03000DD8
	ldr r1, [r0]
	ldr r0, [r1, #8]
	add r0, r0, r2
	str r0, [r1, #8]
	b _0802FC76
_0802FC38:
	.4byte 0x03000DD8
_0802FC3C:
	ldr r4, _0802FC7C  @ =0x03000DD8
	ldr r1, [r4]
	ldr r0, [r1, #4]
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, [r1]
	add r2, r0, r2
	str r2, [r1]
	ldr r3, _0802FC80  @ =0x03000E54
	ldr r1, [r3]
	ldr r0, [r1]
	cmp r2, r0
	ble _0802FC5E
	str r2, [r1]
	ldr r1, _0802FC84  @ =0x03000DE4
	mov r0, #1
	strb r0, [r1]
_0802FC5E:
	ldr r1, [r3]
	add r0, r1, #0
	add r0, r0, #12
	ldr r1, [r1]
	bl sub_0802FB18
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #12
	ldr r1, [r1]
	bl sub_0802FB18
_0802FC76:
	pop {r4}
	pop {r0}
	bx r0
_0802FC7C:
	.4byte 0x03000DD8
_0802FC80:
	.4byte 0x03000E54
_0802FC84:
	.4byte 0x03000DE4
	THUMB_FUNC_END sub_0802FC24

	THUMB_FUNC_START sub_0802FC88
sub_0802FC88: @ 0x0802FC88
	push {lr}
	mov r2, #0
	ldr r0, _0802FCA0  @ =0x03000DD8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	cmp r1, r0
	blt _0802FC9A
	mov r2, #1
_0802FC9A:
	add r0, r2, #0
	pop {r1}
	bx r1
_0802FCA0:
	.4byte 0x03000DD8
	THUMB_FUNC_END sub_0802FC88

	THUMB_FUNC_START sub_0802FCA4
sub_0802FCA4: @ 0x0802FCA4
	push {lr}
	ldr r0, _0802FCCC  @ =0x03000DD8
	ldr r1, [r0]
	ldr r0, _0802FCD0  @ =0x03000E54
	ldr r0, [r0]
	ldr r2, [r1, #8]
	ldr r0, [r0, #4]
	cmp r2, r0
	blt _0802FCC6
	ldr r0, _0802FCD4  @ =0x03000DD0
	ldrb r0, [r0]
	ldr r1, _0802FCD8  @ =0x03000DF8
	ldrb r1, [r1]
	lsl r2, r2, #16
	lsr r2, r2, #16
	bl set_level_highscore_flag_080107E8
_0802FCC6:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FCCC:
	.4byte 0x03000DD8
_0802FCD0:
	.4byte 0x03000E54
_0802FCD4:
	.4byte 0x03000DD0
_0802FCD8:
	.4byte 0x03000DF8
	THUMB_FUNC_END sub_0802FCA4

	THUMB_FUNC_START sub_0802FCDC
sub_0802FCDC: @ 0x0802FCDC
	push {r4-r7,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	lsr r0, r7, #31
	mov r12, r0
	mov r1, r12
	cmp r1, #0
	beq _0802FCF4
	mov r0, #0
	strh r0, [r4, #60]
_0802FCF4:
	mov r2, #62
	ldrsh r7, [r4, r2]
	cmp r3, #0
	blt _0802FD04
	add r0, r4, #0
	add r0, r0, #64
	strh r3, [r0]
	b _0802FD0C
_0802FD04:
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsh r3, [r0, r1]
_0802FD0C:
	ldr r0, [r4, #32]
	str r0, [r4, #40]
	ldr r0, [r4, #36]
	str r0, [r4, #44]
	mov r6, #0
	str r6, [r4, #48]
	str r6, [r4, #52]
	cmp r5, #53
	bne _0802FD70
	ldr r0, _0802FD64  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #7
	ldr r0, _0802FD68  @ =0x030001CC
	ldr r2, [r0]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #6
	ldr r2, _0802FD6C  @ =gUnknown_0807D1F0
	add r0, r0, r2
	add r1, r1, r0
	lsl r0, r7, #5
	add r2, r1, r0
	mov r0, #60
	ldrsh r1, [r4, r0]
	lsl r1, r1, #2
	add r0, r2, #4
	add r0, r0, r1
	ldr r5, [r0]
	mov r1, r12
	cmp r1, #0
	bne _0802FD54
	ldrh r0, [r4, #60]
	add r0, r0, #1
	strh r0, [r4, #60]
_0802FD54:
	mov r0, #60
	ldrsh r1, [r4, r0]
	ldr r0, [r2]
	cmp r1, r0
	blt _0802FD82
	strh r6, [r4, #60]
	b _0802FD82
	.byte 0x00
	.byte 0x00
_0802FD64:
	.4byte gUnknown_03001BC8
_0802FD68:
	.4byte 0x030001CC
_0802FD6C:
	.4byte gUnknown_0807D1F0
_0802FD70:
	cmp r5, #51
	bne _0802FD76
	b _0802FF24
_0802FD76:
	cmp r5, #52
	bne _0802FD82
	mov r0, #1
	strh r0, [r4, #56]
	strh r6, [r4, #58]
	b _0802FF24
_0802FD82:
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #3
	ldr r1, _0802FDAC  @ =gUnknown_0807CB68
	add r5, r0, r1
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802FDB4
	ldr r0, _0802FDB0  @ =0x03000DD4
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _0802FDB4
	mov r0, #1
	strh r0, [r4, #56]
	strh r1, [r4, #58]
	b _0802FF24
	.byte 0x00
	.byte 0x00
_0802FDAC:
	.4byte gUnknown_0807CB68
_0802FDB0:
	.4byte 0x03000DD4
_0802FDB4:
	mov r6, #0
	ldrh r1, [r5, #22]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #0
	bne _0802FE08
	ldr r0, [r5, #16]
	str r0, [r4]
	ldrb r1, [r5, #12]
	cmp r6, r1
	bge _0802FDDA
	ldr r0, [r5, #16]
	ldr r2, [r0, #12]
_0802FDCE:
	ldrb r0, [r2, #1]
	add r6, r6, r0
	add r2, r2, #36
	sub r1, r1, #1
	cmp r1, #0
	bne _0802FDCE
_0802FDDA:
	ldr r0, [r5, #16]
	ldr r0, [r0, #16]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r4, #24]
	str r1, [r4, #28]
	ldrh r1, [r5, #22]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802FE08
	mov r1, #0
	ldrb r2, [r4, #27]
	lsl r0, r2, #27
	cmp r0, #0
	blt _0802FDFC
	mov r1, #1
_0802FDFC:
	lsl r1, r1, #4
	mov r0, #17
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #27]
_0802FE08:
	mov r1, #20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0802FE12
	add r6, r0, #0
_0802FE12:
	mov r0, r12
	cmp r0, #0
	beq _0802FE1A
	mov r6, #0
_0802FE1A:
	mov r0, #0
	strh r6, [r4, #56]
	strh r0, [r4, #58]
	ldrh r1, [r5, #8]
	lsl r1, r1, #8
	ldr r0, [r4, #40]
	add r0, r0, r1
	str r0, [r4, #40]
	ldrh r1, [r5, #10]
	lsl r1, r1, #8
	ldr r0, [r4, #44]
	add r0, r0, r1
	str r0, [r4, #44]
	ldrb r0, [r5, #13]
	cmp r0, #0
	beq _0802FE54
	add r2, r0, #0
	add r1, r3, #0
	mul r1, r2, r1
	mov r0, #240
	sub r0, r0, r1
	asr r0, r0, #1
	add r1, r7, #0
	mul r1, r2, r1
	add r1, r0, r1
	mov r2, #4
	ldrsh r0, [r5, r2]
	add r1, r1, r0
	b _0802FE58
_0802FE54:
	mov r3, #4
	ldrsh r1, [r5, r3]
_0802FE58:
	lsl r1, r1, #8
	ldr r0, [r4, #40]
	sub r2, r1, r0
	mov r3, #30
	ldrsh r1, [r5, r3]
	asr r2, r2, r1
	add r0, r0, r2
	str r0, [r4, #32]
	cmp r6, #0
	beq _0802FE84
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0802FE84
	add r0, r2, #0
	add r1, r6, #0
	bl __divsi3
	str r0, [r4, #48]
	b _0802FE8C
_0802FE84:
	mov r0, #0
	str r0, [r4, #48]
	ldr r0, [r4, #32]
	str r0, [r4, #40]
_0802FE8C:
	mov r1, #6
	ldrsh r0, [r5, r1]
	lsl r0, r0, #8
	str r0, [r4, #36]
	ldr r1, [r4, #44]
	sub r2, r0, r1
	cmp r6, #0
	beq _0802FEB4
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0802FEB4
	add r0, r2, #0
	add r1, r6, #0
	bl __divsi3
	str r0, [r4, #52]
	b _0802FEBC
_0802FEB4:
	mov r0, #0
	str r0, [r4, #52]
	ldr r0, [r4, #36]
	str r0, [r4, #44]
_0802FEBC:
	mov r2, #0
	strh r2, [r4, #10]
	ldr r0, [r4]
	ldr r0, [r0, #12]
	ldrb r0, [r0, #1]
	strh r0, [r4, #8]
	ldr r0, [r5, #24]
	str r0, [r4, #68]
	str r5, [r4, #20]
	strh r2, [r4, #14]
	ldrh r1, [r5, #22]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0802FEDE
	mov r0, #1
	strh r0, [r4, #14]
_0802FEDE:
	ldr r1, [r5]
	ldr r0, _0802FF2C  @ =0x0000FFFF
	cmp r1, r0
	beq _0802FEFA
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r0, r1, #0
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802FEFA:
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0802FF24
	add r5, r4, #0
	add r5, r5, #66
	mov r2, #0
	ldrsh r0, [r5, r2]
	ldr r1, [r4, #40]
	asr r1, r1, #8
	ldr r2, [r4, #44]
	asr r2, r2, #8
	bl sub_08031A64
	mov r3, #0
	ldrsh r0, [r5, r3]
	mov r1, #0
	bl sub_0802FC24
_0802FF24:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_0802FF2C:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_0802FCDC

	THUMB_FUNC_START sub_0802FF30
sub_0802FF30: @ 0x0802FF30
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r0, #53
	mov r8, r0
	ldr r0, _0802FF84  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r6, _0802FF88  @ =gUnknown_03001BC8
	cmp r0, #1
	bne _0802FF54
	ldrb r0, [r6]
	cmp r0, #6
	bne _0802FF54
	mov r2, #21
	mov r8, r2
_0802FF54:
	ldr r1, _0802FF8C  @ =0x030001CC
	mov r0, #0
	str r0, [r1]
	mov r5, #0
	ldr r7, _0802FF90  @ =0x030001E0
	ldr r4, _0802FF94  @ =0x030001D0
	ldr r3, _0802FF98  @ =gLevelCollectableFlags
	add r2, r1, #0
_0802FF64:
	add r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FF72
	ldr r0, [r2]
	add r0, r0, #1
	str r0, [r2]
_0802FF72:
	add r5, r5, #1
	cmp r5, #2
	ble _0802FF64
	ldr r0, [r1]
	cmp r0, #3
	bne _0802FF9C
	mov r0, #1
	b _0802FF9E
	.byte 0x00
	.byte 0x00
_0802FF84:
	.4byte gLevelType
_0802FF88:
	.4byte gUnknown_03001BC8
_0802FF8C:
	.4byte 0x030001CC
_0802FF90:
	.4byte 0x030001E0
_0802FF94:
	.4byte 0x030001D0
_0802FF98:
	.4byte gLevelCollectableFlags
_0802FF9C:
	mov r0, #0
_0802FF9E:
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r7]
	mov r5, #0
	ldrb r3, [r6]
	cmp r5, r3
	bge _08030036
	ldr r0, _0802FFE4  @ =0x030001D8
	mov r9, r0
	mov r7, #0
_0802FFB2:
	ldr r0, _0802FFE8  @ =0x030001E0
	ldr r0, [r0]
	add r0, r5, r0
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	mov r2, r9
	ldr r0, [r2]
	add r4, r0, r1
	mov r3, r8
	cmp r3, #21
	bne _0802FFF0
	mov r2, #0
	strh r5, [r4, #62]
	add r1, r4, #0
	add r1, r1, #66
	mov r0, #250
	lsl r0, r0, #2
	strh r0, [r1]
	cmp r5, #5
	bne _0802FFF8
	ldr r0, _0802FFEC  @ =0x00001388
	strh r0, [r1]
	b _0802FFF8
	.byte 0x00
	.byte 0x00
_0802FFE4:
	.4byte 0x030001D8
_0802FFE8:
	.4byte 0x030001E0
_0802FFEC:
	.4byte 0x00001388
_0802FFF0:
	mvn r0, r5
	ldrb r6, [r6]
	add r0, r0, r6
	strh r0, [r4, #62]
_0802FFF8:
	ldr r6, _0803004C  @ =gUnknown_03001BC8
	ldrb r3, [r6]
	add r0, r4, #0
	mov r1, r8
	mov r2, #1
	neg r2, r2
	bl sub_0802FCDC
	mov r0, r8
	cmp r0, #21
	bne _08030014
	ldrh r0, [r4, #56]
	add r0, r0, r7
	strh r0, [r4, #56]
_08030014:
	ldr r2, [r4, #40]
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r0, [r4, #26]
	ldr r3, _08030050  @ =0xFFFFFE00
	add r1, r3, #0
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r4, #26]
	ldr r0, [r4, #44]
	asr r0, r0, #8
	strb r0, [r4, #24]
	add r7, r7, #20
	add r5, r5, #1
	ldrb r0, [r6]
	cmp r5, r0
	blt _0802FFB2
_08030036:
	ldr r2, _08030054  @ =0x030001D0
	ldrb r1, [r6]
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0803004C:
	.4byte gUnknown_03001BC8
_08030050:
	.4byte 0xFFFFFE00
_08030054:
	.4byte 0x030001D0
	THUMB_FUNC_END sub_0802FF30

	THUMB_FUNC_START sub_08030058
sub_08030058: @ 0x08030058
	push {r4,lr}
	add r2, r0, #0
	ldr r3, _080300BC  @ =0x030001D8
	ldr r4, _080300C0  @ =0x030001D0
	ldr r0, [r4]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r3]
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0, #62]
	str r1, [r0, #52]
	str r1, [r0, #48]
	strh r1, [r0, #56]
	strh r1, [r0, #58]
	str r2, [r0, #68]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r2, _080300C4  @ =gUnknown_0807CB68
	add r1, r1, r2
	str r1, [r0, #20]
	ldrb r1, [r0, #27]
	mov r2, #16
	orr r1, r1, r2
	strb r1, [r0, #27]
	ldr r2, [r0, #40]
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r3, [r0, #26]
	ldr r1, _080300C8  @ =0xFFFFFE00
	and r1, r1, r3
	orr r1, r1, r2
	strh r1, [r0, #26]
	ldr r1, [r0, #44]
	asr r1, r1, #8
	strb r1, [r0, #24]
	mov r2, #1
	neg r2, r2
	mov r1, #31
	mov r3, #0
	bl sub_0802FCDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
_080300BC:
	.4byte 0x030001D8
_080300C0:
	.4byte 0x030001D0
_080300C4:
	.4byte gUnknown_0807CB68
_080300C8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08030058

	THUMB_FUNC_START sub_080300CC
sub_080300CC: @ 0x080300CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	mov r10, r0
	ldr r0, _080301A4  @ =0x03000DF8
	mov r6, #0
	ldrsb r6, [r0, r6]
	ldr r0, _080301A8  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080300EE
	b _08030250
_080300EE:
	ldr r0, _080301AC  @ =gLevelType
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _08030108
	asr r6, r6, #1
	ldr r0, _080301B0  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08030108
	mov r6, #7
_08030108:
	mov r3, #0
	ldr r0, _080301B4  @ =0x030001D0
	ldr r2, [r0]
	cmp r3, r2
	blt _08030114
	b _08030250
_08030114:
	ldr r0, _080301B8  @ =0x030001D8
	ldr r4, [r0]
	ldr r1, [r4, #20]
	mov r9, r0
	ldr r5, _080301BC  @ =gUnknown_0807D270
	cmp r1, r5
	beq _0803015A
	add r4, r5, #0
	add r4, r4, #40
	cmp r1, r4
	beq _0803015A
	add r0, r5, #0
	add r0, r0, #80
	cmp r1, r0
	beq _0803015A
	add r1, r2, #0
	mov r8, r9
	mov r2, #0
	mov r12, r4
	add r7, r0, #0
_0803013C:
	add r2, r2, #72
	add r3, r3, #1
	cmp r3, r1
	blt _08030146
	b _08030250
_08030146:
	mov r4, r8
	ldr r0, [r4]
	add r4, r0, r2
	ldr r0, [r4, #20]
	cmp r0, r5
	beq _0803015A
	cmp r0, r12
	beq _0803015A
	cmp r0, r7
	bne _0803013C
_0803015A:
	ldr r1, _080301B4  @ =0x030001D0
	ldr r0, [r1]
	cmp r3, r0
	bge _08030250
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #3
	mov r2, r9
	ldr r1, [r2]
	add r4, r1, r0
	ldr r1, _080301AC  @ =gLevelType
	ldrb r0, [r1]
	ldr r1, _080301C0  @ =0x03000DD0
	ldrb r1, [r1]
	lsl r2, r6, #24
	lsr r2, r2, #24
	bl got_star_on_level
	lsl r0, r0, #24
	cmp r0, #0
	bne _080301CC
	mov r2, r10
	cmp r2, #0
	beq _0803023A
	ldr r1, [r4, #20]
	ldr r0, _080301C4  @ =gUnknown_0807D298
	cmp r1, r0
	beq _0803019A
	ldr r0, _080301C8  @ =0x030001D4
	ldrb r0, [r0]
	cmp r6, r0
	bge _0803021C
_0803019A:
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #42
	b _08030224
_080301A4:
	.4byte 0x03000DF8
_080301A8:
	.4byte gLevelEWorldFlag
_080301AC:
	.4byte gLevelType
_080301B0:
	.4byte gNextLevelInLevelTable
_080301B4:
	.4byte 0x030001D0
_080301B8:
	.4byte 0x030001D8
_080301BC:
	.4byte gUnknown_0807D270
_080301C0:
	.4byte 0x03000DD0
_080301C4:
	.4byte gUnknown_0807D298
_080301C8:
	.4byte 0x030001D4
_080301CC:
	mov r0, r10
	cmp r0, #0
	beq _0803022C
	ldr r1, [r4, #20]
	ldr r0, _08030200  @ =gUnknown_0807D298
	cmp r1, r0
	beq _080301E0
	add r0, r0, #40
	cmp r1, r0
	bne _08030204
_080301E0:
	mov r0, #0
	str r0, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #233
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #43
	b _08030224
_08030200:
	.4byte gUnknown_0807D298
_08030204:
	ldr r0, _08030218  @ =0x030001D4
	ldrb r0, [r0]
	cmp r6, r0
	bge _0803021C
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #47
	b _08030224
	.byte 0x00
	.byte 0x00
_08030218:
	.4byte 0x030001D4
_0803021C:
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #46
_08030224:
	mov r2, #0
	bl sub_0802FCDC
	b _0803023A
_0803022C:
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #44
	mov r2, #0
	bl sub_0802FCDC
_0803023A:
	ldr r1, [r4, #40]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4, #26]
	ldr r0, _08030260  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #26]
	ldr r0, [r4, #44]
	asr r0, r0, #8
	strb r0, [r4, #24]
_08030250:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08030260:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080300CC

	THUMB_FUNC_START sub_08030264
sub_08030264: @ 0x08030264
	push {r4,r5,lr}
	ldr r0, _080302E0  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080302D8
	ldr r0, _080302E4  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080302D8
	ldr r0, _080302E8  @ =gLevelType
	ldrb r0, [r0]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _080302D8
	mov r1, #0
	ldr r2, _080302EC  @ =gLevelCollectableFlags
_08030290:
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080302D8
	add r1, r1, #1
	cmp r1, #2
	ble _08030290
	ldr r2, _080302F0  @ =0x030001D8
	ldr r5, _080302F4  @ =0x030001D0
	ldr r1, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r4, [r2]
	add r4, r4, r0
	mov r2, #1
	neg r2, r2
	add r0, r4, #0
	mov r1, #48
	mov r3, #0
	bl sub_0802FCDC
	ldr r1, [r4, #40]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4, #26]
	ldr r0, _080302F8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #26]
	ldr r0, [r4, #44]
	asr r0, r0, #8
	strb r0, [r4, #24]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_080302D8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080302E0:
	.4byte gNextLevelInLevelTable
_080302E4:
	.4byte gLevelEWorldFlag
_080302E8:
	.4byte gLevelType
_080302EC:
	.4byte gLevelCollectableFlags
_080302F0:
	.4byte 0x030001D8
_080302F4:
	.4byte 0x030001D0
_080302F8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08030264

	THUMB_FUNC_START sub_080302FC
sub_080302FC: @ 0x080302FC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, _08030384  @ =0x03000DF8
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r8, r0
	ldr r0, _08030388  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080303FA
	ldr r5, _0803038C  @ =gLevelType
	ldrb r0, [r5]
	cmp r0, #1
	bhi _080303FA
	ldr r4, _08030390  @ =0x030001D4
	ldr r1, _08030394  @ =0x03000DD0
	ldrb r1, [r1]
	bl get_last_unlocked_level_for_world
	strb r0, [r4]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0803034C
	mov r0, r8
	asr r0, r0, #1
	mov r8, r0
	ldr r0, _08030398  @ =gNextLevelInLevelTable
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803034C
	mov r2, #7
	mov r8, r2
_0803034C:
	ldr r0, _0803038C  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r6, #7
	cmp r0, #0
	bne _0803035C
	mov r6, #8
_0803035C:
	mov r5, #0
	cmp r5, r6
	bge _080303FA
	ldr r0, _0803039C  @ =0x030001D8
	mov r9, r0
	ldr r7, _080303A0  @ =0x030001D0
_08030368:
	ldr r0, [r7]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	mov r2, r9
	ldr r0, [r2]
	add r4, r0, r1
	strh r5, [r4, #62]
	cmp r5, r8
	bne _080303A4
	add r0, r4, #0
	mov r1, #45
	b _080303C6
	.byte 0x00
	.byte 0x00
_08030384:
	.4byte 0x03000DF8
_08030388:
	.4byte gLevelEWorldFlag
_0803038C:
	.4byte gLevelType
_08030390:
	.4byte 0x030001D4
_08030394:
	.4byte 0x03000DD0
_08030398:
	.4byte gNextLevelInLevelTable
_0803039C:
	.4byte 0x030001D8
_080303A0:
	.4byte 0x030001D0
_080303A4:
	ldr r0, _080303D4  @ =0x030001D4
	ldrb r0, [r0]
	cmp r5, r0
	bge _080303FA
	ldr r0, _080303D8  @ =gLevelType
	ldrb r0, [r0]
	ldr r1, _080303DC  @ =0x03000DD0
	ldrb r1, [r1]
	lsl r2, r5, #24
	lsr r2, r2, #24
	bl got_star_on_level
	lsl r0, r0, #24
	cmp r0, #0
	beq _080303E0
	add r0, r4, #0
	mov r1, #41
_080303C6:
	mov r2, #1
	neg r2, r2
	add r3, r6, #0
	bl sub_0802FCDC
	b _080303EE
	.byte 0x00
	.byte 0x00
_080303D4:
	.4byte 0x030001D4
_080303D8:
	.4byte gLevelType
_080303DC:
	.4byte 0x03000DD0
_080303E0:
	add r0, r4, #0
	mov r1, #42
	mov r2, #1
	neg r2, r2
	add r3, r6, #0
	bl sub_0802FCDC
_080303EE:
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	add r5, r5, #1
	cmp r5, r6
	blt _08030368
_080303FA:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080302FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08030408
sub_08030408: @ 0x08030408
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r7, r0, #0
	ldr r6, _08030464  @ =0x030001D0
	mov r4, #0
	str r4, [r6]
	ldr r0, _08030468  @ =0x030001DC
	str r4, [r0]
	ldr r5, _0803046C  @ =0x030001D8
	mov r0, #135
	lsl r0, r0, #4
	bl arena_allocate
	add r1, r0, #0
	str r1, [r5]
	mov r0, sp
	strh r4, [r0]
	ldr r2, _08030470  @ =0x01000438
	bl CpuSet
	ldr r1, [r6]
	ldr r2, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #3
	add r1, r0, r2
	str r4, [r1, #32]
	mov r0, #128
	lsl r0, r0, #3
	str r0, [r1, #36]
	cmp r7, #2
	beq _08030474
	cmp r7, #2
	ble _08030458
	cmp r7, #3
	beq _08030484
_08030458:
	mov r2, #1
	neg r2, r2
	add r0, r1, #0
	mov r1, #34
	b _0803047C
	.byte 0x00
	.byte 0x00
_08030464:
	.4byte 0x030001D0
_08030468:
	.4byte 0x030001DC
_0803046C:
	.4byte 0x030001D8
_08030470:
	.4byte 0x01000438
_08030474:
	mov r2, #1
	neg r2, r2
	add r0, r1, #0
	mov r1, #35
_0803047C:
	mov r3, #0
	bl sub_0802FCDC
	b _08030492
_08030484:
	mov r2, #1
	neg r2, r2
	add r0, r1, #0
	mov r1, #36
	mov r3, #0
	bl sub_0802FCDC
_08030492:
	ldr r0, _080304E8  @ =0x030001D0
	mov r8, r0
	ldr r0, [r0]
	lsl r2, r0, #3
	add r2, r2, r0
	lsl r2, r2, #3
	ldr r1, _080304EC  @ =0x030001D8
	mov r9, r1
	ldr r0, [r1]
	add r2, r2, r0
	ldr r1, [r2, #40]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldr r3, _080304F0  @ =0x000001FF
	mov r10, r3
	mov r4, r10
	and r1, r1, r4
	ldrh r3, [r2, #26]
	ldr r0, _080304F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #26]
	ldr r0, [r2, #44]
	asr r0, r0, #8
	strb r0, [r2, #24]
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	bl sub_080302FC
	bl sub_08030264
	cmp r7, #1
	bhi _080305CC
	cmp r7, #0
	bne _08030500
	ldr r1, _080304F8  @ =gUnknown_03001BC8
	ldr r0, _080304FC  @ =0x03000DF4
	ldrb r0, [r0]
	add r0, r0, #1
	b _08030504
	.byte 0x00
	.byte 0x00
_080304E8:
	.4byte 0x030001D0
_080304EC:
	.4byte 0x030001D8
_080304F0:
	.4byte 0x000001FF
_080304F4:
	.4byte 0xFFFFFE00
_080304F8:
	.4byte gUnknown_03001BC8
_080304FC:
	.4byte 0x03000DF4
_08030500:
	ldr r1, _0803054C  @ =gUnknown_03001BC8
	mov r0, #0
_08030504:
	strb r0, [r1]
	mov r0, #31
	mov r1, #19
	bl sub_08030058
	ldr r0, _08030550  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08030560
	ldr r3, _0803054C  @ =gUnknown_03001BC8
	ldrb r0, [r3]
	cmp r0, #6
	bne _08030560
	ldr r0, _08030554  @ =0x030001D0
	ldr r2, [r0]
	ldr r0, _08030558  @ =0x030001D8
	ldr r0, [r0]
	lsl r1, r2, #3
	add r1, r1, r2
	lsl r1, r1, #3
	add r1, r1, r0
	sub r1, r1, #72
	ldrb r2, [r3]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, #30
	strh r0, [r1, #56]
	ldr r2, _0803055C  @ =0x03000C18
	mov r3, #56
	ldrsh r0, [r1, r3]
	add r0, r0, #100
	str r0, [r2]
	b _08030566
_0803054C:
	.4byte gUnknown_03001BC8
_08030550:
	.4byte gLevelType
_08030554:
	.4byte 0x030001D0
_08030558:
	.4byte 0x030001D8
_0803055C:
	.4byte 0x03000C18
_08030560:
	ldr r1, _080305BC  @ =0x03000C18
	mov r0, #100
	str r0, [r1]
_08030566:
	bl sub_0802FF30
	ldr r4, _080305C0  @ =0x030001D0
	ldr r1, [r4]
	ldr r5, _080305C4  @ =0x030001D8
	ldr r2, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	mov r1, #190
	lsl r1, r1, #7
	str r1, [r0, #32]
	mov r1, #192
	lsl r1, r1, #2
	str r1, [r0, #36]
	mov r2, #1
	neg r2, r2
	mov r1, #37
	mov r3, #0
	bl sub_0802FCDC
	ldr r0, [r4]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r5]
	add r1, r1, r0
	ldr r2, [r1, #40]
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r3, [r1, #26]
	ldr r0, _080305C8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #26]
	ldr r0, [r1, #44]
	asr r0, r0, #8
	strb r0, [r1, #24]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _08030830
_080305BC:
	.4byte 0x03000C18
_080305C0:
	.4byte 0x030001D0
_080305C4:
	.4byte 0x030001D8
_080305C8:
	.4byte 0xFFFFFE00
_080305CC:
	cmp r7, #2
	beq _080305D2
	b _08030750
_080305D2:
	ldr r5, _0803072C  @ =gUnknown_03001BC8
	ldr r0, _08030730  @ =gMiniMariosRescued_03001BA0
	ldrb r0, [r0]
	strb r0, [r5]
	mov r0, #32
	mov r1, #19
	bl sub_08030058
	mov r4, r8
	ldr r3, [r4]
	mov r1, r9
	ldr r0, [r1]
	lsl r1, r3, #3
	add r1, r1, r3
	lsl r1, r1, #3
	add r1, r1, r0
	sub r1, r1, #72
	ldrb r2, [r5]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, #140
	strh r0, [r1, #56]
	ldr r0, _08030734  @ =0x030001E0
	str r3, [r0]
	mov r4, #0
	ldrb r2, [r5]
	cmp r4, r2
	bge _08030670
	add r6, r5, #0
	mov r5, #0
	ldr r3, _08030738  @ =0x00001388
	mov r8, r3
_08030614:
	ldr r0, _0803073C  @ =0x030001D0
	ldr r0, [r0]
	add r0, r4, r0
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	mov r2, r9
	ldr r0, [r2]
	add r7, r0, r1
	strh r4, [r7, #62]
	ldrb r3, [r6]
	add r0, r7, #0
	mov r1, #7
	mov r2, #1
	neg r2, r2
	bl sub_0802FCDC
	ldrh r0, [r7, #56]
	add r0, r0, r5
	strh r0, [r7, #56]
	ldr r2, [r7, #40]
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r0, [r7, #26]
	ldr r3, _08030740  @ =0xFFFFFE00
	add r1, r3, #0
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r7, #26]
	ldr r0, [r7, #44]
	asr r0, r0, #8
	strb r0, [r7, #24]
	add r1, r7, #0
	add r1, r1, #66
	mov r0, #250
	lsl r0, r0, #2
	strh r0, [r1]
	cmp r4, #5
	bne _08030666
	mov r0, r8
	strh r0, [r1]
_08030666:
	add r5, r5, #20
	add r4, r4, #1
	ldrb r1, [r6]
	cmp r4, r1
	blt _08030614
_08030670:
	ldr r5, _0803073C  @ =0x030001D0
	ldr r2, _0803072C  @ =gUnknown_03001BC8
	mov r8, r2
	ldrb r0, [r2]
	ldr r2, [r5]
	add r2, r2, r0
	str r2, [r5]
	ldr r3, _08030744  @ =0x03000C18
	mov r4, r8
	ldrb r1, [r4]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, #240
	str r0, [r3]
	ldr r6, _08030748  @ =0x030001D8
	lsl r1, r2, #3
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r0, [r6]
	add r0, r0, r1
	mov r1, #1
	neg r1, r1
	mov r9, r1
	mov r1, #38
	mov r2, r9
	mov r3, #0
	bl sub_0802FCDC
	ldr r1, [r5]
	lsl r2, r1, #3
	add r2, r2, r1
	lsl r2, r2, #3
	ldr r0, [r6]
	add r2, r2, r0
	add r1, r1, #1
	str r1, [r5]
	ldr r1, [r2, #40]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldr r3, _0803074C  @ =0x000001FF
	mov r10, r3
	mov r4, r10
	and r1, r1, r4
	ldrh r3, [r2, #26]
	ldr r4, _08030740  @ =0xFFFFFE00
	add r0, r4, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #26]
	ldr r0, [r2, #44]
	asr r0, r0, #8
	strb r0, [r2, #24]
	ldr r0, [r5]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r6]
	add r0, r0, r1
	mov r1, #39
	mov r2, r9
	mov r3, #0
	bl sub_0802FCDC
	ldr r3, [r5]
	ldr r0, [r6]
	lsl r1, r3, #3
	add r1, r1, r3
	lsl r1, r1, #3
	add r1, r1, r0
	mov r0, r8
	ldrb r2, [r0]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	ldrh r2, [r1, #56]
	add r0, r0, r2
	strh r0, [r1, #56]
	add r3, r3, #1
	str r3, [r5]
	ldr r0, [r1, #40]
	lsl r0, r0, #8
	lsr r0, r0, #16
	mov r3, r10
	and r0, r0, r3
	ldrh r2, [r1, #26]
	and r4, r4, r2
	orr r4, r4, r0
	strh r4, [r1, #26]
	ldr r0, [r1, #44]
	asr r0, r0, #8
	strb r0, [r1, #24]
	b _08030830
	.byte 0x00
	.byte 0x00
_0803072C:
	.4byte gUnknown_03001BC8
_08030730:
	.4byte gMiniMariosRescued_03001BA0
_08030734:
	.4byte 0x030001E0
_08030738:
	.4byte 0x00001388
_0803073C:
	.4byte 0x030001D0
_08030740:
	.4byte 0xFFFFFE00
_08030744:
	.4byte 0x03000C18
_08030748:
	.4byte 0x030001D8
_0803074C:
	.4byte 0x000001FF
_08030750:
	ldr r0, _08030850  @ =gUnknown_080769B0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	mov r0, r8
	ldr r2, [r0]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #3
	mov r3, r9
	ldr r1, [r3]
	add r7, r1, r0
	add r2, r2, #1
	mov r0, r8
	str r2, [r0]
	ldr r6, _08030854  @ =gUnknown_0807CB68
	lsl r1, r4, #2
	add r1, r1, r4
	lsl r1, r1, #3
	add r1, r1, r6
	mov r2, #4
	ldrsh r0, [r1, r2]
	sub r0, r0, #240
	lsl r0, r0, #8
	str r0, [r7, #32]
	mov r3, #6
	ldrsh r0, [r1, r3]
	lsl r0, r0, #8
	str r0, [r7, #36]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_0802FCDC
	ldr r1, [r7, #40]
	lsl r1, r1, #8
	lsr r1, r1, #16
	mov r0, r10
	and r1, r1, r0
	ldrh r2, [r7, #26]
	ldr r0, _08030858  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r7, #26]
	ldr r0, [r7, #44]
	asr r0, r0, #8
	strb r0, [r7, #24]
	mov r1, r8
	ldr r2, [r1]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #3
	mov r3, r9
	ldr r1, [r3]
	add r7, r1, r0
	add r2, r2, #1
	mov r0, r8
	str r2, [r0]
	add r1, r5, #0
	lsl r2, r1, #2
	add r2, r2, r5
	lsl r2, r2, #3
	add r2, r2, r6
	mov r3, #4
	ldrsh r0, [r2, r3]
	sub r0, r0, #240
	lsl r0, r0, #8
	str r0, [r7, #32]
	mov r4, #6
	ldrsh r0, [r2, r4]
	lsl r0, r0, #8
	str r0, [r7, #36]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0
	bl sub_0802FCDC
	ldr r1, [r7, #40]
	lsl r1, r1, #8
	lsr r1, r1, #16
	mov r0, r10
	and r1, r1, r0
	ldrh r2, [r7, #26]
	ldr r0, _08030858  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r7, #26]
	ldr r0, [r7, #44]
	asr r0, r0, #8
	strb r0, [r7, #24]
	ldr r3, _0803085C  @ =0x030001DC
	mov r1, r8
	ldr r2, [r1]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #3
	mov r4, r9
	ldr r1, [r4]
	add r7, r1, r0
	str r7, [r3]
	add r2, r2, #1
	mov r0, r8
	str r2, [r0]
	mov r2, #1
	neg r2, r2
	add r0, r7, #0
	mov r1, #25
	mov r3, #0
	bl sub_0802FCDC
	mov r0, #50
	strh r0, [r7, #56]
_08030830:
	ldr r2, _08030860  @ =gSpriteHorizontalOffset
	ldr r1, _08030864  @ =gUnknown_030012F4
	mov r0, #0
	strh r0, [r1]
	strh r0, [r2]
	mov r0, #0
	bl sub_080300CC
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08030850:
	.4byte gUnknown_080769B0
_08030854:
	.4byte gUnknown_0807CB68
_08030858:
	.4byte 0xFFFFFE00
_0803085C:
	.4byte 0x030001DC
_08030860:
	.4byte gSpriteHorizontalOffset
_08030864:
	.4byte gUnknown_030012F4
	THUMB_FUNC_END sub_08030408

	THUMB_FUNC_START sub_08030868
sub_08030868: @ 0x08030868
	push {r4-r7,lr}
	add r4, r0, #0
	add r6, r2, #0
	mov r7, #1
	ldr r5, [r4, #20]
	ldrh r1, [r5, #22]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #0
	bne _08030884
	ldrb r1, [r5, #12]
	add r0, r4, #0
	bl sub_080280CC
_08030884:
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #6
	and r0, r0, r1
	cmp r0, #0
	beq _080308A6
	ldr r0, _080308D8  @ =0x030001DC
	ldr r0, [r0]
	cmp r0, #0
	beq _080308A6
	mov r2, #58
	ldrsh r1, [r0, r2]
	mov r3, #56
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _080308A6
	mov r7, #0
_080308A6:
	cmp r6, #0
	bne _080308B4
	ldrh r1, [r5, #22]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803090C
_080308B4:
	cmp r7, #0
	beq _0803090C
	ldrh r2, [r4, #58]
	mov r0, #58
	ldrsh r1, [r4, r0]
	mov r3, #56
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _080308DC
	ldr r1, [r4, #68]
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r2, #0
	bl sub_0802FCDC
	b _080308E0
	.byte 0x00
	.byte 0x00
_080308D8:
	.4byte 0x030001DC
_080308DC:
	add r0, r2, #1
	strh r0, [r4, #58]
_080308E0:
	ldr r0, [r4, #40]
	ldr r1, [r4, #48]
	add r0, r0, r1
	str r0, [r4, #40]
	ldr r1, [r5, #32]
	cmp r1, #0
	beq _08030904
	mov r2, #58
	ldrsh r0, [r4, r2]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #36]
	asr r1, r1, r0
	ldr r0, [r4, #44]
	sub r0, r0, r1
	b _0803090A
_08030904:
	ldr r0, [r4, #44]
	ldr r1, [r4, #52]
	add r0, r0, r1
_0803090A:
	str r0, [r4, #44]
_0803090C:
	ldrh r0, [r5, #22]
	mov r1, #240
	and r1, r1, r0
	cmp r1, #0
	beq _0803091A
	cmp r1, #48
	bne _08030950
_0803091A:
	ldr r1, [r4, #40]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4, #26]
	ldr r0, _08030958  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #26]
	ldr r0, [r4, #44]
	asr r3, r0, #8
	strb r3, [r4, #24]
	ldrh r1, [r5, #22]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	bne _08030950
	ldr r0, [r4]
	mov r2, #10
	ldrsh r1, [r4, r2]
	ldr r2, [r0, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	add r0, r3, r0
	strb r0, [r4, #24]
_08030950:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030958:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08030868

	THUMB_FUNC_START sub_0803095C
sub_0803095C: @ 0x0803095C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #36
	add r7, r0, #0
	mov r9, r1
	str r2, [sp]
	str r3, [sp, #4]
	ldr r0, _080309CC  @ =gSpriteHorizontalOffset
	mov r2, #0
	ldrsh r1, [r0, r2]
	str r1, [sp, #20]
	ldr r0, _080309D0  @ =gUnknown_030012F4
	mov r5, #0
	ldrsh r3, [r0, r5]
	str r3, [sp, #24]
	mov r1, #10
	ldrsh r0, [r7, r1]
	mov r10, r0
	ldr r2, [r7, #20]
	str r2, [sp, #28]
	ldr r3, [r7]
	mov r8, r3
	ldr r2, [r3, #12]
	ldr r0, [r2, #8]
	cmp r0, #0
	blt _08030998
	b _08030B76
_08030998:
	mov r5, r9
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r1, _080309D4  @ =gOamData
	add r4, r0, r1
	add r6, r2, #0
	ldr r0, [r6, #12]
	ldr r1, [r0, #8]
	lsr r0, r1, #24
	str r0, [sp, #8]
	lsr r0, r1, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #12]
	ldr r3, [sp, #8]
	add r2, r3, #0
	mul r2, r0, r2
	str r2, [sp, #16]
	mov r0, #64
	and r1, r1, r0
	cmp r1, #0
	beq _080309D8
	lsl r1, r2, #16
	asr r0, r1, #18
	b _080309DE
	.byte 0x00
	.byte 0x00
_080309CC:
	.4byte gSpriteHorizontalOffset
_080309D0:
	.4byte gUnknown_030012F4
_080309D4:
	.4byte gOamData
_080309D8:
	ldr r5, [sp, #16]
	lsl r1, r5, #16
	asr r0, r1, #19
_080309DE:
	lsl r0, r0, #16
	lsr r3, r0, #16
	str r1, [sp, #32]
	ldr r2, _08030A64  @ =REG_DMA3SAD
	add r0, r7, #0
	add r0, r0, #24
	str r0, [r2]
	str r4, [r2, #4]
	ldr r0, _08030A68  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, [r6, #12]
	mov r5, r10
	lsl r0, r5, #3
	add r0, r0, r10
	lsl r5, r0, #2
	add r1, r1, r5
	mov r12, r1
	ldrb r1, [r1]
	lsl r0, r3, #16
	asr r0, r0, #16
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r6, #20]
	add r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	ldr r1, _08030A6C  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r3, [sp, #32]
	asr r0, r3, #16
	cmp r0, #0
	bge _08030A26
	add r0, r0, #3
_08030A26:
	asr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, r12
	ldr r1, [r0, #8]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08030A46
	mov r2, r9
	ldrh r0, [r2]
	bl sub_08041154
_08030A46:
	ldrb r0, [r7, #27]
	lsl r0, r0, #27
	cmp r0, #0
	bge _08030A70
	ldr r1, [r7, #40]
	asr r1, r1, #8
	mov r3, r8
	ldr r0, [r3, #12]
	ldr r0, [r0, #12]
	add r0, r5, r0
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _08030A82
_08030A64:
	.4byte REG_DMA3SAD
_08030A68:
	.4byte 0x84000002
_08030A6C:
	.4byte OBJ_VRAM0
_08030A70:
	ldr r2, [r7, #40]
	asr r2, r2, #8
	mov r1, r8
	ldr r0, [r1, #12]
	ldr r0, [r0, #12]
	add r0, r5, r0
	mov r1, #2
	ldrsb r1, [r0, r1]
	add r1, r1, r2
_08030A82:
	lsl r1, r1, #23
	lsr r1, r1, #23
	ldrh r2, [r4, #2]
	ldr r0, _08030C64  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	ldr r3, [r7, #44]
	mov r2, r8
	ldr r0, [r2, #12]
	ldr r1, [r0, #12]
	mov r5, r10
	lsl r0, r5, #3
	add r0, r0, r10
	lsl r0, r0, #2
	add r0, r0, r1
	asr r3, r3, #8
	ldrb r0, [r0, #3]
	add r3, r3, r0
	strb r3, [r4]
	ldr r0, [r6, #16]
	ldrb r0, [r0, #1]
	mov r1, #32
	and r1, r1, r0
	ldrb r2, [r4, #1]
	mov r0, #33
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #1]
	ldr r1, [r6, #16]
	ldrb r1, [r1, #1]
	lsr r1, r1, #6
	lsl r1, r1, #6
	mov r2, #63
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #1]
	ldr r0, [r6, #16]
	ldrb r0, [r0, #3]
	lsr r0, r0, #6
	lsl r0, r0, #6
	ldrb r1, [r4, #3]
	and r2, r2, r1
	orr r2, r2, r0
	strb r2, [r4, #3]
	ldr r0, [r6, #16]
	ldrb r1, [r0, #5]
	lsr r1, r1, #4
	lsl r1, r1, #4
	ldrb r2, [r4, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #5]
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	mov r5, r8
	ldrb r0, [r5, #8]
	ldr r5, [sp, #8]
	sub r0, r0, r5
	asr r0, r0, #1
	ldr r5, [sp, #20]
	sub r0, r5, r0
	sub r1, r1, r0
	ldr r5, _08030C68  @ =0x000001FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _08030C64  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	mov r1, r8
	ldrb r0, [r1, #9]
	ldr r2, [sp, #12]
	sub r0, r0, r2
	asr r0, r0, #1
	ldr r5, [sp, #24]
	sub r0, r5, r0
	sub r3, r3, r0
	strb r3, [r4]
	ldrh r2, [r4, #4]
	lsl r1, r2, #22
	lsr r1, r1, #22
	ldr r0, [sp]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08030C6C  @ =0x000003FF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, _08030C70  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #4]
	mov r0, #3
	ldr r5, [sp, #28]
	ldrb r1, [r5, #28]
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r2, [r4, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #5]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldr r2, [sp, #32]
	asr r0, r2, #21
	ldr r3, [sp]
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r5, [sp]
	strh r0, [r5]
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	ldr r2, [sp, #16]
	add r0, r0, r2
	strh r0, [r1]
_08030B76:
	ldr r3, _08030C74  @ =REG_DMA3SAD
	add r0, r7, #0
	add r0, r0, #24
	str r0, [r3]
	mov r5, r9
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _08030C78  @ =gOamData
	add r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _08030C7C  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, r8
	ldr r0, [r1, #12]
	mov r5, r10
	lsl r2, r5, #3
	add r2, r2, r10
	lsl r2, r2, #2
	add r2, r2, r0
	ldrb r1, [r2]
	mov r5, r8
	ldrh r0, [r5, #6]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r5, #20]
	add r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	ldr r1, _08030C80  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r3, #4]
	ldrh r0, [r5, #2]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [r2, #8]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08030BD8
	mov r2, r9
	ldrh r0, [r2]
	bl sub_08041154
_08030BD8:
	mov r3, r9
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r4, r0, r4
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	ldr r5, [sp, #20]
	sub r1, r1, r5
	ldr r3, _08030C68  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, _08030C64  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	ldrb r0, [r4]
	ldr r5, [sp, #24]
	sub r0, r0, r5
	strb r0, [r4]
	ldrh r2, [r4, #4]
	lsl r1, r2, #22
	lsr r1, r1, #22
	ldr r0, [sp]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08030C6C  @ =0x000003FF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, _08030C70  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #4]
	mov r0, #3
	ldr r5, [sp, #28]
	ldrb r1, [r5, #28]
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r2, [r4, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #5]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	mov r2, r8
	ldrh r0, [r2, #4]
	ldr r3, [sp]
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r5, [sp]
	strh r0, [r5]
	ldrh r0, [r2, #2]
	ldr r1, [sp, #4]
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r2, [sp, #4]
	strh r0, [r2]
	add sp, sp, #36
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030C64:
	.4byte 0xFFFFFE00
_08030C68:
	.4byte 0x000001FF
_08030C6C:
	.4byte 0x000003FF
_08030C70:
	.4byte 0xFFFFFC00
_08030C74:
	.4byte REG_DMA3SAD
_08030C78:
	.4byte gOamData
_08030C7C:
	.4byte 0x84000002
_08030C80:
	.4byte OBJ_VRAM0
	THUMB_FUNC_END sub_0803095C

	THUMB_FUNC_START sub_08030C84
sub_08030C84: @ 0x08030C84
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	add r7, r0, #0
	mov r9, r1
	mov r8, r2
	ldr r0, _08030CDC  @ =0x03000DDC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	str r0, [sp, #8]
	mov r0, #0
	mov r10, r0
	ldr r0, _08030CE0  @ =0x030001D0
	ldr r0, [r0]
	cmp r10, r0
	bge _08030D82
	mov r1, #0
	str r1, [sp, #12]
_08030CB0:
	ldr r0, _08030CE4  @ =0x030001D8
	ldr r0, [r0]
	ldr r2, [sp, #12]
	add r4, r0, r2
	ldr r6, [r4, #20]
	ldrh r1, [r6, #22]
	mov r2, #240
	and r2, r2, r1
	mov r3, #128
	lsl r3, r3, #5
	add r0, r3, #0
	and r1, r1, r0
	cmp r1, #0
	bne _08030D70
	cmp r2, #16
	beq _08030CE8
	cmp r2, #16
	ble _08030D18
	cmp r2, #32
	beq _08030CFE
	b _08030D18
	.byte 0x00
	.byte 0x00
_08030CDC:
	.4byte 0x03000DDC
_08030CE0:
	.4byte 0x030001D0
_08030CE4:
	.4byte 0x030001D8
_08030CE8:
	ldr r0, [r4, #40]
	asr r0, r0, #8
	ldr r1, [r4, #44]
	asr r1, r1, #8
	mov r2, r8
	str r2, [sp]
	add r2, r7, #0
	mov r3, r9
	bl sub_0800A2B8
	b _08030D70
_08030CFE:
	ldr r0, [r4, #40]
	asr r0, r0, #8
	ldr r1, [r4, #44]
	asr r1, r1, #8
	mov r3, r8
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r2, r7, #0
	mov r3, r9
	bl sub_0800A4B4
	b _08030D70
_08030D18:
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _08030D5C  @ =gOamData
	add r5, r0, r1
	add r0, r4, #0
	add r1, r7, #0
	mov r2, r9
	mov r3, r8
	bl sub_0803095C
	ldrh r0, [r6, #22]
	mov r2, #128
	lsl r2, r2, #2
	add r1, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08030D70
	ldrh r1, [r4, #14]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08030D70
	ldr r0, _08030D60  @ =gUnknown_030009D8
	ldrh r1, [r0]
	mov r2, #15
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #3
	bhi _08030D64
	ldrb r0, [r5, #5]
	add r1, r2, #0
	and r1, r1, r0
	mov r0, #128
	b _08030D6C
_08030D5C:
	.4byte gOamData
_08030D60:
	.4byte gUnknown_030009D8
_08030D64:
	ldrb r0, [r5, #5]
	add r1, r2, #0
	and r1, r1, r0
	mov r0, #96
_08030D6C:
	orr r1, r1, r0
	strb r1, [r5, #5]
_08030D70:
	ldr r3, [sp, #12]
	add r3, r3, #72
	str r3, [sp, #12]
	mov r0, #1
	add r10, r10, r0
	ldr r0, _08030D9C  @ =0x030001D0
	ldr r0, [r0]
	cmp r10, r0
	blt _08030CB0
_08030D82:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08030D8C
	bl sub_08009878
_08030D8C:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08030D9C:
	.4byte 0x030001D0
	THUMB_FUNC_END sub_08030C84

	THUMB_FUNC_START sub_08030DA0
sub_08030DA0: @ 0x08030DA0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	mov r4, #0
	ldr r1, _08030DDC  @ =0x030001D0
	ldr r0, [r1]
	cmp r4, r0
	bge _08030DD2
	ldr r0, _08030DE0  @ =0x030001D8
	mov r8, r0
	mov r5, #0
	add r7, r1, #0
_08030DBA:
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, r5
	add r1, r4, #0
	add r2, r6, #0
	bl sub_08030868
	add r5, r5, #72
	add r4, r4, #1
	ldr r0, [r7]
	cmp r4, r0
	blt _08030DBA
_08030DD2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08030DDC:
	.4byte 0x030001D0
_08030DE0:
	.4byte 0x030001D8
	THUMB_FUNC_END sub_08030DA0

	THUMB_FUNC_START sub_08030DE4
sub_08030DE4: @ 0x08030DE4
	bx lr
	THUMB_FUNC_END sub_08030DE4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08030DE8
sub_08030DE8: @ 0x08030DE8
	push {r4,r5,lr}
	ldr r0, _08030E18  @ =0x030001D8
	ldr r2, [r0]
	mov r3, #0
	ldr r0, _08030E1C  @ =0x030001D0
	ldr r0, [r0]
	cmp r3, r0
	bge _08030E28
	add r4, r0, #0
_08030DFA:
	ldr r1, [r2, #68]
	add r0, r1, #0
	sub r0, r0, #51
	cmp r0, #2
	bhi _08030E14
	cmp r1, #51
	bne _08030E20
	mov r0, #58
	ldrsh r1, [r2, r0]
	mov r5, #56
	ldrsh r0, [r2, r5]
	cmp r1, r0
	bge _08030E20
_08030E14:
	mov r0, #0
	b _08030E2A
_08030E18:
	.4byte 0x030001D8
_08030E1C:
	.4byte 0x030001D0
_08030E20:
	add r3, r3, #1
	add r2, r2, #72
	cmp r3, r4
	blt _08030DFA
_08030E28:
	mov r0, #1
_08030E2A:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08030DE8

	THUMB_FUNC_START sub_08030E30
sub_08030E30: @ 0x08030E30
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	mov r6, #1
	neg r6, r6
	mov r1, #0
	str r1, [sp, #16]
	ldr r1, [r0, #4]
	asr r1, r1, #11
	lsl r2, r1, #6
	ldr r1, [r0, #12]
	asr r1, r1, #11
	lsl r1, r1, #6
	mov r9, r1
	ldr r1, [r0]
	asr r1, r1, #11
	str r1, [sp, #12]
	ldr r0, [r0, #8]
	asr r0, r0, #11
	mov r10, r0
	cmp r0, #63
	bls _08030E66
	mov r5, #63
	mov r10, r5
_08030E66:
	ldr r0, _08030E74  @ =0x00000FBF
	cmp r9, r0
	bls _08030F20
	add r0, r0, #1
	mov r9, r0
	b _08030F20
	.byte 0x00
	.byte 0x00
_08030E74:
	.4byte 0x00000FBF
_08030E78:
	ldr r1, [sp, #12]
	add r3, r2, r1
	add r5, r2, #0
	add r5, r5, r10
	mov r8, r5
	add r2, r2, #64
	str r2, [sp, #20]
	cmp r3, r8
	bhi _08030F1E
_08030E8A:
	ldr r0, _08030EFC  @ =gEWRAMBasePtr
	ldr r4, [r0]
	lsl r1, r3, #1
	ldr r2, _08030F00  @ =0x0000400C
	add r0, r4, r2
	add r0, r0, r1
	ldrh r2, [r0]
	ldr r5, _08030F04  @ =0x0000600C
	add r0, r4, r5
	add r0, r0, r1
	ldrh r5, [r0]
	add r7, r3, #1
	cmp r2, #3
	bne _08030F16
	cmp r5, r6
	beq _08030F16
	lsl r0, r5, #2
	add r0, r0, #8
	add r3, r4, r0
	ldr r0, _08030F08  @ =0x030001E8
	ldr r4, [r0, #28]
	add r2, r4, #0
	add r2, r2, #84
	cmp r4, r2
	bcs _08030F16
	ldr r6, _08030F0C  @ =gCurrentPresentScore
_08030EBE:
	ldr r1, [r4]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08030F10
	ldr r1, [r4, #8]
	ldr r0, [r3]
	lsl r0, r0, #9
	lsr r0, r0, #25
	str r0, [r1]
	ldrb r0, [r3, #3]
	str r0, [r1, #4]
	add r0, r4, #0
	mov r1, #1
	bl sub_080310A8
	mov r0, #1
	str r0, [sp, #16]
	ldr r0, [r6]
	add r0, r0, #100
	str r0, [r6]
	ldr r0, [r4, #8]
	ldr r1, [r0]
	lsl r1, r1, #3
	ldr r2, [r0, #4]
	lsl r2, r2, #3
	mov r0, #100
	bl sub_08031A64
	b _08030F16
	.byte 0x00
	.byte 0x00
_08030EFC:
	.4byte gEWRAMBasePtr
_08030F00:
	.4byte 0x0000400C
_08030F04:
	.4byte 0x0000600C
_08030F08:
	.4byte 0x030001E8
_08030F0C:
	.4byte gCurrentPresentScore
_08030F10:
	add r4, r4, #12
	cmp r4, r2
	bcc _08030EBE
_08030F16:
	add r6, r5, #0
	add r3, r7, #0
	cmp r3, r8
	bls _08030E8A
_08030F1E:
	ldr r2, [sp, #20]
_08030F20:
	cmp r2, r9
	bls _08030E78
	ldr r1, [sp, #16]
	cmp r1, #0
	beq _08030F40
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #130
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08030F40:
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08030E30

	THUMB_FUNC_START sub_08030F50
sub_08030F50: @ 0x08030F50
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _08030F84  @ =gUnknown_03001A38
	ldrb r0, [r0]
	cmp r0, #1
	beq _08030FBE
	ldr r0, _08030F88  @ =0x030001E8
	ldr r4, [r0, #28]
	add r5, r4, #0
	add r5, r5, #84
	cmp r4, r5
	bcs _08030FBE
	mov r6, #1
	neg r6, r6
	add r7, r0, #0
	add r0, r7, #4
	mov r8, r0
_08030F74:
	ldr r3, [r4]
	cmp r3, r6
	beq _08030FB8
	cmp r3, #2
	bne _08030F8C
	str r6, [r4]
	b _08030FB8
	.byte 0x00
	.byte 0x00
_08030F84:
	.4byte gUnknown_03001A38
_08030F88:
	.4byte 0x030001E8
_08030F8C:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08030F96
	sub r0, r0, #1
	b _08030FB6
_08030F96:
	ldr r2, [r4, #8]
	ldr r1, [r2, #8]
	ldr r0, [r7, #24]
	add r1, r1, r0
	str r1, [r2, #8]
	lsl r0, r3, #3
	add r0, r0, r8
	ldr r0, [r0]
	cmp r1, r0
	bne _08030FB4
	add r0, r4, #0
	mov r1, #2
	bl sub_080310A8
	b _08030FB8
_08030FB4:
	ldrb r0, [r1, #12]
_08030FB6:
	strb r0, [r4, #4]
_08030FB8:
	add r4, r4, #12
	cmp r4, r5
	bcc _08030F74
_08030FBE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08030F50

	THUMB_FUNC_START sub_08030FC8
sub_08030FC8: @ 0x08030FC8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r0, #84
	bl arena_allocate
	ldr r1, _08031014  @ =0x030001E8
	str r0, [r1, #28]
	mov r8, r1
	mov r1, #0
	mov r6, #0
	mov r5, #6
_08030FE2:
	mov r0, r8
	ldr r4, [r0, #28]
	add r4, r4, r6
	mov r7, #1
	neg r7, r7
	str r7, [r4]
	str r1, [sp]
	bl sub_0802BA00
	str r0, [r4, #8]
	ldr r1, [sp]
	str r1, [r0, #12]
	str r1, [r0, #8]
	add r6, r6, #12
	sub r5, r5, #1
	cmp r5, #0
	bge _08030FE2
	ldr r0, _08031014  @ =0x030001E8
	str r7, [r0, #32]
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08031014:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_08030FC8

	THUMB_FUNC_START sub_08031018
sub_08031018: @ 0x08031018
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r4, _0803106C  @ =0x030001E8
	ldr r0, [r4, #28]
	cmp r0, #0
	bne _0803105E
	mov r0, #84
	bl arena_allocate
	str r0, [r4, #28]
	mov r8, r4
	mov r1, #0
	mov r6, #0
	mov r5, #6
_08031038:
	mov r0, r8
	ldr r4, [r0, #28]
	add r4, r4, r6
	mov r7, #1
	neg r7, r7
	str r7, [r4]
	str r1, [sp]
	bl sub_0802BA00
	str r0, [r4, #8]
	ldr r1, [sp]
	str r1, [r0, #12]
	str r1, [r0, #8]
	add r6, r6, #12
	sub r5, r5, #1
	cmp r5, #0
	bge _08031038
	ldr r0, _0803106C  @ =0x030001E8
	str r7, [r0, #32]
_0803105E:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803106C:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_08031018

	THUMB_FUNC_START sub_08031070
sub_08031070: @ 0x08031070
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r0, _08031098  @ =0x030001E8
	str r4, [r0, #24]
	add r3, r0, #0
	mov r1, #2
_0803107E:
	str r2, [r3]
	ldrb r0, [r2, #11]
	mul r0, r4, r0
	add r2, r2, r0
	str r2, [r3, #4]
	add r3, r3, #8
	sub r1, r1, #1
	cmp r1, #0
	bge _0803107E
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031098:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_08031070

	THUMB_FUNC_START sub_0803109C
sub_0803109C: @ 0x0803109C
	ldr r1, _080310A4  @ =0x030001E8
	mov r0, #0
	str r0, [r1, #28]
	bx lr
_080310A4:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_0803109C

	THUMB_FUNC_START sub_080310A8
sub_080310A8: @ 0x080310A8
	push {lr}
	add r3, r0, #0
	ldr r0, [r3]
	cmp r0, r1
	beq _080310CA
	str r1, [r3]
	ldr r0, [r3, #8]
	ldr r2, _080310D0  @ =0x030001E8
	lsl r1, r1, #3
	add r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #8]
	ldrb r1, [r1, #12]
	strb r1, [r3, #4]
	ldr r1, [r0, #8]
	bl sub_08001BA4
_080310CA:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080310D0:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_080310A8

	THUMB_FUNC_START sub_080310D4
sub_080310D4: @ 0x080310D4
	push {r4-r7,lr}
	add r5, r0, #0
	add r7, r1, #0
	ldrb r0, [r5, #11]
	cmp r0, #2
	bhi _08031168
	lsl r0, r0, #5
	ldr r1, _080310F8  @ =0x03000210
	add r6, r0, r1
	ldrb r0, [r5, #4]
	cmp r0, #67
	beq _08031134
	cmp r0, #67
	bgt _080310FC
	cmp r0, #66
	beq _08031102
	b _08031168
	.byte 0x00
	.byte 0x00
_080310F8:
	.4byte 0x03000210
_080310FC:
	cmp r0, #76
	beq _0803114C
	b _08031168
_08031102:
	ldrb r4, [r5, #12]
	cmp r4, #3
	bgt _08031168
	cmp r4, #0
	bne _08031110
	ldrb r0, [r5, #13]
	str r0, [r6, #28]
_08031110:
	add r0, r5, #0
	bl sub_080064A0
	add r2, r0, #0
	lsl r4, r4, #2
	add r1, r6, r4
	ldrh r0, [r2]
	strh r0, [r1]
	add r5, r5, r7
	add r0, r5, #0
	bl sub_080064A0
	add r2, r0, #0
	add r0, r6, #2
	add r0, r0, r4
	ldrh r1, [r2]
	strh r1, [r0]
	b _08031168
_08031134:
	ldrb r0, [r5, #12]
	cmp r0, #2
	bhi _08031168
	add r0, r5, #0
	bl sub_080064A0
	add r2, r0, #0
	ldrb r0, [r5, #12]
	lsl r0, r0, #1
	add r1, r6, #0
	add r1, r1, #16
	b _08031162
_0803114C:
	ldrb r0, [r5, #12]
	cmp r0, #2
	bhi _08031168
	add r0, r5, #0
	bl sub_080064A0
	add r2, r0, #0
	ldrb r0, [r5, #12]
	lsl r0, r0, #1
	add r1, r6, #0
	add r1, r1, #22
_08031162:
	add r1, r1, r0
	ldrh r0, [r2]
	strh r0, [r1]
_08031168:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080310D4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08031170
sub_08031170: @ 0x08031170
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r6, r0, #0
	add r7, r1, #0
	mov r8, r2
	ldr r4, _080311F0  @ =0x03000210
	ldr r5, [r4, #108]
	cmp r5, #0
	bne _080311AC
	mov r0, #160
	bl arena_allocate
	add r1, r0, #0
	str r1, [r4, #108]
	str r5, [sp]
	mov r0, sp
	ldr r2, _080311F4  @ =0x05000028
	bl CpuSet
	str r5, [r4, #96]
	str r5, [r4, #100]
	add r1, r4, #0
	add r1, r1, #104
	ldr r0, _080311F8  @ =0x0000FFFF
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #106
	strh r5, [r0]
_080311AC:
	ldr r1, [r4, #96]
	cmp r1, #39
	bgt _080311E4
	lsl r0, r1, #2
	ldr r2, [r4, #108]
	add r2, r2, r0
	add r0, r1, #1
	str r0, [r4, #96]
	ldrb r0, [r6, #12]
	mov r4, #15
	add r1, r4, #0
	and r1, r1, r0
	ldrb r3, [r2, #3]
	mov r0, #16
	neg r0, r0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #3]
	ldrb r1, [r6, #11]
	lsl r1, r1, #4
	and r0, r0, r4
	orr r0, r0, r1
	strb r0, [r2, #3]
	mov r0, #0
	strb r7, [r2]
	mov r1, r8
	strb r1, [r2, #1]
	strb r0, [r2, #2]
_080311E4:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080311F0:
	.4byte 0x03000210
_080311F4:
	.4byte 0x05000028
_080311F8:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08031170

	THUMB_FUNC_START sub_080311FC
sub_080311FC: @ 0x080311FC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #28
	mov r9, r0
	add r4, r1, #0
	ldr r0, _080312EC  @ =gEWRAMBasePtr
	ldr r0, [r0]
	ldr r1, _080312F0  @ =0x0000400C
	add r1, r0, r1
	str r1, [sp, #24]
	ldr r2, _080312F4  @ =0x0000800C
	add r2, r2, r0
	mov r10, r2
	mov r0, r9
	ldrb r7, [r0]
	ldrb r6, [r0, #1]
	lsl r0, r6, #6
	add r0, r0, r7
	str r0, [sp]
	ldr r2, _080312F8  @ =gUnknown_0807DC70
	mov r1, r9
	ldr r5, [r1]
	lsl r3, r5, #4
	lsr r1, r3, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r2
	mov r1, #0
	ldrsh r0, [r0, r1]
	str r0, [sp, #4]
	lsr r1, r3, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r1, r2, #2
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	str r0, [sp, #8]
	lsr r1, r3, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r2, r2, #4
	add r0, r0, r2
	mov r1, #0
	ldrsh r2, [r0, r1]
	str r2, [sp, #12]
	cmp r4, #0
	bne _08031304
	ldr r0, _080312FC  @ =gUnknown_03000E60
	ldrh r0, [r0]
	mov r8, r0
	mov r2, #0
	str r2, [sp, #16]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080064B0
	lsl r3, r0, #1
	add r3, r3, r10
	ldr r2, _08031300  @ =0x03000210
	mov r0, r9
	ldr r1, [r0]
	lsl r0, r1, #4
	lsr r0, r0, #28
	lsl r0, r0, #2
	lsr r1, r1, #28
	lsl r1, r1, #5
	add r0, r0, r1
	add r2, r2, #2
	add r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r1, r1, r2
	str r1, [sp]
	ldr r0, [sp, #8]
	add r7, r7, r0
	ldr r1, [sp, #12]
	add r6, r6, r1
	mov r5, #0
	mov r2, r9
	ldrb r2, [r2, #2]
	cmp r5, r2
	blt _080312B4
	b _080313F8
_080312B4:
	ldr r1, [sp]
	lsl r0, r1, #1
	ldr r2, [sp, #24]
	add r4, r0, r2
_080312BC:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080064B0
	mov r1, sp
	ldrh r1, [r1, #16]
	strh r1, [r4]
	lsl r0, r0, #1
	add r0, r0, r10
	mov r2, r8
	strh r2, [r0]
	add r5, r5, #1
	ldr r0, [sp, #8]
	add r7, r7, r0
	ldr r1, [sp, #12]
	add r6, r6, r1
	ldr r2, [sp, #4]
	lsl r0, r2, #1
	add r4, r4, r0
	mov r0, r9
	ldrb r0, [r0, #2]
	cmp r5, r0
	blt _080312BC
	b _080313F8
_080312EC:
	.4byte gEWRAMBasePtr
_080312F0:
	.4byte 0x0000400C
_080312F4:
	.4byte 0x0000800C
_080312F8:
	.4byte gUnknown_0807DC70
_080312FC:
	.4byte gUnknown_03000E60
_08031300:
	.4byte 0x03000210
_08031304:
	ldr r1, _08031358  @ =gUnknown_0807DC88
	lsr r0, r3, #28
	add r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
	cmp r4, #2
	bne _08031360
	ldr r4, _0803135C  @ =0x03000210
	lsl r1, r0, #1
	lsr r0, r5, #28
	lsl r0, r0, #5
	add r1, r1, r0
	add r0, r4, #0
	add r0, r0, #16
	add r1, r1, r0
	ldrh r1, [r1]
	mov r8, r1
	lsr r0, r5, #28
	lsl r0, r0, #5
	add r0, r0, r4
	ldrh r0, [r0, #20]
	str r0, [sp, #20]
	mov r1, #15
	str r1, [sp, #16]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080064B0
	lsl r2, r0, #1
	add r2, r2, r10
	mov r0, r9
	ldr r1, [r0]
	lsl r0, r1, #4
	lsr r0, r0, #28
	lsl r0, r0, #2
	lsr r1, r1, #28
	lsl r1, r1, #5
	add r0, r0, r1
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r2]
	b _08031384
_08031358:
	.4byte gUnknown_0807DC88
_0803135C:
	.4byte 0x03000210
_08031360:
	ldr r2, _080313C4  @ =0x03000210
	mov r0, r8
	lsl r1, r0, #1
	lsr r0, r5, #28
	lsl r0, r0, #5
	add r1, r1, r0
	add r0, r2, #0
	add r0, r0, #22
	add r1, r1, r0
	ldrh r1, [r1]
	mov r8, r1
	lsr r0, r5, #28
	lsl r0, r0, #5
	add r0, r0, r2
	ldrh r0, [r0, #26]
	str r0, [sp, #20]
	mov r1, #0
	str r1, [sp, #16]
_08031384:
	ldr r2, [sp]
	ldr r0, [sp, #4]
	add r2, r2, r0
	str r2, [sp]
	ldr r1, [sp, #8]
	add r7, r7, r1
	ldr r2, [sp, #12]
	add r6, r6, r2
	mov r5, #0
	mov r0, r9
	ldrb r0, [r0, #2]
	cmp r5, r0
	bge _080313F8
	ldr r1, [sp]
	lsl r0, r1, #1
	ldr r2, [sp, #24]
	add r4, r0, r2
_080313A6:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080064B0
	ldrh r1, [r4]
	cmp r1, #0
	bne _080313C8
	mov r1, sp
	ldrh r1, [r1, #16]
	strh r1, [r4]
	lsl r0, r0, #1
	add r0, r0, r10
	mov r2, r8
	strh r2, [r0]
	b _080313E0
_080313C4:
	.4byte 0x03000210
_080313C8:
	ldr r2, [sp, #16]
	cmp r1, r2
	bne _080313E0
	lsl r0, r0, #1
	mov r1, r10
	add r2, r0, r1
	ldrh r0, [r2]
	cmp r0, r8
	beq _080313E0
	mov r0, sp
	ldrh r0, [r0, #20]
	strh r0, [r2]
_080313E0:
	add r5, r5, #1
	ldr r1, [sp, #8]
	add r7, r7, r1
	ldr r2, [sp, #12]
	add r6, r6, r2
	ldr r1, [sp, #4]
	lsl r0, r1, #1
	add r4, r4, r0
	mov r2, r9
	ldrb r2, [r2, #2]
	cmp r5, r2
	blt _080313A6
_080313F8:
	add sp, sp, #28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080311FC

	THUMB_FUNC_START sub_08031408
sub_08031408: @ 0x08031408
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	ldr r0, _080314C4  @ =gEWRAMBasePtr
	ldr r0, [r0]
	ldr r1, _080314C8  @ =0x0000400C
	add r1, r1, r0
	mov r10, r1
	ldr r3, _080314CC  @ =gUnknown_0807DC70
	mov r4, r8
	ldr r2, [r4]
	lsl r2, r2, #4
	lsr r1, r2, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r1, r3, #2
	add r0, r0, r1
	mov r4, #0
	ldrsh r1, [r0, r4]
	mov r9, r1
	lsr r1, r2, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r1, r3, #4
	add r0, r0, r1
	mov r4, #0
	ldrsh r1, [r0, r4]
	mov r12, r1
	mov r0, r8
	ldrb r5, [r0]
	ldrb r4, [r0, #1]
	lsl r0, r4, #6
	add r1, r0, r5
	ldr r0, _080314D0  @ =gCurrentLevelWidth
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r7, r0, #19
	ldr r0, _080314D4  @ =gCurrentLevelHeight
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r6, r0, #19
	lsr r2, r2, #28
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #1
	add r0, r0, r3
	mov r3, #0
	ldrsh r2, [r0, r3]
	add r1, r1, r2
	add r5, r5, r9
	add r4, r4, r12
	mov r3, #0
	cmp r5, #0
	blt _080314B2
	cmp r5, r7
	bge _080314B2
	cmp r4, #0
	blt _080314B2
	cmp r4, r6
	bge _080314B2
	lsl r0, r1, #1
	add r0, r0, r10
	lsl r2, r2, #1
_08031490:
	ldrh r1, [r0]
	cmp r1, #0
	beq _0803149A
	cmp r1, #15
	bne _080314B2
_0803149A:
	add r3, r3, #1
	add r5, r5, r9
	add r4, r4, r12
	add r0, r0, r2
	cmp r5, #0
	blt _080314B2
	cmp r5, r7
	bge _080314B2
	cmp r4, #0
	blt _080314B2
	cmp r4, r6
	blt _08031490
_080314B2:
	mov r4, r8
	strb r3, [r4, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080314C4:
	.4byte gEWRAMBasePtr
_080314C8:
	.4byte 0x0000400C
_080314CC:
	.4byte gUnknown_0807DC70
_080314D0:
	.4byte gCurrentLevelWidth
_080314D4:
	.4byte gCurrentLevelHeight
	THUMB_FUNC_END sub_08031408

	THUMB_FUNC_START sub_080314D8
sub_080314D8: @ 0x080314D8
	push {r4-r7,lr}
	sub sp, sp, #12
	add r5, r0, #0
	mov r7, #0
	mov r2, #0
	ldr r1, _080315A0  @ =0x03000210
	ldr r0, [r1, #108]
	cmp r0, #0
	beq _08031598
	cmp r5, #0
	bge _080314F8
	add r0, r1, #0
	add r0, r0, #104
	mov r3, #0
	ldrsh r5, [r0, r3]
	mov r7, #1
_080314F8:
	mov r4, #0
	ldr r0, [r1, #96]
	cmp r2, r0
	bge _08031522
	add r6, r1, #0
_08031502:
	lsl r1, r4, #2
	ldr r0, [r6, #108]
	add r1, r0, r1
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r5
	bne _0803151A
	add r0, r1, #0
	mov r1, #2
	bl sub_080311FC
	mov r2, #1
_0803151A:
	add r4, r4, #1
	ldr r0, [r6, #96]
	cmp r4, r0
	blt _08031502
_08031522:
	cmp r2, #0
	beq _0803153C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #147
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0803153C:
	cmp r7, #0
	beq _08031598
	ldr r2, _080315A0  @ =0x03000210
	add r0, r2, #0
	add r0, r0, #106
	mov r1, #0
	ldrsh r3, [r0, r1]
	lsl r0, r3, #5
	add r1, r2, #0
	add r1, r1, #28
	add r0, r0, r1
	ldr r0, [r0]
	asr r0, r0, #1
	ldr r1, [r2, #100]
	cmp r1, r0
	bgt _08031598
	add r6, r3, #0
	ldr r0, [r2, #108]
	cmp r0, #0
	beq _08031598
	cmp r6, #0
	bge _08031570
	add r0, r2, #0
	add r0, r0, #104
	mov r3, #0
	ldrsh r6, [r0, r3]
_08031570:
	mov r4, #0
	ldr r0, [r2, #96]
	cmp r4, r0
	bge _08031598
	add r5, r2, #0
_0803157A:
	lsl r1, r4, #2
	ldr r0, [r5, #108]
	add r1, r0, r1
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r6
	bne _08031590
	add r0, r1, #0
	mov r1, #1
	bl sub_080311FC
_08031590:
	add r4, r4, #1
	ldr r0, [r5, #96]
	cmp r4, r0
	blt _0803157A
_08031598:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_080315A0:
	.4byte 0x03000210
	THUMB_FUNC_END sub_080314D8

	THUMB_FUNC_START sub_080315A4
sub_080315A4: @ 0x080315A4
	push {r4-r7,lr}
	ldr r0, _08031608  @ =0x03000210
	ldr r1, [r0, #108]
	add r7, r0, #0
	cmp r1, #0
	beq _08031684
	ldr r2, [r7, #100]
	cmp r2, #0
	ble _0803160C
	sub r2, r2, #1
	str r2, [r7, #100]
	add r0, r0, #106
	mov r1, #0
	ldrsh r3, [r0, r1]
	lsl r0, r3, #5
	add r1, r7, #0
	add r1, r1, #28
	add r0, r0, r1
	ldr r0, [r0]
	asr r0, r0, #1
	cmp r2, r0
	bne _08031684
	add r5, r3, #0
	cmp r5, #0
	bge _080315DE
	add r0, r7, #0
	add r0, r0, #104
	mov r1, #0
	ldrsh r5, [r0, r1]
_080315DE:
	mov r4, #0
	ldr r0, [r7, #96]
	cmp r4, r0
	bge _0803167E
	add r6, r7, #0
_080315E8:
	lsl r1, r4, #2
	ldr r0, [r6, #108]
	add r1, r0, r1
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r5
	bne _080315FE
	add r0, r1, #0
	mov r1, #1
	bl sub_080311FC
_080315FE:
	add r4, r4, #1
	ldr r0, [r6, #96]
	cmp r4, r0
	blt _080315E8
	b _0803167E
_08031608:
	.4byte 0x03000210
_0803160C:
	add r0, r7, #0
	add r0, r0, #104
	mov r1, #0
	ldrsh r5, [r0, r1]
	mov r4, #0
	ldr r0, [r7, #96]
	cmp r4, r0
	bge _08031640
	add r6, r7, #0
_0803161E:
	lsl r1, r4, #2
	ldr r0, [r6, #108]
	add r1, r0, r1
	cmp r5, #0
	blt _08031630
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r5
	bne _08031638
_08031630:
	add r0, r1, #0
	mov r1, #0
	bl sub_080311FC
_08031638:
	add r4, r4, #1
	ldr r0, [r6, #96]
	cmp r4, r0
	blt _0803161E
_08031640:
	add r1, r7, #0
	add r2, r1, #0
	add r2, r2, #106
	ldrh r0, [r2]
	add r3, r1, #0
	add r3, r3, #104
	strh r0, [r3]
	add r0, r0, #1
	strh r0, [r2]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #2
	ble _0803165E
	mov r0, #0
	strh r0, [r2]
_0803165E:
	mov r1, #0
	ldrsh r0, [r3, r1]
	lsl r0, r0, #5
	add r1, r7, #0
	add r1, r1, #28
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r7, #100]
	cmp r0, #0
	bne _08031676
	mov r0, #60
	str r0, [r7, #100]
_08031676:
	mov r1, #0
	ldrsh r0, [r3, r1]
	bl sub_080314D8
_0803167E:
	ldr r1, _0803168C  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r1]
_08031684:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803168C:
	.4byte gUnknown_030009EC
	THUMB_FUNC_END sub_080315A4

	THUMB_FUNC_START sub_08031690
sub_08031690: @ 0x08031690
	push {r4,r5,lr}
	sub sp, sp, #4
	mov r0, #160
	bl arena_allocate
	add r1, r0, #0
	ldr r4, _080316C4  @ =0x03000210
	str r1, [r4, #108]
	mov r5, #0
	str r5, [sp]
	ldr r2, _080316C8  @ =0x05000028
	mov r0, sp
	bl CpuSet
	str r5, [r4, #96]
	str r5, [r4, #100]
	add r1, r4, #0
	add r1, r1, #104
	ldr r0, _080316CC  @ =0x0000FFFF
	strh r0, [r1]
	add r4, r4, #106
	strh r5, [r4]
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080316C4:
	.4byte 0x03000210
_080316C8:
	.4byte 0x05000028
_080316CC:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08031690

	THUMB_FUNC_START sub_080316D0
sub_080316D0: @ 0x080316D0
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r2, _080316E0  @ =0x03000210
	ldr r0, [r2, #108]
	cmp r0, #0
	beq _08031708
	mov r4, #0
	b _08031702
_080316E0:
	.4byte 0x03000210
_080316E4:
	lsl r1, r4, #2
	ldr r0, [r2, #108]
	add r1, r0, r1
	cmp r5, #0
	blt _080316F6
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r5
	bne _080316FE
_080316F6:
	add r0, r1, #0
	mov r1, #0
	bl sub_080311FC
_080316FE:
	add r4, r4, #1
	ldr r2, _08031710  @ =0x03000210
_08031702:
	ldr r0, [r2, #96]
	cmp r4, r0
	blt _080316E4
_08031708:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031710:
	.4byte 0x03000210
	THUMB_FUNC_END sub_080316D0

	THUMB_FUNC_START sub_08031714
sub_08031714: @ 0x08031714
	push {r4,r5,lr}
	mov r4, #0
	ldr r1, _0803173C  @ =0x03000210
	ldr r0, [r1, #96]
	cmp r4, r0
	bge _08031734
	add r5, r1, #0
_08031722:
	lsl r1, r4, #2
	ldr r0, [r5, #108]
	add r0, r0, r1
	bl sub_08031408
	add r4, r4, #1
	ldr r0, [r5, #96]
	cmp r4, r0
	blt _08031722
_08031734:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803173C:
	.4byte 0x03000210
	THUMB_FUNC_END sub_08031714

	THUMB_FUNC_START sub_08031740
sub_08031740: @ 0x08031740
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, [r0, #4]
	asr r1, r1, #11
	lsl r3, r1, #6
	ldr r1, [r0, #12]
	asr r1, r1, #11
	lsl r1, r1, #6
	mov r12, r1
	ldr r1, [r0]
	asr r1, r1, #11
	mov r10, r1
	ldr r0, [r0, #8]
	asr r0, r0, #11
	mov r8, r0
	cmp r0, #63
	bls _0803176C
	mov r0, #63
	mov r8, r0
_0803176C:
	ldr r0, _0803177C  @ =0x00000FBF
	cmp r12, r0
	bls _080317D6
	mov r5, #252
	lsl r5, r5, #4
	mov r12, r5
	b _080317D6
	.byte 0x00
	.byte 0x00
_0803177C:
	.4byte 0x00000FBF
_08031780:
	mov r0, r10
	add r2, r3, r0
	mov r5, r8
	add r4, r3, r5
	cmp r2, r4
	bhi _080317D4
	ldr r0, _080317B8  @ =gEWRAMBasePtr
	ldr r1, [r0]
	ldr r0, _080317BC  @ =0x03001B54
	mov r9, r0
	lsl r0, r2, #1
	ldr r5, _080317C0  @ =0x0000400C
	add r0, r0, r5
	add r1, r0, r1
	ldr r5, _080317C4  @ =gNextLevelInLevelTable
	mov r6, #2
	mov r7, #1
_080317A2:
	ldrh r0, [r1]
	cmp r0, #15
	bne _080317CC
	ldr r0, [r5, #32]
	and r0, r0, r6
	cmp r0, #0
	beq _080317C8
	mov r0, r9
	strb r7, [r0]
	b _080317DA
	.byte 0x00
	.byte 0x00
_080317B8:
	.4byte gEWRAMBasePtr
_080317BC:
	.4byte 0x03001B54
_080317C0:
	.4byte 0x0000400C
_080317C4:
	.4byte gNextLevelInLevelTable
_080317C8:
	mov r0, #1
	b _080317DC
_080317CC:
	add r1, r1, #2
	add r2, r2, #1
	cmp r2, r4
	bls _080317A2
_080317D4:
	add r3, r3, #64
_080317D6:
	cmp r3, r12
	bls _08031780
_080317DA:
	mov r0, #0
_080317DC:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08031740

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080317EC
sub_080317EC: @ 0x080317EC
	ldr r0, _080317F4  @ =0x03000210
	add r0, r0, #104
	ldrb r0, [r0]
	bx lr
_080317F4:
	.4byte 0x03000210
	THUMB_FUNC_END sub_080317EC

	THUMB_FUNC_START sub_080317F8
sub_080317F8: @ 0x080317F8
	ldr r1, _08031800  @ =0x03000210
	mov r0, #0
	str r0, [r1, #108]
	bx lr
_08031800:
	.4byte 0x03000210
	THUMB_FUNC_END sub_080317F8

	THUMB_FUNC_START sub_08031804
sub_08031804: @ 0x08031804
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	mov r9, r0
	str r2, [sp]
	ldr r0, _0803185C  @ =gUnknown_0807DC8C
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
	.4byte gUnknown_0807DC8C
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
	THUMB_FUNC_END sub_08031804

	THUMB_FUNC_START sub_08031944
sub_08031944: @ 0x08031944
	push {lr}
	add r2, r0, #0
	ldr r0, _08031954  @ =0x03000280
	ldr r0, [r0]
	cmp r0, #0
	bne _08031958
	mov r0, #0
	b _08031972
_08031954:
	.4byte 0x03000280
_08031958:
	cmp r2, #0
	beq _08031970
	ldr r0, _0803196C  @ =gUnknown_0807DC8C
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bne _08031970
	mov r0, #2
	b _08031972
_0803196C:
	.4byte gUnknown_0807DC8C
_08031970:
	mov r0, #1
_08031972:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08031944

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08031978
sub_08031978: @ 0x08031978
	push {r4,r5,lr}
	add r5, r0, #0
	cmp r5, #0
	bne _0803198C
	ldr r0, _08031988  @ =0x03000280
	str r5, [r0]
	b _080319AC
	.byte 0x00
	.byte 0x00
_08031988:
	.4byte 0x03000280
_0803198C:
	ldr r1, _080319B4  @ =0x03000280
	mov r0, #1
	str r0, [r1]
	ldr r4, _080319B8  @ =gUnknown_0807DC8C
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
	.4byte 0x03000280
_080319B8:
	.4byte gUnknown_0807DC8C
	THUMB_FUNC_END sub_08031978

	THUMB_FUNC_START sub_080319BC
sub_080319BC: @ 0x080319BC
	push {r4-r7,lr}
	add r3, r0, #0
	add r4, r1, #0
	ldr r0, _08031A30  @ =0x03000280
	ldr r0, [r0]
	cmp r0, #0
	beq _08031A28
	ldr r5, _08031A34  @ =gUnknown_0807DC8C
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r2, r0
	bne _08031A28
	add r0, r3, #0
	mov r1, #0
	mov r2, #1
	bl sub_08031804
	ldr r0, [r4]
	ldrb r1, [r4, #11]
	mov r2, #2
	bl sub_08031804
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
	.4byte 0x03000280
_08031A34:
	.4byte gUnknown_0807DC8C
	THUMB_FUNC_END sub_080319BC

	THUMB_FUNC_START sub_08031A38
sub_08031A38: @ 0x08031A38
	push {lr}
	cmp r0, #0
	bne _08031A58
	ldr r0, _08031A4C  @ =0x03000280
	ldr r0, [r0]
	cmp r0, #0
	bne _08031A54
	ldr r0, _08031A50  @ =gUnknown_080769B8
	b _08031A5A
	.byte 0x00
	.byte 0x00
_08031A4C:
	.4byte 0x03000280
_08031A50:
	.4byte gUnknown_080769B8
_08031A54:
	ldr r0, _08031A60  @ =gUnknown_0807DC8C
	ldr r0, [r0]
_08031A58:
	add r0, r0, #12
_08031A5A:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08031A60:
	.4byte gUnknown_0807DC8C
	THUMB_FUNC_END sub_08031A38

	THUMB_FUNC_START sub_08031A64
sub_08031A64: @ 0x08031A64
	push {r4-r7,lr}
	add r3, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	cmp r3, #0
	ble _08031ACC
	mov r2, #0
	ldr r5, _08031AC0  @ =0x03000284
	mov r1, #0
_08031A76:
	ldr r0, [r5]
	add r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031AC4
	add r5, r4, #2
	add r0, r5, #0
	add r1, r3, #0
	bl sub_0802FB18
	mov r1, #5
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _08031AA2
	add r2, r5, #0
_08031A94:
	sub r1, r1, #1
	cmp r1, #0
	ble _08031AA2
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031A94
_08031AA2:
	strb r1, [r4, #1]
	mov r0, #40
	strb r0, [r4]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #1
	mov r0, #16
	sub r0, r0, r1
	asr r0, r0, #1
	add r0, r6, r0
	strh r0, [r4, #8]
	strh r7, [r4, #10]
	b _08031ACC
_08031AC0:
	.4byte 0x03000284
_08031AC4:
	add r1, r1, #12
	add r2, r2, #1
	cmp r2, #5
	ble _08031A76
_08031ACC:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08031A64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08031AD4
sub_08031AD4: @ 0x08031AD4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r9, r0
	mov r2, #0
_08031AE4:
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	ldr r3, _08031BBC  @ =0x03000284
	ldr r1, [r3]
	add r6, r1, r0
	ldrb r0, [r6]
	add r2, r2, #1
	str r2, [sp]
	cmp r0, #0
	beq _08031BA4
	mov r0, #8
	ldrsh r1, [r6, r0]
	ldr r0, _08031BC0  @ =gSpriteHorizontalOffset
	mov r2, #0
	ldrsh r0, [r0, r2]
	sub r1, r1, r0
	mov r10, r1
	mov r3, #10
	ldrsh r1, [r6, r3]
	ldr r0, _08031BC4  @ =gUnknown_030012F4
	mov r2, #0
	ldrsh r0, [r0, r2]
	sub r1, r1, r0
	mov r12, r1
	ldrb r1, [r6, #1]
	add r0, r1, #2
	add r7, r6, r0
	mov r0, #64
	neg r0, r0
	cmp r12, r0
	blt _08031BA4
	mov r3, r12
	cmp r3, #160
	bgt _08031BA4
	mov r5, #0
	cmp r5, r1
	bgt _08031BA4
	ldr r0, _08031BC8  @ =REG_DMA3SAD
	mov r8, r0
_08031B34:
	ldrb r4, [r7]
	mov r1, r9
	ldrh r3, [r1]
	lsl r3, r3, #3
	ldr r2, _08031BCC  @ =gOamData
	add r3, r3, r2
	ldr r0, _08031BD0  @ =gUnknown_082EC748
	mov r1, r8
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08031BD4  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08031BD8  @ =gUnknown_0807DC90
	add r0, r4, r2
	ldrb r0, [r0]
	add r1, r5, #0
	mul r1, r0, r1
	add r1, r1, r10
	ldr r2, _08031BDC  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08031BE0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	mov r0, r12
	strb r0, [r3]
	lsl r4, r4, #1
	ldr r2, _08031BE4  @ =gUnknown_03001B30
	ldr r1, [r2, #4]
	add r1, r1, r4
	ldr r2, _08031BE8  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08031BEC  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r3, #5]
	mov r3, r9
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	add r5, r5, #1
	sub r7, r7, #1
	ldrb r0, [r6, #1]
	cmp r5, r0
	ble _08031B34
_08031BA4:
	ldr r2, [sp]
	cmp r2, #5
	ble _08031AE4
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
_08031BBC:
	.4byte 0x03000284
_08031BC0:
	.4byte gSpriteHorizontalOffset
_08031BC4:
	.4byte gUnknown_030012F4
_08031BC8:
	.4byte REG_DMA3SAD
_08031BCC:
	.4byte gOamData
_08031BD0:
	.4byte gUnknown_082EC748
_08031BD4:
	.4byte 0x84000002
_08031BD8:
	.4byte gUnknown_0807DC90
_08031BDC:
	.4byte 0x000001FF
_08031BE0:
	.4byte 0xFFFFFE00
_08031BE4:
	.4byte gUnknown_03001B30
_08031BE8:
	.4byte 0x000003FF
_08031BEC:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_08031AD4

	THUMB_FUNC_START sub_08031BF0
sub_08031BF0: @ 0x08031BF0
	push {lr}
	sub sp, sp, #8
	mov r0, #72
	bl arena_allocate
	add r1, r0, #0
	ldr r0, _08031C14  @ =0x03000284
	str r1, [r0]
	add r0, sp, #4
	mov r2, #0
	strh r2, [r0]
	ldr r2, _08031C18  @ =0x01000024
	bl CpuSet
	add sp, sp, #8
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031C14:
	.4byte 0x03000284
_08031C18:
	.4byte 0x01000024
	THUMB_FUNC_END sub_08031BF0

	THUMB_FUNC_START sub_08031C1C
sub_08031C1C: @ 0x08031C1C
	push {r4,r5,lr}
	ldr r5, _08031C50  @ =0x03000284
	mov r3, #0
	mov r4, #1
	mov r2, #5
_08031C26:
	ldr r0, [r5]
	add r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _08031C40
	sub r0, r0, #1
	strb r0, [r1]
	and r0, r0, r4
	cmp r0, #0
	bne _08031C40
	ldrh r0, [r1, #10]
	sub r0, r0, #1
	strh r0, [r1, #10]
_08031C40:
	add r3, r3, #12
	sub r2, r2, #1
	cmp r2, #0
	bge _08031C26
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031C50:
	.4byte 0x03000284
	THUMB_FUNC_END sub_08031C1C

	THUMB_FUNC_START sub_08031C54
sub_08031C54: @ 0x08031C54
	push {r4-r6,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r5, r1, #0
	ldr r2, [r5]
	cmp r2, #0
	bne _08031CEC
	ldr r0, _08031C88  @ =gUnknown_03001708
	ldrh r3, [r0]
	mov r0, #64
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _08031C8C
	ldr r0, [r4]
	cmp r0, #0
	ble _08031D38
	sub r0, r0, #1
	str r0, [r4]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	b _08031CAE
	.byte 0x00
	.byte 0x00
_08031C88:
	.4byte gUnknown_03001708
_08031C8C:
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	beq _08031CBC
	ldr r0, [r5, #8]
	sub r0, r0, #1
	ldr r2, [r4]
	cmp r2, r0
	bge _08031D38
	add r0, r2, #1
	str r0, [r4]
	str r1, [sp]
	str r6, [sp, #4]
	str r1, [sp, #8]
_08031CAE:
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08031D38
_08031CBC:
	ldr r0, _08031CE8  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _08031D38
	str r2, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r4]
	lsl r0, r0, #3
	add r1, r5, #0
	add r1, r1, #12
	add r1, r1, r0
	ldr r0, [r1]
	b _08031D3C
_08031CE8:
	.4byte gSomeKeys_030012E8
_08031CEC:
	ldr r0, _08031D14  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _08031D18
	mov r0, #0
	str r0, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r5, #12]
	b _08031D3C
	.byte 0x00
	.byte 0x00
_08031D14:
	.4byte gSomeKeys_030012E8
_08031D18:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _08031D38
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r5, #20]
	b _08031D3C
_08031D38:
	mov r0, #1
	neg r0, r0
_08031D3C:
	add sp, sp, #12
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08031C54

	THUMB_FUNC_START sub_08031D44
sub_08031D44: @ 0x08031D44
	push {r4-r7,lr}
	sub sp, sp, #4
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	add r0, r6, #0
	add r0, r0, #37
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031D72
	mov r0, #0
	bl sub_08031A38
	ldr r1, _08031DBC  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #2
	str r2, [sp]
	add r2, r5, #0
	bl sub_08034CCC
	add r5, r0, #0
_08031D72:
	ldr r2, [r6, #4]
	cmp r2, #0
	beq _08031D8C
	ldr r1, _08031DBC  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r0, #2
	str r0, [sp]
	add r0, r2, #0
	add r2, r5, #0
	bl sub_08034CCC
	add r5, r0, #0
_08031D8C:
	add r0, r6, #0
	add r0, r0, #38
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031DAE
	add r0, r4, #0
	bl sub_08031A38
	ldr r1, _08031DBC  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #2
	str r2, [sp]
	add r2, r5, #0
	bl sub_08034CCC
	add r5, r0, #0
_08031DAE:
	ldr r0, [r6]
	cmp r0, #1
	beq _08031DFA
	add r5, r5, #20
	mov r4, #0
	b _08031DF4
	.byte 0x00
	.byte 0x00
_08031DBC:
	.4byte 0xFFFF8001
_08031DC0:
	lsl r1, r4, #3
	add r0, r6, #0
	add r0, r0, #16
	add r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08031DF2
	add r2, r0, #0
	ldr r1, _08031DE0  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	cmp r4, r7
	bne _08031DE4
	mov r0, #2
	b _08031DE6
	.byte 0x00
	.byte 0x00
_08031DE0:
	.4byte 0xFFFF8001
_08031DE4:
	mov r0, #3
_08031DE6:
	str r0, [sp]
	add r0, r2, #0
	add r2, r5, #0
	bl sub_08034CCC
	add r5, r0, #0
_08031DF2:
	add r4, r4, #1
_08031DF4:
	ldr r0, [r6, #8]
	cmp r4, r0
	blt _08031DC0
_08031DFA:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08031D44

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08031E04
sub_08031E04: @ 0x08031E04
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r0, _08031E8C  @ =gUnknown_03000290
	ldrb r0, [r0]
	add r0, r0, #2
	ldr r4, _08031E90  @ =gUnknown_0807CA94
	ldr r1, [r4]
	mov r2, #104
	bl sub_0802A430
	ldr r7, [r4]
	ldr r0, [r7]
	cmp r0, #12
	bhi _08031EDA
	mov r6, #3
	mov r8, r4
	mov r4, #104
	mov r5, #11
_08031E2C:
	mov r0, r8
	ldr r1, [r0]
	add r1, r1, r4
	add r0, r6, #0
	mov r2, #192
	lsl r2, r2, #4
	bl sub_0802A430
	mov r0, #192
	lsl r0, r0, #4
	add r4, r4, r0
	sub r5, r5, #1
	add r6, r6, #1
	cmp r5, #0
	bge _08031E2C
	mov r6, #0
	mov r5, #0
	ldr r0, [r7]
	cmp r5, r0
	bcs _08031EB8
	ldr r0, _08031E90  @ =gUnknown_0807CA94
	mov r8, r0
_08031E58:
	ldr r0, _08031E90  @ =gUnknown_0807CA94
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #88
	add r0, r0, r5
	ldrb r1, [r0]
	add r0, r2, #0
	add r0, r0, #76
	add r0, r0, r5
	ldrb r4, [r0]
	cmp r1, #11
	bhi _08031E78
	cmp r4, #0
	blt _08031E78
	cmp r4, #11
	ble _08031E98
_08031E78:
	mov r0, sp
	mov r1, #0
	strh r1, [r0]
	mov r0, r8
	ldr r1, [r0]
	mov r0, sp
	ldr r2, _08031E94  @ =0x01000034
	bl CpuSet
	b _08031EDA
_08031E8C:
	.4byte gUnknown_03000290
_08031E90:
	.4byte gUnknown_0807CA94
_08031E94:
	.4byte 0x01000034
_08031E98:
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #10
	add r0, r0, #104
	add r0, r2, r0
	bl sub_0802F12C
	cmp r0, #0
	bne _08031EB0
	mov r0, #1
	lsl r0, r0, r4
	orr r6, r6, r0
_08031EB0:
	add r5, r5, #1
	ldr r0, [r7]
	cmp r5, r0
	bcc _08031E58
_08031EB8:
	cmp r6, #0
	bne _08031EC0
	mov r0, #1
	b _08031EDC
_08031EC0:
	mov r5, #0
	mov r4, #1
_08031EC4:
	add r0, r4, #0
	lsl r0, r0, r5
	and r0, r0, r6
	cmp r0, #0
	beq _08031ED4
	add r0, r5, #0
	bl sub_0802EEC8
_08031ED4:
	add r5, r5, #1
	cmp r5, #11
	ble _08031EC4
_08031EDA:
	mov r0, #0
_08031EDC:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08031E04

	THUMB_FUNC_START e_world_from_menu_main
e_world_from_menu_main: @ 0x08031EE8
	push {r4-r6,lr}
	sub sp, sp, #4
	bl sub_080331FC
	bl sub_08029C20
	bl sub_0802A458
	cmp r0, #0
	bne _08031F06
	mov r0, #25
	mov r1, #0
	bl change_main_state
	b _080320D6
_08031F06:
	ldr r1, _08031F28  @ =gUnknown_0300028C
	ldr r2, _08031F2C  @ =gUnknown_03000288
	ldr r3, [r1]
	ldr r0, [r2]
	add r4, r1, #0
	cmp r3, r0
	beq _08031F16
	str r3, [r2]
_08031F16:
	ldr r0, [r2]
	cmp r0, #5
	bls _08031F1E
	b _080320D2
_08031F1E:
	lsl r0, r0, #2
	ldr r1, _08031F30  @ =0x08031F34
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08031F28:
	.4byte gUnknown_0300028C
_08031F2C:
	.4byte gUnknown_03000288
_08031F30:
	.4byte _08031F34
_08031F34:
	.4byte _08031F4C
	.4byte _08032044
	.4byte _0803206C
	.4byte _0803207A
	.4byte _080320A0
	.4byte _080320BC
_08031F4C:
	ldr r0, _08031F60  @ =gUnknown_03000290
	ldrb r1, [r0]
	add r4, r0, #0
	cmp r1, #0
	bne _08031F68
	ldr r0, _08031F64  @ =gUnknown_0807CA94
	ldr r1, [r0]
	mov r2, #104
	b _08031F7E
	.byte 0x00
	.byte 0x00
_08031F60:
	.4byte gUnknown_03000290
_08031F64:
	.4byte gUnknown_0807CA94
_08031F68:
	ldr r2, _08031FB0  @ =gUnknown_0807CA94
	ldrb r1, [r4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #10
	ldr r1, _08031FB4  @ =0xFFFFF468
	add r0, r0, r1
	ldr r1, [r2]
	add r1, r1, r0
	mov r2, #192
	lsl r2, r2, #4
_08031F7E:
	ldrb r0, [r4]
	add r0, r0, #2
	bl sub_0802A430
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #12
	bhi _08031F96
	b _080320D2
_08031F96:
	mov r0, #0
	strb r0, [r4]
	ldr r1, _08031FB0  @ =gUnknown_0807CA94
	ldr r0, [r1]
	ldr r0, [r0]
	cmp r0, #12
	bls _08031FC4
	ldr r1, _08031FB8  @ =gUnknown_0300028C
	mov r0, #1
	str r0, [r1]
	ldr r1, _08031FBC  @ =gUnknown_03000298
	ldr r0, _08031FC0  @ =gUnknown_0807DC9C
	b _080320D0
_08031FB0:
	.4byte gUnknown_0807CA94
_08031FB4:
	.4byte 0xFFFFF468
_08031FB8:
	.4byte gUnknown_0300028C
_08031FBC:
	.4byte gUnknown_03000298
_08031FC0:
	.4byte gUnknown_0807DC9C
_08031FC4:
	mov r5, #0
	mov r4, #0
	cmp r4, r0
	bcs _08032002
	add r6, r1, #0
_08031FCE:
	ldr r0, [r6]
	add r1, r0, #0
	add r1, r1, #88
	add r1, r1, r4
	ldrb r2, [r1]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #10
	add r1, r1, #104
	add r0, r0, r1
	bl sub_0802F12C
	cmp r0, #0
	bne _08031FF8
	ldr r1, [r6]
	add r1, r1, #76
	add r1, r1, r4
	mov r0, #1
	ldrb r1, [r1]
	lsl r0, r0, r1
	orr r5, r5, r0
_08031FF8:
	add r4, r4, #1
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r4, r0
	bcc _08031FCE
_08032002:
	cmp r5, #0
	bne _08032010
	ldr r1, _0803200C  @ =gUnknown_0300028C
	mov r0, #2
	b _080320D0
_0803200C:
	.4byte gUnknown_0300028C
_08032010:
	mov r4, #0
	mov r6, #1
_08032014:
	add r0, r6, #0
	lsl r0, r0, r4
	and r0, r0, r5
	cmp r0, #0
	beq _08032024
	add r0, r4, #0
	bl sub_0802EEC8
_08032024:
	add r4, r4, #1
	cmp r4, #11
	ble _08032014
	ldr r1, _08032038  @ =gUnknown_0300028C
	mov r0, #1
	str r0, [r1]
	ldr r1, _0803203C  @ =gUnknown_03000298
	ldr r0, _08032040  @ =gUnknown_0807DC9C
	b _080320D0
	.byte 0x00
	.byte 0x00
_08032038:
	.4byte gUnknown_0300028C
_0803203C:
	.4byte gUnknown_03000298
_08032040:
	.4byte gUnknown_0807DC9C
_08032044:
	ldr r0, _08032060  @ =gUnknown_03000294
	ldr r1, _08032064  @ =gUnknown_03000298
	ldr r1, [r1]
	bl sub_08031C54
	str r0, [r4]
	mov r1, #1
	neg r1, r1
	cmp r0, r1
	bne _080320D2
	ldr r0, _08032068  @ =gUnknown_03000288
	ldr r0, [r0]
	str r0, [r4]
	b _080320D2
_08032060:
	.4byte gUnknown_03000294
_08032064:
	.4byte gUnknown_03000298
_08032068:
	.4byte gUnknown_03000288
_0803206C:
	bl sub_0802EE54
	mov r0, #25
	mov r1, #0
	bl change_main_state
	b _080320D2
_0803207A:
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r0, _08032094  @ =gUnknown_0807CA94
	ldr r1, [r0]
	ldr r2, _08032098  @ =0x01004834
	mov r0, sp
	bl CpuSet
	ldr r1, _0803209C  @ =gUnknown_0300028C
	mov r0, #4
	b _080320D0
	.byte 0x00
	.byte 0x00
_08032094:
	.4byte gUnknown_0807CA94
_08032098:
	.4byte 0x01004834
_0803209C:
	.4byte gUnknown_0300028C
_080320A0:
	ldr r0, _080320B4  @ =gUnknown_0807CA94
	ldr r1, [r0]
	mov r0, #2
	mov r2, #104
	bl sub_0802A290
	ldr r1, _080320B8  @ =gUnknown_0300028C
	mov r0, #5
	b _080320D0
	.byte 0x00
	.byte 0x00
_080320B4:
	.4byte gUnknown_0807CA94
_080320B8:
	.4byte gUnknown_0300028C
_080320BC:
	mov r2, #1
	neg r2, r2
	add r0, r2, #0
	mov r1, #0
	bl sub_0802A290
	cmp r0, #0
	beq _080320D2
	ldr r1, _080320E0  @ =gUnknown_0300028C
	mov r0, #0
_080320D0:
	str r0, [r1]
_080320D2:
	bl sub_0802ECC8
_080320D6:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080320E0:
	.4byte gUnknown_0300028C
	THUMB_FUNC_END e_world_from_menu_main

