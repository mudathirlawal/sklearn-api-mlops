#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="nigercode/sklearn-microservice-api"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker login
sudo docker tag $dockerpath:v1.0 $dockerpath:latest

# Step 3:
# Push image to a docker repository
sudo docker push $dockerpath:latest 

