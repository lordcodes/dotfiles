#!/bin/zsh

source ~/.zsh/*

brewbackup
npmbackup
pipbackup

config add ~/.macos-setup/*
config commit -m "Update installed packages"
config push -u origin master
