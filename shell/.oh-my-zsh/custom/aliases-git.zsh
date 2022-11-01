# Git configuration
export GIT_PAGER="less -F -X"
export GIT_EDITOR=vim

alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gapa='git add --patch'
alias gb='git branch'
alias gbd="git branch --list | fzf | xargs git branch --delete --force"
alias gbs='git bisect'
alias gc='git commit'
alias gca='git commit --amend'
alias gcd='git checkout develop'
alias gf='git fetch'
alias gfch="git fetch origin $1 && git checkout $1"
alias gl='git log --pretty=oneline --max-count=5'
alias gpf="git push --force"
alias gpod='git pull origin develop'
alias gpom='git pull origin master'
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
