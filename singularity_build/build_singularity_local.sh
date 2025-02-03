#!/usr/bin/env bash
set -e

# Builds a .sif from .def, then pushes it to Sylabs Cloud

SIF_NAME="lerobot-gpu.sif"
DEF_FILE="lerobot-gpu.def"
LIBRARY_URI="library://amanu/default/lerobot-gpu:latest"

# singularity build --fakeroot "$SIF_NAME" "$DEF_FILE"
sudo singularity build "$SIF_NAME" "$DEF_FILE"
echo "Successfully built $SIF_NAME."

echo "Pushing $SIF_NAME to $LIBRARY_URI..."
singularity push -U "$SIF_NAME" "$LIBRARY_URI"
echo "Your image is now available at $LIBRARY_URI"

