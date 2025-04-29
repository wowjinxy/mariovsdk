	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ world 3 sprites
	.GLOBAL gUnknown_08723934
gUnknown_08723934:
	.INCBIN "baserom.gba", 0x723934, 0x7326E8-0x723934

	.GLOBAL gUnknown_087326E8
gUnknown_087326E8:
	.4byte 0x08723984 @ Sprite Table
	.2byte 0x000D
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

	.4byte 0x08724814 @ Sprite Table
	.2byte 0x0068
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0011 @ Number Sprite Action States
	.byte 0x0B
	.byte 0x00
	.byte 0x06
	.byte 0x02
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

	.4byte 0x08724C08 @ Sprite Table
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

	.4byte 0x08724E98 @ Sprite Table
	.2byte 0x00A4
	.byte 0x04 @ Palette line used
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

	.4byte 0x08725BE0 @ Sprite Table
	.2byte 0x0074
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000E @ Number Sprite Action States
	.byte 0x0B
	.byte 0x00
	.byte 0x06
	.byte 0x03
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0400 @ hitbox top offset
	.2byte 0x0C00 @ hitbox bottom offset
	.2byte 0x0500 @ hitbox left side offset
	.2byte 0x0C00 @ hitbox right side offset
	.2byte 0x0300 @ Unknown
	.2byte 0x0700 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x087268C0 @ Sprite Table
	.2byte 0x006E
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x001B @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0B00 @ hitbox top offset
	.2byte 0x1300 @ hitbox bottom offset
	.2byte 0x0B00 @ hitbox left side offset
	.2byte 0x1300 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x01F4
	.2byte 0x0000

	.4byte 0x087293D8 @ Sprite Table
	.2byte 0x0096
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0026 @ Number Sprite Action States
	.byte 0x04
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
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

	.4byte 0x08729808 @ Sprite Table
	.2byte 0x00A8
	.byte 0x07 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0002 @ Number Sprite Action States
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

	.4byte 0x08729B30 @ Sprite Table
	.2byte 0x00A9
	.byte 0x07 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0008 @ Number Sprite Action States
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

	.4byte 0x0872A084 @ Sprite Table
	.2byte 0x00AA
	.byte 0x07 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0009 @ Number Sprite Action States
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

	.4byte 0x0872A83C @ Sprite Table
	.2byte 0x0075
	.byte 0x05 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x000A @ Number Sprite Action States
	.byte 0x17
	.byte 0x00
	.byte 0x06
	.byte 0x04
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0700 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0872EE7C @ Sprite Table
	.2byte 0x0064
	.byte 0x0C @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0038 @ Number Sprite Action States
	.byte 0x03
	.byte 0x00
	.byte 0x06
	.byte 0x05
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

	.4byte 0x0872F5B0 @ Sprite Table
	.2byte 0x00AB
	.byte 0x07 @ Palette line used
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

	.4byte 0x0872F8C0 @ Sprite Table
	.2byte 0x0076
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0008 @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0900 @ hitbox top offset
	.2byte 0x0E00 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x1000 @ hitbox right side offset
	.2byte 0x0080 @ Unknown
	.2byte 0x0100 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0872F9FC @ Sprite Table
	.2byte 0x0072
	.byte 0x0E @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0001 @ Number Sprite Action States
	.byte 0x13
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0600 @ hitbox top offset
	.2byte 0x0C00 @ hitbox bottom offset
	.2byte 0x0600 @ hitbox left side offset
	.2byte 0x0A00 @ hitbox right side offset
	.2byte 0x0300 @ Unknown
	.2byte 0x0700 @ Unknown
	.2byte 0x0064
	.2byte 0x0000

	.4byte 0x0872FA64 @ Sprite Table
	.2byte 0x00AE
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0001 @ Number Sprite Action States
	.byte 0x19
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0900 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x0872FACC @ Sprite Table
	.2byte 0x00AF
	.byte 0x05 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0001 @ Number Sprite Action States
	.byte 0x19
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0900 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x1000 @ Unknown
	.2byte 0x0032
	.2byte 0x0000

	.4byte 0x08732000 @ Sprite Table
	.2byte 0x00B0
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x000B
	.2byte 0x0024 @ Number Sprite Action States
	.byte 0x1A
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1200 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x1000 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000

	.4byte 0x087323B0 @ Sprite Table
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

	.4byte 0x08732450 @ Sprite Table
	.2byte 0x009B
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

	.4byte 0x08732620 @ Sprite Table
	.2byte 0x0077
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

	.4byte 0x087326D0 @ Sprite Table
	.2byte 0x00CA
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 0x0001 @ Number Sprite Action States
	.byte 0x19
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00 @ Number of this sprite that can exist in level editor
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1100 @ hitbox top offset
	.2byte 0x1800 @ hitbox bottom offset
	.2byte 0x0300 @ hitbox left side offset
	.2byte 0x0E00 @ hitbox right side offset
	.2byte 0x0800 @ Unknown
	.2byte 0x2000 @ Unknown
	.2byte 0x0000
	.2byte 0x0000
	
	@ Unused palette
	.INCBIN "baserom.gba", 0x732a00, 0x732c00-0x732a00
