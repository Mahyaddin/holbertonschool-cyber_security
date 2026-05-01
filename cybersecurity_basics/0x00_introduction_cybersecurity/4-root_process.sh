#!/bin/bash
ps -u "$1" aux | grep -vE '\s0\s+0\s'