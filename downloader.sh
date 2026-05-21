#!/bin/bash

if [ -z "$1" ]; then
    echo "Provide a link to the YouTube video!"
    exit 1
fi

URL=$1

if ! command -v yt-dlp &> /dev/null; then
    echo "yt-dlp not loaded!"
    echo "Try brew install yt-dlp"
    exit 1
fi

if ! command -v ffmpeg &> /dev/null; then
    echo "ffmpeg is not install!"
    echo "Try: brew install ffmpeg"
    exit 1
fi

echo "Loaded $URL ..."

yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" \
       --merge-output-format mp4 \
       -o "%(title)s.%(ext)s" \
       "$URL"

if [ $? -eq 0 ]; then
    echo "Successfully download!"
else
    echo "Invalid error"
fi
