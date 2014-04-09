#Swap escape and caps for the x session
setxkbmap -option caps:swapescape
#run unclutter to automatically hide the mouse
unclutter &:
#Launch
exec xmonad
