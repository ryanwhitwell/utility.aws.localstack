#!/bin/bash
set -e

echo "Configuring My Product DynamoDB" &&
echo "Creating DynamoDB Tables" &&
scripts/services/myproduct/dynamoDB/tables/MyProduct_Widgets.sh &&
echo "Finished Creating DynamoDB Tables" &&
echo "Finished configuring My Product DynamoDB"
