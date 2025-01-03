#include "gba/gba.h"
#include "global.h"
#include "sprites.h"

struct Coords32 gMainLvlCursorLocations[] =
{
    {  22, 48 }, {  72, 48 }, { 122, 48 }, { 172, 48 },
    {  22, 93 }, {  72, 93 }, { 122, 93 }, { 172, 93 },
};

struct Coords32 gPlusLvlCursorLocations[] =
{
    {  22, 48 }, {  72, 48 }, { 122, 48 },
    {  22, 93 }, {  72, 93 }, { 122, 93 }, { 172, 93 },
};

struct Coords32 gMainLvlInfoLocations[] =
{
    {  24, 51 }, {  74, 51 }, { 124, 51 }, { 174, 51 },
    {  24, 96 }, {  74, 96 }, { 124, 96 }, { 174, 96 },
};

struct Coords32 gPlusLvlInfoLocations[] =
{
    {  24, 51 }, {  74, 51 }, { 124, 51 },
    {  24, 96 }, {  74, 96 }, { 124, 96 }, { 174, 96 },
};

struct SpriteTemplate gUnknown_080789F4[] =
{
    {   5,  6,  64,  8,  256, gUnknown_085E2870, &gUnknown_085E2AF8, gUnknown_085E2B00 },
    {  28,  6,  64,  8,  256, gUnknown_085E2870, &gUnknown_085E2AF8, gUnknown_085E2B00 },
    {  51,  6,  64,  8,  256, gUnknown_085E2870, &gUnknown_085E2AF8, gUnknown_085E2B00 },
    {  74,  6,  64,  8,  256, gUnknown_085E2870, &gUnknown_085E2AF8, gUnknown_085E2B00 },
    {  97,  6,  64,  8,  256, gUnknown_085E2870, &gUnknown_085E2AF8, gUnknown_085E2B00 },
    { 120,  6,  64,  8,  256, gUnknown_085E2870, &gUnknown_085E2AF8, gUnknown_085E2B00 },
    { 146,  6,  64,  8,  256, gUnknown_085E2F00, &gUnknown_085E3188, gUnknown_085E3190 },
    { 184, -4, 256, 32, 1024, gUnknown_085E90D0, &gUnknown_085E9358, gUnknown_085E9360 },
};

struct SpriteTemplate gUnknown_08078AB4[] =
{
    {  58,  6,  64,  8,  256, gUnknown_085E2870, &gUnknown_085E2AF8, gUnknown_085E2B00 },
    {  81,  6,  64,  8,  256, gUnknown_085E2870, &gUnknown_085E2AF8, gUnknown_085E2B00 },
    { 104,  6,  64,  8,  256, gUnknown_085E2870, &gUnknown_085E2AF8, gUnknown_085E2B00 },
    { 127,  6,  64,  8,  256, gUnknown_085E2870, &gUnknown_085E2AF8, gUnknown_085E2B00 },
    { 150,  6,  64,  8,  256, gUnknown_085E2870, &gUnknown_085E2AF8, gUnknown_085E2B00 },
    { 173,  6,  64,  8,  256, gUnknown_085E2870, &gUnknown_085E2AF8, gUnknown_085E2B00 },
    { 199,  6,  64,  8,  256, gUnknown_085E2F00, &gUnknown_085E3188, gUnknown_085E3190 },
    {   0, -4, 256, 32, 1024, gUnknown_085E90D0, &gUnknown_085E9358, gUnknown_085E9360 },
};

struct SpriteTemplate gMainWorldSelectTabs[] =
{
    {   5, 5, 64, 8, 256, gfxMainWorldSelectTabsAnim, &gfxMainWorldSelectTabsOAM, gfxMainWorldSelectTabs4bpp },
    {  28, 5, 64, 8, 256, gfxMainWorldSelectTabsAnim, &gfxMainWorldSelectTabsOAM, gfxMainWorldSelectTabs4bpp },
    {  51, 5, 64, 8, 256, gfxMainWorldSelectTabsAnim, &gfxMainWorldSelectTabsOAM, gfxMainWorldSelectTabs4bpp },
    {  74, 5, 64, 8, 256, gfxMainWorldSelectTabsAnim, &gfxMainWorldSelectTabsOAM, gfxMainWorldSelectTabs4bpp },
    {  97, 5, 64, 8, 256, gfxMainWorldSelectTabsAnim, &gfxMainWorldSelectTabsOAM, gfxMainWorldSelectTabs4bpp },
    { 120, 5, 64, 8, 256, gfxMainWorldSelectTabsAnim, &gfxMainWorldSelectTabsOAM, gfxMainWorldSelectTabs4bpp },
    { 145, 5, 64, 8, 256, gfxMainWorldSelectTabsAnim, &gfxMainWorldSelectTabsOAM, gfxMainWorldSelectTabs4bpp },
};

struct SpriteTemplate gPlusWorldSelectTabs[] =
{
    {  58, 5, 64, 8, 256, gfxPlusWorldSelectTabsAnim, &gfxPlusWorldSelectTabsOAM, gfxPlusWorldSelectTabs4bpp },
    {  81, 5, 64, 8, 256, gfxPlusWorldSelectTabsAnim, &gfxPlusWorldSelectTabsOAM, gfxPlusWorldSelectTabs4bpp },
    { 104, 5, 64, 8, 256, gfxPlusWorldSelectTabsAnim, &gfxPlusWorldSelectTabsOAM, gfxPlusWorldSelectTabs4bpp },
    { 127, 5, 64, 8, 256, gfxPlusWorldSelectTabsAnim, &gfxPlusWorldSelectTabsOAM, gfxPlusWorldSelectTabs4bpp },
    { 150, 5, 64, 8, 256, gfxPlusWorldSelectTabsAnim, &gfxPlusWorldSelectTabsOAM, gfxPlusWorldSelectTabs4bpp },
    { 173, 5, 64, 8, 256, gfxPlusWorldSelectTabsAnim, &gfxPlusWorldSelectTabsOAM, gfxPlusWorldSelectTabs4bpp },
    { 198, 5, 64, 8, 256, gfxPlusWorldSelectTabsAnim, &gfxPlusWorldSelectTabsOAM, gfxPlusWorldSelectTabs4bpp },
};

struct SpriteTemplate gPlusButton[] =
{
    { 176, 0, 256, 32, 1024, gfxPlusButtonDisabledAnim, &gfxPlusButtonDisabledOAM, gfxPlusButtonDisabled4bpp },
    { 176, 0, 256, 32, 1024, gfxPlusButtonEnabledAnim,  &gfxPlusButtonEnabledOAM,  gfxPlusButtonEnabled4bpp },
};

struct SpriteTemplate gMainButton[] =
{
    { 176, 0, 256, 32, 1024, gfxMainButtonDisabledAnim, &gfxMainButtonDisabledOAM, gfxMainButtonDisabled4bpp },
    { 176, 0, 256, 32, 1024, gfxMainButtonEnabledAnim,  &gfxMainButtonEnabledOAM,  gfxMainButtonEnabled4bpp },
};

struct SpriteTemplate gMainWorldArrows[] =
{
    {  64,  64,  8, 1,  32, gfxShortArrowAnim,     &gfxShortArrowOAM,     gfxShortArrow4bpp },
    { 114,  64,  8, 1,  32, gfxShortArrowAnim,     &gfxShortArrowOAM,     gfxShortArrow4bpp },
    { 164,  64,  8, 1,  32, gfxShortArrowAnim,     &gfxShortArrowOAM,     gfxShortArrow4bpp },
    { 214,  64, 32, 4, 128, gfxArrowTopRowAnim,    &gfxArrowTopRowOAM,    gfxArrowTopRow4bpp },
    {   9, 109, 32, 4, 128, gfxArrowBottomRowAnim, &gfxArrowBottomRowOAM, gfxArrowBottomRow4bpp },
    {  64, 109,  8, 1,  32, gfxShortArrowAnim,     &gfxShortArrowOAM,     gfxShortArrow4bpp },
    { 114, 109,  8, 1,  32, gfxShortArrowAnim,     &gfxShortArrowOAM,     gfxShortArrow4bpp },
    { 164, 109,  8, 1,  32, gfxShortArrowAnim,     &gfxShortArrowOAM,     gfxShortArrow4bpp },
};

struct SpriteTemplate gPlusWorldArrows[] =
{
    {  64,  64,  8, 1,  32, gfxShortArrowAnim,     &gfxShortArrowOAM,     gfxShortArrow4bpp },
    { 114,  64,  8, 1,  32, gfxShortArrowAnim,     &gfxShortArrowOAM,     gfxShortArrow4bpp },
    { 164,  64, 32, 4, 128, gfxArrowTopRowAnim,    &gfxArrowTopRowOAM,    gfxArrowTopRow4bpp },
    {   9, 109, 32, 4, 128, gfxArrowBottomRowAnim, &gfxArrowBottomRowOAM, gfxArrowBottomRow4bpp },
    {  64, 109,  8, 1,  32, gfxShortArrowAnim,     &gfxShortArrowOAM,     gfxShortArrow4bpp },
    { 114, 109,  8, 1,  32, gfxShortArrowAnim,     &gfxShortArrowOAM,     gfxShortArrow4bpp },
    { 164, 109,  8, 1,  32, gfxShortArrowAnim,     &gfxShortArrowOAM,     gfxShortArrow4bpp },
};

struct SpriteTemplate gMainLevelIconPics[] =
{
    {  28, 52, 128, 16,  512, gfxMainLevelIconPicsAnim, &gfxMainLevelIconPicsOAM, gfxMainLevelIconPics4bpp },
    {  78, 52, 128, 16,  512, gfxMainLevelIconPicsAnim, &gfxMainLevelIconPicsOAM, gfxMainLevelIconPics4bpp },
    { 128, 52, 128, 16,  512, gfxMainLevelIconPicsAnim, &gfxMainLevelIconPicsOAM, gfxMainLevelIconPics4bpp },
    { 178, 52, 128, 16,  512, gfxMainLevelIconPicsAnim, &gfxMainLevelIconPicsOAM, gfxMainLevelIconPics4bpp },
    {  28, 97, 128, 16,  512, gfxMainLevelIconPicsAnim, &gfxMainLevelIconPicsOAM, gfxMainLevelIconPics4bpp },
    {  78, 97, 128, 16,  512, gfxMainLevelIconPicsAnim, &gfxMainLevelIconPicsOAM, gfxMainLevelIconPics4bpp },
    { 128, 97, 128, 16,  512, gfxMainLevelIconPicsAnim, &gfxMainLevelIconPicsOAM, gfxMainLevelIconPics4bpp },
    { 178, 97, 128, 16,  512, gfxMainLevelIconPicsAnim, &gfxMainLevelIconPicsOAM, gfxMainLevelIconPics4bpp },
};

struct SpriteTemplate gPlusLevelIconPics[] =
{
    {  28, 52, 128, 16,  512, gfxPlusWorldIconPicsAnim, &gfxPlusLevelIconPicsOAM, gfxPlusLevelIconPics4bpp },
    {  78, 52, 128, 16,  512, gfxPlusWorldIconPicsAnim, &gfxPlusLevelIconPicsOAM, gfxPlusLevelIconPics4bpp },
    { 128, 52, 128, 16,  512, gfxPlusWorldIconPicsAnim, &gfxPlusLevelIconPicsOAM, gfxPlusLevelIconPics4bpp },
    {  28, 97, 128, 16,  512, gfxPlusWorldIconPicsAnim, &gfxPlusLevelIconPicsOAM, gfxPlusLevelIconPics4bpp },
    {  78, 97, 128, 16,  512, gfxPlusWorldIconPicsAnim, &gfxPlusLevelIconPicsOAM, gfxPlusLevelIconPics4bpp },
    { 128, 97, 128, 16,  512, gfxPlusWorldIconPicsAnim, &gfxPlusLevelIconPicsOAM, gfxPlusLevelIconPics4bpp },
    { 178, 97, 128, 16,  512, gfxPlusWorldIconPicsAnim, &gfxPlusLevelIconPicsOAM, gfxPlusLevelIconPics4bpp },
};

struct SpriteTemplate gUnlockedMainLvlFrames[] =
{
    {  22, 48, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    {  72, 48, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    { 122, 48, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    { 172, 48, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    {  22, 93, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    {  72, 93, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    { 122, 93, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    { 172, 93, 512, 64, 2048, gfxUnlockedDKLvlFrameAnim, &gfxUnlockedDKLvlFrameOAM, gfxUnlockedDKLvlFrame4bpp },
};

struct SpriteTemplate gUnlockedPlusLvlFrames[] =
{
    {  22, 48, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    {  72, 48, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    { 122, 48, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    {  22, 93, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    {  72, 93, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    { 122, 93, 512, 64, 2048, gfxUnlockedLvlFrameAnim,   &gfxUnlockedLvlFrameOAM,   gfxUnlockedLvlFrame4bpp },
    { 172, 93, 512, 64, 2048, gfxUnlockedDKLvlFrameAnim, &gfxUnlockedDKLvlFrameOAM, gfxUnlockedDKLvlFrame4bpp },
};

struct SpriteTemplate gLockedMainLvlFrames[] =
{
    {  22, 48, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    {  72, 48, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    { 122, 48, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    { 172, 48, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    {  22, 93, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    {  72, 93, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    { 122, 93, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    { 172, 93, 512, 64, 2048, gfxLockedDKLvlFrameAnim, &gfxLockedDKLvlFrameOAM, gfxLockedDKLvlFrame4bpp },
};

struct SpriteTemplate gLockedPlusLvlFrames[] =
{
    {  22, 48, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    {  72, 48, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    { 122, 48, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    {  22, 93, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    {  72, 93, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    { 122, 93, 512, 64, 2048, gfxLockedLvlFrameAnim,   &gfxLockedLvlFrameOAM,   gfxLockedLvlFrame4bpp },
    { 172, 93, 512, 64, 2048, gfxLockedDKLvlFrameAnim, &gfxLockedDKLvlFrameOAM, gfxLockedDKLvlFrame4bpp },
};

struct SpriteTemplate gUnknown_080792C4 = {   0,  0,   8,  1,   32, gUnknown_085DD258, &gUnknown_085DD744, gUnknown_085DD74C };
struct SpriteTemplate gMainLvlLabelsSpriteTemplate     = {   0,  0,   8,  1,   32, gfxMainLvlLabelsAnim,   &gfxMainLvlLabelsOAM,   gfxMainLvlLabels4bpp };
struct SpriteTemplate gPlusLvlLabelsSpriteTemplate     = {   0,  0,  16,  2,   64, gfxPlusLvlLabelsAnim,   &gfxPlusLvlLabelsOAM,   gfxPlusLvlLabels4bpp };
struct SpriteTemplate gMMLabelSpriteTemplate           = {   0,  0,  32,  4,  128, gfxMMLabelAnim,         &gfxMMLabelOAM,         gfxMMLabel4bpp };
struct SpriteTemplate gDKLabelSpriteTemplate           = {   0,  0,  16,  2,   64, gfxDKLabelAnim,         &gfxDKLabelOAM,         gfxDKLabel4bpp };
struct SpriteTemplate gDKPlusLabelSpriteTemplate       = {   0,  0,  32,  4,  128, gfxDKPlusLabelAnim,     &gfxDKPlusLabelOAM,     gfxDKPlusLabel4bpp };
struct SpriteTemplate gRotatingStarSpriteTemplate      = {   0,  0,  32,  4,  128, gfxRotatingStarAnim,    &gfxRotatingStarOAM,    gfxRotatingStar4bpp };
struct SpriteTemplate gfxRotatingStarAltSpriteTemplate = {   0,  0,  32,  4,  128, gfxRotatingStarAltAnim, &gfxRotatingStarAltOAM, gfxRotatingStarAlt4bpp };
struct SpriteTemplate gUnknown_08079384 = {   0,  0,  32,  4,  128, gUnknown_085E0D64, &gUnknown_085E0D88, gUnknown_085E0D90 };
struct SpriteTemplate gRedPresentSpriteTemplate       = {   0,  0,  32,  4,  128, gfxRedPresentAnim, &gfxRedPresentOAM, gfxRedPresent4bpp };
struct SpriteTemplate gUnknown_080793B4 = {   0,  0,  32,  4,  128, gUnknown_085E0AC4, &gUnknown_085E0B0C, gUnknown_085E0B14 };
struct SpriteTemplate gRedPresentMovingSpriteTemplate = {   0,  0,  32,  4,  128, gfxRedPresentMovingAnim, &gfxRedPresentMovingOAM, gfxRedPresentMoving4bpp };
struct SpriteTemplate gUnknown_080793E4 = {   0,  0,  32,  4,  128, gUnknown_085E115C, &gUnknown_085E1180, gUnknown_085E1188 };
struct SpriteTemplate gYellowPresentSpriteTemplate = {   0,  0,  32,  4,  128, gfxYellowPresentAnim, &gfxYellowPresentOAM, gfxYellowPresent4bpp };
struct SpriteTemplate gUnknown_08079414 = {   0,  0,  32,  4,  128, gUnknown_085E0EBC, &gUnknown_085E0F04, gUnknown_085E0F0C };
struct SpriteTemplate gYellowPresentMovingSpriteTemplate = {   0,  0,  32,  4,  128, gfxYellowPresentMovingAnim, &gfxYellowPresentMovingOAM, gfxYellowPresentMoving4bpp };
struct SpriteTemplate gUnknown_08079444 = {   0,  0,  32,  4,  128, gUnknown_085E08DC, &gUnknown_085E0900, gUnknown_085E0908 };
struct SpriteTemplate gBluePresentSpriteTemplate   = {   0,  0,  32,  4,  128, gfxBluePresentAnim, &gfxBluePresentOAM, gfxBluePresent4bpp };
struct SpriteTemplate gUnknown_08079474 = {   0,  0,  32,  4,  128, gUnknown_085E063C, &gUnknown_085E0684, gUnknown_085E068C };
struct SpriteTemplate gBluePresentMovingSpriteTemplate = {   0,  0,  32,  4,  128, gfxBluePresentMovingAnim, &gfxBluePresentMovingOAM, gfxBluePresentMoving4bpp };
struct SpriteTemplate gLButtonSpriteTemplate       = {   0, 80,  32,  4,  128, gfxLButtonAnim, &gfxLButtonOAM, gfxLButton4bpp };
struct SpriteTemplate gRButtonSpriteTemplate       = { 224, 80,  32,  4,  128, gfxRButtonAnim, &gfxRButtonOAM, gfxRButton4bpp };
struct SpriteTemplate gUnknown_080794D4 = {   0,  0,  64,  8,  256, gUnknown_085DD108, &gUnknown_085DD150, gUnknown_085DD158 };

u32 gLevelSelectPaletteIDs[] = 
{
    PALETTE_11,
    PALETTE_12,
    PALETTE_13,
    PALETTE_14,
    PALETTE_15,
    PALETTE_16,
};

u32 gLevelSelectPlusPaletteIDs[] =
{
    PALETTE_18,
    PALETTE_19,
    PALETTE_20,
    PALETTE_21,
    PALETTE_22,
    PALETTE_23,
};

struct GraphicsConfig *gLevelSelectBackgrounds[] =
{
    &gLevelSelectWorldOneBG,
    &gLevelSelectWorldTwoBG,
    &gLevelSelectWorldThreeBG,
    &gLevelSelectWorldFourBG,
    &gLevelSelectWorldFiveBG,
    &gLevelSelectWorldSixBG,
};

struct GraphicsConfig *gLevelSelectPlusBackgrounds[] =
{
    &gLevelSelectWorldOnePlusBG,
    &gLevelSelectWorldTwoPlusBG,
    &gLevelSelectWorldThreePlusBG,
    &gLevelSelectWorldFourPlusBG,
    &gLevelSelectWorldFivePlusBG,
    &gLevelSelectWorldSixPlusBG,
};
