#!/bin/bash
ip route | awk '/^default via/ {print $3}' | tr -d '\n'