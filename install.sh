#!/bin/sh

# Update repository
sudo apt update

# Install packages
sudo apt install fish vim-gtk3 fzf fd-find ripgrep exa bat golang kali-grant-root kitty -y

# Grant passwordless sudo
sudo dpkg-reconfigure kali-grant-root

# Set fish as default shell
echo "[+] Setting fish as default shell"
sudo chsh -s $(which fish) $USER

# Add go/bin to user path
echo "[+] Adding ~/go/bin to PATH"
fish -c "set -U fish_user_paths ~/go/bin $fish_user_paths"

# Add .local/bin to user path (pip3 installs)
echo "[+] Adding ~/.local/bin to PATH"
fish -c "set -U fish_user_paths ~/.local/bin $fish_user_paths"

# Move configs to proper location
echo "[+] Moving tmux config"
cp ./tmux.conf ~/.tmux.conf
echo "[+] Moving vimrc"
cp ./vimrc ~/.vimrc
echo "[+] Moving fish config"
cp ./config.fish ~/.config/fish/
echo "[+] Moving fisher config"
cp ./fishfile ~/.config/fish/

# Installing fisher and plugins
echo "[+] Installing fisher"
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
echo "[+] Installing fish plugins"
fish -c "fisher"

# Setting alias for z to j
echo "[+] Setting z alias to j"
fish -c 'set -U Z_CMD "j"'

# Install vim plugins
echo "[+] Installing vim plugins"
vim +PluginInstall +qall

# Running tools.sh
echo "[+] Installing tools"
sh tools.sh
