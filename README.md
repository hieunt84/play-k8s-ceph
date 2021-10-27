# play-k10-ceph
### Ref
```
https://blog.kasten.io/posts/storage-systems-and-data-management-for-kubernetes-power-in-diversity-0

https://rook.github.io/docs/rook/v1.6/pre-reqs.html

https://blog.kasten.io/posts/rook-ceph-csi-kubernetes-and-k10-an-all-in-one-stateful-experience/

https://blog.kasten.io/posts/backup-and-disaster-recovery-for-rook-ceph-with-kasten-k10/

https://blog.kasten.io/kubernetes-backup-and-dr-using-rook-1-4-and-ceph-3-0

https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ceph-cluster-within-kubernetes-using-rook
```

### What is ceph?
- Ceph is a highly scalable distributed storage solution for block storage, object storage, and shared filesystems with years of production deployments.

- storage solution

- Software defines storage

- manage volume
  + provisioning
  + delete
  + snapshot

### What is rook?
- Storage Operators for Kubernetes

- Rook turns distributed storage systems ( example: ceph
) into self-managing, self-scaling, self-healing storage services. It automates the tasks of a storage administrator: deployment, bootstrapping, configuration, provisioning, scaling, upgrading, migration, disaster recovery, monitoring, and resource management.

- Rook uses the power of the Kubernetes platform to deliver its services via a Kubernetes Operator for each storage provider.

### Design Infastructure for ceph cluster
- 4 VM : 1 Master, 3 Worker
- VM woker: 2 hdd, 1hdd : os, 1hdd: for install ceph

