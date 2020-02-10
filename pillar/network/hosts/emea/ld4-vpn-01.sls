dc: ld4
proxy:
  driver: junos
  host: ld4-vpn-01.net.arkadin.lan
region: emea
roles:
- vpn_concentrator
type: production


ipsecs:
  - customer: applic-brs
    reth_id: test1

  - customer: test01
    reth_id: test2