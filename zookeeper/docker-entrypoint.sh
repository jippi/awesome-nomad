#!/bin/bash

set -x -e

# Write myid only if it doesn't exist
if [ ! -f "$ZOO_DATA_DIR/myid" ]; then
    export ZOO_MY_ID=$(echo "${ZOO_MY_ID} + 1" | bc)
    echo "${ZOO_MY_ID}" > "$ZOO_DATA_DIR/myid"
fi

exec "$@"