#!/bin/bash

# Terminate already running polybar instances
killall -q polybar

# Launch polybar using default config location ~/.config/polybar/config.ini
polybar

echo "Polybar launched"
