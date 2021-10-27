#!/bin/sh

# 00. chang directory
cd ~
git clone --single-branch --branch v1.5.12 https://github.com/rook/rook.git
cd rook/cluster/examples/kubernetes/ceph

# 01. Deploy the Rook Operator
kubectl apply -f crds.yaml
kubectl apply -f common.yaml
kubectl apply -f operator.yaml

# 02. Verify the rook-ceph-operator is in the `Running` state before proceeding
kubectl -n rook-ceph get pod -w




