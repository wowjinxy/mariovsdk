#include "gba/gba.h"
#include "global.h"
#include "main.h"

u16 setup_graphics_08032814(struct UnkStruct1 *arg0, int arg1)
{
    u16 dispcnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    int i;
    struct UnkStruct1_sub *r4;
    struct GraphicsConfig *r2;

    gBGHorizontalOffset = 0;
    gBGVerticalOffset = 0;
    reset_some_array_0801B3C0();

    for (i = 0; i < 4; i++)
    {
        volatile u16 *bgReg;

        r4 = &arg0->unk0[arg0->unk20[i]];
        if (r4->unk0 != NULL)
        {
            dispcnt |= load_bg_tilemap_08032E24(r4->unk0, i, i + 1) << 8;
            bgReg = &((volatile u16 *)REG_ADDR_BG0CNT)[i];
            // init BGCNT
            *bgReg = r4->unk0->bgCnt[i];
            // set priority if specified
            if (arg0->bgPrio[i] != 0)
                *bgReg = (*bgReg & ~3) | ((arg0->bgPrio[i] - 1) & 3);
        }
    }

    for (i = 0; i < 4; i++)
    {
        struct GraphicsConfig *config;

        r4 = &arg0->unk0[i];
        config = r4->unk0;
        if (config != NULL && config->gfxOffset != 0)
        {
            u8 bgNum = r4->bgNum;
            struct UnkStruct1_sub *r5 = &arg0->unk0[arg0->unk20[r4->bgNum]];
            volatile u16 *bgReg = &((volatile u16 *)REG_ADDR_BG0CNT)[r4->bgNum];

            if (r5->unk0 == NULL)
                r5 = &arg0->unk0[i];

            if (r4->unk7 != 0)
            {
                bgNum = r4->unk7 - 1;
                // clear CHARBASE field
                *bgReg = (*bgReg & ~0xC) | (config->bgCnt[bgNum] & 0xC);
            }

            config = r4->unk0;
            gUnknown_03000E88 = (u8 *)config + config->gfxOffset;
            // Load tiles
            load_compressed_data((struct CmprHeader *)(gUnknown_03000E88 + 4), r5->unk0->vramAddr50[bgNum] + config->unk2C * 0x40, TRUE);

            // set color mode
            {
                u16 reg = *bgReg & ~BGCNT_256COLOR;
                reg |= (r4->unk0->bgCnt[r4->bgNum] & BGCNT_256COLOR);
                *bgReg = reg;
            }

            if (r4->unk6 == 0)
            {
                sub_0801B3DC(r4->unk0, !(r4->unk0->bgCnt[bgNum] & BGCNT_256COLOR), bgNum);
            }
        }
    }

    r4 = &arg0->unk0[arg0->unk20[arg0->unk32]];
    r2 = r4->unk0;
    if (r2 != NULL)
    {
        gUnknown_030012E4 = r2->unk2E;
        if (r2->unkOffsets[arg0->unk32] == 0)
        {
        }
        else if (r2->unkOffsets[arg0->unk32] > 0)
        {
            struct UnkStruct1_sub_child_data *r2_ = (void *)((u8 *)r2 + r2->unkOffsets[arg0->unk32]);
            gCurrentLevelWidth = r2_->unk4;
            gCurrentLevelHeight = r2_->unk6;
            gBGHorizontalOffset = gUnknown_03000E70[1]->unk8.as_s8;
            gBGVerticalOffset = gUnknown_03000E70[1]->unkC.as_s8;
        }
    }

    if (arg0->levelData != NULL)
    {
        struct GraphicsConfig *r2 = arg0->unk0[arg0->unk20[arg0->unk2C]].unk0;
        struct GraphicsConfig *r5 = arg0->unk0[arg0->unk2D].unk0;

        gSomeVRAMAddr_03000E80 = r2->bgVramMapAddrs[arg0->unk2C];
        gSomeVRAMAddr_03000E90 = r2->bgVramMapAddrs[arg0->unk2C - 1];
        gUnknown_03000E60 = r5->unk2C;
        if (!(r5->bgCnt[0] & BGCNT_256COLOR))
            *(vu16 *)&gUnknown_03000E60 <<= 1;
        if (arg0->unk33 & 2)
        {
            sub_08004428(arg0->levelData);
            sub_080041B8(r5);
            sub_08006968(r5);
            sub_08004634(1);
        }
        else
            sub_08006388();
    }
    gfx_related_0802C0B8(arg0->unk0[arg0->unk30].unk0);
    sub_0802BCA4(arg0->unk0[arg0->unk2F].unk0, arg1);
    if (arg0->unk2E >= 0)
        copy_some_palette_08032E80(arg0->unk0[arg0->unk2E].unk0);
    // init blend regs
    if (arg0->unk33 & 1)
    {
        struct GraphicsConfig *config = arg0->unk0[arg0->unk31].unk0;

        if (config != NULL)
        {
            if (gNextLevelInLevelTable.unk12 != 2 || (gUnknown_030009D0 & 0x10))
                save_blend_regs(config->bldCnt, config->bldAlpha, config->bldY);
            else
                save_blend_regs(config->bldCnt | BLDCNT_EFF_ALPHA, config->bldAlpha, config->bldY);
        }
    }
    return dispcnt;
}

void load_some_palette_08032B30(s16 arg0, s16 arg1)
{
    if (gLevelType == LEVEL_TYPE_MAIN)
    {
        if (gMainState == MAIN_STATE_TUTORIAL)
        {
            if (arg0 <= 5)
                load_predefined_palette(gPaletteIndices_0807DD34[arg1], LOAD_BG_PALETTE);
            else
                load_predefined_palette(gPaletteIndices_0807DD4C[arg1], LOAD_BG_PALETTE);
        }
        else
        {
            if (arg0 <= 11)
                load_predefined_palette(gPaletteIndices_0807DD34[arg1], LOAD_BG_PALETTE);
            else if (arg0 == 12)
                load_predefined_palette(gPaletteIndices_0807DD4C[arg1], LOAD_BG_PALETTE);
            else if (arg0 == 13)
                load_predefined_palette(gPaletteIndices_0807DD64[arg1], LOAD_BG_PALETTE);
        }
    }
    else if (gLevelType == LEVEL_TYPE_PLUS)
    {
        if (arg0 <= 5)
            load_predefined_palette(gPaletteIndices_0807DD7C[arg1], LOAD_BG_PALETTE);
        else if (arg1 == 2)
            load_predefined_palette(PALETTE_58, LOAD_BG_PALETTE);
        else
            load_predefined_palette(gPaletteIndices_0807DD64[arg1], LOAD_BG_PALETTE);
    }
    else if (gLevelType == LEVEL_TYPE_EXPERT_1_6)
        load_predefined_palette(gPaletteIndices_0807DD34[arg1], LOAD_BG_PALETTE);
    else if (gLevelType == LEVEL_TYPE_EXPERT_7_12)
        load_predefined_palette(gPaletteIndices_0807DD7C[arg1], LOAD_BG_PALETTE);
    else if (gLevelType == LEVEL_TYPE_MAIN_BOSS)
        load_predefined_palette(PALETTE_62, LOAD_BG_PALETTE);
    else if (gLevelType == LEVEL_TYPE_PLUS_BOSS)
        load_predefined_palette(PALETTE_63, LOAD_BG_PALETTE);
}

int sub_08032C44(struct UnknownStruct4 *arg0)
{
    struct UnkStruct1 sp0 = {0};
    struct UnknownStruct5 *r6 = arg0->unk0;
    struct GraphicsConfig *r7 = r6->backgroundData;

    sp0.unk0[0].unk0 = r7;
    sp0.unk0[0].bgNum = 2;
    sp0.unk0[1].unk0 = arg0->unk4;
    sp0.unk0[1].bgNum = 1;
    sp0.unk33 |= 1;
    sp0.unk2E = 0;
    sp0.unk20[3] = 0;
    sp0.unk20[2] = 0;
    sp0.unk20[1] = 0;
    sp0.unk20[0] = 0;
    sp0.unk0[2].bgNum = 0;
    sp0.unk0[2].unk0 = arg0->unk4;
    sp0.unk0[2].unk6 = 1;
    if (gUnknown_030009D0 & 0x18)
    {
        sp0.bgPrio[0] = 0;
        sp0.unk20[0] = 0;
        sp0.unk0[2].bgNum = 0;
        sp0.unk0[2].unk0 = r7;
        sp0.unk0[2].unk7 = 4;
        sp0.unk0[2].unk6 = 1;
    }
    switch (arg0->unk8->unk6)
    {
    case 0:
        break;
    case 1:
        sp0.bgPrio[2] = 2;
        sp0.bgPrio[3] = 4;
        if (gUnknown_030009D0 & 0x18)
            sp0.bgPrio[0] = 3;
    }
    sp0.levelData = r6->levelData;
    sp0.unk2C = 1;
    sp0.unk2D = 1;
    REG_DISPCNT |= setup_graphics_08032814(&sp0, (gNextLevelInLevelTable.unk12 == 2) ? 1 : 0);
    load_some_palette_08032B30(arg0->unk10, arg0->unk12);
    return sub_080319BC(arg0->unk4, r6, arg0->unk12);
}

struct Struct08032D50
{
    u8 filler0[0x40];
    u32 unk40;
    u8 filler44[0x4E - 0x44];
    u16 unk4E;
    u16 unk50;
    u16 unk52;
    u16 unk54;
    u16 unk56;
};

void sub_08032D50(struct Struct08032D50 *arg0)
{
    u8 i;

    if (arg0->unk4E & DISPCNT_BG0_ON)
        REG_BG0CNT = arg0->unk50;
    if (arg0->unk4E & DISPCNT_BG1_ON)
    {
        REG_BG1CNT = arg0->unk52;
        REG_BG1CNT &= ~3;
        REG_BG1CNT |= BGCNT_PRIORITY(2);
    }
    if (arg0->unk4E & DISPCNT_BG2_ON)
    {
        REG_BG2CNT = arg0->unk54;
        REG_BG2CNT &= ~3;
        REG_BG2CNT |= BGCNT_PRIORITY(1) | BGCNT_WRAP;
    }
    if (arg0->unk4E & DISPCNT_BG3_ON)
        REG_BG3CNT = arg0->unk56;
    REG_DISPCNT = arg0->unk4E;
    for (i = 0; i < 4; i++)
    {
    }
    if (arg0->unk40 != 0)
        gUnknown_03000E94 = (u8 *)arg0 + arg0->unk40 * 0x6C;
}

// Loads the tilemaps for the specified BGs (from start to end)
// Returns BG enable flags for DISPCNT
u32 load_bg_tilemap_08032E24(struct GraphicsConfig *config, int start, int end)
{
    u8 *base = (u8 *)config;
    u32 dispcnt = 0;
    int i;

    for (i = start; i < end; i++)
    {
        if (config->unkOffsets[i] > 0)
        {
            dispcnt |= 1 << i;
            gUnknown_03000E70[i] = (struct UnkStruct1_sub_child_data *)(base + config->unkOffsets[i]);
            // load tilemap
            load_compressed_data((struct CmprHeader *)((u8 *)gUnknown_03000E70[i] + 0x28), config->bgVramMapAddrs[i], 1);
        }
    }
    return dispcnt;
}

void copy_some_palette_08032E80(struct GraphicsConfig *arg0)
{
    u8 *src;
    register u8 *src_ asm("r0");
    register void *dest asm("r1");

    if (arg0->palOffset != 0)
    {
        gPaletteData_03000E8C = (u8 *)arg0 + arg0->palOffset;
        src = gPaletteData_03000E8C + 4;
        src_ = src;
        dest = (void *)PLTT;
        CpuCopy16(src_, dest, 0x200);
        sub_0802C104(0, 0, src);
    }
}

int dummy_return_0_08032EB4(void)
{
    return 0;
}

u16 load_graphics_config_bg2_08032EB8(struct GraphicsConfig *arg0)
{
    struct UnkStruct1 sp0 = {0};

    sp0.unk0[0].unk0 = arg0;
    sp0.unk0[0].bgNum = 2;
    return setup_graphics_08032814(&sp0, 0);
}

u16 load_graphics_config_08032EE4(struct GraphicsConfig *arg0)
{
    struct UnkStruct1 sp0 = {0};
    int i;
    struct GraphicsConfig *temp = arg0;

    for (i = 0; i < 4; i++)
    {
        sp0.unk0[i].unk0 = temp;
        sp0.unk0[0].bgNum = i;
        sp0.unk20[i] = i;
    }
    return setup_graphics_08032814(&sp0, 0);
}

u16 load_graphics_config_08032F24(struct GraphicsConfig *arg0[4], int arg1)
{
    struct UnkStruct1 sp0 = {0};
    int i;

    for (i = 0; i < 4; i++)
    {
        sp0.unk0[i].bgNum = i;
        sp0.unk0[i].unk0 = arg0[i];
        sp0.unk20[i] = i;
    }
    sp0.unk2E = arg1;
    return setup_graphics_08032814(&sp0, 0);
}

void sub_08032F68(void)
{
    clear_graphics_memory();
    sub_0802BCA4(NULL, 0);
    sub_0802C1B0();
    REG_IE = 1;
    enable_vcount_interrupt_0802BF28();
    REG_DISPSTAT = DISPSTAT_VBLANK_INTR;
    REG_IE |= INTR_FLAG_VCOUNT;
    REG_DISPSTAT |= DISPSTAT_VCOUNT_INTR;
    REG_IME = 1;
}
