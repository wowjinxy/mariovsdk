#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "options_menu.h"
#include "savefile.h"
#include "sprites.h"

struct Struct0802834C_sub
{
    s32 unk0;
    u8 unk4;
    u8 unk5;
    u8 filler6[0x10-0x6];
    s16 unk10;
};  // size = 0x14

struct Struct0802834C
{
    u8 unk0;
    u8 unk1;
    struct Struct0802834C_sub unk4[3];
    struct Struct0802834C_sub unk40[2];
};

struct Struct08028068
{
    struct SpriteTemplate *unk0;
    u16 unk4;
    u16 unk6;
    s16 unk8;
    s16 unkA;
    u8 unkC;
    u8 unkD;
    u16 unkE;
    u8 unk10;
};  // size = 0x14?

struct StructFC
{
    struct Struct08028068 unk0[14];
    u8 *unk118;
    u8 *unk11C;
    u8 unk120[0x800];  // some kind of VRAM buffer
    u8 unk920[0x800];  // some kind of VRAM buffer
    u32 currSubMenuID;
    int selectedButton;
    struct Submenu *currSubMenu;
    s16 unk112C;
    s16 unk112E;
    s16 unk1130;
    s16 unk1132;
    s16 unk1134;
    s16 unk1136;
    s16 unk1138;
    s16 unk113A;
    u16 unk113C;
    s16 unk113E;
    s16 unk1140;
    u8 filler1142[0x1144-0x1142];
    s16 *unk1144;
    s16 *unk1148;
    struct UnknownStruct12 unk114C;
};

extern struct StructFC *gOptionsMenuData;

// options_menu_data.c
extern void (*gUnknown_080798E8[])(void);
extern void (*gUnknown_08079938[])(/*5 args*/);
extern u8 gOptionsMenuMovieIDTable[];
extern u8 gOptionsMenuMovieSongIDTable[];
extern u32 gOptionsMenuSpriteIDTable[];
extern s32 gUnknown_080799D0[];
extern u32 gUnknown_08079D20[2];
extern u32 gUnknown_08079D28[2];

void sub_08027B9C(void)
{
    if (gUnknown_030000F4->unk28 == 60)
    {
        gUnknown_030000F4->unk17 = 1;
        gUnknown_03000C10 = gUnknown_080798E8[gUnknown_030000F4->unk17];
        gUnknown_03000C08 = gUnknown_08079938[gUnknown_030000F4->unk17];
        gUnknown_030000F4->unk28 = 0;
    }
}

void sub_08027BE8(void)
{
    if (gUnknown_030000F4->unk28 == 60)
    {
        gUnknown_030000F4->unk17 = 2;
        gUnknown_03000C10 = gUnknown_080798E8[gUnknown_030000F4->unk17];
        gUnknown_03000C08 = gUnknown_08079938[gUnknown_030000F4->unk17];
        gUnknown_030000F4->unk28 = 0;
    }
}

void sub_08027C34(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_0802200C(arg0, arg1, arg2, arg3, arg4);
    sub_08022890(arg0, arg1, arg2, arg3, arg4);
    sub_08022340(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027C78(void)
{
    *gUnknown_030000E8 += 1;
    if (gUnknown_030000F4->unk28 == 80)
    {
        register int zero asm("r0");
        gUnknown_030000F4->unk17 = 3;
        gUnknown_03000C10 = gUnknown_080798E8[gUnknown_030000F4->unk17];
        gUnknown_03000C08 = gUnknown_08079938[gUnknown_030000F4->unk17];
        zero = 0;
        gUnknown_030000F4->unk28 = zero;
    }
}

void sub_08027CD0(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_0802200C(arg0, arg1, arg2, arg3, arg4);
    sub_08022890(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027D08(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_080240D0(arg0, arg1, arg2, arg3, arg4);
    sub_0802200C(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027D40(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_080251A0(arg0, arg1, arg2, arg3, arg4);
    sub_080240D0(arg0, arg1, arg2, arg3, arg4);
    sub_0802200C(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027D84(void)
{
    if (gUnknown_030000F4->unk28 == 52)
    {
        gUnknown_030000F4->unk17 = 6;
        gUnknown_03000C10 = gUnknown_080798E8[gUnknown_030000F4->unk17];
        gUnknown_03000C08 = gUnknown_08079938[gUnknown_030000F4->unk17];
        gUnknown_030000F4->unk28 = 0;
    }
}

void sub_08027DD0(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_08024E5C(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027DE4(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_08024E5C(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027DF8(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_08024E5C(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027E0C(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_08024E5C(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027E20(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_08024404(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027E34(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_08024E5C(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027E48(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_08024E5C(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027E5C(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_08024A04(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027E70(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_08024E5C(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027E84(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_080251A0(arg0, arg1, arg2, arg3, arg4);
    sub_080240D0(arg0, arg1, arg2, arg3, arg4);
    sub_0802200C(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027EC8(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_080240D0(arg0, arg1, arg2, arg3, arg4);
    sub_0802200C(arg0, arg1, arg2, arg3, arg4);
    sub_08023C08(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027F0C(void)
{
    if (gUnknown_030000F4->unk28 >= 60)
    {
        gUnknown_030000F4->unk17 = 17;
        gUnknown_03000C10 = gUnknown_080798E8[gUnknown_030000F4->unk17];
        gUnknown_03000C08 = gUnknown_08079938[gUnknown_030000F4->unk17];
        gUnknown_030000F4->unk28 = 0;
    }
}

void sub_08027F58(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_080240D0(arg0, arg1, arg2, arg3, arg4);
    sub_0802200C(arg0, arg1, arg2, arg3, arg4);
    sub_08023C08(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027F9C(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_080240D0(arg0, arg1, arg2, arg3, arg4);
    sub_0802200C(arg0, arg1, arg2, arg3, arg4);
    sub_08023C08(arg0, arg1, arg2, arg3, arg4);
}

void sub_08027FE0(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_080240D0(arg0, arg1, arg2, arg3, arg4);
    sub_0802200C(arg0, arg1, arg2, arg3, arg4);
    sub_0802363C(arg0, arg1, arg2, arg3, arg4);
}

void sub_08028024(int arg0, int arg1, int arg2, int arg3, int arg4)
{
    sub_080240D0(arg0, arg1, arg2, arg3, arg4);
    sub_0802200C(arg0, arg1, arg2, arg3, arg4);
    sub_0802363C(arg0, arg1, arg2, arg3, arg4);
}

void sub_08028068(struct Struct08028068 *arg0, int arg1)
{
    struct SpriteTemplate *r2 = &gUncompressedGraphicsTable[arg1];

    arg0->unk0 = r2;
    arg0->unkA = 0;
    arg0->unk8 = r2->subSprites[0].duration;
    arg0->unk6 = gVRAMCurrTileNum_03001930;
    arg0->unk4 = gObjVRAMCopyOffset_0300192C;
    if (arg0->unkD != 0)
    {
        gVRAMCurrTileNum_03001930 += r2->unk4 * r2->x;
        gObjVRAMCopyOffset_0300192C += r2->y * r2->x;
    }
    else
    {
        gVRAMCurrTileNum_03001930 += r2->unk4;
        gObjVRAMCopyOffset_0300192C += r2->y;
    }
}

void sub_080280CC(struct Struct08028068 *arg0 /*assumed*/, int arg1)
{
    if (arg0->unkD == 0)
    {
        arg0->unk8--;
        if (arg0->unk8 <= 0)
        {
            if (arg1 < 0)
                arg1 = arg0->unk0->x;
            if (arg0->unkA >= arg1 - 1)
            {
                if (arg0->unkE & 1)
                    arg0->unkE |= 2;
                else
                    arg0->unkA = 0;
            }
            else
                arg0->unkA++;
            arg0->unk8 = arg0->unk0->subSprites[arg0->unkA].duration;
        }
    }
}

void sub_08028128(struct Struct08028068 *arg0 /*assumed*/)
{
    if (arg0->unkD == 0)
    {
        DmaCopy32(3,
            arg0->unk0->tileData + arg0->unk0->subSprites[arg0->unkA].index * arg0->unk0->unk6 * 4,
            OBJ_VRAM0 + arg0->unk4,
            arg0->unk0->y);
    }
    else
    {
        int i;

        for (i = 0; i < arg0->unk0->x; i++)
        {
            DmaCopy32(3,
                arg0->unk0->tileData + arg0->unk0->subSprites[i].index * arg0->unk0->unk6 * 4,
                OBJ_VRAM0 + arg0->unk4 + arg0->unk0->y * i,
                arg0->unk0->y);
        }
    }
}

void sub_080281C8(struct Struct08028068 *arg0 /*assumed*/, int arg1, int arg2, u16 *arg3, int arg4)
{
    struct OamData *oam = &gOamBuffer[*arg3];
    int i;

    if (arg0->unkD != 0)
    {
        for (i = 0; i < arg0->unk0->x; i++, arg1 += (u8)arg0->unk0->subSpriteSize, oam++, *arg3 += 1)
        {
            DmaCopy32(3, arg0->unk0->oamData, oam, sizeof(struct OamData));
            oam->y = arg2;
            oam->x = arg1;
            oam->tileNum = arg0->unk6 + i * arg0->unk0->unk4;
            if (arg0->unkC != 0)
                oam->paletteNum = arg0->unkC - 1;
            if (arg4 != 0)
                oam->objMode = 1;
            oam->priority = arg0->unk10;
        }
    }
    else
    {
        DmaCopy32(3, arg0->unk0->oamData, oam, sizeof(struct OamData));
        oam->y = arg2;
        oam->x = arg1;
        oam->tileNum = arg0->unk6;
        if (arg0->unkC != 0)
            oam->paletteNum = arg0->unkC - 1;
        if (arg4 != 0)
            oam->objMode = 1;
        oam->priority = arg0->unk10;
        *arg3 += 1;
    }
}

void sub_0802834C(struct Struct0802834C *arg0, int arg1)
{
    int r1;
    int r2;
    int r3;
    int i;
    int r5;
    int r9;
    struct Struct0802834C_sub *r4;

    for (i = 0; i < arg0->unk0; i++)
    {
        r4 = &arg0->unk4[i];
        r1 = r4->unk0;
        r5 = (i == arg1);
        r2 = r4->unk4;
        r3 = r4->unk5;
        if (r1 != -1)
        {
            int sp8[2] = { r2, r3 };

            if (!r5)
                r1 += 25;
            sub_080064D4(sp8,
                gObjectTileDataRAMPtr->unk108[r1],
                gOptionsMenuData->unk920,
                5);
        }
    }

    r9 = arg0->unk1;
    if (arg0->unk4[arg1].unk10 > 0)
        r9 = arg0->unk4[arg1].unk10;
    for (i = 0; i < r9; i++)
    {
        r4 = &arg0->unk40[i];
        r1 = r4->unk0;
        r2 = r4->unk4;
        r3 = r4->unk5;
        if (r1 != -1)
        {
            int sp10[2];
            sp10[0] = r2;
            sp10[1] = r3;
            sub_080064D4(sp10,
                gObjectTileDataRAMPtr->unk108[r1],
                gOptionsMenuData->unk920,
                5);
        }
    }
    for (; i < arg0->unk1; i++)
    {
        void *r2;
        r4 = &arg0->unk40[i];
        r2 = gObjectTileDataRAMPtr->unk108[r4->unk0];
        sub_080065B4(
            r4->unk4,
            r4->unk5,
            r2,
            gOptionsMenuData->unk920,
            5,
            0);
    }
}

void go_to_submenu(int subMenuID)
{
    gOptionsMenuData->currSubMenuID = subMenuID;
    if (gOptionsMenuData->currSubMenu == NULL)
        gOptionsMenuData->selectedButton = (int)gOptionsMenuData->currSubMenu;  // WTF???
    else
        gOptionsMenuData->selectedButton = gOptionsMenuData->currSubMenu->unkBC;
    gOptionsMenuData->currSubMenu = &gOptionMenuSubMenus[gOptionsMenuData->currSubMenuID];
    gOptionsMenuData->unk112C = 1;
    gOptionsMenuData->unk112E = 1;
}

void sub_080284E8(void)
{
    int r5 = 0;
    s16 r6;
    s16 *r4;

    if (gUnknown_03001708 & 0x20)
        r5 = -1;
    else if (gUnknown_03001708 & 0x10)
        r5 = 1;

    if (gNewKeys & START_BUTTON)
    {
        sub_080720AC();
        sub_08071C24();
    }

    if (r5 != 0)
    {
        switch (gOptionsMenuData->selectedButton)
        {
        case 0:
            r6 = 2;
            r4 = &gOptionsMenuData->unk1138;
            break;
        case 1:
            r6 = gOptionsMenuData->unk1140;
            r4 = &gOptionsMenuData->unk1130;
            break;
        case 2:
            r6 = gOptionsMenuData->unk113E;
            r4 = &gOptionsMenuData->unk1132;
            break;
        }
        *r4 += r5;
        if (*r4 < 0)
            *r4 = r6 - 1;
        else if (*r4 >= r6)
            *r4 = 0;
        gOptionsMenuData->unk112E = 1;
        gOptionsMenuData->unk112C = 1;
        gScreenModeRelatedPtr->unk0_5 = gOptionsMenuData->unk1138;
        sub_0807220C(gScreenModeRelatedPtr->unk0_5);
        play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
    }
}

static inline void sub_08028604_inline(int arg1, int arg2, int r4)
{
    int sp8[2];

    int five = 5;

    sp8[0] = arg1;
    sp8[1] = arg2;
    do
    {
        int r0 = five + r4 % 10;
        struct Struct08078210_sub *r1 = gObjectTileDataRAMPtr->unk108[r0];
        sp8[0] -= r1->unk0;
        sub_080064D4(sp8, r1, gOptionsMenuData->unk120, 5);
        r4 /= 10;
    } while (r4 > 0);
}

void sub_08028604(u16 *unused)
{
    int r1 = gUnknown_08079D20[gOptionsMenuData->unk1138];
    int r3 = (gOptionsMenuData->selectedButton == 0);
    int sp0[2];
    int sp8[2];
    int sp10[2];
    int r4;

    if (r1 != -1)
    {
        sp0[0] = 18;
        sp0[1] = 5;
        if (!r3)
            r1 += 25;
        sub_080064D4(sp0,
            gObjectTileDataRAMPtr->unk108[r1],
            gOptionsMenuData->unk920,
            5);
    }
    sub_08028604_inline(23, 9, gOptionsMenuData->unk1130);
    sub_08028604_inline(23, 13, gOptionsMenuData->unk1132);
}

void sub_08028740(void)
{
    int r4 = 0;
    s16 r5;
    s16 *r3;

    if (gUnknown_03001708 & 0x20)
        r4 = -1;
    else if (gUnknown_03001708 & 0x10)
        r4 = 1;

    if (r4)
    {
        switch (gOptionsMenuData->selectedButton)
        {
        case 0:
            r5 = 2;
            r3 = &gOptionsMenuData->unk1136;
            break;
        case 1:
            r5 = gOptionsMenuData->unk113A;
            r3 = &gOptionsMenuData->unk1134;
            break;
        }
        *r3 += r4;
        if (*r3 < 0)
            *r3 = r5 - 1;
        else if (*r3 >= r5)
            *r3 = 0;
        gOptionsMenuData->unk112E = 1;
        gOptionsMenuData->unk112C = 1;
        gScreenModeRelatedPtr->unk0_3 = gOptionsMenuData->unk1136;
        play_sound_effect_08071990(SE_CURSOR_E, 8, 16, 64, 0, 128, 0);
    }
}

void sub_08028824(u16 *arg0)
{
    int r1 = gUnknown_08079D28[gOptionsMenuData->unk1136];
    int r3 = (gOptionsMenuData->selectedButton == 0);
    int sp4[2];
    int r4;
    int spC[2];
    int r2;
    int r7;

    if (r1 != -1)
    {
        sp4[0] = 12;
        sp4[1] = 5;
        if (!r3)
            r1 += 25;
        sub_080064D4(sp4,
            gObjectTileDataRAMPtr->unk108[r1],
            gOptionsMenuData->unk920,
            5);
    }
    r4 = gOptionsMenuData->unk113A;
    r2 = 10 + r4 * 2;

    while (r4 < 8)
    {
        int r5 = (gOptionsMenuData->selectedButton == 1);
        r7 = 9;
        r1 = 24;
        spC[0] = r2;
        spC[1] = r7;
        if (!r5)
            r1 += 25;
        sub_080064D4(spC,
            gObjectTileDataRAMPtr->unk108[r1],
            gOptionsMenuData->unk920,
            5);
        r4++;
        r2 += 2;
    }

    if (gOptionsMenuData->selectedButton == 1)
    {
        int var = gOptionsMenuData->unk1134 * 16;
        sub_080281C8(&gOptionsMenuData->unk0[3], 72 + var, 64, arg0, 0);
    }

    sub_080281C8(
        &gOptionsMenuData->unk0[5 + gOptionsMenuData->unk1134],
        88, 96, arg0, 0);
}

void options_init_callback(void)
{
    int i;

    arena_restore_head(0);
    gCameraHorizontalOffset = 0;
    gCameraVerticalOffset = 0;
    save_blend_regs(gOptionsMenuBGConfig.bldCnt, gOptionsMenuBGConfig.bldAlpha, gOptionsMenuBGConfig.bldY);
    REG_DISPCNT = load_graphics_config_bg2_08032EB8(&gOptionsMenuBGConfig) | DISPCNT_BG0_ON | DISPCNT_BG1_ON;
    sub_08006968(&gOptionsMenuBGConfig);
    gOptionsMenuData = arena_allocate(sizeof(*gOptionsMenuData));
    CpuFill16(0, gOptionsMenuData, sizeof(*gOptionsMenuData));
    if (gPreviousMainState == MAIN_STATE_MOVIE)
    {
        gOptionsMenuData->currSubMenuID = 2;
        gOptionsMenuData->unk1134 = gPreviousMovieOption;
    }
    else
        gPreviousMovieOption = 0;
    go_to_submenu(gOptionsMenuData->currSubMenuID);
    if (gPreviousMainState == MAIN_STATE_MOVIE)
        gOptionsMenuData->selectedButton = 1;
    gOptionsMenuData->unk118 = gOptionsMenuBGConfig.bgVramMapAddrs[0];
    gOptionsMenuData->unk11C = gOptionsMenuBGConfig.bgVramMapAddrs[1];
    gObjVRAMCopyOffset_0300192C = 0;
    gVRAMCurrTileNum_03001930 = 0;
    for (i = 0; i < 14; i++)
        sub_08028068(&gOptionsMenuData->unk0[i], gOptionsMenuSpriteIDTable[i]);
    gOptionsMenuData->unk0[4].unkC = 14;
    gOptionsMenuData->unk1136 = gScreenModeRelatedPtr->unk0_3;
    gOptionsMenuData->unk1138 = gScreenModeRelatedPtr->unk0_5;
    load_predefined_palette(3, 3);
    gOptionsMenuData->unk1144 = arena_allocate(gUnknown_08B3A4DC * 2);
    gOptionsMenuData->unk113E = 0;
    for (i = 0; i < gUnknown_08B3A4DC; i++)
    {
        if (gUnknown_08B3A4E0[i].unk13 == 0)
            gOptionsMenuData->unk1144[gOptionsMenuData->unk113E++] = i;
    }
    gOptionsMenuData->unk1148 = arena_allocate(gUnknown_08D7B10C * 2);
    gOptionsMenuData->unk1140 = 0;
    for (i = 0; i < gUnknown_08D7B10C; i++)
    {
        if (gMusicTable1[i].unk9 == 0)
            gOptionsMenuData->unk1148[gOptionsMenuData->unk1140++] = i;
    }
    if (get_current_bgm() != 10)
        play_bgm(10, 128, 1);
    for (i = 7; i > 0; i--)
    {
        if (sub_08014950(0, gUnknown_080799D0[i]) == 1
         || sub_08014950(1, gUnknown_080799D0[i]) == 1
         || sub_08014950(2, gUnknown_080799D0[i]) == 1)
            break;
    }
    gOptionsMenuData->unk113A = i + 1;
    gOptionsMenuData->unk114C = *gScreenModeRelatedPtr;
    CpuFill16(0, &gBGLayerOffsets, sizeof(gBGLayerOffsets));
}

void options_main(void)
{
    int se = SE_CURSOR_UP_DN;
    u16 keyToPrevBtn = DPAD_UP;
    u16 keyToNextBtn = DPAD_DOWN;
    int selectedButton;
    int i;

    process_input();

    if (gOptionsMenuData->currSubMenu->flags & MENU_HORIZONTAL)
    {
        // horizontal
        keyToPrevBtn = DPAD_LEFT;
        keyToNextBtn = DPAD_RIGHT;
        se = SE_CURSOR_E;
    }

    selectedButton = gOptionsMenuData->selectedButton;
    if (gNewKeys & keyToPrevBtn)
    {
        if (--gOptionsMenuData->selectedButton < 0)
        {
            if (gOptionsMenuData->currSubMenu->flags & MENU_NOWRAP)
                gOptionsMenuData->selectedButton = 0;
            else
                gOptionsMenuData->selectedButton = gOptionsMenuData->currSubMenu->numOptions - 1;
        }
        gOptionsMenuData->unk112E = 1;
        if (gOptionsMenuData->selectedButton != selectedButton)
            play_sound_effect_08071990(se, 8, 16, 64, 0, 128, 0);
    }
    else if (gNewKeys & keyToNextBtn)
    {
        if (++gOptionsMenuData->selectedButton >= gOptionsMenuData->currSubMenu->numOptions)
        {
            if (gOptionsMenuData->currSubMenu->flags & MENU_NOWRAP)
                gOptionsMenuData->selectedButton = gOptionsMenuData->currSubMenu->numOptions - 1;
            else
                gOptionsMenuData->selectedButton = 0;
        }
        gOptionsMenuData->unk112E = 1;
        if (gOptionsMenuData->selectedButton != selectedButton)
            play_sound_effect_08071990(se, 8, 16, 64, 0, 128, 0);
    }
    else if (gNewKeys & A_BUTTON)
    {
        struct MenuButton *button = &gOptionsMenuData->currSubMenu->buttons[selectedButton];

        if (button->submenu != -1)
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            go_to_submenu(button->submenu);
        }
        if (button->onAPress != NULL)
            button->onAPress();
    }
    else if (gNewKeys & B_BUTTON)
    {
        if (gOptionsMenuData->currSubMenu->unkB8 == -1)
            change_main_state(MAIN_STATE_FILE_SELECT, USE_FADE);
        else
        {
            sub_08071C24();
            go_to_submenu(gOptionsMenuData->currSubMenu->unkB8);
            if (get_current_bgm() != 10)
                play_bgm(10, 128, 1);
        }
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
    }
    for (i = 0; i < 14; i++)
        sub_080280CC(&gOptionsMenuData->unk0[i], -1);
    if (gOptionsMenuData->currSubMenu->unkC4 != NULL)
        gOptionsMenuData->currSubMenu->unkC4();
    gOptionsMenuData->unk113C += 80;
    gBGLayerOffsets.bg3_x = gOptionsMenuData->unk113C >> 8;
    sub_0801B310();
    if (gOptionsMenuData->unk112C != 0)
    {
        CpuFill16(0, &gOptionsMenuData->unk120, 0x800);
        CpuFill16(0, &gOptionsMenuData->unk920, 0x800);
        gOptionsMenuData->unk112C = 0;
    }
}

#ifdef NONMATCHING
void options_loop(void)
{
    u16 sp8 = 0;
    struct MenuButton *button = &gOptionsMenuData->currSubMenu->buttons[gOptionsMenuData->selectedButton];
    struct Struct08028068 *r5;// = &gOptionsMenuData->unk0[0];
    register int i;// asm("r5");  // r5
    //struct Struct08028068 *r5 = (button->unk0 == -1) ? &gOptionsMenuData->unk0[4] : &gOptionsMenuData->unk0[0];
    if (button->tileObjID == -1)
        r5 = &gOptionsMenuData->unk0[4];
    else
        r5 = &gOptionsMenuData->unk0[0];
    if (!update_fade_from_black())
        sub_0801B2CC(r5->unk0->subSprites[r5->unkA].unk8);
    DmaFill32(3, 0xA0, gOamBuffer, sizeof(gOamBuffer));
    for (i = 0; i < 14; i++)
        sub_08028128(&gOptionsMenuData->unk0[i]);
    if (gOptionsMenuData->unk112E != 0)
        sub_0802834C(gOptionsMenuData->currSubMenu, gOptionsMenuData->selectedButton);
    if (gOptionsMenuData->currSubMenu->unkC8 != NULL)
        gOptionsMenuData->currSubMenu->unkC8(&sp8);
    //_08028EFE
    if (gOptionsMenuData->unk112E != 0)
    {
        int r5;
        register u8 *r3;// asm("r3");
        register u8 *r4;// asm("r4");
        int offs = 0;
        //register u8 *r6 asm("r6");
        int r12;
        //#define r12 (0x80<<3)
        gOptionsMenuData->unk112E = 0;
        //r3 = gOptionsMenuData->unk120;
        //r4 = gOptionsMenuData->unk118;
        //r6 = gOptionsMenuData->unk11C;
        //r5 = 0;
        //do

        for (r5 = 0, r12 = 0x80<<3; r5 < 0x400; r5 += r12)
        {
            //int r0 = r5 * 2;
            //r3 = gOptionsMenuData->unk120 + offs;
            DmaCopy16(3,
                gOptionsMenuData->unk120 + r5 * 2,  // r3
                gOptionsMenuData->unk118 + r5 * 2,  // r4
                0x800);
            DmaCopy16(3,
                gOptionsMenuData->unk920 + r5 * 2,
                gOptionsMenuData->unk11C + r5 * 2,  // r6
                0x800);
            //r4 += 0x80<<4;
            //r6 += r12 * 2;
            //r3 += r12 * 2;
            //r5 += r12;
            //offs += r12*2;
        } //while (r5 < 0x400);
        /*
        register u8 *r3 asm("r3");
        register u8 *r4 asm("r4");
        register u8 *r6 asm("r6");
        register int r12 asm("r12") = (0x80<<3);
        gOptionsMenuData->unk112E = 0;
        r3 = gOptionsMenuData->unk120;
        r4 = gOptionsMenuData->unk118;
        r6 = gOptionsMenuData->unk11C;
        for (i = 0; i < 0x400; i += r12)
        {
            int r0 = i * 2;
            DmaCopy16(3,
                r3,//gOptionsMenuData->unk120 + i,  // r3
                r4,//gOptionsMenuData->unk118 + i,  // r4
                0x800);
            DmaCopy16(3,
                gOptionsMenuData->unk920 + r0,
                r6,//gOptionsMenuData->unk11C + i,  // r6
                0x800);
            r4 += 0x80<<4;
            r6 += r12 * 2;
            r3 += r12 * 2;
        }
        */
    }
    //_08028F6A
    if (button->tileObjID >= 0)
    {
        #define asm(a)
        //struct Struct08028068 *r0;
        int r0 = button->x;
        int r1 = button->y;
        int r2 = button->boxWidth;
        register int r6 asm("r6") = r0 * 8;
        register int r7 asm("r7") = r1 * 8;
        register int r4 asm("r4") = r2 * 8;
        register int r5 asm("r5");
        int r8;
        sub_080281C8(&gOptionsMenuData->unk0[0], r6, r7, &sp8, 1);
        r4 -= (u8)gOptionsMenuData->unk0[1].unk0->subSpriteSize;
        r4 = r6 + r4;
        sub_080281C8(&gOptionsMenuData->unk0[1], r6, r7, &sp8, 1);
        r5 = (u8)gOptionsMenuData->unk0[2].unk0->subSpriteSize;
        r6 += (u8)gOptionsMenuData->unk0[0].unk0->subSpriteSize;
        //r8 = 1;
        while (r6 < r4)
        {
            sub_080281C8(&gOptionsMenuData->unk0[2], r6, r7, &sp8, 1);
            r6 += r5;
        }
        // to _0802901A
        #undef asm
    }
    //_08029004
    else
    {
        sub_080281C8(&gOptionsMenuData->unk0[4], button->x, button->y, &sp8, 1);
    }

    sub_0801B4BC();
    DmaCopy32(3, gOamBuffer, OAM, sizeof(gOamBuffer));
}
#else
__attribute__((naked))
void options_loop(void)
{
    asm("push {r4-r7,lr}\n\
	mov r7, r10\n\
	mov r6, r9\n\
	mov r5, r8\n\
	push {r5-r7}\n\
	sub sp, sp, #12\n\
	add r4, sp, #8\n\
	mov r0, #0\n\
	strh r0, [r4]\n\
	ldr r6, _08028FE0  @ =gOptionsMenuData\n\
	ldr r2, [r6]\n\
	ldr r0, _08028FE4  @ =0x00001128\n\
	add r3, r2, r0\n\
	ldr r1, _08028FE8  @ =0x00001124\n\
	add r0, r2, r1\n\
	ldr r1, [r0]\n\
	lsl r0, r1, #2\n\
	add r0, r0, r1\n\
	lsl r0, r0, #2\n\
	add r0, r0, #4\n\
	ldr r1, [r3]\n\
	add r1, r1, r0\n\
	mov r8, r1\n\
	ldr r1, [r1]\n\
	mov r0, #1\n\
	neg r0, r0\n\
	add r5, r2, #0\n\
	cmp r1, r0\n\
	bne _08028E80\n\
	add r5, r5, #80\n\
_08028E80:\n\
	bl update_fade_from_black\n\
	cmp r0, #0\n\
	bne _08028E9E\n\
	ldr r0, [r5]\n\
	mov r2, #10\n\
	ldrsh r1, [r5, r2]\n\
	ldr r2, [r0, #12]\n\
	lsl r0, r1, #3\n\
	add r0, r0, r1\n\
	lsl r0, r0, #2\n\
	add r0, r0, r2\n\
	ldr r0, [r0, #8]\n\
	bl sub_0801B2CC\n\
_08028E9E:\n\
	mov r0, #160\n\
	str r0, [sp, #4]\n\
	ldr r1, _08028FEC  @ =0x040000D4\n\
	add r3, sp, #4\n\
	str r3, [r1]\n\
	ldr r0, _08028FF0  @ =gOamBuffer\n\
	str r0, [r1, #4]\n\
	ldr r0, _08028FF4  @ =0x85000100\n\
	str r0, [r1, #8]\n\
	ldr r0, [r1, #8]\n\
	add r7, r6, #0\n\
	mov r6, #0\n\
	mov r5, #13\n\
_08028EB8:\n\
	ldr r0, [r7]\n\
	add r0, r0, r6\n\
	bl sub_08028128\n\
	add r6, r6, #20\n\
	sub r5, r5, #1\n\
	cmp r5, #0\n\
	bge _08028EB8\n\
	ldr r5, _08028FE0  @ =gOptionsMenuData\n\
	ldr r1, [r5]\n\
	ldr r6, _08028FF8  @ =0x0000112E\n\
	add r0, r1, r6\n\
	mov r2, #0\n\
	ldrsh r0, [r0, r2]\n\
	cmp r0, #0\n\
	beq _08028EE8\n\
	ldr r3, _08028FE4  @ =0x00001128\n\
	add r0, r1, r3\n\
	ldr r0, [r0]\n\
	ldr r2, _08028FE8  @ =0x00001124\n\
	add r1, r1, r2\n\
	ldr r1, [r1]\n\
	bl sub_0802834C\n\
_08028EE8:\n\
	ldr r0, [r5]\n\
	ldr r3, _08028FE4  @ =0x00001128\n\
	add r0, r0, r3\n\
	ldr r0, [r0]\n\
	add r0, r0, #200\n\
	ldr r1, [r0]\n\
	cmp r1, #0\n\
	beq _08028EFE\n\
	add r0, sp, #8\n\
	bl _call_via_r1\n\
_08028EFE:\n\
	ldr r3, [r5]\n\
	add r1, r3, r6\n\
	mov r2, #0\n\
	ldrsh r0, [r1, r2]\n\
	mov r10, r5\n\
	cmp r0, #0\n\
	beq _08028F6A\n\
	mov r0, #0\n\
	strh r0, [r1]\n\
	mov r5, #0\n\
	ldr r2, _08028FEC  @ =0x040000D4\n\
	add r7, r3, #0\n\
	mov r3, #140\n\
	lsl r3, r3, #1\n\
	add r0, r7, r3\n\
	mov r1, #128\n\
	lsl r1, r1, #3\n\
	mov r12, r1\n\
	ldr r3, _08028FFC  @ =0x80000400\n\
	mov r9, r3\n\
	ldr r4, [r0]\n\
	mov r1, #142\n\
	lsl r1, r1, #1\n\
	add r0, r7, r1\n\
	ldr r6, [r0]\n\
	mov r0, #144\n\
	lsl r0, r0, #1\n\
	add r3, r7, r0\n\
_08028F36:\n\
	lsl r0, r5, #1\n\
	str r3, [r2]\n\
	str r4, [r2, #4]\n\
	mov r1, r9\n\
	str r1, [r2, #8]\n\
	ldr r1, [r2, #8]\n\
	mov r1, #146\n\
	lsl r1, r1, #4\n\
	add r0, r0, r1\n\
	add r0, r7, r0\n\
	str r0, [r2]\n\
	str r6, [r2, #4]\n\
	mov r0, r9\n\
	str r0, [r2, #8]\n\
	ldr r0, [r2, #8]\n\
	mov r1, #128\n\
	lsl r1, r1, #4\n\
	add r4, r4, r1\n\
	mov r1, r12\n\
	lsl r0, r1, #1\n\
	add r6, r6, r0\n\
	add r3, r3, r0\n\
	add r5, r5, r12\n\
	ldr r0, _08029000  @ =0x000003FF\n\
	cmp r5, r0\n\
	ble _08028F36\n\
_08028F6A:\n\
	mov r1, r8\n\
	ldr r0, [r1]\n\
	cmp r0, #0\n\
	blt _08029004\n\
	ldrb r0, [r1, #4]\n\
	ldrb r1, [r1, #5]\n\
	mov r3, r8\n\
	ldrb r2, [r3, #6]\n\
	lsl r6, r0, #3\n\
	lsl r7, r1, #3\n\
	lsl r4, r2, #3\n\
	mov r1, r10\n\
	ldr r0, [r1]\n\
	mov r5, #1\n\
	str r5, [sp]\n\
	add r1, r6, #0\n\
	add r2, r7, #0\n\
	add r3, sp, #8\n\
	bl sub_080281C8\n\
	mov r2, r10\n\
	ldr r0, [r2]\n\
	ldr r1, [r0, #20]\n\
	ldrb r1, [r1, #8]\n\
	sub r4, r4, r1\n\
	add r0, r0, #20\n\
	add r4, r6, r4\n\
	str r5, [sp]\n\
	add r1, r4, #0\n\
	add r2, r7, #0\n\
	add r3, sp, #8\n\
	bl sub_080281C8\n\
	mov r3, r10\n\
	ldr r1, [r3]\n\
	ldr r0, [r1, #40]\n\
	ldrb r5, [r0, #8]\n\
	ldr r0, [r1]\n\
	ldrb r0, [r0, #8]\n\
	add r6, r6, r0\n\
	cmp r6, r4\n\
	bge _0802901A\n\
	mov r9, r10\n\
	mov r0, #1\n\
	mov r8, r0\n\
_08028FC4:\n\
	mov r1, r9\n\
	ldr r0, [r1]\n\
	add r0, r0, #40\n\
	mov r2, r8\n\
	str r2, [sp]\n\
	add r1, r6, #0\n\
	add r2, r7, #0\n\
	add r3, sp, #8\n\
	bl sub_080281C8\n\
	add r6, r6, r5\n\
	cmp r6, r4\n\
	blt _08028FC4\n\
	b _0802901A\n\
_08028FE0:\n\
	.4byte gOptionsMenuData\n\
_08028FE4:\n\
	.4byte 0x00001128\n\
_08028FE8:\n\
	.4byte 0x00001124\n\
_08028FEC:\n\
	.4byte 0x040000D4\n\
_08028FF0:\n\
	.4byte gOamBuffer\n\
_08028FF4:\n\
	.4byte 0x85000100\n\
_08028FF8:\n\
	.4byte 0x0000112E\n\
_08028FFC:\n\
	.4byte 0x80000400\n\
_08029000:\n\
	.4byte 0x000003FF\n\
_08029004:\n\
	mov r3, r10\n\
	ldr r0, [r3]\n\
	add r0, r0, #80\n\
	mov r2, r8\n\
	ldrb r1, [r2, #4]\n\
	ldrb r2, [r2, #5]\n\
	mov r3, #1\n\
	str r3, [sp]\n\
	add r3, sp, #8\n\
	bl sub_080281C8\n\
_0802901A:\n\
	bl sub_0801B4BC\n\
	ldr r1, _08029040  @ =0x040000D4\n\
	ldr r0, _08029044  @ =gOamBuffer\n\
	str r0, [r1]\n\
	mov r0, #224\n\
	lsl r0, r0, #19\n\
	str r0, [r1, #4]\n\
	ldr r0, _08029048  @ =0x84000100\n\
	str r0, [r1, #8]\n\
	ldr r0, [r1, #8]\n\
	add sp, sp, #12\n\
	pop {r3-r5}\n\
	mov r8, r3\n\
	mov r9, r4\n\
	mov r10, r5\n\
	pop {r4-r7}\n\
	pop {r0}\n\
	bx r0\n\
_08029040:\n\
	.4byte 0x040000D4\n\
_08029044:\n\
	.4byte gOamBuffer\n\
_08029048:\n\
	.4byte 0x84000100\n");
}
#endif

void options_end(void)
{
    if (gOptionsMenuData->unk114C.unk0_0 != gScreenModeRelatedPtr->unk0_0
     || gOptionsMenuData->unk114C.unk0_3 != gScreenModeRelatedPtr->unk0_3
     || gOptionsMenuData->unk114C.unk0_5 != gScreenModeRelatedPtr->unk0_5)
        write_flash_sector_0802A164();
}

void sub_08029080(void)
{
    gScreenModeRelatedPtr->unk0_0 = 0;
    gScreenModeRelatedPtr->unk0_3 = 0;
    gScreenModeRelatedPtr->unk0_5 = 1;
}

void options_menu_play_music(void)
{
    play_bgm(gOptionsMenuData->unk1148[gOptionsMenuData->unk1130], 128, 1);
}

void options_menu_play_sound_effect(void)
{
    sub_08071C24();
    play_sound_effect_08071990(gOptionsMenuData->unk1144[gOptionsMenuData->unk1132], 8, 16, 64, 0, 128, 0);
}

void options_menu_play_movie(void)
{
    movie_player_setup_data(
        3,
        gOptionsMenuMovieSongIDTable[gOptionsMenuData->unk1134],
        4,
        gOptionsMenuMovieIDTable[gOptionsMenuData->unk1134]);
    change_main_state(MAIN_STATE_MOVIE, USE_FADE);
    gPreviousMovieOption = gOptionsMenuData->unk1134;
    play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
}

void sub_08029190(void)
{
    sub_08011428(0);
}
