### Ref
```
https://blog.kasten.io/posts/rook-ceph-csi-kubernetes-and-k10-an-all-in-one-stateful-experience/

https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ceph-cluster-within-kubernetes-using-rook
```

### Commands deploy
```
git clone https://github.com/rook/rook.git
cd rook
git checkout v1.1.7

cd cluster/examples/kubernetes/ceph

kubectl create -f common.yaml

kubectl create -f operator.yaml

kubectl --namespace=rook-ceph --watch=true get pods

kubectl create -f cluster-test.yaml

kubectl --namespace=rook-ceph --watch=true get pods

```