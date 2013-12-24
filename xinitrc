nitrogen --set-auto Images/forest.jpg
xbacklight -set 0
xrdb -merge .Xresources
exec  i3
autocutsel -fork &
autocutsel -selection PRIMARY -fork &
