#!/bin/bash
echo "Stopping existing container (if running)..."
/usr/local/bin/docker stop python-app-container || true
/usr/local/bin/docker rm python-app-container || true

echo "Starting new container..."
/usr/local/bin/docker run -d --name python-app-container -p 5000:5000 python-app

echo "Deployment completed!"
