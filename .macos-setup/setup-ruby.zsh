#!/bin/zsh

echo "Installing Ruby gems…"
RUBY_GEMS=(
    bundler
)
sudo gem install ${RUBY_GEMS[@]}
