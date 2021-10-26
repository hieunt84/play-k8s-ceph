#!/bin/sh

# 00. chang directory
cd ~
cd rook/cluster/examples/kubernetes/ceph

# 01. Deploy the Rook Operator
kubectl apply -f toolbox.yaml

# 02. Verify the rook-ceph-operator is in the `Running` state before proceeding
kubectl -n rook-ceph rollout status deploy/rook-ceph-tools




