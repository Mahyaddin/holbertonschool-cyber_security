#!/bin/bash
echo -n "${1}$(openssl rand -hex 8)" | openssl dgst -sha512 | sed 's/^(stdin)= //g' > 3_hash.txt
