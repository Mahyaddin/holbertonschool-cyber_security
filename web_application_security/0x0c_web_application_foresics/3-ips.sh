#!/bin/bash
# Counts the number of distinct attacker IP addresses that
# gained access to the system (successful login to the
# compromised "root" account).

grep "Accepted password for root" auth.log | grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' | sort -u | wc -l
