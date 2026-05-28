#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=raw-sha256 "$1" --show | cut -d":" -f2 > 4-password.txt