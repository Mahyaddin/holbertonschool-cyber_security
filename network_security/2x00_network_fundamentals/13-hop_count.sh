#!/bin/bash
traceroute -m 30 "$1" 2>/dev/null | awk '/^[ 0-9]/ {print $1}' | tail -n 1 | tr -d '\n'