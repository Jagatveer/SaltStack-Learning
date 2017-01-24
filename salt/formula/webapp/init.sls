/etc/supervisor/conf.d/hello.conf:
    file:
        - managed
        - source: salt://webapp/files/supervisor.conf
        - user: root
        - group: root
        - mode: 644
        - require:
          - pkg: supervisor
          - pkg: gunicorn

# Config files - Nginx
/etc/nginx/sites-enabled/default:
    file:
        - managed
        - source: salt://webapp/files/nginx.conf
        - user: root
        - group: root
        - mode: 644
        - require:
          - pkg: nginx
