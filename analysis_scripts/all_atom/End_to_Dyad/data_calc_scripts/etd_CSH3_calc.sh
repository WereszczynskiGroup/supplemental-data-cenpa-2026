#!/bin/bash

### First loop for entry files

for i in {1..4}; do
        traj="CSH3_${i}.nowat.nc"
        outfile="CSH3-dist-ete_entry${i}.dat"

        # Execute cpptraj commands
        cpptraj <<EOF
parm CSH3_1.nowat.prmtop
trajin $traj
distance end-to-end :1-5,290-294 :73-74 out $outfile
run
EOF
done


cpptraj <<EOF
parm CSH3_1.nowat.prmtop
trajin CSH3_1.nowat.nc
trajin CSH3_2.nowat.nc
trajin CSH3_3.nowat.nc
trajin CSH3_4.nowat.nc
distance end-to-end :1-5,290-294 :73-74 out CSH3-dist-ete_entry.dat
run
EOF


### Second loop for exit files

for i in {1..4}; do
        traj="CSH3_${i}.nowat.nc"
        outfile="CSH3-dist-ete_exit${i}.dat"

        # Execute cpptraj commands
        cpptraj <<EOF
parm CSH3_1.nowat.prmtop
trajin $traj
distance end-to-end :143-152 :73-74 out $outfile
run
EOF
done


cpptraj <<EOF
parm CSH3_1.nowat.prmtop
trajin CSH3_1.nowat.nc
trajin CSH3_2.nowat.nc
trajin CSH3_3.nowat.nc
trajin CSH3_4.nowat.nc
distance end-to-end :143-152 :73-74 out CSH3-dist-ete_exit.dat
run
EOF
