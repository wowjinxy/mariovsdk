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
    u8 filler2[2];
    u16 unk4;
    u8 filler6[0x38-0x6];
};

extern struct GraphicsConfig *gLevelSelectBackgrounds[];
extern struct GraphicsConfig *gLevelSelectPlusBackgrounds[];
extern struct GraphicsConfig gLevelSelectData;
extern struct GraphicsConfig gLevelSelectPlusData;
extern struct GraphicsConfig gLevelSelectDKBossBG;
extern struct GraphicsConfig gLevelSelectDKPlusBossBG;
extern s8 gLevelSelectWorld;
extern s8 gLevelSelectLevel;
extern u8 gLevelSelectMode;
extern u8 gLevelSelectLevelCursor;
extern s8 gLevelSelectWorldCursor;
extern u32 gLevelSelectPaletteIDs[];
extern u32 gLevelSelectPlusPaletteIDs[];
extern struct UnknownStruct15 *gUnknown_03000070;
extern void *gUnknown_03000074;
extern u16 gUnknown_03000078;
extern void *gUnknown_0300007C;
extern u8 gLevelSelect_03000083;
extern u8 gUnknown_03000085;
extern u8 gUnknown_03000086;
extern u8 gUnknown_03000087;
extern u8 gUnknown_03000088;
extern u8 gUnknown_03000089;
extern u8 gUnknown_0300008A;
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

int sub_08015238(u8 arg0)
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

void level_select_end(void)
{
}
