include:
  - server.base.local-users

host_firewall_running:
  pkg.installed:
    - name: firewalld
  service.running:
    - name: firewalld
    - enable: true

host_firewall_internal_zone:
  firewalld.present:
    - name: internal
    - sources:
      - 10.0.0.0/8
    - services: {{ salt.pillar.get('firewall:permit', ['ssh']) }}
    - require:
      - service: firewalld

host_firewall_public_zone:
  firewalld.present:
    - name: public
    - services: []
    - ports: []
    - sources: []
    - default: true
    - require:
      - service: firewalld

set_timezone_utc:
  timezone.system:
    - name: UTC

{% set region = salt.grains.get('region', 'emea') %}
ntp_configured:
  # the package name is probably platform specific. we might need a grains.filter_by if we want debian in the future.
  pkg.installed:
    - name: ntp
  file.managed:
    - name: /etc/ntp.conf
    - source: salt://server/base/ntp.conf.j2
    - template: jinja
    - mode: 0644
    - user: root
    - group: root
    - servers: {{ salt.pillar.get('network_services:ntp') | json }}
  service.running:
    - name: ntpd
    - enable: true
    - watch:
      - file: /etc/ntp.conf

snmpd_configured:
  pkg.installed:
    - name: net-snmp
  file.managed:
    - name: /etc/snmp/snmpd.conf
    - source: salt://server/base/snmpd.conf.j2
    - template: jinja
    - mode: 0644
    - user: root
    - group: root
  service.running:
    - name: snmpd
    - enable: true
    - watch:
      - file: /etc/snmp/snmpd.conf

dns_configured:
  file.managed:
    - name: /etc/resolv.conf
    - source: salt://server/base/resolv.conf.j2
    - template: jinja
    - mode: 0644
    - user: root
    - group: root
    - servers: {{ salt.pillar.get('network_services:dns', {}).get(region, []) | json }}
