#!/bin/sh
#MAX BRIGHTNESS DIVIDED BY 100
MAX="960"

ACTUAL="$(cat /sys/class/backlight/intel_backlight/brightness)"

echo "$((ACTUAL  / MAX))%"
