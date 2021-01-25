#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
DOCKERUSER=rocky20
TAG=latest
DOCKERPATH=$DOCKERUSER/$TAG

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $TAG --image=$DOCKERPATH

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $TAG 8000:80
