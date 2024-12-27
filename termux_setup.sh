#!/bin/bash

# Update and upgrade packages
echo "Updating and upgrading packages..."
pkg update && pkg upgrade -y

# Install necessary packages
echo "Installing proot-distro..."
pkg install proot-distro -y

# Install Ubuntu distribution
echo "Installing Ubuntu..."
proot-distro install ubuntu

# Start the Ubuntu distribution
echo "Starting Ubuntu..."
proot-distro login ubuntu
