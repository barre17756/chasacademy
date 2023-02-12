#!/bin/bash


if [ "$#" -ne 2 ]; 
then 
    echo " Please pass 2 argument"
    exit 1
  

fi

if [ ! -d "$2" ]; 
then
    echo " $2 is not a directory"
    exit 1
fi

L=$1
D=$2

for listing in "$D"/*; 
do 
    if [ -d "$listing" ] && [[ "$listing" == "$L"* ]]; 
    then
        echo "dir: $listing"
    elif [ -f "$listing" ] && [[ "$listing" == "$L"* ]]; 
    then
        echo "file: $listing"
    fi
done
