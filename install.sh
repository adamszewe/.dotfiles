#!/usr/bin/bash

# the working directory is used to link the files
set -x
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
        echo "--- debug message ---"
        if [ -e  "~/.$dotfile" ]
        then
            mv "~/.$dotfile" "/tmp/$dotfile"
        fi
        ln -ns "$WORKING_DIRECTORY/config/$dotfile" "/home/adam/.$dotfile"
    fi
done
set +x
