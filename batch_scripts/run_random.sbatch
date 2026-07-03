#!/usr/bin/env bash
#SBATCH --job-name=CL_RA_S0
#SBATCH --partition=dgx2q          # GPU partition
#SBATCH --gres=gpu:1                 # Request 1 GPU
#SBATCH --cpus-per-task=4
#SBATCH --time=5-24:00:00
#SBATCH --output=/global/D1/homes/user_name/venv/clip/log/%j.out
#SBATCH --error=/global/D1/homes/user_name/venv/clip/log/%j.err
#SBATCH --chdir=/global/D1/homes/user_name/venv/clip  # Ensure working dir

# Exit on errors
set -euo pipefail


# 2. Navigate to your workspace
cd /global/D1/homes/user_name/venv/clip

# Run the Python script using full path to conda environment Python

export PYTHONPATH="/global/D1/homes/user_name/venv/clip_env311:${PYTHONPATH:-}"

/home/user_name/.conda/envs/clip_env311/bin/python /global/D1/homes/user_name/venv/clip/randomScripts/script_gpu0.py &

# The 'wait' command is mandatory! It stops the job from ending before the background tasks finish.
wait
