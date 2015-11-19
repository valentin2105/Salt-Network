## Salt-Network

Provide a network configuration to yours minions

### Put your configuration in Pillar
```
address_eth0:
  web1: 192.168.1.121
  web2: 192.168.1.122
  db1: 192.168.1.123
  db2: 192.168.1.124
  
netmask_eth0: 255.255.255.0
gateway_eth0: 192.168.1.1
```

### Apply the State
```
salt '*' state.sls network
```

This state actually work on Debian (all version I think).

I use it only for **eth0** but you can easily add other interfaces.
