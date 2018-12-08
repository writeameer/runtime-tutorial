#!/bin/bash 

account_id=`aws sts get-caller-identity --output json | jq -r ."Account"`

aws lambda create-function \
    --function-name bash-runtime \
    --zip-file fileb://function.zip --handler function.handler --runtime provided \
    --role arn:aws:iam::$account_id:role/lambda-role