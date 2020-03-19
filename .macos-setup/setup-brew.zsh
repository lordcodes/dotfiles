#!/bin/zsh

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing Homebrew…"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating homebrew recipes…"
brew update

# Create a writable /usr/local/sbin directory for use by certain packages
echo "Ensuring /usr/local/sbin exists and is writable…"
if [ ! -d /usr/local/sbin ]; then 
    sudo mkdir /usr/local/sbin; 
fi
sudo chmod 777 /usr/local/sbin

echo "Installing Homebrew Bundle…"
brew tap Homebrew/bundle

echo "Installing Homebrew packages, casks, fonts and Mac App Store apps…"
brewrestore()

echo "Brew cleaning up…"
brew cleanup

echo "Brew setup!"
