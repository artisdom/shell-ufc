#!/bin/sh

mkdir -p build
if [ "$1" = "clean" ]; then
    rm -r build
else
    if [ -f "build/ufc.sh" ]; then
        rm build/ufc.sh
    fi
    for file in $(find | grep .msh); do
        grep -o '^[^#]*' $file | awk 'NF' >> build/ufc.sh
    done
fi
