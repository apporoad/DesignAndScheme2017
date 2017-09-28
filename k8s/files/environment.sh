# 服务网段 (Service CIDR），部署前必须路由不可达
SERVICE_CIDR="10.254.0.0/16"
# POD 网段 (Cluster CIDR），必须路由可达(flanneld保证)
CLUSTER_CIDR="172.30.0.0/16"
# 服务端口范围 (NodePort Range)
NODE_PORT_RANGE="8400-9000"
# etcd 集群服务地址列表
ETCD_ENDPOINTS="https://192.168.0.201:2379,https://192.168.0.202:2379,ht
tps://192.168.0.203:2379"
# flanneld 网络配置前缀
FLANNEL_ETCD_PREFIX="/kubernetes/network"
# kubernetes 服务 IP (预分配，一般是 SERVICE_CIDR 中第一个IP)
CLUSTER_KUBERNETES_SVC_IP="10.254.0.1"
# 集群 DNS 服务 IP (从 SERVICE_CIDR 中预分配)
CLUSTER_DNS_SVC_IP="10.254.0.2"
# 集群 DNS 域名
CLUSTER_DNS_DOMAIN="cluster.local."