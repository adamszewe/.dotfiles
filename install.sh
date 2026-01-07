stow vim
stow shell
stow tmux

if [[ $(uname -s) -eq "Darwin" ]]; then
  stow hammerspoon
fi
