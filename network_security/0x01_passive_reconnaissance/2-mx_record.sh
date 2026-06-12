#!/bin/bash
nslookup -type=mx $1 | grep "mail exchanger" | awk "{print $NF}" | sed "s/\.$//"
