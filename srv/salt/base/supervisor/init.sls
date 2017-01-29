supervisor-pkg:
  pkg.installed:
    - name: supervisor
supervisor.service:
  service.running:
    - name: supervisor
    - enable: True
    - reload: True
    - watch:
          - file: /etc/supervisor/conf.d/*
/etc/supervisor/conf.d/hello.conf:
    file:
        - managed
        - source: salt://supervisor/files/supervisor.conf
        - user: root
        - group: root
        - mode: 644
scriptrun:
  cmd.run:
    - name: /usr/bin/supervisorctl reread && /usr/bin/supervisorctl update
