#!/bin/bash

# Fix PATH for CodeDeploy environment
export PATH=$PATH:/usr/local/bin:/usr/bin

# Debug (optional but useful)
which aws
aws --version

# Stop old container
docker stop webapp || true
docker rm webapp || true

# Login to ECR (use FULL PATH)
/usr/local/bin/aws ecr get-login-password --region ap-south-1 \
| docker login --username AWS --password-stdin 654485376127.dkr.ecr.ap-south-1.amazonaws.com
