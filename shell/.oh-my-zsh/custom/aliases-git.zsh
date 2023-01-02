# Git configuration
export GIT_PAGER="less -F -X"
export GIT_EDITOR=vim

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

alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gapa='git add --patch'
alias gb='git branch'
alias gd='git diff'
alias gbd="git branch --list | fzf | xargs git branch --delete --force"
alias gbs='git bisect'
#alias gc='git commit'
alias gca='git commit --amend'
alias gcd='git checkout develop'
alias gcm='git checkout $(git_main_branch)'
alias gf='git fetch'
alias gfch="git fetch origin $1 && git checkout $1"
alias gl='git log --format=format:"%C(red)%h  %C(green)%as %C(yellow)%d%Creset %s" --max-count 5'
alias gp='git push'
alias gpf="git push --force"
alias gpod='git pull origin develop'
alias gpom='git pull origin $(git_main_branch)'
alias grhh='git reset --hard HEAD'
alias gs='git status'

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

# alias gc='git commit'
# todo: another option could be to use global git hooks instead and create one for the commit messages while still
# using the template
function gc {
    current_branch=$(git rev-parse --abbrev-ref HEAD)

    if [[ "$current_branch" =~ ^([a-z]+-[0-9]+)\/.+$ ]]; then
      message_prefix=$(echo ${BASH_REMATCH[1]} | tr '[:lower:]' '[:upper:]')
      git commit --message="[$message_prefix ]" --edit
    elif [[ "$current_branch" =~ "^tech\/.+" ]]; then
      message="[TECH] "
      git commit --message=$message --edit
    else
      git commit
    fi
}
