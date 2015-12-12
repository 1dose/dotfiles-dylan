#!/bin/sh

# variable used to store actions to take after install script is done
remindVar="reminders:"
apt-get update  # To get the latest package lists

# install redshift (alternative to flux), turns screen to reddish at night (eases strain on eyes)
apt-get install redshift redshift-gtk -y
nohup gtk-redshift -l 43:-79 # setup for toronto, autorun in background using nohup, for new lat:long http://itouchmap.com/latlong.html
remindVar="$remindVar\n click redshift and add autostart functionality"

# install notepad++, text editor for notes (good autosave on crash feature)
add-apt-repository ppa:notepadqq-team/notepadqq -y
apt-get update
apt-get install notepadqq -y

# install tmux, splitting terminal horizontally/vertically
apt-get install tmux -y

# install gitter messaging up for developers, allows you to copy-paste code with syntax highlighting
apt-add-repository ppa:gurqn/systray-trusty -y
apt-get update
apt-get upgrade

# install gimp, paint/photoshop for ubuntu
apt-get gimp

# reminders for actions to take after install script is done
remindVar="$remindVar\n setup launcher-panel: notepad++, chrome, cmd, gitter"

remindVar="$remindVar\n google chrome, login for extensions"

# password management system
remindVar="$remindVar\n install lastpass"

# javascript IDE
remindVar="$remindVar\n get webstorm (see this shellscript file for instruction on JDK installation first, install vim plugin"
# install JDK for webstorm to work
#sudo add-apt-repository ppa:webupd8team/java
#sudo apt-get update
#sudo mkdir -p /usr/lib/mozilla/plugins #just in case, this will be added to the package in the next version
#sudo apt-get install oracle-jdk7-installer 
# also get webstorm, unpack, extract to a folder, then link webstorm/bin/webstorm.sh to bin

printf "$remindVar\n"

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
