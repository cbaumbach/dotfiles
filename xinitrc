/usr/bin/xmodmap ~/.Xmodmap

# Stop screen blanking.
xset -dpms
xset s noblank
xset s off

exec xmonad
