#!/bin/bash -l
#SBATCH -p general # run on partition general
#SBATCH --cpus-per-task=32 # 32 CPUs per task
#SBATCH --mem=100GB # 100GB per task
#SBATCH --gpus=8 # 4 GPUs
#SBATCH -o std_out
#SBATCH -e std_err
#SBATCH --mail-user=aergogo@usf.edu # email for notifications
#SBATCH --mail-type=BEGIN,END,FAIL,REQUEUE # events for notifications
export PYTHONPATH=$PYTHONPATH:/home/a/aergogo/lerobot/
export HYDRA_FULL_ERROR=1
singularity exec --nv singularity_build/lerobot-gpu.sif python lerobot/scripts/train.py \
    policy=act \
    env=aloha \
    env.task=AlohaInsertion-v0 \
    dataset_repo_id=lerobot/aloha_sim_insertion_human \
