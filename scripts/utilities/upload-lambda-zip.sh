#!/bin/bash
set -e

lambdafunctionname="$1"
runtime="$2"
handler="$3"
zipfilename="$4" 

# check to see if file exists
if [ -e $zipfilename ]
then
    echo "Creating lambda function '$lambdafunctionname' for '$zipfilename'"
    # we don't need a role but one must be provided so r1 does the job
    awslocal lambda create-function --role=r1 --function-name=$lambdafunctionname --runtime=$runtime --handler=$handler --zip-file fileb://$zipfilename
    echo "Finished creating lambda fuction '$lambdafunctionname'"
else
    echo "Unable to create lambda function '$lambdafunctionname' for '$zipfilename' because file does not exist!"
fi

