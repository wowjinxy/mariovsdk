#include "gba/gba.h"
#include "global.h"
#include "main.h"
#include "sound.h"

void sub_0800EEC0(void)
{
}

void sub_0800EEC4(void)
{
}

void sub_0800EEC8(u8 param1)
{
    gUnknown_03000A10.unk2F |= param1;
    if (gUnknown_03000A10.unk30 == 0)
        play_sound_effect_08071990(SE_ERROR,8,0x10,0x40,0,0x80,0);
    gUnknown_03000A10.unk30 = gUnknown_03000A10.unk2F;
}

void sub_0800EF0C(void) {

    gUnknown_03000A10.unk28 = 0;
}
void sub_0800EF1C(void) {

     gUnknown_03000A10.unk2F = 0;
     gUnknown_03000A10.unk30 = 0;
}

u8 sub_0800EF30(void)
{
    gUnknown_03000A10.unk39 = 0;
    sub_0801B310();

    if (sub_08033658() != 0)
    {
        gUnknown_03000A10.unk2C = 0;
        sub_08071E14(0x40);
        return 3;
    }
    else if (gUnknown_03000A10.unkB6 == 1)
    {
        gUnknown_03000A10.unkB6 = 0;
        play_sound_effect_08071990(SE_RETURN, 8, 1, 0x40, 0, 0x80, 0);
    }
    return 2;
}

u8 sub_0800EF8C(void)
{
    u8 var1;

    gUnknown_03000A10.unk39 = 0;
    sub_0801B310();
    gUnknown_03000A10.unk2C++;
    if (gUnknown_03000A10.unk2C < 0xF)
        var1 = 3;
    else
    {
        play_sound_effect_08071990(SE_START,8,1,0x40,0,0x80,0);
        var1 = 0;
    }
    return var1;
}

void sub_0800EFD8(u32 param_1, u32 param_2, u8 param_3)
{
    if (gUnknown_03000A10.unk44 == 0 )
    {
        gUnknown_03000A10.unk3C = param_1;
        gUnknown_03000A10.unk40 = param_2;
    }
    gUnknown_03000A10.unk44 = param_3;
}

void sub_0800F000(void)
{
    gUnknown_03000A10.unk44 = 0;
}

void sub_0800F010(void)
{
    gUnknown_03000A10.unk7C = 0;
    gUnknown_03000A10.unk7D = 0;
    gUnknown_03000A10.unk7B = 1;
}

void sub_0800F02C(void)
{
    gUnknown_03000A10.unkD6 = 1;
    gUnknown_03000A10.unk120 = 0;
    gUnknown_03000A10.unk121 = 0;
    gUnknown_03000A10.unk122 = 0;
    gUnknown_03000A10.unk123 = 0;
    gUnknown_03000A10.unk124 = 0;
}

void sub_0800F060(void)
{
	gUnknown_03000A10.unkD6 = 0;
}

void sub_0800F070(u8 param_1)
{
    if (param_1 != gUnknown_03000A10.unk122)
    {
        gUnknown_03000A10.unk120 = 0;
        gUnknown_03000A10.unk121 = 0;
    }
    gUnknown_03000A10.unk122 = param_1;
}

void sub_0800F0A8(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    if (gUnknown_03000A10.unk28 == 1)
        sub_0806E594(oamIndex, tileNum, vramOffset);
}
