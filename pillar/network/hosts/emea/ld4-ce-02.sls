dc: ld4
proxy:
  driver: junos
  host: ld4-ce-02.net.arkadin.lan
region: emea
roles:
- edge_switch
topology:
  node_index: 2
  connected_devices:
    carrier_sbc:
      short_name: sbc
      tagged_interfaces: []
    customer_sbc:
      short_name: sbc
      tagged_interfaces: []
    edge_firewall:
      short_name: srx
      tagged_interfaces:
      - ae1
    external_peer:
      short_name: ix
      tagged_interfaces:
      - ae1
    federated_ixrt:
      short_name: rtr
      tagged_interfaces:
      - ae0
