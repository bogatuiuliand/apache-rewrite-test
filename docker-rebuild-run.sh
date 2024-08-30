#!/bin/bash

# Set your container and image names
CONTAINER_NAME="apache-rewrite-test"
IMAGE_NAME="apache-rewrite-test"

# Function to print messages
print_message() {
  echo ">>> $1"
}

# Stop and remove the running container
print_message "Stopping and removing container '$CONTAINER_NAME'..."
docker kill "$CONTAINER_NAME" 2>/dev/null || true
docker rm "$CONTAINER_NAME" 2>/dev/null || true

# Remove unused containers
print_message "Pruning unused containers..."
docker container prune -f

# Build the Docker image
print_message "Building Docker image '$IMAGE_NAME'..."
docker build -t "$IMAGE_NAME" .

# Run the Docker container
print_message "Running Docker container '$CONTAINER_NAME'..."
docker run -d --name "$CONTAINER_NAME" -p 8080:80 "$IMAGE_NAME"

print_message "Done."

