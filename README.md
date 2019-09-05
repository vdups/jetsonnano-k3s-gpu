# jetsonnano-k3s-gpu
My notes setting up a K3s Kubernetes cluster on my Nvidia Jetson Nano

Initial goal was to write a simple step by step tutorial on how to bootstrap a mini GPU-powered Kubernetes cluster on Nvidia Jetson Nano(s) using K3s, then have a sample image recognition application that would be trained elsewhere and executed on then deployed on the Nano cluster, using power of Kubernetes to instanciate some already packaged services.
Then extend the cluster to several Jetson Nanos and simple Raspberries and see how a small ARM64 cluster with several GPUs would work.

WARNING : does not work as of 4th of September 2019 (missing docker image for nvidia-device-plugin, see issue 132 on their Github repo : https://github.com/NVIDIA/k8s-device-plugin/issues/132)

How to use the notes ? Start from a newly flashed Jetson Nano SD card with image downloaded after July 2019, then execute the scripts in alphabetical order (everything from directory 10, then everything from directory 20...)
