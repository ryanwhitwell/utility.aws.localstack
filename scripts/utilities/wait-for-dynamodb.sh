#!/bin/bash
set -e

echo "Ensuring DynamoDB is available"

until awslocal dynamodb list-tables; do
  echo "DynamoDB is unavailable - waiting"
  sleep 1
done

echo "DynamoDB is available - moving on"