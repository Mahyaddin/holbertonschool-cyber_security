#!/bin/bash
# Identifies the endpoint (URL) that received the most
# requests in logs.txt, indicating the likely target of
# the attack.

grep -oE '"(GET|POST|PUT|DELETE|HEAD|PATCH) [^ ]+ HTTP' logs.txt | awk '{print $2}' | sort | uniq -c | sort -rn | head -1 | awk '{print $2}'
