#!/usr/bin/env bash

set -e

ulimit -s 300999
echo "["

cat tests.txt | (cd critters; while read cmd; do
bash -c "${cmd}"
done)

echo "]"
