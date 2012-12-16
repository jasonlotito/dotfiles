#!/bin/sh

# Cleans up the install

files = ( '~/.vimrc.old' '~/.bashrc.old' '~/.bash_profile.old' '~/.gitconfig.old' )
directories = ( '~/.git.old' )

for file in "${files[@]}"
do
  if [ -f $file ]; then
    rm $file
  fi
done

for directory in "${directories[@]}"
do
  if [ -d $directory ]; then
    rm -rf $directory
  fi
done
