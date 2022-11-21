#!/bin/bash

var="$(uname)"	#take the output of uname command and store it in var

if [[ "$var" != "Linux" ]] ; then #compare the two strings
	echo "FATAL: System is not Linux." >> linuxsetup.log #Append the error message to linuxsetup.log
	exit							#Exit the terminal
fi

mkdir -p ~/.TRASH	#create the directory .TRASH in home if it doesn't already exist

if [[ -f ~/.vimrc ]] ; then	#if home/.vimrc exists..
	mv ~/.vimrc ~/.bup_vimrc	#Rename the file
	echo "LOG: renamed ~/.vimrc to ~/.bup_vimrc" >> linuxsetup.log	#append the log message to linuxsetup.log
fi

cat etc/vimrc > ~/.vimrc	#output the contents of this directory's vimrc to a new .vimrc file in home

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
