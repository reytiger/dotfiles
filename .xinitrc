#Swap escape and caps for the x session
setxkbmap -option caps:swapescape
#add resources to session
xrdb ~/.Xresources
#Set mouse cursor
xsetroot -cursor_name left_ptr &
#run unclutter to automatically hide the mouse
unclutter &
#Allow Java guis to display properly
export _JAVA_AWT_WM_NONREPARENTING=1
#Launch
exec xmonad
