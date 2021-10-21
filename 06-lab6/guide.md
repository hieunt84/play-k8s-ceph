### Info
k8s ver: 1.19.1
rook ver : 1.4.9

### Target
- Test version rook 1.4.9

### Commands deploy
```
git clone --single-branch --branch v1.4.9 https://github.com/rook/rook.git

cd rook/cluster/examples/kubernetes/ceph

# Deploy the Rook Operator

kubectl create -f crds.yaml -f common.yaml -f operator.yaml

kubectl -n rook-ceph get pod -w

# Create a Ceph Cluster

kubectl create -f cluster-test.yaml

kubectl -n rook-ceph get pod -w

# Access dashboard

kubectl apply -f ./dashboard-external-https.yaml

```

### Ref
```
https://rook.github.io/docs/rook/v1.7/quickstart.html
```