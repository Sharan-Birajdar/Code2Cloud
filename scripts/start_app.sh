#!/bin/bash
IMAGE_URI=$(cat /home/ubuntu/app/current_image.txt)

# Run the container (adjust port as needed)
docker run -d \
  --name webapp \
  --restart unless-stopped \
  -p 80:3000 \
  $IMAGE_URI

echo "Container started successfully"
