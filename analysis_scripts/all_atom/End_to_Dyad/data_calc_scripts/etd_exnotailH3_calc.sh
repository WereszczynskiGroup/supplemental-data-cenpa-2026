#!/bin/bash

### First loop for entry files

for i in {1..4}; do
        traj="exnotailH3_${i}.nowat.nc"
        outfile="exnotailH3-dist-ete_entry${i}.dat"

        # Execute cpptraj commands
        cpptraj <<EOF
parm exnotailH3_1.nowat.prmtop
trajin $traj
distance end-to-end :1-5,290-294 :73-74 out $outfile
run
EOF
done


cpptraj <<EOF
parm exnotailH3_1.nowat.prmtop
trajin exnotailH3_1.nowat.nc
trajin exnotailH3_2.nowat.nc
trajin exnotailH3_3.nowat.nc
trajin exnotailH3_4.nowat.nc
distance end-to-end :1-5,290-294 :73-74 out exnotailH3-dist-ete_entry.dat
run
EOF


### Second loop for exit files

for i in {1..4}; do
        traj="exnotailH3_${i}.nowat.nc"
        outfile="exnotailH3-dist-ete_exit${i}.dat"

        # Execute cpptraj commands
        cpptraj <<EOF
parm exnotailH3_1.nowat.prmtop
trajin $traj
distance end-to-end :143-152 :73-74 out $outfile
run
EOF
done


cpptraj <<EOF
parm exnotailH3_1.nowat.prmtop
trajin exnotailH3_1.nowat.nc
trajin exnotailH3_2.nowat.nc
trajin exnotailH3_3.nowat.nc
trajin exnotailH3_4.nowat.nc
distance end-to-end :143-152 :73-74 out exnotailH3-dist-ete_exit.dat
run
EOF
