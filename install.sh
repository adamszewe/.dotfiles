

# copy the 

files=(
    bashrc 
    conkyrc 
    gitconfig 
    tmux.conf 
    vimrc 
    zshrc
)

for dotfile in $files
do
    echo "checking: $dotfile";
    if [ -L "~/.$dotfile" ] 
    then 
        echo "$dotfile already exists"
    else 
        if [-e  "~/.$dotfile" ]
        then 
            # backup the selected file
            mv "~/.$dotfile" 
        else 
            ln -s "/home/adam/.dotfiles/$dotfile" "/home/adam/.$dotfile"
        fi
    fi
done

