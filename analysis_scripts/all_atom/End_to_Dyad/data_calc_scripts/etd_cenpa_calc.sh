#!/bin/bash

### First loop for entry files

for i in {1..4}; do
        traj="cenpa_${i}.nowat.nc"
        outfile="cenpa-dist-ete_entry${i}.dat"

        # Execute cpptraj commands
        cpptraj <<EOF
parm cenpa_1.nowat.prmtop
trajin $traj
distance end-to-end :1-5,290-294 :73-74 out $outfile
run
EOF
done


cpptraj <<EOF
parm cenpa_1.nowat.prmtop
trajin cenpa_1.nowat.nc
trajin cenpa_2.nowat.nc
trajin cenpa_3.nowat.nc
trajin cenpa_4.nowat.nc
distance end-to-end :1-5,290-294 :73-74 out cenpa-dist-ete_entry.dat
run
EOF


### Second loop for exit files

for i in {1..4}; do
        traj="cenpa_${i}.nowat.nc"
        outfile="cenpa-dist-ete_exit${i}.dat"

        # Execute cpptraj commands
        cpptraj <<EOF
parm cenpa_1.nowat.prmtop
trajin $traj
distance end-to-end :143-152 :73-74 out $outfile
run
EOF
done


cpptraj <<EOF
parm cenpa_1.nowat.prmtop
trajin cenpa_1.nowat.nc
trajin cenpa_2.nowat.nc
trajin cenpa_3.nowat.nc
trajin cenpa_4.nowat.nc
distance end-to-end :143-152 :73-74 out cenpa-dist-ete_exit.dat
run
EOF
