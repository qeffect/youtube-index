#!/usr/bin/env bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

for d in *; do
    if [ -d "$d" ]; then
        query_params=()
        while read p; do
            query_params+=(-q "$p")
        done < topics.conf
        youtube-archiver index -i "$d" index-topic "${query_params[@]}"
    fi
done



