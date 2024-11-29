	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_080788B0
gUnknown_080788B0:
	.4byte 0x01000000
	.4byte 0x02000000
	.4byte 0x04000000
	.4byte 0x08000000
	.4byte 0x00100000
	.4byte 0x00200000

	.GLOBAL gUnknown_080788C8
gUnknown_080788C8:
	.4byte 0x00400000
	.4byte 0x00800000
	.4byte 0x00010000
	.4byte 0x00020000
	.4byte 0x00040000
	.4byte 0x00080000

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
	.2byte 224 @ X Position
	.2byte 80 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0004 @ Total tiles
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C2608 @ Animation Data
	.4byte gUnknown_085C262C @ OAM
	.4byte gUnknown_085C2634 @ Sprite Graphics

	.GLOBAL gUnknown_080794D4
gUnknown_080794D4:
	.2byte 0
	.2byte 0
	.2byte 0x0040
	.2byte 0x0008
	.2byte 0x0100
	.2byte 0x0000
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
	
	.GLOBAL gUnknown_08079DB0  	@ Level help screen sprite table
gUnknown_08079DB0:
	.INCBIN "baserom.gba", 0x79DB0, 0x79DC8-0x79DB0

	.GLOBAL gUnknown_08079DC8
gUnknown_08079DC8:
	.INCBIN "baserom.gba", 0x79DC8, 0x79DE0-0x79DC8

	.GLOBAL gUnknown_08079DE0
gUnknown_08079DE0:
	.INCBIN "baserom.gba", 0x79DE0, 0x79DF8-0x79DE0

	.GLOBAL gUnknown_08079DF8
gUnknown_08079DF8:
	.INCBIN "baserom.gba", 0x79DF8, 0x79E10-0x79DF8

	.GLOBAL gUnknown_08079E10
gUnknown_08079E10:
	.INCBIN "baserom.gba", 0x79E10, 0x79E28-0x79E10

	.GLOBAL gUnknown_08079E28
gUnknown_08079E28:
	.INCBIN "baserom.gba", 0x79E28, 0x79E40-0x79E28

	.GLOBAL gUnknown_08079E40
gUnknown_08079E40:
	.INCBIN "baserom.gba", 0x79E40, 0x79E58-0x79E40

	.GLOBAL gUnknown_08079E58
gUnknown_08079E58:
	.INCBIN "baserom.gba", 0x79E58, 0x79E70-0x79E58

	.GLOBAL gUnknown_08079E70
gUnknown_08079E70:
	.INCBIN "baserom.gba", 0x79E70, 0x79E88-0x79E70

	.GLOBAL gUnknown_08079E88
gUnknown_08079E88:
	.INCBIN "baserom.gba", 0x79E88, 0x79EA0-0x79E88

	.GLOBAL gUnknown_08079EA0
gUnknown_08079EA0:
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0040
	.2byte 0x0008
	.2byte 0x0100
	.2byte 0x0000
	.4byte gUnknown_082E3EEC
	.4byte gUnknown_082E3F10
	.4byte gUnknown_082E3F18

	.GLOBAL gUnknown_08079EB8
gUnknown_08079EB8:
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0080
	.2byte 0x0010
	.2byte 0x0200
	.2byte 0x0000
	.4byte gUnknown_082E3A94
	.4byte gUnknown_082E3AB8
	.4byte gUnknown_082E3AC0

	.GLOBAL gUnknown_08079ED0 	@ Level help screen sprite table pointers
gUnknown_08079ED0:
	.4byte gUnknown_08079DB0
	.4byte gUnknown_08079DC8
	.4byte gUnknown_08079DE0
	.4byte gUnknown_08079DF8
	.4byte gUnknown_08079E10
	.4byte gUnknown_08079E28
	.4byte gUnknown_08079E40
	.4byte gUnknown_08079E58
	.4byte gUnknown_08079E70
	.4byte gUnknown_08079E88
	.4byte gUnknown_08079EA0
	.4byte gUnknown_08079EB8

	.GLOBAL gHelpScreenBaseSpriteLayout
gHelpScreenBaseSpriteLayout:
	.4byte gUnknown_08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 0 @ Y position

	.4byte gUnknown_08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 96 @ Y position

	.4byte gUnknown_08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 128 @ Y position
	
	.4byte gUnknown_08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 32 @ Y position	
	
	.4byte gUnknown_08079EA0 @ Sprite pointer
	.4byte 0x0000000A @ Unknown
	.2byte 24 @ X position
	.2byte 16 @ Y position
	
	.4byte gUnknown_08079DC8 @ Sprite pointer
	.4byte 0x00000001 @ Unknown
	.2byte 16 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 48 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 80 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 112 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 144 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 176 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079DF8 @ Sprite pointer
	.4byte 0x00000003 @ Unknown
	.2byte 208 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079E10 @ Sprite pointer
	.4byte 0x00000004 @ Unknown
	.2byte 16 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 48 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 80 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 112 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 144 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 176 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079E28 @ Sprite pointer
	.4byte 0x00000005 @ Unknown
	.2byte 208 @ X position
	.2byte 32 @ Y position	
	
	.4byte gUnknown_08079E10 @ Sprite pointer
	.4byte 0x00000004 @ Unknown
	.2byte 16 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 48 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 80 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 112 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 144 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 176 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E28 @ Sprite pointer
	.4byte 0x00000005 @ Unknown
	.2byte 208 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E10 @ Sprite pointer
	.4byte 0x00000004 @ Unknown
	.2byte 16 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 48 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 80 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 112 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 144 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 176 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079E28 @ Sprite pointer
	.4byte 0x00000005 @ Unknown
	.2byte 208 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079EB8 @ Sprite pointer
	.4byte 0x0000000B @ Unknown
	.2byte 100 @ X position
	.2byte 144 @ Y position
	
	.4byte gUnknown_08079E40 @ Sprite pointer
	.4byte 0x00000006 @ Unknown
	.2byte 16 @ X position
	.2byte 128 @ Y position
	
	.4byte gUnknown_08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 48 @ X position
	.2byte 128 @ Y position
	
	.4byte gUnknown_08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 80 @ X position
	.2byte 128 @ Y position	
	
	.4byte gUnknown_08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 112 @ X position
	.2byte 128 @ Y position
	
	.4byte gUnknown_08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 144 @ X position
	.2byte 128 @ Y position
	
	.4byte gUnknown_08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 176 @ X position
	.2byte 128 @ Y position
	
	.4byte gUnknown_08079E70 @ Sprite pointer
	.4byte 0x00000008 @ Unknown
	.2byte 208 @ X position
	.2byte 128 @ Y position
	
	.GLOBAL gHelpLevelViewerSpriteLayout
gHelpLevelViewerSpriteLayout:
	.INCBIN "baserom.gba", 0x7A104, 0x7A1C4-0x7A104
	
	.GLOBAL gHelpHandstandSpriteLayout
gHelpHandstandSpriteLayout:
	.INCBIN "baserom.gba", 0x7A1C4, 0x7A2CC-0x7A1C4
	
	.GLOBAL gHelpHandstandDoubleJumpSpriteLayout
gHelpHandstandDoubleJumpSpriteLayout:
	.INCBIN "baserom.gba", 0x7A2CC, 0x7A44C-0x7A2CC
	
	.GLOBAL gHelpBackflipSpriteLayout
gHelpBackflipSpriteLayout:
	.INCBIN "baserom.gba", 0x7A44C, 0x7A4F4-0x7A44C
	
	.GLOBAL gHelpThrowObjectsSpriteLayout
gHelpThrowObjectsSpriteLayout:
	.INCBIN "baserom.gba", 0x7A4F4, 0x7A5B4-0x7A4F4
	
	.GLOBAL gHelpJumpUpAndThrowSpriteLayout
gHelpJumpUpAndThrowSpriteLayout:
	.INCBIN "baserom.gba", 0x7A5B4, 0x7A6A4-0x7A5B4
	
	.GLOBAL gHelpHandStandDeflectsSpriteLayout
gHelpHandStandDeflectsSpriteLayout:
	.INCBIN "baserom.gba", 0x7A6A4, 0x7A764-0x7A6A4
	
	.GLOBAL gHelpWireSpinAndJumpSpriteLayout
gHelpWireSpinAndJumpSpriteLayout:
	.INCBIN "baserom.gba", 0x7A764, 0x7A884-0x7A764
	
	.GLOBAL gHelpSpringJumpSpriteLayout
gHelpSpringJumpSpriteLayout:
	.INCBIN "baserom.gba", 0x7A884, 0x7A92C-0x7A884

	.GLOBAL gUnknown_0807A92C @ Level help screen tutorial sprite layout table
gUnknown_0807A92C:
	.4byte gHelpLevelViewerSpriteLayout
	.4byte 8 @ Sprite count
	.4byte gHelpHandstandSpriteLayout
	.4byte 11 @ Sprite count
	.4byte gHelpHandstandDoubleJumpSpriteLayout
	.4byte 16 @ Sprite count
	.4byte gHelpBackflipSpriteLayout
	.4byte 7 @ Sprite count
	.4byte gHelpThrowObjectsSpriteLayout
	.4byte 8 @ Sprite count
	.4byte gHelpJumpUpAndThrowSpriteLayout
	.4byte 10 @ Sprite count
	.4byte gHelpHandStandDeflectsSpriteLayout
	.4byte 8 @ Sprite count
	.4byte gHelpWireSpinAndJumpSpriteLayout
	.4byte 12 @ Sprite count
	.4byte gHelpSpringJumpSpriteLayout
	.4byte 7 @ Sprite count

	.GLOBAL gUnknown_0807A974
gUnknown_0807A974:
	.INCBIN "baserom.gba", 0x7A974, 0x7AA1C-0x7A974

	.GLOBAL gUnknown_0807AA1C
gUnknown_0807AA1C:
	.INCBIN "baserom.gba", 0x7AA1C, 0x7AA58-0x7AA1C

	.GLOBAL gUnknown_0807AA58
gUnknown_0807AA58:
	.INCBIN "baserom.gba", 0x7AA58, 0x7BA58-0x7AA58

	.GLOBAL gUnknown_0807BA58
gUnknown_0807BA58:
	.INCBIN "baserom.gba", 0x7BA58, 0x7BA68-0x7BA58

	.GLOBAL gUnknown_0807BA68
gUnknown_0807BA68:
	.INCBIN "baserom.gba", 0x7BA68, 0x7BB30-0x7BA68

	.GLOBAL gUnknown_0807BB30
gUnknown_0807BB30:
	.INCBIN "baserom.gba", 0x7BB30, 0x7C028-0x7BB30

	.GLOBAL gUnknown_0807C028
gUnknown_0807C028:
	.INCBIN "baserom.gba", 0x7C028, 0x7C098-0x7C028

	.GLOBAL gUnknown_0807C098
gUnknown_0807C098:
	.INCBIN "baserom.gba", 0x7C098, 0x7C0D0-0x7C098

	.GLOBAL gUnknown_0807C0D0
gUnknown_0807C0D0:
	.INCBIN "baserom.gba", 0x7C0D0, 0x7C0D8-0x7C0D0

	.GLOBAL gUnknown_0807C0D8
gUnknown_0807C0D8:
	.INCBIN "baserom.gba", 0x7C0D8, 0x7C0E0-0x7C0D8

	.GLOBAL gUnknown_0807C0E0
gUnknown_0807C0E0:
	.INCBIN "baserom.gba", 0x7C0E0, 0x7C118-0x7C0E0

	.GLOBAL gUnknown_0807C118
gUnknown_0807C118:
	.INCBIN "baserom.gba", 0x7C118, 0x7C280-0x7C118
	
	.GLOBAL gUnknown_0807C280
gUnknown_0807C280:
	.INCBIN "baserom.gba", 0x7C280, 0x7C2C8-0x7C280
	
	.GLOBAL gUnknown_0807C2C8
gUnknown_0807C2C8:
	.INCBIN "baserom.gba", 0x7C2C8, 0x7C310-0x7C2C8
	
	.GLOBAL gUnknown_0807C310
gUnknown_0807C310:
	.INCBIN "baserom.gba", 0x7C310, 0x7C358-0x7C310
	
	.GLOBAL gUnknown_0807C358
gUnknown_0807C358:
	.INCBIN "baserom.gba", 0x7C358, 0x7C388-0x7C358
	
	.GLOBAL gUnknown_0807C388
gUnknown_0807C388:
	.INCBIN "baserom.gba", 0x7C388, 0x7C3E8-0x7C388
	
	.GLOBAL gUnknown_0807C3E8
gUnknown_0807C3E8:
	.INCBIN "baserom.gba", 0x7C3E8, 0x7C430-0x7C3E8
	
	.GLOBAL gUnknown_0807C430
gUnknown_0807C430:
	.INCBIN "baserom.gba", 0x7C430, 0x7C490-0x7C430
	
	.GLOBAL gUnknown_0807C490
gUnknown_0807C490:
	.INCBIN "baserom.gba", 0x7C490, 0x7C4A8-0x7C490
	
	.GLOBAL gUnknown_0807C4A8
gUnknown_0807C4A8:
	.INCBIN "baserom.gba", 0x7C4A8, 0x7C4C0-0x7C4A8
	
	.GLOBAL gUnknown_0807C4C0
gUnknown_0807C4C0:
	.INCBIN "baserom.gba", 0x7C4C0, 0x7C520-0x7C4C0

	.GLOBAL gUnknown_0807C520
gUnknown_0807C520:
	.INCBIN "baserom.gba", 0x7C520, 0x7C538-0x7C520
	
	.GLOBAL gUnknown_0807C538
gUnknown_0807C538:
	.INCBIN "baserom.gba", 0x7C538, 0x7C568-0x7C538
	
	.GLOBAL gUnknown_0807C568
gUnknown_0807C568:
	.INCBIN "baserom.gba", 0x7C568, 0x7C5C8-0x7C568
	
	.GLOBAL gUnknown_0807C5C8
gUnknown_0807C5C8:
	.INCBIN "baserom.gba", 0x7C5C8, 0x7C5E0-0x7C5C8
	
	.GLOBAL gUnknown_0807C5E0
gUnknown_0807C5E0:
	.INCBIN "baserom.gba", 0x7C5E0, 0x7C5F8-0x7C5E0
	
	.GLOBAL gUnknown_0807C5F8
gUnknown_0807C5F8:
	.INCBIN "baserom.gba", 0x7C5F8, 0x7C658-0x7C5F8

	.GLOBAL gUnknown_0807C658
gUnknown_0807C658:
	.INCBIN "baserom.gba", 0x7C658, 0x7C670-0x7C658

	.GLOBAL gUnknown_0807C670
gUnknown_0807C670:
	.INCBIN "baserom.gba", 0x7C670, 0x7C688-0x7C670

	.GLOBAL gUnknown_0807C688
gUnknown_0807C688:
	.INCBIN "baserom.gba", 0x7C688, 0x7C6E8-0x7C688

	.GLOBAL gUnknown_0807C6E8
gUnknown_0807C6E8:
	.INCBIN "baserom.gba", 0x7C6E8, 0x7C700-0x7C6E8

	.GLOBAL gUnknown_0807C700
gUnknown_0807C700:
	.INCBIN "baserom.gba", 0x7C700, 0x7C7A8-0x7C700

	.GLOBAL gUnknown_0807C7A8
gUnknown_0807C7A8:
	.INCBIN "baserom.gba", 0x7C7A8, 0x7C7C4-0x7C7A8

	.GLOBAL gUnknown_0807C7C4
gUnknown_0807C7C4:
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x00

	.GLOBAL gUnknown_0807C7CC
gUnknown_0807C7CC:
	.4byte gUnknown_0807C280
	.4byte gUnknown_0807C2C8
	.4byte gUnknown_0807C388
	.4byte gUnknown_0807C3E8
	.4byte gUnknown_0807C490
	.4byte gUnknown_0807C4A8
	.4byte gUnknown_0807C520
	.4byte gUnknown_0807C538
	.4byte gUnknown_0807C5C8
	.4byte gUnknown_0807C5E0
	.4byte gUnknown_0807C658
	.4byte gUnknown_0807C670
	.4byte gUnknown_0807C6E8
	.4byte gUnknown_0807C700

	.GLOBAL gUnknown_0807C804
gUnknown_0807C804:
	.byte 0x03
	.byte 0x02
	.byte 0x04
	.byte 0x02
	.byte 0x01
	.byte 0x00
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x00
	.byte 0x00
	
	.GLOBAL gUnknown_0807C814
gUnknown_0807C814:
	.4byte gUnknown_0807C310
	.4byte gUnknown_0807C430
	.4byte gUnknown_0807C4C0
	.4byte gUnknown_0807C568
	.4byte gUnknown_0807C5F8
	.4byte gUnknown_0807C688

	.GLOBAL gUnknown_0807C82C
gUnknown_0807C82C:
	.byte 0x03
	.byte 0x02
	.byte 0x02
	.byte 0x02
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.byte 0x00

	.GLOBAL gUnknown_0807C834
gUnknown_0807C834:
	.4byte gUnknown_0807C358 @ TODO

	.GLOBAL gUnknown_0807C838
gUnknown_0807C838:
	.byte 0x02
	.byte 0x00

	.GLOBAL gUnknown_0807C83A
gUnknown_0807C83A:
	.2byte 0x0169
	.2byte 0x0143
	.2byte 0x011D
	.2byte 0x00F7
	.2byte 0x00D1
	.2byte 0x00AB
	.2byte 0x0085
	.2byte 0x005F
	.2byte 0x0039
	.2byte 0x0013
	.2byte 0x0000

	.GLOBAL gUnknown_0807C850
gUnknown_0807C850:
	.4byte 0x00000001
	.4byte gTextCRCCheckFailed
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x0000000C
	.4byte gTextCancel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
	.4byte 0x00000001
	.4byte gTextTimeOut
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x000000C
	.4byte gTextCancel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
	.4byte 0x00000001
	.4byte gTextConnectionLost
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x000000C
	.4byte gTextCancel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
	.4byte 0x00000000
	.4byte gTextLevelAlreadyExists
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte gTextOverwrite
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x0000000C
	.4byte gTextCancel
	.4byte 0x00000000
	
	.4byte 0x00000000
	.4byte gTextLevelDoesNotBelongToCurrentWorld
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte gTextEraseOldWorld
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x0000000C
	.4byte gTextCancel
	.4byte 0x00000000
	
	.4byte 0x00000000
	.4byte gTextThemeCardActivated
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte gTextPressAToContinue2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x14000101
	
	.4byte 0x00000000
	.4byte gTextThemeCardDeactivated
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte gTextPressAToContinue2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x14000101
	
	.4byte 0x00000000
	.4byte gTextThemeCardAlreadyLoadedOverwrite
	.4byte 0x00000002
	.4byte 0x0000000D
	.4byte gTextYes
	.4byte 0x0000000B
	.4byte gTextNo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x28010101
	
	.GLOBAL gUnknown_0807C990
gUnknown_0807C990:
	.4byte gTextPleaseConnectEReader
	.4byte gTextWaitingForECard
	.4byte gTextECardDetected
	.4byte gTextRecivingECard
	.4byte gTextRecivedNewLevel
	.4byte gTextRecivedLevelAlreadyExists
	.4byte gTextError
	.4byte gTextAddingLevel
	.4byte gTextErasingLevels
	.4byte gTextSavingLevelAs
	.4byte gTextSavingLevelAs
	.4byte gTextBlank
	.4byte gTextBlank
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_0807C9CC
gUnknown_0807C9CC:
	.4byte gTextPressAWhenReady
	.4byte gTextPressBToCancel
	.4byte gTextPressAToReceiveLevel
	.4byte gTextDoNotTurnOff
	.4byte gTextPressAToContinue
	.4byte gTextPressAToContinue
	.4byte gTextPressAToRetry
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_0807CA08 @ e-Reader sprite IDs
gUnknown_0807CA08:
	.4byte 0x00000334 @ Sprite ID used for the standard selection box
	.4byte 0x000003A3 @ Sprite ID used for the delete yes/no selection box
	.4byte 0x00000097 
	.4byte 0x00000359
	.4byte 0x0000035D
	.4byte 0x00000354
	.4byte 0x00000357
	.4byte 0x0000035B
	.4byte 0x00000352

	.GLOBAL gUnknown_0807CA2C @ e-Reader menu palette lines
gUnknown_0807CA2C:
	.byte 0x05
	.byte 0x00 @ palette line used for add/erase level selection box
	.byte 0x06 @ palette line used for not added levels
	.byte 0x00 @ palette line used for not added levels selection
	.byte 0x07 @ palette line used for world 1 type level
	.byte 0x05 @ palette line used for world 1 type level selection
	.byte 0x08 @ palette line used for world 2 type level
	.byte 0x06 @ palette line used for world 2 type level selection
	.byte 0x09 @ palette line used for world 3 type level
	.byte 0x07 @ palette line used for world 3 type level selection
	.byte 0x0A @ palette line used for world 4 type level
	.byte 0x08 @ palette line used for world 4 type level selection
	.byte 0x0B @ palette line used for world 5 type level
	.byte 0x0D @ palette line used for world 5 type level selection
	.byte 0x0C @ palette line used for world 6 type level
	.byte 0x0E @ palette line used for world 6 type level selection
	.byte 0x0D @ palette line used for boss type level -- unused
	.byte 0x0F @ palette line used for boss type level selection -- unused
	.byte 0x00
	.byte 0x00

	.GLOBAL gUnknown_0807CA40
gUnknown_0807CA40:
	.4byte 0x00000001 @ Level text X location in tiles
	.4byte 0x00000011 @ Level text Y location in tiles
	
	.4byte 0x00000015 @ Skill text X location in tiles
	.4byte 0x00000011 @ Skill text Y location in tiles
	
	.4byte 0x00000018 @ Skill level 1 banana X location in tiles
	.4byte 0x00000011 @ Skill level 1 banana Y location in tiles
	
	.4byte 0x00000018 @ Skill level 2 banana X location in tiles
	.4byte 0x00000011 @ Skill level 2 banana Y location in tiles
	
	.4byte 0x00000018 @ Skill level 3 banana X location in tiles
	.4byte 0x00000011 @ Skill level 3 banana Y location in tiles
	
	.4byte 0x00000001
	.4byte 0x00000011
	
	.4byte 0x00000015
	.4byte 0x00000011
	
	.4byte 0x00000007 @ X position for the delete e-level sprites
	.4byte 0x00000006 @ Y position for the delete e-level sprites
	
	.4byte 0x00000007
	.4byte 0x00000003
	
	.GLOBAL gUnknown_0807CA88
gUnknown_0807CA88:
	.4byte gTextPressAToAddLevel
	.4byte gTextPressAToEraseLevel

	.GLOBAL gUnknown_0807CA90
gUnknown_0807CA90:
	.2byte 0x0044 @ X Position for the delete e-level no selection cursor
	.2byte 0x0073 @ X Position for the delete e-level yes selection cursor

	.GLOBAL gEWorldLevelCountPtr
gEWorldLevelCountPtr:
	.4byte 0x02012C00

	.GLOBAL gUnknown_0807CA98
gUnknown_0807CA98:
	.4byte 0x0201BC68

	.GLOBAL gPreloadedCardETable
gPreloadedCardETable:
	.4byte gTextCardEOne
	.4byte gCardEDataRevenge
	.4byte gTextCardETwo
	.4byte gCardEDataTheLongWay
	.4byte gTextCardEThree
	.4byte gCardEDataOneShotBlue
	.4byte gTextCardEFour
	.4byte gCardEDataEggAttack
	.4byte gTextCardEFive
	.4byte gCardEDataLaterGator
	.4byte gTextCardESix
	.4byte gCardEDataHotFeet
	.4byte gTextCardESeven
	.4byte gCardEDataBooInABox
	.4byte gTextCardEEight
	.4byte gCardEDataTheThwamplet
	.4byte gTextCardENine
	.4byte gCardEDataATrickyCandle
	.4byte gTextCardETen
	.4byte gCardEDataKeyToTheKey
	.4byte gTextCardEEleven
	.4byte gCardEDataDangerFlowers
	.4byte gTextCardETwelve
	.4byte gCardEDataClimbAndFall
	.4byte gTextCardEThirteen
	.4byte gCardEDataDummy2
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_0807CB0C
gUnknown_0807CB0C:
	.INCBIN "baserom.gba", 0x7CB0C, 0x7CB68-0x7CB0C
	
	.GLOBAL gUnknown_0807CB68
gUnknown_0807CB68:
	.INCBIN "baserom.gba", 0x7CB68, 0x7D1F0-0x7CB68

	.GLOBAL gUnknown_0807D1F0
gUnknown_0807D1F0:
	.INCBIN "baserom.gba", 0x7D1F0, 0x7D270-0x7D1F0

	.GLOBAL gUnknown_0807D270
gUnknown_0807D270:
	.INCBIN "baserom.gba", 0x7D270, 0x7D298-0x7D270

	.GLOBAL gUnknown_0807D298
gUnknown_0807D298:
	.INCBIN "baserom.gba", 0x7D298, 0x7DC70-0x7D298

	.GLOBAL gUnknown_0807DC70
gUnknown_0807DC70:
	.2byte 0xFFC0
	.2byte 0x0000
	.2byte 0xFFFF
	.2byte 0x0040
	.2byte 0x0000
	.2byte 0x0001
	.2byte 0x0001
	.2byte 0x0001
	.2byte 0x0000
	.2byte 0xFFFF
	.2byte 0xFFFF
	.2byte 0x0000

	.GLOBAL gUnknown_0807DC88
gUnknown_0807DC88:
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01

	.GLOBAL gUnknown_0807DC8C
gUnknown_0807DC8C:
	.4byte 0x02038000

	.GLOBAL gUnknown_0807DC90
gUnknown_0807DC90:
	.byte 0x06
	.byte 0x05
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x00
	.byte 0x00

	.GLOBAL gUnknown_0807DC9C
gUnknown_0807DC9C:
	.4byte 0x00000000
	.4byte gUnknown_080769D4
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte gUnknown_080769CC
	.4byte 0x00000002
	.4byte gUnknown_080769C4
	.4byte 0x00000003
	.4byte gUnknown_080769BC
	.4byte 0x0F000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
	.GLOBAL gUnknown_0807DD14
gUnknown_0807DD14:
	.4byte 0x7FFF0000
	.4byte 0x00000000

	.GLOBAL gUnknown_0807DD1C
gUnknown_0807DD1C:
	.4byte gTextErrorFlashNotDetected
	.4byte 0x00000007
	.4byte gTextErrorSaveCorrupted
	.4byte 0x00000004
	.4byte gErrorELevelCorruptedText
	.4byte 0x00000005

	.GLOBAL gPaletteIndices_0807DD34
gPaletteIndices_0807DD34:
	.4byte 37 @ World 1 palette
	.4byte 38 @ World 2 palette
	.4byte 39 @ World 3 palette
	.4byte 40 @ World 4 palette
	.4byte 41 @ World 5 palette
	.4byte 42 @ World 6 palette

	.GLOBAL gPaletteIndices_0807DD4C
gPaletteIndices_0807DD4C:
	.4byte 43 @ World 1 Plus palette
	.4byte 44 @ World 2 Plus palette
	.4byte 45 @ World 3 Plus palette
	.4byte 46 @ World 4 Plus palette
	.4byte 47 @ World 5 Plus palette
	.4byte 48 @ World 6 Plus palette

	.GLOBAL gPaletteIndices_0807DD64
gPaletteIndices_0807DD64:
	.4byte 49 @ Expert 1 palette
	.4byte 50 @ Expert 2 palette
	.4byte 51 @ Expert 3 palette
	.4byte 52 @ Expert 4 palette
	.4byte 53 @ Expert 5 palette
	.4byte 54 @ Expert 6 palette

	.GLOBAL gPaletteIndices_0807DD7C
gPaletteIndices_0807DD7C:
	.4byte 55 @ Expert 7 palette
	.4byte 56 @ Expert 8 palette
	.4byte 57 @ Expert 9 palette
	.4byte 59 @ Expert 10 palette
	.4byte 60 @ Expert 11 palette
	.4byte 61 @ Expert 12 palette

	.GLOBAL gUnknown_0807DD94
gUnknown_0807DD94:
	.INCBIN "baserom.gba", 0x7DD94, 0x81D98-0x7DD94

	.GLOBAL gPredefinedPalettes
gPredefinedPalettes:
	.INCBIN "assets/palettes/0_title_screen_bg.gbapal"
	.INCBIN "assets/palettes/0_title_screen_obj.gbapal"
	.INCBIN "assets/palettes/0_title_screen_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/0_title_screen_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/1_main_menu_bg.gbapal"
	.INCBIN "assets/palettes/1_main_menu_obj.gbapal"
	.INCBIN "assets/palettes/1_main_menu_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/1_main_menu_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/2_expert_levels_bg.gbapal"
	.INCBIN "assets/palettes/2_expert_levels_obj.gbapal"
	.INCBIN "assets/palettes/2_expert_levels_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/2_expert_levels_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/3_options_menu_bg.gbapal"
	.INCBIN "assets/palettes/3_options_menu_obj.gbapal"
	.INCBIN "assets/palettes/3_options_menu_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/3_options_menu_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/4_bg.gbapal"
	.INCBIN "assets/palettes/4_obj.gbapal"
	.INCBIN "assets/palettes/4_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/4_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/5_level_help_bg.gbapal"
	.INCBIN "assets/palettes/5_level_help_obj.gbapal"
	.INCBIN "assets/palettes/5_level_help_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/5_level_help_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/6_bg.gbapal"
	.INCBIN "assets/palettes/6_obj.gbapal"
	.INCBIN "assets/palettes/6_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/6_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/7_level_results_bg.gbapal"
	.INCBIN "assets/palettes/7_level_results_obj.gbapal"
	.INCBIN "assets/palettes/7_level_results_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/7_level_results_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/8_e_world_bg.gbapal"
	.INCBIN "assets/palettes/8_e_world_obj.gbapal"
	.INCBIN "assets/palettes/8_e_world_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/8_e_world_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/9_bg.gbapal"
	.INCBIN "assets/palettes/9_obj.gbapal"
	.INCBIN "assets/palettes/9_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/9_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/10_bg.gbapal"
	.INCBIN "assets/palettes/10_obj.gbapal"
	.INCBIN "assets/palettes/10_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/10_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/11_level_select_world_one_bg.gbapal"
	.INCBIN "assets/palettes/11_level_select_world_one_obj.gbapal"
	.INCBIN "assets/palettes/11_level_select_world_one_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/11_level_select_world_one_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/12_level_select_world_two_bg.gbapal"
	.INCBIN "assets/palettes/12_level_select_world_two_obj.gbapal"
	.INCBIN "assets/palettes/12_level_select_world_two_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/12_level_select_world_two_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/13_level_select_world_three_bg.gbapal"
	.INCBIN "assets/palettes/13_level_select_world_three_obj.gbapal"
	.INCBIN "assets/palettes/13_level_select_world_three_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/13_level_select_world_three_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/14_level_select_world_four_bg.gbapal"
	.INCBIN "assets/palettes/14_level_select_world_four_obj.gbapal"
	.INCBIN "assets/palettes/14_level_select_world_four_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/14_level_select_world_four_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/15_level_select_world_five_bg.gbapal"
	.INCBIN "assets/palettes/15_level_select_world_five_obj.gbapal"
	.INCBIN "assets/palettes/15_level_select_world_five_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/15_level_select_world_five_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/16_level_select_world_six_bg.gbapal"
	.INCBIN "assets/palettes/16_level_select_world_six_obj.gbapal"
	.INCBIN "assets/palettes/16_level_select_world_six_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/16_level_select_world_six_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/17_level_select_dk_boss_bg.gbapal"
	.INCBIN "assets/palettes/17_level_select_dk_boss_obj.gbapal"
	.INCBIN "assets/palettes/17_level_select_dk_boss_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/17_level_select_dk_boss_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/18_level_select_world_one_plus_bg.gbapal"
	.INCBIN "assets/palettes/18_level_select_world_one_plus_obj.gbapal"
	.INCBIN "assets/palettes/18_level_select_world_one_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/18_level_select_world_one_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/19_level_select_world_two_plus_bg.gbapal"
	.INCBIN "assets/palettes/19_level_select_world_two_plus_obj.gbapal"
	.INCBIN "assets/palettes/19_level_select_world_two_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/19_level_select_world_two_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/20_level_select_world_three_plus_bg.gbapal"
	.INCBIN "assets/palettes/20_level_select_world_three_plus_obj.gbapal"
	.INCBIN "assets/palettes/20_level_select_world_three_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/20_level_select_world_three_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/21_level_select_world_four_plus_bg.gbapal"
	.INCBIN "assets/palettes/21_level_select_world_four_plus_obj.gbapal"
	.INCBIN "assets/palettes/21_level_select_world_four_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/21_level_select_world_four_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/22_level_select_world_five_plus_bg.gbapal"
	.INCBIN "assets/palettes/22_level_select_world_five_plus_obj.gbapal"
	.INCBIN "assets/palettes/22_level_select_world_five_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/22_level_select_world_five_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/23_level_select_world_six_plus_bg.gbapal"
	.INCBIN "assets/palettes/23_level_select_world_six_plus_obj.gbapal"
	.INCBIN "assets/palettes/23_level_select_world_six_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/23_level_select_world_six_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/24_level_select_dk_boss_plus_bg.gbapal"
	.INCBIN "assets/palettes/24_level_select_dk_boss_plus_obj.gbapal"
	.INCBIN "assets/palettes/24_level_select_dk_boss_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/24_level_select_dk_boss_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/25_world_one_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/25_world_one_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/25_world_one_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/25_world_one_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/26_world_two_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/26_world_two_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/26_world_two_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/26_world_two_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/27_world_three_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/27_world_three_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/27_world_three_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/27_world_three_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/28_world_four_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/28_world_four_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/28_world_four_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/28_world_four_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/29_world_five_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/29_world_five_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/29_world_five_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/29_world_five_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/30_world_six_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/30_world_six_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/30_world_six_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/30_world_six_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/31_world_one_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/31_world_one_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/31_world_one_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/31_world_one_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/32_world_two_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/32_world_two_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/32_world_two_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/32_world_two_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/33_world_three_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/33_world_three_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/33_world_three_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/33_world_three_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/34_world_four_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/34_world_four_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/34_world_four_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/34_world_four_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/35_world_five_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/35_world_five_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/35_world_five_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/35_world_five_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/36_world_six_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/36_world_six_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/36_world_six_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/36_world_six_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/37_world_one_bg.gbapal"
	.INCBIN "assets/palettes/37_world_one_obj.gbapal"
	.INCBIN "assets/palettes/37_world_one_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/37_world_one_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/38_world_two_bg.gbapal"
	.INCBIN "assets/palettes/38_world_two_obj.gbapal"
	.INCBIN "assets/palettes/38_world_two_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/38_world_two_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/39_world_three_bg.gbapal"
	.INCBIN "assets/palettes/39_world_three_obj.gbapal"
	.INCBIN "assets/palettes/39_world_three_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/39_world_three_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/40_world_four_bg.gbapal"
	.INCBIN "assets/palettes/40_world_four_obj.gbapal"
	.INCBIN "assets/palettes/40_world_four_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/40_world_four_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/41_world_five_bg.gbapal"
	.INCBIN "assets/palettes/41_world_five_obj.gbapal"
	.INCBIN "assets/palettes/41_world_five_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/41_world_five_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/42_world_six_bg.gbapal"
	.INCBIN "assets/palettes/42_world_six_obj.gbapal"
	.INCBIN "assets/palettes/42_world_six_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/42_world_six_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/43_world_one_plus_bg.gbapal"
	.INCBIN "assets/palettes/43_world_one_plus_obj.gbapal"
	.INCBIN "assets/palettes/43_world_one_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/43_world_one_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/44_world_two_plus_bg.gbapal"
	.INCBIN "assets/palettes/44_world_two_plus_obj.gbapal"
	.INCBIN "assets/palettes/44_world_two_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/44_world_two_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/45_world_three_plus_bg.gbapal"
	.INCBIN "assets/palettes/45_world_three_plus_obj.gbapal"
	.INCBIN "assets/palettes/45_world_three_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/45_world_three_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/46_world_four_plus_bg.gbapal"
	.INCBIN "assets/palettes/46_world_four_plus_obj.gbapal"
	.INCBIN "assets/palettes/46_world_four_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/46_world_four_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/47_world_five_plus_bg.gbapal"
	.INCBIN "assets/palettes/47_world_five_plus_obj.gbapal"
	.INCBIN "assets/palettes/47_world_five_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/47_world_five_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/48_world_six_plus_bg.gbapal"
	.INCBIN "assets/palettes/48_world_six_plus_obj.gbapal"
	.INCBIN "assets/palettes/48_world_six_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/48_world_six_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/49_expert_1_bg.gbapal"
	.INCBIN "assets/palettes/49_expert_1_obj.gbapal"
	.INCBIN "assets/palettes/49_expert_1_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/49_expert_1_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/50_expert_2_bg.gbapal"
	.INCBIN "assets/palettes/50_expert_2_obj.gbapal"
	.INCBIN "assets/palettes/50_expert_2_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/50_expert_2_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/51_expert_3_bg.gbapal"
	.INCBIN "assets/palettes/51_expert_3_obj.gbapal"
	.INCBIN "assets/palettes/51_expert_3_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/51_expert_3_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/52_expert_4_bg.gbapal"
	.INCBIN "assets/palettes/52_expert_4_obj.gbapal"
	.INCBIN "assets/palettes/52_expert_4_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/52_expert_4_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/53_expert_5_bg.gbapal"
	.INCBIN "assets/palettes/53_expert_5_obj.gbapal"
	.INCBIN "assets/palettes/53_expert_5_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/53_expert_5_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/54_expert_6_bg.gbapal"
	.INCBIN "assets/palettes/54_expert_6_obj.gbapal"
	.INCBIN "assets/palettes/54_expert_6_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/54_expert_6_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/55_expert_7_bg.gbapal"
	.INCBIN "assets/palettes/55_expert_7_obj.gbapal"
	.INCBIN "assets/palettes/55_expert_7_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/55_expert_7_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/56_expert_8_bg.gbapal"
	.INCBIN "assets/palettes/56_expert_8_obj.gbapal"
	.INCBIN "assets/palettes/56_expert_8_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/56_expert_8_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/57_expert_9_bg.gbapal"
	.INCBIN "assets/palettes/57_expert_9_obj.gbapal"
	.INCBIN "assets/palettes/57_expert_9_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/57_expert_9_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/58_expert_unused_bg.gbapal"
	.INCBIN "assets/palettes/58_expert_unused_obj.gbapal"
	.INCBIN "assets/palettes/58_expert_unused_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/58_expert_unused_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/59_expert_10_bg.gbapal"
	.INCBIN "assets/palettes/59_expert_10_obj.gbapal"
	.INCBIN "assets/palettes/59_expert_10_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/59_expert_10_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/60_expert_11_bg.gbapal"
	.INCBIN "assets/palettes/60_expert_11_obj.gbapal"
	.INCBIN "assets/palettes/60_expert_11_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/60_expert_11_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/61_expert_12_bg.gbapal"
	.INCBIN "assets/palettes/61_expert_12_obj.gbapal"
	.INCBIN "assets/palettes/61_expert_12_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/61_expert_12_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/62_dk_boss_bg.gbapal"
	.INCBIN "assets/palettes/62_dk_boss_obj.gbapal"
	.INCBIN "assets/palettes/62_dk_boss_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/62_dk_boss_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/63_dk_boss_plus_bg.gbapal"
	.INCBIN "assets/palettes/63_dk_boss_plus_obj.gbapal"
	.INCBIN "assets/palettes/63_dk_boss_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/63_dk_boss_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/64_bg.gbapal"
	.INCBIN "assets/palettes/64_obj.gbapal"
	.INCBIN "assets/palettes/64_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/64_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/65_bg.gbapal"
	.INCBIN "assets/palettes/65_obj.gbapal"
	.INCBIN "assets/palettes/65_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/65_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/66_bg.gbapal"
	.INCBIN "assets/palettes/66_obj.gbapal"
	.INCBIN "assets/palettes/66_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/66_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/67_bg.gbapal"
	.INCBIN "assets/palettes/67_obj.gbapal"
	.INCBIN "assets/palettes/67_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/67_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/68_bg.gbapal"
	.INCBIN "assets/palettes/68_obj.gbapal"
	.INCBIN "assets/palettes/68_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/68_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/69_bg.gbapal"
	.INCBIN "assets/palettes/69_obj.gbapal"
	.INCBIN "assets/palettes/69_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/69_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/70_bg.gbapal"
	.INCBIN "assets/palettes/70_obj.gbapal"
	.INCBIN "assets/palettes/70_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/70_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/71_bg.gbapal"
	.INCBIN "assets/palettes/71_obj.gbapal"
	.INCBIN "assets/palettes/71_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/71_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/72_bg.gbapal"
	.INCBIN "assets/palettes/72_obj.gbapal"
	.INCBIN "assets/palettes/72_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/72_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/73_bg.gbapal"
	.INCBIN "assets/palettes/73_obj.gbapal"
	.INCBIN "assets/palettes/73_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/73_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/74_bg.gbapal"
	.INCBIN "assets/palettes/74_obj.gbapal"
	.INCBIN "assets/palettes/74_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/74_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/75_bg.gbapal"
	.INCBIN "assets/palettes/75_obj.gbapal"
	.INCBIN "assets/palettes/75_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/75_obj_gbplayer.gbapal"

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
	.2byte 128 @ Total tiles
	.2byte 0x1000 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829A7F8 @ Animation Data
	.4byte gUnknown_0829A81C @ OAM
	.4byte gUnknown_0829A824 @ Sprite Graphics
	
	.GLOBAL gUnknown_080A7ED0
gUnknown_080A7ED0:
	.2byte 0 @ X Position
	.2byte 0 @ Y Position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 8 @ Total tiles
	.2byte 0x0100 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gfxExpertLevelIconPicsAnimation @ Animation Data
	.4byte gfxExpertLevelIconPicsOAM @ OAM
	.4byte gfxExpertLevelIconPics @ Sprite Graphics

	.GLOBAL gUnknown_080A7EE8
gUnknown_080A7EE8:
	.INCBIN "baserom.gba", 0xA7EE8, 0xA8008-0xA7EE8

	.GLOBAL gUnknown_080A8008
gUnknown_080A8008:
	.INCBIN "baserom.gba", 0xA8008, 0xA8128-0xA8008

	.GLOBAL gUnknown_080A8128
gUnknown_080A8128:
	.INCBIN "baserom.gba", 0xA8128, 0xA8248-0xA8128

	.GLOBAL gUnknown_080A8248
gUnknown_080A8248:
	.INCBIN "baserom.gba", 0xA8248, 0xA8260-0xA8248

	.GLOBAL gUnknown_080A8260
gUnknown_080A8260:
	.INCBIN "baserom.gba", 0xA8260, 0xA8278-0xA8260

	.GLOBAL gUnknown_080A8278
gUnknown_080A8278:
	.INCBIN "baserom.gba", 0xA8278, 0xA8290-0xA8278

	.GLOBAL gUnknown_080A8290
gUnknown_080A8290:
	.INCBIN "baserom.gba", 0xA8290, 0xA82A8-0xA8290

	.GLOBAL gUnknown_080A82A8
gUnknown_080A82A8:
	.INCBIN "baserom.gba", 0xA82A8, 0xA82C0-0xA82A8

	.GLOBAL gUnknown_080A82C0
gUnknown_080A82C0:
	.INCBIN "baserom.gba", 0xA82C0, 0xA8308-0xA82C0

	.GLOBAL gUnknown_080A8308
gUnknown_080A8308:
	.INCBIN "baserom.gba", 0xA8308, 0xA8428-0xA8308

	.GLOBAL gUnknown_080A8428
gUnknown_080A8428:
	.INCBIN "baserom.gba", 0xA8428, 0xA8548-0xA8428

	.GLOBAL gUnknown_080A8548
gUnknown_080A8548:
	.INCBIN "baserom.gba", 0xA8548, 0xA8668-0xA8548

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
