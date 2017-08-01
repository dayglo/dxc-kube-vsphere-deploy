Example deploy k8s to vsphere
=============================

## Prerequisites

Deploy the OVA template from the [kubernetes anywhere vsphere instructions](https://github.com/kubernetes/kubernetes-anywhere/blob/master/phase1/vsphere/README.md#upload-vm-image-to-be-used-to-vsphere).

Dont turn it on. Convert it to a vcenter template without changing the name.

- A docker installation (local or remote) that can see:- 
	- the vcenter server; 
	- the vlan where the kubernetes nodes will deploy.


The VLAN you choose must have internet access and dhcp.

The docker server can be deployed using [this script](https://gist.github.com/dayglo/fc48638d30218a5d420c69c7ac5b71dc).

The dhcp server can be deployed easily using [this docker image](https://hub.docker.com/r/joebiellik/dhcpd/). An example dhcp.conf is [here](https://gist.github.com/dayglo/d095922dda57a9ebe6b0018c404e6fca).


## Deploy

```
git clone https://github.com/dayglo/dxc-kube-vsphere-deploy.git
cd dxc-kube-vsphere-deploy
```

Open and edit the ```.config``` file, replacing the vsphere details, credentials, cluster size and cluster name. If you use a DNS name for the vcenter in the config file, ensure you update the --dns lines in the start.sh script.

run ```./start.sh```, then in the kubernetes-anywhere container terminal session, type ```make deploy```.

Dont exit the container before saving the kubeconfig (which includes the certificate we need to log on). I'll automate this bit next.


## Destroy

in the kubernetes-anywhere container terminal session, type ```make destroy-cluster``` 