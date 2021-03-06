  {% set host_server = salt['grains.get']('host') %}

eth0:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    - ipaddr: {{ salt['pillar.get']('addr_eth0')[host_server] }}
    - netmask: {{ pillar['netmask_eth0'] }}

routes:
  network.routes:
    - name: eth0
    - routes:
      - name: default
        ipaddr: 0.0.0.0
        netmask: 0.0.0.0
        gateway: {{ pillar['gateway_eth0'] }}
