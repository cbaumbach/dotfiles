/usr/bin/xmodmap ~/.Xmodmap

# Stop screen blanking.
xset -dpms
xset s noblank
xset s off

# Remove mouse acceleration.
xset m 1 1

exec xmonad
