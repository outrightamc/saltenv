snmpv3:
  netconfig.managed:
    - template_name: salt://network/general/multi/snmpv3/snmpv3.j2
    - snmpv3: {{ salt.pillar.get('snmpv3') }}
    - region: {{ salt.pillar.get('region') }}
    - dc: {{ salt.pillar.get('dc', 'unknown') }}
    - source_address: {{ salt.netutil.management_int() | json }}
    - debug: true

