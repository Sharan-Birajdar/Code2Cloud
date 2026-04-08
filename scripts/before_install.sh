#!/bin/bash

# Install AWS CLI (force install every time - safe)
sudo apt update -y
sudo apt install awscli -y

# Stop old container
docker stop webapp || true
docker rm webapp || true

# Login to ECR (correct method)
aws ecr get-login-password --region ap-south-1 \
| docker login --username AWS --password-stdin 654485376127.dkr.ecr.ap-south-1.amazonaws.com
