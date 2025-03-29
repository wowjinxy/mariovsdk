	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data
	
	@ these make gUnlockEverythingButtonCode readable
	A_BUTTON = 0x0001 
	B_BUTTON = 0x0002
	SELECT_BUTTON = 0x0004
	START_BUTTON = 0x0008
	DPAD_RIGHT = 0x0010
	DPAD_LEFT = 0x0020
	DPAD_UP = 0x0040
	DPAD_DOWN = 0x0080
	R_BUTTON = 0x0100
	L_BUTTON = 0x0200

	.GLOBAL gUnlockEverythingButtonCode
gUnlockEverythingButtonCode:
	.2byte B_BUTTON   @ B
	.2byte A_BUTTON   @ A
	.2byte R_BUTTON   @ R
	.2byte DPAD_RIGHT @ Right
	.2byte L_BUTTON   @ L
	
	.2byte DPAD_LEFT  @ Left
	.2byte A_BUTTON   @ A
	.2byte DPAD_DOWN  @ Down
	.2byte DPAD_DOWN  @ Down
	.2byte R_BUTTON   @ R

	.GLOBAL gSelectedSaveFileNumPtr
gSelectedSaveFileNumPtr:
	.4byte 0x02032100

	.GLOBAL gLastLevelEWorld
gLastLevelEWorld:
	.4byte 0x02032108

	.GLOBAL gScreenModeRelatedPtr
gScreenModeRelatedPtr:
	.4byte 0x02032104 

	.GLOBAL gSaveFilesPtr
gSaveFilesPtr:
	.4byte 0x02032110
