#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=raw-sha256 $1 --show | cut -d":" -f2 > 6-password.txt