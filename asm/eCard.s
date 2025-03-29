	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START e_card_scan_main
e_card_scan_main: @ 0x0802D6DC
	push {r4,r5,lr}
	sub sp, sp, #12
	bl process_input
	bl update_fade_from_black
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
	ldr r0, _0802D784  @ =gNewKeys
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
	.4byte gNewKeys
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
	ldr r0, _0802D7FC  @ =gNewKeys
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
	.4byte gNewKeys
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
	ldr r0, _0802D8CC  @ =gNewKeys
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
	.4byte gNewKeys
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
	ldr r0, _0802D90C  @ =gNewKeys
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
	.4byte gNewKeys
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
	bl check_if_theme_card_exists_08031944
	cmp r0, #2
	bne _0802DA22
	mov r3, #6
	b _0802DA4C
_0802DA22:
	add r0, r4, #0
	bl check_if_theme_card_exists_08031944
	cmp r0, #1
	bne _0802DA30
	mov r3, #7
	b _0802DA4C
_0802DA30:
	add r0, r4, #0
	bl load_theme_card_08031978
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
	ldr r0, _0802DAD4  @ =gNewKeys
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
	.4byte gNewKeys
_0802DAD8:
	.4byte gUnknown_030001A8
_0802DADC:
	ldr r0, _0802DAEC  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0802DBD4
	b _0802DBA0
	.byte 0x00
	.byte 0x00
_0802DAEC:
	.4byte gNewKeys
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
	ldr r0, _0802DB50  @ =gEWorldLevelCountPtr
	ldr r1, [r0]
	mov r0, #2
	mov r2, #104
	bl write_flash_sector_0802A370
	ldr r1, _0802DB54  @ =gUnknown_030001A8
	mov r0, #10
	str r0, [r1]
	b _0802DBD4
_0802DB50:
	.4byte gEWorldLevelCountPtr
_0802DB54:
	.4byte gUnknown_030001A8
_0802DB58:
	ldr r0, _0802DB7C  @ =gEWorldLevelCountPtr
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
	bl write_flash_sector_0802A370
	b _0802DB92
	.byte 0x00
	.byte 0x00
_0802DB7C:
	.4byte gEWorldLevelCountPtr
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
	bl load_theme_card_08031978
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
	ldr r0, _0802DCD4  @ =gOamBuffer
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
	bl draw_text_font
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
	bl draw_text_font
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
	bl draw_text_font
	b _0802DD18
	.byte 0x00
	.byte 0x00
_0802DCD0:
	.4byte REG_DMA3SAD
_0802DCD4:
	.4byte gOamBuffer
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
	bl draw_text_font
_0802DD18:
	add r0, r7, #0
	bl sub_08035108
	ldr r1, _0802DD40  @ =REG_DMA3SAD
	ldr r0, _0802DD44  @ =gOamBuffer
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
	.4byte gOamBuffer
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
	ldr r2, _0802DDD8  @ =gOamBuffer
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
	.4byte gOamBuffer
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
	ldr r1, _0802DF3C  @ =gVRAMCurrTileNum_03001930
	ldr r0, _0802DF40  @ =gObjVRAMCopyOffset_0300192C
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
	.4byte gVRAMCurrTileNum_03001930
_0802DF40:
	.4byte gObjVRAMCopyOffset_0300192C
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
	bl process_input
	bl update_fade_from_black
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
	ldr r0, _0802E18C  @ =gNewKeys
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
	.4byte gNewKeys
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
	ldr r0, _0802E2C0  @ =gNewKeys
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
	.4byte gNewKeys
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
	ldr r0, _0802E5C4  @ =gNewKeys
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
	.4byte gNewKeys
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
	ldr r0, _0802E70C  @ =gEWorldLevelCountPtr
	ldr r1, [r0]
	mov r0, #2
	mov r2, #104
	bl write_flash_sector_0802A370
	b _0802E758
_0802E70C:
	.4byte gEWorldLevelCountPtr
_0802E710:
	ldr r0, _0802E740  @ =gNewKeys
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
	.4byte gNewKeys
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
	bl draw_text_font
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
	ldr r0, _0802E8E0  @ =gOamBuffer
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
	bl update_fade_from_black
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
	.4byte gOamBuffer
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
	bl draw_text_font
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
	bl draw_text_font
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
	bl draw_text_font
	ldr r0, _0802EAE0  @ =gTextOK
	mov r1, #2
	str r1, [sp]
	add r1, r4, #0
	mov r2, #109
	add r3, r5, #0
	bl draw_text_font
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
	ldr r0, _0802EC0C  @ =gEWorldLevelCountPtr
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
	ldr r0, _0802EC0C  @ =gEWorldLevelCountPtr
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
	bl update_animated_tiles_0801B4BC
	ldr r2, _0802EC20  @ =REG_DMA3SAD
	ldr r0, _0802EC24  @ =gOamBuffer
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
	.4byte gEWorldLevelCountPtr
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
	.4byte gOamBuffer
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
	bl save_blend_regs_from_graphicsconfig
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
	bl get_current_bgm
	cmp r0, #10
	beq _0802EC9A
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl play_bgm
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
	bl level_setup
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
	bl get_bgm_data
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
	bl get_bgm_volume
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
	ldr r6, _0802EEC0  @ =gEWorldLevelCountPtr
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
	.4byte gEWorldLevelCountPtr
_0802EEC4:
	.4byte 0x01000018
	THUMB_FUNC_END sub_0802EE54

	THUMB_FUNC_START sub_0802EEC8
sub_0802EEC8: @ 0x0802EEC8
	push {r4-r7,lr}
	add r6, r0, #0
	ldr r3, _0802EF6C  @ =gEWorldLevelCountPtr
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
	.4byte gEWorldLevelCountPtr
	THUMB_FUNC_END sub_0802EEC8

	THUMB_FUNC_START sub_0802EF70
sub_0802EF70: @ 0x0802EF70
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r8, r0
	mov r3, #0
	ldr r2, _0802F058  @ =gEWorldLevelCountPtr
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
	.4byte gEWorldLevelCountPtr
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
	ldr r0, _0802F088  @ =gEWorldLevelCountPtr
	ldr r1, [r0]
	ldr r2, _0802F08C  @ =0x01000034
	mov r0, sp
	bl CpuSet
	add sp, sp, #4
	pop {r0}
	bx r0
_0802F088:
	.4byte gEWorldLevelCountPtr
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
	ldr r2, _0802F0F0  @ =gEWorldLevelCountPtr
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
	.4byte gEWorldLevelCountPtr
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
	ldr r1, _0802F120  @ =gEWorldLevelCountPtr
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
	.4byte gEWorldLevelCountPtr
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
	ldr r3, _0802F1A8  @ =gEWorldLevelCountPtr
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
	.4byte gEWorldLevelCountPtr
	THUMB_FUNC_END sub_0802F168

	THUMB_FUNC_START sub_0802F1AC
sub_0802F1AC: @ 0x0802F1AC
	lsl r0, r0, #24
	ldr r2, _0802F1BC  @ =gEWorldLevelCountPtr
	ldr r2, [r2]
	lsr r0, r0, #23
	add r2, r2, #4
	add r2, r2, r0
	strh r1, [r2]
	bx lr
_0802F1BC:
	.4byte gEWorldLevelCountPtr
	THUMB_FUNC_END sub_0802F1AC

	THUMB_FUNC_START sub_0802F1C0
sub_0802F1C0: @ 0x0802F1C0
	lsl r0, r0, #24
	ldr r1, _0802F1D0  @ =gEWorldLevelCountPtr
	ldr r1, [r1]
	lsr r0, r0, #23
	add r1, r1, #4
	add r1, r1, r0
	ldrh r0, [r1]
	bx lr
_0802F1D0:
	.4byte gEWorldLevelCountPtr
	THUMB_FUNC_END sub_0802F1C0

	THUMB_FUNC_START sub_0802F1D4
sub_0802F1D4: @ 0x0802F1D4
	push {lr}
	ldr r0, _0802F1E8  @ =gEWorldLevelCountPtr
	ldr r1, [r0]
	mov r0, #2
	mov r2, #104
	bl write_flash_sector_0802A370
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F1E8:
	.4byte gEWorldLevelCountPtr
	THUMB_FUNC_END sub_0802F1D4

	THUMB_FUNC_START e_world_debug_main
e_world_debug_main: @ 0x0802F1EC
	push {r4-r7,lr}
	sub sp, sp, #12
	bl process_input
	bl level_callback_08008238
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
	ldr r0, _0802F2A8  @ =gNewKeys
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
	ldr r0, _0802F2B0  @ =gEWorldLevelCountPtr
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
	.4byte gNewKeys
_0802F2AC:
	.4byte 0x030001C9
_0802F2B0:
	.4byte gEWorldLevelCountPtr
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
	ldr r0, _0802F3EC  @ =gNewKeys
	ldrh r2, [r0]
	mov r4, #9
	and r4, r4, r2
	cmp r4, #0
	beq _0802F410
	ldr r0, _0802F3F0  @ =gEWorldLevelCountPtr
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
	.4byte gNewKeys
_0802F3F0:
	.4byte gEWorldLevelCountPtr
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
	ldr r0, _0802F49C  @ =gOamBuffer
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
	.4byte gOamBuffer
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
	bl draw_text_font
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
	bl draw_text_font
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
	bl draw_text_font
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
	ldr r0, _0802F588  @ =gOamBuffer
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
	.4byte gOamBuffer
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
