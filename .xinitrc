#Swap escape and caps for the x session
setxkbmap -option caps:swapescape
#run unclutter to automatically hide the mouse
unclutter &:
#Set mouse cursor
xsetroot -pulse-glass left_ptr
#Launch
exec xmonad
