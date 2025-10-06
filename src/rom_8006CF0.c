#include "gba/gba.h"
#include "global.h"
#include "main.h"

void sub_08006CF0(void *param1, void *param2)  // unused?
{
    gUnknown_03000008.unk0 = param1;
    gUnknown_03000008.unk4 = param2;
    gUnknown_03000008.unk14 = 0;

    if (gUnknown_03000008.unk10 != NULL)
    {
        memcpy(gUnknown_03000008.unk10, param1, 0x200);
        gUnknown_03000968 = (int (*)(struct Struct03000008 *))sub_080003D0;
    }
}

void sub_08006D24(u32 param1)  // unused?
{
    if (gUnknown_03000008.unk14 == 0)
    {
        gUnknown_03000008.unk8 = 1 << param1;
        gUnknown_03000008.unkC = param1;
        gUnknown_03000008.unk14 = 1;
    }
}

void sub_08006D44(void)
{
    if (gUnknown_03000008.unk8 < 1 || gUnknown_03000008.unk14 == 0)
        gUnknown_03000008.unk14 = 0;
    else
    {
        gUnknown_03000008.unk8--;
        if (gUnknown_03000008.unk8 == 0)
            memcpy(gUnknown_03000008.unk10, gUnknown_03000008.unk4, 0x200);
        else
            gUnknown_03000968(&gUnknown_03000008);
    }
}

void sub_08006D88(void)  // unused?
{
    gUnknown_03000008.unk14 = 0;
}

void sub_08006D94(void)  // unused?
{
    if (gUnknown_03000008.unk14 != 0)
    DmaCopy16(0, gUnknown_03000008.unk10, PLTT, 0x200);
}

u32 sub_08006DC0(void)  // unused?
{
    return gUnknown_03000008.unk14 == 0;
}
