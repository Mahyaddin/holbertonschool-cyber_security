#!/bin/bash
ps -u "$1" -F | grep -vE ' +0 +0 ' | sed 's/  */ /g'