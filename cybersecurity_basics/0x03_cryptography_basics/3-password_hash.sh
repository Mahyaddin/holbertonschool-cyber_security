#!/bin/bash
SALT=$(openssl rand -hex 8); echo -n "${1}${SALT}" | openssl dgst -sha512 | sed 's/^(stdin)= //g' > 3_hash.txt
