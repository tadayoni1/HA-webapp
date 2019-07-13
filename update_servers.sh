#!/usr/bin/env sh
aws cloudformation update-stack --stack-name myServersStack --template-body file://servers.yml --parameters file://servers-parameters.json --region us-west-2