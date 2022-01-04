all:

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
all: install-default
endif
ifeq ($(UNAME_S),Darwin)
all: install-default install-darwin-specific
endif

install-default:
	stow vim
	stow shell
	stow tmux
	stow git
	stow bin
	stow alacritty

install-darwin-specific:
	stow hammerspoon
