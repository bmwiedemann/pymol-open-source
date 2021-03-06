# -c

/print "BEGIN-LOG"

from pymol2 import PyMOL

lst = []

for i in range(0,3): lst.append( PyMOL() )

for pi in lst: pi.start()

lst[0].cmd.load("dat/pept.pdb",quiet=0)
lst[1].cmd.load("dat/1tii.pdb",quiet=0)
lst[2].cmd.load("dat/3al1.pdb",quiet=0)

for pi in lst: print pi.cmd.count_atoms()

for pi in lst: pi.stop()

del lst

/print "END-LOG"
