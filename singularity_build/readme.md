# ToDo
1. Add script to pull lastest docker image, install hydra, build singularity container and update it. (runs in local)
2. Add script to Pull latest singularity container to /sigularity_build dir


## To train the model with up to date lerobot main branch
1. Update the sigularity container using script 1 on your local computer
./build_singularity_local.sh
2. Pull the up to date container in cluster using script 2
./singularity_build/pull_singularity_cluster.sh
3. Run a Job script
sbatch slurm_training/jobs/train_s0100_job.sh
4. Email notification will be sent when job starts, end, fail or queued.
 
