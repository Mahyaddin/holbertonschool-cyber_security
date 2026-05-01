#!/bin/bash
ps -u "$1" -o user,pid,vsz,rss,comm | grep -vE '\s0\s+0\s'