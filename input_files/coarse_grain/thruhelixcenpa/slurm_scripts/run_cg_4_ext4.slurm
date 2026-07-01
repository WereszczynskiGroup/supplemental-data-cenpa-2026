#!/bin/bash

#SBATCH --job-name=cg_thruhelixcenpa_4
#SBATCH --output=cg_slurm.out
#SBATCH --time=48:00:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jlee295@hawk.iit.edu
#SBATCH --nodes=1
#SBATCH --nodelist=compute-1-6

srun /home/jlee295/cafemol/cafemol run4_thruhelixcenpa_v5.inp thruhelixcenpa_4_ext3.rst
