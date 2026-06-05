#!/bin/bash

echo "enter filename"
read file

lines=$(wc -l <"$file")

echo "lines=$lines"

