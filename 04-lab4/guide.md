### Ref
```
https://blog.kasten.io/posts/rook-ceph-csi-kubernetes-and-k10-an-all-in-one-stateful-experience/

```

### Info

k8s ver: 1.19.1
rook ver : 1.1.7

###

time=20211019-07:38:32.967Z level=error msg=Could not get google bucket for metrics File=kasten.io/k10/kio/phonehome/metric_push.go Function=kasten.io/k10/kio/phonehome.(*Pusher).Init.func1 Line=62 cluster_name=a90b7022-1926-4fdc-b05a-ca9257e13d77 error=Failed to get bucket source=kasten.io/k10/kio/phonehome.newBucket:118 fields= cause="failed to get bucket dev-phonehome-reporting: not found" hostname=metering-svc-755556d67d-ztssp version=4.0.13