#!/bin/sh
xrandr --output eDP1 --primary --mode 1366x768 --pos 0x0 --rotate normal --right-of HDMI1 --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off

feh --bg-scale ~/.local/share/wallpapers/anime/in-front-of-car.jpg &
