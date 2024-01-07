#!/bin/bash


# lock the screen with xscreensaver then suspend
# so as the next time the machine awakes, there
# will be a prompt to enter my login password.
# I can also use xdg-screensaver lock, but this
# will in turns call xscreensaver-command lock
xscreensaver-command -lock && systemctl suspend
