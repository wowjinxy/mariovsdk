#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "savefile.h"

#define gUnknown_030009C8 gPreviousMainState
#define pSelectedSaveFileNum gSelectedSaveFileNumPtr
#define gUnknown_030012A0 gCameraHorizontalOffset
#define gUnknown_03001710 gCameraVerticalOffset
#define gFileSelectGfxConfig gMainMenuData
#define gBGOffsets_03001730 gBGLayerOffsets
#define gUnknown_03000B54 gGeneralTimer
#define gUnknown_03000B58 gCurrentWorld
#define gUnknown_03000BBC gLivesCount
#define gUnknown_03000B74 gNextLevelID
#define gUnknown_03000B80 gLevelType
#define goto_state_080070E8 change_main_state
#define init_movie_0802D468 movie_player_setup_data
#define gUnknown_03000059 gPrevFileSelectMenuSel
#define bg0vofs bg0_y
#define bg1vofs bg1_y
#define bg2hofs bg2_x
#define bg2vofs bg2_y

struct Struct0860A4B4
{
    u8 unk0;
    u8 unk1;
    u8 filler2[0x24-0x2];
};  // size = 0x24

extern struct Struct0860A4B4 gUnknown_085FEFE4[];
extern struct Struct0860A4B4 gUnknown_08617030[];
extern struct GraphicsConfig gMainMenuData;
extern u8 gUnknown_080A8668;

struct Coords32
{
    s32 x;
    s32 y;
};

extern struct Coords32 gUnknown_080785E0[];
extern struct Coords32 gUnknown_080785B0[];
extern struct Coords32 gUnknown_08078610[];
extern struct Coords32 gUnknown_08078628[];

extern struct OamData gUnknown_08606A1C;
extern struct OamData gUnknown_085FB7DC;
extern struct OamData gUnknown_085FF26C;
extern struct OamData gUnknown_0860FDCC;
extern struct OamData gUnknown_0860C33C;
extern struct OamData gUnknown_0860A4AC;
extern struct OamData gUnknown_08602F8C;
extern struct OamData gUnknown_086010FC;

extern u8 gUnknown_08615C04[];
extern u8 gUnknown_08614764[];
extern u8 gUnknown_0860C344[];
extern struct
{
    u8 filler0[0x24];
    u8 unk24;
} gUnknown_08615BB4;
extern struct Struct0860A4B4 gUnknown_0860C0B4[];
extern u8 gUnknown_0860A4B4[];

extern struct Struct0860A4B4 gUnknown_0860A224[];
extern u8 gUnknown_08602F94[];

extern struct Struct0860A4B4 gUnknown_08602D04[];
extern u8 gUnknown_08601104[];

extern struct Struct0860A4B4 gUnknown_08600E74[];
extern u8 gUnknown_08606A24[];
extern struct Struct0860A4B4 gUnknown_08606794[];
extern u8 gUnknown_085FB7E4[];
extern struct Struct0860A4B4 gUnknown_085FB554[];
extern u8 gUnknown_085FF274[];
extern u8 gUnknown_0860FDD4[];
extern struct Struct0860A4B4 gUnknown_0860FB44[];
extern u8 gUnknown_08617080[];
extern u8 gUnknown_086180B4[];
extern struct Struct0860A4B4 gUnknown_08618064[];
extern u8 gUnknown_08617F24[];
extern struct OamData gUnknown_08617F1C;
extern u8 gUnknown_086172F0[];
extern struct OamData gUnknown_086172E8;
extern u8 gUnknown_08617B04[];
extern struct OamData gUnknown_08617AFC;
extern u8 gUnknown_08617830[];
extern struct OamData gUnknown_08617828;

struct Struct08013548_child
{
    u8 unk0;
    u8 filler1[1];
    s8 unk2;  // x
    s8 unk3;  // y
    u8 filler4[0x24-0x4];
};

struct Struct08013548  // maybe the same as Struct0860A4B4?
{
    u8 filler0[4];
    u16 unk4;
    u16 unk6;
    u16 unk8;  // size
    u8 fillerA[0xC-0xA];
    struct Struct08013548_child *unkC;
    struct OamData *unk10;  // oam
    u8 *unk14;  // tile data
};  // size = 0x24

extern struct
{
    struct Struct08013548 unk0[2];
    struct Struct08013548 unk48;  // maybe part of the same array?
} gUnknown_08078700;

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

static inline u8 inlinefunc2(u8 fileNum)
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
    gUnknown_03000BBC = lives;
}

static inline void inlinefunc5(u8 fileNum)
{
    u8 *r6 = &gUnknown_03000B58;
    u8 *r3 = &gUnknown_03000B74;
    u8 *r4 = &gUnknown_03000B80;
    struct SaveFile *r1 = &gSaveFilesPtr[fileNum];
    u8 r7 = r1->unk2 & 0xF;
    *r4 = r1->unk3;
    *r3 = r7;
    *r6 = (r1->unk2 >> 4) & 7;
    gUnknown_03000B80 = r1->unk3;
}

void main_menu_init_callback(void)
{
    s16 i;

    arena_restore_head(0);
    gUnknown_03001740 = 0;
    gUnknown_0300005D = gUnknown_03000062 = 0;
    if (*gUnknown_0807CA94 != 0)
        gUnknown_0300005D = gUnknown_03000062 = 1;
    if (gUnknown_030009C8 == 4)
        gFileSelectMenuSel = FILE_SELECT_OPTION_MENU;
    else if ((gUnknown_030009C8 == 24 || gUnknown_030009C8 == 25) && gUnknown_0300005D != 0)
        gFileSelectMenuSel = FILE_SELECT_EWORLD;
    else if ((*gUnknown_080788F8 & 1) && gUnknown_0300005D != 0)
        gFileSelectMenuSel = gPrevFileSelectMenuSel = FILE_SELECT_EWORLD;
    else
        gFileSelectMenuSel = gPrevFileSelectMenuSel = *pSelectedSaveFileNum;
    gUnknown_0300005B = 0;
    gUnknown_0300005E = 0;
    gUnknown_0300005F = gUnknown_085FEFE4[0].unk1;
    gUnknown_03000060 = 0;
    gUnknown_03000061 = gUnknown_08617030[0].unk1;
    gUnknown_03000064 = 0;
    gUnknown_03000065 = 0;
    gUnknown_030012A0 = 0;
    gUnknown_03001710 = 0;
    load_graphics_config_bg2_08032EB8(&gFileSelectGfxConfig);
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    if (sub_08071FE4() != 10)
        sub_0807204C(10, 0x80, 1);
    set_blend_regs_08029CDC(gFileSelectGfxConfig.bldCnt, gFileSelectGfxConfig.bldAlpha, gFileSelectGfxConfig.bldY);
    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    load_predefined_palette(1, LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
    CpuFill16(0, &gBGOffsets_03001730, 16);
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
            s8 sp0[32] = {254, 46, 94, 142};  //gUnknown_0807638C
            gBGOffsets_03001730.bg2_x = -sp0[gFileSelectMenuSel];
        }
        else
        {
            s8 sp0[32] = {8, 65, 122};  //gUnknown_080763AC
            gBGOffsets_03001730.bg2_x = -sp0[gFileSelectMenuSel];
        }
        if (inlinefunc(gFileSelectMenuSel))
            gBGOffsets_03001730.bg2_y = 0xFF00;
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
        REG_BLDCNT = BLDCNT_EFF_ALPHA | BLDCNT_BG2_FIRST | BLDCNT_BG0_SECOND | BLDCNT_BG1_SECOND | BLDCNT_BG3_SECOND | BLDCNT_OBJ_SECOND | BLDCNT_BD_SECOND;
        REG_BLDALPHA = 0x0808;
    }
    else
    {
        gBGOffsets_03001730.bg1_y = 0;
        gBGOffsets_03001730.bg2_y = 0;
        gBGOffsets_03001730.bg2_x = 0;
        gBGOffsets_03001730.bg0_y = 0;
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
                if (inlinefunc2(i))
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
            goto_state_080070E8(MAIN_STATE_OPTION_MENU, 1);
            return;
        }
        else if (gFileSelectMenuSel == FILE_SELECT_EWORLD)
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 0x80, 0);
            goto_state_080070E8(29, 1);
            return;
        }
        else if (gFileSelectMenuSel <= FILE_SELECT_FILE_C)  // files
        {
            u8 one;

            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 0x80, 0);
            *pSelectedSaveFileNum = gFileSelectMenuSel;
            inlinefunc5(*pSelectedSaveFileNum);
            inlinefunc4(*pSelectedSaveFileNum);
            if (gUnknown_03000B80 == 0)
                gUnknown_03000B74 = gUnknown_03000B74 << 1;
            if (get_level_stats_0800FE2C(0, 0, 0, &spC))
            {
                goto_state_080070E8(MAIN_STATE_LEVEL_SELECT, 1);
            }
            else
            {
                init_movie_0802D468(3, 41, MAIN_STATE_LEVEL_SELECT, 1);
                goto_state_080070E8(MAIN_STATE_MOVIE, 1);
                one = 1;
                inlinefunc3(*pSelectedSaveFileNum, one);
                if (gUnknown_03000B50 == 1)
                    sub_0802A164();
            }
            return;
        }
    }
    else if (gSomeKeys_030012E8 & B_BUTTON)
    {
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 0x80, 0);
        goto_state_080070E8(MAIN_STATE_TITLE_SCREEN, 1);
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
            gFileSelectMenuSel -= 2;
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
            gFileSelectMenuSel = 4;
        }
    }
}

void sub_08011CB4(void)
{
    if (gSomeKeys_030012E8 & DPAD_UP)
    {
        play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
        gUnknown_03000059 = gFileSelectMenuSel;
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
                gUnknown_03000059 = gFileSelectMenuSel;
                gFileSelectMenuSel--;
            }
            else
            {
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                gUnknown_03000059 = gFileSelectMenuSel;
                gFileSelectMenuSel = 0;
                gUnknown_0300005B = 0;
            }
        }
        else
        {
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            gUnknown_03000059 = gFileSelectMenuSel;
            gFileSelectMenuSel = 0;
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
                gUnknown_03000059 = gFileSelectMenuSel;
                gFileSelectMenuSel++;
            }
            else
            {
                play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
                gUnknown_03000059 = gFileSelectMenuSel;
                gFileSelectMenuSel = 5;
                gUnknown_0300005B = 0;
            }
        }
        else
        {
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            gUnknown_03000059 = gFileSelectMenuSel;
            gFileSelectMenuSel = 5;
            gUnknown_0300005B = 0;
        }
    }

    if (gSomeKeys_030012E8 & DPAD_DOWN)
        play_sound_effect_08071990(SE_ERROR, 8, 16, 64, 0, 128, 0);
    if (sub_08034004())
    {
        play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
        gUnknown_03000B80 = 2;
        if (gFileSelectMenuSel == 3)
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            goto_state_080070E8(29, 1);
        }
        else
        {
            *pSelectedSaveFileNum = gFileSelectMenuSel - 6;
            gUnknown_03000B58 = 0;
            gUnknown_03000B74 = 0;
            goto_state_080070E8(MAIN_STATE_EXPERT_LEVEL_SELECT, 1);
        }
    }
}

void sub_08011F60(void)
{
    gBGOffsets_03001730.bg1vofs = 0xFF00;
    if (sub_08034004())
    {
        u32 r1;

        if (gFileSelectMenuSel <= 2)
            r1 = inlinefunc2(gFileSelectMenuSel);
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
        gUnknown_03000059 = gFileSelectMenuSel;
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
            gUnknown_03000059 = gFileSelectMenuSel;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            if (gFileSelectMenuSel < gUnknown_0300005D + 2)
                gFileSelectMenuSel++;
            else
                gFileSelectMenuSel = 0;
            if (gUnknown_0300005D != 0)
            {
                s8 sp0[32] = {254, 46, 94, 142};
                gBGOffsets_03001730.bg2hofs = -sp0[gFileSelectMenuSel];
            }
            else
            {
                s8 sp0[32] = {8, 65, 122};
                gBGOffsets_03001730.bg2hofs = -sp0[gFileSelectMenuSel];
            }
            if (inlinefunc(gFileSelectMenuSel))
                gBGOffsets_03001730.bg2vofs = 0xFF00;
            else
                gBGOffsets_03001730.bg2vofs = 0;
        }
        else if (gSomeKeys_030012E8 & DPAD_LEFT)
        {
            gUnknown_03000059 = gFileSelectMenuSel;
            play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
            if (gFileSelectMenuSel != 0)
                gFileSelectMenuSel--;
            else
                gFileSelectMenuSel = gUnknown_0300005D + 2;
            if (gUnknown_0300005D != 0)
            {
                s8 sp0[32] = {254, 46, 94, 142};
                gBGOffsets_03001730.bg2hofs = -sp0[gFileSelectMenuSel];
            }
            else
            {
                s8 sp0[32] = {8, 65, 122};
                gBGOffsets_03001730.bg2hofs = -sp0[gFileSelectMenuSel];
            }
            if (inlinefunc(gFileSelectMenuSel))
                gBGOffsets_03001730.bg2vofs = 0xFF00;
            else
                gBGOffsets_03001730.bg2vofs = 0;
        }
    }
}

void sub_08012230(void)  // for new save file?
{
    s16 i;

    gBGOffsets_03001730.bg0vofs = 0xFF00;
    gBGOffsets_03001730.bg1vofs = 0xFF00;
    if (sub_08034004())
    {
        if (gUnknown_0300005C != 0)
        {
            u8 r1;

            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            r1 = gFileSelectMenuSel;
            if (r1 <= 2)
            {
                CpuFill16(0, &gSaveFilesPtr[r1], sizeof(struct SaveFile));
                init_level_highscores_08010DEC(&gSaveFilesPtr[r1]);
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
            gUnknown_03000059 = gFileSelectMenuSel;
            gFileSelectMenuSel = 0;
            gUnknown_0300005B = 0;
            sub_0801168C(0);
        }
        else
        {
            play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
            gUnknown_03000059 = gFileSelectMenuSel;
            gFileSelectMenuSel = 0;
            gUnknown_0300005B = 0;
            sub_0801168C(0);
        }
    }
    else if (gSomeKeys_030012E8 & B_BUTTON)
    {
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        gUnknown_03000059 = gFileSelectMenuSel;
        gFileSelectMenuSel = 0;
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

static inline void testinline(s8 *toIncrement, s8 *toDecrement, struct Struct0860A4B4 *arr, int max)
{
    if (--*toDecrement <= 0)
    {
        (*toIncrement)++;
        if (*toIncrement >= max)
            *toIncrement = 0;
        *toDecrement = arr[*toIncrement].unk1;
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
                gFileSelectMenuSel = 3;
            gUnknown_03000063 = 1;
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
            if (gFileSelectMenuSel == 3)
                gFileSelectMenuSel--;
        }
    }
    if (gUnknown_03000064 <= 20)
        gUnknown_03000064++;

    testinline(&gUnknown_0300005E, &gUnknown_0300005F, gUnknown_085FEFE4, 18);
    testinline(&gUnknown_03000060, &gUnknown_03000061, gUnknown_08617030, 2);
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
    dummy = inlinefunc2(gFileSelectMenuSel);
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
    dummy = inlinefunc2(gFileSelectMenuSel);
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
    dummy = inlinefunc2(gFileSelectMenuSel);
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

    if (inlinefunc2(gFileSelectMenuSel))
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
    DmaCopy32(3, gUnknown_08615C04, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x800);
    gUnknown_0300004E = gUnknown_03001930;
    gUnknown_03001930 += 64;
    gUnknown_0300192C += 0x800;

    DmaCopy32(3, gUnknown_08615C04 + gUnknown_08615BB4.unk24 * 0x800, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x800);
    gUnknown_03000050 = gUnknown_03001930;
    gUnknown_03001930 += 64;
    gUnknown_0300192C += 0x800;

    DmaCopy32(3, gUnknown_08614764, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x400);
    gUnknown_03000052 = gUnknown_03001930;
    gUnknown_03001930 += 32;
    gUnknown_0300192C += 0x400;

    if (inlinefunc2(gFileSelectMenuSel) || gFileSelectMenuSel == 3)
    {
        DmaCopy32(3, gUnknown_0860C344 + gUnknown_0860C0B4[gUnknown_0300005E].unk0 * 0x800, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x800);
        gUnknown_03000042 = gUnknown_03001930;
        gUnknown_03001930 += 64;
        gUnknown_0300192C += 0x800;

        DmaCopy32(3, gUnknown_0860A4B4 + gUnknown_0860A224[gUnknown_0300005E].unk0 * 0x400, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x400);
        gUnknown_03000044 = gUnknown_03001930;
        gUnknown_03001930 += 32;
        gUnknown_0300192C += 0x400;
    }
    else
    {
        DmaCopy32(3, gUnknown_08602F94 + gUnknown_08602D04[gUnknown_0300005E].unk0 * 0x800, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x800);
        gUnknown_03000042 = gUnknown_03001930;
        gUnknown_03001930 += 64;
        gUnknown_0300192C += 0x800;

        DmaCopy32(3, gUnknown_08601104 + gUnknown_08600E74[gUnknown_0300005E].unk0 * 0x400, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x400);
        gUnknown_03000044 = gUnknown_03001930;
        gUnknown_03001930 += 32;
        gUnknown_0300192C += 0x400;
    }

    DmaCopy32(3, gUnknown_08606A24 + gUnknown_08606794[gUnknown_0300005E].unk0 * 0x800, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x800);
    gUnknown_03000046 = gUnknown_03001930;
    gUnknown_03001930 += 64;
    gUnknown_0300192C += 0x800;

    DmaCopy32(3, gUnknown_085FB7E4 + gUnknown_085FB554[gUnknown_0300005E].unk0 * 0x800, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x800);
    gUnknown_03000048 = gUnknown_03001930;
    gUnknown_03001930 += 64;
    gUnknown_0300192C += 0x800;

    DmaCopy32(3, gUnknown_085FF274 + gUnknown_085FEFE4[gUnknown_0300005E].unk0 * 0x400, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x400);
    gUnknown_0300004C = gUnknown_03001930;
    gUnknown_03001930 += 32;
    gUnknown_0300192C += 0x400;

    DmaCopy32(3, gUnknown_0860FDD4 + gUnknown_0860FB44[gUnknown_0300005E].unk0 * 0x400, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x400);
    gUnknown_0300004A = gUnknown_03001930;
    gUnknown_03001930 += 32;
    gUnknown_0300192C += 0x400;

    DmaCopy32(3, gUnknown_08617080 + gUnknown_08617030[gUnknown_03000060].unk0 * 0x80, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x80);
    gUnknown_03000054.unk0 = gUnknown_03001930;
    gUnknown_03001930 += 4;
    gUnknown_0300192C += 0x80;

    DmaCopy32(3, gUnknown_086180B4 + gUnknown_08618064[gUnknown_03000060].unk0 * 0x80, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 0x80);
    gUnknown_03000054.unk2 = gUnknown_03001930;
    gUnknown_03001930 += 4;
    gUnknown_0300192C += 0x80;
}

void print_digits_080130F8(u8 x, u8 y, u8 digits, u16 value, u8 arg4)
{
    int i;
    int x2 = x + (digits - 1) * 8;

    for (i = 0; i < digits; i++)
    {
        DmaCopy32(3, gUnknown_08617F24 + (value % 10) * 32, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 32);
        DmaCopy32(3, &gUnknown_08617F1C, &gOamBuffer[gSomeOamIndex_03000040], 8);
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03001930;
        gOamBuffer[gSomeOamIndex_03000040].x = x2 - i * 5;
        gOamBuffer[gSomeOamIndex_03000040].y = y;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum += arg4;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gUnknown_03001930++;
        gUnknown_0300192C += 32;
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
        DmaCopy32(3, gUnknown_086172F0 + (value % 10) * 64, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 64);
        DmaCopy32(3, &gUnknown_086172E8, &gOamBuffer[gSomeOamIndex_03000040], 8);
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03001930;
        gOamBuffer[gSomeOamIndex_03000040].x = x2 - i * 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum += arg4;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gUnknown_03001930 += 2;
        gUnknown_0300192C += 64;
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
        DmaCopy32(3, gUnknown_08617B04 + (value % 10) * 32, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 32);
        DmaCopy32(3, &gUnknown_08617AFC, &gOamBuffer[gSomeOamIndex_03000040], 8);
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03001930;
        gOamBuffer[gSomeOamIndex_03000040].x = x2 - i * 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum += arg4;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gUnknown_03001930++;
        gUnknown_0300192C += 32;
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
        DmaCopy32(3, gUnknown_08617830 + (value % 10) * 32, (void *)(OBJ_VRAM0 + gUnknown_0300192C), 32);
        DmaCopy32(3, &gUnknown_08617828, &gOamBuffer[gSomeOamIndex_03000040], 8);
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03001930;
        gOamBuffer[gSomeOamIndex_03000040].x = x2 - i * 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gUnknown_03001930++;
        gUnknown_0300192C += 32;
        gSomeOamIndex_03000040++;
        value /= 10;
    }
}

void add_sprite_0801369C(struct Struct08013548 *arg0, u16 arg1, u8 arg2, int arg3, s16 arg4, s16 arg5)
{
    DmaCopy32(3, arg0->unk10, &gOamBuffer[gSomeOamIndex_03000040], 8);
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

void add_sprite_080137A0(struct Struct08013548 *arg0, u16 arg1, u8 arg2, int paletteNum, u8 hFlip, s16 x, s16 y)
{
    DmaCopy32(3, arg0->unk10, &gOamBuffer[gSomeOamIndex_03000040], 8);
    gOamBuffer[gSomeOamIndex_03000040].tileNum += arg1;
    gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
    gOamBuffer[gSomeOamIndex_03000040].x = x + arg0->unkC[arg2].unk2;
    gOamBuffer[gSomeOamIndex_03000040].y = y + arg0->unkC[arg2].unk3;
    (*(struct OamData_alt *)&gOamBuffer[gSomeOamIndex_03000040]).matrixNum_hflip = hFlip;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gSomeOamIndex_03000040++;
}

void add_sprite_080138D0(struct Struct08013548 *arg0, u8 arg1, s8 arg2, s16 x, s16 y)
{ 
    DmaCopy32(3, arg0->unk14 + arg0->unkC[arg1].unk0 * arg0->unk4 * 4, (void *)(OBJ_VRAM0 + gUnknown_0300192C), arg0->unk8);
    DmaCopy32(3, arg0->unk10, &gOamBuffer[gSomeOamIndex_03000040], 8);
    gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03001930;
    gOamBuffer[gSomeOamIndex_03000040].x = x + arg0->unkC[arg1].unk2;
    gOamBuffer[gSomeOamIndex_03000040].y = y + arg0->unkC[arg1].unk3;
    if (arg2 > 1)
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = arg2;
    else
        gOamBuffer[gSomeOamIndex_03000040].paletteNum += arg2;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gUnknown_03001930 += arg0->unk6;
    gUnknown_0300192C += arg0->unk8;
    gSomeOamIndex_03000040++;
}
