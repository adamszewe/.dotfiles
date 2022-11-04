stow -D vim
stow -D shell
stow -D tmux
stow -D alacritty

if [[ $(uname -s) -eq "Darwin" ]]; then
  stow hammerspoon
fi
