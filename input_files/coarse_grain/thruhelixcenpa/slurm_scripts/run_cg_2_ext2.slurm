#!/bin/bash

#SBATCH --job-name=cg_thruhelixcenpa_2
#SBATCH --output=cg_slurm.out
#SBATCH --time=48:00:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jlee295@hawk.iit.edu
#SBATCH --nodes=1
#SBATCH --nodelist=compute-1-5

srun /home/jlee295/cafemol/cafemol run2_thruhelixcenpa_v3.inp thruhelixcenpa_2_ext1.rst
