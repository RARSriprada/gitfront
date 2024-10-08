#!/bin/bash

# Update package list
echo "Updating package list..."
apt-get update

# Install OpenJDK 11
echo "Installing OpenJDK 11..."
apt-get install -y openjdk-11-jdk

# Install Maven
echo "Installing Maven..."
apt-get install -y maven

# Verify installations
echo "Verifying Java installation..."
java -version

echo "Verifying Maven installation..."
mvn -version

# Build the project
echo "Building the project with Maven..."
mvn clean package
