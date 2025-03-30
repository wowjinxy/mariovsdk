	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

@ World 1 mini mario action map

	.GLOBAL gMiniMarioActionMap11Plus_080A8718
gMiniMarioActionMap11Plus_080A8718:
	.INCBIN "baserom.gba", 0xA8718, 0xA8C18-0xA8718

	.GLOBAL gMiniMarioActionMap12Plus_080A8C18
gMiniMarioActionMap12Plus_080A8C18:
	.INCBIN "baserom.gba", 0xA8C18, 0xA9098-0xA8C18

	.GLOBAL gMiniMarioActionMap13Plus_080A9098
gMiniMarioActionMap13Plus_080A9098:
	.INCBIN "baserom.gba", 0xA9098, 0xA9558-0xA9098

	.GLOBAL gMiniMarioActionMap14Plus_080A9558
gMiniMarioActionMap14Plus_080A9558:
	.INCBIN "baserom.gba", 0xA9558, 0xA999C-0xA9558

	.GLOBAL gMiniMarioActionMap15Plus_080A999C
gMiniMarioActionMap15Plus_080A999C:
	.INCBIN "baserom.gba", 0xA999C, 0xA9D9C-0xA999C

	.GLOBAL gMiniMarioActionMap16Plus_080A9D9C
gMiniMarioActionMap16Plus_080A9D9C:
	.INCBIN "baserom.gba", 0xA9D9C, 0xAA178-0xA9D9C
	
	.GLOBAL gMiniMarioActionMap1MM_080AA178
gMiniMarioActionMap1MM_080AA178:
	.INCBIN "baserom.gba", 0xAA178, 0xAA778-0xAA178
	
@ World 2 mini mario action map
	
	.GLOBAL gMiniMarioActionMap21Plus_080AA778
gMiniMarioActionMap21Plus_080AA778:
	.INCBIN "baserom.gba", 0xAA778, 0xAAC64-0xAA778

	.GLOBAL gMiniMarioActionMap22Plus_080AAC64
gMiniMarioActionMap22Plus_080AAC64:
	.INCBIN "baserom.gba", 0xAAC64, 0xAAEBC-0xAAC64

	.GLOBAL gMiniMarioActionMap23Plus_080AAEBC
gMiniMarioActionMap23Plus_080AAEBC:
	.INCBIN "baserom.gba", 0xAAEBC, 0xAB3CC-0xAAEBC

	.GLOBAL gMiniMarioActionMap24Plus_080AB3CC
gMiniMarioActionMap24Plus_080AB3CC:
	.INCBIN "baserom.gba", 0xAB3CC, 0xAB624-0xAB3CC

	.GLOBAL gMiniMarioActionMap25Plus_080AB624
gMiniMarioActionMap25Plus_080AB624:
	.INCBIN "baserom.gba", 0xAB624, 0xABBF4-0xAB624

	.GLOBAL gMiniMarioActionMap26Plus_080ABBF4
gMiniMarioActionMap26Plus_080ABBF4:
	.INCBIN "baserom.gba", 0xABBF4, 0xABE4C-0xABBF4
	
	.GLOBAL gMiniMarioActionMap2MM_080ABE4C
gMiniMarioActionMap2MM_080ABE4C:
	.INCBIN "baserom.gba", 0xABE4C, 0xAC54C-0xABE4C

@ World 3 mini mario action map

	.GLOBAL gMiniMarioActionMap31Plus_080AC54C
gMiniMarioActionMap31Plus_080AC54C:
	.INCBIN "baserom.gba", 0xAC54C, 0xAC9D4-0xAC54C

	.GLOBAL gMiniMarioActionMap32Plus_080AC9D4
gMiniMarioActionMap32Plus_080AC9D4:
	.INCBIN "baserom.gba", 0xAC9D4, 0xACD00-0xAC9D4

	.GLOBAL gMiniMarioActionMap33Plus_080ACD00
gMiniMarioActionMap33Plus_080ACD00:
	.INCBIN "baserom.gba", 0xACD00, 0xAD0E8-0xACD00

	.GLOBAL gMiniMarioActionMap34Plus_080AD0E8
gMiniMarioActionMap34Plus_080AD0E8:
	.INCBIN "baserom.gba", 0xAD0E8, 0xAD418-0xAD0E8

	.GLOBAL gMiniMarioActionMap35Plus_080AD418
gMiniMarioActionMap35Plus_080AD418:
	.INCBIN "baserom.gba", 0xAD418, 0xAD814-0xAD418

	.GLOBAL gMiniMarioActionMap36Plus_080AD814
gMiniMarioActionMap36Plus_080AD814:
	.INCBIN "baserom.gba", 0xAD814, 0xADE10-0xAD814

	.GLOBAL gMiniMarioActionMap3MM_080ADE10
gMiniMarioActionMap3MM_080ADE10:
	.INCBIN "baserom.gba", 0xADE10, 0xAE610-0xADE10

@ World 4 mini mario action map

	.GLOBAL gMiniMarioActionMap41Plus_080AE610
gMiniMarioActionMap41Plus_080AE610:
	.INCBIN "baserom.gba", 0xAE610, 0xAEB38-0xAE610

	.GLOBAL gMiniMarioActionMap42Plus_080AEB38
gMiniMarioActionMap42Plus_080AEB38:
	.INCBIN "baserom.gba", 0xAEB38, 0xAF038-0xAEB38

	.GLOBAL gMiniMarioActionMap43Plus_080AF038
gMiniMarioActionMap43Plus_080AF038:
	.INCBIN "baserom.gba", 0xAF038, 0xAF538-0xAF038

	.GLOBAL gMiniMarioActionMap44Plus_080AF538
gMiniMarioActionMap44Plus_080AF538:
	.INCBIN "baserom.gba", 0xAF538, 0xAF90C-0xAF538

	.GLOBAL gMiniMarioActionMap45Plus_080AF90C
gMiniMarioActionMap45Plus_080AF90C:
	.INCBIN "baserom.gba", 0xAF90C, 0xAFCB4-0xAF90C

	.GLOBAL gMiniMarioActionMap46Plus_080AFCB4
gMiniMarioActionMap46Plus_080AFCB4:
	.INCBIN "baserom.gba", 0xAFCB4, 0xB00EC-0xAFCB4

	.GLOBAL gMiniMarioActionMap4MM_080B00EC
gMiniMarioActionMap4MM_080B00EC:
	.INCBIN "baserom.gba", 0xB00EC, 0xB07EC-0xB00EC

@ World 5 mini mario action map

	.GLOBAL gMiniMarioActionMap51Plus_080B07EC
gMiniMarioActionMap51Plus_080B07EC:
	.INCBIN "baserom.gba", 0xB07EC, 0xB0D2C-0xB07EC

	.GLOBAL gMiniMarioActionMap52Plus_080B0D2C
gMiniMarioActionMap52Plus_080B0D2C:
	.INCBIN "baserom.gba", 0xB0D2C, 0xB116C-0xB0D2C

	.GLOBAL gMiniMarioActionMap53Plus_080B116C
gMiniMarioActionMap53Plus_080B116C:
	.INCBIN "baserom.gba", 0xB116C, 0xB157C-0xB116C

	.GLOBAL gMiniMarioActionMap54Plus_080B157C
gMiniMarioActionMap54Plus_080B157C:
	.INCBIN "baserom.gba", 0xB157C, 0xB1B58-0xB157C

	.GLOBAL gMiniMarioActionMap55Plus_080B1B58
gMiniMarioActionMap55Plus_080B1B58:
	.INCBIN "baserom.gba", 0xB1B58, 0xB20A0-0xB1B58

	.GLOBAL gMiniMarioActionMap56Plus_080B20A0
gMiniMarioActionMap56Plus_080B20A0:
	.INCBIN "baserom.gba", 0xB20A0, 0xB25E0-0xB20A0

	.GLOBAL gMiniMarioActionMap5MM_080B25E0
gMiniMarioActionMap5MM_080B25E0:
	.INCBIN "baserom.gba", 0xB25E0, 0xB2D60-0xB25E0

@ World 6 mini mario action map

	.GLOBAL gMiniMarioActionMap61Plus_080B2D60
gMiniMarioActionMap61Plus_080B2D60:
	.INCBIN "baserom.gba", 0xB2D60, 0xB3220-0xB2D60

	.GLOBAL gMiniMarioActionMap62Plus_080B3220
gMiniMarioActionMap62Plus_080B3220:
	.INCBIN "baserom.gba", 0xB3220, 0xB3760-0xB3220

	.GLOBAL gMiniMarioActionMap63Plus_080B3760
gMiniMarioActionMap63Plus_080B3760:
	.INCBIN "baserom.gba", 0xB3760, 0xB3BD4-0xB3760

	.GLOBAL gMiniMarioActionMap64Plus_080B3BD4
gMiniMarioActionMap64Plus_080B3BD4:
	.INCBIN "baserom.gba", 0xB3BD4, 0xB4094-0xB3BD4

	.GLOBAL gMiniMarioActionMap65Plus_080B4094
gMiniMarioActionMap65Plus_080B4094:
	.INCBIN "baserom.gba", 0xB4094, 0xB43B4-0xB4094

	.GLOBAL gMiniMarioActionMap66Plus_080B43B4
gMiniMarioActionMap66Plus_080B43B4:
	.INCBIN "baserom.gba", 0xB43B4, 0xB496C-0xB43B4

	.GLOBAL gMiniMarioActionMap6MM_080B496C
gMiniMarioActionMap6MM_080B496C:
	.INCBIN "baserom.gba", 0xB496C, 0xB512C-0xB496C
