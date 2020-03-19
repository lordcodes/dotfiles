#!/bin/zsh

echo "Installing Xcode command line tools…"
xcode-select --install

echo "Setting up Homebrew…"
source setup-brew

echo "Setting up Ruby…"
source setup-ruby

echo "Setup npm…"
source setup-npm

echo "Updating everything…"
updateall