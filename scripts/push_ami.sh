#!/bin/bash

environment=$1

# Example: Logic to push AMI to AWS account based on environment
# Modify this section based on your specific AMI sharing or copying process

case "$environment" in
  Dev)
    echo "Pushing AMI to Dev AWS account"
    # Add logic to share or copy AMI to the Development AWS account
    ;;
  QA)
    echo "Pushing AMI to QA AWS account"
    # Add logic to share or copy AMI to the Development AWS account
    ;;
  Prod)
    echo "Pushing AMI to Prod AWS account"
    # Add logic to share or copy AMI to the Production AWS account
    ;;
  *)
    echo "Unsupported environment: $environment"
    exit 1
    ;;
esac
