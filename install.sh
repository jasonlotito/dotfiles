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
