#!/usr/bin/env python3

import re
import sys

ROM_BASE = 0x08000000

def incbin(start, end):
	if start == end:
		return ''
	return '\t.INCBIN "baserom.gba", 0x%X, 0x%X-0x%X\n' % (start, end, start)

out = ''
addrs = []
for line in sys.stdin:
	addrs.append(int(line, 0))
addrs.sort()
currAddr = ROM_BASE
i = 0
with open(sys.argv[1], 'rt') as f:
	for line in f:
		didSplit = False
		if i < len(addrs):
			m = re.search(r'\.INCBIN "baserom.gba", (0x\w+), (0x\w+)-0x\w+', line, re.IGNORECASE)
			if m:
				currAddr = int(m.group(1), 0) + ROM_BASE
				nextAddr = int(m.group(2), 0) + ROM_BASE
				# add labels
				for addr in addrs:
					if addr >= currAddr and addr < nextAddr:
						out += incbin(currAddr - ROM_BASE, addr - ROM_BASE)
						label = 'gUnknown_%08X' % addr
						out += '\n\t.GLOBAL %s\n%s:\n' % (label, label)
						currAddr = addr
				# add remaining incbin
				out += incbin(currAddr - ROM_BASE, nextAddr - ROM_BASE)
				#currAddr = nextAddr
				didSplit = True
		if not didSplit:
			out += line

with open(sys.argv[1], 'wt') as f:
	f.write(out)
