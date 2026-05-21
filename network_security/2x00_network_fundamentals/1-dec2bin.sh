#!/bin/bash
decimal=$1
printf "%08d\n" $(echo "obase=2;$decimal" | bc)