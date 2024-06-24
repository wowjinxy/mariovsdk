#!/usr/bin/env python3

import struct
import sys

offset = int(sys.argv[1], 0)
structFmt = sys.argv[2]
cFmt = sys.argv[3]
count = int(sys.argv[4], 0) if len(sys.argv) >= 5 else 1

structSize = struct.calcsize(structFmt)
totalSize = structSize * count
print('dumping: %i bytes' % totalSize)

with open('baserom.gba', 'rb') as f:
	f.seek(offset)
	data = f.read(totalSize)
	for i in range(0, count):
		values = struct.unpack(structFmt, data[i * structSize:(i + 1) * structSize])
		print(cFmt % values)
		print('')
