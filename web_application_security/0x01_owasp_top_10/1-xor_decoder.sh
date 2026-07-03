#!/bin/bash
echo -n "$1" | sed 's/^{xor}//' | base64 -d | python3 -c 'import sys; data=sys.stdin.buffer.read(); print("".join(chr(b ^ 0x5F) for b in data), end="")'
