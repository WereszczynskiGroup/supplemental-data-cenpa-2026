#!/bin/bash

#SBATCH --job-name=cg_thruhelixcenpa_1
#SBATCH --output=cg_slurm.out
#SBATCH --time=48:00:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jlee295@hawk.iit.edu
#SBATCH --nodes=1
#SBATCH --nodelist=compute-1-5

srun /home/jlee295/cafemol/cafemol run1_thruhelixcenpa_v2.inp thruhelixcenpa_1.rst
