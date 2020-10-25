#!/bin/sh

# Install fish and set it as login shell
sudo apt install fish -y
chsh -s $(which fish)

# Start tmux on login shell
echo "tmux" > ~/.config/fish/config.fish

# Clone config repo
git clone https://github.com/Alyei/configs.git 

# Move configs to proper location
cp configs/tmux.conf ~/.tmux.conf
cp configs/vimrc ~/.vimrc

# Install omf, move configs to folder and install plugins
curl -L https://get.oh-my.fish | fish
cp -r configs/omf ~/.config
omf install

echo "Done."
