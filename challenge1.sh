#!/bin/bash

path = "/hdfs/data/data1"
name_of_directory = data1

if [ -d "$path/$name_of_directory" ]; then
    echo "There is $name_of_directory Directory Exists!"
else
    echo "$name_of_directory Directory Not Exists!"
    mkdir -p "$path/$name_of_directory"
    exit 1
fi

# Crontab syntax to run the script at 07:00 AM Daily
# 00 07 * * * root challenge1.sh