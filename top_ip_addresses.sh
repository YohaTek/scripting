#!/bin/bash

echo "script for showing top 3 ip addresses"

awk '{print $1}' iplog.txt | sort | uniq | head -n 4
