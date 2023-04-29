#!/bin/bash

lego --accept-tos \
    --path=/home/ec2-user \
    --email="amohkuru@gmail.com" \
    --dns="route53" \
    --domains="*.ningenme.net" \
    run

K8S_EC2_DNS=`aws ec2 describe-instances --filters "Name=tag:Name,Values=k8s-ec2" --region ap-northeast-1 | jq '.Reservations[0]' | jq '.Instances[0]' | jq '.PrivateDnsName' -r`

sed -i -e s/K8S_EC2_DNS/${K8S_EC2_DNS}/g /home/ec2-user/proxy/server.conf

cp /home/ec2-user/proxy/server.conf /etc/nginx/conf.d/

systemctl restart nginx
