#!/bin/bash
#SBATCH --nodes=1
#SBATCH --partition=gpu2
#SBATCH --gres=gpu:a10:1
#SBATCH --cpus-per-task=14
#SBATCH -o ./_out/%j.%N.out
#SBATCH -e ./_err/%j.%N.err

echo "start at: $(date)"
echo "node: $(hostname)"
echo "jobid: $(SLURM_JOB_ID)"

echo "ipython -- $1 --timestep $2"
ipython -- $1 --time_step $2 --elg_coeff $3