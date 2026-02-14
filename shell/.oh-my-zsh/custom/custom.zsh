
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
bindkey -s ^f "find_in_workspace\n"



# git helper functions
function git_main_branch() {
  command git rev-parse --git-dir &>/dev/null || return
  local ref
  for ref in refs/{heads,remotes/{origin,upstream}}/{main,trunk}; do
    if command git show-ref -q --verify $ref; then
      echo ${ref:t}
      return
    fi
  done
  echo master
}

function gch {
    if [ -z "$1" ]; then
        git branch --list | fzf | xargs git checkout
    else
        git checkout "$@"
    fi
}

function grd {
    current_branch=$(git rev-parse --abbrev-ref HEAD)
    git checkout develop
    git pull origin develop
    git checkout $current_branch
    git rebase develop
}

function grm {
    current_branch=$(git rev-parse --abbrev-ref HEAD)
    main_branch=$(git_main_branch)
    git checkout "$main_branch"
    git pull origin "$main_branch"
    git checkout "$current_branch"
    git rebase "$main_branch"
}
