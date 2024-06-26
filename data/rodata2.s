	.SECTION .rodata

	.ALIGN 2
	.ASCII "MultiSio010918\0"

	.ALIGN 2
	.GLOBAL gTextSendingCompleted
gTextSendingCompleted:
	.ASCII "SENDING COMPLETED\n\n"
	.ASCII "Press A Button to Resend\n"
	.ASCII "Press B Button to Cancel.\0"

	.ALIGN 2
	
	.GLOBAL gTextSending
gTextSending:
	.ASCII "SENDING...\n\n"
	.ASCII "Please DO NOT TURN OFF\n"
	.ASCII "Game Boy Advance Systems\n"
	.ASCII "or Disconnect the\n"
	.ASCII "Game Boy Advance\n"
	.ASCII "Game Link cable.\0"

	.ALIGN 2
	.GLOBAL gTextReadyToSendPressA
gTextReadyToSendPressA:
	.ASCII "READY TO SEND\n\n"
	.ASCII "Press A Button on GBA with\n"
	.ASCII "Mario vs. Donkey Kong to\n"
	.ASCII "begin sending new level to.\0"

	.ALIGN 2
	.GLOBAL gTextReadyToSendLink
gTextReadyToSendLink:
	.ASCII "READY TO SEND\n\n"
	.ASCII "Link e-Reader to\n"
	.ASCII "Mario vs. Donkey Kong and\n"
	.ASCII "select the e-Reader card\n"
	.ASCII "Menu and ADD LEVEL to begin.\n"
	.ASCII "Press B Button to Cancel\0"

	.ALIGN 2
	.GLOBAL gTextLostAll
gTextLostAll:
	.ASCII "LOST ALL\0"

	.ALIGN 2
	.GLOBAL gTextMiniMarios
gTextMiniMarios:
	.ASCII "MINI MARIOS\0"

	.ALIGN 2
	.GLOBAL gTextGetTOYCards
gTextGetTOYCards:
	.ASCII "GET TOY CARDS!\0"

	.ALIGN 2
	.GLOBAL gUnknown_08076F94
gUnknown_08076F94:
	.4byte 0x003A3938

	.GLOBAL gUnknown_08076F98
gUnknown_08076F98:
	.4byte 0xFFF00000
	.4byte 0x00000010

	.GLOBAL gUnknown_08076FA0
gUnknown_08076FA0:
	.4byte 0x01000000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x00000100
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_08076FB8
gUnknown_08076FB8:
	.4byte 0x003A3938

	.GLOBAL gUnknown_08076FBC
gUnknown_08076FBC:
	.4byte 0xFFF00000
	.4byte 0x00000010

	.GLOBAL gUnknown_08076FC4
gUnknown_08076FC4:
	.4byte 0x003A3938

	.GLOBAL gUnknown_08076FC8
gUnknown_08076FC8:
	.4byte 0xFFF00000
	.4byte 0x00000010

	.GLOBAL gUnknown_08076FD0
gUnknown_08076FD0:
	.4byte 0x003A3938
	
	.GLOBAL gUnknown_08076FD4
gUnknown_08076FD4:
	.4byte 0xFFF00000
	.4byte 0x00000010
	
	.2byte 0x0002 @ ??? 
	.INCBIN "assets/unused/DKPlusLeftoverPalette.bin" @ header says size of 0x2A6, seems to include the header
	.2byte 0x0004 @ ???
	.INCBIN "assets/unused/DKPlusLeftoverPalette2.bin" @ header says size of 0x2AE, seems to include header
