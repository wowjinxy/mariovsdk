	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ Something mini mario related
	.GLOBAL gUnknown_086F9124
gUnknown_086F9124:
	.INCBIN "baserom.gba", 0x6f9124, 0x6F9150-0x6f9124
	
	.GLOBAL gUnknown_086F9150
gUnknown_086F9150:
	.INCBIN "baserom.gba", 0x6F9150, 0x6f9168-0x6F9150

	@ Trashbin (Yellow Switch) related
	.GLOBAL gUnknown_086F9168
gUnknown_086F9168:
	.INCBIN "baserom.gba", 0x6f9168, 0x6FB230-0x6f9168
	
	.GLOBAL gUnknown_086FB230
gUnknown_086FB230:
	.INCBIN "baserom.gba", 0x6FB230, 0x6fb5a8-0x6FB230

	@ Trashbin (Blue Switch) related
	.GLOBAL gUnknown_086FB5A8
gUnknown_086FB5A8:
	.INCBIN "baserom.gba", 0x6fb5a8, 0x6FD670-0x6fb5a8
	
	.GLOBAL gUnknown_086FD670
gUnknown_086FD670:
	.INCBIN "baserom.gba", 0x6FD670, 0x6fd9e8-0x6FD670	
	
	@ Trashbin (Red Switch) related
	.GLOBAL gUnknown_086FD9E8
gUnknown_086FD9E8:
	.INCBIN "baserom.gba", 0x6fd9e8, 0x6FFAD8-0x6fd9e8
	
	.GLOBAL gUnknown_086FFAD8
gUnknown_086FFAD8:
	.INCBIN "baserom.gba", 0x6FFAD8, 0x6ffe50-0x6FFAD8

	@ Toy chest related
	.GLOBAL gUnknown_086FFE50
gUnknown_086FFE50:
	.INCBIN "baserom.gba", 0x6ffe50, 0x7001C0-0x6ffe50
	
	.GLOBAL gUnknown_087001C0
gUnknown_087001C0:
	.INCBIN "baserom.gba", 0x7001C0, 0x700298-0x7001C0	
	
	@ Mini Mario Key related
	.GLOBAL gUnknown_08700298
gUnknown_08700298:
	.INCBIN "baserom.gba", 0x700298, 0x70043c-0x700298
	
	.GLOBAL gUnknown_0870043C
gUnknown_0870043C:
	.INCBIN "baserom.gba", 0x70043C, 0x7004b4-0x70043C	
	
	@ Unused Fruit thing related
	.GLOBAL gUnknown_087004B4
gUnknown_087004B4:
	.INCBIN "baserom.gba", 0x7004b4, 0x7006A0-0x7004b4
	
	.GLOBAL gUnknown_087006A0
gUnknown_087006A0:
	.INCBIN "baserom.gba", 0x7006A0, 0x700718-0x7006A0	
	
	@ Key related
	.GLOBAL gUnknown_08700718
gUnknown_08700718:
	.INCBIN "baserom.gba", 0x700718, 0x70660C-0x700718
	
	.GLOBAL gUnknown_0870660C
gUnknown_0870660C:
	.INCBIN "baserom.gba", 0x70660C, 0x706bc4-0x70660C	
	
	@ Something mini mario related (again)
	.GLOBAL gUnknown_08706BC4
gUnknown_08706BC4:
	.INCBIN "baserom.gba", 0x706bc4, 0x706BF0-0x706bc4
	
	.GLOBAL gUnknown_08706BF0
gUnknown_08706BF0:
	.INCBIN "baserom.gba", 0x706BF0, 0x706c08-0x706BF0	
	
	@ Plus worlds key door related
	.GLOBAL gUnknown_08706C08
gUnknown_08706C08:
	.INCBIN "baserom.gba", 0x706c08, 0x706EA0-0x706c08
	
	.GLOBAL gUnknown_08706EA0
gUnknown_08706EA0:
	.INCBIN "baserom.gba", 0x706EA0, 0x706f60-0x706EA0

	@ Tutorial B to skip related
	.GLOBAL gUnknown_08706f60
gUnknown_08706f60:
	.INCBIN "baserom.gba", 0x706f60, 0x706FB0-0x706f60
	
	.GLOBAL gUnknown_08706FB0
gUnknown_08706FB0:
	.INCBIN "baserom.gba", 0x706FB0, 0x706FC8-0x706FB0

	.GLOBAL gUnknown_08706FC8 @ Common sprite tables
gUnknown_08706FC8:
	.4byte gMarioSpriteTable @ Sprite Table
	.2byte 0x0000
	.byte 0x0D @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 649 @ Number of Sprite Action States
	.byte 0x00
	.byte 0x00
	.byte 0x08
	.byte 0x01
	.byte 0x01
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0900 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0B00 @ hitbox left side offset
	.2byte 0x1500 @ hitbox right side offset
	.2byte 0x0680
	.2byte 0x2000
	.2byte 0x0000
	.2byte 0x0000

	.4byte gHammerSpriteTable @ Sprite Table
	.2byte 0x0004
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 5 @ Number of Sprite Action States
	.byte 0x02
	.byte 0x00
	.byte 0x07
	.byte 0x01
	.byte 0x03
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0800 @ hitbox top offset
	.2byte 0x1E00 @ hitbox bottom offset
	.2byte 0x0B00 @ hitbox left side offset
	.2byte 0x1700 @ hitbox right side offset
	.2byte 0x0680
	.2byte 0x1E00
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_086F2BE8 @ Sprite Table
	.2byte 0x0002
	.byte 0x0D @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 5 @ Number of Sprite Action States
	.byte 0x3F
	.byte 0x00
	.byte 0x08
	.byte 0x02
	.byte 0x01
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0600 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x1000 @ hitbox left side offset
	.2byte 0x3000 @ hitbox right side offset
	.2byte 0x1000
	.2byte 0x2000
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_086F8A8C @ Sprite Table
	.2byte 0x0005
	.byte 0x0F @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 66 @ Number of Sprite Action States
	.byte 0x06
	.byte 0x00
	.byte 0x08
	.byte 0x03
	.byte 0x08
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0D00 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0900 @ hitbox left side offset
	.2byte 0x1800 @ hitbox right side offset
	.2byte 0x0880
	.2byte 0x2000
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnusedHelpBubbleSpriteTable @ Sprite Table
	.2byte 0x0001
	.byte 0x00 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 1 @ Number of Sprite Action States
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x0100 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x0100 @ hitbox right side offset
	.2byte 0x0080
	.2byte 0x0100
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_086F9150 @ Sprite Table
	.2byte 0x0007
	.byte 0x0F @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 1 @ Number of Sprite Action States
	.byte 0x07
	.byte 0x00
	.byte 0x08
	.byte 0x04
	.byte 0x06
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0300 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0400 @ hitbox left side offset
	.2byte 0x0D00 @ hitbox right side offset
	.2byte 0x0480
	.2byte 0x1000
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_086FB230 @ Sprite Table
	.2byte 0x0010
	.byte 0x0A @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 37 @ Number of Sprite Action States
	.byte 0x12
	.byte 0x00
	.byte 0x08
	.byte 0x06
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1200 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0F00 @ hitbox right side offset
	.2byte 0x0800
	.2byte 0x2000
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_086FD670 @ Sprite Table
	.2byte 0x000F
	.byte 0x09 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 37 @ Number of Sprite Action States
	.byte 0x12
	.byte 0x00
	.byte 0x08
	.byte 0x07
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1200 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0F00 @ hitbox right side offset
	.2byte 0x0800
	.2byte 0x2000
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_086FFAD8 @ Sprite Table
	.2byte 0x000E
	.byte 0x08 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 37 @ Number of Sprite Action States
	.byte 0x12
	.byte 0x00
	.byte 0x08
	.byte 0x08
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1200 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0F00 @ hitbox right side offset
	.2byte 0x0800
	.2byte 0x2000
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_087001C0 @ Sprite Table
	.2byte 0x0008
	.byte 0x0B @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 9 @ Number of Sprite Action States
	.byte 0x1C
	.byte 0x00
	.byte 0x08
	.byte 0x09
	.byte 0x01
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x1200 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x2000 @ hitbox right side offset
	.2byte 0x1000
	.2byte 0x2000
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_0870043C @ Sprite Table
	.2byte 0x0011
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 5 @ Number of Sprite Action States
	.byte 0x1E
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0F00 @ hitbox right side offset
	.2byte 0x0700
	.2byte 0x1000
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_087006A0 @ Sprite Table
	.2byte 0x0013
	.byte 0x0C @ Palette line used
	.byte 0x00
	.2byte 0x0003
	.2byte 5 @ Number of Sprite Action States
	.byte 0x14
	.byte 0x00
	.byte 0x08
	.byte 0x0B
	.byte 0x08
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0500 @ hitbox top offset
	.2byte 0x0D00 @ hitbox bottom offset
	.2byte 0x0400 @ hitbox left side offset
	.2byte 0x0D00 @ hitbox right side offset
	.2byte 0x0500
	.2byte 0x0D00
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_0870660C @ Sprite Table
	.2byte 0x0012
	.byte 0x02 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 61 @ Number of Sprite Action States
	.byte 0x06
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0200 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0200 @ hitbox left side offset
	.2byte 0x0F00 @ hitbox right side offset
	.2byte 0x0700
	.2byte 0x1000
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_08706BF0 @ Sprite Table
	.2byte 0x0009
	.byte 0x0F @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 1 @ Number of Sprite Action States
	.byte 0x07
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0300 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0400 @ hitbox left side offset
	.2byte 0x0D00 @ hitbox right side offset
	.2byte 0x0480
	.2byte 0x1000
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_08706EA0 @ Sprite Table
	.2byte 0x0017
	.byte 0x0D @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 8 @ Number of Sprite Action States
	.byte 0x3F
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0600 @ hitbox top offset
	.2byte 0x2000 @ hitbox bottom offset
	.2byte 0x1000 @ hitbox left side offset
	.2byte 0x3000 @ hitbox right side offset
	.2byte 0x1000
	.2byte 0x2000
	.2byte 0x0000
	.2byte 0x0000

	.4byte gUnknown_08706FB0 @ Sprite Table
	.2byte 0x0031
	.byte 0x06 @ Palette line used
	.byte 0x00
	.2byte 0x0000
	.2byte 1 @ Number of Sprite Action States
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.2byte 0x0000 @ hitbox top offset
	.2byte 0x1000 @ hitbox bottom offset
	.2byte 0x0000 @ hitbox left side offset
	.2byte 0x2000 @ hitbox right side offset
	.2byte 0x1000
	.2byte 0x1000
	.2byte 0x0000
	.2byte 0x0000
	
	.INCBIN "baserom.gba", 0x707208, 0x707408-0x707208  @ unused palette
	
	
