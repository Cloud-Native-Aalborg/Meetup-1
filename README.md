# Meetup-1

This document contains the commands used in the kubernetes in 10 minutes presentation.

## Steps

Allocate 3 vms

Use k3sup to install k3s on master node

~~~Shell
k3sup install --ip 159.69.209.253
export KUBECONFIG=`pwd`/kubeconfig
~~~

Use k3sup to join work nodes

~~~Shell
k3sup join --ip 159.69.209.198 --server-ip 159.69.209.253
k3sup join --ip 116.203.200.59 --server-ip 159.69.209.253
~~~

Check out the nodes

~~~Shell
kubectl get nodes
NAME                STATUS   ROLES    AGE     VERSION
debian-2gb-nbg1-1   Ready    worker   4m47s   v1.14.6-k3s.1
debian-2gb-nbg1-2   Ready    worker   5m29s   v1.14.6-k3s.1
debian-2gb-nbg1-3   Ready    master   8m25s   v1.14.6-k3s.1
~~~




## Links
- https://k3s.io/
- https://github.com/alexellis/k3sup

