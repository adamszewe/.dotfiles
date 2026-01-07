stow -D vim
stow -D shell
stow -D tmux

if [[ $(uname -s) -eq "Darwin" ]]; then
  stow hammerspoon
fi
