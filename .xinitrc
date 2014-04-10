#Swap escape and caps for the x session
setxkbmap -option caps:swapescape
#add resources to session
xrdb ~/.Xresources
#Set mouse cursor
xsetroot -cursor_name left_ptr &
#run unclutter to automatically hide the mouse
unclutter &
#Launch
exec xmonad
