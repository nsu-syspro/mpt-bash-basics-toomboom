#!/bin/bash

set -e
if [[ "$#" -ne 1 ]]; then
    echo "usage: $0 <archive>"
    exit 1
fi

archive="$1"
dir="$archive.unpacked"

mkdir -p "$dir"
tar -xf "$archive" -C "$dir"
