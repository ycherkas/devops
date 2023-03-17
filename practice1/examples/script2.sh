#!/bin/bash
echo -n "Enter key: "
read -n 1 key
echo
case "$key" in
    [a-z] ) echo "Lowercase";;
    [A-Z] ) echo "Uppercase";;
    [0-9] ) echo "Digit";;
    * ) echo "Something else";;
esac