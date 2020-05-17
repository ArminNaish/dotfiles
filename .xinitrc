#!/bin/sh

# From Manjaro's "Proper ~/.xinitrc"
# https://wiki.manjaro.org/index.php?title=Proper_~/.xinitrc_File
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Load .Xresources 
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Load notification daemon
dunst &
# Load terminal daemon
urxvtd -q -o -f &

# Sleep a couple seconds here
# (work-around intel driver garbling my
# external monitor display settings below...)
sleep 2
# Set laptop monitor as primary
xrandr --output eDP-1 --mode 3000x2000 --rate 60 --primary --scale 1x1
# Look for external monitor, if found, set it to the left...
xrandr --output DP-2 --mode 1920x1080 --rate 60 --scale 2x2

# Set wallpaper(s)
nitrogen --restore &

# Fixed GTK scaling
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

# Load window Manager
exec i3
