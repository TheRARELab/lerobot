#!/usr/bin/env bash
set -e

# Pull from Sylabs Cloud to cluster
SIF_NAME="lerobot-gpu.sif"
LIBRARY_URI="library://amanu/default/lerobot-gpu:latest"

singularity pull -U "$SIF_NAME" "$LIBRARY_URI"
