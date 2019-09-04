#!/bin/bash

k3sVersion="latest"
k3sBinDir="${HOME}/k3s/release/${k3sVersion}"
# Get k3s release
k3sReleaseUrl="https://github.com/rancher/k3s/releases/${k3sVersion}/download/"
mkdir -p ${k3sBinDir}
cd ${k3sBinDir}

wget ${k3sReleaseUrl}/k3s-arm64
chmod +x ./k3s-arm64
wget ${k3sReleaseUrl}/k3s-airgap-images-arm64.tar
cd -


