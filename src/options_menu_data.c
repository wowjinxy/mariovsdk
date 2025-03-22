#include "gba/gba.h"
#include "global.h"
#include "options_menu.h"

extern void options_menu_play_music(void);
extern void options_menu_play_sound_effect(void);
extern void options_menu_play_movie(void);

void sub_0802200C();
void sub_080258A8(void);
void sub_08025914(void);
void sub_080259C4(void);
void sub_08025A60(void);
void sub_08025FA8(void);
void sub_0802606C(void);
void sub_08026164(void);
void sub_08026640(void);
void sub_080266EC(void);
void sub_080267E4(void);
void sub_080268E0(void);
void sub_0802698C(void);
void sub_080269E4(void);
void sub_08026AD8(void);
void sub_08026FE8(void);
void sub_08027B9C(void);
void sub_08027BE8(void);
void sub_08027C34();
void sub_08027C78(void);
void sub_08027CD0();
void sub_08027D08();
void sub_08027D40();
void sub_08027D84(void);
void sub_08027DD0();
void sub_08027DE4();
void sub_08027DF8();
void sub_08027E0C();
void sub_08027E20();
void sub_08027E34();
void sub_08027E48();
void sub_08027E5C();
void sub_08027E70();
void sub_08027E84();
void sub_08027EC8();
void sub_08027F0C(void);
void sub_08027F58();
void sub_08027F9C();
void sub_08027FE0();
void sub_08028024();
void sub_080284E8(void);
void sub_08028604(u16 *);
void sub_08028740(void);
void sub_08028824(u16 *);
void sub_08029190(void);

void (*gUnknown_080798E8[])(void) =
{
    sub_08027B9C,
    sub_08027BE8,
    sub_08027C78,
    sub_080258A8,
    sub_08025914,
    sub_08027D84,
    sub_080259C4,
    sub_08025A60,
    sub_08025FA8,
    sub_0802606C,
    sub_08026164,
    sub_08026640,
    sub_080266EC,
    sub_080267E4,
    sub_080268E0,
    sub_0802698C,
    sub_08027F0C,
    sub_080269E4,
    sub_08026AD8,
    sub_08026FE8,
};

void (*gUnknown_08079938[])() =
{
    sub_0802200C,
    sub_08027C34,
    sub_08027CD0,
    sub_08027D08,
    sub_08027D40,
    sub_08027DD0,
    sub_08027DE4,
    sub_08027DF8,
    sub_08027E0C,
    sub_08027E20,
    sub_08027E34,
    sub_08027E48,
    sub_08027E5C,
    sub_08027E70,
    sub_08027E84,
    sub_08027EC8,
    sub_08027F58,
    sub_08027F9C,
    sub_08027FE0,
    sub_08028024,
};

u8 gOptionsMenuMovieIDTable[] =
{
    MOVIE_INTRO,
    MOVIE_INTRO2,
    MOVIE_DK_BOSS_1,
    MOVIE_CREDITS_1,
    MOVIE_DK_BOSS_1_END,
    MOVIE_DK_BOSS_2,
    MOVIE_DK_BOSS_2_END,
    MOVIE_CREDITS_2,
};

u8 gOptionsMenuMovieSongIDTable[] =
{
    0x17,
    0x29,
    0x2B,
    0x3D,
    0x2C,
    0x2D,
    0x2E,
    0x2F,
};

u32 gOptionsMenuSpriteIDTable[] =
{
    0x34D,  // Selction box left side sprite ID 
    0x34F,  // Selction box right side sprite ID 
    0x34E,  // Selction box center sprite ID 
    0x386,  // Movie selction box sprite ID 
    0x3A3,  // Erase save data selection box sprite ID 
    SPRITE_ID_MOVIE_ONE,        // Movie 1 preview sprite ID 
    SPRITE_ID_MOVIE_TWO,        // Movie 2 preview sprite ID 
    SPRITE_ID_MOVIE_THREE,      // Movie 3 preview sprite ID 
    SPRITE_ID_MOVIE_CREDITS_1,  // Credits 1 preview sprite ID (movie 4)
    SPRITE_ID_MOVIE_FIVE,       // Movie 5 preview sprite ID 
    SPRITE_ID_MOVIE_SIX,        // Movie 6 preview sprite ID 
    SPRITE_ID_MOVIE_SEVEN,      // Movie 7 preview sprite ID 
    SPRITE_ID_MOVIE_CREDITS_2,  // Credits 2 preview sprite ID (movie 8) -- sprite ID 0x0384 is a unsued alternate of this one
    SPRITE_ID_MOVIE_UNUSED_2,   // Unused movie preview sprite ID
};

s32 gUnknown_080799D0[] =
{
    -1,
    0x01,
    0x02,
    0x04,
    0x08,
    0x10,
    0x20,
    0x40,
};

struct Submenu gOptionMenuSubMenus[] =
{
    // Options top menu
    {
        3,  // Number of options in sub menu
        4,  // Total tile objects (A to select and related)
        {
            { 19,  7,  4, 16, 1, NULL, 0 },  // Audio Options
            { 20,  7,  8, 16, 2, NULL, 0 },  // Visual Options
            { 21,  5, 12, 20, 3, NULL, 0 },  // Erase All Saved Data
            { 58,  8, 17,  4, 0, NULL, 0 },
            { 56, 19, 17,  5, 0, NULL, 0 },
            { 55,  6, 17,  0, 0, NULL, 0 },
            { 54, 17, 17,  0, 0, NULL, 0 },
            { 0 },
            { 0 },
        },
        -1,  // return sub menu ID
        0,  // Option to select on exit
        0,  // flags
        NULL,  // Option 2 function
        NULL,  // Option 3 function
    },
    // Audio options sub menu
    {
        3,
        5,
        {
            {  0,  2,  4, 26, -1, NULL, 3 },  // System
            {  1,  2,  8, 26, -1, options_menu_play_music, 0 },  // Music
            {  2,  2, 12, 26, -1, options_menu_play_sound_effect, 0 },  // FX
            { 58,  8, 17,  4,  0, NULL, 0 },
            { 55,  6, 17,  0,  0, NULL, 0 },
            { 59,  8,  1,  5,  0, NULL, 0 },
            { 57, 19, 17,  3,  0, NULL, 0 },
            { 54, 17, 17,  0,  0, NULL, 0 },
            { 0 },
        },
        0,  // return sub menu ID
        0,
        0,  // flags
        sub_080284E8,
        sub_08028604,
    },
    // Visual options submenu
    {
        2,
        5,
        {
            { 15,  1,  4, 28, -1, NULL, 3 },  // Screen
            { 16,  1,  8, 28, -1, options_menu_play_movie, 0 },
            { 0 },
            { 58,  8, 17,  4,  0, NULL, 0 },
            { 60,  7,  1,  6,  0, NULL, 0 },
            { 55,  6, 17,  0,  0, NULL, 0 },
            { 57, 19, 17,  3,  0, NULL, 0 },
            { 54, 17, 17,  0,  0, NULL, 0 },
            { 0 },
        },
        0,  // return sub menu ID
        1,
        0,  // flags
        sub_08028740,
        sub_08028824,
    },
    // Delete all save data sub menu
    {
        2,
        5,
        {
            { -1,  68, 80, 4, 0, NULL, 0 },  // No
            { -1, 115, 80, 4, 0, sub_08029190, 0 },  // Yes
            { 0 },
            { 58,   8, 17, 4, 0, NULL, 0 },
            { 56,  19, 17, 5, 0, NULL, 0 },
            { 62,   7,  6, 0, 0, NULL, 0 },
            { 55,   6, 17, 0, 0, NULL, 0 },
            { 54,  17, 17, 0, 0, NULL, 0 },
            { 0 },
        },
        0,  // return sub menu ID
        2,
        MENU_HORIZONTAL | MENU_NOWRAP,  // flags
        NULL,
        NULL,
    },
};

u32 gUnknown_08079D20[2] = 
{
    0x00000004,  // Audio options "Mono" system tile object ID
    0x00000003,  // Audio options "Stereo" system tile object ID
};

u32 gUnknown_08079D28[2] =
{
    0x00000012,  // Visual options "GBA Mode" screen tile object ID
    0x00000011,  // Visual options "GB Player mode" screen tile object ID
};
