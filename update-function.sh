#!/bin/bash 

account_id=`aws sts get-caller-identity --output json | jq -r ."Account"`

aws lambda update-function-configuration --function-name bash-runtime \
--layers arn:aws:lambda:ap-southeast-2:$account_id:layer:bash-runtime:1

zip function-only.zip function.sh
aws lambda update-function-code --function-name bash-runtime --zip-file fileb://function-only.zip
