#!/bin/bash

# Check if the script is executed with root privileges
if [ "$EUID" -ne 0 ]; then
    echo "Error: This script must be run as root."
    exit 1
fi

# Check if the user 'ubuntu' already exists
if id "ubuntu" &>/dev/null; then
    echo "User 'ubuntu' already exists."
    exit 1
fi

# Create the user 'ubuntu'
useradd -m -s /bin/bash ubuntu

# Set a password for the user 'ubuntu' (change 'password' to your desired password)
echo "ubuntu:password" | chpasswd

# Provide feedback
echo "User 'ubuntu' has been created with the password 'password'."

# Optionally, you can add additional commands here to configure the user as needed.
