#!/bin/bash
# component=$1
# environment=$2
# dnf install ansible -y
# pip3 install botocore boto3
# ansible-pull -i localhost, -U https://github.com/Mani19909/expense-ansible-roles-tf.git main.yaml -e component=$component -e env=$environment -e appVersion=1.0
# 

#!/bin/bash
set -e

component=$1
environment=$2
appVersion=${3:-1.0}   # 👈 default version if not passed

echo "Starting backend setup..."

dnf install ansible -y
dnf install python3-pip -y || true
pip3 install botocore boto3

echo "Running ansible-pull..."

ansible-pull -i localhost, \
  -U https://github.com/Mani19909/expense-ansible-roles.git \
  main.yaml \
  -e component=$component \
  -e env=$environment \
  -e appVersion=$appVersion

echo "Completed successfully"