# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# terminal color: #FFB000

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=300
HISTFILESIZE=500

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# setting the default editor
export EDITOR="vi"



export PATH=$PATH:"/mnt/workspace/bin_workspace/"



export NVPACK_ROOT="/mnt/workspace/nvidia_workspace"

export PATH=$PATH:"/mnt/workspace/nvidia_workspace/android-sdk-linux/tools"
export ANDROID_HOME="/mnt/workspace/nvidia_workspace/android-sdk-linux"

export PATH=$PATH:"/mnt/workspace/nvidia_workspace/android-sdk-linux/platform-tools"

export PATH=$PATH:"/mnt/workspace/nvidia_workspace/android-sdk-linux/build-tools"

export PATH=$PATH:"/mnt/workspace/nvidia_workspace/android-sdk-linux/extras/android/support"

export PATH=$PATH:"/mnt/workspace/nvidia_workspace/android-ndk-r10e"

export NDK_ROOT="/mnt/workspace/nvidia_workspace/android-ndk-r10e"
export NDKROOT="/mnt/workspace/nvidia_workspace/android-ndk-r10e"
export NVPACK_NDK_VERSION="android-ndk-r10e"
export NDK_STANDALONE_46_ANDROID9_32="/mnt/workspace/nvidia_workspace/android-ndk-r10e/toolchains/arm-linux-androideabi-4.6/gen_standalone/linux-x86_64"
export NDK_STANDALONE_46_ANDROID9_64="/mnt/workspace/nvidia_workspace/android-ndk-r10e/toolchains/aarch64-linux-android-4.9/gen_standalone/linux-x86_64"

export PATH=$PATH:"/mnt/workspace/nvidia_workspace/apache-ant-1.8.2/bin"
export ANT_HOME="/mnt/workspace/nvidia_workspace/apache-ant-1.8.2"

export PATH=$PATH:"/mnt/workspace/nvidia_workspace/gradle-2.2.1/bin"
export GRADLE_HOME="/mnt/workspace/nvidia_workspace/gradle-2.2.1"
export CUDA_TOOLKIT_ROOT_6_5="/mnt/workspace/nvidia_workspace/cuda-6.5"

export PATH=$PATH:"/mnt/workspace/nvidia_workspace/cuda-7.0/bin"
export CUDA_TOOLKIT_ROOT="/mnt/workspace/nvidia_workspace/cuda-7.0"
export CUDA_TOOLKIT_ROOT_7_0="/mnt/workspace/nvidia_workspace/cuda-7.0"


export ANDROID_HOME="/home/adam/.development/Android/Sdk"


