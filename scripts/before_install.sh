#!/bin/bash

export PATH=$PATH:/usr/bin

sudo apt update -y
sudo apt install awscli -y

docker stop webapp || true
docker rm webapp || true

aws ecr get-login-password --region ap-south-1 \
| docker login --username AWS --password-stdin 654485376127.dkr.ecr.ap-south-1.amazonaws.com
