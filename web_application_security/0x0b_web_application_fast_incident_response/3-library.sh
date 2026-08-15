#!/bin/bash
# Identifies the tool or library used by the attacker by
# analyzing the User-Agent string of their requests.

ip=$(grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' logs.txt | sort | uniq -c | sort -rn | head -1 | awk '{print $2}')
grep "$ip" logs.txt | grep -oE '"[A-Za-z0-9._-]+/[0-9.]+"' | sort | uniq -c | sort -rn | head -1 | awk '{print $2}' | tr -d '"'
