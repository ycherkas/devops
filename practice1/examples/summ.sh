#!/bin/bash
summ() {
    re='^[0-9]+$'
    if ! [[ $1 =~ $re ]] ; then
        return 1
    elif ! [[ $2 =~ $re ]] ; then
        return 2
    else
        s=$(($1 + $2))
        return 0
    fi
}

summ $1 $2

case $? in
    0) echo "The sum is: $s" ;;
    1) echo "var1 is not a nubmer" ;;
    2) echo "var2 is not a nubmer" ;;
    *) echo "Unknown error" ;;
esac