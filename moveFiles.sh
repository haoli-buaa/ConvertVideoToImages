#!/bin/bash

#MODIFY THIS PART TO ADAPT TO YOUR OWN DATA
#IM_NAMES:    A text with image names that need to be moved
SOURCE_DIR=JPEGImages
TARGET_DIR=train
IM_NAMES=train.txt

if [ ! -d "$TARGET_DIR" ]; then
    mkdir "$TARGET_DIR"
fi

cat $IM_NAMES | while read line
do
    echo $line
    find $SOURCE_DIR -name $line | xargs -i cp -rf {} $TARGET_DIR
done
