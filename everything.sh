#!/usr/bin/env bash

set -e

rpt="/tmp/rpt"
tmp="/tmp/tmp"

ulimit -s 300999
echo "["

cat tests.txt | (cd critters; while read cmd; do
/bin/time -f "%e %M" -- bash -c "${cmd}" > "$tmp" 2> "$rpt"
cat "$rpt" | (
read time memory
echo "{ \"command\": \"$cmd\", \"time\": $time, \"memory\": $memory },"
)
done)

echo "]"
