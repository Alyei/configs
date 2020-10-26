#!/bin/sh

# Update repository
sudo apt update

# Install packages
sudo apt install fish vim-gtk3 fzf fd-find ripgrep exa bat golang kali-grant-root kitty -y

# Grant passwordless sudo
sudo dpkg-reconfigure kali-grant-root

# Set fish as login shell
chsh -s $(which fish)

# Add go/bin to user path
fish -c "set -U fish_user_paths ~/go/bin $fish_user_paths"

# Clone config repo
git clone https://github.com/Alyei/configs.git 

# Move configs to proper location
cp configs/tmux.conf ~/.tmux.conf
cp configs/vimrc ~/.vimrc
cp configs/config.fish ~/.config/fish

# Install vim plugins
vim +PluginInstall +qall

# Install omf, move configs to folder and install plugins
# Doing this last because it starts a new fish shell
cp -r configs/omf/ ~/.config
fish -c "curl -L https://get.oh-my.fish | fish"
