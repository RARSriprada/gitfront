#!/bin/bash

# Update package list and install OpenJDK 11
echo "Installing OpenJDK..."
apt-get update
apt-get install -y openjdk-11-jdk

# Verify Java installation
java -version

# Install Maven
echo "Installing Maven..."
apt-get install -y maven

# Verify Maven installation
mvn -version

# Build the project
echo "Building the project with Maven..."
mvn clean package  # Adjust this if needed
