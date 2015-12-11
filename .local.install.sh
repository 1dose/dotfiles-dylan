#!/bin/sh
apt-get update  # To get the latest package lists

# install flux, turns screen to reddish at night (eases strain on eyes)
add-apt-repository ppa:kilian/f.lux
apt-get update  # Flux requires update
apt-get install fluxgui


# reminders for actions to take after install script is done
echo google chrome, login for extensions
echo install lastpass
echo setup flux from fluxgui, run fluxgui
echo get webstorm, install vim plugin

- !!python/unicode 'cscope'
- !!python/unicode 'ctags'

- !!python/unicode 'git'
- !!python/unicode 'node'
- !!python/unicode 'python'
'ruby'
- !!python/unicode 'tmux'
- !!python/unicode 'vim'
- !!python/unicode 'zsh'

    !!python/unicode 'dotfiles/.*': '~'
