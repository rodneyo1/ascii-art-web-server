#!/bin/bash

# Build the Docker image
docker image build -f dockerfile -t asciiartserver:latest .

# Run the Docker container in detached mode with port mapping
docker container run -p 8080:8080 --detach --name container1 asciiartserver 
