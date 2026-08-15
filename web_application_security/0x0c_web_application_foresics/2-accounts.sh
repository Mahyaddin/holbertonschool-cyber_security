#!/bin/bash
# Scans the last 1000 lines of auth.log to identify the
# compromised account: the user that has both a failed and
# a successful ("Accepted") login attempt, indicating a
# successful brute-force break-in.

tail -n 1000 auth.log | grep "Failed password" | awk '{print $9}' | sort -u > /tmp/failed_users.txt
tail -n 1000 auth.log | grep "Accepted password" | awk '{print $9}' | sort -u > /tmp/accepted_users.txt
comm -12 /tmp/failed_users.txt /tmp/accepted_users.txt
