#!/bin/bash

shopt -s globstar

if [ "$#" -ne "2" ];
then
    echo "usage: $0 old_name new_name"
    exit 1
fi

# Edit extract_assets.mk
sed -i "s/\b$1\b/$2/g" extract_assets.mk

# Rename file
mv assets/sprites/"$1".png assets/sprites/"$2".png

# Get new tile data label
label="$(sed -n "s/.*\($2\)\.\(.bpp\).*/gfx\1\2/p" extract_assets.mk)"

# Rename tile data label
./rename_sym.sh "$1" "$label"

# Fix incbin filename
sed -i "/INCBIN/s/$label/$2/g" data/*.s

# TODO: handle OAM label as well?

#C_FILES="$(find src -name '*.c') $(find src include -name '*.h')"
#ASM_FILES="$(find asm data -name '*.s') $(find asm -name '*.inc')"
#grep -rl "$1" $ASM_FILES $C_FILES ldscript.in | xargs sed -i "s/\b$1\b/$2/g"
