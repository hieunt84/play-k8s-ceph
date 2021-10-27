#!/bin/sh

# 00. change directory
cd ~
cd rook/cluster/examples/kubernetes/ceph

# 01. Install snapshotclass
kubectl create -f csi/rbd/snapshotclass.yaml

# 02. Verify 
kubectl get volumesnapshotclass