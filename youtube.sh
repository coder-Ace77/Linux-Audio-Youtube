#!/bin/bash

yt-dlp --format bestaudio --extract-audio --audio-format mp3 -q -P ~/Music/yt-dlp/ $1

