#!/usr/bin/env bash
# -*- coding: utf-8 -*-
#* #############################################################################
#* ### Set Options
#* #############################################################################
# BASH_SOURCE=${(%):-%N} # to ease the transition to zsh
# http://zsh.sourceforge.net/

# use root defaults since they match web server defaults
umask 022

# Remove all aliases from random unexpected places
unalias -a

# Set/unset  shell options
setopt   notify globdots correct pushdtohome cdablevars autolist
setopt   correctall autocd recexact longlistjobs
setopt   autoresume histignoredups pushdsilent noclobber
setopt   autopushd pushdminus extendedglob rcquotes mailwarning
unsetopt bgnice autoparamslash

#* #############################################################################
#* ### Troubleshooting
#* #############################################################################
#?      set to 1 for verbose testing ; remove -r to allow each script to set it
declare -i SET_DEBUG=0
export SET_DEBUG
#?      log errors to text file; only functional if $SET_DEBUG=1
# if [[ $SET_DEBUG == 1 ]]; then
#     #? turn on debug logging
#     export DEBUG_LOG=0
#     #? log file for debug logs
#     export debug_log_file="${HOME}/.bash_profile_error.log"
#     #? max filesize for debug_log_file
#     export debug_log_max_size=32768
# fi

#* #############################################################################
#* ### Path Info
#* #############################################################################
export SOURCE_PATH="${HOME}/.dotfiles"
source "${SOURCE_PATH}/.path"
# if type brew &>/dev/null; then
#   FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
# fi

#* #############################################################################
#* ### Load Profile settings
#* #############################################################################
source "${SOURCE_PATH}/ssm"
source "${SOURCE_PATH}/.aliases"
source "${SOURCE_PATH}/.exports"
source "${SOURCE_PATH}/.theme"
source "${SOURCE_PATH}/.functions"
source "${SOURCE_PATH}/.extra"
source "${SOURCE_PATH}/.git_alias" # already included

