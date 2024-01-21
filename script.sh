#!/bin/bash

# Stop and remove existing Docker containers
sudo docker-compose down

# Pull the latest images (if there is any)
sudo docker-compose pull

# Remove untagged images 
sudo docker image prune -f

# Restart the Docker Compose services
sudo docker-compose up -d
