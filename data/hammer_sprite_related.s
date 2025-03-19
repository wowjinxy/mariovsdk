	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data
	
	.GLOBAL gUnknown_086F26AC
gUnknown_086F26AC:
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0A00 @ hitbox left side offset
	.2byte 0x1800 @ hitbox right side offset
	
	.GLOBAL gUnknown_086F26B4
gUnknown_086F26B4:
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0A00 @ hitbox left side offset
	.2byte 0x1800 @ hitbox right side offset

	.GLOBAL gUnknown_086F26BC
gUnknown_086F26BC:
	.2byte 0x1600 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0500 @ hitbox left side offset
	.2byte 0x1C00 @ hitbox right side offset

	.GLOBAL gUnknown_086F26C4
gUnknown_086F26C4:
	.2byte 0x0033
	.2byte 0x0000 @ Sprite Action After
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x10 @ Sound effect ID (Subtract 1)
	.byte 0x01
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
	.4byte 0x00000038 @ Unknown Flags 1
	.4byte 0x04000000 @ Unknown Flags 2
	.4byte sub_080480B0 @ Sprite Function

	.GLOBAL gUnknown_086F26EC
gUnknown_086F26EC:
	.2byte 0x0004
	.2byte 0x0001 @ Sprite Action After
	.byte 0x96
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
	.4byte sub_08048054 @ Sprite Function

	.GLOBAL gUnknown_086F2714
gUnknown_086F2714:
	.2byte 0x003B
	.2byte 0x0001 @ Sprite Action After
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x10 @ Sound effect ID (Subtract 1)
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
	.4byte sub_08048A7C @ Sprite Function

	.GLOBAL gUnknown_086F273C
gUnknown_086F273C:
	.2byte 0x0035
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
	.4byte 0x00000200 @ Unknown Flags 1
	.4byte 0x00000000 @ Unknown Flags 2
	.4byte sub_08049384 @ Sprite Function
	
	.GLOBAL gUnknown_086F2764
gUnknown_086F2764:
	.2byte 0x003B
	.2byte 0x0001 @ Sprite Action After
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x10 @ Sound effect ID (Subtract 1)
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
	.4byte sub_08048A7C @ Sprite Function
	
	.GLOBAL gUnknown_086F278C
gUnknown_086F278C:
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
	.4byte 0x00000010 @ Unknown Flags 1
	.4byte 0x00000000 @ Unknown Flags 2
	.4byte sub_08047D14 @ Sprite Function
	
	.GLOBAL gUnknown_086F27B4
gUnknown_086F27B4:
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
	.4byte 0x00000010 @ Unknown Flags 1
	.4byte 0x00000000 @ Unknown Flags 2
	.4byte sub_08047D14 @ Sprite Function
	
	.GLOBAL gUnknown_086F27DC
gUnknown_086F27DC:
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	
	.GLOBAL gUnknown_086F27E2
gUnknown_086F27E2:
	.2byte 0xFFFF
	.2byte 0xFFFF
	.2byte 0xFFFF
	
	.GLOBAL gUnknown_086F27E8
gUnknown_086F27E8:
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	
	.GLOBAL gUnknown_086F27EE
gUnknown_086F27EE:
	.2byte 0xFF00
	.2byte 0xFF00
	.2byte 0xFF00
	
	.GLOBAL gUnknown_086F27F4
gUnknown_086F27F4:
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	
	.GLOBAL gUnknown_086F2886
gUnknown_086F2886:
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0100
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000

	
	.GLOBAL gUnknown_086F2918
gUnknown_086F2918:
	.byte 0x00 @ Number Actions This Sprite Action Can Do
	.byte 0x20
	.byte 0x20
	.byte 0x07 @ Sprite Animation Frames
	.2byte 0x0200
	.byte 0x00
	.byte 0x00
	.4byte 0x00D40000 @ Unknown flags
	.4byte 0x0000C000 @ Unknown flags 2
	.byte 0x00
	.byte 0x00
	.byte 0x02
	.byte 0x01
	.2byte 0x0000
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ Sprite X Velocity Animation
	.4byte 0x00000000 @ Sprite Y Velocity Animation
	.4byte 0x00000000 @ Hitbox Adjustment
	.4byte 0x00000000 @ Sprite Action Data

	.GLOBAL gUnknown_086F2940
gUnknown_086F2940:
	.byte 0x01 @ Number Actions This Sprite Action Can Do
	.byte 0x20
	.byte 0x20
	.byte 0x07 @ Sprite Animation Frames
	.2byte 0x0200
	.byte 0x00
	.byte 0x00
	.4byte 0x00F40000 @ Unknown flags
	.4byte 0x0000C000 @ Unknown flags 2
	.byte 0x00
	.byte 0x02
	.byte 0x02
	.byte 0x01
	.2byte 0x0003
	.byte 0x00
	.byte 0x00
	.4byte gUnknown_086F27DC @ Sprite X Velocity Animation
	.4byte gUnknown_086F27E2 @ Sprite Y Velocity Animation
	.4byte 0x00000000 @ Hitbox Adjustment
	.4byte gUnknown_086F26C4 @ Sprite Action Data

	.GLOBAL gUnknown_086F2968
gUnknown_086F2968:
	.byte 0x02 @ Number Actions This Sprite Action Can Do
	.byte 0x20
	.byte 0x20
	.byte 0x18 @ Sprite Animation Frames
	.2byte 0x0400
	.byte 0x00
	.byte 0x00
	.4byte 0x01D40000 @ Unknown flags
	.4byte 0x00008000 @ Unknown flags 2
	.byte 0x00
	.byte 0x00
	.byte 0x02
	.byte 0x01
	.2byte 0x0003
	.byte 0x00
	.byte 0x00
	.4byte gUnknown_086F27E8 @ Sprite X Velocity Animation
	.4byte gUnknown_086F27EE @ Sprite Y Velocity Animation
	.4byte gUnknown_086F26AC @ Hitbox Adjustment
	.4byte gUnknown_086F26EC @ Sprite Action Data

	.GLOBAL gUnknown_086F2990
gUnknown_086F2990:
	.byte 0x02 @ Number Actions This Sprite Action Can Do
	.byte 0x20
	.byte 0x20
	.byte 0x18 @ Sprite Animation Frames
	.2byte 0x0400
	.byte 0x00
	.byte 0x00
	.4byte 0x01D40000 @ Unknown flags
	.4byte 0x00008000 @ Unknown flags 2
	.byte 0x00
	.byte 0x02
	.byte 0x02
	.byte 0x01
	.2byte 0x0049
	.byte 0x00
	.byte 0x00
	.4byte gUnknown_086F27F4 @ Sprite X Velocity Animation
	.4byte gUnknown_086F2886 @ Sprite Y Velocity Animation
	.4byte gUnknown_086F26B4 @ Hitbox Adjustment
	.4byte gUnknown_086F273C @ Sprite Action Data

	.GLOBAL gUnknown_086F29B8
gUnknown_086F29B8:
	.byte 0x02 @ Number Actions This Sprite Action Can Do
	.byte 0x20
	.byte 0x20
	.byte 0x09 @ Sprite Animation Frames
	.2byte 0x0400
	.byte 0x00
	.byte 0x00
	.4byte 0x04940000 @ Unknown flags
	.4byte 0x00008000 @ Unknown flags 2
	.byte 0x00
	.byte 0x02
	.byte 0x00
	.byte 0x01
	.2byte 0x0000
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ Sprite X Velocity Animation
	.4byte 0x00000000 @ Sprite Y Velocity Animation
	.4byte gUnknown_086F26BC @ Hitbox Adjustment
	.4byte gUnknown_086F278C @ Sprite Action Data
	
	.GLOBAL gHammerSpriteTable @ gUnknown_086F29E0
gHammerSpriteTable:
	.4byte gUnknown_086F2918 @ Sprite Action Data
	.4byte gUnknown_082C36C4 @ Sprite Animation
	.4byte gUnknown_082C37C0 @ Sprite OAM
	.4byte gUnknown_082C37C8 @ Sprite Graphics
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte gUnknown_086F2940 @ Sprite Action Data
	.4byte gUnknown_082C36C4 @ Sprite Animation
	.4byte gUnknown_082C37C0 @ Sprite OAM
	.4byte gUnknown_082C37C8 @ Sprite Graphics
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte gUnknown_086F2968 @ Sprite Action Data
	.4byte gUnknown_082C2F5C @ Sprite Animation
	.4byte gUnknown_082C32BC @ Sprite OAM
	.4byte gUnknown_082C32C4 @ Sprite Graphics
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte gUnknown_086F2990 @ Sprite Action Data
	.4byte gUnknown_082C2F5C @ Sprite Animation
	.4byte gUnknown_082C32BC @ Sprite OAM
	.4byte gUnknown_082C32C4 @ Sprite Graphics
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte gUnknown_086F29B8 @ Sprite Action Data
	.4byte gUnknown_082C45C8 @ Sprite Animation
	.4byte gUnknown_082C470C @ Sprite OAM
	.4byte gUnknown_082C4714 @ Sprite Graphics
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
