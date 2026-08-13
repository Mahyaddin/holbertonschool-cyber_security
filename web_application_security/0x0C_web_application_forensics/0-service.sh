#!/bin/bash
# Usage: ./0-service.sh path/to/auth.log

grep "sshd" $1 | awk '{print $6}' | sort | uniq -c | sort -rn
