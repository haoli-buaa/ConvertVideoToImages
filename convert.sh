#!/bin/bash

FPS=25
SCALE=1920:1080

VIDEO_FILE=TownCentreXVID.avi
OUTDIR=JPEGImages

if [ ! -d "$OUTDIR" ]; then
    echo "making directory"
    mkdir "$OUTDIR"
fi

ffmpeg -i $VIDEO_FILE -r $FPS $OUTDIR/%06d.jpg
