#include "gba/gba.h"
#include "global.h"
#include "main.h"

void sub_08021BA4();
void sub_08021BF0();
void sub_08021C80();
void sub_0802089C();
void sub_08020908();
void sub_080209B8();
void sub_08020A74();
void sub_08020BE4();
void sub_08020E1C();
void sub_08020EC8();
void sub_08021E70();
void sub_08020F20();
void sub_08021014();
void sub_08021534();
	
void sub_0801CBD8();
void sub_08021C3C();
void sub_08021CD8();
void sub_08021D10();
void sub_08021D48();
void sub_08021D8C();
void sub_08021DA0();
void sub_08021DB4();
void sub_08021DC8();
void sub_08021E1C();
void sub_08021EBC();
void sub_08021F10();
void sub_08021F64();
void sub_08021FB8();


void (*gUnknown_08079878[])(void) =
{
    sub_08021BA4, // Presents show up
    sub_08021BF0, // Lives show up
    sub_08021C80, // Lives go down into presents
    sub_0802089C, // Present lids show up and go down
    sub_08020908, // Presents get wrapped
    sub_080209B8, // Stop Arrow to win your prise text shows up
    sub_08020A74, // Arrow shows up
    sub_08020BE4, // Arrow slows down
    sub_08020E1C, // Present unwraps
    sub_08020EC8, // Present lid goes up
    sub_08021E70,
    sub_08020F20, // Life goes up out of present
    sub_08021014, // Gain lives
    sub_08021534, // End
};

void (*gUnknown_080798B0[])(void) =
{
    sub_0801CBD8, // Presents show up
    sub_08021C3C, // Lives show up
    sub_08021CD8, // Lives go down into presents
    sub_08021D10, // Present lids show up and go down
    sub_08021D48, // Presents get wrapped
    sub_08021D8C, // Stop Arrow to win your prise text shows up
    sub_08021DA0, // Arrow shows up
    sub_08021DB4, // Arrow slows down
    sub_08021DC8, // Present unwraps
    sub_08021E1C, // Present lid goes up
    sub_08021EBC,
    sub_08021F10, // Life goes up out of present
    sub_08021F64, // Gain lives
    sub_08021FB8, // End
};
