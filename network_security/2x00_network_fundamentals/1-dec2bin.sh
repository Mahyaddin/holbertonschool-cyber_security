#!/bin/bash

# Əgər arqument verilməyibsə, xəta ilə çıxış et
if [ -z "$1" ]; then
    exit 1
fi

decimal_number=$1
binary=""

# 8-bitlik ikilik ədədə çevirmə dövrü
for ((i=7; i>=0; i--)); do
    bit=$(( (decimal_number >> i) & 1 ))
    binary="${binary}${bit}"
done

echo "$binary"
