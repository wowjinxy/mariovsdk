struct MenuButton
{
    /*0x00*/ s32 tileObjID;  // button tile object ID
    /*0x04*/ u8 x;  // X position in tiles
    /*0x05*/ u8 y;  // Y position in tiles
    /*0x06*/ u8 boxWidth;  // selection box width
    /*0x08*/ s32 submenu;  // sub menu to go on selection
    /*0x0C*/ void (*onAPress)(void);
    /*0x10*/ u32 unk10;  // tile objects shown at bottom?
};  // size = 0x14

struct Submenu
{
    /*0x00*/ u8 numOptions;  // Number of options in sub menu
    /*0x01*/ u8 totalTileObjects;  // Total tile obects (A to select and related)
    /*0x04*/ struct MenuButton buttons[9];
    /*0xB8*/ s32 returnSubMenuID;  // Menu ID to go to when B is pressed (or -1 to return to file select screen)
    u32 unkBC;  // Option to select on exit
    /*0xC0*/ u32 flags;  // flags
    void (*unkC4)(void);
    void (*unkC8)(u16 *);
};  // size = 0xCC

// flags
#define MENU_HORIZONTAL 1
#define MENU_NOWRAP 2

extern struct Submenu gOptionMenuSubMenus[];
