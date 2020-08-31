#!/bin/bash
set -e 

file="$1"
key="$2"

echo "File: $file"
echo "Key: $key"

while IFS='' read -r line || [[ -n "$line" ]]; do
  echo "Value: $line"
  awslocal secretsmanager create-secret --name $key --secret-string $line
done < "$file"