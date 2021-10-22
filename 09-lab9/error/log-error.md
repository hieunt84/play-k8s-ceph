root@kmaster:~# k describe pod rook-ceph-mgr-a-c6b645d94-bstnm
Name:         rook-ceph-mgr-a-c6b645d94-bstnm
Namespace:    rook-ceph
Priority:     0
Node:         kworker3/172.20.10.83
Start Time:   Fri, 22 Oct 2021 09:37:37 +0000
Labels:       app=rook-ceph-mgr
              ceph_daemon_id=a
              ceph_daemon_type=mgr
              instance=a
              mgr=a
              pod-template-hash=c6b645d94
              rook_cluster=rook-ceph
Annotations:  cni.projectcalico.org/podIP: 192.168.140.5/32
              cni.projectcalico.org/podIPs: 192.168.140.5/32
              prometheus.io/port: 9283
              prometheus.io/scrape: true
Status:       Running
IP:           192.168.140.5
IPs:
  IP:           192.168.140.5
Controlled By:  ReplicaSet/rook-ceph-mgr-a-c6b645d94
Init Containers:
  chown-container-data-dir:
    Container ID:  containerd://b4daa3b7979eef372cba63a93a1075a7def92c82be6a4cc5c7f7cef0098dd990
    Image:         ceph/ceph:v15.2.8
    Image ID:      docker.io/ceph/ceph@sha256:37939a3739e4e037dcf1b1f5828058d721d8c6de958212609f9e7d920b9c62bf
    Port:          <none>
    Host Port:     <none>
    Command:
      chown
    Args:
      --verbose
      --recursive
      ceph:ceph
      /var/log/ceph
      /var/lib/ceph/crash
      /var/lib/ceph/mgr/ceph-a
    State:          Terminated
      Reason:       Completed
      Exit Code:    0
      Started:      Fri, 22 Oct 2021 09:37:47 +0000
      Finished:     Fri, 22 Oct 2021 09:37:47 +0000
    Ready:          True
    Restart Count:  0
    Environment:    <none>
    Mounts:
      /etc/ceph from rook-config-override (ro)
      /etc/ceph/keyring-store/ from rook-ceph-mgr-a-keyring (ro)
      /var/lib/ceph/crash from rook-ceph-crash (rw)
      /var/lib/ceph/mgr/ceph-a from ceph-daemon-data (rw)
      /var/log/ceph from rook-ceph-log (rw)
      /var/run/secrets/kubernetes.io/serviceaccount from rook-ceph-mgr-token-zqrtx (ro)
  init-set-dashboard-server-addr:
    Container ID:  containerd://150d81740ffdecfe5a1ce01a1a6c3918411fd0634f80ea86e12a04beb96d167f
    Image:         ceph/ceph:v15.2.8
    Image ID:      docker.io/ceph/ceph@sha256:37939a3739e4e037dcf1b1f5828058d721d8c6de958212609f9e7d920b9c62bf
    Port:          <none>
    Host Port:     <none>
    Command:
      ceph
    Args:
      --fsid=65838610-c458-4a32-8f03-97b75676dbab
      --keyring=/etc/ceph/admin-keyring-store/keyring
      --log-to-stderr=true
      --err-to-stderr=true
      --mon-cluster-log-to-stderr=true
      --log-stderr-prefix=debug
      --default-log-to-file=false
      --default-mon-cluster-log-to-file=false
      --mon-host=$(ROOK_CEPH_MON_HOST)
      --mon-initial-members=$(ROOK_CEPH_MON_INITIAL_MEMBERS)
      --setuser=ceph
      --setgroup=ceph
      config
      set
      mgr.a
      mgr/dashboard/a/server_addr
      $(ROOK_POD_IP)
      --force
      --verbose
    State:          Terminated
      Reason:       Completed
      Exit Code:    0
      Started:      Fri, 22 Oct 2021 09:37:53 +0000
      Finished:     Fri, 22 Oct 2021 09:37:56 +0000
    Ready:          True
    Restart Count:  0
    Environment:
      CONTAINER_IMAGE:                ceph/ceph:v15.2.8
      POD_NAME:                       rook-ceph-mgr-a-c6b645d94-bstnm (v1:metadata.name)
      POD_NAMESPACE:                  rook-ceph (v1:metadata.namespace)
      NODE_NAME:                       (v1:spec.nodeName)
      POD_MEMORY_LIMIT:               node allocatable (limits.memory)
      POD_MEMORY_REQUEST:             0 (requests.memory)
      POD_CPU_LIMIT:                  node allocatable (limits.cpu)
      POD_CPU_REQUEST:                0 (requests.cpu)
      ROOK_CEPH_MON_HOST:             <set to the key 'mon_host' in secret 'rook-ceph-config'>             Optional: false
      ROOK_CEPH_MON_INITIAL_MEMBERS:  <set to the key 'mon_initial_members' in secret 'rook-ceph-config'>  Optional: false
      ROOK_POD_IP:                     (v1:status.podIP)
      ROOK_OPERATOR_NAMESPACE:        rook-ceph
      ROOK_CEPH_CLUSTER_CRD_VERSION:  v1
      ROOK_CEPH_CLUSTER_CRD_NAME:     rook-ceph
      ROOK_POD_IP:                     (v1:status.podIP)
    Mounts:
      /etc/ceph from rook-config-override (ro)
      /etc/ceph/admin-keyring-store/ from rook-ceph-admin-keyring (ro)
      /etc/ceph/keyring-store/ from rook-ceph-mgr-a-keyring (ro)
      /var/lib/ceph/crash from rook-ceph-crash (rw)
      /var/lib/ceph/mgr/ceph-a from ceph-daemon-data (rw)
      /var/log/ceph from rook-ceph-log (rw)
      /var/run/secrets/kubernetes.io/serviceaccount from rook-ceph-mgr-token-zqrtx (ro)
  init-set-prometheus-server-addr:
    Container ID:  containerd://b16ba4c052960bbbaf05e7d2a0e8ebbdde28e12a4e7e825d2511d77c168c16a1
    Image:         ceph/ceph:v15.2.8
    Image ID:      docker.io/ceph/ceph@sha256:37939a3739e4e037dcf1b1f5828058d721d8c6de958212609f9e7d920b9c62bf
    Port:          <none>
    Host Port:     <none>
    Command:
      ceph
    Args:
      --fsid=65838610-c458-4a32-8f03-97b75676dbab
      --keyring=/etc/ceph/admin-keyring-store/keyring
      --log-to-stderr=true
      --err-to-stderr=true
      --mon-cluster-log-to-stderr=true
      --log-stderr-prefix=debug
      --default-log-to-file=false
      --default-mon-cluster-log-to-file=false
      --mon-host=$(ROOK_CEPH_MON_HOST)
      --mon-initial-members=$(ROOK_CEPH_MON_INITIAL_MEMBERS)
      --setuser=ceph
      --setgroup=ceph
      config
      set
      mgr.a
      mgr/prometheus/a/server_addr
      $(ROOK_POD_IP)
      --force
      --verbose
    State:          Terminated
      Reason:       Completed
      Exit Code:    0
      Started:      Fri, 22 Oct 2021 09:37:59 +0000
      Finished:     Fri, 22 Oct 2021 09:38:03 +0000
    Ready:          True
    Restart Count:  0
    Environment:
      CONTAINER_IMAGE:                ceph/ceph:v15.2.8
      POD_NAME:                       rook-ceph-mgr-a-c6b645d94-bstnm (v1:metadata.name)
      POD_NAMESPACE:                  rook-ceph (v1:metadata.namespace)
      NODE_NAME:                       (v1:spec.nodeName)
      POD_MEMORY_LIMIT:               node allocatable (limits.memory)
      POD_MEMORY_REQUEST:             0 (requests.memory)
      POD_CPU_LIMIT:                  node allocatable (limits.cpu)
      POD_CPU_REQUEST:                0 (requests.cpu)
      ROOK_CEPH_MON_HOST:             <set to the key 'mon_host' in secret 'rook-ceph-config'>             Optional: false
      ROOK_CEPH_MON_INITIAL_MEMBERS:  <set to the key 'mon_initial_members' in secret 'rook-ceph-config'>  Optional: false
      ROOK_POD_IP:                     (v1:status.podIP)
      ROOK_OPERATOR_NAMESPACE:        rook-ceph
      ROOK_CEPH_CLUSTER_CRD_VERSION:  v1
      ROOK_CEPH_CLUSTER_CRD_NAME:     rook-ceph
      ROOK_POD_IP:                     (v1:status.podIP)
    Mounts:
      /etc/ceph from rook-config-override (ro)
      /etc/ceph/admin-keyring-store/ from rook-ceph-admin-keyring (ro)
      /etc/ceph/keyring-store/ from rook-ceph-mgr-a-keyring (ro)
      /var/lib/ceph/crash from rook-ceph-crash (rw)
      /var/lib/ceph/mgr/ceph-a from ceph-daemon-data (rw)
      /var/log/ceph from rook-ceph-log (rw)
      /var/run/secrets/kubernetes.io/serviceaccount from rook-ceph-mgr-token-zqrtx (ro)
Containers:
  mgr:
    Container ID:  containerd://f9e879cf7f76b000ef4eef42c6c0b0488dcc2c35fcf82fa24317854702c47b54
    Image:         ceph/ceph:v15.2.8
    Image ID:      docker.io/ceph/ceph@sha256:37939a3739e4e037dcf1b1f5828058d721d8c6de958212609f9e7d920b9c62bf
    Ports:         6800/TCP, 9283/TCP, 8443/TCP
    Host Ports:    0/TCP, 0/TCP, 0/TCP
    Command:
      ceph-mgr
    Args:
      --fsid=65838610-c458-4a32-8f03-97b75676dbab
      --keyring=/etc/ceph/keyring-store/keyring
      --log-to-stderr=true
      --err-to-stderr=true
      --mon-cluster-log-to-stderr=true
      --log-stderr-prefix=debug
      --default-log-to-file=false
      --default-mon-cluster-log-to-file=false
      --mon-host=$(ROOK_CEPH_MON_HOST)
      --mon-initial-members=$(ROOK_CEPH_MON_INITIAL_MEMBERS)
      --id=a
      --setuser=ceph
      --setgroup=ceph
      --client-mount-uid=0
      --client-mount-gid=0
      --foreground
      --public-addr=$(ROOK_POD_IP)
    State:          Running
      Started:      Fri, 22 Oct 2021 09:39:58 +0000
    Last State:     Terminated
      Reason:       Error
      Exit Code:    137
      Started:      Fri, 22 Oct 2021 09:38:05 +0000
      Finished:     Fri, 22 Oct 2021 09:39:57 +0000
    Ready:          True
    Restart Count:  1
    Liveness:       http-get http://:9283/ delay=60s timeout=1s period=10s #success=1 #failure=3
    Environment:
      CONTAINER_IMAGE:                ceph/ceph:v15.2.8
      POD_NAME:                       rook-ceph-mgr-a-c6b645d94-bstnm (v1:metadata.name)
      POD_NAMESPACE:                  rook-ceph (v1:metadata.namespace)
      NODE_NAME:                       (v1:spec.nodeName)
      POD_MEMORY_LIMIT:               node allocatable (limits.memory)
      POD_MEMORY_REQUEST:             0 (requests.memory)
      POD_CPU_LIMIT:                  node allocatable (limits.cpu)
      POD_CPU_REQUEST:                0 (requests.cpu)
      ROOK_CEPH_MON_HOST:             <set to the key 'mon_host' in secret 'rook-ceph-config'>             Optional: false
      ROOK_CEPH_MON_INITIAL_MEMBERS:  <set to the key 'mon_initial_members' in secret 'rook-ceph-config'>  Optional: false
      ROOK_OPERATOR_NAMESPACE:        rook-ceph
      ROOK_CEPH_CLUSTER_CRD_VERSION:  v1
      ROOK_CEPH_CLUSTER_CRD_NAME:     rook-ceph
      ROOK_POD_IP:                     (v1:status.podIP)
    Mounts:
      /etc/ceph from rook-config-override (ro)
      /etc/ceph/keyring-store/ from rook-ceph-mgr-a-keyring (ro)
      /var/lib/ceph/crash from rook-ceph-crash (rw)
      /var/lib/ceph/mgr/ceph-a from ceph-daemon-data (rw)
      /var/log/ceph from rook-ceph-log (rw)
      /var/run/secrets/kubernetes.io/serviceaccount from rook-ceph-mgr-token-zqrtx (ro)
Conditions:
  Type              Status
  Initialized       True
  Ready             True
  ContainersReady   True
  PodScheduled      True
Volumes:
  rook-config-override:
    Type:      ConfigMap (a volume populated by a ConfigMap)
    Name:      rook-config-override
    Optional:  false
  rook-ceph-mgr-a-keyring:
    Type:        Secret (a volume populated by a Secret)
    SecretName:  rook-ceph-mgr-a-keyring
    Optional:    false
  rook-ceph-log:
    Type:          HostPath (bare host directory volume)
    Path:          /var/lib/rook/rook-ceph/log
    HostPathType:
  rook-ceph-crash:
    Type:          HostPath (bare host directory volume)
    Path:          /var/lib/rook/rook-ceph/crash
    HostPathType:
  ceph-daemon-data:
    Type:       EmptyDir (a temporary directory that shares a pod's lifetime)
    Medium:
    SizeLimit:  <unset>
  rook-ceph-admin-keyring:
    Type:        Secret (a volume populated by a Secret)
    SecretName:  rook-ceph-admin-keyring
    Optional:    false
  rook-ceph-mgr-token-zqrtx:
    Type:        Secret (a volume populated by a Secret)
    SecretName:  rook-ceph-mgr-token-zqrtx
    Optional:    false
QoS Class:       BestEffort
Node-Selectors:  <none>
Tolerations:     node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                 node.kubernetes.io/unreachable:NoExecute op=Exists for 5s
Events:
  Type     Reason     Age                From               Message
  ----     ------     ----               ----               -------
  Normal   Scheduled  39m                default-scheduler  Successfully assigned rook-ceph/rook-ceph-mgr-a-c6b645d94-bstnm to kworker3
  Normal   Pulled     38m                kubelet, kworker3  Container image "ceph/ceph:v15.2.8" already present on machine
  Normal   Created    38m                kubelet, kworker3  Created container chown-container-data-dir
  Normal   Started    38m                kubelet, kworker3  Started container chown-container-data-dir
  Normal   Pulled     38m                kubelet, kworker3  Container image "ceph/ceph:v15.2.8" already present on machine
  Normal   Created    38m                kubelet, kworker3  Created container init-set-dashboard-server-addr
  Normal   Started    38m                kubelet, kworker3  Started container init-set-dashboard-server-addr
  Normal   Created    38m                kubelet, kworker3  Created container init-set-prometheus-server-addr
  Normal   Pulled     38m                kubelet, kworker3  Container image "ceph/ceph:v15.2.8" already present on machine
  Normal   Started    38m                kubelet, kworker3  Started container init-set-prometheus-server-addr
  Warning  Unhealthy  37m (x3 over 37m)  kubelet, kworker3  Liveness probe failed: Get "http://192.168.140.5:9283/": dial tcp 192.168.140.5:9283: connect: connection refused
  Normal   Killing    37m                kubelet, kworker3  Container mgr failed liveness probe, will be restarted
  Normal   Pulled     36m (x2 over 38m)  kubelet, kworker3  Container image "ceph/ceph:v15.2.8" already present on machine
  Normal   Created    36m (x2 over 38m)  kubelet, kworker3  Created container mgr
  Normal   Started    36m (x2 over 38m)  kubelet, kworker3  Started container mgr
root@kmaster:~#
