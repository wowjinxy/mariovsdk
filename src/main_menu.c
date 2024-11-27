#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "main_menu.h"
#include "savefile.h"

static u16 gSomeOamIndex_03000040;
static u16 gUnknown_03000042;
static u16 gUnknown_03000044;
static u16 gUnknown_03000046;
static u16 gUnknown_03000048;
static u16 gUnknown_0300004A;
static u16 gUnknown_0300004C;
static u16 gUnknown_0300004E;
static u16 gUnknown_03000050;
static u16 gUnknown_03000052;
static struct { u16 unk0; u16 unk2; } gUnknown_03000054;

GLOBAL_BSS u8 gFileSelectMenuSel = 0;
GLOBAL_BSS u8 gPrevFileSelectMenuSel = 0;
GLOBAL_BSS u8 pad0300005A = 0;
GLOBAL_BSS u8 gMainMenuState = 0;

static struct Coords32 gUnknown_080785B0[] =
{
    { 14, 52 }, 	// Save slot A - no e-Reader
    { 71, 52 }, 	// Save slot B - no e-Reader
    { 128, 52 }, 	// Save slot C - no e-Reader
    { 128, 52 },	// e-Reader save slot - no e-Reader
    { 185, 52 },	// Options button - no e-Reader
    { 185, 95 },	// Erase data button - no e-Reader
};

static struct Coords32 gUnknown_080785E0[] =
{
    { 4, 52 }, 		// Save slot A - with e-Reader unlocked
    { 52, 52 },		// Save slot B - with e-Reader unlocked
    { 100, 52 },	// Save slot C - with e-Reader unlocked
    { 148, 52 },	// e-Reader save slot - with e-Reader unlocked
    { 196, 52 },	// Options button - with e-Reader unlocked
    { 196, 95 },	// Erase data button - with e-Reader unlocked
};

static struct Coords32 gUnknown_08078610[] =
{
    { 14, 138 },	// Save slot A expert button - no e-Reader
    { 71, 138 },    // Save slot B expert button - no e-Reader
    { 128, 138 },   // Save slot C expert button - no e-Reader
};

static struct Coords32 gUnknown_08078628[] =
{
    { 4, 138 }, 	// Save slot A expert button - with e-Reader unlocked
    { 52, 138 },	// Save slot B expert button - with e-Reader unlocked
    { 100, 138 },	// Save slot C expert button - with e-Reader unlocked
};

static struct Coords32 gUnknown_08078640[] = // the world number
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

static struct Coords32 gUnknown_08078680[] = // the dot for the level numbers in for example 1-1 using the - as the dot
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

static struct Coords32 gUnknown_080786C0[] = // the level number
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

static struct SpriteTemplate sFileIconSpriteTemplates[] =
{
    { 0, 0, 0x20, 0x04, 0x080, &gUnknown_085FB360, &gfxFileLettersOAM, gfxFileLetters4bpp },
    { 0, 0, 0x20, 0x04, 0x080, &gUnknown_085FB360, &gfxFileLettersOAM, gfxFileLetters4bpp },
    { 0, 0, 0x20, 0x04, 0x080, &gUnknown_085FB360, &gfxFileLettersOAM, gfxFileLetters4bpp },
    { 0, 0, 0x80, 0x10, 0x200, &gUnknown_08613EBC, &gfxEReaderLogoOAM, gfxEReaderLogo4bpp },
};
static struct SpriteTemplate gUnknown_08078760 = { 0, 0, 0x100, 0x20, 0x400, &gUnknown_086119D4, &gUnknown_08611A40, gUnknown_08611A48 };
static struct SpriteTemplate sFileInfoBoxSpriteTemplate = { 0, 0, 0x200, 0x40, 0x800, &gUnknown_08612648, &gfxFileInfoBoxOAM, gfxFileInfoBox4bpp };
static struct SpriteTemplate sPlusMainSpriteTemplate = { 0, 0, 0x020, 0x04, 0x080, &gUnknown_08617570, &gfxPlusMainOAM, gfxPlusMain4bpp };
static struct SpriteTemplate sFileBackgroundSpriteTemplate = { 0, 0, 0x200, 0x40, 0x800, &gUnknown_08615BB4[0], &gfxFileBackgroundOAM, gfxFileBackground4bpp };
static struct SpriteTemplate sOptionMenuEraseDataButtonsSpriteTemplate = { 0, 0, 0x200, 0x40, 0x800, &gUnknown_08614B64, &gfxOptionMenuEraseDataButtonsOAM, gfxOptionMenuEraseDataButtons4bpp };
static struct SpriteTemplate sExpertSpriteTemplate = { 0, 0, 0x100, 0x20, 0x400, &gUnknown_08614738, &gfxExpertOAM, gfxExpert4bpp };
static struct SpriteTemplate gUnknown_080787F0 = { 0, 0, 0x008, 0x01, 0x020, &gUnknown_08617970, &gfxMainMenuDigitsMediumOAM, gfxMainMenuDigitsMedium4bpp };
static struct SpriteTemplate gUnknown_08078808 = { 0, 0, 0x020, 0x04, 0x080, &sMMDKSpriteTemplate, &gfxMMDKOAM, gfxMMDK4bpp };
static struct SpriteTemplate sCrownSpriteTemplate1[] =
{
    {  20, 33, 0x020, 0x04, 0x080, &gUnknown_08618064[0], &gfxBronzeCrownOAM, gfxBronzeCrown4bpp },
    {  77, 33, 0x020, 0x04, 0x080, &gUnknown_08618064[0], &gfxBronzeCrownOAM, gfxBronzeCrown4bpp },
};
static struct SpriteTemplate sCrownSpriteTemplate2 = { 134, 33, 0x020, 0x04, 0x080, &gUnknown_08617030[0], &gfxGoldCrownOAM, gfxGoldCrown4bpp };
static struct SpriteTemplate sCrownSpriteTemplate3[] =
{
    {  10, 33, 0x020, 0x04, 0x080, &gUnknown_08618064[0], &gfxBronzeCrownOAM, gfxBronzeCrown4bpp },
    {  58, 33, 0x020, 0x04, 0x080, &gUnknown_08618064[0], &gfxBronzeCrownOAM, gfxBronzeCrown4bpp },
    { 106, 33, 0x020, 0x04, 0x080, &gUnknown_08617030[0], &gfxGoldCrownOAM, gfxGoldCrown4bpp },
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

enum  // for gMainMenuState
{
    MAIN_MENU_STATE_MAIN               = 0,
    MAIN_MENU_STATE_EXPERT             = 1,
    MAIN_MENU_STATE_ERASE_DATA         = 2,
    MAIN_MENU_STATE_ERASE_DATA_CONFIRM = 3,
};

static inline u8 is_expert_unlocked(u8 menuSel)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[menuSel];
    if (menuSel != FILE_SELECT_EWORLD
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

static inline void update_sprite_frame_anim(s8 *pFrameNum, s8 *timer, struct SubSpriteTemplate *arr, int numFrames)
{
    if (--*timer <= 0)
    {
        (*pFrameNum)++;
        if (*pFrameNum >= numFrames)
            *pFrameNum = 0;
        *timer = arr[*pFrameNum].duration;
    }
}

void main_menu_init_callback(void)
{
    s16 i;

    arena_restore_head(0);
    gUnknown_03001740 = 0;
    gIsEWorldVisible_0300005D = gUnknown_03000062 = 0;
    if (*gEWorldLevelCountPtr != 0)
        gIsEWorldVisible_0300005D = gUnknown_03000062 = 1;

    // set initial cursor position
    if (gPreviousMainState == MAIN_STATE_OPTION_MENU)
        gFileSelectMenuSel = FILE_SELECT_OPTION_MENU;
    else if ((gPreviousMainState == MAIN_STATE_EWORLD_LEVEL_SELECT || gPreviousMainState == MAIN_STATE_UKNOWN_25) && gIsEWorldVisible_0300005D)
        gFileSelectMenuSel = FILE_SELECT_EWORLD;
    else if ((*gUnknown_080788F8 & 1) && gIsEWorldVisible_0300005D)
        gFileSelectMenuSel = gPrevFileSelectMenuSel = FILE_SELECT_EWORLD;
    else
        gFileSelectMenuSel = gPrevFileSelectMenuSel = *gSelectedSaveFileNumPtr;

    gMainMenuState = 0;
    gMainMenuSpriteFrameNum = 0;
    gMainMenuSpriteFrameTimer = gUnknown_085FEFE4[0].duration;
    gMainMenuCrownFrameNum = 0;
    gMainMenuCrownFrameTimer = gUnknown_08617030[0].duration;
    gMainMenuInitDelayTimer = 0;
    gUnknown_03000065 = 0;
    gCameraHorizontalOffset = 0;
    gCameraVerticalOffset = 0;
    load_graphics_config_bg2_08032EB8(&gMainMenuData);
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    if (sub_08071FE4() != 10)
        sub_0807204C(10, 0x80, 1);
    save_blend_regs(gMainMenuData.bldCnt, gMainMenuData.bldAlpha, gMainMenuData.bldY);
    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    load_predefined_palette(PALETTE_1_MAIN_MENU, LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
    CpuFill16(0, &gBGLayerOffsets, sizeof(gBGLayerOffsets));
    sub_080381E4(0, 0);
    for (i = 0; i < 3; i++)
        gUnknown_03000066[i] = sub_080111B4(i);
}

// Enables or disables the "shadow" effect when selecting a file to erase
static void enable_disable_file_shadow_effect(u8 enable)
{
    if (enable)
    {
        if (gIsEWorldVisible_0300005D)
        {
            s8 sp0[32] = { 254, 46, 94, 142 };
            gBGLayerOffsets.bg2_x = -sp0[gFileSelectMenuSel];
        }
        else
        {
            s8 sp0[32] = { 8, 65, 122 };
            gBGLayerOffsets.bg2_x = -sp0[gFileSelectMenuSel];
        }
        if (is_expert_unlocked(gFileSelectMenuSel))
            gBGLayerOffsets.bg2_y = -256;
        // Enable BG2
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
        // Enable all backgrounds except for BG2
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    }
}

// Returns the first (1-based) file index that is not empty, or 0 if
// every file is empty
static inline int get_first_nonempty_file_num(void)
{
    int i;

    for (i = 0; i < 3; i++)
    {
        if (has_completed_first_level(i))
            return i + 1;
    }
    return 0;
}

// Handles input for when cursor is over the File A-C, E-World, Option Menu,
// or Erase Data buttons
static void handle_main_menu_input(void)
{    
    u8 spC;

    if (pressed_a_or_start_08034004())
    {
        if (gFileSelectMenuSel == FILE_SELECT_ERASE_DATA)
        {
            s8 toDelete = get_first_nonempty_file_num();

            if (*gEWorldLevelCountPtr == 0 && toDelete == 0)
            {
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 0x80, 0);
                gPrevFileSelectMenuSel = gFileSelectMenuSel;
                if (toDelete > 0)
                    gFileSelectMenuSel = toDelete - 1;
                else
                    gFileSelectMenuSel = FILE_SELECT_FILE_A;
                gMainMenuState = MAIN_MENU_STATE_ERASE_DATA;
                enable_disable_file_shadow_effect(TRUE);
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
            change_main_state(MAIN_STATE_UKNOWN_29, 1);
            return;
        }
        else if (gFileSelectMenuSel == FILE_SELECT_FILE_A
              || gFileSelectMenuSel == FILE_SELECT_FILE_B
              || gFileSelectMenuSel == FILE_SELECT_FILE_C)
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
                    write_flash_sector_0802A164();
            }
            return;
        }
    }
    else if (gNewKeys & B_BUTTON)
    {
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 0x80, 0);
        change_main_state(MAIN_STATE_TITLE_SCREEN, 1);
        return;
    }

    // Handle right and down navigation
    if (gFileSelectMenuSel <= FILE_SELECT_EXPERT_FILE_B)  // anything except FILE_SELECT_EXPERT_FILE_C
    {
        if (gFileSelectMenuSel == FILE_SELECT_FILE_A
         || gFileSelectMenuSel == FILE_SELECT_FILE_B
         || gFileSelectMenuSel == FILE_SELECT_FILE_C
         || gFileSelectMenuSel == FILE_SELECT_EWORLD)
        {
            if (gNewKeys & DPAD_RIGHT)
            {
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                gPrevFileSelectMenuSel = gFileSelectMenuSel;
                // skip over E-World button if it's not visible
                if (gPrevFileSelectMenuSel == FILE_SELECT_FILE_C && !gIsEWorldVisible_0300005D)
                    gFileSelectMenuSel++;
                gFileSelectMenuSel++;
            }
            else if ((gFileSelectMenuSel == FILE_SELECT_FILE_A
                   || gFileSelectMenuSel == FILE_SELECT_FILE_B
                   || gFileSelectMenuSel == FILE_SELECT_FILE_C)
             && (gNewKeys & DPAD_DOWN))
            {
                if (is_expert_unlocked(gFileSelectMenuSel))
                {
                    play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
                    gPrevFileSelectMenuSel = gFileSelectMenuSel;
                    gFileSelectMenuSel += FILE_SELECT_EXPERT_FILE_A;
                    gMainMenuState = MAIN_MENU_STATE_EXPERT;
                    return;
                }
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
            }
        }
        else
        {
            if (gNewKeys & DPAD_DOWN)
            {
                if (gFileSelectMenuSel == FILE_SELECT_OPTION_MENU)
                {
                    // jump down to FILE_SELECT_ERASE_DATA
                    play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
                    gPrevFileSelectMenuSel = gFileSelectMenuSel;
                    gFileSelectMenuSel++;
                }
                else
                {
                    play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
                }
            }
            if (gNewKeys & DPAD_RIGHT)
            {
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                gPrevFileSelectMenuSel = gFileSelectMenuSel;
                gFileSelectMenuSel = FILE_SELECT_FILE_A;
            }
        }
    }
    else  // FILE_SELECT_EXPERT_FILE_C
    {
        if (gNewKeys & DPAD_RIGHT)
        {
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            gFileSelectMenuSel = FILE_SELECT_FILE_A;
        }
    }

    // handle left and up navigation
    if (gFileSelectMenuSel != FILE_SELECT_FILE_A)
    {
        if (gFileSelectMenuSel == FILE_SELECT_FILE_A
         || gFileSelectMenuSel == FILE_SELECT_FILE_B
         || gFileSelectMenuSel == FILE_SELECT_FILE_C
         || gFileSelectMenuSel == FILE_SELECT_EWORLD
         || gFileSelectMenuSel == FILE_SELECT_OPTION_MENU)
        {
            if (gNewKeys & DPAD_LEFT)
            {
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                gPrevFileSelectMenuSel = gFileSelectMenuSel;
                // skip over E-World button if it's not visible
                if (gPrevFileSelectMenuSel == FILE_SELECT_OPTION_MENU && gIsEWorldVisible_0300005D == 0)
                    gFileSelectMenuSel--;
                gFileSelectMenuSel--;
            }
            if (gNewKeys & DPAD_UP)
                play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        }
        else if (gNewKeys & DPAD_UP)
        {
            play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            gFileSelectMenuSel--;
        }
        else if (gNewKeys & DPAD_LEFT)
        {
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            if (!gIsEWorldVisible_0300005D)
                gFileSelectMenuSel--;
            gFileSelectMenuSel -= FILE_SELECT_FILE_C;
        }
    }
    else
    {
        if (gNewKeys & DPAD_UP)
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        if (gNewKeys & DPAD_LEFT)
        {
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            gFileSelectMenuSel = FILE_SELECT_OPTION_MENU;
        }
    }
}

// Handles input for when the cursor is over an Expert button
static void handle_expert_button_input(void)
{
    if (gNewKeys & DPAD_UP)
    {
        play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
        gPrevFileSelectMenuSel = gFileSelectMenuSel;
        gFileSelectMenuSel -= FILE_SELECT_EXPERT_FILE_A;
        gMainMenuState = MAIN_MENU_STATE_MAIN;
    }
    else if (gNewKeys & DPAD_LEFT)
    {
        if (gFileSelectMenuSel > FILE_SELECT_EXPERT_FILE_A)
        {
            if (is_expert_unlocked(gFileSelectMenuSel - FILE_SELECT_EXPERT_FILE_B))
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
                gMainMenuState = 0;
            }
        }
        else
        {
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            gFileSelectMenuSel = FILE_SELECT_FILE_A;
            gMainMenuState = 0;
        }
    }
    else if (gNewKeys & DPAD_RIGHT)
    {
        if (gFileSelectMenuSel < FILE_SELECT_EXPERT_FILE_C)
        {
            if (is_expert_unlocked(gFileSelectMenuSel - 5))
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
                gMainMenuState = MAIN_MENU_STATE_MAIN;
            }
        }
        else
        {
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            gFileSelectMenuSel = FILE_SELECT_ERASE_DATA;
            gMainMenuState = MAIN_MENU_STATE_MAIN;
        }
    }

    if (gNewKeys & DPAD_DOWN)
        play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
    if (pressed_a_or_start_08034004())
    {
        play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
        gLevelType = LEVEL_TYPE_EXPERT_1_6;
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

// Handles input for selecting a file to erase
static void handle_erase_data_input(void)
{
    gBGLayerOffsets.bg1_y = -256;
    if (pressed_a_or_start_08034004())
    {
        u32 r1;

        if (gFileSelectMenuSel == FILE_SELECT_FILE_A
         || gFileSelectMenuSel == FILE_SELECT_FILE_B
         || gFileSelectMenuSel == FILE_SELECT_FILE_C)
            r1 = has_completed_first_level(gFileSelectMenuSel);
        else
            r1 = *gEWorldLevelCountPtr;
        if (!r1)
        {
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            gMainMenuState = MAIN_MENU_STATE_ERASE_DATA_CONFIRM;
            gUnknown_0300005C = MAIN_MENU_STATE_MAIN;
        }
    }
    else if (gNewKeys & B_BUTTON)
    {
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        gPrevFileSelectMenuSel = gFileSelectMenuSel;
        gFileSelectMenuSel = FILE_SELECT_FILE_A;
        gMainMenuState = MAIN_MENU_STATE_MAIN;
        enable_disable_file_shadow_effect(FALSE);
    }
    else
    {
        if (gNewKeys & (DPAD_UP|DPAD_DOWN))
            play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
        if (gNewKeys & DPAD_RIGHT)
        {
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            if (gFileSelectMenuSel < gIsEWorldVisible_0300005D + 2)
                gFileSelectMenuSel++;
            else
                gFileSelectMenuSel = 0;
            if (gIsEWorldVisible_0300005D != 0)
            {
                s8 sp0[32] = {254, 46, 94, 142};
                gBGLayerOffsets.bg2_x = -sp0[gFileSelectMenuSel];
            }
            else
            {
                s8 sp0[32] = {8, 65, 122};
                gBGLayerOffsets.bg2_x = -sp0[gFileSelectMenuSel];
            }
            if (is_expert_unlocked(gFileSelectMenuSel))
                gBGLayerOffsets.bg2_y = -256;
            else
                gBGLayerOffsets.bg2_y = 0;
        }
        else if (gNewKeys & DPAD_LEFT)
        {
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            if (gFileSelectMenuSel > 0)
                gFileSelectMenuSel--;
            else
                gFileSelectMenuSel = gIsEWorldVisible_0300005D + 2;
            if (gIsEWorldVisible_0300005D)
            {
                s8 sp0[32] = {254, 46, 94, 142};
                gBGLayerOffsets.bg2_x = -sp0[gFileSelectMenuSel];
            }
            else
            {
                s8 sp0[32] = {8, 65, 122};
                gBGLayerOffsets.bg2_x = -sp0[gFileSelectMenuSel];
            }
            if (is_expert_unlocked(gFileSelectMenuSel))
                gBGLayerOffsets.bg2_y = -256;
            else
                gBGLayerOffsets.bg2_y = 0;
        }
    }
}

// Handles input for the Erase Data confirmation dialog
static void handle_erase_data_confirm_input(void)
{
    s16 i;

    gBGLayerOffsets.bg0_y = -256;
    gBGLayerOffsets.bg1_y = -256;
    if (pressed_a_or_start_08034004())
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
                    write_flash_sector_0802A164();
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
            gMainMenuState = MAIN_MENU_STATE_MAIN;
            enable_disable_file_shadow_effect(FALSE);
        }
        else
        {
            play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
            gPrevFileSelectMenuSel = gFileSelectMenuSel;
            gFileSelectMenuSel = FILE_SELECT_FILE_A;
            gMainMenuState = MAIN_MENU_STATE_MAIN;
            enable_disable_file_shadow_effect(FALSE);
        }
    }
    else if (gNewKeys & B_BUTTON)
    {
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        gPrevFileSelectMenuSel = gFileSelectMenuSel;
        gFileSelectMenuSel = FILE_SELECT_FILE_A;
        gMainMenuState = MAIN_MENU_STATE_MAIN;
        enable_disable_file_shadow_effect(FALSE);
    }
    else if (gNewKeys & DPAD_RIGHT)
    {
        if (gUnknown_0300005C == 0)
        {
            gUnknown_0300005C++;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gNewKeys & DPAD_LEFT)
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
    update_fade_from_black();
    if (gIsFadeInProgress == 0)
        sub_0801B310();
    if (gMainMenuInitDelayTimer > 20)
    {
        switch (gMainMenuState)
        {
        case MAIN_MENU_STATE_MAIN:
            handle_main_menu_input();
            break;
        case MAIN_MENU_STATE_EXPERT:
            handle_expert_button_input();
            break;
        case MAIN_MENU_STATE_ERASE_DATA:
            handle_erase_data_input();
            break;
        case MAIN_MENU_STATE_ERASE_DATA_CONFIRM:
            handle_erase_data_confirm_input();
            break;
        }
    }
    r5 = gIsEWorldVisible_0300005D;
    sub_08038130(0);
    if (gIsFadeInProgress == 0)
    {
        if (sub_08038228(0) != 0 || *gEWorldLevelCountPtr != 0)
            gIsEWorldVisible_0300005D = 1;
        else
            gIsEWorldVisible_0300005D = 0;
        if (gUnknown_03000062 != 0)
            gIsEWorldVisible_0300005D = 1;
    }
    if (r5 != gIsEWorldVisible_0300005D)
    {
        if (gIsEWorldVisible_0300005D != 0)
        {
            if (gUnknown_03000063 == 0 && *gEWorldLevelCountPtr == 0)
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
    if (gMainMenuInitDelayTimer <= 20)
        gMainMenuInitDelayTimer++;

    update_sprite_frame_anim(&gMainMenuSpriteFrameNum, &gMainMenuSpriteFrameTimer, gUnknown_085FEFE4, 18);
    update_sprite_frame_anim(&gMainMenuCrownFrameNum, &gMainMenuCrownFrameTimer, gUnknown_08617030, 2);
}

static void sub_08012568(void)
{
    s16 x, y;
    int dummy;

    if (gIsEWorldVisible_0300005D != 0)
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

static void sub_08012680(void)
{
    s16 x, y;
    int dummy;

    if (gIsEWorldVisible_0300005D != 0)
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

static void sub_08012798(void)
{
    u8 arr[] = { 4, 6, 8, 12, 10, 10 };
    s16 x, y;
    u8 paletteNum;
    int dummy;

    if (gIsEWorldVisible_0300005D != 0)
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

static void sub_080128EC(void)
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

static void sub_080129C0(void)
{
    u8 arr[] = { 4, 6, 8, 12, 10, 10 };
    s16 x, y;
    u8 paletteNum;

    if (gIsEWorldVisible_0300005D != 0)
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
        DmaCopy32(3, &gfxFileFrameNormalTopOAM, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000042;
        gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
        gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y + 248;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gSomeOamIndex_03000040++;

        DmaCopy32(3, &gfxFileFrameNormalBottomOAM, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
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
        DmaCopy32(3, &gfxFileFrameNewGameTopOAM, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000042;
        gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
        gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y + 248;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gSomeOamIndex_03000040++;

        DmaCopy32(3, &gfxFileFrameNewGameBottomOAM, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000044;
        gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
        gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y + 56;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gSomeOamIndex_03000040++;
    }
}

static void copy_main_menu_sprite_tiles_to_vram(void)
{
    DmaCopy32(3, gfxFileBackground4bpp, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x800);
    gUnknown_0300004E = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 64;
    gObjVRAMCopyOffset_0300192C += 0x800;

    DmaCopy32(3, gfxFileBackground4bpp + gUnknown_08615BB4[1].index * 0x800, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x800);
    gUnknown_03000050 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 64;
    gObjVRAMCopyOffset_0300192C += 0x800;

    DmaCopy32(3, gfxExpert4bpp, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x400);
    gUnknown_03000052 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 32;
    gObjVRAMCopyOffset_0300192C += 0x400;

    if (has_completed_first_level(gFileSelectMenuSel) || gFileSelectMenuSel == FILE_SELECT_EWORLD)
    {
        DmaCopy32(3, gfxFileFrameNormalTop4bpp + gUnknown_0860C0B4[gMainMenuSpriteFrameNum].index * 0x800, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x800);
        gUnknown_03000042 = gVRAMCurrTileNum_03001930;
        gVRAMCurrTileNum_03001930 += 64;
        gObjVRAMCopyOffset_0300192C += 0x800;

        DmaCopy32(3, gfxFileFrameNormalBottom4bpp + gUnknown_0860A224[gMainMenuSpriteFrameNum].index * 0x400, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x400);
        gUnknown_03000044 = gVRAMCurrTileNum_03001930;
        gVRAMCurrTileNum_03001930 += 32;
        gObjVRAMCopyOffset_0300192C += 0x400;
    }
    else
    {
        DmaCopy32(3, gfxFileFrameNewGameTop4bpp + gUnknown_08602D04[gMainMenuSpriteFrameNum].index * 0x800, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x800);
        gUnknown_03000042 = gVRAMCurrTileNum_03001930;
        gVRAMCurrTileNum_03001930 += 64;
        gObjVRAMCopyOffset_0300192C += 0x800;

        DmaCopy32(3, gfxFileFrameNewGameBottom4bpp + gUnknown_08600E74[gMainMenuSpriteFrameNum].index * 0x400, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x400);
        gUnknown_03000044 = gVRAMCurrTileNum_03001930;
        gVRAMCurrTileNum_03001930 += 32;
        gObjVRAMCopyOffset_0300192C += 0x400;
    }

    // frame
    DmaCopy32(3, gUnknown_08606A24 + gUnknown_08606794[gMainMenuSpriteFrameNum].index * 0x800, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x800);
    gUnknown_03000046 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 64;
    gObjVRAMCopyOffset_0300192C += 0x800;

    // frame
    DmaCopy32(3, gUnknown_085FB7E4 + gUnknown_085FB554[gMainMenuSpriteFrameNum].index * 0x800, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x800);
    gUnknown_03000048 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 64;
    gObjVRAMCopyOffset_0300192C += 0x800;

    // Expert frame
    DmaCopy32(3, gUnknown_085FF274 + gUnknown_085FEFE4[gMainMenuSpriteFrameNum].index * 0x400, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x400);
    gUnknown_0300004C = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 32;
    gObjVRAMCopyOffset_0300192C += 0x400;

    // Confirm frame
    DmaCopy32(3, gUnknown_0860FDD4 + gUnknown_0860FB44[gMainMenuSpriteFrameNum].index * 0x400, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x400);
    gUnknown_0300004A = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 32;
    gObjVRAMCopyOffset_0300192C += 0x400;

    // Crown
    DmaCopy32(3, gfxGoldCrown4bpp + gUnknown_08617030[gMainMenuCrownFrameNum].index * 0x80, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x80);
    gUnknown_03000054.unk0 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 4;
    gObjVRAMCopyOffset_0300192C += 0x80;

    // Crown
    DmaCopy32(3, gfxBronzeCrown4bpp + gUnknown_08618064[gMainMenuCrownFrameNum].index * 0x80, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 0x80);
    gUnknown_03000054.unk2 = gVRAMCurrTileNum_03001930;
    gVRAMCurrTileNum_03001930 += 4;
    gObjVRAMCopyOffset_0300192C += 0x80;
}

// used for the star count
static void print_digits_small(u8 x, u8 y, u8 digits, u16 value, u8 paletteNumOffset)
{
    int i;
    int x2 = x + (digits - 1) * 8;

    for (i = 0; i < digits; i++)
    {
        DmaCopy32(3, gfxMainMenuDigitsSmall4bpp + (value % 10) * 32, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 32);
        DmaCopy32(3, &gfxMainMenuDigitsSmallOAM, &gOamBuffer[gSomeOamIndex_03000040], 8);
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gVRAMCurrTileNum_03001930;
        gOamBuffer[gSomeOamIndex_03000040].x = x2 - i * 5;
        gOamBuffer[gSomeOamIndex_03000040].y = y;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum += paletteNumOffset;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gVRAMCurrTileNum_03001930++;
        gObjVRAMCopyOffset_0300192C += 32;
        gSomeOamIndex_03000040++;
        value /= 10;
    }
}

// used for the life count and number of E-World levels loaded
static void print_digits_large(u8 x, u8 y, u8 digits, u16 value, u8 paletteNumOffset)
{
    int i;
    int x2 = x + (digits - 1) * 8;

    for (i = 0; i < digits; i++)
    {
        DmaCopy32(3, gfxMainMenuDigitsLarge4bpp + (value % 10) * 64, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 64);
        DmaCopy32(3, &gfxMainMenuDigitsLargeOAM, &gOamBuffer[gSomeOamIndex_03000040], 8);
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gVRAMCurrTileNum_03001930;
        gOamBuffer[gSomeOamIndex_03000040].x = x2 - i * 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum += paletteNumOffset;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gVRAMCurrTileNum_03001930 += 2;
        gObjVRAMCopyOffset_0300192C += 64;
        gSomeOamIndex_03000040++;
        value /= 10;
    }
}

// used for the current world and level number
static void print_digits_medium(u8 x, u8 y, u8 digits, u16 value, u8 paletteNumOffset)
{
    int i;
    int x2 = x + (digits - 1) * 8;

    for (i = 0; i < digits; i++)
    {
        DmaCopy32(3, gfxMainMenuDigitsMedium4bpp + (value % 10) * 32, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 32);
        DmaCopy32(3, &gfxMainMenuDigitsMediumOAM, &gOamBuffer[gSomeOamIndex_03000040], 8);
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gVRAMCurrTileNum_03001930;
        gOamBuffer[gSomeOamIndex_03000040].x = x2 - i * 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum += paletteNumOffset;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gVRAMCurrTileNum_03001930++;
        gObjVRAMCopyOffset_0300192C += 32;
        gSomeOamIndex_03000040++;
        value /= 10;
    }
}

static void print_digits_unused(u8 x, u8 y, u8 digits, u16 value)  // unused
{
    int i;
    int x2 = x + (digits - 1) * 8;

    for (i = 0; i < digits; i++)
    {
        DmaCopy32(3, gfxUnusedDigits4bpp + (value % 10) * 32, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), 32);
        DmaCopy32(3, &gfxUnusedDigitsOAM, &gOamBuffer[gSomeOamIndex_03000040], 8);
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gVRAMCurrTileNum_03001930;
        gOamBuffer[gSomeOamIndex_03000040].x = x2 - i * 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gVRAMCurrTileNum_03001930++;
        gObjVRAMCopyOffset_0300192C += 32;
        gSomeOamIndex_03000040++;
        value /= 10;
    }
}

static void add_sprite_0801369C(struct SpriteTemplate *template, u16 baseTileNum, u8 arg2, int paletteNum, s16 x, s16 y)
{
    DmaCopy32(3, template->oamData, &gOamBuffer[gSomeOamIndex_03000040], 8);
    gOamBuffer[gSomeOamIndex_03000040].tileNum += baseTileNum;
    gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
    gOamBuffer[gSomeOamIndex_03000040].x = x + template->subSprites[arg2].x_offset;
    gOamBuffer[gSomeOamIndex_03000040].y = y + template->subSprites[arg2].y_offset;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gSomeOamIndex_03000040++;
}

static void add_sprite_080137A0(struct SpriteTemplate *template, u16 baseTileNum, u8 index, s8 paletteNum, u8 hFlip, s16 x, s16 y)
{
    DmaCopy32(3, template->oamData, &gOamBuffer[gSomeOamIndex_03000040], 8);
    gOamBuffer[gSomeOamIndex_03000040].tileNum += baseTileNum;
    gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
    gOamBuffer[gSomeOamIndex_03000040].x = x + template->subSprites[index].x_offset;
    gOamBuffer[gSomeOamIndex_03000040].y = y + template->subSprites[index].y_offset;
    (*(struct OamData_alt *)&gOamBuffer[gSomeOamIndex_03000040]).matrixNum_hflip = hFlip;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gSomeOamIndex_03000040++;
}

static void add_sprite_080138D0(struct SpriteTemplate *template, u8 index, s8 paletteNum, s16 x, s16 y)
{
    DmaCopy32(3, template->tileData + template->subSprites[index].index * template->unk4 * 4, (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C), template->subSpriteSize);
    DmaCopy32(3, template->oamData, &gOamBuffer[gSomeOamIndex_03000040], 8);
    gOamBuffer[gSomeOamIndex_03000040].tileNum += gVRAMCurrTileNum_03001930;
    gOamBuffer[gSomeOamIndex_03000040].x = x + template->subSprites[index].x_offset;
    gOamBuffer[gSomeOamIndex_03000040].y = y + template->subSprites[index].y_offset;
    if (paletteNum > 1)
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
    else
        gOamBuffer[gSomeOamIndex_03000040].paletteNum += paletteNum;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gVRAMCurrTileNum_03001930 += template->unk6;
    gObjVRAMCopyOffset_0300192C += template->subSpriteSize;
    gSomeOamIndex_03000040++;
}

#define PRINT_STARS(fileNum, x, y, d) \
{ \
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum]; \
    u8 stars = saveFile->stars; \
    print_digits_small(x + 15, y + 48, 2, stars, d); \
}

#define PRINT_LEVELS(fileNum, x, y, d) \
{ \
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum]; \
    u8 levels = saveFile->levelsCompleted; \
    print_digits_small(x + 25, y + 55, 2, levels, d); \
}

#define PRINT_LIVES(fileNum, x, y, d, e) \
{ \
    s8 fileNum_ = fileNum; \
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum_]; \
    u16 lives = saveFile->lives; \
    print_digits_large(x + 24, y + 63, 2, lives, d); \
    add_sprite_080138D0(&gUnknown_08078760, e, d, x, y + 12); \
    add_sprite_080138D0(&sFileInfoBoxSpriteTemplate, 0, d, x, y + 44); \
}

static void sub_08013A48(u8 fileNum, u8 arg1, s8 arg2, s16 x, s16 y)
{
    u8 spC = (arg1 == 0);

    if (fileNum == 3)  // E-World
    {
        struct SpriteTemplate *r0 = sFileIconSpriteTemplates;
        add_sprite_080138D0(&r0[3], 0, arg2, x + 6, y + 6);
        print_digits_large(x + 14, y + 46, 2, *gEWorldLevelCountPtr, 0);
        add_sprite_080138D0(&sFileInfoBoxSpriteTemplate, 2, arg2, x, y + 44);
    }
    else
    {
        add_sprite_080138D0(&sFileIconSpriteTemplates[fileNum], fileNum, arg2, x + 13, y + 4);
        if (!has_completed_first_level(fileNum))
        {
            add_sprite_080138D0(&gUnknown_08078760, 2, arg2, x, y + 12);
            add_sprite_080138D0(&sFileInfoBoxSpriteTemplate, 1, spC, x, y + 44);
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
            add_sprite_080138D0(&sPlusMainSpriteTemplate, levelType, spC, x + 6, y + 24);
            print_digits_medium(x + gUnknown_08078640[level].x, y + gUnknown_08078640[level].y, 1, world + 1, spC);
            add_sprite_080138D0(&gUnknown_080787F0, 10, spC, x + gUnknown_08078680[level].x, y + gUnknown_08078680[level].y);
            if (level <= 5)
                print_digits_medium(x + gUnknown_080786C0[level].x, y + gUnknown_080786C0[level].y, 1, level + 1, spC);
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

static void sub_08013EE0(u8 arg0)
{
    s8 sp8[] = { 4, 6, 8, 12, 10, 10 };
    s8 sp10[] = { 5, 7, 9, 13, 11, 11 };
    u8 i;

    for (i = arg0; i < 9; i++)
    {
        if (is_expert_unlocked(i - arg0))
        {
            if (i == gFileSelectMenuSel)
                add_sprite_0801369C(&sExpertSpriteTemplate, gUnknown_03000052, 0, sp8[i - arg0], gUnknown_08078610[i - arg0].x, gUnknown_08078610[i - arg0].y);
            else
                add_sprite_0801369C(&sExpertSpriteTemplate, gUnknown_03000052, 0, sp10[i - arg0], gUnknown_08078610[i - arg0].x, gUnknown_08078610[i - arg0].y);
        }
    }
}

static void sub_08013FFC(u8 arg0)
{
    s8 sp8[] = { 4, 6, 8, 2, 10, 10 };
    s8 sp10[] = { 5, 7, 9, 2, 11, 11 };
    u8 i;

    for (i = arg0; i < 9; i++)
    {
        if (is_expert_unlocked(i - arg0))
        {
            if (i == gFileSelectMenuSel)
                add_sprite_0801369C(&sExpertSpriteTemplate, gUnknown_03000052, 0, sp8[i - arg0], gUnknown_08078628[i - arg0].x, gUnknown_08078628[i - arg0].y);
            else
                add_sprite_0801369C(&sExpertSpriteTemplate, gUnknown_03000052, 0, sp10[i - arg0], gUnknown_08078628[i - arg0].x, gUnknown_08078628[i - arg0].y);
        }
    }
}

static void sub_08014118(void)
{
    u8 i;

    if (gIsEWorldVisible_0300005D != 0)
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
                add_sprite_0801369C(&sFileBackgroundSpriteTemplate, gUnknown_0300004E, 0, sp8[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y);
                add_sprite_0801369C(&sFileBackgroundSpriteTemplate, gUnknown_03000050, 1, sp8[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y + 64);
            }
            else
            {
                sub_08013A48(i, 0, sp20[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y);
                add_sprite_0801369C(&sFileBackgroundSpriteTemplate, gUnknown_0300004E, 0, sp10[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y);
                add_sprite_0801369C(&sFileBackgroundSpriteTemplate, gUnknown_03000050, 1, sp10[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y + 64);
            }
        }
        if (i == gFileSelectMenuSel)
            add_sprite_080138D0(&sOptionMenuEraseDataButtonsSpriteTemplate, 0, sp8[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y);
        else
            add_sprite_080138D0(&sOptionMenuEraseDataButtonsSpriteTemplate, 0, sp10[i], gUnknown_080785E0[i].x, gUnknown_080785E0[i].y);
        if (i + 1 == gFileSelectMenuSel)
            add_sprite_080138D0(&sOptionMenuEraseDataButtonsSpriteTemplate, 1, sp8[i], gUnknown_080785E0[i + 1].x, gUnknown_080785E0[i + 1].y);
        else
            add_sprite_080138D0(&sOptionMenuEraseDataButtonsSpriteTemplate, 1, sp10[i], gUnknown_080785E0[i + 1].x, gUnknown_080785E0[i + 1].y);
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
                add_sprite_0801369C(&sFileBackgroundSpriteTemplate, gUnknown_0300004E, 0, sp8[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y);
                add_sprite_0801369C(&sFileBackgroundSpriteTemplate, gUnknown_03000050, 1, sp8[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y + 64);
            }
            else
            {
                sub_08013A48(i, 0, sp10[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y);
                add_sprite_0801369C(&sFileBackgroundSpriteTemplate, gUnknown_0300004E, 0, sp10[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y);
                add_sprite_0801369C(&sFileBackgroundSpriteTemplate, gUnknown_03000050, 1, sp10[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y + 64);
            }
        }
        i++;
        if (i == gFileSelectMenuSel)
            add_sprite_080138D0(&sOptionMenuEraseDataButtonsSpriteTemplate, 0, sp8[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y);
        else
            add_sprite_080138D0(&sOptionMenuEraseDataButtonsSpriteTemplate, 0, sp10[i], gUnknown_080785B0[i].x, gUnknown_080785B0[i].y);
        if (i + 1 == gFileSelectMenuSel)
            add_sprite_080138D0(&sOptionMenuEraseDataButtonsSpriteTemplate, 1, sp8[i], gUnknown_080785B0[i + 1].x, gUnknown_080785B0[i + 1].y);
        else
            add_sprite_080138D0(&sOptionMenuEraseDataButtonsSpriteTemplate, 1, sp10[i], gUnknown_080785B0[i + 1].x, gUnknown_080785B0[i + 1].y);
        sub_08013EE0(i + 2);
    }
}

static void sub_0801456C(void)
{
    s16 i;
    s16 r6;

    if (gIsEWorldVisible_0300005D)
    {
        for (i = 0; i < 3; i++)
        {
            if (gUnknown_03000066[i] != 0)
            {
                r6 = gUnknown_03000066[i] - 1;
                if (r6 == 2)
                {
                    struct SpriteTemplate *arr = sCrownSpriteTemplate1;
                    add_sprite_080137A0(&sCrownSpriteTemplate2, gUnknown_03000054.unk0, 0, 3, 0, sCrownSpriteTemplate3[i].x, arr[i].y);
                    add_sprite_080137A0(&sCrownSpriteTemplate2, gUnknown_03000054.unk0, 0, 3, 1, sCrownSpriteTemplate3[i].x + 16, arr[i].y);
                }
                else
                {
                    add_sprite_080137A0(&sCrownSpriteTemplate1[r6], gUnknown_03000054.unk2, 0, r6 ^ 1, 0, sCrownSpriteTemplate3[i].x, sCrownSpriteTemplate1[i].y);
                    add_sprite_080137A0(&sCrownSpriteTemplate1[r6], gUnknown_03000054.unk2, 0, r6 ^ 1, 1, sCrownSpriteTemplate3[i].x + 16, sCrownSpriteTemplate1[i].y);
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
                    struct SpriteTemplate *arr = sCrownSpriteTemplate1;
                    asm(""::"r"(arr));  // needed to match
                    add_sprite_080137A0(&sCrownSpriteTemplate2, gUnknown_03000054.unk0, 0, 3, 0, sCrownSpriteTemplate1[i].x, arr[i].y);
                    add_sprite_080137A0(&sCrownSpriteTemplate2, gUnknown_03000054.unk0, 0, 3, 1, sCrownSpriteTemplate1[i].x + 16, arr[i].y);
                }
                else
                {
                    add_sprite_080137A0(&sCrownSpriteTemplate1[r6], gUnknown_03000054.unk2, 0, r6 ^ 1, 0, sCrownSpriteTemplate1[i].x, sCrownSpriteTemplate1[i].y);
                    add_sprite_080137A0(&sCrownSpriteTemplate1[r6], gUnknown_03000054.unk2, 0, r6 ^ 1, 1, sCrownSpriteTemplate1[i].x + 16, sCrownSpriteTemplate1[i].y);
                }
            }
        }
    }
}

void main_menu_loop(void)
{
    gVRAMCurrTileNum_03001930 = gObjVRAMCopyOffset_0300192C = gSomeOamIndex_03000040 = 0;
    DmaFill32(3, 0xA0, gOamBuffer, sizeof(gOamBuffer));
    copy_main_menu_sprite_tiles_to_vram();
    if (gIsFadeInProgress == 0)
        sub_0801B2CC(gUnknown_085FEFE4[gMainMenuSpriteFrameNum].unk8);
    if (gMainMenuState == MAIN_MENU_STATE_ERASE_DATA_CONFIRM)
        sub_080128EC();
    else if (gMainMenuState == MAIN_MENU_STATE_ERASE_DATA)
    {
        REG_BLDCNT = BLDCNT_EFF_ALPHA | BLDCNT_BG2_FIRST | BLDCNT_BG0_SECOND | BLDCNT_BG1_SECOND | BLDCNT_BG3_SECOND | BLDCNT_OBJ_SECOND | BLDCNT_BD_SECOND;
        REG_BLDALPHA = 0x0808;
    }
    else if (gFileSelectMenuSel <= FILE_SELECT_EWORLD)
        sub_080129C0();
    else if (gFileSelectMenuSel == FILE_SELECT_OPTION_MENU)
        sub_08012568();
    else if (gFileSelectMenuSel == FILE_SELECT_ERASE_DATA)
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
