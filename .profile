# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes user's private sbin if it exists
if [ -d "/usr/sbin" ] ; then
    PATH="/usr/sbin:$PATH"
fi

# set PATH so it includes user's aliases file, if exists
if [ -e "$HOME/.bash_aliases" ] ; then
    source $HOME/.bash_aliases
fi

# set PATH so it includes user's Bash functions, if exists
if [ -e "$HOME/.bash_functions" ] ; then
    source $HOME/.bash_functions
fi

# Reload WiFi firmware module (required on Thinkpads for some reason)
# sudo modprobe -r iwlwifi; sudo modprobe iwlwifi

##
# Your previous /Users/piotrm/.profile file was backed up as /Users/piotrm/.profile.macports-saved_2025-01-23_at_13:52:13
##

# MacPorts Installer addition on 2025-01-23_at_13:52:13: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

