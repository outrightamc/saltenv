include:
  - server.salt.proxies.proxy-hosts
base:
  # default
  '*':
    - global        
    - network.general.cisco.cdp

  # server saltstack
  '*-sltmst-*':
    - server.salt.master-firewall
    - server.device42
  '*-sltprx-*':
    - server.salt.proxy-firewall
    - server.salt.minion-controller-map
    - server.salt.proxies.proxy-conf
    - network.netscreens
    - network.general.multi.blacklist
  '*-sltmst-* or *-sltprx-*':
    - server.salt.salt
    - server.local-users

  # stuff for netscreen management
  'atlnetutil01':
    - server.salt.proxies.proxy-conf
    - network.netscreens
    - network.general.multi.blacklist

  # MCC  
  'atlixag* or atlixrt*':
    - network.MCC.customers

  # server minions  
  '*-bastion-*':
    - server.local-users
  'atlrancid01 or atlnetutil01 or mtp-nre-01':
    - server.local-users

  # firewall policies audit
  '*fw* or *vpn*':
    - schedule.firewall
    - network.audits.policy_exceptions

  # fabric nodes
  '*-sp-* or *-bl-*':
    - network.general.juniper.fabric

  # edge routers
  '*inet* or *-bl-*':
    - network.general.multi.blacklist
    - network.general.multi.umbrella-prefixes
    - network.general.multi.snmpallow
    - network.general.multi.loopbacks
    - network.general.multi.martians

  # core routers
  '*-bl-* or *ixrt*':
    - network.general.multi.backbone

  # border leaf configuration
  '*-bl-*': []

  # bgp peer down audit
  '*ixrt* or *core* or *inet* or *fw* or *vpn* or *-sp-* or *-lf-* or *-bl-* or *-sp-* or *-ce-* or mtpdev*':
    - schedule.bgp
    - network.audits.bgp_exceptions

  # network minions by nos - multi-platforms
  'G@os:junos or G@os:ios or G@os:nxos*':
    - network.general.multi.snmp

  # production network minions by nos - Cisco
  'G@os:ios or G@os:nxos*':
    - network.general.cisco.ios
    - network.general.cisco.cdp

  'G@os:cumulus':
    - network.general.multi.snmp
    - server.local-users

  # production network minions by nos - Junos
  'G@os:junos':
    - network.general.juniper.junos
    - network.general.juniper.security
    - server.local-users

  # production network minions
  'shi*':
    - network.peering.shi.peers
    - network.peering.shi.node-groups
  'tau*':
    - network.peering.tau.peers
    - network.peering.tau.node-groups
  'ld4*':
    - network.peering.ld4.peers
    - network.peering.ld4.node-groups
  'atl*':
    - network.peering.atl.peers
    - network.peering.atl.node-groups
  'pyr*':
    - network.peering.pyr.peers
    - network.peering.pyr.node-groups

  # fabric
  'chi-lf-* or chi-ce-*':
    - network.general.multi.snmp-instance

  'at1-lf-01':
    - network.cumulus.at1-lf-01
  'at1-lf-02':
    - network.cumulus.at1-lf-02