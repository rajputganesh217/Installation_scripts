#!/bin/bash
set -e

sudo apt update -y
sudo apt install -y unzip curl

# Install AWS CLI v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip aws

aws --version
echo "✅ AWS CLI installed successfully"
