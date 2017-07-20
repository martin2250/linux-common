#!/usr/bin/python
from __future__ import print_function
import sys
import os

sets = {
'keybindings':'/org/cinnamon/desktop/keybindings/'
}

def printavailable():
	print('available sets:')
	for key, value in sets.items():
		print('\t', key, '\t', value)

def printusage():
	print('usage:', sys.argv[0], '[load/save] [set]')
	print()
	printavailable()

if len(sys.argv) != 3:
	printusage()
	exit(1)

if not sys.argv[2] in sets.keys():
	print('key \'', sys.argv[2], '\' unknown')
	print()
	printavailable()
	exit(1)

if sys.argv[1] == 'save':
	os.system('dconf dump %s > %s.dconf'%(sets[sys.argv[2]], sys.argv[2]))
elif sys.argv[1] == 'load':
	os.system('dconf load %s < %s.dconf'%(sets[sys.argv[2]], sys.argv[2]))
else:
	printusage()
	exit(1)
