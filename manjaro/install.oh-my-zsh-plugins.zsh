#!/usr/bin/env zsh
echo shell: $SHELL

ZSH_CUSTOM=$ZSH/custom
echo $ZSH_CUSTOM

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

# Symlink spaceship.zsh-theme to oh-my-zsh custom themes directory
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
