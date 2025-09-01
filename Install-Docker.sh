#!/bin/bash
set -e

# Update system
sudo apt update -y
sudo apt upgrade -y

# Install Docker
sudo apt install -y docker.io

# Add users to docker group
sudo usermod -aG docker jenkins || true
sudo usermod -aG docker ubuntu || true

# Restart Docker
sudo systemctl enable docker
sudo systemctl restart docker

# Permissions for Docker socket
sudo chmod 666 /var/run/docker.sock

echo "✅ Docker installed successfully"
