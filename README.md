# Ansible for Configuration Management demo

*TBD*

## Setup demo environment

- Vagrant
- Vbox

### Setup required software

On ubuntu

```bash
sudo apt-get install vagrant vbox
sudo apt-get install vagrant vagrant
```

On mac

**TBD**

### Create virtual hosts

To set up demo env run

```bash
vagrant box update
vagrant up
```

### Check status of vms

```bash
vagrant status
```

expected result

```
ansible                   running (virtualbox)
node1                     running (virtualbox)
node2                     running (virtualbox)
node3                     running (virtualbox)
...
```

or

```bash
VBoxManage list vms
```

expected result

```
"Ansible host" {c8bffa39-a601-4718-971f-be2236d2dd41}
"Node 1" {c8bffa39-a601-4718-971f-be2236d2dd42}
"Node 2" {c8bffa39-a601-4718-971f-be2236d2dd43}
"Node 3" {c8bffa39-a601-4718-971f-be2236d2dd44}
```

### Ssh to ansible host

```bash
vagrant ssh 
cd /demo
```


## Demo

You are ready to demo. See list of demo:

```bash
cd /demo
ls -ll
```

## Clean up demo environment

To destroy all vm run

```bash
vagrant destriy -f
```
