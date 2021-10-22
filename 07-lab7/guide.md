### Info
k8s ver: 1.19.1
rook ver : 1.2.1

### Target
- Test version rook 1.2.1

### Commands deploy
```
# 00. add repo

git clone --single-branch --branch release-1.2 https://github.com/rook/rook.git
cd rook/cluster/examples/kubernetes/ceph

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

### Ref
```
https://rook.github.io/docs/rook/v1.2/ceph-quickstart.html
```