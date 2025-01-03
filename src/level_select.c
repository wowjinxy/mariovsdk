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
    u16 unk1E;
    u16 unk20;
    u16 unk22;
    u16 unk24;
    u16 unk26;
    u16 unk28;
    u16 unk2A[7];
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
extern s8 gUnknown_03000085;
extern u8 gUnknown_03000086;
extern u8 gUnknown_03000087;
extern s8 gUnknown_03000088;
extern u8 gUnknown_03000089;
extern s8 gUnknown_0300008A;
extern s8 gUnknown_0300008B;
extern u8 gUnknown_0300008C;
extern u8 gUnknown_0300008D;
extern u8 gUnknown_0300008E;
extern u8 gUnknown_0300008F;
extern u8 gUnknown_03000090;
extern u8 gUnknown_03000091;
extern u8 gUnknown_03000092;
extern struct Struct94 *gUnknown_03000094;

asm(".section .rodata\n.balign 4\n");

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
                    gLevelSelectWorld = gLevelSelectWorldCursor - 1;
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

void sub_08018418(struct SpriteTemplate *sprite, s8 paletteNum)
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

void sub_08018528(struct SpriteTemplate *sprite, s8 paletteNum)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum = gUnknown_03000094->unk12;
    gOamBuffer[gUnknown_03000094->unk2].x = (s16)sprite->x;
    gOamBuffer[gUnknown_03000094->unk2].y = sprite->y;
    gOamBuffer[gUnknown_03000094->unk2].paletteNum = paletteNum;
    gOamBuffer[gUnknown_03000094->unk2].priority = 2;
    gUnknown_03000094->unk2++;
}

void sub_080185EC(struct SpriteTemplate *sprite, s8 paletteNum)
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

void sub_08018E38(struct SpriteTemplate *sprite, s16 x, s16 y)
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

void sub_08018EE0(struct SpriteTemplate *sprite, s16 x, s16 y)
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

extern struct SpriteTemplate gUnknown_08079354;
extern struct SpriteTemplate gUnknown_0807936C;
extern struct SpriteTemplate gUnknown_080793B4;
extern struct SpriteTemplate gUnknown_08079414;
extern struct SpriteTemplate gUnknown_08079474;
extern struct SpriteTemplate gUnknown_08079384;
extern struct SpriteTemplate gUnknown_080793E4;
extern struct SpriteTemplate gUnknown_080793CC;
extern struct SpriteTemplate gUnknown_0807942C;
extern struct SpriteTemplate gUnknown_0807948C;
extern struct SpriteTemplate gUnknown_0807939C;
extern struct SpriteTemplate gUnknown_080793FC;
extern struct SpriteTemplate gUnknown_0807945C;
extern struct SpriteTemplate gUnknown_08079444;
extern struct { s32 x; s32 y; } gUnknown_0807897C[];
extern struct { s32 x; s32 y; } gUnknown_080789BC[];

void sub_08018F88(s8 arg0, u8 arg1, u8 arg2)
{
    if (arg1 != 0)
    {
        if (arg2 & 0x40)
        {
            sub_08018338(
                &gUnknown_080793B4,
                gUnknown_03000086,
                gUnknown_03000094->unk1E,
                gUnknown_0807897C[arg0].x + 3,
                gUnknown_0807897C[arg0].y + 23);
            sub_08018338(
                &gUnknown_08079414,
                gUnknown_03000087,
                gUnknown_03000094->unk20,
                gUnknown_0807897C[arg0].x + 15,
                gUnknown_0807897C[arg0].y + 23);
            sub_08018338(
                &gUnknown_08079474,
                gUnknown_03000086,
                gUnknown_03000094->unk22,
                gUnknown_0807897C[arg0].x + 27,
                gUnknown_0807897C[arg0].y + 23);
        }
        else
        {
            if (arg2 & 1)
            {
                sub_08018338(
                    &gUnknown_08079384,
                    0,
                    gUnknown_03000094->unk24,
                    gUnknown_0807897C[arg0].x + 3,
                    gUnknown_0807897C[arg0].y + 23);
            }
            if (arg2 & 2)
            {
                sub_08018338(
                    &gUnknown_080793E4,
                    0,
                    gUnknown_03000094->unk26,
                    gUnknown_0807897C[arg0].x + 15,
                    gUnknown_0807897C[arg0].y + 23);
            }
            if (arg2 & 4)
            {
                sub_08018338(
                    &gUnknown_08079444,
                    0,
                    gUnknown_03000094->unk28,
                    gUnknown_0807897C[arg0].x + 27,
                    gUnknown_0807897C[arg0].y + 23);
            }
        }
    }
    else
    {
        if (arg2 & 0x40)
        {
            sub_08018338(
                &gUnknown_080793CC,
                0,
                gUnknown_03000094->unk24,
                gUnknown_0807897C[arg0].x + 3,
                gUnknown_0807897C[arg0].y + 23);
            sub_08018338(
                &gUnknown_0807942C,
                0,
                gUnknown_03000094->unk26,
                gUnknown_0807897C[arg0].x + 15,
                gUnknown_0807897C[arg0].y + 23);
            sub_08018338(
                &gUnknown_0807948C,
                0,
                gUnknown_03000094->unk28,
                gUnknown_0807897C[arg0].x + 27,
                gUnknown_0807897C[arg0].y + 23);
        }
        else
        {
            if (arg2 & 1)
            {
                sub_08018338(
                    &gUnknown_0807939C,
                    0,
                    gUnknown_03000094->unk24,
                    gUnknown_0807897C[arg0].x + 3,
                    gUnknown_0807897C[arg0].y + 23);
            }
            if (arg2 & 2)
            {
                sub_08018338(
                    &gUnknown_080793FC,
                    0,
                    gUnknown_03000094->unk26,
                    gUnknown_0807897C[arg0].x + 15,
                    gUnknown_0807897C[arg0].y + 23);
            }
            if (arg2 & 4)
            {
                sub_08018338(
                    &gUnknown_0807945C,
                    0,
                    gUnknown_03000094->unk28,
                    gUnknown_0807897C[arg0].x + 27,
                    gUnknown_0807897C[arg0].y + 23);
            }
        }
    }
}

void sub_08019234(s8 arg0, u8 arg1, u8 arg2)
{
    if (arg1 != 0)
    {
        if (arg2 & 0x40)
        {
            sub_08018338(
                &gUnknown_080793B4,
                gUnknown_03000086,
                gUnknown_03000094->unk1E,
                gUnknown_080789BC[arg0].x + 3,
                gUnknown_080789BC[arg0].y + 23);
            sub_08018338(
                &gUnknown_08079414,
                gUnknown_03000087,
                gUnknown_03000094->unk20,
                gUnknown_080789BC[arg0].x + 15,
                gUnknown_080789BC[arg0].y + 23);
            sub_08018338(
                &gUnknown_08079474,
                gUnknown_03000086,
                gUnknown_03000094->unk22,
                gUnknown_080789BC[arg0].x + 27,
                gUnknown_080789BC[arg0].y + 23);
        }
        else
        {
            if (arg2 & 1)
            {
                sub_08018338(
                    &gUnknown_08079384,
                    0,
                    gUnknown_03000094->unk24,
                    gUnknown_080789BC[arg0].x + 3,
                    gUnknown_080789BC[arg0].y + 23);
            }
            if (arg2 & 2)
            {
                sub_08018338(
                    &gUnknown_080793E4,
                    0,
                    gUnknown_03000094->unk26,
                    gUnknown_080789BC[arg0].x + 15,
                    gUnknown_080789BC[arg0].y + 23);
            }
            if (arg2 & 4)
            {
                sub_08018338(
                    &gUnknown_08079444,
                    0,
                    gUnknown_03000094->unk28,
                    gUnknown_080789BC[arg0].x + 27,
                    gUnknown_080789BC[arg0].y + 23);
            }
        }
    }
    else
    {
        if (arg2 & 0x40)
        {
            sub_08018338(
                &gUnknown_080793CC,
                0,
                gUnknown_03000094->unk24,
                gUnknown_080789BC[arg0].x + 3,
                gUnknown_080789BC[arg0].y + 23);
            sub_08018338(
                &gUnknown_0807942C,
                0,
                gUnknown_03000094->unk26,
                gUnknown_080789BC[arg0].x + 15,
                gUnknown_080789BC[arg0].y + 23);
            sub_08018338(
                &gUnknown_0807948C,
                0,
                gUnknown_03000094->unk28,
                gUnknown_080789BC[arg0].x + 27,
                gUnknown_080789BC[arg0].y + 23);
        }
        else
        {
            if (arg2 & 1)
            {
                sub_08018338(
                    &gUnknown_0807939C,
                    0,
                    gUnknown_03000094->unk24,
                    gUnknown_080789BC[arg0].x + 3,
                    gUnknown_080789BC[arg0].y + 23);
            }
            if (arg2 & 2)
            {
                sub_08018338(
                    &gUnknown_080793FC,
                    0,
                    gUnknown_03000094->unk26,
                    gUnknown_080789BC[arg0].x + 15,
                    gUnknown_080789BC[arg0].y + 23);
            }
            if (arg2 & 4)
            {
                sub_08018338(
                    &gUnknown_0807945C,
                    0,
                    gUnknown_03000094->unk28,
                    gUnknown_080789BC[arg0].x + 27,
                    gUnknown_0807897C[arg0].y + 23);  // BUG? should be gUnknown_080789BC?
            }
        }
    }
}

void sub_080194E4(s8 arg0, s8 arg1, s8 arg2, u8 arg3, u8 arg4)
{
    int r5 = (arg0 == arg2 && gLevelSelectMode == 0);

    if (arg0 == 6)
    {
        if (arg4 == 0)
            return;
        if (r5)
        {
            if ((arg3 & 0xC0) == 0xC0)
                sub_08018E38(&gUnknown_08079354, gUnknown_0807897C[6].x + 34, gUnknown_0807897C[6].y - 8);
        }
        else
        {
            if ((arg3 & 0xC0) == 0xC0)
                sub_08018EE0(&gUnknown_0807936C, gUnknown_0807897C[6].x + 34, gUnknown_0807897C[6].y - 8);
        }
    }
    else if (arg0 == 7)
    {
        if (arg4 == 0)
            return;
        if (r5)
        {
            if ((arg3 & 0xC0) == 0xC0)
                sub_08018E38(&gUnknown_08079354, gUnknown_0807897C[7].x + 34, gUnknown_0807897C[7].y - 8);
        }
        else
        {
            if ((arg3 & 0xC0) == 0xC0)
                sub_08018EE0(&gUnknown_0807936C, gUnknown_0807897C[7].x + 34, gUnknown_0807897C[7].y - 8);
        }
    }
    else
    {
        if (arg4 == 0)
            return;
        if (r5)
        {
            if ((arg3 & 0xC0) == 0xC0)
                sub_08018E38(&gUnknown_08079354, gUnknown_0807897C[arg0].x + 34, gUnknown_0807897C[arg0].y - 8);
        }
        else
        {
            if ((arg3 & 0xC0) == 0xC0)
                sub_08018EE0(&gUnknown_0807936C, gUnknown_0807897C[arg0].x + 34, gUnknown_0807897C[arg0].y - 8);
        }
    }
}

void sub_08019630(s8 arg0, s8 arg1)
{
    u8 i;

    if (arg1 < 6)
    {
        for (i = 0; i < arg0; i++)
            sub_080194E4(i, arg1, arg0, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        sub_080194E4(i, arg1, arg0, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        i++;
        for (; i < 8; i++)
            sub_080194E4(i, arg1, arg0, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
    }
}

extern struct SpriteTemplate gUnknown_0807930C;
extern struct SpriteTemplate gUnknown_080792C4;
extern struct SpriteTemplate gUnknown_080794D4;
extern struct SpriteTemplate gUnknown_08079324;

void sub_080196CC(s8 arg0, s8 arg1, s8 arg2, u8 arg3, u8 arg4)
{
    u8 r3 = (arg0 == arg2 && gLevelSelectMode == 0);

    if (arg0 == 6)
    {
        if (arg4 != 0)
        {
            if (r3)
            {
                if ((arg3 & 0xC0) == 0xC0)
                {
                    sub_08018D0C(&gUnknown_0807930C, 3, gUnknown_0807897C[6].x + 1, gUnknown_0807897C[6].y);
                    sub_08018D0C(&gUnknown_080792C4, (arg3 & 7) + 21, gUnknown_0807897C[6].x + 26, gUnknown_0807897C[6].y + 26);
                    sub_08018D0C(&gUnknown_080794D4, 0, gUnknown_0807897C[6].x, gUnknown_0807897C[6].y + 20);
                }
                else
                {
                    sub_08018D0C(&gUnknown_0807930C, 0, gUnknown_0807897C[6].x + 1, gUnknown_0807897C[6].y);
                    if (arg3 & 7)
                    {
                        sub_08018D0C(&gUnknown_080792C4, arg3 & 7, gUnknown_0807897C[6].x + 26, gUnknown_0807897C[6].y + 26);
                        sub_08018D0C(&gUnknown_080794D4, 0, gUnknown_0807897C[6].x, gUnknown_0807897C[6].y + 20);
                    }
                }
            }
            else
            {
                if ((arg3 & 0xC0) == 0xC0)
                {
                    sub_08018D0C(&gUnknown_0807930C, 4, gUnknown_0807897C[6].x + 1, gUnknown_0807897C[6].y);
                    sub_08018D0C(&gUnknown_080792C4, (arg3 & 7) + 28, gUnknown_0807897C[6].x + 26, gUnknown_0807897C[6].y + 26);
                    sub_08018D0C(&gUnknown_080794D4, 1, gUnknown_0807897C[6].x, gUnknown_0807897C[6].y + 20);
                }
                else
                {
                    sub_08018D0C(&gUnknown_0807930C, 0, gUnknown_0807897C[6].x + 1, gUnknown_0807897C[6].y);
                    if (arg3 & 7)
                    {
                        sub_08018D0C(&gUnknown_080792C4, arg3 & 7, gUnknown_0807897C[6].x + 26, gUnknown_0807897C[6].y + 26);
                        sub_08018D0C(&gUnknown_080794D4, 1, gUnknown_0807897C[6].x, gUnknown_0807897C[6].y + 20);
                    }
                }
            }
        }
        else
        {
            if (r3)
                sub_08018D0C(&gUnknown_0807930C, 0, gUnknown_0807897C[6].x + 1, gUnknown_0807897C[6].y);
            else
                sub_08018D0C(&gUnknown_0807930C, 1, gUnknown_0807897C[6].x + 1, gUnknown_0807897C[6].y);
        }

    }
    else if (arg0 == 7)
    {
        if (arg4 != 0)
        {
            if (r3)
            {
                if ((arg3 & 0xC0) == 0xC0)
                    sub_08018D0C(&gUnknown_08079324, 3, gUnknown_0807897C[7].x + 2, gUnknown_0807897C[7].y);
                else
                    sub_08018D0C(&gUnknown_08079324, 0, gUnknown_0807897C[7].x + 2, gUnknown_0807897C[7].y);
            }
            else
            {
                if ((arg3 & 0xC0) == 0xC0)
                    sub_08018D0C(&gUnknown_08079324, 4, gUnknown_0807897C[7].x + 2, gUnknown_0807897C[7].y);
                else
                    sub_08018D0C(&gUnknown_08079324, 0, gUnknown_0807897C[7].x + 2, gUnknown_0807897C[7].y);
            }
        }
        else
        {
            if (r3)  // redundant
                sub_08018D0C(&gUnknown_08079324, 0, gUnknown_0807897C[7].x + 2, gUnknown_0807897C[7].y);
            else
                sub_08018D0C(&gUnknown_08079324, 0, gUnknown_0807897C[7].x + 2, gUnknown_0807897C[7].y);
        }
    }
    else
    {
        if (arg4 != 0)
        {
            if (r3)
            {
                if ((arg3 & 0xC0) == 0xC0)
                {
                    sub_08018D0C(&gUnknown_080792C4, arg1 + 22, gUnknown_0807897C[arg0].x, gUnknown_0807897C[arg0].y);
                    sub_08018D0C(&gUnknown_080792C4, 21, gUnknown_0807897C[arg0].x + 6, gUnknown_0807897C[arg0].y);
                    sub_08018D0C(&gUnknown_080792C4, arg0 + 22, gUnknown_0807897C[arg0].x + 12, gUnknown_0807897C[arg0].y);
                }
                else
                {
                    sub_08018D0C(&gUnknown_080792C4, arg1 + 1, gUnknown_0807897C[arg0].x, gUnknown_0807897C[arg0].y);
                    sub_08018D0C(&gUnknown_080792C4, 0, gUnknown_0807897C[arg0].x + 6, gUnknown_0807897C[arg0].y);
                    sub_08018D0C(&gUnknown_080792C4, arg0 + 1, gUnknown_0807897C[arg0].x + 12, gUnknown_0807897C[arg0].y);
                }
            }
            else
            {
                if ((arg3 & 0xC0) == 0xC0)
                {
                    sub_08018D0C(&gUnknown_080792C4, arg1 + 29, gUnknown_0807897C[arg0].x, gUnknown_0807897C[arg0].y);
                    sub_08018D0C(&gUnknown_080792C4, 28, gUnknown_0807897C[arg0].x + 6, gUnknown_0807897C[arg0].y);
                    sub_08018D0C(&gUnknown_080792C4, arg0 + 29, gUnknown_0807897C[arg0].x + 12, gUnknown_0807897C[arg0].y);
                }
                else
                {
                    sub_08018D0C(&gUnknown_080792C4, arg1 + 1, gUnknown_0807897C[arg0].x, gUnknown_0807897C[arg0].y);
                    sub_08018D0C(&gUnknown_080792C4, 0, gUnknown_0807897C[arg0].x + 6, gUnknown_0807897C[arg0].y);
                    sub_08018D0C(&gUnknown_080792C4, arg0 + 1, gUnknown_0807897C[arg0].x + 12, gUnknown_0807897C[arg0].y);
                }
            }
        }
        else
        {
            if (r3)
            {
                sub_08018D0C(&gUnknown_080792C4, arg1 + 1, gUnknown_0807897C[arg0].x, gUnknown_0807897C[arg0].y);
                sub_08018D0C(&gUnknown_080792C4, 0, gUnknown_0807897C[arg0].x + 6, gUnknown_0807897C[arg0].y);
                sub_08018D0C(&gUnknown_080792C4, arg0 + 1, gUnknown_0807897C[arg0].x + 12, gUnknown_0807897C[arg0].y);
            }
            else
            {
                sub_08018D0C(&gUnknown_080792C4, arg1 + 8, gUnknown_0807897C[arg0].x, gUnknown_0807897C[arg0].y);
                sub_08018D0C(&gUnknown_080792C4, 7, gUnknown_0807897C[arg0].x + 6, gUnknown_0807897C[arg0].y);
                sub_08018D0C(&gUnknown_080792C4, arg0 + 8, gUnknown_0807897C[arg0].x + 12, gUnknown_0807897C[arg0].y);
            }
        }
        sub_08018F88(arg0, r3, arg3);
    }
}

extern struct SpriteTemplate gUnknown_08078D24[];

static inline void sub_08019AF4_sub(s8 arg0, s8 i, u8 r1, u8 r4)
{
    u8 r6 = (i == arg0 && gLevelSelectMode == 2);

    if (r4 != 0)
    {
        if (r6)
        {
            if ((r1 & 0xC0) == 0xC0)
                sub_08018E38(&gUnknown_08079354, gUnknown_080789BC[i].x + 34, gUnknown_080789BC[i].y - 8);
        }
        else
        {
             if ((r1 & 0xC0) == 0xC0)
                sub_08018EE0(&gUnknown_0807936C, gUnknown_080789BC[i].x + 34, gUnknown_080789BC[i].y - 8);
        }
    }
}

void sub_08019AF4(s8 arg0, s8 arg1)
{
    u8 i;

    if (arg1 < 0)
        goto asdf;
    if (arg1 <= 5)
    {
    asdf:
        for (i = 0; i < arg0; i++)
            sub_08019AF4_sub(arg0, i, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        sub_08019AF4_sub(arg0, i, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        i++;
        for (; i < 7; i++)
            sub_08019AF4_sub(arg0, i, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
    }
}

extern struct SpriteTemplate gUnknown_0807933C;
extern struct SpriteTemplate gUnknown_080792DC;
extern struct SpriteTemplate gUnknown_080792F4;

void sub_08019D0C(s8 arg0, s8 arg1, s8 arg2, u8 arg3, u8 arg4)
{
    u8 r3 = (arg0 == arg2 && gLevelSelectMode == 2);

    if (arg0 == 6)
    {
        if (arg4 != 0)
        {
            if (r3)
            {
                if ((arg3 & 0xC0) == 0xC0)
                    sub_08018D0C(&gUnknown_0807933C, 3, gUnknown_080789BC[6].x + 1, gUnknown_080789BC[6].y);
                else
                    sub_08018D0C(&gUnknown_0807933C, 0, gUnknown_080789BC[6].x + 1, gUnknown_0807897C[6].y);
            }
            else
            {
                if ((arg3 & 0xC0) == 0xC0)
                    sub_08018D0C(&gUnknown_0807933C, 3, gUnknown_080789BC[6].x + 1, gUnknown_0807897C[6].y);
                else
                    sub_08018D0C(&gUnknown_0807933C, 0, gUnknown_080789BC[6].x + 1, gUnknown_0807897C[6].y);
            }
        }
        else
        {
            if (r3)  // redundant
                sub_08018D0C(&gUnknown_0807933C, 0, gUnknown_080789BC[6].x + 1, gUnknown_0807897C[6].y);
            else
                sub_08018D0C(&gUnknown_0807933C, 0, gUnknown_080789BC[6].x + 1, gUnknown_0807897C[6].y);
        }

    }
    else
    {
        if (arg4 != 0)
        {
            if (r3)
            {
                if ((arg3 & 0xC0) == 0xC0)
                {
                    sub_08018D0C(&gUnknown_080792DC, arg1 + 18, gUnknown_080789BC[arg0].x, gUnknown_080789BC[arg0].y);
                    sub_08018D0C(&gUnknown_080792F4, arg0 + 18, gUnknown_080789BC[arg0].x + 8, gUnknown_080789BC[arg0].y);
                }
                else
                {
                    sub_08018D0C(&gUnknown_080792DC, arg1, gUnknown_080789BC[arg0].x, gUnknown_080789BC[arg0].y);
                    sub_08018D0C(&gUnknown_080792F4, arg0, gUnknown_080789BC[arg0].x + 8, gUnknown_080789BC[arg0].y);
                }
            }
            else
            {
                if ((arg3 & 0xC0) == 0xC0)
                {
                    sub_08018D0C(&gUnknown_080792DC, arg1 + 24, gUnknown_080789BC[arg0].x, gUnknown_080789BC[arg0].y);
                    sub_08018D0C(&gUnknown_080792F4, arg0 + 24, gUnknown_080789BC[arg0].x + 8, gUnknown_080789BC[arg0].y);
                }
                else
                {
                    sub_08018D0C(&gUnknown_080792DC, arg1, gUnknown_080789BC[arg0].x, gUnknown_080789BC[arg0].y);
                    sub_08018D0C(&gUnknown_080792F4, arg0, gUnknown_080789BC[arg0].x + 8, gUnknown_080789BC[arg0].y);
                }
            }
        }
        else
        {
            if (r3)
            {
                sub_08018D0C(&gUnknown_080792DC, arg1, gUnknown_080789BC[arg0].x, gUnknown_080789BC[arg0].y);
                sub_08018D0C(&gUnknown_080792F4, arg0, gUnknown_080789BC[arg0].x + 8, gUnknown_080789BC[arg0].y);
            }
            else
            {
                sub_08018D0C(&gUnknown_080792DC, arg1 + 6, gUnknown_080789BC[arg0].x, gUnknown_080789BC[arg0].y);
                sub_08018D0C(&gUnknown_080792F4, arg0 + 6, gUnknown_080789BC[arg0].x + 8, gUnknown_080789BC[arg0].y);
            }
        }
        sub_08019234(arg0, r3, arg3);
    }
}

extern struct SpriteTemplate gLevelSelectLevelArtSpriteLayout[];
extern struct SpriteTemplate gLevelSelectLevelPlusArtSpriteLayout[];
extern struct SpriteTemplate gUnknown_0807915C[];
extern struct SpriteTemplate gUnknown_08078FF4[];
extern struct SpriteTemplate gUnknown_0807921C[];
extern struct SpriteTemplate gUnknown_080790B4[];

void sub_08019F8C(s8 arg0, s8 arg1)
{
    u8 i;

    if (arg1 > 5)
        return;
    for (i = 0; i < arg0; i++)
    {
        sub_080196CC(i, arg1, arg0, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        if (gUnknown_0300007C[i].unk0 != 0)
        {
            sub_080185EC(&gUnknown_0807915C[i], arg1 + 1);
            sub_080186B0(&gLevelSelectLevelArtSpriteLayout[i], arg1 * 8 + i);
        }
        else
        {
            sub_080185EC(&gUnknown_0807915C[i], 0);
            sub_080187C0(&gLevelSelectLevelArtSpriteLayout[i], arg1 * 8 + i, 14);
        }
    }
    sub_080196CC(i, arg1, arg0, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
    if (gUnknown_0300007C[i].unk0 != 0)
    {
        if (gLevelSelectMode == 0)
        {
            if (i <= 6)
                sub_08018528(&gUnknown_08078FF4[i], arg1 + 1);
            else
                sub_08018418(&gUnknown_08078FF4[i], arg1 + 1);
            sub_080186B0(&gLevelSelectLevelArtSpriteLayout[i], arg1 * 8 + i);
        }
        else
        {
            if (i <= 6)
                sub_080185EC(&gUnknown_0807915C[i], arg1 + 1);
            else
                sub_08018418(&gUnknown_0807915C[i], arg1 + 1);
            sub_080186B0(&gLevelSelectLevelArtSpriteLayout[i], arg1 * 8 + i);
        }
    }
    else if (arg0 == i && gLevelSelectMode == 0)
    {
        if (i <= 6)
            sub_080185EC(&gUnknown_0807915C[i], arg1 + 1);
        else
            sub_08018418(&gUnknown_0807915C[i], arg1 + 1);
        goto label1;
    }
    else
    {
        if (i <= 6)
            sub_080185EC(&gUnknown_0807915C[i], 0);
        else
            sub_08018418(&gUnknown_0807915C[i], 0);
label1:
        sub_080187C0(&gLevelSelectLevelArtSpriteLayout[i], arg1 * 8 + i, 13);
    }
    i++;
    for (; i < 8; i++)
    {
        sub_080196CC(i, arg1, arg0, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        if (gUnknown_0300007C[i].unk1 != 0)
        {
            if (i <= 6)
                sub_080185EC(&gUnknown_0807915C[i], arg1 + 1);
            else
                sub_08018418(&gUnknown_0807915C[i], arg1 + 1);
            sub_080186B0(&gLevelSelectLevelArtSpriteLayout[i], arg1 * 8 + i);
        }
        else if (gUnknown_0300007C[i].unk0 != 0)
        {
            if (i <= 6)
                sub_080185EC(&gUnknown_0807915C[i], arg1 + 1);
            else
                sub_08018418(&gUnknown_0807915C[i], arg1 + 1);
            sub_080186B0(&gLevelSelectLevelArtSpriteLayout[i], arg1 * 8 + i);
        }
        else
        {
            if (i <= 6)
            {
                sub_080187C0(&gLevelSelectLevelArtSpriteLayout[i], arg1 * 8 + i, 14);
                sub_080185EC(&gUnknown_0807915C[i], 0);
            }
            else
            {
                sub_080186B0(&gLevelSelectLevelArtSpriteLayout[i], arg1 * 8 + i);
                sub_08018418(&gUnknown_0807915C[i], arg1 + 1);
            }
        }
    }
}

void sub_0801A2B8(s8 arg0, s8 arg1)
{
    u8 i;

    if (arg1 < 0)
        arg1 = 0;
    else if (arg1 > 5)
        return;
    for (i = 0; i < arg0; i++)
    {
        sub_08019D0C(i, arg1, arg0, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        if (gUnknown_0300007C[i].unk0 != 0)
        {
            sub_080185EC(&gUnknown_0807921C[i], arg1 + 1);
            sub_080186B0(&gLevelSelectLevelPlusArtSpriteLayout[i], arg1 * 7 + i);
        }
        else
        {
            sub_080185EC(&gUnknown_0807921C[i], 0);
            sub_080187C0(&gLevelSelectLevelPlusArtSpriteLayout[i], arg1 * 7 + i, 14);
        }
    }
    sub_08019D0C(i, arg1, arg0, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
    if (gUnknown_0300007C[i].unk0 != 0)
    {
        if (gLevelSelectMode == 2)
        {
            if (i <= 5)
                sub_08018528(&gUnknown_080790B4[i], arg1 + 1);
            else
                sub_08018418(&gUnknown_080790B4[i], arg1 + 1);
            sub_080186B0(&gLevelSelectLevelPlusArtSpriteLayout[i], arg1 * 7 + i);
        }
        else
        {
            if (i <= 5)
                sub_080185EC(&gUnknown_0807921C[i], arg1 + 1);
            else
                sub_08018418(&gUnknown_0807921C[i], arg1 + 1);
            sub_080186B0(&gLevelSelectLevelPlusArtSpriteLayout[i], arg1 * 7 + i);
        }
    }
    else if (arg0 == i && gLevelSelectMode == 2)
    {
        if (i <= 5)
            sub_080185EC(&gUnknown_0807921C[i], arg1 + 1);
        else
            sub_08018418(&gUnknown_0807921C[i], arg1 + 1);
        goto label1;
    }
    else
    {
        if (i <= 5)
            sub_080185EC(&gUnknown_0807921C[i], 0);
        else
            sub_08018418(&gUnknown_0807921C[i], 0);
label1:
        sub_080187C0(&gLevelSelectLevelPlusArtSpriteLayout[i], arg1 * 7 + i, 14);
    }
    i++;
    for (; i < 7; i++)
    {
        sub_08019D0C(i, arg1, arg0, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        if (gUnknown_0300007C[i].unk1 != 0)
        {
            if (i <= 5)
                sub_080185EC(&gUnknown_0807921C[i], arg1 + 1);
            else
                sub_08018418(&gUnknown_0807921C[i], arg1 + 1);
            sub_080186B0(&gLevelSelectLevelPlusArtSpriteLayout[i], arg1 * 7 + i);
        }
        else if (gUnknown_0300007C[i].unk0 != 0)
        {
            if (i <= 5)
                sub_080185EC(&gUnknown_0807921C[i], arg1 + 1);
            else
                sub_08018418(&gUnknown_0807921C[i], arg1 + 1);
            sub_080186B0(&gLevelSelectLevelPlusArtSpriteLayout[i], arg1 * 7 + i);
        }
        else
        {
            if (i <= 5)
            {
                sub_080185EC(&gUnknown_0807921C[i], 0);
                sub_080187C0(&gLevelSelectLevelPlusArtSpriteLayout[i], arg1 * 7 + i, 14);
            }
            else
            {
                sub_08018418(&gUnknown_0807921C[i], arg1 + 1);
                sub_080186B0(&gLevelSelectLevelPlusArtSpriteLayout[i], arg1 * 7 + i);
            }
        }
    }
}

void sub_0801A5FC(void)
{
    u8 i;

    if (gLevelSelectWorldCursor > 5)
        return;
    for (i = 0; i < 8; i++)
    {
        u8 dummy;
        if (get_level_stats_0800FE2C(0, gLevelSelectWorldCursor, i, &dummy))
            sub_08018418(&gUnknown_08078D24[i], 11);
        else
            break;
    }
    if (i > 3)
    {
        if (i == 7)
        {
            u8 dummy;
            if (get_level_stats_0800FE2C(gLevelType, gLevelSelectWorldCursor, 7, &dummy))
                sub_08018418(&gUnknown_08078D24[i], 11);
        }
        else
        {
            sub_08018418(&gUnknown_08078D24[i], 11);
        }
    }
}

void sub_0801A69C(void)
{
    DmaCopy32(3, gUnknown_085E3820 + gUnknown_0300008B * 0x400, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x400);
    DmaCopy32(3, &gUnknown_085E3818, &gOamBuffer[gUnknown_03000094->unk2], sizeof(struct OamData));
    gOamBuffer[gUnknown_03000094->unk2].tileNum += gVRAMCurrTileNum_03001930;
    gOamBuffer[gUnknown_03000094->unk2].x = gUnknown_085E3590[gUnknown_0300008B].y_offset + 172;  // BUG?
    gOamBuffer[gUnknown_03000094->unk2].y = gUnknown_085E3590[gUnknown_0300008B].y_offset + 48;  // BUG?
    gOamBuffer[gUnknown_03000094->unk2].priority = 2;
    gVRAMCurrTileNum_03001930 += 32;
    gObjVRAMCopyOffset_0300192C += 0x400;
    gUnknown_03000094->unk2++;
}

extern struct SpriteTemplate gUnknown_08078DE4[];
extern struct SpriteTemplate gUnknown_08078C1C[];
extern struct SpriteTemplate gUnknown_08078B74[];
extern struct SpriteTemplate gUnknown_080794A4;
extern struct SpriteTemplate gUnknown_080794BC;

#ifdef NONMATCHING
void sub_0801A7D8(void)
{
    struct SpriteTemplate *r2;

    DmaCopy32(3, gUnknown_085CD848, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x800);  //
    gUnknown_03000094->unk10 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x800/32;
    gObjVRAMCopyOffset_0300192C += 0x800;

    DmaCopy32(3, gUnknown_085CE074, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x800);  //
    gUnknown_03000094->unk12 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x800/32;
    gObjVRAMCopyOffset_0300192C += 0x800;

    DmaCopy32(3, gUnknown_085C7D08 + gUnknown_085C7A78[gUnknown_0300008A].index * 0x800, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x800);  //
    gUnknown_03000094->unk14 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x800/32;
    gObjVRAMCopyOffset_0300192C += 0x800;

    DmaCopy32(3, gUnknown_085E2B00 + gUnknown_085E2870[gUnknown_03000088].index * 0x100, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x100);  //
    gUnknown_03000094->unk8 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x100/32;
    gObjVRAMCopyOffset_0300192C += 0x100;

    DmaCopy32(3, gUnknown_085E3190 + gUnknown_085E2F00[gUnknown_03000088].index * 0x100, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x100);  //
    gUnknown_03000094->unkA = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x100/32;
    gObjVRAMCopyOffset_0300192C += 0x100;

    DmaCopy32(3, gUnknown_085E9360 + gUnknown_085E90D0[gUnknown_03000088].index * 0x400, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x400);  //
    gUnknown_03000094->unkC = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x400/32;
    gObjVRAMCopyOffset_0300192C += 0x400;

    DmaCopy32(3, gUnknown_085C2588, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x80);  //
    gUnknown_03000094->unk16 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x80/32;
    gObjVRAMCopyOffset_0300192C += 0x80;

    DmaCopy32(3, gUnknown_085C2634, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x80);  //
    gUnknown_03000094->unk18 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x80/32;
    gObjVRAMCopyOffset_0300192C += 0x80;

    DmaCopy32(3, gUnknown_085E200C + gUnknown_085E1F2C[gUnknown_03000085].index * 0x80, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x80);  //
    gUnknown_03000094->unk1A = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x80/32;
    gObjVRAMCopyOffset_0300192C += 0x80;

    DmaCopy32(3, gUnknown_085E1C2C, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x80);  //
    gUnknown_03000094->unk1C = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x80/32;
    gObjVRAMCopyOffset_0300192C += 0x80;

    DmaCopy32(3, gUnknown_080793B4.tileData + gUnknown_080793B4.subSprites[gUnknown_03000086].index * gUnknown_080793B4.unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, gUnknown_080793B4.subSpriteSize);
    gUnknown_03000094->unk1E = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += gUnknown_080793B4.unk6;
    gObjVRAMCopyOffset_0300192C += gUnknown_080793B4.subSpriteSize;

    DmaCopy32(3, gUnknown_08079414.tileData + gUnknown_08079414.subSprites[gUnknown_03000087].index * gUnknown_08079414.unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, gUnknown_08079414.subSpriteSize);
    gUnknown_03000094->unk20 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += gUnknown_08079414.unk6;
    gObjVRAMCopyOffset_0300192C += gUnknown_08079414.subSpriteSize;

    DmaCopy32(3, gUnknown_08079474.tileData + gUnknown_08079474.subSprites[gUnknown_03000087].index * gUnknown_08079474.unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, gUnknown_08079474.subSpriteSize);
    gUnknown_03000094->unk22 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += gUnknown_08079474.unk6;
    gObjVRAMCopyOffset_0300192C += gUnknown_08079474.subSpriteSize;

    DmaCopy32(3, gUnknown_08079384.tileData + gUnknown_08079384.subSprites[0].index * gUnknown_08079384.unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, gUnknown_08079384.subSpriteSize);
    gUnknown_03000094->unk24 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += gUnknown_08079384.unk6;
    gObjVRAMCopyOffset_0300192C += gUnknown_08079384.subSpriteSize;

    DmaCopy32(3, gUnknown_080793E4.tileData + gUnknown_080793E4.subSprites[0].index * gUnknown_080793E4.unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, gUnknown_080793E4.subSpriteSize);
    gUnknown_03000094->unk26 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += gUnknown_080793E4.unk6;
    gObjVRAMCopyOffset_0300192C += gUnknown_080793E4.subSpriteSize;

    DmaCopy32(3, gUnknown_08079444.tileData + gUnknown_08079444.subSprites[0].index * gUnknown_08079444.unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, gUnknown_08079444.subSpriteSize);
    gUnknown_03000094->unk28 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += gUnknown_08079444.unk6;
    gObjVRAMCopyOffset_0300192C += gUnknown_08079444.subSpriteSize;

    if (gLevelSelectMode == 2 || gLevelSelectMode == 3 || gLevelSelectMode == 5)
    {
        u8 sp0 = (gLevelSelectWorldCursor == 1);
        s16 i;  // r3
        //struct SpriteTemplate *r2;

        for (i = 0; i < 7; i++)
        {
            s8 r1 = i;
            r2 = &gUnknown_08078C1C[i];
            DmaCopy32(3, r2->tileData + r2->subSprites[r1].index * r2->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, r2->subSpriteSize);
            gUnknown_03000094->unk2A[i] = gVRAMCurrTileNum_03001930;
            gVRAMCurrTileNum_03001930 += r2->unk6;
            gObjVRAMCopyOffset_0300192C += r2->subSpriteSize;
        }
        //_0801AC9E
        //to _0801AD44
        r2 = &gUnknown_08078CF4[sp0];
        DmaCopy32(3, r2->tileData + r2->subSprites[sp0].index * r2->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, r2->subSpriteSize);
        gUnknown_03000094->unkE = gVRAMCurrTileNum_03001930;
        gVRAMCurrTileNum_03001930 += r2->unk6;
        gObjVRAMCopyOffset_0300192C += r2->subSpriteSize;
    }
    //_0801ACB4
    else
    {
        u8 sp4 = (gLevelSelectWorldCursor == 6);
        s16 i;  // r3
        //struct SpriteTemplate *r2;

        for (i = 0; i < 7; i++)
        {
            s8 r1 = i;
            r2 = &gUnknown_08078B74[i];
            DmaCopy32(3, r2->tileData + r2->subSprites[r1].index * r2->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, r2->subSpriteSize);
            gUnknown_03000094->unk2A[i] = gVRAMCurrTileNum_03001930;
            gVRAMCurrTileNum_03001930 += r2->unk6;
            gObjVRAMCopyOffset_0300192C += r2->subSpriteSize;
        }
        r2 = &gUnknown_08078CC4[sp4];
        DmaCopy32(3, r2->tileData + r2->subSprites[sp4].index * r2->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, r2->subSpriteSize);
        gUnknown_03000094->unkE = gVRAMCurrTileNum_03001930;
        gVRAMCurrTileNum_03001930 += r2->unk6;
        gObjVRAMCopyOffset_0300192C += r2->subSpriteSize;
    }
}
#else
__attribute__((naked))
void sub_0801A7D8(void)
{
    asm("push {r4-r7,lr}\n\
    mov r7, r10\n\
    mov r6, r9\n\
    mov r5, r8\n\
    push {r5-r7}\n\
    sub sp, sp, #8\n\
    ldr r7, _0801ABBC  @ =REG_DMA3SAD\n\
    ldr r0, _0801ABC0  @ =gUnknown_085CD848\n\
    str r0, [r7]\n\
    ldr r3, _0801ABC4  @ =gObjVRAMCopyOffset_0300192C\n\
    ldrh r0, [r3]\n\
    ldr r1, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r1\n\
    str r0, [r7, #4]\n\
    ldr r2, _0801ABCC  @ =0x84000200\n\
    str r2, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    ldr r4, _0801ABD0  @ =gUnknown_03000094\n\
    ldr r6, [r4]\n\
    ldr r0, _0801ABD4  @ =gVRAMCurrTileNum_03001930\n\
    mov r10, r0\n\
    ldrh r1, [r0]\n\
    mov r12, r1\n\
    strh r1, [r6, #16]\n\
    mov r4, r12\n\
    add r4, r4, #64\n\
    strh r4, [r0]\n\
    ldrh r2, [r3]\n\
    mov r9, r2\n\
    mov r0, #128\n\
    lsl r0, r0, #4\n\
    mov r8, r0\n\
    mov r2, r9\n\
    add r2, r2, r8\n\
    strh r2, [r3]\n\
    ldr r0, _0801ABD8  @ =gUnknown_085CE074\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    ldr r1, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r1\n\
    str r0, [r7, #4]\n\
    ldr r0, _0801ABCC  @ =0x84000200\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r4, [r6, #18]\n\
    add r4, r4, #64\n\
    mov r1, r10\n\
    strh r4, [r1]\n\
    add r2, r2, r8\n\
    strh r2, [r3]\n\
    ldr r5, _0801ABDC  @ =gUnknown_085C7A78\n\
    ldr r0, _0801ABE0  @ =gUnknown_0300008A\n\
    mov r1, #0\n\
    ldrsb r1, [r0, r1]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r5\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #11\n\
    ldr r1, _0801ABE4  @ =gUnknown_085C7D08\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    ldr r1, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r1\n\
    str r0, [r7, #4]\n\
    ldr r0, _0801ABCC  @ =0x84000200\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r4, [r6, #20]\n\
    add r4, r4, #64\n\
    mov r1, r10\n\
    strh r4, [r1]\n\
    add r2, r2, r8\n\
    strh r2, [r3]\n\
    ldr r2, _0801ABE8  @ =gUnknown_085E2870\n\
    ldr r5, _0801ABEC  @ =gUnknown_03000088\n\
    mov r1, #0\n\
    ldrsb r1, [r5, r1]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r2\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #8\n\
    ldr r1, _0801ABF0  @ =gUnknown_085E2B00\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    ldr r2, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r2\n\
    str r0, [r7, #4]\n\
    ldr r0, _0801ABF4  @ =0x84000040\n\
    mov r8, r0\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r4, [r6, #8]\n\
    mov r4, r12\n\
    add r4, r4, #200\n\
    mov r1, r10\n\
    strh r4, [r1]\n\
    mov r0, #200\n\
    lsl r0, r0, #5\n\
    add r0, r0, r9\n\
    strh r0, [r3]\n\
    ldr r2, _0801ABF8  @ =gUnknown_085E2F00\n\
    mov r1, #0\n\
    ldrsb r1, [r5, r1]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r2\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #8\n\
    ldr r1, _0801ABFC  @ =gUnknown_085E3190\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    ldr r2, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r2\n\
    str r0, [r7, #4]\n\
    mov r0, r8\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r4, [r6, #10]\n\
    add r4, r4, #8\n\
    mov r1, r10\n\
    strh r4, [r1]\n\
    mov r0, #208\n\
    lsl r0, r0, #5\n\
    add r0, r0, r9\n\
    strh r0, [r3]\n\
    ldr r2, _0801AC00  @ =gUnknown_085E90D0\n\
    mov r1, #0\n\
    ldrsb r1, [r5, r1]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r2\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #10\n\
    ldr r1, _0801AC04  @ =gUnknown_085E9360\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    ldr r2, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r2\n\
    str r0, [r7, #4]\n\
    ldr r0, _0801AC08  @ =0x84000100\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r4, [r6, #12]\n\
    mov r1, r12\n\
    add r1, r1, #240\n\
    mov r4, r10\n\
    strh r1, [r4]\n\
    mov r0, #240\n\
    lsl r0, r0, #5\n\
    add r0, r0, r9\n\
    strh r0, [r3]\n\
    ldr r0, _0801AC0C  @ =gUnknown_085C2588\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    add r0, r0, r2\n\
    str r0, [r7, #4]\n\
    ldr r4, _0801AC10  @ =0x84000020\n\
    str r4, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r1, [r6, #22]\n\
    add r1, r1, #4\n\
    mov r0, r10\n\
    strh r1, [r0]\n\
    mov r0, #244\n\
    lsl r0, r0, #5\n\
    add r0, r0, r9\n\
    strh r0, [r3]\n\
    ldr r0, _0801AC14  @ =gUnknown_085C2634\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    add r0, r0, r2\n\
    str r0, [r7, #4]\n\
    str r4, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r1, [r6, #24]\n\
    mov r5, r12\n\
    add r5, r5, #248\n\
    mov r1, r10\n\
    strh r5, [r1]\n\
    mov r0, #248\n\
    lsl r0, r0, #5\n\
    add r0, r0, r9\n\
    strh r0, [r3]\n\
    ldr r2, _0801AC18  @ =gUnknown_085E1F2C\n\
    ldr r0, _0801AC1C  @ =gUnknown_03000085\n\
    mov r1, #0\n\
    ldrsb r1, [r0, r1]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r2\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #7\n\
    ldr r1, _0801AC20  @ =gUnknown_085E200C\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    ldr r2, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r2\n\
    str r0, [r7, #4]\n\
    str r4, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r5, [r6, #26]\n\
    mov r1, r12\n\
    add r1, r1, #252\n\
    mov r0, r10\n\
    strh r1, [r0]\n\
    mov r0, #252\n\
    lsl r0, r0, #5\n\
    add r0, r0, r9\n\
    strh r0, [r3]\n\
    ldr r0, _0801AC24  @ =gUnknown_085E1C2C\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    add r0, r0, r2\n\
    str r0, [r7, #4]\n\
    str r4, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r1, [r6, #28]\n\
    mov r5, #128\n\
    lsl r5, r5, #1\n\
    add r5, r5, r12\n\
    mov r1, r10\n\
    strh r5, [r1]\n\
    mov r2, #128\n\
    lsl r2, r2, #6\n\
    add r9, r9, r2\n\
    mov r4, r9\n\
    strh r4, [r3]\n\
    ldr r0, _0801AC28  @ =gUnknown_03000086\n\
    mov r12, r0\n\
    ldrb r1, [r0]\n\
    ldr r2, _0801AC2C  @ =gUnknown_080793B4\n\
    ldr r4, [r2, #12]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r4\n\
    ldrb r1, [r0]\n\
    ldrh r0, [r2, #4]\n\
    mul r1, r0, r1\n\
    lsl r1, r1, #2\n\
    ldr r0, [r2, #20]\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    ldr r1, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r1\n\
    str r0, [r7, #4]\n\
    ldrh r0, [r2, #8]\n\
    lsr r0, r0, #2\n\
    mov r4, #132\n\
    lsl r4, r4, #24\n\
    mov r8, r4\n\
    orr r0, r0, r4\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r5, [r6, #30]\n\
    ldrh r5, [r2, #6]\n\
    mov r0, r10\n\
    ldrh r0, [r0]\n\
    add r5, r5, r0\n\
    mov r1, r10\n\
    strh r5, [r1]\n\
    ldrh r0, [r2, #8]\n\
    ldrh r2, [r3]\n\
    add r0, r0, r2\n\
    strh r0, [r3]\n\
    ldr r0, _0801AC30  @ =gUnknown_03000087\n\
    ldrb r1, [r0]\n\
    ldr r2, _0801AC34  @ =gUnknown_08079414\n\
    ldr r4, _0801ABD0  @ =gUnknown_03000094\n\
    ldr r4, [r4]\n\
    mov r9, r4\n\
    ldr r4, [r2, #12]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r4\n\
    ldrb r1, [r0]\n\
    ldrh r0, [r2, #4]\n\
    mul r1, r0, r1\n\
    lsl r1, r1, #2\n\
    ldr r0, [r2, #20]\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    ldr r1, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r1\n\
    str r0, [r7, #4]\n\
    ldrh r0, [r2, #8]\n\
    lsr r0, r0, #2\n\
    mov r4, r8\n\
    orr r0, r0, r4\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    mov r0, r9\n\
    strh r5, [r0, #32]\n\
    ldrh r5, [r2, #6]\n\
    mov r1, r10\n\
    ldrh r1, [r1]\n\
    add r5, r5, r1\n\
    mov r4, r10\n\
    strh r5, [r4]\n\
    ldrh r0, [r2, #8]\n\
    ldrh r1, [r3]\n\
    add r0, r0, r1\n\
    strh r0, [r3]\n\
    mov r2, r12\n\
    ldrb r1, [r2]\n\
    ldr r2, _0801AC38  @ =gUnknown_08079474\n\
    ldr r4, _0801ABD0  @ =gUnknown_03000094\n\
    ldr r4, [r4]\n\
    mov r9, r4\n\
    ldr r4, [r2, #12]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r4\n\
    ldrb r1, [r0]\n\
    ldrh r0, [r2, #4]\n\
    mul r1, r0, r1\n\
    lsl r1, r1, #2\n\
    ldr r0, [r2, #20]\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    ldr r1, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r1\n\
    str r0, [r7, #4]\n\
    ldrh r0, [r2, #8]\n\
    lsr r0, r0, #2\n\
    mov r4, r8\n\
    orr r0, r0, r4\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    mov r0, r9\n\
    strh r5, [r0, #34]\n\
    ldrh r4, [r2, #6]\n\
    mov r1, r10\n\
    ldrh r1, [r1]\n\
    add r4, r4, r1\n\
    mov r0, r10\n\
    strh r4, [r0]\n\
    ldrh r0, [r2, #8]\n\
    ldrh r1, [r3]\n\
    add r0, r0, r1\n\
    strh r0, [r3]\n\
    ldr r2, _0801AC3C  @ =gUnknown_08079384\n\
    ldr r0, _0801ABD0  @ =gUnknown_03000094\n\
    ldr r5, [r0]\n\
    ldr r0, [r2, #12]\n\
    ldrb r1, [r0]\n\
    ldrh r0, [r2, #4]\n\
    mul r1, r0, r1\n\
    lsl r1, r1, #2\n\
    ldr r0, [r2, #20]\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    ldr r1, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r1\n\
    str r0, [r7, #4]\n\
    ldrh r0, [r2, #8]\n\
    lsr r0, r0, #2\n\
    mov r1, r8\n\
    orr r0, r0, r1\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r4, [r5, #36]\n\
    ldrh r4, [r2, #6]\n\
    mov r0, r10\n\
    ldrh r0, [r0]\n\
    add r4, r4, r0\n\
    mov r1, r10\n\
    strh r4, [r1]\n\
    ldrh r0, [r2, #8]\n\
    ldrh r2, [r3]\n\
    add r0, r0, r2\n\
    strh r0, [r3]\n\
    ldr r2, _0801AC40  @ =gUnknown_080793E4\n\
    ldr r0, _0801ABD0  @ =gUnknown_03000094\n\
    ldr r5, [r0]\n\
    ldr r0, [r2, #12]\n\
    ldrb r1, [r0]\n\
    ldrh r0, [r2, #4]\n\
    mul r1, r0, r1\n\
    lsl r1, r1, #2\n\
    ldr r0, [r2, #20]\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    ldr r1, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r1\n\
    str r0, [r7, #4]\n\
    ldrh r0, [r2, #8]\n\
    lsr r0, r0, #2\n\
    mov r1, r8\n\
    orr r0, r0, r1\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r4, [r5, #38]\n\
    ldrh r4, [r2, #6]\n\
    mov r0, r10\n\
    ldrh r0, [r0]\n\
    add r4, r4, r0\n\
    mov r1, r10\n\
    strh r4, [r1]\n\
    ldrh r0, [r2, #8]\n\
    ldrh r2, [r3]\n\
    add r0, r0, r2\n\
    strh r0, [r3]\n\
    ldr r2, _0801AC44  @ =gUnknown_08079444\n\
    ldr r0, _0801ABD0  @ =gUnknown_03000094\n\
    ldr r5, [r0]\n\
    ldr r0, [r2, #12]\n\
    ldrb r1, [r0]\n\
    ldrh r0, [r2, #4]\n\
    mul r1, r0, r1\n\
    lsl r1, r1, #2\n\
    ldr r0, [r2, #20]\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    ldrh r0, [r3]\n\
    ldr r1, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r1\n\
    str r0, [r7, #4]\n\
    ldrh r0, [r2, #8]\n\
    lsr r0, r0, #2\n\
    mov r1, r8\n\
    orr r0, r0, r1\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    strh r4, [r5, #40]\n\
    ldrh r0, [r2, #6]\n\
    mov r4, r10\n\
    ldrh r4, [r4]\n\
    add r0, r0, r4\n\
    mov r1, r10\n\
    strh r0, [r1]\n\
    ldrh r0, [r2, #8]\n\
    ldrh r2, [r3]\n\
    add r0, r0, r2\n\
    strh r0, [r3]\n\
    ldr r0, _0801AC48  @ =gLevelSelectMode\n\
    ldrb r1, [r0]\n\
    sub r0, r1, #2\n\
    lsl r0, r0, #24\n\
    lsr r0, r0, #24\n\
    mov r12, r3\n\
    cmp r0, #1\n\
    bls _0801AB7A\n\
    cmp r1, #5\n\
    beq _0801AB7A\n\
    b _0801ACB4\n\
_0801AB7A:\n\
    mov r1, #0\n\
    ldr r0, _0801AC4C  @ =gLevelSelectWorldCursor\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #24\n\
    asr r0, r0, #24\n\
    cmp r0, #1\n\
    bne _0801AB8A\n\
    mov r1, #1\n\
_0801AB8A:\n\
    str r1, [sp]\n\
    mov r1, #0\n\
    mov r8, r12\n\
    mov r6, r10\n\
_0801AB92:\n\
    lsl r3, r1, #16\n\
    asr r3, r3, #16\n\
    lsl r1, r1, #24\n\
    lsr r1, r1, #24\n\
    lsl r5, r3, #1\n\
    add r2, r5, r3\n\
    lsl r2, r2, #3\n\
    ldr r4, _0801AC50  @ =gUnknown_08078C1C\n\
    add r2, r2, r4\n\
    ldr r4, _0801ABD0  @ =gUnknown_03000094\n\
    ldr r0, [r4]\n\
    add r5, r5, r0\n\
    ldr r4, [r2, #12]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r4\n\
    ldrb r1, [r0]\n\
    ldrh r0, [r2, #4]\n\
    b _0801AC54\n\
    .byte 0x00\n\
    .byte 0x00\n\
_0801ABBC:\n\
    .4byte 0x040000D4\n\
_0801ABC0:\n\
    .4byte gUnknown_085CD848\n\
_0801ABC4:\n\
    .4byte gObjVRAMCopyOffset_0300192C\n\
_0801ABC8:\n\
    .4byte 0x06010000\n\
_0801ABCC:\n\
    .4byte 0x84000200\n\
_0801ABD0:\n\
    .4byte gUnknown_03000094\n\
_0801ABD4:\n\
    .4byte gVRAMCurrTileNum_03001930\n\
_0801ABD8:\n\
    .4byte gUnknown_085CE074\n\
_0801ABDC:\n\
    .4byte gUnknown_085C7A78\n\
_0801ABE0:\n\
    .4byte gUnknown_0300008A\n\
_0801ABE4:\n\
    .4byte gUnknown_085C7D08\n\
_0801ABE8:\n\
    .4byte gUnknown_085E2870\n\
_0801ABEC:\n\
    .4byte gUnknown_03000088\n\
_0801ABF0:\n\
    .4byte gUnknown_085E2B00\n\
_0801ABF4:\n\
    .4byte 0x84000040\n\
_0801ABF8:\n\
    .4byte gUnknown_085E2F00\n\
_0801ABFC:\n\
    .4byte gUnknown_085E3190\n\
_0801AC00:\n\
    .4byte gUnknown_085E90D0\n\
_0801AC04:\n\
    .4byte gUnknown_085E9360\n\
_0801AC08:\n\
    .4byte 0x84000100\n\
_0801AC0C:\n\
    .4byte gUnknown_085C2588\n\
_0801AC10:\n\
    .4byte 0x84000020\n\
_0801AC14:\n\
    .4byte gUnknown_085C2634\n\
_0801AC18:\n\
    .4byte gUnknown_085E1F2C\n\
_0801AC1C:\n\
    .4byte gUnknown_03000085\n\
_0801AC20:\n\
    .4byte gUnknown_085E200C\n\
_0801AC24:\n\
    .4byte gUnknown_085E1C2C\n\
_0801AC28:\n\
    .4byte gUnknown_03000086\n\
_0801AC2C:\n\
    .4byte gUnknown_080793B4\n\
_0801AC30:\n\
    .4byte gUnknown_03000087\n\
_0801AC34:\n\
    .4byte gUnknown_08079414\n\
_0801AC38:\n\
    .4byte gUnknown_08079474\n\
_0801AC3C:\n\
    .4byte gUnknown_08079384\n\
_0801AC40:\n\
    .4byte gUnknown_080793E4\n\
_0801AC44:\n\
    .4byte gUnknown_08079444\n\
_0801AC48:\n\
    .4byte gLevelSelectMode\n\
_0801AC4C:\n\
    .4byte gLevelSelectWorldCursor\n\
_0801AC50:\n\
    .4byte gUnknown_08078C1C\n\
_0801AC54:\n\
    mul r1, r0, r1\n\
    lsl r1, r1, #2\n\
    ldr r0, [r2, #20]\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    mov r1, r8\n\
    ldrh r0, [r1]\n\
    ldr r4, _0801ACAC  @ =OBJ_VRAM0\n\
    add r0, r0, r4\n\
    str r0, [r7, #4]\n\
    ldrh r0, [r2, #8]\n\
    lsr r0, r0, #2\n\
    mov r1, #132\n\
    lsl r1, r1, #24\n\
    mov r9, r1\n\
    orr r0, r0, r1\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    ldrh r0, [r6]\n\
    strh r0, [r5, #42]\n\
    ldrh r0, [r2, #6]\n\
    ldrh r4, [r6]\n\
    add r0, r0, r4\n\
    strh r0, [r6]\n\
    ldrh r0, [r2, #8]\n\
    mov r1, r8\n\
    ldrh r1, [r1]\n\
    add r0, r0, r1\n\
    mov r2, r8\n\
    strh r0, [r2]\n\
    add r3, r3, #1\n\
    lsl r3, r3, #16\n\
    lsr r1, r3, #16\n\
    asr r3, r3, #16\n\
    cmp r3, #6\n\
    bgt _0801AC9E\n\
    b _0801AB92\n\
_0801AC9E:\n\
    ldr r1, [sp]\n\
    lsl r2, r1, #1\n\
    add r2, r2, r1\n\
    lsl r2, r2, #3\n\
    ldr r3, _0801ACB0  @ =gUnknown_08078CF4\n\
    b _0801AD44\n\
    .byte 0x00\n\
    .byte 0x00\n\
_0801ACAC:\n\
    .4byte 0x06010000\n\
_0801ACB0:\n\
    .4byte gUnknown_08078CF4\n\
_0801ACB4:\n\
    mov r1, #0\n\
    ldr r0, _0801ADA4  @ =gLevelSelectWorldCursor\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #24\n\
    asr r0, r0, #24\n\
    cmp r0, #6\n\
    bne _0801ACC4\n\
    mov r1, #1\n\
_0801ACC4:\n\
    str r1, [sp, #4]\n\
    mov r1, #0\n\
    mov r8, r12\n\
    mov r6, r10\n\
_0801ACCC:\n\
    lsl r3, r1, #16\n\
    asr r3, r3, #16\n\
    lsl r1, r1, #24\n\
    lsr r1, r1, #24\n\
    lsl r5, r3, #1\n\
    add r2, r5, r3\n\
    lsl r2, r2, #3\n\
    ldr r4, _0801ADA8  @ =gUnknown_08078B74\n\
    add r2, r2, r4\n\
    ldr r4, _0801ADAC  @ =gUnknown_03000094\n\
    ldr r0, [r4]\n\
    add r5, r5, r0\n\
    ldr r4, [r2, #12]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r4\n\
    ldrb r1, [r0]\n\
    ldrh r0, [r2, #4]\n\
    mul r1, r0, r1\n\
    lsl r1, r1, #2\n\
    ldr r0, [r2, #20]\n\
    add r0, r0, r1\n\
    str r0, [r7]\n\
    mov r1, r8\n\
    ldrh r0, [r1]\n\
    ldr r4, _0801ADB0  @ =OBJ_VRAM0\n\
    add r0, r0, r4\n\
    str r0, [r7, #4]\n\
    ldrh r0, [r2, #8]\n\
    lsr r0, r0, #2\n\
    mov r1, #132\n\
    lsl r1, r1, #24\n\
    mov r9, r1\n\
    orr r0, r0, r1\n\
    str r0, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    ldrh r0, [r6]\n\
    strh r0, [r5, #42]\n\
    ldrh r0, [r2, #6]\n\
    ldrh r4, [r6]\n\
    add r0, r0, r4\n\
    strh r0, [r6]\n\
    ldrh r0, [r2, #8]\n\
    mov r1, r8\n\
    ldrh r1, [r1]\n\
    add r0, r0, r1\n\
    mov r2, r8\n\
    strh r0, [r2]\n\
    add r3, r3, #1\n\
    lsl r3, r3, #16\n\
    lsr r1, r3, #16\n\
    asr r3, r3, #16\n\
    cmp r3, #6\n\
    ble _0801ACCC\n\
    ldr r1, [sp, #4]\n\
    lsl r2, r1, #1\n\
    add r2, r2, r1\n\
    lsl r2, r2, #3\n\
    ldr r3, _0801ADB4  @ =gUnknown_08078CC4\n\
_0801AD44:\n\
    add r2, r2, r3\n\
    ldr r4, _0801ADAC  @ =gUnknown_03000094\n\
    ldr r5, [r4]\n\
    ldr r3, _0801ADB8  @ =REG_DMA3SAD\n\
    ldr r4, [r2, #12]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r4\n\
    ldrb r1, [r0]\n\
    ldrh r0, [r2, #4]\n\
    mul r1, r0, r1\n\
    lsl r1, r1, #2\n\
    ldr r0, [r2, #20]\n\
    add r0, r0, r1\n\
    str r0, [r3]\n\
    mov r1, r12\n\
    ldrh r0, [r1]\n\
    ldr r4, _0801ADB0  @ =OBJ_VRAM0\n\
    add r0, r0, r4\n\
    str r0, [r3, #4]\n\
    ldrh r0, [r2, #8]\n\
    lsr r0, r0, #2\n\
    mov r1, r9\n\
    orr r0, r0, r1\n\
    str r0, [r3, #8]\n\
    ldr r0, [r3, #8]\n\
    mov r3, r10\n\
    ldrh r0, [r3]\n\
    strh r0, [r5, #14]\n\
    ldrh r0, [r2, #6]\n\
    ldrh r4, [r3]\n\
    add r0, r0, r4\n\
    strh r0, [r3]\n\
    ldrh r0, [r2, #8]\n\
    mov r1, r12\n\
    ldrh r1, [r1]\n\
    add r0, r0, r1\n\
    mov r2, r12\n\
    strh r0, [r2]\n\
    add sp, sp, #8\n\
    pop {r3-r5}\n\
    mov r8, r3\n\
    mov r9, r4\n\
    mov r10, r5\n\
    pop {r4-r7}\n\
    pop {r0}\n\
    bx r0\n\
_0801ADA4:\n\
    .4byte gLevelSelectWorldCursor\n\
_0801ADA8:\n\
    .4byte gUnknown_08078B74\n\
_0801ADAC:\n\
    .4byte gUnknown_03000094\n\
_0801ADB0:\n\
    .4byte 0x06010000\n\
_0801ADB4:\n\
    .4byte gUnknown_08078CC4\n\
_0801ADB8:\n\
    .4byte 0x040000D4\n");
}
#endif

void level_select_loop(void)
{
    u8 i;
    s8 j;

    DmaFill32(3, 0xA0, gOamBuffer, sizeof(gOamBuffer));
    gUnknown_03000094->unk2 = gVRAMCurrTileNum_03001930 = gObjVRAMCopyOffset_0300192C = 0;
    gUnknown_03000084 = 0;
    if (gLevelType == 0)
        gLevelSelectLevelCursor = (gLevelSelectLevel + 1) >> 1;
    else
        gLevelSelectLevelCursor = gLevelSelectLevel;
    sub_0801A7D8();
    sub_08017FB8();
    sub_080180BC();
    if (gLevelSelectMode == 2 || gLevelSelectMode == 3 || gLevelSelectMode == 5)
    {
        sub_08019AF4(gLevelSelectLevelCursor, gLevelSelectWorld - 1);
        sub_08017600(gLevelSelectLevelCursor, gLevelSelectWorldCursor - 1);
    }
    else
    {
        sub_08019630(gLevelSelectLevelCursor, gLevelSelectWorld);
        sub_080171C8(gLevelSelectLevelCursor, gLevelSelectWorldCursor);
    }
    if (gLevelSelectMode == 0 || gLevelSelectMode == 1)
    {
        if (gLevelSelectWorld != 6)
            sub_08019F8C(gLevelSelectLevelCursor, gLevelSelectWorld);
    }
    else if (gLevelSelectMode == 2 || gLevelSelectMode == 3)
    {
        if (gLevelSelectWorld != 7)
            sub_0801A2B8(gLevelSelectLevelCursor, gLevelSelectWorld - 1);
    }
    if (gLevelSelectMode == 2 || gLevelSelectMode == 3 || gLevelSelectMode == 5)
    {
        sub_08017944();
        sub_08017ABC(gLevelSelectLevelCursor, gLevelSelectWorld);
        if (gLevelSelectWorldCursor <= 6)
        {
            for (i = 0; i < 7; i++)
            {
                u8 dummy;
                if (get_level_stats_0800FE2C(1, gLevelSelectWorldCursor - 1, i, &dummy))
                    sub_08018418(&gUnknown_08078DE4[i], 11);
                else
                    break;
            }
            if (i == 3 || i == 4 || i == 5)
                sub_08018418(&gUnknown_08078DE4[i], 11);

        }
        for (j = 1; j < 7; j++)
        {
            if (j != gLevelSelectWorldCursor - 1 && !is_world_or_expert_level_completed_080103C8(1, j - 1))
                sub_080188E8(&gUnknown_08078C1C[j], j);
        }
        if (gLevelSelectWorldCursor > 0)
            sub_08018998(&gUnknown_080794A4);
        if (gLevelSelectWorldCursor <= 5 && is_world_or_expert_level_completed_080103C8(gLevelType, gLevelSelectWorldCursor - 1))
            sub_08018A3C(&gUnknown_080794BC);
        if (gLevelSelectWorld <= 6)
            sub_0801A69C();
    }
    else
    {
        sub_080179F8();
        sub_080174FC(gLevelSelectLevelCursor, gLevelSelectWorld);
        sub_0801A5FC();
        for (j = 1; j < 7; j++)
        {
            if (j != gLevelSelectWorldCursor && !is_world_or_expert_level_completed_080103C8(0, j - 1))
                sub_080188E8(&gUnknown_08078B74[j], j);
        }
        if (gLevelSelectWorldCursor > 0)
            sub_08018998(&gUnknown_080794A4);
        if (gLevelSelectWorldCursor <= 4)
        {
            if (is_world_or_expert_level_completed_080103C8(gLevelType, gLevelSelectWorldCursor))
                sub_08018A3C(&gUnknown_080794BC);
        }
        else
            sub_08018A3C(&gUnknown_080794BC);
    }
    sub_080181BC();
    sub_0801B174();
    DmaCopy32(3, gOamBuffer, OAM, sizeof(gOamBuffer));
    DmaCopy16(3, gUnknown_03000074, gLevelSelectData.bgVramMapAddrs[0], gUnknown_03000078);
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
