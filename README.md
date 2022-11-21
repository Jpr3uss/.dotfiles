# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.

# Makefile
Handles installing the .vimrc and .bashrc files,

## linux
"make linux" or "make" will install them on a linux system. Runs clean as a prerequisite.

## clean
"make clean" will delete all the changes that the makefile makes.

# Bash scripts

## linux.sh
Handles installing on Linux systems. 

First it will create a directory called .TRASH in home

then, it will check if there is already a .vimrc file in the home directory, if so, then it will rename it to .bup\_vimrc 

it will then make a new file, ~/.vimrc and fill it with the contents of ./.vimrc

finally, it will add the line "source ~/.dotfiles/etc/bashrc\_custom" to ~/.bashrc

logs will be written to the file linuxsetup.log

## cleanup.sh
Cleans up after linux.sh

removes ~/.vimrc

removes the added line in ~/.bashrc

removes ~/.TRASH
