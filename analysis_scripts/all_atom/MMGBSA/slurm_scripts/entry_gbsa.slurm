#!/bin/bash

#SBATCH --job-name=GBSA_{system}_{run}entry
#SBATCH --output=gbsa_slurm.out
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=10
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jlee295@hawk.iit.edu

module load spack
module load ambertools

source /opt/ohpc/pub/apps/spack/local/linux-icelake/ambertools-25-pf7v24e724cpwioa5qvyyyelkz2h6no7/amber.sh

mpirun -np 10 MMPBSA.py.MPI \
  -O \
  -i decomp.in \
  -o gbsa_{system}_{run}entry.dat \
  -do gbsa_{system}_{run}entry.txt \
  -cp {system}_com.prmtop \
  -lp {system}_entry_lig.prmtop \
  -rp {system}_entry_rec.prmtop \
  -y {system}_stripped.nc \
  -eo gbsa_{system}_{run}entry.xvg
