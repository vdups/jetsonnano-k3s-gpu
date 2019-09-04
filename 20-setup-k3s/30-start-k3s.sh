#!/bin/bash

k3sVersion="latest"
k3sBinDir="${HOME}/k3s/release/${k3sVersion}"

sudo ${k3sBinDir}/k3s-arm64 server --docker

