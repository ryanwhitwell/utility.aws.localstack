#!/bin/bash
set -e

scripts/utilities/wait-for-s3.sh &&
scripts/services/crs/s3/configure-s3.sh &&
scripts/utilities/wait-for-dynamodb.sh &&
scripts/services/crs/dynamoDB/configure-dynamodb.sh
scripts/utilities/create-secrets.sh "scripts/services/crs/secrets-manager/data/myproduct/key.txt" "crs/ftp/credentials/myproduct/key"