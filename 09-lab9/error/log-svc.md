root@kmaster:~# k describe svc rook-ceph-mgr-dashboard
Name:              rook-ceph-mgr-dashboard
Namespace:         rook-ceph
Labels:            app=rook-ceph-mgr
                   rook_cluster=rook-ceph
Annotations:       <none>
Selector:          app=rook-ceph-mgr,rook_cluster=rook-ceph
Type:              ClusterIP
IP:                10.107.13.2
Port:              https-dashboard  8443/TCP
TargetPort:        8443/TCP
Endpoints:         192.168.140.5:8443
Session Affinity:  None
Events:            <none>
root@kmaster:~#
