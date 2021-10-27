#!/bin/sh
# ref https://rook.github.io/docs/rook/v1.6/ceph-csi-snapshot.html

# Prerequisites
cd ~
git clone --single-branch --branch v4.0.0 https://github.com/kubernetes-csi/external-snapshotter.git
cd external-snapshotter

## Install Snapshot Beta CRDs:
kubectl create -f client/config/crd

## Install Common Snapshot Controller:
cd ~
cd play-k8s-ceph/15-lab15/06-VolumeSnapshotClass-Install
kubectl create -f snapshot-controller/

# 00. change directory
cd ~
cd rook/cluster/examples/kubernetes/ceph

## 01. Install snapshotclass
kubectl create -f csi/rbd/snapshotclass.yaml

## 02. Verify 
kubectl get volumesnapshotclass