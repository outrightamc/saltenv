snmpv3:
# NOTIFY SECTION for NOCTION
  notify: 
    atl:
      name: NOCTION_SUPPORT
      tag: TAG_NOCTION_ATL
      type: trap

# COMMUNITY SECTION
  community:
    global: COMM_ARK-NOCTION
    atl:
      security_name: NOCTIONATL
      tag: TAG_NOCTION_ATL

# TA SECTION
  target_address:
    atl:
      net_address: 192.206.95.168
      net_mask: 255.255.255.248
      tag_list: TAG_NOCTION_ATL
      target_param: TP_NOCTION1

# TP SECTION
  target_param:
    atl:
      sec_name: NOCTIONATL

# USM SECTION
  usm:
    atl:
      user: NOCTIONATL
      password: 7druecFighcyk/

# VACM SECTION
  vacm:
    atl:
      sec_name: NOCTIONATL


