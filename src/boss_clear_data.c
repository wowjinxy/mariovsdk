#include "gba/gba.h"
#include "global.h"
#include "sound.h"

u16 gUnknown_0807976C[] = 
{
    SE_YOU_WON1,
    SE_YOU_WON2,
    SE_YOU_WON3,
    SE_YOU_WON1,
    SE_YOU_WON2,
    SE_YOU_WON3,
};


u32 gUnknown_08079778[] =
{
    PALETTE_25_WORLD_ONE_BOSS_CLEAR,
    PALETTE_26_WORLD_TWO_BOSS_CLEAR,
    PALETTE_27_WORLD_THREE_BOSS_CLEAR,
    PALETTE_28_WORLD_FOUR_BOSS_CLEAR,
    PALETTE_29_WORLD_FIVE_BOSS_CLEAR,
    PALETTE_30_WORLD_SIX_BOSS_CLEAR,
};

u32 gUnknown_08079790[] =
{
    PALETTE_31_WORLD_ONE_PLUS_BOSS_CLEAR,
    PALETTE_32_WORLD_TWO_PLUS_BOSS_CLEAR,
    PALETTE_33_WORLD_THREE_PLUS_BOSS_CLEAR,
    PALETTE_34_WORLD_FOUR_PLUS_BOSS_CLEAR,
    PALETTE_35_WORLD_FIVE_PLUS_BOSS_CLEAR,
    PALETTE_36_WORLD_SIX_PLUS_BOSS_CLEAR,
};

// GAME OVER letter X position
u8 gUnknown_080797A8[] =
{ // G   A   M    E      O    V    E    R 
    53, 69, 86, 103,   126, 141, 157, 173,
};

// GAME OVER letter IDs
u8 gUnknown_080797B0[] =
{ //G  A   M  E     O   V  E   R
    6, 0, 12, 4,   14, 21, 4, 17, 
};


// GREAT! YOU WON! letter X position
u8 gUnknown_080797B8[] =
{ //G   R   E   A   T   !   Y   O   U    W    O    N    !
    0, 12, 24, 36, 48, 63, 73, 85, 97, 113, 127, 139, 154, 0, 0, 0,
};


// Main worlds "GREAT! YOU WON!" full X, Y positioning 
u16 gUnknown_080797C8[] = 
{
    17, 13,  // World 1
    13, 13,  // World 2
    39, 13,  // World 3
    69, 13,	 // World 4
    72, 13,  // World 5
    39, 13,	 // World 6
};

// Plus worlds "GREAT! YOU WON!" full X, Y positioning 
u16 gUnknown_080797E0[] =
{
    39, 13,  // World 1 PLUS
    39, 13,  // World 2 PLUS
    39, 13,  // World 3 PLUS
    39, 13,  // World 4 PLUS
    39, 13,  // World 5 PLUS
    39, 13,  // World 6 PLUS
};

struct struct_game_over_sprites {
    u16 spriteID;
    u16 unk0;
    u8 x_pos;
    u8 y_pos;
};

// Game Over screen restart button
struct struct_game_over_sprites gUnknown_080797F8[] =
{
    {0x34D, 0x0, 0x38, 0x70},
    {0x34E, 0x1, 0x40, 0x70},
    {0x34E, 0x1, 0x48, 0x70},
    {0x34E, 0x1, 0x50, 0x70},
    {0x34E, 0x1, 0x58, 0x70},
    {0x34E, 0x1, 0x60, 0x70},
    {0x34E, 0x1, 0x68, 0x70},
    {0x34D, 0x2, 0x70, 0x70},
};

// Game Over screen quit button
struct struct_game_over_sprites gUnknown_08079838[] =
{
    {0x34D, 0x0, 0x88, 0x70},
    {0x34E, 0x1, 0x90, 0x70},
    {0x34E, 0x1, 0x98, 0x70},
    {0x34E, 0x1, 0xA0, 0x70},
    {0x34E, 0x1, 0xA8, 0x70},
    {0x34D, 0x2, 0xB0, 0x70},
};

struct struct_game_over_buttons
{
    struct struct_game_over_sprites *spritePtr;
    u16 spriteCount;
    u16 unk8;
};

struct struct_game_over_buttons gUnknown_08079868[] =
{
    {*&gUnknown_080797F8, 8, 0},
    {*&gUnknown_08079838, 6, 0},
};
