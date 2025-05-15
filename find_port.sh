#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

START=50000
END=51000

for ((port=START; port<=END; port++)); do
    if ! ss -ltn | awk '{print $4}' | grep -qE "[:.]$port\$"; then
        echo "$port"
        exit 0
    fi
done

exit 1
