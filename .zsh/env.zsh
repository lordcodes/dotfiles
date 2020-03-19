#!/bin/zsh

## Language environment
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8

## Environment variables
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=~/Library/Android/sdk
export XCODE_INSTALL_USER=andrew.lord@getbusy.com

## Plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Bash completion scripts
autoload -U +X bashcompinit && bashcompinit

## Prompt
autoload -U promptinit; promptinit
prompt pure

## Ruby
eval "$(rbenv init -)"

## autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
