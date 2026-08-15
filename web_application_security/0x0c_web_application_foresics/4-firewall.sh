#!/bin/bash
# Counts the number of unique, well-formed firewall (ufw)
# rules added in auth.log ("ufw allow PORT[/service]").
# Malformed commands (invalid syntax) are excluded, and
# case differences are treated as the same rule.

grep -oE "ufw allow [0-9]+(/[A-Za-z]+)?$" auth.log | tr "A-Z" "a-z" | sort -u | wc -l
