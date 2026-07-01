#!/bin/bash

#SBATCH --job-name=cg_thruhelixH3_4
#SBATCH --output=cg_slurm.out
#SBATCH --time=48:00:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jlee295@hawk.iit.edu
#SBATCH --nodes=1
#SBATCH --nodelist=compute-1-4

srun /home/jlee295/cafemol/cafemol run4_thruhelixH3_v4.inp thruhelixH3_4_ext2.rst
