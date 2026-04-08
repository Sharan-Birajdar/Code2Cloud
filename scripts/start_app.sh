#!/bin/bash

echo "Stopping old container..."

docker stop myapp || true
docker rm myapp || true

echo "Pulling latest image..."

docker pull 654485376127.dkr.ecr.ap-south-1.amazonaws.com/my-webapp:latest

echo "Starting new container..."

docker run -d -p 80:3000 --name myapp 654485376127.dkr.ecr.ap-south-1.amazonaws.com/my-webapp:latest
