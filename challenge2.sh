#!/bin/bash

path = "/hdfs/data/data1"
name_of_directory = data1

if [ -d "$path/$name_of_directory" ]; then
    echo "There is $name_of_directory Directory Exists!"

    filename_excel=daily_market_price.xlsx
    source_dir=/local/data/market
    target_dir=$path/$name_of_directory

    cp "$source_dir/$filename_excel" $target_dir
    if [ $? -eq 0 ]; then
        touch "$target_dir/log_copy_file.txt"
        echo "File Moved Successfully" >> "$target_dir/log_copy_file.txt"
    fi
else
    echo "$name_of_directory Directory Not Exists!"
    mkdir -p "$path/$name_of_directory"
fi