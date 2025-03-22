	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ Boss 2 sprites
	
	.INCBIN "baserom.gba", 0x7ACFE4, 0x7AFAA0-0x7ACFE4
	
	.GLOBAL gUnknown_087AFAA0
gUnknown_087AFAA0:
	.4byte gDKMechHeadTable @ Sprite Table
	.2byte 0x0019
	.byte 0x00 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 1 @ Number Sprite Action States
	.byte 0x10
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1100 @ hitbox top offset
	.2byte 0x4000 @ hitbox bottom offset
	.2byte 0x0900 @ hitbox left side offset
	.2byte 0x3800 @ hitbox right side offset
	.2byte 0x2000 @ Sprite offset
	.2byte 0x4000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte gDKMechLeftHandTable @ Sprite Table
	.2byte 0x0087
	.byte 0x00 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 1 @ Number Sprite Action States
	.byte 0x17
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x1D00 @ hitbox right side offset
	.2byte 0x1000 @ Sprite offset
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte gDKMechRightHandTable @ Sprite Table
	.2byte 0x0088
	.byte 0x00 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 1 @ Number Sprite Action States
	.byte 0x17
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x1D00 @ hitbox right side offset
	.2byte 0x1000 @ Sprite offset
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte gDKMechNoseCollisionTable @ Sprite Table
	.2byte 0x0026
	.byte 0x00 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 3 @ Number Sprite Action States
	.byte 0x12
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0200 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0700 @ hitbox left side offset
	.2byte 0x3900 @ hitbox right side offset
	.2byte 0x2080 @ Sprite offset
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte gFallingDumbellDKMech @ Sprite Table
	.2byte 0x009C
	.byte 0x05 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 1 @ Number Sprite Action States
	.byte 0x11
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0500 @ hitbox top offset
	.2byte 0x0C00 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0600 @ Sprite offset
	.2byte 0x0C00 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x087AD064 @ Sprite Table (Falling barrel)
	.2byte 0x00C9
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 1 @ Number Sprite Action States
	.byte 0x11
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1100 @ hitbox top offset
	.2byte 0x1800 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Sprite offset
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x087AF598 @ Sprite Table (Barrel)
	.2byte 0x00B0
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x000B
	.2byte 0x0024 @ Number Sprite Action States
	.byte 0x1A
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1200 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x1000 @ hitbox right side offset
	.2byte 0x0800 @ Sprite offset
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x087AF948 @ Sprite Table (Mini Mario)
	.2byte 0x0027
	.byte 0x0F @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 1 @ Number Sprite Action States
	.byte 0x1E
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x1000 @ hitbox right side offset
	.2byte 0x0800 @ Sprite offset
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x087AF9E8 @ Sprite Table (Bricks)
	.2byte 0x009B
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 1 @ Number Sprite Action States
	.byte 0x11
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0300 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0A00 @ hitbox left side offset
	.2byte 0x1600 @ hitbox right side offset
	.2byte 0x0680 @ Sprite offset
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x087AFA88 @ Sprite Table (Wheel Rim)
	.2byte 0x009D
	.byte 0x05 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 1 @ Number Sprite Action States
	.byte 0x11
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0300 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0A00 @ hitbox left side offset
	.2byte 0x1600 @ hitbox right side offset
	.2byte 0x0680 @ Sprite offset
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	@ Oddly, no unused palette, seems to be "gDKPlusLeftovers" located in "data4"
