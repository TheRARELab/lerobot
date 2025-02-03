## Train a model with up to date lerobot main branch
1. Update the sigularity container using script 1 on your local computer
   ```bash
   ./build_singularity_local.sh
3. Pull the up to date container in cluster using script 2
   ```bash
   ./singularity_build/pull_singularity_cluster.sh
5. Run a Job script
   ```bash
   sbatch slurm_training/jobs/train_s0100_job.sh
7. Email notification will be sent when job starts, end, fail or requeued.

# ToDo
- [x] Add script to pull lastest docker image, install hydra, build singularity container and update it. (runs in local)
- [x] Add script to pull latest singularity container to /sigularity_build directory
 
