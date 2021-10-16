#!/bin/sh

# add repo
helm repo add kasten https://charts.kasten.io/
helm repo update

# install chart
kubectl create namespace kasten-io
helm install k10 kasten/k10 \
--namespace=kasten-io \
--set global.persistence.storageClass=rook-ceph-block \
--set externalGateway.create=true \
--set auth.basicAuth.enabled=true \
--set auth.basicAuth.htpasswd='admin:{SHA}m04Br+QJKkP4TQq/6bm5WCDk91I='

#--set prometheus.server.persistentVolume.enabled=false


