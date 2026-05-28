#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=raw-sha256 "$1" > /dev/null; john --show --format=raw-sha256 "$1" | cut -d":" -f2 | sed "/^$/d" > 4-password.txt
