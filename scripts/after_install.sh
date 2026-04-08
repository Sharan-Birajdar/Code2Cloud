#!/bin/bash
# Pull latest image from ECR
IMAGE_URI=$(cat /home/ubuntu/my-webapp/imageDetail.json | python3 -c "import sys,json; print(json.load(sys.stdin)['ImageURI'])")
echo "Pulling image: $IMAGE_URI"
docker pull $IMAGE_URI
echo $IMAGE_URI > /home/ubuntu/my-webapp/current_image.txt
