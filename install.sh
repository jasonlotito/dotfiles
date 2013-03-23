#!/bin/sh
#
# install.sh
#
# Author: Jason Lotito <jasonlotito@gmail.com>

# First we want to cleanup previous installs
# They will get overwritten regardless
# ./cleanup.sh

# VIM
echo "Installing ~/.vimrc"

if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc.old
fi

if [ -d ~/.vim ]; then
  mv ~/.vim ~/.vim.old
fi

ln -s ~/bin/dotfiles/vimrc ~/.vimrc
ln -s ~/bin/dotfiles/vim ~/.vim

# BASH
echo "Installing ~/.bashrc"
echo "Installing ~/.bash_profile"

if [ -f ~/.bashrc ]; then
  mv ~/.bashrc ~/.bashrc.old
fi

if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile.old
fi

ln -s ~/bin/dotfiles/bashrc ~/.bashrc
ln -s ~/bin/dotfiles/bash_profile ~/.bash_profile

# GIT
echo "Installing ~/.gitconfig"
echo "Installing ~/.git"

if [ -f ~/.gitconfig ]; then
  mv ~/.gitconfig ~/.gitconfig.old
fi

if [[ -d ~/.git || -L ~/.git ]]; then
  if [ -L ~/.git ]; then
    mv ~/.git ~/.git.old
  else
    mv ~/.git ~/.git.old
  fi
fi

ln -s ~/bin/dotfiles/gitconfig ~/.gitconfig
ln -s ~/bin/dotfiles/git ~/.git

# REPO and REPOSYNC
echo "Installing repo via brew"
BREW_INSTALLED=1
brew install repo 2>/dev/null || { 
  echo >&2 "I require brew but it's not installed.  Aborting.";
  BREW_INSTALLED=0;

  read -n1 -p "Install brew? [y,N]: " installBrew

  case $installBrew in
    y|Y) echo "Installing brew." \
      && ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
      && brew install repo
      && BREW_INSTALLED=1;;
    *) echo "Not installing brew.";;
  esac
}

if [ $BREW_INSTALLED -eq 1 ]; then
  echo "Installing reposync into ~/bin"
  if [ ! -f ~/bin/reposync ]; then 
    ln -s ~/bin/dotfiles/reposync ~/bin/reposync
  fi
fi

# TMUX
echo "Installing tmux.conf"

if [ -f ~/.tmux.conf ]; then
  mv ~/.tmux.conf ~/.tmux.conf.old
fi

ln -s ~/bin/dotfiles/tmux.conf ~/.tmux.conf

# vcprompt
echo "Installing vcprompot"
curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt
chmod 755 ~/bin/vcprompt

# Datafiles
echo "Installing ~/bin/data/{activity_log,daily_photo}"
if [ ! -d ~/bin/data ]; then
  mkdir ~/bin/data
fi

if [ ! -d ~/bin/data/activity_log ]; then
  mkdir ~/bin/data/activity_log
fi

if [ ! -d ~/bin/data/daily_photo ]; then
  mkdir ~/bin/data/daily_photo
fi

echo "Installing submodules"
git submodule init && git submodule update

echo "Aliases being set inclue setting TERM to xterm-256color"

read -n1 -p "Install pip? Needs root. [y,N]: " doit
case $doit in
  y|Y) echo "" && echo "Installing pip" \
    && curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py \
    && sudo python get-pip.py;;
  *) echo "" && echo "Not installing";;
esac
