#!/usr/bin/env bash

echo
echo "------------------------"
echo "Installing homebrew"
echo "------------------------"
echo
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


echo
echo "------------------------"
echo "Installing user packages with yay"
echo "------------------------"
echo
brew bundle

echo
echo "------------------------"
echo "Installing vim-plug"
echo "------------------------"
echo
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
