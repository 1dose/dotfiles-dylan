#!/bin/sh
apt-get update  # To get the latest package lists

# install redshift (alternative to flux), turns screen to reddish at night (eases strain on eyes)
gtk-redshift -l 43:-79 #setup for toronto, for new lat:long http://itouchmap.com/latlong.html


add-apt-repository ppa:kilian/f.lux
apt-get update  # Flux requires update
apt-get install fluxgui

# install notepad++, text editor for notes (good autosave on crash feature)
add-apt-repository ppa:notepadqq-team/notepadqq
apt-get update
apt-get install notepadqq

# install guake, desktop environment for moving windows around the screen and acessing terminal quickly
apt-get install guake

# fix schema error found on ubuntu 14.4 - guake
mkdir /etc/gconf/schemas
cd /etc/gconf/schemas/
ln -s /usr/share/gconf/schemas/guake.schemas
# fix warning found on ubuntu 14.4 - guake
apt-get install --reinstall gtk2-engines





cp /usr/share/applications/guake.desktop /etc/xdg/autostart/ # allow guake to auto-start on login

# reminders for actions to take after install script is done
echo setup launcher-panel: notepad++, chrome, cmd, gitter,
echo click redshift and add autostart functionality
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
