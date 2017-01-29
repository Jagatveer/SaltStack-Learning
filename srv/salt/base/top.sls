#
# Salt top.sls file
#

# Base
base:
    '*':
        - default
        - git
        - pip
        - flask
        - gunicorn
        - supervisor
        - nginx
        - app-install
