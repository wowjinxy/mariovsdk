#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "savefile.h"

void level_play_loop(void) 
{
  u32 uVar2;
    u16 sp4;
    u16 sp6;
    u16 sp8;
    u32 r6;
    
  sp4 = 0;
  sp6 = gUnknown_03001930;
  sp8 = gObjVRAMCopyOffset_0300192C;
  REG_DISPCNT &= 0xFF7F;
    DmaFill32(3, 0xA0, gOamBuffer, 0x400);
  sub_0803D248(gMainState - 10 < 2, &sp4, &sp6, &sp8);
  sub_08031AD4(&sp4);
  sub_080322A8(&sp4, &sp6, &sp8);
    DmaCopy16(3, gOamBuffer, OAM, 0x400);
  sub_0802BA38(gSomeVRAMAddr_03000E80,6,gEWRAMBasePtr->unk800C,6);
  if ((((gUnknown_030009EC != '\0') || (gMainState == MAIN_STATE_UNKNOWN_10)) || (gMainState == MAIN_STATE_LEVEL_EDIT)) || ((gUnknown_03001A1C & 0x1000) != 0)) {
        for (uVar2 = 0x0; uVar2 < gEWRAMBasePtr->unkC00C; uVar2 += 0x400) {
            DmaCopy16(3, &gEWRAMBasePtr->unk800C[uVar2], gSomeVRAMAddr_03000E80 + uVar2 * 2, 0x800);
            if (((gUnknown_030009D0 & 0x18) == 0) &&
               ((gCurrentWorld != 0x2 || ((gNextLevelInLevelTable.levelType & 2) == 0)))) {
                DmaCopy16(3, &gEWRAMBasePtr->unk800C[uVar2+0x1000], gSomeVRAMAddr_03000E90 + uVar2 * 2, 0x800);
            }
        }
    gUnknown_030009EC = 0x0;
  }
  sub_0801B4BC();
}

void after_tutorial_init_callback(void) {
	
    if (gLevelEWorldFlag == 0) {
        sub_0800F6EC(gCurrentWorld,gNextLevelID);
    }
    else {
        if ((gUnknown_0807CA98[0].base[gNextLevelID]) != 0){
        sub_0802EDAC(gNextLevelID);
        } else {
             change_main_state(MAIN_STATE_EWORLD_LEVEL_SELECT, NO_FADE);   
            return;
        }
    }
    sub_08004428(gNextLevelInLevelTable.unk0->levelData);
    change_main_state(MAIN_STATE_LEVEL_PLAY, NO_FADE);
}

void level_play_init_callback(void) {

    gUnknown_03000BD0 = 1;
    arena_restore_head(0);
    sub_08040D50();
    sub_0805727C();
    sub_08038B18();
    sub_0802B998();
    sub_080069BC();
    gUnknown_030009D0 = (u32)gNextLevelInLevelTable.unk0->levelFlags;
    gUnknown_030009D8 = 0;
    gUnknown_03000B60 = 0;
    sub_08032C44(&gNextLevelInLevelTable);
    sub_080041B8(gNextLevelInLevelTable.unk4);
    arena_save_head(2);
    gUnknown_03001B98 = 0;
    sub_080072A4();
    gUnknown_030009D4 = 0;
}

void level_demo_init_callback(void) {

    gUnknown_03001744 = 0;
    arena_restore_head(0);
    sub_08040D50();
    sub_0805727C();
    sub_08038B18();
    sub_0802B998();
    sub_080069BC();
    gUnknown_030009D0 = (u32)gNextLevelInLevelTable.unk0->levelFlags;
    gUnknown_030009D8 = 0;
    gUnknown_03000B60 = 0;
    sub_08032C44(&gNextLevelInLevelTable);
    sub_080041B8(gNextLevelInLevelTable.unk4);
    arena_save_head(2);
    level_demo_reset_init_callback();
}

void level_play_end(void) {

    if ((gNextMainState - 0x10U < 2) || (gNextMainState == 0x21)) {
		sub_080720E4();
        return;
	}
	else {
		sub_08071C6C(0x16);
		if ((gMainState != 5) && (gMainState != 2)) {
			sub_080720AC();
		}
	}
}

void sub_08008C30(void) {
	
	return;
}

void unknown_0A_init_callback(void) {

    sub_08071BE0();
    gUnknown_03000B60 = 0;
    arena_restore_head(0);
    sub_08040D50();
    sub_0805727C();
    sub_08032C44(&gNextLevelInLevelTable);
    sub_080041B8(gNextLevelInLevelTable.unk4);
    sub_08038B18();
    sub_08071C00();
    REG_DISPCNT &= 0xff7f;
    sub_08033F80(0,0);
    sub_08004428(gNextLevelInLevelTable.unk0->levelData);
    arena_save_head(2);
    level_editor_init_callback();
}

void level_editor_init_callback(void) {

    arena_restore_head(2);
    sub_08008CE4();
    sub_080069E8();
    sub_080040D8();
    sub_0802C20C();
    sub_080386DC();
    sub_08004634(0);
    gUnknown_03000A0C = REG_BG1CNT;
    REG_BG1CNT &= 0xFFFC;
    sub_0800EF0C();
}

void sub_08008CE4(void) {

    gUnknown_030009FC = 0;
}


void level_edit_main(void) {

    u32 var1;
	if (gUnknown_030009FC != 0) {
		process_input(); 
	}
	else {
		process_input();
    if (gHeldKeys == 1) {     
		gSomeKeys_030012E8 = gHeldKeys = gUnknown_03001708 = 0;
    }
    else if (gHeldKeys != 0) {
      gUnknown_030009FC = 0x1;
		}
	}
    sub_08004FBC();
    sub_08005FA0();
    sub_0801B310();
    if (((gSomeKeys_030012E8 & 8) != 0)  && (var1 = sub_08006A34(), var1 == 7)) {
		change_main_state(MAIN_STATE_LEVEL_PLAY,USE_FADE);
		set_level_highscore_flag_080107E8(gNextLevelInLevelTable.unk12,gNextLevelInLevelTable.unk10,0);
      }    
    sub_08008238();
}

void level_editor_end(void) {

    REG_BG1CNT = gUnknown_03000A0C;
    sub_080062D0();
    sub_080720AC();
    sub_08006A00();
}
