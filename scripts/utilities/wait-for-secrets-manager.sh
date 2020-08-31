#!/bin/bash
set -e

echo "Ensuring Secrets Manager is available"

until awslocal secretsmanager get-random-password; do
  echo "Secrets Manager is unavailable - waiting"
  sleep 1
done

echo "Secrets Manager is available - moving on"