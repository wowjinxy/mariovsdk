#include "gba/gba.h"
#include "global.h"
#include "level_view.h"
#include "main.h"
#include "sound.h"
#include "sprites.h"

void level_view_main(void)
{
    process_input();
    if ((gHeldKeys & (L_BUTTON|R_BUTTON)) != (L_BUTTON|R_BUTTON))
        gUnknown_030019A0 |= 0x40000000;
    sub_0800CC6C();
    sub_08041F70();
    if (gUnknown_03001A38 == 1)
        gUnknown_03001A38 = sub_0800C5A4();
    else if (gUnknown_03001A38 == 2)
        gUnknown_03001A38 = sub_0800EF30();
    else if (gUnknown_03001A38 == 3)
    {
        gUnknown_03001A38 = sub_0800EF8C();
        if (gUnknown_03001A38 == 0)
        {
            sound_resume_music();
            change_main_state(MAIN_STATE_UNKNOWN_19, NO_FADE);
        }
    }
    gNextLevelInLevelTable.unkC();
    if (gNextLevelInLevelTable.unk12 == 2)
        update_level_background_waves_0802BEA4(0);
    else
        update_level_background_0802BE50();
}

u32 add_b_back_to_game_sprite(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    if (gIsLevelViewActive)
    {
        DmaCopy32(3, gfxBBackToGame4bpp, (u8 *)OBJ_VRAM0 + *vramOffset, 0x100);
        DmaCopy32(3, &gfxBBackToGameOAM, &gOamBuffer[*oamIndex], 8);

        gOamBuffer[*oamIndex].tileNum = *tileNum;
        gOamBuffer[*oamIndex].x = 200;
        gOamBuffer[*oamIndex].y = 140;
        gOamBuffer[*oamIndex].priority = 0;

        *tileNum += 8;
        *vramOffset += 0x100;
        *oamIndex += 1;
    }
}

void level_view_init_callback(void)
{
    sound_pause_music();
    sub_08040F54();
    gUnknown_03001A38 = 1;
    sub_08071C24();
    play_sound_effect_08071990(SE_ERASE,8,0x10,0x40,0,0x80,0);
    gUnknown_030019A0 = gUnknown_030019A0 & 0xbfffffff;
    gIsLevelViewActive = TRUE;
    gUnknown_03001A00 = 0;
}

void level_view_loop(void)
{
    u32 prevState;

    prevState = gMainState;
    gMainState = MAIN_STATE_LEVEL_PLAY;
    level_play_loop();
    gMainState = prevState;
}

void level_view_end(void)
{
    gIsLevelViewActive = FALSE;
    gUnknown_03001A00 = 1;
    sub_0800F060();
}
