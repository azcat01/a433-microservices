#!/bin/bash

# Build the image from current directory Dockerfile
docker build -t item-image:v1 .

# List all of the docker images
docker images

# Change the name of the image
docker tag item-image:v1 ghcr.io/azcat01/item-image:v1

# Login to the github package using Github Token
echo $CR_PAT | docker login ghcr.io -u azcat01 --password-stdin

# Push the image to github package
docker push ghcr.io/azcat01/item-image:v1
