
function webp2jpg {
    if ! type -P "convert" &> /dev/null; then
      echo "Error: `convert` not found on this system."
    else
      if [ -z "$1" ]; then
          for webp in ./*.webp
          do
              image_name=$(basename $webp .webp)
              convert "$webp" "$image_name.jpg"
              rm "$webp"
          done
      else
          image_name=$(basename $@ .webp)
          convert "$@" "$image_name.jpg"
          rm "$@"
      fi
    fi
}

# generic aliases
alias ll='ls -l'
alias gr="./gradlew"
alias v="vim"
alias ip3='ipython3'
alias wsp="cd ~/Documents/workspace/"

function find_in_workspace {
    found_item=$(find ~/Documents ~/ ~/Documents/workspace -maxdepth 2 -mindepth 1 -type d 2> /dev/null | fzf)
    if [ -z "$found_item" ]; then
        # do nothing, remain silent, be quiet for several days
    else
        echo "opening the directory: $found_item"
        cd "$found_item"
    fi
    clear
}

function open_project_in_ide {
    found_item=$(find ~/Documents ~/ ~/Documents/workspace -maxdepth 2 -mindepth 1 -type d 2> /dev/null | fzf)
    if [ -z "$found_item" ]; then
        # do nothing, remain silent, be quiet for several days
    else
        JETBRAINS_SCRIPTS_DIR="$HOME/.jetbrains-toolbox-ide-scripts"
        if [ -d "$JETBRAINS_SCRIPTS_DIR" ]; then
            script_names=($(ls -1 "$JETBRAINS_SCRIPTS_DIR"))
            for script_name in ${script_names[@]} ; do
              if [[ "$found_item" =~ "$script_name/" ]]; then
                echo "opening with: $script_name, project: $found_item"
                $script_name "$found_item"
                break
              fi
            done
            # todo: in case a script is not found to matched right away to open the project, then ask for which ide should be used for opening it
        else
            echo "jetbrains scripts directory does not exist, exiting without opening a project"
        fi

    fi
}

# key bindings
bindkey -s ^f "find_in_workspace\n"
bindkey -s ^o "open_project_in_ide\n"
