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
