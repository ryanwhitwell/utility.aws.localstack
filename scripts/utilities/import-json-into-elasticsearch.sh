#!/bin/bash
set -e

host="$1"
index="$2"
type="$3"
files="$4" #path to files

echo "Begin importing json data into Elasticsearch ..."
echo "Source file path: $files"

for fn in $files; do
  echo "Bulk inserting data from file '$fn'"
  curl "$host/$index/$type/_bulk?timeout=10m" -S -s --no-buffer -H "Content-Type: application/x-ndjson" --data-binary @$fn >/dev/null
done

echo "Finshed importing json data into Elasticsearch"