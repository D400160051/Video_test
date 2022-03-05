# This script plays the videos in the VPATH directory in a loop

# Path of the directory containing the videos
VPATH="/home/pi/videos"

# Loop through each file in VPATH until stopped
while true; do
    if ps ax | grep -v grep | grep omxplayer > /dev/null
    then
        sleep 1;
    else
        for entry in $VPATH/*
        do
            clear
            omxplayer -r $entry > /dev/null
        done
    fi
done