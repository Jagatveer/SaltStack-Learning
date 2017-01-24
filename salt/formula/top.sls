#
# Salt top.sls file
# Base
base:
    '*':
        - default
        - git
        - nginx
        - app-install
        - supervisor
        - gunicorn
        - python-flask
        - webapp
