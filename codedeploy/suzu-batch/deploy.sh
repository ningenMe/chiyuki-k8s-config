#!/bin/bash

cd /home/ec2-user/suzu-batch
kubectl apply -f cronjob.yaml -n ningenme-space
