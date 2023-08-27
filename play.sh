#!/bin/bash

x=$1
if [ "$x" == "l" ]; then
    while [ true ]; do
    for i in ~/Music/yt-dlp/*; do
        echo "Looping mode"
        echo "Playing " $i "USe h for keys and Ctrl for exit"
        mpg123 -q "$i"
        echo "Use Ctrl+q to exit."
        sleep 5
        clear
    done
    done
    exit
fi

while [ true ]; do
count=0
for i in ~/Music/yt-dlp/*; do
    count=$[$count + 1]
    echo $count ")" $i
done
echo "Enter the number of the song you want to play."
read number
count=0
clear
for i in ~/Music/yt-dlp/*; do
    count=$[$count + 1]
    if [ "$count" -eq "$number" ]; then
        echo "Playing " $i
        echo "Use h for keys"
        mpg123 -q "$i"
    fi
done
clear
done
