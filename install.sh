#!/bin/bash

# Installing base tools

# Check if arm64 or x86_64
if [[ `uname -m` == 'arm64' ]]; then
    echo 'Rosetta is required to install Microsoft Teams.\n Checking...'
    if [[ "`pkgutil --files com.apple.pkg.RosettaUpdateAuto`" == "" ]]
    then
        echo '=> Installing Rosetta'
        sudo softwareupdate --install-rosetta --agree-to-license
    else
        echo '=> Rosetta already installed'
    fi
fi

# Brew
which -s brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ========================
# | Install dependencies |
# ========================

# IDE
brew install --cask warp visual-studio-code

# Social Pro
# brew install --cask slack microsoft-teams

# Social Perso
brew install --cask signal discord

# Dev tools
brew install node

brew install --cask docker brave-browser raycast arc

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Utils
brew install --cask obsidian protonvpn
brew install gh gum bat eza bottom gnupg

# ===================
# | Configure Shell |
# ===================

# Github connect
if [ -z "$GH_TOKEN" ]; then
    GH_TOKEN=$(gum input --placeholder "Github token" --password)
fi
echo $GH_TOKEN | gh auth login --with-token

# Configure SSH
ssh-keygen -t ed25519 -C "me@valentin-thomas.com"

echo "Host github.com" > ~/.ssh/config
echo "  AddKeysToAgent yes" >> ~/.ssh/config
echo "  UseKeychain yes" >> ~/.ssh/config
echo "  IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config

# Configure GPG
gpg --full-generate-key
GPG_KEY=$(gpg --list-secret-keys --keyid-format=long | grep -E -o 'ed25519/[0-9A-F]{16}' | head -n 1 | cut -d'/' -f2)

GPG_PUBLIC=$(gpg --armor --export $GPG_KEY)

# Configure git
cp ./gitconfig ~/.gitconfig
git config --global user.signingkey $GPG_KEY
git config --global commit.gpgsign true

gh ssh-key add ~/.ssh/id_ed25519.pub
gh gpg-key add <(echo "$GPG_PUBLIC")

# Configure vim

cp ./vimrc ~/.vimrc
cp -r ./vim ~/.vim

vim +PlugInstall +qall

# As install is taking ownership of the shell
# We need to install Oh My Zsh after

# Shell Sub-configs

mkdir -p ~/.zsh

cp ./env.zsh ~/.zsh/env.zsh
echo "export GH_TOKEN=$GH_TOKEN" >> ~/.zsh/env.zsh

cp ./custom.zsh ~/.zsh/custom.zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "source ~/.zsh/env.zsh" >> ~/.zshrc
echo "source ~/.zsh/custom.zsh" >> ~/.zshrc
source ~/.zshrc
