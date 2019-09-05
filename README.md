# jetsonnano-k3s-gpu
My notes setting up a K3s Kubernetes cluster on my Nvidia Jetson Nano

Initial goal was to write a simple step by step tutorial on how to bootstrap a mini GPU-powered Kubernetes cluster on Nvidia Jetson Nano(s) using K3s, then have a sample image recognition application that would be trained elsewhere and executed on then deployed on the Nanos cluster.

WARNING : does not work as of 4th of September 2019 (missing docker image for nvidia-device-plugin, see issue 132 on their Github repo : https://github.com/NVIDIA/k8s-device-plugin/issues/132)
