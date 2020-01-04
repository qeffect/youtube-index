#!/usr/bin/env bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

for d in *; do
    if [ -d "$d" ]; then
        youtube-archiver index -i "$d" update-captions
    fi
done