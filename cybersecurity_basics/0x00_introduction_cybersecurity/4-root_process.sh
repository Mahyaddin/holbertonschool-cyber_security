#!/bin/bash
ps -u "$1" -ux | grep -vE 'COMMAND|\s0\s+0'