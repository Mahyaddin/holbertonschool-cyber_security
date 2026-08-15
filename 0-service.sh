#!/bin/bash
# Scans auth.log and reports the service used by the attackers
# to gain access to the system.

grep "sshd" auth.log | awk '{print $6}' | sort | uniq -c | sort -rn
