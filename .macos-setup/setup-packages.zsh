#!/bin/zsh

echo "Installing Xcode command line tools…"
xcode-select --install

echo "Setting up Homebrew…"
source setup-brew

echo "Setting up Ruby…"
source setup-ruby

echo "Setting up npm…"
source setup-npm

echo "Setting up Python…"
source setup-python

echo "Updating everything…"
updateall
