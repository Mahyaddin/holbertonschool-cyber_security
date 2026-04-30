#!/bin/bash
ps -u "$1" -F --no-headers | grep -v " 0      0 "