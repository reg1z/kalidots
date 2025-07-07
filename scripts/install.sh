#!/bin/bash

sudo apt update
sudo apt install i3 autotiling rofi neovim tmux gum -y
sudo apt full-upgrade -y

# echo 'Would you like to full-upgrade all available packages?: '
# read input
#
# if [ $input = 'yes' ] || [ $input = 'y' ]; then
#   sudo apt full-upgrade -y
# fi

# directory setup
mkdir -p ~/.config

# shell(s) / aliases

# home
cp -fv ./.config/vim/.vimrc ~/.vimrc
cp -rfv ./.config/tmux/.tmux ~
cp -fv ./.config/tmux/.tmux.conf ~/.tmux.conf
cp

# .config
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
mkdir -p ~/.config/nvim
mkdir -p ~/.config/qutebrowser

cp -rfv ./.config/i3 ~/.config
cp -rfv ./.config/i3status ~/.config
cp -rfv ./.config/rofi ~/.config
cp -rfv ./.config/nvim ~/.config

echo 'Would you like to install QuteBrowser (via github) ?'
read input

if [ $input = 'yes' ] || [ $input = 'y' ]; then
  ./installQutebrowser.sh
fi

echo 'Fin.'
