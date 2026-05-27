#!/bin/bash
find "$1" -type f -mtime -1 \( -perm -u=s -o -perm -g=s \) -exec ls -ld {} +
