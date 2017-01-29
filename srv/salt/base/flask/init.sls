#!mako|yaml
<%
flask_version='0.11.1'
%>
flask-pip-pkg:
  pip.installed:
    - name: flask
    - require:
      - cmd: flask-upgrade-runner

flask-upgrade-runner:
  cmd.run:
    - name: pip install 'flask==${flask_version}'
    - unless: pip freeze 2> /dev/null | grep '^flask==${flask_version}'
