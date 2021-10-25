#!/bin/sh

# 00. change directory
cd ~
cd rook/cluster/examples/kubernetes/ceph

# 01. Create pvc
kubectl create -f csi/rbd/pvc.yaml

# 02. Verify 
kubectl get pvc -w