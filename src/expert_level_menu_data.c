#include "gba/gba.h"
#include "global.h"
#include "sprites.h"

struct Coords32 gUnknown_080A7D98[] =
{
    // Selection box position X, Y
    {0x48, 0x10}, {0x70, 0x10}, {0x98, 0x10}, {0xC0, 0x10},
    {0x48, 0x38}, {0x70, 0x38}, {0x98, 0x38}, {0xC0, 0x38},
    {0x48, 0x60}, {0x70, 0x60}, {0x98, 0x60}, {0xC0, 0x60},
};

struct Coords32 gUnknown_080A7DF8[] =
{
    // Presents position X, Y
    {0x4A, 0x13}, {0x72, 0x13}, {0x9A, 0x13}, {0xC2, 0x13},
    {0x4A, 0x3B}, {0x72, 0x3B}, {0x9A, 0x3B}, {0xC2, 0x3B},
    {0x4A, 0x63}, {0x72, 0x63}, {0x9A, 0x63}, {0xC2, 0x63},
    // unused copy of  gUnknown_080A7D98
    {0x48, 0x10}, {0x70, 0x10}, {0x98, 0x10}, {0xC0, 0x10},
    {0x48, 0x38}, {0x70, 0x38}, {0x98, 0x38}, {0xC0, 0x38},
    {0x48, 0x60}, {0x70, 0x60}, {0x98, 0x60}, {0xC0, 0x60},
};

struct SpriteTemplate gUnknown_080A7EB8[] =
{
    {8, 18, 1024, 128, 4096, gUnknown_0829A7F8, &gUnknown_0829A81C, gfxNeedStarsToPlay},
};

struct SpriteTemplate gUnknown_080A7ED0[] =
{
    {0, 0, 64, 8, 256, gfxExpertLevelIconPicsAnim, &gfxExpertLevelIconPicsOAM, gfxExpertLevelIconPics},
};

struct SpriteTemplate gUnknown_080A7EE8[] =
{
    {72,  16, 64, 8, 256, gUnknown_0829713C, &gUnknown_08297160, gUnknown_08297168},
    {112, 16, 64, 8, 256, gUnknown_082974C0, &gUnknown_082974E4, gUnknown_082974EC},
    {152, 16, 64, 8, 256, gUnknown_08297844, &gUnknown_08297868, gUnknown_08297870},
    {192, 16, 64, 8, 256, gUnknown_08297BC8, &gUnknown_08297BEC, gUnknown_08297BF4},

    {72,  56, 64, 8, 256, gUnknown_08297F4C, &gUnknown_08297F70, gUnknown_08297F78},
    {112, 56, 64, 8, 256, gUnknown_082982D0, &gUnknown_082982F4, gUnknown_082982FC},
    {152, 56, 64, 8, 256, gUnknown_08298654, &gUnknown_08298678, gUnknown_08298680},
    {192, 56, 64, 8, 256, gUnknown_082989D8, &gUnknown_082989FC, gUnknown_08298A04},

    {72,  96, 64, 8, 256, gUnknown_08298D5C, &gUnknown_08298D80, gUnknown_08298D88},
    {112, 96, 64, 8, 256, gUnknown_082990E0, &gUnknown_08299104, gUnknown_0829910C},
    {152, 96, 64, 8, 256, gUnknown_08299464, &gUnknown_08299488, gUnknown_08299490},
    {192, 96, 64, 8, 256, gUnknown_082997E8, &gUnknown_0829980C, gUnknown_08299814},
};

struct SpriteTemplate gUnknown_080A8008[] =
{
    {72,  16, 64, 8, 256, gUnknown_08297268, &gUnknown_0829728C, gUnknown_08297294},
    {112, 16, 64, 8, 256, gUnknown_082975EC, &gUnknown_08297610, gUnknown_08297618},
    {152, 16, 64, 8, 256, gUnknown_08297970, &gUnknown_08297994, gUnknown_0829799C},
    {192, 16, 64, 8, 256, gUnknown_08297CF4, &gUnknown_08297D18, gUnknown_08297D20},

    {72,  56, 64, 8, 256, gUnknown_08298078, &gUnknown_0829809C, gUnknown_082980A4},
    {112, 56, 64, 8, 256, gUnknown_082983FC, &gUnknown_08298420, gUnknown_08298428},
    {152, 56, 64, 8, 256, gUnknown_08298780, &gUnknown_082987A4, gUnknown_082987AC},
    {192, 56, 64, 8, 256, gUnknown_08298B04, &gUnknown_08298B28, gUnknown_08298B30},

    {72,  96, 64, 8, 256, gUnknown_08298E88, &gUnknown_08298EAC, gUnknown_08298EB4},
    {112, 96, 64, 8, 256, gUnknown_0829920C, &gUnknown_08299230, gUnknown_08299238},
    {152, 96, 64, 8, 256, gUnknown_08299590, &gUnknown_082995B4, gUnknown_082995BC},
    {192, 96, 64, 8, 256, gUnknown_08299914, &gUnknown_08299938, gUnknown_08299940},
};

struct SpriteTemplate gUnknown_080A8128[] =
{
    {72,  16, 64, 8, 256, gUnknown_08297010, &gUnknown_08297034, gUnknown_0829703C},
    {112, 16, 64, 8, 256, gUnknown_08297394, &gUnknown_082973B8, gUnknown_082973C0},
    {152, 16, 64, 8, 256, gUnknown_08297718, &gUnknown_0829773C, gUnknown_08297744},
    {192, 16, 64, 8, 256, gUnknown_08297A9C, &gUnknown_08297AC0, gUnknown_08297AC8},

    {72,  56, 64, 8, 256, gUnknown_08297E20, &gUnknown_08297E44, gUnknown_08297E4C},
    {112, 56, 64, 8, 256, gUnknown_082981A4, &gUnknown_082981C8, gUnknown_082981D0},
    {152, 56, 64, 8, 256, gUnknown_08298528, &gUnknown_0829854C, gUnknown_08298554},
    {192, 56, 64, 8, 256, gUnknown_082988AC, &gUnknown_082988D0, gUnknown_082988D8},

    {72,  96, 64, 8, 256, gUnknown_08298C30, &gUnknown_08298C54, gUnknown_08298C5C},
    {112, 96, 64, 8, 256, gUnknown_08298FB4, &gUnknown_08298FD8, gUnknown_08298FE0},
    {152, 96, 64, 8, 256, gUnknown_08299338, &gUnknown_0829935C, gUnknown_08299364},
    {192, 96, 64, 8, 256, gUnknown_082996BC, &gUnknown_082996E0, gUnknown_082996E8},
};

struct SpriteTemplate gUnknown_080A8248[] =
{
    {0, 0, 32, 4, 128, gUnknown_085E0D64, &gUnknown_085E0D88, gUnknown_085E0D90},
};

struct SpriteTemplate gUnknown_080A8260[] =
{
    {0, 0, 32, 4, 128, gUnknown_085E115C, &gUnknown_085E1180, gUnknown_085E1188},
};

struct SpriteTemplate gUnknown_080A8278[] =
{
    {0, 0, 32, 4, 128, gUnknown_085E08DC, &gUnknown_085E0900, gUnknown_085E0908},
};

struct SpriteTemplate gUnknown_080A8290[] =
{
    {0, 0, 32, 4, 128, gUnknown_085E0AC4, &gUnknown_085E0B0C, gUnknown_085E0B14},
};

struct SpriteTemplate gUnknown_080A82A8[] =
{
    {0, 0, 32, 4, 128, gUnknown_085E0EBC, &gUnknown_085E0F04, gUnknown_085E0F0C},
};

struct SpriteTemplate gUnknown_080A82C0[] =
{
    {0, 0, 32, 4, 128, gUnknown_085E063C, &gUnknown_085E0684, gUnknown_085E068C},
};

// Unused -- Level select L/R buttons
struct SpriteTemplate gUnknown_080A82D8[] =
{
    {0,   80, 32, 4, 128, gfxLButtonAnim, &gfxLButtonOAM, gfxLButton4bpp},
    {224, 80, 32, 4, 128, gfxRButtonAnim, &gfxRButtonOAM, gfxRButton4bpp},
};

struct SpriteTemplate gUnknown_080A8308[] =
{
    {72,  16, 512, 64, 2048, gUnknown_08295FB8, &gUnknown_08295FDC, gUnknown_08295FE4},
    {112, 16, 512, 64, 2048, gUnknown_08295FB8, &gUnknown_08295FDC, gUnknown_08295FE4},
    {152, 16, 512, 64, 2048, gUnknown_08295FB8, &gUnknown_08295FDC, gUnknown_08295FE4},
    {192, 16, 512, 64, 2048, gUnknown_08295FB8, &gUnknown_08295FDC, gUnknown_08295FE4},

    {72,  56, 512, 64, 2048, gUnknown_08295FB8, &gUnknown_08295FDC, gUnknown_08295FE4},
    {112, 56, 512, 64, 2048, gUnknown_08295FB8, &gUnknown_08295FDC, gUnknown_08295FE4},
    {152, 56, 512, 64, 2048, gUnknown_08295FB8, &gUnknown_08295FDC, gUnknown_08295FE4},
    {192, 56, 512, 64, 2048, gUnknown_08295FB8, &gUnknown_08295FDC, gUnknown_08295FE4},

    {72,  96, 512, 64, 2048, gUnknown_08295FB8, &gUnknown_08295FDC, gUnknown_08295FE4},
    {112, 96, 512, 64, 2048, gUnknown_08295FB8, &gUnknown_08295FDC, gUnknown_08295FE4},
    {152, 96, 512, 64, 2048, gUnknown_08295FB8, &gUnknown_08295FDC, gUnknown_08295FE4},
    {192, 96, 512, 64, 2048, gUnknown_08295FB8, &gUnknown_08295FDC, gUnknown_08295FE4},
};

struct SpriteTemplate gUnknown_080A8428[] =
{
    {72,  16, 512, 64, 2048, gUnknown_082967E4, &gUnknown_08296808, gUnknown_08296810},
    {112, 16, 512, 64, 2048, gUnknown_082967E4, &gUnknown_08296808, gUnknown_08296810},
    {152, 16, 512, 64, 2048, gUnknown_082967E4, &gUnknown_08296808, gUnknown_08296810},
    {192, 16, 512, 64, 2048, gUnknown_082967E4, &gUnknown_08296808, gUnknown_08296810},

    {72,  56, 512, 64, 2048, gUnknown_082967E4, &gUnknown_08296808, gUnknown_08296810},
    {112, 56, 512, 64, 2048, gUnknown_082967E4, &gUnknown_08296808, gUnknown_08296810},
    {152, 56, 512, 64, 2048, gUnknown_082967E4, &gUnknown_08296808, gUnknown_08296810},
    {192, 56, 512, 64, 2048, gUnknown_082967E4, &gUnknown_08296808, gUnknown_08296810},

    {72,  96, 512, 64, 2048, gUnknown_082967E4, &gUnknown_08296808, gUnknown_08296810},
    {112, 96, 512, 64, 2048, gUnknown_082967E4, &gUnknown_08296808, gUnknown_08296810},
    {152, 96, 512, 64, 2048, gUnknown_082967E4, &gUnknown_08296808, gUnknown_08296810},
    {192, 96, 512, 64, 2048, gUnknown_082967E4, &gUnknown_08296808, gUnknown_08296810},
};

struct SpriteTemplate gUnknown_080A8548[] =
{
    {72,  16, 512, 64, 2048, gUnknown_0829578C, &gUnknown_082957B0, gUnknown_082957B8},
    {112, 16, 512, 64, 2048, gUnknown_0829578C, &gUnknown_082957B0, gUnknown_082957B8},
    {152, 16, 512, 64, 2048, gUnknown_0829578C, &gUnknown_082957B0, gUnknown_082957B8},
    {192, 16, 512, 64, 2048, gUnknown_0829578C, &gUnknown_082957B0, gUnknown_082957B8},

    {72,  56, 512, 64, 2048, gUnknown_0829578C, &gUnknown_082957B0, gUnknown_082957B8},
    {112, 56, 512, 64, 2048, gUnknown_0829578C, &gUnknown_082957B0, gUnknown_082957B8},
    {152, 56, 512, 64, 2048, gUnknown_0829578C, &gUnknown_082957B0, gUnknown_082957B8},
    {192, 56, 512, 64, 2048, gUnknown_0829578C, &gUnknown_082957B0, gUnknown_082957B8},

    {72,  96, 512, 64, 2048, gUnknown_0829578C, &gUnknown_082957B0, gUnknown_082957B8},
    {112, 96, 512, 64, 2048, gUnknown_0829578C, &gUnknown_082957B0, gUnknown_082957B8},
    {152, 96, 512, 64, 2048, gUnknown_0829578C, &gUnknown_082957B0, gUnknown_082957B8},
    {192, 96, 512, 64, 2048, gUnknown_0829578C, &gUnknown_082957B0, gUnknown_082957B8},
};

u8 gExpertLevelsStarsNeeded[] =
{
    9, 18, 27, 36, 45, 54, 63, 72, 81, 90, 90, 90, 
};

