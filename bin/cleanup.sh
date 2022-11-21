#!/bin/bash

rm -fr ~/.vimrc	#Removes the .vimrc directory in home
sed 's:source ~/.dotfiles/bashrc_custom::' ~/.bashrc	#Deletes the specified line in the bashrc file
rm -fr  ~/.TRASH	#Removes the .TRASH directory in home
