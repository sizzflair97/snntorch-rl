#!/bin/bash
filename="$HOME/myubai/snntorch-rl/cartpole_snn.ipynb"

for ((time_step=1; time_step<=1; time_step+=2));
do
    for elg_coeff_prefix in 1 2.5 4 5.5 7 8.5
    do
        for elg_coeff_postfix in e-1
        do
            sbatch "sbatch_script.sbatch" "$filename" "$time_step"e-1 "$elg_coeff_prefix$elg_coeff_postfix"
        done
    done
done