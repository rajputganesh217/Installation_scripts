#!/bin/bash
set -e

sudo apt update -y
sudo apt install -y curl apt-transport-https virtualbox virtualbox-ext-pack

# Install Minikube (latest)
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64

echo "✅ Minikube installed successfully"
