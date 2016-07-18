{% for user, details in pillar.get('user_list', {}).items() %}
{{ user }}:
  user.present:
    - fullname: {{ details['fullname'] }}
    - home: /home/{{ user }}
    - uid: {{ details['uid'] }}
    - password: {{ details['passwd'] }}
    - shell: /bin/bash
#     - groups:
#     - {{ user }}
{% endfor %}

