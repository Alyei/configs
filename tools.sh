#!/bin/sh

# Install go and add go/bin to user path
sudo apt install golang -y
set -U fish_user_paths ~/go/bin $fish_user_paths

# Install gobuster
go get github.com/OJ/gobuster

echo "Done."
