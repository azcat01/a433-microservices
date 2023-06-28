#!/bin/bash

# Build the image from current directory Dockerfile
docker build -t ghcr.io/azcat01/shipping-service:latest .

# Change the name of the image
docker tag azcat01/shipping-service:latest ghcr.io/azcat01/shipping-service:latest

# Login to the github package using Github Token
echo $CR_PAT | docker login ghcr.io -u azcat01 --password-stdin

# Push the image to github package
docker push ghcr.io/azcat01/shipping-service:latest
