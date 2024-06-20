#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"

struct Foo
{
    u8 filler[8];
};

extern u16 gUnknown_0807DD14[];
extern const struct UnknownStruct10 gUnknown_08B2AD88;
extern struct UnknownStruct13 gUnknown_0807DD1C[];
extern const u16 gPaletteData[];

void game_init_callback(void)
{
    gUnknown_03000B50 = 0;
    gUnknown_03001704 = 0;
    gLevelType = 0;
    sub_08032F68();
    arena_init(gUnknown_03001F50, gUnknown_03007AB0);
    sub_0802F060();
    sub_0807166C(arena_allocate(0x15A4), 0x15A4, 3, 3, 8);
    arena_save_head(0);
    CpuFill16(0, (void *)PLTT, 0x200);
    CpuCopy16(gUnknown_0807DD14, (void *)(PLTT + 0x200), 6);
    sub_080348C8(&gUnknown_08B2AD88, 0, 0, 0);
    gUnknown_0300029C = arena_allocate(0x100C);
    CpuFill16(0, gUnknown_0300029C, 0x100C);
    gUnknown_0300029C->unk1000 = 0;
    REG_DISPCNT = 0x1140;
    sub_080331FC();
}

void game_init_main(void)
{
    sub_080331FC();
    switch (gUnknown_0300029C->unk1000)
    {
      case 0:
        if (sub_08029FD0() == 0)
        {
            gUnknown_0300029C->unk1000 = 8;
            gUnknown_0300029C->unk1008 = &gUnknown_0807DD1C[0];
        }
        else
        {
            int r1 = sub_0802A464();

            if (r1 == 1)
            {
                gUnknown_0300029C->unk1000 = 6;
            }
            else if (r1 == -1)
            {
                gUnknown_0300029C->unk1000 = 8;
                // Only way I could get this to match. No clue what gUnknown_0807DD1C actually is
                gUnknown_0300029C->unk1008 = &gUnknown_0807DD1C[0];
                gUnknown_0300029C->unk1008++;
            }
            else
            {
                gUnknown_0300029C->unk1000 = 1;
            }
        }
        break;
      case 1:
        if (sub_0802A0A8() == 0)
        {
            gUnknown_0300029C->unk1000 = 8;
            gUnknown_0300029C->unk1008 = &gUnknown_0807DD1C[0];
            gUnknown_0300029C->unk1008++;
        }
        else
        {
            gUnknown_0300029C->unk1000 = 2;
            gUnknown_03000B50 = 1;
        }
        break;
      case 2:
        if (sub_08031E04() == 0)
        {
            gUnknown_0300029C->unk1000 = 8;
            gUnknown_0300029C->unk1008 = &gUnknown_0807DD1C[0];
            gUnknown_0300029C->unk1008 += 2;
        }
        else
        {
            gUnknown_0300029C->unk1000 = 3;
        }
        break;
      case 3:
        change_main_state(MAIN_STATE_INTRO, NO_FADE);
        sub_0807220C(gUnknown_080788FC->unk0_5);
        break;
      case 4:
        sub_08011428(1);
        sub_0802A164();
        gUnknown_0300029C->unk1000 = 2;
        break;
      case 5:
        sub_0802F1D4();
        gUnknown_0300029C->unk1000 = 3;
        break;
      case 6:
        sub_08011428(1);
        CpuFill16(0, gUnknown_0807CA94, 0x68);
        sub_0802A164();
        sub_0802F1D4();
        gUnknown_0300029C->unk1000 = 1;
        break;
      case 7:
        sub_08011428(1);
        gUnknown_03000B50 = 2;
        CpuFill16(0, gUnknown_0807CA94, 0x68);
        gUnknown_0300029C->unk1000 = 3;
        break;
      case 8:
        if (gSomeKeys_030012E8 & 11)
        {
            play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
            gUnknown_0300029C->unk1000 = gUnknown_0300029C->unk1008->unk4;
            gUnknown_0300029C->unk1008 = NULL;
        }
        break;
    }
}

void game_init_loop(void)
{
    u16 val = 0;

    DmaFill32(3, 0xA0, gOamData, 0x400);
    sub_080351E0();
    if (gUnknown_0300029C->unk1008 != NULL)
        sub_08034CCC(gUnknown_0300029C->unk1008->unk0, -32767, -32767, -1, 16);
    sub_08035108(&val);
    DmaCopy32(3, gOamData, (void *)OAM, 0x400);
}

void game_init_end(void)
{
}

void load_predefined_palette(u32 a, u32 b)
{
    // I have to do this stupid cast for it to match.
    bool32 r4 = ((*(u8 *)gUnknown_080788FC & 24) != 0);

    if (b & 1)
    {
        u32 offset1 = a * 0x400;
        u32 offset2 = r4 * 0x200;
        const u16 *src = gPaletteData + offset1 + offset2;

        DmaCopy16(3, src, (void *)PLTT, 0x200);
        sub_0802C104(0, 0);
    }

    if (b & 2)
    {
        u32 offset1 = a * 0x400;
        u32 offset2 = r4 * 0x200;
        const u16 *src = gPaletteData + offset1 + offset2 + 0x100;

        // Why is this one DmaCopy32 while the other one is DmaCopy16?
        DmaCopy32(3, src, (void *)(PLTT + 0x200), 0x200);
        sub_0802C104(0, 1);
    }
}

