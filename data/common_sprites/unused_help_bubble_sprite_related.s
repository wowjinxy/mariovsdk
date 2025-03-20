	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ Unused Help bubble related
	.GLOBAL gUnknown_086F90BC
gUnknown_086F90BC:
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
	.4byte 0x00000010 @ Unknown Flags 1
	.4byte 0x00000000 @ Unknown Flags 2
	.4byte sub_08047D14 @ Sprite Function

	.GLOBAL gUnknown_086F90E4
gUnknown_086F90E4:
	.byte 0x01 @ Number Actions This Sprite Action Can Do
	.byte 0x20
	.byte 0x20
	.byte 0x03 @ Sprite Animation Frames
	.2byte 0x0400
	.byte 0x00
	.byte 0x00
	.4byte 0x00700000 @ Unknown flags 1
	.4byte 0x08000000 @ Unknown flags 2
	.byte 0x01
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.2byte 0x0000
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ Sprite X Velocity Animation
	.4byte 0x00000000 @ Sprite Y Velocity Animation
	.4byte 0x00000000 @ Hitbox Adjustment
	.4byte gUnknown_086F90BC @ Sprite Action Data
	
	.GLOBAL gUnusedHelpBubbleSpriteTable
gUnusedHelpBubbleSpriteTable:
	.4byte gUnknown_086F90E4 @ Sprite Action Data
	.4byte gUnknown_085A11B0 @ Sprite Animation
	.4byte gUnknown_085A121C @ Sprite OAM
	.4byte gUnknown_085A1224 @ Sprite Graphics
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00


