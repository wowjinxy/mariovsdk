#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"

struct Struct0802B798
{
	u8 filler0[0x32];
	s16 unk32;
};

void sub_0802B798(struct Struct0802B798 *arg0, u32 arg1)
{
	s16 r0_;
	u32 r4;
	u32 r5;

	if (arg0->unk32 > 0)
	{
		u32 r0 = arg1 & 0x7F;
		if (r0 == 9)
		{
			if (gCurrentSwitchState != 1)
			{
				r0_ = gEWRAMBasePtr->unk600C[arg1 >> 16] - 1;
				r4 = gEWRAMBasePtr->unkC[r0_].unk2;
				r4 <<= 25;
				r4 >>= 22;
				r5 = gEWRAMBasePtr->unkC[r0_].unk3;
				r5 <<= 3;
				gPreviousSwitchState = gCurrentSwitchState;
				gCurrentSwitchState = 1;
				gUnknown_030019A0 |= 0x20000;
				sub_080035C0(1, gPreviousSwitchState);
				sub_0801B50C(1);
				sub_08041F2C(gUnknown_030019E4);
				r4 -= 8;
				r5 += 8;
				sub_0804138C(3, 0, r4, r5);
				play_sound_effect_08071990(SE_SWITCH1, 8, 16, 64, 0, 128, 0);
			}
		}
		else if (r0 == 8)
		{
			if (gCurrentSwitchState != 2)
			{
				r0_ = gEWRAMBasePtr->unk600C[arg1 >> 16] - 1;
				r4 = gEWRAMBasePtr->unkC[r0_].unk2;
				r4 <<= 25;
				r4 >>= 22;
				r5 = gEWRAMBasePtr->unkC[r0_].unk3;
				r5 <<= 3;
				gPreviousSwitchState = gCurrentSwitchState;
				gCurrentSwitchState = 2;
				gUnknown_030019A0 |= 0x20000;
				sub_080035C0(2, gPreviousSwitchState);
				sub_0801B50C(1);
				sub_08041F2C(gUnknown_030019E4);
				r4 -= 8;
				r5 += 8;
				sub_0804138C(4, 0, r4, r5);
				play_sound_effect_08071990(SE_SWITCH2, 8, 16, 64, 0, 128, 0);
			}
		}
		else if (r0 == 10)
		{
			if (gCurrentSwitchState != 3)
			{
				r0_ = gEWRAMBasePtr->unk600C[arg1 >> 16] - 1;
				r4 = gEWRAMBasePtr->unkC[r0_].unk2;
				r4 <<= 25;
				r4 >>= 22;
				r5 = gEWRAMBasePtr->unkC[r0_].unk3;
				r5 <<= 3;
				gPreviousSwitchState = gCurrentSwitchState;
				gCurrentSwitchState = 3;
				gUnknown_030019A0 |= 0x20000;
				sub_080035C0(3, gPreviousSwitchState);
				sub_0801B50C(1);
				sub_08041F2C(gUnknown_030019E4);
				r4 -= 8;
				r5 += 8;
				sub_0804138C(5, 0, r4, r5);
				play_sound_effect_08071990(SE_SWITCH3, 8, 16, 64, 0, 128, 0);
			}
		}
	}
}

void sub_0802B984(void)
{
	gUnknown_030019A0 |= 0x10000;
}

void load_arm_code_0802B998(void)
{
    u8 *romBase = sub_080006D8;
    void *buffer = arena_allocate(0x1068);
    int i;
    u8 **src;
    u8 **dest;

    CpuCopy32(romBase, buffer, 0x1068);
    gUnknown_03000C2C = buffer;
    dest = (u8 **)gUnknown_03000970;
    src = (u8 **)gUnknown_0807AA1C;
    for (i = 0; i < 15; i++)
        *dest++ = (u8 *)*src++ - (u8 *)romBase + (u8 *)buffer;
}

void sub_0802B9E4(void)
{
    gUnknown_03000C30.unk4 = arena_allocate(30 * sizeof(struct UnknownListThing2));
    gUnknown_03000C30.unk0 = 0;
}

struct LinkedListHeaderMaybe *sub_0802BA00(void)
{
    void *r5 = gUnknown_03000C30.unk4;
    struct UnknownListThing2 *r0;

    if (r5 == NULL)
    {
        gUnknown_03000C30.unk4 = arena_allocate(30 * sizeof(struct UnknownListThing2));
        gUnknown_03000C30.unk0 = 0;
    }
    if (gUnknown_03000C30.unk0 >= 30)
        return NULL;
    r0 = &gUnknown_03000C30.unk4[gUnknown_03000C30.unk0];
    gUnknown_03000C30.unk0++;
    r0->unkC = 0;
    return &r0->header;
}

void sub_0802BA38(int arg0, int arg1, int arg2, int arg3)
{
    if (gUnknown_03000C30.unk4 != NULL)
    {
        struct UnknownListThing2 *r4 = gUnknown_03000C30.unk4;
        struct UnknownListThing2 *r5 = r4 + gUnknown_03000C30.unk0;

        while (r4 < r5)
        {
            if (r4->header.unk8 != r4->unkC)
            {
                sub_080064D4(r4, r4->header.unk8, arg0, arg1);
                sub_080064D4(r4, r4->header.unk8, arg2, arg3);
                r4->unkC = r4->header.unk8;
            }
            r4++;
        }
    }
}

void sub_0802BA94(void)
{
    gUnknown_03000C30.unk4 = NULL;
}

void sub_0802BAA0(void)
{
    if (gUnknown_03000C40.unk20 != NULL)
    {
        struct LinkedListHeaderMaybe *r4 = gUnknown_03000C40.unk20;
        struct LinkedListHeaderMaybe *r7 = r4 + gUnknown_03000C40.unk1C;

        while (r4 < r7)
        {
            if (r4->unk0 != 0)
            {
                if (r4->unk4.as_struct.unk0 != 0)
                    r4->unk4.as_struct.unk0--;
                else
                {
                    struct UnknownListThing1 *r3;
                    r3 = (void *)((u8 *)r4->unk8->unk8 + gUnknown_03000C40.unk18);
                    r4->unk8->unk8 = &r3->header;
                    if (r3 == (void *)gUnknown_03000C40.unk0[r4->unk0].unk4)
                        sub_0802BC64(r4 - gUnknown_03000C40.unk20, 0);
                    else
                        r4->unk4.as_struct.unk0 = r3->unkC;
                }
            }
            r4++;
        }
    }
}

void sub_0802BB20(u8 *arg0, int arg1)
{
    int i;

    gUnknown_03000C40.unk18 = arg1;
    for (i = 0; i < 3; i++)
    {
        gUnknown_03000C40.unk0[i].unk0 = arg0;
        arg0 += arg0[11] * arg1;
        gUnknown_03000C40.unk0[i].unk4 = arg0;
    }
}

void sub_0802BB4C(void)
{
    gUnknown_03000C40.unk20 = arena_allocate(0x54);
    CpuFill16(0, gUnknown_03000C40.unk20, 0x54);
    gUnknown_03000C40.unk1C = 0;
}

int sub_0802BB80(u8 arg0, u8 arg1, u16 arg2)
{
    struct LinkedListHeaderMaybe *r4 = gUnknown_03000C40.unk20;
    struct LinkedListHeaderMaybe *r2;
    int r0;

    if (r4 == NULL)
    {
        gUnknown_03000C40.unk20 = arena_allocate(0x54);
        CpuFill16(0, gUnknown_03000C40.unk20, 0x54);
        gUnknown_03000C40.unk1C = 0;
    }
    if (gUnknown_03000C40.unk1C > 6 || (r4 = sub_0802BA00()) == NULL)
        return 0;
    r2 = gUnknown_03000C40.unk20 + gUnknown_03000C40.unk1C;
    gUnknown_03000C40.unk1C++;
    r2->unk4.as_struct.unk0 = 0;
    r2->unk0 = 0;
    r2->unk8 = r4;
    r2->unk4.as_struct.unk2 = arg2;
    r4->unk0 = arg0;
    r4->unk4.as_u32 = arg1;
    r4->unk8 = gUnknown_03000C40.unk0[0].unk0;
    // missing return value
}

u8 sub_0802BC00(int arg0)
{
    u16 r4 = gEWRAMBasePtr->unk600C[arg0];
    struct LinkedListHeaderMaybe *r2 = gUnknown_03000C40.unk20;
    struct LinkedListHeaderMaybe *r1 = r2 + gUnknown_03000C40.unk1C;

    while (r2 < r1)
    {
        if (r2->unk4.as_struct.unk2 == r4)
            return r2 - gUnknown_03000C40.unk20 + 1;
        r2++;
    }
    return 1;
}

void sub_0802BC64(u8 arg0, int arg1)
{
    struct LinkedListHeaderMaybe *r2 = &gUnknown_03000C40.unk20[arg0];
    struct UnknownListThing1 *r0;

    if (r2->unk0 != arg1)
    {
        r2->unk0 = arg1;
        r0 = (struct UnknownListThing1 *)r2->unk8->unk8 = gUnknown_03000C40.unk0[arg1].unk0;
        r2->unk4.as_struct.unk0 = r0->unkC;
    }
}

void sub_0802BC98(void)
{
    gUnknown_03000C40.unk20 = NULL;
}

void sub_0802BCA4(struct GraphicsConfig *config, int arg1)
{
    register u32 r3 asm("r3") = 0x68;
    struct UnkStruct1_sub_child_data68 *r5;
    u8 *end;
    u8 *start;
    u32 size;
    int i;
    int r4_;

    if (config != NULL && config->unk0 < 0 && (config->unk0 & 0x7FFFFFFF) > r3
     && config->unk68 != 0
     && ((struct UnkStruct1_sub_child_data68 *)((u8 *)config + config->unk68))->unk2 != 0)
        r5 = (struct UnkStruct1_sub_child_data68 *)((u8 *)config + config->unk68);
    else if (arg1 == 0)
    {
        gUnknown_03000C90.armFunc = NULL;
        gUnknown_03000C90.unk8 = 4;
        return;
    }
    else
        r5 = &gUnknown_0807BA58;

    // Load function
    end = sub_08001760_end;
    start = sub_08001760;
    size = end - start;
    gUnknown_03000C90.armFunc = arena_allocate(size);
    if (arg1 != 0)
        CpuCopy16(start, gUnknown_03000C90.armFunc, size);
    else
        CpuCopy16(sub_0800169C, gUnknown_03000C90.armFunc, size);

    gUnknown_03000C90.unk14 = arena_allocate(r5->unk2 * 0x10 + 1);
    for (i = 0; i < 2; i++)
        gUnknown_03000C90.unkC[i] = arena_allocate(0x1C8);
    CpuFill32(0, gUnknown_03000C90.unk14, r5->unk2 * 0x10);

    for (i = 0; i < r5->unk2; i++)
    {
        struct UnkStruct1_sub_child_data68_sub *r2 = &r5->unk4[i];
        struct StructC90_child14 *r1 = &gUnknown_03000C90.unk14[i];

        r1->unk0 = r2->unk0;
        r1->unkC = r2->unk8;
        r1->unk4 = r2->unk4;
    }

    gUnknown_03000C70.unk18 = r5->unk2;
    gUnknown_03000C70.unk14 = gUnknown_03000C90.unk14;
    r4_ = r5->unk0;
    gUnknown_03000C70.unk0 = gUnknown_0807BB30[r4_];
    CpuFill16(0, &gBGLayerOffsets, sizeof(gBGLayerOffsets));
    gUnknown_03000C70.unk8 = (u8 *)&gBGLayerOffsets + r4_ * 4;
    gUnknown_03000C70.unkC = (u8 *)&gBGLayerOffsets + r4_ * 4 + 2;
    gUnknown_03000C70.unk4 = 0x04000005;
    gUnknown_03000C90.copyDest = gUnknown_03000C70.unk0;
    gUnknown_03000C90.copySrc = gUnknown_03000C90.unkC[1];
    gUnknown_03000C90.unk8 = 3;
    gUnknown_03000C90.copyLength = 1;
    if (gUnknown_03000C90.armFunc != NULL)
        gUnknown_03000C90.armFunc(&gUnknown_03000C90, &gUnknown_03000C70, 0, 0);
}

int has_0x68_struct_0802BE18(struct GraphicsConfig *config)
{
    register u32 r3 asm("r3") = 0x68;

    if (config != NULL && config->unk0 < 0 && (config->unk0 & 0x7FFFFFFF) > r3
     && config->unk68 != 0)
    {
        struct UnkStruct1_sub_child_data68 *r0 = (struct UnkStruct1_sub_child_data68 *)((u8 *)config + config->unk68);
        if (r0->unk2 != 0)
            return TRUE;
    }
    return FALSE;
}

void sub_0802BE50(void)
{
    if (gUnknown_03000C90.armFunc != NULL)
        gUnknown_03000C90.armFunc(&gUnknown_03000C90, &gUnknown_03000C70, NULL, 0);
}

void sub_0802BE74(void)
{
    if (gUnknown_03000C90.unk8 > 1)
        return;
    if (gUnknown_03000C90.unk8 == 1)
    {
        if (gUnknown_03000C90.copySrc == gUnknown_03000C90.unkC[0])
            gUnknown_03000C90.copySrc = gUnknown_03000C90.unkC[1];
        else
            gUnknown_03000C90.copySrc = gUnknown_03000C90.unkC[0];
    }
    gUnknown_03000C90.unk8 = 0;
}

void sub_0802BEA4(u8 arg0)
{
    if (gUnknown_03000C90.armFunc != NULL)
    {
        gUnknown_03000C90.armFunc(&gUnknown_03000C90, &gUnknown_03000C70, gUnknown_0807BA68, gUnknown_0300015A);
        if (arg0 != 0 && --gUnknown_0300015A < 0)
            gUnknown_0300015A = 99;
    }
}

void set_bg_offset_regs_0802BEEC(struct backgroundLayerOffset *backgroundLayerOffset)
{
    CpuCopy16(backgroundLayerOffset, (void *)REG_ADDR_BG0HOFS, sizeof(*backgroundLayerOffset));
    if (gUnknown_03000C90.unk8 <= 2 && gUnknown_03000C90.copyLength != 0)
        CpuCopy16(gUnknown_03000C90.copySrc, gUnknown_03000C90.copyDest, 2);
}

void sub_0802BF1C(void)
{
    gUnknown_0300015A = 0;
}

// The LYC field of the DISPSTAT register
#define REG_DISPSTAT_LYC (*(vu8 *)(REG_ADDR_DISPSTAT + 1))

void enable_vcount_interrupt_0802BF28(void)
{
    REG_IE |= INTR_FLAG_VCOUNT;
    REG_DISPSTAT_LYC = 0;
    REG_DISPSTAT |= DISPSTAT_VCOUNT_INTR;
    REG_DMA0CNT_H = 0;
    gUnknown_03000CB0.unk0[0].unk4 = 227;
    gUnknown_03000CB0.unk0[0].unk0 = sub_0802C080;
    gUnknown_03000CB0.unk0[0].unk8 = &gUnknown_03000CB0.unk0[0];
}

// Is this really for the TIMER0 interrupt? Looks like VCOUNT to me...
void tm0over_interrupt_handler(void)
{
    struct StructCB0_child *r5 = gUnknown_03000CB0.unk68;

    if (r5 != NULL)
    {
        struct StructCB0_child *r4;

        for (r4 = r5; r4 != NULL; r4 = r4->next)
            r4->unk0(r4->unk10);
        gUnknown_03000CB0.unk68 = r5->unk8;
        REG_DISPSTAT_LYC = r5->unk4;
    }
}

void sub_0802BFA4(void)
{
    REG_DMA0CNT_H = 0;
    gUnknown_03000CB0.unk6C = &gUnknown_03000CB0.unk0[0];
    gUnknown_03000CB0.unk0[0].unk8 = &gUnknown_03000CB0.unk0[0];
    gUnknown_03000CB0.unk64 = 1;
}

void sub_0802BFC0(void *arg0, void (*func)(struct Struct0802C1C0 *), u32 arg2)
{
    struct StructCB0_child *r3;
    struct StructCB0_child *r2;
    int r12 = 0;
    struct StructCB0_child *r4;
    struct StructCB0_child *r7;

    if (arg2 > 159)
        return;
    r7 = NULL;
    r3 = gUnknown_03000CB0.unk6C;
    r2 = r3;
    if (r3 != NULL)
    {
        do
        {
            if (r3->unk4 >= arg2)
            {
                if (r3->unk4 <= arg2 + 2)
                {
                    if (r3->unk0 == func)
                        return;
                    r12 = 1;
                    break;
                }
                if (r3->unk4 > arg2)
                    break;
            }
            r7 = r3;
            r3 = r3->unk8;
        } while (r3 != r2);
    }
    r4 = &gUnknown_03000CB0.unk0[gUnknown_03000CB0.unk64];
    gUnknown_03000CB0.unk64++;
    r4->unk4 = arg2;
    r4->unk0 = func;
    r4->unk10 = arg0;
    r4->next = NULL;
    if (r12)
    {
        while (r3->next != NULL)
            r3 = r3->next;
        r3->next = r4;
        return;
    }
    else if (r7 == NULL)
        gUnknown_03000CB0.unk6C = r4;
    else
        r7->unk8 = r4;
    r4->unk8 = r3;
}

void sub_0802C058(void)
{
    gUnknown_03000CB0.unk68 = gUnknown_03000CB0.unk6C;
    if (gUnknown_03000CB0.unk68 != NULL)
        REG_DISPSTAT_LYC = gUnknown_03000CB0.unk68->unk4;
    else
        REG_DISPSTAT_LYC = 0;
}

void sub_0802C080(struct Struct0802C1C0 *unused)
{
    volatile u32 *dma0 = (u32 *)REG_ADDR_DMA0SAD;

    REG_DMA0CNT_H = 0;
    if (gUnknown_03000C90.unk8 <= 2)
    {
        dma0[0] = (u32)gUnknown_03000C90.copySrc;
        dma0[1] = (u32)gUnknown_03000C90.copyDest;
        dma0[2] = ((DMA_ENABLE | DMA_START_HBLANK | DMA_REPEAT | DMA_DEST_RELOAD) << 16) | gUnknown_03000C90.copyLength;
    }
}

void gfx_related_0802C0B8(struct GraphicsConfig *config)
{
    struct StructD20 *r3 = &gCurrentPalette;

    if (config == NULL || config->unk0 >= 0 || (u32)(config->unk0 & 0x7FFFFFFF) <= 0x6C || config->unk6C == 0)
        r3->unk10 = 0x400;
    else
    {
        struct GraphicsConfig_6C *r1 = (void *)((u8 *)config + config->unk6C);

        r3->unk8 = r1->unk4;
        r3->unkC = r1->unk204;
        r3->unk10 = r1->unk0;
        r3->unk12 = r1->unk2;
    }
}

void sub_0802C104(int arg0, int arg1, void *arg2)
{
    gCurrentPalette.unk0[arg0][arg1] = arg2;
}

int has_0x6C_struct_0802C118(struct GraphicsConfig *arg0)
{
    if (arg0 == NULL || arg0->unk0 >= 0 || (u32)(arg0->unk0 & 0x7FFFFFFF) <= 0x6C || arg0->unk6C == 0)
        return FALSE;
    else
        return TRUE;
}

void sub_0802C144(int arg0)
{
    if (gCurrentPalette.unk10 != 0x400 && gCurrentPalette.unk0[0][0] != NULL && gCurrentPalette.unk0[0][1] != NULL)
    {
        DmaCopy16(3, gCurrentPalette.unk0[0][0], (void *)BG_PLTT, BG_PLTT_SIZE);
        DmaCopy32(3, gCurrentPalette.unk0[0][1], (void *)OBJ_PLTT, OBJ_PLTT_SIZE);
        arg0 = gCurrentPalette.unk10 - arg0;
        if (arg0 < 160)
        {
            if (arg0 < 0)
                arg0 = 0;
            sub_0802BFC0(&gCurrentPalette, load_some_palettes_0802C1C0, arg0);
        }
    }
}

void sub_0802C1B0(void)
{
    gCurrentPalette.unk10 = 0x400;
}

void load_some_palettes_0802C1C0(struct Struct0802C1C0 *arg0)
{
    struct Struct0802C1C0 *r3 = arg0;

    if (arg0->unk12 & 2)
        DmaCopy32(3, arg0->bgPalSrc, (void *)BG_PLTT, BG_PLTT_SIZE);
    if (r3->unk12 & 1)
        DmaCopy32(3, r3->objPalSrc, (void *)OBJ_PLTT, OBJ_PLTT_SIZE);
}

void sub_0802C20C(void)
{
    gUnknown_0300015C = 0;
    gUnknown_03000D38 = 90;
    gUnknown_03000D34 = 0;
    gUnknown_03000D3C = 0;
    gUnknown_03000160 = 0;
    gUnknown_03000161 = 0;
    if (gMainState == MAIN_STATE_TUTORIAL || gMainState == MAIN_STATE_TUTORIAL_SETUP)
    {
        gUnknown_03000164 = gUnknown_0807C0E0[gNextLevelInLevelTable.unk10].unk4;
        gUnknown_03000168 = gUnknown_0807C0E0[gNextLevelInLevelTable.unk10].unk0;
    }
    else if (gLevelType == LEVEL_TYPE_PLUS)
    {
        gUnknown_03000164 = gUnknown_0807C098[gNextLevelInLevelTable.unk10].unk4;
        gUnknown_03000168 = gUnknown_0807C098[gNextLevelInLevelTable.unk10].unk0;
    }
    else if (gLevelType == LEVEL_TYPE_EXPERT_1_6)
    {
        gUnknown_03000164 = gUnknown_0807C0D0.unk4;
        gUnknown_03000168 = gUnknown_0807C0D0.unk0;
    }
    else if (gLevelType == LEVEL_TYPE_EXPERT_7_12)
    {
        gUnknown_03000164 = gUnknown_0807C0D8.unk4;
        gUnknown_03000168 = gUnknown_0807C0D8.unk0;
    }
    else
    {
        gUnknown_03000164 = gUnknown_0807C028[gNextLevelInLevelTable.unk10].unk4;
        gUnknown_03000168 = gUnknown_0807C028[gNextLevelInLevelTable.unk10].unk0;
    }
    gUnknown_030009E0 = gUnknown_03000168[gUnknown_03000160].unk2;
    gUnknown_03000D40 = gUnknown_030009E0 >> 3;
    gUnknown_03000160++;
}

void sub_0802C31C(void)
{
    s16 i;
    s16 j;
    s16 sp10 = gCurrentLevelWidth >> 3;

    j = (gUnknown_030009E0 + 2) >> 3;
    for (i = 0; i < sp10; i++)
    {
        int index;
        int r0;

        index = j * 0x40 + i;
        r0 = gEWRAMBasePtr->unk600C[index];
        if (r0 != 0)
        {
            int r6 = gEWRAMBasePtr->unkC[r0 - 1].unk0;
            if (gObjectTileDataRAMPtr->unk108[r6 - 1]->unk4 == 40)
            {
                struct Struct08078210_sub *r0 = gObjectTileDataRAMPtr->unk108[r6];
                struct Struct802C31C sp0;

                sp0.unk0 = i;
                sp0.unk4 = j - r0->unk2 + 1;
                level_edit_delete_object(&sp0);
                sub_080063E4(&sp0, r6, gEWRAMBasePtr->unk800C);
                gUnknown_030009EC = 1;
                sub_0801B50C(40);
                gUnknown_03000D3C = 1;
            }
            else if (gUnknown_03000D3C == 2)
            {
                for (j = (gUnknown_030009E0 + 2) >> 3; j < gUnknown_03000D40; j++)
                {
                    index = j * 0x40 + i;
                    r0 = gEWRAMBasePtr->unk600C[index];
                    if (r0 != 0)
                    {
                        r6 = gEWRAMBasePtr->unkC[r0 - 1].unk0;
                        if (gObjectTileDataRAMPtr->unk108[r6 - 1]->unk4 == 41)
                        {
                            struct Struct08078210_sub *r4 = gObjectTileDataRAMPtr->unk108[r6];
                            struct Struct802C31C sp8;

                            sp8.unk0 = i;
                            sp8.unk4 = j - r4->unk2 + 1;
                            level_edit_delete_object(&sp8);
                            sub_080063E4(&sp8, r6, gEWRAMBasePtr->unk800C);
                            sub_08001BA4(&sp8, r4);
                            index = (j - r4->unk2) * 0x40 + i;
                            if (gEWRAMBasePtr->unk600C[index] == 0)
                            {
                                r4 = gObjectTileDataRAMPtr->unk108[r6 + 2];
                                sp8.unk4 -= r4->unk2;
                                sub_080064D4(&sp8, r4, gEWRAMBasePtr->unk800C, 6);
                            }
                            gUnknown_030009EC = 1;
                        }
                    }
                }
                j = (gUnknown_030009E0 + 2) >> 3;
            }
        }
    }
    if (gUnknown_03000D3C == 2)
    {
        gUnknown_03000D3C = 0;
        gUnknown_03000D40 = (gUnknown_030009E0 + 2) >> 3;
    }
}

void sub_0802C540(void)
{
    u8 r3;

    if (gNextLevelInLevelTable.unk12 == 2)
    {
        if (gUnknown_03000161 == 1)
        {
            if (gUnknown_030009E0 > gUnknown_03000162)
                gUnknown_030009E0--;
            else
                gUnknown_03000161 = 0;
            goto _0802C6E8;
        }
        else if (gUnknown_03000161 == 2)
        {
            if (gUnknown_030009E0 < gUnknown_03000162)
                gUnknown_030009E0++;
            else
                gUnknown_03000161 = 0;
            goto _0802C6E8;
        }
        else if (gUnknown_03000160 < gUnknown_03000164)
        {
            u8 r = gLevelCollectableFlags.redPresent;
            u8 g = gLevelCollectableFlags.yellowPresent;
            u32 r0 = r + g;
            u8 b = gLevelCollectableFlags.bluePresent;
            u32 r5;
            u32 r0_;
            r0 += b;
            r0_ = gLevelCollectableFlags.letterT + r0 + gLevelCollectableFlags.letterO;
            r5 = gLevelCollectableFlags.letterY + r0_;

            if ((gUnknown_03000168[gUnknown_03000160].unk0 == 0 && (int)(gUnknown_0300015C - gUnknown_03000D34) >= (int)gUnknown_03000168[gUnknown_03000160].unk4)
             || (gUnknown_03000168[gUnknown_03000160].unk0 == 1
              && ((gUnknown_03000168[gUnknown_03000160].unk4 == 4 && (r != 0 || gLevelCollectableFlags.letterT != 0))
               || (gUnknown_03000168[gUnknown_03000160].unk4 == 5 && (g != 0 || gLevelCollectableFlags.letterO != 0))
               || (gUnknown_03000168[gUnknown_03000160].unk4 == 6 && (b != 0 || gLevelCollectableFlags.letterY != 0))
               || (gUnknown_03000168[gUnknown_03000160].unk4 == 1 && r5 != 0)
               || (gUnknown_03000168[gUnknown_03000160].unk4 == 2 && r5 > 1)
               || (gUnknown_03000168[gUnknown_03000160].unk4 == 3 && r5 > 2))))
            {
                gUnknown_03000162 = gUnknown_03000168[gUnknown_03000160].unk2;
                if (gUnknown_03000168[gUnknown_03000160].unk2 < gUnknown_030009E0)
                    gUnknown_03000161 = 1;
                else
                    gUnknown_03000161 = 2;
                if (gUnknown_03000168[gUnknown_03000160].unk6 != 0)
                {
                    gUnknown_03000D38 = 0;
                    play_sound_effect_08071990(SE_LAVA, 8, 16, 64, 0, 128, 0);
                }
                gUnknown_03000160++;
                gUnknown_03000D34 = gUnknown_0300015C;
            }
_0802C6E8:
            sub_0802C31C();
        }
        gUnknown_0300015C++;
    }
}

void sub_0802C71C(void)
{
    gUnknown_0300015C = 0;
    gUnknown_03000D38 = 90;
    gUnknown_03000D34 = 0;
    gUnknown_03000D3C = 0;
    gUnknown_03000160 = 0;
    gUnknown_03000161 = 0;
    gUnknown_03000164 = gUnknown_0807C0E0[gNextLevelInLevelTable.unk10].unk4;
    gUnknown_03000168 = gUnknown_0807C0E0[gNextLevelInLevelTable.unk10].unk0;
    gUnknown_030009E0 = gUnknown_03000168->unk2;
    gUnknown_03000D40 = gUnknown_030009E0 >> 3;
    gUnknown_03000160 = 1;
}

void sub_0802C7A4(void)
{
    s16 i;

    if (gNextLevelInLevelTable.unk12 == 2)
    {
        gUnknown_03000D7C = NULL;
        if (gMainState == MAIN_STATE_TUTORIAL)
        {
            gUnknown_03000D78 = gUnknown_0807C7A8[gNextLevelInLevelTable.unk10];
            gUnknown_03000D80 = 0;
            gUnknown_03000D88 = gUnknown_0807C7C4;
            gUnknown_03000D74 = gUnknown_03000D88[gNextLevelInLevelTable.unk10];
        }
        else if (gLevelType == LEVEL_TYPE_MAIN || gMainState == MAIN_STATE_DEMO)
        {
            gUnknown_03000D78 = gUnknown_0807C7CC[gNextLevelInLevelTable.unk10];
            gUnknown_03000D80 = 0;
            gUnknown_03000D88 = gUnknown_0807C804;
            gUnknown_03000D74 = gUnknown_03000D88[gNextLevelInLevelTable.unk10];
        }
        else if (gLevelType == LEVEL_TYPE_PLUS)
        {
            gUnknown_03000D78 = gUnknown_0807C814[gNextLevelInLevelTable.unk10];
            gUnknown_03000D80 = 0;
            gUnknown_03000D88 = gUnknown_0807C82C;
            gUnknown_03000D74 = gUnknown_03000D88[gNextLevelInLevelTable.unk10];
        }
        else
        {
            gUnknown_03000D78 = gUnknown_0807C834;
            gUnknown_03000D80 = 0;
            gUnknown_03000D88 = gUnknown_0807C838;
            gUnknown_03000D74 = gUnknown_03000D88[0];
        }
        gUnknown_03000D64 = (gUnknown_030009E0 + 8) << 8;
        for (i = 0; i < gUnknown_03000D74; i++)
            gUnknown_03000D90[i] = gUnknown_03000D58[i] = 0;
        gUnknown_03000D84 = 0;
        gUnknown_03000D68 = 0;
    }
}

#if NONMATCHING
void sub_0802C938(void)
{
    s16 i;

    for (i = 0; i < gUnknown_03000D88[gNextLevelInLevelTable.unk10]; i++)
    {
        int r7 = 0;
        u16 r3;
        u8 r1;
        struct StructD7C **r6 = gUnknown_03000DA0;
        s16 r5 = i;

        r1 = sub_08038DF4(255, 171, -1, (gUnknown_03000D78[r5].unk0 >> 8) + 12, gUnknown_030009E0 - 8, r7);
        r6[r5] = &gUnknown_03001940[r1];
    }
}
#else
__attribute__((naked))
void sub_0802C938(void)
{
    asm("\n\
	push {r4-r7,lr}\n\
	sub sp, sp, #8\n\
	mov r4, #0\n\
	ldr r0, _0802C9C0  @ =gNextLevelInLevelTable\n\
	mov r2, #16\n\
	ldrsh r1, [r0, r2]\n\
	ldr r0, _0802C9C4  @ =gUnknown_03000D88\n\
	ldr r0, [r0]\n\
	add r0, r0, r1\n\
	ldrb r0, [r0]\n\
	cmp r4, r0\n\
	bge _0802C9B8\n\
	mov r7, #0\n\
	ldr r6, _0802C9C8  @ =gUnknown_03000DA0\n\
_0802C954:\n\
	lsl r4, r4, #16\n\
	asr r5, r4, #16\n\
	ldr r0, _0802C9CC  @ =gUnknown_03000D78\n\
	ldr r1, [r0]\n\
	lsl r0, r5, #1\n\
	add r0, r0, r5\n\
	lsl r0, r0, #3\n\
	add r0, r0, r1\n\
	ldr r3, [r0]\n\
	asr r3, r3, #8\n\
	add r3, r3, #12\n\
	lsl r3, r3, #16\n\
	lsr r3, r3, #16\n\
	ldr r0, _0802C9D0  @ =gUnknown_030009E0\n\
	ldrh r0, [r0]\n\
	sub r0, r0, #8\n\
	lsl r0, r0, #16\n\
	lsr r0, r0, #16\n\
	str r0, [sp]\n\
	str r7, [sp, #4]\n\
	mov r0, #255\n\
	mov r1, #171\n\
	mov r2, #1\n\
	neg r2, r2\n\
	bl sub_08038DF4\n\
	lsl r0, r0, #24\n\
	lsr r1, r0, #24\n\
	lsl r2, r5, #2\n\
	add r2, r2, r6\n\
	ldr r3, _0802C9D4  @ =gUnknown_03001940\n\
	mov r0, #176\n\
	mul r1, r0, r1\n\
	ldr r0, [r3]\n\
	add r0, r0, r1\n\
	str r0, [r2]\n\
	mov r3, #128\n\
	lsl r3, r3, #9\n\
	add r1, r4, r3\n\
	lsr r4, r1, #16\n\
	asr r1, r1, #16\n\
	ldr r0, _0802C9C0  @ =gNextLevelInLevelTable\n\
	mov r3, #16\n\
	ldrsh r2, [r0, r3]\n\
	ldr r0, _0802C9C4  @ =gUnknown_03000D88\n\
	ldr r0, [r0]\n\
	add r0, r0, r2\n\
	ldrb r0, [r0]\n\
	cmp r1, r0\n\
	blt _0802C954\n\
_0802C9B8:\n\
	add sp, sp, #8\n\
	pop {r4-r7}\n\
	pop {r0}\n\
	bx r0\n\
_0802C9C0:\n\
	.4byte gNextLevelInLevelTable\n\
_0802C9C4:\n\
	.4byte gUnknown_03000D88\n\
_0802C9C8:\n\
	.4byte gUnknown_03000DA0\n\
_0802C9CC:\n\
	.4byte gUnknown_03000D78\n\
_0802C9D0:\n\
	.4byte gUnknown_030009E0\n\
_0802C9D4:\n\
	.4byte gUnknown_03001940");
}
#endif

void sub_0802C9D8(void)
{
    int r2;
    int r0;

    if (gNextLevelInLevelTable.unk12 == 2
     && (gUnknown_03001A1C & 0x2000)
     && (gUnknown_030009D0 & 0x10))
    {
        if (gUnknown_03000D7C != NULL)
        {
            if (gUnknown_03000D54 > gUnknown_03000D64 - 0x500)
            {
                if ((u8)(gUnknown_03000D84 - 2) > 1)
                    gUnknown_03000D7C->unk24 = gUnknown_03000D64 - 0x500;
                else
                    gUnknown_03000D7C->unk24 = gUnknown_03000D50 - 0x500;
            }
            else
                gUnknown_03000D7C->unk24 = gUnknown_03000D54;
        }
        switch (gUnknown_03000D84)
        {
        case 0:
            if (gUnknown_030009D0 & 8)
            {
                if (++gUnknown_03000D68 >= gUnknown_03000D78[gUnknown_03000D80].unkC)
                {
                    gUnknown_03000D84 = 1;
                    gUnknown_03000D60 = gUnknown_03000D78[gUnknown_03000D80].unk0;
                    gUnknown_03000D70 = (gUnknown_030009E0 << 8) - gUnknown_03000D78[gUnknown_03000D80].unk4;
                    gUnknown_03000D64 = gUnknown_030009E0 << 8;
                    gUnknown_03000D7C = gUnknown_03000DA0[gUnknown_03000D80];
                    gUnknown_03000D54 = gUnknown_03000D7C->unk24;
                    gUnknown_03000D6C = gUnknown_030019AC->unk24;
                }
            }
            break;
        case 1:
            gUnknown_03000D64 -= gUnknown_03000D78[gUnknown_03000D80].unk8;
            if (gUnknown_03000D64 < gUnknown_03000D70 + 0x800)
            {
                gUnknown_03000D84 = 2;
                gUnknown_03000D68 = 0;
                gUnknown_03000D50 = gUnknown_03000D64;
                gUnknown_03000DC8 = 0;
            }
            break;
        case 2:
            gUnknown_03000D68++;
            if (gUnknown_03000DC8 > 9)
            {
                gUnknown_03000DC8 = 9;
                if (gUnknown_03000D68 >= gUnknown_03000D78[gUnknown_03000D80].unkE)
                {
                    gUnknown_03000D84 = 3;
                    gUnknown_03000D68 = 2;
                }
            }
            else
            {
                gUnknown_03000D50 -= gUnknown_0807C83A[gUnknown_03000DC8];
            }
            gUnknown_03000DC8++;
            break;
        case 3:
            gUnknown_03000D50 += 32 + gUnknown_03000D78[gUnknown_03000D80].unkA;
            gUnknown_03000D64 += gUnknown_03000D78[gUnknown_03000D80].unkA;
            if (gUnknown_03000D64 > (gUnknown_030009E0 << 8))
            {
                gUnknown_03000D64 = (gUnknown_030009E0 + 8) << 8;
                gUnknown_03000D68 = 0;
                if (gUnknown_030009D0 & 8)
                {
                    gUnknown_03000D84 = 0;
                    gUnknown_03000D80++;
                    if (gUnknown_03000D80 >= gUnknown_03000D88[gNextLevelInLevelTable.unk10])
                        gUnknown_03000D80 = 0;
                }
                else
                {
                    sub_0804138C(12, 0, (u16)(gUnknown_03000D7C->unk20 >> 8), (u16)(gUnknown_03000D7C->unk24 >> 8));
                    gUnknown_03000D84 = 4;
                }
            }
            break;
        case 4:
            gUnknown_03000D50 += gUnknown_03000D78[gUnknown_03000D80].unkA;
            r2 = (s32)gUnknown_03000D7C->unk20 >> 8;
            r0 = gUnknown_03000D78[gUnknown_03000D80].unk0 >> 8;
            if (r2 - r0 >= 0)
            {
                if (r2 - r0 > 8)
                    goto label;
            }
            else
            {
                if (r0 - r2 > 8)
                {
                label:
                    gUnknown_03000D84 = 0;
                    gUnknown_03000D7C = NULL;
                }
            }
            break;
        }
    }
}

int sub_0802CD34(struct StructD7C *arg0)
{
    int r4 = arg0->unk20 >> 8;
    int r12 = gUnknown_030009E0 << 8;
    s16 i;

    if ((gUnknown_030009D0 & 0x10)
     && arg0->unk24 <= r12 && r12 - arg0->unk24 <= 0x1000
     && gUnknown_03000D84 == 0)
    {
        for (i = 0; i < gUnknown_03000D88[gNextLevelInLevelTable.unk10]; i++)
        {
            int r1 = gUnknown_03000D78[i].unk0 >> 8;

            if (r4 - r1 >= 0)
            {
                if (r4 != r1)
                    continue;
            }
            else
            {
                if (r1 != r4)
                    continue;
            }
            if (gUnknown_03000D78[i].unk10[gUnknown_03000D90[i]] != 0)
            {
                arg0->unk20 = gUnknown_03000D78[i].unk0;
                gUnknown_03000D80 = i;
                gUnknown_03000D60 = gUnknown_03000D78[gUnknown_03000D80].unk0;
                gUnknown_03000D70 = r12 - gUnknown_03000D78[gUnknown_03000D80].unk4;
                gUnknown_03000D64 = r12;
                play_sound_effect_08071990(SE_FOUNTAIN, 8, 16, 64, 0, 128, 0);
                gUnknown_03000D84 = 1;
                gUnknown_03000D7C = arg0;
                gUnknown_03000D54 = arg0->unk24;
                gUnknown_03000D6C = gUnknown_030019AC->unk24;
                sub_0804138C(12, 0, (u16)(arg0->unk20 >> 8), (u16)(arg0->unk24 >> 8));
                if (++gUnknown_03000D90[i] > 7)
                    gUnknown_03000D90[i] = 0;
                return TRUE;
            }
            if (gUnknown_03000D58[i] == 0)
            {
                gUnknown_03000D58[i] = 1;
            }
            else
            {
                gUnknown_03000D58[i]--;
                if (gUnknown_03000D58[i] == 0)
                {
                    if (++gUnknown_03000D90[i] > 7)
                        gUnknown_03000D90[i] = 0;
                }
            }
            break;
        }
    }
    return FALSE;
}

void sub_0802CF08(void)
{
    gUnknown_03000D84 = 0;
    gUnknown_03000D68 = 0;
}

struct Struct0802CF20
{
    u8 filler0[0x24];
    u32 unk24;
    u8 filler28[0x3D-0x28];
    u8 unk3D;
};

int sub_0802CF20(struct Struct0802CF20 *arg0)
{
    if (gUnknown_03000D84 == 4)
    {
        if (arg0->unk3D == gUnknown_030019AC->unk43)
        {
            gUnknown_030019AC->unk24 = (gUnknown_030019AC->unk24 + 0x400) & 0xFFFFFF00;
            gUnknown_030019AC->unk43 = 255;
        }
        arg0->unk24 = gUnknown_03000D54;
        return TRUE;
    }
    return FALSE;
}

void sub_0802CF78(void)
{
    struct LinkedListHeaderMaybe_alt *r4;
    struct LinkedListHeaderMaybe_alt *endptr;
    int r8 = 0;

    if (!(gUnknown_03001A1C & 8)
     && gUnknown_03000170.unk1C != NULL
     && gUnknown_03001A38 != 1)
    {
        r4 = (struct LinkedListHeaderMaybe_alt *)gUnknown_03000170.unk1C;
        endptr = r4 + 12;
        while (r4 < endptr)
        {
            if (r4->unk0 != -1 && r4->unk0 <= 2)
            {
                if (r4->unk0 == 2)
                    r4->unk0 = -1;
                else
                {
                    r8++;
                    if (gUnknown_03000170.unk20 == -1 || sub_080721A8() != 0)
                        gUnknown_03000170.unk20 = play_sound_effect_08071990(SE_CRUMBLE, 4, 16, 64, 0, 128, 0);
                    if (r4->unk4.as_struct.unk0 != 0)
                        r4->unk4.as_struct.unk0--;
                    else
                    {
                        struct UnknownListThing1 *thing = (void *)((u8 *)r4->unk8->unk8 + gUnknown_03000170.unk18);

                        r4->unk8->unk8 = &thing->header;
                        if (thing == (void *)gUnknown_03000170.unk0[r4->unk0].unk4)
                            sub_0802D1DC((struct LinkedListHeaderMaybe *)r4, 2);
                        else
                            r4->unk4.as_struct.unk0 = thing->unkC;
                    }
                }
            }
            r4++;
        }
        if (r8 == 0 && gUnknown_03000170.unk20 != -1)
        {
            sub_08071D9C();
            gUnknown_03000170.unk20 = -1;
        }
    }
}

void sub_0802D06C(void)
{
    int i;

    gUnknown_03000170.unk1C = arena_allocate(12 * sizeof(struct LinkedListHeaderMaybe_alt));
    for (i = 0; i < 12; i++)
    {
        struct LinkedListHeaderMaybe *r4 = &gUnknown_03000170.unk1C[i];
        struct UnknownListThing2 *thing;

        r4->unk0 = -1;
        r4->unk8 = sub_0802BA00();
        thing = (struct UnknownListThing2 *)r4->unk8;
        thing->unkC = NULL;
        thing->header.unk8 = NULL;
    }
    gUnknown_03000170.unk20 = -1;
}

void sub_0802D0BC(struct SomeUnknownHeader *hdr, u32 size)
{
    int i;

    gUnknown_03000170.unk18 = size;
    for (i = 0; i < 3; i++)
    {
        gUnknown_03000170.unk0[i].unk0 = hdr;
        hdr = (void *)((u8 *)hdr + hdr->unkB * size);
        gUnknown_03000170.unk0[i].unk4 = hdr;
    }
}

void sub_0802D0E8(void)
{
    int i;

    if (gUnknown_03000170.unk1C == NULL)
    {
        // possible inlined call to sub_0802D06C?
        gUnknown_03000170.unk1C = arena_allocate(12 * sizeof(struct LinkedListHeaderMaybe_alt));
        for (i = 0; i < 12; i++)
        {
            struct LinkedListHeaderMaybe *r4 = &gUnknown_03000170.unk1C[i];
            struct UnknownListThing2 *thing;

            r4->unk0 = -1;
            r4->unk8 = sub_0802BA00();
            thing = (struct UnknownListThing2 *)r4->unk8;
            thing->unkC = NULL;
            thing->header.unk8 = NULL;
        }
        gUnknown_03000170.unk20 = -1;
    }
}

struct Struct0802D140
{
    u8 filler0[8];
    s32 unk8;
};

void sub_0802D140(struct Struct0802D140 *arg0, u32 arg1)
{
    int r12 = -1;
    u32 r7 = (arg0->unk8 >> 11);

    r7 += (arg1 & ~0x3F);
    while (arg1 <= r7)
    {
        int r2 = gEWRAMBasePtr->unk400C[arg1];
        int r5 = gEWRAMBasePtr->unk600C[arg1];

        if (r2 == 6 && r5 != r12)
        {
            struct struct_0807820C_sub8 *r3 = &gEWRAMBasePtr->unk8[r5];
            struct LinkedListHeaderMaybe *ptr = gUnknown_03000170.unk1C;
            struct LinkedListHeaderMaybe *endptr = ptr + 12;

            while (ptr < endptr)
            {
                if (ptr->unk0 == -1)
                {
                    ptr->unk8->unk0 = r3->unk2_0;
                    ptr->unk8->unk4.as_u32 = r3->unk3;
                    sub_0802D1DC(ptr, 1);
                    break;
                }
                ptr++;
            }

        }
        r12 = r5;
        arg1++;
    }
}

void sub_0802D1D0(void)
{
    gUnknown_03000170.unk1C = 0;
}

void sub_0802D1DC(struct LinkedListHeaderMaybe *arg0, int arg1)
{
    struct SomeUnknownHeader *r1;
    struct LinkedListHeaderMaybe *r0;

    if (arg0->unk0 != arg1)
    {
        arg0->unk0 = arg1;
        r0 = arg0->unk8;
        r1 = (void *)r0->unk8 = gUnknown_03000170.unk0[arg1].unk0;
        arg0->unk4.as_struct.unk0 = r1->unkC;
        sub_08001BA4(r0, r0->unk8);
    }
}
