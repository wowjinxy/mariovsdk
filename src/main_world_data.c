#include "gba/gba.h"
#include "global.h"
#include "level_data.h"
#include "main.h"


struct UnknownStruct5 gWorldOneTable[] =
{
	{&gWorldOneHorizontalBG, &gLevel11A, 120, BGM_1A,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2,              0},
	{&gWorldOneHorizontalBG, &gLevel11B, 120, BGM_1B,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_3,                                0},

	{&gWorldOneHorizontalBG, &gLevel12A, 120, BGM_1C,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2,              0},
	{&gWorldOneHorizontalBG, &gLevel12B, 120, BGM_1A,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_3,                                0},

	{&gWorldOneHorizontalBG, &gLevel13A, 120, BGM_1B,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_3|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2,              0},
	{&gWorldOneHorizontalBG, &gLevel13B, 150, BGM_1C,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_3|LEVEL_FLAG_ITEM_3,                   0},

	{&gWorldOneVerticalBG,   &gLevel14A, 120, BGM_1A,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldOneHorizontalBG, &gLevel14B, 150, BGM_1B,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_3|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3, 0},

	{&gWorldOneHorizontalBG, &gLevel15A, 120, BGM_1C,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldOneVerticalBG,   &gLevel15B, 120, BGM_1A,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},

	{&gWorldOneHorizontalBG, &gLevel16A, 150, BGM_1B,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldOneHorizontalBG, &gLevel16B, 120, BGM_1C,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,                           0},

	{&gWorldOneMiniMarioBG,  &gLevel1MM, 90,  BGM_MM1, BACKGROUND_TYPE_MM,   LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3,                        0},
	{&gWorldOneBossBG,       &gLevel1DK, 180, BOSS1,   BACKGROUND_TYPE_BOSS, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3,                        0},
};


struct UnknownStruct5 gWorldTwoTable[] =
{
	{&gWorldTwoVerticalBG,   &gLevel21A, 120, BGM_2A,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2,              0},
	{&gWorldTwoVerticalBG,   &gLevel21B, 120, BGM_2B,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3|LEVEL_FLAG_ITEM_3,      0},

	{&gWorldTwoHorizontalBG, &gLevel22A, 120, BGM_2C,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_2|LEVEL_FLAG_3|LEVEL_FLAG_ITEM_1,                   0},
	{&gWorldTwoHorizontalBG, &gLevel22B, 120, BGM_2A,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_2|LEVEL_FLAG_3|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3, 0},

	{&gWorldTwoVerticalBG,   &gLevel23A, 120, BGM_2B,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldTwoVerticalBG,   &gLevel23B, 150, BGM_2C,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,                           0},

	{&gWorldTwoHorizontalBG, &gLevel24A, 120, BGM_2A,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldTwoVerticalBG,   &gLevel24B, 150, BGM_2B,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,                           0},

	{&gWorldTwoVerticalBG,   &gLevel25A, 120, BGM_2C,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldTwoHorizontalBG, &gLevel25B, 180, BGM_2A,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_2|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},

	{&gWorldTwoHorizontalBG, &gLevel26A, 150, BGM_2B,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_2|LEVEL_FLAG_3|LEVEL_FLAG_ITEM_1,                   0},
	{&gWorldTwoHorizontalBG, &gLevel26B, 180, BGM_2C,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_2|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},

	{&gWorldTwoMiniMarioBG,  &gLevel2MM, 120, BGM_MM1, BACKGROUND_TYPE_MM,   LEVEL_FLAG_1,                                                  0},
	{&gWorldTwoBossBG,       &gLevel2DK, 180, BOSS3,   BACKGROUND_TYPE_BOSS, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3,                        0},
};


struct UnknownStruct5 gWorldThreeTable[] =
{
	{&gWorldThreeHorizontalBG, &gLevel31A, 120, DK03,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_BG0_SPECIAL|LEVEL_FLAG_ITEM_1,                      0},
	{&gWorldThreeHorizontalBG, &gLevel31B, 120, DK04,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_BG0_SPECIAL|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,    0},

	{&gWorldThreeHorizontalBG, &gLevel32A, 120, DK02,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_ITEM_1,                                             0},
	{&gWorldThreeHorizontalBG, &gLevel32B, 150, DK01,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_2|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},

	{&gWorldThreeVerticalBG,   &gLevel33A, 120, DK03,      BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2, 0},
	{&gWorldThreeHorizontalBG, &gLevel33B, 150, DK04,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_ITEM_3,                   0},

	{&gWorldThreeHorizontalBG, &gLevel34A, 120, DK02,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldThreeVerticalBG,   &gLevel34B, 150, DK01,      BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_2|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},

	{&gWorldThreeVerticalBG,   &gLevel35A, 120, DK03,      BACKGROUND_TYPE_VERTICAL, LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1,                                  0},
	{&gWorldThreeVerticalBG,   &gLevel35B, 120, DK04,      BACKGROUND_TYPE_VERTICAL, LEVEL_FLAG_2|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,                0},

	{&gWorldThreeVerticalBG,   &gLevel36A, 120, DK02,      BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_ITEM_1,                                             0},
	{&gWorldThreeHorizontalBG, &gLevel36B, 150, DK01,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_2|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},

	{&gWorldThreeMiniMarioBG,  &gLevel3MM, 120, BGM_MM1,   BACKGROUND_TYPE_MM,   LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3,                    0},
	{&gWorldThreeBossBG,       &gLevel3DK, 150, DK_BOSS02, BACKGROUND_TYPE_BOSS, LEVEL_FLAG_BG0_SPECIAL,                                    0},
};


struct UnknownStruct5 gWorldFourTable[] =
{
	{&gWorldFourHorizontalBG, &gLevel41A, 120, BGM_4A, BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_ITEM_1,                                             0},
	{&gWorldFourHorizontalBG, &gLevel41B, 120, BGM_4B, BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},

	{&gWorldFourHorizontalBG, &gLevel42A, 150, BGM_4C, BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldFourVerticalBG,   &gLevel42B, 150, BGM_4A, BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},

	{&gWorldFourVerticalBG,   &gLevel43A, 150, BGM_4B, BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2,                           0},
	{&gWorldFourVerticalBG,   &gLevel43B, 150, BGM_4C, BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_1|LEVEL_FLAG_ITEM_3,                                0},

	{&gWorldFourHorizontalBG, &gLevel44A, 120, BGM_4A, BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2, 0},
	{&gWorldFourHorizontalBG, &gLevel44B, 150, BGM_4B, BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_3,                                0},

	{&gWorldFourHorizontalBG, &gLevel45A, 120, BGM_4C, BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2,              0},
	{&gWorldFourVerticalBG,   &gLevel45B, 150, BGM_4A, BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_ITEM_3,                   0},

	{&gWorldFourVerticalBG,   &gLevel46A, 120, BGM_4B, BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldFourVerticalBG,   &gLevel46B, 180, BGM_4C, BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},
	
	{&gWorldFourMiniMarioBG,  &gLevel4MM, 120, BGM_MM1, BACKGROUND_TYPE_MM,   LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3,                       0},
	{&gWorldFourBossBG,       &gLevel4DK, 150, BOSS1,   BACKGROUND_TYPE_BOSS, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3,                       0},
};


struct UnknownStruct5 gWorldFiveTable[] =
{
	{&gWorldFiveHorizontalBG, &gLevel51A, 120, BGM_5C,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldFiveVerticalBG,   &gLevel51B, 150, BGM_5A,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_2|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},

	{&gWorldFiveHorizontalBG, &gLevel52A, 120, BGM_5B,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldFiveHorizontalBG, &gLevel52B, 150, BGM_5C,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_2|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},

	{&gWorldFiveHorizontalBG, &gLevel53A, 120, BGM_5A,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldFiveHorizontalBG, &gLevel53B, 150, BGM_5B,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},

	{&gWorldFiveVerticalBG,   &gLevel54A, 120, BGM_5C,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldFiveVerticalBG,   &gLevel54B, 150, BGM_5A,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_2|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},
	
	{&gWorldFiveHorizontalBG, &gLevel55A, 150, BGM_5B,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldFiveVerticalBG,   &gLevel55B, 180, BGM_5C,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3, 0},

	{&gWorldFiveHorizontalBG, &gLevel56A, 150, BGM_5A,  BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2, 0},
	{&gWorldFiveVerticalBG,   &gLevel56B, 180, BGM_5B,  BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_1|LEVEL_FLAG_ITEM_3,                                0},

	{&gWorldFiveMiniMarioBG,  &gLevel5MM, 120, BGM_MM1, BACKGROUND_TYPE_MM,   LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3,                       0},
	{&gWorldFiveBossBG,       &gLevel5DK, 150, BOSS3,   BACKGROUND_TYPE_BOSS, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3,                       0},
};


struct UnknownStruct5 gWorldSixTable[] =
{
	{&gWorldSixHorizontalBG, &gLevel61A, 120, DK05,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_ITEM_1,                                             0},
	{&gWorldSixHorizontalBG, &gLevel61B, 150, DK06,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3, 0},

	{&gWorldSixHorizontalBG, &gLevel62A, 120, DK07,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2,                           0},
	{&gWorldSixHorizontalBG, &gLevel62B, 150, DK08,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_3|LEVEL_FLAG_ITEM_3,                   0},
	
	{&gWorldSixVerticalBG,   &gLevel63A, 120, DK05,      BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldSixVerticalBG,   &gLevel63B, 150, DK06,      BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_3|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},
	
	{&gWorldSixHorizontalBG, &gLevel64A, 150, DK07,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_2|LEVEL_FLAG_3|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2, 0},
	{&gWorldSixVerticalBG,   &gLevel64B, 180, DK08,      BACKGROUND_TYPE_VERTICAL,   LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_ITEM_3,                   0},
	
	{&gWorldSixHorizontalBG, &gLevel65A, 150, DK05,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1,                                0},
	{&gWorldSixHorizontalBG, &gLevel65B, 180, DK06,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_3|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3, 0},
	
	{&gWorldSixHorizontalBG, &gLevel66A, 150, DK07,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2,              0},
	{&gWorldSixHorizontalBG, &gLevel66B, 180, DK08,      BACKGROUND_TYPE_HORIZONTAL, LEVEL_FLAG_1|LEVEL_FLAG_3|LEVEL_FLAG_ITEM_3,                   0},
	
	{&gWorldSixMiniMarioBG,  &gLevel6MM, 120, BGM_MM1,   BACKGROUND_TYPE_MM,   LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3,                      0},
	{&gWorldSixBossBG,       &gLevel6DK, 180, DK_BOSS02, BACKGROUND_TYPE_BOSS, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_3,                      0},
};


struct worldTableStruct_unk_size_c gWorldTable[] =
{
	{14, gWorldOneTable,   &gWorldOneData},
	{14, gWorldTwoTable,   &gWorldTwoData},
	{14, gWorldThreeTable, &gWorldThreeData},
	{14, gWorldFourTable,  &gWorldFourData},
	{14, gWorldFiveTable,  &gWorldFiveData},
	{14, gWorldSixTable,   &gWorldSixData},
};

struct worldTableStruct gUnknown_08B2CA5C[] =
{
	{6, gWorldTable},
};