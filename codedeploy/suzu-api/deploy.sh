#!/bin/bash

cd /home/ec2-user/suzu-api
kubectl apply -f deployment.yaml -n ningenme-space
kubectl apply -f service.yaml -n ningenme-space
