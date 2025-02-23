#!/bin/bash

showname() {
    echo hello $1
    if [ ${1,,} = space ]; then
        return 0
    else
        return 1
    fi
}
showname $1
if [ $? = 1 ]; then
    echo "someone unknown is calling the function"
fi
