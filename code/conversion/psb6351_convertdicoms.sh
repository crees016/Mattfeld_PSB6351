#!/bin/bash

#SBATCH -J psb6351_dcm_convert
#SBATCH -o /scratch/classroom/psb6351/csted001/crash/dcm_convert_out
#SBATCH -e /scratch/classroom/psb6351/csted001/crash/dcm_convert_err
#SBATCH --qos pq_psb6351
#SBATCH --account acc_psb6351
#SBATCH --partition classroom

heudiconv -d '/home/csted001/Mattfeld_PSB6351/sourcedata/Mattfeld_REVL-000-vCAT-{subject}-S1/*/*/*/*/*/*' -s 021 -c dcm2niix -f /home/csted001/Mattfeld_PSB6351/code/conversion/psb6351_heuristic.py  -o /home/csted001/Mattfeld_PSB6351/dset

