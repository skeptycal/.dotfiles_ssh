#!/usr/bin/env bash

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

[ -n "$PS1" ] && source ~/.bash_profile
return
