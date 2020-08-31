#!/bin/bash
set -e

echo "Ensuring localstack is running"

#check that Lambda service is running - it's the last to be initialized
until awslocal lambda list-functions >/dev/null; do
  echo "localstack is not running - waiting"
  sleep 1
done

echo "localstack is running - moving on"