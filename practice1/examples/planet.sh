#!/bin/bash
PLANET="-"
while [ $PLANET != "EXIT" ]
do
    echo -n "Enter the name of planet: "
    read PLANET
    if [ $PLANET != "EXIT" ]
        then
        echo -n "The $PLANET has "
        case $PLANET in
            Mercury | Venus ) echo -n "no";;
            Earth ) echo -n "one";;
            Mars ) echo -n "two";;
            Jupiter ) echo -n "79";;
            *) echo -n "an unknown number of";;
        esac
    echo " satellite(s)."
    fi
done