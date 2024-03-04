#!/bin/sh

#
# ~/.xsession
#
# Executed by xdm/gdm/kdm at login
#

/bin/bash --login -i ~/.xinitrc

# exec picom &
# exec setxkbmap eu &
exec setxkbmap -option ctrl:nocaps eu &
exec nitrogen --restore &
