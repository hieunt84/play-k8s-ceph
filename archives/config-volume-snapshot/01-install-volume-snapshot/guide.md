### Ref
```
https://longhorn.io/docs/1.2.2/snapshots-and-backups/csi-snapshot-support/enable-csi-snapshot-support/
```

### Step 1
```
kubectl apply -f ./crd --namespace default
```

### Step 2
```
kubectl create -f ./snapshot-controller
```
