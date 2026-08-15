#!/bin/bash
grep -oE '[a-zA-Z0-9_]+(\[[0-9]+\])?:' $1 | sort | uniq -c | sort -nr
