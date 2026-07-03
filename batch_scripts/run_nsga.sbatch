#!/usr/bin/env bash
#SBATCH --job-name=blip_NS0
#SBATCH --partition=dgx2q            # GPU partition
#SBATCH --gres=gpu:1                 # Request 1 GPU
#SBATCH --cpus-per-task=4
#SBATCH --time=5-24:00:00
#SBATCH --output=/global/D1/homes/user_name/venv/blip/log/%j.out
#SBATCH --error=/global/D1/homes/user_name/venv/blip/log/%j.err
#SBATCH --chdir=/global/D1/homes/user_name/venv/blip  # Ensure working dir

# Exit on errors
set -euo pipefail


# 2. Navigate to your workspace
cd /global/D1/homes/user_name/venv/blip

# Run the Python script using full path to conda environment Python

export PYTHONPATH="/global/D1/homes/user_name/venv/blip:${PYTHONPATH:-}"

# Remaining 2 jobs of NSGA-II algorithm (continuing blipv2.sbatch)
/home/user_name/.conda/envs/blip/bin/python /global/D1/homes/user_name/venv/blip/script_gpu0.py &
# The 'wait' command is mandatory! It stops the job from ending before the background tasks finish.
wait