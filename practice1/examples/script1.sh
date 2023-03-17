#!/bin/bash
echo Hello, $USER!
echo -n "Enter string: "
read str
if [ ${#str} -lt 8 ]
then
    echo String is too short
else
    if [ ${#str} -gt 16 ]
    then
        echo String is too long
    else
        echo String is ok
        echo $0
    fi
fi