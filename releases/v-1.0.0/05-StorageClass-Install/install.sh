#!/bin/sh

# 00. change directory
cd ~
cd rook/cluster/examples/kubernetes/ceph

# 01. Install StorageClass
kubectl create -f csi/rbd/storageclass.yaml

# 02. Verify 
kubectl get storageclass

# 03. Set default
kubectl patch storageclass rook-ceph-block \
    -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'




