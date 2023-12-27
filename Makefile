  #### Tools ####

CC1      := tools/agbcc/bin/agbcc
CC1_OLD  := tools/agbcc/bin/old_agbcc
CPP      := $(DEVKITARM)/bin/arm-none-eabi-cpp
AS       := $(DEVKITARM)/bin/arm-none-eabi-as
LD       := $(DEVKITARM)/bin/arm-none-eabi-ld
OBJCOPY  := $(DEVKITARM)/bin/arm-none-eabi-objcopy

CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm
CPPFLAGS := -I tools/agbcc/include -iquote include -nostdinc -undef
ASFLAGS  := -mcpu=arm7tdmi -mthumb-interwork -I asminclude


#### Files ####

ROM      := mariovsdk.gba
ELF      := $(ROM:.gba=.elf)
MAP      := $(ROM:.gba=.map)
LDSCRIPT := ldscript.txt
CFILES   := \
	src/rom_80066FC.c \
	src/main.c \
	src/rom1.c \
	src/rom_8008238.c \
	src/rom_800EEC0.c \
	src/title.c \
	src/intro.c \
	src/pause_menu.c \
	src/movie_player.c \
	src/rom_8032408.c \
	src/level_view.c \
	src/rom_8032FB0.c \
	src/rom_8033C38.c \
	src/rom_8038414.c \
	src/rom_804A8E8.c \
	src/agb_flash.c \
	src/agb_flash_1m.c \
	src/agb_flash_mx.c \
	src/libc.c
SFILES   := \
	asm/crt0.s \
	asm/rom_800023C.s \
	asm/rom_8001BA4.s \
	asm/rom_80067F0.s \
	asm/rom_8007B58.s \
	asm/rom_80088F0.s \
	asm/rom_800F070.s \
	asm/rom_801BAD8.s \
	asm/boss_clear.s \
	asm/rom_801CB9C.s \
	asm/rom_802D614.s \
	asm/eCard.s \
	asm/level_view.s \
	asm/rom_8032814.s \
	asm/rom_8033658.s \
	asm/rom_8034928.s \
	asm/world_start.s \
	asm/rom_80379BC.s \
	asm/rom_8038600.s \
	asm/rom_804AAB8.s \
	asm/syscall.s \
	asm/rom_80747B8.s \
	data/data.s
OFILES   := $(SFILES:.s=.o) $(CFILES:.c=.o)

src/agb_flash.o: CC1FLAGS := -O1 -mthumb-interwork
src/agb_flash_1m.o: CC1FLAGS := -O1 -mthumb-interwork
src/agb_flash_mx.o: CC1FLAGS := -O1 -mthumb-interwork

src/libc.o: CC1 := $(CC1_OLD)
src/libc.o: CC1FLAGS := -O2


#### Main Targets ####

compare: $(ROM)
	md5sum -c checksum.md5

clean:
	$(RM) $(ROM) $(ELF) $(MAP) $(OFILES) src/*.s


#### Recipes ####

$(ELF): $(OFILES) $(LDSCRIPT)
	$(LD) -T $(LDSCRIPT) -Map $(MAP) $(OFILES) tools/agbcc/lib/libgcc.a -o $@

%.gba: %.elf
	$(OBJCOPY) -O binary --pad-to 0x9000000 $< $@

%.o: %.c
	$(CPP) $(CPPFLAGS) $< | $(CC1).exe $(CC1FLAGS) -o $*.s
	$(AS) $(ASFLAGS) $*.s -o $*.o

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@
