	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_080A7D98
gUnknown_080A7D98:
	@ expert 1 selection box
	.4byte 0x00000048
	.4byte 0x00000010
	@ expert 2 selection box
	.4byte 0x00000070
	.4byte 0x00000010
	@ expert 3 selection box
	.4byte 0x00000098
	.4byte 0x00000010
	@ expert 4 selection box
	.4byte 0x000000C0
	.4byte 0x00000010
	@ expert 5 selection box
	.4byte 0x00000048
	.4byte 0x00000038
	@ expert 6 selection box
	.4byte 0x00000070
	.4byte 0x00000038
	@ expert 7 selection box
	.4byte 0x00000098
	.4byte 0x00000038
	@ expert 8 selection box
	.4byte 0x000000C0
	.4byte 0x00000038
	@ expert 9 selection box
	.4byte 0x00000048
	.4byte 0x00000060
	@ expert 10 selection box
	.4byte 0x00000070
	.4byte 0x00000060
	@ expert 11 selection box
	.4byte 0x00000098
	.4byte 0x00000060
	@ expert 12 selection box
	.4byte 0x000000C0
	.4byte 0x00000060

	.GLOBAL gUnknown_080A7DF8
gUnknown_080A7DF8:
	@ expert 1 menu presents 
	.4byte 0x0000004A
	.4byte 0x00000013
	@ expert 2 menu presents 
	.4byte 0x00000072
	.4byte 0x00000013
	@ expert 3 menu presents 
	.4byte 0x0000009A
	.4byte 0x00000013
	@ expert 4 menu presents 
	.4byte 0x000000C2
	.4byte 0x00000013
	@ expert 5 menu presents 
	.4byte 0x0000004A
	.4byte 0x0000003B
	@ expert 6 menu presents 
	.4byte 0x00000072
	.4byte 0x0000003B
	@ expert 7 menu presents 
	.4byte 0x0000009A
	.4byte 0x0000003B
	@ expert 8 menu presents 
	.4byte 0x000000C2
	.4byte 0x0000003B
	@ expert 9 menu presents 
	.4byte 0x0000004A
	.4byte 0x00000063
	@ expert 10 menu presents
	.4byte 0x00000072
	.4byte 0x00000063
	@ expert 11 menu presents
	.4byte 0x0000009A
	.4byte 0x00000063
	@ expert 12 menu presents
	.4byte 0x000000C2
	.4byte 0x00000063
	@ unknown -- seems to copy the selection boxes
	.4byte 0x00000048
	.4byte 0x00000010
	
	.4byte 0x00000070
	.4byte 0x00000010
	
	.4byte 0x00000098
	.4byte 0x00000010
	
	.4byte 0x000000C0
	.4byte 0x00000010
	
	.4byte 0x00000048
	.4byte 0x00000038
	
	.4byte 0x00000070
	.4byte 0x00000038
	
	.4byte 0x00000098
	.4byte 0x00000038
	
	.4byte 0x000000C0
	.4byte 0x00000038
	
	.4byte 0x00000048
	.4byte 0x00000060
	
	.4byte 0x00000070
	.4byte 0x00000060
	
	.4byte 0x00000098
	.4byte 0x00000060
	
	.4byte 0x000000C0
	.4byte 0x00000060

	.GLOBAL gUnknown_080A7EB8
gUnknown_080A7EB8:
	.2byte 8 @ X Position
	.2byte 18 @ Y Position
	.2byte 0x0400 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1000 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829A7F8 @ Animation Data
	.4byte gUnknown_0829A81C @ OAM
	.4byte gfxNeedStarsToPlay @ Sprite Graphics
	
	.GLOBAL gUnknown_080A7ED0
gUnknown_080A7ED0:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 8 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gfxExpertLevelIconPicsAnim @ Animation Data
	.4byte gfxExpertLevelIconPicsOAM @ OAM
	.4byte gfxExpertLevelIconPics @ Sprite Graphics

	.GLOBAL gUnknown_080A7EE8
gUnknown_080A7EE8:
	.2byte 0x0048 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829713C @ Animation Data
	.4byte gUnknown_08297160 @ OAM
	.4byte gUnknown_08297168 @ Sprite Graphics

	.2byte 0x0070 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082974C0 @ Animation Data
	.4byte gUnknown_082974E4 @ OAM
	.4byte gUnknown_082974EC @ Sprite Graphics

	.2byte 0x0098 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297844 @ Animation Data
	.4byte gUnknown_08297868 @ OAM
	.4byte gUnknown_08297870 @ Sprite Graphics

	.2byte 0x00C0 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297BC8 @ Animation Data
	.4byte gUnknown_08297BEC @ OAM
	.4byte gUnknown_08297BF4 @ Sprite Graphics

	.2byte 0x0048 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297F4C @ Animation Data
	.4byte gUnknown_08297F70 @ OAM
	.4byte gUnknown_08297F78 @ Sprite Graphics

	.2byte 0x0070 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082982D0 @ Animation Data
	.4byte gUnknown_082982F4 @ OAM
	.4byte gUnknown_082982FC @ Sprite Graphics

	.2byte 0x0098 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298654 @ Animation Data
	.4byte gUnknown_08298678 @ OAM
	.4byte gUnknown_08298680 @ Sprite Graphics

	.2byte 0x00C0 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082989D8 @ Animation Data
	.4byte gUnknown_082989FC @ OAM
	.4byte gUnknown_08298A04 @ Sprite Graphics

	.2byte 0x0048 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298D5C @ Animation Data
	.4byte gUnknown_08298D80 @ OAM
	.4byte gUnknown_08298D88 @ Sprite Graphics

	.2byte 0x0070 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082990E0 @ Animation Data
	.4byte gUnknown_08299104 @ OAM
	.4byte gUnknown_0829910C @ Sprite Graphics

	.2byte 0x0098 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08299464 @ Animation Data
	.4byte gUnknown_08299488 @ OAM
	.4byte gUnknown_08299490 @ Sprite Graphics

	.2byte 0x00C0 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082997E8 @ Animation Data
	.4byte gUnknown_0829980C @ OAM
	.4byte gUnknown_08299814 @ Sprite Graphics

	.GLOBAL gUnknown_080A8008
gUnknown_080A8008:
	.2byte 0x0048 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total Tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297268 @ Animation Data
	.4byte gUnknown_0829728C @ OAM
	.4byte gUnknown_08297294 @ Sprite Graphics

	.2byte 0x0070 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total Tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082975EC @ Animation Data
	.4byte gUnknown_08297610 @ OAM
	.4byte gUnknown_08297618 @ Sprite Graphics

	.2byte 0x0098 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total Tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297970 @ Animation Data
	.4byte gUnknown_08297994 @ OAM
	.4byte gUnknown_0829799C @ Sprite Graphics

	.2byte 0x00C0 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total Tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297CF4 @ Animation Data
	.4byte gUnknown_08297D18 @ OAM
	.4byte gUnknown_08297D20 @ Sprite Graphics

	.2byte 0x0048 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total Tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298078 @ Animation Data
	.4byte gUnknown_0829809C @ OAM
	.4byte gUnknown_082980A4 @ Sprite Graphics

	.2byte 0x0070 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total Tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082983FC @ Animation Data
	.4byte gUnknown_08298420 @ OAM
	.4byte gUnknown_08298428 @ Sprite Graphics

	.2byte 0x0098 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total Tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298780 @ Animation Data
	.4byte gUnknown_082987A4 @ OAM
	.4byte gUnknown_082987AC @ Sprite Graphics

	.2byte 0x00C0 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total Tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298B04 @ Animation Data
	.4byte gUnknown_08298B28 @ OAM
	.4byte gUnknown_08298B30 @ Sprite Graphics

	.2byte 0x0048 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total Tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298E88 @ Animation Data
	.4byte gUnknown_08298EAC @ OAM
	.4byte gUnknown_08298EB4 @ Sprite Graphics

	.2byte 0x0070 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total Tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829920C @ Animation Data
	.4byte gUnknown_08299230 @ OAM
	.4byte gUnknown_08299238 @ Sprite Graphics

	.2byte 0x0098 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total Tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08299590 @ Animation Data
	.4byte gUnknown_082995B4 @ OAM
	.4byte gUnknown_082995BC @ Sprite Graphics

	.2byte 0x00C0 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total Tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08299914 @ Animation Data
	.4byte gUnknown_08299938 @ OAM
	.4byte gUnknown_08299940 @ Sprite Graphics

	.GLOBAL gUnknown_080A8128
gUnknown_080A8128:
	.2byte 0x0048 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297010 @ Animation Data
	.4byte gUnknown_08297034 @ OAM
	.4byte gUnknown_0829703C @ Sprite Graphics

	.2byte 0x0070 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297394 @ Animation Data
	.4byte gUnknown_082973B8 @ OAM
	.4byte gUnknown_082973C0 @ Sprite Graphics

	.2byte 0x0098 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297718 @ Animation Data
	.4byte gUnknown_0829773C @ OAM
	.4byte gUnknown_08297744 @ Sprite Graphics

	.2byte 0x00C0 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297A9C @ Animation Data
	.4byte gUnknown_08297AC0 @ OAM
	.4byte gUnknown_08297AC8 @ Sprite Graphics

	.2byte 0x0048 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297E20 @ Animation Data
	.4byte gUnknown_08297E44 @ OAM
	.4byte gUnknown_08297E4C @ Sprite Graphics

	.2byte 0x0070 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082981A4 @ Animation Data
	.4byte gUnknown_082981C8 @ OAM
	.4byte gUnknown_082981D0 @ Sprite Graphics

	.2byte 0x0098 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298528 @ Animation Data
	.4byte gUnknown_0829854C @ OAM
	.4byte gUnknown_08298554 @ Sprite Graphics

	.2byte 0x00C0 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082988AC @ Animation Data
	.4byte gUnknown_082988D0 @ OAM
	.4byte gUnknown_082988D8 @ Sprite Graphics

	.2byte 0x0048 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298C30 @ Animation Data
	.4byte gUnknown_08298C54 @ OAM
	.4byte gUnknown_08298C5C @ Sprite Graphics

	.2byte 0x0070 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298FB4 @ Animation Data
	.4byte gUnknown_08298FD8 @ OAM
	.4byte gUnknown_08298FE0 @ Sprite Graphics

	.2byte 0x0098 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08299338 @ Animation Data
	.4byte gUnknown_0829935C @ OAM
	.4byte gUnknown_08299364 @ Sprite Graphics

	.2byte 0x00C0 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082996BC @ Animation Data
	.4byte gUnknown_082996E0 @ OAM
	.4byte gUnknown_082996E8 @ Sprite Graphics

	.GLOBAL gUnknown_080A8248
gUnknown_080A8248:
	.2byte 0x0000 @ X Position
	.2byte 0x0000 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0D64 @ Animation Data
	.4byte gUnknown_085E0D88 @ OAM
	.4byte gUnknown_085E0D90 @ Sprite Graphics
	
	.GLOBAL gUnknown_080A8260
gUnknown_080A8260:
	.2byte 0x0000 @ X Position
	.2byte 0x0000 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E115C @ Animation Data
	.4byte gUnknown_085E1180 @ OAM
	.4byte gUnknown_085E1188 @ Sprite Graphics

	.GLOBAL gUnknown_080A8278
gUnknown_080A8278:
	.2byte 0x0000 @ X Position
	.2byte 0x0000 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E08DC @ Animation Data
	.4byte gUnknown_085E0900 @ OAM
	.4byte gUnknown_085E0908 @ Sprite Graphics

	.GLOBAL gUnknown_080A8290
gUnknown_080A8290:
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0020
	.2byte 0x0004
	.2byte 0x0080
	.2byte 0x0000
	.4byte gUnknown_085E0AC4
	.4byte gUnknown_085E0B0C
	.4byte gUnknown_085E0B14

	.GLOBAL gUnknown_080A82A8
gUnknown_080A82A8:
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0020
	.2byte 0x0004
	.2byte 0x0080
	.2byte 0x0000
	.4byte gUnknown_085E0EBC
	.4byte gUnknown_085E0F04
	.4byte gUnknown_085E0F0C

	.GLOBAL gUnknown_080A82C0
gUnknown_080A82C0:
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0020
	.2byte 0x0004
	.2byte 0x0080
	.2byte 0x0000
	.4byte gUnknown_085E063C
	.4byte gUnknown_085E0684
	.4byte gUnknown_085E068C
	@ level select L/R is here for some reason
	.2byte 0x0000
	.2byte 0x0050
	.2byte 0x0020
	.2byte 0x0004
	.2byte 0x0080
	.2byte 0x0000
	.4byte gfxLButtonAnim
	.4byte gfxLButtonOAM
	.4byte gfxLButton4bpp
	.2byte 0x00E0
	.2byte 0x0050
	.2byte 0x0020
	.2byte 0x0004
	.2byte 0x0080
	.2byte 0x0000
	.4byte gfxRButtonAnim
	.4byte gfxRButtonOAM
	.4byte gfxRButton4bpp

	.GLOBAL gUnknown_080A8308
gUnknown_080A8308:
	.2byte 0x0048 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Animation Data
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics

	.2byte 0x0070 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Animation Data
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics

	.2byte 0x0098 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Animation Data
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics

	.2byte 0x00C0 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Animation Data
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics

	.2byte 0x0048 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Animation Data
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics
	 
	.2byte 0x0070 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Animation Data
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics
	 
	.2byte 0x0098 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Animation Data
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics
	 
	.2byte 0x00C0 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Animation Data
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics
	 
	.2byte 0x0048 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Animation Data
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics
	 
	.2byte 0x0070 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Animation Data
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics
	 
	.2byte 0x0098 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Animation Data
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics
	 
	.2byte 0x00C0 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Animation Data
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics

	.GLOBAL gUnknown_080A8428
gUnknown_080A8428:
	.2byte 0x0048 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Animation Data
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics
	 
	.2byte 0x0070 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Animation Data
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics
	 
	.2byte 0x0098 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Animation Data
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics
	 
	.2byte 0x00C0 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Animation Data
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics
	 
	.2byte 0x0048 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Animation Data
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics
	 
	.2byte 0x0070 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Animation Data
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics
	 
	.2byte 0x0098 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Animation Data
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics
	 
	.2byte 0x00C0 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Animation Data
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics
	 
	.2byte 0x0048 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Animation Data
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics
	 
	.2byte 0x0070 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Animation Data
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics

	.2byte 0x0098 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Animation Data
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics
	 
	.2byte 0x00C0 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Animation Data
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics

	.GLOBAL gUnknown_080A8548
gUnknown_080A8548:
	.2byte 0x0048 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Animation Data
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics
	
	.2byte 0x0070 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Animation Data
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics
	
	.2byte 0x0098 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Animation Data
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics
	
	.2byte 0x00C0 @ X Position
	.2byte 0x0010 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Animation Data
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics
	
	.2byte 0x0048 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Animation Data
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics
	
	.2byte 0x0070 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Animation Data
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics
	
	.2byte 0x0098 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Animation Data
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics
	
	.2byte 0x00C0 @ X Position
	.2byte 0x0038 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Animation Data
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics
	
	.2byte 0x0048 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Animation Data
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics
	
	.2byte 0x0070 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Animation Data
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics
	
	.2byte 0x0098 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Animation Data
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics
	
	.2byte 0x00C0 @ X Position
	.2byte 0x0060 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Animation Data
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics

	.GLOBAL gExpertLevelsStarsNeeded
gExpertLevelsStarsNeeded:
	.byte 9
	.byte 18
	.byte 27
	.byte 36
	.byte 45
	.byte 54
	.byte 63
	.byte 72
	.byte 81
	.byte 90
	.byte 90
	.byte 90
	