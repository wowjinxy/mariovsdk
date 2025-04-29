	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ World 4 sprites
	.GLOBAL gUnknown_08732C00
gUnknown_08732C00:
	.INCBIN "baserom.gba", 0x732c00, 0x75A154-0x732c00

	.GLOBAL gUnknown_0875A154
gUnknown_0875A154:
	.4byte 0x08732C50 @ Sprite Table
	.2byte 0x0014
	.byte 0x00 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0001 @ Number Sprite Action States
	.byte 0x10
	.byte 0x00
	.byte 0x08
	.byte 0x05
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

	.4byte 0x08732D08 @ Sprite Table
	.2byte 0x0097
	.byte 0x0A @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0002 @ Number Sprite Action States
	.byte 0x09
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

	.4byte 0x08732F94 @ Sprite Table
	.2byte 0x0098
	.byte 0x0A @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0006 @ Number Sprite Action States
	.byte 0x0E
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x03 @ Number of this sprite that can exist in level editor
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

	.4byte 0x0873324C @ Sprite Table
	.2byte 0x009A
	.byte 0x0B @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0006 @ Number Sprite Action States
	.byte 0x0F
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0200 @ hitbox top offset
	.2byte 0x0800 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x2000 @ hitbox right side offset
	.2byte 0x1000 @ Unknown
	.2byte 0x0800 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x087337A4 @ Sprite Table
	.2byte 0x0079
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0008 @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x09
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0200 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0F00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08734DBC @ Sprite Table
	.2byte 0x007A
	.byte 0x07 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0015 @ Number Sprite Action States
	.byte 0x17
	.byte 0x00
	.byte 0x06
	.byte 0x0A
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0300 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x1000 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08735004 @ Sprite Table
	.2byte 0x00B1
	.byte 0x08 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0001 @ Number Sprite Action States
	.byte 0x11
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x087393B0 @ Sprite Table
	.2byte 0x00B2
	.byte 0x0C @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0039 @ Number Sprite Action States
	.byte 0x03
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0064
	.2byte 0x0000

	.4byte 0x08739958 @ Sprite Table
	.2byte 0x00B3
	.byte 0x09 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0001 @ Number Sprite Action States
	.byte 0x11
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0873DC8C @ Sprite Table
	.2byte 0x00B4
	.byte 0x07 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0039 @ Number Sprite Action States
	.byte 0x03
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0064
	.2byte 0x0000

	.4byte 0x0873E234 @ Sprite Table
	.2byte 0x00B5
	.byte 0x0A @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0001 @ Number Sprite Action States
	.byte 0x11
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08742428 @ Sprite Table
	.2byte 0x00B6
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0039 @ Number Sprite Action States
	.byte 0x03
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0064
	.2byte 0x0000

	.4byte 0x087429D0 @ Sprite Table
	.2byte 0x00B7
	.byte 0x04 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0001 @ Number Sprite Action States
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
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

	.4byte 0x08742D1C @ Sprite Table
	.2byte 0x007B
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0009 @ Number Sprite Action States
	.byte 0x04
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0C00 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x0800 @ hitbox right side offset
	.2byte 0x0400 @ Unknown
	.2byte 0x1400 @ Unknown
	.2byte 0x0064
	.2byte 0x0000

	.4byte 0x087430F8 @ Sprite Table
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

	.4byte 0x08749740 @ Sprite Table
	.2byte 0x007D
	.byte 0x08 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0041 @ Number Sprite Action States
	.byte 0x17
	.byte 0x00
	.byte 0x06
	.byte 0x0C
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0400 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08750420 @ Sprite Table
	.2byte 0x007E
	.byte 0x09 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0041 @ Number Sprite Action States
	.byte 0x17
	.byte 0x00
	.byte 0x06
	.byte 0x0D
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0400 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08756390 @ Sprite Table
	.2byte 0x007F
	.byte 0x0A @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0041 @ Number Sprite Action States
	.byte 0x17
	.byte 0x00
	.byte 0x06
	.byte 0x0E
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0400 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08756FA8 @ Sprite Table
	.2byte 0x0080
	.byte 0x04 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000C @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x0B
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0400 @ hitbox top offset
	.2byte 0x0D00 @ hitbox bottom offset
	.2byte 0x0400 @ hitbox left side offset
	.2byte 0x0D00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x087574AC @ Sprite Table
	.2byte 0x0065
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0006 @ Number Sprite Action States
	.byte 0x05
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0500 @ hitbox left side offset
	.2byte 0x0C00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x012C
	.2byte 0x0000

	.4byte 0x0875758C @ Sprite Table
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

	.4byte 0x08757A9C @ Sprite Table
	.2byte 0x0078
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000A @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x0F
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0700 @ hitbox left side offset
	.2byte 0x1A00 @ hitbox right side offset
	.2byte 0x1000 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08758084 @ Sprite Table
	.2byte 0x0081
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000A @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x10
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0700 @ hitbox left side offset
	.2byte 0x1A00 @ hitbox right side offset
	.2byte 0x1000 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0875866C @ Sprite Table
	.2byte 0x0082
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000A @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x11
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0700 @ hitbox left side offset
	.2byte 0x1A00 @ hitbox right side offset
	.2byte 0x1000 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08758CCC @ Sprite Table
	.2byte 0x0083
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000A @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x12
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0700 @ hitbox left side offset
	.2byte 0x1A00 @ hitbox right side offset
	.2byte 0x1000 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0875932C @ Sprite Table
	.2byte 0x0084
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000A @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x13
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0700 @ hitbox left side offset
	.2byte 0x1A00 @ hitbox right side offset
	.2byte 0x1000 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0875998C @ Sprite Table
	.2byte 0x0085
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000A @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x14
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0700 @ hitbox left side offset
	.2byte 0x1A00 @ hitbox right side offset
	.2byte 0x1000 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0875A064 @ Sprite Table
	.2byte 0x0086
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000A @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x15
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0700 @ hitbox left side offset
	.2byte 0x1A00 @ hitbox right side offset
	.2byte 0x1000 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000
	
	@ Unused palette
	.INCBIN "baserom.gba", 0x75a544, 0x75a744-0x75a544
