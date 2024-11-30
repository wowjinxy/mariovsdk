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

	.GLOBAL gUnknown_080798E8
gUnknown_080798E8:
	.4byte sub_08027B9C
	.4byte sub_08027BE8
	.4byte sub_08027C78
	.4byte sub_080258A8
	.4byte sub_08025914
	.4byte sub_08027D84
	.4byte sub_080259C4
	.4byte sub_08025A60
	.4byte sub_08025FA8
	.4byte sub_0802606C
	.4byte sub_08026164
	.4byte sub_08026640
	.4byte sub_080266EC
	.4byte sub_080267E4
	.4byte sub_080268E0
	.4byte sub_0802698C
	.4byte sub_08027F0C
	.4byte sub_080269E4
	.4byte sub_08026AD8
	.4byte sub_08026FE8

	.GLOBAL gUnknown_08079938
gUnknown_08079938:
	.4byte sub_0802200C
	.4byte sub_08027C34
	.4byte sub_08027CD0
	.4byte sub_08027D08
	.4byte sub_08027D40
	.4byte sub_08027DD0
	.4byte sub_08027DE4
	.4byte sub_08027DF8
	.4byte sub_08027E0C
	.4byte sub_08027E20
	.4byte sub_08027E34
	.4byte sub_08027E48
	.4byte sub_08027E5C
	.4byte sub_08027E70
	.4byte sub_08027E84
	.4byte sub_08027EC8
	.4byte sub_08027F58
	.4byte sub_08027F9C
	.4byte sub_08027FE0
	.4byte sub_08028024

	.GLOBAL gOptionsMenuMovieIDTable
gOptionsMenuMovieIDTable:
	.byte 0x0
	.byte 0x1
	.byte 0x2
	.byte 0x3
	.byte 0x4
	.byte 0x5
	.byte 0x6
	.byte 0x7

	.GLOBAL gOptionsMenuMovieSongIDTable
gOptionsMenuMovieSongIDTable:
	.byte 0x17
	.byte 0x29
	.byte 0x2B
	.byte 0x3D
	.byte 0x2C
	.byte 0x2D
	.byte 0x2E
	.byte 0x2F

	.GLOBAL gOptionsMenuSpriteIDTable
gOptionsMenuSpriteIDTable:
	.4byte 0x0000034D @ Selction box left side sprite ID 
	.4byte 0x0000034F @ Selction box right side sprite ID 
	.4byte 0x0000034E @ Selction box center sprite ID 
	.4byte 0x00000386 @ Movie selction box sprite ID 
	.4byte 0x000003A3 @ Erase save data selection box sprite ID 
	.4byte 0x0000037C @ Movie 1 preview sprite ID 
	.4byte 0x0000037D @ Movie 2 preview sprite ID 
	.4byte 0x0000037E @ Movie 3 preview sprite ID 
	.4byte 0x0000037F @ Credits 1 preview sprite ID (movie 4)
	.4byte 0x00000380 @ Movie 5 preview sprite ID 
	.4byte 0x00000381 @ Movie 6 preview sprite ID 
	.4byte 0x00000382 @ Movie 7 preview sprite ID 
	.4byte 0x00000383 @ Credits 2 preview sprite ID (movie 8) -- sprite ID 0x0384 is a unsued alternate of this one
	.4byte 0x00000385 @ Unused movie preview sprite ID

	.GLOBAL gUnknown_080799D0
gUnknown_080799D0:
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000040

	.GLOBAL gUnknown_080799F0 @ Options menu buttons related
gUnknown_080799F0:
	@ Options top menu
	.byte 3 			@ Number of options in sub menu
	.byte 4 			@ Total tile objects (A to select and related)
	.2byte 0x0000 		@ Unknown
	
	.4byte 19 			@ Audio options button tile object ID
	.byte 7 			@ Audio options button X position in tiles
	.byte 4 			@ Audio options button Y position in tiles
	.byte 16 			@ Audio options selction box width
	.byte 0x00 			@ Unknown
	.4byte 1 			@ Sub menu to go to on selection
	.4byte 0x00000000 	@ Function to trigger when pressing A
	.2byte 0 			@ Tile objects shown at bottom? (acts weird in the top menu here)
	.2byte 0x0000 		@ Unknown
	
	.4byte 20 			@ Visual options button tile object ID
	.byte 7 			@ Visual options button X position in tiles
	.byte 8 			@ Visual options button Y position in tiles
	.byte 16 			@ Visual options selction box width
	.byte 0x00 			@ Unknown
	.4byte 2			@ Sub menu to go to on selection
	.4byte 0x00000000 	@ Function to trigger when pressing A
	.2byte 0 			@ Tile objects shown at bottom? (acts weird in the top menu here)
	.2byte 0x0000 		@ Unknown
	
	.4byte 21 			@ Erase all save data button tile object ID
	.byte 5 			@ Erase all save data button X position in tiles
	.byte 12 			@ Erase all save data button Y position in tiles
	.byte 20 			@ Erase all save data selction box width
	.byte 0x00 			@ Unknown
	.4byte 3 			@ Sub menu to go to on selection
	.4byte 0x00000000 	@ Function to trigger when pressing A
	.2byte 0 			@ Tile objects shown at bottom? (acts weird in the top menu here)
	.2byte 0x0000 		@ Unknown
	
	.4byte 58			@ Back text tile object ID
	.byte 8             @ Back text X position in tiles
	.byte 17            @ Back text Y position in tiles
	.byte 4             @ Back text selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom? (acts weird in the top menu here)
	.2byte 0x0000       @ Unknown
	
	.4byte 56			@ B button tile object ID
	.byte 19 			@ B button X position in tiles
	.byte 17 			@ B button Y position in tiles
	.byte 5 			@ B button selction box width
	.byte 0x00			@ Unknown
	.4byte 0			@ Sub menu to go to on selection
	.4byte 0x00000000	@ Function to trigger when pressing A
	.2byte 0 			@ Tile objects shown at bottom? (acts weird in the top menu here)
	.2byte 0x0000 		@ Unknown
	
	.4byte 55			@ Select text tile object ID
	.byte 6             @ Select text X position in tiles
	.byte 17            @ Select text Y position in tiles
	.byte 0             @ Select text selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom? (acts weird in the top menu here)
	.2byte 0x0000       @ Unknown
	
	.4byte 54 			@ A button tile object ID
	.byte 17            @ A button X position in tiles
	.byte 17            @ A button Y position in tiles
	.byte 0             @ A button selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom? (acts weird in the top menu here)
	.2byte 0x0000       @ Unknown
	
	.4byte 0			@ Empty tile object ID
	.byte 0				@ Empty X position in tiles
	.byte 0				@ Empty Y position in tiles
	.byte 0				@ Empty selction box width
	.byte 0x00			@ Unknown
	.4byte 0	        @ Sub menu to go to on selection
	.4byte 0x00000000	@ Function to trigger when pressing A
	.2byte 0			@ Tile objects shown at bottom? (acts weird in the top menu here)
	.2byte 0x0000		@ Unknown
	
	.4byte 0			@ Empty tile object ID
	.byte 0				@ Empty X position in tiles
	.byte 0				@ Empty Y position in tiles
	.byte 0				@ Empty selction box width
	.byte 0x00			@ Unknown
	.4byte 0	        @ Sub menu to go to on selection
	.4byte 0x00000000	@ Function to trigger when pressing A
	.2byte 0			@ Tile objects shown at bottom? (acts weird in the top menu here)
	.2byte 0x0000		@ Unknown
	
	.4byte 0xFFFFFFFF	@ Exit to menu type (0xFFFFFFFF returns to previous main state)
	.4byte 0x00000000	@ Option to select on exit
	.4byte 0x00000000   @ Option 1 function
	.4byte 0x00000000	@ Option 2 function
	.4byte 0x00000000	@ Option 3 function
	
	@ Audio options sub menu
	.byte 3             @ Number of options in sub menu
	.byte 5             @ Total tile objects (A to select and related)
	.2byte 0x0000       @ Unknown

	.4byte 0			@ System menu option tile object ID
	.byte 2             @ System menu option X position in tiles
	.byte 4             @ System menu option Y position in tiles
	.byte 26            @ System menu option selction box width
	.byte 0x00          @ Unknown
	.4byte 0xFFFFFFFF   @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 3            @ Tile objects shown at bottom? 
	.2byte 0x0000       @ Unknown

	.4byte 1                            @ Music menu option tile object ID
	.byte 2                             @ Music menu option X position in tiles
	.byte 8                             @ Music menu option Y position in tiles
	.byte 26                            @ Music menu option selction box width
	.byte 0x00                          @ Unknown
	.4byte 0xFFFFFFFF                   @ Sub menu to go to on selection (does 0xFFFFFFFF mean trigger function below?)
	.4byte options_menu_play_music		@ Function to trigger when pressing A
	.2byte 0                            @ Tile objects shown at bottom? 
	.2byte 0x0000                       @ Unknown

	.4byte 2                                @ FX menu option tile object ID
	.byte 2                                 @ FX menu option X position in tiles
	.byte 12                                @ FX menu option Y position in tiles
	.byte 26                                @ FX menu option selction box width
	.byte 0x00                              @ Unknown
	.4byte 0xFFFFFFFF                       @ Sub menu to go to on selection (does 0xFFFFFFFF mean trigger function below?)
	.4byte options_menu_play_sound_effect   @ Function to trigger when pressing A
	.2byte 0                                @ Tile objects shown at bottom? 
	.2byte 0x0000                           @ Unknown

	.4byte 58 			@ Back text tile object ID
	.byte 8             @ Back text X position in tiles
	.byte 17            @ Back text Y position in tiles
	.byte 4             @ Back text selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom? 
	.2byte 0x0000       @ Unknown

	.4byte 55 			@ Select text tile object ID
	.byte 6             @ Select text X position in tiles
	.byte 17            @ Select text Y position in tiles
	.byte 0             @ Select text selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom? 
	.2byte 0x0000       @ Unknown

	.4byte 59			@ Audio options title bar
	.byte 8 			@ Audio options title bar X position in tiles
	.byte 1 			@ Audio options title bar Y position in tiles
	.byte 5 			@ Audio options title bar selection box width
	.byte 0x00			@ Unknown
	.4byte 0			@ Sub menu to go to on selection
	.4byte 0x00000000 	@ Function to trigger when pressing A
	.2byte 0 			@ Tile objects shown at bottom?
	.2byte 0x0000 		@ Unknown

	.4byte 57			@ Play text tile object ID
	.byte 19			@ Play text X position in tiles
	.byte 17			@ Play text Y position in tiles
	.byte 3 			@ Play text Y selction box width
	.byte 0x00 			@ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown

	.4byte 54			@ A button tile object ID
	.byte 17            @ A button X position in tiles
	.byte 17            @ A button Y position in tiles
	.byte 0             @ A button selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown

	.4byte 0            @ Empty tile object ID
	.byte 0             @ Empty X position in tiles
	.byte 0             @ Empty Y position in tiles
	.byte 0             @ Empty selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown

	.4byte 0x00000000 	@ Exit to menu type (0xFFFFFFFF returns to previous main state)
	.4byte 0x00000000   @ Option to select on exit
	.4byte 0x00000000   @ Option 1 function
	.4byte sub_080284E8 @ Option 2 function
	.4byte sub_08028604 @ Option 3 function
	
	@ Visual options submenu
	.byte 02 
	.byte 05 
	.2byte 0x0000 

	.4byte 15			@ Screen type option tile object ID
	.byte 1             @ Screen type option X position in tiles
	.byte 4             @ Screen type option Y position in tiles
	.byte 28            @ Screen type option selction box width
	.byte 0x00          @ Unknown
	.4byte 0xFFFFFFFF   @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 3            @ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown

	.4byte 16						@ Movie option tile object ID
	.byte 1                         @ Movie option X position in tiles
	.byte 8                         @ Movie option Y position in tiles
	.byte 28                        @ Movie option selction box width
	.byte 0x00                      @ Unknown
	.4byte 0xFFFFFFFF               @ Sub menu to go to on selection
	.4byte options_menu_play_movie  @ Function to trigger when pressing A
	.2byte 0                        @ Tile objects shown at bottom?
	.2byte 0x0000                   @ Unknown

	.4byte 0			@ Empty tile object ID
	.byte 0             @ Empty X position in tiles
	.byte 0             @ Empty Y position in tiles
	.byte 0             @ Empty selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown

	.4byte 58			@ Back text tile object ID
	.byte 8             @ Back text X position in tiles
	.byte 17            @ Back text Y position in tiles
	.byte 4             @ Back text selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom? 
	.2byte 0x0000       @ Unknown

	.4byte 60			@ Visual options title bar
	.byte 7             @ Visual options title bar X position in tiles
	.byte 1             @ Visual options title bar Y position in tiles
	.byte 6             @ Visual options title bar selection box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown

	.4byte 55			@ Select text tile object ID
	.byte 6             @ Select text X position in tiles
	.byte 17            @ Select text Y position in tiles
	.byte 0             @ Select text selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom? 
	.2byte 0x0000       @ Unknown

	.4byte 57			@ Play text tile object ID
	.byte 19            @ Play text X position in tiles
	.byte 17            @ Play text Y position in tiles
	.byte 3             @ Play text Y selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown

	.4byte 54			@ A button tile object ID
	.byte 17            @ A button X position in tiles
	.byte 17            @ A button Y position in tiles
	.byte 0             @ A button selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown

	.4byte 0			@ Empty tile object ID
	.byte 0             @ Empty X position in tiles
	.byte 0             @ Empty Y position in tiles
	.byte 0             @ Empty selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown

	.4byte 0x00000000 	@ Exit to menu type (0xFFFFFFFF returns to previous main state)
	.4byte 0x00000001   @ Option to select on exit
	.4byte 0x00000000   @ Option 1 function
	.4byte sub_08028740 @ Option 2 function
	.4byte sub_08028824 @ Option 3 function
	
	@ Delete all save data sub menu
	.byte 2 			@ Number of options in sub menu
	.byte 5             @ Total tile objects (A to select and related)
	.2byte 0x0000       @ Unknown
	
	.4byte 0xFFFFFFFF 	@ Tile object ID (does 0xFFFFFFFF mean sprite used instead of tile object?)
	.byte 68			@ Delete data "no" selection box X postion in pixels
	.byte 80 			@ Delete data "no" selection box y postion in pixels
	.byte 4 			@ Selction box width
	.byte 0x00			@ Unknown
	.4byte 0 			@ Sub menu to go to on selection -- unknown what this does for the sprite type
	.4byte 0x00000000	@ Function to trigger when pressing A
	.2byte 0 			@ Tile objects shown at bottom?
	.2byte 0x0000		@ Unknown
	
	.4byte 0xFFFFFFFF	@ Tile object ID (does 0xFFFFFFFF mean sprite used instead of tile object?)
	.byte 115           @ Delete data "yes" selection box X postion in pixels
	.byte 80            @ Delete data "yes" selection box y postion in pixels
	.byte 4             @ Selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection -- unknown what this does for the sprite type
	.4byte sub_08029190 @ Function to trigger when pressing A
	.2byte 0       		@ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown	
	
	.4byte 0			@ Tile object ID
	.byte 0          	@ X position
	.byte 0          	@ Y Position
	.byte 0             @ Selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection -- unknown what this does for the sprite type
	.4byte 0x00000000 	@ Function to trigger when pressing A
	.2byte 0      		@ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown
	
	.4byte 58			@ Select text tile object ID
	.byte 8             @ Select text X position in tiles
	.byte 17            @ Select text Y position in tiles
	.byte 4             @ Select text selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown
	
	.4byte 56			@ B button tile object ID
	.byte 19 			@ B button X position in tiles
	.byte 17 			@ B button Y position in tiles
	.byte 5 			@ B button selction box width
	.byte 0x00			@ Unknown
	.4byte 0			@ Sub menu to go to on selection
	.4byte 0x00000000	@ Function to trigger when pressing A
	.2byte 0 			@ Tile objects shown at bottom? (acts weird in the top menu here)
	.2byte 0x0000 		@ Unknown
	
	.4byte 62			@ Erase all save data question box tile object ID
	.byte 7             @ Erase all save data question box X position in tiles
	.byte 6            	@ Erase all save data question box Y position in tiles
	.byte 0             @ Select text selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown
	
	.4byte 55 			@ Select text tile object ID
	.byte 6	            @ Select text X position in tiles
	.byte 17            @ Select text Y position in tiles
	.byte 0             @ Select text button selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000   @ Function to trigger when pressing A
	.2byte 0            @ Tile objects shown at bottom?
	.2byte 0x0000       @ Unknown
	
	.4byte 54 			@ A button tile object ID
	.byte 17            @ A button X position in tiles
	.byte 17            @ A button Y position in tiles
	.byte 0             @ A button selction box width
	.byte 0x00          @ Unknown
	.4byte 0            @ Sub menu to go to on selection
	.4byte 00000000     @ Function to trigger when pressing A
	.2byte 0000         @ Tile objects shown at bottom?
	.2byte 0000         @ Unknown
	
	.4byte 0			@ Tile object	
	.byte 0          	@ X position	
	.byte 0          	@ Y Position	
	.byte 0             @ Selction box width
	.byte 0x00          @ Unknown	
	.4byte 0            @ Sub menu to go to on selection
	.4byte 0x00000000 	@ Function to trigger when pressing A	
	.2byte 0      		@ Tile objects shown at bottom?	
	.2byte 0x0000       @ Unknown	
	
	.4byte 0x00000000	@ Exit to menu type (0xFFFFFFFF returns to previous main state)
	.4byte 0x00000002	@ Option to select on exit
	.4byte 0x00000003   @ Option 1 function
	.4byte 0x00000000	@ Option 2 function
	.4byte 0x00000000	@ Option 3 function

	.GLOBAL gUnknown_08079D20
gUnknown_08079D20:
	.4byte 0x00000004 @ Audio options "Mono" system tile object ID
	.4byte 0x00000003 @ Audio options "Stereo" system tile object ID

	.GLOBAL gUnknown_08079D28
gUnknown_08079D28:
	.4byte 0x00000012 @ Visual options "GBA Mode" screen tile object ID
	.4byte 0x00000011 @ Visual options "GB Player mode" screen tile object ID
	
	.GLOBAL gUnknown_08079D30
gUnknown_08079D30:
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00C02018
	.4byte 0x00000000
	.4byte 0x03C03440
	.4byte 0x00000000
	.4byte 0x04C04C18

	.GLOBAL gUnknown_08079D4C
gUnknown_08079D4C:
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00C02018
	.4byte 0x00000000
	.4byte 0x03C03440
	.4byte 0x00000000
	.4byte 0x04C04C18
	
	.GLOBAL gUnknown_08079D68
gUnknown_08079D68:
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00C02018
	.4byte 0x00000000
	.4byte 0x03C03440
	.4byte 0x00000000
	.4byte 0x04C04C18	
	
	.GLOBAL gUnknown_08079D84
gUnknown_08079D84:
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00C02018
	.4byte 0x00000000
	.4byte 0x03C03440
	.4byte 0x00000000
	.4byte 0x04C04C18
	

	.GLOBAL gUnknown_08079DA0
gUnknown_08079DA0:
	.4byte gUnknown_08079D30
	.4byte gUnknown_08079D4C
	.4byte gUnknown_08079D68
	.4byte gUnknown_08079D84
