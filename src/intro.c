#include "gba/gba.h"
#include "global.h"
#include "main.h"

void intro_init_callback(void)
{
    const void *arr[4];

    gUnknown_03000BE0 = 0;
    gUnknown_03000BD0 = 0;
    gUnknown_030012A0 = 0;
    gCameraVerticalOffset = 0;
    arr[0] = &gNintendoSoftwareTechnologyLogo;
    arr[1] = NULL;
    arr[2] = NULL;
    arr[3] = NULL;
    sub_08032F24(arr, 0);
    REG_BLDCNT = gNintendoSoftwareTechnologyLogo.bldCnt;
    REG_BLDALPHA = gNintendoSoftwareTechnologyLogo.bldAlpha;
    REG_BLDY = gNintendoSoftwareTechnologyLogo.bldY;
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    REG_DISPCNT = 0x100;
    gGeneralTimer = 0;
    sub_08029CDC(gNintendoSoftwareTechnologyLogo.bldCnt, gNintendoSoftwareTechnologyLogo.bldAlpha, gNintendoSoftwareTechnologyLogo.bldY);
}

void sub_0801BA6C(void)
{
    REG_BLDALPHA = 0;
    REG_BLDCNT = 0;
    gUnknown_030000AC = 1;
}

void intro_main(void)
{
    sub_08029C20();
    gUnknown_03000BE0++;
    if (gUnknown_03000BE0 > 180)
    {
        sub_0802D468(3, 23, 7, 0);
        gNextMainState = MAIN_STATE_MOVIE;
    }
    sub_08008238();
    gUnknown_03000BE0 &= 0xFFFF;
}

void intro_loop(void)
{
    gGeneralTimer++;
}

void sub_0801BAD4(void)
{
}

asm(".align 2, 0");
