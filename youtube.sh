#!/bin/bash

echo "Downloading $1"
yt-dlp --format bestaudio --extract-audio --audio-format mp3 -P ~/Music/yt-dlp/ $1

