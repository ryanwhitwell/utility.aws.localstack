#!/bin/bash
set -e

echo "Ensuring SQS is available"

until awslocal sqs list-queues; do
  echo "SQS is unavailable - waiting"
  sleep 1
done

echo "SQS is available - moving on"