#!/bin/bash

aws ecr get-login-password --region AWS_REGION | docker login --username AWS --password-stdin AWS_ECR_REGISTRY
docker pull AWS_ECR_REGISTRY/nina-api-repository:latest
docker rmi `docker image ls | grep none | awk '{print $3}'` | true

cd /home/ec2-user/nina-api
kubectl apply -f deployment.yaml -n ningenme-space
kubectl apply -f service.yaml -n ningenme-space
