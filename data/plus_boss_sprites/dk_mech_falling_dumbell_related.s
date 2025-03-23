	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ Boss 2 sprites
	.GLOBAL gUnknown_087ACF44
gUnknown_087ACF44:
	.2byte 0x0300 @ Hitbox top offset
	.2byte 0x0E00 @ Hitbox bottom offset
	.2byte 0x0E00 @ Hitbox left offset
	.2byte 0x1400 @ Hitbox right offset

	.GLOBAL gUnknown_087ACF4C
gUnknown_087ACF4C:
	.2byte 0x0013
	.2byte 0x0000 @ Sprite Action After
	.byte 0x00
	.byte 0x00
	.byte 0x0F
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Sound effect ID (Subtract 1)
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000010 @ Unknown Flags 1
	.4byte 0x00000000 @ Unknown Flags 2
	.4byte sub_08047EB0 @ Sprite Function

	.2byte 0x0004
	.2byte 0x0000 @ Sprite Action After
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Sound effect ID (Subtract 1)
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000010 @ Unknown Flags 1
	.4byte 0x00000000 @ Unknown Flags 2
	.4byte sub_08048054 @ Sprite Function

	.GLOBAL gUnknown_087ACF9C
gUnknown_087ACF9C:
	.2byte 0x0000
	.2byte 0x0000
	
	.GLOBAL gUnknown_087ACFA0
gUnknown_087ACFA0:
	.2byte 0xFF80 
	.2byte 0xFE80
	
	.GLOBAL gUnknown_087ACFA4
gUnknown_087ACFA4:
	.byte 0x02 @ Number Actions This Sprite Action Can Do
	.byte 0x10
	.byte 0x10
	.byte 0x0F @ Sprite Animation Frames
	.2byte 0x0080
	.byte 0x00
	.byte 0x00
	.4byte 0x01400000
	.4byte 0x00000001
	.byte 0x00
	.byte 0x00
	.byte 0x02
	.byte 0x02
	.2byte 0x0002
	.byte 0x00
	.byte 0x00
	.4byte gUnknown_087ACF9C @ Sprite X Velocity Animation
	.4byte gUnknown_087ACFA0 @ Sprite Y Velocity Animation
	.4byte gUnknown_087ACF44 @ Hitbox Adjustment 
	.4byte gUnknown_087ACF4C @ Sprite Action Data
	
	.GLOBAL gFallingDumbellDKMech
gFallingDumbellDKMech:
	.4byte gUnknown_087ACFA4 @ Sprite Action Data
	.4byte gUnknown_08106234 @ Sprite Animation
	.4byte gUnknown_08106450 @ Sprite OAM
	.4byte gUnknown_08106458 @ Sprite Graphics
	.4byte 0x00000000
	.4byte 0x00000000
