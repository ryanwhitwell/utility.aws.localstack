#!/bin/bash
set -e

host="$1"

echo "Ensuring Elasticsearch is available"

until curl -XGET -s -S $host; do
  echo "Elasticsearch is unavailable - waiting"
  sleep 1
done

echo "Elasticsearch is available - moving on"