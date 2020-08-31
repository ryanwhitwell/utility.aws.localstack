#!/bin/bash
set -e 

files=$1 # a linux glob pattern (e.g. etc/files/*.*)
bucket=$2 # an AWS bucket name
path=$3 # an AWS empty object path (i.e. a bucket sub-directory) (e.g. supplier-network/sumatmft/local)

for fn in $files; do
  fileName=${fn##*/}
  echo "Put-Object file '$fileName' from '$fn' into bucket '$bucket' at path '$path'"
  awslocal s3api put-object --body $fn --bucket $bucket --key "$path/$fileName"
done