#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"

void sub_08007154(void)
{
    gNextMainState = gUnknown_030009CC;
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
    if (gLevelType == 0 && (gNextLevelInLevelTable.levelType & 8))
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
    sub_08006968(gNextLevelInLevelTable.unk4);
    gUnknown_03000B5C = 0;
    gLevelEndTimer = -1;
    gUnknown_03000B60 = 0;
    sub_080386DC();
    sub_08031BF0(&gUnknown_0300192C, &gUnknown_03001930);
    if (gNextLevelInLevelTable.levelType & 8)
    {
        gCurrentPresentScore = gPreviousPresentScore;
        gCurrentEnemyScore = gUnknown_03000BB8;
        CpuCopy16(gUnknown_030009E4, &gLevelCollectableFlags, 4);
    }
    else
    {
        gCurrentPresentScore = 0;
    }
    gUnknown_03000033 = 0;
}

void sub_080072A4(void)
{
    u32 r5;
    struct UnknownStruct6 *r1;
    
    gUnknown_030009D4 = 1;
    sub_08007170();
    r5 = gMainState;
    gMainState = MAIN_STATE_LEVEL_PLAY;
    sub_08004634(1);
    gMainState = r5;
    r1 = sub_08040F30(sub_08040EE8(2));
    if (r1 == NULL)
        r1 = sub_08040F30(sub_08040EE8(0));
    if (gLevelType == 4)
        sub_08033FAC(0, 0);
    else if (gLevelType == 5)
        sub_08033FAC(0, 16);
    else if (r1 != NULL)
        sub_08033FAC((r1->unk20 >> 7) - DISPLAY_WIDTH, (r1->unk24 >> 7) - DISPLAY_HEIGHT);
    if (gUnknown_030009D0 & 8)
        sub_0802C938();
    gUnknown_03000028 = 0;
    gLevelTimerOnOffFlag = 0;
    if ((!(gUnknown_03000B68 & 2) || (gNextLevelInLevelTable.levelType & 32))
     && gMainState != MAIN_STATE_TUTORIAL)
    {
        sub_080720AC();
        if (gLevelType == 2 || gLevelType == 3 || gLevelEWorldFlag != 0)
        {
            gUnknown_03001BDC = 1;
            sub_0807204C(17, 128, 0);
        }
        else
        {
            if (!(gNextLevelInLevelTable.levelType & 3) && gLevelType != 4 && gLevelType != 5)
            {
                if (gNextLevelInLevelTable.unk10 > 0)
                    gUnknown_03001BDC = 1;
                if (gUnknown_03001BDC == 0)
                    sub_0807204C(7, 128, 0);
                else
                    sub_0807204C(17, 128, 0);
            }
            else if (gNextLevelInLevelTable.levelType & 1)
            {
                sub_0807204C(32, 128, 1);
            }
        }
        if ((gNextLevelInLevelTable.levelType & 2) || gLevelType == 4)
            sub_0807204C(16, 128, 0);
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
    u32 r5;
    struct UnknownStruct6 *r1;
    
    sub_08007170();
    r5 = gMainState;
    if (gMainState != MAIN_STATE_DEMO)
        gMainState = MAIN_STATE_TUTORIAL;
    sub_08004634(1);
    gMainState = r5;
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
    if (sub_08071FE4() != 11)
        sub_0807204C(11, 128, 1);
}

void sub_08007544()
{
    bool32 r7 = FALSE;
    s32 *r3 = &gGeneralTimer;
    s32 r2 = *r3;
    
    if (r2 > 0x708)
        r7 = TRUE;
    if (r2 > 0 && gLevelTimerOnOffFlag != 0 && gUnknown_03000B5C == 0)
    {
        if (!(gUnknown_03001A1C & 0x901000) && gUnknown_03001A38 == 0)
        {
            if ((gNextLevelInLevelTable.levelType & 2) && gUnknown_03001C78->unk34 == 0)
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
            gUnknown_03001B30.unk14 |= 32;
            gGeneralTimer = 0;
            gUnknown_03001A1C |= 0x400;
            gUnknown_03000029 = 0;
            if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
            {
                sub_080720AC();
                sub_0807204C(63, 128, 0);
            }
        }
    }
    
    if (gUnknown_03000038 & 0x2000000)
        play_sound_effect_08071990(68, 8, 16, 64, 0, 128, 0);
    
    if (r7 && gGeneralTimer <= 0x708 && !(gUnknown_03001A1C & 0x80))
    {
        gUnknown_03000029 = 0;
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            sub_080720AC();
            sub_0807204C(6, 128, 0);
        }
    }
    
    if (gUnknown_03000038 & 0x8000)
    {
        gUnknown_03000029 = 0;
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            sub_080720AC();
            sub_08071CD4();
        }
        gLevelTimerOnOffFlag = 0;
    }
    
    if (gUnknown_03000038 & 0x800)
        sub_08071CD4();
    if ((gUnknown_03001A1C & 0x800) && sub_08072144() != 0)
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
            sub_080720AC();
            sub_0807204C(3, 128, 0);
        }
    }
    else
    {
        if ((gUnknown_03001A1C & 0x80) && sub_08072144() != 0)
            change_main_state(MAIN_STATE_LEVEL_PLAY, USE_FADE);
    }

    if (gUnknown_03000038 & 0x2000)
    {
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            if (gNextLevelInLevelTable.levelType & 2)
            {
                gUnknown_03000029 = 0;
            }
            else
            {
                if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO && gLevelType != 5)
                {
                    sub_080720AC();
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

    if (gUnknown_03000B5C == 0 && (gNextLevelInLevelTable.levelType & 2) && gUnknown_03000029 == 0
     && gLevelTimerOnOffFlag != 0 && sub_08072144() != 0)
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
            sub_080720AC();
            sub_0807204C(3, 128, 0);
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
            sub_080720AC();
            sub_0807204C(4, 128, 0);
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
            sub_080720AC();
            sub_0807204C(5, 128, 0);
        }
        gUnknown_03000B5C = 1;
    }

    if (gUnknown_03000038 & 0x100)
    {
        gUnknown_03000029 = 0;
        gLevelTimerOnOffFlag = 0;
        if (gLevelType != 5)
            sub_08071CD4();
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO
         && !(gNextLevelInLevelTable.levelType & 2))
        {
            if (gNextLevelInLevelTable.levelType & 8)
            {
                sub_080720AC();
                sub_0807204C(21, 128, 0);
            }
            else if (gLevelType == 5)
            {
                sub_080720AC();
                sub_0807204C(65, 128, 0);
            }
            else if (!(gNextLevelInLevelTable.levelType & 1))
            {
                sub_080720AC();
                sub_0807204C(2, 128, 0);
            }
        }
        gUnknown_03000B5C = 1;
    }

    if (gUnknown_03000B5C == 0)
    {
        if (gGeneralTimer > 0x708)
        {
            if (gUnknown_03000038 & 0x4000000)
            {
                if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
                {
                    sub_080720AC();
                    sub_0807204C(14, 128, 1);
                }
            }
            else if (gUnknown_0300003C & 0x4000000)
            {
                if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
                {
                    sub_080720AC();
                    sub_08071FA0(gNextLevelInLevelTable.unk14, gNextLevelInLevelTable.unk18, 1, gNextLevelInLevelTable.unk1D);
                }
            }
        }
        if (gUnknown_03000B5C == 0 && gGeneralTimer > 0x708)
        {
            if ((gUnknown_03000038 & 1)
             || ((gUnknown_03001A1C & 1) && (gUnknown_03000034 & 4) && !(gUnknown_03001A1C & 4)))
            {
                sub_080720AC();
                sub_0807204C(1, 128, 1);
            }
            if ((gUnknown_03000038 & 4)
             || ((gUnknown_03000034 & 1) && !(gUnknown_03001A1C & 1)))
            {
                if (sub_08072038() != gNextLevelInLevelTable.unk14)
                {
                    sub_080720AC();
                    sub_08071FA0(gNextLevelInLevelTable.unk14, gNextLevelInLevelTable.unk18, 1, gNextLevelInLevelTable.unk1D);
                }
            }
        }
    }

    if (gUnknown_03000038 & 0x4000)
    {
        if (gNextLevelInLevelTable.levelType & 2)
            gLevelEndTimer = 30;
        else if (gNextLevelInLevelTable.levelType & 8)
            gLevelEndTimer = 240;
        else if (gNextLevelInLevelTable.levelType & 1)
            gLevelEndTimer = 30;
        else if (gLevelType == 5)
            gLevelEndTimer = 269;
        else
            gLevelEndTimer = 150;
    }
    sub_08006D44();
}

void level_play_main(void) {
    u32 var1;
    u8 modeNext;
    u32 var3;
    
    sub_08029C20();
    sub_080331FC();
    sub_08038414(gSomeKeys_030012E8, gHeldKeys);
    sub_08039C44();
    var1 = (gUnknown_03001A1C & 0x1b08) == 0;
    gUnknown_03001A00 = var1;
    gUnknown_03000038 = gUnknown_03001A1C & (gUnknown_03000034 ^ gUnknown_03001A1C);
    gUnknown_0300003C = (gUnknown_03000034 ^ gUnknown_03001A1C) & gUnknown_03000034;
    
    if (gLevelEndTimer < 0){
        sub_08007544();
    }
    else if (0 < gLevelEndTimer) {
        gLevelEndTimer--;
    }
    else if (((gUnknown_03000B68 & 2) != 0) && ((gNextLevelInLevelTable.levelType & 4) == 0)) {
        gNextLevelID++;
        change_main_state(MAIN_STATE_UKNOWN_12, USE_FADE);
    }
    else if ((gNextLevelInLevelTable.levelType & 2) != 0) {
        gUnknown_030009D8++;
        if (0x3C < gUnknown_030009D8) {
            if (gLevelType == 0x0) {
                if ((gCurrentWorld == 0x5) && (sub_080148F0(2) == 0)) {
                    sub_080148A4(2, 1);
                }
            }
            else if (((gLevelType == 0x1) && (gCurrentWorld == 0x5)) && (sub_080148F0(0x10) == 0)) {
                sub_080148A4(0x10, 1);
            }
            change_main_state(MAIN_STATE_CLEAR_GAMEOVER, USE_FADE);
            gUnknown_030019A0 |= (gNextLevelInLevelTable.levelType & 0xF) | 0x80 << 0x15 | (gNextLevelInLevelTable.unk12 << 0x8);
            gNextLevelID++;
            gUnknown_03000BD0 = 0x0;
            
            if ((gNextLevelInLevelTable.levelType & 4) != 0) {
                if (gCurrentWorld > 0x4) {
                    gCurrentWorld = 0x0;
                }
                else {
                    gCurrentWorld++;
                }
                gNextLevelID = 0x0;
            }
            
        }  
    }
    else if ((gNextLevelInLevelTable.levelType & 1) != 0) {
        change_main_state(MAIN_STATE_LEVEL_RESULTS, USE_FADE);
        gUnknown_030019A0 |= (gNextLevelInLevelTable.levelType & 0xF) | 0x80 << 0x15 | (gNextLevelInLevelTable.unk12 << 0x8);
        gNextLevelID++;
        gUnknown_03000BD0 = 0x0;
    }
    else if (gLevelType == 4) {
        sub_080149F8(gLivesCount);
        set_level_flags_08010534(gNextLevelInLevelTable.unk12,gNextLevelInLevelTable.unk10, &gLevelCollectableFlags.redPresent);
        sub_08010BE0(gNextLevelInLevelTable.unk12,gNextLevelInLevelTable.unk10);
        if (sub_080148F0(8) == 0) {
            sub_080148A4(8,1);
        }
        if (sub_080148F0(4) == 0) {
            sub_080148A4(4,1);
        }
        gLevelType = 0x1;
        gCurrentWorld = gNextLevelID = 0x00;
        gUnknown_03000BD0 = 0x00;
        movie_player_setup_data(3, 0x3e, 1, 8);
        change_main_state(MAIN_STATE_MOVIE, USE_FADE);
    }
    else if (gLevelType == '\x05') {
        sub_080149F8(gLivesCount);
        sub_08010BE0(gNextLevelInLevelTable.unk12,gNextLevelInLevelTable.unk10);
        set_level_flags_08010534(gNextLevelInLevelTable.unk12,gNextLevelInLevelTable.unk10, &gLevelCollectableFlags.redPresent);
        if (sub_080148F0(0x20) == 0) {
            sub_080148A4(0x20, 1);
        }
        if (sub_080148F0(0x40) == 0) {
            sub_080148A4(0x40, 1);
        }
        gLevelType = 0x00;
        gCurrentWorld = gNextLevelID = 0x00;
        gUnknown_03000BD0 = 0x01;
        movie_player_setup_data(3, 0x2e, 1, 6);
        change_main_state(MAIN_STATE_MOVIE, USE_FADE);
    } else if (gLevelType == 0x1) {
        gNextLevelID++;
        gUnknown_03000BD0 = 0;
        if ((gNextLevelInLevelTable.levelType & 4) != 0) {
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
    else if (((gLevelType == 2) || gLevelType == 3) || (gLevelEWorldFlag != 0)) {
        change_main_state(MAIN_STATE_LEVEL_RESULTS, USE_FADE);
    }
    else if ((gNextLevelInLevelTable.levelType & 8) != 0) {
        if ((gNextLevelInLevelTable.levelType & 0x14) == 0x14) {
            change_main_state(MAIN_STATE_CLEAR_GAMEOVER, USE_FADE);
            gNextLevelID++;
        } else {
            change_main_state(MAIN_STATE_LEVEL_RESULTS, USE_FADE);
            gNextLevelID++;
            gUnknown_03000BD0 = 0;
            if ((gNextLevelInLevelTable.levelType & 4) != 0) {
                gCurrentWorld++;
                gNextLevelID = 0;
            }
        }
    }
    else {
        gNextLevelID++;
        gUnknown_03000BD0 = 0;
        if ((gNextLevelInLevelTable.levelType & 4) != 0) {
            gCurrentWorld++;
            gNextLevelID = 0;
        }
        gUnknown_03000BB8 = gCurrentEnemyScore;
        gPreviousPresentScore = gCurrentPresentScore;
        gCurrentEnemyScore = 0;
        gUnknown_03000B44 = gGeneralTimer;
        CpuSet(&gLevelCollectableFlags.redPresent,&gUnknown_030009E4,2);
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
        sub_0802BEA4(gUnknown_03001A00);
    }
    else if (var1) {
        sub_0802BE50();
    }
    if (gUnknown_03001A00 != 0x0) {
        sub_0801B310();
    }
    if (gLevelEndTimer < 0) {
        if ((((gSomeKeys_030012E8 == 8) && (0 < gGeneralTimer)) && (gUnknown_03000B5C == 0x0)) &&
        (((gUnknown_03001A1C & 0x2000) != 0 && ((gUnknown_030019A0 & 0x20000000) == 0)))) {
            change_main_state(MAIN_STATE_PAUSE, NO_FADE);
            sub_08071C24();
            play_sound_effect_08071990(0x18, 8, 0x10, 0x40, 0, 0x80, 0);
        }
        if ((((gUnknown_03001A1C & 0x800) == 0) && ((gUnknown_03001938 & 1) == 0)) &&
        ((gUnknown_03001938 & 0x50fe) != 0)) {
            gUnknown_03001938 = gUnknown_03001938 | 1;
            change_main_state(MAIN_STATE_HELP, NO_FADE);
            sub_08071C24();
            play_sound_effect_08071990(0x18, 8, 0x10, 0x40, 0, 0x80, 0);
        }
    }
}

void level_demo_main(void) {

    u8 bVar1;

    sub_08029C20();
    sub_080331FC();
    if (0 == (gUnknown_03001938 & 0x800) != 0) {
        sub_08038414(gSomeKeys_030012E8, gHeldKeys);
        sub_08039C44();
        if (gNextMainState == 0x21) {
            return;
        }
    }

    bVar1 = 0;
    if ((gUnknown_03001A1C & 0x1B00) == 0) {
        bVar1 = 1;
    }

    gUnknown_03001A00 = bVar1;
    gUnknown_03000038 = (gUnknown_03000034 ^ gUnknown_03001A1C) & gUnknown_03001A1C;
    gUnknown_0300003C = (gUnknown_03000034 ^ gUnknown_03001A1C) & gUnknown_03000034;
    if ((gUnknown_03000038 & 0x40000000) != 0) {
        gCurrentWorld = gNextLevelID = 0;
        change_main_state(MAIN_STATE_TITLE_SCREEN, USE_FADE);
    } else if (gLevelEndTimer < 0) {
        sub_08007544(gLevelEndTimer);
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
        sub_0802BEA4(gUnknown_03001A00);

    } else if (bVar1) {
        sub_0802BE50();
    }
    sub_0801B310();
}

void sub_08008238(void) {

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

void sub_08008330(void) {

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

void sub_080084A4(void) {

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

void sub_08008600(void) {
	
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

void sub_080086A4(void) {

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

void sub_08008764(void) {

    s32 hOff = (gCameraHorizontalOffset >> 1); // gCameraHorizontalOffset / 2
    
    s32 vOff = (gCameraVerticalOffset >> 1);
        
    vOff += gUnknown_03001D60; // gCameraVerticalOffset / 2
    
  if (vOff < 0) {
    vOff = 0;
  }
if ((vOff >> 1) + 0xA0 >= gCurrentLevelHeight) {
    vOff = gCurrentLevelHeight - 0xA0;
}

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

void sub_0800881C(void) {
    
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

void sub_080088C4(void) {
  gBGLayerOffsets.bg1_x = 0;
  gBGLayerOffsets.bg0_x = 0;
  gBGLayerOffsets.bg2_x = gUnknown_03000C04;
  gBGLayerOffsets.bg3_x = 0;
  gBGLayerOffsets.bg1_y = 0;
  gBGLayerOffsets.bg0_y = 0;
  gBGLayerOffsets.bg2_y = gUnknown_03000C0C;
  gBGLayerOffsets.bg3_y = 0;
}
