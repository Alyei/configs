#!/bin/sh
sudo apt install fish -y
chsh -s /usr/bin/fish
curl -L https://get.oh-my.fish | fish
echo "tmux" > ~/.config/fish/config.fish
git clone https://github.com/alyei/configs
cd configs
cp tmux.conf ~/.tmux.con
cp vimrc ~/.vimrc
mv omf/bundle ~/.config/omf/
mv omf/channel ~/.config/omf/
mv omf/theme ~/.config/theme
omf install
echo "Done."
