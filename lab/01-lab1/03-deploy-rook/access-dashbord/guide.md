# ref
```
https://github.com/rook/rook/blob/master/Documentation/ceph-dashboard.md
```
### commands
```
kubectl -n rook-ceph get secret rook-ceph-dashboard-password -o jsonpath="{['data']['password']}" | base64 --decode && echo
pass: S1OHpnW9O2
```
