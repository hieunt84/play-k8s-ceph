#!/bin/sh

# update chart
# helm repo update

# upgrade chart
helm upgrade k10 kasten/k10 \
--namespace=kasten-io \
--set global.persistence.storageClass=rook-ceph-block \
--set prometheus.server.persistentVolume.enabled=false \
--set externalGateway.create=true \
--set auth.basicAuth.enabled=true \
--set auth.basicAuth.htpasswd='admin:{SHA}m04Br+QJKkP4TQq/6bm5WCDk91I='

#--set auth.tokenAuth.enabled=false \
#--set ingress.create=false
#--set ingress.class=ambassador \
#--set ingress.urlPath="/k10.hit.local"




