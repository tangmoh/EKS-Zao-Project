#!/bin/bash
path=$(pwd)
rm -rf eks-config.yml aws-auth.yml
cluster_name="eks-cluster"
aws eks update-kubeconfig --region us-west-2 --name ${cluster_name} --profile joyoushire --kubeconfig=${path}/eks-config.yml
kubectl  --kubeconfig=${path}/eks-config.yml  get -n kube-system configmap/aws-auth -o  yaml >> ${path}/aws-auth.yml
