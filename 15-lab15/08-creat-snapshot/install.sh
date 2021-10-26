#!/bin/sh

# 00. Change directory
cd ~
cd rook/cluster/examples/kubernetes/ceph

# 01. Create snapshot
kubectl create -f csi/rbd/snapshot.yaml

# 02. Verify 
kubectl get volumesnapshot -w