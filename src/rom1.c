#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "savefile.h"
#include "sound.h"

void sub_08007154(void)
{
    gNextMainState = gNextStateFromFade;
    gUnknown_03000024 = 1;
}

void sub_08007170(void)
{
    arena_restore_head(2);
    sub_0802BA94();
    sub_0802BC98();
    sub_0802D1D0();
    sub_0803109C();
    sub_080714A8();
    sub_080317F8();
    gUnknown_030009EC = 1;
    sub_0802BF1C();
    gGeneralTimer = gNextLevelInLevelTable.unk0->levelTimer * 60 + 60;
    if (gLevelType == LEVEL_TYPE_MAIN && (gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_4))
    {
        u32 var;

        if (gUnknown_03000B44 > 60)
            gGeneralTimer += gUnknown_03000B44 - 60;
        var = sub_0802F5C0(gUnknown_03000B44);
        gUnknown_030009DC = var;
        gUnknown_03000B44 = 0;
    }
    sub_0802C20C();
    if (gUnknown_030009D0 & 24)
        sub_0802C7A4();
    else
        sub_0802CF08();
    repoint_tile_objects_08006968(gNextLevelInLevelTable.unk4);
    gUnknown_03000B5C = 0;
    gLevelEndTimer = -1;
    gUnknown_03000B60 = 0;
    sub_080386DC();
    sub_08031BF0(&gObjVRAMCopyOffset_0300192C, &gVRAMCurrTileNum_03001930);
    if (gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_4)
    {
        gCurrentPresentScore = gPreviousPresentScore;
        gCurrentEnemyScore = gUnknown_03000BB8;
        CpuCopy16(&gCollectedLevelItemsBackup, &gCollectedLevelItems, 4);
    }
    else
    {
        gCurrentPresentScore = 0;
    }
    gUnknown_03000033 = 0;
}

void sub_080072A4(void)
{
    u32 state;
    struct UnknownStruct6 *r1;

    gUnknown_030009D4 = 1;
    sub_08007170();
    state = gMainState;
    gMainState = MAIN_STATE_LEVEL_PLAY;
    load_level_data_08004634(1);
    gMainState = state;
    r1 = sub_08040F30(sub_08040EE8(2));
    if (r1 == NULL)
        r1 = sub_08040F30(sub_08040EE8(0));
    if (gLevelType == LEVEL_TYPE_MAIN_BOSS)
        sub_08033FAC(0, 0);
    else if (gLevelType == LEVEL_TYPE_PLUS_BOSS)
        sub_08033FAC(0, 16);
    else if (r1 != NULL)
        sub_08033FAC((r1->unk20 >> 7) - DISPLAY_WIDTH, (r1->unk24 >> 7) - DISPLAY_HEIGHT);
    if (gUnknown_030009D0 & 8)
        sub_0802C938();
    gUnknown_03000028 = 0;
    gLevelTimerOnOffFlag = 0;
    if ((!(gUnknown_03000B68 & 2) || (gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_ITEM_1))
     && gMainState != MAIN_STATE_TUTORIAL)
    {
        sound_stop_music();
        if (gLevelType == LEVEL_TYPE_EXPERT_1_6 || gLevelType == LEVEL_TYPE_EXPERT_7_12 || gLevelEWorldFlag)
        {
            gUnknown_03001BDC = 1;
            play_bgm(INTRO_3, 128, 0);
        }
        else
        {
            if (!(gNextLevelInLevelTable.levelFlags & (LEVEL_FLAG_1|LEVEL_FLAG_2))
             && gLevelType != LEVEL_TYPE_MAIN_BOSS
             && gLevelType != LEVEL_TYPE_PLUS_BOSS)
            {
                if (gNextLevelInLevelTable.unk10 > 0)
                    gUnknown_03001BDC = 1;
                if (gUnknown_03001BDC == 0)
                    play_bgm(INTRO_2, 128, 0);
                else
                    play_bgm(INTRO_3, 128, 0);
            }
            else if (gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_1)
            {
                play_bgm(BGM_MM_INTRO, 128, 1);
            }
        }
        if ((gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_2) || gLevelType == LEVEL_TYPE_MAIN_BOSS)
            play_bgm(INTRO_1, 128, 0);
    }
    sub_08033FC8();
    gUnknown_03000034 = 0;
    gUnknown_03000029 = 0;
    gUnknown_03000032 = 0;
    gUnknown_03000030 = 0;
    gUnknown_03000031 = 0;
    sub_0802919C(gCurrentWorld, gNextLevelID);
}

void level_demo_reset_init_callback(void)
{
    u32 state;
    struct UnknownStruct6 *r1;

    sub_08007170();
    state = gMainState;
    if (gMainState != MAIN_STATE_DEMO)
        gMainState = MAIN_STATE_TUTORIAL;
    load_level_data_08004634(1);
    gMainState = state;
    r1 = sub_08040F30(sub_08040EE8(2));
    if (r1 == NULL)
        r1 = sub_08040F30(sub_08040EE8(0));
    if (r1 != NULL)
        sub_08033FAC((r1->unk20 >> 7) - DISPLAY_WIDTH, (r1->unk24 >> 7) - DISPLAY_HEIGHT);
    gUnknown_03000028 = 0;
    gLevelTimerOnOffFlag = 0;
    sub_08033FC8();
    gUnknown_03000034 = 0;
    gUnknown_03000029 = 0;
    gUnknown_03000032 = 0;
    gUnknown_03000030 = 0;
    gUnknown_03000031 = 0;
    if (get_current_bgm() != RESULTS)
        play_bgm(RESULTS, 128, 1);
}

static void sub_08007544(void)
{
    bool32 r7 = FALSE;
    s32 *r3 = &gGeneralTimer;
    s32 r2 = *r3;

    if (r2 > 1800)
        r7 = TRUE;
    if (r2 > 0 && gLevelTimerOnOffFlag != 0 && gUnknown_03000B5C == 0)
    {
        if (!(gUnknown_03001A1C & 0x901000) && gUnknown_03001A38 == 0)
        {
            if ((gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_2) && gUnknown_03001C78->unk34 == 0)
            {
                if (gUnknown_03000033 == 0)
                {
                    sub_08071CD4();
                    gUnknown_03000033 = 1;
                    gLevelTimerOnOffFlag = 0;
                }
            }
            else
            {
                *r3 = r2 - gUnknown_03001748;
            }
        }
        if (gGeneralTimer <= 0 && !(gUnknown_030019A0 & 0x80000000))
        {
            gUnknown_03001B30.failType |= FAIL_TYPE_TIME_UP;
            gGeneralTimer = 0;
            gUnknown_03001A1C |= 0x400;
            gUnknown_03000029 = 0;
            if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
            {
                sound_stop_music();
                play_bgm(FAIL_4, 128, 0);
            }
        }
    }

    if (gUnknown_03000038 & 0x2000000)
        play_sound_effect_08071990(SE_MM_DIE, 8, 16, 64, 0, 128, 0);

    if (r7 && gGeneralTimer <= 1800 && !(gUnknown_03001A1C & 0x80))
    {
        gUnknown_03000029 = 0;
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            sound_stop_music();
            play_bgm(TIME, 128, 0);
        }
    }

    if (gUnknown_03000038 & 0x8000)
    {
        gUnknown_03000029 = 0;
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            sound_stop_music();
            sub_08071CD4();
        }
        gLevelTimerOnOffFlag = 0;
    }

    if (gUnknown_03000038 & 0x800)
        sub_08071CD4();
    if ((gUnknown_03001A1C & 0x800) && sound_is_music_finished() != 0)
    {
        gUnknown_030009D8++;
        if (gLivesCount > 1)
        {
            asm(""::"r"(gGeneralTimer));  // Why is this variable read? Is it volatile?
            sub_08014A58(-1);
            change_main_state(MAIN_STATE_RESPAWN, NO_FADE);
        }
        else
        {
            sub_08014A58(-1);
            change_main_state(MAIN_STATE_CLEAR_GAMEOVER, USE_FADE);
        }
    }

    if (gUnknown_03000038 & 0x80)
    {
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            sound_stop_music();
            play_bgm(FAIL_1, 128, 0);
        }
    }
    else
    {
        if ((gUnknown_03001A1C & 0x80) && sound_is_music_finished() != 0)
            change_main_state(MAIN_STATE_LEVEL_PLAY, USE_FADE);
    }

    if (gUnknown_03000038 & 0x2000)
    {
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            if (gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_2)
            {
                gUnknown_03000029 = 0;
            }
            else
            {
                if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO && gLevelType != LEVEL_TYPE_PLUS_BOSS)
                {
                    sound_stop_music();
                    sub_08071FA0(gNextLevelInLevelTable.unk14, gNextLevelInLevelTable.unk18, 1, gNextLevelInLevelTable.unk1D);
                }
                gUnknown_03000029 = 1;
            }
        }
        else
        {
            gUnknown_03000029 = 1;
        }
        gLevelTimerOnOffFlag = 1;
    }

    if (gUnknown_03000B5C == 0 && (gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_2) && gUnknown_03000029 == 0
     && gLevelTimerOnOffFlag != 0 && sound_is_music_finished() != 0)
    {
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
            sub_08071FA0(gNextLevelInLevelTable.unk14, gNextLevelInLevelTable.unk18, 1, gNextLevelInLevelTable.unk1D);
        gUnknown_03000029 = 1;
    }

    if (gUnknown_03000038 & 0x10000)
    {
        gLevelTimerOnOffFlag = 0;
        gUnknown_03000029 = 0;
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            sub_08071CD4();
            sound_stop_music();
            play_bgm(FAIL_1, 128, 0);
        }
        gUnknown_03000B5C = 1;
    }

    if (gUnknown_03000038 & 0x20000)
    {
        gLevelTimerOnOffFlag = 0;
        gUnknown_03000029 = 0;
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO
         && gUnknown_03000B5C == 0)
        {
            sub_08071CD4();
            sound_stop_music();
            play_bgm(FAIL_2, 128, 0);
        }
        gUnknown_03000B5C = 1;
    }

    if (gUnknown_03000038 & 0x40000)
    {
        gLevelTimerOnOffFlag = 0;
        gUnknown_03000029 = 0;
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO
         && gUnknown_03000B5C == 0)
        {
            sub_08071CD4();
            sound_stop_music();
            play_bgm(FAIL_3, 128, 0);
        }
        gUnknown_03000B5C = 1;
    }

    if (gUnknown_03000038 & 0x100)
    {
        gUnknown_03000029 = 0;
        gLevelTimerOnOffFlag = 0;
        if (gLevelType != LEVEL_TYPE_PLUS_BOSS)
            sub_08071CD4();
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO
         && !(gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_2))
        {
            if (gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_4)
            {
                sound_stop_music();
                play_bgm(WIN2, 128, 0);
            }
            else if (gLevelType == LEVEL_TYPE_PLUS_BOSS)
            {
                sound_stop_music();
                play_bgm(WIN_FINALBOSS, 128, 0);
            }
            else if (!(gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_1))
            {
                sound_stop_music();
                play_bgm(WIN, 128, 0);
            }
        }
        gUnknown_03000B5C = 1;
    }

    if (gUnknown_03000B5C == 0)
    {
        if (gGeneralTimer > 1800)
        {
            if (gUnknown_03000038 & 0x4000000)
            {
                if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
                {
                    sound_stop_music();
                    play_bgm(MM_PROTECT, 128, 1);
                }
            }
            else if (gUnknown_0300003C & 0x4000000)
            {
                if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
                {
                    sound_stop_music();
                    sub_08071FA0(gNextLevelInLevelTable.unk14, gNextLevelInLevelTable.unk18, 1, gNextLevelInLevelTable.unk1D);
                }
            }
        }
        if (gUnknown_03000B5C == 0 && gGeneralTimer > 1800)
        {
            if ((gUnknown_03000038 & 1)
             || ((gUnknown_03001A1C & 1) && (gUnknown_03000034 & 4) && !(gUnknown_03001A1C & 4)))
            {
                sound_stop_music();
                play_bgm(HAMMER, 128, 1);
            }
            if ((gUnknown_03000038 & 4)
             || ((gUnknown_03000034 & 1) && !(gUnknown_03001A1C & 1)))
            {
                if (get_current_bgm_data() != gNextLevelInLevelTable.unk14)
                {
                    sound_stop_music();
                    sub_08071FA0(gNextLevelInLevelTable.unk14, gNextLevelInLevelTable.unk18, 1, gNextLevelInLevelTable.unk1D);
                }
            }
        }
    }

    if (gUnknown_03000038 & 0x4000)
    {
        if (gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_2)
            gLevelEndTimer = 30;
        else if (gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_4)
            gLevelEndTimer = 240;
        else if (gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_1)
            gLevelEndTimer = 30;
        else if (gLevelType == LEVEL_TYPE_PLUS_BOSS)
            gLevelEndTimer = 269;
        else
            gLevelEndTimer = 150;
    }
    sub_08006D44();
}

void level_play_main(void)
{
    u32 var1;
    u8 modeNext;
    u32 var3;

    update_fade_from_black();
    process_input();
    sub_08038414(gNewKeys, gHeldKeys);
    update_level_08039C44();
    var1 = (gUnknown_03001A1C & 0x1b08) == 0;
    gUnknown_03001A00 = var1;
    gUnknown_03000038 = gUnknown_03001A1C & (gUnknown_03000034 ^ gUnknown_03001A1C);
    gUnknown_0300003C = (gUnknown_03000034 ^ gUnknown_03001A1C) & gUnknown_03000034;

    if (gLevelEndTimer < 0){
        sub_08007544();
    }
    else if (gLevelEndTimer > 0) {
        gLevelEndTimer--;
    }
    else if ((gUnknown_03000B68 & 2) && !(gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_3)) {
        gNextLevelID++;
        change_main_state(MAIN_STATE_UKNOWN_12, USE_FADE);
    }
    else if ((gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_2) != 0) {
        gUnknown_030009D8++;
        if (gUnknown_030009D8 > 60) {
            if (gLevelType == LEVEL_TYPE_MAIN) {
                if (gCurrentWorld == 0x5 && (sub_080148F0(2) == 0)) {
                    sub_080148A4(2, 1);
                }
            }
            else if (gLevelType == LEVEL_TYPE_PLUS && gCurrentWorld == 0x5 && sub_080148F0(0x10) == 0) {
                sub_080148A4(0x10, 1);
            }
            change_main_state(MAIN_STATE_CLEAR_GAMEOVER, USE_FADE);
            gUnknown_030019A0 |= (gNextLevelInLevelTable.levelFlags & (LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3|LEVEL_FLAG_4)) | 0x80 << 0x15 | (gNextLevelInLevelTable.unk12 << 0x8);
            gNextLevelID++;
            gUnknown_03000BD0 = 0x0;

            if ((gNextLevelInLevelTable.levelFlags & 4) != 0) {
                if (gCurrentWorld > 4) {
                    gCurrentWorld = 0;
                }
                else {
                    gCurrentWorld++;
                }
                gNextLevelID = 0x0;
            }

        }
    }
    else if ((gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_1) != 0) {
        change_main_state(MAIN_STATE_LEVEL_RESULTS, USE_FADE);
        gUnknown_030019A0 |= (gNextLevelInLevelTable.levelFlags & (LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3|LEVEL_FLAG_4)) | 0x80 << 0x15 | (gNextLevelInLevelTable.unk12 << 0x8);
        gNextLevelID++;
        gUnknown_03000BD0 = 0x0;
    }
    else if (gLevelType == LEVEL_TYPE_MAIN_BOSS) {
        sub_080149F8(gLivesCount);
        set_level_flags_08010534(gNextLevelInLevelTable.unk12,gNextLevelInLevelTable.unk10, &gCollectedLevelItems.redPresent);
        sub_08010BE0(gNextLevelInLevelTable.unk12,gNextLevelInLevelTable.unk10);
        if (sub_080148F0(8) == 0) {
            sub_080148A4(8,1);
        }
        if (sub_080148F0(4) == 0) {
            sub_080148A4(4,1);
        }
        gLevelType = LEVEL_TYPE_PLUS;
        gCurrentWorld = gNextLevelID = 0x00;
        gUnknown_03000BD0 = 0x00;
        movie_player_setup_data(MOVIE_PLAYER_ALLOW_SKIP|MOVIE_PLAYER_FLAG_2, MIDBOSS_END, MAIN_STATE_GOTO_CREDITS, MOVIE_UNUSED_1);
        change_main_state(MAIN_STATE_MOVIE, USE_FADE);
    }
    else if (gLevelType == LEVEL_TYPE_PLUS_BOSS) {
        sub_080149F8(gLivesCount);
        sub_08010BE0(gNextLevelInLevelTable.unk12,gNextLevelInLevelTable.unk10);
        set_level_flags_08010534(gNextLevelInLevelTable.unk12,gNextLevelInLevelTable.unk10, &gCollectedLevelItems.redPresent);
        if (sub_080148F0(0x20) == 0) {
            sub_080148A4(0x20, 1);
        }
        if (sub_080148F0(0x40) == 0) {
            sub_080148A4(0x40, 1);
        }
        gLevelType = LEVEL_TYPE_MAIN;
        gCurrentWorld = gNextLevelID = 0x00;
        gUnknown_03000BD0 = 0x01;
        movie_player_setup_data(MOVIE_PLAYER_ALLOW_SKIP|MOVIE_PLAYER_FLAG_2, MOVIE6, MAIN_STATE_GOTO_CREDITS, MOVIE_DK_BOSS_2_END);
        change_main_state(MAIN_STATE_MOVIE, USE_FADE);
    } else if (gLevelType == LEVEL_TYPE_PLUS) {
        gNextLevelID++;
        gUnknown_03000BD0 = 0;
        if ((gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_3) != 0) {
            if (gCurrentWorld > 0x4) {
                gCurrentWorld = 0;
            }
            else {
                gCurrentWorld++;
            }
            gNextLevelID = 0;
            change_main_state(MAIN_STATE_CLEAR_GAMEOVER, USE_FADE);
        } else {
            change_main_state(MAIN_STATE_LEVEL_RESULTS, USE_FADE);
        }
    }
    else if (gLevelType == LEVEL_TYPE_EXPERT_1_6 || gLevelType == LEVEL_TYPE_EXPERT_7_12 || (gLevelEWorldFlag != 0)) {
        change_main_state(MAIN_STATE_LEVEL_RESULTS, USE_FADE);
    }
    else if ((gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_4) != 0) {
        if ((gNextLevelInLevelTable.levelFlags & (LEVEL_FLAG_3|LEVEL_FLAG_BG0_SPECIAL)) == 0x14) {
            change_main_state(MAIN_STATE_CLEAR_GAMEOVER, USE_FADE);
            gNextLevelID++;
        } else {
            change_main_state(MAIN_STATE_LEVEL_RESULTS, USE_FADE);
            gNextLevelID++;
            gUnknown_03000BD0 = 0;
            if ((gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_3) != 0) {
                gCurrentWorld++;
                gNextLevelID = 0;
            }
        }
    }
    else {
        gNextLevelID++;
        gUnknown_03000BD0 = 0;
        if ((gNextLevelInLevelTable.levelFlags & LEVEL_FLAG_3) != 0) {
            gCurrentWorld++;
            gNextLevelID = 0;
        }
        gUnknown_03000BB8 = gCurrentEnemyScore;
        gPreviousPresentScore = gCurrentPresentScore;
        gCurrentEnemyScore = 0;
        gUnknown_03000B44 = gGeneralTimer;

        // Possible BUG: Only copy 4 bytes (redPresent, yellowPresent, bluePresent, letterT)
        CpuCopy16(&gCollectedLevelItems, &gCollectedLevelItemsBackup, 4);
        change_main_state(MAIN_STATE_UKNOWN_12, USE_FADE);
    }

    gUnknown_03000034 = gUnknown_03001A1C;
    if (gUnknown_03001A00 != 0x0) {
        sub_0802C540();
        if ((gUnknown_030009D0 & 0x18) != 0) {
            sub_0802C9D8();
        }
        sub_0802BAA0();
        sub_0802CF78();
        sub_08030F50();
        if (gLevelTimerOnOffFlag != 0x0) {
            sub_080315A4();
        }
    }
    sub_08031C1C();
    gNextLevelInLevelTable.unkC();

    if (gNextLevelInLevelTable.unk12 == 2) {
        update_level_background_waves_0802BEA4(gUnknown_03001A00);
    }
    else if (var1) {
        update_level_background_0802BE50();
    }
    if (gUnknown_03001A00 != 0x0) {
        sub_0801B310();
    }
    if (gLevelEndTimer < 0) {
        if (gNewKeys == START_BUTTON && gGeneralTimer> 0 && gUnknown_03000B5C == 0
         && (gUnknown_03001A1C & 0x2000) && !(gUnknown_030019A0 & 0x20000000))
        {
            change_main_state(MAIN_STATE_PAUSE, NO_FADE);
            sub_08071C24();
            play_sound_effect_08071990(SE_CURSOR_M, 8, 0x10, 0x40, 0, 0x80, 0);
        }
        if (!(gUnknown_03001A1C & 0x800) && !(gUnknown_03001938 & 1) && (gUnknown_03001938 & 0x50FE))
        {
            gUnknown_03001938 |= 1;
            change_main_state(MAIN_STATE_HELP, NO_FADE);
            sub_08071C24();
            play_sound_effect_08071990(SE_CURSOR_M, 8, 0x10, 0x40, 0, 0x80, 0);
        }
    }
}

void level_demo_main(void)
{
    u8 bVar1;

    update_fade_from_black();
    process_input();
    if (!(gUnknown_03001938 & 0x800))
    {
        sub_08038414(gNewKeys, gHeldKeys);
        update_level_08039C44();
        if (gNextMainState == 0x21)
            return;
    }

    bVar1 = 0;
    if (!(gUnknown_03001A1C & 0x1B00))
        bVar1 = 1;

    gUnknown_03001A00 = bVar1;
    gUnknown_03000038 = (gUnknown_03000034 ^ gUnknown_03001A1C) & gUnknown_03001A1C;
    gUnknown_0300003C = (gUnknown_03000034 ^ gUnknown_03001A1C) & gUnknown_03000034;
    if ((gUnknown_03000038 & 0x40000000) != 0) {
        gCurrentWorld = gNextLevelID = 0;
        change_main_state(MAIN_STATE_TITLE_SCREEN, USE_FADE);
    } else if (gLevelEndTimer < 0) {
        sub_08007544();
    } else if (gLevelEndTimer > 0) {
        gLevelEndTimer--;
    } else {
        change_main_state(MAIN_STATE_TITLE_SCREEN, USE_FADE);
    }
    gUnknown_03000034 = gUnknown_03001A1C;
    sub_0802BAA0();
    sub_0802CF78();
    sub_08030F50();
    sub_08031C1C();
    sub_080315A4();
    sub_0802C540();
    if ((gUnknown_030009D0 & 0x18) != 0) {
        sub_0802C9D8();
    }
    gNextLevelInLevelTable.unkC();
    if (gNextLevelInLevelTable.unk12 == 2) {
        update_level_background_waves_0802BEA4(gUnknown_03001A00);
    } else if (bVar1) {
        update_level_background_0802BE50();
    }
    sub_0801B310();
}

void level_callback_08008238(void)
{
    s32 hOff = gCameraHorizontalOffset >> 1; // gCameraHorizontalOffset / 2
    s32 vOff = gCameraVerticalOffset >> 1; // gCameraVerticalOffset / 2

    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg0_x = hOff;
    hOff += gBGHorizontalOffset;
    // >> 8 probably fixed point?
    gBGLayerOffsets.bg2_x = ((hOff * gUnknown_03000E70[2]->unk22) >> 8) + gUnknown_03000E70[2]->unk8.as_s32;
    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70[3]->unk22) >> 8) + gUnknown_03000E70[3]->unk8.as_s32;

    gBGLayerOffsets.bg1_y = vOff;
    gBGLayerOffsets.bg0_y = vOff;
    vOff += gBGVerticalOffset;
    gBGLayerOffsets.bg2_y = ((vOff * gUnknown_03000E70[2]->unk24) >> 8) + gUnknown_03000E70[2]->unkC.as_s32;
    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70[3]->unk24) >> 8) + gUnknown_03000E70[3]->unkC.as_s32;
}

void sub_080082C8(void) {
    gBGLayerOffsets.bg0_x = gUnknown_03001C04 >> 8;
    gBGLayerOffsets.bg1_x = gUnknown_03001BE4 >> 8;
    gBGLayerOffsets.bg2_x = gUnknown_03001BEC >> 8;
    gBGLayerOffsets.bg3_x = gUnknown_03001C0C >> 8;
    gBGLayerOffsets.bg0_y = gUnknown_03001C08 >> 8;
    gBGLayerOffsets.bg1_y = gUnknown_03001C1C >> 8;
    gBGLayerOffsets.bg2_y = gUnknown_03001C20 >> 8;
    gBGLayerOffsets.bg3_y = gUnknown_03001BF4 >> 8;
}

void level_callback_08008330(void) {

    s16 var1;
    s32 var2;
    s32 hOff = (gCameraHorizontalOffset >> 1); // gCameraHorizontalOffset / 2
    s32 vOff = (gCameraVerticalOffset >> 1); // gCameraVerticalOffset / 2

    if (gUnknown_03000D38 != 0x5a) {
        hOff += gUnknown_0807C118[gUnknown_03000D38][0];
        vOff += gUnknown_0807C118[gUnknown_03000D38][1];
        gUnknown_03000D38++;

        if (gUnknown_03000D38 == 0x5a) {
            gUnknown_030019A0 = gUnknown_030019A0 & 0xdfffffff;
        }
        if (hOff < 0) {
            hOff = 0;
        }
        if ((hOff + 0xf0) >= gCurrentLevelWidth) {
            hOff = gCurrentLevelWidth - 0xf0;
        }
        if (vOff < 0) {
            vOff = 0;
        }
        if (((vOff >> 1) + 0xa0) >= gCurrentLevelHeight) {
            vOff = gCurrentLevelHeight - 0xa0;
        }
    }


    if ((gUnknown_030009D0 & 0x18) != 0) {
        gBGLayerOffsets.bg0_x = gSpriteHorizontalOffset - (gUnknown_03000D60 >> 8);
        var2 = vOff - (gUnknown_03000D64 >> 8);
        if (var2 < -0xa0) {
            gBGLayerOffsets.bg0_y = -0xa0;
        }
        else {
            gBGLayerOffsets.bg0_y = var2;
        }
    } else {
        gBGLayerOffsets.bg0_x = hOff;
        gBGLayerOffsets.bg0_y = vOff;
    }
    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg1_y = vOff;

    hOff += gBGHorizontalOffset;

    gBGLayerOffsets.bg2_x = ((hOff * gUnknown_03000E70[2]->unk22) >> 8) + gUnknown_03000E70[2]->unk8.as_s32;

    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70[3]->unk22) >> 8) + gUnknown_03000E70[3]->unk8.as_s32;

    var1 = vOff - (gUnknown_030009E0 - 0xa0);
    if (var1 < 1) { gBGLayerOffsets.bg2_y = 0; }

    else if (var1 > 0xb0) {
        gBGLayerOffsets.bg2_y = 0xb0;
    }
    else {
        gBGLayerOffsets.bg2_y = (vOff + 0xa0) - gUnknown_030009E0;
    }

    vOff += gBGVerticalOffset;
    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70[3]->unk24) >> 8) + gUnknown_03000E70[3]->unkC.as_s32;
}

void level_callback_080084A4(void) {

    s16 var1;
    s32 hOff = (gCameraHorizontalOffset >> 1); // gCameraHorizontalOffset / 2
    s32 vOff = (gCameraVerticalOffset >> 1); // gCameraVerticalOffset / 2

    if (gUnknown_03000D38 != 0x5a) {
        hOff += gUnknown_0807C118[gUnknown_03000D38][0];
        vOff += gUnknown_0807C118[gUnknown_03000D38][1];
        gUnknown_03000D38++;

        if (gUnknown_03000D38 == 0x5a) {
            gUnknown_030019A0 = gUnknown_030019A0 & 0xdfffffff;
        }
          if (hOff < 0) {
            hOff = 0;
        }
        if ((hOff + 0xf0) >= gCurrentLevelWidth) {
            hOff = gCurrentLevelWidth - 0xf0;
        }
        if (vOff < 0) {
            vOff = 0;
        }
        if (((vOff >> 1) + 0xa0) >= gCurrentLevelHeight) {
            vOff = gCurrentLevelHeight - 0xa0;
        }
    }

    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg1_y = vOff;
    hOff += gBGHorizontalOffset;
    gBGLayerOffsets.bg0_x = ((hOff * gUnknown_03000E70[0]->unk22) >> 8) + gUnknown_03000E70[0]->unk8.as_s32;


    gBGLayerOffsets.bg2_x = (((hOff * gUnknown_03000E70[2]->unk22) >> 8) + gUnknown_03000E70[2]->unk8.as_s32) - gUnknown_03001C48;

    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70[3]->unk22) >> 8) + gUnknown_03000E70[3]->unk8.as_s32;

    var1 = vOff - (gUnknown_030009E0 - 0xa0);
    if (var1 < 1) { gBGLayerOffsets.bg0_y = 0; }

    else if (var1 > 0xa0) {
        gBGLayerOffsets.bg0_y = 0xa0;
    }
    else {
        gBGLayerOffsets.bg0_y = (vOff + 0xa0) - gUnknown_030009E0;
    }

    vOff += gBGVerticalOffset;

    gBGLayerOffsets.bg2_y = ((vOff * gUnknown_03000E70[2]->unk24) >> 8) +
        (gUnknown_03000E70[2]->unkC.as_s32 - 0x38) + gUnknown_03001C40;
    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70[3]->unk24) >> 8) + gUnknown_03000E70[3]->unkC.as_s32;
}

void level_callback_08008600(void) {

    s32 hOff = (gCameraHorizontalOffset >> 1); // gCameraHorizontalOffset / 2
    s32 vOff = (gCameraVerticalOffset >> 1); // gCameraVerticalOffset / 2

    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg0_x = hOff;
    hOff += gBGHorizontalOffset;
    gBGLayerOffsets.bg2_x = ((hOff * gUnknown_03000E70[2]->unk22) >> 8) + gUnknown_03000E70[2]->unk8.as_s32 - gUnknown_03001C48;  // couple extra things here
    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70[3]->unk22) >> 8) + gUnknown_03000E70[3]->unk8.as_s32;
    gBGLayerOffsets.bg1_y = vOff;
    gBGLayerOffsets.bg0_y = vOff;
    vOff += gBGVerticalOffset;
    gBGLayerOffsets.bg2_y = ((vOff * gUnknown_03000E70[2]->unk24) >> 8) +
        (gUnknown_03000E70[2]->unkC.as_s32 - 0x38) + gUnknown_03001C40;
    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70[3]->unk24) >> 8) + gUnknown_03000E70[3]->unkC.as_s32;
}

void level_callback_080086A4(void) {

    s32 hOff = (gCameraHorizontalOffset >> 1); // gCameraHorizontalOffset / 2
    s32 vOff = (gCameraVerticalOffset >> 1); // gCameraVerticalOffset / 2

    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg0_x = hOff;
    hOff += gBGHorizontalOffset;
    gBGLayerOffsets.bg2_x = (((hOff * gUnknown_03000E70[2]->unk22) >> 8) + gUnknown_03000E70[2]->unk8.as_s32
        + gUnknown_03001C80) - gUnknown_03001C48;

    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70[3]->unk22) >> 8) + gUnknown_03000E70[3]->unk8.as_s32;
    gBGLayerOffsets.bg1_y = vOff;
    gBGLayerOffsets.bg0_y = vOff;
    vOff += gBGVerticalOffset;

    gBGLayerOffsets.bg2_y = (((vOff * gUnknown_03000E70[2]->unk24) >> 8) + gUnknown_03000E70[2]->unkC.as_s32
        + (gUnknown_03001C84 - 8)) + gUnknown_03001C40;

    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70[3]->unk24) >> 8) + gUnknown_03000E70[3]->unkC.as_s32;
}

void level_callback_08008764(void) {

    s32 hOff = (gCameraHorizontalOffset >> 1); // gCameraHorizontalOffset / 2

    s32 vOff = (gCameraVerticalOffset >> 1);

    vOff += gUnknown_03001D60; // gCameraVerticalOffset / 2

    if (vOff < 0)
        vOff = 0;
    if ((vOff >> 1) + 160 >= gCurrentLevelHeight)
        vOff = gCurrentLevelHeight - 160;

    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg0_x = hOff;

    hOff += gBGHorizontalOffset;
    gBGLayerOffsets.bg2_x = ((( hOff * gUnknown_03000E70[2]->unk22) >> 8)+ gUnknown_03000E70[2]->unk8.as_s32);

    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70[3]->unk22) >> 8) + gUnknown_03000E70[3]->unk8.as_s32;
    gBGLayerOffsets.bg1_y = vOff;
    gBGLayerOffsets.bg0_y = vOff;
    vOff += gBGVerticalOffset;

    gBGLayerOffsets.bg2_y = (((vOff * gUnknown_03000E70[2]->unk24) >> 8) + gUnknown_03000E70[2]->unkC.as_s32);

    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70[3]->unk24) >> 8) + gUnknown_03000E70[3]->unkC.as_s32;
}

void sub_0800881C(void)
{
    s32 hOff = gCameraHorizontalOffset >> 1; // gCameraHorizontalOffset / 2
    s32 vOff = gCameraVerticalOffset >> 1; // gCameraVerticalOffset / 2

    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg0_x = hOff;
    hOff += gBGHorizontalOffset;

    gBGLayerOffsets.bg2_x = ((hOff * gUnknown_03000E70[2]->unk22) >> 8) + gUnknown_03000E70[2]->unk8.as_s32;
    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70[3]->unk22) >> 8) + gUnknown_03000E70[3]->unk8.as_s32;

    gBGLayerOffsets.bg1_y = vOff;
    gBGLayerOffsets.bg0_y = vOff+ gUnknown_03000C00;
    vOff += gBGVerticalOffset;
    gBGLayerOffsets.bg2_y = ((vOff * gUnknown_03000E70[2]->unk24) >> 8) + gUnknown_03000BFC;
    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70[3]->unk24) >> 8) + gUnknown_03000E70[3]->unkC.as_s32;
}

void sub_080088C4(void)
{
    gBGLayerOffsets.bg1_x = 0;
    gBGLayerOffsets.bg0_x = 0;
    gBGLayerOffsets.bg2_x = gUnknown_03000C04;
    gBGLayerOffsets.bg3_x = 0;
    gBGLayerOffsets.bg1_y = 0;
    gBGLayerOffsets.bg0_y = 0;
    gBGLayerOffsets.bg2_y = gUnknown_03000C0C;
    gBGLayerOffsets.bg3_y = 0;
}
