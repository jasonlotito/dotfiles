#!/bin/sh

# VIM
if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc.old
fi

ln -s ~/bin/dotfiles/vimrc ~/.vimrc

# BASH
if [ -f ~/.bashrc ]; then
  mv ~/.bashrc ~/.bashrc.old
fi

if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile.old
fi

ln -s ~/bin/dotfiles/bashrc ~/.bashrc
ln -s ~/bin/dotfiles/bash_profile ~/.bash_profile

# GIT
if [ -f ~/.gitconfig ]; then
  mv ~/.gitconfig ~/.gitconfig.old
fi

if [ -d ~/.git ]; then
  mv ~/.git ~/.git.old
fi

ln -s ~/bin/dotfiles/gitconfig ~/.gitconfig
ln -s ~/bin/dotfiles/git ~/.git

# TMUX
if [ -f ~/.tmux.conf ]; then
  mv ~/.tmux.conf ~/.tmux.conf.old
fi

ln -s ~/bin/dotfiles/tmux.conf ~/.tmux.conf

# vcprompt
curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt
chmod 755 ~/bin/vcprompt
