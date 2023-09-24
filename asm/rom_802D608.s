	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_0802D608
sub_0802D608: @ 0x0802D608
	ldr r1, _0802D610  @ =0x030001A0
	mov r0, #0
	strb r0, [r1, #4]
	bx lr
_0802D610:
	.4byte 0x030001A0
	THUMB_FUNC_END sub_0802D608

	THUMB_FUNC_START sub_0802D614
sub_0802D614: @ 0x0802D614
	push {r4,lr}
	add r4, r0, #0
	mov r0, #26
	mov r1, #0
	bl sub_080070E8
	ldr r2, _0802D648  @ =0x030001C0
	str r4, [r2]
	ldr r1, _0802D64C  @ =0x030001B4
	mov r0, #1
	str r0, [r1]
	ldr r0, _0802D650  @ =0x030001BC
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1]
	ldr r4, [r2]
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0802D66C
	add r0, r4, #0
	bl sub_08031944
	cmp r0, #2
	bne _0802D654
	mov r3, #6
	b _0802D67E
_0802D648:
	.4byte 0x030001C0
_0802D64C:
	.4byte 0x030001B4
_0802D650:
	.4byte 0x030001BC
_0802D654:
	add r0, r4, #0
	bl sub_08031944
	cmp r0, #1
	bne _0802D662
	mov r3, #7
	b _0802D67E
_0802D662:
	add r0, r4, #0
	bl sub_08031978
	mov r3, #5
	b _0802D67E
_0802D66C:
	add r0, r4, #0
	add r0, r0, #16
	bl sub_0802F090
	mov r3, #1
	neg r3, r3
	cmp r0, #0
	beq _0802D67E
	mov r3, #3
_0802D67E:
	ldr r0, _0802D694  @ =0x030001B8
	mov r4, #0
	str r4, [r0]
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	bne _0802D69C
	ldr r1, _0802D698  @ =0x030001A8
	mov r0, #4
	str r0, [r1]
	b _0802D6C4
_0802D694:
	.4byte 0x030001B8
_0802D698:
	.4byte 0x030001A8
_0802D69C:
	cmp r3, #3
	bne _0802D6AC
	ldr r1, _0802D6A8  @ =0x030001A8
	mov r0, #5
	str r0, [r1]
	b _0802D6C4
_0802D6A8:
	.4byte 0x030001A8
_0802D6AC:
	ldr r1, _0802D6CC  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r2, _0802D6D0  @ =0x030001AC
	lsl r0, r3, #2
	add r0, r0, r3
	lsl r0, r0, #3
	ldr r1, _0802D6D4  @ =gUnknown_0807C850
	add r0, r0, r1
	str r0, [r2]
	ldr r0, _0802D6D8  @ =0x030001B0
	str r4, [r0]
_0802D6C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D6CC:
	.4byte 0x030001A8
_0802D6D0:
	.4byte 0x030001AC
_0802D6D4:
	.4byte gUnknown_0807C850
_0802D6D8:
	.4byte 0x030001B0
	THUMB_FUNC_END sub_0802D614

	THUMB_FUNC_START e_card_scan_main
e_card_scan_main: @ 0x0802D6DC
	push {r4,r5,lr}
	sub sp, sp, #12
	bl sub_080331FC
	bl sub_08029C20
	mov r1, #0
	ldr r4, _0802D710  @ =0x030001A8
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
	.4byte 0x030001A8
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
	ldr r0, _0802D784  @ =gUnknown_030012E8
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
	bl sub_08071990
	ldr r1, _0802D788  @ =0x030001A8
	mov r0, #1
	str r0, [r1]
	ldr r0, _0802D78C  @ =0x030001B8
	str r4, [r0]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802D784:
	.4byte gUnknown_030012E8
_0802D788:
	.4byte 0x030001A8
_0802D78C:
	.4byte 0x030001B8
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
	ldr r0, _0802D7D8  @ =0x030001B4
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
	bl sub_08071990
	ldr r1, _0802D7DC  @ =0x030001A8
	mov r0, #2
	str r0, [r1]
	b _0802DBD4
_0802D7D8:
	.4byte 0x030001B4
_0802D7DC:
	.4byte 0x030001A8
_0802D7E0:
	ldr r0, _0802D7FC  @ =gUnknown_030012E8
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
	.4byte gUnknown_030012E8
_0802D800:
	ldr r5, _0802D814  @ =0x030001B8
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
	.4byte 0x030001B8
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
	bl sub_08071990
	str r4, [r5]
	ldr r1, _0802D848  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802D84C  @ =0x030001AC
	ldr r0, _0802D850  @ =gUnknown_0807C850
	add r0, r0, #40
	str r0, [r1]
	b _0802DA90
	.byte 0x00
	.byte 0x00
_0802D848:
	.4byte 0x030001A8
_0802D84C:
	.4byte 0x030001AC
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
	bl sub_08071990
	ldr r0, _0802D888  @ =0x030001B8
	str r4, [r0]
	ldr r1, _0802D88C  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802D890  @ =0x030001AC
	ldr r0, _0802D894  @ =gUnknown_0807C850
	add r0, r0, #80
	str r0, [r1]
	b _0802DA90
_0802D888:
	.4byte 0x030001B8
_0802D88C:
	.4byte 0x030001A8
_0802D890:
	.4byte 0x030001AC
_0802D894:
	.4byte gUnknown_0807C850
_0802D898:
	ldr r0, _0802D8CC  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _0802D8D8
	ldr r0, _0802D8D0  @ =0x030001B8
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
	bl sub_08071990
	ldr r1, _0802D8D4  @ =0x030001A8
	mov r0, #3
	str r0, [r1]
	bl sub_08038280
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802D8CC:
	.4byte gUnknown_030012E8
_0802D8D0:
	.4byte 0x030001B8
_0802D8D4:
	.4byte 0x030001A8
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
	ldr r0, _0802D90C  @ =gUnknown_030012E8
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
	.4byte gUnknown_030012E8
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
	bl sub_08071990
	ldr r0, _0802D944  @ =0x030001B8
	str r4, [r0]
	ldr r1, _0802D948  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802D94C  @ =0x030001AC
	ldr r0, _0802D950  @ =gUnknown_0807C850
	add r0, r0, #80
	str r0, [r1]
	b _0802DA90
	.byte 0x00
	.byte 0x00
_0802D944:
	.4byte 0x030001B8
_0802D948:
	.4byte 0x030001A8
_0802D94C:
	.4byte 0x030001AC
_0802D950:
	.4byte gUnknown_0807C850
_0802D954:
	mov r0, #2
	bl sub_08038228
	cmp r0, #0
	bne _0802D9B4
	ldr r5, _0802D974  @ =0x030001B8
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
	.4byte 0x030001B8
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
	bl sub_08071990
	str r4, [r5]
	ldr r1, _0802D9A8  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802D9AC  @ =0x030001AC
	ldr r0, _0802D9B0  @ =gUnknown_0807C850
	add r0, r0, #40
	str r0, [r1]
	b _0802DA90
	.byte 0x00
	.byte 0x00
_0802D9A8:
	.4byte 0x030001A8
_0802D9AC:
	.4byte 0x030001AC
_0802D9B0:
	.4byte gUnknown_0807C850
_0802D9B4:
	ldr r0, _0802D9F0  @ =0x030001B8
	str r4, [r0]
_0802D9B8:
	bl sub_08038264
	cmp r0, #0
	bne _0802D9C2
	b _0802DBD4
_0802D9C2:
	ldr r0, _0802D9F4  @ =0x030001BC
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1]
	ldr r4, _0802D9F8  @ =0x030001C0
	ldr r0, [r4]
	bl sub_0802F12C
	add r2, r0, #0
	cmp r2, #0
	bne _0802DA0C
	ldr r0, _0802D9F0  @ =0x030001B8
	str r2, [r0]
	ldr r1, _0802D9FC  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802DA00  @ =0x030001AC
	ldr r0, _0802DA04  @ =gUnknown_0807C850
	str r0, [r1]
	ldr r0, _0802DA08  @ =0x030001B0
	str r2, [r0]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802D9F0:
	.4byte 0x030001B8
_0802D9F4:
	.4byte 0x030001BC
_0802D9F8:
	.4byte 0x030001C0
_0802D9FC:
	.4byte 0x030001A8
_0802DA00:
	.4byte 0x030001AC
_0802DA04:
	.4byte gUnknown_0807C850
_0802DA08:
	.4byte 0x030001B0
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
	ldr r0, _0802DA64  @ =0x030001B8
	mov r4, #0
	str r4, [r0]
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	bne _0802DA6C
	ldr r1, _0802DA68  @ =0x030001A8
	mov r0, #4
	str r0, [r1]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802DA64:
	.4byte 0x030001B8
_0802DA68:
	.4byte 0x030001A8
_0802DA6C:
	cmp r3, #3
	bne _0802DA7C
	ldr r1, _0802DA78  @ =0x030001A8
	mov r0, #5
	str r0, [r1]
	b _0802DBD4
_0802DA78:
	.4byte 0x030001A8
_0802DA7C:
	ldr r1, _0802DA98  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r2, _0802DA9C  @ =0x030001AC
	lsl r0, r3, #2
	add r0, r0, r3
	lsl r0, r0, #3
	ldr r1, _0802DAA0  @ =gUnknown_0807C850
	add r0, r0, r1
	str r0, [r2]
_0802DA90:
	ldr r0, _0802DAA4  @ =0x030001B0
	str r4, [r0]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802DA98:
	.4byte 0x030001A8
_0802DA9C:
	.4byte 0x030001AC
_0802DAA0:
	.4byte gUnknown_0807C850
_0802DAA4:
	.4byte 0x030001B0
_0802DAA8:
	ldr r0, _0802DAD4  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	bne _0802DAB6
	b _0802DBD4
_0802DAB6:
	ldr r1, _0802DAD8  @ =0x030001A8
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
	bl sub_08071990
	b _0802DBD4
_0802DAD4:
	.4byte gUnknown_030012E8
_0802DAD8:
	.4byte 0x030001A8
_0802DADC:
	ldr r0, _0802DAEC  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0802DBD4
	b _0802DBA0
	.byte 0x00
	.byte 0x00
_0802DAEC:
	.4byte gUnknown_030012E8
_0802DAF0:
	bl sub_0802F06C
_0802DAF4:
	ldr r0, _0802DB30  @ =0x030001C0
	ldr r0, [r0]
	bl sub_0802EF70
	add r1, r0, #1
	ldr r0, _0802DB34  @ =0x030001BC
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
	ldr r1, _0802DB38  @ =0x030001A8
	mov r0, #9
	str r0, [r1]
	b _0802DBD4
_0802DB30:
	.4byte 0x030001C0
_0802DB34:
	.4byte 0x030001BC
_0802DB38:
	.4byte 0x030001A8
_0802DB3C:
	ldr r0, _0802DB50  @ =gUnknown_0807CA94
	ldr r1, [r0]
	mov r0, #2
	mov r2, #104
	bl sub_0802A370
	ldr r1, _0802DB54  @ =0x030001A8
	mov r0, #10
	str r0, [r1]
	b _0802DBD4
_0802DB50:
	.4byte gUnknown_0807CA94
_0802DB54:
	.4byte 0x030001A8
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
	ldr r0, _0802DB88  @ =0x030001C0
	ldr r0, [r0]
	b _0802DB8E
	.byte 0x00
	.byte 0x00
_0802DB88:
	.4byte 0x030001C0
_0802DB8C:
	mov r0, #0
_0802DB8E:
	bl sub_08031978
_0802DB92:
	ldr r1, _0802DB9C  @ =0x030001A8
	mov r0, #11
	str r0, [r1]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802DB9C:
	.4byte 0x030001A8
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
	bl sub_08071990
_0802DBB6:
	mov r0, #25
	mov r1, #0
	bl sub_080070E8
	b _0802DBD4
_0802DBC0:
	ldr r0, _0802DBE0  @ =0x030001B0
	ldr r1, _0802DBE4  @ =0x030001AC
	ldr r1, [r1]
	bl sub_08031C54
	add r1, r0, #0
	cmp r1, #0
	blt _0802DBD4
	ldr r0, _0802DBE8  @ =0x030001A8
	str r1, [r0]
_0802DBD4:
	bl sub_0802ECC8
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_0802DBE0:
	.4byte 0x030001B0
_0802DBE4:
	.4byte 0x030001AC
_0802DBE8:
	.4byte 0x030001A8
	THUMB_FUNC_END e_card_scan_main
