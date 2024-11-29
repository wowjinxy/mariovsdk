	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

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
	.INCBIN "baserom.gba", 0xA8718, 0xA8C18-0xA8718

	.GLOBAL gUnknown_080A8C18
gUnknown_080A8C18:
	.INCBIN "baserom.gba", 0xA8C18, 0xA9098-0xA8C18

	.GLOBAL gUnknown_080A9098
gUnknown_080A9098:
	.INCBIN "baserom.gba", 0xA9098, 0xA9558-0xA9098

	.GLOBAL gUnknown_080A9558
gUnknown_080A9558:
	.INCBIN "baserom.gba", 0xA9558, 0xA999C-0xA9558

	.GLOBAL gUnknown_080A999C
gUnknown_080A999C:
	.INCBIN "baserom.gba", 0xA999C, 0xA9D9C-0xA999C

	.GLOBAL gUnknown_080A9D9C
gUnknown_080A9D9C:
	.INCBIN "baserom.gba", 0xA9D9C, 0xAA778-0xA9D9C

	.GLOBAL gUnknown_080AA778
gUnknown_080AA778:
	.INCBIN "baserom.gba", 0xAA778, 0xAAC64-0xAA778

	.GLOBAL gUnknown_080AAC64
gUnknown_080AAC64:
	.INCBIN "baserom.gba", 0xAAC64, 0xAAEBC-0xAAC64

	.GLOBAL gUnknown_080AAEBC
gUnknown_080AAEBC:
	.INCBIN "baserom.gba", 0xAAEBC, 0xAB3CC-0xAAEBC

	.GLOBAL gUnknown_080AB3CC
gUnknown_080AB3CC:
	.INCBIN "baserom.gba", 0xAB3CC, 0xAB624-0xAB3CC

	.GLOBAL gUnknown_080AB624
gUnknown_080AB624:
	.INCBIN "baserom.gba", 0xAB624, 0xABBF4-0xAB624

	.GLOBAL gUnknown_080ABBF4
gUnknown_080ABBF4:
	.INCBIN "baserom.gba", 0xABBF4, 0xAC54C-0xABBF4

	.GLOBAL gUnknown_080AC54C
gUnknown_080AC54C:
	.INCBIN "baserom.gba", 0xAC54C, 0xAC9D4-0xAC54C

	.GLOBAL gUnknown_080AC9D4
gUnknown_080AC9D4:
	.INCBIN "baserom.gba", 0xAC9D4, 0xACD00-0xAC9D4

	.GLOBAL gUnknown_080ACD00
gUnknown_080ACD00:
	.INCBIN "baserom.gba", 0xACD00, 0xAD0E8-0xACD00

	.GLOBAL gUnknown_080AD0E8
gUnknown_080AD0E8:
	.INCBIN "baserom.gba", 0xAD0E8, 0xAD418-0xAD0E8

	.GLOBAL gUnknown_080AD418
gUnknown_080AD418:
	.INCBIN "baserom.gba", 0xAD418, 0xAD814-0xAD418

	.GLOBAL gUnknown_080AD814
gUnknown_080AD814:
	.INCBIN "baserom.gba", 0xAD814, 0xAE610-0xAD814

	.GLOBAL gUnknown_080AE610
gUnknown_080AE610:
	.INCBIN "baserom.gba", 0xAE610, 0xAEB38-0xAE610

	.GLOBAL gUnknown_080AEB38
gUnknown_080AEB38:
	.INCBIN "baserom.gba", 0xAEB38, 0xAF038-0xAEB38

	.GLOBAL gUnknown_080AF038
gUnknown_080AF038:
	.INCBIN "baserom.gba", 0xAF038, 0xAF538-0xAF038

	.GLOBAL gUnknown_080AF538
gUnknown_080AF538:
	.INCBIN "baserom.gba", 0xAF538, 0xAF90C-0xAF538

	.GLOBAL gUnknown_080AF90C
gUnknown_080AF90C:
	.INCBIN "baserom.gba", 0xAF90C, 0xAFCB4-0xAF90C

	.GLOBAL gUnknown_080AFCB4
gUnknown_080AFCB4:
	.INCBIN "baserom.gba", 0xAFCB4, 0xB07EC-0xAFCB4

	.GLOBAL gUnknown_080B07EC
gUnknown_080B07EC:
	.INCBIN "baserom.gba", 0xB07EC, 0xB0D2C-0xB07EC

	.GLOBAL gUnknown_080B0D2C
gUnknown_080B0D2C:
	.INCBIN "baserom.gba", 0xB0D2C, 0xB116C-0xB0D2C

	.GLOBAL gUnknown_080B116C
gUnknown_080B116C:
	.INCBIN "baserom.gba", 0xB116C, 0xB157C-0xB116C

	.GLOBAL gUnknown_080B157C
gUnknown_080B157C:
	.INCBIN "baserom.gba", 0xB157C, 0xB1B58-0xB157C

	.GLOBAL gUnknown_080B1B58
gUnknown_080B1B58:
	.INCBIN "baserom.gba", 0xB1B58, 0xB20A0-0xB1B58

	.GLOBAL gUnknown_080B20A0
gUnknown_080B20A0:
	.INCBIN "baserom.gba", 0xB20A0, 0xB2D60-0xB20A0

	.GLOBAL gUnknown_080B2D60
gUnknown_080B2D60:
	.INCBIN "baserom.gba", 0xB2D60, 0xB3220-0xB2D60

	.GLOBAL gUnknown_080B3220
gUnknown_080B3220:
	.INCBIN "baserom.gba", 0xB3220, 0xB3760-0xB3220

	.GLOBAL gUnknown_080B3760
gUnknown_080B3760:
	.INCBIN "baserom.gba", 0xB3760, 0xB3BD4-0xB3760

	.GLOBAL gUnknown_080B3BD4
gUnknown_080B3BD4:
	.INCBIN "baserom.gba", 0xB3BD4, 0xB4094-0xB3BD4

	.GLOBAL gUnknown_080B4094
gUnknown_080B4094:
	.INCBIN "baserom.gba", 0xB4094, 0xB43B4-0xB4094

	.GLOBAL gUnknown_080B43B4
gUnknown_080B43B4:
	.INCBIN "baserom.gba", 0xB43B4, 0xB512C-0xB43B4

	.GLOBAL gWorldSpriteTableData
gWorldSpriteTableData:
	.4byte gUnknown_087140B8 @ TODO: replace this with gWorldOneSpriteTable once split
	.4byte 37
	.4byte 15 @ Sprite count

	.4byte gUnknown_08723440 @ TODO: replace this with gWorldTwoSpriteTable once split
	.4byte 38
	.4byte 21 @ Sprite count
	
	.4byte gUnknown_087326E8 @ TODO: replace this with gWorldThreeSpriteTable once split
	.4byte 39
	.4byte 22 @ Sprite count
	
	.4byte gUnknown_0875A154 @ TODO: replace this with gWorldFourSpriteTable once split
	.4byte 40
	.4byte 28 @ Sprite count

	.4byte gUnknown_08771D24 @ TODO: replace this with gWorldFiveSpriteTable once split
	.4byte 41
	.4byte 15 @ Sprite count
	
	.4byte gUnknown_08796104 @ TODO: replace this with gWorldSixSpriteTable once split
	.4byte 42
	.4byte 20 @ Sprite count	

	.GLOBAL gBossOneSpriteTableData
gBossOneSpriteTableData:
	.4byte gUnknown_087AC8DC @ TODO: replace this with gBossOneSpriteTable once split
	.4byte 62
	.4byte 14 @ Sprite count

	.GLOBAL gBossTwoSpriteTableData
gBossTwoSpriteTableData:
	.4byte gUnknown_087AFAA0 @ TODO: replace this with gBossTwoSpriteTable once split
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
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0000009B
	.4byte 0x0000009C
	.4byte 0x0000009D
	.4byte 0x0000009E

	.GLOBAL gUnknown_080B51D8
gUnknown_080B51D8:
	.2byte 0x0000
	.2byte 0x0019
	.2byte 0x0032
	.2byte 0x004D
	.2byte 0x006A
	.2byte 0x0088
	.2byte 0x00AB
	.2byte 0x00D2
	.2byte 0x00FF
	.2byte 0x0137
	.2byte 0x017F
	.2byte 0x01DE
	.2byte 0x026A
	.2byte 0x034B
	.2byte 0x0506
	.2byte 0x0A00

	.GLOBAL gUnknown_080B51F8
gUnknown_080B51F8:
	.2byte 0x0000
	.2byte 0x0019
	.2byte 0x0031
	.2byte 0x004A
	.2byte 0x0061
	.2byte 0x0078
	.2byte 0x008E
	.2byte 0x00A2
	.2byte 0x00B5
	.2byte 0x00C5
	.2byte 0x00D4
	.2byte 0x00E1
	.2byte 0x00EC
	.2byte 0x00F4
	.2byte 0x00FB
	.2byte 0x00FE
	.2byte 0x0100
	.2byte 0x0000

	.GLOBAL gUnknown_080B521C
gUnknown_080B521C:
	.INCBIN "assets/objects/key_blinking.bin"

	.GLOBAL gUnknown_080B5300
gUnknown_080B5300:
	.4byte 0x00002000
	.4byte 0x00003000
	.4byte 0x00004000
	.4byte 0x00003800
	.4byte 0x00002800
	.4byte 0x00003000
	.4byte 0x00002800
	.4byte 0x00003800
	.4byte 0x00002000
	.4byte 0x00004000

	.GLOBAL gUnknown_080B5328
gUnknown_080B5328:
	.INCBIN "assets/gUnknown_080B5328.bin"

	.GLOBAL gUnknown_080B53F4
gUnknown_080B53F4:
	.4byte 0x080aa178
	.4byte 0x00000000
	.4byte 0x080abe4c
	.4byte 0x00000000
	.4byte 0x080ade10
	.4byte 0x00000000
	.4byte 0x080b00ec
	.4byte 0x00000000
	.4byte 0x080b25e0
	.4byte 0x00000000
	.4byte 0x080b496c
	.4byte 0x00000000

	.GLOBAL gUnknown_080B5424
gUnknown_080B5424:
	.INCBIN "baserom.gba", 0xB5424, 0xB5F80-0xB5424

	.GLOBAL gUnknown_080B5F80
gUnknown_080B5F80:
	.INCBIN "baserom.gba", 0xB5F80, 0xB6C30-0xB5F80

	.GLOBAL gUnknown_080B6C30
gUnknown_080B6C30:
	.4byte gUnknown_080A8718
	.4byte 0x00000000
	.4byte gUnknown_080A8C18
	.4byte 0x00000000
	.4byte gUnknown_080A9098
	.4byte 0x00000000
	.4byte gUnknown_080A9558
	.4byte 0x00000000
	.4byte gUnknown_080A999C
	.4byte 0x00000000
	.4byte gUnknown_080A9D9C
	.4byte 0x00000000
	.4byte gUnknown_080AA778
	.4byte 0x00000000
	.4byte gUnknown_080AAC64
	.4byte 0x00000000
	.4byte gUnknown_080AAEBC
	.4byte 0x00000000
	.4byte gUnknown_080AB3CC
	.4byte 0x00000000
	.4byte gUnknown_080AB624
	.4byte 0x00000000
	.4byte gUnknown_080ABBF4
	.4byte 0x00000000
	.4byte gUnknown_080AC54C
	.4byte 0x00000000
	.4byte gUnknown_080AC9D4
	.4byte 0x00000000
	.4byte gUnknown_080ACD00
	.4byte 0x00000000
	.4byte gUnknown_080AD0E8
	.4byte 0x00000000
	.4byte gUnknown_080AD418
	.4byte 0x00000000
	.4byte gUnknown_080AD814
	.4byte 0x00000000
	.4byte gUnknown_080AE610
	.4byte 0x00000000
	.4byte gUnknown_080AEB38
	.4byte 0x00000000
	.4byte gUnknown_080AF038
	.4byte 0x00000000
	.4byte gUnknown_080AF538
	.4byte 0x00000000
	.4byte gUnknown_080AF90C
	.4byte 0x00000000
	.4byte gUnknown_080AFCB4
	.4byte 0x00000000
	.4byte gUnknown_080B07EC
	.4byte 0x00000000
	.4byte gUnknown_080B0D2C
	.4byte 0x00000000
	.4byte gUnknown_080B116C
	.4byte 0x00000000
	.4byte gUnknown_080B157C
	.4byte 0x00000000
	.4byte gUnknown_080B1B58
	.4byte 0x00000000
	.4byte gUnknown_080B20A0
	.4byte 0x00000000
	.4byte gUnknown_080B2D60
	.4byte 0x00000000
	.4byte gUnknown_080B3220
	.4byte 0x00000000
	.4byte gUnknown_080B3760
	.4byte 0x00000000
	.4byte gUnknown_080B3BD4
	.4byte 0x00000000
	.4byte gUnknown_080B4094
	.4byte 0x00000000
	.4byte gUnknown_080B43B4
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

	.INCBIN "baserom.gba", 0xB6D8C, 0xB77F4-0xB6D8C

	.GLOBAL gUnknown_080B77F4
gUnknown_080B77F4:
	.INCBIN "baserom.gba", 0xB77F4, 0xB8584-0xB77F4
