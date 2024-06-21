#!/usr/bin/env python3

import sys

t = sys.argv[1]
n = int(sys.argv[2], 0)
s = ''

if t == 'dispcnt':
	s += 'DISPCNT_MODE_%i' % (n & 7)
	if n & 0xF00 == 0xF00:
		s += ' | DISPCNT_BG_ALL_ON'
	else:
		for i in range(0,4):
			if n & (0x100 << i):
				s += ' | DISPCNT_BG%i_ON' % i
	if n & 0x1000:
		s += ' | DISPCNT_OBJ_ON'
	if n & 0x2000:
		s += ' | DISPCNT_WIN0_ON'
	if n & 0x4000:
		s += ' | DISPCNT_WIN1_ON'
	if n & 0x8000:
		s += ' | DISPCNT_OBJWIN_ON'
	if n & 0x40:
		s += ' | DISPCNT_OBJ_1D_MAP'
	if n & 0x80:
		s += ' | DISPCNT_FORCED_BLANK'
elif t == 'bldcnt':
	s += 'BLDCNT_EFF_' + ['NONE', 'ALPHA', 'BRIGHTEN', 'DARKEN'][(n >> 6) & 3]
	layers = ['BG0', 'BG1', 'BG2', 'BG3', 'OBJ', 'BD']
	for i in range(0,6):
		if n & (1 << i):
			s += ' | BLDCNT_' + layers[i] + '_FIRST'
	for i in range(0,6):
		if n & (0x100 << i):
			s += ' | BLDCNT_' + layers[i] + '_SECOND'
else:
	print('Unknown type ' + sys.argv[2])

print(s)
