#include "gba/gba.h"
#include "global.h"

void sub_08038414(u16 param1, u16 param2) {
   

      if (((((gUnknown_03001A1C & 0x81100) != 0x80000) || (gUnknown_030019D8 == 5)) ||
      ((gUnknown_03001A1C & 0x200000) != 0)) || ((gUnknown_030019A0 & 0x20000000) != 0)) {
        s16 var2 = 0;
        for (var2 = 0; var2 < 10; var2++) {
              gUnknown_03001A10[var2] = gUnknown_030019C0[var2] = 0;
        }
        gUnknown_03001944 = gUnknown_03001990 = gUnknown_030019F4 = 0;
            
    } else {
          
          gUnknown_03001A4C = gUnknown_03001990;
           gUnknown_03001A10[gUnknown_03001944] = gUnknown_03001990;
           gUnknown_030019C0[gUnknown_03001944] = gUnknown_03001990 | gUnknown_030019F4;
          gUnknown_03001944 = (gUnknown_03001944 < 9) ? (gUnknown_03001944 + 1) : 0;
          gUnknown_030019F4 = gUnknown_030019A4;
          gUnknown_03001990 = gUnknown_030019A4;
          if ((param1 & 1) != 0) {
             gUnknown_03001990 |= 0x10;
          } 
          if ((param1 & 2) != 0) {
             gUnknown_03001990 |= 0x20;
          } 

          if ((param2 & 1) != 0) {
              gUnknown_030019F4 |= 0x10;
          }
          if ((param2 & 2) != 0) {
              gUnknown_030019F4 |= 0x20;
          }
          
    if ((param2 & 0xF0) != 0) {
      if ((param2 & 0x40) != 0) {
        gUnknown_03001990 |= 1;
        gUnknown_030019F4 |= 1;
      }
      if ((param2 & 0x80) != 0) {
        gUnknown_03001990 |= 2;
        gUnknown_030019F4 |= 2;
      }
      if ((param2 & 0x20) != 0) {
        gUnknown_03001990 |= 4;
        gUnknown_030019F4 |= 4;
      }
      if ((param2 & 0x10) != 0) {
        gUnknown_03001990 |= 8;
        gUnknown_030019F4 |= 8;
      }
    }
          
    if (gUnknown_03001990 != 0) {
        gMarioIdleTimer = 0;
    } else {
        gMarioIdleTimer = (gMarioIdleTimer + 1) & 0x7fff;
    }
    if (gUnknown_03001990 != gUnknown_03001A4C) {
        gUnknown_03001A3C = 0;
    }
    else {
        gUnknown_03001A3C++;
    } 
    }
}
