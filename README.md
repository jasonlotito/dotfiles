# dotfiles

Everyone has dotfile these days.  I have mine as well.

## Install
<code>
$ ./install.sh
</code>

This will install.  It makes a few assumptions.  You'll have a ~/bin directory, and that you install 
this repo to dotfiles.  It will do it's best to back up anything you have in any file it plans to change 
before hand. Files and directories are renamed with the suffix ".old".

## Cleanup
<code>
$ ./cleanup.sh
</code>

This will cleanup (delete) all the files we moved in the install.sh file.  Be warned!
