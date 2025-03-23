#include "gba/gba.h"
#include "global.h"
#include "level_data.h"
#include "main.h"


struct UnknownStruct5 gExpert1Table[] =
{
	{&gWorldOneHorizontalBG,   &gLevelExpert1, 150, EXPERT_1, 2, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},
};

struct UnknownStruct5 gExpert2Table[] =
{
	{&gWorldTwoVerticalBG,     &gLevelExpert2, 150, EXPERT_2, 1, LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},
};

struct UnknownStruct5 gExpert3Table[] = 
{
	{&gWorldThreeHorizontalBG, &gLevelExpert3, 150, EXPERT_3, 2, LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,                           0},
};

struct UnknownStruct5 gExpert4Table[] = 
{
	{&gWorldFourVerticalBG,    &gLevelExpert4, 150, EXPERT_4, 1, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},
};

struct UnknownStruct5 gExpert5Table[] =
{
	{&gWorldFiveHorizontalBG,  &gLevelExpert5, 150, EXPERT_5, 2, LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,                           0},
};
	
struct UnknownStruct5 gExpert6Table[] = 
{
	{&gWorldSixHorizontalBG,   &gLevelExpert6, 180, EXPERT_6, 2, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3, 0},
};	

struct worldTableStruct_unk_size_c gExpertWorldTable[] =
{
	{1, gExpert1Table, &gWorldOneData},
	{1, gExpert2Table, &gWorldTwoData},
	{1, gExpert3Table, &gWorldThreeData},
	{1, gExpert4Table, &gWorldFourData},
	{1, gExpert5Table, &gWorldFiveData},
	{1, gExpert6Table, &gWorldSixData},
};

struct worldTableStruct gUnknown_08B2CEBC[] =
{
	{6, gExpertWorldTable},
};


	
struct UnknownStruct5 gExpert7Table[] = 
{
	{&gWorldOnePlusHorizontalBG,   &gLevelExpert7,  150, EXPERT_7,  2, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,  0},
};	

struct UnknownStruct5 gExpert8Table[] = 
{
	{&gWorldTwoPlusVerticalBG,     &gLevelExpert8,  120, EXPERT_8,  1, LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,                            0},
};

struct UnknownStruct5 gExpert9Table[] = 
{
	{&gWorldThreePlusHorizontalBG, &gLevelExpert9,  120, EXPERT_9,  2, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,  0},
};	

struct UnknownStruct5 gExpert10Table[] = 
{
	{&gWorldFourPlusHorizontalBG,  &gLevelExpert10, 150, EXPERT_10,  2, LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,                           0},
};	

struct UnknownStruct5 gExpert11Table[] = 
{
	{&gWorldFivePlusHorizontalBG,  &gLevelExpert11, 120, EXPERT_11,  2, LEVEL_FLAG_1|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3,              0},
};	

struct UnknownStruct5 gExpert12Table[] = 
{
	{&gWorldSixPlusHorizontalBG,   &gLevelExpert12, 180, EXPERT_12,  2, LEVEL_FLAG_1|LEVEL_FLAG_2|LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_2|LEVEL_FLAG_ITEM_3, 0},
};	

struct worldTableStruct_unk_size_c gExpertWorldTable2[] =
{
	{1, gExpert7Table,  &gWorldOneData},
	{1, gExpert8Table,  &gWorldTwoData},
	{1, gExpert9Table,  &gWorldThreeData},
	{1, gExpert10Table, &gWorldFourData},
	{1, gExpert11Table, &gWorldFiveData},
	{1, gExpert12Table, &gWorldSixData},

};

struct worldTableStruct gUnknown_08B2CF84[] =
{
	{6, gExpertWorldTable2},
};
