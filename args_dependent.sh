#!/bin/bash

#this is simple demo on implementation of args depenedent execusion of a script.

#the $@ is list of arguments provided when executing the script,./script.sh arg_1 arg_2 arg_3 



echo "========================================"
echo "Arguments received: $#"
echo "========================================"

echo
echo 'Using: for x in "$@"'
echo "----------------------------------------"

for x in "$@"; do
    printf '%s\n' "$x"
done

echo
echo 'Using: for x in "$*"'
echo "----------------------------------------"

for x in "$*"; do
    printf '%s\n' "$x"
done

echo
echo 'Raw values:'
echo "----------------------------------------"
printf '"$@" expands to %d separate argument(s)\n' "$#"
printf '"$*" expands to 1 single string containing all arguments\n'
