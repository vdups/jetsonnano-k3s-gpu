#!/bin/bash

k3sVersion="latest"
k3sBinDir="${HOME}/k3s/release/${k3sVersion}"
k3skubectl="${k3sBinDir}/k3s-arm64 kubectl"

echo "Trying to connect to cluster"
sudo ${k3skubectl} cluster-info
echo
echo

echo "Getting default namespace resources (should be one service only)"
sudo ${k3skubectl} get all -o wide
echo
echo

echo "Getting all resources (should be ... dense)"
sudo ${k3skubectl} get all --all-namespaces -o wide
echo
echo

testName="dummy-web-test"

echo "Trying a dummy webserver deployment, scaling, loadbalanced with a service"
sudo ${k3skubectl} run ${testName} --image nginx --image-pull-policy IfNotPresent --replicas 2 --expose --port 80
echo
echo

echo "New resources have been requested, some won't be ready now"
sudo ${k3skubectl} get all
echo
echo

echo "This might take some time to download web server container image... sleeping 60 secs"
sleep 60
echo
echo

echo "Everything should be ready by now"
sudo ${k3skubectl} get all
echo
echo

echo "And service should have 2 endpoints (1 per container)"
sudo ${k3skubectl} describe svc/{testName}
echo
echo

echo "Deleting test... this might take a few seconds"
sudo ${k3skubectl} delete deploy/{testName} svc/{testName}
sudo ${k3skubectl} get all
echo
echo
sleep 15

sudo ${k3skubectl} get all

