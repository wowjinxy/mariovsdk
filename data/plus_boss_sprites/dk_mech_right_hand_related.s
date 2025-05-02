	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_087ACDA4
gUnknown_087ACDA4:
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
	.4byte sprite_return_0_08047D14 @ Sprite Function

	.GLOBAL gUnknown_087ACDCC
gUnknown_087ACDCC:
	.byte 0x01 @ Number Actions This Sprite Action Can Do
	.byte 0x20
	.byte 0x20
	.byte 0x08 @ Sprite Animation Frames
	.2byte 0x0400
	.byte 0x00
	.byte 0x00
	.4byte 0x01080000
	.4byte 0x00000020
	.byte 0x00
	.byte 0x00
	.byte 0x02
	.byte 0x00
	.2byte 0x0000
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ Sprite X Velocity Animation
	.4byte 0x00000000 @ Sprite Y Velocity Animation
	.4byte 0x00000000 @ Hitbox Adjustment
	.4byte gUnknown_087ACDA4 @ Sprite Action Data

	.GLOBAL gDKMechRightHandTable
gDKMechRightHandTable:
	.4byte gUnknown_087ACDCC
	.4byte gUnknown_081CB418
	.4byte gUnknown_081CB538
	.4byte gUnknown_081CB540
	.4byte 0x00000000
	.4byte 0x00000000
