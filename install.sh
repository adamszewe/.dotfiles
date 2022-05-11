stow vim
stow shell
stow tmux
stow git
stow alacritty

if [[ $(uname -s) -eq "Darwin" ]]; then
  stow hammerspoon
fi
