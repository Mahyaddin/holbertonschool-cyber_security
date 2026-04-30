#!/bin/bash
ps -u "$1" -F | grep -vE '([0-9]+ +0 +0 |VSZ +RSS)'