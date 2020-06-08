#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=halaelwazery/project4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project4-udacity --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
echo "waiting for the pods to come alive! it takes time.."
sleep 30
kubectl port-forward project4-udacity 8000:80

