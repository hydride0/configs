xbacklight -set 0
/usr/bin/start-pulseaudio-x11
xrdb -merge .Xresources
exec  i3
autocutsel -fork &
autocutsel -selection PRIMARY -fork &
