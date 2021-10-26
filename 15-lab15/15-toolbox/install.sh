#!/bin/sh

# 00. chang directory
cd ~
cd rook/cluster/examples/kubernetes/ceph

# 01. Deploy the Rook Operator
kubectl apply -f toolbox.yaml

# 02. Wait for the toolbox pod to download its container and get to the running state:
kubectl -n rook-ceph rollout status deploy/rook-ceph-tools




