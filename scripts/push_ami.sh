#!/bin/bash

environment=$1

# Example: Logic to push AMI to AWS account based on environment
# Modify this section based on your specific AMI sharing or copying process

case "$environment" in
  development)
    echo "Pushing AMI to Development AWS account"
    # Add logic to share or copy AMI to the Development AWS account
    ;;
  production)
    echo "Pushing AMI to Production AWS account"
    # Add logic to share or copy AMI to the Production AWS account
    ;;
  *)
    echo "Unsupported environment: $environment"
    exit 1
    ;;
esac
