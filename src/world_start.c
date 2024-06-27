#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"

static enum PaletteID gUnknown_080A8674[] =
{
    PALETTE_64,
    PALETTE_65,
    PALETTE_66,
    PALETTE_67,
    PALETTE_68,
    PALETTE_69,
};

static enum PaletteID gUnknown_080A868C[] =
{
    PALETTE_70,
    PALETTE_71,
    PALETTE_72,
    PALETTE_73,
    PALETTE_74,
    PALETTE_75,
};

static struct GraphicsConfig *sWorldStartTable[] =
{
    &gWorldOneStartData,
    &gWorldTwoStartData,
    &gWorldThreeStartData,
    &gWorldFourStartData,
    &gWorldFiveStartData,
    &gWorldSixStartData,
};

static struct GraphicsConfig *sWorldPlusStartTable[] =
{
    &gWorldOnePlusStartData,
    &gWorldTwoPlusStartData,
    &gWorldThreePlusStartData,
    &gWorldFourPlusStartData,
    &gWorldFivePlusStartData,
    &gWorldSixPlusStartData,
};

static s16 gUnknown_080A86D4[][2] =
{
    { SE_WORLD_START, SE_WORLD_START },
    { SE_MOVIE2_7,    SE_MOVIE5_07 },
    { SE_MOVIE5_01,   SE_MOVIE5_01 },
    { SE_MOVIE6_03,   SE_MOVIE6_03 },
    { SE_MOVIE4_09,   SE_MOVIE6_03 },
    { SE_MOVIE4_10,   SE_MOVIE4_10 },
};

struct Struct300
{
    s32 unk0;
    u32 unk4;
    s16 spriteId;
    s16 unkA;
    s16 subSpriteIndex;
    s16 unkE;
    u32 unk10;
};

static struct Struct300 *gUnknown_03000300;
static struct Struct300 *gUnknown_03000304;

void world_start_init_callback(void)
{
    struct GraphicsConfig *spC[4];

    arena_restore_head(0);
    if (sub_08071FE4() != 11)
        sub_0807204C(11, 128, 1);
    gUnknown_030002FC = arena_allocate(2 * sizeof(*gUnknown_030002FC));
    gUnknown_03000BE0 = 0;
    spC[0] = NULL;
    spC[1] = NULL;
    if (gLevelType == LEVEL_TYPE_MAIN || gLevelType == LEVEL_TYPE_MAIN_BOSS)
    {
        spC[2] = sWorldStartTable[gCurrentWorld];
        spC[3] = sWorldStartTable[gCurrentWorld];
    }
    else
    {
        spC[2] = sWorldPlusStartTable[gCurrentWorld];
        spC[3] = sWorldPlusStartTable[gCurrentWorld];
    }
    load_graphics_config_08032F24(spC, 3);
    sub_08037230();
    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    if (gLevelType == LEVEL_TYPE_MAIN || gLevelType == LEVEL_TYPE_MAIN_BOSS)
    {
        gUnknown_030002F0 = sub_08006968(sWorldStartTable[gCurrentWorld]);
        load_predefined_palette(gUnknown_080A8674[gCurrentWorld], LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
    }
    else
    {
        gUnknown_030002F0 = sub_08006968(sWorldPlusStartTable[gCurrentWorld]);
        load_predefined_palette(gUnknown_080A868C[gCurrentWorld], LOAD_BG_PALETTE);
        load_predefined_palette(gUnknown_080A8674[gCurrentWorld], LOAD_OBJ_PALETTE);
    }
    if (gCurrentWorld == 0)
    {
        gUnknown_030002F4 = 1;
        gUnknown_03000300->unk10 = play_sound_effect_08071990(SE_DK_WALK, 12, 16, 64, 0, 128, 0);
        sub_08040FC0(gUnknown_03000300->unk10, gUnknown_03000300->unk0);
        play_sound_effect_08071990(SE_MOVIE2_6, 8, 16, 64, 0, 128, 0);
        sub_080379BC(1, 0);
    }
    else
    {
        gUnknown_030002F4 = 0;
        sub_080379BC(1, 0);
        sub_080379BC(0, 22);
    }
    set_blend_regs_08029CDC(gWorldOneStartData.bldCnt, gWorldOneStartData.bldAlpha, gWorldOneStartData.bldY);
    CpuFill16(0, &gBGLayerOffsets, sizeof(gBGLayerOffsets));
    gUnknown_030002F8 = -0x3200;
    gBGLayerOffsets.bg2_y = gUnknown_030002F8 >> 8;
}

void sub_08037230(void)
{
    gUnknown_03000300 = arena_allocate(sizeof(*gUnknown_03000300));
    gUnknown_03000300->subSpriteIndex = 0;
    gUnknown_03000300->unkE = gUnknown_08251EC0.unk1;
    gUnknown_03000300->unk0 = -0x3F00;
    gUnknown_03000300->unk4 = 56;
    gUnknown_03000300->spriteId = SPRITE_ID_DK_WORLD_INTRO;
    gUnknown_03000300->unkA = 0x200;

    gUnknown_03000304 = arena_allocate(sizeof(*gUnknown_03000304));
    gUnknown_03000304->subSpriteIndex = 0;
    gUnknown_03000304->unkE = gUnknown_0854301C.unk1;
    gUnknown_03000304->unk0 = -0x2000;
    gUnknown_03000304->unk4 = 88;
    gUnknown_03000304->spriteId = SPRITE_ID_MARIO_RUN;
    gUnknown_03000304->unkA = 336;
}

void sub_080372A0(void)
{
    struct Struct2FC *r4;
    int isPlus;

    switch (gUnknown_030002F4)
    {
    case 0:
        r4 = gUnknown_030002FC;
        if (--r4->unk1 == 0)
        {
            if (r4->unk0 < r4->unk5 - 1)
            {
                r4->unk0++;
                r4->unk1 = gUnknown_030002F0->unk108[r4->unk0 + r4->unk4]->unkB;
            }
            else
            {
                r4->unk6 = 1;
                gUnknown_030002F4 = 1;
                gUnknown_03000300->unk10 = play_sound_effect_08071990(SE_DK_WALK, 12, 16, 64, 0, 128, 0);
                sub_08040FC0(gUnknown_03000300->unk10, gUnknown_03000300->unk0);
                play_sound_effect_08071990(SE_MOVIE2_6, 8, 16, 64, 0, 128, 0);
            }
        }
        break;
    case 1:
        r4 = gUnknown_030002FC + 1;
        if (gUnknown_03000300->unk0 <= 0xEFFF)
        {
            gUnknown_03000300->unk0 += gUnknown_03000300->unkA;
            sub_08040FC0(gUnknown_03000300->unk10, gUnknown_03000300->unk0);
        }
        else
        {
            gUnknown_030002F4 = 2;
            sub_08071E14(234);
            gUnknown_03000304->unk10 = play_sound_effect_08071990(18, 12, 16, 64, 0, 128, 0);
            sub_08040FC0(gUnknown_03000304->unk10, gUnknown_03000304->unk0);
        }
        if (--r4->unk1 == 0)
        {
            if (r4->unk0 < r4->unk5 - 1)
            {
                if (r4->unk0 == 0 || r4->unk0 == 8 || r4->unk0 == 16)
                    play_sound_effect_08071990(SE_CURSOR_WORLD, 8, 16, 64, 0, 128, 0);
                r4->unk0++;
                r4->unk1 = gUnknown_030002F0->unk108[r4->unk0 + r4->unk4]->unkB;
            }
            else
                r4->unk6 = 1;
        }
        break;
    case 2:
        if (gUnknown_03000304->unk0 <= 0x63FF)
        {
            gUnknown_03000304->unk0 += gUnknown_03000304->unkA;
            sub_08040FC0(gUnknown_03000304->unk10, gUnknown_03000304->unk0);
        }
        else
        {
            gUnknown_03000304->spriteId = SPRITE_ID_MARIO_STAND;
            gUnknown_030002F8 = -0x3200;
            gBGLayerOffsets.bg2_y = gUnknown_030002F8 >> 8;
            gUnknown_030002F4 = 3;
            sub_08071E14(18);
            if (gLevelType == LEVEL_TYPE_MAIN || gLevelType == LEVEL_TYPE_MAIN_BOSS)
                isPlus = 0;
            else
                isPlus = 1;
            play_sound_effect_08071990(gUnknown_080A86D4[gCurrentWorld][isPlus], 8, 16, 64, 0, 128, 0);
            REG_DISPCNT |= DISPCNT_BG2_ON;
        }
        break;
    case 3:
        gUnknown_030002F8 += 0x80;
        if (gUnknown_030002F8 >= 0)
        {
            gUnknown_030002F8 = 0;
            gUnknown_030002F4 = 4;
        }
        gBGLayerOffsets.bg2_y = gUnknown_030002F8 >> 8;
        break;
    }
}

void world_start_main(void)
{
    struct SpriteTemplate *r2;
    struct Struct300 *r3;

    sub_08029C20();
    process_input();
    if (gUnknown_030002F4 == 4 && (gNewKeys & (A_BUTTON | START_BUTTON)))
    {
        play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
        if (gPreviousMainState == MAIN_STATE_FILE_SELECT)
        {
            movie_player_setup_data(3, 41, 8, 1);
            change_main_state(MAIN_STATE_MOVIE, TRUE);
            sub_080148A4(1, 1);
        }
        else
            change_main_state(MAIN_STATE_LEVEL_SELECT, TRUE);
    }

    r3 = gUnknown_03000304;
    r2 = &gUncompressedGraphicsTable[r3->spriteId];
    if (--r3->unkE <= 0)
    {
        r3->subSpriteIndex++;
        if (r3->subSpriteIndex >= r2->x)
            r3->subSpriteIndex = 0;
        r3->unkE = r2->subSprites[r3->subSpriteIndex].duration;
    }

    r3 = gUnknown_03000300;
    r2 = &gUncompressedGraphicsTable[r3->spriteId];
    if (--r3->unkE <= 0)
    {
        r3->subSpriteIndex++;
        if (r3->subSpriteIndex >= r2->x)
            r3->subSpriteIndex = 0;
        r3->unkE = r2->subSprites[r3->subSpriteIndex].duration;
    }
}

struct SubSpriteTemplate2
{
    /*0x00*/ u8 index;  // index into sprite sheet?
    /*0x01*/ u8 duration;  // animation frame duration
    /*0x02*/ s8 x_offset;  // x offset from sprite position
    /*0x03*/ s8 y_offset;  // y offset from sprite position
    u8 filler4[4];
    u32 unk8;  // some kind of flags?
    struct SubSpriteTemplate_child *unkC;
    u8 filler10[0x24-0x10];
};

void sub_080375EC(struct Struct300 *arg0, u8 arg1)  // unreferenced
{
    struct SpriteTemplate *r7 = &gUncompressedGraphicsTable[arg0->spriteId];

    if ((s32)r7->subSprites[0].unk8 < 0)
    {
        struct SpriteTemplate *r5 = (struct SpriteTemplate *)&r7->subSprites[0];  // WTF?
        u32 r1 = r5->subSprites[0].unk8;
        u8 r2 = r1 >> 24;
        u8 r0 = r1 >> 16;
        s16 r9 = r2 * r0;
        s16 r0_ = (r1 & 0x40) ? r9 >> 2 : r9 >> 3;

        DmaCopy32(3,
            r5->tileData + ((struct SubSpriteTemplate2 *)r5->subSprites)[arg0->subSpriteIndex].index * r0_ * 4,
            (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C),
            r9 / 1);
        DmaCopy32(3, ((struct SpriteTemplate *)r5)->oamData /* hmm */, &gOamBuffer[gUnknown_030002F6], 8);
        gOamBuffer[gUnknown_030002F6].tileNum += gVRAMCurrTileNum_03001930;
        gOamBuffer[gUnknown_030002F6].x = arg0->unk0 >> 8;
        gOamBuffer[gUnknown_030002F6].y = arg0->unk4;
        ((struct OamData_alt *)&gOamBuffer[gUnknown_030002F6])->matrixNum_hflip = arg1;
        gOamBuffer[gUnknown_030002F6].priority = 3;
        gVRAMCurrTileNum_03001930 += r9 >> 5;
        gObjVRAMCopyOffset_0300192C += r9;
        gUnknown_030002F6++;
    }
    DmaCopy32(3,
        r7->tileData + ((struct SubSpriteTemplate2 *)r7->subSprites)[arg0->subSpriteIndex].index * r7->unk6 * 4,
        (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C),
        r7->y);
    DmaCopy32(3, r7->oamData, &gOamBuffer[gUnknown_030002F6], 8);
    gOamBuffer[gUnknown_030002F6].tileNum += gVRAMCurrTileNum_03001930;
    gOamBuffer[gUnknown_030002F6].x = arg0->unk0 >> 8;
    gOamBuffer[gUnknown_030002F6].y = arg0->unk4;
    ((struct OamData_alt *)&gOamBuffer[gUnknown_030002F6])->matrixNum_hflip = arg1;
    gOamBuffer[gUnknown_030002F6].priority = 3;
    gVRAMCurrTileNum_03001930 += r7->unk4;
    gObjVRAMCopyOffset_0300192C += r7->y;
    gUnknown_030002F6++;
}

static inline void inlinefunc(struct Struct2FC *ptr)
{
    sub_08006548(
        ptr->unk2,
        ptr->unk3,
        gUnknown_030002F0->unk108[ptr->unk0 + ptr->unk4],
        gWorldOneStartData.bgVramMapAddrs[3], 5);
}

void world_start_loop(void)
{
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    DmaFill32(3, 0xA0, gOamBuffer, sizeof(gOamBuffer));
    { u8 unused[0xB84]; }
    gVRAMCurrTileNum_03001930 = gObjVRAMCopyOffset_0300192C = gUnknown_030002F6 = 0;
    switch (gUnknown_030002F4)
    {
    case 0:
        inlinefunc(&gUnknown_030002FC[0]);
        inlinefunc(&gUnknown_030002FC[1]);
        break;
    case 1:
        inlinefunc(&gUnknown_030002FC[1]);
        sub_080375EC(gUnknown_03000300, 0);
        break;
    default:
        sub_080375EC(gUnknown_03000304, 1);
        break;
    }
    DmaCopy32(3, gOamBuffer, (void *)OAM, 0x400);
    if (gUnknown_03000C28 == 0)
        sub_080372A0();
}

void world_start_end(void)
{
}

void sub_080379BC(u8 arg0, u8 arg1)
{
    struct Struct2FC *r2 = &gUnknown_030002FC[arg0];
    struct UnknownStruct15_child *r3;

    r2->unk0 = 0;
    r3 = gUnknown_030002F0->unk108[arg1];
    r2->unk1 = r3->unkB;
    r2->unk5 = r3->unkA;
    r2->unk4 = arg1;
    r2->unk6 = 0;
    r2->unk2 = r3->unkC;
    r2->unk3 = r3->unkD;
}

asm(".balign 4, 0");
