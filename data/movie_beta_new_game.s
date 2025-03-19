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
	.GLOBAL gUnknown_08B2E69C
gUnknown_08B2E69C:
	.4byte 0x00010000 @ Start position
	.4byte 0x00000000 @ Unknown
	.4byte 0x000001CE @ Start frame
	.4byte 0x00000000 @ End position
	.4byte 0xFFFFEDB7 @ Pan direction/speed?
	.4byte 0x000001DC @ End frame 
	
	@b2e6b4 - unreferenced (probably extenstion of above)
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFEC
	.4byte 0x00000240
	
	.GLOBAL gUnknown_08B2E6C0
gUnknown_08B2E6C0:
	.4byte 0x00000000 @ Start position
	.4byte 0x00000000 @ Unknown
	.4byte 0x000000C9 @ Start frame
	.4byte 0x00005800 @ End position
	.4byte 0x0000017D @ Pan direction/speed?
	.4byte 0x00000104 @ End frame 

	.GLOBAL gUnknown_08B2E6D8
gUnknown_08B2E6D8:
	.4byte 0x00005800 @ Start position
	.4byte 0x00000000 @ Unknown
	.4byte 0x0000019A @ Start frame
	.4byte 0x00003000 @ End position
	.4byte 0xFFFFFDA6 @ Pan direction/speed?
	.4byte 0x000001AB @ End frame 

	@b2e6f0 - unreferenced (probably extenstion of above)
	.4byte 0x00010000
	.4byte 0x000005F1
	.4byte 0x000001CE
	
	.GLOBAL gUnknown_08B2E6FC
gUnknown_08B2E6FC:
	.4byte 0x00002800 @ Start position
	.4byte 0x00000000 @ Unknown
	.4byte 0x00000000 @ Start frame
	.4byte 0x00000000 @ End position
	.4byte 0xFFFFFFCD @ Pan direction/speed?
	.4byte 0x000000C8 @ End frame 

	.GLOBAL gUnknown_08B2E714
gUnknown_08B2E714:
	.4byte 0x00010000 @ Start position
	.4byte 0x00000000 @ Unknown
	.4byte 0x000002FC @ Start frame
	.4byte 0x0000B000 @ End position
	.4byte 0xFFFFFB00 @ Pan direction/speed?
	.4byte 0x0000030C @ End frame 

	.GLOBAL gUnknown_08B2E72C
gUnknown_08B2E72C:
	.4byte 0x0000B000 @ Start position
	.4byte 0x00000000 @ Unknown
	.4byte 0x00000596 @ Start frame
	.4byte 0x0000DD00 @ End position
	.4byte 0x00000417 @ Pan direction/speed?
	.4byte 0x000005A1 @ End frame 

	.GLOBAL gUnknown_08B2E744
gUnknown_08B2E744:
	.4byte 0x0000DD00 @ Start position
	.4byte 0x00000000 @ Unknown
	.4byte 0x000005B4 @ Start frame
	.4byte 0x00000000 @ End position
	.4byte 0xFFFFE06E @ Pan direction/speed?
	.4byte 0x000005BB @ End frame 

	.GLOBAL gUnknown_08B2E75C
gUnknown_08B2E75C:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000241
	
	@ camera panning timers?
	.GLOBAL gUnknown_08B2E768
gUnknown_08B2E768:
	.4byte 462 @ start frame
	.4byte 576 @ end frame
	
	.GLOBAL gUnknown_08B2E770
gUnknown_08B2E770:
	.4byte 200 @ start frame
	.4byte 462 @ end frame
	
	.GLOBAL gUnknown_08B2E778
gUnknown_08B2E778:
	.4byte 0   @ start frame
	.4byte 200 @ end frame
	
	.GLOBAL gUnknown_08B2E780
gUnknown_08B2E780:
	.4byte 764 @ start frame
	.4byte 980 @ end frame
	
	.GLOBAL gUnknown_08B2E788
gUnknown_08B2E788:
	.4byte 1250 @ start frame
	.4byte 1467 @ end frame
	
	.GLOBAL gUnknown_08B2E790
gUnknown_08B2E790:
	.4byte 576 @ start frame
	.4byte 764 @ end frame
	
	.GLOBAL gUnknown_08B2E798
gUnknown_08B2E798:
	.4byte 980  @ start frame
	.4byte 1250 @ end frame
	
	.GLOBAL gUnknown_08B2E7A0
gUnknown_08B2E7A0:
	@Scene bank 0
	.4byte 0x00000000 @ BG layer 0 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00

	.4byte gUnusedToadDKCutscene @ BG layer 1 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01

	.4byte gUnusedToadDKCutscene @ BG layer 2 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01

	.4byte gUnusedToadDKCutscene @ BG layer 3 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01

	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x03
	.byte 0x02
	.byte 0x01
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x01
	.byte 0x00
	.byte 0x01

	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 0 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000

	.2byte 0x0003 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2E69C @ BG 1 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer

	.2byte 0x0005 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2E6C0 @ BG 2 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer

	.2byte 0x0002 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2E6FC @ BG 3 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer

	.2byte 0x0000 @ BG 0 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer

	.2byte 0x0001 @ BG 1 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2E768 @ Some timer pointer

	.2byte 0x0001 @ BG 2 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2E770 @ Some timer pointer

	.2byte 0x0001 @ BG 3 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2E778 @ Some timer pointer

	.2byte 0x0001 @ Unknown count
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000240 @ end frame?

	@Scene bank 1
	
	.4byte 0x00000000 @ BG layer 0 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00

	.4byte 0x00000000 @ BG layer 1 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00

	.4byte gUnusedToadMarioCutscene @ BG layer 2 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01

	.4byte gUnusedToadMarioCutscene @ BG layer 3 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01

	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x03
	.byte 0x02
	.byte 0x01
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04
	.byte 0x00
	.byte 0x02
	.byte 0x02
	.byte 0x03
	.byte 0x01
	.byte 0x00
	.byte 0x01

	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 0 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer

	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 1 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer

	.2byte 0x0006 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2E714 @ BG 2 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer

	.2byte 0x0002 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2E75C @ BG 3 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer

	.2byte 0x0000 @ BG 0 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer

	.2byte 0x0000 @ BG 1 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer

	.2byte 0x0002 @ BG 2 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2E780 @ Some timer pointer

	.2byte 0x0002 @ BG 3 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2E790 @ Some timer pointer

	.2byte 0x0001 @ Unknown count
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x000005BB @ end frame?
	
	
	.GLOBAL gUnknown_08B2E8D8
gUnknown_08B2E8D8:
	.4byte 0x5BB @ Movie Length
	.2byte 0 @ Sprite count
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
	.2byte 2 @ Scene Banks
	.skip 2
	.4byte gUnknown_08B2E7A0 @ Scene Bank
	
	.GLOBAL gMovieBetaOpeningCutscene
gMovieBetaOpeningCutscene:
	.4byte 0x00000001
	.4byte gUnknown_08B2E8D8 @ Movie Data -- Early Opening Cutscene
