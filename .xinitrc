#Swap escape and caps for the x session
setxkbmap -option caps:swapescape
#add resources to session
xrdb ~/.Xresources
#Set mouse cursor
xsetroot -cursor_name left_ptr &
#Allow Java guis to display properly, and something with font rendering
#export _JAVA_AWT_WM_NONREPARENTING=1 Handled now by arch in /etc/profile.d/jre.sh
export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dawt.useSystemFontSettings=on -Dswing.aatext=true'
#Envirotnment variable for GTK2
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
#Launch pulseaudio
/usr/bin/start-pulseaudio-x11
#Hide the mouse
unclutter -grab &
#Fix for unclutter in SDL games
export SDL_VIDEO_X11_DGAMOUSE=0
#turn on numlock
numlockx &

#unbind the right alt from mod1
if test -s ~/.Xmodmap; then
  xmodmap ~/.Xmodmap
fi
# Use native libraries for steam
# export STEAM_RUNTIME=0
#Launch
exec xmonad
