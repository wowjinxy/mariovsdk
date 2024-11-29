	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08B2DEBC
gUnknown_08B2DEBC:
	.4byte 75  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 260  @ Start Time
	.4byte 400  @ End Time

	.4byte 96  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 462  @ Start Time
	.4byte 576  @ End Time
	
	.4byte 97  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 576  @ Start Time
	.4byte 736  @ End Time
	
	.4byte 98  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 780  @ Start Time
	.4byte 960  @ End Time
	
	.4byte 99  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 980 @ Start Time
	.4byte 1240  @ End Time
	
	.4byte 100  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1250 @ Start Time
	.4byte 1430  @ End Time
	
	.4byte 90  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1340 @ Start Time
	.4byte 1430  @ End Time
	
	.GLOBAL gUnknown_08B2DF2C
gUnknown_08B2DF2C:
	.ASCII "GRRRROOOOOOWLLLL!!"
	.skip 238 @ pad to 256 bytes for the text
	.2byte 16 @ text position X
	.2byte 128 @ text position Y
	.4byte 256 @ text speed
	.4byte 260 @ start frame
	.4byte 400 @ end frame

	.ASCII "Gimmie all your toys!!"
	.skip 234 @ pad to 256 bytes for the text
	.2byte 16 @ text position X
	.2byte 128 @ text position Y
	.4byte 256 @ text speed
	.4byte 462 @ start frame
	.4byte 576 @ end frame
	
	.ASCII "WAAAAAAAAAH!"
	.skip 244 @ pad to 256 bytes for the text
	.2byte 16 @ text position X
	.2byte 128 @ text position Y
	.4byte 256 @ text speed
	.4byte 576 @ start frame
	.4byte 736 @ end frame
	
	.ASCII "Whats going on?"
	.skip 241 @ pad to 256 bytes for the text
	.2byte 16 @ text position X
	.2byte 128 @ text position Y
	.4byte 256 @ text speed
	.4byte 780 @ start frame
	.4byte 960 @ end frame
	
	.ASCII "Donkey Kong stole\nall the mini marios!!"
	.skip 217 @ pad to 256 bytes for the text
	.2byte 16 @ text position X
	.2byte 128 @ text position Y
	.4byte 256 @ text speed
	.4byte 980 @ start frame
	.4byte 1240 @ end frame
	
	.ASCII "I will get them back!!"
	.skip 234 @ pad to 256 bytes for the text
	.2byte 16 @ text position X
	.2byte 128 @ text position Y
	.4byte 256 @ text speed
	.4byte 1250 @ start frame
	.4byte 1430 @ end frame
	
	.ASCII "Here we go!!"
	.skip 244 @ pad to 256 bytes for the text
	.2byte 16 @ text position X
	.2byte 144 @ text position Y
	.4byte 256 @ text speed
	.4byte 1340 @ start frame
	.4byte 1430 @ end frame
	
	@ camera panning data
	.INCBIN "baserom.gba", 0xB2E69C, 0xb2e768-0xB2E69C
	
	@ camera panning timers?
	@b2e768
	.4byte 462 @ start frame
	.4byte 576 @ end frame
	@b2e770
	.4byte 200 @ start frame
	.4byte 462 @ end frame
	@b2e778
	.4byte 0   @ start frame
	.4byte 200 @ end frame
	@b2e780
	.4byte 764 @ start frame
	.4byte 980 @ end frame
	@b2e788
	.4byte 1250 @ start frame
	.4byte 1467 @ end frame
	@b2e790
	.4byte 576 @ start frame
	.4byte 764 @ end frame
	@b2e798
	.4byte 980  @ start frame
	.4byte 1250 @ end frame
	
	.GLOBAL gUnknown_08B2E7A0
gUnknown_08B2E7A0:
	.INCBIN "baserom.gba", 0xB2E7A0, 0xB2E8D8-0xB2E7A0
	
	.GLOBAL gUnknown_08B2E8D8
gUnknown_08B2E8D8:
	.4byte 0x5BB @ Movie Length
	.2byte 0x0 @ Sprite count
	.skip 2
	.4byte 0x00000000  @ Sprite table
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x10
	.2byte 7 @ Sound Effect count
	.skip 2
	.4byte gUnknown_08B2DEBC  @ Sound Effects
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x20
	.2byte 7 @ Text Banks in text bank
	.skip 2
	.4byte gUnknown_08B2DF2C @ Text Bank
	.2byte 0x2 @ 
	.skip 2
	.4byte gUnknown_08B2E7A0  @ ptr offset 0x30
	
	.GLOBAL gUnknown_08B2E90C
gUnknown_08B2E90C:
	.4byte 0x00000001
	.4byte gUnknown_08B2E8D8 @ Movie Data -- Early Opening Cutscene
