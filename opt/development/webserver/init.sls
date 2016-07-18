httpd:
  pkg:
    - installed
git:
  pkg:
    - installed

/var/www/index.html:
  file:
    - managed
    - source: salt://webserver/index.html
    - require: 
      - pkg: httpd

/opt/base:
  file.directory:
    - user: jason
    - group: jason
    - dir_mode: 0755
    - require: 
      - user: jason

pillar_repo:
  salt.latest:
    - name: https://github.com/jasontoothy/user_state
    - target: /opt/base
    - user: jason
    - username: jasontoothy
    - password: r1ear69i$aK3r?2w

