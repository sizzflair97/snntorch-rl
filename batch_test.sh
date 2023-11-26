#!/bin/bash
filename="$HOME/myubai/snntorch-rl/cartpole_snn.ipynb"

for ((time_step=1; time_step<=1; time_step+=2));
do
    for elg_coeff_prefix in 1 3
    do
        for elg_coeff_postfix in e-1 e-2 e-3 e-4
        do
            sbatch "sbatch_script.sbatch" "$filename" "$time_step"e-1 "$elg_coeff_prefix$elg_coeff_postfix"
        done
    done
done