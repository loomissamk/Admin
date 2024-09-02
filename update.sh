#!/bin/bash

# Update and upgrade APT packages
sudo apt-get update -y && sudo apt-get upgrade -y

# Fix broken dependencies, if any
sudo dpkg --configure -a
sudo apt-get install -f -y

# Remove unnecessary packages
sudo apt-get autoremove -y
sudo apt-get autoclean -y

# Update and refresh Snap packages
sudo snap refresh

# Update Flatpak repositories
flatpak update -y

# Cleanup unnecessary Flatpak runtimes
flatpak uninstall --unused -y

echo "System update and cleanup completed."
