#!/bin/sh

# variable used to store actions to take after install script is done
remindVar="reminders:"
apt-get update  # To get the latest package lists

# GNOME, GUI for 
apt-get install gnome-session-fallback -y
remindVar="$remindVar\n gnome: install a theme. I use XGnome enhanced, remember to set gnome as default when you login"

# gdm, display manager works well with GNOME, allows to set default gnome as GUI shell
apt-get install gdm -y
remindVar="$remindVar\n gdm: run command 'sudo dpkg-reconfigure gdm' and select gnome as default"

# htop 
apt-get install htop -y

# un-rar files
apt-get install unrar

# redshift (alternative to flux), turns screen to reddish at night (eases strain on eyes)
apt-get install redshift redshift-gtk -y
nohup gtk-redshift -l 43:-79 # setup for toronto, autorun in background using nohup, for new lat:long http://itouchmap.com/latlong.html
remindVar="$remindVar\n click redshift and add autostart functionality"

# notepad++, text editor for notes (good autosave on crash feature)
add-apt-repository ppa:notepadqq-team/notepadqq -y
apt-get update
apt-get install notepadqq -y

# tmux, splitting terminal horizontally/vertically
apt-get install tmux -y

# gitter messaging up for developers, allows you to copy-paste code with syntax highlighting
remindVar="$remindVar\n gitter for messaging"
#apt-add-repository ppa:gurqn/systray-trusty -y
#apt-get update
#apt-get upgrade

# gimp, paint/photoshop for ubuntu
apt-get gimp

# git version control
apt-get install git

# nodejs, npm, and then link them to bin. Used to develop node apps
apt-get install nodejs
apt-get install npm
ln -s /usr/bin/nodejs /usr/bin/node

# reminders for actions to take after install script is done
remindVar="$remindVar\n setup launcher-panel: notepad++, chrome, cmd, gitter"

remindVar="$remindVar\n google chrome, login for extensions"

remindVar="$remindVar\n check if python is installed (was pre-installed on ubuntu 14.4)"

# password management system
remindVar="$remindVar\n install lastpass"

# javascript IDE
remindVar="$remindVar\n get webstorm (see this shellscript file for instruction on JDK installation first, install vim plugin"

# get anki, powerful memorization software
remindVar="$remindVar\n download and install anki"


# install JDK for webstorm to work
#sudo add-apt-repository ppa:webupd8team/java
#sudo apt-get update
#sudo mkdir -p /usr/lib/mozilla/plugins #just in case, this will be added to the package in the next version
#sudo apt-get install oracle-jdk7-installer 
# also get webstorm, unpack, extract to a folder, then link webstorm/bin/webstorm.sh to bin

printf "$remindVar\n"

- !!python/unicode 'python'

- !!python/unicode 'vim'
- !!python/unicode 'zsh'

    !!python/unicode 'dotfiles/.*': '~'
