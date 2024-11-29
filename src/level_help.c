#include "gba/gba.h"
#include "global.h"
#include "main.h"
#include "sprites.h"

enum
{
    HELP_STATE_DONE,
    HELP_STATE_ZOOM_IN,
    HELP_STATE_DISPLAY,
    HELP_STATE_ZOOM_OUT,
};

static u8 sHelpState;
static u8 sBlankTilesX;
static u8 sBlankTilesY;
static u8 sHelpScreenID;

static struct SpriteTemplate sFrameSpriteTemplatesArr[] =
{
    { 0, 0,  64,  8, 256, gUnknown_082E4AF4, &gfxHelpFrameOuterBGOAM, gfxHelpFrameOuterBG4bpp },
    { 0, 0, 128, 16, 512, gUnknown_082E4470, &gfxHelpFrameTopLeftOAM, gfxHelpFrameTopLeft4bpp },
    { 0, 0, 128, 16, 512, gUnknown_082E469C, &gfxHelpFrameTopOAM, gfxHelpFrameTop4bpp },
    { 0, 0, 128, 16, 512, gUnknown_082E48C8, &gfxHelpFrameTopRightOAM, gfxHelpFrameTopRight4bpp },
    { 0, 0, 128, 16, 512, gUnknown_082E4018, &gfxHelpFrameLeftOAM, gfxHelpFrameLeft4bpp },
    { 0, 0, 128, 16, 512, gUnknown_082E4244, &gfxHelpFrameRightOAM, gfxHelpFrameRight4bpp },
    { 0, 0, 128, 16, 512, gUnknown_082E3410, &gfxHelpFrameBottomLeftOAM, gfxHelpFrameBottomLeft4bpp },
    { 0, 0, 128, 16, 512, gUnknown_082E363C, &gfxHelpFrameBottomOAM, gfxHelpFrameBottom4bpp },
    { 0, 0, 128, 16, 512, gUnknown_082E3868, &gfxHelpFrameBottomRightOAM, gfxHelpFrameBottomRight4bpp },
    { 0, 0, 128, 16, 512, gUnknown_082E3CC0, &gfxHelpFrameBGOAM, gfxHelpFrameBG4bpp },
    { 0, 0,  64,  8, 256, gUnknown_082E3EEC, &gfxHelpTextOAM, gfxHelpText4bpp },
    { 0, 0, 128, 16, 512, gUnknown_082E3A94, &gfxHelpBExitOAM, gfxHelpBExit8bpp },
};

// only the first entry here is actually used!
static struct SpriteTemplate *sFrameSpriteTemplates[] =
{
    &sFrameSpriteTemplatesArr[0],
    &sFrameSpriteTemplatesArr[1],
    &sFrameSpriteTemplatesArr[2],
    &sFrameSpriteTemplatesArr[3],
    &sFrameSpriteTemplatesArr[4],
    &sFrameSpriteTemplatesArr[5],
    &sFrameSpriteTemplatesArr[6],
    &sFrameSpriteTemplatesArr[7],
    &sFrameSpriteTemplatesArr[8],
    &sFrameSpriteTemplatesArr[9],
    &sFrameSpriteTemplatesArr[10],
    &sFrameSpriteTemplatesArr[11],
};

struct HelpScreenSpritePos
{
    struct SpriteTemplate *template;
    u32 index;
    s16 x;
    s16 y;
};

static struct HelpScreenSpritePos gHelpScreenBaseSpriteLayout[43] =
{
    { &sFrameSpriteTemplatesArr[0],   0,   0,   0 },
    { &sFrameSpriteTemplatesArr[0],   0,   0,  32 },
    { &sFrameSpriteTemplatesArr[0],   0,   0,  64 },
    { &sFrameSpriteTemplatesArr[0],   0,   0,  96 },
    { &sFrameSpriteTemplatesArr[0],   0,   0, 128 },
    { &sFrameSpriteTemplatesArr[0],   0,   0,  32 },
    { &sFrameSpriteTemplatesArr[10], 10,  24,  16 },
    { &sFrameSpriteTemplatesArr[1],   1,  16,   0 },
    { &sFrameSpriteTemplatesArr[2],   2,  48,   0 },
    { &sFrameSpriteTemplatesArr[2],   2,  80,   0 },
    { &sFrameSpriteTemplatesArr[2],   2, 112,   0 },
    { &sFrameSpriteTemplatesArr[2],   2, 144,   0 },
    { &sFrameSpriteTemplatesArr[2],   2, 176,   0 },
    { &sFrameSpriteTemplatesArr[3],   3, 208,   0 },
    { &sFrameSpriteTemplatesArr[4],   4,  16,  32 },
    { &sFrameSpriteTemplatesArr[9],   9,  48,  32 },
    { &sFrameSpriteTemplatesArr[9],   9,  80,  32 },
    { &sFrameSpriteTemplatesArr[9],   9, 112,  32 },
    { &sFrameSpriteTemplatesArr[9],   9, 144,  32 },
    { &sFrameSpriteTemplatesArr[9],   9, 176,  32 },
    { &sFrameSpriteTemplatesArr[5],   5, 208,  32 },
    { &sFrameSpriteTemplatesArr[4],   4,  16,  64 },
    { &sFrameSpriteTemplatesArr[9],   9,  48,  64 },
    { &sFrameSpriteTemplatesArr[9],   9,  80,  64 },
    { &sFrameSpriteTemplatesArr[9],   9, 112,  64 },
    { &sFrameSpriteTemplatesArr[9],   9, 144,  64 },
    { &sFrameSpriteTemplatesArr[9],   9, 176,  64 },
    { &sFrameSpriteTemplatesArr[5],   5, 208,  64 },
    { &sFrameSpriteTemplatesArr[4],   4,  16,  96 },
    { &sFrameSpriteTemplatesArr[9],   9,  48,  96 },
    { &sFrameSpriteTemplatesArr[9],   9,  80,  96 },
    { &sFrameSpriteTemplatesArr[9],   9, 112,  96 },
    { &sFrameSpriteTemplatesArr[9],   9, 144,  96 },
    { &sFrameSpriteTemplatesArr[9],   9, 176,  96 },
    { &sFrameSpriteTemplatesArr[5],   5, 208,  96 },
    { &sFrameSpriteTemplatesArr[11], 11, 100, 144 },
    { &sFrameSpriteTemplatesArr[6],   6,  16, 128 },
    { &sFrameSpriteTemplatesArr[7],   7,  48, 128 },
    { &sFrameSpriteTemplatesArr[7],   7,  80, 128 },
    { &sFrameSpriteTemplatesArr[7],   7, 112, 128 },
    { &sFrameSpriteTemplatesArr[7],   7, 144, 128 },
    { &sFrameSpriteTemplatesArr[7],   7, 176, 128 },
    { &sFrameSpriteTemplatesArr[8],   8, 208, 128 },
};

static struct SpriteTemplate gHelpLevelViewerSpriteLayout[] =
{
    {  72, 24,  64,  8,  256, gUnknown_082C6B14, &gUnknown_082C6B38, gUnknown_082C6B40 },
    { 104, 24,  64,  8,  256, gUnknown_082C6C40, &gUnknown_082C6C64, gUnknown_082C6C6C },
    { 136, 24,  64,  8,  256, gUnknown_082C6D6C, &gUnknown_082C6D90, gUnknown_082C6D98 },
    {  88, 48, 256, 32, 1024, gUnknown_082C6E98, &gUnknown_082C6EBC, gUnknown_082C6EC4 },
    {  28, 80,  16,  2,   64, gUnknown_082C72C4, &gUnknown_082C72E8, gUnknown_082C72F0 },
    {  36, 80, 256, 32, 1024, gUnknown_082C7330, &gUnknown_082C7354, gUnknown_082C735C },
    { 100, 80, 256, 32, 1024, gUnknown_082C775C, &gUnknown_082C7780, gUnknown_082C7788 },
    { 164, 80, 256, 32, 1024, gUnknown_082C7B88, &gUnknown_082C7BAC, gUnknown_082C7BB4 },
};

static struct SpriteTemplate gHelpHandstandSpriteLayout[] =
{
    {  88, 16,   16,   2,   64, gUnknown_082CB544, &gfxHandstandJumpText1OAM, gfxHandstandJumpText14bpp },
    {  96, 16,   64,   8,  256, gUnknown_082CB5B0, &gfxHandstandJumpText2OAM, gfxHandstandJumpText24bpp },
    { 128, 16,   64,   8,  256, gUnknown_082CB6DC, &gfxHandstandJumpText3OAM, gfxHandstandJumpText34bpp },
    { 160, 16,   64,   8,  256, gUnknown_082CB808, &gfxHandstandJumpText4OAM, gfxHandstandJumpText44bpp },
    {  48, 32,  128,  16,  512, gUnknown_082CB934, &gUnknown_082CB958, gUnknown_082CB960 },
    {  80, 32,  128,  16,  512, gUnknown_082CBB60, &gUnknown_082CBB84, gUnknown_082CBB8C },
    { 112, 32,  128,  16,  512, gUnknown_082CBD8C, &gUnknown_082CBDB0, gUnknown_082CBDB8 },
    {  64, 64,   32,   4,  128, gUnknown_082CBFB8, &gUnknown_082CBFDC, gUnknown_082CBFE4 },
    {  56, 96,  256,  32, 1024, gUnknown_082CC064, &gUnknown_082CC088, gUnknown_082CC090 },
    {  88, 96,  256,  32, 1024, gUnknown_082CC490, &gUnknown_082CC4B4, gUnknown_082CC4BC },
    { 120, 64, 1024, 128, 4096, gUnknown_082CC8BC, &gUnknown_082CC8E0, gUnknown_082CC8E8 },
};

static struct SpriteTemplate gHelpHandstandDoubleJumpSpriteLayout[] =
{
    {  56,  16,   64,   8,  256, gUnknown_082CD8E8, &gUnknown_082CD90C, gfxHandstandDoubleJumpText14bpp },
    {  88,  16,   64,   8,  256, gUnknown_082CDA14, &gUnknown_082CDA38, gUnknown_082CDA40 },
    { 120,  16,   64,   8,  256, gUnknown_082CDB40, &gUnknown_082CDB64, gfxHandstandDoubleJumpText34bpp },
    { 152,  16,   64,   8,  256, gUnknown_082CDC6C, &gUnknown_082CDC90, gUnknown_082CDC98 },
    { 184,  16,   64,   8,  256, gUnknown_082CDD98, &gUnknown_082CDDBC, gfxHandstandDoubleJumpText44bpp },
    {  32,  32,  256,  32, 1024, gUnknown_082CDEC4, &gUnknown_082CDEE8, gUnknown_082CDEF0 },
    {  96,  32,  256,  32, 1024, gUnknown_082CE2F0, &gUnknown_082CE314, gUnknown_082CE31C },
    { 160,  32,   32,   4,  128, gUnknown_082CE71C, &gUnknown_082CE740, gUnknown_082CE748 },
    {  48,  64,   32,   4,  128, gUnknown_082CBFB8, &gUnknown_082CBFDC, gUnknown_082CBFE4 },
    {  96,  64,   64,   8,  256, gUnknown_082CE7C8, &gUnknown_082CE7EC, gUnknown_082CE7F4 },
    {  40, 112,   32,   4,  128, gUnknown_082CE8F4, &gUnknown_082CE918, gUnknown_082CE920 },
    {  48,  96,  256,  32, 1024, gUnknown_082CE9A0, &gUnknown_082CE9C4, gUnknown_082CE9CC },
    {  80,  96,  256,  32, 1024, gUnknown_082CEDCC, &gUnknown_082CEDF0, gUnknown_082CEDF8 },
    { 112,  64,  512,  64, 2048, gUnknown_082CF1F8, &gUnknown_082CF21C, gUnknown_082CF224 },
    { 144,  64, 1024, 128, 4096, gUnknown_082CFA24, &gUnknown_082CFA48, gUnknown_082CFA50 },
    { 184,  56,   64,   8,  256, gUnknown_082D0A50, &gUnknown_082D0A74, gUnknown_082D0A7C },
};

static struct SpriteTemplate gHelpBackflipSpriteLayout[] =
{
    {  88, 16,   64,   8,  256, gUnknown_082D0B7C, &gUnknown_082D0BA0, gfxBackflipText14bpp },
    { 120, 16,   64,   8,  256, gUnknown_082D0CA8, &gUnknown_082D0CCC, gfxBackflipText24bpp },
    {  32, 32,  256,  32, 1024, gUnknown_082D0DD4, &gUnknown_082D0DF8, gUnknown_082D0E00 },
    { 120, 48,   64,   8,  256, gUnknown_082D1200, &gUnknown_082D1224, gUnknown_082D122C },
    { 152, 56,   32,   4,  128, gUnknown_082D132C, &gUnknown_082D1350, gUnknown_082D1358 },
    {  56, 64, 1024, 128, 4096, gUnknown_082D13D8, &gUnknown_082D13FC, gUnknown_082D1404 },
    { 120, 64, 1024, 128, 4096, gUnknown_082D2404, &gUnknown_082D2428, gUnknown_082D2430 },
};

static struct SpriteTemplate gHelpThrowObjectsSpriteLayout[] =
{
    {  64, 24,   64,   8,  256, gUnknown_082D3430, &gUnknown_082D3454, gUnknown_082D345C },
    {  96, 24,   64,   8,  256, gUnknown_082D355C, &gUnknown_082D3580, gUnknown_082D3588 },
    { 128, 24,   64,   8,  256, gUnknown_082D3688, &gUnknown_082D36AC, gUnknown_082D36B4 },
    { 160, 24,   64,   8,  256, gUnknown_082D37B4, &gUnknown_082D37D8, gUnknown_082D37E0 },
    {  32, 40,  256,  32, 1024, gUnknown_082D38E0, &gUnknown_082D3904, gUnknown_082D390C },
    {  24, 64, 1024, 128, 4096, gUnknown_082D3D0C, &gUnknown_082D3D30, gUnknown_082D3D38 },
    {  88, 64, 1024, 128, 4096, gUnknown_082D4D38, &gUnknown_082D4D5C, gUnknown_082D4D64 },
    { 152, 64, 1024, 128, 4096, gUnknown_082D5D64, &gUnknown_082D5D88, gUnknown_082D5D90 },

};

static struct SpriteTemplate gHelpJumpUpAndThrowSpriteLayout[] =
{
    {  80, 16,   64,   8,  256, gUnknown_082D6D90, &gUnknown_082D6DB4, gUnknown_082D6DBC },
    { 112, 16,   64,   8,  256, gUnknown_082D6EBC, &gUnknown_082D6EE0, gUnknown_082D6EE8 },
    { 144, 16,   64,   8,  256, gUnknown_082D6FE8, &gUnknown_082D700C, gUnknown_082D7014 },
    { 176, 16,   64,   8,  256, gUnknown_082D7114, &gUnknown_082D7138, gUnknown_082D7140 },
    {  48, 32,  256,  32, 1024, gUnknown_082D7240, &gUnknown_082D7264, gUnknown_082D726C },
    { 112, 32,  128,  16,  512, gUnknown_082D766C, &gUnknown_082D7690, gUnknown_082D7698 },
    { 144, 48,   64,   8,  256, gUnknown_082D7898, &gUnknown_082D78BC, gUnknown_082D78C4 },
    {  24, 64, 1024, 128, 4096, gUnknown_082D79C4, &gUnknown_082D79E8, gUnknown_082D79F0 },
    {  88, 64, 1024, 128, 4096, gUnknown_082D89F0, &gUnknown_082D8A14, gUnknown_082D8A1C },
    { 152, 64, 1024, 128, 4096, gUnknown_082D9A1C, &gUnknown_082D9A40, gUnknown_082D9A48 },

};

static struct SpriteTemplate gHelpHandStandDeflectsSpriteLayout[] =
{
    {  40,  32, 256, 32, 1024, gUnknown_082DAA48, &gUnknown_082DAA6C, gUnknown_082DAA74 },
    { 104,  32, 256, 32, 1024, gUnknown_082DAE74, &gUnknown_082DAE98, gUnknown_082DAEA0 },
    { 168,  32,  64,  8,  256, gUnknown_082DB2A0, &gUnknown_082DB2C4, gUnknown_082DB2CC },
    {  80,  80, 128, 16,  512, gUnknown_082DB97C, &gUnknown_082DB9A0, gUnknown_082DB9A8 },
    { 136,  88,  64,  8,  256, gUnknown_082DBBA8, &gUnknown_082DBBCC, gUnknown_082DBBD4 },
    {  64,  96, 512, 64, 2048, gUnknown_082DBCD4, &gUnknown_082DBCF8, gUnknown_082DBD00 },
    { 128,  96, 512, 64, 2048, gUnknown_082DC500, &gUnknown_082DC524, gUnknown_082DC52C },
    { 192, 112,  32,  4,  128, gUnknown_082DCD2C, &gUnknown_082DCD50, gUnknown_082DCD58 },
};

static struct SpriteTemplate gHelpWireSpinAndJumpSpriteLayout[] =
{
    {  80, 16,   64,   8, 256,  gUnknown_082DE30C, &gUnknown_082DE330, gUnknown_082DE338 },
    { 112, 16,   64,   8, 256,  gUnknown_082DE438, &gUnknown_082DE45C, gUnknown_082DE464 },
    { 144, 16,   64,   8, 256,  gUnknown_082DE564, &gUnknown_082DE588, gUnknown_082DE590 },
    { 176, 16,   64,   8, 256,  gUnknown_082DE690, &gUnknown_082DE6B4, gUnknown_082DE6BC },
    {  32, 32,  256,  32, 1024, gUnknown_082DE7BC, &gUnknown_082DE7E0, gUnknown_082DE7E8 },
    {  96, 32,  256,  32, 1024, gUnknown_082DEBE8, &gUnknown_082DEC0C, gUnknown_082DEC14 },
    { 160, 32,  256,  32, 1024, gUnknown_082DF014, &gUnknown_082DF038, gUnknown_082DF040 },
    {   0, 64, 1024, 128, 4096, gUnknown_082DF440, &gUnknown_082DF464, gUnknown_082DF46C },
    {  64, 64, 1024, 128, 4096, gUnknown_082E046C, &gUnknown_082E0490, gUnknown_082E0498 },
    { 128, 64,  512,  64, 2048, gUnknown_082E1498, &gUnknown_082E14BC, gUnknown_082E14C4 },
    { 128, 96,  256,  32, 1024, gUnknown_082E1CC4, &gUnknown_082E1CE8, gUnknown_082E1CF0 },
    { 192, 64,  512,  64, 2048, gUnknown_082E20F0, &gUnknown_082E2114, gUnknown_082E211C },
};

static struct SpriteTemplate gHelpSpringJumpSpriteLayout[] =
{
    {  80, 16,   64,   8,  256, gUnknown_082C7FB4, &gUnknown_082C7FD8, gfxSpringJumpText14bpp },
    { 112, 16,   64,   8,  256, gUnknown_082C80E0, &gUnknown_082C8104, gfxSpringJumpText24bpp },
    { 144, 16,   32,   4,  128, gUnknown_082C820C, &gUnknown_082C8230, gfxSpringJumpText34bpp },
    {  56, 32,  128,  16,  512, gUnknown_082C82B8, &gUnknown_082C82DC, gUnknown_082C82E4 },
    { 128, 32,  128,  16,  512, gUnknown_082C84E4, &gUnknown_082C8508, gUnknown_082C8510 },
    {  64, 64, 1024, 128, 4096, gUnknown_082C8710, &gUnknown_082C8734, gUnknown_082C873C },
    { 128, 64, 1024, 128, 4096, gUnknown_082C973C, &gUnknown_082C9760, gUnknown_082C9768 },
};

struct HelpScreen
{
    struct SpriteTemplate *sprites;
    s16 spritesCount;
};

static struct HelpScreen sHelpScreens[] =
{
    { gHelpLevelViewerSpriteLayout,         ARRAY_COUNT(gHelpLevelViewerSpriteLayout) },
    { gHelpHandstandSpriteLayout,           ARRAY_COUNT(gHelpHandstandSpriteLayout) },
    { gHelpHandstandDoubleJumpSpriteLayout, ARRAY_COUNT(gHelpHandstandDoubleJumpSpriteLayout) },
    { gHelpBackflipSpriteLayout,            ARRAY_COUNT(gHelpBackflipSpriteLayout) },
    { gHelpThrowObjectsSpriteLayout,        ARRAY_COUNT(gHelpThrowObjectsSpriteLayout) },
    { gHelpJumpUpAndThrowSpriteLayout,      ARRAY_COUNT(gHelpJumpUpAndThrowSpriteLayout) },
    { gHelpHandStandDeflectsSpriteLayout,   ARRAY_COUNT(gHelpHandStandDeflectsSpriteLayout) },
    { gHelpWireSpinAndJumpSpriteLayout,     ARRAY_COUNT(gHelpWireSpinAndJumpSpriteLayout) },
    { gHelpSpringJumpSpriteLayout,          ARRAY_COUNT(gHelpSpringJumpSpriteLayout) },
};

void help_init_callback(void)
{
    REG_DISPCNT |= DISPCNT_OBJWIN_ON;
    sHelpState = HELP_STATE_ZOOM_IN;
    sBlankTilesX = 4;
    sBlankTilesY = 2;
    load_predefined_palette(PALETTE_5_LEVEL_HELP, LOAD_OBJ_PALETTE);

    if      (gUnknown_03001938 & (1 << 1))
        sHelpScreenID = 0;
    else if (gUnknown_03001938 & (1 << 2))
        sHelpScreenID = 1;
    else if (gUnknown_03001938 & (1 << 3))
        sHelpScreenID = 2;
    else if (gUnknown_03001938 & (1 << 4))
        sHelpScreenID = 3;
    else if (gUnknown_03001938 & (1 << 5))
        sHelpScreenID = 4;
    else if (gUnknown_03001938 & (1 << 6))
        sHelpScreenID = 5;
    else if (gUnknown_03001938 & (1 << 7))
        sHelpScreenID = 6;
    else if (gUnknown_03001938 & (1 << 12))
        sHelpScreenID = 7;
    else if (gUnknown_03001938 & (1 << 14))
        sHelpScreenID = 8;
}

static void update_help_screen_zoom(void)
{
    u8 done = 0;

    if (sHelpState == HELP_STATE_ZOOM_IN)
    {
        sBlankTilesX++;
        sBlankTilesY++;
        if (sBlankTilesX > 8)
        {
            sBlankTilesX = 8;
            done++;
        }
        if (sBlankTilesY > 5)
        {
            sBlankTilesY = 5;
            done++;
        }
        if (done == 2)
            sHelpState = HELP_STATE_DISPLAY;
    }
    else if (sHelpState == HELP_STATE_ZOOM_OUT)
    {
        sBlankTilesX--;
        sBlankTilesY--;
        if (sBlankTilesX < 4)
        {
            sBlankTilesX = 4;
            done++;
        }
        if (sBlankTilesY < 2)
        {
            sBlankTilesY = 2;
            done++;
        }
        if (done == 2)
            sHelpState = HELP_STATE_DONE;
    }
}

// Draws blank white sprites to screen for the zooming in and out animation
static void load_help_screen_blank_sprites(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    u16 tNum;
    u16 xOffset, yOffset;
    u16 x, y;

    // Copy sprite tiles
    DmaCopy32(3, gfxHelpScreenBlank4bpp, (u8 *)OBJ_VRAM0 + *vramOffset, 0x200);
    tNum = *tileNum;
    *tileNum += 16;
    *vramOffset += 0x200;

    xOffset = (240 - (sBlankTilesX * 32)) >> 1;
    yOffset = (160 - (sBlankTilesY * 32)) >> 1;

    // Set sprite OAM
    for (y = 0; y < sBlankTilesY; y++)
    {
        for (x = 0; x < sBlankTilesX; x++)
        {
            DmaCopy32(3, &gfxHelpScreenBlankOAM, &gOamBuffer[*oamIndex], 8);
            gOamBuffer[*oamIndex].tileNum = tNum;
            gOamBuffer[*oamIndex].x = x * 32 + xOffset;
            gOamBuffer[*oamIndex].y = y * 32 + yOffset;
            gOamBuffer[*oamIndex].paletteNum = 0;
            gOamBuffer[*oamIndex].priority = 1;
            (*oamIndex)++;
        }
    }
}

static u16 sTileNumOffsets[12];

static void load_help_screen_frame_sprites(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    s16 i;
    s16 j;

    const struct HelpScreenSpritePos *layout = gHelpScreenBaseSpriteLayout;
    const struct SpriteTemplate *sprite = sFrameSpriteTemplates[0];

    // Copy sprite tiles
    for (i = 0; i < 12; i++, sprite++)
    {
        DmaCopy32(3, sprite->tileData, (u8 *)OBJ_VRAM0 + *vramOffset, sprite->subSpriteSize);
        sTileNumOffsets[i] = *tileNum;
        *tileNum += sprite->unk6;
        *vramOffset += sprite->subSpriteSize;
    }

    // Set sprite OAM
    for (j = 0; j < 43u; j++, layout++)
    {
        DmaCopy32(3, layout->template->oamData, &gOamBuffer[*oamIndex], sizeof(struct OamData));
        gOamBuffer[*oamIndex].tileNum += sTileNumOffsets[layout->index];
        gOamBuffer[*oamIndex].x = layout->x;
        gOamBuffer[*oamIndex].y = layout->y;
        gOamBuffer[*oamIndex].priority = 0;
        (*oamIndex)++;
    }
}

static void load_help_screen_detail_sprites(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    s16 i;

    for (i = 0; i < sHelpScreens[sHelpScreenID].spritesCount; i++)
    {
        const struct SpriteTemplate *sprite = &sHelpScreens[sHelpScreenID].sprites[i];

        // Copy sprite tiles
        DmaCopy32(3, sprite->tileData, (u8 *)OBJ_VRAM0 + *vramOffset, sprite->subSpriteSize);

        // Set sprite OAM
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
    if (sHelpState == HELP_STATE_DISPLAY)
    {
        if (gNewKeys & (B_BUTTON|START_BUTTON))
            sHelpState = HELP_STATE_ZOOM_OUT;
    }
    else if (sHelpState == HELP_STATE_DONE)
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
    if (gMainState == MAIN_STATE_HELP && sHelpState != HELP_STATE_DONE)
    {
        if (sHelpState == HELP_STATE_DISPLAY)
        {
            load_help_screen_detail_sprites(oamIndex, tileNum, vramOffset);
            load_help_screen_frame_sprites(oamIndex, tileNum, vramOffset);
        }
        else
        {
            load_help_screen_blank_sprites(oamIndex, tileNum, vramOffset);
            update_help_screen_zoom();
        }
    }
}
