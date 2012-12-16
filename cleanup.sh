#!/bin/sh

# Cleans up the install
echo "Cleaning up previous *.old files"
echo $HOME

# Files and Directories that need to be cleaned up
files=( '/.vimrc.old' '/.bashrc.old' '/.bash_profile.old' '/.gitconfig.old' )
directories=( '/.git.old' )

# Clean up all the files
for file in "${files[@]}"
do
  file="$HOME$file"
  if [ -f "$file" ]; then
    echo "Removing $file"
    rm $file
  fi
done

# Clean up all the directories
for directory in "${directories[@]}"
do
  directory="$HOME$directory"
  if [ -d "$directory" ]; then
    echo "Removing $directory"
    if [ -L "$directory" ]; then
      rm "$directory"
    else
      rm -rf "$directory"
    fi
  fi
done

# Anything special can be done here
