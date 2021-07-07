#!/usr/bin/env bash
find . -path '*/\.*' -prune -o -name 'track01.bin' -exec sh -c 'echo "$(/usr/local/bin/gdiinfo "{}")\n"' \;
