PUBLIC_IP=$(getent hosts etcd | awk '{print $1}')
# while [ true ]; do
./confd -interval 10 -node 120.25.76.205:2379 -config-file /etc/confd/conf.d/haproxy.toml
#     sleep 1
#     echo confd exited, restarting.
# done