#!/bin/bash

#SBATCH --job-name=cg_cenpa_4
#SBATCH --output=cg_slurm.out
#SBATCH --time=48:00:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jlee295@hawk.iit.edu
#SBATCH --nodes=1

mpirun -np 1 /home/jlee295/cafemol/cafemol run4_cenpa_v4.inp cenpa_4_ext2.rst
