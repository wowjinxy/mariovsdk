	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_087082DC
gUnknown_087082DC:
	.INCBIN "baserom.gba", 0x7082dc, 0x7140B8-0x7082dc
	
	.GLOBAL gUnknown_087140B8
gUnknown_087140B8:
	.4byte 0x0870832C @ Sprite Table
	.2byte 0x000B @ Sprite ID
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

	.4byte 0x0870CF98 @ Sprite Table
	.2byte 0x0064 @ Sprite ID
	.byte 0x0C @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0035 @ Number Sprite Action States
	.byte 0x03
	.byte 0x00
	.byte 0x06
	.byte 0x01
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x012C
	.2byte 0x0000

	.4byte 0x0870FD20 @ Sprite Table
	.2byte 0x0096 @ Sprite ID
	.byte 0x05 @ Palette line used
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

	.4byte 0x08710494 @ Sprite Table
	.2byte 0x0065 @ Sprite ID
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0006 @ Number Sprite Action States
	.byte 0x05
	.byte 0x00
	.byte 0x06
	.byte 0x02
	.byte 0x04 @ Number of this sprite that can exist in level editor
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

	.4byte 0x087105C4 @ Sprite Table
	.2byte 0x0097 @ Sprite ID
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

	.4byte 0x0871092C @ Sprite Table
	.2byte 0x0067 @ Sprite ID
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

	.4byte 0x08711894 @ Sprite Table
	.2byte 0x0068 @ Sprite ID
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0011 @ Number Sprite Action States
	.byte 0x0B
	.byte 0x00
	.byte 0x06
	.byte 0x04
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1600 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0600 @ hitbox left side offset
	.2byte 0x0C00 @ hitbox right side offset
	.2byte 0x0380 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x012C
	.2byte 0x0000

	.4byte 0x08711C88 @ Sprite Table
	.2byte 0x0098 @ Sprite ID
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

	.4byte 0x08713520 @ Sprite Table
	.2byte 0x0069 @ Sprite ID
	.byte 0x05 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0018 @ Number Sprite Action States
	.byte 0x0C
	.byte 0x00
	.byte 0x06
	.byte 0x06
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1000 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0B00 @ hitbox left side offset
	.2byte 0x1700 @ hitbox right side offset
	.2byte 0x0900 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x012C
	.2byte 0x0000

	.4byte 0x08713988 @ Sprite Table
	.2byte 0x009A @ Sprite ID
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

	.4byte 0x08713AA0 @ Sprite Table
	.2byte 0x009B @ Sprite ID
	.byte 0x02 @ Palette line used
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
	.2byte 0x0300 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0A00 @ hitbox left side offset
	.2byte 0x1600 @ hitbox right side offset
	.2byte 0x0680 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0032
	.2byte 0x0000

	.4byte 0x08713B40 @ Sprite Table
	.2byte 0x009C @ Sprite ID
	.byte 0x05 @ Palette line used
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
	.2byte 0x0500 @ hitbox top offset
	.2byte 0x0C00 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0600 @ Unknown
	.2byte 0x0C00 @ Unknown
	.2byte 0x0032
	.2byte 0x0000

	.4byte 0x08713BE0 @ Sprite Table
	.2byte 0x009D @ Sprite ID
	.byte 0x05 @ Palette line used
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
	.2byte 0x0300 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0A00 @ hitbox left side offset
	.2byte 0x1600 @ hitbox right side offset
	.2byte 0x0680 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0032
	.2byte 0x0000

	.4byte 0x08713DB0 @ Sprite Table
	.2byte 0x0077 @ Sprite ID
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0004 @ Number Sprite Action States
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0600 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0500 @ hitbox left side offset
	.2byte 0x1D00 @ hitbox right side offset
	.2byte 0x1000 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x08714040 @ Sprite Table
	.2byte 0x00B9 @ Sprite ID
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

	
	@ unused palette
	.INCBIN "baserom.gba", 0x7142D4, 0x7144D4-0x7142D4
