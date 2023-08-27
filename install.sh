#!/bin/bash

# Install the dependencies
sudo apt-get update -y
sudo apt-get install yt-dlp -y
sudo apt-get install mpg123 -y

# Create the directory for the music
mkdir ~/Music/yt-dlp

mv youtube.sh ~
mv play.sh ~

chmod 777 ~/youtube.sh
chmod 777 ~/play.sh

echo "Done"
