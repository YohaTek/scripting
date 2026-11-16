#!/bin/bash

echo "enter number"

read num

for i in $(seq 1 "$num")
do
echo "$i"
done

