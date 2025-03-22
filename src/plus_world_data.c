#include "gba/gba.h"
#include "global.h"
#include "level_data.h"
#include "main.h"


struct UnknownStruct5 gWorldOnePlusTable[] =
{
	{&gWorldOnePlusHorizontalBG, &gLevel11Plus,  120, BGM_1A, 2, 0x000000E1, 0},
	{&gWorldOnePlusHorizontalBG, &gLevel12Plus,  120, BGM_1B, 2, 0x000000E1, 0},
	{&gWorldOnePlusVerticalBG,   &gLevel13Plus,  150, BGM_1C, 1, 0x000000E1, 0},
	{&gWorldOnePlusHorizontalBG, &gLevel14Plus,  150, BGM_1A, 2, 0x000000E1, 0},
	{&gWorldOnePlusHorizontalBG, &gLevel15Plus,  150, BGM_1B, 2, 0x000000E1, 0},
	{&gWorldOnePlusHorizontalBG, &gLevel16Plus,  120, BGM_1C, 2, 0x000000E1, 0},
	{&gWorldOneBossBG,           &gLevel1DKPlus, 120, BOSS1,  2, 0x00000001, 0},
};	

struct UnknownStruct5 gWorldTwoPlusTable[] =
{
	{&gWorldTwoPlusVerticalBG,   &gLevel21Plus,  150, BGM_2A, 1, 0x000000E3, 0},
	{&gWorldTwoPlusHorizontalBG, &gLevel22Plus,  150, BGM_2B, 2, 0x000000E2, 0},
	{&gWorldTwoPlusHorizontalBG, &gLevel23Plus,  150, BGM_2C, 2, 0x000000E1, 0},
	{&gWorldTwoPlusVerticalBG,   &gLevel24Plus,  120, BGM_2A, 1, 0x000000E2, 0},
	{&gWorldTwoPlusHorizontalBG, &gLevel25Plus,  150, BGM_2B, 2, 0x000000E3, 0},
	{&gWorldTwoPlusHorizontalBG, &gLevel26Plus,  150, BGM_2C, 2, 0x000000E1, 0},
	{&gWorldTwoBossBG,           &gLevel2DKPlus, 120, BOSS3,  2, 0x00000001, 0},
};

struct UnknownStruct5 gWorldThreePlusTable[] =
{
	{&gWorldThreePlusHorizontalBG, &gLevel31Plus,  150, DK01,      2, 0x000000E1, 0},	
	{&gWorldThreePlusVerticalBG,   &gLevel32Plus,  150, DK02,      1, 0x000000E2, 0},	
	{&gWorldThreePlusHorizontalBG, &gLevel33Plus,  150, DK03,      2, 0x000000E0, 0},	
	{&gWorldThreePlusHorizontalBG, &gLevel34Plus,  150, DK04,      2, 0x000000E3, 0},
	{&gWorldThreePlusVerticalBG,   &gLevel35Plus,  150, DK01,      1, 0x000000E0, 0},
	{&gWorldThreePlusHorizontalBG, &gLevel36Plus,  150, DK02,      2, 0x000000E3, 0},
	{&gWorldThreePlusBossBG,       &gLevel3DKPlus, 120, DK_BOSS02, 4, 0x00000010, 0},
};

struct UnknownStruct5 gWorldFourPlusTable[] =
{
	{&gWorldFourPlusHorizontalBG, &gLevel41Plus,  150, BGM_4A, 2, 0x000000E2, 0},
	{&gWorldFourPlusHorizontalBG, &gLevel42Plus,  150, BGM_4B, 2, 0x000000E1, 0},
	{&gWorldFourPlusHorizontalBG, &gLevel43Plus,  150, BGM_4C, 2, 0x000000E0, 0},
	{&gWorldFourPlusHorizontalBG, &gLevel44Plus,  150, BGM_4A, 2, 0x000000E1, 0},
	{&gWorldFourPlusHorizontalBG, &gLevel45Plus,  150, BGM_4B, 2, 0x000000E1, 0},
	{&gWorldFourPlusHorizontalBG, &gLevel46Plus,  150, BGM_4C, 2, 0x000000E1, 0},
	{&gWorldFourBossBG,           &gLevel4DKPlus, 120, BOSS1,  2, 0x00000001, 0},
};	

struct UnknownStruct5 gWorldFivePlusTable[] =
{
	{&gWorldFivePlusHorizontalBG, &gLevel51Plus,  150, BGM_5A, 2, 0x000000E1, 0},
	{&gWorldFivePlusHorizontalBG, &gLevel52Plus,  150, BGM_5B, 2, 0x000000E1, 0},
	{&gWorldFivePlusHorizontalBG, &gLevel53Plus,  150, BGM_5C, 2, 0x000000E2, 0},
	{&gWorldFivePlusVerticalBG,   &gLevel54Plus,  150, BGM_5A, 1, 0x000000E2, 0},
	{&gWorldFivePlusVerticalBG,   &gLevel55Plus,  150, BGM_5B, 1, 0x000000E3, 0},
	{&gWorldFivePlusHorizontalBG, &gLevel56Plus,  150, BGM_5C, 2, 0x000000E5, 0},
	{&gWorldFiveBossBG,           &gLevel5DKPlus, 120, BOSS3,  2, 0x00000001, 0},
};

struct UnknownStruct5 gWorldSixPlusTable[] =
{
	{&gWorldSixPlusHorizontalBG, &gLevel61Plus, 150, DK05,      2, 0x000000E3, 0},
	{&gWorldSixPlusHorizontalBG, &gLevel62Plus, 150, DK06,      2, 0x000000E7, 0},
	{&gWorldSixPlusHorizontalBG, &gLevel63Plus, 150, DK07,      2, 0x000000E2, 0},	
	{&gWorldSixPlusVerticalBG,   &gLevel64Plus, 150, DK08,      1, 0x000000E1, 0},
	{&gWorldSixPlusVerticalBG,   &gLevel65Plus, 150, DK05,      1, 0x000000E1, 0},
	{&gWorldSixPlusHorizontalBG, &gLevel66Plus, 150, DK06,      2, 0x000000E3, 0},	
	{&gWorldSixBossBG,           &gLevel6DKPlus,120, DK_BOSS02, 2, 0x00000001, 0},
};

struct worldTableStruct_unk_size_c gWorldPlusTable[] =
{
	{7, gWorldOnePlusTable,   &gWorldOneData},
	{7, gWorldTwoPlusTable,   &gWorldTwoData},
	{7, gWorldThreePlusTable, &gWorldThreeData},
	{7, gWorldFourPlusTable,  &gWorldFourData},
	{7, gWorldFivePlusTable,  &gWorldFiveData},
	{7, gWorldSixPlusTable,   &gWorldSixData},
};

struct worldTableStruct gUnknown_08B2CDF4[] = 
{
	{6, gWorldPlusTable},
};
