#!/bin/bash

# Stop old container (ignore error)
docker stop webapp || true
docker rm webapp || true

# Login to ECR (CORRECT WAY)
aws ecr get-login-password --region ap-south-1 \
| docker login --username AWS --password-stdin 654485376127.dkr.ecr.ap-south-1.amazonaws.com
