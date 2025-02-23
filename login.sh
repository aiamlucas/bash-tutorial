#!/bin/bash

case ${1,,} in
yakecan | administrator)
    echo "hey admin"
    ;;
help)
    echo "Just type your name"
    ;;
*)
    echo "Hey you unknown, please enter a valid username"
    ;;
esac
