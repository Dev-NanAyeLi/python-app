#!/bin/bash
echo "Stopping existing container (if running)..."
docker stop python-app-container || true
docker rm python-app-container || true

echo "Starting new container..."
docker run -d --name python-app-container -p 5000:5000 python-app

echo "Deployment completed!"
