if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.bashrc.local ]; then
  . ~/.bashrc.local
fi

. ~/bin/dotfiles/bash/env
. ~/bin/dotfiles/bash/config
. ~/bin/dotfiles/bash/aliases
