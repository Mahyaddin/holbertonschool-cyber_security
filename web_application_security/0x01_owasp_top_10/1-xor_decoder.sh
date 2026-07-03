#!/bin/bash
# Prefiksi silirik, Base64-den cixaririq ve her simvolu '_' ile XOR edirik
echo "$1" | sed 's/^{xor}//' | base64 -d | tr '\000-\377' '[\137*]'
