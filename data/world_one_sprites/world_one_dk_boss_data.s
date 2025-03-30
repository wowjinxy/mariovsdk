	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_0865FF70
gUnknown_0865FF70:
	.INCBIN "baserom.gba", 0x65FF70, 0x6600D8-0x65FF70

	.GLOBAL gUnknown_086600D8
gUnknown_086600D8:
	.INCBIN "baserom.gba", 0x6600D8, 0x660118-0x6600D8

	.GLOBAL gUnknown_08660118
gUnknown_08660118:
	.INCBIN "baserom.gba", 0x660118, 0x660188-0x660118

	.GLOBAL gUnknown_08660188
gUnknown_08660188:
	.INCBIN "baserom.gba", 0x660188, 0x660228-0x660188

	.GLOBAL gUnknown_08660228
gUnknown_08660228:
	.INCBIN "baserom.gba", 0x660228, 0x6602C0-0x660228

	.GLOBAL gUnknown_086602C0
gUnknown_086602C0:
	.INCBIN "baserom.gba", 0x6602C0, 0x660310-0x6602C0

	.GLOBAL gUnknown_08660310
gUnknown_08660310:
	.INCBIN "baserom.gba", 0x660310, 0x660380-0x660310

	.GLOBAL gUnknown_08660380
gUnknown_08660380:
	.INCBIN "baserom.gba", 0x660380, 0x660420-0x660380

	.GLOBAL gUnknown_08660420
gUnknown_08660420:
	.INCBIN "baserom.gba", 0x660420, 0x6604B8-0x660420

	.GLOBAL gUnknown_086604B8
gUnknown_086604B8:
	.4byte gUnknown_03001C50
	.4byte gUnknown_0815FE34 @ Sprite Animation
	.4byte gUnknown_0815FFE4 @ Sprite OAM
	.4byte gUnknown_0815FFEC @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0C
	.byte 0x40
	.byte 0x20
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_0805914C

	.4byte gUnknown_03001C50
	.4byte gUnknown_08167938 @ Sprite Animation
	.4byte gUnknown_0816795C @ Sprite OAM
	.4byte gUnknown_08167964 @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x01
	.byte 0x40
	.byte 0x20
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_080576B8

	.4byte gUnknown_03001C50
	.4byte gUnknown_08168164 @ Sprite Animation
	.4byte gUnknown_08168554 @ Sprite OAM
	.4byte gUnknown_0816855C @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x1C
	.byte 0x40
	.byte 0x40
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_080576B8

	.4byte gUnknown_03001C50
	.4byte gUnknown_0815FE34 @ Sprite Animation
	.4byte gUnknown_0815FFE4 @ Sprite OAM
	.4byte gUnknown_0815FFEC @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0C
	.byte 0x40
	.byte 0x20
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_080576B8

	.4byte gUnknown_03001C50
	.4byte gUnknown_0815FE34 @ Sprite Animation
	.4byte gUnknown_0815FFE4 @ Sprite OAM
	.4byte gUnknown_0815FFEC @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0C
	.byte 0x40
	.byte 0x20
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_080591B0

	.4byte gUnknown_03001C50
	.4byte gUnknown_082380DC @ Sprite Animation
	.4byte gUnknown_082382D4 @ Sprite OAM
	.4byte gUnknown_082382DC @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0E
	.byte 0x40
	.byte 0x20
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_080579B8

	.4byte gUnknown_03001C50
	.4byte gUnknown_08230EDC @ Sprite Animation
	.4byte gUnknown_082310D4 @ Sprite OAM
	.4byte gUnknown_082310DC @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0E
	.byte 0x40
	.byte 0x20
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_080579B8

	.4byte gUnknown_03001C50
	.4byte gUnknown_082380DC @ Sprite Animation
	.4byte gUnknown_082382D4 @ Sprite OAM
	.4byte gUnknown_082382DC @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0E
	.byte 0x40
	.byte 0x20
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_080579B8

	.4byte gUnknown_03001C50
	.4byte gUnknown_081B8F80 @ Sprite Animation
	.4byte gUnknown_081B90A0 @ Sprite OAM
	.4byte gUnknown_081B90A8 @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x08
	.byte 0x40
	.byte 0x20
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08057A58

	.4byte gUnknown_03001C50
	.4byte gUnknown_081BD0A8 @ Sprite Animation
	.4byte gUnknown_081BD1EC @ Sprite OAM
	.4byte gUnknown_081BD1F4 @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x09
	.byte 0x40
	.byte 0x20
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_080591E0

	.4byte gUnknown_03001C50
	.4byte gUnknown_08167938 @ Sprite Animation
	.4byte gUnknown_0816795C @ Sprite OAM
	.4byte gUnknown_08167964 @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x01
	.byte 0x40
	.byte 0x20
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_0805927C

	.4byte gUnknown_03001C50
	.4byte gUnknown_08168164 @ Sprite Animation
	.4byte gUnknown_08168554 @ Sprite OAM
	.4byte gUnknown_0816855C @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x1C
	.byte 0x40
	.byte 0x40
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08059148

	.4byte gUnknown_03001C50
	.4byte gUnknown_08167938 @ Sprite Animation
	.4byte gUnknown_0816795C @ Sprite OAM
	.4byte gUnknown_08167964 @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x01
	.byte 0x40
	.byte 0x20
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_080592AC

	.4byte gUnknown_03001C50
	.4byte gUnknown_08168164 @ Sprite Animation
	.4byte gUnknown_08168554 @ Sprite OAM
	.4byte gUnknown_0816855C @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x1C
	.byte 0x40
	.byte 0x40
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_080592DC

	.4byte gUnknown_03001C50
	.4byte gUnknown_08150B48 @ Sprite Animation
	.4byte gUnknown_08150BD8 @ Sprite OAM
	.4byte gUnknown_08150BE0 @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x04
	.byte 0x20
	.byte 0x40
	.byte 0x00
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08057B78

	.4byte gUnknown_03001C50
	.4byte gUnknown_08152BE0 @ Sprite Animation
	.4byte gfxDKHurtOAM @ Sprite OAM
	.4byte gfxDKHurt8bpp @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x28
	.byte 0x40
	.byte 0x20
	.byte 0x00
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08057B78

	.4byte gUnknown_03001C50
	.4byte gUnknown_0813A120 @ Sprite Animation
	.4byte gUnknown_0813A168 @ Sprite OAM
	.4byte gUnknown_0813A170 @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x02
	.byte 0x20
	.byte 0x40
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08057C40

	.4byte gUnknown_03001C50
	.4byte gUnknown_0813B170 @ Sprite Animation
	.4byte gUnknown_0813B3B0 @ Sprite OAM
	.4byte gUnknown_0813B3B8 @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x10
	.byte 0x40
	.byte 0x20
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08057C40

	.4byte gUnknown_03001C50
	.4byte gUnknown_08224190 @ Sprite Animation
	.4byte gUnknown_08224514 @ Sprite OAM
	.4byte gUnknown_0822451C @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x19
	.byte 0x40
	.byte 0x20
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08057C40

	.4byte gUnknown_03001C50
	.4byte gUnknown_08227D1C @ Sprite Animation
	.4byte gUnknown_08227D40 @ Sprite OAM
	.4byte gUnknown_08227D48 @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x01
	.byte 0x40
	.byte 0x40
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08057C40

	.4byte gUnknown_03001C50
	.4byte gUnknown_08228D48 @ Sprite Animation
	.4byte gUnknown_08228ED4 @ Sprite OAM
	.4byte gUnknown_08228EDC @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x0B
	.byte 0x40
	.byte 0x40
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_0805923C

	.4byte gUnknown_03001C50
	.4byte gUnknown_0813EBB8 @ Sprite Animation
	.4byte gUnknown_0813EC00 @ Sprite OAM
	.4byte gUnknown_0813EC08 @ Sprite Graphics
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x02
	.byte 0x40
	.byte 0x20
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08057D84

	.4byte gUnknown_03001C50
	.4byte gUnknown_0813FC08 @ Sprite Animation
	.4byte gUnknown_0813FE6C @ Sprite OAM
	.4byte gUnknown_0813FE74 @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x11
	.byte 0x40
	.byte 0x40
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08057D84
