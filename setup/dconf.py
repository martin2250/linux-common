#!/usr/bin/python
from __future__ import print_function
import sys
import os

#filename, path, readonly
sets = {
	'keybindings':('/org/cinnamon/desktop/keybindings/', False),
	'misc':('/', True),
	'antergos':('/', True)
}

def printavailable():
	print('available sets:')
	for key, value in sets.items():
		print('\t', key.ljust(16), value)

def printusage():
	print('usage:', sys.argv[0], '[load/save] [set]')
	print()
	printavailable()

if len(sys.argv) != 3:
	printusage()
	exit(1)

if not sys.argv[2] in sets.keys():
	print('set \'' + sys.argv[2] + '\' unknown')
	print()
	printavailable()
	exit(1)

name = sys.argv[2]

path = sets[name][0]
readonly = sets[name][1]

if sys.argv[1] == 'save':
	if readonly:
		print('set \'' + name + '\' is marked as read-only')
		exit(1)

	os.system('dconf dump %s > dconf/%s.dconf'%(path, name))
elif sys.argv[1] == 'load':
	os.system('dconf load %s < dconf/%s.dconf'%(path, name))
else:
	printusage()
	exit(1)
