#!/bin/bash
# Identifies the IP address responsible for the highest
# number of requests in logs.txt, likely the source of a
# Denial of Service (DoS) attack.

grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' logs.txt | sort | uniq -c | sort -rn | head -1 | awk '{print $2}'
