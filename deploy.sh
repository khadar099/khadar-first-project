#!/bin/bash

# Variables
IMAGE_NAME="khadar3099/$JOB_NAME:v1.$BUILD_ID" # Replace with your image name
CONTAINER_NAME="k8s-container" # Name for the container
PORT_MAPPING="9191:8080" # Port mapping (host:container)

# Pull the Docker image
echo "Pulling Docker image: $IMAGE_NAME..."
docker pull $IMAGE_NAME

# Check if the container is already running or exists
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Container '$CONTAINER_NAME' is already running."
else
    if [ "$(docker ps -aq -f status=exited -f name=$CONTAINER_NAME)" ]; then
        echo "Container '$CONTAINER_NAME' exists but is stopped. Removing it..."
        docker rm $CONTAINER_NAME
    fi
fi

# Run the Docker container
echo "Running container '$CONTAINER_NAME' from image '$IMAGE_NAME'..."
docker run --name $CONTAINER_NAME -p $PORT_MAPPING $IMAGE_NAME

echo "Container '$CONTAINER_NAME' is now running."
