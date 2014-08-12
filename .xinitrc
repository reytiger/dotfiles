#Swap escape and caps for the x session
setxkbmap -option caps:swapescape
#add resources to session
xrdb ~/.Xresources
#Set mouse cursor
xsetroot -cursor_name left_ptr &
#Allow Java guis to display properly
export _JAVA_AWT_WM_NONREPARENTING=1
#Envirotnment variable for GTK2
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
#Launch pulseaudio
/usr/bin/start-pulseaudio-x11
#Launch
exec xmonad
