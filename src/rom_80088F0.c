#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "level_view.h"
#include "main.h"
#include "savefile.h"

void level_play_loop(void)
{
    u16 oamIndex = 0;
    u16 tileNum = gVRAMCurrTileNum_03001930;
    u16 vramOffset = gObjVRAMCopyOffset_0300192C;

    REG_DISPCNT &= ~DISPCNT_FORCED_BLANK;
    DmaFill32(3, 0xA0, gOamBuffer, sizeof(gOamBuffer));
    sub_0803D248(gMainState == MAIN_STATE_UNKNOWN_10 || gMainState == MAIN_STATE_LEVEL_EDIT, &oamIndex, &tileNum, &vramOffset);
    sub_08031AD4(&oamIndex);
    add_b_back_to_game_sprite(&oamIndex, &tileNum, &vramOffset);
    DmaCopy16(3, gOamBuffer, OAM, sizeof(gOamBuffer));
    sub_0802BA38(gSomeVRAMAddr_03000E80, 6, gEWRAMBasePtr->unk800C, 6);
    if (gUnknown_030009EC != 0
     || gMainState == MAIN_STATE_UNKNOWN_10 || gMainState == MAIN_STATE_LEVEL_EDIT
     || (gUnknown_03001A1C & 0x1000))
    {
        u32 uVar2;

        for (uVar2 = 0x0; uVar2 < gEWRAMBasePtr->unkC00C; uVar2 += 0x400)
        {
            DmaCopy16(3, &gEWRAMBasePtr->unk800C[uVar2], gSomeVRAMAddr_03000E80 + uVar2 * 2, 0x800);
            if (!(gUnknown_030009D0 & 0x18)
             && (gCurrentWorld != 2 || !(gNextLevelInLevelTable.levelFlags & 2)))
            {
                DmaCopy16(3, &gEWRAMBasePtr->unk800C[uVar2 + 0x1000], gSomeVRAMAddr_03000E90 + uVar2 * 2, 0x800);
            }
        }
        gUnknown_030009EC = 0;
    }
    sub_0801B4BC();
}

void after_tutorial_init_callback(void)
{
    if (gLevelEWorldFlag == 0)
        level_setup(gCurrentWorld,gNextLevelID);
    else
    {
        if (gUnknown_0807CA98[0].base[gNextLevelID] != 0)
            sub_0802EDAC(gNextLevelID);
        else
        {
            change_main_state(MAIN_STATE_EWORLD_LEVEL_SELECT, NO_FADE);
            return;
        }
    }
    sub_08004428(gNextLevelInLevelTable.unk0->levelData);
    change_main_state(MAIN_STATE_LEVEL_PLAY, NO_FADE);
}

void level_play_init_callback(void)
{
    gUnknown_03000BD0 = 1;
    arena_restore_head(0);
    sub_08040D50();
    sub_0805727C();
    sub_08038B18();
    load_arm_code_0802B998();
    sub_080069BC();
    gUnknown_030009D0 = gNextLevelInLevelTable.unk0->levelFlags;
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
    load_arm_code_0802B998();
    sub_080069BC();
    gUnknown_030009D0 = (u32)gNextLevelInLevelTable.unk0->levelFlags;
    gUnknown_030009D8 = 0;
    gUnknown_03000B60 = 0;
    sub_08032C44(&gNextLevelInLevelTable);
    sub_080041B8(gNextLevelInLevelTable.unk4);
    arena_save_head(2);
    level_demo_reset_init_callback();
}

void level_play_end(void)
{
    if (gNextMainState == MAIN_STATE_PAUSE
     || gNextMainState == MAIN_STATE_HELP
     || gNextMainState == MAIN_STATE_LEVEL_SCROLL)
		sub_080720E4();
	else
    {
		sub_08071C6C(0x16);
		if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
			sub_080720AC();
	}
}

void sub_08008C30(void)
{
}

void unknown_0A_init_callback(void)
{
    sound_disable_dma_transfer();
    gUnknown_03000B60 = 0;
    arena_restore_head(0);
    sub_08040D50();
    sub_0805727C();
    sub_08032C44(&gNextLevelInLevelTable);
    sub_080041B8(gNextLevelInLevelTable.unk4);
    sub_08038B18();
    sound_enable_dma_transfer();
    REG_DISPCNT &= ~DISPCNT_FORCED_BLANK;
    sub_08033F80(0,0);
    sub_08004428(gNextLevelInLevelTable.unk0->levelData);
    arena_save_head(2);
    level_editor_init_callback();
}

void level_editor_init_callback(void)
{
    arena_restore_head(2);
    sub_08008CE4();
    sub_080069E8();
    sub_080040D8();
    sub_0802C20C();
    sub_080386DC();
    sub_08004634(0);
    gBG1CNT_03000A0C = REG_BG1CNT;
    REG_BG1CNT &= ~3;  // Set priority to 0
    sub_0800EF0C();
}

void sub_08008CE4(void)
{
    gUnknown_030009FC = 0;
}

void level_edit_main(void)
{
	if (gUnknown_030009FC != 0)
		process_input();
	else
    {
		process_input();
        if (gHeldKeys == A_BUTTON)
            gNewKeys = gHeldKeys = gUnknown_03001708 = 0;
        else if (gHeldKeys != 0)
            gUnknown_030009FC = 1;
	}
    sub_08004FBC();
    sub_08005FA0();
    sub_0801B310();
    if ((gNewKeys & START_BUTTON) && sub_08006A34() == 7)
    {
		change_main_state(MAIN_STATE_LEVEL_PLAY,USE_FADE);
		set_level_highscore_flag_080107E8(gNextLevelInLevelTable.unk12,gNextLevelInLevelTable.unk10,0);
    }
    level_callback_08008238();
}

void level_editor_end(void)
{
    REG_BG1CNT = gBG1CNT_03000A0C;
    sub_080062D0();
    sub_080720AC();
    sub_08006A00();
}
