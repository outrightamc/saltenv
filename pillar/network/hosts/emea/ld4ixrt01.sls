dc: ld4
proxy: {driver: ios, host: ld4ixrt01.net.arkadin.lan}
region: emea
roles: [mpls_pe]

topology:
  node_index: 1
  connected_devices:
    carrier_sbc: { short_name: sbc, tagged_interfaces: [ "GigabitEthernet0/0/1" ] }
    customer_sbc: { short_name: sbc, tagged_interfaces: [ "GigabitEthernet0/0/1" ] }
    edge_firewall: { short_name: srx, tagged_interfaces: [ "GigabitEthernet0/0/1" ] }
    external_peer: { short_name: ix, tagged_interfaces: [ "GigabitEthernet0/0/2" ] }
