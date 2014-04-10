#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Swap the esc and tab keys
echo keycode 1 = Caps_Lock | sudo loadkeys > logfile
echo keycode 58 = Escape | sudo loadkeys > logfile
