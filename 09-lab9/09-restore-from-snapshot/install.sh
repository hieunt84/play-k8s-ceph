#!/bin/sh

# 00. Change directory
cd ~
cd rook/cluster/examples/kubernetes/ceph

# 01. Restore from snapshot
kubectl create -f csi/rbd/pvc-restore.yaml

# 02. Verify 
kubectl get pvc