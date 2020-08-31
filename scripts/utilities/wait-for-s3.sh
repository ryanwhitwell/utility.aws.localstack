#!/bin/bash
set -e

echo "Ensuring S3 is available"

until awslocal s3api list-buckets; do
  echo "S3 is unavailable - waiting"
  sleep 1
done

echo "S3 is available - moving on"