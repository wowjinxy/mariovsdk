#include "gba/gba.h"
#include "global.h"
#include "level_view.h"
#include "main.h"
#include "main_menu.h"

BSS u32 gMainState = 0;
BSS u32 gNextMainState = 0;
BSS u32 gPreviousMainState = 0;
BSS u32 gNextStateFromFade = 0;

static void (*gMainStateInitCallbacks[])(void) =
{
    intro_init_callback,               //main state 0x0
    goto_credits_init_callback,        //main state 0x1
    level_demo_init_callback,          //main state 0x2
    main_menu_init_callback,           //main state 0x3
    options_init_callback,             //main state 0x4
    level_demo_init_callback,          //main state 0x5
    level_demo_reset_init_callback,    //main state 0x6
    title_init_callback,               //main state 0x7
    level_select_init_callback,        //main state 0x8
    expert_levels_init_callback,       //main state 0x9
    unknown_0A_init_callback,          //main state 0xA
    level_editor_init_callback,        //main state 0xB
    after_tutorial_init_callback,      //main state 0xC
    level_play_init_callback,          //main state 0xD
    level_retry_init_callback,         //main state 0xE
    NULL,                              //main state 0xF
    pause_menu_init_callback,          //main state 0x10
    help_init_callback,                //main state 0x11
    level_retry_init_callback,         //main state 0x12
    NULL,                              //main state 0x13
    boss_clear_init_callback,          //main state 0x14
    level_results_init_callback,       //main state 0x15
    bonus_stoparrow_init_callback,     //main state 0x16
    bonus_swapboxes_init_callback,     //main state 0x17
    e_world_init_callback,             //main state 0x18
    e_world_return_init_callback,      //main state 0x19
    e_card_scan_init_callback,         //main state 0x1A
    e_card_scan_init_callback,         //main state 0x1B
    e_world_debug_init_callback,       //main state 0x1C
    e_world_from_menu_init_callback,   //main state 0x1D
    movie_player_init_callback,        //main state 0x1E
    fade_transition_init_callback,     //main state 0x1F
    world_start_init_callback,         //main state 0x20
    level_view_init_callback,          //main state 0x21
    game_init_callback,                //main state 0x22
};

static void (*gMainStateMainCallbacks[])(void) =
{
    intro_main,                        //main state 0x0
    goto_credits_main,                 //main state 0x1
    level_demo_main,                   //main state 0x2
    main_menu_main,                    //main state 0x3
    options_main,                      //main state 0x4
    level_demo_main,                   //main state 0x5
    level_demo_main,                   //main state 0x6
    title_main,                        //main state 0x7
    level_select_main,                 //main state 0x8
    expert_levels_main,                //main state 0x9
    level_edit_main,                   //main state 0xA
    level_edit_main,                   //main state 0xB
    NULL,                              //main state 0xC
    level_play_main,                   //main state 0xD
    level_retry_main,                  //main state 0xE
    level_play_main,                   //main state 0xF
    pause_menu_main,                   //main state 0x10
    help_main,                         //main state 0x11
    level_retry_main,                  //main state 0x12
    NULL,                              //main state 0x13
    boss_clear_main,                   //main state 0x14
    level_results_main,                //main state 0x15
    bonus_stoparrow_main,              //main state 0x16
    bonus_swapboxes_main,              //main state 0x17
    e_world_main,                      //main state 0x18
    e_world_main,                      //main state 0x19
    e_card_scan_main,                  //main state 0x1A
    e_card_scan_main,                  //main state 0x1B
    e_world_debug_main,                //main state 0x1C
    e_world_from_menu_main,            //main state 0x1D
    movie_player_main,                 //main state 0x1E
    fade_transition_main,              //main state 0x1F
    world_start_main,                  //main state 0x20
    level_view_main,                   //main state 0x21
    game_init_main,                    //main state 0x22
};

static void (*gMainStateLoopCallbacks[])(void) =
{
    intro_loop,                        //main state 0x0
    goto_credits_loop,                 //main state 0x1
    level_play_loop,                   //main state 0x2
    main_menu_loop,                    //main state 0x3
    options_loop,                      //main state 0x4
    level_play_loop,                   //main state 0x5
    level_play_loop,                   //main state 0x6
    title_loop,                        //main state 0x7
    level_select_loop,                 //main state 0x8
    expert_levels_loop,                //main state 0x9
    NULL,                              //main state 0xA
    level_play_loop,                   //main state 0xB
    level_play_loop,                   //main state 0xC
    level_play_loop,                   //main state 0xD
    level_retry_loop,                  //main state 0xE
    level_play_loop,                   //main state 0xF
    pause_menu_loop,                   //main state 0x10
    help_loop,                         //main state 0x11
    level_retry_loop,                  //main state 0x12
    NULL,                              //main state 0x13
    boss_clear_loop,                   //main state 0x14
    level_results_loop,                //main state 0x15
    bonus_stoparrow_loop,              //main state 0x16
    bonus_swapboxes_loop,              //main state 0x17
    e_world_loop,                      //main state 0x18
    e_world_loop,                      //main state 0x19
    e_card_scan_loop,                  //main state 0x1A
    e_card_scan_loop,                  //main state 0x1B
    e_world_debug_loop,                //main state 0x1C
    e_world_from_menu_loop,            //main state 0x1D
    movie_player_loop,                 //main state 0x1E
    NULL,                              //main state 0x1F
    world_start_loop,                  //main state 0x20
    level_view_loop,                   //main state 0x21
    game_init_loop,                    //main state 0x22
};

static void (*gMainStateEndCallbacks[])(void) =
{
    intro_end,                         //main state 0x0
    goto_credits_end,                  //main state 0x1
    level_play_end,                    //main state 0x2
    main_menu_end,                     //main state 0x3
    options_end,                       //main state 0x4
    level_play_end,                    //main state 0x5
    level_play_end,                    //main state 0x6
    title_end,                         //main state 0x7
    level_select_end,                  //main state 0x8
    expert_levels_end,                 //main state 0x9
    level_editor_end,                  //main state 0xA
    level_editor_end,                  //main state 0xB
    NULL,                              //main state 0xC
    level_play_end,                    //main state 0xD
    level_retry_end,                   //main state 0xE
    level_play_end,                    //main state 0xF
    pause_menu_end,                    //main state 0x10
    help_end,                          //main state 0x11
    level_retry_end,                   //main state 0x12
    NULL,                              //main state 0x13
    boss_clear_end,                    //main state 0x14
    level_results_end,                 //main state 0x15
    bonus_stoparrow_end,               //main state 0x16
    bonus_swapboxes_end,               //main state 0x17
    e_world_end,                       //main state 0x18
    e_world_end,                       //main state 0x19
    e_card_scan_end,                   //main state 0x1A
    e_card_scan_end,                   //main state 0x1B
    e_world_debug_end,                 //main state 0x1C
    e_world_from_menu_end,             //main state 0x1D
    movie_player_end,                  //main state 0x1E
    fade_transition_end,               //main state 0x1F
    world_start_end,                   //main state 0x20
    level_view_end,                    //main state 0x21
    game_init_end,                     //main state 0x22
};

static void (*gUnknown_0807846C[])(void) =
{
    sub_08015044,                      //main state 0x0
    sub_08015044,                      //main state 0x1
    sub_08015044,                      //main state 0x2
    sub_08015044,                      //main state 0x3
    sub_08015044,                      //main state 0x4
    sub_08015044,                      //main state 0x5
    sub_08015044,                      //main state 0x6
    sub_08015044,                      //main state 0x7
    sub_08015044,                      //main state 0x8
    sub_08015044,                      //main state 0x9
    sub_08015044,                      //main state 0xA
    sub_08015044,                      //main state 0xB
    sub_08015044,                      //main state 0xC
    sub_08015044,                      //main state 0xD
    sub_08015044,                      //main state 0xE
    sub_08015044,                      //main state 0xF
    sub_08015044,                      //main state 0x10
    sub_08015044,                      //main state 0x11
    sub_08015044,                      //main state 0x12
    sub_08015044,                      //main state 0x13
    sub_08015044,                      //main state 0x14
    sub_08015044,                      //main state 0x15
    sub_08015044,                      //main state 0x16
    sub_08015044,                      //main state 0x17
    sub_08015044,                      //main state 0x18
    sub_08015044,                      //main state 0x19
    sub_08015044,                      //main state 0x1A
    sub_08015044,                      //main state 0x1B
    sub_08015044,                      //main state 0x1C
    sub_08015044,                      //main state 0x1D
    sub_08015044,                      //main state 0x1E
    sub_08015044,                      //main state 0x1F
    sub_08015044,                      //main state 0x20
    sub_08015044,                      //main state 0x21
    sub_08015044,                      //main state 0x22
};

static void main_loop(void);


void sub_08006DD8(void) { // possible inline for AgbMain?

	gUnknown_03000B64 = 0;
	gIsLevelViewActive = FALSE;
	gNextMainState = MAIN_STATE_INIT;
}

// 0x08006DF8
void AgbMain(void)
{
    clear_ram();
    gUnknown_03000B64 = 0;
    gIsLevelViewActive = FALSE;
    gNextMainState = MAIN_STATE_INIT;
    init_timer_regs();
    main_loop();
}

void sub_08006E28(void)
{
    u32 arr[4];

    if ((gHeldKeys & A_BUTTON) && gUnknown_030009B0.unk8 != 0)
        gUnknown_030009B0.unk10 = -640;

    gUnknown_030009B0.unk10 = 0;  // wat?
    gUnknown_030009B0.unk12 = 0;

    if (gHeldKeys & DPAD_RIGHT)
        gUnknown_030009B0.unk12 = 256;
    else if (gHeldKeys & DPAD_LEFT)
        gUnknown_030009B0.unk12 = -256;

    if (gHeldKeys & DPAD_UP)
        gUnknown_030009B0.unk10 = -256;
    else if (gHeldKeys & DPAD_DOWN)
        gUnknown_030009B0.unk10 = 256;

    if (gHeldKeys & L_BUTTON)
    {
        gUnknown_030009B0.unk12 = -256;
        gUnknown_030009B0.unk10 = -256;
    }
    else if (gHeldKeys & R_BUTTON)
    {
        gUnknown_030009B0.unk12 = 256;
        gUnknown_030009B0.unk10 = 256;
    }

    arr[0] = gUnknown_030009B0.unk0;
    arr[1] = gUnknown_030009B0.unk4;
    arr[2] = gUnknown_030009B0.unk0 + 0x800;
    arr[3] = gUnknown_030009B0.unk4 + 0x1000;

    if (gUnknown_030009B0.unk12 != 0)
    {
        if (sub_080066FC(arr, gUnknown_030009B0.unk12, 0, 0) != 0)
            gUnknown_030009B0.unk12 = 0;
    }

    gUnknown_030009B0.unk0 += gUnknown_030009B0.unk12;
    arr[0] += gUnknown_030009B0.unk12;
    arr[2] += gUnknown_030009B0.unk12;
    gUnknown_030009B0.unk8 = 0;

    if (gUnknown_030009B0.unk10 != 0)
    {
        if (sub_080066FC(arr, 0, gUnknown_030009B0.unk10, 0) != 0)
            gUnknown_030009B0.unk10 = 0;
    }

    gUnknown_030009B0.unk4 += gUnknown_030009B0.unk10;
    if (gUnknown_030009B0.unk10 > 0x200)
        gUnknown_030009B0.unk10 = 0x200;
    if ((gUnknown_030009B0.unk4 >> 8) > 159)
    {
        gUnknown_030009B0.unk4 = 0;
        gUnknown_030009B0.unk10 = 0;
    }
}

void sub_08006F5C(u32 a, u32 b)
{
    CpuFill16(0, &gUnknown_030009B0, 4);
    gUnknown_030009B0.unk0 = a << 8;
    gUnknown_030009B0.unk4 = b << 8;
}

void sub_08006F90(void)
{
    struct OamData *oam = &gOamBuffer[0];

    oam->x = ((gUnknown_030009B0.unk0 >> 8) - gSpriteHorizontalOffset - 4) & 0xFF;
    oam->y = (gUnknown_030009B0.unk4 >> 8) - (u8)gUnknown_030012F4;
    oam->affineMode = 0;
    oam->tileNum = 0;
}

// 0x08006FF0
static void main_loop(void)
{
    gMainState = gNextMainState;
    gUnknown_03000B70 = 0;

    while (1)
    {
        gUnknown_03000020 = gMainState;

        // Initialize the state
        if (gMainStateInitCallbacks[gUnknown_03000020] != NULL)
            gMainStateInitCallbacks[gUnknown_03000020]();

        if (gMainState == MAIN_STATE_UNKNOWN_19 || gMainState == MAIN_STATE_UNKNOWN_15)
        {
            gMainState = MAIN_STATE_LEVEL_PLAY;
            gUnknown_03000020 = MAIN_STATE_LEVEL_PLAY;
            gNextMainState = MAIN_STATE_LEVEL_PLAY;
        }
        else if (gMainState == MAIN_STATE_TUTORIAL_SETUP)
        {
            gMainState = MAIN_STATE_TUTORIAL;
            gUnknown_03000020 = MAIN_STATE_TUTORIAL;
            gNextMainState = MAIN_STATE_TUTORIAL;
        }

        sub_0801500C(gUnknown_0807846C[gUnknown_03000020]);
        set_loop_callback_08033EA0(gMainStateLoopCallbacks[gUnknown_03000020]);

        while (gNextMainState == gUnknown_03000020 && gUnknown_03000024 == 0)
        {
            if (gMainStateMainCallbacks[gUnknown_03000020] != NULL)
                gMainStateMainCallbacks[gUnknown_03000020]();
            wait_for_some_counter_08033EE0();
        }

        gUnknown_03000024 = 0;

        if (gMainStateEndCallbacks[gUnknown_03000020] != NULL)
            gMainStateEndCallbacks[gUnknown_03000020]();

        gMainState = gNextMainState;
    }
}

void change_main_state(s32 newState, s32 useFadeFlag)
{
    if (gNextMainState != MAIN_STATE_FADETRANSITION)
    {
        if (gLevelEWorldFlag != 0 && newState == MAIN_STATE_LEVEL_SELECT)
            newState = MAIN_STATE_EWORLD_LEVEL_SELECT;
        if (!useFadeFlag)
        {
            // go directly to the new state
            gNextMainState = newState;
        }
        else
        {
            // go to the fade transition state first
            gNextStateFromFade = newState;
            gPreviousMainState = gNextMainState;
            gNextMainState = MAIN_STATE_FADETRANSITION;
        }

        gUnknown_03000024 = 1;
        gNewKeys = gCurrentInput = 0;
    }
}
