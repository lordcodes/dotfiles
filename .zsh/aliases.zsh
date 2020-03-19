#!/bin/zsh

## Setup dotfiles config
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles-config/ --work-tree=$HOME'

################################
######### COMMANDS #############
################################

## Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

## Empty the trash on all mounted volumes and the main disk, along with clearing Apple system logs
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

## Fix sound issues
alias fixsound="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`"

## List files
alias lsfull="ls -lF"
alias lsall="ls -laF"

## MacOS has no 'md5sum', so use 'md5' as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

## IP address
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

## Print each PATH entry on a separate line
alias printpath='echo -e ${PATH//:/\\n}'

## MacOS has no 'sha1sum', so use 'shasum' as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

## Get the week number
alias weeknum='date +%V'

################################
######### APPLICATIONS #########
################################

## Kill Apple simulators
alias killsimulators="sudo killall -9 com.apple.CoreSimulator.CoreSimulatorService"

## Xcode
alias rmxcodederiveddata="rm -rf ~/Library/Developer/Xcode/DerivedData/*"

################################
######### PACKAGES #############
################################

## Bundler
alias bex="bundle exec"

## List globally installed NPM packages
alias npmlistg="npm list -g --depth 0"

## Update Vim ultimate configuration
alias updateultimatevim='cd ~/.vim_runtime && git pull --rebase && cd -'

################################
