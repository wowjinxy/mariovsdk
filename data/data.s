	.INCLUDE "macro.inc"

	.SECTION .data

@ main_menu

.if 1
	.GLOBAL gUnknown_080785B0
gUnknown_080785B0:
	.INCBIN "baserom.gba", 0x785B0, 0x785E0-0x785B0
.endif
	.GLOBAL gUnknown_080785E0
gUnknown_080785E0:
	.INCBIN "baserom.gba", 0x785E0, 0x78610-0x785E0

	.GLOBAL gUnknown_08078610
gUnknown_08078610:
	.INCBIN "baserom.gba", 0x78610, 0x78628-0x78610

	.GLOBAL gUnknown_08078628
gUnknown_08078628:
	.INCBIN "baserom.gba", 0x78628, 0x78640-0x78628

	.GLOBAL gUnknown_08078640
gUnknown_08078640:
	.INCBIN "baserom.gba", 0x78640, 0x78680-0x78640

	.GLOBAL gUnknown_08078680
gUnknown_08078680:
	.INCBIN "baserom.gba", 0x78680, 0x786C0-0x78680

	.GLOBAL gUnknown_080786C0
gUnknown_080786C0:
	.INCBIN "baserom.gba", 0x786C0, 0x78700-0x786C0

	.GLOBAL gUnknown_08078700
gUnknown_08078700:
	.INCBIN "baserom.gba", 0x78700, 0x78760-0x78700

	.GLOBAL gUnknown_08078760
gUnknown_08078760:
	.INCBIN "baserom.gba", 0x78760, 0x78778-0x78760

	.GLOBAL gUnknown_08078778
gUnknown_08078778:
	.INCBIN "baserom.gba", 0x78778, 0x78790-0x78778

	.GLOBAL gUnknown_08078790
gUnknown_08078790:
	.INCBIN "baserom.gba", 0x78790, 0x787A8-0x78790

	.GLOBAL gUnknown_080787A8
gUnknown_080787A8:
	.INCBIN "baserom.gba", 0x787A8, 0x787C0-0x787A8

	.GLOBAL gUnknown_080787C0
gUnknown_080787C0:
	.INCBIN "baserom.gba", 0x787C0, 0x787D8-0x787C0

	.GLOBAL gUnknown_080787D8
gUnknown_080787D8:
	.INCBIN "baserom.gba", 0x787D8, 0x787F0-0x787D8

	.GLOBAL gUnknown_080787F0
gUnknown_080787F0:
	.INCBIN "baserom.gba", 0x787F0, 0x78808-0x787F0

	.GLOBAL gUnknown_08078808
gUnknown_08078808:
	.INCBIN "baserom.gba", 0x78808, 0x78820-0x78808

	.GLOBAL gUnknown_08078820
gUnknown_08078820:
	.INCBIN "baserom.gba", 0x78820, 0x78850-0x78820

	.GLOBAL gUnknown_08078850
gUnknown_08078850:
	.INCBIN "baserom.gba", 0x78850, 0x78868-0x78850

	.GLOBAL gUnknown_08078868
gUnknown_08078868:
	.INCBIN "baserom.gba", 0x78868, 0x788B0-0x78868

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
	.4byte 0x085D0A00 @ Sprite Data 1
	.4byte 0x085D10C0 @ Sprite Data 2
	.4byte 0x085D10C8 @ Sprite Graphics

	.2byte 0x004E @ X Position
	.2byte 0x0034 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte 0x085D0A00 @ Sprite Data 1
	.4byte 0x085D10C0 @ Sprite Data 2
	.4byte 0x085D10C8 @ Sprite Graphics
	
	.2byte 0x0080 @ X Position
	.2byte 0x0034 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte 0x085D0A00 @ Sprite Data 1
	.4byte 0x085D10C0 @ Sprite Data 2
	.4byte 0x085D10C8 @ Sprite Graphics
	
	.2byte 0x00B2 @ X Position
	.2byte 0x0034 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte 0x085D0A00 @ Sprite Data 1
	.4byte 0x085D10C0 @ Sprite Data 2
	.4byte 0x085D10C8 @ Sprite Graphics
	
	.2byte 0x001C @ X Position
	.2byte 0x0061 @ Y position
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0000 @ unused
	.4byte 0x085D0A00 @ Sprite Data 1
	.4byte 0x085D10C0 @ Sprite Data 2
	.4byte 0x085D10C8 @ Sprite Graphics
	
	.2byte 0x004E @ X Position
	.2byte 0x0061 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte 0x085D0A00 @ Sprite Data 1
	.4byte 0x085D10C0 @ Sprite Data 2
	.4byte 0x085D10C8 @ Sprite Graphics
	
	.2byte 0x0080 @ X Position
	.2byte 0x0061 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte 0x085D0A00 @ Sprite Data 1
	.4byte 0x085D10C0 @ Sprite Data 2
	.4byte 0x085D10C8 @ Sprite Graphics
	
	.2byte 0x00B2 @ X Position
	.2byte 0x0061 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte 0x085D0A00 @ Sprite Data 1
	.4byte 0x085D10C0 @ Sprite Data 2
	.4byte 0x085D10C8 @ Sprite Graphics

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

	.GLOBAL gUnknown_080794EC
gUnknown_080794EC:
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0x00000010

	.GLOBAL gUnknown_08079504
gUnknown_08079504:
	.4byte 0x00000012
	.4byte 0x00000013
	.4byte 0x00000014
	.4byte 0x00000015
	.4byte 0x00000016
	.4byte 0x00000017

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
	.INCBIN "baserom.gba", 0x7954C, 0x7956C-0x7954C

	.GLOBAL gUnknown_0807956C
gUnknown_0807956C:
	.INCBIN "baserom.gba", 0x7956C, 0x79698-0x7956C

	.GLOBAL gUnknown_08079698
gUnknown_08079698:
	.INCBIN "baserom.gba", 0x79698, 0x7976C-0x79698

	.GLOBAL gUnknown_0807976C
gUnknown_0807976C:
	.INCBIN "baserom.gba", 0x7976C, 0x79778-0x7976C

	.GLOBAL gUnknown_08079778
gUnknown_08079778:
	.INCBIN "baserom.gba", 0x79778, 0x79790-0x79778

	.GLOBAL gUnknown_08079790
gUnknown_08079790:
	.INCBIN "baserom.gba", 0x79790, 0x797A8-0x79790

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

	.GLOBAL gUnknown_08079990
gUnknown_08079990:
	.INCBIN "baserom.gba", 0x79990, 0x79998-0x79990

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
	.INCBIN "baserom.gba", 0x79DB0, 0x79ED0-0x79DB0

	.GLOBAL gUnknown_08079ED0 	@ Level help screen sprite table pointers
gUnknown_08079ED0:
	.INCBIN "baserom.gba", 0x79ED0, 0x79F00-0x79ED0

	.GLOBAL gHelpScreenBaseSpriteLayout
gHelpScreenBaseSpriteLayout:
	.4byte 0x08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 0 @ Y position

	.4byte 0x08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 32 @ Y position
	
	.4byte 0x08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 64 @ Y position
		
	.4byte 0x08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 96 @ Y position

	.4byte 0x08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 128 @ Y position
	
	.4byte 0x08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 32 @ Y position	
	
	.4byte 0x08079EA0 @ Sprite pointer
	.4byte 0x0000000A @ Unknown
	.2byte 24 @ X position
	.2byte 16 @ Y position
	
	.4byte 0x08079DC8 @ Sprite pointer
	.4byte 0x00000001 @ Unknown
	.2byte 16 @ X position
	.2byte 0 @ Y position
		
	.4byte 0x08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 48 @ X position
	.2byte 0 @ Y position
	
	.4byte 0x08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 80 @ X position
	.2byte 0 @ Y position
		
	.4byte 0x08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 112 @ X position
	.2byte 0 @ Y position
			
	.4byte 0x08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 144 @ X position
	.2byte 0 @ Y position
				
	.4byte 0x08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 176 @ X position
	.2byte 0 @ Y position
					
	.4byte 0x08079DF8 @ Sprite pointer
	.4byte 0x00000003 @ Unknown
	.2byte 208 @ X position
	.2byte 0 @ Y position
						
	.4byte 0x08079E10 @ Sprite pointer
	.4byte 0x00000004 @ Unknown
	.2byte 16 @ X position
	.2byte 32 @ Y position
	
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 48 @ X position
	.2byte 32 @ Y position
	
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 80 @ X position
	.2byte 32 @ Y position
		
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 112 @ X position
	.2byte 32 @ Y position
			
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 144 @ X position
	.2byte 32 @ Y position
				
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 176 @ X position
	.2byte 32 @ Y position
					
	.4byte 0x08079E28 @ Sprite pointer
	.4byte 0x00000005 @ Unknown
	.2byte 208 @ X position
	.2byte 32 @ Y position	
	
	.4byte 0x08079E10 @ Sprite pointer
	.4byte 0x00000004 @ Unknown
	.2byte 16 @ X position
	.2byte 64 @ Y position
	
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 48 @ X position
	.2byte 64 @ Y position
	
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 80 @ X position
	.2byte 64 @ Y position
		
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 112 @ X position
	.2byte 64 @ Y position
			
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 144 @ X position
	.2byte 64 @ Y position
				
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 176 @ X position
	.2byte 64 @ Y position
					
	.4byte 0x08079E28 @ Sprite pointer
	.4byte 0x00000005 @ Unknown
	.2byte 208 @ X position
	.2byte 64 @ Y position
		
	.4byte 0x08079E10 @ Sprite pointer
	.4byte 0x00000004 @ Unknown
	.2byte 16 @ X position
	.2byte 96 @ Y position
	
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 48 @ X position
	.2byte 96 @ Y position
	
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 80 @ X position
	.2byte 96 @ Y position
		
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 112 @ X position
	.2byte 96 @ Y position
			
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 144 @ X position
	.2byte 96 @ Y position
				
	.4byte 0x08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 176 @ X position
	.2byte 96 @ Y position
					
	.4byte 0x08079E28 @ Sprite pointer
	.4byte 0x00000005 @ Unknown
	.2byte 208 @ X position
	.2byte 96 @ Y position
							
	.4byte 0x08079EB8 @ Sprite pointer
	.4byte 0x0000000B @ Unknown
	.2byte 100 @ X position
	.2byte 144 @ Y position
							
	.4byte 0x08079E40 @ Sprite pointer
	.4byte 0x00000006 @ Unknown
	.2byte 16 @ X position
	.2byte 128 @ Y position
	
	.4byte 0x08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 48 @ X position
	.2byte 128 @ Y position
	
	.4byte 0x08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 80 @ X position
	.2byte 128 @ Y position	
	
	.4byte 0x08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 112 @ X position
	.2byte 128 @ Y position
	
	.4byte 0x08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 144 @ X position
	.2byte 128 @ Y position
	
	.4byte 0x08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 176 @ X position
	.2byte 128 @ Y position
	
	.4byte 0x08079E70 @ Sprite pointer
	.4byte 0x00000008 @ Unknown
	.2byte 208 @ X position
	.2byte 128 @ Y position
	
	.GLOBAL gHelpLevelViewerSpriteLayout
gHelpLevelViewerSpriteLayout:
	.INCBIN "baserom.gba", 0x7A104, 0x7a1c4-0x7A104
	
	.GLOBAL gHelpHandstandSpriteLayout
gHelpHandstandSpriteLayout:
	.INCBIN "baserom.gba", 0x7a1c4, 0x7a2cc-0x7a1c4
	
	.GLOBAL gHelpHandstandDoubleJumpSpriteLayout
gHelpHandstandDoubleJumpSpriteLayout:
	.INCBIN "baserom.gba", 0x7a2cc, 0x7a44c-0x7a2cc
	
	.GLOBAL gHelpBackflipSpriteLayout
gHelpBackflipSpriteLayout:
	.INCBIN "baserom.gba", 0x7a44c, 0x7a4f4-0x7a44c
	
	.GLOBAL gHelpThrowObjectsSpriteLayout
gHelpThrowObjectsSpriteLayout:
	.INCBIN "baserom.gba", 0x7a4f4, 0x7a5b4-0x7a4f4
	
	.GLOBAL gHelpJumpUpAndThrowSpriteLayout
gHelpJumpUpAndThrowSpriteLayout:
	.INCBIN "baserom.gba", 0x7a5b4, 0x7a6a4-0x7a5b4
	
	.GLOBAL gHelpHandStandDeflectsSpriteLayout
gHelpHandStandDeflectsSpriteLayout:
	.INCBIN "baserom.gba", 0x7a6a4, 0x7a764-0x7a6a4
	
	.GLOBAL gHelpWireSpinAndJumpSpriteLayout
gHelpWireSpinAndJumpSpriteLayout:
	.INCBIN "baserom.gba", 0x7a764, 0x7a884-0x7a764
	
	.GLOBAL gHelpSpringJumpSpriteLayout
gHelpSpringJumpSpriteLayout:
	.INCBIN "baserom.gba", 0x7a884, 0x7A92C-0x7a884

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
	.INCBIN "baserom.gba", 0x7C7C4, 0x7C7CC-0x7C7C4

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
	.INCBIN "baserom.gba", 0x7C82C, 0x7C834-0x7C82C

	.GLOBAL gUnknown_0807C834
gUnknown_0807C834:
	.INCBIN "baserom.gba", 0x7C834, 0x7C838-0x7C834

	.GLOBAL gUnknown_0807C838
gUnknown_0807C838:
	.INCBIN "baserom.gba", 0x7C838, 0x7C83A-0x7C838

	.GLOBAL gUnknown_0807C83A
gUnknown_0807C83A:
	.INCBIN "baserom.gba", 0x7C83A, 0x7C850-0x7C83A

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

	.GLOBAL gUnknown_0807CA94
gUnknown_0807CA94:
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
	.4byte 0x00000025
	.4byte 0x00000026
	.4byte 0x00000027
	.4byte 0x00000028
	.4byte 0x00000029
	.4byte 0x0000002A

	.GLOBAL gPaletteIndices_0807DD4C
gPaletteIndices_0807DD4C:
	.4byte 0x0000002B
	.4byte 0x0000002C
	.4byte 0x0000002D
	.4byte 0x0000002E
	.4byte 0x0000002F
	.4byte 0x00000030

	.GLOBAL gPaletteIndices_0807DD64
gPaletteIndices_0807DD64:
	.4byte 0x00000031
	.4byte 0x00000032
	.4byte 0x00000033
	.4byte 0x00000034
	.4byte 0x00000035
	.4byte 0x00000036

	.GLOBAL gPaletteIndices_0807DD7C
gPaletteIndices_0807DD7C:
	.4byte 0x00000037
	.4byte 0x00000038
	.4byte 0x00000039
	.4byte 0x0000003B
	.4byte 0x0000003C
	.4byte 0x0000003D

	.GLOBAL gUnknown_0807DD94
gUnknown_0807DD94:
	.INCBIN "baserom.gba", 0x7DD94, 0x81D98-0x7DD94

	.GLOBAL gPredefinedPalettes
gPredefinedPalettes:
	.INCBIN "assets/Palettes.bin"

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

	.GLOBAL gUnknown_080A8674
gUnknown_080A8674:
	.4byte 0x00000040
	.4byte 0x00000041
	.4byte 0x00000042
	.4byte 0x00000043
	.4byte 0x00000044
	.4byte 0x00000045

	.GLOBAL gUnknown_080A868C
gUnknown_080A868C:
	.4byte 0x00000046
	.4byte 0x00000047
	.4byte 0x00000048
	.4byte 0x00000049
	.4byte 0x0000004A
	.4byte 0x0000004B

	.GLOBAL gWorldStartTable
gWorldStartTable:
	.4byte gWorldOneStartData
	.4byte gWorldTwoStartData
	.4byte gWorldThreeStartData
	.4byte gWorldFourStartData
	.4byte gWorldFiveStartData
	.4byte gWorldSixStartData

	.GLOBAL gWorldPlusStartTable
gWorldPlusStartTable:
	.4byte gWorldOnePlusStartData
	.4byte gWorldTwoPlusStartData
	.4byte gWorldThreePlusStartData
	.4byte gWorldFourPlusStartData
	.4byte gWorldFivePlusStartData
	.4byte gWorldSixPlusStartData

	.GLOBAL gUnknown_080A86D4
gUnknown_080A86D4:
	.2byte 0x00EC
	.2byte 0x00EC
	.2byte 0x00A9
	.2byte 0x00D7
	.2byte 0x00D5
	.2byte 0x00D5
	.2byte 0x00DA
	.2byte 0x00DA
	.2byte 0x00D3
	.2byte 0x00DA
	.2byte 0x00D4
	.2byte 0x00D4

	.GLOBAL gUnknown_080A86EC
gUnknown_080A86EC:
	.4byte 0x7FFF0000
	.4byte 0x00000000

	.GLOBAL gUnknown_080A86F4
gUnknown_080A86F4:
	.byte 0x01
	.byte 0x02
	.byte 0x02
	.byte 0x03
	.byte 0x04
	.byte 0x03

	.GLOBAL gEReaderSendTextPointers
gEReaderSendTextPointers:
	.2byte 0x0000
	.4byte 0x00000000
	.4byte gTextReadyToSendLink
	.4byte gTextReadyToSendLink
	.4byte gTextReadyToSendPressA
	.4byte gTextSending
	.4byte gTextSendingCompleted
	.4byte gTextSending

	.GLOBAL gUnknown_080A8718
gUnknown_080A8718:
	.INCBIN "baserom.gba", 0xA8718, 0xB512C-0xA8718

	.GLOBAL gWorldSpriteTableData
gWorldSpriteTableData:
	.4byte 0x087140B8 @ TODO: replace this with gWorldOneSpriteTable once split
	.4byte 37
	.4byte 15 @ Sprite count

	.4byte 0x08723440 @ TODO: replace this with gWorldTwoSpriteTable once split
	.4byte 38
	.4byte 21 @ Sprite count
	
	.4byte 0x087326E8 @ TODO: replace this with gWorldThreeSpriteTable once split
	.4byte 39
	.4byte 22 @ Sprite count
	
	.4byte 0x0875A154 @ TODO: replace this with gWorldFourSpriteTable once split
	.4byte 40
	.4byte 28 @ Sprite count

	.4byte 0x08771D24 @ TODO: replace this with gWorldFiveSpriteTable once split
	.4byte 41
	.4byte 15 @ Sprite count
	
	.4byte 0x08796104 @ TODO: replace this with gWorldSixSpriteTable once split
	.4byte 42
	.4byte 20 @ Sprite count	

	.GLOBAL gBossOneSpriteTableData
gBossOneSpriteTableData:
	.4byte 0x087AC8DC @ TODO: replace this with gBossOneSpriteTable once split
	.4byte 62
	.4byte 14 @ Sprite count

	.GLOBAL gBossTwoSpriteTableData
gBossTwoSpriteTableData:
	.4byte 0x087AFAA0 @ TODO: replace this with gBossTwoSpriteTable once split
	.4byte 63
	.4byte 10 @ Sprite count

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
	
	.GLOBAL gUnknown_080B51BC
gUnknown_080B51BC:
	.4byte 0x00000008

	.GLOBAL gUnknown_080B51C0
gUnknown_080B51C0:
	.INCBIN "baserom.gba", 0xB51C0, 0xB51D8-0xB51C0

	.GLOBAL gUnknown_080B51D8
gUnknown_080B51D8:
	.INCBIN "baserom.gba", 0xB51D8, 0xB51F8-0xB51D8

	.GLOBAL gUnknown_080B51F8
gUnknown_080B51F8:
	.INCBIN "baserom.gba", 0xB51F8, 0xB521C-0xB51F8

	.GLOBAL gUnknown_080B521C
gUnknown_080B521C:
	.INCBIN "assets/objects/key_blinking.bin"

	.GLOBAL gUnknown_080B5300
gUnknown_080B5300:
	.INCBIN "baserom.gba", 0xB5300, 0xB5328-0xB5300

	.GLOBAL gUnknown_080B5328
gUnknown_080B5328:
	.INCBIN "baserom.gba", 0xB5328, 0xB53F4-0xB5328

	.GLOBAL gUnknown_080B53F4
gUnknown_080B53F4:
	.INCBIN "baserom.gba", 0xB53F4, 0xB5424-0xB53F4

	.GLOBAL gUnknown_080B5424
gUnknown_080B5424:
	.INCBIN "baserom.gba", 0xB5424, 0xB5F80-0xB5424

	.GLOBAL gUnknown_080B5F80
gUnknown_080B5F80:
	.INCBIN "baserom.gba", 0xB5F80, 0xB6C30-0xB5F80

	.GLOBAL gUnknown_080B6C30
gUnknown_080B6C30:
	.4byte 0x080A8718
	.4byte 0x00000000
	.4byte 0x080A8C18
	.4byte 0x00000000
	.4byte 0x080A9098
	.4byte 0x00000000
	.4byte 0x080A9558
	.4byte 0x00000000
	.4byte 0x080A999C
	.4byte 0x00000000
	.4byte 0x080A9D9C
	.4byte 0x00000000
	.4byte 0x080AA778
	.4byte 0x00000000
	.4byte 0x080AAC64
	.4byte 0x00000000
	.4byte 0x080AAEBC
	.4byte 0x00000000
	.4byte 0x080AB3CC
	.4byte 0x00000000
	.4byte 0x080AB624
	.4byte 0x00000000
	.4byte 0x080ABBF4
	.4byte 0x00000000
	.4byte 0x080AC54C
	.4byte 0x00000000
	.4byte 0x080AC9D4
	.4byte 0x00000000
	.4byte 0x080ACD00
	.4byte 0x00000000
	.4byte 0x080AD0E8
	.4byte 0x00000000
	.4byte 0x080AD418
	.4byte 0x00000000
	.4byte 0x080AD814
	.4byte 0x00000000
	.4byte 0x080AE610
	.4byte 0x00000000
	.4byte 0x080AEB38
	.4byte 0x00000000
	.4byte 0x080AF038
	.4byte 0x00000000
	.4byte 0x080AF538
	.4byte 0x00000000
	.4byte 0x080AF90C
	.4byte 0x00000000
	.4byte 0x080AFCB4
	.4byte 0x00000000
	.4byte 0x080B07EC
	.4byte 0x00000000
	.4byte 0x080B0D2C
	.4byte 0x00000000
	.4byte 0x080B116C
	.4byte 0x00000000
	.4byte 0x080B157C
	.4byte 0x00000000
	.4byte 0x080B1B58
	.4byte 0x00000000
	.4byte 0x080B20A0
	.4byte 0x00000000
	.4byte 0x080B2D60
	.4byte 0x00000000
	.4byte 0x080B3220
	.4byte 0x00000000
	.4byte 0x080B3760
	.4byte 0x00000000
	.4byte 0x080B3BD4
	.4byte 0x00000000
	.4byte 0x080B4094
	.4byte 0x00000000
	.4byte 0x080B43B4
	.4byte 0x00000000
	.4byte 0x02A302D5
	.4byte 0x023F0271
	.4byte 0x01DB020D
	.4byte 0x017701A9
	.4byte 0x01130145
	.4byte 0x00AF00E1
	.4byte 0x004B007D
	.4byte 0xFFE70019
	.4byte 0xFF83FFB5
	.4byte 0xFF1FFF51
	.4byte 0xFEBBFEED
	.4byte 0xFE57FE89
	.4byte 0xFDF3FE25
	.4byte 0xFD8FFDC1
	.4byte 0xFD2BFD5D

	.INCBIN "baserom.gba", 0xb6d8c, 0xB77F4-0xb6d8c

	.GLOBAL gUnknown_080B77F4
gUnknown_080B77F4:
	.INCBIN "baserom.gba", 0xB77F4, 0xBACD4-0xB77F4

	.GLOBAL gUnknown_080BACD4
gUnknown_080BACD4:
	.INCBIN "baserom.gba", 0xBACD4, 0xBADF4-0xBACD4

	.GLOBAL gUnknown_080BADF4
gUnknown_080BADF4:
	.INCBIN "baserom.gba", 0xBADF4, 0xBADFC-0xBADF4

	.GLOBAL gUnknown_080BADFC
gUnknown_080BADFC:
	.INCBIN "baserom.gba", 0xBADFC, 0xC833C-0xBADFC

	.GLOBAL gUnknown_080C833C
gUnknown_080C833C:
	.INCBIN "baserom.gba", 0xC833C, 0xC83A8-0xC833C

	.GLOBAL gUnknown_080C83A8
gUnknown_080C83A8:
	.INCBIN "baserom.gba", 0xC83A8, 0xC83B0-0xC83A8

	.GLOBAL gUnknown_080C83B0
gUnknown_080C83B0:
	.INCBIN "baserom.gba", 0xC83B0, 0xC87B0-0xC83B0

	.GLOBAL gUnknown_080C87B0
gUnknown_080C87B0:
	.INCBIN "baserom.gba", 0xC87B0, 0xC8E28-0xC87B0

	.GLOBAL gUnknown_080C8E28
gUnknown_080C8E28:
	.INCBIN "baserom.gba", 0xC8E28, 0xC8E30-0xC8E28

	.GLOBAL gUnknown_080C8E30
gUnknown_080C8E30:
	.INCBIN "baserom.gba", 0xC8E30, 0xC9B30-0xC8E30

	.GLOBAL gUnknown_080C9B30
gUnknown_080C9B30:
	.INCBIN "baserom.gba", 0xC9B30, 0xCA130-0xC9B30

	.GLOBAL gUnknown_080CA130
gUnknown_080CA130:
	.INCBIN "baserom.gba", 0xCA130, 0xCABA8-0xCA130

	.GLOBAL gUnknown_080CABA8
gUnknown_080CABA8:
	.INCBIN "baserom.gba", 0xCABA8, 0xCABB0-0xCABA8

	.GLOBAL gUnknown_080CABB0
gUnknown_080CABB0:
	.INCBIN "baserom.gba", 0xCABB0, 0xCB7E8-0xCABB0

	.GLOBAL gUnknown_080CB7E8
gUnknown_080CB7E8:
	.INCBIN "baserom.gba", 0xCB7E8, 0xCB7F0-0xCB7E8

	.GLOBAL gUnknown_080CB7F0
gUnknown_080CB7F0:
	.INCBIN "baserom.gba", 0xCB7F0, 0x11BC04-0xCB7F0

	.GLOBAL gUnknown_0811BC04
gUnknown_0811BC04:
	.INCBIN "baserom.gba", 0x11BC04, 0x11BC0C-0x11BC04

	.GLOBAL gUnknown_0811BC0C
gUnknown_0811BC0C:
	.INCBIN "baserom.gba", 0x11BC0C, 0x11BCB0-0x11BC0C

	.GLOBAL gUnknown_0811BCB0
gUnknown_0811BCB0:
	.INCBIN "baserom.gba", 0x11BCB0, 0x11BCB8-0x11BCB0

	.GLOBAL gUnknown_0811BCB8
gUnknown_0811BCB8:
	.INCBIN "baserom.gba", 0x11BCB8, 0x11BD5C-0x11BCB8

	.GLOBAL gUnknown_0811BD5C
gUnknown_0811BD5C:
	.INCBIN "baserom.gba", 0x11BD5C, 0x11BD64-0x11BD5C

	.GLOBAL gUnknown_0811BD64
gUnknown_0811BD64:
	.INCBIN "baserom.gba", 0x11BD64, 0x11C010-0x11BD64

	.GLOBAL gUnknown_0811C010
gUnknown_0811C010:
	.INCBIN "baserom.gba", 0x11C010, 0x11C1C0-0x11C010

	.GLOBAL gUnknown_0811C1C0
gUnknown_0811C1C0:
	.INCBIN "baserom.gba", 0x11C1C0, 0x11C1C8-0x11C1C0

	.GLOBAL gUnknown_0811C1C8
gUnknown_0811C1C8:
	.INCBIN "baserom.gba", 0x11C1C8, 0x11F5F4-0x11C1C8

	.GLOBAL gUnknown_0811F5F4
gUnknown_0811F5F4:
	.INCBIN "baserom.gba", 0x11F5F4, 0x11F7A4-0x11F5F4

	.GLOBAL gUnknown_0811F7A4
gUnknown_0811F7A4:
	.INCBIN "baserom.gba", 0x11F7A4, 0x11F7AC-0x11F7A4

	.GLOBAL gUnknown_0811F7AC
gUnknown_0811F7AC:
	.INCBIN "baserom.gba", 0x11F7AC, 0x1257D0-0x11F7AC

	.GLOBAL gUnknown_081257D0
gUnknown_081257D0:
	.INCBIN "baserom.gba", 0x1257D0, 0x1257D8-0x1257D0

	.GLOBAL gUnknown_081257D8
gUnknown_081257D8:
	.INCBIN "baserom.gba", 0x1257D8, 0x125928-0x1257D8

	.GLOBAL gUnknown_08125928
gUnknown_08125928:
	.INCBIN "baserom.gba", 0x125928, 0x125930-0x125928

	.GLOBAL gUnknown_08125930
gUnknown_08125930:
	.INCBIN "baserom.gba", 0x125930, 0x129518-0x125930

	.GLOBAL gUnknown_08129518
gUnknown_08129518:
	.INCBIN "baserom.gba", 0x129518, 0x12953C-0x129518

	.GLOBAL gUnknown_0812953C
gUnknown_0812953C:
	.INCBIN "baserom.gba", 0x12953C, 0x129544-0x12953C

	.GLOBAL gUnknown_08129544
gUnknown_08129544:
	.INCBIN "baserom.gba", 0x129544, 0x12CA94-0x129544

	.GLOBAL gUnknown_0812CA94
gUnknown_0812CA94:
	.INCBIN "baserom.gba", 0x12CA94, 0x12CA9C-0x12CA94

	.GLOBAL gUnknown_0812CA9C
gUnknown_0812CA9C:
	.INCBIN "baserom.gba", 0x12CA9C, 0x12CB40-0x12CA9C

	.GLOBAL gUnknown_0812CB40
gUnknown_0812CB40:
	.INCBIN "baserom.gba", 0x12CB40, 0x12CB48-0x12CB40

	.GLOBAL gUnknown_0812CB48
gUnknown_0812CB48:
	.INCBIN "baserom.gba", 0x12CB48, 0x12CBEC-0x12CB48

	.GLOBAL gUnknown_0812CBEC
gUnknown_0812CBEC:
	.INCBIN "baserom.gba", 0x12CBEC, 0x12CBF4-0x12CBEC

	.GLOBAL gUnknown_0812CBF4
gUnknown_0812CBF4:
	.INCBIN "baserom.gba", 0x12CBF4, 0x12CC98-0x12CBF4

	.GLOBAL gUnknown_0812CC98
gUnknown_0812CC98:
	.INCBIN "baserom.gba", 0x12CC98, 0x12CCA0-0x12CC98

	.GLOBAL gUnknown_0812CCA0
gUnknown_0812CCA0:
	.INCBIN "baserom.gba", 0x12CCA0, 0x12CD04-0x12CCA0

	.GLOBAL gUnknown_0812CD04
gUnknown_0812CD04:
	.INCBIN "baserom.gba", 0x12CD04, 0x12CD0C-0x12CD04

	.GLOBAL gUnknown_0812CD0C
gUnknown_0812CD0C:
	.INCBIN "baserom.gba", 0x12CD0C, 0x12CD50-0x12CD0C

	.GLOBAL gUnknown_0812CD50
gUnknown_0812CD50:
	.INCBIN "baserom.gba", 0x12CD50, 0x12CD58-0x12CD50

	.GLOBAL gUnknown_0812CD58
gUnknown_0812CD58:
	.INCBIN "baserom.gba", 0x12CD58, 0x12CDFC-0x12CD58

	.GLOBAL gUnknown_0812CDFC
gUnknown_0812CDFC:
	.INCBIN "baserom.gba", 0x12CDFC, 0x12CE04-0x12CDFC

	.GLOBAL gUnknown_0812CE04
gUnknown_0812CE04:
	.INCBIN "baserom.gba", 0x12CE04, 0x12D028-0x12CE04

	.GLOBAL gUnknown_0812D028
gUnknown_0812D028:
	.INCBIN "baserom.gba", 0x12D028, 0x12D030-0x12D028

	.GLOBAL gUnknown_0812D030
gUnknown_0812D030:
	.INCBIN "baserom.gba", 0x12D030, 0x12D200-0x12D030

	.GLOBAL gUnknown_0812D200
gUnknown_0812D200:
	.INCBIN "baserom.gba", 0x12D200, 0x12D208-0x12D200

	.GLOBAL gUnknown_0812D208
gUnknown_0812D208:
	.INCBIN "baserom.gba", 0x12D208, 0x12D2AC-0x12D208

	.GLOBAL gUnknown_0812D2AC
gUnknown_0812D2AC:
	.INCBIN "baserom.gba", 0x12D2AC, 0x12D2B4-0x12D2AC

	.GLOBAL gUnknown_0812D2B4
gUnknown_0812D2B4:
	.INCBIN "baserom.gba", 0x12D2B4, 0x12D358-0x12D2B4

	.GLOBAL gUnknown_0812D358
gUnknown_0812D358:
	.INCBIN "baserom.gba", 0x12D358, 0x12D360-0x12D358

	.GLOBAL gUnknown_0812D360
gUnknown_0812D360:
	.INCBIN "baserom.gba", 0x12D360, 0x12D404-0x12D360

	.GLOBAL gUnknown_0812D404
gUnknown_0812D404:
	.INCBIN "baserom.gba", 0x12D404, 0x12D40C-0x12D404

	.GLOBAL gUnknown_0812D40C
gUnknown_0812D40C:
	.INCBIN "baserom.gba", 0x12D40C, 0x12D4B0-0x12D40C

	.GLOBAL gUnknown_0812D4B0
gUnknown_0812D4B0:
	.INCBIN "baserom.gba", 0x12D4B0, 0x12D4B8-0x12D4B0

	.GLOBAL gUnknown_0812D4B8
gUnknown_0812D4B8:
	.INCBIN "baserom.gba", 0x12D4B8, 0x12D55C-0x12D4B8

	.GLOBAL gUnknown_0812D55C
gUnknown_0812D55C:
	.INCBIN "baserom.gba", 0x12D55C, 0x12D564-0x12D55C

	.GLOBAL gUnknown_0812D564
gUnknown_0812D564:
	.INCBIN "baserom.gba", 0x12D564, 0x12D608-0x12D564

	.GLOBAL gUnknown_0812D608
gUnknown_0812D608:
	.INCBIN "baserom.gba", 0x12D608, 0x12D610-0x12D608

	.GLOBAL gUnknown_0812D610
gUnknown_0812D610:
	.INCBIN "baserom.gba", 0x12D610, 0x12D6B4-0x12D610

	.GLOBAL gUnknown_0812D6B4
gUnknown_0812D6B4:
	.INCBIN "baserom.gba", 0x12D6B4, 0x12D6BC-0x12D6B4

	.GLOBAL gUnknown_0812D6BC
gUnknown_0812D6BC:
	.INCBIN "baserom.gba", 0x12D6BC, 0x12D760-0x12D6BC

	.GLOBAL gUnknown_0812D760
gUnknown_0812D760:
	.INCBIN "baserom.gba", 0x12D760, 0x12D768-0x12D760

	.GLOBAL gUnknown_0812D768
gUnknown_0812D768:
	.INCBIN "baserom.gba", 0x12D768, 0x12D80C-0x12D768

	.GLOBAL gUnknown_0812D80C
gUnknown_0812D80C:
	.INCBIN "baserom.gba", 0x12D80C, 0x12D814-0x12D80C

	.GLOBAL gUnknown_0812D814
gUnknown_0812D814:
	.INCBIN "baserom.gba", 0x12D814, 0x12D8B8-0x12D814

	.GLOBAL gUnknown_0812D8B8
gUnknown_0812D8B8:
	.INCBIN "baserom.gba", 0x12D8B8, 0x12D8C0-0x12D8B8

	.GLOBAL gUnknown_0812D8C0
gUnknown_0812D8C0:
	.INCBIN "baserom.gba", 0x12D8C0, 0x12DA10-0x12D8C0

	.GLOBAL gUnknown_0812DA10
gUnknown_0812DA10:
	.INCBIN "baserom.gba", 0x12DA10, 0x12DA18-0x12DA10

	.GLOBAL gUnknown_0812DA18
gUnknown_0812DA18:
	.INCBIN "baserom.gba", 0x12DA18, 0x12DABC-0x12DA18

	.GLOBAL gUnknown_0812DABC
gUnknown_0812DABC:
	.INCBIN "baserom.gba", 0x12DABC, 0x12DAC4-0x12DABC

	.GLOBAL gUnknown_0812DAC4
gUnknown_0812DAC4:
	.INCBIN "baserom.gba", 0x12DAC4, 0x12DB68-0x12DAC4

	.GLOBAL gUnknown_0812DB68
gUnknown_0812DB68:
	.INCBIN "baserom.gba", 0x12DB68, 0x12DB70-0x12DB68

	.GLOBAL gUnknown_0812DB70
gUnknown_0812DB70:
	.INCBIN "baserom.gba", 0x12DB70, 0x12DC14-0x12DB70

	.GLOBAL gUnknown_0812DC14
gUnknown_0812DC14:
	.INCBIN "baserom.gba", 0x12DC14, 0x12DC1C-0x12DC14

	.GLOBAL gUnknown_0812DC1C
gUnknown_0812DC1C:
	.INCBIN "baserom.gba", 0x12DC1C, 0x12E128-0x12DC1C

	.GLOBAL gUnknown_0812E128
gUnknown_0812E128:
	.INCBIN "baserom.gba", 0x12E128, 0x12E170-0x12E128

	.GLOBAL gUnknown_0812E170
gUnknown_0812E170:
	.INCBIN "baserom.gba", 0x12E170, 0x12E178-0x12E170

	.GLOBAL gUnknown_0812E178
gUnknown_0812E178:
	.INCBIN "baserom.gba", 0x12E178, 0x145E74-0x12E178

	.GLOBAL gUnknown_08145E74
gUnknown_08145E74:
	.INCBIN "baserom.gba", 0x145E74, 0x145F28-0x145E74

	.GLOBAL gUnknown_08145F28
gUnknown_08145F28:
	.INCBIN "baserom.gba", 0x145F28, 0x145F30-0x145F28

	.GLOBAL gUnknown_08145F30
gUnknown_08145F30:
	.INCBIN "baserom.gba", 0x145F30, 0x1460B0-0x145F30

	.GLOBAL gUnknown_081460B0
gUnknown_081460B0:
	.INCBIN "baserom.gba", 0x1460B0, 0x1461D0-0x1460B0

	.GLOBAL gUnknown_081461D0
gUnknown_081461D0:
	.INCBIN "baserom.gba", 0x1461D0, 0x1461D8-0x1461D0

	.GLOBAL gUnknown_081461D8
gUnknown_081461D8:
	.INCBIN "baserom.gba", 0x1461D8, 0x14E1D8-0x1461D8

	.GLOBAL gUnknown_0814E1D8
gUnknown_0814E1D8:
	.INCBIN "baserom.gba", 0x14E1D8, 0x14E340-0x14E1D8

	.GLOBAL gUnknown_0814E340
gUnknown_0814E340:
	.INCBIN "baserom.gba", 0x14E340, 0x14E348-0x14E340

	.GLOBAL gUnknown_0814E348
gUnknown_0814E348:
	.INCBIN "baserom.gba", 0x14E348, 0x1B6180-0x14E348

	.GLOBAL gUnknown_081B6180
gUnknown_081B6180:
	.INCBIN "baserom.gba", 0x1B6180, 0x1B6378-0x1B6180

	.GLOBAL gUnknown_081B6378
gUnknown_081B6378:
	.INCBIN "baserom.gba", 0x1B6378, 0x1B6380-0x1B6378

	.GLOBAL gUnknown_081B6380
gUnknown_081B6380:
	.INCBIN "baserom.gba", 0x1B6380, 0x1C1A18-0x1B6380

	.GLOBAL gUnknown_081C1A18
gUnknown_081C1A18:
	.INCBIN "baserom.gba", 0x1C1A18, 0x1C1A20-0x1C1A18

	.GLOBAL gUnknown_081C1A20
gUnknown_081C1A20:
	.INCBIN "baserom.gba", 0x1C1A20, 0x1C1C20-0x1C1A20

	.GLOBAL gUnknown_081C1C20
gUnknown_081C1C20:
	.INCBIN "baserom.gba", 0x1C1C20, 0x1C1C68-0x1C1C20

	.GLOBAL gUnknown_081C1C68
gUnknown_081C1C68:
	.INCBIN "baserom.gba", 0x1C1C68, 0x1C1C70-0x1C1C68

	.GLOBAL gUnknown_081C1C70
gUnknown_081C1C70:
	.INCBIN "baserom.gba", 0x1C1C70, 0x1C2094-0x1C1C70

	.GLOBAL gUnknown_081C2094
gUnknown_081C2094:
	.INCBIN "baserom.gba", 0x1C2094, 0x1C209C-0x1C2094

	.GLOBAL gUnknown_081C209C
gUnknown_081C209C:
	.INCBIN "baserom.gba", 0x1C209C, 0x1C2164-0x1C209C

	.GLOBAL gUnknown_081C2164
gUnknown_081C2164:
	.INCBIN "baserom.gba", 0x1C2164, 0x1C216C-0x1C2164

	.GLOBAL gUnknown_081C216C
gUnknown_081C216C:
	.INCBIN "baserom.gba", 0x1C216C, 0x1E019C-0x1C216C

	.GLOBAL gUnknown_081E019C
gUnknown_081E019C:
	.INCBIN "baserom.gba", 0x1E019C, 0x1E0274-0x1E019C

	.GLOBAL gUnknown_081E0274
gUnknown_081E0274:
	.INCBIN "baserom.gba", 0x1E0274, 0x1E027C-0x1E0274

	.GLOBAL gUnknown_081E027C
gUnknown_081E027C:
	.INCBIN "baserom.gba", 0x1E027C, 0x1E327C-0x1E027C

	.GLOBAL gUnknown_081E327C
gUnknown_081E327C:
	.INCBIN "baserom.gba", 0x1E327C, 0x1E3378-0x1E327C

	.GLOBAL gUnknown_081E3378
gUnknown_081E3378:
	.INCBIN "baserom.gba", 0x1E3378, 0x1E3380-0x1E3378

	.GLOBAL gUnknown_081E3380
gUnknown_081E3380:
	.INCBIN "baserom.gba", 0x1E3380, 0x2031EC-0x1E3380

	.GLOBAL gUnknown_082031EC
gUnknown_082031EC:
	.INCBIN "baserom.gba", 0x2031EC, 0x2034E0-0x2031EC

	.GLOBAL gUnknown_082034E0
gUnknown_082034E0:
	.INCBIN "baserom.gba", 0x2034E0, 0x2034E8-0x2034E0

	.GLOBAL gUnknown_082034E8
gUnknown_082034E8:
	.INCBIN "baserom.gba", 0x2034E8, 0x20850C-0x2034E8

	.GLOBAL gUnknown_0820850C
gUnknown_0820850C:
	.INCBIN "baserom.gba", 0x20850C, 0x208514-0x20850C

	.GLOBAL gUnknown_08208514
gUnknown_08208514:
	.INCBIN "baserom.gba", 0x208514, 0x251EC0-0x208514

	.GLOBAL gUnknown_08251EC0
gUnknown_08251EC0:
	.INCBIN "baserom.gba", 0x251EC0, 0x251FE0-0x251EC0

	.GLOBAL gUnknown_08251FE0
gUnknown_08251FE0:
	.INCBIN "baserom.gba", 0x251FE0, 0x251FE8-0x251FE0

	.GLOBAL gUnknown_08251FE8
gUnknown_08251FE8:
	.INCBIN "baserom.gba", 0x251FE8, 0x259FE8-0x251FE8

	.GLOBAL gUnknown_08259FE8
gUnknown_08259FE8:
	.INCBIN "baserom.gba", 0x259FE8, 0x25A00C-0x259FE8

	.GLOBAL gUnknown_0825A00C
gUnknown_0825A00C:
	.INCBIN "baserom.gba", 0x25A00C, 0x25A014-0x25A00C

	.GLOBAL gUnknown_0825A014
gUnknown_0825A014:
	.INCBIN "baserom.gba", 0x25A014, 0x2957B8-0x25A014

	.GLOBAL gUnknown_082957B8
gUnknown_082957B8:
	.INCBIN "baserom.gba", 0x2957B8, 0x295FE4-0x2957B8

	.GLOBAL gUnknown_08295FE4
gUnknown_08295FE4:
	.INCBIN "baserom.gba", 0x295FE4, 0x296810-0x295FE4

	.GLOBAL gUnknown_08296810
gUnknown_08296810:
	.INCBIN "baserom.gba", 0x296810, 0x2AEF74-0x296810

	.GLOBAL gUnknown_082AEF74
gUnknown_082AEF74:
	.INCBIN "baserom.gba", 0x2AEF74, 0x2AEF7C-0x2AEF74

	.GLOBAL gUnknown_082AEF7C
gUnknown_082AEF7C:
	.INCBIN "baserom.gba", 0x2AEF7C, 0x2AF7A0-0x2AEF7C

	.GLOBAL gUnknown_082AF7A0
gUnknown_082AF7A0:
	.INCBIN "baserom.gba", 0x2AF7A0, 0x2AF7A8-0x2AF7A0

	.GLOBAL gUnknown_082AF7A8
gUnknown_082AF7A8:
	.INCBIN "baserom.gba", 0x2AF7A8, 0x2AFFA8-0x2AF7A8

	.GLOBAL gUnknown_082AFFA8
gUnknown_082AFFA8:
	.INCBIN "baserom.gba", 0x2AFFA8, 0x2B0080-0x2AFFA8

	.GLOBAL gUnknown_082B0080
gUnknown_082B0080:
	.INCBIN "baserom.gba", 0x2B0080, 0x2B0088-0x2B0080

	.GLOBAL gUnknown_082B0088
gUnknown_082B0088:
	.INCBIN "baserom.gba", 0x2B0088, 0x2B30AC-0x2B0088

	.GLOBAL gUnknown_082B30AC
gUnknown_082B30AC:
	.INCBIN "baserom.gba", 0x2B30AC, 0x2B30B4-0x2B30AC

	.GLOBAL gUnknown_082B30B4
gUnknown_082B30B4:
	.INCBIN "baserom.gba", 0x2B30B4, 0x2B34B4-0x2B30B4

	.GLOBAL gUnknown_082B34B4
gUnknown_082B34B4:
	.INCBIN "baserom.gba", 0x2B34B4, 0x2B3544-0x2B34B4

	.GLOBAL gUnknown_082B3544
gUnknown_082B3544:
	.INCBIN "baserom.gba", 0x2B3544, 0x2B354C-0x2B3544

	.GLOBAL gUnknown_082B354C
gUnknown_082B354C:
	.INCBIN "baserom.gba", 0x2B354C, 0x2B55E4-0x2B354C

	.GLOBAL gUnknown_082B55E4
gUnknown_082B55E4:
	.INCBIN "baserom.gba", 0x2B55E4, 0x2B5674-0x2B55E4

	.GLOBAL gUnknown_082B5674
gUnknown_082B5674:
	.INCBIN "baserom.gba", 0x2B5674, 0x2B567C-0x2B5674

	.GLOBAL gUnknown_082B567C
gUnknown_082B567C:
	.INCBIN "baserom.gba", 0x2B567C, 0x2E29EC-0x2B567C

	.GLOBAL gUnknown_082E29EC
gUnknown_082E29EC:
	.INCBIN "baserom.gba", 0x2E29EC, 0x2E29F4-0x2E29EC

	.GLOBAL gUnknown_082E29F4
gUnknown_082E29F4:
	.INCBIN "baserom.gba", 0x2E29F4, 0x2E4C44-0x2E29F4

	.GLOBAL gUnknown_082E4C44
gUnknown_082E4C44:
	.INCBIN "baserom.gba", 0x2E4C44, 0x2E4C4C-0x2E4C44

	.GLOBAL gUnknown_082E4C4C
gUnknown_082E4C4C:
	.INCBIN "baserom.gba", 0x2E4C4C, 0x2E6760-0x2E4C4C

	.GLOBAL gUnknown_082E6760
gUnknown_082E6760:
	.INCBIN "baserom.gba", 0x2E6760, 0x2E6768-0x2E6760

	.GLOBAL gUnknown_082E6768
gUnknown_082E6768:
	.INCBIN "baserom.gba", 0x2E6768, 0x2E6868-0x2E6768

	.GLOBAL gUnknown_082E6868
gUnknown_082E6868:
	.INCBIN "baserom.gba", 0x2E6868, 0x2E6940-0x2E6868

	.GLOBAL gUnknown_082E6940
gUnknown_082E6940:
	.INCBIN "baserom.gba", 0x2E6940, 0x2E6948-0x2E6940

	.GLOBAL gUnknown_082E6948
gUnknown_082E6948:
	.INCBIN "baserom.gba", 0x2E6948, 0x2E8190-0x2E6948

	.GLOBAL gUnknown_082E8190
gUnknown_082E8190:
	.INCBIN "baserom.gba", 0x2E8190, 0x2E8198-0x2E8190

	.GLOBAL gUnknown_082E8198
gUnknown_082E8198:
	.INCBIN "baserom.gba", 0x2E8198, 0x2E8304-0x2E8198

	.GLOBAL gUnknown_082E8304
gUnknown_082E8304:
	.INCBIN "baserom.gba", 0x2E8304, 0x2E830C-0x2E8304

	.GLOBAL gUnknown_082E830C
gUnknown_082E830C:
	.INCBIN "baserom.gba", 0x2E830C, 0x2E84D4-0x2E830C

	.GLOBAL gUnknown_082E84D4
gUnknown_082E84D4:
	.INCBIN "baserom.gba", 0x2E84D4, 0x2E84DC-0x2E84D4

	.GLOBAL gUnknown_082E84DC
gUnknown_082E84DC:
	.INCBIN "baserom.gba", 0x2E84DC, 0x2E8900-0x2E84DC

	.GLOBAL gUnknown_082E8900
gUnknown_082E8900:
	.INCBIN "baserom.gba", 0x2E8900, 0x2E8908-0x2E8900

	.GLOBAL gUnknown_082E8908
gUnknown_082E8908:
	.INCBIN "baserom.gba", 0x2E8908, 0x2E8A50-0x2E8908

	.GLOBAL gUnknown_082E8A50
gUnknown_082E8A50:
	.INCBIN "baserom.gba", 0x2E8A50, 0x2E8A58-0x2E8A50

	.GLOBAL gUnknown_082E8A58
gUnknown_082E8A58:
	.INCBIN "baserom.gba", 0x2E8A58, 0x2E8EA0-0x2E8A58

	.GLOBAL gUnknown_082E8EA0
gUnknown_082E8EA0:
	.INCBIN "baserom.gba", 0x2E8EA0, 0x2E8EA8-0x2E8EA0

	.GLOBAL gUnknown_082E8EA8
gUnknown_082E8EA8:
	.INCBIN "baserom.gba", 0x2E8EA8, 0x2E92C0-0x2E8EA8

	.GLOBAL gUnknown_082E92C0
gUnknown_082E92C0:
	.INCBIN "baserom.gba", 0x2E92C0, 0x2E92C8-0x2E92C0

	.GLOBAL gUnknown_082E92C8
gUnknown_082E92C8:
	.INCBIN "baserom.gba", 0x2E92C8, 0x2E94EC-0x2E92C8

	.GLOBAL gUnknown_082E94EC
gUnknown_082E94EC:
	.INCBIN "baserom.gba", 0x2E94EC, 0x2E94F4-0x2E94EC

	.GLOBAL gUnknown_082E94F4
gUnknown_082E94F4:
	.INCBIN "baserom.gba", 0x2E94F4, 0x2E9574-0x2E94F4

	.GLOBAL gUnknown_082E9574
gUnknown_082E9574:
	.INCBIN "baserom.gba", 0x2E9574, 0x2E964C-0x2E9574

	.GLOBAL gUnknown_082E964C
gUnknown_082E964C:
	.INCBIN "baserom.gba", 0x2E964C, 0x2E9654-0x2E964C

	.GLOBAL gUnknown_082E9654
gUnknown_082E9654:
	.INCBIN "baserom.gba", 0x2E9654, 0x2EAE78-0x2E9654

	.GLOBAL gUnknown_082EAE78
gUnknown_082EAE78:
	.INCBIN "baserom.gba", 0x2EAE78, 0x2EAE80-0x2EAE78

	.GLOBAL gUnknown_082EAE80
gUnknown_082EAE80:
	.INCBIN "baserom.gba", 0x2EAE80, 0x2EAF00-0x2EAE80

	.GLOBAL gUnknown_082EAF00
gUnknown_082EAF00:
	.INCBIN "baserom.gba", 0x2EAF00, 0x2EAF90-0x2EAF00

	.GLOBAL gUnknown_082EAF90
gUnknown_082EAF90:
	.INCBIN "baserom.gba", 0x2EAF90, 0x2EAF98-0x2EAF90

	.GLOBAL gUnknown_082EAF98
gUnknown_082EAF98:
	.INCBIN "baserom.gba", 0x2EAF98, 0x2EB118-0x2EAF98

	.GLOBAL gUnknown_082EB118
gUnknown_082EB118:
	.INCBIN "baserom.gba", 0x2EB118, 0x2EB1BC-0x2EB118

	.GLOBAL gUnknown_082EB1BC
gUnknown_082EB1BC:
	.INCBIN "baserom.gba", 0x2EB1BC, 0x2EB1C4-0x2EB1BC

	.GLOBAL gUnknown_082EB1C4
gUnknown_082EB1C4:
	.INCBIN "baserom.gba", 0x2EB1C4, 0x2EB244-0x2EB1C4

	.GLOBAL gUnknown_082EB244
gUnknown_082EB244:
	.INCBIN "baserom.gba", 0x2EB244, 0x2EB2B0-0x2EB244

	.GLOBAL gUnknown_082EB2B0
gUnknown_082EB2B0:
	.INCBIN "baserom.gba", 0x2EB2B0, 0x2EB2B8-0x2EB2B0

	.GLOBAL gUnknown_082EB2B8
gUnknown_082EB2B8:
	.INCBIN "baserom.gba", 0x2EB2B8, 0x2EBC2C-0x2EB2B8

	.GLOBAL gUnknown_082EBC2C
gUnknown_082EBC2C:
	.INCBIN "baserom.gba", 0x2EBC2C, 0x2EBC34-0x2EBC2C

	.GLOBAL gUnknown_082EBC34
gUnknown_082EBC34:
	.INCBIN "baserom.gba", 0x2EBC34, 0x2EBE58-0x2EBC34

	.GLOBAL gUnknown_082EBE58
gUnknown_082EBE58:
	.INCBIN "baserom.gba", 0x2EBE58, 0x2EBE60-0x2EBE58

	.GLOBAL gUnknown_082EBE60
gUnknown_082EBE60:
	.INCBIN "baserom.gba", 0x2EBE60, 0x2EC2D8-0x2EBE60

	.GLOBAL gUnknown_082EC2D8
gUnknown_082EC2D8:
	.INCBIN "baserom.gba", 0x2EC2D8, 0x2EC2E0-0x2EC2D8

	.GLOBAL gUnknown_082EC2E0
gUnknown_082EC2E0:
	.INCBIN "baserom.gba", 0x2EC2E0, 0x2EC748-0x2EC2E0

	.GLOBAL gUnknown_082EC748
gUnknown_082EC748:
	.INCBIN "baserom.gba", 0x2EC748, 0x2EC750-0x2EC748

	.GLOBAL gUnknown_082EC750
gUnknown_082EC750:
	.INCBIN "baserom.gba", 0x2EC750, 0x2ECB38-0x2EC750

	.GLOBAL gUnknown_082ECB38
gUnknown_082ECB38:
	.INCBIN "baserom.gba", 0x2ECB38, 0x2ECB40-0x2ECB38

	.GLOBAL gUnknown_082ECB40
gUnknown_082ECB40:
	.INCBIN "baserom.gba", 0x2ECB40, 0x2ECF94-0x2ECB40

	.GLOBAL gUnknown_082ECF94
gUnknown_082ECF94:
	.INCBIN "baserom.gba", 0x2ECF94, 0x2ECF9C-0x2ECF94

	.GLOBAL gUnknown_082ECF9C
gUnknown_082ECF9C:
	.INCBIN "baserom.gba", 0x2ECF9C, 0x2ED5BC-0x2ECF9C

	.GLOBAL gUnknown_082ED5BC
gUnknown_082ED5BC:
	.INCBIN "baserom.gba", 0x2ED5BC, 0x2ED5C4-0x2ED5BC

	.GLOBAL gUnknown_082ED5C4
gUnknown_082ED5C4:
	.INCBIN "baserom.gba", 0x2ED5C4, 0x2ED668-0x2ED5C4

	.GLOBAL gUnknown_082ED668
gUnknown_082ED668:
	.INCBIN "baserom.gba", 0x2ED668, 0x2ED670-0x2ED668

	.GLOBAL gUnknown_082ED670
gUnknown_082ED670:
	.INCBIN "baserom.gba", 0x2ED670, 0x2ED794-0x2ED670

	.GLOBAL gUnknown_082ED794
gUnknown_082ED794:
	.INCBIN "baserom.gba", 0x2ED794, 0x2ED79C-0x2ED794

	.GLOBAL gUnknown_082ED79C
gUnknown_082ED79C:
	.INCBIN "baserom.gba", 0x2ED79C, 0x2ED9EC-0x2ED79C

	.GLOBAL gUnknown_082ED9EC
gUnknown_082ED9EC:
	.INCBIN "baserom.gba", 0x2ED9EC, 0x2ED9F4-0x2ED9EC

	.GLOBAL gUnknown_082ED9F4
gUnknown_082ED9F4:
	.INCBIN "baserom.gba", 0x2ED9F4, 0x2EDB18-0x2ED9F4

	.GLOBAL gUnknown_082EDB18
gUnknown_082EDB18:
	.INCBIN "baserom.gba", 0x2EDB18, 0x2EDB20-0x2EDB18

	.GLOBAL gUnknown_082EDB20
gUnknown_082EDB20:
	.INCBIN "baserom.gba", 0x2EDB20, 0x2EDC44-0x2EDB20

	.GLOBAL gUnknown_082EDC44
gUnknown_082EDC44:
	.INCBIN "baserom.gba", 0x2EDC44, 0x2EDC4C-0x2EDC44

	.GLOBAL gUnknown_082EDC4C
gUnknown_082EDC4C:
	.INCBIN "baserom.gba", 0x2EDC4C, 0x2EE074-0x2EDC4C

	.GLOBAL gUnknown_082EE074
gUnknown_082EE074:
	.INCBIN "baserom.gba", 0x2EE074, 0x2EE07C-0x2EE074

	.GLOBAL gUnknown_082EE07C
gUnknown_082EE07C:
	.INCBIN "baserom.gba", 0x2EE07C, 0x2EE120-0x2EE07C

	.GLOBAL gUnknown_082EE120
gUnknown_082EE120:
	.INCBIN "baserom.gba", 0x2EE120, 0x2EE128-0x2EE120

	.GLOBAL gUnknown_082EE128
gUnknown_082EE128:
	.INCBIN "baserom.gba", 0x2EE128, 0x2EE18C-0x2EE128

	.GLOBAL gUnknown_082EE18C
gUnknown_082EE18C:
	.INCBIN "baserom.gba", 0x2EE18C, 0x2EE194-0x2EE18C

	.GLOBAL gUnknown_082EE194
gUnknown_082EE194:
	.INCBIN "baserom.gba", 0x2EE194, 0x2EE214-0x2EE194

	.GLOBAL gUnknown_082EE214
gUnknown_082EE214:
	.INCBIN "baserom.gba", 0x2EE214, 0x2EE25C-0x2EE214

	.GLOBAL gUnknown_082EE25C
gUnknown_082EE25C:
	.INCBIN "baserom.gba", 0x2EE25C, 0x2EE264-0x2EE25C

	.GLOBAL gUnknown_082EE264
gUnknown_082EE264:
	.INCBIN "baserom.gba", 0x2EE264, 0x2EE4AC-0x2EE264

	.GLOBAL gUnknown_082EE4AC
gUnknown_082EE4AC:
	.INCBIN "baserom.gba", 0x2EE4AC, 0x2EE4B4-0x2EE4AC

	.GLOBAL gUnknown_082EE4B4
gUnknown_082EE4B4:
	.INCBIN "baserom.gba", 0x2EE4B4, 0x2EE94C-0x2EE4B4

	.GLOBAL gUnknown_082EE94C
gUnknown_082EE94C:
	.INCBIN "baserom.gba", 0x2EE94C, 0x2EE954-0x2EE94C

	.GLOBAL gUnknown_082EE954
gUnknown_082EE954:
	.INCBIN "baserom.gba", 0x2EE954, 0x2EEB9C-0x2EE954

	.GLOBAL gUnknown_082EEB9C
gUnknown_082EEB9C:
	.INCBIN "baserom.gba", 0x2EEB9C, 0x2EEBA4-0x2EEB9C

	.GLOBAL gUnknown_082EEBA4
gUnknown_082EEBA4:
	.INCBIN "baserom.gba", 0x2EEBA4, 0x2EEDEC-0x2EEBA4

	.GLOBAL gUnknown_082EEDEC
gUnknown_082EEDEC:
	.INCBIN "baserom.gba", 0x2EEDEC, 0x2EEDF4-0x2EEDEC

	.GLOBAL gUnknown_082EEDF4
gUnknown_082EEDF4:
	.INCBIN "baserom.gba", 0x2EEDF4, 0x2EEEF4-0x2EEDF4

	.GLOBAL gUnknown_082EEEF4
gUnknown_082EEEF4:
	.INCBIN "baserom.gba", 0x2EEEF4, 0x2EF144-0x2EEEF4

	.GLOBAL gUnknown_082EF144
gUnknown_082EF144:
	.INCBIN "baserom.gba", 0x2EF144, 0x2EF62C-0x2EF144

	.GLOBAL gUnknown_082EF62C
gUnknown_082EF62C:
	.INCBIN "baserom.gba", 0x2EF62C, 0x2EF634-0x2EF62C

	.GLOBAL gUnknown_082EF634
gUnknown_082EF634:
	.INCBIN "baserom.gba", 0x2EF634, 0x2EF77C-0x2EF634

	.GLOBAL gUnknown_082EF77C
gUnknown_082EF77C:
	.INCBIN "baserom.gba", 0x2EF77C, 0x2EF784-0x2EF77C

	.GLOBAL gUnknown_082EF784
gUnknown_082EF784:
	.INCBIN "baserom.gba", 0x2EF784, 0x2EF924-0x2EF784

	.GLOBAL gUnknown_082EF924
gUnknown_082EF924:
	.INCBIN "baserom.gba", 0x2EF924, 0x2EF92C-0x2EF924

	.GLOBAL gUnknown_082EF92C
gUnknown_082EF92C:
	.INCBIN "baserom.gba", 0x2EF92C, 0x2EFB50-0x2EF92C

	.GLOBAL gUnknown_082EFB50
gUnknown_082EFB50:
	.INCBIN "baserom.gba", 0x2EFB50, 0x2EFB58-0x2EFB50

	.GLOBAL gUnknown_082EFB58
gUnknown_082EFB58:
	.INCBIN "baserom.gba", 0x2EFB58, 0x2EFBFC-0x2EFB58

	.GLOBAL gUnknown_082EFBFC
gUnknown_082EFBFC:
	.INCBIN "baserom.gba", 0x2EFBFC, 0x2EFC04-0x2EFBFC

	.GLOBAL gUnknown_082EFC04
gUnknown_082EFC04:
	.INCBIN "baserom.gba", 0x2EFC04, 0x2EFC68-0x2EFC04

	.GLOBAL gUnknown_082EFC68
gUnknown_082EFC68:
	.INCBIN "baserom.gba", 0x2EFC68, 0x2EFC70-0x2EFC68

	.GLOBAL gUnknown_082EFC70
gUnknown_082EFC70:
	.INCBIN "baserom.gba", 0x2EFC70, 0x2EFCB4-0x2EFC70

	.GLOBAL gUnknown_082EFCB4
gUnknown_082EFCB4:
	.INCBIN "baserom.gba", 0x2EFCB4, 0x2EFCBC-0x2EFCB4

	.GLOBAL gUnknown_082EFCBC
gUnknown_082EFCBC:
	.INCBIN "baserom.gba", 0x2EFCBC, 0x2EFDAC-0x2EFCBC

	.GLOBAL gUnknown_082EFDAC
gUnknown_082EFDAC:
	.INCBIN "baserom.gba", 0x2EFDAC, 0x2EFDB4-0x2EFDAC

	.GLOBAL gUnknown_082EFDB4
gUnknown_082EFDB4:
	.INCBIN "baserom.gba", 0x2EFDB4, 0x2EFDF8-0x2EFDB4

	.GLOBAL gUnknown_082EFDF8
gUnknown_082EFDF8:
	.INCBIN "baserom.gba", 0x2EFDF8, 0x2EFE00-0x2EFDF8

	.GLOBAL gUnknown_082EFE00
gUnknown_082EFE00:
	.INCBIN "baserom.gba", 0x2EFE00, 0x2EFE44-0x2EFE00

	.GLOBAL gUnknown_082EFE44
gUnknown_082EFE44:
	.INCBIN "baserom.gba", 0x2EFE44, 0x2EFE4C-0x2EFE44

	.GLOBAL gUnknown_082EFE4C
gUnknown_082EFE4C:
	.INCBIN "baserom.gba", 0x2EFE4C, 0x2EFE90-0x2EFE4C

	.GLOBAL gUnknown_082EFE90
gUnknown_082EFE90:
	.INCBIN "baserom.gba", 0x2EFE90, 0x2EFE98-0x2EFE90

	.GLOBAL gUnknown_082EFE98
gUnknown_082EFE98:
	.INCBIN "baserom.gba", 0x2EFE98, 0x2EFF24-0x2EFE98

	.GLOBAL gUnknown_082EFF24
gUnknown_082EFF24:
	.INCBIN "baserom.gba", 0x2EFF24, 0x2EFF2C-0x2EFF24

	.GLOBAL gUnknown_082EFF2C
gUnknown_082EFF2C:
	.INCBIN "baserom.gba", 0x2EFF2C, 0x2EFF4C-0x2EFF2C

	.GLOBAL gUnknown_082EFF4C
gUnknown_082EFF4C:
	.INCBIN "baserom.gba", 0x2EFF4C, 0x2EFF6C-0x2EFF4C

	.GLOBAL gUnknown_082EFF6C
gUnknown_082EFF6C:
	.INCBIN "baserom.gba", 0x2EFF6C, 0x2F01B0-0x2EFF6C

	.GLOBAL gUnknown_082F01B0
gUnknown_082F01B0:
	.INCBIN "baserom.gba", 0x2F01B0, 0x2F01B8-0x2F01B0

	.GLOBAL gUnknown_082F01B8
gUnknown_082F01B8:
	.INCBIN "baserom.gba", 0x2F01B8, 0x2F033C-0x2F01B8

	.GLOBAL gUnknown_082F033C
gUnknown_082F033C:
	.INCBIN "baserom.gba", 0x2F033C, 0x2F0344-0x2F033C

	.GLOBAL gUnknown_082F0344
gUnknown_082F0344:
	.INCBIN "baserom.gba", 0x2F0344, 0x2F0364-0x2F0344

	.GLOBAL gUnknown_082F0364
gUnknown_082F0364:
	.INCBIN "baserom.gba", 0x2F0364, 0x2F043C-0x2F0364

	.GLOBAL gUnknown_082F043C
gUnknown_082F043C:
	.INCBIN "baserom.gba", 0x2F043C, 0x2F0444-0x2F043C

	.GLOBAL gUnknown_082F0444
gUnknown_082F0444:
	.INCBIN "baserom.gba", 0x2F0444, 0x2F0768-0x2F0444

	.GLOBAL gUnknown_082F0768
gUnknown_082F0768:
	.INCBIN "baserom.gba", 0x2F0768, 0x2F0770-0x2F0768

	.GLOBAL gUnknown_082F0770
gUnknown_082F0770:
	.INCBIN "baserom.gba", 0x2F0770, 0x2F07B4-0x2F0770

	.GLOBAL gUnknown_082F07B4
gUnknown_082F07B4:
	.INCBIN "baserom.gba", 0x2F07B4, 0x2F07BC-0x2F07B4

	.GLOBAL gUnknown_082F07BC
gUnknown_082F07BC:
	.INCBIN "baserom.gba", 0x2F07BC, 0x2F0800-0x2F07BC

	.GLOBAL gUnknown_082F0800
gUnknown_082F0800:
	.INCBIN "baserom.gba", 0x2F0800, 0x2F0808-0x2F0800

	.GLOBAL gUnknown_082F0808
gUnknown_082F0808:
	.INCBIN "baserom.gba", 0x2F0808, 0x2F084C-0x2F0808

	.GLOBAL gUnknown_082F084C
gUnknown_082F084C:
	.INCBIN "baserom.gba", 0x2F084C, 0x2F0854-0x2F084C

	.GLOBAL gUnknown_082F0854
gUnknown_082F0854:
	.INCBIN "baserom.gba", 0x2F0854, 0x2F0944-0x2F0854

	.GLOBAL gUnknown_082F0944
gUnknown_082F0944:
	.INCBIN "baserom.gba", 0x2F0944, 0x2F094C-0x2F0944

	.GLOBAL gUnknown_082F094C
gUnknown_082F094C:
	.INCBIN "baserom.gba", 0x2F094C, 0x2F0A60-0x2F094C

	.GLOBAL gUnknown_082F0A60
gUnknown_082F0A60:
	.INCBIN "baserom.gba", 0x2F0A60, 0x2F0A68-0x2F0A60

	.GLOBAL gUnknown_082F0A68
gUnknown_082F0A68:
	.INCBIN "baserom.gba", 0x2F0A68, 0x2F0B30-0x2F0A68

	.GLOBAL gUnknown_082F0B30
gUnknown_082F0B30:
	.INCBIN "baserom.gba", 0x2F0B30, 0x2F0B38-0x2F0B30

	.GLOBAL gUnknown_082F0B38
gUnknown_082F0B38:
	.INCBIN "baserom.gba", 0x2F0B38, 0x2F0BDC-0x2F0B38

	.GLOBAL gUnknown_082F0BDC
gUnknown_082F0BDC:
	.INCBIN "baserom.gba", 0x2F0BDC, 0x2F0BE4-0x2F0BDC

	.GLOBAL gUnknown_082F0BE4
gUnknown_082F0BE4:
	.INCBIN "baserom.gba", 0x2F0BE4, 0x2F0C88-0x2F0BE4

	.GLOBAL gUnknown_082F0C88
gUnknown_082F0C88:
	.INCBIN "baserom.gba", 0x2F0C88, 0x2F0C90-0x2F0C88

	.GLOBAL gUnknown_082F0C90
gUnknown_082F0C90:
	.INCBIN "baserom.gba", 0x2F0C90, 0x2F0CF4-0x2F0C90

	.GLOBAL gUnknown_082F0CF4
gUnknown_082F0CF4:
	.INCBIN "baserom.gba", 0x2F0CF4, 0x2F0CFC-0x2F0CF4

	.GLOBAL gUnknown_082F0CFC
gUnknown_082F0CFC:
	.INCBIN "baserom.gba", 0x2F0CFC, 0x2F0DA0-0x2F0CFC

	.GLOBAL gUnknown_082F0DA0
gUnknown_082F0DA0:
	.INCBIN "baserom.gba", 0x2F0DA0, 0x2F0DA8-0x2F0DA0

	.GLOBAL gUnknown_082F0DA8
gUnknown_082F0DA8:
	.INCBIN "baserom.gba", 0x2F0DA8, 0x2F11CC-0x2F0DA8

	.GLOBAL gUnknown_082F11CC
gUnknown_082F11CC:
	.INCBIN "baserom.gba", 0x2F11CC, 0x2F11D4-0x2F11CC

	.GLOBAL gUnknown_082F11D4
gUnknown_082F11D4:
	.INCBIN "baserom.gba", 0x2F11D4, 0x2F15F8-0x2F11D4

	.GLOBAL gUnknown_082F15F8
gUnknown_082F15F8:
	.INCBIN "baserom.gba", 0x2F15F8, 0x2F1600-0x2F15F8

	.GLOBAL gUnknown_082F1600
gUnknown_082F1600:
	.INCBIN "baserom.gba", 0x2F1600, 0x2F1680-0x2F1600

	.GLOBAL gUnknown_082F1680
gUnknown_082F1680:
	.INCBIN "baserom.gba", 0x2F1680, 0x2F1718-0x2F1680

	.GLOBAL gUnknown_082F1718
gUnknown_082F1718:
	.INCBIN "baserom.gba", 0x2F1718, 0x2F1898-0x2F1718

	.GLOBAL gUnknown_082F1898
gUnknown_082F1898:
	.INCBIN "baserom.gba", 0x2F1898, 0x2F1930-0x2F1898

	.GLOBAL gUnknown_082F1930
gUnknown_082F1930:
	.INCBIN "baserom.gba", 0x2F1930, 0x2F1AB0-0x2F1930

	.GLOBAL gUnknown_082F1AB0
gUnknown_082F1AB0:
	.INCBIN "baserom.gba", 0x2F1AB0, 0x2F1B48-0x2F1AB0

	.GLOBAL gUnknown_082F1B48
gUnknown_082F1B48:
	.INCBIN "baserom.gba", 0x2F1B48, 0x2F200C-0x2F1B48

	.GLOBAL gUnknown_082F200C
gUnknown_082F200C:
	.INCBIN "baserom.gba", 0x2F200C, 0x2F2014-0x2F200C

	.GLOBAL gUnknown_082F2014
gUnknown_082F2014:
	.INCBIN "baserom.gba", 0x2F2014, 0x2F20B8-0x2F2014

	.GLOBAL gUnknown_082F20B8
gUnknown_082F20B8:
	.INCBIN "baserom.gba", 0x2F20B8, 0x2F20C0-0x2F20B8

	.GLOBAL gUnknown_082F20C0
gUnknown_082F20C0:
	.INCBIN "baserom.gba", 0x2F20C0, 0x2F2164-0x2F20C0

	.GLOBAL gUnknown_082F2164
gUnknown_082F2164:
	.INCBIN "baserom.gba", 0x2F2164, 0x2F216C-0x2F2164

	.GLOBAL gUnknown_082F216C
gUnknown_082F216C:
	.INCBIN "baserom.gba", 0x2F216C, 0x2F2210-0x2F216C

	.GLOBAL gUnknown_082F2210
gUnknown_082F2210:
	.INCBIN "baserom.gba", 0x2F2210, 0x2F2218-0x2F2210

	.GLOBAL gUnknown_082F2218
gUnknown_082F2218:
	.INCBIN "baserom.gba", 0x2F2218, 0x2F22BC-0x2F2218

	.GLOBAL gUnknown_082F22BC
gUnknown_082F22BC:
	.INCBIN "baserom.gba", 0x2F22BC, 0x2F22C4-0x2F22BC

	.GLOBAL gUnknown_082F22C4
gUnknown_082F22C4:
	.INCBIN "baserom.gba", 0x2F22C4, 0x2F2368-0x2F22C4

	.GLOBAL gUnknown_082F2368
gUnknown_082F2368:
	.INCBIN "baserom.gba", 0x2F2368, 0x2F2370-0x2F2368

	.GLOBAL gUnknown_082F2370
gUnknown_082F2370:
	.INCBIN "baserom.gba", 0x2F2370, 0x2F2414-0x2F2370

	.GLOBAL gUnknown_082F2414
gUnknown_082F2414:
	.INCBIN "baserom.gba", 0x2F2414, 0x2F241C-0x2F2414

	.GLOBAL gUnknown_082F241C
gUnknown_082F241C:
	.INCBIN "baserom.gba", 0x2F241C, 0x2F2640-0x2F241C

	.GLOBAL gUnknown_082F2640
gUnknown_082F2640:
	.INCBIN "baserom.gba", 0x2F2640, 0x2F2648-0x2F2640

	.GLOBAL gUnknown_082F2648
gUnknown_082F2648:
	.INCBIN "baserom.gba", 0x2F2648, 0x2F286C-0x2F2648

	.GLOBAL gUnknown_082F286C
gUnknown_082F286C:
	.INCBIN "baserom.gba", 0x2F286C, 0x2F2874-0x2F286C

	.GLOBAL gUnknown_082F2874
gUnknown_082F2874:
	.INCBIN "baserom.gba", 0x2F2874, 0x2F2A98-0x2F2874

	.GLOBAL gUnknown_082F2A98
gUnknown_082F2A98:
	.INCBIN "baserom.gba", 0x2F2A98, 0x2F2AA0-0x2F2A98

	.GLOBAL gUnknown_082F2AA0
gUnknown_082F2AA0:
	.INCBIN "baserom.gba", 0x2F2AA0, 0x2F2CC4-0x2F2AA0

	.GLOBAL gUnknown_082F2CC4
gUnknown_082F2CC4:
	.INCBIN "baserom.gba", 0x2F2CC4, 0x2F2CCC-0x2F2CC4

	.GLOBAL gUnknown_082F2CCC
gUnknown_082F2CCC:
	.INCBIN "baserom.gba", 0x2F2CCC, 0x2F2EF0-0x2F2CCC

	.GLOBAL gUnknown_082F2EF0
gUnknown_082F2EF0:
	.INCBIN "baserom.gba", 0x2F2EF0, 0x2F2EF8-0x2F2EF0

	.GLOBAL gUnknown_082F2EF8
gUnknown_082F2EF8:
	.INCBIN "baserom.gba", 0x2F2EF8, 0x2F311C-0x2F2EF8

	.GLOBAL gUnknown_082F311C
gUnknown_082F311C:
	.INCBIN "baserom.gba", 0x2F311C, 0x2F3124-0x2F311C

	.GLOBAL gUnknown_082F3124
gUnknown_082F3124:
	.INCBIN "baserom.gba", 0x2F3124, 0x2F3348-0x2F3124

	.GLOBAL gUnknown_082F3348
gUnknown_082F3348:
	.INCBIN "baserom.gba", 0x2F3348, 0x2F3350-0x2F3348

	.GLOBAL gUnknown_082F3350
gUnknown_082F3350:
	.INCBIN "baserom.gba", 0x2F3350, 0x2F3574-0x2F3350

	.GLOBAL gUnknown_082F3574
gUnknown_082F3574:
	.INCBIN "baserom.gba", 0x2F3574, 0x2F357C-0x2F3574

	.GLOBAL gUnknown_082F357C
gUnknown_082F357C:
	.INCBIN "baserom.gba", 0x2F357C, 0x2F37A8-0x2F357C

	.GLOBAL gUnknown_082F37A8
gUnknown_082F37A8:
	.INCBIN "baserom.gba", 0x2F37A8, 0x2F38F4-0x2F37A8

	.GLOBAL gUnknown_082F38F4
gUnknown_082F38F4:
	.INCBIN "baserom.gba", 0x2F38F4, 0x2F39F0-0x2F38F4

	.GLOBAL gUnknown_082F39F0
gUnknown_082F39F0:
	.INCBIN "baserom.gba", 0x2F39F0, 0x2F39F8-0x2F39F0

	.GLOBAL gUnknown_082F39F8
gUnknown_082F39F8:
	.INCBIN "baserom.gba", 0x2F39F8, 0x2F513C-0x2F39F8

	.GLOBAL gUnknown_082F513C
gUnknown_082F513C:
	.INCBIN "baserom.gba", 0x2F513C, 0x2F52A4-0x2F513C

	.GLOBAL gUnknown_082F52A4
gUnknown_082F52A4:
	.INCBIN "baserom.gba", 0x2F52A4, 0x2F52AC-0x2F52A4

	.GLOBAL gUnknown_082F52AC
gUnknown_082F52AC:
	.INCBIN "baserom.gba", 0x2F52AC, 0x2F8F04-0x2F52AC

	.GLOBAL gUnknown_082F8F04
gUnknown_082F8F04:
	.INCBIN "baserom.gba", 0x2F8F04, 0x2F8F0C-0x2F8F04

	.GLOBAL gUnknown_082F8F0C
gUnknown_082F8F0C:
	.INCBIN "baserom.gba", 0x2F8F0C, 0x342EAC-0x2F8F0C

	.GLOBAL gUnknown_08342EAC
gUnknown_08342EAC:
	.INCBIN "baserom.gba", 0x342EAC, 0x342EB4-0x342EAC

	.GLOBAL gUnknown_08342EB4
gUnknown_08342EB4:
	.INCBIN "baserom.gba", 0x342EB4, 0x43980C-0x342EB4

	.GLOBAL gUnknown_0843980C
gUnknown_0843980C:
	.INCBIN "baserom.gba", 0x43980C, 0x439A4C-0x43980C

	.GLOBAL gUnknown_08439A4C
gUnknown_08439A4C:
	.INCBIN "baserom.gba", 0x439A4C, 0x439A54-0x439A4C

	.GLOBAL gUnknown_08439A54
gUnknown_08439A54:
	.INCBIN "baserom.gba", 0x439A54, 0x51400C-0x439A54

	.GLOBAL gUnknown_0851400C
gUnknown_0851400C:
	.INCBIN "baserom.gba", 0x51400C, 0x514014-0x51400C

	.GLOBAL gUnknown_08514014
gUnknown_08514014:
	.INCBIN "baserom.gba", 0x514014, 0x51F440-0x514014

	.GLOBAL gUnknown_0851F440
gUnknown_0851F440:
	.INCBIN "baserom.gba", 0x51F440, 0x51F560-0x51F440

	.GLOBAL gUnknown_0851F560
gUnknown_0851F560:
	.INCBIN "baserom.gba", 0x51F560, 0x51F568-0x51F560

	.GLOBAL gUnknown_0851F568
gUnknown_0851F568:
	.INCBIN "baserom.gba", 0x51F568, 0x54301C-0x51F568

	.GLOBAL gUnknown_0854301C
gUnknown_0854301C:
	.INCBIN "baserom.gba", 0x54301C, 0x54337C-0x54301C

	.GLOBAL gUnknown_0854337C
gUnknown_0854337C:
	.INCBIN "baserom.gba", 0x54337C, 0x543384-0x54337C

	.GLOBAL gUnknown_08543384
gUnknown_08543384:
	.INCBIN "baserom.gba", 0x543384, 0x587E38-0x543384

	.GLOBAL gUnknown_08587E38
gUnknown_08587E38:
	.INCBIN "baserom.gba", 0x587E38, 0x5882B8-0x587E38

	.GLOBAL gUnknown_085882B8
gUnknown_085882B8:
	.INCBIN "baserom.gba", 0x5882B8, 0x5882C0-0x5882B8

	.GLOBAL gUnknown_085882C0
gUnknown_085882C0:
	.INCBIN "baserom.gba", 0x5882C0, 0x59FC1C-0x5882C0

	.GLOBAL gUnknown_0859FC1C
gUnknown_0859FC1C:
	.INCBIN "baserom.gba", 0x59FC1C, 0x59FD3C-0x59FC1C

	.GLOBAL gUnknown_0859FD3C
gUnknown_0859FD3C:
	.INCBIN "baserom.gba", 0x59FD3C, 0x59FD44-0x59FD3C

	.GLOBAL gUnknown_0859FD44
gUnknown_0859FD44:
	.INCBIN "baserom.gba", 0x59FD44, 0x5BD3D8-0x59FD44

	.GLOBAL gUnknown_085BD3D8
gUnknown_085BD3D8:
	.INCBIN "baserom.gba", 0x5BD3D8, 0x5BD588-0x5BD3D8

	.GLOBAL gUnknown_085BD588
gUnknown_085BD588:
	.INCBIN "baserom.gba", 0x5BD588, 0x5BD590-0x5BD588

	.GLOBAL gUnknown_085BD590
gUnknown_085BD590:
	.INCBIN "baserom.gba", 0x5BD590, 0x5C240C-0x5BD590

	.GLOBAL gUnknown_085C240C
gUnknown_085C240C:
	.INCBIN "baserom.gba", 0x5C240C, 0x5C2588-0x5C240C

	.GLOBAL gUnknown_085C2588
gUnknown_085C2588:
	.INCBIN "baserom.gba", 0x5C2588, 0x5C2634-0x5C2588

	.GLOBAL gUnknown_085C2634
gUnknown_085C2634:
	.INCBIN "baserom.gba", 0x5C2634, 0x5C2F90-0x5C2634

	.GLOBAL gUnknown_085C2F90
gUnknown_085C2F90:
	.INCBIN "baserom.gba", 0x5C2F90, 0x5C3218-0x5C2F90

	.GLOBAL gUnknown_085C3218
gUnknown_085C3218:
	.INCBIN "baserom.gba", 0x5C3218, 0x5C3220-0x5C3218

	.GLOBAL gUnknown_085C3220
gUnknown_085C3220:
	.INCBIN "baserom.gba", 0x5C3220, 0x5C7A78-0x5C3220

	.GLOBAL gUnknown_085C7A78
gUnknown_085C7A78:
	.INCBIN "baserom.gba", 0x5C7A78, 0x5C7D00-0x5C7A78

	.GLOBAL gUnknown_085C7D00
gUnknown_085C7D00:
	.INCBIN "baserom.gba", 0x5C7D00, 0x5C7D08-0x5C7D00

	.GLOBAL gUnknown_085C7D08
gUnknown_085C7D08:
	.INCBIN "baserom.gba", 0x5C7D08, 0x5CD18C-0x5C7D08

	.GLOBAL gUnknown_085CD18C
gUnknown_085CD18C:
	.INCBIN "baserom.gba", 0x5CD18C, 0x5CD848-0x5CD18C

	.GLOBAL gUnknown_085CD848
gUnknown_085CD848:
	.INCBIN "baserom.gba", 0x5CD848, 0x5CE074-0x5CD848

	.GLOBAL gUnknown_085CE074
gUnknown_085CE074:
	.INCBIN "baserom.gba", 0x5CE074, 0x5D08F8-0x5CE074

	.GLOBAL gUnknown_085D08F8
gUnknown_085D08F8:
	.INCBIN "baserom.gba", 0x5D08F8, 0x5D0900-0x5D08F8

	.GLOBAL gUnknown_085D0900
gUnknown_085D0900:
	.INCBIN "baserom.gba", 0x5D0900, 0x5DEA94-0x5D0900

	.GLOBAL gUnknown_085DEA94
gUnknown_085DEA94:
	.INCBIN "baserom.gba", 0x5DEA94, 0x5DEA9C-0x5DEA94

	.GLOBAL gUnknown_085DEA9C
gUnknown_085DEA9C:
	.INCBIN "baserom.gba", 0x5DEA9C, 0x5DED1C-0x5DEA9C

	.GLOBAL gUnknown_085DED1C
gUnknown_085DED1C:
	.INCBIN "baserom.gba", 0x5DED1C, 0x5DEFAC-0x5DED1C

	.GLOBAL gUnknown_085DEFAC
gUnknown_085DEFAC:
	.INCBIN "baserom.gba", 0x5DEFAC, 0x5DF3AC-0x5DEFAC

	.GLOBAL gUnknown_085DF3AC
gUnknown_085DF3AC:
	.INCBIN "baserom.gba", 0x5DF3AC, 0x5DF63C-0x5DF3AC

	.GLOBAL gUnknown_085DF63C
gUnknown_085DF63C:
	.INCBIN "baserom.gba", 0x5DF63C, 0x5DFA3C-0x5DF63C

	.GLOBAL gUnknown_085DFA3C
gUnknown_085DFA3C:
	.INCBIN "baserom.gba", 0x5DFA3C, 0x5DFCCC-0x5DFA3C

	.GLOBAL gUnknown_085DFCCC
gUnknown_085DFCCC:
	.INCBIN "baserom.gba", 0x5DFCCC, 0x5E063C-0x5DFCCC

	.GLOBAL gUnknown_085E063C
gUnknown_085E063C:
	.INCBIN "baserom.gba", 0x5E063C, 0x5E068C-0x5E063C

	.GLOBAL gUnknown_085E068C
gUnknown_085E068C:
	.INCBIN "baserom.gba", 0x5E068C, 0x5E0908-0x5E068C

	.GLOBAL gUnknown_085E0908
gUnknown_085E0908:
	.INCBIN "baserom.gba", 0x5E0908, 0x5E0AC4-0x5E0908

	.GLOBAL gUnknown_085E0AC4
gUnknown_085E0AC4:
	.INCBIN "baserom.gba", 0x5E0AC4, 0x5E0B14-0x5E0AC4

	.GLOBAL gUnknown_085E0B14
gUnknown_085E0B14:
	.INCBIN "baserom.gba", 0x5E0B14, 0x5E0D90-0x5E0B14

	.GLOBAL gUnknown_085E0D90
gUnknown_085E0D90:
	.INCBIN "baserom.gba", 0x5E0D90, 0x5E0EBC-0x5E0D90

	.GLOBAL gUnknown_085E0EBC
gUnknown_085E0EBC:
	.INCBIN "baserom.gba", 0x5E0EBC, 0x5E0F0C-0x5E0EBC

	.GLOBAL gUnknown_085E0F0C
gUnknown_085E0F0C:
	.INCBIN "baserom.gba", 0x5E0F0C, 0x5E1188-0x5E0F0C

	.GLOBAL gUnknown_085E1188
gUnknown_085E1188:
	.INCBIN "baserom.gba", 0x5E1188, 0x5E1C2C-0x5E1188

	.GLOBAL gUnknown_085E1C2C
gUnknown_085E1C2C:
	.INCBIN "baserom.gba", 0x5E1C2C, 0x5E1F2C-0x5E1C2C

	.GLOBAL gUnknown_085E1F2C
gUnknown_085E1F2C:
	.INCBIN "baserom.gba", 0x5E1F2C, 0x5E200C-0x5E1F2C

	.GLOBAL gUnknown_085E200C
gUnknown_085E200C:
	.INCBIN "baserom.gba", 0x5E200C, 0x5E2330-0x5E200C

	.GLOBAL gUnknown_085E2330
gUnknown_085E2330:
	.INCBIN "baserom.gba", 0x5E2330, 0x5E2338-0x5E2330

	.GLOBAL gUnknown_085E2338
gUnknown_085E2338:
	.INCBIN "baserom.gba", 0x5E2338, 0x5E2870-0x5E2338

	.GLOBAL gUnknown_085E2870
gUnknown_085E2870:
	.INCBIN "baserom.gba", 0x5E2870, 0x5E2B00-0x5E2870

	.GLOBAL gUnknown_085E2B00
gUnknown_085E2B00:
	.INCBIN "baserom.gba", 0x5E2B00, 0x5E2F00-0x5E2B00

	.GLOBAL gUnknown_085E2F00
gUnknown_085E2F00:
	.INCBIN "baserom.gba", 0x5E2F00, 0x5E3190-0x5E2F00

	.GLOBAL gUnknown_085E3190
gUnknown_085E3190:
	.INCBIN "baserom.gba", 0x5E3190, 0x5E3590-0x5E3190

	.GLOBAL gUnknown_085E3590
gUnknown_085E3590:
	.INCBIN "baserom.gba", 0x5E3590, 0x5E3818-0x5E3590

	.GLOBAL gUnknown_085E3818
gUnknown_085E3818:
	.INCBIN "baserom.gba", 0x5E3818, 0x5E3820-0x5E3818

	.GLOBAL gUnknown_085E3820
gUnknown_085E3820:
	.INCBIN "baserom.gba", 0x5E3820, 0x5E90D0-0x5E3820

	.GLOBAL gUnknown_085E90D0
gUnknown_085E90D0:
	.INCBIN "baserom.gba", 0x5E90D0, 0x5E9360-0x5E90D0

	.GLOBAL gUnknown_085E9360
gUnknown_085E9360:
	.INCBIN "baserom.gba", 0x5E9360, 0x5F49D0-0x5E9360

	.GLOBAL gUnknown_085F49D0
gUnknown_085F49D0:
	.INCBIN "baserom.gba", 0x5F49D0, 0x5F49D8-0x5F49D0

	.GLOBAL gUnknown_085F49D8
gUnknown_085F49D8:
	.INCBIN "baserom.gba", 0x5F49D8, 0x5F61B4-0x5F49D8

	.GLOBAL gUnknown_085F61B4
gUnknown_085F61B4:
	.INCBIN "baserom.gba", 0x5F61B4, 0x5F6388-0x5F61B4

	.GLOBAL gUnknown_085F6388
gUnknown_085F6388:
	.INCBIN "baserom.gba", 0x5F6388, 0x5F6390-0x5F6388

	.GLOBAL gUnknown_085F6390
gUnknown_085F6390:
	.INCBIN "baserom.gba", 0x5F6390, 0x5FB554-0x5F6390

	.GLOBAL gUnknown_085FB554
gUnknown_085FB554:
	.INCBIN "baserom.gba", 0x5FB554, 0x5FB7DC-0x5FB554

	.GLOBAL gUnknown_085FB7DC
gUnknown_085FB7DC:
	.INCBIN "baserom.gba", 0x5FB7DC, 0x5FB7E4-0x5FB7DC

	.GLOBAL gUnknown_085FB7E4
gUnknown_085FB7E4:
	.INCBIN "baserom.gba", 0x5FB7E4, 0x5FEFE4-0x5FB7E4

	.GLOBAL gUnknown_085FEFE4
gUnknown_085FEFE4:
	.INCBIN "baserom.gba", 0x5FEFE4, 0x5FF26C-0x5FEFE4

	.GLOBAL gUnknown_085FF26C
gUnknown_085FF26C:
	.INCBIN "baserom.gba", 0x5FF26C, 0x5FF274-0x5FF26C

	.GLOBAL gUnknown_085FF274
gUnknown_085FF274:
	.INCBIN "baserom.gba", 0x5FF274, 0x600E74-0x5FF274

	.GLOBAL gUnknown_08600E74
gUnknown_08600E74:
	.INCBIN "baserom.gba", 0x600E74, 0x6010FC-0x600E74

	.GLOBAL gUnknown_086010FC
gUnknown_086010FC:
	.INCBIN "baserom.gba", 0x6010FC, 0x601104-0x6010FC

	.GLOBAL gUnknown_08601104
gUnknown_08601104:
	.INCBIN "baserom.gba", 0x601104, 0x602D04-0x601104

	.GLOBAL gUnknown_08602D04
gUnknown_08602D04:
	.INCBIN "baserom.gba", 0x602D04, 0x602F8C-0x602D04

	.GLOBAL gUnknown_08602F8C
gUnknown_08602F8C:
	.INCBIN "baserom.gba", 0x602F8C, 0x602F94-0x602F8C

	.GLOBAL gUnknown_08602F94
gUnknown_08602F94:
	.INCBIN "baserom.gba", 0x602F94, 0x606794-0x602F94

	.GLOBAL gUnknown_08606794
gUnknown_08606794:
	.INCBIN "baserom.gba", 0x606794, 0x606A1C-0x606794

	.GLOBAL gUnknown_08606A1C
gUnknown_08606A1C:
	.INCBIN "baserom.gba", 0x606A1C, 0x606A24-0x606A1C

	.GLOBAL gUnknown_08606A24
gUnknown_08606A24:
	.INCBIN "baserom.gba", 0x606A24, 0x60A224-0x606A24

	.GLOBAL gUnknown_0860A224
gUnknown_0860A224:
	.INCBIN "baserom.gba", 0x60A224, 0x60A4AC-0x60A224

	.GLOBAL gUnknown_0860A4AC
gUnknown_0860A4AC:
	.INCBIN "baserom.gba", 0x60A4AC, 0x60A4B4-0x60A4AC

	.GLOBAL gUnknown_0860A4B4
gUnknown_0860A4B4:
	.INCBIN "baserom.gba", 0x60A4B4, 0x60C0B4-0x60A4B4

	.GLOBAL gUnknown_0860C0B4
gUnknown_0860C0B4:
	.INCBIN "baserom.gba", 0x60C0B4, 0x60C33C-0x60C0B4

	.GLOBAL gUnknown_0860C33C
gUnknown_0860C33C:
	.INCBIN "baserom.gba", 0x60C33C, 0x60C344-0x60C33C

	.GLOBAL gUnknown_0860C344
gUnknown_0860C344:
	.INCBIN "baserom.gba", 0x60C344, 0x60FB44-0x60C344

	.GLOBAL gUnknown_0860FB44
gUnknown_0860FB44:
	.INCBIN "baserom.gba", 0x60FB44, 0x60FDCC-0x60FB44

	.GLOBAL gUnknown_0860FDCC
gUnknown_0860FDCC:
	.INCBIN "baserom.gba", 0x60FDCC, 0x60FDD4-0x60FDCC

	.GLOBAL gUnknown_0860FDD4
gUnknown_0860FDD4:
	.INCBIN "baserom.gba", 0x60FDD4, 0x614764-0x60FDD4

	.GLOBAL gUnknown_08614764
gUnknown_08614764:
	.INCBIN "baserom.gba", 0x614764, 0x615BB4-0x614764

	.GLOBAL gUnknown_08615BB4
gUnknown_08615BB4:
	.INCBIN "baserom.gba", 0x615BB4, 0x615C04-0x615BB4

	.GLOBAL gUnknown_08615C04
gUnknown_08615C04:
	.INCBIN "baserom.gba", 0x615C04, 0x617030-0x615C04

	.GLOBAL gUnknown_08617030
gUnknown_08617030:
	.INCBIN "baserom.gba", 0x617030, 0x617080-0x617030

	.GLOBAL gUnknown_08617080
gUnknown_08617080:
	.INCBIN "baserom.gba", 0x617080, 0x6172E8-0x617080

	.GLOBAL gUnknown_086172E8
gUnknown_086172E8:
	.INCBIN "baserom.gba", 0x6172E8, 0x6172F0-0x6172E8

	.GLOBAL gUnknown_086172F0
gUnknown_086172F0:
	.INCBIN "baserom.gba", 0x6172F0, 0x617828-0x6172F0

	.GLOBAL gUnknown_08617828
gUnknown_08617828:
	.INCBIN "baserom.gba", 0x617828, 0x617830-0x617828

	.GLOBAL gUnknown_08617830
gUnknown_08617830:
	.INCBIN "baserom.gba", 0x617830, 0x617AFC-0x617830

	.GLOBAL gUnknown_08617AFC
gUnknown_08617AFC:
	.INCBIN "baserom.gba", 0x617AFC, 0x617B04-0x617AFC

	.GLOBAL gUnknown_08617B04
gUnknown_08617B04:
	.INCBIN "baserom.gba", 0x617B04, 0x617F1C-0x617B04

	.GLOBAL gUnknown_08617F1C
gUnknown_08617F1C:
	.INCBIN "baserom.gba", 0x617F1C, 0x617F24-0x617F1C

	.GLOBAL gUnknown_08617F24
gUnknown_08617F24:
	.INCBIN "baserom.gba", 0x617F24, 0x618064-0x617F24

	.GLOBAL gUnknown_08618064
gUnknown_08618064:
	.INCBIN "baserom.gba", 0x618064, 0x6180B4-0x618064

	.GLOBAL gUnknown_086180B4
gUnknown_086180B4:
	.INCBIN "baserom.gba", 0x6180B4, 0x61DE70-0x6180B4

	.GLOBAL gUnknown_0861DE70
gUnknown_0861DE70:
	.INCBIN "baserom.gba", 0x61DE70, 0x61E0B0-0x61DE70

	.GLOBAL gUnknown_0861E0B0
gUnknown_0861E0B0:
	.INCBIN "baserom.gba", 0x61E0B0, 0x61E0B8-0x61E0B0

	.GLOBAL gUnknown_0861E0B8
gUnknown_0861E0B8:
	.INCBIN "baserom.gba", 0x61E0B8, 0x6200B8-0x61E0B8

	.GLOBAL gUnknown_086200B8
gUnknown_086200B8:
	.INCBIN "baserom.gba", 0x6200B8, 0x6201D8-0x6200B8

	.GLOBAL gUnknown_086201D8
gUnknown_086201D8:
	.INCBIN "baserom.gba", 0x6201D8, 0x6201E0-0x6201D8

	.GLOBAL gUnknown_086201E0
gUnknown_086201E0:
	.INCBIN "baserom.gba", 0x6201E0, 0x6211E0-0x6201E0

	.GLOBAL gUnknown_086211E0
gUnknown_086211E0:
	.INCBIN "baserom.gba", 0x6211E0, 0x621300-0x6211E0

	.GLOBAL gUnknown_08621300
gUnknown_08621300:
	.INCBIN "baserom.gba", 0x621300, 0x621308-0x621300

	.GLOBAL gUnknown_08621308
gUnknown_08621308:
	.INCBIN "baserom.gba", 0x621308, 0x657324-0x621308

	.GLOBAL gUnknown_08657324
gUnknown_08657324:
	.INCBIN "baserom.gba", 0x657324, 0x65732C-0x657324

	.GLOBAL gUnknown_0865732C
gUnknown_0865732C:
	.INCBIN "baserom.gba", 0x65732C, 0x6573AC-0x65732C

	.GLOBAL gUnknown_086573AC
gUnknown_086573AC:
	.INCBIN "baserom.gba", 0x6573AC, 0x657630-0x6573AC

	.GLOBAL gUnknown_08657630
gUnknown_08657630:
	.INCBIN "baserom.gba", 0x657630, 0x6576C0-0x657630

	.GLOBAL gUnknown_086576C0
gUnknown_086576C0:
	.INCBIN "baserom.gba", 0x6576C0, 0x6576C8-0x6576C0

	.GLOBAL gUnknown_086576C8
gUnknown_086576C8:
	.INCBIN "baserom.gba", 0x6576C8, 0x6593A0-0x6576C8

	.GLOBAL gUncompressedGraphicsTable
gUncompressedGraphicsTable:
	.INCBIN "baserom.gba", 0x6593A0, 0x65F610-0x6593A0

	.GLOBAL gUnknown_0865F610
gUnknown_0865F610:
	.INCBIN "baserom.gba", 0x65F610, 0x65F700-0x65F610

	.GLOBAL gUnknown_0865F700
gUnknown_0865F700:
	.INCBIN "baserom.gba", 0x65F700, 0x65F7F0-0x65F700

	.GLOBAL gUnknown_0865F7F0
gUnknown_0865F7F0:
	.INCBIN "baserom.gba", 0x65F7F0, 0x65F8E0-0x65F7F0

	.GLOBAL gUnknown_0865F8E0
gUnknown_0865F8E0:
	.INCBIN "baserom.gba", 0x65F8E0, 0x65F9D0-0x65F8E0

	.GLOBAL gUnknown_0865F9D0
gUnknown_0865F9D0:
	.INCBIN "baserom.gba", 0x65F9D0, 0x65FAC0-0x65F9D0

	.GLOBAL gUnknown_0865FAC0
gUnknown_0865FAC0:
	.INCBIN "baserom.gba", 0x65FAC0, 0x65FBB0-0x65FAC0

	.GLOBAL gUnknown_0865FBB0
gUnknown_0865FBB0:
	.INCBIN "baserom.gba", 0x65FBB0, 0x65FCA0-0x65FBB0

	.GLOBAL gUnknown_0865FCA0
gUnknown_0865FCA0:
	.INCBIN "baserom.gba", 0x65FCA0, 0x65FD90-0x65FCA0

	.GLOBAL gUnknown_0865FD90
gUnknown_0865FD90:
	.INCBIN "baserom.gba", 0x65FD90, 0x65FE80-0x65FD90

	.GLOBAL gUnknown_0865FE80
gUnknown_0865FE80:
	.INCBIN "baserom.gba", 0x65FE80, 0x6600D8-0x65FE80

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
	.INCBIN "baserom.gba", 0x6604B8, 0x660A68-0x6604B8

	.GLOBAL gUnknown_08660A68
gUnknown_08660A68:
	.INCBIN "baserom.gba", 0x660A68, 0x660E4C-0x660A68

	.GLOBAL gUnknown_08660E4C
gUnknown_08660E4C:
	.INCBIN "baserom.gba", 0x660E4C, 0x660E8C-0x660E4C

	.GLOBAL gUnknown_08660E8C
gUnknown_08660E8C:
	.INCBIN "baserom.gba", 0x660E8C, 0x660EA8-0x660E8C

	.GLOBAL gUnknown_08660EA8
gUnknown_08660EA8:
	.INCBIN "baserom.gba", 0x660EA8, 0x661378-0x660EA8

	.GLOBAL gUnknown_08661378
gUnknown_08661378:
	.INCBIN "baserom.gba", 0x661378, 0x6613B8-0x661378

	.GLOBAL gUnknown_086613B8
gUnknown_086613B8:
	.INCBIN "baserom.gba", 0x6613B8, 0x661EB8-0x6613B8

	.GLOBAL gUnknown_08661EB8
gUnknown_08661EB8:
	.INCBIN "baserom.gba", 0x661EB8, 0x6622A8-0x661EB8

	.GLOBAL gUnknown_086622A8
gUnknown_086622A8:
	.INCBIN "baserom.gba", 0x6622A8, 0x662778-0x6622A8

	.GLOBAL gUnknown_08662778
gUnknown_08662778:
	.INCBIN "baserom.gba", 0x662778, 0x662A00-0x662778

	.GLOBAL gUnknown_08662A00
gUnknown_08662A00:
	.INCBIN "baserom.gba", 0x662A00, 0x662C30-0x662A00

	.GLOBAL gUnknown_08662C30
gUnknown_08662C30:
	.INCBIN "baserom.gba", 0x662C30, 0x662C44-0x662C30

	.GLOBAL gUnknown_08662C44
gUnknown_08662C44:
	.INCBIN "baserom.gba", 0x662C44, 0x662C5C-0x662C44

	.GLOBAL gUnknown_08662C5C
gUnknown_08662C5C:
	.INCBIN "baserom.gba", 0x662C5C, 0x662C7C-0x662C5C

	.GLOBAL gUnknown_08662C7C
gUnknown_08662C7C:
	.INCBIN "baserom.gba", 0x662C7C, 0x662CA4-0x662C7C

	.GLOBAL gUnknown_08662CA4
gUnknown_08662CA4:
	.INCBIN "baserom.gba", 0x662CA4, 0x663174-0x662CA4

	.GLOBAL gUnknown_08663174
gUnknown_08663174:
	.INCBIN "baserom.gba", 0x663174, 0x663444-0x663174

	.GLOBAL gUnknown_08663444
gUnknown_08663444:
	.INCBIN "baserom.gba", 0x663444, 0x663464-0x663444

	.GLOBAL gUnknown_08663464
gUnknown_08663464:
	.INCBIN "baserom.gba", 0x663464, 0x663488-0x663464

	.GLOBAL gUnknown_08663488
gUnknown_08663488:
	.INCBIN "baserom.gba", 0x663488, 0x663568-0x663488

	.GLOBAL gUnknown_08663568
gUnknown_08663568:
	.INCBIN "baserom.gba", 0x663568, 0x663648-0x663568

	.GLOBAL gUnknown_08663648
gUnknown_08663648:
	.INCBIN "baserom.gba", 0x663648, 0x663728-0x663648

	.GLOBAL gUnknown_08663728
gUnknown_08663728:
	.INCBIN "baserom.gba", 0x663728, 0x663734-0x663728

	.GLOBAL gUnknown_08663734
gUnknown_08663734:
	.INCBIN "baserom.gba", 0x663734, 0x663748-0x663734

	.GLOBAL gUnknown_08663748
gUnknown_08663748:
	.INCBIN "baserom.gba", 0x663748, 0x663768-0x663748

	.GLOBAL gUnknown_08663768
gUnknown_08663768:
	.INCBIN "baserom.gba", 0x663768, 0x6637A0-0x663768

	.GLOBAL gUnknown_086637A0
gUnknown_086637A0:
	.INCBIN "baserom.gba", 0x6637A0, 0x663C70-0x6637A0

	.GLOBAL gUnknown_08663C70
gUnknown_08663C70:
	.4byte 0x00B40107

	.GLOBAL gUnknown_08663C74
gUnknown_08663C74:
	.4byte 0x00B40107

	.GLOBAL gUnknown_08663C78
gUnknown_08663C78:
	.4byte 0x00B40107

	.GLOBAL gUnknown_08663C7C
gUnknown_08663C7C:
	.4byte 0x00B40107
	
	.GLOBAL gUnknown_08663C80
gUnknown_08663C80:
	.4byte 0xFED4FED4

	.GLOBAL gUnknown_08663C84
gUnknown_08663C84:
	.4byte 0x00000000

	.GLOBAL gUnknown_08663C88
gUnknown_08663C88:
	.4byte gUnknown_03001C50
	.4byte 0x0815FE34
	.4byte 0x0815FFE4
	.4byte 0x0815FFEC
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0C
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_080636A4
	
	.4byte gUnknown_03001C50
	.4byte 0x08167938
	.4byte 0x0816795C
	.4byte 0x08167964
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x01
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062844
	
	.4byte gUnknown_03001C50
	.4byte 0x08168164
	.4byte 0x08168554
	.4byte 0x0816855C
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x1C
	.byte 0x40
	.byte 0x40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062844
	
	.4byte gUnknown_03001C50
	.4byte 0x0815FE34
	.4byte 0x0815FFE4
	.4byte 0x0815FFEC
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0C
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062844	
	
	.4byte gUnknown_03001C50
	.4byte 0x0815FE34
	.4byte 0x0815FFE4
	.4byte 0x0815FFEC
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0C
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063708
	
	.4byte gUnknown_03001C50
	.4byte 0x08230EDC
	.4byte 0x082310D4
	.4byte 0x082310DC
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0E
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063784
	
	.4byte gUnknown_03001C50
	.4byte 0x081BD0A8
	.4byte 0x081BD1EC
	.4byte 0x081BD1F4
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x09
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063818
	
	.4byte gUnknown_03001C50
	.4byte 0x0823F2DC
	.4byte 0x0823F3FC
	.4byte 0x0823F404
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x08
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063860	
	
	.4byte gUnknown_03001C50
	.4byte 0x0823F2DC
	.4byte 0x0823F3FC
	.4byte 0x0823F404
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x08
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063860
		
	.4byte gUnknown_03001C50
	.4byte 0x08167938
	.4byte 0x0816795C
	.4byte 0x08167964
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x01
	.byte 0x40
	.byte 0x20
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063960
	
	.4byte gUnknown_03001C50
	.4byte 0x08168164
	.4byte 0x08168554
	.4byte 0x0816855C
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x1C
	.byte 0x40
	.byte 0x40
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_080636A0
	
	.4byte gUnknown_03001C50
	.4byte 0x08167938
	.4byte 0x0816795C
	.4byte 0x08167964
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x01
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063990
	
	.4byte gUnknown_03001C50
	.4byte 0x08168164
	.4byte 0x08168554
	.4byte 0x0816855C
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x1C
	.byte 0x40
	.byte 0x40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_080639CC
	
	.4byte gUnknown_03001C50
	.4byte 0x08150B48
	.4byte 0x08150BD8
	.4byte 0x08150BE0
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x04
	.byte 0x20
	.byte 0x40
	.4byte 0x00000200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062B94
	
	.4byte gUnknown_03001C50
	.4byte 0x08152BE0
	.4byte 0x08153180
	.4byte 0x08153188
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x28
	.byte 0x40
	.byte 0x20
	.4byte 0x00000200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062B94
		
	.4byte gUnknown_03001C50
	.4byte 0x0813A120
	.4byte 0x0813A168
	.4byte 0x0813A170
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x02
	.byte 0x20
	.byte 0x40
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062C48
			
	.4byte gUnknown_03001C50
	.4byte 0x0813B170
	.4byte 0x0813B3B0
	.4byte 0x0813B3B8
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x10
	.byte 0x40
	.byte 0x20
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062C48
				
	.4byte gUnknown_03001C50
	.4byte 0x08224190
	.4byte 0x08224514
	.4byte 0x0822451C
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x19
	.byte 0x40
	.byte 0x20
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062C48
					
	.4byte gUnknown_03001C50
	.4byte 0x08227D1C
	.4byte 0x08227D40
	.4byte 0x08227D48
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x01
	.byte 0x40
	.byte 0x40
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062C48
						
	.4byte gUnknown_03001C50
	.4byte 0x08228D48
	.4byte 0x08228ED4
	.4byte 0x08228EDC
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x0B
	.byte 0x40
	.byte 0x40
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_080638E0
	
	.4byte gUnknown_03001C50
	.4byte 0x08251EC0
	.4byte 0x08251FE0
	.4byte 0x08251FE8
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x08
	.byte 0x40
	.byte 0x40
	.4byte 0x00020202
	.4byte gUnknown_08663C80
	.4byte gUnknown_08663C84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063928

	.GLOBAL gUnknown_08664120
gUnknown_08664120:
	.INCBIN "baserom.gba", 0x664120, 0x6641E8-0x664120

	.GLOBAL gUnknown_086641E8
gUnknown_086641E8:
	.INCBIN "baserom.gba", 0x6641E8, 0x664610-0x6641E8

	.GLOBAL gUnknown_08664610
gUnknown_08664610:
	.INCBIN "baserom.gba", 0x664610, 0x664698-0x664610

	.GLOBAL gUnknown_08664698
gUnknown_08664698:
	.INCBIN "baserom.gba", 0x664698, 0x6647BC-0x664698

	.GLOBAL gUnknown_086647BC
gUnknown_086647BC:
	.INCBIN "baserom.gba", 0x6647BC, 0x6648A8-0x6647BC

	.GLOBAL gUnknown_086648A8
gUnknown_086648A8:
	.INCBIN "baserom.gba", 0x6648A8, 0x664A68-0x6648A8

	.GLOBAL gUnknown_08664A68
gUnknown_08664A68:
	.INCBIN "baserom.gba", 0x664A68, 0x664C28-0x664A68

	.GLOBAL gUnknown_08664C28
gUnknown_08664C28:
	.INCBIN "baserom.gba", 0x664C28, 0x664DE8-0x664C28

	.GLOBAL gUnknown_08664DE8
gUnknown_08664DE8:
	.INCBIN "baserom.gba", 0x664DE8, 0x664E90-0x664DE8

	.GLOBAL gUnknown_08664E90
gUnknown_08664E90:
	.INCBIN "baserom.gba", 0x664E90, 0x664F38-0x664E90

	.GLOBAL gUnknown_08664F38
gUnknown_08664F38:
	.INCBIN "baserom.gba", 0x664F38, 0x664FE4-0x664F38

	.GLOBAL gUnknown_08664FE4
gUnknown_08664FE4:
	.INCBIN "baserom.gba", 0x664FE4, 0x66508C-0x664FE4

	.GLOBAL gUnknown_0866508C
gUnknown_0866508C:
	.INCBIN "baserom.gba", 0x66508C, 0x6651C4-0x66508C

	.GLOBAL gUnknown_086651C4
gUnknown_086651C4:
	.INCBIN "baserom.gba", 0x6651C4, 0x6656FC-0x6651C4

	.GLOBAL gUnknown_086656FC
gUnknown_086656FC:
	.INCBIN "baserom.gba", 0x6656FC, 0x665844-0x6656FC

	.GLOBAL gUnknown_08665844
gUnknown_08665844:
	.INCBIN "baserom.gba", 0x665844, 0x66587C-0x665844

	.GLOBAL gUnknown_0866587C
gUnknown_0866587C:
	.INCBIN "baserom.gba", 0x66587C, 0x665886-0x66587C

	.GLOBAL gUnknown_08665886
gUnknown_08665886:
	.INCBIN "baserom.gba", 0x665886, 0x665968-0x665886

	.GLOBAL gUnknown_08665968
gUnknown_08665968:
	.INCBIN "baserom.gba", 0x665968, 0x6660E0-0x665968

	.GLOBAL gUnknown_086660E0
gUnknown_086660E0:
	.INCBIN "baserom.gba", 0x6660E0, 0x668D38-0x6660E0

	.GLOBAL gUnknown_08668D38
gUnknown_08668D38:
	.INCBIN "baserom.gba", 0x668D38, 0x6691BC-0x668D38

	.GLOBAL gUnknown_086691BC
gUnknown_086691BC:
	.INCBIN "baserom.gba", 0x6691BC, 0x66945C-0x6691BC

	.GLOBAL gUnknown_0866945C
gUnknown_0866945C:
	.INCBIN "baserom.gba", 0x66945C, 0x6694D4-0x66945C

	.GLOBAL gUnknown_086694D4
gUnknown_086694D4:
	.INCBIN "baserom.gba", 0x6694D4, 0x66954C-0x6694D4

	.GLOBAL gUnknown_0866954C
gUnknown_0866954C:
	.INCBIN "baserom.gba", 0x66954C, 0x66958C-0x66954C

	.GLOBAL gUnknown_0866958C
gUnknown_0866958C:
	.INCBIN "baserom.gba", 0x66958C, 0x6695D8-0x66958C

	.GLOBAL gUnknown_086695D8
gUnknown_086695D8:
	.INCBIN "baserom.gba", 0x6695D8, 0x669A80-0x6695D8

	.GLOBAL gUnknown_08669A80
gUnknown_08669A80:
	.INCBIN "baserom.gba", 0x669A80, 0x669D6C-0x669A80

	.GLOBAL gUnknown_08669D6C
gUnknown_08669D6C:
	.INCBIN "baserom.gba", 0x669D6C, 0x669DAC-0x669D6C

	.GLOBAL gUnknown_08669DAC
gUnknown_08669DAC:
	.INCBIN "baserom.gba", 0x669DAC, 0x706FC8-0x669DAC

	.GLOBAL gUnknown_08706FC8
gUnknown_08706FC8:
	.INCBIN "baserom.gba", 0x706FC8, 0x707E30-0x706FC8

	.GLOBAL gUnknown_08707E30
gUnknown_08707E30:
	.INCBIN "baserom.gba", 0x707E30, 0x7AFC08-0x707E30
	
	.GLOBAL gDKPlusLeftovers
gDKPlusLeftovers:
	.INCBIN "assets/unused/DKPlusLeftoverData.bin"
	
	.GLOBAL gMainMenuData
gMainMenuData:
	.INCBIN "assets/menu/MainMenuData.bin"

	.GLOBAL gLevelSelectData
gLevelSelectData:
	.INCBIN "assets/level_select/LevelSelectData.bin"
	
	.GLOBAL gLevelSelectWorldOneBG 	
gLevelSelectWorldOneBG:
	.INCBIN "assets/level_select/LevelSelectWorldOneBG.bin"

	.GLOBAL gLevelSelectWorldTwoBG 	
gLevelSelectWorldTwoBG:
	.INCBIN "assets/level_select/LevelSelectWorldTwoBG.bin"	
	
	.GLOBAL gLevelSelectWorldThreeBG 	
gLevelSelectWorldThreeBG:
	.INCBIN "assets/level_select/LevelSelectWorldThreeBG.bin"

	.GLOBAL gLevelSelectWorldFourBG 	
gLevelSelectWorldFourBG:
	.INCBIN "assets/level_select/LevelSelectWorldFourBG.bin"

	.GLOBAL gLevelSelectWorldFiveBG 	
gLevelSelectWorldFiveBG:
	.INCBIN "assets/level_select/LevelSelectWorldFiveBG.bin"

	.GLOBAL gLevelSelectWorldSixBG 	
gLevelSelectWorldSixBG:
	.INCBIN "assets/level_select/LevelSelectWorldSixBG.bin"
	
	.GLOBAL gLevelSelectDKBossBG
gLevelSelectDKBossBG:
	.INCBIN "assets/level_select/LevelSelectDKBossBG.bin"

	.GLOBAL gLevelSelectPlusData
gLevelSelectPlusData:
	.INCBIN "assets/level_select_plus/LevelSelectPlusData.bin"
	
	.GLOBAL gLevelSelectWorldOnePlusBG
gLevelSelectWorldOnePlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldOnePlusBG.bin"
	
	.GLOBAL gLevelSelectWorldTwoPlusBG
gLevelSelectWorldTwoPlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldTwoPlusBG.bin"
	
	.GLOBAL gLevelSelectWorldThreePlusBG
gLevelSelectWorldThreePlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldThreePlusBG.bin"
	
	.GLOBAL gLevelSelectWorldFourPlusBG
gLevelSelectWorldFourPlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldFourPlusBG.bin"
	
	.GLOBAL gLevelSelectWorldFivePlusBG
gLevelSelectWorldFivePlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldFivePlusBG.bin"
	
	.GLOBAL gLevelSelectWorldSixPlusBG
gLevelSelectWorldSixPlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldSixPlusBG.bin"

	.GLOBAL gLevelSelectDKPlusBossBG
gLevelSelectDKPlusBossBG:
	.INCBIN "assets/level_select_plus/LevelSelectDKPlusBossBG.bin"

	.GLOBAL gExpertLevelMenuData
gExpertLevelMenuData:
	.INCBIN "assets/menu/ExpertLevelMenuData.bin"

	.GLOBAL gEWorldMenuData1
gEWorldMenuData1:
	.INCBIN "assets/menu/EWorldMenuData1.bin"

	.GLOBAL gWorldOneBossClearData1
gWorldOneBossClearData1:
	.INCBIN "baserom.gba", 0x7E21D0, 0x7E4B48-0x7E21D0

	.GLOBAL gWorldOneBossClearData2
gWorldOneBossClearData2:
	.INCBIN "baserom.gba", 0x7E4B48, 0x7E88DC-0x7E4B48

	.GLOBAL gWorldTwoBossClearData1
gWorldTwoBossClearData1:
	.INCBIN "baserom.gba", 0x7E88DC, 0x7EB618-0x7E88DC

	.GLOBAL gWorldTwoBossClearData2
gWorldTwoBossClearData2:
	.INCBIN "baserom.gba", 0x7EB618, 0x7EF674-0x7EB618

	.GLOBAL gWorldThreeBossClearData1
gWorldThreeBossClearData1:
	.INCBIN "baserom.gba", 0x7EF674, 0x7F1714-0x7EF674

	.GLOBAL gWorldThreeBossClearData2
gWorldThreeBossClearData2:
	.INCBIN "baserom.gba", 0x7F1714, 0x7F52DC-0x7F1714

	.GLOBAL gWorldFourBossClearData1
gWorldFourBossClearData1:
	.INCBIN "baserom.gba", 0x7F52DC, 0x7F6CF0-0x7F52DC

	.GLOBAL gWorldFourBossClearData2
gWorldFourBossClearData2:
	.INCBIN "baserom.gba", 0x7F6CF0, 0x7FB054-0x7F6CF0

	.GLOBAL gWorldFiveBossClearData1
gWorldFiveBossClearData1:
	.INCBIN "baserom.gba", 0x7FB054, 0x7FD5AC-0x7FB054

	.GLOBAL gWorldFiveBossClearData2
gWorldFiveBossClearData2:
	.INCBIN "baserom.gba", 0x7FD5AC, 0x801ABC-0x7FD5AC

	.GLOBAL gWorldSixBossClearData1
gWorldSixBossClearData1:
	.INCBIN "baserom.gba", 0x801ABC, 0x8034AC-0x801ABC

	.GLOBAL gWorldSixBossClearData2
gWorldSixBossClearData2:
	.INCBIN "baserom.gba", 0x8034AC, 0x8076D4-0x8034AC

	.GLOBAL gWorldOnePlusBossClearData1
gWorldOnePlusBossClearData1:
	.INCBIN "baserom.gba", 0x8076D4, 0x8095E0-0x8076D4

	.GLOBAL gWorldOnePlusBossClearData2
gWorldOnePlusBossClearData2:
	.INCBIN "baserom.gba", 0x8095E0, 0x80D09C-0x8095E0

	.GLOBAL gWorldTwoPlusBossClearData1
gWorldTwoPlusBossClearData1:
	.INCBIN "baserom.gba", 0x80D09C, 0x80F0A4-0x80D09C

	.GLOBAL gWorldTwoPlusBossClearData2
gWorldTwoPlusBossClearData2:
	.INCBIN "baserom.gba", 0x80F0A4, 0x8133F0-0x80F0A4

	.GLOBAL gWorldThreePlusBossClearData1
gWorldThreePlusBossClearData1:
	.INCBIN "baserom.gba", 0x8133F0, 0x814E6C-0x8133F0

	.GLOBAL gWorldThreePlusBossClearData2
gWorldThreePlusBossClearData2:
	.INCBIN "baserom.gba", 0x814E6C, 0x8184BC-0x814E6C

	.GLOBAL gWorldFourPlusBossClearData1
gWorldFourPlusBossClearData1:
	.INCBIN "baserom.gba", 0x8184BC, 0x81A270-0x8184BC

	.GLOBAL gWorldFourPlusBossClearData2
gWorldFourPlusBossClearData2:
	.INCBIN "baserom.gba", 0x81A270, 0x81E02C-0x81A270

	.GLOBAL gWorldFivePlusBossClearData1
gWorldFivePlusBossClearData1:
	.INCBIN "baserom.gba", 0x81E02C, 0x81FE98-0x81E02C

	.GLOBAL gWorldFivePlusBossClearData2
gWorldFivePlusBossClearData2:
	.INCBIN "baserom.gba", 0x81FE98, 0x823B74-0x81FE98

	.GLOBAL gWorldSixPlusBossClearData1
gWorldSixPlusBossClearData1:
	.INCBIN "baserom.gba", 0x823B74, 0x825F04-0x823B74

	.GLOBAL gWorldSixPlusBossClearData2
gWorldSixPlusBossClearData2:
	.INCBIN "baserom.gba", 0x825F04, 0x829B18-0x825F04

	.GLOBAL gGameOverData
gGameOverData:
	.INCBIN "assets/menu/GameOverData.bin"

	.GLOBAL gWorldOneStartData
gWorldOneStartData:
	.INCBIN "baserom.gba", 0x82B4C4, 0x82EF0C-0x82B4C4

	.GLOBAL gWorldTwoStartData
gWorldTwoStartData:
	.INCBIN "baserom.gba", 0x82EF0C, 0x832F40-0x82EF0C
	
	.GLOBAL gWorldThreeStartData
gWorldThreeStartData:
	.INCBIN "baserom.gba", 0x832F40, 0x8369B4-0x832F40
	
	.GLOBAL gWorldFourStartData
gWorldFourStartData:
	.INCBIN "baserom.gba", 0x8369B4, 0x83A2FC-0x8369B4
	
	.GLOBAL gWorldFiveStartData
gWorldFiveStartData:
	.INCBIN "baserom.gba", 0x83A2FC, 0x83E274-0x83A2FC
	
	.GLOBAL gWorldSixStartData
gWorldSixStartData:
	.INCBIN "baserom.gba", 0x83E274, 0x841e1c-0x83E274

	.GLOBAL gWorldOnePlusStartData
gWorldOnePlusStartData:
	.INCBIN "baserom.gba", 0x841e1c, 0x84585c-0x841e1c

	.GLOBAL gWorldTwoPlusStartData
gWorldTwoPlusStartData:
	.INCBIN "baserom.gba", 0x84585c, 0x849a84-0x84585c
	
	.GLOBAL gWorldThreePlusStartData
gWorldThreePlusStartData:
	.INCBIN "baserom.gba", 0x849a84, 0x84dcec-0x849a84
	
	.GLOBAL gWorldFourPlusStartData
gWorldFourPlusStartData:
	.INCBIN "baserom.gba", 0x84dcec, 0x851c58-0x84dcec
	
	.GLOBAL gWorldFivePlusStartData
gWorldFivePlusStartData:
	.INCBIN "baserom.gba", 0x851c58, 0x855fe0-0x851c58
	
	.GLOBAL gWorldSixPlusStartData
gWorldSixPlusStartData:
	.INCBIN "baserom.gba", 0x855fe0, 0x85A088-0x855fe0

	.GLOBAL gLevelResultsData
gLevelResultsData:
	.INCBIN "baserom.gba", 0x85A088, 0x85C4C4-0x85A088

	.GLOBAL gBonusStopArrowData
gBonusStopArrowData:
	.INCBIN "assets/bonus/BonusStopArrowData.bin"

	.GLOBAL gBonusStopArrowBackgroundData
gBonusStopArrowBackgroundData:
	.INCBIN "assets/bonus/BonusStopArrowBackground.bin"

	.GLOBAL gBonusSwapBoxesData
gBonusSwapBoxesData:
	.INCBIN "assets/bonus/BonusSwapBoxesData.bin"

	.GLOBAL gBonusSwapBoxesBackgroundData
gBonusSwapBoxesBackgroundData:
	.INCBIN "assets/bonus/BonusSwapBoxesBackground.bin"

	.GLOBAL gNintendoSoftwareTechnologyLogo
gNintendoSoftwareTechnologyLogo:
	.INCBIN "assets/NSTLogo.bin"

	.GLOBAL gTitleScreenLeftData
gTitleScreenLeftData:
	.INCBIN "assets/title/TitleScreenLeft.bin"

	.GLOBAL gTitleScreenRightData
gTitleScreenRightData:
	.INCBIN "assets/title/TitleScreenRight.bin"

	.GLOBAL gTitleMarioDKEyes
gTitleMarioDKEyes:
	.INCBIN "assets/title/TitleMarioDKEyes.bin"

	.GLOBAL gUnusedOptionsMenuData
gUnusedOptionsMenuData:
	.INCBIN "assets/unused/EarlyOptionsMenu.bin"
	
	.GLOBAL gOptionsMenuData
gOptionsMenuData:
	.INCBIN "assets/menu/OptionsMenuData.bin"

	.GLOBAL gUnusedToadDKCutscene
gUnusedToadDKCutscene:
	.INCBIN "baserom.gba", 0x879AB4, 0x87D89C-0x879AB4

	.GLOBAL gUnusedToadMarioCutscene
gUnusedToadMarioCutsceneGFX:
	.INCBIN "baserom.gba", 0x87D89C, 0x880D90-0x87D89C

@ Intro Cutscene

	.GLOBAL gUnknown_08880D90
gUnknown_08880D90:
	.INCBIN "baserom.gba", 0x880D90, 0x8867F0-0x880D90
	
	.GLOBAL gUnknown_088867F0
gUnknown_088867F0:
	.INCBIN "baserom.gba", 0x8867F0, 0x88C3A0-0x8867F0
	
	.GLOBAL gUnknown_0888C3A0
gUnknown_0888C3A0:
	.INCBIN "baserom.gba", 0x88C3A0, 0x891CE4-0x88C3A0
	
	.GLOBAL gUnknown_08891CE4
gUnknown_08891CE4:
	.INCBIN "baserom.gba", 0x891CE4, 0x89782C-0x891CE4
	
	.GLOBAL gUnknown_0889782C
gUnknown_0889782C:
	.INCBIN "baserom.gba", 0x89782C, 0x89BF4C-0x89782C
	
	.GLOBAL gUnknown_0889BF4C
gUnknown_0889BF4C:
	.INCBIN "baserom.gba", 0x89BF4C, 0x8A19A8-0x89BF4C
	
	.GLOBAL gUnknown_088A19A8
gUnknown_088A19A8:
	.INCBIN "baserom.gba", 0x8A19A8, 0x8A6070-0x8A19A8
	
	.GLOBAL gUnknown_088A6070
gUnknown_088A6070:
	.INCBIN "baserom.gba", 0x8A6070, 0x8AA5D8-0x8A6070
	
	.GLOBAL gUnknown_088AA5D8
gUnknown_088AA5D8:
	.INCBIN "baserom.gba", 0x8AA5D8, 0x8AEA00-0x8AA5D8
	
	.GLOBAL gUnknown_088AEA00
gUnknown_088AEA00:
	.INCBIN "baserom.gba", 0x8AEA00, 0x8B3EB0-0x8AEA00
	
	.GLOBAL gUnknown_088B3EB0
gUnknown_088B3EB0:
	.INCBIN "baserom.gba", 0x8B3EB0, 0x8B7C4C-0x8B3EB0
	
	.GLOBAL gUnknown_088B7C4C
gUnknown_088B7C4C:
	.INCBIN "baserom.gba", 0x8B7C4C, 0x8BC7FC-0x8B7C4C
	
	.GLOBAL gUnknown_088BC7FC
gUnknown_088BC7FC:
	.INCBIN "baserom.gba", 0x8BC7FC, 0x8C09AC-0x8BC7FC
	
	.GLOBAL gUnknown_088C09AC
gUnknown_088C09AC:
	.INCBIN "baserom.gba", 0x8C09AC, 0x8C53EC-0x8C09AC
	
	.GLOBAL gUnknown_088C53EC
gUnknown_088C53EC:
	.INCBIN "baserom.gba", 0x8C53EC, 0x8C962C-0x8C53EC
	
	.GLOBAL gUnknown_088C962C
gUnknown_088C962C:
	.INCBIN "baserom.gba", 0x8C962C, 0x8CE9D4-0x8C962C
	
	.GLOBAL gUnknown_088CE9D4
gUnknown_088CE9D4:
	.INCBIN "baserom.gba", 0x8CE9D4, 0x8D3034-0x8CE9D4
	
	.GLOBAL gUnknown_088D3034
gUnknown_088D3034:
	.INCBIN "baserom.gba", 0x8D3034, 0x8DA250-0x8D3034
	
	.GLOBAL gUnknown_088DA250
gUnknown_088DA250:
	.INCBIN "baserom.gba", 0x8DA250, 0x8DCB4C-0x8DA250
	
	.GLOBAL gUnknown_088DCB4C
gUnknown_088DCB4C:
	.INCBIN "baserom.gba", 0x8DCB4C, 0x8DF5A8-0x8DCB4C
	
@ New Game Cutscene

	.GLOBAL gUnknown_08DF5A8
gUnknown_08DF5A8:
	.INCBIN "baserom.gba", 0x8DF5A8, 0x8E44F4-0x8DF5A8

	.GLOBAL gUnknown_08E44F4
gUnknown_08E44F4:
	.INCBIN "baserom.gba", 0x8E44F4, 0x8E95F8-0x8E44F4

	.GLOBAL gUnknown_08E95F8
gUnknown_088E95F8:
	.INCBIN "baserom.gba", 0x8E95F8, 0x8EEC30-0x8E95F8

	.GLOBAL gUnknown_08EEC30
gUnknown_08EEC30:
	.INCBIN "baserom.gba", 0x8EEC30, 0x8F45C8-0x8EEC30

	.GLOBAL gUnknown_08F45C8
gUnknown_08F45C8:
	.INCBIN "baserom.gba", 0x8F45C8, 0x8F8B8C-0x8F45C8

	.GLOBAL gUnknown_08F8B8C
gUnknown_08F8B8C:
	.INCBIN "baserom.gba", 0x8F8B8C, 0x8FCBE4-0x8F8B8C

	.GLOBAL gUnknown_08FCBE4
gUnknown_08FCBE4:
	.INCBIN "baserom.gba", 0x8FCBE4, 0x901234-0x8FCBE4

	.GLOBAL gUnknown_0901234
gUnknown_0901234:
	.INCBIN "baserom.gba", 0x901234, 0x9052C8-0x901234

	.GLOBAL gUnknown_09052C8
gUnknown_09052C8:
	.INCBIN "baserom.gba", 0x9052C8, 0x908A30-0x9052C8
	
@ Pre DK-Boss 1
	
	.GLOBAL gUnknown_08908A30
gUnknown_08908A30:
	.INCBIN "baserom.gba", 0x908A30, 0x90D474-0x908A30
	
	.GLOBAL gUnknown_0890D474
gUnknown_0890D474:
	.INCBIN "baserom.gba", 0x90D474, 0x912138-0x90D474
	
	.GLOBAL gUnknown_08912138
gUnknown_08912138:
	.INCBIN "baserom.gba", 0x912138, 0x91720C-0x912138
	
	.GLOBAL gUnknown_0891720C
gUnknown_0891720C:
	.INCBIN "baserom.gba", 0x91720C, 0x91C114-0x91720C
	
	.GLOBAL gUnknown_0891C114
gUnknown_0891C114:
	.INCBIN "baserom.gba", 0x91C114, 0x920C64-0x91C114
	
	.GLOBAL gUnknown_08920C64
gUnknown_08920C64:
	.INCBIN "baserom.gba", 0x920C64, 0x925B24-0x920C64
	
	.GLOBAL gUnknown_08925B24
gUnknown_08925B24:
	.INCBIN "baserom.gba", 0x925B24, 0x92B040-0x925B24
	
	.GLOBAL gUnknown_0892B040
gUnknown_0892B040:
	.INCBIN "baserom.gba", 0x92B040, 0x93064C-0x92B040
	
	.GLOBAL gUnknown_0893064C
gUnknown_0893064C:
	.INCBIN "baserom.gba", 0x93064C, 0x9355B8-0x93064C
	
	.GLOBAL gUnknown_089355B8
gUnknown_089355B8:
	.INCBIN "baserom.gba", 0x9355B8, 0x93A2C8-0x9355B8
	
	.GLOBAL gUnknown_0893A2C8
gUnknown_0893A2C8:
	.INCBIN "baserom.gba", 0x93A2C8, 0x93E960-0x93A2C8
	
	.GLOBAL gUnknown_0893E960
gUnknown_0893E960:
	.INCBIN "baserom.gba", 0x93E960, 0x942D4C-0x93E960
	
	.GLOBAL gUnknown_08942D4C
gUnknown_08942D4C:
	.INCBIN "baserom.gba", 0x942D4C, 0x947130-0x942D4C
	
	.GLOBAL gUnknown_08947130
gUnknown_08947130:
	.INCBIN "baserom.gba", 0x947130, 0x94B710-0x947130
	
@ Post Credits 1
	
	.GLOBAL gUnknown_0894B710
gUnknown_0894B710:
	.INCBIN "baserom.gba", 0x94B710, 0x94EB78-0x94B710
	
	.GLOBAL gUnknown_0894EB78
gUnknown_0894EB78:
	.INCBIN "baserom.gba", 0x94EB78, 0x950464-0x94EB78
	
	.GLOBAL gUnknown_08950464
gUnknown_08950464:
	.INCBIN "baserom.gba", 0x950464, 0x9526B0-0x950464
	
	.GLOBAL gUnknown_089526B0
gUnknown_089526B0:
	.INCBIN "baserom.gba", 0x9526B0, 0x9548DC-0x9526B0
	
	.GLOBAL gUnknown_089548DC
gUnknown_089548DC:
	.INCBIN "baserom.gba", 0x9548DC, 0x959B10-0x9548DC
	
	.GLOBAL gUnknown_08959B10
gUnknown_08959B10:
	.INCBIN "baserom.gba", 0x959B10, 0x95F0B0-0x959B10
	
	.GLOBAL gUnknown_0895F0B0
gUnknown_0895F0B0:
	.INCBIN "baserom.gba", 0x95F0B0, 0x964974-0x95F0B0
	
	.GLOBAL gUnknown_08964974
gUnknown_08964974:
	.INCBIN "baserom.gba", 0x964974, 0x969AB4-0x964974
	
	.GLOBAL gUnknown_08969AB4
gUnknown_08969AB4:
	.INCBIN "baserom.gba", 0x969AB4, 0x96E724-0x969AB4
	
	.GLOBAL gUnknown_0896E724
gUnknown_0896E724:
	.INCBIN "baserom.gba", 0x96E724, 0x97423C-0x96E724
	
	.GLOBAL gUnknown_0897423C
gUnknown_0897423C:
	.INCBIN "baserom.gba", 0x97423C, 0x979C5C-0x97423C
	
	.GLOBAL gUnknown_08979C5C
gUnknown_08979C5C:
	.INCBIN "baserom.gba", 0x979C5C, 0x97E3B8-0x979C5C
	
@ Movie 6
	
	.GLOBAL gUnknown_0897E3B8
gUnknown_0897E3B8:
	.INCBIN "baserom.gba", 0x97E3B8, 0x982F18-0x97E3B8
	
	.GLOBAL gUnknown_08982F18
gUnknown_08982F18:
	.INCBIN "baserom.gba", 0x982F18, 0x987BAC-0x982F18
	
	.GLOBAL gUnknown_08987BAC
gUnknown_08987BAC:
	.INCBIN "baserom.gba", 0x987BAC, 0x98CA8C-0x987BAC
	
	.GLOBAL gUnknown_0898CA8C
gUnknown_0898CA8C:
	.INCBIN "baserom.gba", 0x98CA8C, 0x991B54-0x98CA8C
	
	.GLOBAL gUnknown_08991B54
gUnknown_08991B54:
	.INCBIN "baserom.gba", 0x991B54, 0x996D1C-0x991B54
	
	.GLOBAL gUnknown_08996D1C
gUnknown_08996D1C:
	.INCBIN "baserom.gba", 0x996D1C, 0x99BDE0-0x996D1C
	
	.GLOBAL gUnknown_0899BDE0
gUnknown_0899BDE0:
	.INCBIN "baserom.gba", 0x99BDE0, 0x9A041C-0x99BDE0
	
@ Pre Credits 2
	
	.GLOBAL gUnknown_089A041C
gUnknown_089A041C:
	.INCBIN "baserom.gba", 0x9A041C, 0x9A4F0C-0x9A041C
	
	.GLOBAL gUnknown_089A4F0C
gUnknown_089A4F0C:
	.INCBIN "baserom.gba", 0x9A4F0C, 0x9A9FB4-0x9A4F0C
	
	.GLOBAL gUnknown_089A9FB4
gUnknown_089A9FB4:
	.INCBIN "baserom.gba", 0x9A9FB4, 0x9ADFE8-0x9A9FB4
	
	.GLOBAL gUnknown_089ADFE8
gUnknown_089ADFE8:
	.INCBIN "baserom.gba", 0x9ADFE8, 0x9B2CD4-0x9ADFE8
	
	.GLOBAL gUnknown_089B2CD4
gUnknown_089B2CD4:
	.INCBIN "baserom.gba", 0x9B2CD4, 0x9B7674-0x9B2CD4
	
	.GLOBAL gUnknown_089B7674
gUnknown_089B7674:
	.INCBIN "baserom.gba", 0x9B7674, 0x9BB908-0x9B7674
	
	.GLOBAL gUnknown_089BB908
gUnknown_089BB908:
	.INCBIN "baserom.gba", 0x9BB908, 0x9C0348-0x9BB908
	
	.GLOBAL gUnknown_089C0348
gUnknown_089C0348:
	.INCBIN "baserom.gba", 0x9C0348, 0x9C4B54-0x9C0348
	
	.GLOBAL gUnknown_089C4B54
gUnknown_089C4B54:
	.INCBIN "baserom.gba", 0x9C4B54, 0x9C51F4-0x9C4B54
	
	.GLOBAL gUnknown_089C51F4
gUnknown_089C51F4:
	.INCBIN "baserom.gba", 0x9C51F4, 0x9C605C-0x9C51F4
	
@ Credits 2
	
	.GLOBAL gCredits2ProducerExecAdvisor
gCredits2ProducerExecAdvisor:
	.INCBIN "baserom.gba", 0x9C605C, 0x9C9258-0x9C605C
	
	.GLOBAL gCredits2GameDirector
gCredits2GameDirector:
	.INCBIN "baserom.gba", 0x9C9258, 0x9CB340-0x9C9258
	
	.GLOBAL gCredits2GameDesignSupport
gCredits2GameDesignSupport:
	.INCBIN "baserom.gba", 0x9CB340, 0x9CDCC0-0x9CB340
	
	.GLOBAL gCredits2EngineeringDirector
gCredits2EngineeringDirector:
	.INCBIN "baserom.gba", 0x9CDCC0, 0x9D1128-0x9CDCC0
	
	.GLOBAL gCredits2Engineers
gCredits2Engineers:
	.INCBIN "baserom.gba", 0x9D1128, 0x9D44B0-0x9D1128
	
	.GLOBAL gCredits2EngineeringSpecialistManager
gCredits2EngineeringSpecialistManager:
	.INCBIN "baserom.gba", 0x9D44B0, 0x9D7414-0x9D44B0
	
	.GLOBAL gCredits2ArtDirector
gCredits2ArtDirector:
	.INCBIN "baserom.gba", 0x9D7414, 0x9D9780-0x9D7414
	
	.GLOBAL gCredits2ArtSupport
gCredits2ArtSupport:
	.INCBIN "baserom.gba", 0x9D9780, 0x9DC310-0x9D9780
	
	.GLOBAL gCredits2AudioDirectorSupport
gCredits2AudioDirectorSupport:
	.INCBIN "baserom.gba", 0x9DC310, 0x9DF098-0x9DC310
	
	.GLOBAL gCredits2NetworkOfficeManagerAssistant
gCredits2NetworkOfficeManagerAssistant:
	.INCBIN "baserom.gba", 0x9DF098, 0x9E2730-0x9DF098
	
	.GLOBAL gCredits2GameDesignAssociate
gCredits2GameDesignAssociate:
	.INCBIN "baserom.gba", 0x9E2730, 0x9E45A0-0x9E2730
	
	.GLOBAL gCredits2NintendoCoLtd
gCredits2NintendoCoLtd:
	.INCBIN "baserom.gba", 0x9E45A0, 0x9E4F74-0x9E45A0
	
	.GLOBAL gCredits2ExecutiveProducer
gCredits2ExecutiveProducer:
	.INCBIN "baserom.gba", 0x9E4F74, 0x9E7DB4-0x9E4F74
	
	.GLOBAL gCredits2AssociateProducers
gCredits2AssociateProducers:
	.INCBIN "baserom.gba", 0x9E7DB4, 0x9EA140-0x9E7DB4
	
	.GLOBAL gCredits2ArtSupervisor
gCredits2ArtSupervisor:
	.INCBIN "baserom.gba", 0x9EA140, 0x9EC068-0x9EA140
	
	.GLOBAL gCredits2Advisors
gCredits2Advisors:
	.INCBIN "baserom.gba", 0x9EC068, 0x9EEDC4-0x9EC068
	
	.GLOBAL gCredits2NOAInc
gCredits2NOA:
	.INCBIN "baserom.gba", 0x9EEDC4, 0x9EF814-0x9EEDC4
	
	.GLOBAL gCredits2ProductCoordinators
gCredits2ProductCoordinators:
	.INCBIN "baserom.gba", 0x9EF814, 0x9F20A8-0x9EF814
	
	.GLOBAL gCredits2PackagingManualArt
gCredits2PackagingManualArt:
	.INCBIN "baserom.gba", 0x9F20A8, 0x9F4F24-0x9F20A8
	
	.GLOBAL gCredits2NOAProductTesting
gCredits2NOAProductTesting:
	.INCBIN "baserom.gba", 0x9F4F24, 0x9F89F0-0x9F4F24
	
	.GLOBAL gCredits2SpecialThanks1
gCredits2SpecialThanks1:
	.INCBIN "baserom.gba", 0x9F89F0, 0x9FB964-0x9F89F0
	
	.GLOBAL gCredits2SpecialThanks2
gCredits2SpecialThanks2:
	.INCBIN "baserom.gba", 0x9FB964, 0x9FEBEC-0x9FB964
	
	.GLOBAL gCredits2SpecialThanks3
gCredits2SpecialThanks3:
	.INCBIN "baserom.gba", 0x9FEBEC, 0xA0287C-0x9FEBEC
	
	.GLOBAL gCredits2VoiceOfMario
gCredits2VoiceOfMario:
	.INCBIN "baserom.gba", 0xA0287C, 0xA056A4-0xA0287C
	
	.GLOBAL gCredits2ThanksForPlaying
gCredits2ThanksForPlaying:
	.INCBIN "baserom.gba", 0xA056A4, 0xA0C18C-0xA056A4
	
	.GLOBAL gCredits2EndAllRightsReserved
gCredits2EndAllRightsReserved:
	.INCBIN "baserom.gba", 0xA0C18C, 0xA0D0B4-0xA0C18C
	
@ Credits 1
	
	.GLOBAL gCreditsNSTCorp
gCreditsNSTCorp:
	.INCBIN "baserom.gba", 0xA0D0B4, 0xA0DD50-0xA0D0B4
	
	.GLOBAL gCreditsProducerExecAdvisor
gCreditsProducerExecAdvisor:
	.INCBIN "baserom.gba", 0xA0DD50, 0xA0ED38-0xA0DD50
	
	.GLOBAL gCreditsGameDirector
gCreditsGameDirector:
	.INCBIN "baserom.gba", 0xA0ED38, 0xA0FA50-0xA0ED38
	
	.GLOBAL gCreditsGameDesignSupport
gCreditsGameDesignSupport:
	.INCBIN "baserom.gba", 0xA0FA50, 0xA10B78-0xA0FA50
	
	.GLOBAL gCreditsEngineeringDirector
gCreditsEngineeringDirector:
	.INCBIN "baserom.gba", 0xA10B78, 0xA118C0-0xA10B78
	
	.GLOBAL gCreditsEngineers
gCreditsEngineers:
	.INCBIN "baserom.gba", 0xA118C0, 0xA125F0-0xA118C0

	.GLOBAL gCreditsEngineeringSpecialistManager
gCreditsEngineeringSpecialistManager:
	.INCBIN "baserom.gba", 0xA125F0, 0xA13688-0xA125F0

	.GLOBAL gCreditsArtDirector
gCreditsArtDirector:
	.INCBIN "baserom.gba", 0xA13688, 0xA14340-0xA13688

	.GLOBAL gCreditsArtSupport
gCreditsArtSupport:
	.INCBIN "baserom.gba", 0xA14340, 0xA15554-0xA14340

	.GLOBAL gCreditsAudioDirectorSupport
gCreditsAudioDirectorSupport:
	.INCBIN "baserom.gba", 0xA15554, 0xA166E8-0xA15554

	.GLOBAL gCreditsNetworkOfficeManagerAssistant
gCreditsNetworkOfficeManagerAssistant:
	.INCBIN "baserom.gba", 0xA166E8, 0xA179FC-0xA166E8

	.GLOBAL gCreditsGameDesignAssociate
gCreditsGameDesignAssociate:
	.INCBIN "baserom.gba", 0xA179FC, 0xA187B0-0xA179FC

	.GLOBAL gCreditsNintendoCoLtd
gCreditsNintendoCoLtd:
	.INCBIN "baserom.gba", 0xA187B0, 0xA190EC-0xA187B0

	.GLOBAL gCreditsExecutiveProducer
gCreditsExecutiveProducer:
	.INCBIN "baserom.gba", 0xA190EC, 0xA1A0A0-0xA190EC

	.GLOBAL gCreditsAssociateProducers
gCreditsAssociateProducers:
	.INCBIN "baserom.gba", 0xA1A0A0, 0xA1AFF4-0xA1A0A0

	.GLOBAL gCreditsArtSupervisor
gCreditsArtSupervisor:
	.INCBIN "baserom.gba", 0xA1AFF4, 0xA1BC60-0xA1AFF4

	.GLOBAL gCreditsAdvisors
gCreditsAdvisors:
	.INCBIN "baserom.gba", 0xA1BC60, 0xA1CA4C-0xA1BC60

	.GLOBAL gCreditsNOAInc
gCreditsNOA:
	.INCBIN "baserom.gba", 0xA1CA4C, 0xA1D3C8-0xA1CA4C

	.GLOBAL gCreditsProductCoordinators
gCreditsProductCoordinators:
	.INCBIN "baserom.gba", 0xA1D3C8, 0xA1E78C-0xA1D3C8

	.GLOBAL gCreditsPackagingManualArt
gCreditsPackagingManualArt:
	.INCBIN "baserom.gba", 0xA1E78C, 0xA1F8CC-0xA1E78C

	.GLOBAL gCreditsNOAProductTesting
gCreditsNOAProductTesting:
	.INCBIN "baserom.gba", 0xA1F8CC, 0xA21124-0xA1F8CC

	.GLOBAL gCreditsSpecialThanks1
gCreditsSpecialThanks1:
	.INCBIN "baserom.gba", 0xA21124, 0xA22BCC-0xA21124

	.GLOBAL gCreditsSpecialThanks2
gCreditsSpecialThanks2:
	.INCBIN "baserom.gba", 0xA22BCC, 0xA24620-0xA22BCC

	.GLOBAL gCreditsSpecialThanks3
gCreditsSpecialThanks3:
	.INCBIN "baserom.gba", 0xA24620, 0xA2603C-0xA24620

	.GLOBAL gCreditsVoiceOfMario
gCreditsVoiceOfMario:
	.INCBIN "baserom.gba", 0xA2603C, 0xA26F88-0xA2603C

	.GLOBAL gCreditsThanksForPlaying
gCreditsThanksForPlaying:
	.INCBIN "baserom.gba", 0xA26F88, 0xA27880-0xA26F88

	.GLOBAL gCreditsAllRightsReserved
gCreditsAllRightsReserved:
	.INCBIN "baserom.gba", 0xA27880, 0xA28710-0xA27880
	
@ Unused Plus Worlds Unlocked Screen	

	.GLOBAL gUnusedPlusWorldsUnlocked
gUnusedPlusWorldsUnlocked:
	.INCBIN "assets/cutscene/UnusedPlusWorldsUnlocked.bin"

@ World Data

	.GLOBAL gWorldOneData
gWorldOneData:
	.INCBIN "assets/level/data/WorldOneData.bin"

	.GLOBAL gWorldTwoData
gWorldTwoData:
	.INCBIN "assets/level/data/WorldTwoData.bin"

	.GLOBAL gWorldThreeData
gWorldThreeData:
	.INCBIN "assets/level/data/WorldThreeData.bin"

	.GLOBAL gWorldFourData
gWorldFourData:
	.INCBIN "assets/level/data/WorldFourData.bin"

	.GLOBAL gWorldFiveData
gWorldFiveData:
	.INCBIN "assets/level/data/WorldFiveData.bin"

	.GLOBAL gWorldSixData
gWorldSixData:
	.INCBIN "assets/level/data/WorldSixData.bin"

	.GLOBAL gBossLevelData
gBossLevelData:
	.INCBIN "assets/level/data/BossLevelData.bin"
	
@ Level Backgrounds

	.GLOBAL gWorldOneHorizontalBG
gWorldOneHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_horizontal.bin"

	.GLOBAL gWorldOneVerticalBG
gWorldOneVerticalBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_vertical.bin"

	.GLOBAL gWorldOneMiniMarioBG
gWorldOneMiniMarioBG:
	.INCBIN  "assets/level/backgrounds/world_one/world_one_mini_mario.bin"

	.GLOBAL gWorldOneBossBG
gWorldOneBossBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_boss.bin"

	.GLOBAL gWorldTwoHorizontalBG
gWorldTwoHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_horizontal.bin"

	.GLOBAL gWorldTwoVerticalBG
gWorldTwoVerticalBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_vertical.bin"

	.GLOBAL gWorldTwoMiniMarioBG
gWorldTwoMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_mini_mario.bin"

	.GLOBAL gWorldTwoBossBG
gWorldTwoBossBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_boss.bin"

	.GLOBAL gWorldThreeHorizontalBG
gWorldThreeHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_horizontal.bin"

	.GLOBAL gWorldThreeVerticalBG
gWorldThreeVerticalBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_vertical.bin"

	.GLOBAL gWorldThreeMiniMarioBG
gWorldThreeMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_mini_mario.bin"

	.GLOBAL gWorldThreeBossBG
gWorldThreeBossBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_boss.bin"

	.GLOBAL gWorldFourHorizontalBG
gWorldFourHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_horizontal.bin"

	.GLOBAL gWorldFourVerticalBG
gWorldFourVerticalBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_vertical.bin"

	.GLOBAL gWorldFourMiniMarioBG
gWorldFourMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_mini_mario.bin"

	.GLOBAL gWorldFourBossBG
gWorldFourBossBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_boss.bin"

	.GLOBAL gWorldFiveHorizontalBG
gWorldFiveHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_horizontal.bin"

	.GLOBAL gWorldFiveVerticalBG
gWorldFiveVerticalBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_vertical.bin"

	.GLOBAL gWorldFiveMiniMarioBG
gWorldFiveMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_mini_mario.bin"

	.GLOBAL gWorldFiveBossBG
gWorldFiveBossBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_boss.bin"

	.GLOBAL gWorldSixHorizontalBG
gWorldSixHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_horizontal.bin"

	.GLOBAL gWorldSixVerticalBG
gWorldSixVerticalBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_vertical.bin"

	.GLOBAL gWorldSixMiniMarioBG
gWorldSixMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_mini_mario.bin"

	.GLOBAL gWorldSixBossBG
gWorldSixBossBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_boss.bin"

	.GLOBAL gDKBossBG
gDKBossBG:
	.INCBIN "assets/level/backgrounds/boss/dk_boss.bin"

	.GLOBAL gDKBossPlusBG
gDKBossPlusBG:
	.INCBIN "assets/level/backgrounds/boss/dk_boss_plus.bin"

	.GLOBAL gWorldOnePlusHorizontalBG
gWorldOnePlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_plus_horizontal.bin"

	.GLOBAL gWorldOnePlusVerticalBG
gWorldOnePlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_plus_vertical.bin"

	.GLOBAL gWorldTwoPlusHorizontalBG
gWorldTwoPlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_plus_horizontal.bin"

	.GLOBAL gWorldTwoPlusVerticalBG
gWorldTwoPlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_plus_vertical.bin"

	.GLOBAL gWorldThreePlusHorizontalBG
gWorldThreePlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_plus_horizontal.bin"

	.GLOBAL gWorldThreePlusVerticalBG
gWorldThreePlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_plus_vertical.bin"

	.GLOBAL gWorldThreePlusBossBG
gWorldThreePlusBossBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_plus_boss.bin"

	.GLOBAL gWorldFourPlusHorizontalBG
gWorldFourPlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_plus_horizontal.bin"

	.GLOBAL gWorldFourPlusVerticalBG
gWorldFourPlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_plus_vertical.bin"

	.GLOBAL gWorldFivePlusHorizontalBG
gWorldFivePlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_plus_horizontal.bin"

	.GLOBAL gWorldFivePlusVerticalBG
gWorldFivePlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_plus_vertical.bin"

	.GLOBAL gWorldSixPlusHorizontalBG
gWorldSixPlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_plus_horizontal.bin"

	.GLOBAL gWorldSixPlusVerticalBG
gWorldSixPlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_plus_vertical.bin"
	
@ Related to level intro camera panning/side of level the player enters from

	.GLOBAL gUnknown_08AF43E4
gUnknown_08AF43E4:
	.INCBIN "assets/level/gUnknown_08AF43E4.bin"
	
@ Levels

	.GLOBAL gLevel11A
gLevel11A:
	.INCBIN "assets/level/level_data/world_one/1_1A.bin"
	
	.GLOBAL gLevel11B
gLevel11B:
	.INCBIN "assets/level/level_data/world_one/1_1B.bin"
	
	.GLOBAL gLevel11Tutorial
gLevel11Tutorial:
	.INCBIN "assets/level/level_data/world_one/1_1_tutorial.bin"
	
	
	.GLOBAL gLevel12A
gLevel12A:
	.INCBIN "assets/level/level_data/world_one/1_2A.bin"
	
	.GLOBAL gLevel12B
gLevel12B:
	.INCBIN "assets/level/level_data/world_one/1_2B.bin"
	
	.GLOBAL gLevel12Tutorial
gLevel12Tutorial:
	.INCBIN "assets/level/level_data/world_one/1_2_tutorial.bin"
	

	.GLOBAL gLevel13A
gLevel13A:
	.INCBIN "assets/level/level_data/world_one/1_3A.bin"
	
	.GLOBAL gLevel13B
gLevel13B:
	.INCBIN "assets/level/level_data/world_one/1_3B.bin"
	
	.GLOBAL gLevel13Tutorial
gLevel13Tutorial:
	.INCBIN "assets/level/level_data/world_one/1_3_tutorial.bin"
	
	
	.GLOBAL gLevel14A
gLevel14A:
	.INCBIN "assets/level/level_data/world_one/1_4A.bin"
	
	.GLOBAL gLevel14B
gLevel14B:
	.INCBIN "assets/level/level_data/world_one/1_4B.bin"
	
	.GLOBAL gLevel14Tutorial
gLevel14Tutorial:
	.INCBIN "assets/level/level_data/world_one/1_4_tutorial.bin"
	
	
	.GLOBAL gLevel15A
gLevel15A:
	.INCBIN "assets/level/level_data/world_one/1_5A.bin"
	
	.GLOBAL gLevel15B
gLevel15B:
	.INCBIN "assets/level/level_data/world_one/1_5B.bin"
	
	.GLOBAL gLevel15Tutorial
gLevel15Tutorial:
	.INCBIN "assets/level/level_data/world_one/1_5_tutorial.bin"
	
	
	.GLOBAL gLevel16A
gLevel16A:
	.INCBIN "assets/level/level_data/world_one/1_6A.bin"
	
	.GLOBAL gLevel16B
gLevel16B:
	.INCBIN "assets/level/level_data/world_one/1_6B.bin"

	.GLOBAL gLevel16Tutorial
gLevel16Tutorial:
	.INCBIN "assets/level/level_data/world_one/1_6_tutorial.bin"


	.GLOBAL gLevel1MM
gLevel1MM:
	.INCBIN "assets/level/level_data/world_one/1_mm.bin"
	
	.GLOBAL gLevel1DK
gLevel1DK:
	.INCBIN "assets/level/level_data/world_one/1_DK.bin"

	.GLOBAL gLevel1MMTutorial
gLevel1MMTutorial:
	.INCBIN "assets/level/level_data/world_one/1_mm_tutorial.bin"
	
@ World 2
	
	.GLOBAL gLevel21A
gLevel21A:
	.INCBIN "assets/level/level_data/world_two/2_1A.bin"

	.GLOBAL gLevel21B
gLevel21B:
	.INCBIN "assets/level/level_data/world_two/2_1B.bin"
	
	.GLOBAL gLevel21Tutorial
gLevel21Tutorial:
	.INCBIN "assets/level/level_data/world_two/2_1_tutorial.bin"


	.GLOBAL gLevel22A
gLevel22A:
	.INCBIN "assets/level/level_data/world_two/2_2A.bin"
	
	.GLOBAL gLevel22B
gLevel22B:
	.INCBIN "assets/level/level_data/world_two/2_2B.bin"

	.GLOBAL gLevel22Tutorial
gLevel22Tutorial:
	.INCBIN "assets/level/level_data/world_two/2_2_tutorial.bin"
	

	.GLOBAL gLevel23A
gLevel23A:
	.INCBIN "assets/level/level_data/world_two/2_3A.bin"
	
	.GLOBAL gLevel23B
gLevel23B:
	.INCBIN "assets/level/level_data/world_two/2_3B.bin"

	.GLOBAL gLevel23Tutorial
gLevel23Tutorial:
	.INCBIN "assets/level/level_data/world_two/2_3_tutorial.bin"
	
	
	.GLOBAL gLevel24A
gLevel24A:
	.INCBIN "assets/level/level_data/world_two/2_4A.bin"
	
	.GLOBAL gLevel24B
gLevel24B:
	.INCBIN "assets/level/level_data/world_two/2_4B.bin"

	.GLOBAL gLevel24Tutorial
gLevel24Tutorial:
	.INCBIN "assets/level/level_data/world_two/2_4_tutorial.bin"
	
	
	.GLOBAL gLevel25A
gLevel25A:
	.INCBIN "assets/level/level_data/world_two/2_5A.bin"
	
	.GLOBAL gLevel25B
gLevel25B:
	.INCBIN "assets/level/level_data/world_two/2_5B.bin"

	.GLOBAL gLevel25Tutorial
gLevel25Tutorial:
	.INCBIN "assets/level/level_data/world_two/2_5_tutorial.bin"


	.GLOBAL gLevel26A
gLevel26A:
	.INCBIN "assets/level/level_data/world_two/2_6A.bin"
	
	.GLOBAL gLevel26B
gLevel26B:
	.INCBIN "assets/level/level_data/world_two/2_6B.bin"

	.GLOBAL gLevel26Tutorial
gLevel26Tutorial:
	.INCBIN "assets/level/level_data/world_two/2_6_tutorial.bin"
	
	
	.GLOBAL gLevel2MM
gLevel2MM:
	.INCBIN "assets/level/level_data/world_two/2_mm.bin"
	
	.GLOBAL gLevel2DK
gLevel2DK:
	.INCBIN "assets/level/level_data/world_two/2_DK.bin"

	.GLOBAL gLevel2MMTutorial
gLevel2MMTutorial:
	.INCBIN "assets/level/level_data/world_two/2_mm_tutorial.bin"
	
@ World 3

	.GLOBAL gLevel31A
gLevel31A:
	.INCBIN "assets/level/level_data/world_three/3_1A.bin"
	
	.GLOBAL gLevel31B
gLevel31B:
	.INCBIN "assets/level/level_data/world_three/3_1B.bin"

	.GLOBAL gLevel31Tutorial
gLevel31Tutorial:
	.INCBIN "assets/level/level_data/world_three/3_1_tutorial.bin"
	

	.GLOBAL gLevel32A
gLevel32A:
	.INCBIN "assets/level/level_data/world_three/3_2A.bin"
	
	.GLOBAL gLevel32B
gLevel32B:
	.INCBIN "assets/level/level_data/world_three/3_2B.bin"

	.GLOBAL gLevel32Tutorial
gLevel32Tutorial:
	.INCBIN "assets/level/level_data/world_three/3_2_tutorial.bin"
	

	.GLOBAL gLevel33A
gLevel33A:
	.INCBIN "assets/level/level_data/world_three/3_3A.bin"
	
	.GLOBAL gLevel33B
gLevel33B:
	.INCBIN "assets/level/level_data/world_three/3_3B.bin"

	.GLOBAL gLevel33Tutorial
gLevel33Tutorial:
	.INCBIN "assets/level/level_data/world_three/3_3_tutorial.bin"
	
	
	.GLOBAL gLevel34A
gLevel34A:
	.INCBIN "assets/level/level_data/world_three/3_4A.bin"
	
	.GLOBAL gLevel34B
gLevel34B:
	.INCBIN "assets/level/level_data/world_three/3_4B.bin"

	.GLOBAL gLevel34Tutorial
gLevel34Tutorial:
	.INCBIN "assets/level/level_data/world_three/3_4_tutorial.bin"

	
	.GLOBAL gLevel35A
gLevel35A:
	.INCBIN "assets/level/level_data/world_three/3_5A.bin"
	
	.GLOBAL gLevel35B
gLevel35B:
	.INCBIN "assets/level/level_data/world_three/3_5B.bin"

	.GLOBAL gLevel35Tutorial
gLevel35Tutorial:
	.INCBIN "assets/level/level_data/world_three/3_5_tutorial.bin"
	

	.GLOBAL gLevel36A
gLevel36A:
	.INCBIN "assets/level/level_data/world_three/3_6A.bin"
	
	.GLOBAL gLevel36B
gLevel36B:
	.INCBIN "assets/level/level_data/world_three/3_6B.bin"

	.GLOBAL gLevel36Tutorial
gLevel36Tutorial:
	.INCBIN "assets/level/level_data/world_three/3_6_tutorial.bin"


	.GLOBAL gLevel3MM
gLevel3MM:
	.INCBIN "assets/level/level_data/world_three/3_mm.bin"
	
	.GLOBAL gLevel3DK
gLevel3DK:
	.INCBIN "assets/level/level_data/world_three/3_DK.bin"

	.GLOBAL gLevel3MMTutorial
gLevel3MMTutorial:
	.INCBIN "assets/level/level_data/world_three/3_mm_tutorial.bin"
	
@ World 4	

	.GLOBAL gLevel41A
gLevel41A:
	.INCBIN "assets/level/level_data/world_four/4_1A.bin"
	
	.GLOBAL gLevel41B
gLevel41B:
	.INCBIN "assets/level/level_data/world_four/4_1B.bin"

	.GLOBAL gLevel41Tutorial
gLevel41Tutorial:
	.INCBIN "assets/level/level_data/world_four/4_1_tutorial.bin"
	

	.GLOBAL gLevel42A
gLevel42A:
	.INCBIN "assets/level/level_data/world_four/4_2A.bin"
	
	.GLOBAL gLevel42B
gLevel42B:
	.INCBIN "assets/level/level_data/world_four/4_2B.bin"

	.GLOBAL gLevel42Tutorial
gLevel42Tutorial:
	.INCBIN "assets/level/level_data/world_four/4_2_tutorial.bin"
	

	.GLOBAL gLevel43A
gLevel43A:
	.INCBIN "assets/level/level_data/world_four/4_3A.bin"
	
	.GLOBAL gLevel43B
gLevel43B:
	.INCBIN "assets/level/level_data/world_four/4_3B.bin"

	.GLOBAL gLevel43Tutorial
gLevel43Tutorial:
	.INCBIN "assets/level/level_data/world_four/4_3_tutorial.bin"
	
	
	.GLOBAL gLevel44A
gLevel44A:
	.INCBIN "assets/level/level_data/world_four/4_4A.bin"
	
	.GLOBAL gLevel44B
gLevel44B:
	.INCBIN "assets/level/level_data/world_four/4_4B.bin"

	.GLOBAL gLevel44Tutorial
gLevel44Tutorial:
	.INCBIN "assets/level/level_data/world_four/4_4_tutorial.bin"

	
	.GLOBAL gLevel45A
gLevel45A:
	.INCBIN "assets/level/level_data/world_four/4_5A.bin"
	
	.GLOBAL gLevel45B
gLevel45B:
	.INCBIN "assets/level/level_data/world_four/4_5B.bin"

	.GLOBAL gLevel45Tutorial
gLevel45Tutorial:
	.INCBIN "assets/level/level_data/world_four/4_5_tutorial.bin"
	

	.GLOBAL gLevel46A
gLevel46A:
	.INCBIN "assets/level/level_data/world_four/4_6A.bin"
	
	.GLOBAL gLevel46B
gLevel46B:
	.INCBIN "assets/level/level_data/world_four/4_6B.bin"

	.GLOBAL gLevel46Tutorial
gLevel46Tutorial:
	.INCBIN "assets/level/level_data/world_four/4_6_tutorial.bin"


	.GLOBAL gLevel4MM
gLevel4MM:
	.INCBIN "assets/level/level_data/world_four/4_mm.bin"
	
	.GLOBAL gLevel4DK
gLevel4DK:
	.INCBIN "assets/level/level_data/world_four/4_DK.bin"

	.GLOBAL gLevel4MMTutorial
gLevel4MMTutorial:
	.INCBIN "assets/level/level_data/world_four/4_mm_tutorial.bin"
	
@ World 5

	.GLOBAL gLevel51A
gLevel51A:
	.INCBIN "assets/level/level_data/world_five/5_1A.bin"
	
	.GLOBAL gLevel51B
gLevel51B:
	.INCBIN "assets/level/level_data/world_five/5_1B.bin"

	.GLOBAL gLevel51Tutorial
gLevel51Tutorial:
	.INCBIN "assets/level/level_data/world_five/5_1_tutorial.bin"
	

	.GLOBAL gLevel52A
gLevel52A:
	.INCBIN "assets/level/level_data/world_five/5_2A.bin"
	
	.GLOBAL gLevel52B
gLevel52B:
	.INCBIN "assets/level/level_data/world_five/5_2B.bin"

	.GLOBAL gLevel52Tutorial
gLevel52Tutorial:
	.INCBIN "assets/level/level_data/world_five/5_2_tutorial.bin"
	

	.GLOBAL gLevel53A
gLevel53A:
	.INCBIN "assets/level/level_data/world_five/5_3A.bin"
	
	.GLOBAL gLevel53B
gLevel53B:
	.INCBIN "assets/level/level_data/world_five/5_3B.bin"

	.GLOBAL gLevel53Tutorial
gLevel53Tutorial:
	.INCBIN "assets/level/level_data/world_five/5_3_tutorial.bin"
	
	
	.GLOBAL gLevel54A
gLevel54A:
	.INCBIN "assets/level/level_data/world_five/5_4A.bin"
	
	.GLOBAL gLevel54B
gLevel54B:
	.INCBIN "assets/level/level_data/world_five/5_4B.bin"

	.GLOBAL gLevel54Tutorial
gLevel54Tutorial:
	.INCBIN "assets/level/level_data/world_five/5_4_tutorial.bin"

	
	.GLOBAL gLevel55A
gLevel55A:
	.INCBIN "assets/level/level_data/world_five/5_5A.bin"
	
	.GLOBAL gLevel55B
gLevel55B:
	.INCBIN "assets/level/level_data/world_five/5_5B.bin"

	.GLOBAL gLevel55Tutorial
gLevel55Tutorial:
	.INCBIN "assets/level/level_data/world_five/5_5_tutorial.bin"
	

	.GLOBAL gLevel56A
gLevel56A:
	.INCBIN "assets/level/level_data/world_five/5_6A.bin"
	
	.GLOBAL gLevel56B
gLevel56B:
	.INCBIN "assets/level/level_data/world_five/5_6B.bin"

	.GLOBAL gLevel56Tutorial
gLevel56Tutorial:
	.INCBIN "assets/level/level_data/world_five/5_6_tutorial.bin"


	.GLOBAL gLevel5MM
gLevel5MM:
	.INCBIN "assets/level/level_data/world_five/5_mm.bin"
	
	.GLOBAL gLevel5DK
gLevel5DK:
	.INCBIN "assets/level/level_data/world_five/5_DK.bin"

	.GLOBAL gLevel5MMTutorial
gLevel5MMTutorial:
	.INCBIN "assets/level/level_data/world_five/5_mm_tutorial.bin"
	
@ World 6
	
	.GLOBAL gLevel61A
gLevel61A:
	.INCBIN "assets/level/level_data/world_six/6_1A.bin"

	.GLOBAL gLevel61B
gLevel61B:
	.INCBIN "assets/level/level_data/world_six/6_1B.bin"

	.GLOBAL gLevel61Tutorial
gLevel61Tutorial:
	.INCBIN "assets/level/level_data/world_six/6_1_tutorial.bin"


	.GLOBAL gLevel62A
gLevel62A:
	.INCBIN "assets/level/level_data/world_six/6_2A.bin"

	.GLOBAL gLevel62B
gLevel62B:
	.INCBIN "assets/level/level_data/world_six/6_2B.bin"

	.GLOBAL gLevel62Tutorial
gLevel62Tutorial:
	.INCBIN "assets/level/level_data/world_six/6_2_tutorial.bin"
	
	
	.GLOBAL gLevel63A
gLevel63A:
	.INCBIN "assets/level/level_data/world_six/6_3A.bin"

	.GLOBAL gLevel63B
gLevel63B:
	.INCBIN "assets/level/level_data/world_six/6_3B.bin"

	.GLOBAL gLevel63Tutorial 
gLevel63Tutorial:
	.INCBIN "assets/level/level_data/world_six/6_3_tutorial.bin"


	.GLOBAL gLevel64A
gLevel64A:
	.INCBIN "assets/level/level_data/world_six/6_4A.bin"
	
	.GLOBAL gLevel64B
gLevel64B:
	.INCBIN "assets/level/level_data/world_six/6_4B.bin"
	
	.GLOBAL gLevel64Tutorial
gLevel64Tutorial:
	.INCBIN "assets/level/level_data/world_six/6_4_tutorial.bin"


	.GLOBAL gLevel65A
gLevel65A:
	.INCBIN "assets/level/level_data/world_six/6_5A.bin"
	
	.GLOBAL gLevel65B
gLevel65B:
	.INCBIN "assets/level/level_data/world_six/6_5B.bin"
	
	.GLOBAL gLevel65Tutorial
gLevel65Tutorial:
	.INCBIN "assets/level/level_data/world_six/6_5_tutorial.bin"
	
	
	.GLOBAL gLevel66A
gLevel66A:
	.INCBIN "assets/level/level_data/world_six/6_6A.bin"
	
	.GLOBAL gLevel66B
gLevel66B:
	.INCBIN "assets/level/level_data/world_six/6_6B.bin"
	
	.GLOBAL gLevel66Tutorial
gLevel66Tutorial:
	.INCBIN "assets/level/level_data/world_six/6_6_tutorial.bin"
	
	
	.GLOBAL gLevel6MM
gLevel6MM:
	.INCBIN "assets/level/level_data/world_six/6_mm.bin"
	
	.GLOBAL gLevel6DK
gLevel6DK:
	.INCBIN "assets/level/level_data/world_six/6_DK.bin"
	
	.GLOBAL gLevel6MMTutorial
gLevel6MMTutorial:
	.INCBIN "assets/level/level_data/world_six/6_mm_tutorial.bin"

@ World 1+
	
	.GLOBAL gLevel11Plus
gLevel11Plus:
	.INCBIN "assets/level/level_data/world_one_plus/1_1_plus.bin"
		
	.GLOBAL gLevelExpert1
gLevelExpert1:
	.INCBIN "assets/level/level_data/expert/expert_1.bin"
		
		
	.GLOBAL gLevel12Plus
gLevel12Plus:
	.INCBIN "assets/level/level_data/world_one_plus/1_2_plus.bin"
		
	.GLOBAL gLevelExpert7
gLevelExpert7:
	.INCBIN "assets/level/level_data/expert/expert_7.bin"
		
				
	.GLOBAL gLevel13Plus
gLevel13Plus:
	.INCBIN "assets/level/level_data/world_one_plus/1_3_plus.bin"
		
	.GLOBAL gLevelUnusedRevenge
gLevelUnusedRevenge:
	.INCBIN "assets/level/level_data/world_one_plus/1_unused_revenge.bin"
	
	
	.GLOBAL gLevel14Plus
gLevel14Plus:
	.INCBIN "assets/level/level_data/world_one_plus/1_4_plus.bin"
		
	.GLOBAL gLevelUnusedTheLongWay
gLevelUnusedTheLongWay:
	.INCBIN "assets/level/level_data/world_one_plus/1_unused_the_long_way.bin"	
	
	
	.GLOBAL gLevel15Plus
gLevel15Plus:
	.INCBIN "assets/level/level_data/world_one_plus/1_5_plus.bin"
		
	.GLOBAL gLevelUnused1
gLevelUnused1:
	.INCBIN "assets/level/level_data/world_one_plus/1_unused_1.bin"	
	
	
	.GLOBAL gLevel16Plus
gLevel16Plus:
	.INCBIN "assets/level/level_data/world_one_plus/1_6_plus.bin"
		
	.GLOBAL gLevelUnused2
gLevelUnused2:
	.INCBIN "assets/level/level_data/world_one_plus/1_unused_2.bin"
		

	.GLOBAL gLevel1DKPlus
gLevel1DKPlus:
	.INCBIN "assets/level/level_data/world_one_plus/1_DK_plus.bin"
		
	.GLOBAL gLevelUnusedDK1
gLevelUnusedDK1:
	.INCBIN "assets/level/level_data/world_one_plus/1_unused_DK.bin"
	
@ World 2+
	
	.GLOBAL gLevel21Plus
gLevel21Plus:
	.INCBIN "assets/level/level_data/world_two_plus/2_1_plus.bin"
		
	.GLOBAL gLevelExpert2
gLevelExpert2:
	.INCBIN "assets/level/level_data/expert/expert_2.bin"
		
		
	.GLOBAL gLevel22Plus
gLevel22Plus:
	.INCBIN "assets/level/level_data/world_two_plus/2_2_plus.bin"
		
	.GLOBAL gLevelExpert8
gLevelExpert8:
	.INCBIN "assets/level/level_data/expert/expert_8.bin"
		
				
	.GLOBAL gLevel23Plus
gLevel23Plus:
	.INCBIN "assets/level/level_data/world_two_plus/2_3_plus.bin"
										
	.GLOBAL gLevelUnusedOneShotBlue
gLevelUnusedOneShotBlue:
	.INCBIN "assets/level/level_data/world_two_plus/2_unused_one_shot_blue.bin"
										
										
	.GLOBAL gLevel24Plus 
gLevel24Plus: 
	.INCBIN "assets/level/level_data/world_two_plus/2_4_plus.bin"
										
	.GLOBAL gLevelUnusedEggAttack
gLevelUnusedEggAttack:
	.INCBIN "assets/level/level_data/world_two_plus/2_unused_egg_attack.bin"	
										
										
	.GLOBAL gLevel25Plus 
gLevel25Plus: 
	.INCBIN "assets/level/level_data/world_two_plus/2_5_plus.bin"
										
	.GLOBAL gLevelUnusedDangerFlowersW2
gLevelUnusedDangerFlowersW2:
	.INCBIN "assets/level/level_data/world_two_plus/2_unused_danger_flowers_W2.bin"	
										
										
	.GLOBAL gLevel26Plus 
gLevel26Plus: 
	.INCBIN "assets/level/level_data/world_two_plus/2_6_plus.bin"
										
	.GLOBAL gLevelUnusedLaterGator
gLevelUnusedLaterGator:
	.INCBIN "assets/level/level_data/world_two_plus/2_unused_later_gator.bin"
										
										
	.GLOBAL gLevel2DKPlus
gLevel2DKPlus:
	.INCBIN "assets/level/level_data/world_two_plus/2_DK_plus.bin"
										
	.GLOBAL gLevelUnusedDK2
gLevelUnusedDK2:
	.INCBIN "assets/level/level_data/world_two_plus/2_unused_DK.bin"	
	
@ World 3+

	.GLOBAL gLevel31Plus
gLevel31Plus:
	.INCBIN "assets/level/level_data/world_three_plus/3_1_plus.bin"	
	
	.GLOBAL gLevelExpert3
gLevelExpert3:
	.INCBIN "assets/level/level_data/expert/expert_3.bin"	
	
	
	.GLOBAL gLevel32Plus
gLevel32Plus:
	.INCBIN "assets/level/level_data/world_three_plus/3_2_plus.bin"	
	
	.GLOBAL gLevelExpert9
gLevelExpert9:
	.INCBIN "assets/level/level_data/expert/expert_9.bin"	


	.GLOBAL gLevel33Plus
gLevel33Plus:
	.INCBIN "assets/level/level_data/world_three_plus/3_3_plus.bin"	
	
	.GLOBAL gLevelUnusedHotFeet
gLevelUnusedHotFeet:
	.INCBIN "assets/level/level_data/world_three_plus/3_unused_hot_feet.bin"
	

	.GLOBAL gLevel34Plus
gLevel34Plus:
	.INCBIN "assets/level/level_data/world_three_plus/3_4_plus.bin"	
	
	.GLOBAL gLevelUnused3
gLevelUnused3:
	.INCBIN "assets/level/level_data/world_three_plus/3_unused_1.bin"
	

	.GLOBAL gLevel35Plus
gLevel35Plus:
	.INCBIN "assets/level/level_data/world_three_plus/3_5_plus.bin"	
	
	.GLOBAL gLevelUnused4
gLevelUnused4:
	.INCBIN "assets/level/level_data/world_three_plus/3_unused_2.bin"
	
	
	.GLOBAL gLevel36Plus
gLevel36Plus:
	.INCBIN "assets/level/level_data/world_three_plus/3_6_plus.bin"	
	
	.GLOBAL gLevelUnused5
gLevelUnused5:
	.INCBIN "assets/level/level_data/world_three_plus/3_unused_3.bin"
	
	
	.GLOBAL gLevel3DKPlus
gLevel3DKPlus:
	.INCBIN "assets/level/level_data/world_three_plus/3_DK_plus.bin"
										
	.GLOBAL gLevelUnusedDK3
gLevelUnusedDK3:
	.INCBIN "assets/level/level_data/world_three_plus/3_unused_DK.bin"	
	
@ World 4+

	.GLOBAL gLevel41Plus
gLevel41Plus:
	.INCBIN "assets/level/level_data/world_four_plus/4_1_plus.bin"
	
	.GLOBAL gLevelExpert4
gLevelExpert4:
	.INCBIN "assets/level/level_data/expert/expert_4.bin"	
	
	
	.GLOBAL gLevel42Plus
gLevel42Plus:
	.INCBIN "assets/level/level_data/world_four_plus/4_2_plus.bin"
	
	.GLOBAL gLevelExpert10
gLevelExpert10:
	.INCBIN "assets/level/level_data/expert/expert_10.bin"	
	
	
	.GLOBAL gLevel43Plus
gLevel43Plus:
	.INCBIN "assets/level/level_data/world_four_plus/4_3_plus.bin"
	
	.GLOBAL gLevelUnusedBooInABox
gLevelUnusedBooInABox:
	.INCBIN "assets/level/level_data/world_four_plus/4_unused_boo_in_a_box.bin"
	
	
	.GLOBAL gLevel44Plus
gLevel44Plus:
	.INCBIN "assets/level/level_data/world_four_plus/4_4_plus.bin"
	
	.GLOBAL gLevelUnusedTheThwamplet
gLevelUnusedTheThwamplet:
	.INCBIN "assets/level/level_data/world_four_plus/4_unused_the_thwamplet.bin"
	
	
	.GLOBAL gLevel45Plus
gLevel45Plus:
	.INCBIN "assets/level/level_data/world_four_plus/4_5_plus.bin"
	
	.GLOBAL gLevelUnusedATrickyCandle
gLevelUnusedATrickyCandle:
	.INCBIN "assets/level/level_data/world_four_plus/4_unused_a_tricky_candle.bin"
	
	
	.GLOBAL gLevel46Plus
gLevel46Plus:
	.INCBIN "assets/level/level_data/world_four_plus/4_6_plus.bin"
	
	.GLOBAL gLevelUnused6
gLevelUnused6:
	.INCBIN "assets/level/level_data/world_four_plus/4_unused_1.bin"
	
	
	.GLOBAL gLevel4DKPlus
gLevel4DKPlus:
	.INCBIN "assets/level/level_data/world_four_plus/4_DK_plus.bin"
										
	.GLOBAL gLevelUnusedDK4
gLevelUnusedDK4:
	.INCBIN "assets/level/level_data/world_four_plus/4_unused_DK.bin"	
	
@ World 5+

	.GLOBAL gLevel51Plus
gLevel51Plus:
	.INCBIN "assets/level/level_data/world_five_plus/5_1_plus.bin"
	
	.GLOBAL gLevelExpert5
gLevelExpert5:
	.INCBIN "assets/level/level_data/expert/expert_5.bin"	
	
	
	.GLOBAL gLevel52Plus
gLevel52Plus:
	.INCBIN "assets/level/level_data/world_five_plus/5_2_plus.bin"
	
	.GLOBAL gLevelExpert11
gLevelExpert11:
	.INCBIN "assets/level/level_data/expert/expert_11.bin"	
	
	
	.GLOBAL gLevel53Plus
gLevel53Plus:
	.INCBIN "assets/level/level_data/world_five_plus/5_3_plus.bin"
	
	.GLOBAL gLevelUnusedKeyToTheKey
gLevelUnusedKeyToTheKey:
	.INCBIN "assets/level/level_data/world_five_plus/5_unused_key_to_the_key.bin"
	
	
	.GLOBAL gLevel54Plus
gLevel54Plus:
	.INCBIN "assets/level/level_data/world_five_plus/5_4_plus.bin"
	
	.GLOBAL gLevelUnusedDangerFlowersW5
gLevelUnusedDangerFlowersW5:
	.INCBIN "assets/level/level_data/world_five_plus/5_unused_danger_flowers_W5.bin"
	
	
	.GLOBAL gLevel55Plus
gLevel55Plus:
	.INCBIN "assets/level/level_data/world_five_plus/5_5_plus.bin"
	
	.GLOBAL gLevelUnusedHitasuraKawase
gLevelUnusedHitasuraKawase:
	.INCBIN "assets/level/level_data/world_five_plus/5_unused_hitasura_kawase.bin"
	
	
	.GLOBAL gLevel56Plus
gLevel56Plus:
	.INCBIN "assets/level/level_data/world_five_plus/5_6_plus.bin"
	
	.GLOBAL gLevelUnused7
gLevelUnused7:
	.INCBIN "assets/level/level_data/world_five_plus/5_unused_1.bin"
	
	
	.GLOBAL gLevel5DKPlus
gLevel5DKPlus:
	.INCBIN "assets/level/level_data/world_five_plus/5_DK_plus.bin"
										
	.GLOBAL gLevelUnusedDK5
gLevelUnusedDK5:
	.INCBIN "assets/level/level_data/world_five_plus/5_unused_DK.bin"	
	
@ World 6+

	.GLOBAL gLevel61Plus
gLevel61Plus:
	.INCBIN "assets/level/level_data/world_six_plus/6_1_plus.bin"
	
	.GLOBAL gLevelExpert6
gLevelExpert6:
	.INCBIN "assets/level/level_data/expert/expert_6.bin"	
	
	
	.GLOBAL gLevel62Plus
gLevel62Plus:
	.INCBIN "assets/level/level_data/world_six_plus/6_2_plus.bin"
	
	.GLOBAL gLevelExpert12
gLevelExpert12:
	.INCBIN "assets/level/level_data/expert/expert_12.bin"	
	
	
	.GLOBAL gLevel63Plus
gLevel63Plus:
	.INCBIN "assets/level/level_data/world_six_plus/6_3_plus.bin"
	
	.GLOBAL gLevelUnusedClimbAndFall
gLevelUnusedClimbAndFall:
	.INCBIN "assets/level/level_data/world_six_plus/6_unused_climb_and_fall_1.bin"
	
	
	.GLOBAL gLevel64Plus
gLevel64Plus:
	.INCBIN "assets/level/level_data/world_six_plus/6_4_plus.bin"
	
	.GLOBAL gLevelUnused8
gLevelUnused8:
	.INCBIN "assets/level/level_data/world_six_plus/6_unused_1.bin"
	
	
	.GLOBAL gLevel65Plus
gLevel65Plus:
	.INCBIN "assets/level/level_data/world_six_plus/6_5_plus.bin"
	
	.GLOBAL gLevelUnused9
gLevelUnused9:
	.INCBIN "assets/level/level_data/world_six_plus/6_unused_2.bin"
	
	
	.GLOBAL gLevel66Plus
gLevel66Plus:
	.INCBIN "assets/level/level_data/world_six_plus/6_6_plus.bin"
	
	.GLOBAL gLevelUnusedClimbAndFall2
gLevelUnusedClimbAndFall2:
	.INCBIN "assets/level/level_data/world_six_plus/6_unused_climb_and_fall_2.bin"
	
	
	.GLOBAL gLevel6DKPlus
gLevel6DKPlus:
	.INCBIN "assets/level/level_data/world_six_plus/6_DK_plus.bin"
										
	.GLOBAL gLevelUnusedDK6
gLevelUnusedDK6:
	.INCBIN "assets/level/level_data/world_six_plus/6_unused_DK.bin"	
		
@ Boss Levels

	.GLOBAL gLevelDKBoss
gLevelDKBoss:
	.INCBIN "assets/level/level_data/boss/DK_boss.bin"
	
	.GLOBAL gLevelDKBossPlus
gLevelDKBossPlus:
	.INCBIN "assets/level/level_data/boss/DK_boss_plus.bin"
	
@ Title demo/Tutorial Input data
	
	.GLOBAL g11BTitleDemo
g11BTitleDemo:
	.INCBIN "assets/demo_inputs/title/1_1B_demo_inputs.bin"
	
	.GLOBAL g26BTitleDemo
g26BTitleDemo:
	.INCBIN "assets/demo_inputs/title/2_6B_demo_inputs.bin"
	
	.GLOBAL g33ATitleDemo
g33ATitleDemo:
	.INCBIN "assets/demo_inputs/title/3_3A_demo_inputs.bin"
	
	.GLOBAL g44BTitleDemo
g44BTitleDemo:
	.INCBIN "assets/demo_inputs/title/4_4B_demo_inputs.bin"
	
	.GLOBAL g52ATitleDemo
g52ATitleDemo:
	.INCBIN "assets/demo_inputs/title/5_2A_demo_inputs.bin"
	
	.GLOBAL g63BTitleDemo
g63BTitleDemo:
	.INCBIN "assets/demo_inputs/title/6_3B_demo_inputs.bin"
	
@ World 1 Tutorials
	
	.GLOBAL g11TutorialDemo
g11TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_1_tutorial_inputs.bin"

	.GLOBAL g12TutorialDemo
g12TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_2_tutorial_inputs.bin"
		
	.GLOBAL g13TutorialDemo
g13TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_3_tutorial_inputs.bin"

	.GLOBAL g14TutorialDemo
g14TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_4_tutorial_inputs.bin"
		
	.GLOBAL g15TutorialDemo
g15TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_5_tutorial_inputs.bin"

	.GLOBAL g16TutorialDemo
g16TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_6_tutorial_inputs.bin"
	
	.GLOBAL g1MMTutorialDemo
g1MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_mm_tutorial_inputs.bin"
	
@ World 2 Tutorials
	
	.GLOBAL g21TutorialDemo
g21TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_1_tutorial_inputs.bin"

	.GLOBAL g22TutorialDemo
g22TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_2_tutorial_inputs.bin"
		
	.GLOBAL g23TutorialDemo
g23TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_3_tutorial_inputs.bin"

	.GLOBAL g24TutorialDemo
g24TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_4_tutorial_inputs.bin"
		
	.GLOBAL g25TutorialDemo
g25TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_5_tutorial_inputs.bin"

	.GLOBAL g26TutorialDemo
g26TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_6_tutorial_inputs.bin"
	
	.GLOBAL g2MMTutorialDemo
g2MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_mm_tutorial_inputs.bin"
	
@ World 3 Tutorials
	
	.GLOBAL g31TutorialDemo
g31TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_1_tutorial_inputs.bin"

	.GLOBAL g32TutorialDemo
g32TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_2_tutorial_inputs.bin"
		
	.GLOBAL g33TutorialDemo
g33TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_3_tutorial_inputs.bin"

	.GLOBAL g34TutorialDemo
g34TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_4_tutorial_inputs.bin"
		
	.GLOBAL g35TutorialDemo
g35TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_5_tutorial_inputs.bin"

	.GLOBAL g36TutorialDemo
g36TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_6_tutorial_inputs.bin"
	
	.GLOBAL g3MMTutorialDemo
g3MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_mm_tutorial_inputs.bin"
	
@ World 4 Tutorials
	
	.GLOBAL g41TutorialDemo
g41TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_1_tutorial_inputs.bin"

	.GLOBAL g42TutorialDemo
g42TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_2_tutorial_inputs.bin"
		
	.GLOBAL g43TutorialDemo
g43TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_3_tutorial_inputs.bin"

	.GLOBAL g44TutorialDemo
g44TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_4_tutorial_inputs.bin"
		
	.GLOBAL g45TutorialDemo
g45TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_5_tutorial_inputs.bin"

	.GLOBAL g46TutorialDemo
g46TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_6_tutorial_inputs.bin"
	
	.GLOBAL g4MMTutorialDemo
g4MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_mm_tutorial_inputs.bin"
	
@ World 5 Tutorials
	
	.GLOBAL g51TutorialDemo
g51TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_1_tutorial_inputs.bin"

	.GLOBAL g52TutorialDemo
g52TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_2_tutorial_inputs.bin"
		
	.GLOBAL g53TutorialDemo
g53TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_3_tutorial_inputs.bin"

	.GLOBAL g54TutorialDemo
g54TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_4_tutorial_inputs.bin"
		
	.GLOBAL g55TutorialDemo
g55TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_5_tutorial_inputs.bin"

	.GLOBAL g56TutorialDemo
g56TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_6_tutorial_inputs.bin"
	
	.GLOBAL g5MMTutorialDemo
g5MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_mm_tutorial_inputs.bin"
	
@ World 6 Tutorials
	
	.GLOBAL g61TutorialDemo
g61TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_1_tutorial_inputs.bin"

	.GLOBAL g62TutorialDemo
g62TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_2_tutorial_inputs.bin"
	
	.GLOBAL g63TutorialDemo
g63TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_3_tutorial_inputs.bin"

	.GLOBAL g64TutorialDemo
g64TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_4_tutorial_inputs.bin"
		
	.GLOBAL g65TutorialDemo
g65TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_5_tutorial_inputs.bin"

	.GLOBAL g66TutorialDemo
g66TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_6_tutorial_inputs.bin"
	
	.GLOBAL g6MMTutorialDemo
g6MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_mm_tutorial_inputs.bin"
	
	
	.GLOBAL gUnknown_08B28D84
gUnknown_08B28D84:
	.INCBIN "assets/unused/gUnknown_08B28D84.bin"
	
	.GLOBAL gEWorldMenuData2
gEWorldMenuData2:
	.INCBIN "assets/menu/EWorldMenuData2.bin"

	.GLOBAL gUnknown_08B2AD88
gUnknown_08B2AD88:
	.INCBIN "baserom.gba", 0xB2AD88, 0xb2c384-0xB2AD88
	
	
	
	.GLOBAL gWorldOneTable
gWorldOneTable:
	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel11A @ Level Data
	.2byte 120 @ Timer
	.byte 0 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000061 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel11B @ Level Data
	.2byte 120 @ Timer
	.byte 9 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000081 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	
	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel12A @ Level Data
	.2byte 120 @ Timer
	.byte 8 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000061 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel12B @ Level Data
	.2byte 120 @ Timer
	.byte 0 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000081 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel13A @ Level Data
	.2byte 120 @ Timer
	.byte 9 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000064 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel13B @ Level Data
	.2byte 150 @ Timer
	.byte 8 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000085 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel14A @ Level Data
	.2byte 120 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel14B @ Level Data
	.2byte 150 @ Timer
	.byte 9 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C5 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused


	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel15A @ Level Data
	.2byte 120 @ Timer
	.byte 8 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel15B @ Level Data
	.2byte 120 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel16A @ Level Data
	.2byte 150 @ Timer
	.byte 9 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel16B @ Level Data
	.2byte 120 @ Timer
	.byte 8 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
		

	.4byte gWorldOneMiniMarioBG @ Background Data
	.4byte gLevel1MM @ Level Data
	.2byte 90 @ Timer
	.byte 12 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneBossBG @ Background Data
	.4byte gLevel1DK @ Level Data
	.2byte 180 @ Timer
	.byte 13 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldTwoTable
gWorldTwoTable:
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel21A @ Level Data
	.2byte 120 @ Timer
	.byte 18 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000062 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel21B @ Level Data
	.2byte 120 @ Timer
	.byte 19 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000087 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	
	.4byte gWorldTwoHorizontalBG @ Background Data
	.4byte gLevel22A @ Level Data
	.2byte 120 @ Timer
	.byte 20 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000026 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoHorizontalBG @ Background Data
	.4byte gLevel22B @ Level Data
	.2byte 120 @ Timer
	.byte 18 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C6 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel23A @ Level Data
	.2byte 120 @ Timer
	.byte 19 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel23B @ Level Data
	.2byte 150 @ Timer
	.byte 20 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldTwoHorizontalBG @ Background Data
	.4byte gLevel24A @ Level Data
	.2byte 120 @ Timer
	.byte 18 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel24B @ Level Data
	.2byte 150 @ Timer
	.byte 19 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused


	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel25A @ Level Data
	.2byte 120 @ Timer
	.byte 20 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoHorizontalBG @ Background Data
	.4byte gLevel25B @ Level Data
	.2byte 180 @ Timer
	.byte 18 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldTwoHorizontalBG @ Background Data
	.4byte gLevel26A @ Level Data
	.2byte 150 @ Timer
	.byte 19 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000026 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoHorizontalBG @ Background Data
	.4byte gLevel26B @ Level Data
	.2byte 180 @ Timer
	.byte 20 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
		

	.4byte gWorldTwoMiniMarioBG @ Background Data
	.4byte gLevel2MM @ Level Data
	.2byte 120 @ Timer
	.byte 12 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoBossBG @ Background Data
	.4byte gLevel2DK @ Level Data
	.2byte 180 @ Timer
	.byte 66 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldThreeTable
gWorldThreeTable:
	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel31A @ Level Data
	.2byte 120 @ Timer
	.byte 33 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000030 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel31B @ Level Data
	.2byte 120 @ Timer
	.byte 34 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000D0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	
	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel32A @ Level Data
	.2byte 120 @ Timer
	.byte 31 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000020 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel32B @ Level Data
	.2byte 150 @ Timer
	.byte 30 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel33A @ Level Data
	.2byte 120 @ Timer
	.byte 33 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000063 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel33B @ Level Data
	.2byte 150 @ Timer
	.byte 34 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000083 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel34A @ Level Data
	.2byte 120 @ Timer
	.byte 31 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel34B @ Level Data
	.2byte 150 @ Timer
	.byte 30 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused


	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel35A @ Level Data
	.2byte 120 @ Timer
	.byte 33 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel35B @ Level Data
	.2byte 120 @ Timer
	.byte 34 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel36A @ Level Data
	.2byte 120 @ Timer
	.byte 31 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000020 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel36B @ Level Data
	.2byte 150 @ Timer
	.byte 30 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
		

	.4byte gWorldThreeMiniMarioBG @ Background Data
	.4byte gLevel3MM @ Level Data
	.2byte 120 @ Timer
	.byte 12 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeBossBG @ Background Data
	.4byte gLevel3DK @ Level Data
	.2byte 150 @ Timer
	.byte 67 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000010 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldFourTable
gWorldFourTable:
	.4byte gWorldFourHorizontalBG @ Background Data
	.4byte gLevel41A @ Level Data
	.2byte 120 @ Timer
	.byte 27 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000020 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourHorizontalBG @ Background Data
	.4byte gLevel41B @ Level Data
	.2byte 120 @ Timer
	.byte 28 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	
	.4byte gWorldFourHorizontalBG @ Background Data
	.4byte gLevel42A @ Level Data
	.2byte 150 @ Timer
	.byte 29 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel42B @ Level Data
	.2byte 150 @ Timer
	.byte 27 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel43A @ Level Data
	.2byte 150 @ Timer
	.byte 28 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000060 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel43B @ Level Data
	.2byte 150 @ Timer
	.byte 29 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000081 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldFourHorizontalBG @ Background Data
	.4byte gLevel44A @ Level Data
	.2byte 120 @ Timer
	.byte 27 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000063 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourHorizontalBG @ Background Data
	.4byte gLevel44B @ Level Data
	.2byte 150 @ Timer
	.byte 28 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000081 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused


	.4byte gWorldFourHorizontalBG @ Background Data
	.4byte gLevel45A @ Level Data
	.2byte 120 @ Timer
	.byte 29 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000061 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel45B @ Level Data
	.2byte 150 @ Timer
	.byte 27 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000083 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel46A @ Level Data
	.2byte 120 @ Timer
	.byte 28 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel46B @ Level Data
	.2byte 180 @ Timer
	.byte 29 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
		

	.4byte gWorldFourMiniMarioBG @ Background Data
	.4byte gLevel4MM @ Level Data
	.2byte 120 @ Timer
	.byte 12 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourBossBG @ Background Data
	.4byte gLevel4DK @ Level Data
	.2byte 150 @ Timer
	.byte 13 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldFiveTable
gWorldFiveTable:
	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel51A @ Level Data
	.2byte 120 @ Timer
	.byte 26 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel51B @ Level Data
	.2byte 150 @ Timer
	.byte 24 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	
	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel52A @ Level Data
	.2byte 120 @ Timer
	.byte 25 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel52B @ Level Data
	.2byte 150 @ Timer
	.byte 26 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel53A @ Level Data
	.2byte 120 @ Timer
	.byte 24 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel53B @ Level Data
	.2byte 150 @ Timer
	.byte 25 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel54A @ Level Data
	.2byte 120 @ Timer
	.byte 26 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel54B @ Level Data
	.2byte 150 @ Timer
	.byte 24 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused


	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel55A @ Level Data
	.2byte 150 @ Timer
	.byte 25 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel55B @ Level Data
	.2byte 180 @ Timer
	.byte 26 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel56A @ Level Data
	.2byte 150 @ Timer
	.byte 24 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000063 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel56B @ Level Data
	.2byte 180 @ Timer
	.byte 25 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000081 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
		

	.4byte gWorldFiveMiniMarioBG @ Background Data
	.4byte gLevel5MM @ Level Data
	.2byte 120 @ Timer
	.byte 12 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveBossBG @ Background Data
	.4byte gLevel5DK @ Level Data
	.2byte 150 @ Timer
	.byte 0x42 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldSixTable
gWorldSixTable:
	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel61A @ Level Data
	.2byte 120 @ Timer
	.byte 35 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000020 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel61B @ Level Data
	.2byte 150 @ Timer
	.byte 36 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel62A @ Level Data
	.2byte 120 @ Timer
	.byte 37 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000060 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel62B @ Level Data
	.2byte 150 @ Timer
	.byte 38 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000085 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel63A @ Level Data
	.2byte 120 @ Timer
	.byte 35 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel63B @ Level Data
	.2byte 150 @ Timer
	.byte 36 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C4 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
		
	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel64A @ Level Data
	.2byte 150 @ Timer
	.byte 37 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000066 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel64B @ Level Data
	.2byte 180 @ Timer
	.byte 38 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000083 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel65A @ Level Data
	.2byte 150 @ Timer
	.byte 35 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel65B @ Level Data
	.2byte 180 @ Timer
	.byte 36 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C5 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel66A @ Level Data
	.2byte 150 @ Timer
	.byte 37 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000062 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel66B @ Level Data
	.2byte 180 @ Timer
	.byte 38 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000085 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldSixMiniMarioBG @ Background Data
	.4byte gLevel6MM @ Level Data
	.2byte 120 @ Timer
	.byte 12 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixBossBG @ Background Data
	.4byte gLevel6DK @ Level Data
	.2byte 180 @ Timer
	.byte 67 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldTable
gWorldTable:
	.4byte 14 @ Level Count
	.4byte gWorldOneTable
	.4byte gWorldOneData
	.4byte 14 @ Level Count
	.4byte gWorldTwoTable
	.4byte gWorldTwoData
	.4byte 14 @ Level Count
	.4byte gWorldThreeTable
	.4byte gWorldThreeData
	.4byte 14 @ Level Count
	.4byte gWorldFourTable
	.4byte gWorldFourData
	.4byte 14 @ Level Count
	.4byte gWorldFiveTable
	.4byte gWorldFiveData
	.4byte 14 @ Level Count
	.4byte gWorldSixTable
	.4byte gWorldSixData

	.GLOBAL gUnknown_08B2CA5C
gUnknown_08B2CA5C:
	.4byte 6 @ World Count
	.4byte gWorldTable

	.GLOBAL gWorldOnePlusTable
gWorldOnePlusTable:
	.4byte gWorldOnePlusHorizontalBG @ Background Data
	.4byte gLevel11Plus @ Level Data
	.2byte 120 @ Timer
	.byte 0 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOnePlusHorizontalBG @ Background Data
	.4byte gLevel12Plus @ Level Data
	.2byte 120 @ Timer
	.byte 9 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOnePlusVerticalBG @ Background Data
	.4byte gLevel13Plus @ Level Data
	.2byte 150 @ Timer
	.byte 8 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldOnePlusHorizontalBG @ Background Data
	.4byte gLevel14Plus @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
		
	.4byte gWorldOnePlusHorizontalBG @ Background Data
	.4byte gLevel15Plus @ Level Data
	.2byte 150 @ Timer
	.byte 9 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldOnePlusHorizontalBG @ Background Data
	.4byte gLevel16Plus @ Level Data
	.2byte 120 @ Timer
	.byte 8 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldOneBossBG @ Background Data
	.4byte gLevel1DKPlus @ Level Data
	.2byte 120 @ Timer
	.byte 13 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldTwoPlusTable
gWorldTwoPlusTable:
	.4byte gWorldTwoPlusVerticalBG @ Background Data
	.4byte gLevel21Plus @ Level Data
	.2byte 150 @ Timer
	.byte 18 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoPlusHorizontalBG @ Background Data
	.4byte gLevel22Plus @ Level Data
	.2byte 150 @ Timer
	.byte 19 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldTwoPlusHorizontalBG @ Background Data
	.4byte gLevel23Plus @ Level Data
	.2byte 150 @ Timer
	.byte 20 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldTwoPlusVerticalBG @ Background Data
	.4byte gLevel24Plus @ Level Data
	.2byte 120 @ Timer
	.byte 18 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoPlusHorizontalBG @ Background Data
	.4byte gLevel25Plus @ Level Data
	.2byte 150 @ Timer
	.byte 19 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldTwoPlusHorizontalBG @ Background Data
	.4byte gLevel26Plus @ Level Data
	.2byte 150 @ Timer
	.byte 20 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoBossBG @ Background Data
	.4byte gLevel2DKPlus @ Level Data
	.2byte 120 @ Timer
	.byte 66 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gWorldThreePlusTable
gWorldThreePlusTable:
	.4byte gWorldThreePlusHorizontalBG @ Background Data
	.4byte gLevel31Plus @ Level Data
	.2byte 150 @ Timer
	.byte 30 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldThreePlusVerticalBG @ Background Data
	.4byte gLevel32Plus @ Level Data
	.2byte 150 @ Timer
	.byte 31 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldThreePlusHorizontalBG @ Background Data
	.4byte gLevel33Plus @ Level Data
	.2byte 150 @ Timer
	.byte 33 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldThreePlusHorizontalBG @ Background Data
	.4byte gLevel34Plus @ Level Data
	.2byte 150 @ Timer
	.byte 34 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldThreePlusVerticalBG @ Background Data
	.4byte gLevel35Plus @ Level Data
	.2byte 150 @ Timer
	.byte 30 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldThreePlusHorizontalBG @ Background Data
	.4byte gLevel36Plus @ Level Data
	.2byte 150 @ Timer
	.byte 31 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldThreePlusBossBG @ Background Data
	.4byte gLevel3DKPlus @ Level Data
	.2byte 120 @ Timer
	.byte 67 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000010 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gWorldFourPlusTable
gWorldFourPlusTable:
	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevel41Plus @ Level Data
	.2byte 150 @ Timer
	.byte 27 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevel42Plus @ Level Data
	.2byte 150 @ Timer
	.byte 28 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevel43Plus @ Level Data
	.2byte 150 @ Timer
	.byte 0x1D @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevel44Plus @ Level Data
	.2byte 150 @ Timer
	.byte 27 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevel45Plus @ Level Data
	.2byte 150 @ Timer
	.byte 28 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevel46Plus @ Level Data
	.2byte 150 @ Timer
	.byte 0x1D @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldFourBossBG @ Background Data
	.4byte gLevel4DKPlus @ Level Data
	.2byte 120 @ Timer
	.byte 0x0D @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldFivePlusTable
gWorldFivePlusTable:
	.4byte gWorldFivePlusHorizontalBG @ Background Data
	.4byte gLevel51Plus @ Level Data
	.2byte 150 @ Timer
	.byte 24 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFivePlusHorizontalBG @ Background Data
	.4byte gLevel52Plus @ Level Data
	.2byte 150 @ Timer
	.byte 25 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFivePlusHorizontalBG @ Background Data
	.4byte gLevel53Plus @ Level Data
	.2byte 150 @ Timer
	.byte 26 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldFivePlusVerticalBG @ Background Data
	.4byte gLevel54Plus
	.2byte 150 @ Timer
	.byte 24 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFivePlusVerticalBG @ Background Data
	.4byte gLevel55Plus @ Level Data
	.2byte 150 @ Timer
	.byte 25 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFivePlusHorizontalBG @ Background Data
	.4byte gLevel56Plus @ Level Data
	.2byte 150 @ Timer
	.byte 26 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E5 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldFiveBossBG @ Background Data
	.4byte gLevel5DKPlus @ Level Data
	.2byte 120 @ Timer
	.byte 66 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gWorldSixPlusTable
gWorldSixPlusTable:
	.4byte gWorldSixPlusHorizontalBG @ Background Data
	.4byte gLevel61Plus @ Level Data
	.2byte 150 @ Timer
	.byte 35 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixPlusHorizontalBG @ Background Data
	.4byte gLevel62Plus @ Level Data
	.2byte 150 @ Timer
	.byte 36 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E7 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixPlusHorizontalBG @ Background Data
	.4byte gLevel63Plus @ Level Data
	.2byte 150 @ Timer
	.byte 37 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldSixPlusVerticalBG @ Background Data
	.4byte gLevel64Plus @ Level Data
	.2byte 150 @ Timer
	.byte 38 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixPlusVerticalBG @ Background Data
	.4byte gLevel65Plus @ Level Data
	.2byte 150 @ Timer
	.byte 35 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixPlusHorizontalBG @ Background Data
	.4byte gLevel66Plus @ Level Data
	.2byte 150 @ Timer
	.byte 36 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldSixBossBG @ Background Data
	.4byte gLevel6DKPlus @ Level Data
	.2byte 120 @ Timer
	.byte 67 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gWorldPlusTable
gWorldPlusTable:
	.4byte 7 @ Level Count
	.4byte gWorldOnePlusTable
	.4byte gWorldOneData
	.4byte 7 @ Level Count
	.4byte gWorldTwoPlusTable
	.4byte gWorldTwoData
	.4byte 7 @ Level Count
	.4byte gWorldThreePlusTable
	.4byte gWorldThreeData
	.4byte 7 @ Level Count
	.4byte gWorldFourPlusTable
	.4byte gWorldFourData
	.4byte 7 @ Level Count
	.4byte gWorldFivePlusTable
	.4byte gWorldFiveData
	.4byte 7 @ Level Count
	.4byte gWorldSixPlusTable
	.4byte gWorldSixData

	.GLOBAL gUnknown_08B2CDF4
gUnknown_08B2CDF4:
	.4byte 6 @ World Count
	.4byte gWorldPlusTable
	
	.GLOBAL gExpert1Table
gExpert1Table:
	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte 0x08B0E0E4 @ Level Data
	.2byte 150 @ Timer
	.byte 48 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gExpert2Table
gExpert2Table:
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte 0x08B0FC00 @ Level Data
	.2byte 150 @ Timer
	.byte 49 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gExpert3Table
gExpert3Table:
	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte 0x08B11E68 @ Level Data
	.2byte 150 @ Timer
	.byte 50 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gExpert4Table
gExpert4Table:
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte 0x08B13C80 @ Level Data
	.2byte 150 @ Timer
	.byte 51 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gExpert5Table
gExpert5Table:
	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte 0x08B15804 @ Level Data
	.2byte 150 @ Timer
	.byte 52 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
.GLOBAL gExpert6Table
gExpert6Table:
	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte 0x08B176E0 @ Level Data
	.2byte 180 @ Timer
	.byte 53 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gExpertWorldTable
gExpertWorldTable:
	.4byte 1 @ Level Count
	.4byte gExpert1Table
	.4byte gWorldOneData
	.4byte 1 @ Level Count
	.4byte gExpert2Table
	.4byte gWorldTwoData
	.4byte 1 @ Level Count
	.4byte gExpert3Table
	.4byte gWorldThreeData
	.4byte 1 @ Level Count
	.4byte gExpert4Table
	.4byte gWorldFourData
	.4byte 1 @ Level Count
	.4byte gExpert5Table
	.4byte gWorldFiveData
	.4byte 1 @ Level Count
	.4byte gExpert6Table
	.4byte gWorldSixData
	
	.GLOBAL gUnknown_08B2CEBC
gUnknown_08B2CEBC:
	.4byte 6 @ World Count
	.4byte gExpertWorldTable
	
	.GLOBAL gExpert7Table
gExpert7Table:
	.4byte gWorldOnePlusHorizontalBG @ Background Data
	.4byte gLevelExpert7 @ Level Data
	.2byte 150 @ Timer
	.byte 54 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gExpert8Table
gExpert8Table:
	.4byte gWorldTwoPlusVerticalBG @ Background Data
	.4byte gLevelExpert8 @ Level Data
	.2byte 120 @ Timer
	.byte 55 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gExpert9Table
gExpert9Table:
	.4byte gWorldThreePlusHorizontalBG @ Background Data
	.4byte gLevelExpert9 @ Level Data
	.2byte 120 @ Timer
	.byte 56 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gExpert10Table
gExpert10Table:
	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevelExpert10 @ Level Data
	.2byte 150 @ Timer
	.byte 57 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gExpert11Table
gExpert11Table:
	.4byte gWorldFivePlusHorizontalBG @ Background Data
	.4byte gLevelExpert11 @ Level Data
	.2byte 120 @ Timer
	.byte 58 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	.GLOBAL gExpert12Table
gExpert12Table:
	.4byte gWorldSixPlusHorizontalBG @ Background Data
	.4byte gLevelExpert12 @ Level Data
	.2byte 180 @ Timer
	.byte 59 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gExpertWorldTable2
gExpertWorldTable2:
	.4byte 1 @ Level Count
	.4byte gExpert7Table
	.4byte gWorldOneData
	
	.4byte 1 @ Level Count
	.4byte gExpert8Table
	.4byte gWorldTwoData
	
	.4byte 1 @ Level Count
	.4byte gExpert9Table
	.4byte gWorldThreeData
	
	.4byte 1 @ Level Count
	.4byte gExpert10Table
	.4byte gWorldFourData
	
	.4byte 1 @ Level Count
	.4byte gExpert11Table
	.4byte gWorldFiveData
	
	.4byte 1 @ Level Count
	.4byte gExpert12Table
	.4byte gWorldSixData
	
	.GLOBAL gUnknown_08B2CF84
gUnknown_08B2CF84:
	.4byte 6 @ World Count
	.4byte gExpertWorldTable2

	.GLOBAL gBossLevelTable
gBossLevelTable:
@ DK-Boss
	.4byte gDKBossBG @ Background Data
	.4byte gLevelDKBoss @ Level Data
	.2byte 300 @ Timer
	.byte 39 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ DK-Boss+
	.4byte gDKBossPlusBG @ Background Data
	.4byte gLevelDKBossPlus @ Level Data
	.2byte 300 @ Timer
	.byte 40 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000024 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gBossWorldTable
gBossWorldTable:
	.4byte 2 @ Level Count
	.4byte gBossLevelTable
	.4byte gBossLevelData

	.BALIGN 4
	.GLOBAL gUnknown_08B2CFC0
gUnknown_08B2CFC0:
	.4byte 1 @ World Count
	.4byte gBossWorldTable

	.GLOBAL gTitleDemoLevelIDs
gTitleDemoLevelIDs:
	.byte 0x01
	.byte 0x0B
	.byte 0x04
	.byte 0x07
	.byte 0x02
	.byte 0x05
	.byte 0x00
	.byte 0x00

	.GLOBAL gTitleDemoInputTable
gTitleDemoInputTable:
	.4byte g11BTitleDemo
	.4byte g26BTitleDemo
	.4byte g33ATitleDemo
	.4byte g44BTitleDemo
	.4byte g52ATitleDemo
	.4byte g63BTitleDemo

	.GLOBAL gWorldOneTutorialLevelTable
gWorldOneTutorialLevelTable:
@ 1-1 Tutorial
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel11Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 1-2 Tutorial	
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel12Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 1-3 Tutorial
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel13Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000024 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 1-4 Tutorial
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel14Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 1-5 Tutorial
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel15Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 1-6 Tutorial
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel16Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 1-mm Tutorial
	.4byte gWorldOneMiniMarioBG @ Background Data
	.4byte gLevel1MMTutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x000000FF @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldTwoTutorialLevelTable
gWorldTwoTutorialLevelTable:
@ 2-1 Tutorial
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel21Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000082 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 2-2 Tutorial
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel22Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000046 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 2-3 Tutorial
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel23Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000082 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 2-4 Tutorial	
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel24Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 2-5 Tutorial
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel25Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000002 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 2-6 Tutorial
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel26Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000040 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

@ 2-mm Tutorial	
	.4byte gWorldTwoMiniMarioBG @ Background Data
	.4byte gLevel2MMTutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x000000FF @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldThreeTutorialLevelTable
gWorldThreeTutorialLevelTable:
@ 3-1 Tutorial
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel31Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000010 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 3-2 Tutorial
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel32Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 3-3 Tutorial
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel33Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000002 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 3-4 Tutorial
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel34Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000020 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 3-5 Tutorial
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel35Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

@ 3-6 Tutorial
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel36Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 3-mm Tutorial
	.4byte gWorldThreeMiniMarioBG @ Background Data
	.4byte gLevel3MMTutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldFourTutorialLevelTable
gWorldFourTutorialLevelTable:
@ 4-1 Tutorial
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel41Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 4-2 Tutorial
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel42Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 4-3 Tutorial
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel43Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000020 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 4-4 Tutorial
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel44Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 4-5 Tutorial
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel45Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

@ 4-6 Tutorial
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel46Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 4-mm Tutorial
	.4byte gWorldFourMiniMarioBG @ Background Data
	.4byte gLevel4MMTutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x000000FF @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	
	.GLOBAL gWorldFiveTutorialLevelTable
gWorldFiveTutorialLevelTable:
@ 5-1 Tutorial
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel51Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 5-2 Tutorial	
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel52Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 5-3 Tutorial
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel53Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 5-4 Tutorial
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel54Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000002 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 5-5 Tutorial
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel55Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 5-6 Tutorial
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel56Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 5-mm Tutorial
	.4byte gWorldFiveMiniMarioBG @ Background Data
	.4byte gLevel5MMTutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x000000FF @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldSixTutorialLevelTable
gWorldSixTutorialLevelTable:
@ 6-1 Tutorial
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel61Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 6-2 Tutorial
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel62Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 6-3 Tutorial	
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel63Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 6-4 Tutorial
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel64Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 6-5 Tutorial	
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel65Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000024 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 6-6 Tutorial
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel66Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000080 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 6-mm Tutorial
	.4byte gWorldSixMiniMarioBG @ Background Data
	.4byte gLevel6MMTutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x000000FF @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gTutorialWorldTable
gTutorialWorldTable:

	.4byte 7 @ Level Count
	.4byte gWorldOneTutorialLevelTable
	.4byte gWorldOneData
	
	.4byte 7 @ Level Count
	.4byte gWorldTwoTutorialLevelTable
	.4byte gWorldTwoData
	
	.4byte 7 @ Level Count
	.4byte gWorldThreeTutorialLevelTable
	.4byte gWorldThreeData
	
	.4byte 7 @ Level Count
	.4byte gWorldFourTutorialLevelTable
	.4byte gWorldFourData
	
	.4byte 7 @ Level Count
	.4byte gWorldFiveTutorialLevelTable
	.4byte gWorldFiveData
	
	.4byte 7 @ Level Count
	.4byte gWorldSixTutorialLevelTable
	.4byte gWorldSixData
	
	.GLOBAL gUnknown_08B2D378
gUnknown_08B2D378:
	.4byte 6 @ World Count
	.4byte gTutorialWorldTable

	.GLOBAL gTutorialDemoInputTable
gTutorialDemoInputTable:

@ World One
	.4byte g11TutorialDemo
	.4byte g12TutorialDemo
	.4byte g13TutorialDemo
	.4byte g14TutorialDemo
	.4byte g15TutorialDemo
	.4byte g16TutorialDemo
	.4byte g1MMTutorialDemo

@ World Two
	.4byte g21TutorialDemo
	.4byte g22TutorialDemo
	.4byte g23TutorialDemo
	.4byte g24TutorialDemo
	.4byte g25TutorialDemo
	.4byte g26TutorialDemo
	.4byte g2MMTutorialDemo

@ World Three
	.4byte g31TutorialDemo
	.4byte g32TutorialDemo
	.4byte g33TutorialDemo
	.4byte g34TutorialDemo
	.4byte g35TutorialDemo
	.4byte g36TutorialDemo
	.4byte g3MMTutorialDemo
	
@ World Four
	.4byte g41TutorialDemo
	.4byte g42TutorialDemo
	.4byte g43TutorialDemo
	.4byte g44TutorialDemo
	.4byte g45TutorialDemo
	.4byte g46TutorialDemo
	.4byte g4MMTutorialDemo
	
@ World Five
	.4byte g51TutorialDemo
	.4byte g52TutorialDemo
	.4byte g53TutorialDemo
	.4byte g54TutorialDemo
	.4byte g55TutorialDemo
	.4byte g56TutorialDemo
	.4byte g5MMTutorialDemo
	
@ World Six
	.4byte g61TutorialDemo
	.4byte g62TutorialDemo
	.4byte g63TutorialDemo
	.4byte g64TutorialDemo
	.4byte g65TutorialDemo
	.4byte g66TutorialDemo
	.4byte g6MMTutorialDemo
	
@ Unknown
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_08B2D440
gUnknown_08B2D440:
	.INCBIN "baserom.gba", 0xB2D440, 0xB2D574-0xB2D440

	.GLOBAL gUnknown_08B2D574
gUnknown_08B2D574:
	.INCBIN "baserom.gba", 0xB2D574, 0xB2D578-0xB2D574

	.GLOBAL gUnknown_08B2D578
gUnknown_08B2D578:
	.INCBIN "baserom.gba", 0xB2D578, 0xB2DC74-0xB2D578

	.GLOBAL gUnknown_08B2DC74
gUnknown_08B2DC74:
	.INCBIN "baserom.gba", 0xB2DC74, 0xB2F070-0xB2DC74

	.GLOBAL gUnknown_08B2F070
gUnknown_08B2F070:
	.INCBIN "baserom.gba", 0xB2F070, 0xB2F5B8-0xB2F070

	.GLOBAL gUnknown_08B2F5B8
gUnknown_08B2F5B8:
	.INCBIN "baserom.gba", 0xB2F5B8, 0xB2FFDC-0xB2F5B8

	.GLOBAL gUnknown_08B2FFDC
gUnknown_08B2FFDC:
	.INCBIN "baserom.gba", 0xB2FFDC, 0xB30768-0xB2FFDC

	.GLOBAL gUnknown_08B30768
gUnknown_08B30768:
	.INCBIN "baserom.gba", 0xB30768, 0xB30F94-0xB30768

	.GLOBAL gUnknown_08B30F94
gUnknown_08B30F94:
	.INCBIN "baserom.gba", 0xB30F94, 0xB32118-0xB30F94

	.GLOBAL gUnknown_08B32118
gUnknown_08B32118:
	.INCBIN "baserom.gba", 0xB32118, 0xB35FC0-0xB32118

	.GLOBAL gUnknown_08B35FC0
gUnknown_08B35FC0:
	.INCBIN "baserom.gba", 0xB35FC0, 0xB37168-0xB35FC0

	.GLOBAL gUnknown_08B37168
gUnknown_08B37168:
	.INCBIN "baserom.gba", 0xB37168, 0xB3732C-0xB37168

	.GLOBAL gUnknown_08B3732C
gUnknown_08B3732C:
	.INCBIN "baserom.gba", 0xB3732C, 0xB37424-0xB3732C

	.GLOBAL gUnknown_08B37424
gUnknown_08B37424:
	.INCBIN "baserom.gba", 0xB37424, 0xB3742C-0xB37424
	
	.GLOBAL gCardEDataRevenge
gCardEDataRevenge:
	.INCBIN "assets/card-e/Revenge.bin"
	
	.GLOBAL gCardEDataTheLongWay
gCardEDataTheLongWay:
	.INCBIN "assets/card-e/The_Long_Way.bin"
	
	.GLOBAL gCardEDataOneShotBlue
gCardEDataOneShotBlue:
	.INCBIN "assets/card-e/One_Shot_Blue.bin"
	
	.GLOBAL gCardEDataEggAttack
gCardEDataEggAttack:
	.INCBIN "assets/card-e/Egg_Attack.bin"
	
	.GLOBAL gCardEDataLaterGator
gCardEDataLaterGator:
	.INCBIN "assets/card-e/Later_Gator.bin"
	
	.GLOBAL gCardEDataHotFeet
gCardEDataHotFeet:
	.INCBIN "assets/card-e/Hot_Feet.bin"
	
	.GLOBAL gCardEDataBooInABox
gCardEDataBooInABox:
	.INCBIN "assets/card-e/Boo_In_A_Box.bin"

	.GLOBAL gCardEDataTheThwamplet
gCardEDataTheThwamplet:
	.INCBIN "assets/card-e/The_Thwamplet.bin"

	.GLOBAL gCardEDataATrickyCandle
gCardEDataATrickyCandle:
	.INCBIN "assets/card-e/A_Tricky_Candle.bin"

	.GLOBAL gCardEDataKeyToTheKey
gCardEDataKeyToTheKey:
	.INCBIN "assets/card-e/Key_To_The_Key.bin"

	.GLOBAL gCardEDataDangerFlowers
gCardEDataDangerFlowers:
	.INCBIN "assets/card-e/Danger_Flowers.bin"

	.GLOBAL gCardEDataClimbAndFall
gCardEDataClimbAndFall:
	.INCBIN "assets/card-e/Climb_And_Fall.bin"

	.GLOBAL gCardEDataDummy2
gCardEDataDummy2:
	.INCBIN "assets/card-e/Dummy2.bin"

	.GLOBAL gUnknown_08B3961C
gUnknown_08B3961C:
	.INCBIN "baserom.gba", 0xB3961C, 0xB39C1C-0xB3961C

	.GLOBAL gUnknown_08B39C1C
gUnknown_08B39C1C:
	.INCBIN "baserom.gba", 0xB39C1C, 0xB39F1C-0xB39C1C

	.GLOBAL gUnknown_08B39F1C
gUnknown_08B39F1C:
	.INCBIN "baserom.gba", 0xB39F1C, 0xB39F48-0xB39F1C

	.GLOBAL gUnknown_08B39F48
gUnknown_08B39F48:
	.4byte 0x00000000
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000001
	.4byte 0x00000101
	.4byte 0x00000201	
	.4byte 0x00000002
	.4byte 0x00000102
	.4byte 0x00000202
	.4byte 0x00000003
	.4byte 0x00000103
	.4byte 0x00000203
	.4byte 0x00000004
	.4byte 0x00000104
	.4byte 0x00000204
	.4byte 0x00000005
	.4byte 0x00000105
	.4byte 0x00000205
	.4byte 0x00000006
	.4byte 0x00000106
	.4byte 0x00000206
	.4byte 0x00000007
	.4byte 0x00000107
	.4byte 0x00000207
	.4byte 0x00000008
	.4byte 0x00000108
	.4byte 0x00000208
	.4byte 0x00000009
	.4byte 0x00000109
	.4byte 0x00000209
	.4byte 0x0000000A

	.GLOBAL gUnknown_08B39FC4
gUnknown_08B39FC4:
	.4byte 0x00000000
	.4byte 0x00000040
	.4byte 0x00000080
	.4byte 0x000000C0
	.4byte 0x00000100
	.4byte 0x00000140
	.4byte 0x00000180
	.4byte 0x000001C0
	.4byte 0x00000200
	.4byte 0x00000240
	.4byte 0x00000280
	.4byte 0x000002C0
	.4byte 0x00000300
	.4byte 0x00000340
	.4byte 0x00000380
	.4byte 0x000003C0

	.GLOBAL gUnknown_08B3A004
gUnknown_08B3A004:
	.INCBIN "baserom.gba", 0xB3A004, 0xB3A0A8-0xB3A004

	.GLOBAL gUnknown_08B3A0A8
gUnknown_08B3A0A8:
	.INCBIN "baserom.gba", 0xB3A0A8, 0xB3A4AC-0xB3A0A8

	.GLOBAL gUnknown_08B3A4AC
gUnknown_08B3A4AC:
	.4byte 0x04000062 @ SOUND1CNT_H
	.4byte 0x04000064 @ SOUND1CNT_X
	.4byte 0x07FFF800
	
	.4byte 0x04000068 @ SOUND2CNT_L
	.4byte 0x0400006C @ SOUND2CNT_H
	.4byte 0x07FFF800
	
	.4byte 0x04000072 @ SOUND3CNT_H
	.4byte 0x04000074 @ SOUND3CNT_X
	.4byte 0x07FFF800
	
	.4byte 0x04000078 @ SOUND4CNT_L
	.4byte 0x0400007C @ SOUND4CNT_H
	.4byte 0x0000FFFF
	
	

	.GLOBAL gUnknown_08B3A4DC
gUnknown_08B3A4DC:
	.INCBIN "baserom.gba", 0xB3A4DC, 0xB3A4E0-0xB3A4DC

	.GLOBAL gUnknown_08B3A4E0
gUnknown_08B3A4E0:
	.INCBIN "baserom.gba", 0xB3A4E0, 0xD7B10C-0xB3A4E0

	.GLOBAL gUnknown_08D7B10C
gUnknown_08D7B10C:
	.INCBIN "baserom.gba", 0xD7B10C, 0xD7B110-0xD7B10C

	.GLOBAL gUnknown_08D7B110
gUnknown_08D7B110:
	.INCBIN "baserom.gba", 0xD7B110, 0xD7B116-0xD7B110

	.GLOBAL gUnknown_08D7B116
gUnknown_08D7B116:
	.INCBIN "baserom.gba", 0xD7B116, 0xEBFE90-0xD7B116

	.GLOBAL gUnknown_08EBFE90
gUnknown_08EBFE90:
	.INCBIN "baserom.gba", 0xEBFE90, 0xECCA3C-0xEBFE90
	
BGM_1AXM:
	.INCBIN "assets/music/BGM_1AXM.bin"
	
HAMMERXM:
	.INCBIN "assets/music/HAMMERXM.bin"
	
WINXM:
	.INCBIN "assets/music/WINXM.bin"
	
FAIL_1XM:
	.INCBIN "assets/music/FAIL_1XM.bin"
	
FAIL_2XM:
	.INCBIN "assets/music/FAIL_2XM.bin"
	
FAIL_3XM:
	.INCBIN "assets/music/FAIL_3XM.bin"
	
TIMEXM:
	.INCBIN "assets/music/TIMEXM.bin"
	
INTRO_2XM:
	.INCBIN "assets/music/INTRO_2XM.bin"
	
BGM_1CXM:
	.INCBIN "assets/music/BGM_1CXM.bin"
	
BGM_1BXM:
	.INCBIN "assets/music/BGM_1BXM.bin"
	
TITLEXM:
	.INCBIN "assets/music/TITLEXM.bin"
	
RESULTSXM:
	.INCBIN "assets/music/RESULTSXM.bin"
	
BGM_MM1XM:
	.INCBIN "assets/music/BGM_MM1XM.bin"
	
BOSS1XM:
	.INCBIN "assets/music/BOSS1XM.bin"
	
MM_PROTECTXM:
	.INCBIN "assets/music/MM_PROTECTXM.bin"
	
GAMEOVERXM:
	.INCBIN "assets/music/GAMEOVERXM.bin"
	
INTRO_1XM:
	.INCBIN "assets/music/INTRO_1XM.bin"
	
INTRO_3XM:
	.INCBIN "assets/music/INTRO_3XM.bin"
	
BGM_2AXM:
	.INCBIN "assets/music/BGM_2AXM.bin"
	
BGM_2BXM:
	.INCBIN "assets/music/BGM_2BXM.bin"
	
BGM_2CXM:
	.INCBIN "assets/music/BGM_2CXM.bin"
	
WIN2XM:
	.INCBIN "assets/music/WIN2XM.bin"
	
WIN3XM:
	.INCBIN "assets/music/WIN3XM.bin"
	
MOVIEXM:
	.INCBIN "assets/music/MOVIEXM.bin"
	
BGM_5AXM:
	.INCBIN "assets/music/BGM_5AXM.bin"
	
BGM_5BXM:
	.INCBIN "assets/music/BGM_5BXM.bin"
	
BGM_5CXM:
	.INCBIN "assets/music/BGM_5CXM.bin"
	
BGM_4AXM:
	.INCBIN "assets/music/BGM_4AXM.bin"
	
BGM_4BXM:
	.INCBIN "assets/music/BGM_4BXM.bin"
	
BGM_4CXM:
	.INCBIN "assets/music/BGM_4CXM.bin"
	
DK01XM:
	.INCBIN "assets/music/DK01XM.bin"
	
DK02XM:
	.INCBIN "assets/music/DK02XM.bin"
	
BGM_MM_INTROXM:
	.INCBIN "assets/music/BGM_MM_INTROXM.bin"
	
DK03XM:
	.INCBIN "assets/music/DK03XM.bin"
	
DK04XM:
	.INCBIN "assets/music/DK04XM.bin"
	
DK05XM:
	.INCBIN "assets/music/DK05XM.bin"
	
DK06XM:
	.INCBIN "assets/music/DK06XM.bin"
	
DK07XM:
	.INCBIN "assets/music/DK07XM.bin"
	
DK08XM:
	.INCBIN "assets/music/DK08XM.bin"
	
DK_BOSS01XM:
	.INCBIN "assets/music/DK_BOSS01XM.bin"
	
BOSS2XM:
	.INCBIN "assets/music/BOSS2XM.bin"
	
MOVIE2XM:
	.INCBIN "assets/music/MOVIE2XM.bin"
	
MINIGAMEXM:
	.INCBIN "assets/music/MINIGAMEXM.bin"
	
MOVIE3XM:
	.INCBIN "assets/music/MOVIE3XM.bin"
	
MOVIE4XM:
	.INCBIN "assets/music/MOVIE4XM.bin"
	
MOVIE5XM:
	.INCBIN "assets/music/MOVIE5XM.bin"
	
MOVIE6XM:
	.INCBIN "assets/music/MOVIE6XM.bin"
	
CREDITSXM:
	.INCBIN "assets/music/CREDITSXM.bin"
	
EXPERT_1XM:
	.INCBIN "assets/music/EXPERT_1XM.bin"
	
EXPERT_2XM:
	.INCBIN "assets/music/EXPERT_2XM.bin"
	
EXPERT_3XM:
	.INCBIN "assets/music/EXPERT_3XM.bin"
	
EXPERT_4XM:
	.INCBIN "assets/music/EXPERT_4XM.bin"
	
EXPERT_5XM:
	.INCBIN "assets/music/EXPERT_5XM.bin"
	
EXPERT_6XM:
	.INCBIN "assets/music/EXPERT_6XM.bin"
	
EXPERT_7XM:
	.INCBIN "assets/music/EXPERT_7XM.bin"
	
EXPERT_8XM:
	.INCBIN "assets/music/EXPERT_8XM.bin"
	
EXPERT_9XM:
	.INCBIN "assets/music/EXPERT_9XM.bin"
	
EXPERT_10XM:
	.INCBIN "assets/music/EXPERT_10XM.bin"
	
EXPERT_11XM:
	.INCBIN "assets/music/EXPERT_11XM.bin"
	
EXPERT_12XM:
	.INCBIN "assets/music/EXPERT_12XM.bin"
	
INTRO_FINALBOSSXM:
	.INCBIN "assets/music/INTRO_FINALBOSSXM.bin"
	
MIDCREDITSXM:
	.INCBIN "assets/music/MIDCREDITSXM.bin"
	
MIDBOSS_ENDXM:
	.INCBIN "assets/music/MIDBOSS_ENDXM.bin"
	
FAIL_4XM:
	.INCBIN "assets/music/FAIL_4XM.bin"
	
INTRO_FINALBOSS2XM:
	.INCBIN "assets/music/INTRO_FINALBOSS2XM.bin"
	
WIN_FINALBOSSXM:
	.INCBIN "assets/music/WIN_FINALBOSSXM.bin"
	
BOSS3XM:
	.INCBIN "assets/music/BOSS3XM.bin"
	
DK_BOSS02XM:
	.INCBIN "assets/music/DK_BOSS02XM.bin"
	
INTRO_MINIGAMEXM:
	.INCBIN "assets/music/INTRO_MINIGAMEXM.bin"
	
OUTRO_MINIGAMEXM:
	.INCBIN "assets/music/OUTRO_MINIGAMEXM.bin"
	
