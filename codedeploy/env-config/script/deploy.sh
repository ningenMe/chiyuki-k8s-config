#!/bin/bash

aws ssm get-parameters-by-path --path "/" --region ap-northeast-1 --output text | awk '{print $5"="$7}' > $HOME/.env
kubectl create configmap env-config --from-env-file=$HOME/.env -n ningenme-space -o yaml --dry-run | kubectl apply -f - -n ningenme-space
