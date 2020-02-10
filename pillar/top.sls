#include:
#    - server.salt.proxies.proxy-hosts
  
base:
  # default
  'router1':
    - network.hosts.local.router1
    - network.general.cisco.cdp
 
#'router1':
#    - server.salt.proxies.proxy-conf
 #  - network.netscreens
 #  - network.general.multi.blacklist
 #  - network.host.local.valpo
 #  - server.salt.proxy-firewall
 #  - server.salt.minion-controller-map
 
 # '*':
 #   - global

 # # server saltstack
 # '*-sltmst-*':
 #   - server.salt.master-firewall
 #   - server.device42

 # '*-sltprx-*':
 #   - server.salt.proxy-firewall
 #   - server.salt.minion-controller-map
 #   - server.salt.proxies.proxy-conf
 #   - network.netscreens
 #   - network.general.multi.blacklist
 # '*-sltmst-* or *-sltprx-*':
 #   - server.salt.salt
 #   - server.local-users

 # # stuff for netscreen management
 # 'atlnetutil01':
 #   - server.salt.proxies.proxy-conf
 #   - network.netscreens
 #   - network.general.multi.blacklist

