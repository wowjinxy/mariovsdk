#include "gba/gba.h"
#include "global.h"

void sub_080331FC(void);
s8 sub_0801BAD8(void);
void sub_0800F02C();
void sub_0800F060();
void sub_0800F070();
void sub_0800CC6C(void);
void level_play_loop(void);

void pause_menu_init_callback(void) 
{
  gUnknown_030000B4 = 0;
  gUnknown_03000BF0 = gCurrentWorld;
  gUnknown_03000BF8 = gNextLevelID;
  gUnknown_03000BEC = 0;
  gUnknown_030000B6 = 0;
  sub_0800F02C();
}

void pause_menu_main(void) 
{

    sub_080331FC();
    
    switch(sub_0801BAD8()) {
        case 0:
            sub_0800F070(0);
            break;
        case 1:
            sub_0800F070(1);
            break;
        case 2:
            sub_0800F070(2);
            break;
    }
    
    sub_0800CC6C();
}

void pause_menu_loop(void)
{
	level_play_loop();
}

void pause_menu_end(void) 
{
    sub_0800F060();
}

asm(".short 0x0000"); // padding

// inlined code below -- seems to be from the game being compiled with -O3, is just in here to match until this can build with -O3

void sub_0801BED4(void) 
{
  gUnknown_030000B4 = 0;
  gUnknown_03000BF0 = gCurrentWorld;
  gUnknown_03000BF8 = gNextLevelID;
  gUnknown_03000BEC = 0;
  gUnknown_030000B6 = 0;
}