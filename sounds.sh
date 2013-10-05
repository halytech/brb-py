#!/bin/sh


{

# Choose a random sound and play it
ls /home/silver/scripts/bigredbutton/sounds | sort -R | tail -1 | while read file; do
  mplayer "/home/silver/scripts/bigredbutton/sounds/$file" 2>&1
done

} &

