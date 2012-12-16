#!/bin/sh

# VIM
mv ~/.vimrc ~/.vimrc.old
ln -s ~/bin/dotfiles/vimrc ~/.vimrc

# BASH
mv ~/.bashrc ~/.bashrc.old
mv ~/.bash_profile ~/.bash_profile.old
ln -s ~/bin/dotfiles/bashrc ~/.bashrc
ln -s ~/bin/dotfiles/bash_profile ~/.bash_profile

# GIT
mv ~/.gitconfig ~/.gitconfig.old
mv ~/.git ~/.git.old
ln -s ~/bin/dotfiles/gitconfig ~/.gitconfig
ln -s ~/bin/dotfiles/git ~/.git

# vcprompt
curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt
chmod 755 ~/bin/vcprompt
