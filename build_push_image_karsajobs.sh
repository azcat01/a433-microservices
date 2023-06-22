#!/bin/bash

docker build -t azcat01/karsajobs:latest .

docker tag azcat01/karsajobs:latest ghcr.io/azcat01/karsajobs:latest

echo $CR_PAT | docker login ghcr.io -u azcat01 --password-stdin

docker push ghcr.io/azcat01/karsajobs:latest
