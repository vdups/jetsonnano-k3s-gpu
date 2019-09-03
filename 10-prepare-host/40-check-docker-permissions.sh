#!/bin/bash
echo "'docker images' should print an empty list of images"
docker images

echo "We'll now pull a simple image and then print non empty images list"
docker pull busybox:latest
#docker pull python:alpine
docker images
