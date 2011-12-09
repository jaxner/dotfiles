#!/bin/bash

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Source all regular files in .bashrc.d/
if [ -d ~/.bashrc.d ]; then
    for file in ~/.bashrc.d/*.sh; do
	if [ -f "$file" ]; then
	    source "$file"
	fi
    done
fi
