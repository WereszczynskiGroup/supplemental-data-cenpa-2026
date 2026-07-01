#!/usr/bin/python3

for i in range(1,10):        #INSERT YOUR RESIDUES HERE
    print("hbonds -sel1 [atomselect top \"resid %i\"] -sel2 [atomselect top \"nucleic\"] -writefile yes -dist 3.5 -ang 30 -plot no -outdir [YOUR_DIRECTORY] -log log_%i.dat -writefile yes -outfile hbonds_%i.dat -DA both -type all -detailout detail_%i.dat"%(i,i,i,i))
