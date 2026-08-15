#!/bin/bash
# Extracts the names of all user accounts created on the
# target system, as recorded by useradd in auth.log.

grep "new user" auth.log | grep -oE "name=[^,]+" | sed "s/name=//" | sort | paste -sd, -
