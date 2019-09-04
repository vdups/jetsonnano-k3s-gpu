#!/bin/bash
echo "Patching default docker runtime"
sudo sed -i 's;^{;{\n    "default-runtime": "nvidia",;' /etc/docker/daemon.json
sudo systemctl restart docker

