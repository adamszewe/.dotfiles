#!/usr/bin/bash

# copy the 

whoami

for dotfile in `ls -1 config`
do
    echo "checking: $dotfile";
    if [ -h "~/.$dotfile" ] 
    then 
        echo "$dotfile already exists - but we update it to be double sure" 
        rm "~/.$dotfile"
        ln -s "/home/adam/.dotfiles/config/$dotfile" "/home/adam/.$dotfile"
    else 
        echo "the symbolic link $dotfile does not exist\n"
        if [ -e  "~/.$dotfile" ]
        then 
            # backup the selected file
            mv "~/.$dotfile" "/tmp/$dotfile" 
        else 
            echo
            echo "removing ~/.$dotfile"
            rm "/home/adam/.$dotfile"
            ln -s "/home/adam/.dotfiles/config/$dotfile" "/home/adam/.$dotfile"
        fi
    fi
done

