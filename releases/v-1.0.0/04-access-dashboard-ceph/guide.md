### ref
```
https://github.com/rook/rook/blob/master/Documentation/ceph-dashboard.md
```
### Acess
```
https://172.20.10.80:31008/
user: admin
pass: D9<r`qiE"1u(CndT?tEI
```

### show pass to access dashborad
```
kubectl -n rook-ceph get secret rook-ceph-dashboard-password -o jsonpath="{['data']['password']}" | base64 --decode && echo

```
