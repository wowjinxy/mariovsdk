#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "savefile.h"

struct Coords32 gUnknown_080785B0[] =
{
    { 14, 52 },
    { 71, 52 },
    { 128, 52 },
    { 128, 52 },
    { 185, 52 },
    { 185, 95 },
};

struct Coords32 gUnknown_080785E0[] =
{
    { 4, 52 },
    { 52, 52 },
    { 100, 52 },
    { 148, 52 },
    { 196, 52 },
    { 196, 95 },
};

struct Coords32 gUnknown_08078610[] =
{
    { 14, 138 },
    { 71, 138 },
    { 128, 138 },
};

struct Coords32 gUnknown_08078628[] =
{
    { 4, 138 },
    { 52, 138 },
    { 100, 138 },
};

struct Coords32 gUnknown_08078640[] =
{
    { 10, 33 },
    { 10, 33 },
    { 10, 33 },
    { 10, 33 },
    { 10, 33 },
    { 10, 33 },
    { 6, 33 },
    { 7, 33 },
};

struct Coords32 gUnknown_08078680[] =
{
    { 18, 33 },
    { 18, 33 },
    { 18, 33 },
    { 18, 33 },
    { 18, 33 },
    { 18, 33 },
    { 13, 33 },
    { 15, 33 },
};

struct Coords32 gUnknown_080786C0[] =
{
    { 26, 33 },
    { 26, 33 },
    { 26, 33 },
    { 26, 33 },
    { 26, 33 },
    { 26, 33 },
    { 20, 33 },
    { 23, 33 },
};

struct SpriteTemplate gUnknown_08078700[] =
{
    { 0, 0, 0x20, 0x04, 0x080, &gUnknown_085FB360, &gUnknown_085FB3CC, gUnknown_085FB3D4 },
    { 0, 0, 0x20, 0x04, 0x080, &gUnknown_085FB360, &gUnknown_085FB3CC, gUnknown_085FB3D4 },
    { 0, 0, 0x20, 0x04, 0x080, &gUnknown_085FB360, &gUnknown_085FB3CC, gUnknown_085FB3D4 },
    { 0, 0, 0x80, 0x10, 0x200, &gUnknown_08613EBC, &gUnknown_08613F04, gUnknown_08613F0C },
};
struct SpriteTemplate gUnknown_08078760 = { 0, 0, 0x100, 0x20, 0x400, &gUnknown_086119D4, &gUnknown_08611A40, gUnknown_08611A48 };
struct SpriteTemplate gUnknown_08078778 = { 0, 0, 0x200, 0x40, 0x800, &gUnknown_08612648, &gUnknown_086126B4, gUnknown_086126BC };
struct SpriteTemplate gUnknown_08078790 = { 0, 0, 0x020, 0x04, 0x080, &gUnknown_08617570, &gUnknown_086175B8, gUnknown_086175C0 };
struct SpriteTemplate gUnknown_080787A8 = { 0, 0, 0x200, 0x40, 0x800, &gUnknown_08615BB4[0], &gUnknown_08615BFC, gUnknown_08615C04 };
struct SpriteTemplate gUnknown_080787C0 = { 0, 0, 0x200, 0x40, 0x800, &gUnknown_08614B64, &gUnknown_08614BAC, gUnknown_08614BB4 };
struct SpriteTemplate gUnknown_080787D8 = { 0, 0, 0x100, 0x20, 0x400, &gUnknown_08614738, &gUnknown_0861475C, gUnknown_08614764 };
struct SpriteTemplate gUnknown_080787F0 = { 0, 0, 0x008, 0x01, 0x020, &gUnknown_08617970, &gUnknown_08617AFC, gUnknown_08617B04 };
struct SpriteTemplate gUnknown_08078808 = { 0, 0, 0x020, 0x04, 0x080, &gUnknown_08617C64, &gUnknown_08617CAC, gUnknown_08617CB4 };
struct SpriteTemplate gUnknown_08078820[] =
{
    {  20, 33, 0x020, 0x04, 0x080, &gUnknown_08618064[0], &gUnknown_086180AC, gUnknown_086180B4 },
    {  77, 33, 0x020, 0x04, 0x080, &gUnknown_08618064[0], &gUnknown_086180AC, gUnknown_086180B4 },
};
struct SpriteTemplate gUnknown_08078850 = { 134, 33, 0x020, 0x04, 0x080, &gUnknown_08617030[0], &gUnknown_08617078, gUnknown_08617080 };
struct SpriteTemplate gUnknown_08078868[] =
{
    {  10, 33, 0x020, 0x04, 0x080, &gUnknown_08618064[0], &gUnknown_086180AC, gUnknown_086180B4 },
    {  58, 33, 0x020, 0x04, 0x080, &gUnknown_08618064[0], &gUnknown_086180AC, gUnknown_086180B4 },
    { 106, 33, 0x020, 0x04, 0x080, &gUnknown_08617030[0], &gUnknown_08617078, gUnknown_08617080 },
};

enum  // for gFileSelectMenuSel
{
    FILE_SELECT_FILE_A,
    FILE_SELECT_FILE_B,
    FILE_SELECT_FILE_C,
    FILE_SELECT_EWORLD,
    FILE_SELECT_OPTION_MENU,
    FILE_SELECT_ERASE_DATA,
    FILE_SELECT_EXPERT_FILE_A,
    FILE_SELECT_EXPERT_FILE_B,
    FILE_SELECT_EXPERT_FILE_C,
};

static inline u8 inlinefunc(u8 fileNum)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    if (fileNum != 3
     && (saveFile->mainBossLevel.flags & LEVEL_FLAG_COMPLETE)
     && saveFile->stars >= gUnknown_080A8668)
        return TRUE;
    else
        return FALSE;
}

static inline u8 has_completed_first_level(u8 fileNum)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    if (fileNum < 3 && (saveFile->mainLevels[0].flags & LEVEL_FLAG_COMPLETE))
        return TRUE;
    else
        return FALSE;
}

static inline void inlinefunc3(u8 fileNum, u8 arg1)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    saveFile->unk4 |= arg1;
}

static inline void inlinefunc4(u8 fileNum)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    int lives = saveFile->lives;
    gLivesCount = lives;
}

static inline void inlinefunc5(u8 fileNum, u8 *pWorld, u8 *pLevel, u8 *pLevelType)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    u8 level = saveFile->unk2 & 0xF;

    *pLevelType = saveFile->unk3;
    *pLevel = level;
    *pWorld = (saveFile->unk2 >> 4) & 7;
    *pLevelType = saveFile->unk3;
}

static inline u8 inlinefunc6(u8 fileNum)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    if (saveFile->unk4 < 0)
        return TRUE;
    else
        return FALSE;
}

static inline void inlinefunc7(s8 *toIncrement, s8 *toDecrement, struct SpriteTemplate_child *arr, int max)
{
    if (--*toDecrement <= 0)
    {
        (*toIncrement)++;
        if (*toIncrement >= max)
            *toIncrement = 0;
        *toDecrement = arr[*toIncrement].unk1;
    }
}

void main_menu_init_callback(void)
{
    s16 i;

    arena_restore_head(0);
    gUnknown_03001740 = 0;
    gUnknown_0300005D = gUnknown_03000062 = 0;
    if (*gUnknown_0807CA94 != 0)
        gUnknown_0300005D = gUnknown_03000062 = 1;
    if (gPreviousMainState == 4)
        gFileSelectMenuSel = FILE_SELECT_OPTION_MENU;
    else if ((gPreviousMainState == 24 || gPreviousMainState == 25) && gUnknown_0300005D != 0)
        gFileSelectMenuSel = FILE_SELECT_EWORLD;
    else if ((*gUnknown_080788F8 & 1) && gUnknown_0300005D != 0)
        gFileSelectMenuSel = gPrevFileSelectMenuSel = FILE_SELECT_EWORLD;
    else
        gFileSelectMenuSel = gPrevFileSelectMenuSel = *gSelectedSaveFileNumPtr;
    gUnknown_0300005B = 0;
    gUnknown_0300005E = 0;
    gUnknown_0300005F = gUnknown_085FEFE4[0].unk1;
    gUnknown_03000060 = 0;
    gUnknown_03000061 = gUnknown_08617030[0].unk1;
    gUnknown_03000064 = 0;
    gUnknown_03000065 = 0;
    gCameraHorizontalOffset = 0;
    gCameraVerticalOffset = 0;
    load_graphics_config_bg2_08032EB8(&gMainMenuData);
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    if (sub_08071FE4() != 10)
        sub_0807204C(10, 0x80, 1);
    set_blend_regs_08029CDC(gMainMenuData.bldCnt, gMainMenuData.bldAlpha, gMainMenuData.bldY);
    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    load_predefined_palette(1, LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
    CpuFill16(0, &gBGLayerOffsets, 16);
    sub_080381E4(0, 0);
    for (i = 0; i < 3; i++)
        gUnknown_03000066[i] = sub_080111B4(i);
}

void sub_0801168C(u8 arg0)
{
    struct SaveFile *saveFile;
    u8 r0;
    u8 fileNum;

    if (arg0 != 0)
    {
        if (gUnknown_0300005D != 0)
        {
            s8 sp0[32] = { 254, 46, 94, 142 };
            gBGLayerOffsets.bg2_x = -sp0[gFileSelectMenuSel];
        }
        else
        {
            s8 sp0[32] = { 8, 65, 122 };
            gBGLayerOffsets.bg2_x = -sp0[gFileSelectMenuSel];
        }
        if (inlinefunc(gFileSelectMenuSel))
            gBGLayerOffsets.bg2_y = -256;
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
        REG_BLDCNT = BLDCNT_EFF_ALPHA | BLDCNT_BG2_FIRST | BLDCNT_BG0_SECOND | BLDCNT_BG1_SECOND | BLDCNT_BG3_SECOND | BLDCNT_OBJ_SECOND | BLDCNT_BD_SECOND;
        REG_BLDALPHA = 0x0808;
    }
    else
    {
        gBGLayerOffsets.bg1_y = 0;
        gBGLayerOffsets.bg2_y = 0;
        gBGLayerOffsets.bg2_x = 0;
        gBGLayerOffsets.bg0_y = 0;
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    }
}

void pick_file(void)
{
    int i;
    struct SaveFile *saveFile;
    int r0;
    s8 r5;
    struct SaveFile *r1;
    u8 spC;
    u32 r7;

    if (sub_08034004())
    {
        if (gFileSelectMenuSel == FILE_SELECT_ERASE_DATA)
        {
            for (i = 0; i < 3; i++)
            {
                if (has_completed_first_level(i))
                {
                    r0 = i + 1;
                    goto _080117CE;
                }
            }
            r0 = 0;
        _080117CE:
            r5 = r0;
            if (*gUnknown_0807CA94 == 0 && r5 == 0)
            {
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 0x80, 0);
                gPrevFileSelectMenuSel = gFileSelectMenuSel;
                if (r5 > 0)
                    gFileSelectMenuSel = r5 - 1;
                else
                    gFileSelectMenuSel = FILE_SELECT_FILE_A;
                gUnknown_0300005B = 2;
                sub_0801168C(1);
            }
            return;
        }
        else if (gFileSelectMenuSel == FILE_SELECT_OPTION_MENU)
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 0x80, 0);
            change_main_state(MAIN_STATE_OPTION_MENU, 1);
            return;
        }
        else if (gFileSelectMenuSel == FILE_SELECT_EWORLD)
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 0x80, 0);
            change_main_state(29, 1);
            return;
        }
        else if (gFileSelectMenuSel <= FILE_SELECT_FILE_C)  // files
        {
            u8 one;

            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 0x80, 0);
            *gSelectedSaveFileNumPtr = gFileSelectMenuSel;
            inlinefunc5(*gSelectedSaveFileNumPtr, &gCurrentWorld, &gNextLevelID, &gLevelType);
            inlinefunc4(*gSelectedSaveFileNumPtr);
            if (gLevelType == 0)
                gNextLevelID = gNextLevelID << 1;
            if (get_level_stats_0800FE2C(0, 0, 0, &spC))
            {
                change_main_state(MAIN_STATE_LEVEL_SELECT, 1);
            }
            else
            {
                movie_player_setup_data(3, 41, MAIN_STATE_LEVEL_SELECT, 1);
                change_main_state(MAIN_STATE_MOVIE, 1);
                one = 1;
                inlinefunc3(*gSelectedSaveFileNumPtr, one);
                if (gUnknown_03000B50 == 1)
                    sub_0802A164();
            }
            return;
        }
    }
    else if (gSomeKeys_030012E8 & B_BUTTON)
    {
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 0x80, 0);
        change_main_state(MAIN_STATE_TITLE_SCREEN, 1);
        return;
    }

    if (gFileSelectMenuSel <= 7)
    {
        if (gFileSelectMenuSel <= 3)
        {
            if (gSomeKeys_030012E8 & DPAD_RIGHT)
            {
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                gPrevFileSelectMenuSel = gFileSelectMenuSel;
                if (gPrevFileSelectMenuSel == 2 && gUnknown_0300005D == 0)
                    gFileSelectMenuSel++;
                gFileSelectMenuSel++;
            }
            else if (gFileSelectMenuSel <= 2 && (gSomeKeys_030012E8 & DPAD_DOWN))
            {
                if (inlinefunc(gFileSelectMenuSel))
                {
                    play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
                    gPrevFileSelectMenuSel = gFileSelectMenuSel;
                    gFileSelectMenuSel += FILE_SELECT_EXPERT_FILE_A;
                    gUnknown_0300005B = 1;
                    return;
                }
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
        }
        else
        {
            if (gSomeKeys_030012E8 & DPAD_DOWN)
            {
                if (gFileSelectMenuSel == FILE_SELECT_OPTION_MENU)
                {
                    play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
                    gPrevFileSelectMenuSel = gFileSelectMenuSel;
                    gFileSelectMenuSel++;
                }
                else
                {
                    play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
                }
            }
            if (gSomeKeys_030012E8 & DPAD_RIGHT)
            {
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                gPrevFileSelectMenuSel = gFileSelectMenuSel;
                gFileSelectMenuSel = FILE_SELECT_FILE_A;
            }
        }
    }
    else if (gSomeKeys_030012E8 & DPAD_RIGHT)
    {
        play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
        gPrevFileSelectMenuSel = gFileSelectMenuSel;
        gFileSelectMenuSel = FILE_SELECT_FILE_A;
    }

    if (gFileSelectMenuSel != 0)
    {
        if (gFileSelectMenuSel <= 4)
        {
            if (gSomeKeys_030012E8 & DPAD_LEFT)
            {
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                gPrevFileSelectMenuSel = gFileSelectMenuSel;
                if (gPrevFileSelectMenuSel == 4 && gUnknown_0300005D == 0)
                    gFileSelectMenuSel--;
                gFileSelectMenuSel--;
            }
            if (gSomeKeys_030012E8 & DPAD_UP)
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        }
        else if (gSomeKeys_030012E8 & DPAD_UP)
        {
            play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            gFileSelectMenuSel--;
        }
        else if (gSomeKeys_030012E8 & DPAD_LEFT)
        {
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            if (gUnknown_0300005D == 0)
                gFileSelectMenuSel--;
            gFileSelectMenuSel -= FILE_SELECT_FILE_C;
        }
    }
    else
    {
        if (gSomeKeys_030012E8 & DPAD_UP)
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        if (gSomeKeys_030012E8 & DPAD_LEFT)
        {
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            gFileSelectMenuSel = FILE_SELECT_OPTION_MENU;
        }
    }
}

void sub_08011CB4(void)
{
    if (gSomeKeys_030012E8 & DPAD_UP)
    {
        play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
        gPrevFileSelectMenuSel = gFileSelectMenuSel;
        gFileSelectMenuSel -= FILE_SELECT_EXPERT_FILE_A;
        gUnknown_0300005B = 0;
    }
    else if (gSomeKeys_030012E8 & DPAD_LEFT)
    {
        if (gFileSelectMenuSel > 6)
        {
            if (inlinefunc(gFileSelectMenuSel - 7))
            {
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                gPrevFileSelectMenuSel = gFileSelectMenuSel;
                gFileSelectMenuSel--;
            }
            else
            {
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                gPrevFileSelectMenuSel = gFileSelectMenuSel;
                gFileSelectMenuSel = FILE_SELECT_FILE_A;
                gUnknown_0300005B = 0;
            }
        }
        else
        {
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            gFileSelectMenuSel = FILE_SELECT_FILE_A;
            gUnknown_0300005B = 0;
        }
    }
    else if (gSomeKeys_030012E8 & DPAD_RIGHT)
    {
        if (gFileSelectMenuSel <= 7)
        {
            if (inlinefunc(gFileSelectMenuSel - 5))
            {
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                gPrevFileSelectMenuSel = gFileSelectMenuSel;
                gFileSelectMenuSel++;
            }
            else
            {
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                gPrevFileSelectMenuSel = gFileSelectMenuSel;
                gFileSelectMenuSel = FILE_SELECT_ERASE_DATA;
                gUnknown_0300005B = 0;
            }
        }
        else
        {
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            gFileSelectMenuSel = FILE_SELECT_ERASE_DATA;
            gUnknown_0300005B = 0;
        }
    }

    if (gSomeKeys_030012E8 & DPAD_DOWN)
        play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
    if (sub_08034004())
    {
        play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
        gLevelType = 2;
        if (gFileSelectMenuSel == FILE_SELECT_EWORLD)
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            change_main_state(MAIN_STATE_UKNOWN_29, 1);
        }
        else
        {
            *gSelectedSaveFileNumPtr = gFileSelectMenuSel - FILE_SELECT_EXPERT_FILE_A;
            gCurrentWorld = 0;
            gNextLevelID = 0;
            change_main_state(MAIN_STATE_EXPERT_LEVEL_SELECT, 1);
        }
    }
}

void sub_08011F60(void)
{
    gBGLayerOffsets.bg1_y = -256;
    if (sub_08034004())
    {
        u32 r1;

        if (gFileSelectMenuSel <= 2)
            r1 = has_completed_first_level(gFileSelectMenuSel);
        else
            r1 = *gUnknown_0807CA94;
        if (!r1)
        {
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            gUnknown_0300005B = 3;
            gUnknown_0300005C = 0;
        }
    }
    else if (gSomeKeys_030012E8 & B_BUTTON)
    {
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        gPrevFileSelectMenuSel = gFileSelectMenuSel;
        gFileSelectMenuSel = 0;
        gUnknown_0300005B = 0;
        sub_0801168C(0);
    }
    else
    {
        if (gSomeKeys_030012E8 & (DPAD_UP|DPAD_DOWN))
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        if (gSomeKeys_030012E8 & DPAD_RIGHT)
        {
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            if (gFileSelectMenuSel < gUnknown_0300005D + 2)
                gFileSelectMenuSel++;
            else
                gFileSelectMenuSel = 0;
            if (gUnknown_0300005D != 0)
            {
                s8 sp0[32] = {254, 46, 94, 142};
                gBGLayerOffsets.bg2_x = -sp0[gFileSelectMenuSel];
            }
            else
            {
                s8 sp0[32] = {8, 65, 122};
                gBGLayerOffsets.bg2_x = -sp0[gFileSelectMenuSel];
            }
            if (inlinefunc(gFileSelectMenuSel))
                gBGLayerOffsets.bg2_y = -256;
            else
                gBGLayerOffsets.bg2_y = 0;
        }
        else if (gSomeKeys_030012E8 & DPAD_LEFT)
        {
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            if (gFileSelectMenuSel != 0)
                gFileSelectMenuSel--;
            else
                gFileSelectMenuSel = gUnknown_0300005D + 2;
            if (gUnknown_0300005D != 0)
            {
                s8 sp0[32] = {254, 46, 94, 142};
                gBGLayerOffsets.bg2_x = -sp0[gFileSelectMenuSel];
            }
            else
            {
                s8 sp0[32] = {8, 65, 122};
                gBGLayerOffsets.bg2_x = -sp0[gFileSelectMenuSel];
            }
            if (inlinefunc(gFileSelectMenuSel))
                gBGLayerOffsets.bg2_y = -256;
            else
                gBGLayerOffsets.bg2_y = 0;
        }
    }
}

void sub_08012230(void)  // for new save file?
{
    s16 i;

    gBGLayerOffsets.bg0_y = -256;
    gBGLayerOffsets.bg1_y = -256;
    if (sub_08034004())
    {
        if (gUnknown_0300005C != 0)
        {
            u8 fileNum;

            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            fileNum = gFileSelectMenuSel;
            if (fileNum < 3)
            {
                CpuFill16(0, &gSaveFilesPtr[fileNum], sizeof(struct SaveFile));
                init_level_highscores_08010DEC(&gSaveFilesPtr[fileNum]);
                if (gUnknown_03000B50 == 1)
                    sub_0802A164();
                for (i = 0; i < 3; i++)
                    gUnknown_03000066[i] = sub_080111B4(i);
            }
            else
            {
                sub_0802F06C();
                sub_0802F1D4();
            }
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            gFileSelectMenuSel = FILE_SELECT_FILE_A;
            gUnknown_0300005B = 0;
            sub_0801168C(0);
        }
        else
        {
            play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            gFileSelectMenuSel = FILE_SELECT_FILE_A;
            gUnknown_0300005B = 0;
            sub_0801168C(0);
        }
    }
    else if (gSomeKeys_030012E8 & B_BUTTON)
    {
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        gPrevFileSelectMenuSel = gFileSelectMenuSel;
        gFileSelectMenuSel = FILE_SELECT_FILE_A;
        gUnknown_0300005B = 0;
        sub_0801168C(0);
    }
    else if (gSomeKeys_030012E8 & DPAD_RIGHT)
    {
        if (gUnknown_0300005C == 0)
        {
            gUnknown_0300005C++;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gSomeKeys_030012E8 & DPAD_LEFT)
    {
        if (gUnknown_0300005C != 0)
        {
            gUnknown_0300005C--;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
        }
    }
}

void main_menu_main(void)
{
    u8 r5;

    process_input();
    sub_08029C20();
    if (gUnknown_03000C28 == 0)
        sub_0801B310();
    if (gUnknown_03000064 > 20)
    {
        switch (gUnknown_0300005B)
        {
        case 0:
            pick_file();
            break;
        case 1:
            sub_08011CB4();
            break;
        case 2:
            sub_08011F60();
            break;
        case 3:
            sub_08012230();
            break;
        }
    }
    r5 = gUnknown_0300005D;
    sub_08038130(0);
    if (gUnknown_03000C28 == 0)
    {
        if (sub_08038228(0) != 0 || *gUnknown_0807CA94 != 0)
            gUnknown_0300005D = 1;
        else
            gUnknown_0300005D = 0;
        if (gUnknown_03000062 != 0)
            gUnknown_0300005D = 1;
    }
    if (r5 != gUnknown_0300005D)
    {
        if (gUnknown_0300005D != 0)
        {
            if (gUnknown_03000063 == 0 && *gUnknown_0807CA94 == 0)
                gFileSelectMenuSel = FILE_SELECT_EWORLD;
            gUnknown_03000063 = 1;
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
            if (gFileSelectMenuSel == FILE_SELECT_EWORLD)
                gFileSelectMenuSel--;
        }
    }
    if (gUnknown_03000064 <= 20)
        gUnknown_03000064++;

    inlinefunc7(&gUnknown_0300005E, &gUnknown_0300005F, gUnknown_085FEFE4, 18);
    inlinefunc7(&gUnknown_03000060, &gUnknown_03000061, gUnknown_08617030, 2);
}

void sub_08012568(void)
{
    s16 x, y;
    int dummy;

    if (gUnknown_0300005D != 0)
    {
        x = gUnknown_080785E0[gFileSelectMenuSel].x;
        y = gUnknown_080785E0[gFileSelectMenuSel].y;
    }
    else
    {
        x = gUnknown_080785B0[gFileSelectMenuSel].x;
        y = gUnknown_080785B0[gFileSelectMenuSel].y;
    }

    // useless code
    dummy = has_completed_first_level(gFileSelectMenuSel);
    if (dummy)
        dummy++;

    DmaCopy32(3, &gUnknown_08606A1C, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
    gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000046;
    gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
    gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
    gOamBuffer[gSomeOamIndex_03000040].y = y - 8;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gSomeOamIndex_03000040++;
}

void sub_08012680(void)
{
    s16 x, y;
    int dummy;

    if (gUnknown_0300005D != 0)
    {
        x = gUnknown_080785E0[gFileSelectMenuSel].x;
        y = gUnknown_080785E0[gFileSelectMenuSel].y;
    }
    else
    {
        x = gUnknown_080785B0[gFileSelectMenuSel].x;
        y = gUnknown_080785B0[gFileSelectMenuSel].y;
    }

    // useless code
    dummy = has_completed_first_level(gFileSelectMenuSel);
    if (dummy)
        dummy++;

    DmaCopy32(3, &gUnknown_085FB7DC, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
    gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000048;
    gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
    gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
    gOamBuffer[gSomeOamIndex_03000040].y = y - 8;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gSomeOamIndex_03000040++;
}

void sub_08012798(void)
{
    u8 arr[] = { 4, 6, 8, 12, 10, 10 };
    s16 x, y;
    u8 paletteNum;
    int dummy;

    if (gUnknown_0300005D != 0)
    {
        x = gUnknown_08078628[gFileSelectMenuSel - 6].x;
        y = gUnknown_08078628[gFileSelectMenuSel - 6].y;
    }
    else
    {
        x = gUnknown_08078610[gFileSelectMenuSel - 6].x;
        y = gUnknown_08078610[gFileSelectMenuSel - 6].y;
    }
    paletteNum = arr[gFileSelectMenuSel - 6];

    // useless code
    dummy = has_completed_first_level(gFileSelectMenuSel);
    if (dummy)
        dummy++;

    DmaCopy32(3, &gUnknown_085FF26C, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
    gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_0300004C;
    gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
    gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
    gOamBuffer[gSomeOamIndex_03000040].y = y - 8;
    gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gSomeOamIndex_03000040++;
}

void sub_080128EC(void)
{
    s16 arr[] = { 68, 115 };
    s16 x, y;

    DmaCopy32(3, &gUnknown_0860FDCC, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
    gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_0300004A;
    gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
    gOamBuffer[gSomeOamIndex_03000040].x = arr[gUnknown_0300005C];
    gOamBuffer[gSomeOamIndex_03000040].y = 81;
    gOamBuffer[gSomeOamIndex_03000040].priority = 0;
    gSomeOamIndex_03000040++;
}

void sub_080129C0(void)
{
    u8 arr[] = { 4, 6, 8, 12, 10, 10 };
    s16 x, y;
    u8 paletteNum;

    if (gUnknown_0300005D != 0)
    {
        x = gUnknown_080785E0[gFileSelectMenuSel].x;
        y = gUnknown_080785E0[gFileSelectMenuSel].y;
    }
    else
    {
        x = gUnknown_080785B0[gFileSelectMenuSel].x;
        y = gUnknown_080785B0[gFileSelectMenuSel].y;
    }
    paletteNum = arr[gFileSelectMenuSel];

    if (has_completed_first_level(gFileSelectMenuSel))
    {
        DmaCopy32(3, &gUnknown_0860C33C, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000042;
        gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
        gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y + 248;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gSomeOamIndex_03000040++;

        DmaCopy32(3, &gUnknown_0860A4AC, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000044;
        gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
        gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y + 56;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gSomeOamIndex_03000040++;
    }
    else
    {
        DmaCopy32(3, &gUnknown_08602F8C, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000042;
        gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
        gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y + 248;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gSomeOamIndex_03000040++;

        DmaCopy32(3, &gUnknown_086010FC, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000044;
        gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
        gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y + 56;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gSomeOamIndex_03000040++;
    }
}

void sub_08012D24(void)
{
    DmaCopy32(3, gUnknown_08615C04, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x800);
    gUnknown_0300004E = gUnknown_03001930;
    gUnknown_03001930 += 64;
    gObjVRAMCopyOffset_0300192C += 0x800;

    DmaCopy32(3, gUnknown_08615C04 + gUnknown_08615BB4[1].unk0 * 0x800, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x800);
    gUnknown_03000050 = gUnknown_03001930;
    gUnknown_03001930 += 64;
    gObjVRAMCopyOffset_0300192C += 0x800;

    DmaCopy32(3, gUnknown_08614764, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x400);
    gUnknown_03000052 = gUnknown_03001930;
    gUnknown_03001930 += 32;
    gObjVRAMCopyOffset_0300192C += 0x400;

    if (has_completed_first_level(gFileSelectMenuSel) || gFileSelectMenuSel == 3)
    {
        DmaCopy32(3, gUnknown_0860C344 + gUnknown_0860C0B4[gUnknown_0300005E].unk0 * 0x800, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x800);
        gUnknown_03000042 = gUnknown_03001930;
        gUnknown_03001930 += 64;
        gObjVRAMCopyOffset_0300192C += 0x800;

        DmaCopy32(3, gUnknown_0860A4B4 + gUnknown_0860A224[gUnknown_0300005E].unk0 * 0x400, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x400);
        gUnknown_03000044 = gUnknown_03001930;
        gUnknown_03001930 += 32;
        gObjVRAMCopyOffset_0300192C += 0x400;
    }
    else
    {
        DmaCopy32(3, gUnknown_08602F94 + gUnknown_08602D04[gUnknown_0300005E].unk0 * 0x800, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x800);
        gUnknown_03000042 = gUnknown_03001930;
        gUnknown_03001930 += 64;
        gObjVRAMCopyOffset_0300192C += 0x800;

        DmaCopy32(3, gUnknown_08601104 + gUnknown_08600E74[gUnknown_0300005E].unk0 * 0x400, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x400);
        gUnknown_03000044 = gUnknown_03001930;
        gUnknown_03001930 += 32;
        gObjVRAMCopyOffset_0300192C += 0x400;
    }

    DmaCopy32(3, gUnknown_08606A24 + gUnknown_08606794[gUnknown_0300005E].unk0 * 0x800, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x800);
    gUnknown_03000046 = gUnknown_03001930;
    gUnknown_03001930 += 64;
    gObjVRAMCopyOffset_0300192C += 0x800;

    DmaCopy32(3, gUnknown_085FB7E4 + gUnknown_085FB554[gUnknown_0300005E].unk0 * 0x800, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x800);
    gUnknown_03000048 = gUnknown_03001930;
    gUnknown_03001930 += 64;
    gObjVRAMCopyOffset_0300192C += 0x800;

    DmaCopy32(3, gUnknown_085FF274 + gUnknown_085FEFE4[gUnknown_0300005E].unk0 * 0x400, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x400);
    gUnknown_0300004C = gUnknown_03001930;
    gUnknown_03001930 += 32;
    gObjVRAMCopyOffset_0300192C += 0x400;

    DmaCopy32(3, gUnknown_0860FDD4 + gUnknown_0860FB44[gUnknown_0300005E].unk0 * 0x400, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x400);
    gUnknown_0300004A = gUnknown_03001930;
    gUnknown_03001930 += 32;
    gObjVRAMCopyOffset_0300192C += 0x400;

    DmaCopy32(3, gUnknown_08617080 + gUnknown_08617030[gUnknown_03000060].unk0 * 0x80, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x80);
    gUnknown_03000054.unk0 = gUnknown_03001930;
    gUnknown_03001930 += 4;
    gObjVRAMCopyOffset_0300192C += 0x80;

    DmaCopy32(3, gUnknown_086180B4 + gUnknown_08618064[gUnknown_03000060].unk0 * 0x80, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x80);
    gUnknown_03000054.unk2 = gUnknown_03001930;
    gUnknown_03001930 += 4;
    gObjVRAMCopyOffset_0300192C += 0x80;
}

void print_digits_080130F8(u8 x, u8 y, u8 digits, u16 value, u8 arg4)
{
    int i;
    int x2 = x + (digits - 1) * 8;

    for (i = 0; i < digits; i++)
    {
        DmaCopy32(3, gUnknown_08617F24 + (value % 10) * 32, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 32);
        DmaCopy32(3, &gUnknown_08617F1C, &gOamBuffer[gSomeOamIndex_03000040], 8);
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03001930;
        gOamBuffer[gSomeOamIndex_03000040].x = x2 - i * 5;
        gOamBuffer[gSomeOamIndex_03000040].y = y;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum += arg4;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gUnknown_03001930++;
        gObjVRAMCopyOffset_0300192C += 32;
        gSomeOamIndex_03000040++;
        value /= 10;
    }
}

void print_digits_08013260(u8 x, u8 y, u8 digits, u16 value, u8 arg4)
{
    int i;
    int x2 = x + (digits - 1) * 8;

    for (i = 0; i < digits; i++)
    {
        DmaCopy32(3, gUnknown_086172F0 + (value % 10) * 64, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 64);
        DmaCopy32(3, &gUnknown_086172E8, &gOamBuffer[gSomeOamIndex_03000040], 8);
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03001930;
        gOamBuffer[gSomeOamIndex_03000040].x = x2 - i * 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum += arg4;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gUnknown_03001930 += 2;
        gObjVRAMCopyOffset_0300192C += 64;
        gSomeOamIndex_03000040++;
        value /= 10;
    }
}

void print_digits_080133D4(u8 x, u8 y, u8 digits, u16 value, u8 arg4)
{
    int i;
    int x2 = x + (digits - 1) * 8;

    for (i = 0; i < digits; i++)
    {
        DmaCopy32(3, gUnknown_08617B04 + (value % 10) * 32, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 32);
        DmaCopy32(3, &gUnknown_08617AFC, &gOamBuffer[gSomeOamIndex_03000040], 8);
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03001930;
        gOamBuffer[gSomeOamIndex_03000040].x = x2 - i * 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum += arg4;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gUnknown_03001930++;
        gObjVRAMCopyOffset_0300192C += 32;
        gSomeOamIndex_03000040++;
        value /= 10;
    }
}

void print_digits_08013548(u8 x, u8 y, u8 digits, u16 value)
{
    int i;
    int x2 = x + (digits - 1) * 8;

    for (i = 0; i < digits; i++)
    {
        DmaCopy32(3, gUnknown_08617830 + (value % 10) * 32, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 32);
        DmaCopy32(3, &gUnknown_08617828, &gOamBuffer[gSomeOamIndex_03000040], 8);
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03001930;
        gOamBuffer[gSomeOamIndex_03000040].x = x2 - i * 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gUnknown_03001930++;
        gObjVRAMCopyOffset_0300192C += 32;
        gSomeOamIndex_03000040++;
        value /= 10;
    }
}

void add_sprite_0801369C(struct SpriteTemplate *arg0, u16 arg1, u8 arg2, int arg3, s16 arg4, s16 arg5)
{
    DmaCopy32(3, arg0->oamData, &gOamBuffer[gSomeOamIndex_03000040], 8);
    gOamBuffer[gSomeOamIndex_03000040].tileNum += arg1;
    gOamBuffer[gSomeOamIndex_03000040].paletteNum = arg3;
    gOamBuffer[gSomeOamIndex_03000040].x = arg4 + arg0->unkC[arg2].unk2;
    gOamBuffer[gSomeOamIndex_03000040].y = arg5 + arg0->unkC[arg2].unk3;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gSomeOamIndex_03000040++;
}

// OamData, but with explicit bit fields for hflip and vflip
struct OamData_alt
{
    /*0x00*/ u32 y:8;
    /*0x01*/ u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

    /*0x02*/ u32 x:9;
             u32 matrixNum_b0_2:3;
             u32 matrixNum_hflip:1;
             u32 matrixNum_vflip:1;
             u32 size:2;

    /*0x04*/ u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;
    /*0x06*/ u16 affineParam;
};

void add_sprite_080137A0(struct SpriteTemplate *arg0, u16 arg1, u8 arg2, s8 paletteNum, u8 hFlip, s16 x, s16 y)
{
    DmaCopy32(3, arg0->oamData, &gOamBuffer[gSomeOamIndex_03000040], 8);
    gOamBuffer[gSomeOamIndex_03000040].tileNum += arg1;
    gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
    gOamBuffer[gSomeOamIndex_03000040].x = x + arg0->unkC[arg2].unk2;
    gOamBuffer[gSomeOamIndex_03000040].y = y + arg0->unkC[arg2].unk3;
    (*(struct OamData_alt *)&gOamBuffer[gSomeOamIndex_03000040]).matrixNum_hflip = hFlip;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gSomeOamIndex_03000040++;
}

void add_sprite_080138D0(struct SpriteTemplate *arg0, u8 arg1, s8 arg2, s16 x, s16 y)
{
    DmaCopy32(3, arg0->tileData + arg0->unkC[arg1].unk0 * arg0->unk4 * 4, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), arg0->unk8);
    DmaCopy32(3, arg0->oamData, &gOamBuffer[gSomeOamIndex_03000040], 8);
    gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03001930;
    gOamBuffer[gSomeOamIndex_03000040].x = x + arg0->unkC[arg1].unk2;
    gOamBuffer[gSomeOamIndex_03000040].y = y + arg0->unkC[arg1].unk3;
    if (arg2 > 1)
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = arg2;
    else
        gOamBuffer[gSomeOamIndex_03000040].paletteNum += arg2;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gUnknown_03001930 += arg0->unk6;
    gObjVRAMCopyOffset_0300192C += arg0->unk8;
    gSomeOamIndex_03000040++;
}

#define PRINT_STARS(fileNum, x, y, d) \
{ \
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum]; \
    u8 stars = saveFile->stars; \
    print_digits_080130F8(x + 15, y + 48, 2, stars, d); \
}

#define PRINT_LEVELS(fileNum, x, y, d) \
{ \
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum]; \
    u8 levels = saveFile->levelsCompleted; \
    print_digits_080130F8(x + 25, y + 55, 2, levels, d); \
}

#define PRINT_LIVES(fileNum, x, y, d, e) \
{ \
    s8 fileNum_ = fileNum; \
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum_]; \
    u16 lives = saveFile->lives; \
    print_digits_08013260(x + 24, y + 63, 2, lives, d); \
    add_sprite_080138D0(&gUnknown_08078760, e, d, x, y + 12); \
    add_sprite_080138D0(&gUnknown_08078778, 0, d, x, y + 44); \
}

void sub_08013A48(u8 fileNum, u8 arg1, s8 arg2, s16 x, s16 y)
{
    u8 spC = (arg1 == 0);

    if (fileNum == 3)
    {
        struct SpriteTemplate *r0 = gUnknown_08078700;
        add_sprite_080138D0(&r0[3], 0, arg2, x + 6, y + 6);
        print_digits_08013260(x + 14, y + 46, 2, *gUnknown_0807CA94, 0);
        add_sprite_080138D0(&gUnknown_08078778, 2, arg2, x, y + 44);
    }
    else
    {
        add_sprite_080138D0(&gUnknown_08078700[fileNum], fileNum, arg2, x + 13, y + 4);
        if (!has_completed_first_level(fileNum))
        {
            add_sprite_080138D0(&gUnknown_08078760, 2, arg2, x, y + 12);
            add_sprite_080138D0(&gUnknown_08078778, 1, spC, x, y + 44);
        }
        else if (inlinefunc6(fileNum))
        {
            PRINT_STARS(fileNum, x, y, spC)
            PRINT_LEVELS(fileNum, x, y, spC)
            PRINT_LIVES(fileNum, x, y, spC, 1)
            spC++;spC++;spC++;spC++;spC++;spC++;spC++;  // needed to match
        }
        else
        {
            u8 world, level, levelType;

            inlinefunc5(fileNum, &world, &level, &levelType);
            add_sprite_080138D0(&gUnknown_08078790, levelType, spC, x + 6, y + 24);
            print_digits_080133D4(x + gUnknown_08078640[level].x, y + gUnknown_08078640[level].y, 1, world + 1, spC);
            add_sprite_080138D0(&gUnknown_080787F0, 10, spC, x + gUnknown_08078680[level].x, y + gUnknown_08078680[level].y);
            if (level <= 5)
                print_digits_080133D4(x + gUnknown_080786C0[level].x, y + gUnknown_080786C0[level].y, 1, level + 1, spC);
            else if (levelType == 0)
                add_sprite_080138D0(&gUnknown_08078808, level - 6, spC, x + gUnknown_080786C0[level].x, y + gUnknown_080786C0[level].y);
            else
                add_sprite_080138D0(&gUnknown_08078808, level - 5, spC, x + gUnknown_080786C0[level].x, y + gUnknown_080786C0[level].y);
            PRINT_STARS(fileNum, x, y, !arg1)
            PRINT_LEVELS(fileNum, x, y, !arg1)
            PRINT_LIVES(fileNum, x, y, spC, 0)
        }
    }
}

void sub_08013EE0(u8 arg0)
{
    s8 sp8[] = { 4, 6, 8, 12, 10, 10 };
    s8 sp10[] = { 5, 7, 9, 13, 11, 11 };
    u8 i;

    for (i = arg0; i < 9; i++)
    {
        if (inlinefunc(i - arg0))
        {
            if (i == gFileSelectMenuSel)
                add_sprite_0801369C(&gUnknown_080787D8, gUnknown_03000052, 0, sp8[i - arg0], gUnknown_08078610[i - arg0].x, gUnknown_08078610[i - arg0].y);
            else
                add_sprite_0801369C(&gUnknown_080787D8, gUnknown_03000052, 0, sp10[i - arg0], gUnknown_08078610[i - arg0].x, gUnknown_08078610[i - arg0].y);
        }
    }
}

void sub_08013FFC(u8 arg0)
{
    s8 sp8[] = { 4, 6, 8, 2, 10, 10 };
    s8 sp10[] = { 5, 7, 9, 2, 11, 11 };
    u8 i;

    for (i = arg0; i < 9; i++)
    {
        if (inlinefunc(i - arg0))
        {
            if (i == gFileSelectMenuSel)
                add_sprite_0801369C(&gUnknown_080787D8, gUnknown_03000052, 0, sp8[i - arg0], gUnknown_08078628[i - arg0].x, gUnknown_08078628[i - arg0].y);
            else
                add_sprite_0801369C(&gUnknown_080787D8, gUnknown_03000052, 0, sp10[i - arg0], gUnknown_08078628[i - arg0].x, gUnknown_08078628[i - arg0].y);
        }
    }
}

void sub_08014118(void)
{
    u8 i;

    if (gUnknown_0300005D != 0)
    {
        s8 sp8[] = { 4, 6, 8, 12, 10, 10 };
        s8 sp10[] = { 5, 7, 9, 13, 11, 11 };
        s8 sp18[] = { 4, 6, 8, 2, 10, 10 };
        s8 sp20[] = { 5, 7, 9, 2, 11, 11 };

        for (i = 0; i < 4; i++)
        {
            if (i == gFileSelectMenuSel)
            {
                sub_08013A48(i, 1, sp18[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y);
                add_sprite_0801369C(&gUnknown_080787A8, gUnknown_0300004E, 0, sp8[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y);
                add_sprite_0801369C(&gUnknown_080787A8, gUnknown_03000050, 1, sp8[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y + 64);
            }
            else
            {
                sub_08013A48(i, 0, sp20[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y);
                add_sprite_0801369C(&gUnknown_080787A8, gUnknown_0300004E, 0, sp10[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y);
                add_sprite_0801369C(&gUnknown_080787A8, gUnknown_03000050, 1, sp10[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y + 64);
            }
        }
        if (i == gFileSelectMenuSel)
            add_sprite_080138D0(&gUnknown_080787C0, 0, sp8[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y);
        else
            add_sprite_080138D0(&gUnknown_080787C0, 0, sp10[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y);
        if (i + 1 == gFileSelectMenuSel)
            add_sprite_080138D0(&gUnknown_080787C0, 1, sp8[i], gUnknown_080785E0[i + 1].x, gUnknown_080785E0[i + 1].y);
        else
            add_sprite_080138D0(&gUnknown_080787C0, 1, sp10[i], gUnknown_080785E0[i + 1].x, gUnknown_080785E0[i + 1].y);
        sub_08013FFC(i + 2);
    }
    else
    {
        s8 sp8[] = { 4, 6, 8, 10, 10 };
        s8 sp10[] = { 5, 7, 9, 11, 11 };

        for (i = 0; i < 3; i++)
        {
            if (i == gFileSelectMenuSel)
            {
                sub_08013A48(i, 1, sp8[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y);
                add_sprite_0801369C(&gUnknown_080787A8, gUnknown_0300004E, 0, sp8[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y);
                add_sprite_0801369C(&gUnknown_080787A8, gUnknown_03000050, 1, sp8[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y + 64);
            }
            else
            {
                sub_08013A48(i, 0, sp10[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y);
                add_sprite_0801369C(&gUnknown_080787A8, gUnknown_0300004E, 0, sp10[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y);
                add_sprite_0801369C(&gUnknown_080787A8, gUnknown_03000050, 1, sp10[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y + 64);
            }
        }
        i++;
        if (i == gFileSelectMenuSel)
            add_sprite_080138D0(&gUnknown_080787C0, 0, sp8[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y);
        else
            add_sprite_080138D0(&gUnknown_080787C0, 0, sp10[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y);
        if (i + 1 == gFileSelectMenuSel)
            add_sprite_080138D0(&gUnknown_080787C0, 1, sp8[i], gUnknown_080785B0[i + 1].x, gUnknown_080785B0[i + 1].y);
        else
            add_sprite_080138D0(&gUnknown_080787C0, 1, sp10[i], gUnknown_080785B0[i + 1].x, gUnknown_080785B0[i + 1].y);
        sub_08013EE0(i + 2);
    }
}

void sub_0801456C(void)
{
    s16 i;
    s16 r6;

    if (gUnknown_0300005D != 0)
    {
        for (i = 0; i < 3; i++)
        {
            if (gUnknown_03000066[i] != 0)
            {
                r6 = gUnknown_03000066[i] - 1;
                if (r6 == 2)
                {
                    struct SpriteTemplate *arr = gUnknown_08078820;
                    add_sprite_080137A0(&gUnknown_08078850, gUnknown_03000054.unk0, 0, 3, 0, gUnknown_08078868[i].x, arr[i].y);
                    add_sprite_080137A0(&gUnknown_08078850, gUnknown_03000054.unk0, 0, 3, 1, gUnknown_08078868[i].x + 16, arr[i].y);
                }
                else
                {
                    add_sprite_080137A0(&gUnknown_08078820[r6], gUnknown_03000054.unk2, 0, r6 ^ 1, 0, gUnknown_08078868[i].x, gUnknown_08078820[i].y);
                    add_sprite_080137A0(&gUnknown_08078820[r6], gUnknown_03000054.unk2, 0, r6 ^ 1, 1, gUnknown_08078868[i].x + 16, gUnknown_08078820[i].y);
                }
            }
        }
    }
    else
    {
        for (i = 0; i < 3; i++)
        {
            if (gUnknown_03000066[i] != 0)
            {
                r6 = gUnknown_03000066[i] - 1;
                if (r6 == 2)
                {
                    struct SpriteTemplate *arr = gUnknown_08078820;
                    asm(""::"r"(arr));  // needed to match
                    add_sprite_080137A0(&gUnknown_08078850, gUnknown_03000054.unk0, 0, 3, 0, gUnknown_08078820[i].x, arr[i].y);
                    add_sprite_080137A0(&gUnknown_08078850, gUnknown_03000054.unk0, 0, 3, 1, gUnknown_08078820[i].x + 16, arr[i].y);
                }
                else
                {
                    add_sprite_080137A0(&gUnknown_08078820[r6], gUnknown_03000054.unk2, 0, r6 ^ 1, 0, gUnknown_08078820[i].x, gUnknown_08078820[i].y);
                    add_sprite_080137A0(&gUnknown_08078820[r6], gUnknown_03000054.unk2, 0, r6 ^ 1, 1, gUnknown_08078820[i].x + 16, gUnknown_08078820[i].y);
                }
            }
        }
    }
}

void main_menu_loop(void)
{
    gUnknown_03001930 = gObjVRAMCopyOffset_0300192C = gSomeOamIndex_03000040 = 0;
    DmaFill32(3, 0xA0, gOamBuffer, sizeof(gOamBuffer));
    sub_08012D24();
    if (gUnknown_03000C28 == 0)
        sub_0801B2CC(gUnknown_085FEFE4[gUnknown_0300005E].unk8);
    if (gUnknown_0300005B == 3)
        sub_080128EC();
    else if (gUnknown_0300005B == 2)
    {
        REG_BLDCNT = BLDCNT_EFF_ALPHA | BLDCNT_BG2_FIRST | BLDCNT_BG0_SECOND | BLDCNT_BG1_SECOND | BLDCNT_BG3_SECOND | BLDCNT_OBJ_SECOND | BLDCNT_BD_SECOND;
        REG_BLDALPHA = 0x0808;
    }
    else if (gFileSelectMenuSel < 4)
        sub_080129C0();
    else if (gFileSelectMenuSel == 4)
        sub_08012568();
    else if (gFileSelectMenuSel == 5)
        sub_08012680();
    else
        sub_08012798();
    sub_08014118();
    sub_0801456C();
    DmaCopy32(3, gOamBuffer, (void *)OAM, 0x400);
    sub_0801B4BC();
}

void main_menu_end(void)
{
    sub_080382A8();
}

asm(".balign 4, 0");
