#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "savefile.h"
#include "sound.h"
#include "sprites.h"

struct LevelSelectWork
{
    /*0x00*/ u16 fade;
    /*0x02*/ u16 oamIndex;
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

static void sub_080161AC(void);
static void sub_08016260(void);
static void sub_080163F4(void);
static void sub_08016654(void);
static void sub_0801711C(void);
static void sub_0801B174(void);
static int sub_0801B224(void);
static int sub_0801B258(void);
static void update_sprite_frame_anim_0801B288(s8 *pFrameNum, s8 *timer, s16 numFrames, struct SubSpriteTemplate *frames);

extern struct GraphicsConfig gLevelSelectData;
extern struct GraphicsConfig gLevelSelectPlusData;
extern struct GraphicsConfig gLevelSelectDKBossBG;
extern struct GraphicsConfig gLevelSelectDKPlusBossBG;
extern s8 gLevelSelectWorld;
extern s8 gLevelSelectLevel;

static struct UnknownStruct15 *gUnknown_03000070;
static void *gUnknown_03000074;
static u16 gUnknown_03000078;
static struct { u8 unk0; u8 unk1; u8 filler2[2]; } *gUnknown_0300007C;
static s8 gLevelSelectLevelCursor;
static s8 gLevelSelectWorldCursor;
static s8 gLevelSelectMode;
static s8 gLevelSelect_03000083;
static s8 gUnknown_03000084;
static s8 gUnknown_03000085;
static u8 gUnknown_03000086;
static u8 gUnknown_03000087;
static s8 gUnknown_03000088;
static u8 gUnknown_03000089;
static s8 gUnknown_0300008A;
static s8 gUnknown_0300008B;
static u8 gUnknown_0300008C;
static u8 gUnknown_0300008D;
static u8 gUnknown_0300008E;
static u8 gUnknown_0300008F;
static u8 gUnknown_03000090;
static u8 gUnknown_03000091;
static u8 gUnknown_03000092;
static struct LevelSelectWork *gLevelSelectWork;

asm(".section .rodata\n.balign 4\n");

// level_select_data.c
extern struct Coords32 gMainLvlCursorLocations[];
extern struct Coords32 gPlusLvlCursorLocations[];
extern struct Coords32 gMainLvlInfoLocations[];
extern struct Coords32 gPlusLvlInfoLocations[];
extern struct SpriteTemplate gUnknown_080789F4[];
extern struct SpriteTemplate gUnknown_08078AB4[];
extern struct SpriteTemplate gMainWorldSelectTabs[];
extern struct SpriteTemplate gPlusWorldSelectTabs[];
extern struct SpriteTemplate gPlusButton[];
extern struct SpriteTemplate gMainButton[];
extern struct SpriteTemplate gMainWorldArrows[];
extern struct SpriteTemplate gPlusWorldArrows[];
extern struct SpriteTemplate gMainLevelIconPics[];
extern struct SpriteTemplate gPlusLevelIconPics[];
extern struct SpriteTemplate gUnlockedMainLvlFrames[];
extern struct SpriteTemplate gUnlockedPlusLvlFrames[];
extern struct SpriteTemplate gLockedMainLvlFrames[];
extern struct SpriteTemplate gLockedPlusLvlFrames[];
extern struct SpriteTemplate gUnknown_080792C4;
extern struct SpriteTemplate gMainLvlLabelsSpriteTemplate;
extern struct SpriteTemplate gPlusLvlLabelsSpriteTemplate;
extern struct SpriteTemplate gMMLabelSpriteTemplate;
extern struct SpriteTemplate gDKLabelSpriteTemplate;
extern struct SpriteTemplate gDKPlusLabelSpriteTemplate;
extern struct SpriteTemplate gRotatingStarSpriteTemplate;
extern struct SpriteTemplate gfxRotatingStarAltSpriteTemplate;
extern struct SpriteTemplate gUnknown_08079384;
extern struct SpriteTemplate gRedPresentSpriteTemplate;
extern struct SpriteTemplate gUnknown_080793B4;
extern struct SpriteTemplate gRedPresentMovingSpriteTemplate;
extern struct SpriteTemplate gUnknown_080793E4;
extern struct SpriteTemplate gYellowPresentSpriteTemplate;
extern struct SpriteTemplate gUnknown_08079414;
extern struct SpriteTemplate gYellowPresentMovingSpriteTemplate;
extern struct SpriteTemplate gUnknown_08079444;
extern struct SpriteTemplate gBluePresentSpriteTemplate;
extern struct SpriteTemplate gUnknown_08079474;
extern struct SpriteTemplate gBluePresentMovingSpriteTemplate;
extern struct SpriteTemplate gLButtonSpriteTemplate;
extern struct SpriteTemplate gRButtonSpriteTemplate;
extern struct SpriteTemplate gUnknown_080794D4;
extern u32 gLevelSelectPaletteIDs[];
extern u32 gLevelSelectPlusPaletteIDs[];
extern struct GraphicsConfig *gLevelSelectBackgrounds[];
extern struct GraphicsConfig *gLevelSelectPlusBackgrounds[];

static void load_level_select_background(u8 levelSelectMode)
{
    struct GraphicsConfig *arr[4];

    switch (levelSelectMode)
    {
    case 0:
        arr[0] = NULL;
        arr[1] = NULL;
        arr[2] = NULL;
        arr[3] = gLevelSelectBackgrounds[gLevelSelectWorld];
        load_graphics_config_08032F24(arr, -1);
        load_predefined_palette(gLevelSelectPaletteIDs[gLevelSelectWorld], LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
        gUnknown_03000070 = repoint_tile_objects_08006968(&gLevelSelectData);
        break;
    case 1:
        arr[0] = NULL;
        arr[1] = NULL;
        arr[2] = NULL;
        arr[3] = gLevelSelectPlusBackgrounds[gLevelSelectWorld - 1];
        load_graphics_config_08032F24(arr, -1);
        load_predefined_palette(gLevelSelectPlusPaletteIDs[gLevelSelectWorld - 1], LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
        gUnknown_03000070 = repoint_tile_objects_08006968(&gLevelSelectPlusData);
        break;
    case 2:
        arr[0] = NULL;
        arr[1] = NULL;
        arr[2] = NULL;
        arr[3] = &gLevelSelectDKBossBG;
        load_graphics_config_08032F24(arr, -1);
        load_predefined_palette(PALETTE_17, LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
        gUnknown_03000070 = repoint_tile_objects_08006968(&gLevelSelectData);
        break;
    case 3:
        arr[0] = NULL;
        arr[1] = NULL;
        arr[2] = NULL;
        arr[3] = &gLevelSelectDKPlusBossBG;
        load_graphics_config_08032F24(arr, -1);
        load_predefined_palette(PALETTE_24, LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
        gUnknown_03000070 = repoint_tile_objects_08006968(&gLevelSelectPlusData);
        break;
    case 4:
        gLevelSelect_03000083 = 7;
        black_screen_08029D80();
        break;
    case 5:
        gLevelSelect_03000083 = 9;
        black_screen_08029D80();
        break;
    }
}

static u8 sub_08015238(u8 arg0)
{
    int ret;

    if (arg0 != 0)
    {
        gLevelSelectWork->fade = 15;
        ret = 1;
    }
    else if (gLevelSelectWork->fade == 0)
        ret = 1;
    else
    {
        gLevelSelectWork->fade--;
        REG_BLDALPHA = ((15 - gLevelSelectWork->fade) << 8) | gLevelSelectWork->fade;
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
    gUnknown_0300007C = temp = arena_allocate(sizeof(*gUnknown_0300007C) * 8);
    gLevelSelectWork = arena_allocate(sizeof(*gLevelSelectWork));
    CpuFill16(0, gLevelSelectWork, sizeof(*gLevelSelectWork));
    if (get_current_bgm() != RESULTS)
        play_bgm(RESULTS, 128, 1);
    gLevelSelectWork->unk4 = 0;
    gUnknown_030009D8 = 0;
    gUnknown_03001740 = 0;
    if (gLivesCount < 1)
        gLivesCount = 1;
    gUnknown_03000085 = gUnknown_03000086 = gUnknown_03000088 = gUnknown_03000089 = gUnknown_0300008A = gUnknown_0300008B = 0;
    gUnknown_03000087 = 1;
    gUnknown_0300008D = gfxRotatingStarAnim[0].duration;
    gUnknown_0300008E = gUnknown_085E0AC4[0].duration;
    gUnknown_0300008F = gUnknown_085E0AC4[1].duration;
    gUnknown_03000090 = gUnknown_085E2870[0].duration;
    gUnknown_03000091 = gUnknown_085C240C[0].duration;
    gUnknown_03000092 = gfxLevelButtonHighlightAnim[0].duration;
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
        load_predefined_palette(gLevelSelectPlusPaletteIDs[gLevelSelectWorld - 1], LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
        gUnknown_03000070 = repoint_tile_objects_08006968(&gLevelSelectPlusData);
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
        load_predefined_palette(PALETTE_17, LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
        gUnknown_03000070 = repoint_tile_objects_08006968(&gLevelSelectData);
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
        load_predefined_palette(PALETTE_24, LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
        gUnknown_03000070 = repoint_tile_objects_08006968(&gLevelSelectPlusData);
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
        load_predefined_palette(gLevelSelectPaletteIDs[gLevelSelectWorld], LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
        gUnknown_03000070 = repoint_tile_objects_08006968(&gLevelSelectData);
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
        load_predefined_palette(gLevelSelectPlusPaletteIDs[gLevelSelectWorld], LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
        gUnknown_03000070 = repoint_tile_objects_08006968(&gLevelSelectPlusData);
    }
    else
    {
        gLevelSelectMode = 0;
        arr[0] = &gLevelSelectData;
        arr[1] = &gLevelSelectData;
        arr[2] = &gLevelSelectData;
        arr[3] = gLevelSelectBackgrounds[gLevelSelectWorld];
        load_graphics_config_08032F24(arr, 3);
        load_predefined_palette(gLevelSelectPaletteIDs[gLevelSelectWorld], LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
        gUnknown_03000070 = repoint_tile_objects_08006968(&gLevelSelectData);
    }
    gUnknown_03000078 = 0x800;
    gUnknown_03000074 = temp2 = arena_allocate(0x800);
    CpuFill16(0, gUnknown_03000074, gUnknown_03000078);
    gUnknown_03000BD0 = 0;
    DmaFill16(3, 0xA0, OAM, OAM_SIZE/2);
    if (sound_is_music_finished())
        play_bgm(TITLE, 128, 1);
    save_blend_regs_from_graphicsconfig(&gLevelSelectData);
    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    CpuFill16(0, &gBGLayerOffsets, sizeof(gBGLayerOffsets));
}

static void handle_input_mode_0(void)
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
                decompress_level_data_08004428(gNextLevelInLevelTable.unk0->levelData);
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
                decompress_level_data_08004428(gNextLevelInLevelTable.unk0->levelData);
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
                decompress_level_data_08004428(gNextLevelInLevelTable.unk0->levelData);
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
                decompress_level_data_08004428(gNextLevelInLevelTable.unk0->levelData);
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

static void handle_input_mode_1(void)
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
                gCurrentWorld = WORLD_1;
                gNextLevelID = 0;
                decompress_level_data_08004428(gNextLevelInLevelTable.unk0->levelData);
                change_main_state(MAIN_STATE_LEVEL_PLAY, USE_FADE);
            }
            else if (gLevelSelectWorldCursor == 7)
            {
                gLevelSelectMode = 3;
                gLevelSelectWorld = gLevelSelectWorldCursor = 0;
                gLevelSelectLevel = gLevelSelectLevelCursor = 0;
                gLevelSelect_03000083 = 7;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                load_level_select_background(4);
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

static void handle_input_mode_2(void)
{
    if (gNewKeys & DPAD_UP)
    {
        if (gLevelSelectLevel <= 2)
        {
            gLevelSelectMode = 3;
            play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            if (gLevelSelectLevel == 6)
                gLevelSelectLevel -= 4;
            else
                gLevelSelectLevel -= 3;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gNewKeys & DPAD_DOWN)
    {
        if (gLevelSelectLevel <= 2)
        {
            if (is_level_unlocked(gLevelType, gLevelSelectWorld - 1, gLevelSelectLevel + 3))
            {
                gLevelSelectLevel += 3;
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
    else if (gNewKeys & DPAD_RIGHT)
    {
        if (gLevelSelectLevel < (u32)(gUnknown_08B2CDF4[0].unk4[gLevelSelectWorld - 1].unk0 - 1))
        {
            if (is_level_unlocked(gLevelType, gLevelSelectWorld - 1, gLevelSelectLevel + 1))
            {
                gLevelSelectLevel += 1;
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
            if (is_level_unlocked(gLevelType, gLevelSelectWorld - 1, gLevelSelectLevel - 1))
            {
                gLevelSelectLevel -= 1;
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
        }
        else
        {
            if (is_level_unlocked(gLevelType, gLevelSelectWorld - 1, 6))
            {
                gLevelSelectLevel = 6;
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
        }
    }
    else if (gNewKeys & R_BUTTON)
    {
        sub_08016654();
    }
    else if (gNewKeys & L_BUTTON)
    {
        sub_080163F4();
    }
    else if (pressed_a_or_start_08034004())
    {
        if (gLevelSelectWorld == 1)
        {
            gLevelType = LEVEL_TYPE_PLUS;
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            gNextLevelID = gLevelSelectLevel;
            gCurrentWorld = gLevelSelectWorld - 1;
            level_setup(gLevelSelectWorld - 1, gLevelSelectLevel);
            decompress_level_data_08004428(gNextLevelInLevelTable.unk0->levelData);
            change_main_state(MAIN_STATE_LEVEL_PLAY, USE_FADE);
        }
        else if (is_level_unlocked(gLevelType, gLevelSelectWorld - 1, gLevelSelectLevel))
        {
            gLevelType = LEVEL_TYPE_PLUS;
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            gNextLevelID = gLevelSelectLevel;
            gCurrentWorld = gLevelSelectWorld - 1;
            level_setup(gLevelSelectWorld - 1, gLevelSelectLevel);
            decompress_level_data_08004428(gNextLevelInLevelTable.unk0->levelData);
            change_main_state(MAIN_STATE_LEVEL_PLAY, USE_FADE);
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

static void handle_input_mode_3(void)
{
    int dumb;

    if (gNewKeys & DPAD_DOWN)
    {
        if (gLevelSelectWorldCursor > 6)
        {
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            if (gLevelSelectWorldCursor == 0)
            {
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
            else if (is_level_unlocked(gLevelType, gLevelSelectWorldCursor - 1, 0))
            {
                gLevelSelectLevelCursor = gLevelSelectLevel = 0;
                if (gLevelSelectWorld == gLevelSelectWorldCursor)
                {
                    gLevelSelectMode = 2;
                    play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
                }
                else
                {
                    gLevelSelectWorld = gLevelSelectWorldCursor;
                    gLevelSelectLevel = gLevelSelectLevelCursor;
                    dumb = 4;
                    gLevelSelect_03000083 = 4;
                    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                    play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
                }
            }
            else
            {
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
        }
    }
    else if (sub_0801B258() == 0)
    {
        if (gNewKeys & (A_BUTTON|START_BUTTON))
        {
            if (gLevelSelectWorldCursor > 6)
            {
                gLevelType = LEVEL_TYPE_PLUS_BOSS;
                play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
                level_setup(0, 1);
                gNextLevelID = 1;
                gCurrentWorld = 0;
                decompress_level_data_08004428(gNextLevelInLevelTable.unk0->levelData);
                change_main_state(MAIN_STATE_LEVEL_PLAY, USE_FADE);
            }
            else if (gLevelSelectWorldCursor == 0)
            {
                gLevelSelectMode = 1;
                gLevelSelectWorld = gLevelSelectWorldCursor = 7;
                gLevelSelectLevel = gLevelSelectLevelCursor = 0;
                gLevelSelect_03000083 = 9;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                load_level_select_background(5);
                play_sound_effect_08071990(SE_PLUS_MAIN, 8, 16, 64, 0, 128, 0);
            }
            else if (is_level_unlocked(gLevelType, gLevelSelectWorldCursor - 1, gLevelSelectLevelCursor))
            {
                if (gLevelSelectWorld == gLevelSelectWorldCursor)
                {
                    gLevelSelectMode = 2;
                    play_sound_effect_08071990(SE_CURSOR_M, 8, 16, 64, 0, 128, 0);
                }
                else
                {
                    gLevelSelectWorld = gLevelSelectWorldCursor - 1;
                    gLevelSelectLevel = 0;
                    dumb = 4;
                    gLevelSelect_03000083 = 4;
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

static void sub_080161AC(void)
{
    int temp;

    if (gLevelSelectWorldCursor > 0)
    {
        if (gLevelSelectWorldCursor <= 6)
        {
            gLevelSelectWork->fade = 15;
            REG_BLDCNT = BLDCNT_EFF_ALPHA | BLDCNT_BG1_FIRST | BLDCNT_BG0_SECOND | BLDCNT_BG2_SECOND | BLDCNT_BG3_SECOND | BLDCNT_OBJ_SECOND | BLDCNT_BD_SECOND;
            REG_BLDALPHA = ((15 - gLevelSelectWork->fade) << 8) | gLevelSelectWork->fade;
            temp = 3;
            gLevelSelectWork->unk6 = 5;
            gLevelSelect_03000083 = temp;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            gLevelSelectWork->fade = 15;
        }
        gLevelSelectWorldCursor--;
        gLevelSelectWorld = gLevelSelectWorldCursor;
        gLevelSelectLevel = gLevelSelectLevelCursor = 0;
        play_sound_effect_08071990(SE_CURSOR_WORLD, 8, 16, 64, 0, 128, 0);
    }
    else
    {
        play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
    }
}

static void sub_08016260(void)
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
            gLevelSelectWork->unk6 = 5;
            gLevelSelect_03000083 = 3;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            gLevelSelectWork->fade = 15;
            REG_BLDALPHA = 15;
            play_sound_effect_08071990(SE_CURSOR_WORLD, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
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
            gLevelSelectWork->fade = 15;
            REG_BLDALPHA = 15;
            play_sound_effect_08071990(SE_CURSOR_WORLD, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
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
        load_level_select_background(4);
        play_sound_effect_08071990(SE_PLUS_MAIN, 8, 16, 64, 0, 128, 0);
    }
    else
    {
        play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
    }
}

static void sub_080163F4(void)
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
            load_level_select_background(5);
            play_sound_effect_08071990(SE_PLUS_MAIN, 8, 16, 64, 0, 128, 0);
        }
        else if (gLevelSelectWorldCursor > 1)
        {
            gLevelSelectWork->fade = 15;
            REG_BLDCNT = BLDCNT_EFF_ALPHA | BLDCNT_BG1_FIRST | BLDCNT_BG0_SECOND | BLDCNT_BG2_SECOND | BLDCNT_BG3_SECOND | BLDCNT_OBJ_SECOND | BLDCNT_BD_SECOND;
            REG_BLDALPHA = ((15 - gLevelSelectWork->fade) << 8) | gLevelSelectWork->fade;
            dumb = 6;
            gLevelSelectWork->unk6 = 5;
            gLevelSelect_03000083 = 6;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            gLevelSelectWork->fade = 15;
            if (gLevelSelectWorldCursor == 8)
                gLevelSelectWorldCursor--;
            gLevelSelectWorldCursor--;
            gLevelSelectWorld = gLevelSelectWorldCursor;
            gLevelSelectLevel = gLevelSelectLevelCursor = 0;
            play_sound_effect_08071990(SE_CURSOR_WORLD, 8, 16, 64, 0, 128, 0);
        }
        else if (is_level_unlocked(5, 0, 0))
        {
            gLevelSelectWorld = gLevelSelectWorldCursor = 7;
            gLevelSelectLevel = gLevelSelectLevelCursor = 0;
            dumb = 16;
            gLevelSelect_03000083 = 16;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            gLevelSelectWork->fade = 15;
            REG_BLDALPHA = gLevelSelectWork->fade;
            gLevelSelectWorldCursor = 8;
            play_sound_effect_08071990(SE_CURSOR_WORLD, 8, 16, 64, 0, 128, 0);
        }
        else if (is_level_unlocked(1, 5, 0))
        {
            gLevelSelectWorld = gLevelSelectWorldCursor = 6;
            gLevelSelectLevel = gLevelSelectLevelCursor = 0;
            gLevelSelectWork->fade = 15;
            REG_BLDCNT = BLDCNT_EFF_ALPHA | BLDCNT_BG1_FIRST | BLDCNT_BG0_SECOND | BLDCNT_BG2_SECOND | BLDCNT_BG3_SECOND | BLDCNT_OBJ_SECOND | BLDCNT_BD_SECOND;
            REG_BLDALPHA = ((15 - gLevelSelectWork->fade) << 8) | gLevelSelectWork->fade;
            dumb = 6;
            gLevelSelectWork->unk6 = 5;
            gLevelSelect_03000083 = 6;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            gLevelSelectWork->fade = 15;
            REG_BLDALPHA = gLevelSelectWork->fade;
            gLevelSelectWorldCursor = 7;
            play_sound_effect_08071990(SE_CURSOR_WORLD, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
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
        load_level_select_background(5);
        play_sound_effect_08071990(SE_PLUS_MAIN, 8, 16, 64, 0, 128, 0);
    }
}

static void sub_08016654(void)
{
    int dumb;

    if (gLevelSelectWorldCursor <= (u32)gUnknown_08B2CDF4[0].unk0)
    {
        if (gLevelSelectWorldCursor == 0)
        {
            gLevelSelectWorldCursor++;
            gLevelSelectWorld = gLevelSelectWorldCursor;
            gLevelSelectLevel = gLevelSelectLevelCursor = 0;
            play_sound_effect_08071990(SE_CURSOR_WORLD, 8, 16, 64, 0, 128, 0);
        }
        else if (gLevelSelectWorldCursor <= 5)
        {
            if (is_world_or_expert_level_completed_080103C8(gLevelType, gLevelSelectWorldCursor - 1))
            {
                gLevelSelectWorldCursor++;
                gLevelSelectWorld = gLevelSelectWorldCursor;
                gLevelSelectLevel = gLevelSelectLevelCursor = 0;
                gLevelSelectWork->fade = 15;
                REG_BLDCNT = BLDCNT_EFF_ALPHA | BLDCNT_BG1_FIRST | BLDCNT_BG0_SECOND | BLDCNT_BG2_SECOND | BLDCNT_BG3_SECOND | BLDCNT_OBJ_SECOND | BLDCNT_BD_SECOND;
                REG_BLDALPHA = ((15 - gLevelSelectWork->fade) << 8) | gLevelSelectWork->fade;
                dumb = 6;
                gLevelSelectWork->unk6 = 5;
                gLevelSelect_03000083 = 6;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                gLevelSelectWork->fade = 15;
                REG_BLDALPHA = gLevelSelectWork->fade;
                play_sound_effect_08071990(SE_CURSOR_WORLD, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
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
                gLevelSelectWork->fade = 15;
                REG_BLDALPHA = gLevelSelectWork->fade;
                play_sound_effect_08071990(SE_CURSOR_WORLD, 8, 16, 64, 0, 128, 0);
                return;
            }
            else if (gLevelSelectWorldCursor == 7)
            {
                gLevelSelectWorld = gLevelSelectWorldCursor = 0;
                gLevelSelectLevel = gLevelSelectLevelCursor = 0;
                gLevelSelectWork->fade = 15;
                REG_BLDCNT = BLDCNT_EFF_ALPHA | BLDCNT_BG1_FIRST | BLDCNT_BG0_SECOND | BLDCNT_BG2_SECOND | BLDCNT_BG3_SECOND | BLDCNT_OBJ_SECOND | BLDCNT_BD_SECOND;
                REG_BLDALPHA = ((15 - gLevelSelectWork->fade) << 8) | gLevelSelectWork->fade;
                dumb = 6;
                gLevelSelectWork->unk6 = 5;
                gLevelSelect_03000083 = 6;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
                gLevelSelectWork->fade = 15;
                REG_BLDALPHA = gLevelSelectWork->fade;
                play_sound_effect_08071990(SE_CURSOR_WORLD, 8, 16, 64, 0, 128, 0);
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
    else
    {
        play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
    }
}

static void sub_0801685C(void)
{
    int dumb;

    if (gNewKeys & DPAD_DOWN)
    {
        gLevelSelectMode = 4;
        dumb = 11;
        gLevelSelect_03000083 = 11;
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
        play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
    }
    else
    {
        if (gNewKeys & DPAD_RIGHT)
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        else if (gNewKeys & DPAD_LEFT)
        {
            gLevelSelectWorldCursor--;
            gLevelSelectMode = 1;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
        }
        if (gNewKeys & (A_BUTTON|START_BUTTON))
        {
            gLevelSelectMode = 4;
            dumb = 11;
            gLevelSelect_03000083 = 11;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            play_sound_effect_08071990(SE_CURSOR_M, 8, 16, 64, 0, 128, 0);
        }
        else if (gNewKeys & B_BUTTON)
        {
            play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
            change_main_state(MAIN_STATE_FILE_SELECT, USE_FADE);
        }
    }
}

static void handle_input_mode_4(void)
{
    if (gNewKeys & DPAD_UP)
    {
        gLevelSelectMode = 1;
        play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
    }
    else if (gNewKeys & (A_BUTTON|START_BUTTON))
    {
        gLevelType = LEVEL_TYPE_MAIN_BOSS;
        play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
        level_setup(0, 0);
        gCurrentWorld = 0;
        gNextLevelID = 0;
        decompress_level_data_08004428(gNextLevelInLevelTable.unk0->levelData);
        change_main_state(MAIN_STATE_LEVEL_PLAY, USE_FADE);
    }
    else if (gNewKeys & B_BUTTON)
    {
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        change_main_state(MAIN_STATE_FILE_SELECT, USE_FADE);
    }
}

static void sub_08016A24(void)
{
    int dumb;

    if (gNewKeys & DPAD_DOWN)
    {
        gLevelSelectMode = 5;
        dumb = 14;
        gLevelSelect_03000083 = 14;
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
        play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
    }
    else
    {
        if (gNewKeys & DPAD_RIGHT)
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        else if (gNewKeys & DPAD_LEFT)
        {
            gLevelSelectWorldCursor--;
            gLevelSelectMode = 3;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
        }
        if (gNewKeys & (A_BUTTON|START_BUTTON))
        {
            gLevelSelectMode = 5;
            dumb = 14;
            gLevelSelect_03000083 = 14;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            play_sound_effect_08071990(SE_CURSOR_M, 8, 16, 64, 0, 128, 0);
        }
        else if (gNewKeys & B_BUTTON)
        {
            play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
            change_main_state(MAIN_STATE_FILE_SELECT, USE_FADE);
        }
    }
}

static void handle_input_mode_5(void)
{
    if (gNewKeys & DPAD_UP)
    {
        gLevelSelectMode = 3;
        play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
    }
    else if (gNewKeys & (A_BUTTON|START_BUTTON))
    {
        gLevelType = LEVEL_TYPE_PLUS_BOSS;
        play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
        level_setup(0, 1);
        gNextLevelID = 1;
        gCurrentWorld = 0;
        decompress_level_data_08004428(gNextLevelInLevelTable.unk0->levelData);
        change_main_state(MAIN_STATE_LEVEL_PLAY, USE_FADE);
    }
    else if (gNewKeys & B_BUTTON)
    {
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        change_main_state(MAIN_STATE_FILE_SELECT, USE_FADE);
    }
}

void level_select_main(void)
{
    update_fade_from_black();
    process_input();
    if (gLevelSelect_03000083 != 0)
    {
        gBGLayerOffsets.bg3_x = gLevelSelectWork->unk4 = 0;
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
            else if (gLevelSelectWork->unk6 == 0)
            {
                if (gNewKeys & (DPAD_RIGHT|R_BUTTON))
                    sub_08016260();
                else if (gNewKeys & (DPAD_LEFT|L_BUTTON))
                    sub_080161AC();
            }
            else
                gLevelSelectWork->unk6--;
            break;
        case 6:
            load_level_select_background(1);
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
            else if (gLevelSelectWork->unk6 != 0)
                gLevelSelectWork->unk6--;
            else if (gNewKeys & (DPAD_RIGHT|R_BUTTON))
                sub_08016654();
            else if (gNewKeys & (DPAD_LEFT|L_BUTTON))
                sub_080163F4();
            break;
        case 3:
            load_level_select_background(0);
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
            load_level_select_background(2);
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
            load_level_select_background(3);
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
                load_predefined_palette(gLevelSelectPlusPaletteIDs[gLevelSelectWorld - 1], LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
                CpuFill16(0, gUnknown_03000074, gUnknown_03000078);
                gUnknown_03000070 = repoint_tile_objects_08006968(&gLevelSelectPlusData);
                gLevelSelect_03000083 = 8;
                save_blend_regs(0x3D42, 0xA0A0, 0);
            }
            break;
        case 8:
            if (!gIsFadeInProgress)
            {
                gLevelType = LEVEL_TYPE_PLUS;
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
                load_predefined_palette(PALETTE_17, LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
                gUnknown_03000070 = repoint_tile_objects_08006968(&gLevelSelectData);
                gLevelSelect_03000083 = 10;
                save_blend_regs(0x3D42, 0xA0A0, 0);
            }
            break;
        case 10:
            if (!gIsFadeInProgress)
            {
                gLevelType = LEVEL_TYPE_MAIN;
                gLevelSelect_03000083 = 0;
                gLevelSelectMode = 1;
                REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
            }
            break;
        }
    }
    else
    {
        if (gLevelType == LEVEL_TYPE_MAIN)
        {
            if (gLevelSelectWorldCursor <= 5)
            {
                gLevelSelectWork->unk4 += 80;
                gBGLayerOffsets.bg3_x = gLevelSelectWork->unk4 >> 8;
            }
            else
            {
                gBGLayerOffsets.bg3_x = gLevelSelectWork->unk4 = 0;
            }
        }
        else
        {
            if (gLevelSelectWorldCursor<= 6)
            {
                gLevelSelectWork->unk4 += 80;
                gBGLayerOffsets.bg3_x = gLevelSelectWork->unk4 >> 8;
            }
            else
            {
                gBGLayerOffsets.bg3_x = gLevelSelectWork->unk4 = 0;
            }
        }
        switch (gLevelSelectMode)
        {
        case 0: handle_input_mode_0(); break;
        case 1: handle_input_mode_1(); break;
        case 2: handle_input_mode_2(); break;
        case 3: handle_input_mode_3(); break;
        case 4: handle_input_mode_4(); break;
        case 5: handle_input_mode_5(); break;
        }
    }
    update_sprite_frame_anim_0801B288(&gUnknown_03000085, &gUnknown_0300008D, 6, gfxRotatingStarAnim);
    update_sprite_frame_anim_0801B288(&gUnknown_03000088, &gUnknown_03000090, 18, gUnknown_085E2870);
    update_sprite_frame_anim_0801B288(&gUnknown_03000086, &gUnknown_0300008E, 2, gUnknown_085E0AC4);
    update_sprite_frame_anim_0801B288(&gUnknown_03000087, &gUnknown_0300008F, 2, gUnknown_085E0AC4);
    update_sprite_frame_anim_0801B288(&gUnknown_03000089, &gUnknown_03000091, 2, gUnknown_085C240C);
    update_sprite_frame_anim_0801B288(&gUnknown_0300008A, &gUnknown_03000092, 18, gfxLevelButtonHighlightAnim);
    update_sprite_frame_anim_0801B288(&gUnknown_0300008B, &gUnknown_0300008C, 18, gUnknown_085E3590);
    sub_0801711C();
}

static void sub_0801711C(void)
{
    s16 i;

    CpuFill16(0, gUnknown_0300007C, sizeof(*gUnknown_0300007C) * 8);
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

static void sub_080171C8(s8 arg0, s8 arg1)
{
    u8 paletteNums[] = { 1, 2, 3, 4, 5, 6, 7, 9 };

    if (gLevelSelect_03000083 == 0 && !gIsFadeInProgress)
    {
        if (gLevelSelectMode == 0)
        {
            sub_0801B2CC_inline(gfxLevelButtonHighlightAnim[gUnknown_0300008A].unk8);
            DmaCopy32(3, &gfxLevelButtonHighlightOAM, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
            gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gLevelSelectWork->unk14;
            gOamBuffer[gLevelSelectWork->oamIndex].objMode = 1;
            gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNums[arg1];
            gOamBuffer[gLevelSelectWork->oamIndex].x = gMainLvlCursorLocations[arg0].x - 8;
            gOamBuffer[gLevelSelectWork->oamIndex].y = gMainLvlCursorLocations[arg0].y - 8;
            gOamBuffer[gLevelSelectWork->oamIndex].priority = 1;
            gLevelSelectWork->oamIndex++;
        }
        else if (gLevelSelectMode == 1)
        {
            struct SpriteTemplate *sprite = &gUnknown_080789F4[arg1];

            sub_0801B2CC_inline(sprite->subSprites[gUnknown_03000088].unk8);
            DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
            asm(""::"r"(&gLevelSelectWork));  // needed to match
            gOamBuffer[gLevelSelectWork->oamIndex].objMode = 1;
            if (arg1 <= 5)
            {
                gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gLevelSelectWork->unk8;
                gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNums[arg1];
            }
            else if (arg1 == 7)
            {
                gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gLevelSelectWork->unkC;
                gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNums[arg1];
            }
            else
            {
                gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gLevelSelectWork->unkA;
                gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNums[arg1];
            }
            gOamBuffer[gLevelSelectWork->oamIndex].x = (s16)sprite->x;
            gOamBuffer[gLevelSelectWork->oamIndex].y = sprite->y;
            gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
            gLevelSelectWork->oamIndex++;
        }
    }
}

static void sub_080174FC(int unused, s8 arg1)
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

static void sub_08017600(s8 arg0, s8 arg1)
{
    u8 paletteNums[] = { 1, 2, 3, 4, 5, 6, 7, 9 };

    if (gLevelSelect_03000083 == 0 && !gIsFadeInProgress)
    {
        if (gLevelSelectMode == 2)
        {
            if (arg1 >= 0)
            {
                sub_0801B2CC_inline(gfxLevelButtonHighlightAnim[gUnknown_0300008A].unk8);
                DmaCopy32(3, &gfxLevelButtonHighlightOAM, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
                gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gLevelSelectWork->unk14;
                gOamBuffer[gLevelSelectWork->oamIndex].objMode = 1;
                gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNums[arg1];
                gOamBuffer[gLevelSelectWork->oamIndex].x = gPlusLvlCursorLocations[arg0].x - 8;
                gOamBuffer[gLevelSelectWork->oamIndex].y = gPlusLvlCursorLocations[arg0].y - 8;
                gOamBuffer[gLevelSelectWork->oamIndex].priority = 2;
                gLevelSelectWork->oamIndex++;
            }
        }
        else if (gLevelSelectMode == 3)
        {
            struct SpriteTemplate *sprite;

            if (arg1 < 0)
                arg1 = 7;
            sprite = &gUnknown_08078AB4[arg1];
            sub_0801B2CC_inline(sprite->subSprites[gUnknown_03000088].unk8);
            DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
            asm(""::"r"(&gLevelSelectWork));  // needed to match
            gOamBuffer[gLevelSelectWork->oamIndex].objMode = 1;
            if (arg1 <= 5)
            {
                gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gLevelSelectWork->unk8;
                gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNums[arg1];
            }
            else if (arg1 == 7)
            {
                gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gLevelSelectWork->unkC;
                gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNums[arg1];
            }
            else
            {
                gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gLevelSelectWork->unkA;
                gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNums[arg1];
            }
            gOamBuffer[gLevelSelectWork->oamIndex].x = (s16)sprite->x;
            gOamBuffer[gLevelSelectWork->oamIndex].y = sprite->y;
            gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
            gLevelSelectWork->oamIndex++;
        }
    }
}

static void put_main_button(void)
{
    int enabled = (gLevelSelectWorldCursor == 1) ? 1 : 0;
    register int dumb asm("r1");

    DmaCopy32(3, gMainButton[dumb = enabled].oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gLevelSelectWork->unkE;
    gOamBuffer[gLevelSelectWork->oamIndex].x = 0;
    gOamBuffer[gLevelSelectWork->oamIndex].y = 252;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
    gLevelSelectWork->oamIndex++;
}

static void put_plus_button(void)
{
    int enabled = (gLevelSelectWorldCursor == 6) ? 1 : 0;
    register int dumb asm("r1");

    if (sub_08014BD0() != 0)
    {
        DmaCopy32(3, gPlusButton[dumb = enabled].oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
        gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gLevelSelectWork->unkE;
        gOamBuffer[gLevelSelectWork->oamIndex].x = 184;
        gOamBuffer[gLevelSelectWork->oamIndex].y = 252;
        gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
        gLevelSelectWork->oamIndex++;
    }
}

static void sub_08017ABC(int unused, s8 world)
{
    s16 r5;
    s16 r4;

    world--;
    if (world < 0)
        world = 0;
    else if (world > 6)
        world = 6;
    r5 = world * 5;
    r4 = world * 3 + 7;
    sub_0800667C(0, 0, 32, 2, gUnknown_03000074, 5, 0);
    sub_08006548(r4, 0, gUnknown_03000070->unk108[r5], gUnknown_03000074, 5);
    sub_08006548(0, 2, gUnknown_03000070->unk108[r5 + 1], gUnknown_03000074, 5);
    sub_08006548(0, 5, gUnknown_03000070->unk108[r5 + 2], gUnknown_03000074, 5);
    sub_08006548(29, 5, gUnknown_03000070->unk108[r5 + 3], gUnknown_03000074, 5);
    sub_08006548(0, 17, gUnknown_03000070->unk108[r5 + 4], gUnknown_03000074, 5);
}

static void print_score_digits(u8 x, u8 y, u8 maxLen, u16 n, u8 isHiScore)
{
    int i;
    int end = x + (maxLen - 1) * 8;

    if (isHiScore)
    {
        for (i = 0; i < maxLen; i++)
        {
            u16 digit = n % 10;

            DmaCopy32(3, gfxHighScoreDigits4bpp + digit * 64, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 64);
            DmaCopy32(3, &gfxHighScoreDigitsOAM, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
            gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gVRAMCurrTileNum_03001930;
            gOamBuffer[gLevelSelectWork->oamIndex].x = end - i * 8;
            gOamBuffer[gLevelSelectWork->oamIndex].y = y;
            gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
            gVRAMCurrTileNum_03001930 += 2;
            gObjVRAMCopyOffset_0300192C += 64;
            gLevelSelectWork->oamIndex++;
            n /= 10;
        }
    }
    else
    {
        for (i = 0; i < maxLen; i++)
        {
            u16 digit = n % 10;

            DmaCopy32(3, gUnknown_082EC750 + digit * 64, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 64);
            DmaCopy32(3, &gUnknown_082EC748, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
            gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gVRAMCurrTileNum_03001930;
            gOamBuffer[gLevelSelectWork->oamIndex].x = end - i * 8;
            gOamBuffer[gLevelSelectWork->oamIndex].y = y;
            gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = 9;
            gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
            gVRAMCurrTileNum_03001930 += 2;
            gObjVRAMCopyOffset_0300192C += 64;
            gLevelSelectWork->oamIndex++;
            n /= 10;
        }
    }
}

static void print_digits_08017E4C(u8 x, u8 y, u8 maxLen, u16 n)
{
    int i;
    int end = x + (maxLen - 1) * 8;

    for (i = 0; i < maxLen; i++)
    {
        u16 digit = n % 10;

        DmaCopy32(3, gUnknown_082EC750 + digit * 64, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 64);
        DmaCopy32(3, &gUnknown_082EC748, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
        gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gVRAMCurrTileNum_03001930;
        gOamBuffer[gLevelSelectWork->oamIndex].x = end - i * 8;
        gOamBuffer[gLevelSelectWork->oamIndex].y = y;
        gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = 9;
        gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
        gVRAMCurrTileNum_03001930 += 2;
        gObjVRAMCopyOffset_0300192C += 64;
        gLevelSelectWork->oamIndex++;
        n /= 10;
    }
}

static void print_lives_count(void)
{
    DmaCopy32(3, gfxLifeCounter4bpp, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x100);
    DmaCopy32(3, &gfxLifeCounterOAM, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gVRAMCurrTileNum_03001930;
    gOamBuffer[gLevelSelectWork->oamIndex].x = 8;
    gOamBuffer[gLevelSelectWork->oamIndex].y = 136;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
    gVRAMCurrTileNum_03001930 += 8;
    gObjVRAMCopyOffset_0300192C += 0x100;
    gLevelSelectWork->oamIndex++;
    print_digits_08017E4C(34, 140, 2, gLivesCount);
}

static void print_star_count(void)
{
    DmaCopy32(3, gfxStarCounter4bpp, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x100);
    DmaCopy32(3, &gfxStarCounterOAM, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gVRAMCurrTileNum_03001930;
    gOamBuffer[gLevelSelectWork->oamIndex].x = 58;
    gOamBuffer[gLevelSelectWork->oamIndex].y = 136;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
    gVRAMCurrTileNum_03001930 += 8;
    gObjVRAMCopyOffset_0300192C += 0x100;
    gLevelSelectWork->oamIndex++;
    print_digits_08017E4C(83, 140, 2, sub_08014AB8());
}

static void print_level_hiscore(void)
{
    if (gLevelSelectMode == 2)
    {
        u8 r2 = gLevelSelectWorld - 1;

        if (r2 < 6)
        {
            u16 score = get_level_highscore_0801095C(r2, gLevelSelectLevel, 1);
            print_score_digits(172, 140, 6, score, gUnknown_0300007C[gLevelSelectLevelCursor].unk1 >> 7);
        }
    }
    else if (gLevelSelectMode == 0 && gLevelSelectWorld < 6)
    {
        u16 score = get_level_highscore_0801095C(gLevelSelectWorld, gLevelSelectLevel, 0);
        print_score_digits(172, 140, 6, score, gUnknown_0300007C[gLevelSelectLevelCursor].unk1 >> 7);
    }
}

static void put_sprite_0801827C(struct SpriteTemplate *sprite, u16 tileNum, int paletteNum, s16 x, s16 y)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = tileNum;
    gOamBuffer[gLevelSelectWork->oamIndex].x = (s16)sprite->x;
    gOamBuffer[gLevelSelectWork->oamIndex].y = sprite->y;
    gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNum;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 2;
    gLevelSelectWork->oamIndex++;
}

static void put_present_sprite(struct SpriteTemplate *sprite, u8 frameNum, u16 tileNum, s16 x, s16 y)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = tileNum;
    gOamBuffer[gLevelSelectWork->oamIndex].x = x + sprite->subSprites[frameNum].x_offset;
    gOamBuffer[gLevelSelectWork->oamIndex].y = y + sprite->subSprites[frameNum].y_offset;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 2;
    gLevelSelectWork->oamIndex++;
}

static void put_sprite_08018418(struct SpriteTemplate *sprite, s8 paletteNum)
{
    DmaCopy32(3, sprite->tileData, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, sprite->subSpriteSize);
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gVRAMCurrTileNum_03001930;
    gOamBuffer[gLevelSelectWork->oamIndex].x = (s16)sprite->x;
    gOamBuffer[gLevelSelectWork->oamIndex].y = sprite->y;
    gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNum;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 2;
    gVRAMCurrTileNum_03001930 += sprite->unk6;
    gObjVRAMCopyOffset_0300192C += sprite->subSpriteSize;
    gLevelSelectWork->oamIndex++;
}

void put_sprite_08018528(struct SpriteTemplate *sprite, s8 paletteNum)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gLevelSelectWork->unk12;
    gOamBuffer[gLevelSelectWork->oamIndex].x = (s16)sprite->x;
    gOamBuffer[gLevelSelectWork->oamIndex].y = sprite->y;
    gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNum;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 2;
    gLevelSelectWork->oamIndex++;
}

static void put_sprite_080185EC(struct SpriteTemplate *sprite, s8 paletteNum)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gLevelSelectWork->unk10;
    gOamBuffer[gLevelSelectWork->oamIndex].x = (s16)sprite->x;
    gOamBuffer[gLevelSelectWork->oamIndex].y = sprite->y;
    gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNum;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 2;
    gLevelSelectWork->oamIndex++;
}

static void put_sprite_080186B0(struct SpriteTemplate *sprite, u8 frameNum)
{
    DmaCopy32(3, sprite->tileData + sprite->subSprites[frameNum].index * sprite->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, sprite->subSpriteSize);
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gVRAMCurrTileNum_03001930;
    gOamBuffer[gLevelSelectWork->oamIndex].x = (s16)sprite->x;
    gOamBuffer[gLevelSelectWork->oamIndex].y = sprite->y;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 2;
    gVRAMCurrTileNum_03001930 += sprite->unk6;
    gObjVRAMCopyOffset_0300192C += sprite->subSpriteSize;
    gLevelSelectWork->oamIndex++;
}

static void put_sprite_080187C0(struct SpriteTemplate *sprite, u8 frameNum, u8 paletteNum)
{
    DmaCopy32(3, sprite->tileData + sprite->subSprites[frameNum].index * sprite->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, sprite->subSpriteSize);
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gVRAMCurrTileNum_03001930;
    gOamBuffer[gLevelSelectWork->oamIndex].x = (s16)sprite->x;
    gOamBuffer[gLevelSelectWork->oamIndex].y = sprite->y;
    gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNum;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 2;
    gVRAMCurrTileNum_03001930 += sprite->unk6;
    gObjVRAMCopyOffset_0300192C += sprite->subSpriteSize;
    gLevelSelectWork->oamIndex++;
}

static void put_tab_sprite(struct SpriteTemplate *sprite, u8 arg1)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gLevelSelectWork->unk2A[arg1];
    gOamBuffer[gLevelSelectWork->oamIndex].x = (s16)sprite->x;
    gOamBuffer[gLevelSelectWork->oamIndex].y = sprite->y;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
    gLevelSelectWork->oamIndex++;
}

static void put_sprite_08018998(struct SpriteTemplate *sprite)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gLevelSelectWork->unk16;
    gOamBuffer[gLevelSelectWork->oamIndex].x = (s16)sprite->x;
    gOamBuffer[gLevelSelectWork->oamIndex].y = sprite->y;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
    gLevelSelectWork->oamIndex++;
}

static void put_sprite_08018A3C(struct SpriteTemplate *sprite)
{
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gLevelSelectWork->unk18;
    gOamBuffer[gLevelSelectWork->oamIndex].x = (s16)sprite->x;
    gOamBuffer[gLevelSelectWork->oamIndex].y = sprite->y;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
    gLevelSelectWork->oamIndex++;
}

static void put_sprite_08018AE0(struct SpriteTemplate *sprite, u8 frameNum, u16 x, u16 y)
{
    DmaCopy32(3, sprite->tileData + sprite->subSprites[frameNum].index * sprite->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, sprite->subSpriteSize);
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gVRAMCurrTileNum_03001930;
    gOamBuffer[gLevelSelectWork->oamIndex].x = (x << 23) >> 23;
    gOamBuffer[gLevelSelectWork->oamIndex].y = y;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 2;
    gVRAMCurrTileNum_03001930 += sprite->unk6;
    gObjVRAMCopyOffset_0300192C += sprite->subSpriteSize;
    gLevelSelectWork->oamIndex++;
}

static void put_sprite_08018BE8(struct SpriteTemplate *sprite, u8 frameNum, int paletteNum, u16 x, u16 y)
{
    DmaCopy32(3, sprite->tileData + sprite->subSprites[frameNum].index * sprite->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, sprite->subSpriteSize);
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gVRAMCurrTileNum_03001930;
    gOamBuffer[gLevelSelectWork->oamIndex].x = (x << 23) >> 23;
    gOamBuffer[gLevelSelectWork->oamIndex].y = y;
    gOamBuffer[gLevelSelectWork->oamIndex].paletteNum = paletteNum;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 2;
    gVRAMCurrTileNum_03001930 += sprite->unk6;
    gObjVRAMCopyOffset_0300192C += sprite->subSpriteSize;
    gLevelSelectWork->oamIndex++;
}

static void put_sprite_08018D0C(struct SpriteTemplate *sprite, u8 frameNum, s16 x, s16 y)
{
    DmaCopy32(3, sprite->tileData + sprite->subSprites[frameNum].index * sprite->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, sprite->subSpriteSize);
    DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gVRAMCurrTileNum_03001930;
    gOamBuffer[gLevelSelectWork->oamIndex].x = x + sprite->subSprites[frameNum].x_offset;
    gOamBuffer[gLevelSelectWork->oamIndex].y = y + sprite->subSprites[frameNum].y_offset;
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 2;
    gVRAMCurrTileNum_03001930 += sprite->unk6;
    gObjVRAMCopyOffset_0300192C += sprite->subSpriteSize;
    gLevelSelectWork->oamIndex++;
}

static void put_sprite_08018E38(struct SpriteTemplate *sprite, s16 x, s16 y)
{
    if (gLevelSelect_03000083 == 0)
    {
        DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
        gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gLevelSelectWork->unk1A;
        gOamBuffer[gLevelSelectWork->oamIndex].x = (x << 23) >> 23;
        gOamBuffer[gLevelSelectWork->oamIndex].y = y;
        gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
        gLevelSelectWork->oamIndex++;
    }
}

static void put_sprite_08018EE0(struct SpriteTemplate *sprite, s16 x, s16 y)
{
    if (gLevelSelect_03000083 == 0)
    {
        DmaCopy32(3, sprite->oamData, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
        gOamBuffer[gLevelSelectWork->oamIndex].tileNum = gLevelSelectWork->unk1C;
        gOamBuffer[gLevelSelectWork->oamIndex].x = (x << 23) >> 23;
        gOamBuffer[gLevelSelectWork->oamIndex].y = y;
        gOamBuffer[gLevelSelectWork->oamIndex].priority = 0;
        gLevelSelectWork->oamIndex++;
    }
}

static void put_main_level_present(s8 arg0, u8 arg1, u8 flags)
{
    if (arg1 != 0)
    {
        if (flags & 0x40)
        {
            put_present_sprite(
                &gUnknown_080793B4,
                gUnknown_03000086,
                gLevelSelectWork->unk1E,
                gMainLvlInfoLocations[arg0].x + 3,
                gMainLvlInfoLocations[arg0].y + 23);
            put_present_sprite(
                &gUnknown_08079414,
                gUnknown_03000087,
                gLevelSelectWork->unk20,
                gMainLvlInfoLocations[arg0].x + 15,
                gMainLvlInfoLocations[arg0].y + 23);
            put_present_sprite(
                &gUnknown_08079474,
                gUnknown_03000086,
                gLevelSelectWork->unk22,
                gMainLvlInfoLocations[arg0].x + 27,
                gMainLvlInfoLocations[arg0].y + 23);
        }
        else
        {
            if (flags & 1)
            {
                put_present_sprite(
                    &gUnknown_08079384,
                    0,
                    gLevelSelectWork->unk24,
                    gMainLvlInfoLocations[arg0].x + 3,
                    gMainLvlInfoLocations[arg0].y + 23);
            }
            if (flags & 2)
            {
                put_present_sprite(
                    &gUnknown_080793E4,
                    0,
                    gLevelSelectWork->unk26,
                    gMainLvlInfoLocations[arg0].x + 15,
                    gMainLvlInfoLocations[arg0].y + 23);
            }
            if (flags & 4)
            {
                put_present_sprite(
                    &gUnknown_08079444,
                    0,
                    gLevelSelectWork->unk28,
                    gMainLvlInfoLocations[arg0].x + 27,
                    gMainLvlInfoLocations[arg0].y + 23);
            }
        }
    }
    else
    {
        if (flags & 0x40)
        {
            put_present_sprite(
                &gRedPresentMovingSpriteTemplate,
                0,
                gLevelSelectWork->unk24,
                gMainLvlInfoLocations[arg0].x + 3,
                gMainLvlInfoLocations[arg0].y + 23);
            put_present_sprite(
                &gYellowPresentMovingSpriteTemplate,
                0,
                gLevelSelectWork->unk26,
                gMainLvlInfoLocations[arg0].x + 15,
                gMainLvlInfoLocations[arg0].y + 23);
            put_present_sprite(
                &gBluePresentMovingSpriteTemplate,
                0,
                gLevelSelectWork->unk28,
                gMainLvlInfoLocations[arg0].x + 27,
                gMainLvlInfoLocations[arg0].y + 23);
        }
        else
        {
            if (flags & 1)
            {
                put_present_sprite(
                    &gRedPresentSpriteTemplate,
                    0,
                    gLevelSelectWork->unk24,
                    gMainLvlInfoLocations[arg0].x + 3,
                    gMainLvlInfoLocations[arg0].y + 23);
            }
            if (flags & 2)
            {
                put_present_sprite(
                    &gYellowPresentSpriteTemplate,
                    0,
                    gLevelSelectWork->unk26,
                    gMainLvlInfoLocations[arg0].x + 15,
                    gMainLvlInfoLocations[arg0].y + 23);
            }
            if (flags & 4)
            {
                put_present_sprite(
                    &gBluePresentSpriteTemplate,
                    0,
                    gLevelSelectWork->unk28,
                    gMainLvlInfoLocations[arg0].x + 27,
                    gMainLvlInfoLocations[arg0].y + 23);
            }
        }
    }
}

static void put_plus_level_present(s8 arg0, u8 arg1, u8 flags)
{
    if (arg1 != 0)
    {
        if (flags & 0x40)
        {
            put_present_sprite(
                &gUnknown_080793B4,
                gUnknown_03000086,
                gLevelSelectWork->unk1E,
                gPlusLvlInfoLocations[arg0].x + 3,
                gPlusLvlInfoLocations[arg0].y + 23);
            put_present_sprite(
                &gUnknown_08079414,
                gUnknown_03000087,
                gLevelSelectWork->unk20,
                gPlusLvlInfoLocations[arg0].x + 15,
                gPlusLvlInfoLocations[arg0].y + 23);
            put_present_sprite(
                &gUnknown_08079474,
                gUnknown_03000086,
                gLevelSelectWork->unk22,
                gPlusLvlInfoLocations[arg0].x + 27,
                gPlusLvlInfoLocations[arg0].y + 23);
        }
        else
        {
            if (flags & 1)
            {
                put_present_sprite(
                    &gUnknown_08079384,
                    0,
                    gLevelSelectWork->unk24,
                    gPlusLvlInfoLocations[arg0].x + 3,
                    gPlusLvlInfoLocations[arg0].y + 23);
            }
            if (flags & 2)
            {
                put_present_sprite(
                    &gUnknown_080793E4,
                    0,
                    gLevelSelectWork->unk26,
                    gPlusLvlInfoLocations[arg0].x + 15,
                    gPlusLvlInfoLocations[arg0].y + 23);
            }
            if (flags & 4)
            {
                put_present_sprite(
                    &gUnknown_08079444,
                    0,
                    gLevelSelectWork->unk28,
                    gPlusLvlInfoLocations[arg0].x + 27,
                    gPlusLvlInfoLocations[arg0].y + 23);
            }
        }
    }
    else
    {
        if (flags & 0x40)
        {
            put_present_sprite(
                &gRedPresentMovingSpriteTemplate,
                0,
                gLevelSelectWork->unk24,
                gPlusLvlInfoLocations[arg0].x + 3,
                gPlusLvlInfoLocations[arg0].y + 23);
            put_present_sprite(
                &gYellowPresentMovingSpriteTemplate,
                0,
                gLevelSelectWork->unk26,
                gPlusLvlInfoLocations[arg0].x + 15,
                gPlusLvlInfoLocations[arg0].y + 23);
            put_present_sprite(
                &gBluePresentMovingSpriteTemplate,
                0,
                gLevelSelectWork->unk28,
                gPlusLvlInfoLocations[arg0].x + 27,
                gPlusLvlInfoLocations[arg0].y + 23);
        }
        else
        {
            if (flags & 1)
            {
                put_present_sprite(
                    &gRedPresentSpriteTemplate,
                    0,
                    gLevelSelectWork->unk24,
                    gPlusLvlInfoLocations[arg0].x + 3,
                    gPlusLvlInfoLocations[arg0].y + 23);
            }
            if (flags & 2)
            {
                put_present_sprite(
                    &gYellowPresentSpriteTemplate,
                    0,
                    gLevelSelectWork->unk26,
                    gPlusLvlInfoLocations[arg0].x + 15,
                    gPlusLvlInfoLocations[arg0].y + 23);
            }
            if (flags & 4)
            {
                put_present_sprite(
                    &gBluePresentSpriteTemplate,
                    0,
                    gLevelSelectWork->unk28,
                    gPlusLvlInfoLocations[arg0].x + 27,
                    gMainLvlInfoLocations[arg0].y + 23);  // BUG? should be gPlusLvlInfoLocations?
            }
        }
    }
}

static void put_rotating_star(s8 arg0, s8 unused, s8 lvlCursor, u8 arg3, u8 arg4)
{
    int r5 = (arg0 == lvlCursor && gLevelSelectMode == 0);

    if (arg0 == 6)
    {
        if (arg4 == 0)
            return;
        if (r5)
        {
            if ((arg3 & 0xC0) == 0xC0)
                put_sprite_08018E38(&gRotatingStarSpriteTemplate, gMainLvlInfoLocations[6].x + 34, gMainLvlInfoLocations[6].y - 8);
        }
        else
        {
            if ((arg3 & 0xC0) == 0xC0)
                put_sprite_08018EE0(&gfxRotatingStarAltSpriteTemplate, gMainLvlInfoLocations[6].x + 34, gMainLvlInfoLocations[6].y - 8);
        }
    }
    else if (arg0 == 7)
    {
        if (arg4 == 0)
            return;
        if (r5)
        {
            if ((arg3 & 0xC0) == 0xC0)
                put_sprite_08018E38(&gRotatingStarSpriteTemplate, gMainLvlInfoLocations[7].x + 34, gMainLvlInfoLocations[7].y - 8);
        }
        else
        {
            if ((arg3 & 0xC0) == 0xC0)
                put_sprite_08018EE0(&gfxRotatingStarAltSpriteTemplate, gMainLvlInfoLocations[7].x + 34, gMainLvlInfoLocations[7].y - 8);
        }
    }
    else
    {
        if (arg4 == 0)
            return;
        if (r5)
        {
            if ((arg3 & 0xC0) == 0xC0)
                put_sprite_08018E38(&gRotatingStarSpriteTemplate, gMainLvlInfoLocations[arg0].x + 34, gMainLvlInfoLocations[arg0].y - 8);
        }
        else
        {
            if ((arg3 & 0xC0) == 0xC0)
                put_sprite_08018EE0(&gfxRotatingStarAltSpriteTemplate, gMainLvlInfoLocations[arg0].x + 34, gMainLvlInfoLocations[arg0].y - 8);
        }
    }
}

static void put_rotating_stars(s8 lvlCursor, s8 world)
{
    u8 i;

    if (world < 6)
    {
        for (i = 0; i < lvlCursor; i++)
            put_rotating_star(i, world, lvlCursor, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        put_rotating_star(i, world, lvlCursor, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        i++;
        for (; i < 8; i++)
            put_rotating_star(i, world, lvlCursor, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
    }
}

static void put_level_label_1(s8 index, s8 world, s8 lvlCursor, u8 arg3, u8 arg4)
{
    u8 r3 = (index == lvlCursor && gLevelSelectMode == 0);

    if (index == 6)
    {
        if (arg4 != 0)
        {
            if (r3)
            {
                if ((arg3 & 0xC0) == 0xC0)
                {
                    put_sprite_08018D0C(&gMMLabelSpriteTemplate, 3, gMainLvlInfoLocations[6].x + 1, gMainLvlInfoLocations[6].y);
                    put_sprite_08018D0C(&gUnknown_080792C4, (arg3 & 7) + 21, gMainLvlInfoLocations[6].x + 26, gMainLvlInfoLocations[6].y + 26);
                    put_sprite_08018D0C(&gUnknown_080794D4, 0, gMainLvlInfoLocations[6].x, gMainLvlInfoLocations[6].y + 20);
                }
                else
                {
                    put_sprite_08018D0C(&gMMLabelSpriteTemplate, 0, gMainLvlInfoLocations[6].x + 1, gMainLvlInfoLocations[6].y);
                    if (arg3 & 7)
                    {
                        put_sprite_08018D0C(&gUnknown_080792C4, arg3 & 7, gMainLvlInfoLocations[6].x + 26, gMainLvlInfoLocations[6].y + 26);
                        put_sprite_08018D0C(&gUnknown_080794D4, 0, gMainLvlInfoLocations[6].x, gMainLvlInfoLocations[6].y + 20);
                    }
                }
            }
            else
            {
                if ((arg3 & 0xC0) == 0xC0)
                {
                    put_sprite_08018D0C(&gMMLabelSpriteTemplate, 4, gMainLvlInfoLocations[6].x + 1, gMainLvlInfoLocations[6].y);
                    put_sprite_08018D0C(&gUnknown_080792C4, (arg3 & 7) + 28, gMainLvlInfoLocations[6].x + 26, gMainLvlInfoLocations[6].y + 26);
                    put_sprite_08018D0C(&gUnknown_080794D4, 1, gMainLvlInfoLocations[6].x, gMainLvlInfoLocations[6].y + 20);
                }
                else
                {
                    put_sprite_08018D0C(&gMMLabelSpriteTemplate, 0, gMainLvlInfoLocations[6].x + 1, gMainLvlInfoLocations[6].y);
                    if (arg3 & 7)
                    {
                        put_sprite_08018D0C(&gUnknown_080792C4, arg3 & 7, gMainLvlInfoLocations[6].x + 26, gMainLvlInfoLocations[6].y + 26);
                        put_sprite_08018D0C(&gUnknown_080794D4, 1, gMainLvlInfoLocations[6].x, gMainLvlInfoLocations[6].y + 20);
                    }
                }
            }
        }
        else
        {
            if (r3)
                put_sprite_08018D0C(&gMMLabelSpriteTemplate, 0, gMainLvlInfoLocations[6].x + 1, gMainLvlInfoLocations[6].y);
            else
                put_sprite_08018D0C(&gMMLabelSpriteTemplate, 1, gMainLvlInfoLocations[6].x + 1, gMainLvlInfoLocations[6].y);
        }

    }
    else if (index == 7)
    {
        if (arg4 != 0)
        {
            if (r3)
            {
                if ((arg3 & 0xC0) == 0xC0)
                    put_sprite_08018D0C(&gDKLabelSpriteTemplate, 3, gMainLvlInfoLocations[7].x + 2, gMainLvlInfoLocations[7].y);
                else
                    put_sprite_08018D0C(&gDKLabelSpriteTemplate, 0, gMainLvlInfoLocations[7].x + 2, gMainLvlInfoLocations[7].y);
            }
            else
            {
                if ((arg3 & 0xC0) == 0xC0)
                    put_sprite_08018D0C(&gDKLabelSpriteTemplate, 4, gMainLvlInfoLocations[7].x + 2, gMainLvlInfoLocations[7].y);
                else
                    put_sprite_08018D0C(&gDKLabelSpriteTemplate, 0, gMainLvlInfoLocations[7].x + 2, gMainLvlInfoLocations[7].y);
            }
        }
        else
        {
            if (r3)  // redundant
                put_sprite_08018D0C(&gDKLabelSpriteTemplate, 0, gMainLvlInfoLocations[7].x + 2, gMainLvlInfoLocations[7].y);
            else
                put_sprite_08018D0C(&gDKLabelSpriteTemplate, 0, gMainLvlInfoLocations[7].x + 2, gMainLvlInfoLocations[7].y);
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
                    put_sprite_08018D0C(&gUnknown_080792C4, world + 22, gMainLvlInfoLocations[index].x, gMainLvlInfoLocations[index].y);
                    put_sprite_08018D0C(&gUnknown_080792C4, 21, gMainLvlInfoLocations[index].x + 6, gMainLvlInfoLocations[index].y);
                    put_sprite_08018D0C(&gUnknown_080792C4, index + 22, gMainLvlInfoLocations[index].x + 12, gMainLvlInfoLocations[index].y);
                }
                else
                {
                    put_sprite_08018D0C(&gUnknown_080792C4, world + 1, gMainLvlInfoLocations[index].x, gMainLvlInfoLocations[index].y);
                    put_sprite_08018D0C(&gUnknown_080792C4, 0, gMainLvlInfoLocations[index].x + 6, gMainLvlInfoLocations[index].y);
                    put_sprite_08018D0C(&gUnknown_080792C4, index + 1, gMainLvlInfoLocations[index].x + 12, gMainLvlInfoLocations[index].y);
                }
            }
            else
            {
                if ((arg3 & 0xC0) == 0xC0)
                {
                    put_sprite_08018D0C(&gUnknown_080792C4, world + 29, gMainLvlInfoLocations[index].x, gMainLvlInfoLocations[index].y);
                    put_sprite_08018D0C(&gUnknown_080792C4, 28, gMainLvlInfoLocations[index].x + 6, gMainLvlInfoLocations[index].y);
                    put_sprite_08018D0C(&gUnknown_080792C4, index + 29, gMainLvlInfoLocations[index].x + 12, gMainLvlInfoLocations[index].y);
                }
                else
                {
                    put_sprite_08018D0C(&gUnknown_080792C4, world + 1, gMainLvlInfoLocations[index].x, gMainLvlInfoLocations[index].y);
                    put_sprite_08018D0C(&gUnknown_080792C4, 0, gMainLvlInfoLocations[index].x + 6, gMainLvlInfoLocations[index].y);
                    put_sprite_08018D0C(&gUnknown_080792C4, index + 1, gMainLvlInfoLocations[index].x + 12, gMainLvlInfoLocations[index].y);
                }
            }
        }
        else
        {
            if (r3)
            {
                put_sprite_08018D0C(&gUnknown_080792C4, world + 1, gMainLvlInfoLocations[index].x, gMainLvlInfoLocations[index].y);
                put_sprite_08018D0C(&gUnknown_080792C4, 0, gMainLvlInfoLocations[index].x + 6, gMainLvlInfoLocations[index].y);
                put_sprite_08018D0C(&gUnknown_080792C4, index + 1, gMainLvlInfoLocations[index].x + 12, gMainLvlInfoLocations[index].y);
            }
            else
            {
                put_sprite_08018D0C(&gUnknown_080792C4, world + 8, gMainLvlInfoLocations[index].x, gMainLvlInfoLocations[index].y);
                put_sprite_08018D0C(&gUnknown_080792C4, 7, gMainLvlInfoLocations[index].x + 6, gMainLvlInfoLocations[index].y);
                put_sprite_08018D0C(&gUnknown_080792C4, index + 8, gMainLvlInfoLocations[index].x + 12, gMainLvlInfoLocations[index].y);
            }
        }
        put_main_level_present(index, r3, arg3);
    }
}

static inline void sub_08019AF4_sub(s8 arg0, s8 i, u8 r1, u8 r4)
{
    u8 r6 = (i == arg0 && gLevelSelectMode == 2);

    if (r4 != 0)
    {
        if (r6)
        {
            if ((r1 & 0xC0) == 0xC0)
                put_sprite_08018E38(&gRotatingStarSpriteTemplate, gPlusLvlInfoLocations[i].x + 34, gPlusLvlInfoLocations[i].y - 8);
        }
        else
        {
             if ((r1 & 0xC0) == 0xC0)
                put_sprite_08018EE0(&gfxRotatingStarAltSpriteTemplate, gPlusLvlInfoLocations[i].x + 34, gPlusLvlInfoLocations[i].y - 8);
        }
    }
}

static void sub_08019AF4(s8 arg0, s8 arg1)
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

static void put_level_label_2(s8 arg0, s8 world, s8 lvlCursor, u8 arg3, u8 arg4)
{
    u8 r3 = (arg0 == lvlCursor && gLevelSelectMode == 2);

    if (arg0 == 6)
    {
        if (arg4 != 0)
        {
            if (r3)
            {
                if ((arg3 & 0xC0) == 0xC0)
                    put_sprite_08018D0C(&gDKPlusLabelSpriteTemplate, 3, gPlusLvlInfoLocations[6].x + 1, gPlusLvlInfoLocations[6].y);
                else
                    put_sprite_08018D0C(&gDKPlusLabelSpriteTemplate, 0, gPlusLvlInfoLocations[6].x + 1, gMainLvlInfoLocations[6].y);
            }
            else
            {
                if ((arg3 & 0xC0) == 0xC0)
                    put_sprite_08018D0C(&gDKPlusLabelSpriteTemplate, 3, gPlusLvlInfoLocations[6].x + 1, gMainLvlInfoLocations[6].y);
                else
                    put_sprite_08018D0C(&gDKPlusLabelSpriteTemplate, 0, gPlusLvlInfoLocations[6].x + 1, gMainLvlInfoLocations[6].y);
            }
        }
        else
        {
            if (r3)  // redundant
                put_sprite_08018D0C(&gDKPlusLabelSpriteTemplate, 0, gPlusLvlInfoLocations[6].x + 1, gMainLvlInfoLocations[6].y);
            else
                put_sprite_08018D0C(&gDKPlusLabelSpriteTemplate, 0, gPlusLvlInfoLocations[6].x + 1, gMainLvlInfoLocations[6].y);
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
                    put_sprite_08018D0C(&gMainLvlLabelsSpriteTemplate, world + 18, gPlusLvlInfoLocations[arg0].x, gPlusLvlInfoLocations[arg0].y);
                    put_sprite_08018D0C(&gPlusLvlLabelsSpriteTemplate, arg0 + 18, gPlusLvlInfoLocations[arg0].x + 8, gPlusLvlInfoLocations[arg0].y);
                }
                else
                {
                    put_sprite_08018D0C(&gMainLvlLabelsSpriteTemplate, world, gPlusLvlInfoLocations[arg0].x, gPlusLvlInfoLocations[arg0].y);
                    put_sprite_08018D0C(&gPlusLvlLabelsSpriteTemplate, arg0, gPlusLvlInfoLocations[arg0].x + 8, gPlusLvlInfoLocations[arg0].y);
                }
            }
            else
            {
                if ((arg3 & 0xC0) == 0xC0)
                {
                    put_sprite_08018D0C(&gMainLvlLabelsSpriteTemplate, world + 24, gPlusLvlInfoLocations[arg0].x, gPlusLvlInfoLocations[arg0].y);
                    put_sprite_08018D0C(&gPlusLvlLabelsSpriteTemplate, arg0 + 24, gPlusLvlInfoLocations[arg0].x + 8, gPlusLvlInfoLocations[arg0].y);
                }
                else
                {
                    put_sprite_08018D0C(&gMainLvlLabelsSpriteTemplate, world, gPlusLvlInfoLocations[arg0].x, gPlusLvlInfoLocations[arg0].y);
                    put_sprite_08018D0C(&gPlusLvlLabelsSpriteTemplate, arg0, gPlusLvlInfoLocations[arg0].x + 8, gPlusLvlInfoLocations[arg0].y);
                }
            }
        }
        else
        {
            if (r3)
            {
                put_sprite_08018D0C(&gMainLvlLabelsSpriteTemplate, world, gPlusLvlInfoLocations[arg0].x, gPlusLvlInfoLocations[arg0].y);
                put_sprite_08018D0C(&gPlusLvlLabelsSpriteTemplate, arg0, gPlusLvlInfoLocations[arg0].x + 8, gPlusLvlInfoLocations[arg0].y);
            }
            else
            {
                put_sprite_08018D0C(&gMainLvlLabelsSpriteTemplate, world + 6, gPlusLvlInfoLocations[arg0].x, gPlusLvlInfoLocations[arg0].y);
                put_sprite_08018D0C(&gPlusLvlLabelsSpriteTemplate, arg0 + 6, gPlusLvlInfoLocations[arg0].x + 8, gPlusLvlInfoLocations[arg0].y);
            }
        }
        put_plus_level_present(arg0, r3, arg3);
    }
}

static void put_main_level_buttons(s8 lvlCursor, s8 world)
{
    u8 i;

    if (world > 5)
        return;
    for (i = 0; i < lvlCursor; i++)
    {
        put_level_label_1(i, world, lvlCursor, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        if (gUnknown_0300007C[i].unk0 != 0)
        {
            put_sprite_080185EC(&gLockedMainLvlFrames[i], world + 1);
            put_sprite_080186B0(&gMainLevelIconPics[i], world * 8 + i);
        }
        else
        {
            put_sprite_080185EC(&gLockedMainLvlFrames[i], 0);
            put_sprite_080187C0(&gMainLevelIconPics[i], world * 8 + i, 14);
        }
    }
    put_level_label_1(i, world, lvlCursor, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
    if (gUnknown_0300007C[i].unk0 != 0)
    {
        if (gLevelSelectMode == 0)
        {
            if (i <= 6)
                put_sprite_08018528(&gUnlockedMainLvlFrames[i], world + 1);
            else
                put_sprite_08018418(&gUnlockedMainLvlFrames[i], world + 1);
            put_sprite_080186B0(&gMainLevelIconPics[i], world * 8 + i);
        }
        else
        {
            if (i <= 6)
                put_sprite_080185EC(&gLockedMainLvlFrames[i], world + 1);
            else
                put_sprite_08018418(&gLockedMainLvlFrames[i], world + 1);
            put_sprite_080186B0(&gMainLevelIconPics[i], world * 8 + i);
        }
    }
    else if (lvlCursor == i && gLevelSelectMode == 0)
    {
        if (i <= 6)
            put_sprite_080185EC(&gLockedMainLvlFrames[i], world + 1);
        else
            put_sprite_08018418(&gLockedMainLvlFrames[i], world + 1);
        goto label1;
    }
    else
    {
        if (i <= 6)
            put_sprite_080185EC(&gLockedMainLvlFrames[i], 0);
        else
            put_sprite_08018418(&gLockedMainLvlFrames[i], 0);
label1:
        put_sprite_080187C0(&gMainLevelIconPics[i], world * 8 + i, 13);
    }
    i++;
    for (; i < 8; i++)
    {
        put_level_label_1(i, world, lvlCursor, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        if (gUnknown_0300007C[i].unk1 != 0)
        {
            if (i <= 6)
                put_sprite_080185EC(&gLockedMainLvlFrames[i], world + 1);
            else
                put_sprite_08018418(&gLockedMainLvlFrames[i], world + 1);
            put_sprite_080186B0(&gMainLevelIconPics[i], world * 8 + i);
        }
        else if (gUnknown_0300007C[i].unk0 != 0)
        {
            if (i <= 6)
                put_sprite_080185EC(&gLockedMainLvlFrames[i], world + 1);
            else
                put_sprite_08018418(&gLockedMainLvlFrames[i], world + 1);
            put_sprite_080186B0(&gMainLevelIconPics[i], world * 8 + i);
        }
        else
        {
            if (i <= 6)
            {
                put_sprite_080187C0(&gMainLevelIconPics[i], world * 8 + i, 14);
                put_sprite_080185EC(&gLockedMainLvlFrames[i], 0);
            }
            else
            {
                put_sprite_080186B0(&gMainLevelIconPics[i], world * 8 + i);
                put_sprite_08018418(&gLockedMainLvlFrames[i], world + 1);
            }
        }
    }
}

static void put_plus_level_buttons(s8 lvlCursor, s8 world)
{
    u8 i;

    if (world < 0)
        world = 0;
    else if (world > 5)
        return;
    for (i = 0; i < lvlCursor; i++)
    {
        put_level_label_2(i, world, lvlCursor, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        if (gUnknown_0300007C[i].unk0 != 0)
        {
            put_sprite_080185EC(&gLockedPlusLvlFrames[i], world + 1);
            put_sprite_080186B0(&gPlusLevelIconPics[i], world * 7 + i);
        }
        else
        {
            put_sprite_080185EC(&gLockedPlusLvlFrames[i], 0);
            put_sprite_080187C0(&gPlusLevelIconPics[i], world * 7 + i, 14);
        }
    }
    put_level_label_2(i, world, lvlCursor, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
    if (gUnknown_0300007C[i].unk0 != 0)
    {
        if (gLevelSelectMode == 2)
        {
            if (i <= 5)
                put_sprite_08018528(&gUnlockedPlusLvlFrames[i], world + 1);
            else
                put_sprite_08018418(&gUnlockedPlusLvlFrames[i], world + 1);
            put_sprite_080186B0(&gPlusLevelIconPics[i], world * 7 + i);
        }
        else
        {
            if (i <= 5)
                put_sprite_080185EC(&gLockedPlusLvlFrames[i], world + 1);
            else
                put_sprite_08018418(&gLockedPlusLvlFrames[i], world + 1);
            put_sprite_080186B0(&gPlusLevelIconPics[i], world * 7 + i);
        }
    }
    else if (lvlCursor == i && gLevelSelectMode == 2)
    {
        if (i <= 5)
            put_sprite_080185EC(&gLockedPlusLvlFrames[i], world + 1);
        else
            put_sprite_08018418(&gLockedPlusLvlFrames[i], world + 1);
        goto label1;
    }
    else
    {
        if (i <= 5)
            put_sprite_080185EC(&gLockedPlusLvlFrames[i], 0);
        else
            put_sprite_08018418(&gLockedPlusLvlFrames[i], 0);
label1:
        put_sprite_080187C0(&gPlusLevelIconPics[i], world * 7 + i, 14);
    }
    i++;
    for (; i < 7; i++)
    {
        put_level_label_2(i, world, lvlCursor, gUnknown_0300007C[i].unk1, gUnknown_0300007C[i].unk0);
        if (gUnknown_0300007C[i].unk1 != 0)
        {
            if (i <= 5)
                put_sprite_080185EC(&gLockedPlusLvlFrames[i], world + 1);
            else
                put_sprite_08018418(&gLockedPlusLvlFrames[i], world + 1);
            put_sprite_080186B0(&gPlusLevelIconPics[i], world * 7 + i);
        }
        else if (gUnknown_0300007C[i].unk0 != 0)
        {
            if (i <= 5)
                put_sprite_080185EC(&gLockedPlusLvlFrames[i], world + 1);
            else
                put_sprite_08018418(&gLockedPlusLvlFrames[i], world + 1);
            put_sprite_080186B0(&gPlusLevelIconPics[i], world * 7 + i);
        }
        else
        {
            if (i <= 5)
            {
                put_sprite_080185EC(&gLockedPlusLvlFrames[i], 0);
                put_sprite_080187C0(&gPlusLevelIconPics[i], world * 7 + i, 14);
            }
            else
            {
                put_sprite_08018418(&gLockedPlusLvlFrames[i], world + 1);
                put_sprite_080186B0(&gPlusLevelIconPics[i], world * 7 + i);
            }
        }
    }
}

static void put_main_world_arrows(void)
{
    u8 i;

    if (gLevelSelectWorldCursor > 5)
        return;
    for (i = 0; i < 8; i++)
    {
        u8 dummy;
        if (get_level_stats_0800FE2C(0, gLevelSelectWorldCursor, i, &dummy))
            put_sprite_08018418(&gMainWorldArrows[i], 11);
        else
            break;
    }
    if (i > 3)
    {
        if (i == 7)
        {
            u8 dummy;
            if (get_level_stats_0800FE2C(gLevelType, gLevelSelectWorldCursor, 7, &dummy))
                put_sprite_08018418(&gMainWorldArrows[i], 11);
        }
        else
        {
            put_sprite_08018418(&gMainWorldArrows[i], 11);
        }
    }
}

static void sub_0801A69C(void)
{
    DmaCopy32(3, gUnknown_085E3820 + gUnknown_0300008B * 0x400, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x400);
    DmaCopy32(3, &gUnknown_085E3818, &gOamBuffer[gLevelSelectWork->oamIndex], sizeof(struct OamData));
    gOamBuffer[gLevelSelectWork->oamIndex].tileNum += gVRAMCurrTileNum_03001930;
    gOamBuffer[gLevelSelectWork->oamIndex].x = gUnknown_085E3590[gUnknown_0300008B].y_offset + 172;  // BUG?
    gOamBuffer[gLevelSelectWork->oamIndex].y = gUnknown_085E3590[gUnknown_0300008B].y_offset + 48;  // BUG?
    gOamBuffer[gLevelSelectWork->oamIndex].priority = 2;
    gVRAMCurrTileNum_03001930 += 32;
    gObjVRAMCopyOffset_0300192C += 0x400;
    gLevelSelectWork->oamIndex++;
}

#ifdef NONMATCHING
static void sub_0801A7D8(void)
{
    struct SpriteTemplate *r2;

    DmaCopy32(3, gfxLockedLvlFrame4bpp, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x800);  //
    gLevelSelectWork->unk10 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x800/32;
    gObjVRAMCopyOffset_0300192C += 0x800;

    DmaCopy32(3, gfxUnlockedLvlFrame4bpp, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x800);  //
    gLevelSelectWork->unk12 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x800/32;
    gObjVRAMCopyOffset_0300192C += 0x800;

    DmaCopy32(3, gfxLevelButtonHighlight4bpp + gfxLevelButtonHighlightAnim[gUnknown_0300008A].index * 0x800, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x800);  //
    gLevelSelectWork->unk14 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x800/32;
    gObjVRAMCopyOffset_0300192C += 0x800;

    DmaCopy32(3, gUnknown_085E2B00 + gUnknown_085E2870[gUnknown_03000088].index * 0x100, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x100);  //
    gLevelSelectWork->unk8 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x100/32;
    gObjVRAMCopyOffset_0300192C += 0x100;

    DmaCopy32(3, gUnknown_085E3190 + gUnknown_085E2F00[gUnknown_03000088].index * 0x100, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x100);  //
    gLevelSelectWork->unkA = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x100/32;
    gObjVRAMCopyOffset_0300192C += 0x100;

    DmaCopy32(3, gUnknown_085E9360 + gUnknown_085E90D0[gUnknown_03000088].index * 0x400, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x400);  //
    gLevelSelectWork->unkC = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x400/32;
    gObjVRAMCopyOffset_0300192C += 0x400;

    DmaCopy32(3, gfxLButton4bpp, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x80);  //
    gLevelSelectWork->unk16 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x80/32;
    gObjVRAMCopyOffset_0300192C += 0x80;

    DmaCopy32(3, gfxRButton4bpp, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x80);  //
    gLevelSelectWork->unk18 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x80/32;
    gObjVRAMCopyOffset_0300192C += 0x80;

    DmaCopy32(3, gfxRotatingStar4bpp + gfxRotatingStarAnim[gUnknown_03000085].index * 0x80, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x80);  //
    gLevelSelectWork->unk1A = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x80/32;
    gObjVRAMCopyOffset_0300192C += 0x80;

    DmaCopy32(3, gfxRotatingStarAlt4bpp, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, 0x80);  //
    gLevelSelectWork->unk1C = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 0x80/32;
    gObjVRAMCopyOffset_0300192C += 0x80;

    DmaCopy32(3, gUnknown_080793B4.tileData + gUnknown_080793B4.subSprites[gUnknown_03000086].index * gUnknown_080793B4.unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, gUnknown_080793B4.subSpriteSize);
    gLevelSelectWork->unk1E = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += gUnknown_080793B4.unk6;
    gObjVRAMCopyOffset_0300192C += gUnknown_080793B4.subSpriteSize;

    DmaCopy32(3, gUnknown_08079414.tileData + gUnknown_08079414.subSprites[gUnknown_03000087].index * gUnknown_08079414.unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, gUnknown_08079414.subSpriteSize);
    gLevelSelectWork->unk20 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += gUnknown_08079414.unk6;
    gObjVRAMCopyOffset_0300192C += gUnknown_08079414.subSpriteSize;

    DmaCopy32(3, gUnknown_08079474.tileData + gUnknown_08079474.subSprites[gUnknown_03000087].index * gUnknown_08079474.unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, gUnknown_08079474.subSpriteSize);
    gLevelSelectWork->unk22 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += gUnknown_08079474.unk6;
    gObjVRAMCopyOffset_0300192C += gUnknown_08079474.subSpriteSize;

    DmaCopy32(3, gUnknown_08079384.tileData + gUnknown_08079384.subSprites[0].index * gUnknown_08079384.unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, gUnknown_08079384.subSpriteSize);
    gLevelSelectWork->unk24 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += gUnknown_08079384.unk6;
    gObjVRAMCopyOffset_0300192C += gUnknown_08079384.subSpriteSize;

    DmaCopy32(3, gUnknown_080793E4.tileData + gUnknown_080793E4.subSprites[0].index * gUnknown_080793E4.unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, gUnknown_080793E4.subSpriteSize);
    gLevelSelectWork->unk26 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += gUnknown_080793E4.unk6;
    gObjVRAMCopyOffset_0300192C += gUnknown_080793E4.subSpriteSize;

    DmaCopy32(3, gUnknown_08079444.tileData + gUnknown_08079444.subSprites[0].index * gUnknown_08079444.unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, gUnknown_08079444.subSpriteSize);
    gLevelSelectWork->unk28 = gVRAMCurrTileNum_03001930;
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
            r2 = &gPlusWorldSelectTabs[i];
            DmaCopy32(3, r2->tileData + r2->subSprites[r1].index * r2->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, r2->subSpriteSize);
            gLevelSelectWork->unk2A[i] = gVRAMCurrTileNum_03001930;
            gVRAMCurrTileNum_03001930 += r2->unk6;
            gObjVRAMCopyOffset_0300192C += r2->subSpriteSize;
        }
        //_0801AC9E
        //to _0801AD44
        r2 = &gMainButton[sp0];
        DmaCopy32(3, r2->tileData + r2->subSprites[sp0].index * r2->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, r2->subSpriteSize);
        gLevelSelectWork->unkE = gVRAMCurrTileNum_03001930;
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
            r2 = &gMainWorldSelectTabs[i];
            DmaCopy32(3, r2->tileData + r2->subSprites[r1].index * r2->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, r2->subSpriteSize);
            gLevelSelectWork->unk2A[i] = gVRAMCurrTileNum_03001930;
            gVRAMCurrTileNum_03001930 += r2->unk6;
            gObjVRAMCopyOffset_0300192C += r2->subSpriteSize;
        }
        r2 = &gPlusButton[sp4];
        DmaCopy32(3, r2->tileData + r2->subSprites[sp4].index * r2->unk4 * 4, OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C, r2->subSpriteSize);
        gLevelSelectWork->unkE = gVRAMCurrTileNum_03001930;
        gVRAMCurrTileNum_03001930 += r2->unk6;
        gObjVRAMCopyOffset_0300192C += r2->subSpriteSize;
    }
}
#else
__attribute__((naked))
static void sub_0801A7D8(void)
{
    asm("push {r4-r7,lr}\n\
    mov r7, r10\n\
    mov r6, r9\n\
    mov r5, r8\n\
    push {r5-r7}\n\
    sub sp, sp, #8\n\
    ldr r7, _0801ABBC  @ =REG_DMA3SAD\n\
    ldr r0, _0801ABC0  @ =gfxLockedLvlFrame4bpp\n\
    str r0, [r7]\n\
    ldr r3, _0801ABC4  @ =gObjVRAMCopyOffset_0300192C\n\
    ldrh r0, [r3]\n\
    ldr r1, _0801ABC8  @ =OBJ_VRAM0\n\
    add r0, r0, r1\n\
    str r0, [r7, #4]\n\
    ldr r2, _0801ABCC  @ =0x84000200\n\
    str r2, [r7, #8]\n\
    ldr r0, [r7, #8]\n\
    ldr r4, _0801ABD0  @ =gLevelSelectWork\n\
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
    ldr r0, _0801ABD8  @ =gfxUnlockedLvlFrame4bpp\n\
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
    ldr r5, _0801ABDC  @ =gfxLevelButtonHighlightAnim\n\
    ldr r0, _0801ABE0  @ =gUnknown_0300008A\n\
    mov r1, #0\n\
    ldrsb r1, [r0, r1]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r5\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #11\n\
    ldr r1, _0801ABE4  @ =gfxLevelButtonHighlight4bpp\n\
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
    ldr r0, _0801AC0C  @ =gfxLButton4bpp\n\
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
    ldr r0, _0801AC14  @ =gfxRButton4bpp\n\
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
    ldr r2, _0801AC18  @ =gfxRotatingStarAnim\n\
    ldr r0, _0801AC1C  @ =gUnknown_03000085\n\
    mov r1, #0\n\
    ldrsb r1, [r0, r1]\n\
    lsl r0, r1, #3\n\
    add r0, r0, r1\n\
    lsl r0, r0, #2\n\
    add r0, r0, r2\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #7\n\
    ldr r1, _0801AC20  @ =gfxRotatingStar4bpp\n\
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
    ldr r0, _0801AC24  @ =gfxRotatingStarAlt4bpp\n\
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
    ldr r4, _0801ABD0  @ =gLevelSelectWork\n\
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
    ldr r4, _0801ABD0  @ =gLevelSelectWork\n\
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
    ldr r0, _0801ABD0  @ =gLevelSelectWork\n\
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
    ldr r0, _0801ABD0  @ =gLevelSelectWork\n\
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
    ldr r0, _0801ABD0  @ =gLevelSelectWork\n\
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
    ldr r4, _0801AC50  @ =gPlusWorldSelectTabs\n\
    add r2, r2, r4\n\
    ldr r4, _0801ABD0  @ =gLevelSelectWork\n\
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
    .4byte gfxLockedLvlFrame4bpp\n\
_0801ABC4:\n\
    .4byte gObjVRAMCopyOffset_0300192C\n\
_0801ABC8:\n\
    .4byte 0x06010000\n\
_0801ABCC:\n\
    .4byte 0x84000200\n\
_0801ABD0:\n\
    .4byte gLevelSelectWork\n\
_0801ABD4:\n\
    .4byte gVRAMCurrTileNum_03001930\n\
_0801ABD8:\n\
    .4byte gfxUnlockedLvlFrame4bpp\n\
_0801ABDC:\n\
    .4byte gfxLevelButtonHighlightAnim\n\
_0801ABE0:\n\
    .4byte gUnknown_0300008A\n\
_0801ABE4:\n\
    .4byte gfxLevelButtonHighlight4bpp\n\
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
    .4byte gfxLButton4bpp\n\
_0801AC10:\n\
    .4byte 0x84000020\n\
_0801AC14:\n\
    .4byte gfxRButton4bpp\n\
_0801AC18:\n\
    .4byte gfxRotatingStarAnim\n\
_0801AC1C:\n\
    .4byte gUnknown_03000085\n\
_0801AC20:\n\
    .4byte gfxRotatingStar4bpp\n\
_0801AC24:\n\
    .4byte gfxRotatingStarAlt4bpp\n\
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
    .4byte gPlusWorldSelectTabs\n\
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
    ldr r3, _0801ACB0  @ =gMainButton\n\
    b _0801AD44\n\
    .byte 0x00\n\
    .byte 0x00\n\
_0801ACAC:\n\
    .4byte 0x06010000\n\
_0801ACB0:\n\
    .4byte gMainButton\n\
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
    ldr r4, _0801ADA8  @ =gMainWorldSelectTabs\n\
    add r2, r2, r4\n\
    ldr r4, _0801ADAC  @ =gLevelSelectWork\n\
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
    ldr r3, _0801ADB4  @ =gPlusButton\n\
_0801AD44:\n\
    add r2, r2, r3\n\
    ldr r4, _0801ADAC  @ =gLevelSelectWork\n\
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
    .4byte gMainWorldSelectTabs\n\
_0801ADAC:\n\
    .4byte gLevelSelectWork\n\
_0801ADB0:\n\
    .4byte 0x06010000\n\
_0801ADB4:\n\
    .4byte gPlusButton\n\
_0801ADB8:\n\
    .4byte 0x040000D4\n");
}
#endif

void level_select_loop(void)
{
    u8 i;
    s8 j;

    DmaFill32(3, 0xA0, gOamBuffer, sizeof(gOamBuffer));
    gLevelSelectWork->oamIndex = gVRAMCurrTileNum_03001930 = gObjVRAMCopyOffset_0300192C = 0;
    gUnknown_03000084 = 0;
    if (gLevelType == LEVEL_TYPE_MAIN)
        gLevelSelectLevelCursor = (gLevelSelectLevel + 1) >> 1;
    else
        gLevelSelectLevelCursor = gLevelSelectLevel;
    sub_0801A7D8();
    print_lives_count();
    print_star_count();
    if (gLevelSelectMode == 2 || gLevelSelectMode == 3 || gLevelSelectMode == 5)
    {
        sub_08019AF4(gLevelSelectLevelCursor, gLevelSelectWorld - 1);
        sub_08017600(gLevelSelectLevelCursor, gLevelSelectWorldCursor - 1);
    }
    else
    {
        put_rotating_stars(gLevelSelectLevelCursor, gLevelSelectWorld);
        sub_080171C8(gLevelSelectLevelCursor, gLevelSelectWorldCursor);
    }
    if (gLevelSelectMode == 0 || gLevelSelectMode == 1)
    {
        if (gLevelSelectWorld != 6)
            put_main_level_buttons(gLevelSelectLevelCursor, gLevelSelectWorld);
    }
    else if (gLevelSelectMode == 2 || gLevelSelectMode == 3)
    {
        if (gLevelSelectWorld != 7)
            put_plus_level_buttons(gLevelSelectLevelCursor, gLevelSelectWorld - 1);
    }
    if (gLevelSelectMode == 2 || gLevelSelectMode == 3 || gLevelSelectMode == 5)
    {
        // Main levels
        put_main_button();
        sub_08017ABC(gLevelSelectLevelCursor, gLevelSelectWorld);
        if (gLevelSelectWorldCursor <= 6)
        {
            for (i = 0; i < 7; i++)
            {
                u8 dummy;
                if (get_level_stats_0800FE2C(1, gLevelSelectWorldCursor - 1, i, &dummy))
                    put_sprite_08018418(&gPlusWorldArrows[i], 11);
                else
                    break;
            }
            if (i == 3 || i == 4 || i == 5)
                put_sprite_08018418(&gPlusWorldArrows[i], 11);

        }
        for (j = 1; j < 7; j++)
        {
            if (j != gLevelSelectWorldCursor - 1 && !is_world_or_expert_level_completed_080103C8(1, j - 1))
                put_tab_sprite(&gPlusWorldSelectTabs[j], j);
        }
        if (gLevelSelectWorldCursor > 0)
            put_sprite_08018998(&gLButtonSpriteTemplate);
        if (gLevelSelectWorldCursor <= 5 && is_world_or_expert_level_completed_080103C8(gLevelType, gLevelSelectWorldCursor - 1))
            put_sprite_08018A3C(&gRButtonSpriteTemplate);
        if (gLevelSelectWorld <= 6)
            sub_0801A69C();
    }
    else
    {
        // Plus levels
        put_plus_button();
        sub_080174FC(gLevelSelectLevelCursor, gLevelSelectWorld);
        put_main_world_arrows();
        for (j = 1; j < 7; j++)
        {
            if (j != gLevelSelectWorldCursor && !is_world_or_expert_level_completed_080103C8(0, j - 1))
                put_tab_sprite(&gMainWorldSelectTabs[j], j);
        }
        if (gLevelSelectWorldCursor > 0)
            put_sprite_08018998(&gLButtonSpriteTemplate);
        if (gLevelSelectWorldCursor < 5)
        {
            if (is_world_or_expert_level_completed_080103C8(gLevelType, gLevelSelectWorldCursor))
                put_sprite_08018A3C(&gRButtonSpriteTemplate);
        }
        else
            put_sprite_08018A3C(&gRButtonSpriteTemplate);
    }
    print_level_hiscore();
    sub_0801B174();
    DmaCopy32(3, gOamBuffer, OAM, sizeof(gOamBuffer));
    DmaCopy16(3, gUnknown_03000074, gLevelSelectData.bgVramMapAddrs[0], gUnknown_03000078);
}

static void sub_0801B174(void)
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
            (&r5[2].affineParam)[r7] = r4->unk1E;
            (&r5[3].affineParam)[r7] = r4->unk20;
        }
        else
        {
            ((struct OamData_alt *)gOamBuffer)[r6].matrixNum_vflip = 0;
            (&r5[2].affineParam)[r7] = -r4->unk1E;
            (&r5[3].affineParam)[r7] = -r4->unk20;
        }
    }
}

void level_select_end(void)
{
}

static int sub_0801B224(void)
{
    if (gNewKeys & (DPAD_RIGHT|R_BUTTON))
    {
        sub_08016260();
        return 1;
    }
    if (gNewKeys & (DPAD_LEFT|L_BUTTON))
    {
        sub_080161AC();
        return 1;
    }
    return 0;
}

static int sub_0801B258(void)
{
    if (gNewKeys & (DPAD_RIGHT|R_BUTTON))
    {
        sub_08016654();
        return 1;
    }
    if (gNewKeys & (DPAD_LEFT|L_BUTTON))
    {
        sub_080163F4();
        return 1;
    }
    // no return value
}

// may be an inline (see update_sprite_frame_anim in main_menu.c)
static void update_sprite_frame_anim_0801B288(s8 *pFrameNum, s8 *timer, s16 numFrames, struct SubSpriteTemplate *frames)
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
