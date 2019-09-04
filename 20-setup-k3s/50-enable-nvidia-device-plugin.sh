#!/bin/bash

k3sVersion="latest"
k3sBinDir="${HOME}/k3s/release/${k3sVersion}"
k3skubectl="${k3sBinDir}/k3s-arm64 kubectl"

nvidiaDPlURL="https://raw.githubusercontent.com/NVIDIA/k8s-device-plugin/1.0.0-beta/nvidia-device-plugin.yml"
dplFile="/tmp/nvidia-device-plugin.yaml"

echo "Standard k3s installation does not list gpu capacities"
sudo ${k3skubectl} describe nodes | grep -A6 Capacity
echo
echo

echo "Getting device plugin from Nvidia"
wget -O ${dplFile} ${nvidiaDPlURL}

echo "Patching file with k3s path"
lastLine="tail -n 1 ${dplFile}"
sudo sed -i 's;path: /var/lib/kubelet/;path: /var/lib/rancher/agent/kubelet/;' ${dplFile}
echo

echo "Getting container image"
containerImage=`grep image: ${dplFile} | awk '{ print $3 }'`
docker pull ${containerImage}
echo
echo

echo "DOES NOT WORK ! No image available for this architecture :( Please Help us Nvidia !"

#echo "Applying nvidia-device-plugin"
#sudo ${k3skubectl} apply -f ${dplFile}


