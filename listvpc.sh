#!bin/bash
REGION="ap-south-1"
aws ec2 describe-vpcs --region $REGION | jq "vpcs[].vpcID"
