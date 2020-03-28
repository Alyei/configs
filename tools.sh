#!/bin/sh
sudo apt install golang
set -U $fish_user_paths ~/go/bin $fish_user_paths
go get github.com/OJ/gobuster
echo "Done."