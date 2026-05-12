#!/bin/bash
#SBATCH -J gulp_magnesite
#SBATCH -o out_magnesite
#SBATCH -e err_magnesite
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 00:10:00
#SBATCH -p phys_general
#SBATCH --mem 32000M

module load gnu11/11.2
mpirun -n 1 /home/physics/geochem/gulp-6.1.2/Src/gulp < magnesite.gin > magnesite.gout
