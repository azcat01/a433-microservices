#!/bin/bash

docker build -t azcat01/karsajobs:latest . # build Dockerfile

docker tag azcat01/karsajobs:latest ghcr.io/azcat01/karsajobs:latest # change the image's name

echo $CR_PAT | docker login ghcr.io -u azcat01 --password-stdin # login to github with token

docker push ghcr.io/azcat01/karsajobs:latest # push the image to github packages
