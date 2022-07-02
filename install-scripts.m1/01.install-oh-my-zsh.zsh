#!/usr/bin/env zsh

echo "install oh my zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Using shell: $SHELL"

export ZSH_CUSTOM=${ZSH:-"$HOME/.oh-my-zsh"}/custom
echo "zsh custom: $ZSH_CUSTOM"

echo "cloning spaceship"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

# Symlink spaceship.zsh-theme to oh-my-zsh custom themes directory
echo "symlinking spaceship"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
