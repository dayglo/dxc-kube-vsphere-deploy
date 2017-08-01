Example deploy k8s to vsphere
=============================

You will need:-
- A docker installation (local or remote) that can see:- 
	- the vcenter server; 
	- the vlan where the kubernetes nodes will deploy.
- 

The VLAN you chose must have internet access and dhcp.

The docker server can be deployed easily using [this docker image](https://hub.docker.com/r/joebiellik/dhcpd/) An example dhcp.conf is [here](https://gist.github.com/dayglo/d095922dda57a9ebe6b0018c404e6fca).


```
git clone https://github.com/dayglo/dxc-kube-vsphere-deploy.git
cd dxc-kube-vsphere-deploy
```

edit the .config file, replacing the vsphere details.

run ```./start.sh```, then in the kubernetes-anywhere container terminal session, type ```make deploy``` 