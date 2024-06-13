#!/bin/bash

##############################
# Author : Vaibhav Talkhande
# Date :  9th June 2024
#
# Version : v1
# This script will report the AWS resource usage
##############################
set -x
set -e

# Define the output file
output_file="/home/vaibhav/learnbash/resourceTracker"
#define aws command
aws="/usr/local/bin/aws"
# Ensure the output file exists
touch "$output_file"

# Log uptime
uptime >> $output_file

# List S3 buckets
echo "Print list of S3 buckets" >> $output_file
$aws s3 ls >> $output_file

# List EC2 instances
echo "Print list of EC2 instances" >> "$output_file"
$aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId" >> $output_file

# List Lambda functions
echo "Print list of Lambda functions" >> "$output_file"
$aws lambda list-functions | jq ".Functions[].FunctionName" >> $output_file

# List IAM users
echo "Print list of IAM users" >> "$output_file"
$aws iam list-users | jq ".Users[].UserName" >> $output_file

