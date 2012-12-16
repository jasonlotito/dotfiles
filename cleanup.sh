#!/bin/sh

# Cleans up the install

files = ()
directories = ()

if [ ~f ~/.vimrc.old ]; then
  rm ~/.vimrc.old
fi

if [ ~f ~/.bashrc.old ]; then
  rm ~/.bashrc.old
fi

if [ ~f ~/.bash_profile.old ]; then
  rm ~/.bash_profile.old
fi

if [ ~f ~/.gitconfig.old ]; then
  rm ~/.gitconfig.old
fi

if [ ~d ~/.git.old ]; then
  rm -rf ~/.git.old
fi


