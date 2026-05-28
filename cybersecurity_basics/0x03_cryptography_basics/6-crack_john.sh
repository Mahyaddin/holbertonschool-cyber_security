#!/bin/bash
john --format=raw-sha256 $1 --show | cut -d":" -f2 > 6-password.txt