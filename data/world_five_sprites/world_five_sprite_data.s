	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ World 5 sprites
	.GLOBAL gUnknown_0875A744
gUnknown_0875A744:
	.INCBIN "baserom.gba", 0x75a744, 0x771D24-0x75a744

	.GLOBAL gUnknown_08771D24
gUnknown_08771D24:
	.4byte 0x0875A794 @ Sprite Table
	.2byte 0x0015
	.byte 0x00 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0001 @ Number Sprite Action States
	.byte 0x10
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0700 @ hitbox top offset
	.2byte 0x1600 @ hitbox bottom offset
	.2byte 0x0E00 @ hitbox left side offset
	.2byte 0x3200 @ hitbox right side offset
	.2byte 0x1900 @ Unknown
	.2byte 0x1800 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0875A9DC @ Sprite Table
	.2byte 0x00B9
	.byte 0x08 @ Palette line used
	.byte 0x00
	.2byte 0x0001
	.2byte 0x0005 @ Number Sprite Action States
	.byte 0x1F
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0400 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0400 @ hitbox left side offset
	.2byte 0x0D00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0875BFD4 @ Sprite Table
	.2byte 0x00BA
	.byte 0x05 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0011 @ Number Sprite Action States
	.byte 0x0B
	.byte 0x00
	.byte 0x06
	.byte 0x08
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0500 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x012C
	.2byte 0x0000

	.4byte 0x0875CAD4 @ Sprite Table
	.2byte 0x00BB
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0012 @ Number Sprite Action States
	.byte 0x18
	.byte 0x00
	.byte 0x06
	.byte 0x03
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0C00 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0A00 @ hitbox left side offset
	.2byte 0x1000 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x01F4
	.2byte 0x0000

	.4byte 0x08764A54 @ Sprite Table
	.2byte 0x00BC
	.byte 0x04 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0061 @ Number Sprite Action States
	.byte 0x03
	.byte 0x00
	.byte 0x06
	.byte 0x02
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0400 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08765858 @ Sprite Table
	.2byte 0x00BE
	.byte 0x04 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000C @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0400 @ hitbox top offset
	.2byte 0x0C00 @ hitbox bottom offset
	.2byte 0x0500 @ hitbox left side offset
	.2byte 0x0D00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08765EC8 @ Sprite Table
	.2byte 0x006D
	.byte 0x07 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000C @ Number Sprite Action States
	.byte 0x18
	.byte 0x00
	.byte 0x06
	.byte 0x04
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0D00 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0A00 @ hitbox left side offset
	.2byte 0x1700 @ hitbox right side offset
	.2byte 0x1000 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08766180 @ Sprite Table
	.2byte 0x0071
	.byte 0x08 @ Palette line used
	.byte 0x00
	.2byte 0x0002
	.2byte 0x0004 @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0300 @ hitbox top offset
	.2byte 0x0500 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0600 @ hitbox right side offset
	.2byte 0x0200 @ Unknown
	.2byte 0x0600 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08767208 @ Sprite Table
	.2byte 0x006C
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0012 @ Number Sprite Action States
	.byte 0x03
	.byte 0x00
	.byte 0x06
	.byte 0x06
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0F00 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0900 @ hitbox left side offset
	.2byte 0x1800 @ hitbox right side offset
	.2byte 0x0780 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x087677B8 @ Sprite Table
	.2byte 0x0073
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000B @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0F00 @ hitbox left side offset
	.2byte 0x1200 @ hitbox right side offset
	.2byte 0x0780 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08767AB8 @ Sprite Table
	.2byte 0x00BF
	.byte 0x06 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0006 @ Number Sprite Action States
	.byte 0x0E
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0200 @ hitbox top offset
	.2byte 0x0800 @ hitbox bottom offset
	.2byte 0x0500 @ hitbox left side offset
	.2byte 0x1C00 @ hitbox right side offset
	.2byte 0x0C00 @ Unknown
	.2byte 0x0800 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08770EC8 @ Sprite Table
	.2byte 0x00C0
	.byte 0x04 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0064 @ Number Sprite Action States
	.byte 0x03
	.byte 0x00
	.byte 0x06
	.byte 0x02
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0400 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08771B2C @ Sprite Table
	.2byte 0x007C
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0008 @ Number Sprite Action States
	.byte 0x17
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x1000 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08771C3C @ Sprite Table
	.2byte 0x00B8
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0001 @ Number Sprite Action States
	.byte 0x0E
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0200 @ hitbox top offset
	.2byte 0x0800 @ hitbox bottom offset
	.2byte 0x0500 @ hitbox left side offset
	.2byte 0x1C00 @ hitbox right side offset
	.2byte 0x0C00 @ Unknown
	.2byte 0x0800 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08771CF4 @ Sprite Table
	.2byte 0x00C1
	.byte 0x03 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0002 @ Number Sprite Action States
	.byte 0x1D
	.byte 0x00
	.byte 0x06
	.byte 0x02
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x2000 @ hitbox right side offset
	.2byte 0x1000 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000
	
	@ Unused palette
	.INCBIN "baserom.gba", 0x771f40, 0x772168-0x771f40
