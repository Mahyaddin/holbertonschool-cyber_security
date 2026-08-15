#!/bin/bash
# Determines how many requests the attacker sent, where the
# attacker is identified as the IP address with the most
# requests in logs.txt.

ip=$(grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' logs.txt | sort | uniq -c | sort -rn | head -1 | awk '{print $2}')
grep -c "$ip" logs.txt
