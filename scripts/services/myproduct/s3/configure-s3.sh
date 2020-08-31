#!/bin/bash
set -e

bucketName="myproduct-local"

declare -a directories=(\
"input/" \
"output/"
)

echo "Configuring CRS S3" &&
if awslocal s3api head-bucket --bucket $bucketName 2>/dev/null;
then
  echo "Bucket: $bucketName already exists. Not re-creating."
else
  awslocal s3api create-bucket --bucket $bucketName &&
  for i in "${directories[@]}"
  do
    awslocal s3api put-object --bucket $bucketName --key "$i"
  done
fi

echo "Finished configuring CRS S3"