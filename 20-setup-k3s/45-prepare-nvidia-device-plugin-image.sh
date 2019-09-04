#!/bin/bash

echo "This script is needed waiting for ARM64 container image general availability"
echo "But nvidia-device-plugin seems not to be working with K3s"
echo "See https://github.com/NVIDIA/k8s-device-plugin/issues/132"

git clone https://github.com/NVIDIA/k8s-device-plugin.git && cd k8s-device-plugin
git checkout 1.0.0-beta
ls -l Dockerfile 
cp -pr docker/ubuntu16.04/{amd64,arm64}
sed -i 's;amd64;arm64;g' docker/ubuntu16.04/arm64/Dockerfile 
vim docker/ubuntu16.04/arm64/Dockerfile
rm Dockerfile 
ln -s docker/ubuntu16.04/arm64/Dockerfile Dockerfile
docker build -t nvidia/k8s-device-plugin:1.0.0-beta .

