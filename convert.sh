#!/bin/bash

#Modify below according to your own video data
#FPS:     frames per second
#SCALE:   size information in format {width:height}
#VIDEO_File: your video path
#OUTDIR:     output directory
FPS=25
SCALE=1920:1080
VIDEO_FILE=TownCentreXVID.avi
OUTDIR=JPEGImages

#make outdir is not exist
if [ ! -d "$OUTDIR" ]; then
    echo "making directory"
    mkdir "$OUTDIR"
fi

#name pictures with 6 bits digits
ffmpeg -i $VIDEO_FILE -r $FPS $OUTDIR/%06d.jpg
