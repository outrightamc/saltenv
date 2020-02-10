{% for u in salt.pillar.get('local_users:present', []) %}
{{ u.username }}:
  user.present:
    - fullname: {{ u.fullname }}
    - password: {{ u.password }}
    - shell: {{ u.shell|default('/bin/bash') }}
    - optional_groups: {{ u.groups }}
    {% if u.authorized_keys|length > 0 %}
{{ u.username }}_keys:
  ssh_auth.present:
    - user: {{ u.username }}
    - names: {{ u.authorized_keys }}
    {% endif %}
{% endfor %}

{% for u in salt.pillar.get('local_users:absent', []) %}
{{ u }}:
  user.absent
{% endfor %}
