#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Swap the esc and tab keys
if [ ! "$pidof(X)" ]
then
    echo keycode 1 = Caps_Lock | sudo loadkeys
    echo keycode 58 = Escape | sudo loadkeys
fi

#Allow java to make windows in Xmonad
export _JAVA_AWT_WM_NONREPARENTING=1
