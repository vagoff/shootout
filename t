#!/usr/bin/env bash
set -e
rpt="/tmp/rpt"
tmp="/tmp/tmp"
/bin/time -f "%e %M" -- $@ > "$tmp" 2> "$rpt"
cat "$rpt" | (
read time memory
echo "{ \"command\": \"$@\", \"time\": $time, \"memory\": $memory },"
)
