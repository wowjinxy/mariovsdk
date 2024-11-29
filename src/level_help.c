#include "gba/gba.h"
#include "global.h"
#include "main.h"
#include "sprites.h"

static u8 sHelpState;
static u8 gUnknown_03000131;
static u8 gUnknown_03000132;
static u8 gUnknown_03000133;
static u16 sTileNumOffsets[12];

struct SpriteTemplate gUnknown_08079DB0 = { 0, 0, 64, 8, 256, (void *)0x082E4AF4, (void *)0x082E4B18, (void *)0x082E4B20 };
struct SpriteTemplate gUnknown_08079DC8 = { 0, 0, 128, 16, 512, (void *)0x082E4470, (void *)0x082E4494, (void *)0x082E449C };
struct SpriteTemplate gUnknown_08079DE0 = { 0, 0, 128, 16, 512, (void *)0x082E469C, (void *)0x082E46C0, (void *)0x082E46C8 };
struct SpriteTemplate gUnknown_08079DF8 = { 0, 0, 128, 16, 512, (void *)0x082E48C8, (void *)0x082E48EC, (void *)0x082E48F4 };
struct SpriteTemplate gUnknown_08079E10 = { 0, 0, 128, 16, 512, (void *)0x082E4018, (void *)0x082E403C, (void *)0x082E4044 };
struct SpriteTemplate gUnknown_08079E28 = { 0, 0, 128, 16, 512, (void *)0x082E4244, (void *)0x082E4268, (void *)0x082E4270 };
struct SpriteTemplate gUnknown_08079E40 = { 0, 0, 128, 16, 512, (void *)0x082E3410, (void *)0x082E3434, (void *)0x082E343C };
struct SpriteTemplate gUnknown_08079E58 = { 0, 0, 128, 16, 512, (void *)0x082E363C, (void *)0x082E3660, (void *)0x082E3668 };
struct SpriteTemplate gUnknown_08079E70 = { 0, 0, 128, 16, 512, (void *)0x082E3868, (void *)0x082E388C, (void *)0x082E3894 };
struct SpriteTemplate gUnknown_08079E88 = { 0, 0, 128, 16, 512, (void *)0x082E3CC0, (void *)0x082E3CE4, (void *)0x082E3CEC };
struct SpriteTemplate gUnknown_08079EA0 = { 0, 0, 64, 8, 256, (void *)0x082E3EEC, (void *)0x082E3F10, (void *)0x082E3F18 };
struct SpriteTemplate gUnknown_08079EB8 = { 0, 0, 128, 16, 512, (void *)0x082E3A94, (void *)0x082E3AB8, (void *)0x082E3AC0 };

// only the first entry here is actually used!
struct SpriteTemplate *gUnknown_08079ED0[] =
{
    &gUnknown_08079DB0,
    &gUnknown_08079DC8,
    &gUnknown_08079DE0,
    &gUnknown_08079DF8,
    &gUnknown_08079E10,
    &gUnknown_08079E28,
    &gUnknown_08079E40,
    &gUnknown_08079E58,
    &gUnknown_08079E70,
    &gUnknown_08079E88,
    &gUnknown_08079EA0,
    &gUnknown_08079EB8,
};

struct UnkStruct2
{
    struct SpriteTemplate *template;
    u32 unk4;
    s16 x;
    s16 y;
};

struct UnkStruct2 gHelpScreenBaseSpriteLayout[43] =
{
    { &gUnknown_08079DB0,  0,   0,   0 },
    { &gUnknown_08079DB0,  0,   0,  32 },
    { &gUnknown_08079DB0,  0,   0,  64 },
    { &gUnknown_08079DB0,  0,   0,  96 },
    { &gUnknown_08079DB0,  0,   0, 128 },
    { &gUnknown_08079DB0,  0,   0,  32 },
    { &gUnknown_08079EA0, 10,  24,  16 },
    { &gUnknown_08079DC8,  1,  16,   0 },
    { &gUnknown_08079DE0,  2,  48,   0 },
    { &gUnknown_08079DE0,  2,  80,   0 },
    { &gUnknown_08079DE0,  2, 112,   0 },
    { &gUnknown_08079DE0,  2, 144,   0 },
    { &gUnknown_08079DE0,  2, 176,   0 },
    { &gUnknown_08079DF8,  3, 208,   0 },
    { &gUnknown_08079E10,  4,  16,  32 },
    { &gUnknown_08079E88,  9,  48,  32 },
    { &gUnknown_08079E88,  9,  80,  32 },
    { &gUnknown_08079E88,  9, 112,  32 },
    { &gUnknown_08079E88,  9, 144,  32 },
    { &gUnknown_08079E88,  9, 176,  32 },
    { &gUnknown_08079E28,  5, 208,  32 },
    { &gUnknown_08079E10,  4,  16,  64 },
    { &gUnknown_08079E88,  9,  48,  64 },
    { &gUnknown_08079E88,  9,  80,  64 },
    { &gUnknown_08079E88,  9, 112,  64 },
    { &gUnknown_08079E88,  9, 144,  64 },
    { &gUnknown_08079E88,  9, 176,  64 },
    { &gUnknown_08079E28,  5, 208,  64 },
    { &gUnknown_08079E10,  4,  16,  96 },
    { &gUnknown_08079E88,  9,  48,  96 },
    { &gUnknown_08079E88,  9,  80,  96 },
    { &gUnknown_08079E88,  9, 112,  96 },
    { &gUnknown_08079E88,  9, 144,  96 },
    { &gUnknown_08079E88,  9, 176,  96 },
    { &gUnknown_08079E28,  5, 208,  96 },
    { &gUnknown_08079EB8, 11, 100, 144 },
    { &gUnknown_08079E40,  6,  16, 128 },
    { &gUnknown_08079E58,  7,  48, 128 },
    { &gUnknown_08079E58,  7,  80, 128 },
    { &gUnknown_08079E58,  7, 112, 128 },
    { &gUnknown_08079E58,  7, 144, 128 },
    { &gUnknown_08079E58,  7, 176, 128 },
    { &gUnknown_08079E70,  8, 208, 128 },
};

struct SpriteTemplate gHelpLevelViewerSpriteLayout[] =
{
    { 72, 24, 64, 8, 256, (void *)0x082C6B14, (void *)0x082C6B38, (void *)0x082C6B40 },
    { 104, 24, 64, 8, 256, (void *)0x082C6C40, (void *)0x082C6C64, (void *)0x082C6C6C },
    { 136, 24, 64, 8, 256, (void *)0x082C6D6C, (void *)0x082C6D90, (void *)0x082C6D98 },
    { 88, 48, 256, 32, 1024, (void *)0x082C6E98, (void *)0x082C6EBC, (void *)0x082C6EC4 },
    { 28, 80, 16, 2, 64, (void *)0x082C72C4, (void *)0x082C72E8, (void *)0x082C72F0 },
    { 36, 80, 256, 32, 1024, (void *)0x082C7330, (void *)0x082C7354, (void *)0x082C735C },
    { 100, 80, 256, 32, 1024, (void *)0x082C775C, (void *)0x082C7780, (void *)0x082C7788 },
    { 164, 80, 256, 32, 1024, (void *)0x082C7B88, (void *)0x082C7BAC, (void *)0x082C7BB4 },
};

struct SpriteTemplate gHelpHandstandSpriteLayout[] =
{
    { 88, 16, 16, 2, 64, (void *)0x082CB544, (void *)0x082CB568, (void *)0x082CB570 },
    { 96, 16, 64, 8, 256, (void *)0x082CB5B0, (void *)0x082CB5D4, (void *)0x082CB5DC },
    { 128, 16, 64, 8, 256, (void *)0x082CB6DC, (void *)0x082CB700, (void *)0x082CB708 },
    { 160, 16, 64, 8, 256, (void *)0x082CB808, (void *)0x082CB82C, (void *)0x082CB834 },
    { 48, 32, 128, 16, 512, (void *)0x082CB934, (void *)0x082CB958, (void *)0x082CB960 },
    { 80, 32, 128, 16, 512, (void *)0x082CBB60, (void *)0x082CBB84, (void *)0x082CBB8C },
    { 112, 32, 128, 16, 512, (void *)0x082CBD8C, (void *)0x082CBDB0, (void *)0x082CBDB8 },
    { 64, 64, 32, 4, 128, (void *)0x082CBFB8, (void *)0x082CBFDC, (void *)0x082CBFE4 },
    { 56, 96, 256, 32, 1024, (void *)0x082CC064, (void *)0x082CC088, (void *)0x082CC090 },
    { 88, 96, 256, 32, 1024, (void *)0x082CC490, (void *)0x082CC4B4, (void *)0x082CC4BC },
    { 120, 64, 1024, 128, 4096, (void *)0x082CC8BC, (void *)0x082CC8E0, (void *)0x082CC8E8 },
};

struct SpriteTemplate gHelpHandstandDoubleJumpSpriteLayout[] =
{
    { 56, 16, 64, 8, 256, (void *)0x082CD8E8, (void *)0x082CD90C, (void *)0x082CD914 },
    { 88, 16, 64, 8, 256, (void *)0x082CDA14, (void *)0x082CDA38, (void *)0x082CDA40 },
    { 120, 16, 64, 8, 256, (void *)0x082CDB40, (void *)0x082CDB64, (void *)0x082CDB6C },
    { 152, 16, 64, 8, 256, (void *)0x082CDC6C, (void *)0x082CDC90, (void *)0x082CDC98 },
    { 184, 16, 64, 8, 256, (void *)0x082CDD98, (void *)0x082CDDBC, (void *)0x082CDDC4 },
    { 32, 32, 256, 32, 1024, (void *)0x082CDEC4, (void *)0x082CDEE8, (void *)0x082CDEF0 },
    { 96, 32, 256, 32, 1024, (void *)0x082CE2F0, (void *)0x082CE314, (void *)0x082CE31C },
    { 160, 32, 32, 4, 128, (void *)0x082CE71C, (void *)0x082CE740, (void *)0x082CE748 },
    { 48, 64, 32, 4, 128, (void *)0x082CBFB8, (void *)0x082CBFDC, (void *)0x082CBFE4 },
    { 96, 64, 64, 8, 256, (void *)0x082CE7C8, (void *)0x082CE7EC, (void *)0x082CE7F4 },
    { 40, 112, 32, 4, 128, (void *)0x082CE8F4, (void *)0x082CE918, (void *)0x082CE920 },
    { 48, 96, 256, 32, 1024, (void *)0x082CE9A0, (void *)0x082CE9C4, (void *)0x082CE9CC },
    { 80, 96, 256, 32, 1024, (void *)0x082CEDCC, (void *)0x082CEDF0, (void *)0x082CEDF8 },
    { 112, 64, 512, 64, 2048, (void *)0x082CF1F8, (void *)0x082CF21C, (void *)0x082CF224 },
    { 144, 64, 1024, 128, 4096, (void *)0x082CFA24, (void *)0x082CFA48, (void *)0x082CFA50 },
    { 184, 56, 64, 8, 256, (void *)0x082D0A50, (void *)0x082D0A74, (void *)0x082D0A7C },
};

struct SpriteTemplate gHelpBackflipSpriteLayout[] =
{
    { 88, 16, 64, 8, 256, (void *)0x082D0B7C, (void *)0x082D0BA0, (void *)0x082D0BA8 },
    { 120, 16, 64, 8, 256, (void *)0x082D0CA8, (void *)0x082D0CCC, (void *)0x082D0CD4 },
    { 32, 32, 256, 32, 1024, (void *)0x082D0DD4, (void *)0x082D0DF8, (void *)0x082D0E00 },
    { 120, 48, 64, 8, 256, (void *)0x082D1200, (void *)0x082D1224, (void *)0x082D122C },
    { 152, 56, 32, 4, 128, (void *)0x082D132C, (void *)0x082D1350, (void *)0x082D1358 },
    { 56, 64, 1024, 128, 4096, (void *)0x082D13D8, (void *)0x082D13FC, (void *)0x082D1404 },
    { 120, 64, 1024, 128, 4096, (void *)0x082D2404, (void *)0x082D2428, (void *)0x082D2430 },
};

struct SpriteTemplate gHelpThrowObjectsSpriteLayout[] =
{
    { 64, 24, 64, 8, 256, (void *)0x082D3430, (void *)0x082D3454, (void *)0x082D345C },

    { 96, 24, 64, 8, 256, (void *)0x082D355C, (void *)0x082D3580, (void *)0x082D3588 },

    { 128, 24, 64, 8, 256, (void *)0x082D3688, (void *)0x082D36AC, (void *)0x082D36B4 },

    { 160, 24, 64, 8, 256, (void *)0x082D37B4, (void *)0x082D37D8, (void *)0x082D37E0 },

    { 32, 40, 256, 32, 1024, (void *)0x082D38E0, (void *)0x082D3904, (void *)0x082D390C },

    { 24, 64, 1024, 128, 4096, (void *)0x082D3D0C, (void *)0x082D3D30, (void *)0x082D3D38 },

    { 88, 64, 1024, 128, 4096, (void *)0x082D4D38, (void *)0x082D4D5C, (void *)0x082D4D64 },

    { 152, 64, 1024, 128, 4096, (void *)0x082D5D64, (void *)0x082D5D88, (void *)0x082D5D90 },

};

struct SpriteTemplate gHelpJumpUpAndThrowSpriteLayout[] =
{
    { 80, 16, 64, 8, 256, (void *)0x082D6D90, (void *)0x082D6DB4, (void *)0x082D6DBC },

    { 112, 16, 64, 8, 256, (void *)0x082D6EBC, (void *)0x082D6EE0, (void *)0x082D6EE8 },

    { 144, 16, 64, 8, 256, (void *)0x082D6FE8, (void *)0x082D700C, (void *)0x082D7014 },

    { 176, 16, 64, 8, 256, (void *)0x082D7114, (void *)0x082D7138, (void *)0x082D7140 },

    { 48, 32, 256, 32, 1024, (void *)0x082D7240, (void *)0x082D7264, (void *)0x082D726C },

    { 112, 32, 128, 16, 512, (void *)0x082D766C, (void *)0x082D7690, (void *)0x082D7698 },

    { 144, 48, 64, 8, 256, (void *)0x082D7898, (void *)0x082D78BC, (void *)0x082D78C4 },

    { 24, 64, 1024, 128, 4096, (void *)0x082D79C4, (void *)0x082D79E8, (void *)0x082D79F0 },

    { 88, 64, 1024, 128, 4096, (void *)0x082D89F0, (void *)0x082D8A14, (void *)0x082D8A1C },

    { 152, 64, 1024, 128, 4096, (void *)0x082D9A1C, (void *)0x082D9A40, (void *)0x082D9A48 },

};

struct SpriteTemplate gHelpHandStandDeflectsSpriteLayout[] =
{
    { 40, 32, 256, 32, 1024, (void *)0x082DAA48, (void *)0x082DAA6C, (void *)0x082DAA74 },
    { 104, 32, 256, 32, 1024, (void *)0x082DAE74, (void *)0x082DAE98, (void *)0x082DAEA0 },
    { 168, 32, 64, 8, 256, (void *)0x082DB2A0, (void *)0x082DB2C4, (void *)0x082DB2CC },
    { 80, 80, 128, 16, 512, (void *)0x082DB97C, (void *)0x082DB9A0, (void *)0x082DB9A8 },
    { 136, 88, 64, 8, 256, (void *)0x082DBBA8, (void *)0x082DBBCC, (void *)0x082DBBD4 },
    { 64, 96, 512, 64, 2048, (void *)0x082DBCD4, (void *)0x082DBCF8, (void *)0x082DBD00 },
    { 128, 96, 512, 64, 2048, (void *)0x082DC500, (void *)0x082DC524, (void *)0x082DC52C },
    { 192, 112, 32, 4, 128, (void *)0x082DCD2C, (void *)0x082DCD50, (void *)0x082DCD58 },
};

struct SpriteTemplate gHelpWireSpinAndJumpSpriteLayout[] =
{
    { 80, 16, 64, 8, 256, (void *)0x082DE30C, (void *)0x082DE330, (void *)0x082DE338 },
    { 112, 16, 64, 8, 256, (void *)0x082DE438, (void *)0x082DE45C, (void *)0x082DE464 },
    { 144, 16, 64, 8, 256, (void *)0x082DE564, (void *)0x082DE588, (void *)0x082DE590 },
    { 176, 16, 64, 8, 256, (void *)0x082DE690, (void *)0x082DE6B4, (void *)0x082DE6BC },
    { 32, 32, 256, 32, 1024, (void *)0x082DE7BC, (void *)0x082DE7E0, (void *)0x082DE7E8 },
    { 96, 32, 256, 32, 1024, (void *)0x082DEBE8, (void *)0x082DEC0C, (void *)0x082DEC14 },
    { 160, 32, 256, 32, 1024, (void *)0x082DF014, (void *)0x082DF038, (void *)0x082DF040 },
    { 0, 64, 1024, 128, 4096, (void *)0x082DF440, (void *)0x082DF464, (void *)0x082DF46C },
    { 64, 64, 1024, 128, 4096, (void *)0x082E046C, (void *)0x082E0490, (void *)0x082E0498 },
    { 128, 64, 512, 64, 2048, (void *)0x082E1498, (void *)0x082E14BC, (void *)0x082E14C4 },
    { 128, 96, 256, 32, 1024, (void *)0x082E1CC4, (void *)0x082E1CE8, (void *)0x082E1CF0 },
    { 192, 64, 512, 64, 2048, (void *)0x082E20F0, (void *)0x082E2114, (void *)0x082E211C },
};

struct SpriteTemplate gHelpSpringJumpSpriteLayout[] =
{
    { 80, 16, 64, 8, 256, (void *)0x082C7FB4, (void *)0x082C7FD8, (void *)0x082C7FE0 },
    { 112, 16, 64, 8, 256, (void *)0x082C80E0, (void *)0x082C8104, (void *)0x082C810C },
    { 144, 16, 32, 4, 128, (void *)0x082C820C, (void *)0x082C8230, (void *)0x082C8238 },
    { 56, 32, 128, 16, 512, (void *)0x082C82B8, (void *)0x082C82DC, (void *)0x082C82E4 },
    { 128, 32, 128, 16, 512, (void *)0x082C84E4, (void *)0x082C8508, (void *)0x082C8510 },
    { 64, 64, 1024, 128, 4096, (void *)0x082C8710, (void *)0x082C8734, (void *)0x082C873C },
    { 128, 64, 1024, 128, 4096, (void *)0x082C973C, (void *)0x082C9760, (void *)0x082C9768 },
};

struct Struct0807A92C
{
    struct SpriteTemplate *sprites;
    s16 spritesCount;
};

struct Struct0807A92C gUnknown_0807A92C[] =
{
    { gHelpLevelViewerSpriteLayout, ARRAY_COUNT(gHelpLevelViewerSpriteLayout) },
    { gHelpHandstandSpriteLayout, ARRAY_COUNT(gHelpHandstandSpriteLayout) },
    { gHelpHandstandDoubleJumpSpriteLayout, ARRAY_COUNT(gHelpHandstandDoubleJumpSpriteLayout) },
    { gHelpBackflipSpriteLayout, ARRAY_COUNT(gHelpBackflipSpriteLayout) },
    { gHelpThrowObjectsSpriteLayout, ARRAY_COUNT(gHelpThrowObjectsSpriteLayout) },
    { gHelpJumpUpAndThrowSpriteLayout, ARRAY_COUNT(gHelpJumpUpAndThrowSpriteLayout) },
    { gHelpHandStandDeflectsSpriteLayout, ARRAY_COUNT(gHelpHandStandDeflectsSpriteLayout) },
    { gHelpWireSpinAndJumpSpriteLayout, ARRAY_COUNT(gHelpWireSpinAndJumpSpriteLayout) },
    { gHelpSpringJumpSpriteLayout, ARRAY_COUNT(gHelpSpringJumpSpriteLayout) },
};

void help_init_callback(void)
{
    REG_DISPCNT |= DISPCNT_OBJWIN_ON;
    sHelpState = 1;
    gUnknown_03000131 = 4;
    gUnknown_03000132 = 2;
    load_predefined_palette(PALETTE_5_LEVEL_HELP, LOAD_OBJ_PALETTE);

    if (gUnknown_03001938 & 2)
        gUnknown_03000133 = 0;
    else if (gUnknown_03001938 & 4)
        gUnknown_03000133 = 1;
    else if (gUnknown_03001938 & 8)
        gUnknown_03000133 = 2;
    else if (gUnknown_03001938 & 16)
        gUnknown_03000133 = 3;
    else if (gUnknown_03001938 & 32)
        gUnknown_03000133 = 4;
    else if (gUnknown_03001938 & 64)
        gUnknown_03000133 = 5;
    else if (gUnknown_03001938 & 128)
        gUnknown_03000133 = 6;
    else if (gUnknown_03001938 & 0x1000)
        gUnknown_03000133 = 7;
    else if (gUnknown_03001938 & 0x4000)
        gUnknown_03000133 = 8;
}

static void sub_0802A5AC(void)
{
    u8 r3 = 0;

    if (sHelpState == 1)
    {
        gUnknown_03000131++;
        gUnknown_03000132++;
        if (gUnknown_03000131 > 8)
        {
            gUnknown_03000131 = 8;
            r3++;
        }
        if (gUnknown_03000132 > 5)
        {
            gUnknown_03000132 = 5;
            r3++;
        }
        if (r3 == 2)
            sHelpState = 2;
    }
    else if (sHelpState == 3)
    {
        gUnknown_03000131--;
        gUnknown_03000132--;
        if (gUnknown_03000131 < 4)
        {
            gUnknown_03000131 = 4;
            r3++;
        }
        if (gUnknown_03000132 < 2)
        {
            gUnknown_03000132 = 2;
            r3++;
        }
        if (r3 == 2)
            sHelpState = 0;
    }
}

static void load_sprites_0802A648(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    u16 tNum;
    u16 xOffset, yOffset;
    u16 x, y;

    DmaCopy32(3, gUnknown_082E4C4C, (u8 *)OBJ_VRAM0 + *vramOffset, 0x200);
    tNum = *tileNum;
    *tileNum += 16;
    *vramOffset += 0x200;

    xOffset = (240 - (gUnknown_03000131 * 32)) >> 1;
    yOffset = (160 - (gUnknown_03000132 * 32)) >> 1;

    for (y = 0; y < gUnknown_03000132; y++)
    {
        for (x = 0; x < gUnknown_03000131; x++)
        {
            DmaCopy32(3, &gUnknown_082E4C44, &gOamBuffer[*oamIndex], 8);
            gOamBuffer[*oamIndex].tileNum = tNum;
            gOamBuffer[*oamIndex].x = x * 32 + xOffset;
            gOamBuffer[*oamIndex].y = y * 32 + yOffset;
            gOamBuffer[*oamIndex].paletteNum = 0;
            gOamBuffer[*oamIndex].priority = 1;
            (*oamIndex)++;
        }
    }
}

static void load_sprites_0802A7A0(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    s16 i;
    s16 j;

    const struct UnkStruct2 *r8 = gHelpScreenBaseSpriteLayout;
    const struct SpriteTemplate *sprite = gUnknown_08079ED0[0];

    for (i = 0; i < 12; i++, sprite++)
    {
        DmaCopy32(3, sprite->tileData, (u8 *)OBJ_VRAM0 + *vramOffset, sprite->subSpriteSize);
        sTileNumOffsets[i] = *tileNum;
        *tileNum += sprite->unk6;
        *vramOffset += sprite->subSpriteSize;
    }

    for (j = 0; j < 43u; j++, r8++)
    {
        DmaCopy32(3, r8->template->oamData, &gOamBuffer[*oamIndex], sizeof(struct OamData));
        gOamBuffer[*oamIndex].tileNum += sTileNumOffsets[r8->unk4];
        gOamBuffer[*oamIndex].x = r8->x;
        gOamBuffer[*oamIndex].y = r8->y;
        gOamBuffer[*oamIndex].priority = 0;
        (*oamIndex)++;
    }
}

static void load_sprites_0802A8F0(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    s16 i;

    for (i = 0; i < gUnknown_0807A92C[gUnknown_03000133].spritesCount; i++)
    {
        const struct SpriteTemplate *sprite = &gUnknown_0807A92C[gUnknown_03000133].sprites[i];

        DmaCopy32(3, sprite->tileData, (u8 *)OBJ_VRAM0 + *vramOffset, sprite->subSpriteSize);
        DmaCopy32(3, sprite->oamData, &gOamBuffer[*oamIndex], sizeof(struct OamData));
        gOamBuffer[*oamIndex].tileNum = *tileNum;
        gOamBuffer[*oamIndex].x = (s16)sprite->x;
        gOamBuffer[*oamIndex].y = sprite->y;
        gOamBuffer[*oamIndex].priority = 0;
        *tileNum += sprite->unk6;
        *vramOffset += sprite->subSpriteSize;
        (*oamIndex)++;
    }
}

void help_end(void)
{
    sub_08038B18();
}

void help_main(void)
{
    process_input();
    if (sHelpState == 2)
    {
        if (gNewKeys & (B_BUTTON|START_BUTTON))
            sHelpState = 3;
    }
    else if (sHelpState == 0)
    {
        REG_DISPCNT &= ~DISPCNT_OBJWIN_ON;
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        change_main_state(MAIN_STATE_UNKNOWN_19, NO_FADE);
        sub_08072118();
    }
}

void help_loop(void)
{
    level_play_loop();
}

void help_load_sprites(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    if (gMainState == MAIN_STATE_HELP && sHelpState != 0)
    {
        if (sHelpState == 2)
        {
            load_sprites_0802A8F0(oamIndex, tileNum, vramOffset);
            load_sprites_0802A7A0(oamIndex, tileNum, vramOffset);
        }
        else
        {
            load_sprites_0802A648(oamIndex, tileNum, vramOffset);
            sub_0802A5AC();
        }
    }
}
