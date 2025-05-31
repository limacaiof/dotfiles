#!/bin/bash

killall -q polybar

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar i3 2>&1; polybar secondary 2>&1 | tee -a /tmp/polybar.log & disown

