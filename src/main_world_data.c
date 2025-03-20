#include "gba/gba.h"
#include "global.h"
#include "level_data.h"
#include "main.h"


struct UnknownStruct5 gWorldOneTable[] =
{
	{&gWorldOneHorizontalBG, &gLevel11A, 120, 0, 2, 0x00000061, 0},
	{&gWorldOneHorizontalBG, &gLevel11B, 120, 9, 2, 0x00000081, 0},

	{&gWorldOneHorizontalBG, &gLevel12A, 120, 8, 2, 0x00000061, 0},
	{&gWorldOneHorizontalBG, &gLevel12B, 120, 0, 2, 0x00000081, 0},	

	{&gWorldOneHorizontalBG, &gLevel13A, 120, 9, 2, 0x00000064, 0},
	{&gWorldOneHorizontalBG, &gLevel13B, 150, 8, 2, 0x00000085, 0},	

	{&gWorldOneVerticalBG,   &gLevel14A, 120, 0, 1, 0x00000021, 0},
	{&gWorldOneHorizontalBG, &gLevel14B, 150, 9, 2, 0x000000C5, 0},

	{&gWorldOneHorizontalBG, &gLevel15A, 120, 8, 2, 0x00000021, 0},
	{&gWorldOneVerticalBG,   &gLevel15B, 120, 0, 1, 0x000000C1, 0},

	{&gWorldOneHorizontalBG, &gLevel16A, 150, 9, 2, 0x00000021, 0},
	{&gWorldOneHorizontalBG, &gLevel16B, 120, 8, 2, 0x000000C0, 0},

	{&gWorldOneMiniMarioBG,  &gLevel1MM, 90,  12,3, 0x00000007, 0},
	{&gWorldOneBossBG,       &gLevel1DK, 180, 13,4, 0x00000007, 0},
};


struct UnknownStruct5 gWorldTwoTable[] =
{
	{&gWorldTwoVerticalBG,   &gLevel21A, 120, 18, 1, 0x00000062, 0},
	{&gWorldTwoVerticalBG,   &gLevel21B, 120, 19, 1, 0x00000087, 0},

	{&gWorldTwoHorizontalBG, &gLevel22A, 120, 20, 2, 0x00000026, 0},
	{&gWorldTwoHorizontalBG, &gLevel22B, 120, 18, 2, 0x000000C6, 0},	

	{&gWorldTwoVerticalBG,   &gLevel23A, 120, 19, 1, 0x00000022, 0},
	{&gWorldTwoVerticalBG,   &gLevel23B, 150, 20, 1, 0x000000C0, 0},	

	{&gWorldTwoHorizontalBG, &gLevel24A, 120, 18, 2, 0x00000021, 0},
	{&gWorldTwoVerticalBG,   &gLevel24B, 150, 19, 1, 0x000000C0, 0},

	{&gWorldTwoVerticalBG,   &gLevel25A, 120, 20, 1, 0x00000022, 0},
	{&gWorldTwoHorizontalBG, &gLevel25B, 180, 18, 2, 0x000000C2, 0},

	{&gWorldTwoHorizontalBG, &gLevel26A, 150, 19, 2, 0x00000026, 0},
	{&gWorldTwoHorizontalBG, &gLevel26B, 180, 20, 2, 0x000000C2, 0},

	{&gWorldTwoMiniMarioBG,  &gLevel2MM, 120, 12, 3, 0x00000001, 0},
	{&gWorldTwoBossBG,       &gLevel2DK, 180, 66, 4, 0x00000007, 0},
};


struct UnknownStruct5 gWorldThreeTable[] =
{
	{&gWorldThreeHorizontalBG, &gLevel31A, 120, 33, 2, 0x00000030, 0},
	{&gWorldThreeHorizontalBG, &gLevel31B, 120, 34, 2, 0x000000D0, 0},

	{&gWorldThreeHorizontalBG, &gLevel32A, 120, 31, 2, 0x00000020, 0},
	{&gWorldThreeHorizontalBG, &gLevel32B, 150, 30, 2, 0x000000C2, 0},	

	{&gWorldThreeVerticalBG,   &gLevel33A, 120, 33, 1, 0x00000063, 0},
	{&gWorldThreeHorizontalBG, &gLevel33B, 150, 34, 2, 0x00000083, 0},	

	{&gWorldThreeHorizontalBG, &gLevel34A, 120, 31, 2, 0x00000022, 0},
	{&gWorldThreeVerticalBG,   &gLevel34B, 150, 30, 1, 0x000000C2, 0},

	{&gWorldThreeVerticalBG,   &gLevel35A, 120, 33, 1, 0x00000022, 0},
	{&gWorldThreeVerticalBG,   &gLevel35B, 120, 34, 1, 0x000000C2, 0},

	{&gWorldThreeVerticalBG,   &gLevel36A, 120, 31, 1, 0x00000020, 0},
	{&gWorldThreeHorizontalBG, &gLevel36B, 150, 30, 2, 0x000000C2, 0},

	{&gWorldThreeMiniMarioBG,  &gLevel3MM, 120, 12, 3, 0x00000007, 0},
	{&gWorldThreeBossBG,       &gLevel3DK, 150, 67, 4, 0x00000010, 0},
};


struct UnknownStruct5 gWorldFourTable[] =
{
	{&gWorldFourHorizontalBG, &gLevel41A, 120, 27, 2, 0x00000020, 0},
	{&gWorldFourHorizontalBG, &gLevel41B, 120, 28, 2, 0x000000C1, 0},

	{&gWorldFourHorizontalBG, &gLevel42A, 150, 29, 2, 0x00000022, 0},
	{&gWorldFourVerticalBG,   &gLevel42B, 150, 27, 1, 0x000000C1, 0},	

	{&gWorldFourVerticalBG,   &gLevel43A, 150, 28, 1, 0x00000060, 0},
	{&gWorldFourVerticalBG,   &gLevel43B, 150, 29, 1, 0x00000081, 0},	

	{&gWorldFourHorizontalBG, &gLevel44A, 120, 27, 2, 0x00000063, 0},
	{&gWorldFourHorizontalBG, &gLevel44B, 150, 28, 2, 0x00000081, 0},

	{&gWorldFourHorizontalBG, &gLevel45A, 120, 29, 2, 0x00000061, 0},
	{&gWorldFourVerticalBG,   &gLevel45B, 150, 27, 1, 0x00000083, 0},

	{&gWorldFourVerticalBG,   &gLevel46A, 120, 28, 1, 0x00000021, 0},
	{&gWorldFourVerticalBG,   &gLevel46B, 180, 29, 1, 0x000000C1, 0},

	{&gWorldFourMiniMarioBG,  &gLevel4MM, 120, 12, 3, 0x00000007, 0},
	{&gWorldFourBossBG,       &gLevel4DK, 150, 13, 4, 0x00000007, 0},
};


struct UnknownStruct5 gWorldFiveTable[] =
{
	{&gWorldFiveHorizontalBG, &gLevel51A, 120, 26, 2, 0x00000021, 0},
	{&gWorldFiveVerticalBG,   &gLevel51B, 150, 24, 1, 0x000000C2, 0},

	{&gWorldFiveHorizontalBG, &gLevel52A, 120, 25, 2, 0x00000021, 0},
	{&gWorldFiveHorizontalBG, &gLevel52B, 150, 26, 2, 0x000000C2, 0},	

	{&gWorldFiveHorizontalBG, &gLevel53A, 120, 24, 2, 0x00000021, 0},
	{&gWorldFiveHorizontalBG, &gLevel53B, 150, 25, 2, 0x000000C1, 0},	

	{&gWorldFiveVerticalBG,   &gLevel54A, 120, 26, 1, 0x00000022, 0},
	{&gWorldFiveVerticalBG,   &gLevel54B, 150, 24, 1, 0x000000C2, 0},
	
	{&gWorldFiveHorizontalBG, &gLevel55A, 150, 25, 2, 0x00000021, 0},
	{&gWorldFiveVerticalBG,   &gLevel55B, 180, 26, 1, 0x000000C3, 0},

	{&gWorldFiveHorizontalBG, &gLevel56A, 150, 24, 2, 0x00000063, 0},
	{&gWorldFiveVerticalBG,   &gLevel56B, 180, 25, 1, 0x00000081, 0},

	{&gWorldFiveMiniMarioBG,  &gLevel5MM, 120, 12, 3, 0x00000007, 0},
	{&gWorldFiveBossBG,       &gLevel5DK, 150, 66, 4, 0x00000007, 0},
};


struct UnknownStruct5 gWorldSixTable[] =
{
	{&gWorldSixHorizontalBG, &gLevel61A, 120, 35, 2, 0x00000020, 0},
	{&gWorldSixHorizontalBG, &gLevel61B, 150, 36, 2, 0x000000C3, 0},

	{&gWorldSixHorizontalBG, &gLevel62A, 120, 37, 2, 0x00000060, 0},
	{&gWorldSixHorizontalBG, &gLevel62B, 150, 38, 2, 0x00000085, 0},
	
	{&gWorldSixVerticalBG,   &gLevel63A, 120, 35, 1, 0x00000022, 0},
	{&gWorldSixVerticalBG,   &gLevel63B, 150, 36, 1, 0x000000C4, 0},
	
	{&gWorldSixHorizontalBG, &gLevel64A, 150, 37, 2, 0x00000066, 0},
	{&gWorldSixVerticalBG,   &gLevel64B, 180, 38, 1, 0x00000083, 0},
	
	{&gWorldSixHorizontalBG, &gLevel65A, 150, 35, 2, 0x00000021, 0},
	{&gWorldSixHorizontalBG, &gLevel65B, 180, 36, 2, 0x000000C5, 0},	
	
	{&gWorldSixHorizontalBG, &gLevel66A, 150, 37, 2, 0x00000062, 0},
	{&gWorldSixHorizontalBG, &gLevel66B, 180, 38, 2, 0x00000085, 0},
	
	{&gWorldSixMiniMarioBG,  &gLevel6MM, 120, 12, 3, 0x00000007, 0},
	{&gWorldSixBossBG,       &gLevel6DK, 180, 67, 4, 0x00000007, 0},
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