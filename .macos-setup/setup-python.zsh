#!/bin/zsh

echo "Ensure setuptools is up-to-date…"
pip install --upgrade setuptools

echo "Ensure pip is up-to-date…"
pip install --upgrade pip

echo "Installing Python pip modules…"
piprestore()

echo "Python setup!"
