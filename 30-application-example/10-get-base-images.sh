#!/bin/bash

echo "nvidia-smi is NOT available on Tegra architectures, we cannot simply issue nvidia-smi to test nvidia runtime"

echo "WARNING : We need to pull a big image for this simple test. This may take some time"

echo "Known issue : usual CUDA images are too big to run on Jetson Nano... need to use nvcr.io/nvidia/l4t-base:r32.2 as a base image"
docker pull nvcr.io/nvidia/l4t-base:r32.2
#docker pull tensorflow/tensorflow:latest-gpu-py3

