#!/bin/sh

# 00. add repo
cd ~
cd rook/cluster/examples/kubernetes/ceph

# 01. Create a Ceph Cluster
kubectl apply -f cluster.yaml

# 02. Verify 
kubectl -n rook-ceph get pod -w




