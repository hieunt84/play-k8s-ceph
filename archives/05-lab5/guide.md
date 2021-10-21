### Info
k8s ver: 1.19.1
rook ver : 1.1.7

### Target
- Test design infastructure for ceph cluster.
- add 1 hdd 30GB for ceph

### Commands deploy
```
git clone https://github.com/rook/rook.git
cd rook
git checkout v1.1.7

cd cluster/examples/kubernetes/ceph

kubectl create -f common.yaml

kubectl create -f operator.yaml

kubectl --namespace=rook-ceph --watch=true get pods

kubectl create -f ./cluster-test.yaml

kubectl --namespace=rook-ceph --watch=true get pods

kubectl apply -f ./dashboard-external-https.yaml

```