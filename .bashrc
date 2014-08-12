#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Swap the esc and tab keys
echo keycode 1 = Caps_Lock | sudo loadkeys
echo keycode 58 = Escape | sudo loadkeys

#aliases to allow easy power control
alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias halt="sudo systemctl halt"
