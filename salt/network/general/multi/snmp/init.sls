multi_snmp:
  netconfig.managed:
    - template_name: salt://network/general/multi/snmp/snmp.j2
    - snmp: {{ salt.pillar.get('snmp') }}
    - region: {{ salt.pillar.get('region') }}
    - dc: {{ salt.pillar.get('dc', 'unknown') }}
    - debug: true