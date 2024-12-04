	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08078904 @ Main levels selection cursor location
gUnknown_08078904:
	.4byte 0x00000016
	.4byte 0x00000030
	
	.4byte 0x00000048
	.4byte 0x00000030
	
	.4byte 0x0000007A
	.4byte 0x00000030
	
	.4byte 0x000000AC
	.4byte 0x00000030
	
	.4byte 0x00000016
	.4byte 0x0000005D
	
	.4byte 0x00000048
	.4byte 0x0000005D
	
	.4byte 0x0000007A
	.4byte 0x0000005D
	
	.4byte 0x000000AC
	.4byte 0x0000005D

	.GLOBAL gUnknown_08078944 @ Plus levels selection cursor location
gUnknown_08078944:
	.4byte 0x00000016
	.4byte 0x00000030
	
	.4byte 0x00000048
	.4byte 0x00000030
	
	.4byte 0x0000007A
	.4byte 0x00000030
	
	.4byte 0x00000016
	.4byte 0x0000005D
	
	.4byte 0x00000048
	.4byte 0x0000005D
	
	.4byte 0x0000007A
	.4byte 0x0000005D
	
	.4byte 0x000000AC
	.4byte 0x0000005D


	.GLOBAL gUnknown_0807897C @ Main levels top UI (presents, stars, level number)
gUnknown_0807897C:
	.4byte 0x00000018
	.4byte 0x00000033
	
	.4byte 0x0000004A
	.4byte 0x00000033
	
	.4byte 0x0000007C
	.4byte 0x00000033
	
	.4byte 0x000000AE
	.4byte 0x00000033
	
	.4byte 0x00000018
	.4byte 0x00000060
	
	.4byte 0x0000004A
	.4byte 0x00000060
	
	.4byte 0x0000007C
	.4byte 0x00000060
	
	.4byte 0x000000AE
	.4byte 0x00000060

	.GLOBAL gUnknown_080789BC @ Plus levels top UI (presents, stars, level number)
gUnknown_080789BC:
	.4byte 0x00000018
	.4byte 0x00000033
	
	.4byte 0x0000004A
	.4byte 0x00000033
	
	.4byte 0x0000007C
	.4byte 0x00000033
	
	.4byte 0x00000018
	.4byte 0x00000060
	
	.4byte 0x0000004A
	.4byte 0x00000060
	
	.4byte 0x0000007C
	.4byte 0x00000060
	
	.4byte 0x000000AE
	.4byte 0x00000060

	.GLOBAL gUnknown_080789F4 @ Main world selection cursor
gUnknown_080789F4:
	.2byte 0x0005 @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Animation Data
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics
	 
	.2byte 0x001C @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Animation Data
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics
	 
	.2byte 0x0033 @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Animation Data
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics
	 
	.2byte 0x004A @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Animation Data
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics
	 
	.2byte 0x0061 @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Animation Data
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics
	 
	.2byte 0x0078 @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Animation Data
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics
	 
	.2byte 0x0092 @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2F00 @ Animation Data
	.4byte gUnknown_085E3188 @ OAM
	.4byte gUnknown_085E3190 @ Sprite Graphics
	 
	.2byte 0x00B8 @ X Position
	.2byte 0xFFFC @ Y Position
	.2byte 0x0100 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0400 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E90D0 @ Animation Data
	.4byte gUnknown_085E9358 @ OAM
	.4byte gUnknown_085E9360 @ Sprite Graphics

	.GLOBAL gUnknown_08078AB4 @ Plus world selection cursor
gUnknown_08078AB4:
		.2byte 0x003A @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Animation Data
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics

	.2byte 0x0051 @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Animation Data
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics

	.2byte 0x0068 @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Animation Data
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics

	.2byte 0x007F @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Animation Data
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics

	.2byte 0x0096 @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Animation Data
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics

	.2byte 0x00AD @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Animation Data
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics

	.2byte 0x00C7 @ X Position
	.2byte 0x0006 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2F00 @ Animation Data
	.4byte gUnknown_085E3188 @ OAM
	.4byte gUnknown_085E3190 @ Sprite Graphics

	.2byte 0x0000 @ X Position
	.2byte 0xFFFC @ Y Position
	.2byte 0x0100 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0400 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E90D0 @ Animation Data
	.4byte gUnknown_085E9358 @ OAM
	.4byte gUnknown_085E9360 @ Sprite Graphics

	.GLOBAL gUnknown_08078B74 @ Locked main world tabs
gUnknown_08078B74:
	.2byte 0x0005 @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CF8CC @ Animation Data
	.4byte gfxMainWorldSelectTabsOAM @ OAM
	.4byte gfxMainWorldSelectTabs4bpp @ Sprite Graphics

	.2byte 0x001C @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CF8CC @ Animation Data
	.4byte gfxMainWorldSelectTabsOAM @ OAM
	.4byte gfxMainWorldSelectTabs4bpp @ Sprite Graphics

	.2byte 0x0033 @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CF8CC @ Animation Data
	.4byte gfxMainWorldSelectTabsOAM @ OAM
	.4byte gfxMainWorldSelectTabs4bpp @ Sprite Graphics

	.2byte 0x004A @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CF8CC @ Animation Data
	.4byte gfxMainWorldSelectTabsOAM @ OAM
	.4byte gfxMainWorldSelectTabs4bpp @ Sprite Graphics

	.2byte 0x0061 @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CF8CC @ Animation Data
	.4byte gfxMainWorldSelectTabsOAM @ OAM
	.4byte gfxMainWorldSelectTabs4bpp @ Sprite Graphics

	.2byte 0x0078 @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CF8CC @ Animation Data
	.4byte gfxMainWorldSelectTabsOAM @ OAM
	.4byte gfxMainWorldSelectTabs4bpp @ Sprite Graphics

	.2byte 0x0091 @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CF8CC @ Animation Data
	.4byte gfxMainWorldSelectTabsOAM @ OAM
	.4byte gfxMainWorldSelectTabs4bpp @ Sprite Graphics

	.GLOBAL gUnknown_08078C1C @ Locked plus world tabs
gUnknown_08078C1C:
	.2byte 0x003A @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D00D0 @ Animation Data
	.4byte gfxPlusWorldSelectTabsOAM @ OAM
	.4byte gfxPlusWorldSelectTabs4bpp @ Sprite Graphics

	.2byte 0x0051 @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D00D0 @ Animation Data
	.4byte gfxPlusWorldSelectTabsOAM @ OAM
	.4byte gfxPlusWorldSelectTabs4bpp @ Sprite Graphics

	.2byte 0x0068 @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D00D0 @ Animation Data
	.4byte gfxPlusWorldSelectTabsOAM @ OAM
	.4byte gfxPlusWorldSelectTabs4bpp @ Sprite Graphics

	.2byte 0x007F @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D00D0 @ Animation Data
	.4byte gfxPlusWorldSelectTabsOAM @ OAM
	.4byte gfxPlusWorldSelectTabs4bpp @ Sprite Graphics

	.2byte 0x0096 @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D00D0 @ Animation Data
	.4byte gfxPlusWorldSelectTabsOAM @ OAM
	.4byte gfxPlusWorldSelectTabs4bpp @ Sprite Graphics

	.2byte 0x00AD @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D00D0 @ Animation Data
	.4byte gfxPlusWorldSelectTabsOAM @ OAM
	.4byte gfxPlusWorldSelectTabs4bpp @ Sprite Graphics

	.2byte 0x00C6 @ X Position
	.2byte 0x0005 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D00D0 @ Animation Data
	.4byte gfxPlusWorldSelectTabsOAM @ OAM
	.4byte gfxPlusWorldSelectTabs4bpp @ Sprite Graphics

	.GLOBAL gUnknown_08078CC4 @ Unused plus button selection
gUnknown_08078CC4:
	.2byte 0x00B0 @ X Position
	.2byte 0x0000 @ Y Position
	.2byte 0x0100 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0400 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E8878 @ Animation Data
	.4byte gUnknown_085E889C @ OAM
	.4byte gUnknown_085E88A4 @ Sprite Graphics

	.2byte 0x00B0 @ X Position
	.2byte 0x0000 @ Y Position
	.2byte 0x0100 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0400 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E8CA4 @ Animation Data
	.4byte gUnknown_085E8CC8 @ OAM
	.4byte gUnknown_085E8CD0 @ Sprite Graphics

	.GLOBAL gUnknown_08078CF4 @ Unused main button selection
gUnknown_08078CF4:
	.2byte 0x00B0 @ X Position
	.2byte 0x0000 @ Y Position
	.2byte 0x0100 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0400 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E8020 @ Animation Data
	.4byte gUnknown_085E8044 @ OAM
	.4byte gUnknown_085E804C @ Sprite Graphics

	.2byte 0x00B0 @ X Position
	.2byte 0x0000 @ Y Position
	.2byte 0x0100 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0400 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E844C @ Animation Data
	.4byte gUnknown_085E8470 @ OAM
	.4byte gUnknown_085E8478 @ Sprite Graphics

	.GLOBAL gUnknown_08078D24 @ Main world level select arrows
gUnknown_08078D24:
	.2byte 0x0040 @ X Position
	.2byte 0x0040 @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C280C @ Animation Data
	.4byte gUnknown_085C2830 @ OAM
	.4byte gUnknown_085C2838 @ Sprite Graphics
			 
	.2byte 0x0072 @ X Position
	.2byte 0x0040 @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C280C @ Animation Data
	.4byte gUnknown_085C2830 @ OAM
	.4byte gUnknown_085C2838 @ Sprite Graphics
			 
	.2byte 0x00A4 @ X Position
	.2byte 0x0040 @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C280C @ Animation Data
	.4byte gUnknown_085C2830 @ OAM
	.4byte gUnknown_085C2838 @ Sprite Graphics
			 
	.2byte 0x00D6 @ X Position
	.2byte 0x0040 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C2760 @ Animation Data
	.4byte gUnknown_085C2784 @ OAM
	.4byte gUnknown_085C278C @ Sprite Graphics
			 
	.2byte 0x0009 @ X Position
	.2byte 0x006D @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C26B4 @ Animation Data
	.4byte gUnknown_085C26D8 @ OAM
	.4byte gUnknown_085C26E0 @ Sprite Graphics
			 
	.2byte 0x0040 @ X Position
	.2byte 0x006D @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C280C @ Animation Data
	.4byte gUnknown_085C2830 @ OAM
	.4byte gUnknown_085C2838 @ Sprite Graphics
			 
	.2byte 0x0072 @ X Position
	.2byte 0x006D @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C280C @ Animation Data
	.4byte gUnknown_085C2830 @ OAM
	.4byte gUnknown_085C2838 @ Sprite Graphics
			 
	.2byte 0x00A4 @ X Position
	.2byte 0x006D @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C280C @ Animation Data
	.4byte gUnknown_085C2830 @ OAM
	.4byte gUnknown_085C2838 @ Sprite Graphics

	.GLOBAL gUnknown_08078DE4 @ Plus world level select arrows
gUnknown_08078DE4:
	.2byte 0x0040 @ X Position
	.2byte 0x0040 @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C280C @ Animation Data
	.4byte gUnknown_085C2830 @ OAM
	.4byte gUnknown_085C2838 @ Sprite Graphics
			 
	.2byte 0x0072 @ X Position
	.2byte 0x0040 @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C280C @ Animation Data
	.4byte gUnknown_085C2830 @ OAM
	.4byte gUnknown_085C2838 @ Sprite Graphics
			 
	.2byte 0x00A4 @ X Position
	.2byte 0x0040 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C2760 @ Animation Data
	.4byte gUnknown_085C2784 @ OAM
	.4byte gUnknown_085C278C @ Sprite Graphics
			 
	.2byte 0x0009 @ X Position
	.2byte 0x006D @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C26B4 @ Animation Data
	.4byte gUnknown_085C26D8 @ OAM
	.4byte gUnknown_085C26E0 @ Sprite Graphics
			 
	.2byte 0x0040 @ X Position
	.2byte 0x006D @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C280C @ Animation Data
	.4byte gUnknown_085C2830 @ OAM
	.4byte gUnknown_085C2838 @ Sprite Graphics
			 
	.2byte 0x0072 @ X Position
	.2byte 0x006D @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C280C @ Animation Data
	.4byte gUnknown_085C2830 @ OAM
	.4byte gUnknown_085C2838 @ Sprite Graphics
			 
	.2byte 0x00A4 @ X Position
	.2byte 0x006D @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C280C @ Animation Data
	.4byte gUnknown_085C2830 @ OAM
	.4byte gUnknown_085C2838 @ Sprite Graphics

	.GLOBAL gLevelSelectLevelArtSpriteLayout
gLevelSelectLevelArtSpriteLayout:
	.2byte 28 @ X Position
	.2byte 52 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count? doesnt affect this first one
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Animation Data
	.4byte gfxMainLevelIconPicsOAM @ OAM
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics

	.2byte 78 @ X Position
	.2byte 52 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Animation Data
	.4byte gfxMainLevelIconPicsOAM @ OAM
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 128 @ X Position
	.2byte 52 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Animation Data
	.4byte gfxMainLevelIconPicsOAM @ OAM
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 178 @ X Position
	.2byte 52 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Animation Data
	.4byte gfxMainLevelIconPicsOAM @ OAM
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 28 @ X Position
	.2byte 97 @ Y position
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Animation Data
	.4byte gfxMainLevelIconPicsOAM @ OAM
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 78 @ X Position
	.2byte 97 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Animation Data
	.4byte gfxMainLevelIconPicsOAM @ OAM
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 128 @ X Position
	.2byte 97 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Animation Data
	.4byte gfxMainLevelIconPicsOAM @ OAM
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 178 @ X Position
	.2byte 97 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Animation Data
	.4byte gfxMainLevelIconPicsOAM @ OAM
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics

	.GLOBAL gLevelSelectLevelPlusArtSpriteLayout
gLevelSelectLevelPlusArtSpriteLayout:
	.2byte 0x001C @ X Position
	.2byte 0x0034 @ Y Position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D70C8 @ Animation Data
	.4byte gfxPlusLevelIconPicsOAM @ OAM
	.4byte gfxPlusLevelIconPics4bpp @ Sprite Graphics

	.2byte 0x004E @ X Position
	.2byte 0x0034 @ Y Position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D70C8 @ Animation Data
	.4byte gfxPlusLevelIconPicsOAM @ OAM
	.4byte gfxPlusLevelIconPics4bpp @ Sprite Graphics

	.2byte 0x0080 @ X Position
	.2byte 0x0034 @ Y Position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D70C8 @ Animation Data
	.4byte gfxPlusLevelIconPicsOAM @ OAM
	.4byte gfxPlusLevelIconPics4bpp @ Sprite Graphics

	.2byte 0x001C @ X Position
	.2byte 0x0061 @ Y Position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D70C8 @ Animation Data
	.4byte gfxPlusLevelIconPicsOAM @ OAM
	.4byte gfxPlusLevelIconPics4bpp @ Sprite Graphics

	.2byte 0x004E @ X Position
	.2byte 0x0061 @ Y Position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D70C8 @ Animation Data
	.4byte gfxPlusLevelIconPicsOAM @ OAM
	.4byte gfxPlusLevelIconPics4bpp @ Sprite Graphics

	.2byte 0x0080 @ X Position
	.2byte 0x0061 @ Y Position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D70C8 @ Animation Data
	.4byte gfxPlusLevelIconPicsOAM @ OAM
	.4byte gfxPlusLevelIconPics4bpp @ Sprite Graphics

	.2byte 0x00B2 @ X Position
	.2byte 0x0061 @ Y Position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D70C8 @ Animation Data
	.4byte gfxPlusLevelIconPicsOAM @ OAM
	.4byte gfxPlusLevelIconPics4bpp @ Sprite Graphics

	.GLOBAL gUnknown_08078FF4
gUnknown_08078FF4:
	.2byte 0x0016 @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x0048 @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x007A @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x00AC @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x0016 @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x0048 @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x007A @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x00AC @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CC960 @ Animation Data
	.4byte gUnknown_085CC984 @ OAM
	.4byte gUnknown_085CC98C @ Sprite Graphics

	.GLOBAL gUnknown_080790B4
gUnknown_080790B4:
	.2byte 0x0016 @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x0048 @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x007A @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x0016 @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x0048 @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x007A @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Animation Data
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x00AC @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CC960 @ Animation Data
	.4byte gUnknown_085CC984 @ OAM
	.4byte gUnknown_085CC98C @ Sprite Graphics

	.GLOBAL gUnknown_0807915C
gUnknown_0807915C:
	.2byte 0x0016 @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics
			 
	.2byte 0x0048 @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics
			 
	.2byte 0x007A @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics
			 
	.2byte 0x00AC @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics
			 
	.2byte 0x0016 @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics
			 
	.2byte 0x0048 @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics
			 
	.2byte 0x007A @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics
			 
	.2byte 0x00AC @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CC134 @ Animation Data
	.4byte gUnknown_085CC158 @ OAM
	.4byte gUnknown_085CC160 @ Sprite Graphics

	.GLOBAL gUnknown_0807921C
gUnknown_0807921C:
	.2byte 0x0016 @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics

	.2byte 0x0048 @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics

	.2byte 0x007A @ X Position
	.2byte 0x0030 @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics

	.2byte 0x0016 @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics
			 
	.2byte 0x0048 @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics
			 
	.2byte 0x007A @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Animation Data
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics
			 
	.2byte 0x00AC @ X Position
	.2byte 0x005D @ Y Position
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0800 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CC134 @ Animation Data
	.4byte gUnknown_085CC158 @ OAM
	.4byte gUnknown_085CC160 @ Sprite Graphics

	.GLOBAL gUnknown_080792C4
gUnknown_080792C4:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DD258 @ Animation Data
	.4byte gUnknown_085DD744 @ OAM
	.4byte gUnknown_085DD74C @ Sprite Graphics

	.GLOBAL gUnknown_080792DC
gUnknown_080792DC:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0001 @ Total tiles
	.2byte 0x0020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DD9EC @ Animation Data
	.4byte gUnknown_085DDE24 @ OAM
	.4byte gUnknown_085DDE2C @ Sprite Graphics

	.GLOBAL gUnknown_080792F4
gUnknown_080792F4:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0002 @ Total tiles
	.2byte 0x0040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DE06C @ Animation Data
	.4byte gUnknown_085DE4A4 @ OAM
	.4byte gUnknown_085DE4AC @ Sprite Graphics

	.GLOBAL gUnknown_0807930C
gUnknown_0807930C:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DCECC @ Animation Data
	.4byte gUnknown_085DCF80 @ OAM
	.4byte gUnknown_085DCF88 @ Sprite Graphics

	.GLOBAL gUnknown_08079324
gUnknown_08079324:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0002 @ Total tiles
	.2byte 0x0040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DCAB8 @ Animation Data
	.4byte gUnknown_085DCB6C @ OAM
	.4byte gUnknown_085DCB74 @ Sprite Graphics

	.GLOBAL gUnknown_0807933C
gUnknown_0807933C:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DCC34 @ Animation Data
	.4byte gUnknown_085DCCC4 @ OAM
	.4byte gUnknown_085DCCCC @ Sprite Graphics

	.GLOBAL gUnknown_08079354
gUnknown_08079354:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E1F2C @ Animation Data
	.4byte gUnknown_085E2004 @ OAM
	.4byte gUnknown_085E200C @ Sprite Graphics

	.GLOBAL gUnknown_0807936C
gUnknown_0807936C:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E1B4C @ Animation Data
	.4byte gUnknown_085E1C24 @ OAM
	.4byte gUnknown_085E1C2C @ Sprite Graphics

	.GLOBAL gUnknown_08079384
gUnknown_08079384:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0D64 @ Animation Data
	.4byte gUnknown_085E0D88 @ OAM
	.4byte gUnknown_085E0D90 @ Sprite Graphics

	.GLOBAL gUnknown_0807939C
gUnknown_0807939C:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0E10 @ Animation Data
	.4byte gUnknown_085E0E34 @ OAM
	.4byte gUnknown_085E0E3C @ Sprite Graphics

	.GLOBAL gUnknown_080793B4
gUnknown_080793B4:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0AC4 @ Animation Data
	.4byte gUnknown_085E0B0C @ OAM
	.4byte gUnknown_085E0B14 @ Sprite Graphics

	.GLOBAL gUnknown_080793CC
gUnknown_080793CC:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0C14 @ Animation Data
	.4byte gUnknown_085E0C5C @ OAM
	.4byte gUnknown_085E0C64 @ Sprite Graphics

	.GLOBAL gUnknown_080793E4
gUnknown_080793E4:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E115C @ Animation Data
	.4byte gUnknown_085E1180 @ OAM
	.4byte gUnknown_085E1188 @ Sprite Graphics

	.GLOBAL gUnknown_080793FC
gUnknown_080793FC:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E1208 @ Animation Data
	.4byte gUnknown_085E122C @ OAM
	.4byte gUnknown_085E1234 @ Sprite Graphics

	.GLOBAL gUnknown_08079414
gUnknown_08079414:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0EBC @ Animation Data
	.4byte gUnknown_085E0F04 @ OAM
	.4byte gUnknown_085E0F0C @ Sprite Graphics

	.GLOBAL gUnknown_0807942C
gUnknown_0807942C:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E100C @ Animation Data
	.4byte gUnknown_085E1054 @ OAM
	.4byte gUnknown_085E105C @ Sprite Graphics

	.GLOBAL gUnknown_08079444
gUnknown_08079444:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E08DC @ Animation Data
	.4byte gUnknown_085E0900 @ OAM
	.4byte gUnknown_085E0908 @ Sprite Graphics

	.GLOBAL gUnknown_0807945C
gUnknown_0807945C:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0988 @ Animation Data
	.4byte gUnknown_085E09AC @ OAM
	.4byte gUnknown_085E09B4 @ Sprite Graphics

	.GLOBAL gUnknown_08079474
gUnknown_08079474:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E063C @ Animation Data
	.4byte gUnknown_085E0684 @ OAM
	.4byte gUnknown_085E068C @ Sprite Graphics

	.GLOBAL gUnknown_0807948C
gUnknown_0807948C:
 	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E078C @ Animation Data
	.4byte gUnknown_085E07D4 @ OAM
	.4byte gUnknown_085E07DC @ Sprite Graphics

	.GLOBAL gUnknown_080794A4
gUnknown_080794A4:
	.2byte 0 @ X Position
	.2byte 0x0050 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C255C @ Animation Data
	.4byte gUnknown_085C2580 @ OAM
	.4byte gUnknown_085C2588 @ Sprite Graphics

	.GLOBAL gUnknown_080794BC
gUnknown_080794BC:
	.2byte 0x00E0 @ X Position
	.2byte 0x0050 @ Y Position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C2608 @ Animation Data
	.4byte gUnknown_085C262C @ OAM
	.4byte gUnknown_085C2634 @ Sprite Graphics

	.GLOBAL gUnknown_080794D4
gUnknown_080794D4:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DD108 @ Animation Data
	.4byte gUnknown_085DD150 @ OAM
	.4byte gUnknown_085DD158 @ Sprite Graphics

	.GLOBAL gLevelSelectPaletteIDs
gLevelSelectPaletteIDs:
	.4byte 11 @ palette level_select_world_one
	.4byte 12 @ palette level_select_world_two
	.4byte 13 @ palette level_select_world_three
	.4byte 14 @ palette level_select_world_four
	.4byte 15 @ palette level_select_world_five
	.4byte 16 @ palette level_select_world_six

	.GLOBAL gLevelSelectPlusPaletteIDs
gLevelSelectPlusPaletteIDs:
	.4byte 18 @ palette level_select_world_one_plus
	.4byte 19 @ palette level_select_world_two_plus
	.4byte 20 @ palette level_select_world_three_plus
	.4byte 21 @ palette level_select_world_four_plus
	.4byte 22 @ palette level_select_world_five_plus
	.4byte 23 @ palette level_select_world_six_plus

	.GLOBAL gLevelSelectBackgrounds
gLevelSelectBackgrounds:
	.4byte gLevelSelectWorldOneBG
	.4byte gLevelSelectWorldTwoBG
	.4byte gLevelSelectWorldThreeBG
	.4byte gLevelSelectWorldFourBG
	.4byte gLevelSelectWorldFiveBG
	.4byte gLevelSelectWorldSixBG


	.GLOBAL gLevelSelectPlusBackgrounds
gLevelSelectPlusBackgrounds:
	.4byte gLevelSelectWorldOnePlusBG
	.4byte gLevelSelectWorldTwoPlusBG
	.4byte gLevelSelectWorldThreePlusBG
	.4byte gLevelSelectWorldFourPlusBG
	.4byte gLevelSelectWorldFivePlusBG
	.4byte gLevelSelectWorldSixPlusBG
	