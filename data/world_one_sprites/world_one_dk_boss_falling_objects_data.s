	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_086609C0
gUnknown_086609C0:
	.2byte 0
	.2byte 0
	
	.GLOBAL gUnknown_086609C4
gUnknown_086609C4:
	.2byte -128
	.2byte -400
	
	.GLOBAL gUnknown_086609C8
gUnknown_086609C8:
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	.2byte 0x0090
	
	.GLOBAL gUnknown_08660A18
gUnknown_08660A18:
	.2byte 0x022E
	.2byte 0x0205
	.2byte 0x01DC
	.2byte 0x01B3
	.2byte 0x018A
	.2byte 0x0161
	.2byte 0x0139
	.2byte 0x0110
	.2byte 0x00E7
	.2byte 0x00BE
	.2byte 0x0095
	.2byte 0x006C
	.2byte 0x0043
	.2byte 0x001A
	.2byte 0xFFF2
	.2byte 0xFFC9
	.2byte 0xFFA0
	.2byte 0xFF77
	.2byte 0xFF4E
	.2byte 0xFF25
	.2byte 0xFEFC
	.2byte 0xFED3
	.2byte 0xFEAA
	.2byte 0xFE81
	.2byte 0xFE58
	.2byte 0xFE2F
	.2byte 0xFE06
	.2byte 0xFDDD
	.2byte 0xFDB4
	.2byte 0xFD8B
	.2byte 0xFD62
	.2byte 0xFD3A
	.2byte 0xFD11
	.2byte 0xFCE8
	.2byte 0xFCBF
	.2byte 0xFC96
	.2byte 0xFC80
	.2byte 0xFC80
	.2byte 0xFC80
	.2byte 0xFC80
	
	.GLOBAL gUnknown_08660A68
gUnknown_08660A68:
	.4byte 0x030003F8
	.4byte gUnknown_081295C4 @ Sprite Animation
	.4byte gUnknown_08129804 @ Sprite OAM
	.4byte gUnknown_0812980C @ Sprite Graphics
	.2byte 0x0100
	.2byte 0x0040
	.byte 0x08
	.byte 0x10
	.byte 0x20
	.byte 0x10
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
	.4byte sub_080588B8

	.4byte 0x030003F8
	.4byte gUnknown_08106234 @ Sprite Animation
	.4byte gUnknown_08106450 @ Sprite OAM
	.4byte gUnknown_08106458 @ Sprite Graphics
	.2byte 0x0080
	.2byte 0x0020
	.byte 0x04
	.byte 0x0F
	.byte 0x10
	.byte 0x10
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
	.4byte sub_080588B8

	.4byte 0x030003F8
	.4byte gUnknown_085FA118 @ Sprite Animation
	.4byte gUnknown_085FA358 @ Sprite OAM
	.4byte gUnknown_085FA360 @ Sprite Graphics
	.2byte 0x0100
	.2byte 0x0040
	.byte 0x08
	.byte 0x10
	.byte 0x20
	.byte 0x10
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
	.4byte sub_080588B8

	.4byte 0x030003F8
	.4byte gUnknown_081295C4 @ Sprite Animation
	.4byte gUnknown_08129804 @ Sprite OAM
	.4byte gUnknown_0812980C @ Sprite Graphics
	.2byte 0x0100
	.2byte 0x0040
	.byte 0x08
	.byte 0x10
	.byte 0x20
	.byte 0x10
	.byte 0x00
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.4byte gUnknown_086609C0 @ X velocity animation
	.4byte gUnknown_086609C4 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08058998

	.4byte 0x030003F8
	.4byte gUnknown_08106234 @ Sprite Animation
	.4byte gUnknown_08106450 @ Sprite OAM
	.4byte gUnknown_08106458 @ Sprite Graphics
	.2byte 0x0080
	.2byte 0x0020
	.byte 0x04
	.byte 0x0F
	.byte 0x10
	.byte 0x10
	.byte 0x00
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.4byte gUnknown_086609C0 @ X velocity animation
	.4byte gUnknown_086609C4 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08058998

	.4byte 0x030003F8
	.4byte gUnknown_085FA118 @ Sprite Animation
	.4byte gUnknown_085FA358 @ Sprite OAM
	.4byte gUnknown_085FA360 @ Sprite Graphics
	.2byte 0x0100
	.2byte 0x0040
	.byte 0x08
	.byte 0x10
	.byte 0x20
	.byte 0x10
	.byte 0x00
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.4byte gUnknown_086609C0 @ X velocity animation
	.4byte gUnknown_086609C4 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte sub_08058998

	.4byte 0x030003F8
	.4byte gUnknown_081295C4 @ Sprite Animation
	.4byte gUnknown_08129804 @ Sprite OAM
	.4byte gUnknown_0812980C @ Sprite Graphics
	.2byte 0x0100
	.2byte 0x0040
	.byte 0x08
	.byte 0x10
	.byte 0x20
	.byte 0x10
	.byte 0x02
	.byte 0x02
	.byte 0x28
	.byte 0x00
	.4byte gUnknown_086609C8 @ X velocity animation
	.4byte gUnknown_08660A18 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte fall_objects_hit_080593B4

	.4byte 0x030003F8
	.4byte gUnknown_08106234 @ Sprite Animation
	.4byte gUnknown_08106450 @ Sprite OAM
	.4byte gUnknown_08106458 @ Sprite Graphics
	.2byte 0x0080
	.2byte 0x0020
	.byte 0x04
	.byte 0x0F
	.byte 0x10
	.byte 0x10
	.byte 0x02
	.byte 0x02
	.byte 0x28
	.byte 0x00
	.4byte gUnknown_086609C8 @ X velocity animation
	.4byte gUnknown_08660A18 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte fall_objects_hit_080593B4

	.4byte 0x030003F8
	.4byte gUnknown_085FA118 @ Sprite Animation
	.4byte gUnknown_085FA358 @ Sprite OAM
	.4byte gUnknown_085FA360 @ Sprite Graphics
	.2byte 0x0100
	.2byte 0x0040
	.byte 0x08
	.byte 0x10
	.byte 0x20
	.byte 0x10
	.byte 0x02
	.byte 0x02
	.byte 0x28
	.byte 0x00
	.4byte gUnknown_086609C8 @ X velocity animation
	.4byte gUnknown_08660A18 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_08059144
	.4byte fall_objects_hit_080593B4

	.4byte 0x030003F8
	.4byte gUnknown_0811865C @ Sprite Animation
	.4byte gUnknown_08118680 @ Sprite OAM
	.4byte gUnknown_08118688 @ Sprite Graphics
	.2byte 0x0080
	.2byte 0x0020
	.byte 0x04
	.byte 0x01
	.byte 0x10
	.byte 0x10
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
	.4byte sub_080593F0

	.4byte 0x030003F8
	.4byte gUnknown_0811865C @ Sprite Animation
	.4byte gUnknown_08118680 @ Sprite OAM
	.4byte gUnknown_08118688 @ Sprite Graphics
	.2byte 0x0080
	.2byte 0x0020
	.byte 0x04
	.byte 0x01
	.byte 0x10
	.byte 0x10
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
	.4byte sub_080593F0

	.4byte 0x030003F8
	.4byte gUnknown_0811865C @ Sprite Animation
	.4byte gUnknown_08118680 @ Sprite OAM
	.4byte gUnknown_08118688 @ Sprite Graphics
	.2byte 0x0080
	.2byte 0x0020
	.byte 0x04
	.byte 0x01
	.byte 0x10
	.byte 0x10
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
	.4byte sub_080593F0

	.4byte 0x030003F8
	.4byte gUnknown_082853A4 @ Sprite Animation
	.4byte gUnknown_08285554 @ Sprite OAM
	.4byte gUnknown_0828555C @ Sprite Graphics
	.2byte 0x0400
	.2byte 0x0100
	.byte 0x20
	.byte 0x0C
	.byte 0x20
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
	.4byte sub_08059480
