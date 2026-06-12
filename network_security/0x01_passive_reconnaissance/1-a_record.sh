#!/bin/bash
nslookup $1 | grep "Address" | grep -v "#53" | cut -d " " -f 2
