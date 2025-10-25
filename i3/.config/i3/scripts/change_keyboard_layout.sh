#!/bin/bash

# Switch between US and ABNT2 keyboard layout
if $(setxkbmap -query | grep -q "layout:\s\+us"); then
    setxkbmap br
else
    setxkbmap us -model pc105 -rules evdev
fi
