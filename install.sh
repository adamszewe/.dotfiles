#!/usr/bin/bash

# the working directory is used to link the files
WORKING_DIRECTORY=`pwd`


for dotfile in `ls -1 config`
do
    # check whether this file is a link
    echo "checking: $dotfile";
    if [ -h "~/.$dotfile" ] 

    then 
        rm "~/.$dotfile"
        ln -s "$WORKING_DIRECTORY/config/$dotfile" "~/.$dotfile"
        echo "Updated the existing link: $dotfile"

    else 
        if [ -e  "~/.$dotfile" ]
        then 
            # backup the selected file
            mv "~/.$dotfile" "/tmp/$dotfile" 
        else 
            ln -s "$WORKING_DIRECTORY/config/$dotfile" "~/.$dotfile"
        fi
    fi
done

