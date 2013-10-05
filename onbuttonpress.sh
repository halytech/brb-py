#!/bin/sh

# This gets called as 'james' with DISPLAY set to :0.0 all ready ready for
# key-press type things.

{

# Choose a random sound and play it
ls /home/james/scripts/brb-py/sounds | sort -R | tail -1 | while read file; do
  mplayer "/home/james/scripts/brb-py/sounds/$file" 2>&1
done

} &

# Simulate capslock
# xte "key Caps_Lock"

#{
#
# Type exit into the active window until it doesn't exist anymore
#ACTIVEWINDOW=`xdotool getactivewindow`
#COUNTER=0
#while [  $COUNTER -lt 15 ]; do
#    WINDOWDETAILS=`xwininfo -id $ACTIVEWINDOW`
#    NEEDLE='xwininfo: error:'
#    if [[ "$WINDOWDETAILS" == *"$NEEDLE"* ]]
#    then
#      break
#    fi
#    if [ -z "$WINDOWDETAILS" ]
#    then
#      break
#    fi
#    xdotool type --window $ACTIVEWINDOW --clearmodifiers "exit"
#    xdotool key --window $ACTIVEWINDOW --clearmodifiers Return
#    COUNTER=`expr $COUNTER + 1`
#    sleep 1
#done
#
#} &
