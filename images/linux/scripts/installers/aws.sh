#!/bin/bash
################################################################################
##  File:  aws.sh
##  Desc:  Installs the AWS CLI
################################################################################

# Source the helpers
source $HELPER_SCRIPTS/document.sh

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

rm -rf awscliv2.zip

# Validate the installation
echo "Validate the installation"
if ! command -v aws; then
    echo "aws was not installed"
    exit 1
fi

# Document the installed version
echo "Document the installed version"
DocumentInstalledItem "AWS CLI ($(aws --version 2>&1))"
