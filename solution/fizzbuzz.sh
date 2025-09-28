#!/bin/bash

set -e

if [[ "$#" -ne 1 ]] || echo "$1" | grep -qv '^[1-9][0-9]*$'; then
    echo "usage: $0 <UINT>"
    exit 1
fi

for ((i=1; i<=$1; i++)); do
    if (( i % 15 == 0 )); then
        echo Fizz Buzz
    elif (( i % 3 == 0 )); then
        echo Fizz
    elif (( i % 5 == 0 )); then
        echo Buzz
    else
        echo $i
    fi
done
