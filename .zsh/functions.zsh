#!/bin/zsh

## Backup Homebrew installed packages, casks, fonts and MAS apps
function brewbackup() {
  echo "Backing up Brew packages, casks, fonts and MAS apps…"
  cwd=$(pwd)
  cd ~/.macos-setup
  brew bundle dump --force
  cd $cwd
}

## Restore Homebrew installed packages, casks, fonts and MAS apps
function brewrestore() {
  echo "Restoring Brew packages, casks, fonts and MAS apps…"
  cwd=$(pwd)
  cd ~/.macos-setup
  brew bundle
  cd $cwd
}

## cd into whatever is the forefront Finder window.
cdf() {
  cd "`osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'`"
}

## Sizes of directories
function dirsizes() { find . -maxdepth 1 -type d -mindepth 1 -exec du -hs {} \; }

## Determine size of a file or total size of a directory
function filesize() {
  if du -b /dev/null > /dev/null 2>&1; then
    local arg=-sbh
  else
    local arg=-sh
  fi
  if [[ -n "$@" ]]; then
    du $arg -- "$@"
  else
    du $arg .[^.]* *
  fi
}

## Git - List number of commits for each author in last month
function gitcommitslastmonth() {
  git shortlog --summary --since='1 month ago' | cat
}

## Git - See earliest commit in repository
function gitfirstcommitdate() {
  git log --date-order --format=%cI | tail -1 | cat
}

## mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

## Backup globally installed NPM packages
function npmbackup() {
  echo "Backing up global NPM packages…"
  cwd=$(pwd)
  cd ~/.macos-setup
  npm list --global --parseable --depth=0 | sed '1d' | awk '{gsub(/\/.*\//,"",$1); print}' > npm-packages.txt
  cd $cwd
}

## Restore globally install NPM packages from backed up file
function npmrestore() {
  echo "Restoring global NPM packages from backup…"
  cwd=$(pwd)
  cd ~/.macos-setup
  xargs npm install --global < npm-packages.txt
  cd $cwd
}

## Backup Python modules installed via pip
function pipbackup() {
  echo "Backing up Python pip modules…"
  cwd=$(pwd)
  cd ~/.macos-setup
  pip freeze > pip-packages.txt
  cd $cwd
}

## Restore Python modules via pip
function piprestore() {
  echo "Restoring Python pip modules from backup…"
  cwd=$(pwd)
  cd ~/.macos-setup
  pip install -r pip-packages.txt
  cd $cwd
}

## Get software updates, update Ruby gems, homebrew, homebrew casks, npm and npm packages
function updateall() {
  sudo softwareupdate -i -a

  brew update
  brew upgrade
  brew cask upgrade
  brew cleanup

  npm update npm -g
  npm update -g

  gem update --system
  sudo gem update

  pip install --upgrade setuptools
  pip install --upgrade pip
}
