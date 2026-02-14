# docker
alias d='docker'

# terraform
alias tf="terraform"

# generic aliases
alias ll='ls -l'
alias gr="./gradlew"
alias v="nvim"
alias ip3='ipython3 --no-banner --no-confirm-exit'
alias wsp="cd ~/Documents/workspace/"

# git
alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gapa='git add --patch'
alias gb='git branch'
alias gd='git diff'
alias gbd="git branch --list | grep -v -E \"master|develop|main\" | fzf | xargs git branch --delete --force"
alias gbs='git bisect'
alias gc='git commit'
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

