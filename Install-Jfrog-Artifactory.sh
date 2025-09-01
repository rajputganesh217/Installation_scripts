#!/bin/bash
set -e

# Update
sudo apt update -y

# Download latest JFrog Artifactory OSS
cd /opt
wget https://releases.jfrog.io/artifactory/artifactory-pro/org/artifactory/oss/jfrog-artifactory-oss-7.77.9/jfrog-artifactory-oss-7.77.9-linux.tar.gz

# Extract & run
tar -xvzf jfrog-artifactory-oss-7.77.9-linux.tar.gz
cd artifactory-oss-7.77.9/app/bin/
./artifactory.sh start

echo "✅ Artifactory OSS installed and started"
