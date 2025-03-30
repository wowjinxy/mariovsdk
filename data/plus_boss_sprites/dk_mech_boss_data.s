	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gDKFallFromSkyXVelAnim_086690F0
gDKFallFromSkyXVelAnim_086690F0:
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0

	.GLOBAL gDKFallFromSkyYVelAnim_08669118
gDKFallFromSkyYVelAnim_08669118:
	.2byte 0xFE52
	.2byte 0xFE29
	.2byte 0xFE00
	.2byte 0xFDD8
	.2byte 0xFDAF
	.2byte 0xFD86
	.2byte 0xFD5D
	.2byte 0xFD34
	.2byte 0xFD0B
	.2byte 0xFCE2
	.2byte 0xFCB9
	.2byte 0xFC90
	.2byte 0xFC80
	.2byte 0xFC80
	.2byte 0xFC80
	.2byte 0xFC80
	.2byte 0xFC80
	.2byte 0xFC80
	.2byte 0xFC80
	.2byte 0xFC80

	.GLOBAL gDKMechRiseXVelAnim_08669140
gDKMechRiseXVelAnim_08669140:
	.2byte 0

	.GLOBAL gDKMechRiseYVelAnim_08669142
gDKMechRiseYVelAnim_08669142:
	.2byte 88

	.GLOBAL gDKMechShouldersFallXVelAnim_08669144
gDKMechShouldersFallXVelAnim_08669144:
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0

	.GLOBAL gDKMechShouldersFallYVelAnim_08669180
gDKMechShouldersFallYVelAnim_08669180:
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte -32

	.GLOBAL gUnknown_086691BC
gUnknown_086691BC:
	.4byte 0x00000000
	.4byte gUnknown_081D9614 @ Sprite Animation
	.4byte gUnknown_081D96EC @ Sprite OAM
	.4byte gUnknown_081D96F4 @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x06
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
	.4byte sub_0806C2F4
	.4byte sub_0806A488

	.4byte 0x00000000
	.4byte gUnknown_081D9614 @ Sprite Animation
	.4byte gUnknown_081D96EC @ Sprite OAM
	.4byte gUnknown_081D96F4 @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x06
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
	.4byte sub_0806C2F4
	.4byte sub_0806A58C

	.4byte 0x00000000
	.4byte gUnknown_081D9614 @ Sprite Animation
	.4byte gUnknown_081D96EC @ Sprite OAM
	.4byte gUnknown_081D96F4 @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x06
	.byte 0x40
	.byte 0x40
	.byte 0x02
	.byte 0x02
	.byte 0x01
	.byte 0x00
	.4byte gDKMechRiseXVelAnim_08669140 @ X velocity animation
	.4byte gDKMechRiseYVelAnim_08669142 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806C2F4
	.4byte sub_0806A63C

	.4byte 0x00000000
	.4byte gUnknown_081D9614 @ Sprite Animation
	.4byte gUnknown_081D96EC @ Sprite OAM
	.4byte gUnknown_081D96F4 @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x06
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
	.4byte sub_0806C2F4
	.4byte sub_0806A6F0

	.4byte 0x00000000
	.4byte gUnknown_08210A3C @ Sprite Animation
	.4byte gUnknown_08210ACC @ Sprite OAM
	.4byte gUnknown_08210AD4 @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x04
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
	.4byte sub_0806C2F4
	.4byte sub_0806A7B4

	.4byte 0x00000000
	.4byte gUnknown_081E6B80 @ Sprite Animation
	.4byte gUnknown_081E6DC0 @ Sprite OAM
	.4byte gUnknown_081E6DC8 @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x10
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
	.4byte sub_0806C2F4
	.4byte sub_0806CD1C

	.4byte 0x00000000
	.4byte gUnknown_081F2EF0 @ Sprite Animation
	.4byte gUnknown_081F31E4 @ Sprite OAM
	.4byte gUnknown_081F31EC @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x15
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
	.4byte sub_0806C2F4
	.4byte sub_0806CD84

	.4byte 0x00000000
	.4byte gUnknown_08213AD4 @ Sprite Animation
	.4byte gUnknown_08213D14 @ Sprite OAM
	.4byte gUnknown_08213D1C @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x10
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
	.4byte sub_0806C2F4
	.4byte sub_0806ACE4

	.4byte 0x00000000
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
	.byte 0x1E
	.byte 0x00
	.4byte gDKMechShouldersFallXVelAnim_08669144 @ X velocity animation
	.4byte gDKMechShouldersFallYVelAnim_08669180 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806C2F4
	.4byte sub_0806CDE8

	.4byte 0x00000000
	.4byte gUnknown_081C7380 @ Sprite Animation
	.4byte gUnknown_081C7410 @ Sprite OAM
	.4byte gUnknown_081C7418 @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x04
	.byte 0x40
	.byte 0x40
	.byte 0x02
	.byte 0x02
	.byte 0x14
	.byte 0x00
	.4byte gDKFallFromSkyXVelAnim_086690F0 @ X velocity animation
	.4byte gDKFallFromSkyYVelAnim_08669118 @ Y velocity animation
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806C2F4
	.4byte sub_0806CE4C

	.4byte 0x00000000
	.4byte gUnknown_081EADC8 @ Sprite Animation
	.4byte gUnknown_081EAEE8 @ Sprite OAM
	.4byte gUnknown_081EAEF0 @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x08
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
	.4byte sub_0806C2F4
	.4byte sub_0806CEB8

	.4byte 0x00000000
	.4byte gUnknown_081C430C @ Sprite Animation
	.4byte gUnknown_081C4378 @ Sprite OAM
	.4byte gUnknown_081C4380 @ Sprite Graphics
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x03
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
	.4byte sub_0806C2F4
	.4byte sub_0806CF10

	.GLOBAL gDKFlyOutMechXVelAnim_0866945C
gDKFlyOutMechXVelAnim_0866945C:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

	.GLOBAL gDKFlyOutMechYVelAnim_086694D4
gDKFlyOutMechYVelAnim_086694D4:
	.4byte 0x00000651
	.4byte 0x00000628
	.4byte 0x00000600
	.4byte 0x000005D7
	.4byte 0x000005AE
	.4byte 0x00000585
	.4byte 0x0000055C
	.4byte 0x00000533
	.4byte 0x0000050A
	.4byte 0x000004E1
	.4byte 0x000004B8
	.4byte 0x0000048F
	.4byte 0x00000466
	.4byte 0x0000043D
	.4byte 0x00000414
	.4byte 0x000003EB
	.4byte 0x000003C2
	.4byte 0x00000399
	.4byte 0x00000370
	.4byte 0x00000347
	.4byte 0x0000031E
	.4byte 0x000002F5
	.4byte 0x000002CC
	.4byte 0x000002A3
	.4byte 0x0000027A
	.4byte 0x00000251
	.4byte 0x00000228
	.4byte 0x00000200
	.4byte 0x000001D7
	.4byte 0x000001AE

	.GLOBAL gDKMechFallingXVelAnim_0866954C
gDKMechFallingXVelAnim_0866954C:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

	.GLOBAL gDKMechFallingYVelAnim_0866958C
gDKMechFallingYVelAnim_0866958C:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte -32
