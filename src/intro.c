#include "gba/gba.h"
#include "global.h"
#include "main.h"

void intro_init_callback(void)
{
    struct GraphicsConfig *arr[4];

    gDemoTimer_03000BE0 = 0;
    gUnknown_03000BD0 = 0;
    gCameraHorizontalOffset = 0;
    gCameraVerticalOffset = 0;
    arr[0] = &gNintendoSoftwareTechnologyLogo;
    arr[1] = NULL;
    arr[2] = NULL;
    arr[3] = NULL;
    load_graphics_config_08032F24(arr, 0);
    REG_BLDCNT = gNintendoSoftwareTechnologyLogo.bldCnt;
    REG_BLDALPHA = gNintendoSoftwareTechnologyLogo.bldAlpha;
    REG_BLDY = gNintendoSoftwareTechnologyLogo.bldY;
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    REG_DISPCNT = 0x100;
    gGeneralTimer = 0;
    save_blend_regs(gNintendoSoftwareTechnologyLogo.bldCnt, gNintendoSoftwareTechnologyLogo.bldAlpha, gNintendoSoftwareTechnologyLogo.bldY);
}

void title_end(void)
{
    REG_BLDALPHA = 0;
    REG_BLDCNT = 0;
    gUnknown_030000AC = 1;
}

void intro_main(void)
{
    update_fade_from_black();
    gDemoTimer_03000BE0++;
    if (gDemoTimer_03000BE0 > 180)
    {
        movie_player_setup_data(MOVIE_PLAYER_ALLOW_SKIP|MOVIE_PLAYER_FLAG_2, MOVIE, MAIN_STATE_TITLE_SCREEN, MOVIE_INTRO);
        gNextMainState = MAIN_STATE_MOVIE;
    }
    level_callback_08008238();
    gDemoTimer_03000BE0 &= 0xFFFF;
}

void intro_loop(void)
{
    gGeneralTimer++;
}

void intro_end(void)
{
}

FILE_PAD
