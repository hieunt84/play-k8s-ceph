### ref
```
https://github.com/rook/rook/blob/master/Documentation/ceph-dashboard.md
```
### Acess
```
https://172.20.10.80:31268/
user: admin
pass: EGb_=(eL=)IQN'M2@l:@
```

### show pass to access dashborad
```
kubectl -n rook-ceph get secret rook-ceph-dashboard-password -o jsonpath="{['data']['password']}" | base64 --decode && echo

```
