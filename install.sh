#!/bin/sh

# Install packages
sudo apt install fish vim-gtk3 fzf fd-find ripgrep exa bat golang kali-grant-root -y

# Grand passwordless sudo
sudo dpkg-reconfigure kali-grant-root

# Set fish as login shell
chsh -s $(which fish)

# Add go/bin to user path
set -U fish_user_paths ~/go/bin $fish_user_paths

# Clone config repo
git clone https://github.com/Alyei/configs.git 

# Move configs to proper location
cp configs/tmux.conf ~/.tmux.conf
cp configs/vimrc ~/.vimrc
cp configs/config.fish ~/.config/

# Install omf, move configs to folder and install plugins
curl -L https://get.oh-my.fish | fish
cp -r configs/omf/ ~/.config
omf install

echo "Done."
