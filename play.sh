#!/bin/bash

if [ "$1" == "l" ]; then
    while [ true ]; do
    for i in ~/Music/yt-dlp/*; do
        echo -e "\e[1;33m Looping mode"
        echo -e "\e[0;m Playing \e[1;32m" $i " \e[0;m Use h for keys and Ctrl+q for exit"
        mpg123 -q "$i"
        echo "Use Ctrl+q to exit."
        sleep 1
        clear
    done
    done
    exit
fi

while [ true ]; do
count=0
state=0
for i in ~/Music/yt-dlp/*; do
    count=$[$count + 1]
    if [ "$state" == "0" ]; then
        echo -e "\e[1;35m $count." $i
        state=1
    else    
        echo -e "\e[0;m $count." $i
        state=0
    fi
    
done
echo -e "\e[1;32mSelect song number"
read number
count=0
clear
for i in ~/Music/yt-dlp/*; do
    count=$[$count + 1]
    if [ "$count" -eq "$number" ]; then
        echo -e "\e[0;m Playing \e[1;32m"$i
        echo -e "\e[0;m Use h for keys"
        mpg123 -q "$i"
    fi
done
clear
done
