import json

def bgp_summary():
    data = __salt__['cmd.run']('net show bgp summary json')
    return json.loads(data)
