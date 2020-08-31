#!/bin/bash
set -e

tableName="MyProduct.Widgets"

awslocal dynamodb describe-table --table-name $tableName || {
    awslocal dynamodb create-table \
    --table-name $tableName \
    --attribute-definitions AttributeName=CrsId,AttributeType=S \
    --key-schema AttributeName=CrsId,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
}