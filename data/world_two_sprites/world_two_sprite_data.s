	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_087144D4
gUnknown_087144D4:
	.INCBIN "baserom.gba", 0x7144D4, 0x723440-0x7144D4

	.GLOBAL gUnknown_08723440
gUnknown_08723440:
	.4byte 0x08714524 @ Sprite Table
	.2byte 0x000C
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

	.4byte 0x087145DC @ Sprite Table
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

	.4byte 0x08714944 @ Sprite Table
	.2byte 0x0067
	.byte 0x03 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000A @ Number Sprite Action States
	.byte 0x0A
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0900 @ hitbox top offset
	.2byte 0x1700 @ hitbox bottom offset
	.2byte 0x0A00 @ hitbox left side offset
	.2byte 0x1800 @ hitbox right side offset
	.2byte 0x0980 @ Unknown
	.2byte 0x1A00 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08714C5C @ Sprite Table
	.2byte 0x00A2
	.byte 0x04 @ Palette line used
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

	.4byte 0x0871506C @ Sprite Table
	.2byte 0x00A3
	.byte 0x04 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0009 @ Number Sprite Action States
	.byte 0x0F
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x0800 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x2000 @ hitbox right side offset
	.2byte 0x1000 @ Unknown
	.2byte 0x0800 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0871616C @ Sprite Table
	.2byte 0x006C
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0012 @ Number Sprite Action States
	.byte 0x03
	.byte 0x00
	.byte 0x06
	.byte 0x09
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

	.4byte 0x0871686C @ Sprite Table
	.2byte 0x006D
	.byte 0x07 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000C @ Number Sprite Action States
	.byte 0x18
	.byte 0x00
	.byte 0x06
	.byte 0x02
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

	.4byte 0x0871758C @ Sprite Table
	.2byte 0x006E
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x001B @ Number Sprite Action States
	.byte 0x18
	.byte 0x00
	.byte 0x06
	.byte 0x03
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0C00 @ hitbox top offset
	.2byte 0x1400 @ hitbox bottom offset
	.2byte 0x0A00 @ hitbox left side offset
	.2byte 0x1900 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x01F4
	.2byte 0x0000

	.4byte 0x0871C410 @ Sprite Table
	.2byte 0x006F
	.byte 0x05 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0035 @ Number Sprite Action States
	.byte 0x03
	.byte 0x00
	.byte 0x06
	.byte 0x08
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0B00 @ hitbox left side offset
	.2byte 0x1700 @ hitbox right side offset
	.2byte 0x0880 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x012C
	.2byte 0x0000

	.4byte 0x0871E310 @ Sprite Table
	.2byte 0x0070
	.byte 0x07 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0025 @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x04
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0800 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0500 @ hitbox left side offset
	.2byte 0x0D00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x01F4
	.2byte 0x0000

	.4byte 0x0871E938 @ Sprite Table
	.2byte 0x00A5
	.byte 0x0C @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0006 @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x06
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0500 @ hitbox top offset
	.2byte 0x0D00 @ hitbox bottom offset
	.2byte 0x0500 @ hitbox left side offset
	.2byte 0x0D00 @ hitbox right side offset
	.2byte 0x0300 @ Unknown
	.2byte 0x0D00 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0871EC78 @ Sprite Table
	.2byte 0x00A6
	.byte 0x0C @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0006 @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x07
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0500 @ hitbox top offset
	.2byte 0x0D00 @ hitbox bottom offset
	.2byte 0x0500 @ hitbox left side offset
	.2byte 0x0D00 @ hitbox right side offset
	.2byte 0x0300 @ Unknown
	.2byte 0x0D00 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0871EEA0 @ Sprite Table
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

	.4byte 0x0871F06C @ Sprite Table
	.2byte 0x0072
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0001
	.2byte 0x0002 @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0200 @ hitbox top offset
	.2byte 0x0700 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0600 @ hitbox right side offset
	.2byte 0x0300 @ Unknown
	.2byte 0x0700 @ Unknown
	.2byte 0x0064
	.2byte 0x0000

	.4byte 0x0871F49C @ Sprite Table
	.2byte 0x0073
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000B @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x06
	.byte 0x0A
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

	.4byte 0x0871FABC @ Sprite Table
	.2byte 0x009E
	.byte 0x0C @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000E @ Number Sprite Action States
	.byte 0x15
	.byte 0x00
	.byte 0x06
	.byte 0x0B
	.byte 0x05 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0500 @ hitbox top offset
	.2byte 0x0D00 @ hitbox bottom offset
	.2byte 0x0500 @ hitbox left side offset
	.2byte 0x0D00 @ hitbox right side offset
	.2byte 0x0380 @ Unknown
	.2byte 0x0D00 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08720124 @ Sprite Table
	.2byte 0x009F
	.byte 0x0C @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000E @ Number Sprite Action States
	.byte 0x15
	.byte 0x00
	.byte 0x06
	.byte 0x0C
	.byte 0x05 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0500 @ hitbox top offset
	.2byte 0x0D00 @ hitbox bottom offset
	.2byte 0x0500 @ hitbox left side offset
	.2byte 0x0D00 @ hitbox right side offset
	.2byte 0x0380 @ Unknown
	.2byte 0x0D00 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08722B04 @ Sprite Table
	.2byte 0x0096
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0026 @ Number Sprite Action States
	.byte 0x04
	.byte 0x00
	.byte 0x07
	.byte 0x09
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1200 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0F00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08722EE4 @ Sprite Table
	.2byte 0x00A0
	.byte 0x0D @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0002 @ Number Sprite Action States
	.byte 0x20
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0700 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0F00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08723034 @ Sprite Table
	.2byte 0x00A1
	.byte 0x04 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0003 @ Number Sprite Action States
	.byte 0x12
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0600 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0F00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08723380 @ Sprite Table
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
	
	@ unused palette
	.INCBIN "baserom.gba", 0x723734, 0x723934-0x723734
