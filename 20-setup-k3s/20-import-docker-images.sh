#!/bin/bash

k3sVersion="latest"
k3sBinDir="${HOME}/k3s/release/${k3sVersion}"

echo "Importing images into Docker cache..."
docker load -i ${k3sBinDir}/k3s-airgap-images-arm64.tar
docker images

