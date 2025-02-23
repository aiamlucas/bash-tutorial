#!/bin/bash
if [ ${1,,} = yakecan ]; then
    echo "Hey you yakecan"
elif [ ${1,,} = help ]; then
    echo "Just type your name"
else
    echo "Hey you unknown"
fi
