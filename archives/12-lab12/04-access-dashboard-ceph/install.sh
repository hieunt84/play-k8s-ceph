#!/bin/sh

# 00. change directory
cd ~
cd rook/cluster/examples/kubernetes/ceph

# 01. Create service
kubectl apply -f dashboard-external-https.yaml

# 02. Verify 
kubectl -n rook-ceph get svc




