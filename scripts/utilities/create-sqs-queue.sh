#!/bin/bash
set -e 

queueName="$1"

echo "queueName: $queueName"

awslocal sqs create-queue --queue-name $queueName --attributes MessageRetentionPeriod=259200