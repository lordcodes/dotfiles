#!/bin/zsh

source ~/.zsh/*

brewbackup()
config add ~/.macos-setup/Brewfile

npmbackup()
config add ~/.macos-setup/npm-packages.txt

pipbackup()
config add ~/.macos-setup/pip-packages.txt

config commit -m "Update installed packages"
config push -u origin master

echo "Packages synced!"
