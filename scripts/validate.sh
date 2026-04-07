#!/bin/bash
sleep 10  # Wait for container to fully start

# Check if container is running
if docker ps | grep webapp; then
  echo "Deployment validation SUCCESS"
  exit 0
else
  echo "Deployment validation FAILED"
  exit 1
fi
