#!/bin/bash
# run 'chmod +x setup.sh' to make this script executable

# Ensure the script is run with sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Update package list and install fzf and tldr
apt update
apt upgrade -y
apt autoremove
apt install -y fzf tldr

# Copy files out that are also in the git repo this files comes from
cp .bashrc ~/.bashrc
cp .bash_aliases ~/.bash_aliases
cp inputrc /etc/inputrc

echo "Linus Initial Setup Complete"
