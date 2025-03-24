#include "gba/gba.h"
#include "global.h"
#include "main.h"

void sub_0802200C();
void sub_080258A8(void);
void sub_08025914(void);
void sub_080259C4(void);
void sub_08025A60(void);
void sub_08025FA8(void);
void sub_0802606C(void);
void sub_08026164(void);
void sub_08026640(void);
void sub_080266EC(void);
void sub_080267E4(void);
void sub_080268E0(void);
void sub_0802698C(void);
void sub_080269E4(void);
void sub_08026AD8(void);
void sub_08026FE8(void);
void sub_08027B9C(void);
void sub_08027BE8(void);
void sub_08027C34();
void sub_08027C78(void);
void sub_08027CD0();
void sub_08027D08();
void sub_08027D40();
void sub_08027D84(void);
void sub_08027DD0();
void sub_08027DE4();
void sub_08027DF8();
void sub_08027E0C();
void sub_08027E20();
void sub_08027E34();
void sub_08027E48();
void sub_08027E5C();
void sub_08027E70();
void sub_08027E84();
void sub_08027EC8();
void sub_08027F0C(void);
void sub_08027F58();
void sub_08027F9C();
void sub_08027FE0();
void sub_08028024();


void (*gUnknown_080798E8[])(void) =
{
    sub_08027B9C, // Presents show up
    sub_08027BE8, // Lives show up
    sub_08027C78, // Lives go down into presents
    sub_080258A8, // Present lids show up and go down
    sub_08025914, // Presents get wrapped
    sub_08027D84,
    sub_080259C4, // Swap boxes to win your prise text shows up
    sub_08025A60, // DK Arm shows up
    sub_08025FA8, // Happens at same time as above
    sub_0802606C, // DK arm goes down, squishes present
    sub_08026164, // Finished squishing, DK arm goes up
    sub_08026640, // 2 presents left
    sub_080266EC, // DK arm goes down, squishes last present
    sub_080267E4, // Finished squishing, DK arm goes up
    sub_080268E0, // Present unwraps
    sub_0802698C, // Present lid goes up
    sub_08027F0C,
    sub_080269E4, // Life goes up out of present
    sub_08026AD8, // Gain lives
    sub_08026FE8, // End
};

void (*gUnknown_08079938[])() =
{
    sub_0802200C, // Presents show up
    sub_08027C34, // Lives show up
    sub_08027CD0, // Lives go down into presents
    sub_08027D08, // Present lids show up and go down
    sub_08027D40, // Presents get wrapped
    sub_08027DD0,
    sub_08027DE4, // Swap boxes to win your prise text shows up
    sub_08027DF8, // DK Arm shows up
    sub_08027E0C, // Happens at same time as above
    sub_08027E20, // DK arm goes down, squishes present
    sub_08027E34, // Finished squishing, DK arm goes up
    sub_08027E48, // 2 presents left
    sub_08027E5C, // DK arm goes down, squishes last present
    sub_08027E70, // Finished squishing, DK arm goes up
    sub_08027E84, // Present unwraps
    sub_08027EC8, // Present lid goes up
    sub_08027F58,
    sub_08027F9C, // Life goes up out of present
    sub_08027FE0, // Gain lives
    sub_08028024, // End
};