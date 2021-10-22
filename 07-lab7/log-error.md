root@kmaster-test:~/rook/cluster/examples/kubernetes/ceph# k get pvc
NAME              STATUS    VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS      AGE
rbd-pvc           Bound     pvc-6435e314-f7ea-41f0-89ed-cf7a0308d38c   1Gi        RWO            rook-ceph-block   4m33s
rbd-pvc-restore   Pending                                                                        rook-ceph-block   78s
root@kmaster-test:~/rook/cluster/examples/kubernetes/ceph# k describe pvc rbd-pvc-restore
Name:          rbd-pvc-restore
Namespace:     rook-ceph
StorageClass:  rook-ceph-block
Status:        Pending
Volume:
Labels:        <none>
Annotations:   volume.beta.kubernetes.io/storage-provisioner: rook-ceph.rbd.csi.ceph.com
Finalizers:    [kubernetes.io/pvc-protection]
Capacity:
Access Modes:
VolumeMode:    Filesystem
DataSource:
  APIGroup:  snapshot.storage.k8s.io
  Kind:      VolumeSnapshot
  Name:      rbd-pvc-snapshot
Mounted By:  <none>
Events:
  Type     Reason                Age                  From                                                                                                        Message
  ----     ------                ----                 ----                                                                                                        -------
  Normal   Provisioning          28s (x7 over 2m1s)   rook-ceph.rbd.csi.ceph.com_csi-rbdplugin-provisioner-55494cc8b4-jwg2z_d26536ac-67c7-4452-b4ec-8cb183943d12  External provisioner is provisioning volume for claim "rook-ceph/rbd-pvc-restore"
  Warning  ProvisioningFailed    18s (x7 over 111s)   rook-ceph.rbd.csi.ceph.com_csi-rbdplugin-provisioner-55494cc8b4-jwg2z_d26536ac-67c7-4452-b4ec-8cb183943d12  failed to provision volume with StorageClass "rook-ceph-block": volume content source missing
  Normal   ExternalProvisioning  11s (x10 over 2m1s)  persistentvolume-controller                                                                                 waiting for a volume to be created, either by external provisioner "rook-ceph.rbd.csi.ceph.com" or manually created by system administrator
