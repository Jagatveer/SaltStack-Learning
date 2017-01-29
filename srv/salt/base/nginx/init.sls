nginx:
  pkg:
    - installed
  service:
    - running
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/sites-enabled/default
/etc/nginx/nginx.conf:
  file:
    - managed
    - source: salt://nginx/files/nginx.conf
    - user: root
    - group: root
    - mode: 644
/etc/nginx/sites-enabled/default:
  file:
    - managed
    - source: salt://nginx/files/default.conf
    - user: root
    - group: root
    - mode: 644
