#!/bin/bash

FILENAME='Git-in-real-life.pos'
if [ -f ${FILENAME} ]; then
    awk '{print $1 " " $2 " " sqrt($1**2+$2**2)}' ${FILENAME} | sort -k3g -o ${FILENAME}
else
    printf 'Script %s failed!' "${BASH_SOURCE[0]}}" 
    exit 1
fi
