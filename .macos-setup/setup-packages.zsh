#!/bin/zsh

echo "Installing Xcode command line tools…"
xcode-select --install

echo "Setting up Homebrew…"
source setup-brew.zsh

echo "Setting up Ruby…"
source setup-ruby.zsh

echo "Setting up npm…"
source setup-npm.zsh

echo "Setting up Python…"
source setup-python.zsh

echo "Updating everything…"
updateall()

echo "Packages setup!"
