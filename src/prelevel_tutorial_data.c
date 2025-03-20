#include "gba/gba.h"
#include "global.h"
#include "level_data.h"
#include "main.h"


extern u32 g11TutorialDemo;
extern u32 g12TutorialDemo;
extern u32 g13TutorialDemo;
extern u32 g14TutorialDemo;
extern u32 g15TutorialDemo;
extern u32 g16TutorialDemo;
extern u32 g1MMTutorialDemo;

extern u32 g21TutorialDemo;
extern u32 g22TutorialDemo;
extern u32 g23TutorialDemo;
extern u32 g24TutorialDemo;
extern u32 g25TutorialDemo;
extern u32 g26TutorialDemo;
extern u32 g2MMTutorialDemo;

extern u32 g31TutorialDemo;
extern u32 g32TutorialDemo;
extern u32 g33TutorialDemo;
extern u32 g34TutorialDemo;
extern u32 g35TutorialDemo;
extern u32 g36TutorialDemo;
extern u32 g3MMTutorialDemo;

extern u32 g41TutorialDemo;
extern u32 g42TutorialDemo;
extern u32 g43TutorialDemo;
extern u32 g44TutorialDemo;
extern u32 g45TutorialDemo;
extern u32 g46TutorialDemo;
extern u32 g4MMTutorialDemo;

extern u32 g51TutorialDemo;
extern u32 g52TutorialDemo;
extern u32 g53TutorialDemo;
extern u32 g54TutorialDemo;
extern u32 g55TutorialDemo;
extern u32 g56TutorialDemo;
extern u32 g5MMTutorialDemo;

extern u32 g61TutorialDemo;
extern u32 g62TutorialDemo;
extern u32 g63TutorialDemo;
extern u32 g64TutorialDemo;
extern u32 g65TutorialDemo;
extern u32 g66TutorialDemo;
extern u32 g6MMTutorialDemo;


//World 1 tutorial
struct UnknownStruct5 gWorldOneTutorialLevelTable[] =
{
	{&gWorldOneVerticalBG,  &gLevel11Tutorial,  150, BGM_1A, 1, 0x00000001, 0},
	{&gWorldOneVerticalBG,  &gLevel12Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldOneVerticalBG,  &gLevel13Tutorial,  150, BGM_1A, 1, 0x00000024, 0},
	{&gWorldOneVerticalBG,  &gLevel14Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldOneVerticalBG,  &gLevel15Tutorial,  150, BGM_1A, 1, 0x00000001, 0},
	{&gWorldOneVerticalBG,  &gLevel16Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldOneMiniMarioBG, &gLevel1MMTutorial, 150, BGM_1A, 3, 0x000000FF, 0},
};

//World 2 tutorial
struct UnknownStruct5 gWorldTwoTutorialLevelTable[] =
{
	{&gWorldTwoVerticalBG,  &gLevel21Tutorial,  150, BGM_1A, 1, 0x00000082, 0},
	{&gWorldTwoVerticalBG,  &gLevel22Tutorial,  150, BGM_1A, 1, 0x00000046, 0},
	{&gWorldTwoVerticalBG,  &gLevel23Tutorial,  150, BGM_1A, 1, 0x00000082, 0},
	{&gWorldTwoVerticalBG,  &gLevel24Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldTwoVerticalBG,  &gLevel25Tutorial,  150, BGM_1A, 1, 0x00000002, 0},
	{&gWorldTwoVerticalBG,  &gLevel26Tutorial,  150, BGM_1A, 1, 0x00000040, 0},
	{&gWorldTwoMiniMarioBG, &gLevel2MMTutorial, 150, BGM_1A, 3, 0x000000FF, 0},
};

//World 3 tutorial
struct UnknownStruct5 gWorldThreeTutorialLevelTable[] =
{
	{&gWorldThreeVerticalBG,  &gLevel31Tutorial,  150, BGM_1A, 1, 0x00000010, 0},
	{&gWorldThreeVerticalBG,  &gLevel32Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldThreeVerticalBG,  &gLevel33Tutorial,  150, BGM_1A, 1, 0x00000002, 0},
	{&gWorldThreeVerticalBG,  &gLevel34Tutorial,  150, BGM_1A, 1, 0x00000020, 0},
	{&gWorldThreeVerticalBG,  &gLevel35Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldThreeVerticalBG,  &gLevel36Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldThreeMiniMarioBG, &gLevel3MMTutorial, 150, BGM_1A, 3, 0x00000000, 0},
};

//World 4 tutorial
struct UnknownStruct5 gWorldFourTutorialLevelTable[] =
{
	{&gWorldFourVerticalBG,  &gLevel41Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldFourVerticalBG,  &gLevel42Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldFourVerticalBG,  &gLevel43Tutorial,  150, BGM_1A, 1, 0x00000020, 0},
	{&gWorldFourVerticalBG,  &gLevel44Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldFourVerticalBG,  &gLevel45Tutorial,  150, BGM_1A, 1, 0x00000001, 0},
	{&gWorldFourVerticalBG,  &gLevel46Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldFourMiniMarioBG, &gLevel4MMTutorial, 150, BGM_1A, 3, 0x000000FF, 0},
};


//World 5 tutorial
struct UnknownStruct5 gWorldFiveTutorialLevelTable[] =
{
	{&gWorldFiveVerticalBG,  &gLevel51Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldFiveVerticalBG,  &gLevel52Tutorial,  150, BGM_1A, 1, 0x00000001, 0},
	{&gWorldFiveVerticalBG,  &gLevel53Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldFiveVerticalBG,  &gLevel54Tutorial,  150, BGM_1A, 1, 0x00000002, 0},
	{&gWorldFiveVerticalBG,  &gLevel55Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldFiveVerticalBG,  &gLevel56Tutorial,  150, BGM_1A, 1, 0x00000001, 0},
	{&gWorldFiveMiniMarioBG, &gLevel5MMTutorial, 150, BGM_1A, 3, 0x000000FF, 0},
};

//World 6 tutorial
struct UnknownStruct5 gWorldSixTutorialLevelTable[] =
{
	{&gWorldSixVerticalBG,  &gLevel61Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldSixVerticalBG,  &gLevel62Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldSixVerticalBG,  &gLevel63Tutorial,  150, BGM_1A, 1, 0x00000022, 0},
	{&gWorldSixVerticalBG,  &gLevel64Tutorial,  150, BGM_1A, 1, 0x00000000, 0},
	{&gWorldSixVerticalBG,  &gLevel65Tutorial,  150, BGM_1A, 1, 0x00000024, 0},
	{&gWorldSixVerticalBG,  &gLevel66Tutorial,  150, BGM_1A, 1, 0x00000080, 0},
	{&gWorldSixMiniMarioBG, &gLevel6MMTutorial, 150, BGM_1A, 3, 0x000000FF, 0},
};

struct worldTableStruct_unk_size_c gTutorialWorldTable[] =
{
	{7, gWorldOneTutorialLevelTable,   &gWorldOneData},
	{7, gWorldTwoTutorialLevelTable,   &gWorldTwoData},
	{7, gWorldThreeTutorialLevelTable, &gWorldThreeData},
	{7, gWorldFourTutorialLevelTable,  &gWorldFourData},
	{7, gWorldFiveTutorialLevelTable,  &gWorldFiveData},
	{7, gWorldSixTutorialLevelTable,   &gWorldSixData},	
};

struct worldTableStruct gUnknown_08B2D378[] =
{
	{6, gTutorialWorldTable},
};

// not a struct, but silences "initialization from incompatible pointer type" warnings
struct tempStruct3 {
	u32 *tutorialDemoInputs[0];
};

struct tempStruct3 gTutorialDemoInputTable[] =
{
	{
	&g11TutorialDemo, &g12TutorialDemo, &g13TutorialDemo, &g14TutorialDemo, &g15TutorialDemo, &g16TutorialDemo, &g1MMTutorialDemo,
	&g21TutorialDemo, &g22TutorialDemo, &g23TutorialDemo, &g24TutorialDemo, &g25TutorialDemo, &g26TutorialDemo, &g2MMTutorialDemo,
	&g31TutorialDemo, &g32TutorialDemo, &g33TutorialDemo, &g34TutorialDemo, &g35TutorialDemo, &g36TutorialDemo, &g3MMTutorialDemo,
	&g41TutorialDemo, &g42TutorialDemo, &g43TutorialDemo, &g44TutorialDemo, &g45TutorialDemo, &g46TutorialDemo, &g4MMTutorialDemo,
	&g51TutorialDemo, &g52TutorialDemo, &g53TutorialDemo, &g54TutorialDemo, &g55TutorialDemo, &g56TutorialDemo, &g5MMTutorialDemo,
	&g61TutorialDemo, &g62TutorialDemo, &g63TutorialDemo, &g64TutorialDemo, &g65TutorialDemo, &g66TutorialDemo, &g6MMTutorialDemo,
	0, 0, 0, 0, 0, 0
	}
};
