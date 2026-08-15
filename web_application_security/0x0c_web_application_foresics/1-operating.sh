#!/bin/bash
# Scans dmesg and reports the operating system version
# of the targeted system.

grep "Linux version" dmesg
