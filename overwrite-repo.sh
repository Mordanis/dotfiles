#!/bin/sh

# Vim section
git diff vimrc ~/.vimrc
echo "Do you want to overwrite .vimrc in the repo? y/n:"
read OVERWRITE_VIMRC
[ $OVERWRITE_VIMRC = "y" ] && cp ~/.vimrc vimrc || echo "skipping vimrc"


# NeoVim section
git diff config/nvim/init.vim ~/.config/nvim/init.vim
echo "Do you want to overwrite neovim init.vim in the repo? y/n:"
read OVERWRITE_NVIMRC
[ $OVERWRITE_NVIMRC = "y" ] && cp ~/.config/nvim/init.vim config/nvim/init.vim || echo "skipping init.vim"

# alacritty section
git diff config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
echo "Do you want to overwrite alacritty.yml in the repo? y/n:"
read OVERWRITE_ALACRITTY
[ $OVERWRITE_ALACRITTY = "y" ] && cp ~/.config/alacritty/alacritty.yml config/alacritty/alacritty.yml || echo "skipping alacritty.yml"

# standard.vim section
git diff config/nvim/colors/standard.vim ~/.config/nvim/colors/standard.vim
echo "Do you want to overwrite standard.vim in the repo? y/n:"
read OVERWRITE_STANDARD
[ $OVERWRITE_STANDARD = "y" ] && cp ~/.config/nvim/colors/standard.vim config/nvim/colors/standard.vim || echo "skipping standard.vim"

# zshrc section
git diff zshrc ~/.zshrc
echo "Do you want to overwrite .zshrc in the repo? y/n:"
read OVERWRITE_ZSHRC
[ $OVERWRITE_ZSHRC = "y" ] && cp ~/.zshrc zshrc || echo "skipping zshrc"
