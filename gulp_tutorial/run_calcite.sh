#!/bin/bash
#SBATCH -J gulp_calcite
#SBATCH -o out_calcite
#SBATCH -e err_calcite
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 00:10:00
#SBATCH -p phys_general
#SBATCH --mem 32000M

module load gnu11/11.2
mpirun -n 1 /home/physics/geochem/gulp-6.1.2/Src/gulp < calcite.gin > calcite.gout
