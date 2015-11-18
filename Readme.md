## Salt-Network

Provide a network configuration to yours minions

### Put your IP Address in Pillar
```
db1:
  eth0: 10.0.0.2
db2:
  eth0: 10.0.0.3
```

### Execute the State
```
salt '*' state.sls network
```
