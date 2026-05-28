#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=nt $1 --show | cut -d":" -f2 > 5-password.txt