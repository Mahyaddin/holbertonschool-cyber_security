#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt $1 --format=Raw-SHA256 > /dev/null; john --show $1 --format=Raw-SHA256 | cut -d":" -f2 > 4-password.txt
