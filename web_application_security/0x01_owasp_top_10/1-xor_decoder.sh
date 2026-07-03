#!/bin/bash
echo -n "$1" | sed 's/^{xor}//' | base64 -d | tr '\000-\377' '[\137*]'
