#!/bin/bash

echo hoge
touch /home/ec2-user/hoge.txt

#lego --accept-tos \
#    --path=/home/ec2-user \
#    --email="amohkuru@gmail.com" \
#    --dns="route53" \
#    --domains="*.ningenme.net" \
#    run
#
#
#K8S_EC2_DNS=`aws ec2 describe-instances --filters "Name=tag:Name,Values=k8s-ec2" | jq '.Reservations[0]' | jq '.Instances[0]' | jq '.PrivateDnsName' -r`