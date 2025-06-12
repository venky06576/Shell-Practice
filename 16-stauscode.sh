#!/bin/bash
#check if file exits
ls /path/to/file.txt

if [ $? -eq 0 ]
then
    echo "File is found."
else
    echo "File is not Found."
    exit 1
fi


