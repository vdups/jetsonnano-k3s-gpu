#!/bin/bash

echo "nvidia-smi is NOT available on Tegra architectures, we cannot simply issue nvidia-smi to test nvidia runtime"
echo "WARNING : We need to pull a big image for this simple test. This may take some time"

docker pull tensorflow/tensorflow:latest-gpu-py3

