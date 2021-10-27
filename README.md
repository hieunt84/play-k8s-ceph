# play-k8s-rook-ceph-k10
### Ref
```
https://blog.kasten.io/kubernetes-backup-and-dr-using-rook-1-4-and-ceph-3-0

Tutorial 1:
https://news.cloud365.vn/ceph-ly-thuyet-dieu-it-de-y-ve-phien-ban-cua-ceph/
https://news.cloud365.vn/ceph-lab-phan1-huong-dan-cai-dat-ceph-nautilus-tren-centos7/
https://news.cloud365.vn/ceph-lab-phan2-huong-dan-su-dung-block-storage-cua-ceph/

Tutorial 2:
https://github.com/rook/rook
https://rook.github.io/docs/rook/v1.6/pre-reqs.html
https://ceph.com/en/
https://github.com/kubernetes-csi/external-snapshotter/tree/v4.0.0#usage

Tutorial 3:
https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ceph-cluster-within-kubernetes-using-rook

Tutorial 4:
https://ralph.blog.imixs.com/2020/02/21/kubernetes-storage-volumes-with-ceph/


```

### What is ceph?
- Ceph is an open-source, distributed storage system.
- storage solution
- Software defines storage
- Ceph is a highly scalable distributed storage solution for block storage, object storage, and shared filesystems with years of production deployments.

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

