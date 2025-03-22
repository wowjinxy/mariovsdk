	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_087ACCD4
gUnknown_087ACCD4:
	.2byte 0x0000
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
	.4byte 0x00000000 @ Unknown Flags 1
	.4byte 0x00000000 @ Unknown Flags 2
	.4byte sub_08047D14 @ Sprite Function
	
	.GLOBAL gUnknown_087ACCFC
gUnknown_087ACCFC:
	.byte 0x01 @ Number Actions This Sprite Action Can Do
	.byte 0x40
	.byte 0x40
	.byte 0x06 @ Sprite Animation Frames
	.2byte 0x1000
	.byte 0x00
	.byte 0x00
	.4byte 0x00400000
	.4byte 0x00000000
	.byte 0x00
	.byte 0x02
	.byte 0x02
	.byte 0x02
	.2byte 0x0000
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ Sprite X Velocity Animation
	.4byte 0x00000000 @ Sprite Y Velocity Animation
	.4byte 0x00000000 @ Hitbox Adjustment
	.4byte gUnknown_087ACCD4 @ Sprite Action Data

	.GLOBAL gDKMechHeadTable
gDKMechHeadTable:
	.4byte gUnknown_087ACCFC
	.4byte gUnknown_081D9614
	.4byte gUnknown_081D96EC
	.4byte gUnknown_081D96F4
	.4byte 0x00000000
	.4byte 0x00000000
