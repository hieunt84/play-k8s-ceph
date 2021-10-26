### ref
```
https://github.com/rook/rook/blob/master/Documentation/ceph-dashboard.md
```
### Acess
```
https://172.20.10.80:30592/
user: admin
pass: 0NST)%!S6*;ANCm^aRc^
```

### show pass to access dashborad
```
kubectl -n rook-ceph get secret rook-ceph-dashboard-password -o jsonpath="{['data']['password']}" | base64 --decode && echo

```
