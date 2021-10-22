###  Notes
```
```

### Info
k8s ver: 1.19.1
rook ver : 1.3

### Target
- Test version rook 1.3

### Deploy rook-ceph
```
# 00. add repo

git clone --single-branch --branch v1.3.11 https://github.com/rook/rook.git
cd rook/cluster/examples/kubernetes/ceph
git status

# 01. Deploy the Rook Operator

kubectl apply -f common.yaml
kubectl apply -f operator.yaml

## verify the rook-ceph-operator is in the `Running` state before proceeding

kubectl -n rook-ceph get pod -w

# 02. Create a Ceph Cluster

kubectl apply -f cluster-test.yaml
kubectl -n rook-ceph get pod -w

# 03. Access dashboard

kubectl apply -f ./dashboard-external-https.yaml

```

### StorageClass Install
```
kubectl create -f csi/rbd/storageclass-test.yaml

kubectl patch storageclass rook-ceph-block \
    -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'

```

### VolumeSnapshotClass Install
```
kubectl create -f csi/rbd/snapshotclass.yaml
```

### Creat pvc
```
kubectl create -f csi/rbd/pvc.yaml
```

### Creat snapshot for pvc above
```
kubectl create -f csi/rbd/snapshot.yaml
```

### Restore from snapshot
```
kubectl create -f csi/rbd/pvc-restore.yaml
```

### Ref
```
https://rook.github.io/docs/rook/v1.3/ceph-quickstart.html
https://blog.kasten.io/posts/rook-ceph-csi-kubernetes-and-k10-an-all-in-one-stateful-experience/

```