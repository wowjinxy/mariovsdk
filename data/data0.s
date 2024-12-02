	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_080788E0
gUnknown_080788E0:
	.2byte 0x0002
	.2byte 0x0001
	.2byte 0x0100
	.2byte 0x0010
	.2byte 0x0200
	.2byte 0x0020
	.2byte 0x0001
	.2byte 0x0080
	.2byte 0x0080
	.2byte 0x0100

	.GLOBAL gSelectedSaveFileNumPtr
gSelectedSaveFileNumPtr:
	.4byte 0x02032100

	.GLOBAL gUnknown_080788F8
gUnknown_080788F8:
	.4byte 0x02032108

	.GLOBAL gScreenModeRelatedPtr
gScreenModeRelatedPtr:
	.4byte 0x02032104 

	.GLOBAL gSaveFilesPtr
gSaveFilesPtr:
	.4byte 0x02032110

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
	.INCBIN "baserom.gba", 0x789F4, 0x78AB4-0x789F4

	.GLOBAL gUnknown_08078AB4 @ Plus world selection cursor
gUnknown_08078AB4:
	.INCBIN "baserom.gba", 0x78AB4, 0x78B74-0x78AB4

	.GLOBAL gUnknown_08078B74 @ Locked main world tabs
gUnknown_08078B74:
	.INCBIN "baserom.gba", 0x78B74, 0x78C1C-0x78B74

	.GLOBAL gUnknown_08078C1C @ Locked plus world tabs
gUnknown_08078C1C:
	.INCBIN "baserom.gba", 0x78C1C, 0x78CC4-0x78C1C

	.GLOBAL gUnknown_08078CC4 @ Unused plus button selection
gUnknown_08078CC4:
	.INCBIN "baserom.gba", 0x78CC4, 0x78CF4-0x78CC4

	.GLOBAL gUnknown_08078CF4 @ Unused main button selection
gUnknown_08078CF4:
	.INCBIN "baserom.gba", 0x78CF4, 0x78D24-0x78CF4

	.GLOBAL gUnknown_08078D24 @ Main world level select arrows
gUnknown_08078D24:
	.INCBIN "baserom.gba", 0x78D24, 0x78DE4-0x78D24

	.GLOBAL gUnknown_08078DE4 @ Plus world level select arrows
gUnknown_08078DE4:
	.INCBIN "baserom.gba", 0x78DE4, 0x78E8C-0x78DE4

	.GLOBAL gLevelSelectLevelArtSpriteLayout
gLevelSelectLevelArtSpriteLayout:
	.2byte 28 @ X Position
	.2byte 52 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count? doesnt affect this first one
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics

	.2byte 78 @ X Position
	.2byte 52 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 128 @ X Position
	.2byte 52 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 178 @ X Position
	.2byte 52 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 28 @ X Position
	.2byte 97 @ Y position
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 78 @ X Position
	.2byte 97 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 128 @ X Position
	.2byte 97 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 178 @ X Position
	.2byte 97 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics

	.GLOBAL gLevelSelectLevelPlusArtSpriteLayout
gLevelSelectLevelPlusArtSpriteLayout:
	.INCBIN "baserom.gba", 0x78F4C, 0x78FF4-0x78F4C

	.GLOBAL gUnknown_08078FF4
gUnknown_08078FF4:
	.INCBIN "baserom.gba", 0x78FF4, 0x790B4-0x78FF4

	.GLOBAL gUnknown_080790B4
gUnknown_080790B4:
	.INCBIN "baserom.gba", 0x790B4, 0x7915C-0x790B4

	.GLOBAL gUnknown_0807915C
gUnknown_0807915C:
	.INCBIN "baserom.gba", 0x7915C, 0x7921C-0x7915C

	.GLOBAL gUnknown_0807921C
gUnknown_0807921C:
	.INCBIN "baserom.gba", 0x7921C, 0x792C4-0x7921C

	.GLOBAL gUnknown_080792C4
gUnknown_080792C4:
	.INCBIN "baserom.gba", 0x792C4, 0x792DC-0x792C4

	.GLOBAL gUnknown_080792DC
gUnknown_080792DC:
	.INCBIN "baserom.gba", 0x792DC, 0x792F4-0x792DC

	.GLOBAL gUnknown_080792F4
gUnknown_080792F4:
	.INCBIN "baserom.gba", 0x792F4, 0x7930C-0x792F4

	.GLOBAL gUnknown_0807930C
gUnknown_0807930C:
	.INCBIN "baserom.gba", 0x7930C, 0x79324-0x7930C

	.GLOBAL gUnknown_08079324
gUnknown_08079324:
	.INCBIN "baserom.gba", 0x79324, 0x7933C-0x79324

	.GLOBAL gUnknown_0807933C
gUnknown_0807933C:
	.INCBIN "baserom.gba", 0x7933C, 0x79354-0x7933C

	.GLOBAL gUnknown_08079354
gUnknown_08079354:
	.INCBIN "baserom.gba", 0x79354, 0x7936C-0x79354

	.GLOBAL gUnknown_0807936C
gUnknown_0807936C:
	.INCBIN "baserom.gba", 0x7936C, 0x79384-0x7936C

	.GLOBAL gUnknown_08079384
gUnknown_08079384:
	.INCBIN "baserom.gba", 0x79384, 0x7939C-0x79384

	.GLOBAL gUnknown_0807939C
gUnknown_0807939C:
	.INCBIN "baserom.gba", 0x7939C, 0x793B4-0x7939C

	.GLOBAL gUnknown_080793B4
gUnknown_080793B4:
	.INCBIN "baserom.gba", 0x793B4, 0x793CC-0x793B4

	.GLOBAL gUnknown_080793CC
gUnknown_080793CC:
	.INCBIN "baserom.gba", 0x793CC, 0x793E4-0x793CC

	.GLOBAL gUnknown_080793E4
gUnknown_080793E4:
	.INCBIN "baserom.gba", 0x793E4, 0x793FC-0x793E4

	.GLOBAL gUnknown_080793FC
gUnknown_080793FC:
	.INCBIN "baserom.gba", 0x793FC, 0x79414-0x793FC

	.GLOBAL gUnknown_08079414
gUnknown_08079414:
	.INCBIN "baserom.gba", 0x79414, 0x7942C-0x79414

	.GLOBAL gUnknown_0807942C
gUnknown_0807942C:
	.INCBIN "baserom.gba", 0x7942C, 0x79444-0x7942C

	.GLOBAL gUnknown_08079444
gUnknown_08079444:
	.INCBIN "baserom.gba", 0x79444, 0x7945C-0x79444

	.GLOBAL gUnknown_0807945C
gUnknown_0807945C:
	.INCBIN "baserom.gba", 0x7945C, 0x79474-0x7945C

	.GLOBAL gUnknown_08079474
gUnknown_08079474:
	.INCBIN "baserom.gba", 0x79474, 0x7948C-0x79474

	.GLOBAL gUnknown_0807948C
gUnknown_0807948C:
	.INCBIN "baserom.gba", 0x7948C, 0x794A4-0x7948C

	.GLOBAL gUnknown_080794A4
gUnknown_080794A4:
	.INCBIN "baserom.gba", 0x794A4, 0x794BC-0x794A4

	.GLOBAL gUnknown_080794BC
gUnknown_080794BC:
	.INCBIN "baserom.gba", 0x794BC, 0x794D4-0x794BC

	.GLOBAL gUnknown_080794D4
gUnknown_080794D4:
	.4byte 0x00000000
	.2byte 0x0040
	.2byte 0x0008
	.2byte 0x0100
	.2byte 0x0000
	.4byte gUnknown_085DD108 @ Sprite Data 1
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
	

	.GLOBAL gUnknown_0807954C
gUnknown_0807954C:
	.2byte 0x0000 @ world 1
	.2byte 0x0000
	.2byte 0x0100 @ world 2
	.2byte 0x0000
	.2byte 0x0200 @ world 3
	.2byte 0x0000
	.2byte 0x0001 @ title screen plays intro cutscene
	.2byte 0x0000
	.2byte 0x0300 @ world 4
	.2byte 0x0000
	.2byte 0x0400 @ world 5
	.2byte 0x0000
	.2byte 0x0500 @ world 6
	.2byte 0x0000
	.2byte 0x0001 @ title screen plays intro cutscene
	.2byte 0x0000

	.GLOBAL gTitleMarioEyesAnimationData
gTitleMarioEyesAnimationData:
	.INCBIN "baserom.gba", 0x7956C, 0x79698-0x7956C

	.GLOBAL gTitleDKEyesAnimationData
gTitleDKEyesAnimationData:
	.INCBIN "baserom.gba", 0x79698, 0x7976C-0x79698

	.GLOBAL gUnknown_0807976C
gUnknown_0807976C:
	.2byte 0x00E6
	.2byte 0x00E7
	.2byte 0x00E8
	.2byte 0x00E6
	.2byte 0x00E7
	.2byte 0x00E8

	.GLOBAL gUnknown_08079778
gUnknown_08079778:
	.4byte 25 @ palette world_one_boss_clear
	.4byte 26 @ palette world_two_boss_clear
	.4byte 27 @ palette world_three_boss_clear
	.4byte 28 @ palette world_four_boss_clear
	.4byte 29 @ palette world_five_boss_clear
	.4byte 30 @ palette world_six_boss_clear

	.GLOBAL gUnknown_08079790
gUnknown_08079790:
	.4byte 31 @ palette world_one_plus_boss_clear
	.4byte 32 @ palette world_two_plus_boss_clear
	.4byte 33 @ palette world_three_plus_boss_clear
	.4byte 34 @ palette world_four_plus_boss_clear
	.4byte 35 @ palette world_five_plus_boss_clear
	.4byte 36 @ palette world_six_plus_boss_clear

	.GLOBAL gUnknown_080797A8
gUnknown_080797A8:
	.byte 0x35
	.byte 0x45
	.byte 0x56
	.byte 0x67
	.byte 0x7E
	.byte 0x8D
	.byte 0x9D
	.byte 0xAD

	.GLOBAL gUnknown_080797B0
gUnknown_080797B0:
	.byte 0x06
	.byte 0x00
	.byte 0x0C
	.byte 0x04
	.byte 0x0E
	.byte 0x15
	.byte 0x04
	.byte 0x11

	.GLOBAL gUnknown_080797B8
gUnknown_080797B8:
	.byte 0x00
	.byte 0x0C
	.byte 0x18
	.byte 0x24
	.byte 0x30
	.byte 0x3F
	.byte 0x49
	.byte 0x55
	.byte 0x61
	.byte 0x71
	.byte 0x7F
	.byte 0x8B
	.byte 0x9A
	.byte 0x00
	.byte 0x00
	.byte 0x00

	.GLOBAL gUnknown_080797C8
gUnknown_080797C8:
	.2byte 0x0011
	.2byte 0x000D
	.2byte 0x000D
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D
	.2byte 0x0045
	.2byte 0x000D
	.2byte 0x0048
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D

	.GLOBAL gUnknown_080797E0
gUnknown_080797E0:
	.2byte 0x0027
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D

	.GLOBAL gUnknown_080797F8
gUnknown_080797F8: 
	.INCBIN "baserom.gba", 0x797F8, 0x79838-0x797F8
	
	.GLOBAL gUnknown_08079838
gUnknown_08079838: 
	.INCBIN "baserom.gba", 0x79838, 0x79868-0x79838
	
	.GLOBAL gUnknown_08079868
gUnknown_08079868:
	.4byte gUnknown_080797F8
	.2byte 0x0008
	.2byte 0x0000
	.4byte gUnknown_08079838
	.2byte 0x0006
	.2byte 0x0000

	.GLOBAL gUnknown_08079878
gUnknown_08079878:
	.INCBIN "baserom.gba", 0x79878, 0x798B0-0x79878

	.GLOBAL gUnknown_080798B0
gUnknown_080798B0:
	.INCBIN "baserom.gba", 0x798B0, 0x798E8-0x798B0
