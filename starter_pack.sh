#!/bin/bash

###################
# This script will do that you can start working on 0s
###################

######### Variables
dir=~/work/dotfiles
self_file="starter_pack.sh"
########

cd $dir

# Create the symlinks for the files
for file in *; do
    if [ $file != $self_file ]; then
	echo "Creating symlink for $file"
        ln -s $dir/$file  ~/.$file 
    fi
done

######## First the first

install_zsh () {
# One time zsh is installed go for oh-my-zsh
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    # Clone oh-my-zsh repository from GitHub if it isn't present
    if [[ ! -d ~/.oh-my-zsh/ ]]; then
	echo "Cloning oh-my-zsh"
        git clone http://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    fi
    # Change the default shell to zsh
    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
	echo "Changing shell to zsh maybe you will need to restart"
        chsh -s $(which zsh)
    fi
else
    # If zsh wasn't installed, script will go for it
    sudo apt-get install zsh
    install_zsh
fi
}


# Install order
install_zsh
