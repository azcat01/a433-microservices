#!/bin/bash

# not so different from karsajobs backend
docker build -t azcat01/karsajobs-ui:latest .

docker tag azcat01/karsajobs-ui:latest ghcr.io/azcat01/karsajobs-ui:latest

echo $CR_PAT | docker login ghcr.io -u azcat01 --password-stdin

docker push ghcr.io/azcat01/karsajobs-ui:latest
