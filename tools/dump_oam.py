#!/usr/bin/env python3

import sys

offset = int(sys.argv[1], 0)

with open('baserom.gba', 'rb') as f:
	f.seek(offset)
	data = f.read(8)
	y           = data[0]
	affineMode  = data[1] & 3
	objMode     = (data[1] >> 2) & 3
	mosaic      = (data[1] >> 4) & 1
	bpp         = (data[1] >> 5) & 1
	shape       = (data[1] >> 6) & 3
	x           = data[2] | ((data[3] & 1) << 8)
	matrixNum   = (data[3] >> 1) & 0x1F
	size        = (data[3] >> 6) & 3
	tileNum     = data[4] | ((data[5] & 3) << 8)
	priority    = (data[5] >> 2) & 3
	paletteNum  = (data[5] >> 4) & 0xF
	affineParam = data[6] | (data[7] << 8)
	print('OamData y=%i, affineMode=ST_OAM_AFFINE_%s, objMode=ST_OAM_OBJ_%s, mosaic=%i, bpp=ST_OAM_%s, shape=ST_OAM_%s, x=%i, matrixNum=%i, size=%i, tileNum=%i, priority=%i, paletteNum=%i, affineParam=%i'
		% (
			y,
			['OFF', 'NORMAL', 'ERASE', 'DOUBLE'][affineMode],
			['NORMAL', 'BLEND', 'WINDOW'][objMode],
			mosaic,
			['4BPP', '8BPP'][bpp],
			['SQUARE', 'H_RECTANGLE', 'V_RECTANGLE'][shape],
			x,
			matrixNum,
			size,
			tileNum,
			priority,
			paletteNum,
			affineParam
		))
