#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "savefile.h"
#include "sound.h"
#include "sprites.h"

struct Struct94
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u8 filler1E[0x2A-0x1E];
    u16 unk2A[(0x38-0x2A)/2];
};

extern struct GraphicsConfig *gLevelSelectBackgrounds[];
extern struct GraphicsConfig *gLevelSelectPlusBackgrounds[];
extern struct GraphicsConfig gLevelSelectData;
extern struct GraphicsConfig gLevelSelectPlusData;
extern struct GraphicsConfig gLevelSelectDKBossBG;
extern struct GraphicsConfig gLevelSelectDKPlusBossBG;
extern s8 gLevelSelectWorld;
extern s8 gLevelSelectLevel;
extern s8 gLevelSelectMode;
extern s8 gLevelSelectLevelCursor;
extern s8 gLevelSelectWorldCursor;
extern u32 gLevelSelectPaletteIDs[];
extern u32 gLevelSelectPlusPaletteIDs[];
extern struct UnknownStruct15 *gUnknown_03000070;
extern void *gUnknown_03000074;
extern u16 gUnknown_03000078;
extern struct { u8 unk0; u8 unk1; u8 filler2[2]; } *gUnknown_0300007C;
extern s8 gLevelSelect_03000083;
extern s8 gUnknown_03000084;
extern u8 gUnknown_03000085;
extern u8 gUnknown_03000086;
extern u8 gUnknown_03000087;
extern s8 gUnknown_03000088;
extern u8 gUnknown_03000089;
extern s8 gUnknown_0300008A;
extern u8 gUnknown_0300008B;
extern u8 gUnknown_0300008C;
extern u8 gUnknown_0300008D;
extern u8 gUnknown_0300008E;
extern u8 gUnknown_0300008F;
extern u8 gUnknown_03000090;
extern u8 gUnknown_03000091;
extern u8 gUnknown_03000092;
extern struct Struct94 *gUnknown_03000094;

void sub_080150F0(u8 arg0)
{
    struct GraphicsConfig *arr[4];

    switch (arg0)
    {
    case 0:
        arr[0] = NULL;
        arr[1] = NULL;
        arr[2] = NULL;
        arr[3] = gLevelSelectBackgrounds[gLevelSelectWorld];
        load_graphics_config_08032F24(arr, -1);
        load_predefined_palette(gLevelSelectPaletteIDs[gLevelSelectWorld], 3);
        gUnknown_03000070 = sub_08006968(&gLevelSelectData);
        break;
    case 1:
        arr[0] = NULL;
        arr[1] = NULL;
        arr[2] = NULL;
        arr[3] = gLevelSelectPlusBackgrounds[gLevelSelectWorld - 1];
        load_graphics_config_08032F24(arr, -1);
        load_predefined_palette(gLevelSelectPlusPaletteIDs[gLevelSelectWorld - 1], 3);
        gUnknown_03000070 = sub_08006968(&gLevelSelectPlusData);
        break;
    case 2:
        arr[0] = NULL;
        arr[1] = NULL;
        arr[2] = NULL;
        arr[3] = &gLevelSelectDKBossBG;
        load_graphics_config_08032F24(arr, -1);
        load_predefined_palette(17, 3);
        gUnknown_03000070 = sub_08006968(&gLevelSelectData);
        break;
    case 3:
        arr[0] = NULL;
        arr[1] = NULL;
        arr[2] = NULL;
        arr[3] = &gLevelSelectDKPlusBossBG;
        load_graphics_config_08032F24(arr, -1);
        load_predefined_palette(24, 3);
        gUnknown_03000070 = sub_08006968(&gLevelSelectPlusData);
        break;
    case 4:
        gLevelSelect_03000083 = 7;
        sub_08029D80();
        break;
    case 5:
        gLevelSelect_03000083 = 9;
        sub_08029D80();
        break;
    }
}

u8 sub_08015238(u8 arg0)
{
    int ret;

    if (arg0 != 0)
    {
        gUnknown_03000094->unk0 = 15;
        ret = 1;
    }
    else if (gUnknown_03000094->unk0 == 0)
        ret = 1;
    else
    {
        gUnknown_03000094->unk0--;
        REG_BLDALPHA = ((15 - gUnknown_03000094->unk0) << 8) | gUnknown_03000094->unk0;
        ret = 0;
    }
    return ret;
}

void level_select_init_callback(void)
{
    struct GraphicsConfig *arr[4];
    void *temp;
    void *temp2;

    arena_restore_head(0);
    gUnknown_0300007C = temp = arena_allocate(0x20);
    gUnknown_03000094 = arena_allocate(sizeof(*gUnknown_03000094));
    CpuFill16(0, gUnknown_03000094, sizeof(*gUnknown_03000094));
    if (get_current_bgm() != 11)
        play_bgm(11, 128, 1);
    gUnknown_03000094->unk4 = 0;
    gUnknown_030009D8 = 0;
    gUnknown_03001740 = 0;
    if (gLivesCount < 1)
        gLivesCount = 1;
    gUnknown_03000085 = gUnknown_03000086 = gUnknown_03000088 = gUnknown_03000089 = gUnknown_0300008A = gUnknown_0300008B = 0;
    gUnknown_03000087 = 1;
    gUnknown_0300008D = gUnknown_085E1F2C[0].duration;
    gUnknown_0300008E = gUnknown_085E0AC4[0].duration;
    gUnknown_0300008F = gUnknown_085E0AC4[1].duration;
    gUnknown_03000090 = gUnknown_085E2870[0].duration;
    gUnknown_03000091 = gUnknown_085C240C[0].duration;
    gUnknown_03000092 = gUnknown_085C7A78[0].duration;
    gUnknown_0300008C = gUnknown_085E3590[0].duration;
    gLevelSelectWorld = gCurrentWorld;
    gLevelSelectLevel = gNextLevelID;
    if (gLevelType == LEVEL_TYPE_MAIN)
        gLevelSelectLevel &= ~1;
    gLevelSelectLevelCursor = gLevelSelectLevel;
    gLevelSelectWorldCursor = gCurrentWorld;
    gCameraHorizontalOffset = 0;
    gCameraVerticalOffset = 0;
    gVRAMCurrTileNum_03001930 = 0;
    gObjVRAMCopyOffset_0300192C = 0;
    gUnknown_03001BDC = 0;
    gLevelSelect_03000083 = 0;
    if (gLevelType == LEVEL_TYPE_PLUS)
    {
        gLevelSelectMode = 2;
        gLevelSelectWorldCursor++;
        gLevelSelectWorld = gLevelSelectWorldCursor;
        arr[0] = &gLevelSelectPlusData;
        arr[1] = &gLevelSelectPlusData;
        arr[2] = &gLevelSelectPlusData;
        arr[3] = gLevelSelectPlusBackgrounds[gLevelSelectWorld - 1];
        load_graphics_config_08032F24(arr, 2);
        load_predefined_palette(gLevelSelectPlusPaletteIDs[gLevelSelectWorld - 1], 3);
        gUnknown_03000070 = sub_08006968(&gLevelSelectPlusData);
    }
    else if (gLevelType == LEVEL_TYPE_MAIN_BOSS)
    {
        gLevelType = LEVEL_TYPE_MAIN;
        gLevelSelectMode = 1;
        gLevelSelectWorld = 6;
        gLevelSelectWorldCursor = 6;
        arr[0] = &gLevelSelectData;
        arr[1] = &gLevelSelectData;
        arr[2] = &gLevelSelectData;
        arr[3] = &gLevelSelectDKBossBG;
        load_graphics_config_08032F24(arr, 3);
        load_predefined_palette(17, 3);
        gUnknown_03000070 = sub_08006968(&gLevelSelectData);
    }
    else if (gLevelType == LEVEL_TYPE_PLUS_BOSS)
    {
        gLevelType = LEVEL_TYPE_PLUS;
        gLevelSelectMode = 3;
        gLevelSelectWorld = 7;
        gLevelSelectWorldCursor = 7;
        arr[0] = &gLevelSelectPlusData;
        arr[1] = &gLevelSelectPlusData;
        arr[2] = &gLevelSelectPlusData;
        arr[3] = &gLevelSelectDKPlusBossBG;
        load_graphics_config_08032F24(arr, 3);
        load_predefined_palette(24, 3);
        gUnknown_03000070 = sub_08006968(&gLevelSelectPlusData);
    }
    else if (gLevelType == LEVEL_TYPE_EXPERT_1_6)
    {
        gLevelSelectLevel = 0;
        gLevelSelectMode = 0;
        gLevelType = LEVEL_TYPE_MAIN;
        arr[0] = &gLevelSelectData;
        arr[1] = &gLevelSelectData;
        arr[2] = &gLevelSelectData;
        arr[3] = gLevelSelectBackgrounds[gLevelSelectWorld];
        load_graphics_config_08032F24(arr, 3);
        load_predefined_palette(gLevelSelectPaletteIDs[gLevelSelectWorld], 3);
        gUnknown_03000070 = sub_08006968(&gLevelSelectData);
    }
    else if (gLevelType == LEVEL_TYPE_EXPERT_7_12)
    {
        gLevelSelectLevel = 0;
        gLevelSelectMode = 2;
        gLevelType = LEVEL_TYPE_PLUS;
        arr[0] = &gLevelSelectPlusData;
        arr[1] = &gLevelSelectPlusData;
        arr[2] = &gLevelSelectPlusData;
        arr[3] = gLevelSelectPlusBackgrounds[gLevelSelectWorld];
        load_graphics_config_08032F24(arr, 3);
        load_predefined_palette(gLevelSelectPlusPaletteIDs[gLevelSelectWorld], 3);
        gUnknown_03000070 = sub_08006968(&gLevelSelectPlusData);
    }
    else
    {
        gLevelSelectMode = 0;
        arr[0] = &gLevelSelectData;
        arr[1] = &gLevelSelectData;
        arr[2] = &gLevelSelectData;
        arr[3] = gLevelSelectBackgrounds[gLevelSelectWorld];
        load_graphics_config_08032F24(arr, 3);
        load_predefined_palette(gLevelSelectPaletteIDs[gLevelSelectWorld], 3);
        gUnknown_03000070 = sub_08006968(&gLevelSelectData);
    }
    gUnknown_03000078 = 0x800;
    gUnknown_03000074 = temp2 = arena_allocate(0x800);
    CpuFill16(0, gUnknown_03000074, gUnknown_03000078);
    gUnknown_03000BD0 = 0;
    DmaFill16(3, 0xA0, OAM, OAM_SIZE/2);
    if (sound_is_music_finished())
        play_bgm(10, 128, 1);
    save_blend_regs_from_graphicsconfig(&gLevelSelectData);
    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    CpuFill16(0, &gBGLayerOffsets, sizeof(gBGLayerOffsets));
}

void sub_0801562C(void)
{
    u8 spC;

    if (gNewKeys & DPAD_UP)
    {
        if (gLevelSelectLevel < 8)
        {
            gLevelSelectMode = 1;
            play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            gLevelSelectLevel -= 8;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gNewKeys & DPAD_DOWN)
    {
        if (gLevelSelectLevel < 8)
        {
            if (gLevelSelectLevel == 6)
            {
                if (get_level_stats_0800FE2C(gLevelType, gLevelSelectWorld, 7, &spC))
                {
                    gLevelSelectLevel += 8;
                    play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                }
                else
                {
                    play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
                }
            }
            else if (is_level_unlocked(gLevelType, gLevelSelectWorld, (gLevelSelectLevel + 8) >> 1))
            {
                gLevelSelectLevel += 8;
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
        }
        else
        {
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gNewKeys & R_BUTTON)
    {
        sub_08016260();
    }
    else if (gNewKeys & L_BUTTON)
    {
        sub_080161AC();
    }
    else if (gNewKeys & DPAD_RIGHT)
    {
        if (gLevelSelectLevel < 11)
        {
            if (is_level_unlocked(gLevelType, gLevelSelectWorld, (gLevelSelectLevel + 2) >> 1))
            {
                gLevelSelectLevel += 2;
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
        }
        else if (gLevelSelectLevel < (u32)(gUnknown_08B2CA5C[0].unk4[gLevelSelectWorld].unk0 - 1))
        {
            if (gLevelSelectLevel < 12)
            {
                if (is_level_unlocked(gLevelType, gLevelSelectWorld, 7))
                {
                    gLevelSelectLevel += 1;
                    play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                }
                if (is_level_unlocked(gLevelType, gLevelSelectWorld + 1, 0))
                {
                    gLevelSelectLevel += 2;
                    play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                }
                else
                {
                    play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
                }
            }
            else if (get_level_stats_0800FE2C(gLevelType, gLevelSelectWorld, 7, &spC))
            {
                gLevelSelectLevel += 2;
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
        }
        else
        {
            gLevelSelectLevel = 0;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gNewKeys & DPAD_LEFT)
    {
        if (gLevelSelectLevel > 0)
        {
            if (is_level_unlocked(gLevelType, gLevelSelectWorld, (gLevelSelectLevel - 1) >> 1))
            {
                gLevelSelectLevel -= 2;
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
        }
        else if (is_level_unlocked(gLevelType, gLevelSelectWorld, 7))
        {
            gLevelSelectLevel = 14;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (pressed_a_or_start_08034004())
    {
        if (gLevelSelectWorld == 0)
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            if (gLevelSelectLevel < 14)
            {
                gLevelType = LEVEL_TYPE_MAIN;
                gNextLevelID = gLevelSelectLevel;
                gCurrentWorld = gLevelSelectWorld;
                tutorial_level_setup(gLevelSelectWorld, (gLevelSelectLevel + 1) >> 1);
                sub_08004428(gNextLevelInLevelTable.unk0->levelData);
                change_main_state(MAIN_STATE_TUTORIAL, USE_FADE);
                gUnknown_030012F8 = 0;
            }
            else
            {
                gLevelType = LEVEL_TYPE_MAIN;
                gLevelSelectLevel -= 1;
                gNextLevelID = gLevelSelectLevel;
                gCurrentWorld = gLevelSelectWorld;
                level_setup(gLevelSelectWorld, gLevelSelectLevel);
                sub_08004428(gNextLevelInLevelTable.unk0->levelData);
                change_main_state(MAIN_STATE_LEVEL_PLAY, USE_FADE);
            }

        }
        else if (is_world_or_expert_level_completed_080103C8(gLevelType, gLevelSelectWorld - 1))
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            if (gLevelSelectLevel < 14)
            {
                gLevelType = LEVEL_TYPE_MAIN;
                gNextLevelID = gLevelSelectLevel;
                gCurrentWorld = gLevelSelectWorld;
                tutorial_level_setup(gLevelSelectWorld, (gLevelSelectLevel + 1) >> 1);
                sub_08004428(gNextLevelInLevelTable.unk0->levelData);
                change_main_state(MAIN_STATE_TUTORIAL, USE_FADE);
                gUnknown_030012F8 = 0;
            }
            else
            {
                gMiniMariosRescued_03001BA0 = 0;
                gLevelType = LEVEL_TYPE_MAIN;
                gLevelSelectLevel -= 1;
                gNextLevelID = gLevelSelectLevel;
                gCurrentWorld = gLevelSelectWorld;
                level_setup(gLevelSelectWorld, gLevelSelectLevel);
                sub_08004428(gNextLevelInLevelTable.unk0->levelData);
                change_main_state(MAIN_STATE_LEVEL_PLAY, USE_FADE);
            }
        }
        else
        {
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gNewKeys & B_BUTTON)
    {
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        change_main_state(MAIN_STATE_FILE_SELECT, USE_FADE);
    }
}

void sub_08015A54(void)
{
    int dumb;

    if (gNewKeys & DPAD_DOWN)
    {
        if (gLevelSelectWorldCursor > 5)
        {
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        }
        else if (is_level_unlocked(gLevelType, gLevelSelectWorldCursor, 0))
        {
            gLevelSelectLevelCursor = gLevelSelectLevel = 0;
            if (gLevelSelectWorld == gLevelSelectWorldCursor)
            {
                gLevelSelectMode = 0;
                play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                gLevelSelectWorld = gLevelSelectWorldCursor;
                gLevelSelectLevel = gLevelSelectLevelCursor;
                dumb = 1;
                gLevelSelect_03000083 = 1;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            }
        }
        else
        {
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (sub_0801B224() == 0)
    {
        if (gNewKeys & (A_BUTTON|START_BUTTON))
        {
            if (gLevelSelectWorldCursor == 6)
            {
                gLevelType = LEVEL_TYPE_MAIN_BOSS;
                play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
                level_setup(0, 0);
                gCurrentWorld = 0;
                gNextLevelID = 0;
                sub_08004428(gNextLevelInLevelTable.unk0->levelData);
                change_main_state(MAIN_STATE_LEVEL_PLAY, USE_FADE);
            }
            else if (gLevelSelectWorldCursor == 7)
            {
                gLevelSelectMode = 3;
                gLevelSelectWorld = gLevelSelectWorldCursor = 0;
                gLevelSelectLevel = gLevelSelectLevelCursor = 0;
                gLevelSelect_03000083 = 7;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                sub_080150F0(4);
                play_sound_effect_08071990(SE_PLUS_MAIN, 8, 16, 64, 0, 128, 0);
            }
            else if (is_level_unlocked(gLevelType, gLevelSelectWorldCursor, gLevelSelectLevelCursor))
            {
                if (gLevelSelectWorld == gLevelSelectWorldCursor)
                {
                    gLevelSelectMode = 0;
                    play_sound_effect_08071990(SE_CURSOR_M, 8, 16, 64, 0, 128, 0);
                }
                else
                {
                    gLevelSelectWorld = gLevelSelectWorldCursor;
                    gLevelSelectLevel = 0;
                    dumb = 1;
                    gLevelSelect_03000083 = 1;
                    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                    play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
                }
            }
            else
            {
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
        }
        else if (gNewKeys & B_BUTTON)
        {
            play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
            change_main_state(MAIN_STATE_FILE_SELECT, USE_FADE);
        }
    }
}

void sub_08015C68(void)
{
    if (gNewKeys & 0x40)
    {
        if (gLevelSelectLevel <= 2)
        {
            gLevelSelectMode = 3;
            play_sound_effect_08071990(178, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            if (gLevelSelectLevel == 6)
                gLevelSelectLevel -= 4;
            else
                gLevelSelectLevel -= 3;
            play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gNewKeys & 0x80)
    {
        if (gLevelSelectLevel <= 2)
        {
            if (is_level_unlocked(gLevelType, gLevelSelectWorld - 1, gLevelSelectLevel + 3))
            {
                gLevelSelectLevel += 3;
                play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
            }
        }
        else
        {
            play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gNewKeys & 0x10)
    {
        if (gLevelSelectLevel < (u32)(gUnknown_08B2CDF4[0].unk4[gLevelSelectWorld - 1].unk0 - 1))
        {
            if (is_level_unlocked(gLevelType, gLevelSelectWorld - 1, gLevelSelectLevel + 1))
            {
                gLevelSelectLevel += 1;
                play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
            }
        }
        else
        {
            gLevelSelectLevel = 0;
            play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gNewKeys & 0x20)
    {
        if (gLevelSelectLevel > 0)
        {
            if (is_level_unlocked(gLevelType, gLevelSelectWorld - 1, gLevelSelectLevel - 1))
            {
                gLevelSelectLevel -= 1;
                play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
            }
        }
        else
        {
            if (is_level_unlocked(gLevelType, gLevelSelectWorld - 1, 6))
            {
                gLevelSelectLevel = 6;
                play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
            }
        }
    }
    else if (gNewKeys & 0x100)
    {
        sub_08016654();
    }
    else if (gNewKeys & 0x200)
    {
        sub_080163F4();
    }
    else if (pressed_a_or_start_08034004())
    {
        if (gLevelSelectWorld == 1)
        {
            gLevelType = 1;
            play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
            gNextLevelID = gLevelSelectLevel;
            gCurrentWorld = gLevelSelectWorld - 1;
            level_setup(gLevelSelectWorld - 1, gLevelSelectLevel);
            sub_08004428(gNextLevelInLevelTable.unk0->levelData);
            change_main_state(13, USE_FADE);
        }
        else if (is_level_unlocked(gLevelType, gLevelSelectWorld - 1, gLevelSelectLevel))
        {
            gLevelType = 1;
            play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
            gNextLevelID = gLevelSelectLevel;
            gCurrentWorld = gLevelSelectWorld - 1;
            level_setup(gLevelSelectWorld - 1, gLevelSelectLevel);
            sub_08004428(gNextLevelInLevelTable.unk0->levelData);
            change_main_state(13, USE_FADE);
        }
        else
        {
            play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gNewKeys & 2)
    {
        play_sound_effect_08071990(22, 8, 16, 64, 0, 128, 0);
        change_main_state(3, USE_FADE);
    }
}

void sub_08015F78(void)
{
    int dumb;

    if (gNewKeys & 0x80)
    {
        if (gLevelSelectWorldCursor > 6)
        {
            // to _0801616C
            play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        }
        //_08015FA4
        else
        {
            if (gLevelSelectWorldCursor == 0)
            {
                play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
            }
            else if (is_level_unlocked(gLevelType, gLevelSelectWorldCursor - 1, 0))
            {
                gLevelSelectLevelCursor = gLevelSelectLevel = 0;
                if (gLevelSelectWorld == gLevelSelectWorldCursor)
                {
                    gLevelSelectMode = 2;
                    play_sound_effect_08071990(178, 8, 16, 64, 0, 128, 0);
                }
                else
                {
                    //_08016004
                    gLevelSelectWorld = gLevelSelectWorldCursor;
                    gLevelSelectLevel = gLevelSelectLevelCursor;
                    dumb = 4;
                    gLevelSelect_03000083 = 4;
                    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                    play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
                }
            }
            else
            {
                //to _0801616C
                play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
            }
        }
    }
    //_0801602C
    else if (sub_0801B258() == 0)
    {
        if (gNewKeys & 9)
        {
            if (gLevelSelectWorldCursor > 6)
            {
                gLevelType = 5;
                play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
                level_setup(0, 1);
                gNextLevelID = 1;
                gCurrentWorld = 0;
                sub_08004428(gNextLevelInLevelTable.unk0->levelData);
                change_main_state(13, USE_FADE);
            }
            //_080160A4
            else if (gLevelSelectWorldCursor == 0)
            {
                gLevelSelectMode = 1;
                gLevelSelectWorld = gLevelSelectWorldCursor = 7;
                gLevelSelectLevel = gLevelSelectLevelCursor = 0;
                gLevelSelect_03000083 = 9;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                sub_080150F0(5);
                play_sound_effect_08071990(183, 8, 16, 64, 0, 128, 0);
            }
            //_080160F4
            else if (is_level_unlocked(gLevelType, gLevelSelectWorldCursor - 1, gLevelSelectLevelCursor))
            {
                if (gLevelSelectWorld == gLevelSelectWorldCursor)
                {
                    gLevelSelectMode = 2;
                    play_sound_effect_08071990(24, 8, 16, 64, 0, 128, 0);
                }
                else
                {
                    gLevelSelectWorld--;
                    gLevelSelectLevel = 0;
                    dumb = 4;
                    gLevelSelect_03000083 = 4;
                    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                    play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
                }
            }
            //_0801616C
            else
            {
                play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
            }
        }
        //_08016180
        else if (gNewKeys & 2)
        {
            play_sound_effect_08071990(22, 8, 16, 64, 0, 128, 0);
            change_main_state(3, USE_FADE);
        }
    }
}

void sub_080161AC(void)
{
    int temp;

    if (gLevelSelectWorldCursor > 0)
    {
        if (gLevelSelectWorldCursor <= 6)
        {
            gUnknown_03000094->unk0 = 15;
            REG_BLDCNT = 0x3D42;
            REG_BLDALPHA = ((15 - gUnknown_03000094->unk0) << 8) | gUnknown_03000094->unk0;
            temp = 3;
            gUnknown_03000094->unk6 = 5;
            gLevelSelect_03000083 = temp;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            gUnknown_03000094->unk0 = 15;
        }
        gLevelSelectWorldCursor--;
        gLevelSelectWorld = gLevelSelectWorldCursor;
        gLevelSelectLevel = gLevelSelectLevelCursor = 0;
        play_sound_effect_08071990(177, 8, 16, 64, 0, 128, 0);
    }
    else
    {
        play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
    }
}

void sub_08016260(void)
{
    int dumb;

    if (gLevelSelectWorldCursor <= 4)
    {
        if (is_world_or_expert_level_completed_080103C8(gLevelType, gLevelSelectWorldCursor))
        {
            gLevelSelectWorldCursor++;
            gLevelSelectWorld = gLevelSelectWorldCursor;
            gLevelSelectLevel = gLevelSelectLevelCursor = 0;
            dumb = 3;
            gUnknown_03000094->unk6 = 5;
            gLevelSelect_03000083 = 3;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            gUnknown_03000094->unk0 = 15;
            REG_BLDALPHA = 15;
            play_sound_effect_08071990(177, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gLevelSelectWorldCursor == 5)
    {
        if (is_world_or_expert_level_completed_080103C8(gLevelType, 5))
        {
            gLevelSelectWorldCursor++;
            gLevelSelectWorld = gLevelSelectWorldCursor;
            gLevelSelectLevel = gLevelSelectLevelCursor = 0;
            dumb = 13;
            gLevelSelect_03000083 = 13;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            gUnknown_03000094->unk0 = 15;
            REG_BLDALPHA = 15;
            play_sound_effect_08071990(177, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (sub_08014BD0() != 0)
    {
        gLevelSelectMode = 3;
        gLevelSelectWorld = gLevelSelectWorldCursor = 1;
        gLevelSelectLevel = gLevelSelectLevelCursor = 0;
        dumb = 7;
        gLevelSelect_03000083 = 7;
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
        sub_080150F0(4);
        play_sound_effect_08071990(183, 8, 16, 64, 0, 128, 0);
    }
    else
    {
        play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
    }
}

void sub_080163F4(void)
{
    int dumb;

    if (gLevelSelectWorldCursor > 0)
    {
        if (gLevelSelectWorldCursor == 1)
        {
            gLevelSelectMode = 1;
            gLevelSelectWorld = gLevelSelectWorldCursor = 6;
            gLevelSelectLevel = gLevelSelectLevelCursor = 0;
            dumb = 9;
            gLevelSelect_03000083 = 9;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            sub_080150F0(5);
            play_sound_effect_08071990(183, 8, 16, 64, 0, 128, 0);
        }
        else if (gLevelSelectWorldCursor > 1)
        {
            gUnknown_03000094->unk0 = 15;
            REG_BLDCNT = 0x3D42;
            REG_BLDALPHA = ((15 - gUnknown_03000094->unk0) << 8) | gUnknown_03000094->unk0;
            dumb = 6;
            gUnknown_03000094->unk6 = 5;
            gLevelSelect_03000083 = 6;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            gUnknown_03000094->unk0 = 15;
            if (gLevelSelectWorldCursor == 8)
                gLevelSelectWorldCursor--;
            gLevelSelectWorldCursor--;
            gLevelSelectWorld = gLevelSelectWorldCursor;
            gLevelSelectLevel = gLevelSelectLevelCursor = 0;
            play_sound_effect_08071990(177, 8, 16, 64, 0, 128, 0);
        }
        else if (is_level_unlocked(5, 0, 0))
        {
            gLevelSelectWorld = gLevelSelectWorldCursor = 7;
            gLevelSelectLevel = gLevelSelectLevelCursor = 0;
            dumb = 16;
            gLevelSelect_03000083 = 16;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            gUnknown_03000094->unk0 = 15;
            REG_BLDALPHA = gUnknown_03000094->unk0;
            gLevelSelectWorldCursor = 8;
            play_sound_effect_08071990(177, 8, 16, 64, 0, 128, 0);
        }
        else if (is_level_unlocked(1, 5, 0))
        {
            gLevelSelectWorld = gLevelSelectWorldCursor = 6;
            gLevelSelectLevel = gLevelSelectLevelCursor = 0;
            gUnknown_03000094->unk0 = 15;
            REG_BLDCNT = 0x3D42;
            REG_BLDALPHA = ((15 - gUnknown_03000094->unk0) << 8) | gUnknown_03000094->unk0;
            dumb = 6;
            gUnknown_03000094->unk6 = 5;
            gLevelSelect_03000083 = 6;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            gUnknown_03000094->unk0 = 15;
            REG_BLDALPHA = gUnknown_03000094->unk0;
            gLevelSelectWorldCursor = 7;
            play_sound_effect_08071990(177, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        }
    }
    else
    {
        gLevelSelectMode = 1;
        gLevelSelectWorld = gLevelSelectWorldCursor = 7;
        gLevelSelectLevel = gLevelSelectLevelCursor = 0;
        dumb = 9;
        gLevelSelect_03000083 = 9;
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
        sub_080150F0(5);
        play_sound_effect_08071990(183, 8, 16, 64, 0, 128, 0);
    }
}

void sub_08016654(void)
{
    int dumb;

    if (gLevelSelectWorldCursor <= (u32)gUnknown_08B2CDF4[0].unk0)
    {
        if (gLevelSelectWorldCursor == 0)
        {
            gLevelSelectWorldCursor++;
            gLevelSelectWorld = gLevelSelectWorldCursor;
            gLevelSelectLevel = gLevelSelectLevelCursor = 0;
            play_sound_effect_08071990(177, 8, 16, 64, 0, 128, 0);
        }
        else if (gLevelSelectWorldCursor <= 5)
        {
            if (is_world_or_expert_level_completed_080103C8(gLevelType, gLevelSelectWorldCursor - 1))
            {
                gLevelSelectWorldCursor++;
                gLevelSelectWorld = gLevelSelectWorldCursor;
                gLevelSelectLevel = gLevelSelectLevelCursor = 0;
                gUnknown_03000094->unk0 = 15;
                REG_BLDCNT = 0x3D42;
                REG_BLDALPHA = ((15 - gUnknown_03000094->unk0) << 8) | gUnknown_03000094->unk0;
                dumb = 6;
                gUnknown_03000094->unk6 = 5;
                gLevelSelect_03000083 = 6;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                gUnknown_03000094->unk0 = 15;
                REG_BLDALPHA = gUnknown_03000094->unk0;
                play_sound_effect_08071990(177, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
            }
        }
        else if (is_level_unlocked(5, 0, 0))
        {
            if (gLevelSelectWorldCursor == 6)
            {
                gLevelSelectWorldCursor++;
                gLevelSelectWorld = gLevelSelectWorldCursor;
                gLevelSelectLevel = gLevelSelectLevelCursor = 0;
                dumb = 16;
                gLevelSelect_03000083 = 16;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                gUnknown_03000094->unk0 = 15;
                REG_BLDALPHA = gUnknown_03000094->unk0;
                play_sound_effect_08071990(177, 8, 16, 64, 0, 128, 0);
                return;
            }
            else if (gLevelSelectWorldCursor == 7)
            {
                gLevelSelectWorld = gLevelSelectWorldCursor = 0;
                gLevelSelectLevel = gLevelSelectLevelCursor = 0;
                gUnknown_03000094->unk0 = 15;
                REG_BLDCNT = 0x3D42;
                REG_BLDALPHA = ((15 - gUnknown_03000094->unk0) << 8) | gUnknown_03000094->unk0;
                dumb = 6;
                gUnknown_03000094->unk6 = 5;
                gLevelSelect_03000083 = 6;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                gUnknown_03000094->unk0 = 15;
                REG_BLDALPHA = gUnknown_03000094->unk0;
                play_sound_effect_08071990(177, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
            }
        }
        else
        {
            play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        }
    }
    else
    {
        play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
    }
}

void sub_0801685C(void)
{
    int dumb;

    if (gNewKeys & 0x80)
    {
        gLevelSelectMode = 4;
        dumb = 11;
        gLevelSelect_03000083 = 11;
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
        play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
    }
    else
    {
        if (gNewKeys & 0x10)
            play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        else if (gNewKeys & 0x20)
        {
            gLevelSelectWorldCursor--;
            gLevelSelectMode = 1;
            play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
        }
        if (gNewKeys & 9)
        {
            gLevelSelectMode = 4;
            dumb = 11;
            gLevelSelect_03000083 = 11;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            play_sound_effect_08071990(24, 8, 16, 64, 0, 128, 0);
        }
        else if (gNewKeys & 2)
        {
            play_sound_effect_08071990(22, 8, 16, 64, 0, 128, 0);
            change_main_state(3, USE_FADE);
        }
    }
}

void sub_08016964(void)
{
    if (gNewKeys & 0x40)
    {
        gLevelSelectMode = 1;
        play_sound_effect_08071990(178, 8, 16, 64, 0, 128, 0);
    }
    else if (gNewKeys & 9)
    {
        gLevelType = 4;
        play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
        level_setup(0, 0);
        gCurrentWorld = 0;
        gNextLevelID = 0;
        sub_08004428(gNextLevelInLevelTable.unk0->levelData);
        change_main_state(13, USE_FADE);
    }
    else if (gNewKeys & 2)
    {
        play_sound_effect_08071990(22, 8, 16, 64, 0, 128, 0);
        change_main_state(3, USE_FADE);
    }
}

void sub_08016A24(void)
{
    int dumb;

    if (gNewKeys & 0x80)
    {
        gLevelSelectMode = 5;
        dumb = 14;
        gLevelSelect_03000083 = 14;
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
        play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
    }
    else
    {
        if (gNewKeys & 0x10)
            play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        else if (gNewKeys & 0x20)
        {
            gLevelSelectWorldCursor--;
            gLevelSelectMode = 3;
            play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
        }
        if (gNewKeys & 9)
        {
            gLevelSelectMode = 5;
            dumb = 14;
            gLevelSelect_03000083 = 14;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            play_sound_effect_08071990(24, 8, 16, 64, 0, 128, 0);
        }
        else if (gNewKeys & 2)
        {
            play_sound_effect_08071990(22, 8, 16, 64, 0, 128, 0);
            change_main_state(3, USE_FADE);
        }
    }
}

void sub_08016B2C(void)
{
    if (gNewKeys & 0x40)
    {
        gLevelSelectMode = 3;
        play_sound_effect_08071990(178, 8, 16, 64, 0, 128, 0);
    }
    else if (gNewKeys & 9)
    {
        gLevelType = 5;
        play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
        level_setup(0, 1);
        gNextLevelID = 1;
        gCurrentWorld = 0;
        sub_08004428(gNextLevelInLevelTable.unk0->levelData);
        change_main_state(13, USE_FADE);
    }
    else if (gNewKeys & 2)
    {
        play_sound_effect_08071990(22, 8, 16, 64, 0, 128, 0);
        change_main_state(3, USE_FADE);
    }
}

void level_select_main(void)
{
    update_fade_from_black();
    process_input();
    if (gLevelSelect_03000083 != 0)
    {
        gBGLayerOffsets.bg3_x = gUnknown_03000094->unk4 = 0;
        switch (gLevelSelect_03000083)
        {
        case 1:
            if (sub_08015238(1))
                gLevelSelect_03000083 = 3;
            break;
        case 2:
            if (sub_08015238(0))
            {
                if (gLevelSelectMode == 1)
                    gLevelSelectMode = 1;
                else
                    gLevelSelectMode = 0;
                gLevelSelect_03000083 = 0;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            }
            else if (gUnknown_03000094->unk6 == 0)
            {
                if (gNewKeys & 0x110)
                    sub_08016260();
                else if (gNewKeys & 0x220)
                    sub_080161AC();
            }
            else
                gUnknown_03000094->unk6--;
            break;
        case 6:
            sub_080150F0(1);
            gLevelSelect_03000083 = 5;
            break;
        case 4:
            if (sub_08015238(1))
                gLevelSelect_03000083 = 6;
            break;
        case 5:
            if (sub_08015238(0))
            {
                if (gLevelSelectMode == 3)
                    gLevelSelectMode = 3;
                else
                    gLevelSelectMode = 2;
                gLevelSelect_03000083 = 0;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            }
            else if (gUnknown_03000094->unk6 != 0)
                gUnknown_03000094->unk6--;
            else if (gNewKeys & 0x110)
                sub_08016654();
            else if (gNewKeys & 0x220)
                sub_080163F4();
            break;
        case 3:
            sub_080150F0(0);
            gLevelSelect_03000083 = 2;
            break;
        case 11:
            if (sub_08015238(1))
                gLevelSelect_03000083 = 13;
            break;
        case 12:
            if (sub_08015238(0))
            {
                gLevelSelectMode = 1;
                gLevelSelect_03000083 = 0;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            }
            break;
        case 13:
            gLevelSelect_03000083 = 12;
            sub_080150F0(2);
            break;
        case 14:
            if (sub_08015238(1))
                gLevelSelect_03000083 = 16;
            break;
        case 15:
            if (sub_08015238(0))
            {
                gLevelSelectMode = 3;
                gLevelSelect_03000083 = 0;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            }
            break;
        case 16:
            gLevelSelect_03000083 = 15;
            sub_080150F0(3);
            break;
        case 7:
            if (update_fade_to_black_08029F7C())
            {
                struct GraphicsConfig *arr[4];

                arr[0] = &gLevelSelectPlusData;
                arr[1] = &gLevelSelectPlusData;
                arr[2] = &gLevelSelectPlusData;
                arr[3] = gLevelSelectPlusBackgrounds[gLevelSelectWorld - 1];
                load_graphics_config_08032F24(arr, 3);
                load_predefined_palette(gLevelSelectPlusPaletteIDs[gLevelSelectWorld - 1], 3);
                CpuFill16(0, gUnknown_03000074, gUnknown_03000078);
                gUnknown_03000070 = sub_08006968(&gLevelSelectPlusData);
                gLevelSelect_03000083 = 8;
                save_blend_regs(0x3D42, 0xA0A0, 0);
            }
            break;
        case 8:
            if (!gIsFadeInProgress)
            {
                gLevelType = 1;
                gLevelSelect_03000083 = 0;
                gLevelSelectMode = 3;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            }
            break;
        case 9:
            if (update_fade_to_black_08029F7C())
            {
                struct GraphicsConfig *arr[4];

                arr[0] = &gLevelSelectData;
                arr[1] = &gLevelSelectData;
                arr[2] = &gLevelSelectData;
                arr[3] = &gLevelSelectDKBossBG;
                load_graphics_config_08032F24(arr, 3);
                CpuFill16(0, gUnknown_03000074, gUnknown_03000078);
                load_predefined_palette(17, 3);
                gUnknown_03000070 = sub_08006968(&gLevelSelectData);
                gLevelSelect_03000083 = 10;
                save_blend_regs(0x3D42, 0xA0A0, 0);
            }
            break;
        case 10:
            if (!gIsFadeInProgress)
            {
                gLevelType = 0;
                gLevelSelect_03000083 = 0;
                gLevelSelectMode = 1;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            }
            break;
        }
    }
    else
    {
        if (gLevelType == 0)
        {
            if (gLevelSelectWorldCursor <= 5)
            {
                gUnknown_03000094->unk4 += 80;
                gBGLayerOffsets.bg3_x = gUnknown_03000094->unk4 >> 8;
            }
            else
            {
                gBGLayerOffsets.bg3_x = gUnknown_03000094->unk4 = 0;
            }
        }
        else
        {
            if (gLevelSelectWorldCursor<= 6)
            {
                gUnknown_03000094->unk4 += 80;
                gBGLayerOffsets.bg3_x = gUnknown_03000094->unk4 >> 8;
            }
            else
            {
                gBGLayerOffsets.bg3_x = gUnknown_03000094->unk4 = 0;
            }
        }
        switch (gLevelSelectMode)
        {
        case 0: sub_0801562C(); break;
        case 1: sub_08015A54(); break;
        case 2: sub_08015C68(); break;
        case 3: sub_08015F78(); break;
        case 4: sub_08016964(); break;
        case 5: sub_08016B2C(); break;
        }
    }
    sub_0801B288(&gUnknown_03000085, &gUnknown_0300008D, 6, gUnknown_085E1F2C);
    sub_0801B288(&gUnknown_03000088, &gUnknown_03000090, 18, gUnknown_085E2870);
    sub_0801B288(&gUnknown_03000086, &gUnknown_0300008E, 2, gUnknown_085E0AC4);
    sub_0801B288(&gUnknown_03000087, &gUnknown_0300008F, 2, gUnknown_085E0AC4);
    sub_0801B288(&gUnknown_03000089, &gUnknown_03000091, 2, gUnknown_085C240C);
    sub_0801B288(&gUnknown_0300008A, &gUnknown_03000092, 18, gUnknown_085C7A78);
    sub_0801B288(&gUnknown_0300008B, &gUnknown_0300008C, 18, gUnknown_085E3590);
    sub_0801711C();
}

void sub_0801711C(void)
{
    s16 i;

    CpuFill16(0, gUnknown_0300007C, 0x20);
    if (gLevelSelectMode == 0 || gLevelSelectMode == 1)
    {
        for (i = 0; i < 8; i++)
            gUnknown_0300007C[i].unk0 = get_level_stats_0800FB28(0, gLevelSelectWorld, i, &gUnknown_0300007C[i].unk1);
    }
    else if (gLevelSelectMode == 2 || gLevelSelectMode == 3)
    {
        for (i = 0; i < 7; i++)
            gUnknown_0300007C[i].unk0 = get_level_stats_0800FB28(1, gLevelSelectWorld - 1, i, &gUnknown_0300007C[i].unk1);
    }
}

extern struct { s32 x; s32 y; } gUnknown_08078904[];
extern struct { s32 x; s32 y; } gUnknown_08078944[];
extern struct SpriteTemplate gUnknown_080789F4[];
extern struct SpriteTemplate gUnknown_08078AB4[];

// inlined version of sub_0801B2CC?
// The functions that use this also match if this is written out
static inline void sub_0801B2CC_inline(int arg0)
{
    u16 var1 = (arg0 & 0xF00) >> 8;
    u16 var2 = (arg0 & 0xF000) >> 12;
    if (var1 == 15 && var2 == 0)
        var1 = 16;
    else if (var1 == 0 && var2 == 15)
        var2 = 16;
    REG_BLDCNT = BLDCNT_EFF_ALPHA | BLDCNT_BG0_SECOND | BLDCNT_BG1_SECOND | BLDCNT_BG2_SECOND | BLDCNT_BG3_SECOND | BLDCNT_OBJ_SECOND | BLDCNT_BD_SECOND;
    REG_BLDALPHA = var2 | (var1 << 8);
}

void sub_080171C8(s8 arg0, s8 arg1)
{
    u8 paletteNums[] = { 1, 2, 3, 4, 5, 6, 7, 9 };

    if (gLevelSelect_03000083 == 0 && !gIsFadeInProgress)
    {
        if (gLevelSelectMode == 0)
        {
            sub_0801B2CC_inline(gUnknown_085C7A78[gUnknown_0300008A].unk8);
            DmaCopy32(3, &gUnknown_085C7D00, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
            gOamBuffer[gUnknown_03000094->unk2].tileNum += gUnknown_03000094->unk14;
            gOamBuffer[gUnknown_03000094->unk2].objMode = 1;
            gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNums[arg1];
            gOamBuffer[gUnknown_03000094->unk2].x = gUnknown_08078904[arg0].x - 8;
            gOamBuffer[gUnknown_03000094->unk2].y = gUnknown_08078904[arg0].y - 8;
            gOamBuffer[gUnknown_03000094->unk2].priority = 1;
            gUnknown_03000094->unk2++;
        }
        else if (gLevelSelectMode == 1)
        {
            struct SpriteTemplate *sprite = &gUnknown_080789F4[arg1];

            sub_0801B2CC_inline(sprite->subSprites[gUnknown_03000088].unk8);
            DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
            asm(""::"r"(&gUnknown_03000094));  // needed to match
            gOamBuffer[gUnknown_03000094->unk2].objMode = 1;
            if (arg1 <= 5)
            {
                gOamBuffer[gUnknown_03000094->unk2].tileNum += gUnknown_03000094->unk8;
                gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNums[arg1];
            }
            else if (arg1 == 7)
            {
                gOamBuffer[gUnknown_03000094->unk2].tileNum += gUnknown_03000094->unkC;
                gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNums[arg1];
            }
            else
            {
                gOamBuffer[gUnknown_03000094->unk2].tileNum += gUnknown_03000094->unkA;
                gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNums[arg1];
            }
            gOamBuffer[gUnknown_03000094->unk2].x = (s16)sprite->x;
            gOamBuffer[gUnknown_03000094->unk2].y = sprite->y;
            gOamBuffer[gUnknown_03000094->unk2].priority = 0;
            gUnknown_03000094->unk2++;
        }
    }
}

void sub_080174FC(int unused, s8 arg1)
{
    s16 r4;
    s16 r5;

    if (arg1 > 6)
        arg1 = 6;
    r4 = arg1 * 5;
    r5 = arg1 * 3 + 1;
    if (arg1 > 3)
        r5--;
    sub_0800667C(0, 0, 32, 2, gUnknown_03000074, 5, 0);
    sub_08006548(r5, 0, gUnknown_03000070->unk108[r4], gUnknown_03000074, 5);
    sub_08006548(0, 2, gUnknown_03000070->unk108[r4 + 1], gUnknown_03000074, 5);
    sub_08006548(0, 5, gUnknown_03000070->unk108[r4 + 2], gUnknown_03000074, 5);
    sub_08006548(29, 5, gUnknown_03000070->unk108[r4 + 3], gUnknown_03000074, 5);
    sub_08006548(0, 17, gUnknown_03000070->unk108[r4 + 4], gUnknown_03000074, 5);

}

void sub_08017600(s8 arg0, s8 arg1)
{
    u8 paletteNums[] = { 1, 2, 3, 4, 5, 6, 7, 9 };

    if (gLevelSelect_03000083 == 0 && !gIsFadeInProgress)
    {
        if (gLevelSelectMode == 2)
        {
            if (arg1 >= 0)
            {
                sub_0801B2CC_inline(gUnknown_085C7A78[gUnknown_0300008A].unk8);
                DmaCopy32(3, &gUnknown_085C7D00, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
                gOamBuffer[gUnknown_03000094->unk2].tileNum += gUnknown_03000094->unk14;
                gOamBuffer[gUnknown_03000094->unk2].objMode = 1;
                gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNums[arg1];
                gOamBuffer[gUnknown_03000094->unk2].x = gUnknown_08078944[arg0].x - 8;
                gOamBuffer[gUnknown_03000094->unk2].y = gUnknown_08078944[arg0].y - 8;
                gOamBuffer[gUnknown_03000094->unk2].priority = 2;
                gUnknown_03000094->unk2++;
            }
        }
        else if (gLevelSelectMode == 3)
        {
            struct SpriteTemplate *sprite;

            if (arg1 < 0)
                arg1 = 7;
            sprite = &gUnknown_08078AB4[arg1];
            sub_0801B2CC_inline(sprite->subSprites[gUnknown_03000088].unk8);
            DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
            asm(""::"r"(&gUnknown_03000094));  // needed to match
            gOamBuffer[gUnknown_03000094->unk2].objMode = 1;
            if (arg1 <= 5)
            {
                gOamBuffer[gUnknown_03000094->unk2].tileNum += gUnknown_03000094->unk8;
                gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNums[arg1];
            }
            else if (arg1 == 7)
            {
                gOamBuffer[gUnknown_03000094->unk2].tileNum += gUnknown_03000094->unkC;
                gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNums[arg1];
            }
            else
            {
                gOamBuffer[gUnknown_03000094->unk2].tileNum += gUnknown_03000094->unkA;
                gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNums[arg1];
            }
            gOamBuffer[gUnknown_03000094->unk2].x = (s16)sprite->x;
            gOamBuffer[gUnknown_03000094->unk2].y = sprite->y;
            gOamBuffer[gUnknown_03000094->unk2].priority = 0;
            gUnknown_03000094->unk2++;
        }
    }
}

extern struct SpriteTemplate gUnknown_08078CC4[];
extern struct SpriteTemplate gUnknown_08078CF4[];

void sub_08017944(void)
{
    int frameNum = (gLevelSelectWorldCursor == 1) ? 1 : 0;
    register int dumb asm("r1");

    DmaCopy32(3, gUnknown_08078CF4[dumb = frameNum].oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum += gUnknown_03000094->unkE;
    gOamBuffer[gUnknown_03000094->unk2].x = 0;
    gOamBuffer[gUnknown_03000094->unk2].y = 252;
    gOamBuffer[gUnknown_03000094->unk2].priority = 0;
    gUnknown_03000094->unk2++;
}

void sub_080179F8(void)
{
    int frameNum = (gLevelSelectWorldCursor == 6) ? 1 : 0;
    register int dumb asm("r1");

    if (sub_08014BD0() != 0)
    {
        DmaCopy32(3, gUnknown_08078CC4[dumb = frameNum].oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
        gOamBuffer[gUnknown_03000094->unk2].tileNum += gUnknown_03000094->unkE;
        gOamBuffer[gUnknown_03000094->unk2].x = 184;
        gOamBuffer[gUnknown_03000094->unk2].y = 252;
        gOamBuffer[gUnknown_03000094->unk2].priority = 0;
        gUnknown_03000094->unk2++;
    }
}

void sub_08017ABC(int unused, s8 arg1)
{
    s16 r5;
    s16 r4;

    arg1--;
    if (arg1 < 0)
        arg1 = 0;
    else if (arg1 > 6)
        arg1 = 6;
    r5 = arg1 * 5;
    r4 = arg1 * 3 + 7;
    sub_0800667C(0, 0, 32, 2, gUnknown_03000074, 5, 0);
    sub_08006548(r4, 0, gUnknown_03000070->unk108[r5], gUnknown_03000074, 5);
    sub_08006548(0, 2, gUnknown_03000070->unk108[r5 + 1], gUnknown_03000074, 5);
    sub_08006548(0, 5, gUnknown_03000070->unk108[r5 + 2], gUnknown_03000074, 5);
    sub_08006548(29, 5, gUnknown_03000070->unk108[r5 + 3], gUnknown_03000074, 5);
    sub_08006548(0, 17, gUnknown_03000070->unk108[r5 + 4], gUnknown_03000074, 5);
}

void sub_08017BD0(u8 x, u8 y, u8 maxLen, u16 n, u8 arg4)
{
    int i;
    int end = x + (maxLen - 1) * 8;

    if (arg4)
    {
        for (i = 0; i < maxLen; i++)
        {
            u16 digit = n % 10;

            DmaCopy32(3, gUnknown_085DEA9C + digit * 64, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 64);
            DmaCopy32(3, &gUnknown_085DEA94, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
            gOamBuffer[gUnknown_03000094->unk2].tileNum += gVRAMCurrTileNum_03001930;
            gOamBuffer[gUnknown_03000094->unk2].x = end - i * 8;
            gOamBuffer[gUnknown_03000094->unk2].y = y;
            gOamBuffer[gUnknown_03000094->unk2].priority = 0;
            gVRAMCurrTileNum_03001930 += 2;
            gObjVRAMCopyOffset_0300192C += 64;
            gUnknown_03000094->unk2++;
            n /= 10;
        }
    }
    else
    {
        for (i = 0; i < maxLen; i++)
        {
            u16 digit = n % 10;

            DmaCopy32(3, gUnknown_082EC750 + digit * 64, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 64);
            DmaCopy32(3, &gUnknown_082EC748, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
            gOamBuffer[gUnknown_03000094->unk2].tileNum += gVRAMCurrTileNum_03001930;
            gOamBuffer[gUnknown_03000094->unk2].x = end - i * 8;
            gOamBuffer[gUnknown_03000094->unk2].y = y;
            gOamBuffer[gUnknown_03000094->unk2].paletteNum = 9;
            gOamBuffer[gUnknown_03000094->unk2].priority = 0;
            gVRAMCurrTileNum_03001930 += 2;
            gObjVRAMCopyOffset_0300192C += 64;
            gUnknown_03000094->unk2++;
            n /= 10;
        }
    }
}

void sub_08017E4C(u8 x, u8 y, u8 maxLen, u16 n)
{
    int i;
    int end = x + (maxLen - 1) * 8;

    for (i = 0; i < maxLen; i++)
    {
        u16 digit = n % 10;

        DmaCopy32(3, gUnknown_082EC750 + digit * 64, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 64);
        DmaCopy32(3, &gUnknown_082EC748, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
        gOamBuffer[gUnknown_03000094->unk2].tileNum += gVRAMCurrTileNum_03001930;
        gOamBuffer[gUnknown_03000094->unk2].x = end - i * 8;
        gOamBuffer[gUnknown_03000094->unk2].y = y;
        gOamBuffer[gUnknown_03000094->unk2].paletteNum = 9;
        gOamBuffer[gUnknown_03000094->unk2].priority = 0;
        gVRAMCurrTileNum_03001930 += 2;
        gObjVRAMCopyOffset_0300192C += 64;
        gUnknown_03000094->unk2++;
        n /= 10;
    }
}

void sub_08017FB8(void)
{
    DmaCopy32(3, gUnknown_085D0900, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x100);
    DmaCopy32(3, &gUnknown_085D08F8, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum += gVRAMCurrTileNum_03001930;
    gOamBuffer[gUnknown_03000094->unk2].x = 8;
    gOamBuffer[gUnknown_03000094->unk2].y = 136;
    gOamBuffer[gUnknown_03000094->unk2].priority = 0;
    gVRAMCurrTileNum_03001930 += 8;
    gObjVRAMCopyOffset_0300192C += 0x100;
    gUnknown_03000094->unk2++;
    sub_08017E4C(34, 140, 2, gLivesCount);
}

void sub_080180BC(void)
{
    DmaCopy32(3, gUnknown_085E2338, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x100);
    DmaCopy32(3, &gUnknown_085E2330, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum += gVRAMCurrTileNum_03001930;
    gOamBuffer[gUnknown_03000094->unk2].x = 58;
    gOamBuffer[gUnknown_03000094->unk2].y = 136;
    gOamBuffer[gUnknown_03000094->unk2].priority = 0;
    gVRAMCurrTileNum_03001930 += 8;
    gObjVRAMCopyOffset_0300192C += 0x100;
    gUnknown_03000094->unk2++;
    sub_08017E4C(83, 140, 2, sub_08014AB8());
}

void sub_080181BC(void)
{
    if (gLevelSelectMode == 2)
    {
        u8 r2 = gLevelSelectWorld - 1;

        if (r2 < 6)
        {
            u16 score = get_level_highscore_0801095C(r2, gLevelSelectLevel, 1);
            sub_08017BD0(172, 140, 6, score, gUnknown_0300007C[gLevelSelectLevelCursor].unk1 >> 7);
        }
    }
    else if (gLevelSelectMode == 0 && gLevelSelectWorld < 6)
    {
        u16 score = get_level_highscore_0801095C(gLevelSelectWorld, gLevelSelectLevel, 0);
        sub_08017BD0(172, 140, 6, score, gUnknown_0300007C[gLevelSelectLevelCursor].unk1 >> 7);
    }
}

void sub_0801827C(struct SpriteTemplate *sprite, u16 tileNum, int paletteNum, s16 x, s16 y)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = tileNum;
    gOamBuffer[gUnknown_03000094->unk2].x = (s16)sprite->x;
    gOamBuffer[gUnknown_03000094->unk2].y = sprite->y;
    gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNum;
    gOamBuffer[gUnknown_03000094->unk2].priority = 2;
    gUnknown_03000094->unk2++;
}

void sub_08018338(struct SpriteTemplate *sprite, u8 frameNum, u16 tileNum, s16 x, s16 y)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = tileNum;
    gOamBuffer[gUnknown_03000094->unk2].x = x + sprite->subSprites[frameNum].x_offset;
    gOamBuffer[gUnknown_03000094->unk2].y = y + sprite->subSprites[frameNum].y_offset;
    gOamBuffer[gUnknown_03000094->unk2].priority = 2;
    gUnknown_03000094->unk2++;
}

void sub_08018418(struct SpriteTemplate *sprite, u32 paletteNum, u8 frameNum)
{
    DmaCopy32(3, sprite->tileData, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, sprite->subSpriteSize);
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = gVRAMCurrTileNum_03001930;
    gOamBuffer[gUnknown_03000094->unk2].x = (s16)sprite->x;
    gOamBuffer[gUnknown_03000094->unk2].y = sprite->y;
    gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNum;
    gOamBuffer[gUnknown_03000094->unk2].priority = 2;
    gVRAMCurrTileNum_03001930 += sprite->unk6;
    gObjVRAMCopyOffset_0300192C += sprite->subSpriteSize;
    gUnknown_03000094->unk2++;
}

void sub_08018528(struct SpriteTemplate *sprite, u32 paletteNum)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = gUnknown_03000094->unk12;
    gOamBuffer[gUnknown_03000094->unk2].x = (s16)sprite->x;
    gOamBuffer[gUnknown_03000094->unk2].y = sprite->y;
    gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNum;
    gOamBuffer[gUnknown_03000094->unk2].priority = 2;
    gUnknown_03000094->unk2++;
}

void sub_080185EC(struct SpriteTemplate *sprite, u32 paletteNum)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = gUnknown_03000094->unk10;
    gOamBuffer[gUnknown_03000094->unk2].x = (s16)sprite->x;
    gOamBuffer[gUnknown_03000094->unk2].y = sprite->y;
    gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNum;
    gOamBuffer[gUnknown_03000094->unk2].priority = 2;
    gUnknown_03000094->unk2++;
}

void sub_080186B0(struct SpriteTemplate *sprite, u8 frameNum)
{
    DmaCopy32(3, sprite->tileData + sprite->subSprites[frameNum].index * sprite->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, sprite->subSpriteSize);
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = gVRAMCurrTileNum_03001930;
    gOamBuffer[gUnknown_03000094->unk2].x = (s16)sprite->x;
    gOamBuffer[gUnknown_03000094->unk2].y = sprite->y;
    gOamBuffer[gUnknown_03000094->unk2].priority = 2;
    gVRAMCurrTileNum_03001930 += sprite->unk6;
    gObjVRAMCopyOffset_0300192C += sprite->subSpriteSize;
    gUnknown_03000094->unk2++;
}

void sub_080187C0(struct SpriteTemplate *sprite, u8 frameNum, u8 paletteNum)
{
    DmaCopy32(3, sprite->tileData + sprite->subSprites[frameNum].index * sprite->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, sprite->subSpriteSize);
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = gVRAMCurrTileNum_03001930;
    gOamBuffer[gUnknown_03000094->unk2].x = (s16)sprite->x;
    gOamBuffer[gUnknown_03000094->unk2].y = sprite->y;
    gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNum;
    gOamBuffer[gUnknown_03000094->unk2].priority = 2;
    gVRAMCurrTileNum_03001930 += sprite->unk6;
    gObjVRAMCopyOffset_0300192C += sprite->subSpriteSize;
    gUnknown_03000094->unk2++;
}

void sub_080188E8(struct SpriteTemplate *sprite, u8 arg1)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = gUnknown_03000094->unk2A[arg1];
    gOamBuffer[gUnknown_03000094->unk2].x = (s16)sprite->x;
    gOamBuffer[gUnknown_03000094->unk2].y = sprite->y;
    gOamBuffer[gUnknown_03000094->unk2].priority = 0;
    gUnknown_03000094->unk2++;
}

void sub_08018998(struct SpriteTemplate *sprite)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = gUnknown_03000094->unk16;
    gOamBuffer[gUnknown_03000094->unk2].x = (s16)sprite->x;
    gOamBuffer[gUnknown_03000094->unk2].y = sprite->y;
    gOamBuffer[gUnknown_03000094->unk2].priority = 0;
    gUnknown_03000094->unk2++;
}

void sub_08018A3C(struct SpriteTemplate *sprite)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = gUnknown_03000094->unk18;
    gOamBuffer[gUnknown_03000094->unk2].x = (s16)sprite->x;
    gOamBuffer[gUnknown_03000094->unk2].y = sprite->y;
    gOamBuffer[gUnknown_03000094->unk2].priority = 0;
    gUnknown_03000094->unk2++;
}

void sub_08018AE0(struct SpriteTemplate *sprite, u8 frameNum, u16 x, u16 y)
{
    DmaCopy32(3, sprite->tileData + sprite->subSprites[frameNum].index * sprite->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, sprite->subSpriteSize);
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = gVRAMCurrTileNum_03001930;
    gOamBuffer[gUnknown_03000094->unk2].x = (x << 23) >> 23;
    gOamBuffer[gUnknown_03000094->unk2].y = y;
    gOamBuffer[gUnknown_03000094->unk2].priority = 2;
    gVRAMCurrTileNum_03001930 += sprite->unk6;
    gObjVRAMCopyOffset_0300192C += sprite->subSpriteSize;
    gUnknown_03000094->unk2++;
}

void sub_08018BE8(struct SpriteTemplate *sprite, u8 frameNum, int paletteNum, u16 x, u16 y)
{
    DmaCopy32(3, sprite->tileData + sprite->subSprites[frameNum].index * sprite->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, sprite->subSpriteSize);
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = gVRAMCurrTileNum_03001930;
    gOamBuffer[gUnknown_03000094->unk2].x = (x << 23) >> 23;
    gOamBuffer[gUnknown_03000094->unk2].y = y;
    gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNum;
    gOamBuffer[gUnknown_03000094->unk2].priority = 2;
    gVRAMCurrTileNum_03001930 += sprite->unk6;
    gObjVRAMCopyOffset_0300192C += sprite->subSpriteSize;
    gUnknown_03000094->unk2++;
}

void sub_08018D0C(struct SpriteTemplate *sprite, u8 frameNum, s16 x, s16 y)
{
    DmaCopy32(3, sprite->tileData + sprite->subSprites[frameNum].index * sprite->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, sprite->subSpriteSize);
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = gVRAMCurrTileNum_03001930;
    gOamBuffer[gUnknown_03000094->unk2].x = x + sprite->subSprites[frameNum].x_offset;
    gOamBuffer[gUnknown_03000094->unk2].y = y + sprite->subSprites[frameNum].y_offset;
    gOamBuffer[gUnknown_03000094->unk2].priority = 2;
    gVRAMCurrTileNum_03001930 += sprite->unk6;
    gObjVRAMCopyOffset_0300192C += sprite->subSpriteSize;
    gUnknown_03000094->unk2++;
}

void sub_08018E38(struct SpriteTemplate *sprite, u16 x, u16 y)
{
    if (gLevelSelect_03000083 == 0)
    {
        DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
        gOamBuffer[gUnknown_03000094->unk2].tileNum = gUnknown_03000094->unk1A;
        gOamBuffer[gUnknown_03000094->unk2].x = (x << 23) >> 23;
        gOamBuffer[gUnknown_03000094->unk2].y = y;
        gOamBuffer[gUnknown_03000094->unk2].priority = 0;
        gUnknown_03000094->unk2++;
    }
}

void sub_08018EE0(struct SpriteTemplate *sprite, u16 x, u16 y)
{
    if (gLevelSelect_03000083 == 0)
    {
        DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
        gOamBuffer[gUnknown_03000094->unk2].tileNum = gUnknown_03000094->unk1C;
        gOamBuffer[gUnknown_03000094->unk2].x = (x << 23) >> 23;
        gOamBuffer[gUnknown_03000094->unk2].y = y;
        gOamBuffer[gUnknown_03000094->unk2].priority = 0;
        gUnknown_03000094->unk2++;
    }
}

void sub_0801B174(void)
{
    struct SubSpriteTemplate *r4 = &gUnknown_085CD18C[gUnknown_0300008A];
    int r7 = 0;
    struct OamData_alt *r5 = (struct OamData_alt *)gOamBuffer;

    if (gUnknown_03000084 != 0)
    {
        u16 r6 = gUnknown_03000084;

        r5[r6].matrixNum_b0_2 = 0;
        r5[r6].affineMode = 3;
        if (!r5[r6].matrixNum_hflip)
        {
            r5[0].affineParam = r4->unk1A;
            r5[1].affineParam = r4->unk1C;
        }
        else
        {
            r5[r6].matrixNum_hflip = 0;
            r5[0].affineParam = -r4->unk1A;
            r5[1].affineParam = -r4->unk1C;
        }
        if (!((struct OamData_alt *)gOamBuffer)[r6].matrixNum_vflip)
        {
            (u16 *)(&r5[2].affineParam)[r7] = r4->unk1E;
            (u16 *)(&r5[3].affineParam)[r7] = r4->unk20;
        }
        else
        {
            ((struct OamData_alt *)gOamBuffer)[r6].matrixNum_vflip = 0;
            (u16 *)(&r5[2].affineParam)[r7] = -r4->unk1E;
            (u16 *)(&r5[3].affineParam)[r7] = -r4->unk20;
        }
    }
}

void level_select_end(void)
{
}

int sub_0801B224(void)
{
    if (gNewKeys & 0x110)
    {
        sub_08016260();
        return 1;
    }
    if (gNewKeys & 0x220)
    {
        sub_080161AC();
        return 1;
    }
    return 0;
}

int sub_0801B258(void)
{
    if (gNewKeys & 0x110)
    {
        sub_08016654();
        return 1;
    }
    if (gNewKeys & 0x220)
    {
        sub_080163F4();
        return 1;
    }
}

// may be an inline (see update_sprite_frame_anim in main_menu.c)
void sub_0801B288(s8 *pFrameNum, s8 *timer, s16 numFrames, struct SubSpriteTemplate *frames)
{
    if (--(*timer) <= 0)
    {
        (*pFrameNum)++;
        if (*pFrameNum >= numFrames)
            *pFrameNum = 0;
        *timer = frames[*pFrameNum].duration;
    }
}

// probably an inline
void sub_0801B2CC(int arg0)
{
    u16 var1 = (arg0 & 0xF00) >> 8;
    u16 var2 = (arg0 & 0xF000) >> 12;

    if (var1 == 15 && var2 == 0)
        var1 = 16;
    else if (var1 == 0 && var2 == 15)
        var2 = 16;
    REG_BLDCNT = BLDCNT_EFF_ALPHA | BLDCNT_BG0_SECOND | BLDCNT_BG1_SECOND | BLDCNT_BG2_SECOND | BLDCNT_BG3_SECOND | BLDCNT_OBJ_SECOND | BLDCNT_BD_SECOND;
    REG_BLDALPHA = var2 | (var1 << 8);
}
