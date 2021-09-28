#!/usr/bin/env bash

echo
echo "------------------------"
echo "Installing yay"
echo "------------------------"
echo
pamac install yay --no-confirm

echo
echo "------------------------"
echo "Updating packages with yay"
echo "------------------------"
echo
yay

echo
echo "------------------------"
echo "Installing user packages with yay"
echo "------------------------"
echo
yay -S --noconfirm --needed - < pkglist.txt

echo
echo "------------------------"
echo "Installing vim-plug"
echo "------------------------"
echo
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

