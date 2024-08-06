#!/bin/bash
#SBATCH -p ib-24-96
#SBATCH --qos=ib
#SBATCH -o %j-nemo.out
#SBATCH -e %j-nemo.err
#SBATCH -t 2-04:00:00
#SBATCH --job-name=nemo
#SBATCH --ntasks=95
#SBATCH --mail-type=END

module purge
source ../add_mod_ada_intel.sh

mpirun --mca btl ^tcp ./nemo
