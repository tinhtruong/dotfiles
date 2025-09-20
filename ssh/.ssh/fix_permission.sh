#!/bin/sh
#
# Fixes permissions on the current user's .ssh directory

# Set directory permissions for .ssh directory itself
chmod 700 ~/.ssh

# Set permissions for all directories inside .ssh
find ~/.ssh/ -type d -exec chmod 700 {} +

# Set permissions for all files inside .ssh
find ~/.ssh/ -type f -exec chmod 600 {} +

# Relax permissions for public keys
find ~/.ssh/ -name "*.pub" -exec chmod 644 {} +

# Relax permissions for known_hosts
chmod 644 ~/.ssh/known_hosts

# Make the script executable
find ~/.ssh/ -name "*.sh" -exec chmod 744 {} +
