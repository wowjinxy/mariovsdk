	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data
	
	.GLOBAL gUnknown_087ACE0C
gUnknown_087ACE0C:
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
	
	.GLOBAL gUnknown_087ACE34
gUnknown_087ACE34:
	.2byte 0x0000
	.2byte 0x0001 @ Sprite Action After
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

	.GLOBAL gUnknown_087ACE5C
gUnknown_087ACE5C:
	.2byte 0x0000
	.2byte 0x0002 @ Sprite Action After
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

	.GLOBAL gUnknown_087ACE84
gUnknown_087ACE84:
	.byte 0x01 @ Number Actions This Sprite Action Can Do
	.byte 0x40
	.byte 0x20
	.byte 0x01 @ Sprite Animation Frames
	.2byte 0x0800
	.byte 0x00
	.byte 0x00
	.4byte 0x01500000
	.4byte 0x00008000
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x11
	.2byte 0x0000
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ Sprite X Velocity Animation
	.4byte 0x00000000 @ Sprite Y Velocity Animation
	.4byte 0x00000000 @ Hitbox Adjustment
	.4byte gUnknown_087ACE0C @ Sprite Action Data

	.GLOBAL gUnknown_087ACEAC
gUnknown_087ACEAC:
	.byte 0x01 @ Number Actions This Sprite Action Can Do
	.byte 0x40
	.byte 0x20
	.byte 0x01 @ Sprite Animation Frames
	.2byte 0x0800
	.byte 0x00
	.byte 0x00
	.4byte 0x01500000
	.4byte 0x00008000
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x11
	.2byte 0x0000
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ Sprite X Velocity Animation
	.4byte 0x00000000 @ Sprite Y Velocity Animation
	.4byte 0x00000000 @ Hitbox Adjustment
	.4byte gUnknown_087ACE34 @ Sprite Action Data
	
	.GLOBAL gUnknown_087ACED4
gUnknown_087ACED4:
	.byte 0x01 @ Number Actions This Sprite Action Can Do
	.byte 0x40
	.byte 0x20
	.byte 0x01 @ Sprite Animation Frames
	.2byte 0x0800
	.byte 0x00
	.byte 0x00
	.4byte 0x01500000
	.4byte 0x00008000
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x11
	.2byte 0x0000
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ Sprite X Velocity Animation
	.4byte 0x00000000 @ Sprite Y Velocity Animation
	.4byte 0x00000000 @ Hitbox Adjustment
	.4byte gUnknown_087ACE5C @ Sprite Action Data
	
	.GLOBAL gDKMechNoseCollisionTable
gDKMechNoseCollisionTable:
	.4byte gUnknown_087ACE84
	.4byte gUnknown_081DF6F4
	.4byte gUnknown_081DF718
	.4byte gUnknown_081DF720
	.4byte 0x00000000
	.4byte 0x00000000

	.4byte gUnknown_087ACEAC
	.4byte gUnknown_081DF6F4
	.4byte gUnknown_081DF718
	.4byte gUnknown_081DF720
	.4byte 0x00000000
	.4byte 0x00000000

	.4byte gUnknown_087ACED4
	.4byte gUnknown_081DF6F4
	.4byte gUnknown_081DF718
	.4byte gUnknown_081DF720
	.4byte 0x00000000
	.4byte 0x00000000
