	.SECTION .data

	.GLOBAL gUnknown_080788B0
gUnknown_080788B0:
	.INCBIN "baserom.gba", 0x788B0, 0x788C8-0x788B0

	.GLOBAL gUnknown_080788C8
gUnknown_080788C8:
	.INCBIN "baserom.gba", 0x788C8, 0x788E0-0x788C8

	.GLOBAL gUnknown_080788E0
gUnknown_080788E0:
	.INCBIN "baserom.gba", 0x788E0, 0x788F4-0x788E0

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

	.GLOBAL gUnknown_08078904
gUnknown_08078904:
	.INCBIN "baserom.gba", 0x78904, 0x78944-0x78904

	.GLOBAL gUnknown_08078944
gUnknown_08078944:
	.INCBIN "baserom.gba", 0x78944, 0x7897C-0x78944

	.GLOBAL gUnknown_0807897C
gUnknown_0807897C:
	.INCBIN "baserom.gba", 0x7897C, 0x789BC-0x7897C

	.GLOBAL gUnknown_080789BC
gUnknown_080789BC:
	.INCBIN "baserom.gba", 0x789BC, 0x789F4-0x789BC

	.GLOBAL gUnknown_080789F4
gUnknown_080789F4:
	.INCBIN "baserom.gba", 0x789F4, 0x78AB4-0x789F4

	.GLOBAL gUnknown_08078AB4
gUnknown_08078AB4:
	.INCBIN "baserom.gba", 0x78AB4, 0x78B74-0x78AB4

	.GLOBAL gUnknown_08078B74
gUnknown_08078B74:
	.INCBIN "baserom.gba", 0x78B74, 0x78C1C-0x78B74

	.GLOBAL gUnknown_08078C1C
gUnknown_08078C1C:
	.INCBIN "baserom.gba", 0x78C1C, 0x78CC4-0x78C1C

	.GLOBAL gUnknown_08078CC4
gUnknown_08078CC4:
	.INCBIN "baserom.gba", 0x78CC4, 0x78CF4-0x78CC4

	.GLOBAL gUnknown_08078CF4
gUnknown_08078CF4:
	.INCBIN "baserom.gba", 0x78CF4, 0x78D24-0x78CF4

	.GLOBAL gUnknown_08078D24
gUnknown_08078D24:
	.INCBIN "baserom.gba", 0x78D24, 0x78DE4-0x78D24

	.GLOBAL gUnknown_08078DE4
gUnknown_08078DE4:
	.INCBIN "baserom.gba", 0x78DE4, 0x78E8C-0x78DE4

	.GLOBAL gLevelSelectLevelArtSpriteLayout
gLevelSelectLevelArtSpriteLayout:
	.2byte 0x001C @ X Position
	.2byte 0x0034 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count? doesnt affect this first one
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics

	.2byte 0x004E @ X Position
	.2byte 0x0034 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 0x0080 @ X Position
	.2byte 0x0034 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 0x00B2 @ X Position
	.2byte 0x0034 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 0x001C @ X Position
	.2byte 0x0061 @ Y position
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 0x004E @ X Position
	.2byte 0x0061 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 0x0080 @ X Position
	.2byte 0x0061 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 0x00B2 @ X Position
	.2byte 0x0061 @ Y position
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
	.INCBIN "baserom.gba", 0x794D4, 0x794EC-0x794D4

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
	.INCBIN "baserom.gba", 0x797A8, 0x797B0-0x797A8

	.GLOBAL gUnknown_080797B0
gUnknown_080797B0:
	.INCBIN "baserom.gba", 0x797B0, 0x797B8-0x797B0

	.GLOBAL gUnknown_080797B8
gUnknown_080797B8:
	.INCBIN "baserom.gba", 0x797B8, 0x797C8-0x797B8

	.GLOBAL gUnknown_080797C8
gUnknown_080797C8:
	.INCBIN "baserom.gba", 0x797C8, 0x797E0-0x797C8

	.GLOBAL gUnknown_080797E0
gUnknown_080797E0:
	.INCBIN "baserom.gba", 0x797E0, 0x79868-0x797E0

	.GLOBAL gUnknown_08079868
gUnknown_08079868:
	.INCBIN "baserom.gba", 0x79868, 0x79878-0x79868

	.GLOBAL gUnknown_08079878
gUnknown_08079878:
	.INCBIN "baserom.gba", 0x79878, 0x798B0-0x79878

	.GLOBAL gUnknown_080798B0
gUnknown_080798B0:
	.INCBIN "baserom.gba", 0x798B0, 0x798E8-0x798B0

	.GLOBAL gUnknown_080798E8
gUnknown_080798E8:
	.INCBIN "baserom.gba", 0x798E8, 0x79938-0x798E8

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

	.GLOBAL gUnknown_08079990 @ potentally movie song ID table?
gUnknown_08079990:
	.byte 0x17
	.byte 0x29
	.byte 0x2B
	.byte 0x3D
	.byte 0x2C
	.byte 0x2D
	.byte 0x2E
	.byte 0x2F

	.GLOBAL gUnknown_08079998
gUnknown_08079998:
	.INCBIN "baserom.gba", 0x79998, 0x799D0-0x79998

	.GLOBAL gUnknown_080799D0
gUnknown_080799D0:
	.INCBIN "baserom.gba", 0x799D0, 0x799F0-0x799D0

	.GLOBAL gUnknown_080799F0
gUnknown_080799F0:
	.INCBIN "baserom.gba", 0x799F0, 0x79D20-0x799F0

	.GLOBAL gUnknown_08079D20
gUnknown_08079D20:
	.4byte 0x00000004
	.4byte 0x00000003

	.GLOBAL gUnknown_08079D28
gUnknown_08079D28:
	.4byte 0x00000012
	.4byte 0x00000011
	
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
	.INCBIN "baserom.gba", 0x79EA0, 0x79EB8-0x79EA0

	.GLOBAL gUnknown_08079EB8
gUnknown_08079EB8:
	.INCBIN "baserom.gba", 0x79EB8, 0x79ED0-0x79EB8

	.GLOBAL gUnknown_08079ED0 	@ Level help screen sprite table pointers
gUnknown_08079ED0:
	.INCBIN "baserom.gba", 0x79ED0, 0x79F00-0x79ED0

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
	.INCBIN "baserom.gba", 0x7C118, 0x7C7A8-0x7C118

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
	.INCBIN "baserom.gba", 0x7C7CC, 0x7C804-0x7C7CC

	.GLOBAL gUnknown_0807C804
gUnknown_0807C804:
	.INCBIN "baserom.gba", 0x7C804, 0x7C814-0x7C804

	.GLOBAL gUnknown_0807C814
gUnknown_0807C814:
	.INCBIN "baserom.gba", 0x7C814, 0x7C82C-0x7C814

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
	.INCBIN "baserom.gba", 0x7C834, 0x7C838-0x7C834

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
	.4byte 0x000000C
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

	.GLOBAL gUnknown_0807CA08
gUnknown_0807CA08:
	.4byte 0x00000334
	.4byte 0x000003A3
	.4byte 0x00000097
	.4byte 0x00000359
	.4byte 0x0000035D
	.4byte 0x00000354
	.4byte 0x00000357
	.4byte 0x0000035B
	.4byte 0x00000352

	.GLOBAL gUnknown_0807CA2C
gUnknown_0807CA2C:
	.byte 0x05
	.byte 0x00
	.byte 0x06
	.byte 0x00
	.byte 0x07
	.byte 0x05
	.byte 0x08
	.byte 0x06
	.byte 0x09
	.byte 0x07
	.byte 0x0A
	.byte 0x08
	.byte 0x0B
	.byte 0x0D
	.byte 0x0C
	.byte 0x0E
	.byte 0x0D
	.byte 0x0F
	.byte 0x00
	.byte 0x00

	.GLOBAL gUnknown_0807CA40
gUnknown_0807CA40:
	.4byte 0x00000001
	.4byte 0x00000011
	.4byte 0x00000015
	.4byte 0x00000011
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x00000001
	.4byte 0x00000011
	.4byte 0x00000015
	.4byte 0x00000011
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000003
	
	.GLOBAL gUnknown_0807CA88
gUnknown_0807CA88:
	.4byte gTextPressAToAddLevel
	.4byte gTextPressAToEraseLevel

	.GLOBAL gUnknown_0807CA90
gUnknown_0807CA90:
	.2byte 0x0044
	.2byte 0x0073

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
	.INCBIN "baserom.gba", 0x7DC70, 0x7DC88-0x7DC70

	.GLOBAL gUnknown_0807DC88
gUnknown_0807DC88:
	.INCBIN "baserom.gba", 0x7DC88, 0x7DC8C-0x7DC88

	.GLOBAL gUnknown_0807DC8C
gUnknown_0807DC8C:
	.INCBIN "baserom.gba", 0x7DC8C, 0x7DC90-0x7DC8C

	.GLOBAL gUnknown_0807DC90
gUnknown_0807DC90:
	.INCBIN "baserom.gba", 0x7DC90, 0x7DC9C-0x7DC90

	.GLOBAL gUnknown_0807DC9C
gUnknown_0807DC9C:
	.INCBIN "baserom.gba", 0x7DC9C, 0x7DD14-0x7DC9C

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

	.GLOBAL gUnknown_080A7DF8
gUnknown_080A7DF8:
	.4byte 0x0000004A
	.4byte 0x00000013
	.4byte 0x00000072
	.4byte 0x00000013
	.4byte 0x0000009A
	.4byte 0x00000013
	.4byte 0x000000C2
	.4byte 0x00000013
	.4byte 0x0000004A
	.4byte 0x0000003B
	.4byte 0x00000072
	.4byte 0x0000003B
	.4byte 0x0000009A
	.4byte 0x0000003B
	.4byte 0x000000C2
	.4byte 0x0000003B
	.4byte 0x0000004A
	.4byte 0x00000063
	.4byte 0x00000072
	.4byte 0x00000063
	.4byte 0x0000009A
	.4byte 0x00000063
	.4byte 0x000000C2
	.4byte 0x00000063
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
	.INCBIN "baserom.gba", 0xA7EB8, 0xA7ED0-0xA7EB8

	.GLOBAL gUnknown_080A7ED0
gUnknown_080A7ED0:
	.INCBIN "baserom.gba", 0xA7ED0, 0xA7EE8-0xA7ED0

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

	.GLOBAL gUnknown_080A8668
gUnknown_080A8668:
	.byte 0x09
	.byte 0x12
	.byte 0x1B
	.byte 0x24
	.byte 0x2D
	.byte 0x36
	.byte 0x3F
	.byte 0x48
	.byte 0x51
	.byte 0x5A
	.byte 0x5A
	.byte 0x5A
