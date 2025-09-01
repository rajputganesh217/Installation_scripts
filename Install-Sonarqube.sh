#!/bin/bash
set -e

sudo apt update -y
sudo apt install -y unzip openjdk-17-jre wget

# Create SonarQube user
sudo adduser --system --no-create-home --group sonarqube

# Download SonarQube (LTS)
cd /opt
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.5.1.90531.zip
unzip sonarqube-10.5.1.90531.zip
sudo chown -R sonarqube:sonarqube sonarqube-10.5.1.90531

# Start SonarQube
cd sonarqube-10.5.1.90531/bin/linux-x86-64/
./sonar.sh start

echo "✅ SonarQube installed and started"
