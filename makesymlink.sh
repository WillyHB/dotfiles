#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
configdir=~/.config

config_files="nvim i3status i3 dunst tmux"    # list of files/folders to symlink in homedir
home_files=".bashrc bin .profile .Xresources"
##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir || exit
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $config_files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv $configdir/"$file" ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/"$file"/ $configdir/"$file"
done

for file in $home_files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/"$file" ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/"$file" ~/"$file"
done

#tmux source $dir/tmux/.tmux.conf
echo "done"
