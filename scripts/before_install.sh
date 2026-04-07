#!/bin/bash
# Stop and remove existing container
docker stop webapp || true
docker rm webapp || true

# Login to ECR
aws ecr get-login-password --region ap-south-1 | \
  docker login --username AWS --password-stdin \
  123456789.dkr.ecr.ap-south-1.amazonaws.com
