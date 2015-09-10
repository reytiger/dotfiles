# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' max-errors 3
zstyle :compinstall filename '/home/rey/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# Fancy green fade prompt
autoload -Uz promptinit
promptinit
prompt fade

# If not running interactively, don't do anything

alias ls='ls --color=auto'
set PS1='[\u@\h \W]\$ '

#Swap the esc and tab keys inside of terminals
echo keycode 1 = Caps_Lock | sudo loadkeys
echo keycode 58 = Escape | sudo loadkeys

#aliases to allow easy power control
alias reboot="systemctl reboot"
alias poweroff="systemctl poweroff"
alias halt="systemctl halt"
alias suspend="systemctl suspend"

#temp fix to get Xorg to run on right TTY
alias xinit="xinit -- vt$XDG_VTNR"

#More terminal colors
eval $(dircolors -b)

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

#Intro to Linux thing
export LC_COLLATE=C

export LD_LIBRARY_PATH=.:${LD_LIBRARY_PATH}
