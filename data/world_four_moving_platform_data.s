	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data
	
	.GLOBAL gStraightMovingPlatformVel_086695CC
gStraightMovingPlatformVel_086695CC:
	.2byte 0
	.2byte 0

	.GLOBAL gMovingPlatformDiagonalXVel_086695D0
gMovingPlatformDiagonalXVel_086695D0:
	.2byte 128
	.2byte 128

	.GLOBAL gMovingPlatformHorizontalYVel_086695D4
gMovingPlatformHorizontalYVel_086695D4:
	.2byte 128
	.2byte 128
	
	.GLOBAL gUnknown_086695D8
gUnknown_086695D8:
	.4byte 0x030006F0
	.4byte gUnknown_0865919C @ Sprite Animation
	.4byte gUnknown_086591C0 @ Sprite OAM
	.4byte gUnknown_086591C8 @ Sprite Graphics
	.2byte 0x0080
	.2byte 0x0020
	.byte 0x04
	.byte 0x01
	.byte 0x20
	.byte 0x08
	.byte 0x01
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.4byte 0x00000000 @ X velocity animation
	.4byte 0x00000000 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806F488
	.4byte sub_0806F48C

	.4byte 0x030006F0
	.4byte gUnknown_0865919C @ Sprite Animation
	.4byte gUnknown_086591C0 @ Sprite OAM
	.4byte gUnknown_086591C8 @ Sprite Graphics
	.2byte 0x0080
	.2byte 0x0020
	.byte 0x04
	.byte 0x01
	.byte 0x20
	.byte 0x08
	.byte 0x01
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.4byte gMovingPlatformDiagonalXVel_086695D0 @ X velocity animation
	.4byte gStraightMovingPlatformVel_086695CC @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806F488
	.4byte sub_0806F1DC

	.4byte 0x030006F0
	.4byte gUnknown_0865919C @ Sprite Animation
	.4byte gUnknown_086591C0 @ Sprite OAM
	.4byte gUnknown_086591C8 @ Sprite Graphics
	.2byte 0x0080
	.2byte 0x0020
	.byte 0x04
	.byte 0x01
	.byte 0x20
	.byte 0x08
	.byte 0x01
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.4byte gStraightMovingPlatformVel_086695CC @ X velocity animation
	.4byte gMovingPlatformHorizontalYVel_086695D4 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806F488
	.4byte sub_0806F0DC

	.4byte 0x030006F0
	.4byte gUnknown_0865919C @ Sprite Animation
	.4byte gUnknown_086591C0 @ Sprite OAM
	.4byte gUnknown_086591C8 @ Sprite Graphics
	.2byte 0x0080
	.2byte 0x0020
	.byte 0x04
	.byte 0x01
	.byte 0x20
	.byte 0x08
	.byte 0x01
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.4byte gMovingPlatformDiagonalXVel_086695D0 @ X velocity animation
	.4byte gMovingPlatformHorizontalYVel_086695D4 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806F488
	.4byte sub_0806F2D4

	.4byte 0x030006F0
	.4byte gUnknown_0865919C @ Sprite Animation
	.4byte gUnknown_086591C0 @ Sprite OAM
	.4byte gUnknown_086591C8 @ Sprite Graphics
	.2byte 0x0080
	.2byte 0x0020
	.byte 0x04
	.byte 0x01
	.byte 0x20
	.byte 0x08
	.byte 0x01
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.4byte gMovingPlatformDiagonalXVel_086695D0 @ X velocity animation
	.4byte gMovingPlatformHorizontalYVel_086695D4 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806F488
	.4byte sub_0806F2D4
